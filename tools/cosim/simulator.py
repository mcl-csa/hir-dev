import os
import subprocess
import inspect


def compile_mlir(mlir_file, output_dir):
    return output_dir+'/cosim.json', output_dir


def test(**kwargs):
    def decorator(func):
        if (not inspect.iscoroutinefunction(func)):
            raise 'cosim test function must be async.'
        if ('COSIM_TESTNAME' in os.environ):
            return decorator

        output_dir = kwargs['output_dir']
        mlir_file = kwargs['mlir_file']
        assert (mlir_file.endswith('.mlir'))
        config_file, verilog_dir = compile_mlir(mlir_file, output_dir)
        if ('waveform_file' in kwargs):
            waveform_file = kwargs['waveform_file']
        else:
            waveform_file = None
        test_file = inspect.stack()[1].filename
        test_module = os.path.splitext(os.path.basename(test_file))
        test_module_dir = os.path.dirname(test_file)
        cocotb_env = os.environ.copy()
        cocotb_env['PYTHON_PATH'] = [test_module_dir]
        cocotb_env['COSIM_TESTNAME'] = func.__name__
        cocotb_env['COSIM_CONFIG'] = config_file
        cocotb_env['COSIM_TESTMODULE'] = test_module
        cocotb_env['COSIM_VERILOG_TOPLEVEL'] = kwargs['top_level']
        cocotb_env['COSIM_VERILOG_DIR'] = verilog_dir

        this_dir = os.path.dirname(__file__)
        # print(this_dir)
        subprocess.run(f'cd {this_dir} ; make', shell=True, env=cocotb_env)
        return func

    return decorator

# cpuRunner = CpuRunner('build/gesummv/cpu-module.mlir')
# cpuRunner.run(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
# print(arg6)
