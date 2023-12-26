import os
import subprocess
import inspect
from pprint import pprint


def compile_mlir(mlir_file, output_dir):
    return output_dir+'/cosim.json', output_dir


def run_cocotb(env):
    for key, value in env.items():
        if (not isinstance(value, str)):
            raise Exception(f"Environment variable {key} is not a string.")
    this_dir = os.path.dirname(__file__)
    subprocess.run(f'cd {this_dir} ; make', shell=True, env=env)


def get_full_path(dir, rel_paths):
    full_paths = []
    for path in rel_paths:
        full_paths.append(str(os.path.join(dir, path)))
    return full_paths


def test(**kwargs):
    def decorator(func):
        if (not inspect.iscoroutinefunction(func)):
            raise Exception(
                f"cosim test function '{func.__name__}' must be async.")

        # This is the second call to test in the launched context.
        # Return function directly.
        if ('COSIM_TESTNAME' in os.environ):
            return func

        test_file = inspect.stack()[1].filename
        test_module = os.path.splitext(os.path.basename(test_file))[0]
        test_module_dir = os.path.dirname(test_file)
        output_dir = os.path.join(test_module_dir, kwargs['output_dir'])
        mlir_file = os.path.join(test_module_dir, kwargs['mlir_file'])
        assert (mlir_file.endswith('.mlir'))
        verilog_libs = ':'.join(get_full_path(
            test_module_dir, kwargs['verilog_libs']))
        config_file, verilog_dir = compile_mlir(mlir_file, output_dir)
        cocotb_env = os.environ.copy()
        if ('PYTHONPATH' not in cocotb_env):
            raise Exception('''Must set the mlir python bindings directory in PYTHONPATH environment variable. 
            Note that the variable must be set using 'export' in shell to make it available to all subprocesses.
            ''')
        cocotb_env['PYTHONPATH'] += f':{test_module_dir}'
        cocotb_env['COSIM_TESTNAME'] = func.__name__
        cocotb_env['COSIM_CONFIG'] = config_file
        cocotb_env['COSIM_TESTMODULE'] = test_module
        cocotb_env['COSIM_VERILOG_TOPLEVEL'] = kwargs['top_level']
        cocotb_env['COSIM_VERILOG_DIR'] = verilog_dir
        cocotb_env['COSIM_VERILOG_LIBS'] = verilog_libs
        cocotb_env['COSIM_NUM_CYCLES'] = str(kwargs['num_cycles'])
        if ('waveform_file' in kwargs):
            if (not kwargs['waveform_file'].endswith('.vcd')):
                raise Exception(
                    "waveform_file must be a VCD file (ending with .vcd extension).")

            cocotb_env['COSIM_WAVEFORM_FILE'] = os.path.join(
                test_module_dir, kwargs['waveform_file'])

        run_cocotb(cocotb_env)
        return func

    return decorator

# cpuRunner = CpuRunner('build/gesummv/cpu-module.mlir')
# cpuRunner.run(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
# print(arg6)
