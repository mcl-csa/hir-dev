
#include "../../common/verilator/MemRef.h"
#include "../../common/verilator/Testbench.h"
#include "Vgesummv_hir.h"
#include <iostream>
#include <stdlib.h>

#define ALPHA 1
#define BETA 2
typedef unsigned int verilator_i32;
extern "C" void gesummv_hir(int alpha, int beta, int tmp[8], int A[8][8],
                            int B[8][8], int X[8], int Y[8]);

class gesummv_tb : public Testbench<Vgesummv_hir> {
public:
  MemRef<unsigned char, verilator_i32> A;
  MemRef<unsigned char, verilator_i32> B;
  MemRef<unsigned char, verilator_i32> X;
  MemRef<unsigned char, verilator_i32> Y;
  MemRef<unsigned char, verilator_i32> TMP;

  gesummv_tb(std::string &&Adata, std::string &&Bdata, std::string &&Xdata)
      : Testbench(), A(Adata.c_str()), B(Bdata.c_str()), X(Xdata.c_str()), Y(8),
        TMP(8) {
    A.registerRdPort(&dut.A_p0_addr_en, &dut.A_p0_addr_data, &dut.A_p0_rd_en,
                     &dut.A_p0_rd_data);
    B.registerRdPort(&dut.B_p0_addr_en, &dut.B_p0_addr_data, &dut.B_p0_rd_en,
                     &dut.B_p0_rd_data);
    X.registerRdPort(&dut.X_p0_addr_en, &dut.X_p0_addr_data, &dut.X_p0_rd_en,
                     &dut.X_p0_rd_data);
    Y.registerWrPort(&dut.Y_p0_addr_en, &dut.Y_p0_addr_data, &dut.Y_p0_wr_en,
                     &dut.Y_p0_wr_data);
    TMP.registerWrPort(&dut.tmp_p0_addr_en, &dut.tmp_p0_addr_data,
                       &dut.tmp_p0_wr_en, &dut.tmp_p0_wr_data);
    dut.alpha = ALPHA;
    dut.beta = BETA;
    this->registerModule(&A);
    this->registerModule(&B);
    this->registerModule(&X);
    this->registerModule(&Y);
    this->registerModule(&TMP);
  }
};

int main(int argc, char **argv, char **env) {
  int tmp[8];
  int Y[8];
  gesummv_tb tb(std::string(argv[1]) + std::string("/A.txt"),
                std::string(argv[1]) + std::string("/B.txt"),
                std::string(argv[1]) + std::string("/X.txt"));
  tb.run(1000);
  gesummv_hir(1, 2, tmp, tb.A.getDataPtr<int(*)[8]>(),
              tb.B.getDataPtr<int(*)[8]>(), tb.X.getDataPtr<int *>(), Y);
  tb.TMP.assertEq("tmp", tmp);
  tb.Y.assertEq("Y", Y);
  printf("TEST PASS\n");
  return 0;
}
