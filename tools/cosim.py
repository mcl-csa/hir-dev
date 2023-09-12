from mlir.ir import Context, InsertionPoint, IntegerAttr, IntegerType, StringAttr, Location, Module, FunctionType
from mlir.dialects import arith, func
import mlir
breakpoint()


def walk(operation):
    operationsWithRegion = [operation]
    while (len(operationsWithRegion) > 0):
        walkTopOperation(operationsWithRegion)


def walkTopOperation(operationsWithRegion):
    operation = operationsWithRegion[0]
    operationsWithRegion.pop(0)

    for op in operation.regions[0].blocks[0].operations:
        if (len(op.regions)):
            operationsWithRegion.append(op)
        if (isinstance(op, affine.LoadOp)):
            print(op)


with Context() as ctx, Location.unknown():
    # module = Module.create()
    with open("./gesummv.mlir", 'r') as f:
        s = f.read()
    module = Module.parse(s)
    i32 = IntegerType.get_signless(32)
    breakpoint()
    with InsertionPoint(module.body):
        recorder = func.FuncOp(name="record_int",
                               type=FunctionType.get(
                                   inputs=[i32, i32],
                                   results=[]), visibility="nested")

        @func.FuncOp.from_py_func()
        def entry():
            value = arith.ConstantOp(IntegerType.get_signless(32), 5)
            width = arith.ConstantOp(IntegerType.get_signless(32), 32)
            func.CallOp(recorder, [value, width])
            return


print(module)
