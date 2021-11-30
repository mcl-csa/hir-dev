void floyd_warshall_hls(int n, int path[8][8]) {
  //  #pragma HLS RESOURCE variable=path core=RAM_S2P_BRAM
  int i, j, k;

  for (i = 0; i < 8; i++){
    for (j = 0; j < 8; j++)
      path[i][j] = path[i][j]+1;
  }

  for (k = 0; k < 8; k++){
    for (i = 0; i < 8; i++)
      for (j = 0; j < 8; j++)
#pragma HLS PIPELINE
        path[i][j] = path[i][j] < path[i][k] + path[k][j]
          ? path[i][j]
          : path[i][k] + path[k][j];
  }
}
