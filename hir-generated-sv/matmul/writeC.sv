module writeC(	// matmul/matmul-hw.mlir:23585:3
  input  [15:0][31:0] Cr_p0_rd_data,
  input               t, clk, rst,
  output [15:0]       Cr_p0_addr_en,
  output [15:0][3:0]  Cr_p0_addr_data,
  output [15:0]       Cr_p0_rd_en,
  output              Co_p0_addr_en,
  output [7:0]        Co_p0_addr_data,
  output              Co_p0_wr_en,
  output [31:0]       Co_p0_wr_data);

  wire        _T;	// matmul/matmul-hw.mlir:24520:12
  wire [31:0] _T_0;	// matmul/matmul-hw.mlir:24505:12
  wire        _T_1;	// matmul/matmul-hw.mlir:24504:12
  wire [7:0]  _T_2;	// matmul/matmul-hw.mlir:24503:12
  wire        _T_3;	// matmul/matmul-hw.mlir:24502:12
  wire        _T_4;	// matmul/matmul-hw.mlir:24469:12
  wire [3:0]  _T_5;	// matmul/matmul-hw.mlir:24468:12
  wire        _T_6;	// matmul/matmul-hw.mlir:24467:12
  wire [31:0] _T_7;	// matmul/matmul-hw.mlir:24466:12
  wire        _T_8;	// matmul/matmul-hw.mlir:24465:12
  wire [7:0]  _T_9;	// matmul/matmul-hw.mlir:24464:12
  wire        _T_10;	// matmul/matmul-hw.mlir:24463:12
  wire        _T_11;	// matmul/matmul-hw.mlir:24430:12
  wire [3:0]  _T_12;	// matmul/matmul-hw.mlir:24429:12
  wire        _T_13;	// matmul/matmul-hw.mlir:24428:12
  wire [31:0] _T_14;	// matmul/matmul-hw.mlir:24427:12
  wire        _T_15;	// matmul/matmul-hw.mlir:24426:12
  wire [7:0]  _T_16;	// matmul/matmul-hw.mlir:24425:12
  wire        _T_17;	// matmul/matmul-hw.mlir:24424:12
  wire        _T_18;	// matmul/matmul-hw.mlir:24391:12
  wire [3:0]  _T_19;	// matmul/matmul-hw.mlir:24390:12
  wire        _T_20;	// matmul/matmul-hw.mlir:24389:12
  wire [31:0] _T_21;	// matmul/matmul-hw.mlir:24388:12
  wire        _T_22;	// matmul/matmul-hw.mlir:24387:12
  wire [7:0]  _T_23;	// matmul/matmul-hw.mlir:24386:12
  wire        _T_24;	// matmul/matmul-hw.mlir:24385:12
  wire        _T_25;	// matmul/matmul-hw.mlir:24352:12
  wire [3:0]  _T_26;	// matmul/matmul-hw.mlir:24351:12
  wire        _T_27;	// matmul/matmul-hw.mlir:24350:12
  wire [31:0] _T_28;	// matmul/matmul-hw.mlir:24349:12
  wire        _T_29;	// matmul/matmul-hw.mlir:24348:12
  wire [7:0]  _T_30;	// matmul/matmul-hw.mlir:24347:12
  wire        _T_31;	// matmul/matmul-hw.mlir:24346:12
  wire        _T_32;	// matmul/matmul-hw.mlir:24313:12
  wire [3:0]  _T_33;	// matmul/matmul-hw.mlir:24312:12
  wire        _T_34;	// matmul/matmul-hw.mlir:24311:12
  wire [31:0] _T_35;	// matmul/matmul-hw.mlir:24310:12
  wire        _T_36;	// matmul/matmul-hw.mlir:24309:12
  wire [7:0]  _T_37;	// matmul/matmul-hw.mlir:24308:12
  wire        _T_38;	// matmul/matmul-hw.mlir:24307:12
  wire        _T_39;	// matmul/matmul-hw.mlir:24274:12
  wire [3:0]  _T_40;	// matmul/matmul-hw.mlir:24273:12
  wire        _T_41;	// matmul/matmul-hw.mlir:24272:12
  wire [31:0] _T_42;	// matmul/matmul-hw.mlir:24271:12
  wire        _T_43;	// matmul/matmul-hw.mlir:24270:12
  wire [7:0]  _T_44;	// matmul/matmul-hw.mlir:24269:12
  wire        _T_45;	// matmul/matmul-hw.mlir:24268:12
  wire        _T_46;	// matmul/matmul-hw.mlir:24235:12
  wire [3:0]  _T_47;	// matmul/matmul-hw.mlir:24234:12
  wire        _T_48;	// matmul/matmul-hw.mlir:24233:12
  wire [31:0] _T_49;	// matmul/matmul-hw.mlir:24232:12
  wire        _T_50;	// matmul/matmul-hw.mlir:24231:12
  wire [7:0]  _T_51;	// matmul/matmul-hw.mlir:24230:12
  wire        _T_52;	// matmul/matmul-hw.mlir:24229:12
  wire        _T_53;	// matmul/matmul-hw.mlir:24196:12
  wire [3:0]  _T_54;	// matmul/matmul-hw.mlir:24195:12
  wire        _T_55;	// matmul/matmul-hw.mlir:24194:12
  wire [31:0] _T_56;	// matmul/matmul-hw.mlir:24193:12
  wire        _T_57;	// matmul/matmul-hw.mlir:24192:12
  wire [7:0]  _T_58;	// matmul/matmul-hw.mlir:24191:12
  wire        _T_59;	// matmul/matmul-hw.mlir:24190:12
  wire        _T_60;	// matmul/matmul-hw.mlir:24157:12
  wire [3:0]  _T_61;	// matmul/matmul-hw.mlir:24156:12
  wire        _T_62;	// matmul/matmul-hw.mlir:24155:12
  wire [31:0] _T_63;	// matmul/matmul-hw.mlir:24154:12
  wire        _T_64;	// matmul/matmul-hw.mlir:24153:12
  wire [7:0]  _T_65;	// matmul/matmul-hw.mlir:24152:12
  wire        _T_66;	// matmul/matmul-hw.mlir:24151:12
  wire        _T_67;	// matmul/matmul-hw.mlir:24118:12
  wire [3:0]  _T_68;	// matmul/matmul-hw.mlir:24117:12
  wire        _T_69;	// matmul/matmul-hw.mlir:24116:12
  wire [31:0] _T_70;	// matmul/matmul-hw.mlir:24115:12
  wire        _T_71;	// matmul/matmul-hw.mlir:24114:12
  wire [7:0]  _T_72;	// matmul/matmul-hw.mlir:24113:12
  wire        _T_73;	// matmul/matmul-hw.mlir:24112:12
  wire        _T_74;	// matmul/matmul-hw.mlir:24079:12
  wire [3:0]  _T_75;	// matmul/matmul-hw.mlir:24078:12
  wire        _T_76;	// matmul/matmul-hw.mlir:24077:12
  wire [31:0] _T_77;	// matmul/matmul-hw.mlir:24076:12
  wire        _T_78;	// matmul/matmul-hw.mlir:24075:12
  wire [7:0]  _T_79;	// matmul/matmul-hw.mlir:24074:12
  wire        _T_80;	// matmul/matmul-hw.mlir:24073:12
  wire        _T_81;	// matmul/matmul-hw.mlir:24040:12
  wire [3:0]  _T_82;	// matmul/matmul-hw.mlir:24039:12
  wire        _T_83;	// matmul/matmul-hw.mlir:24038:12
  wire [31:0] _T_84;	// matmul/matmul-hw.mlir:24037:12
  wire        _T_85;	// matmul/matmul-hw.mlir:24036:12
  wire [7:0]  _T_86;	// matmul/matmul-hw.mlir:24035:12
  wire        _T_87;	// matmul/matmul-hw.mlir:24034:12
  wire        _T_88;	// matmul/matmul-hw.mlir:24001:12
  wire [3:0]  _T_89;	// matmul/matmul-hw.mlir:24000:12
  wire        _T_90;	// matmul/matmul-hw.mlir:23999:11
  wire [31:0] _T_91;	// matmul/matmul-hw.mlir:23998:11
  wire        _T_92;	// matmul/matmul-hw.mlir:23997:11
  wire [7:0]  _T_93;	// matmul/matmul-hw.mlir:23996:11
  wire        _T_94;	// matmul/matmul-hw.mlir:23995:11
  wire        _T_95;	// matmul/matmul-hw.mlir:23962:11
  wire [3:0]  _T_96;	// matmul/matmul-hw.mlir:23961:11
  wire        _T_97;	// matmul/matmul-hw.mlir:23960:11
  wire [31:0] _T_98;	// matmul/matmul-hw.mlir:23959:11
  wire        _T_99;	// matmul/matmul-hw.mlir:23958:11
  wire [7:0]  _T_100;	// matmul/matmul-hw.mlir:23957:11
  wire        _T_101;	// matmul/matmul-hw.mlir:23956:11
  wire        _T_102;	// matmul/matmul-hw.mlir:23923:11
  wire [3:0]  _T_103;	// matmul/matmul-hw.mlir:23922:11
  wire        _T_104;	// matmul/matmul-hw.mlir:23921:11
  wire        _T_105;	// matmul/matmul-hw.mlir:23898:11
  wire [3:0]  _T_106;	// matmul/matmul-hw.mlir:23897:11
  wire        _T_107;	// matmul/matmul-hw.mlir:23896:11
  wire        _T_108;	// matmul/matmul-hw.mlir:23885:11
  wire        _T_109;	// matmul/matmul-hw.mlir:23884:11
  wire        _T_110;	// matmul/matmul-hw.mlir:23883:11
  wire [5:0]  _T_111;	// matmul/matmul-hw.mlir:23876:11
  wire        _T_112;	// matmul/matmul-hw.mlir:23875:11
  wire        _T_113;	// matmul/matmul-hw.mlir:23872:11
  wire        reg_1x1_r0_w1_inst4_p0_rd_data;	// matmul/matmul-hw.mlir:23882:39
  wire [5:0]  reg_1x6_r0_w1_inst4_p0_rd_data;	// matmul/matmul-hw.mlir:23871:39
  reg         _T_114;	// matmul/matmul-hw.mlir:23848:11
  reg  [4:0]  _T_120;	// matmul/matmul-hw.mlir:23887:11
  reg         _T_123;	// matmul/matmul-hw.mlir:23899:11
  reg         _T_125;	// matmul/matmul-hw.mlir:23908:11
  reg  [1:0]  _T_127;	// matmul/matmul-hw.mlir:23924:11
  reg  [1:0]  _T_131;	// matmul/matmul-hw.mlir:23940:11
  reg  [2:0]  _T_136;	// matmul/matmul-hw.mlir:23963:11
  reg  [2:0]  _T_140;	// matmul/matmul-hw.mlir:23979:11
  reg  [3:0]  _T_145;	// matmul/matmul-hw.mlir:24002:12
  reg  [3:0]  _T_149;	// matmul/matmul-hw.mlir:24018:12
  reg  [4:0]  _T_154;	// matmul/matmul-hw.mlir:24041:12
  reg  [4:0]  _T_158;	// matmul/matmul-hw.mlir:24057:12
  reg  [5:0]  _T_163;	// matmul/matmul-hw.mlir:24080:12
  reg  [5:0]  _T_167;	// matmul/matmul-hw.mlir:24096:12
  reg  [6:0]  _T_172;	// matmul/matmul-hw.mlir:24119:12
  reg  [6:0]  _T_176;	// matmul/matmul-hw.mlir:24135:12
  reg  [7:0]  _T_181;	// matmul/matmul-hw.mlir:24158:12
  reg  [7:0]  _T_185;	// matmul/matmul-hw.mlir:24174:12
  reg  [8:0]  _T_190;	// matmul/matmul-hw.mlir:24197:12
  reg  [8:0]  _T_194;	// matmul/matmul-hw.mlir:24213:12
  reg  [9:0]  _T_199;	// matmul/matmul-hw.mlir:24236:12
  reg  [9:0]  _T_203;	// matmul/matmul-hw.mlir:24252:12
  reg  [10:0] _T_208;	// matmul/matmul-hw.mlir:24275:12
  reg  [10:0] _T_212;	// matmul/matmul-hw.mlir:24291:12
  reg  [11:0] _T_217;	// matmul/matmul-hw.mlir:24314:12
  reg  [11:0] _T_221;	// matmul/matmul-hw.mlir:24330:12
  reg  [12:0] _T_226;	// matmul/matmul-hw.mlir:24353:12
  reg  [12:0] _T_230;	// matmul/matmul-hw.mlir:24369:12
  reg  [13:0] _T_235;	// matmul/matmul-hw.mlir:24392:12
  reg  [13:0] _T_239;	// matmul/matmul-hw.mlir:24408:12
  reg  [14:0] _T_244;	// matmul/matmul-hw.mlir:24431:12
  reg  [14:0] _T_248;	// matmul/matmul-hw.mlir:24447:12
  reg  [15:0] _T_253;	// matmul/matmul-hw.mlir:24470:12
  reg  [15:0] _T_257;	// matmul/matmul-hw.mlir:24486:12
  reg  [16:0] _T_262;	// matmul/matmul-hw.mlir:24506:12

  localparam _T_115 = 1'h0;	// matmul/matmul-hw.mlir:23850:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23851:5
    if (rst)	// matmul/matmul-hw.mlir:23851:5
      _T_114 <= _T_115;	// matmul/matmul-hw.mlir:23854:7
    else	// matmul/matmul-hw.mlir:23851:5
      _T_114 <= t;	// matmul/matmul-hw.mlir:23852:7
  end // always @(posedge)
  wire _T_116 = _T_114 & 1'h1 | _T & reg_1x1_r0_w1_inst4_p0_rd_data;	// matmul/matmul-hw.mlir:23641:13, :23849:11, :23859:11, :23860:11, :23861:11, :23882:39, :24520:12
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd6)
  ) reg_1x6_r0_w1_inst4 (	// matmul/matmul-hw.mlir:23871:39
    .p0_rd_en   (_T_113),	// matmul/matmul-hw.mlir:23872:11
    .p1_wr_en   (_T_112),	// matmul/matmul-hw.mlir:23875:11
    .p1_wr_data (_T_111),	// matmul/matmul-hw.mlir:23876:11
    .t          (_T_116),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x6_r0_w1_inst4_p0_rd_data)
  );
  assign _T_113 = _T_116 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23872:11
  wire [5:0] _T_117 = _T_114 ? 6'h0 : reg_1x6_r0_w1_inst4_p0_rd_data;	// matmul/matmul-hw.mlir:23642:14, :23849:11, :23871:39, :23873:11
  wire [5:0] _T_118 = _T_117 + 6'h1;	// matmul/matmul-hw.mlir:23644:14, :23874:11
  assign _T_112 = _T_116 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23875:11
  assign _T_111 = _T_116 ? _T_118 : 6'bx;	// matmul/matmul-hw.mlir:23761:13, :23876:11
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd1)
  ) reg_1x1_r0_w1_inst4 (	// matmul/matmul-hw.mlir:23882:39
    .p0_rd_en   (_T_108),	// matmul/matmul-hw.mlir:23885:11
    .p1_wr_en   (_T_110),	// matmul/matmul-hw.mlir:23883:11
    .p1_wr_data (_T_109),	// matmul/matmul-hw.mlir:23884:11
    .t          (_T_116),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x1_r0_w1_inst4_p0_rd_data)
  );
  assign _T_110 = _T_116 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23883:11
  assign _T_109 = _T_116 ? _T_118 < 6'h10 : 1'bx;	// matmul/matmul-hw.mlir:23643:15, :23759:17, :23877:11, :23884:11
  assign _T_108 = _T_116 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23885:11
  wire [4:0] _T_119 = _T_117[4:0];	// matmul/matmul-hw.mlir:23886:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23888:5
    if (_T_116)	// matmul/matmul-hw.mlir:23889:7
      _T_120 <= _T_119;	// matmul/matmul-hw.mlir:23890:9
  end // always @(posedge)
  wire [4:0] _T_121 = _T_116 ? _T_119 : _T_120;	// matmul/matmul-hw.mlir:23893:11, :23894:11
  wire [3:0] _T_122 = _T_121[3:0];	// matmul/matmul-hw.mlir:23895:11
  assign _T_107 = _T_116 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23896:11
  assign _T_106 = _T_116 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23756:17, :23897:11
  assign _T_105 = _T_116 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23898:11
  localparam _T_124 = 1'h0;	// matmul/matmul-hw.mlir:23901:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23902:5
    if (rst)	// matmul/matmul-hw.mlir:23902:5
      _T_123 <= _T_124;	// matmul/matmul-hw.mlir:23905:7
    else	// matmul/matmul-hw.mlir:23902:5
      _T_123 <= _T_116;	// matmul/matmul-hw.mlir:23903:7
  end // always @(posedge)
  localparam _T_126 = 1'h0;	// matmul/matmul-hw.mlir:23910:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23911:5
    if (rst)	// matmul/matmul-hw.mlir:23911:5
      _T_125 <= _T_126;	// matmul/matmul-hw.mlir:23914:7
    else	// matmul/matmul-hw.mlir:23911:5
      _T_125 <= _T_116;	// matmul/matmul-hw.mlir:23912:7
  end // always @(posedge)
  assign _T_104 = _T_125 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23909:11, :23921:11
  assign _T_103 = _T_125 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23749:17, :23909:11, :23922:11
  assign _T_102 = _T_125 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23909:11, :23923:11
  wire [1:0] _T_128 = _T_127;	// matmul/matmul-hw.mlir:23925:11
  wire [1:0] _T_129 = {_T_128[1'h0+:1], {{_T_116}}};	// matmul/matmul-hw.mlir:23926:18, :23927:11, :23928:11, :23929:11
  wire [1:0] _T_130 = {{1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:23930:18, :23931:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23932:5
    if (rst)	// matmul/matmul-hw.mlir:23932:5
      _T_127 <= _T_130;	// matmul/matmul-hw.mlir:23935:7
    else	// matmul/matmul-hw.mlir:23932:5
      _T_127 <= _T_129;	// matmul/matmul-hw.mlir:23933:7
  end // always @(posedge)
  wire [1:0] _T_132 = _T_131;	// matmul/matmul-hw.mlir:23941:11
  wire [1:0] _T_133 = {_T_132[1'h0+:1], {{_T_116}}};	// matmul/matmul-hw.mlir:23942:18, :23943:11, :23944:11, :23945:11
  wire [1:0] _T_134 = {{1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:23946:18, :23947:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23948:5
    if (rst)	// matmul/matmul-hw.mlir:23948:5
      _T_131 <= _T_134;	// matmul/matmul-hw.mlir:23951:7
    else	// matmul/matmul-hw.mlir:23948:5
      _T_131 <= _T_133;	// matmul/matmul-hw.mlir:23949:7
  end // always @(posedge)
  wire _T_135 = _T_131[1'h1];	// matmul/matmul-hw.mlir:23941:11, :23953:17, :23954:11
  assign _T_101 = _T_135 ? 1'h1 : _T_94;	// matmul/matmul-hw.mlir:23641:13, :23956:11, :23995:11
  assign _T_100 = _T_135 ? {_T_122, 4'h1} : _T_93;	// matmul/matmul-hw.mlir:23939:18, :23955:11, :23957:11, :23996:11
  assign _T_99 = _T_135 ? 1'h1 : _T_92;	// matmul/matmul-hw.mlir:23641:13, :23958:11, :23997:11
  assign _T_98 = _T_135 ? Cr_p0_rd_data[4'h1] : _T_91;	// matmul/matmul-hw.mlir:23776:14, :23777:10, :23959:11, :23998:11
  assign _T_97 = _T_135 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23960:11
  assign _T_96 = _T_135 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23742:17, :23961:11
  assign _T_95 = _T_135 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23962:11
  wire [2:0] _T_137 = _T_136;	// matmul/matmul-hw.mlir:23964:11
  wire [2:0] _T_138 = {_T_137[2'h0+:2], {{_T_116}}};	// matmul/matmul-hw.mlir:23965:14, :23966:11, :23967:11, :23968:11
  wire [2:0] _T_139 = {{1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:23969:18, :23970:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23971:5
    if (rst)	// matmul/matmul-hw.mlir:23971:5
      _T_136 <= _T_139;	// matmul/matmul-hw.mlir:23974:7
    else	// matmul/matmul-hw.mlir:23971:5
      _T_136 <= _T_138;	// matmul/matmul-hw.mlir:23972:7
  end // always @(posedge)
  wire [2:0] _T_141 = _T_140;	// matmul/matmul-hw.mlir:23980:11
  wire [2:0] _T_142 = {_T_141[2'h0+:2], {{_T_116}}};	// matmul/matmul-hw.mlir:23981:18, :23982:11, :23983:11, :23984:11
  wire [2:0] _T_143 = {{1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:23985:18, :23986:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:23987:5
    if (rst)	// matmul/matmul-hw.mlir:23987:5
      _T_140 <= _T_143;	// matmul/matmul-hw.mlir:23990:7
    else	// matmul/matmul-hw.mlir:23987:5
      _T_140 <= _T_142;	// matmul/matmul-hw.mlir:23988:7
  end // always @(posedge)
  wire _T_144 = _T_140[2'h2];	// matmul/matmul-hw.mlir:23980:11, :23992:19, :23993:11
  assign _T_94 = _T_144 ? 1'h1 : _T_87;	// matmul/matmul-hw.mlir:23641:13, :23995:11, :24034:12
  assign _T_93 = _T_144 ? {_T_122, 4'h2} : _T_86;	// matmul/matmul-hw.mlir:23978:18, :23994:11, :23996:11, :24035:12
  assign _T_92 = _T_144 ? 1'h1 : _T_85;	// matmul/matmul-hw.mlir:23641:13, :23997:11, :24036:12
  assign _T_91 = _T_144 ? Cr_p0_rd_data[4'h2] : _T_84;	// matmul/matmul-hw.mlir:23781:14, :23782:10, :23998:11, :24037:12
  assign _T_90 = _T_144 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :23999:11
  assign _T_89 = _T_144 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23735:17, :24000:12
  assign _T_88 = _T_144 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24001:12
  wire [3:0] _T_146 = _T_145;	// matmul/matmul-hw.mlir:24003:12
  wire [3:0] _T_147 = {_T_146[2'h0+:3], {{_T_116}}};	// matmul/matmul-hw.mlir:24004:18, :24005:12, :24006:12, :24007:12
  wire [3:0] _T_148 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24008:18, :24009:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24010:5
    if (rst)	// matmul/matmul-hw.mlir:24010:5
      _T_145 <= _T_148;	// matmul/matmul-hw.mlir:24013:7
    else	// matmul/matmul-hw.mlir:24010:5
      _T_145 <= _T_147;	// matmul/matmul-hw.mlir:24011:7
  end // always @(posedge)
  wire [3:0] _T_150 = _T_149;	// matmul/matmul-hw.mlir:24019:12
  wire [3:0] _T_151 = {_T_150[2'h0+:3], {{_T_116}}};	// matmul/matmul-hw.mlir:24020:18, :24021:12, :24022:12, :24023:12
  wire [3:0] _T_152 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24024:18, :24025:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24026:5
    if (rst)	// matmul/matmul-hw.mlir:24026:5
      _T_149 <= _T_152;	// matmul/matmul-hw.mlir:24029:7
    else	// matmul/matmul-hw.mlir:24026:5
      _T_149 <= _T_151;	// matmul/matmul-hw.mlir:24027:7
  end // always @(posedge)
  wire _T_153 = _T_149[2'h3];	// matmul/matmul-hw.mlir:24019:12, :24031:19, :24032:12
  assign _T_87 = _T_153 ? 1'h1 : _T_80;	// matmul/matmul-hw.mlir:23641:13, :24034:12, :24073:12
  assign _T_86 = _T_153 ? {_T_122, 4'h3} : _T_79;	// matmul/matmul-hw.mlir:24017:18, :24033:12, :24035:12, :24074:12
  assign _T_85 = _T_153 ? 1'h1 : _T_78;	// matmul/matmul-hw.mlir:23641:13, :24036:12, :24075:12
  assign _T_84 = _T_153 ? Cr_p0_rd_data[4'h3] : _T_77;	// matmul/matmul-hw.mlir:23786:14, :23787:10, :24037:12, :24076:12
  assign _T_83 = _T_153 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24038:12
  assign _T_82 = _T_153 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23728:17, :24039:12
  assign _T_81 = _T_153 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24040:12
  wire [4:0] _T_155 = _T_154;	// matmul/matmul-hw.mlir:24042:12
  wire [4:0] _T_156 = {_T_155[3'h0+:4], {{_T_116}}};	// matmul/matmul-hw.mlir:24043:14, :24044:12, :24045:12, :24046:12
  wire [4:0] _T_157 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24047:18, :24048:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24049:5
    if (rst)	// matmul/matmul-hw.mlir:24049:5
      _T_154 <= _T_157;	// matmul/matmul-hw.mlir:24052:7
    else	// matmul/matmul-hw.mlir:24049:5
      _T_154 <= _T_156;	// matmul/matmul-hw.mlir:24050:7
  end // always @(posedge)
  wire [4:0] _T_159 = _T_158;	// matmul/matmul-hw.mlir:24058:12
  wire [4:0] _T_160 = {_T_159[3'h0+:4], {{_T_116}}};	// matmul/matmul-hw.mlir:24059:18, :24060:12, :24061:12, :24062:12
  wire [4:0] _T_161 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24063:18, :24064:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24065:5
    if (rst)	// matmul/matmul-hw.mlir:24065:5
      _T_158 <= _T_161;	// matmul/matmul-hw.mlir:24068:7
    else	// matmul/matmul-hw.mlir:24065:5
      _T_158 <= _T_160;	// matmul/matmul-hw.mlir:24066:7
  end // always @(posedge)
  wire _T_162 = _T_158[3'h4];	// matmul/matmul-hw.mlir:24058:12, :24070:19, :24071:12
  assign _T_80 = _T_162 ? 1'h1 : _T_73;	// matmul/matmul-hw.mlir:23641:13, :24073:12, :24112:12
  assign _T_79 = _T_162 ? {_T_122, 4'h4} : _T_72;	// matmul/matmul-hw.mlir:24056:18, :24072:12, :24074:12, :24113:12
  assign _T_78 = _T_162 ? 1'h1 : _T_71;	// matmul/matmul-hw.mlir:23641:13, :24075:12, :24114:12
  assign _T_77 = _T_162 ? Cr_p0_rd_data[4'h4] : _T_70;	// matmul/matmul-hw.mlir:23791:14, :23792:10, :24076:12, :24115:12
  assign _T_76 = _T_162 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24077:12
  assign _T_75 = _T_162 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23721:17, :24078:12
  assign _T_74 = _T_162 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24079:12
  wire [5:0] _T_164 = _T_163;	// matmul/matmul-hw.mlir:24081:12
  wire [5:0] _T_165 = {_T_164[3'h0+:5], {{_T_116}}};	// matmul/matmul-hw.mlir:24082:18, :24083:12, :24084:12, :24085:12
  wire [5:0] _T_166 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24086:18, :24087:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24088:5
    if (rst)	// matmul/matmul-hw.mlir:24088:5
      _T_163 <= _T_166;	// matmul/matmul-hw.mlir:24091:7
    else	// matmul/matmul-hw.mlir:24088:5
      _T_163 <= _T_165;	// matmul/matmul-hw.mlir:24089:7
  end // always @(posedge)
  wire [5:0] _T_168 = _T_167;	// matmul/matmul-hw.mlir:24097:12
  wire [5:0] _T_169 = {_T_168[3'h0+:5], {{_T_116}}};	// matmul/matmul-hw.mlir:24098:18, :24099:12, :24100:12, :24101:12
  wire [5:0] _T_170 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24102:18, :24103:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24104:5
    if (rst)	// matmul/matmul-hw.mlir:24104:5
      _T_167 <= _T_170;	// matmul/matmul-hw.mlir:24107:7
    else	// matmul/matmul-hw.mlir:24104:5
      _T_167 <= _T_169;	// matmul/matmul-hw.mlir:24105:7
  end // always @(posedge)
  wire _T_171 = _T_167[3'h5];	// matmul/matmul-hw.mlir:24097:12, :24109:19, :24110:12
  assign _T_73 = _T_171 ? 1'h1 : _T_66;	// matmul/matmul-hw.mlir:23641:13, :24112:12, :24151:12
  assign _T_72 = _T_171 ? {_T_122, 4'h5} : _T_65;	// matmul/matmul-hw.mlir:24095:18, :24111:12, :24113:12, :24152:12
  assign _T_71 = _T_171 ? 1'h1 : _T_64;	// matmul/matmul-hw.mlir:23641:13, :24114:12, :24153:12
  assign _T_70 = _T_171 ? Cr_p0_rd_data[4'h5] : _T_63;	// matmul/matmul-hw.mlir:23796:14, :23797:10, :24115:12, :24154:12
  assign _T_69 = _T_171 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24116:12
  assign _T_68 = _T_171 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23714:17, :24117:12
  assign _T_67 = _T_171 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24118:12
  wire [6:0] _T_173 = _T_172;	// matmul/matmul-hw.mlir:24120:12
  wire [6:0] _T_174 = {_T_173[3'h0+:6], {{_T_116}}};	// matmul/matmul-hw.mlir:24121:18, :24122:12, :24123:12, :24124:12
  wire [6:0] _T_175 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24125:18, :24126:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24127:5
    if (rst)	// matmul/matmul-hw.mlir:24127:5
      _T_172 <= _T_175;	// matmul/matmul-hw.mlir:24130:7
    else	// matmul/matmul-hw.mlir:24127:5
      _T_172 <= _T_174;	// matmul/matmul-hw.mlir:24128:7
  end // always @(posedge)
  wire [6:0] _T_177 = _T_176;	// matmul/matmul-hw.mlir:24136:12
  wire [6:0] _T_178 = {_T_177[3'h0+:6], {{_T_116}}};	// matmul/matmul-hw.mlir:24137:18, :24138:12, :24139:12, :24140:12
  wire [6:0] _T_179 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24141:18, :24142:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24143:5
    if (rst)	// matmul/matmul-hw.mlir:24143:5
      _T_176 <= _T_179;	// matmul/matmul-hw.mlir:24146:7
    else	// matmul/matmul-hw.mlir:24143:5
      _T_176 <= _T_178;	// matmul/matmul-hw.mlir:24144:7
  end // always @(posedge)
  wire _T_180 = _T_176[3'h6];	// matmul/matmul-hw.mlir:24136:12, :24148:19, :24149:12
  assign _T_66 = _T_180 ? 1'h1 : _T_59;	// matmul/matmul-hw.mlir:23641:13, :24151:12, :24190:12
  assign _T_65 = _T_180 ? {_T_122, 4'h6} : _T_58;	// matmul/matmul-hw.mlir:24134:18, :24150:12, :24152:12, :24191:12
  assign _T_64 = _T_180 ? 1'h1 : _T_57;	// matmul/matmul-hw.mlir:23641:13, :24153:12, :24192:12
  assign _T_63 = _T_180 ? Cr_p0_rd_data[4'h6] : _T_56;	// matmul/matmul-hw.mlir:23801:14, :23802:10, :24154:12, :24193:12
  assign _T_62 = _T_180 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24155:12
  assign _T_61 = _T_180 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23707:17, :24156:12
  assign _T_60 = _T_180 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24157:12
  wire [7:0] _T_182 = _T_181;	// matmul/matmul-hw.mlir:24159:12
  wire [7:0] _T_183 = {_T_182[3'h0+:7], {{_T_116}}};	// matmul/matmul-hw.mlir:24160:18, :24161:12, :24162:12, :24163:12
  wire [7:0] _T_184 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24164:18, :24165:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24166:5
    if (rst)	// matmul/matmul-hw.mlir:24166:5
      _T_181 <= _T_184;	// matmul/matmul-hw.mlir:24169:7
    else	// matmul/matmul-hw.mlir:24166:5
      _T_181 <= _T_183;	// matmul/matmul-hw.mlir:24167:7
  end // always @(posedge)
  wire [7:0] _T_186 = _T_185;	// matmul/matmul-hw.mlir:24175:12
  wire [7:0] _T_187 = {_T_186[3'h0+:7], {{_T_116}}};	// matmul/matmul-hw.mlir:24176:18, :24177:12, :24178:12, :24179:12
  wire [7:0] _T_188 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24180:18, :24181:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24182:5
    if (rst)	// matmul/matmul-hw.mlir:24182:5
      _T_185 <= _T_188;	// matmul/matmul-hw.mlir:24185:7
    else	// matmul/matmul-hw.mlir:24182:5
      _T_185 <= _T_187;	// matmul/matmul-hw.mlir:24183:7
  end // always @(posedge)
  wire _T_189 = _T_185[3'h7];	// matmul/matmul-hw.mlir:24175:12, :24187:19, :24188:12
  assign _T_59 = _T_189 ? 1'h1 : _T_52;	// matmul/matmul-hw.mlir:23641:13, :24190:12, :24229:12
  assign _T_58 = _T_189 ? {_T_122, 4'h7} : _T_51;	// matmul/matmul-hw.mlir:24173:18, :24189:12, :24191:12, :24230:12
  assign _T_57 = _T_189 ? 1'h1 : _T_50;	// matmul/matmul-hw.mlir:23641:13, :24192:12, :24231:12
  assign _T_56 = _T_189 ? Cr_p0_rd_data[4'h7] : _T_49;	// matmul/matmul-hw.mlir:23806:14, :23807:11, :24193:12, :24232:12
  assign _T_55 = _T_189 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24194:12
  assign _T_54 = _T_189 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23700:17, :24195:12
  assign _T_53 = _T_189 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24196:12
  wire [8:0] _T_191 = _T_190;	// matmul/matmul-hw.mlir:24198:12
  wire [8:0] _T_192 = {_T_191[4'h0+:8], {{_T_116}}};	// matmul/matmul-hw.mlir:24199:18, :24200:12, :24201:12, :24202:12
  wire [8:0] _T_193 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24203:18, :24204:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24205:5
    if (rst)	// matmul/matmul-hw.mlir:24205:5
      _T_190 <= _T_193;	// matmul/matmul-hw.mlir:24208:7
    else	// matmul/matmul-hw.mlir:24205:5
      _T_190 <= _T_192;	// matmul/matmul-hw.mlir:24206:7
  end // always @(posedge)
  wire [8:0] _T_195 = _T_194;	// matmul/matmul-hw.mlir:24214:12
  wire [8:0] _T_196 = {_T_195[4'h0+:8], {{_T_116}}};	// matmul/matmul-hw.mlir:24215:18, :24216:12, :24217:12, :24218:12
  wire [8:0] _T_197 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24219:18, :24220:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24221:5
    if (rst)	// matmul/matmul-hw.mlir:24221:5
      _T_194 <= _T_197;	// matmul/matmul-hw.mlir:24224:7
    else	// matmul/matmul-hw.mlir:24221:5
      _T_194 <= _T_196;	// matmul/matmul-hw.mlir:24222:7
  end // always @(posedge)
  wire _T_198 = _T_194[4'h8];	// matmul/matmul-hw.mlir:24214:12, :24226:19, :24227:12
  assign _T_52 = _T_198 ? 1'h1 : _T_45;	// matmul/matmul-hw.mlir:23641:13, :24229:12, :24268:12
  assign _T_51 = _T_198 ? {_T_122, 4'h8} : _T_44;	// matmul/matmul-hw.mlir:24212:19, :24228:12, :24230:12, :24269:12
  assign _T_50 = _T_198 ? 1'h1 : _T_43;	// matmul/matmul-hw.mlir:23641:13, :24231:12, :24270:12
  assign _T_49 = _T_198 ? Cr_p0_rd_data[4'h8] : _T_42;	// matmul/matmul-hw.mlir:23811:15, :23812:11, :24232:12, :24271:12
  assign _T_48 = _T_198 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24233:12
  assign _T_47 = _T_198 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23693:16, :24234:12
  assign _T_46 = _T_198 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24235:12
  wire [9:0] _T_200 = _T_199;	// matmul/matmul-hw.mlir:24237:12
  wire [9:0] _T_201 = {_T_200[4'h0+:9], {{_T_116}}};	// matmul/matmul-hw.mlir:24238:18, :24239:12, :24240:12, :24241:12
  wire [9:0] _T_202 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24242:18, :24243:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24244:5
    if (rst)	// matmul/matmul-hw.mlir:24244:5
      _T_199 <= _T_202;	// matmul/matmul-hw.mlir:24247:7
    else	// matmul/matmul-hw.mlir:24244:5
      _T_199 <= _T_201;	// matmul/matmul-hw.mlir:24245:7
  end // always @(posedge)
  wire [9:0] _T_204 = _T_203;	// matmul/matmul-hw.mlir:24253:12
  wire [9:0] _T_205 = {_T_204[4'h0+:9], {{_T_116}}};	// matmul/matmul-hw.mlir:24254:18, :24255:12, :24256:12, :24257:12
  wire [9:0] _T_206 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24258:18, :24259:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24260:5
    if (rst)	// matmul/matmul-hw.mlir:24260:5
      _T_203 <= _T_206;	// matmul/matmul-hw.mlir:24263:7
    else	// matmul/matmul-hw.mlir:24260:5
      _T_203 <= _T_205;	// matmul/matmul-hw.mlir:24261:7
  end // always @(posedge)
  wire _T_207 = _T_203[4'h9];	// matmul/matmul-hw.mlir:24253:12, :24265:19, :24266:12
  assign _T_45 = _T_207 ? 1'h1 : _T_38;	// matmul/matmul-hw.mlir:23641:13, :24268:12, :24307:12
  assign _T_44 = _T_207 ? {_T_122, 4'h9} : _T_37;	// matmul/matmul-hw.mlir:24251:19, :24267:12, :24269:12, :24308:12
  assign _T_43 = _T_207 ? 1'h1 : _T_36;	// matmul/matmul-hw.mlir:23641:13, :24270:12, :24309:12
  assign _T_42 = _T_207 ? Cr_p0_rd_data[4'h9] : _T_35;	// matmul/matmul-hw.mlir:23816:15, :23817:11, :24271:12, :24310:12
  assign _T_41 = _T_207 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24272:12
  assign _T_40 = _T_207 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23686:16, :24273:12
  assign _T_39 = _T_207 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24274:12
  wire [10:0] _T_209 = _T_208;	// matmul/matmul-hw.mlir:24276:12
  wire [10:0] _T_210 = {_T_209[4'h0+:10], {{_T_116}}};	// matmul/matmul-hw.mlir:24277:18, :24278:12, :24279:12, :24280:12
  wire [10:0] _T_211 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24281:18, :24282:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24283:5
    if (rst)	// matmul/matmul-hw.mlir:24283:5
      _T_208 <= _T_211;	// matmul/matmul-hw.mlir:24286:7
    else	// matmul/matmul-hw.mlir:24283:5
      _T_208 <= _T_210;	// matmul/matmul-hw.mlir:24284:7
  end // always @(posedge)
  wire [10:0] _T_213 = _T_212;	// matmul/matmul-hw.mlir:24292:12
  wire [10:0] _T_214 = {_T_213[4'h0+:10], {{_T_116}}};	// matmul/matmul-hw.mlir:24293:18, :24294:12, :24295:12, :24296:12
  wire [10:0] _T_215 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24297:18, :24298:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24299:5
    if (rst)	// matmul/matmul-hw.mlir:24299:5
      _T_212 <= _T_215;	// matmul/matmul-hw.mlir:24302:7
    else	// matmul/matmul-hw.mlir:24299:5
      _T_212 <= _T_214;	// matmul/matmul-hw.mlir:24300:7
  end // always @(posedge)
  wire _T_216 = _T_212[4'hA];	// matmul/matmul-hw.mlir:24292:12, :24304:19, :24305:12
  assign _T_38 = _T_216 ? 1'h1 : _T_31;	// matmul/matmul-hw.mlir:23641:13, :24307:12, :24346:12
  assign _T_37 = _T_216 ? {_T_122, 4'hA} : _T_30;	// matmul/matmul-hw.mlir:24290:19, :24306:12, :24308:12, :24347:12
  assign _T_36 = _T_216 ? 1'h1 : _T_29;	// matmul/matmul-hw.mlir:23641:13, :24309:12, :24348:12
  assign _T_35 = _T_216 ? Cr_p0_rd_data[4'hA] : _T_28;	// matmul/matmul-hw.mlir:23821:15, :23822:11, :24310:12, :24349:12
  assign _T_34 = _T_216 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24311:12
  assign _T_33 = _T_216 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23679:16, :24312:12
  assign _T_32 = _T_216 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24313:12
  wire [11:0] _T_218 = _T_217;	// matmul/matmul-hw.mlir:24315:12
  wire [11:0] _T_219 = {_T_218[4'h0+:11], {{_T_116}}};	// matmul/matmul-hw.mlir:24316:18, :24317:12, :24318:12, :24319:12
  wire [11:0] _T_220 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24320:18, :24321:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24322:5
    if (rst)	// matmul/matmul-hw.mlir:24322:5
      _T_217 <= _T_220;	// matmul/matmul-hw.mlir:24325:7
    else	// matmul/matmul-hw.mlir:24322:5
      _T_217 <= _T_219;	// matmul/matmul-hw.mlir:24323:7
  end // always @(posedge)
  wire [11:0] _T_222 = _T_221;	// matmul/matmul-hw.mlir:24331:12
  wire [11:0] _T_223 = {_T_222[4'h0+:11], {{_T_116}}};	// matmul/matmul-hw.mlir:24332:18, :24333:12, :24334:12, :24335:12
  wire [11:0] _T_224 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24336:18, :24337:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24338:5
    if (rst)	// matmul/matmul-hw.mlir:24338:5
      _T_221 <= _T_224;	// matmul/matmul-hw.mlir:24341:7
    else	// matmul/matmul-hw.mlir:24338:5
      _T_221 <= _T_223;	// matmul/matmul-hw.mlir:24339:7
  end // always @(posedge)
  wire _T_225 = _T_221[4'hB];	// matmul/matmul-hw.mlir:24331:12, :24343:19, :24344:12
  assign _T_31 = _T_225 ? 1'h1 : _T_24;	// matmul/matmul-hw.mlir:23641:13, :24346:12, :24385:12
  assign _T_30 = _T_225 ? {_T_122, 4'hB} : _T_23;	// matmul/matmul-hw.mlir:24329:19, :24345:12, :24347:12, :24386:12
  assign _T_29 = _T_225 ? 1'h1 : _T_22;	// matmul/matmul-hw.mlir:23641:13, :24348:12, :24387:12
  assign _T_28 = _T_225 ? Cr_p0_rd_data[4'hB] : _T_21;	// matmul/matmul-hw.mlir:23826:15, :23827:11, :24349:12, :24388:12
  assign _T_27 = _T_225 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24350:12
  assign _T_26 = _T_225 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23672:16, :24351:12
  assign _T_25 = _T_225 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24352:12
  wire [12:0] _T_227 = _T_226;	// matmul/matmul-hw.mlir:24354:12
  wire [12:0] _T_228 = {_T_227[4'h0+:12], {{_T_116}}};	// matmul/matmul-hw.mlir:24355:18, :24356:12, :24357:12, :24358:12
  wire [12:0] _T_229 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24359:18, :24360:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24361:5
    if (rst)	// matmul/matmul-hw.mlir:24361:5
      _T_226 <= _T_229;	// matmul/matmul-hw.mlir:24364:7
    else	// matmul/matmul-hw.mlir:24361:5
      _T_226 <= _T_228;	// matmul/matmul-hw.mlir:24362:7
  end // always @(posedge)
  wire [12:0] _T_231 = _T_230;	// matmul/matmul-hw.mlir:24370:12
  wire [12:0] _T_232 = {_T_231[4'h0+:12], {{_T_116}}};	// matmul/matmul-hw.mlir:24371:18, :24372:12, :24373:12, :24374:12
  wire [12:0] _T_233 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24375:18, :24376:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24377:5
    if (rst)	// matmul/matmul-hw.mlir:24377:5
      _T_230 <= _T_233;	// matmul/matmul-hw.mlir:24380:7
    else	// matmul/matmul-hw.mlir:24377:5
      _T_230 <= _T_232;	// matmul/matmul-hw.mlir:24378:7
  end // always @(posedge)
  wire _T_234 = _T_230[4'hC];	// matmul/matmul-hw.mlir:24370:12, :24382:19, :24383:12
  assign _T_24 = _T_234 ? 1'h1 : _T_17;	// matmul/matmul-hw.mlir:23641:13, :24385:12, :24424:12
  assign _T_23 = _T_234 ? {_T_122, 4'hC} : _T_16;	// matmul/matmul-hw.mlir:24368:19, :24384:12, :24386:12, :24425:12
  assign _T_22 = _T_234 ? 1'h1 : _T_15;	// matmul/matmul-hw.mlir:23641:13, :24387:12, :24426:12
  assign _T_21 = _T_234 ? Cr_p0_rd_data[4'hC] : _T_14;	// matmul/matmul-hw.mlir:23831:15, :23832:11, :24388:12, :24427:12
  assign _T_20 = _T_234 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24389:12
  assign _T_19 = _T_234 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23665:16, :24390:12
  assign _T_18 = _T_234 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24391:12
  wire [13:0] _T_236 = _T_235;	// matmul/matmul-hw.mlir:24393:12
  wire [13:0] _T_237 = {_T_236[4'h0+:13], {{_T_116}}};	// matmul/matmul-hw.mlir:24394:18, :24395:12, :24396:12, :24397:12
  wire [13:0] _T_238 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24398:18, :24399:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24400:5
    if (rst)	// matmul/matmul-hw.mlir:24400:5
      _T_235 <= _T_238;	// matmul/matmul-hw.mlir:24403:7
    else	// matmul/matmul-hw.mlir:24400:5
      _T_235 <= _T_237;	// matmul/matmul-hw.mlir:24401:7
  end // always @(posedge)
  wire [13:0] _T_240 = _T_239;	// matmul/matmul-hw.mlir:24409:12
  wire [13:0] _T_241 = {_T_240[4'h0+:13], {{_T_116}}};	// matmul/matmul-hw.mlir:24410:18, :24411:12, :24412:12, :24413:12
  wire [13:0] _T_242 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24414:18, :24415:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24416:5
    if (rst)	// matmul/matmul-hw.mlir:24416:5
      _T_239 <= _T_242;	// matmul/matmul-hw.mlir:24419:7
    else	// matmul/matmul-hw.mlir:24416:5
      _T_239 <= _T_241;	// matmul/matmul-hw.mlir:24417:7
  end // always @(posedge)
  wire _T_243 = _T_239[4'hD];	// matmul/matmul-hw.mlir:24409:12, :24421:19, :24422:12
  assign _T_17 = _T_243 ? 1'h1 : _T_10;	// matmul/matmul-hw.mlir:23641:13, :24424:12, :24463:12
  assign _T_16 = _T_243 ? {_T_122, 4'hD} : _T_9;	// matmul/matmul-hw.mlir:24407:19, :24423:12, :24425:12, :24464:12
  assign _T_15 = _T_243 ? 1'h1 : _T_8;	// matmul/matmul-hw.mlir:23641:13, :24426:12, :24465:12
  assign _T_14 = _T_243 ? Cr_p0_rd_data[4'hD] : _T_7;	// matmul/matmul-hw.mlir:23836:15, :23837:11, :24427:12, :24466:12
  assign _T_13 = _T_243 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24428:12
  assign _T_12 = _T_243 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23658:16, :24429:12
  assign _T_11 = _T_243 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24430:12
  wire [14:0] _T_245 = _T_244;	// matmul/matmul-hw.mlir:24432:12
  wire [14:0] _T_246 = {_T_245[4'h0+:14], {{_T_116}}};	// matmul/matmul-hw.mlir:24433:18, :24434:12, :24435:12, :24436:12
  wire [14:0] _T_247 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24437:18, :24438:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24439:5
    if (rst)	// matmul/matmul-hw.mlir:24439:5
      _T_244 <= _T_247;	// matmul/matmul-hw.mlir:24442:7
    else	// matmul/matmul-hw.mlir:24439:5
      _T_244 <= _T_246;	// matmul/matmul-hw.mlir:24440:7
  end // always @(posedge)
  wire [14:0] _T_249 = _T_248;	// matmul/matmul-hw.mlir:24448:12
  wire [14:0] _T_250 = {_T_249[4'h0+:14], {{_T_116}}};	// matmul/matmul-hw.mlir:24449:18, :24450:12, :24451:12, :24452:12
  wire [14:0] _T_251 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24453:18, :24454:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24455:5
    if (rst)	// matmul/matmul-hw.mlir:24455:5
      _T_248 <= _T_251;	// matmul/matmul-hw.mlir:24458:7
    else	// matmul/matmul-hw.mlir:24455:5
      _T_248 <= _T_250;	// matmul/matmul-hw.mlir:24456:7
  end // always @(posedge)
  wire _T_252 = _T_248[4'hE];	// matmul/matmul-hw.mlir:24448:12, :24460:19, :24461:12
  assign _T_10 = _T_252 ? 1'h1 : _T_3;	// matmul/matmul-hw.mlir:23641:13, :24463:12, :24502:12
  assign _T_9 = _T_252 ? {_T_122, 4'hE} : _T_2;	// matmul/matmul-hw.mlir:24446:19, :24462:12, :24464:12, :24503:12
  assign _T_8 = _T_252 ? 1'h1 : _T_1;	// matmul/matmul-hw.mlir:23641:13, :24465:12, :24504:12
  assign _T_7 = _T_252 ? Cr_p0_rd_data[4'hE] : _T_0;	// matmul/matmul-hw.mlir:23841:15, :23842:11, :24466:12, :24505:12
  assign _T_6 = _T_252 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24467:12
  assign _T_5 = _T_252 ? _T_122 : 4'bx;	// matmul/matmul-hw.mlir:23651:16, :24468:12
  assign _T_4 = _T_252 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24469:12
  wire [15:0] _T_254 = _T_253;	// matmul/matmul-hw.mlir:24471:12
  wire [15:0] _T_255 = {_T_254[4'h0+:15], {{_T_116}}};	// matmul/matmul-hw.mlir:24472:18, :24473:12, :24474:12, :24475:12
  wire [15:0] _T_256 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24476:18, :24477:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24478:5
    if (rst)	// matmul/matmul-hw.mlir:24478:5
      _T_253 <= _T_256;	// matmul/matmul-hw.mlir:24481:7
    else	// matmul/matmul-hw.mlir:24478:5
      _T_253 <= _T_255;	// matmul/matmul-hw.mlir:24479:7
  end // always @(posedge)
  wire [15:0] _T_258 = _T_257;	// matmul/matmul-hw.mlir:24487:12
  wire [15:0] _T_259 = {_T_258[4'h0+:15], {{_T_116}}};	// matmul/matmul-hw.mlir:24488:18, :24489:12, :24490:12, :24491:12
  wire [15:0] _T_260 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24492:18, :24493:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24494:5
    if (rst)	// matmul/matmul-hw.mlir:24494:5
      _T_257 <= _T_260;	// matmul/matmul-hw.mlir:24497:7
    else	// matmul/matmul-hw.mlir:24494:5
      _T_257 <= _T_259;	// matmul/matmul-hw.mlir:24495:7
  end // always @(posedge)
  wire _T_261 = _T_257[4'hF];	// matmul/matmul-hw.mlir:24487:12, :24499:19, :24500:12
  assign _T_3 = _T_261 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24502:12
  assign _T_2 = _T_261 ? {_T_122, 4'hF} : 8'bx;	// matmul/matmul-hw.mlir:23648:16, :24485:19, :24501:12, :24503:12
  assign _T_1 = _T_261 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:23641:13, :23645:14, :24504:12
  assign _T_0 = _T_261 ? Cr_p0_rd_data[4'hF] : 32'bx;	// matmul/matmul-hw.mlir:23646:17, :23846:15, :23847:11, :24505:12
  wire [16:0] _T_263 = _T_262;	// matmul/matmul-hw.mlir:24507:12
  wire [16:0] _T_264 = {_T_263[5'h0+:16], {{_T_116}}};	// matmul/matmul-hw.mlir:24508:14, :24509:12, :24510:12, :24511:12
  wire [16:0] _T_265 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:24512:18, :24513:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:24514:5
    if (rst)	// matmul/matmul-hw.mlir:24514:5
      _T_262 <= _T_265;	// matmul/matmul-hw.mlir:24517:7
    else	// matmul/matmul-hw.mlir:24514:5
      _T_262 <= _T_264;	// matmul/matmul-hw.mlir:24515:7
  end // always @(posedge)
  assign _T = _T_262[5'h10];	// matmul/matmul-hw.mlir:24507:12, :24519:16, :24520:12
  assign Cr_p0_addr_en = {{_T_6}, {_T_13}, {_T_20}, {_T_27}, {_T_34}, {_T_41}, {_T_48}, {_T_55}, {_T_62}, {_T_69}, {_T_76}, {_T_83}, {_T_90}, {_T_97}, {_T_104}, {_T_107}};	// matmul/matmul-hw.mlir:23602:10, :23896:11, :23921:11, :23960:11, :23999:11, :24038:12, :24077:12, :24116:12, :24155:12, :24194:12, :24233:12, :24272:12, :24311:12, :24350:12, :24389:12, :24428:12, :24467:12, :24521:5
  assign Cr_p0_addr_data = {{_T_5}, {_T_12}, {_T_19}, {_T_26}, {_T_33}, {_T_40}, {_T_47}, {_T_54}, {_T_61}, {_T_68}, {_T_75}, {_T_82}, {_T_89}, {_T_96}, {_T_103}, {_T_106}};	// matmul/matmul-hw.mlir:23619:10, :23897:11, :23922:11, :23961:11, :24000:12, :24039:12, :24078:12, :24117:12, :24156:12, :24195:12, :24234:12, :24273:12, :24312:12, :24351:12, :24390:12, :24429:12, :24468:12, :24521:5
  assign Cr_p0_rd_en = {{_T_4}, {_T_11}, {_T_18}, {_T_25}, {_T_32}, {_T_39}, {_T_46}, {_T_53}, {_T_60}, {_T_67}, {_T_74}, {_T_81}, {_T_88}, {_T_95}, {_T_102}, {_T_105}};	// matmul/matmul-hw.mlir:23636:10, :23898:11, :23923:11, :23962:11, :24001:12, :24040:12, :24079:12, :24118:12, :24157:12, :24196:12, :24235:12, :24274:12, :24313:12, :24352:12, :24391:12, :24430:12, :24469:12, :24521:5
  assign Co_p0_addr_en = _T_125 ? 1'h1 : _T_101;	// matmul/matmul-hw.mlir:23641:13, :23909:11, :23917:11, :23956:11, :24521:5
  assign Co_p0_addr_data = _T_125 ? {_T_122, 4'h0} : _T_100;	// matmul/matmul-hw.mlir:23907:18, :23909:11, :23916:11, :23918:11, :23957:11, :24521:5
  assign Co_p0_wr_en = _T_125 ? 1'h1 : _T_99;	// matmul/matmul-hw.mlir:23641:13, :23909:11, :23919:11, :23958:11, :24521:5
  assign Co_p0_wr_data = _T_125 ? Cr_p0_rd_data[4'h0] : _T_98;	// matmul/matmul-hw.mlir:23771:14, :23772:10, :23909:11, :23920:11, :23959:11, :24521:5
endmodule

