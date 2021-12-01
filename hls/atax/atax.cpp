// git.status = clean, build.date = Wed Dec 01 15:34:00 IST 2021, git.hash = d732ee4
#include <ap_int.h>
extern "C" {
  void atax_hls(ap_uint<32> A_int[8][8], ap_uint<32> x_int[8], ap_uint<32> y_int[8], ap_uint<32> tmp_int[8]) {
    //#pragma HLS INTERFACE m_axi port=A_int offset=slave bundle=gmem
    //#pragma HLS INTERFACE s_axilite port=A_int bundle=control
    //#pragma HLS INTERFACE m_axi port=x_int offset=slave bundle=gmem
    //#pragma HLS INTERFACE s_axilite port=x_int bundle=control
    //#pragma HLS INTERFACE m_axi port=y_int offset=slave bundle=gmem
    //#pragma HLS INTERFACE s_axilite port=y_int bundle=control
    //#pragma HLS INTERFACE m_axi port=tmp_int offset=slave bundle=gmem
    //#pragma HLS INTERFACE s_axilite port=tmp_int bundle=control
    //#pragma HLS INTERFACE s_axilite port=return bundle=control
    ap_uint<32> A[8][8];
    #pragma HLS resource variable=A core=RAM_1P_BRAM
    ap_uint<32> x[8];
    #pragma HLS resource variable=x core=RAM_1P_BRAM
    ap_uint<32> y[8];
    #pragma HLS resource variable=y core=RAM_1P_BRAM
    for(int i0 = 0; i0 < 8; i0++) {
      #pragma HLS UNROLL factor=1 skip_exit_check
      #pragma HLS LOOP_FLATTEN off
      y[i0] = 0;
      x[i0] = x_int[i0];
      for(int j0 = 0; j0 < 8; j0++) {
        #pragma HLS UNROLL factor=1 skip_exit_check
        #pragma HLS LOOP_FLATTEN off
        A[i0][j0] = A_int[i0][j0];
      }
    }
    //---
    for(int i = 0; i < 8; i++) {
      #pragma HLS UNROLL factor=1 skip_exit_check
      #pragma HLS LOOP_FLATTEN off
      tmp_int[i] = 0;
      //---
      for(int j = 0; j < 8; j++) {
        #pragma HLS UNROLL factor=1 skip_exit_check
        #pragma HLS LOOP_FLATTEN off
        ap_uint<32> t = (A[i][j] * x[j]);
        // combiner:
        tmp_int[i] += t;
      }
      //---
      for(int j = 0; j < 8; j++) {
        #pragma HLS UNROLL factor=1 skip_exit_check
        #pragma HLS LOOP_FLATTEN off
        ap_uint<32> y0 = y[j];
        //---
        y[j] = (y0 + (A[i][j] * tmp_int[i]));
      }
    }
    //---
    for(int i1 = 0; i1 < 8; i1++) {
      #pragma HLS UNROLL factor=1 skip_exit_check
      #pragma HLS LOOP_FLATTEN off
      y_int[i1] = y[i1];
      x_int[i1] = x[i1];
      for(int j1 = 0; j1 < 8; j1++) {
        #pragma HLS UNROLL factor=1 skip_exit_check
        #pragma HLS LOOP_FLATTEN off
        A_int[i1][j1] = A[i1][j1];
      }
    }
  }
}
