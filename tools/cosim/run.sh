verilator --cc $1/*.sv --top-module $1 --prefix Vtop -Mdir build  --FI arith.h
verilator --cc $1/*.sv --top-module $1 --prefix Vtop -Mdir build  --FI arith.h --xml-only
verilator --getenv VERILATOR_ROOT
