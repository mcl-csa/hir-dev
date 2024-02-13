from cocotb.triggers import Timer
import cocotb


def postOrderWalk(mod):
    submodules = []
    for submod in dir(mod):
        if (not hasattr(mod, submod)):
            continue
        submod = getattr(mod, submod)
        if (isinstance(submod, cocotb.handle.HierarchyObject)):
            submodules += postOrderWalk(submod)
    submodules.append(mod)
    return submodules


async def callback_manager(wrapped_dut):
    dut = wrapped_dut.dut
    modules = postOrderWalk(dut)

    def printModule(mod):
        print(f'{mod} : {mod.get_definition_name()}')

    def isForOpSM(mod):
        if mod.get_definition_name().startswith('ForOp'):
            return True
        else:
            return False

    list(map(printModule, list(filter(isForOpSM, modules))))
    while (True):
        await Timer(1, units="ns")
