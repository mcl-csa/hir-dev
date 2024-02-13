import os
from pathlib import Path
import argparse
from shell import Shell
import importlib.util 
import sys
import yaml
from yaml import Loader, Dumper


def parseArguments():
    parser = argparse.ArgumentParser()
    parser.add_argument("-v", "--verbose", action="store_true",
                        help="increase output verbosity")

    parser.add_argument("testbench", type=Path,
                              help="Python testbench file.")

    parser.add_argument("--config", type=str, required=True,
                              help="config file.")

    parser.add_argument("--build-dir", type=str, 
                              help="build directory.")

    args = parser.parse_args()
    return args

def loadTest(path):
    module_name=path.stem
    print(f"path:\t{path}\nname:\t{module_name}")

    spec = importlib.util.spec_from_file_location(module_name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module 
    spec.loader.exec_module(module)
    tests = [name for name in module.__dict__.keys() if name.startswith('tb_')]
    testmodules=[]
    for test in tests:
        if not callable(module.__dict__[test]):
            raise Exception(f"{test} should be a callable.")
        testmodules.append(module.__dict__[test])

    if len(testmodules)>1:
        raise Exception("We only support one test per testbench file.")

    return testmodules[0]

def processConfig(config_path, config):
    absConfig = {}
    for name in config:
        absConfig[name] = os.path.abspath(os.path.join(config_path,config[name]))
    return absConfig

def cosim( args):
    test=loadTest(args.testbench)
    with open(args.config,'r') as f:
        config = yaml.load(f,Loader=Loader)
    absConfig = processConfig(args.config, config)
    shell = Shell(absConfig)

def main():
    args = parseArguments()
    cosim(tests[0],args)

if __name__ == "__main__":
    main()
