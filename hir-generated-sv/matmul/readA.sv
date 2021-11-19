module readA(	// matmul/matmul-hw.mlir:7:3
  input  [31:0]       Ai_p0_rd_data,
  input               t, clk, rst,
  output              Ai_p0_addr_en,
  output [7:0]        Ai_p0_addr_data,
  output              Ai_p0_rd_en,
  output [15:0]       Aw_p0_addr_en,
  output [15:0][3:0]  Aw_p0_addr_data,
  output [15:0]       Aw_p0_wr_en,
  output [15:0][31:0] Aw_p0_wr_data);

  wire        _T;	// matmul/matmul-hw.mlir:1069:12
  wire [31:0] _T_0;	// matmul/matmul-hw.mlir:1054:12
  wire        _T_1;	// matmul/matmul-hw.mlir:1053:12
  wire [3:0]  _T_2;	// matmul/matmul-hw.mlir:1052:12
  wire        _T_3;	// matmul/matmul-hw.mlir:1051:12
  wire        _T_4;	// matmul/matmul-hw.mlir:1012:12
  wire [7:0]  _T_5;	// matmul/matmul-hw.mlir:1011:12
  wire        _T_6;	// matmul/matmul-hw.mlir:1010:12
  wire [31:0] _T_7;	// matmul/matmul-hw.mlir:1007:12
  wire        _T_8;	// matmul/matmul-hw.mlir:1006:12
  wire [3:0]  _T_9;	// matmul/matmul-hw.mlir:1005:12
  wire        _T_10;	// matmul/matmul-hw.mlir:1004:12
  wire        _T_11;	// matmul/matmul-hw.mlir:965:12
  wire [7:0]  _T_12;	// matmul/matmul-hw.mlir:964:12
  wire        _T_13;	// matmul/matmul-hw.mlir:963:12
  wire [31:0] _T_14;	// matmul/matmul-hw.mlir:960:12
  wire        _T_15;	// matmul/matmul-hw.mlir:959:12
  wire [3:0]  _T_16;	// matmul/matmul-hw.mlir:958:12
  wire        _T_17;	// matmul/matmul-hw.mlir:957:12
  wire        _T_18;	// matmul/matmul-hw.mlir:918:12
  wire [7:0]  _T_19;	// matmul/matmul-hw.mlir:917:12
  wire        _T_20;	// matmul/matmul-hw.mlir:916:12
  wire [31:0] _T_21;	// matmul/matmul-hw.mlir:913:12
  wire        _T_22;	// matmul/matmul-hw.mlir:912:12
  wire [3:0]  _T_23;	// matmul/matmul-hw.mlir:911:12
  wire        _T_24;	// matmul/matmul-hw.mlir:910:12
  wire        _T_25;	// matmul/matmul-hw.mlir:871:12
  wire [7:0]  _T_26;	// matmul/matmul-hw.mlir:870:12
  wire        _T_27;	// matmul/matmul-hw.mlir:869:12
  wire [31:0] _T_28;	// matmul/matmul-hw.mlir:866:12
  wire        _T_29;	// matmul/matmul-hw.mlir:865:12
  wire [3:0]  _T_30;	// matmul/matmul-hw.mlir:864:12
  wire        _T_31;	// matmul/matmul-hw.mlir:863:12
  wire        _T_32;	// matmul/matmul-hw.mlir:824:12
  wire [7:0]  _T_33;	// matmul/matmul-hw.mlir:823:12
  wire        _T_34;	// matmul/matmul-hw.mlir:822:12
  wire [31:0] _T_35;	// matmul/matmul-hw.mlir:819:12
  wire        _T_36;	// matmul/matmul-hw.mlir:818:12
  wire [3:0]  _T_37;	// matmul/matmul-hw.mlir:817:12
  wire        _T_38;	// matmul/matmul-hw.mlir:816:12
  wire        _T_39;	// matmul/matmul-hw.mlir:777:12
  wire [7:0]  _T_40;	// matmul/matmul-hw.mlir:776:12
  wire        _T_41;	// matmul/matmul-hw.mlir:775:12
  wire [31:0] _T_42;	// matmul/matmul-hw.mlir:772:12
  wire        _T_43;	// matmul/matmul-hw.mlir:771:12
  wire [3:0]  _T_44;	// matmul/matmul-hw.mlir:770:12
  wire        _T_45;	// matmul/matmul-hw.mlir:769:12
  wire        _T_46;	// matmul/matmul-hw.mlir:730:12
  wire [7:0]  _T_47;	// matmul/matmul-hw.mlir:729:12
  wire        _T_48;	// matmul/matmul-hw.mlir:728:12
  wire [31:0] _T_49;	// matmul/matmul-hw.mlir:725:12
  wire        _T_50;	// matmul/matmul-hw.mlir:724:12
  wire [3:0]  _T_51;	// matmul/matmul-hw.mlir:723:12
  wire        _T_52;	// matmul/matmul-hw.mlir:722:12
  wire        _T_53;	// matmul/matmul-hw.mlir:683:12
  wire [7:0]  _T_54;	// matmul/matmul-hw.mlir:682:12
  wire        _T_55;	// matmul/matmul-hw.mlir:681:12
  wire [31:0] _T_56;	// matmul/matmul-hw.mlir:678:12
  wire        _T_57;	// matmul/matmul-hw.mlir:677:12
  wire [3:0]  _T_58;	// matmul/matmul-hw.mlir:676:12
  wire        _T_59;	// matmul/matmul-hw.mlir:675:12
  wire        _T_60;	// matmul/matmul-hw.mlir:636:12
  wire [7:0]  _T_61;	// matmul/matmul-hw.mlir:635:12
  wire        _T_62;	// matmul/matmul-hw.mlir:634:12
  wire [31:0] _T_63;	// matmul/matmul-hw.mlir:631:12
  wire        _T_64;	// matmul/matmul-hw.mlir:630:12
  wire [3:0]  _T_65;	// matmul/matmul-hw.mlir:629:12
  wire        _T_66;	// matmul/matmul-hw.mlir:628:12
  wire        _T_67;	// matmul/matmul-hw.mlir:589:12
  wire [7:0]  _T_68;	// matmul/matmul-hw.mlir:588:12
  wire        _T_69;	// matmul/matmul-hw.mlir:587:12
  wire [31:0] _T_70;	// matmul/matmul-hw.mlir:584:12
  wire        _T_71;	// matmul/matmul-hw.mlir:583:12
  wire [3:0]  _T_72;	// matmul/matmul-hw.mlir:582:12
  wire        _T_73;	// matmul/matmul-hw.mlir:581:12
  wire        _T_74;	// matmul/matmul-hw.mlir:542:12
  wire [7:0]  _T_75;	// matmul/matmul-hw.mlir:541:12
  wire        _T_76;	// matmul/matmul-hw.mlir:540:12
  wire [31:0] _T_77;	// matmul/matmul-hw.mlir:537:12
  wire        _T_78;	// matmul/matmul-hw.mlir:536:12
  wire [3:0]  _T_79;	// matmul/matmul-hw.mlir:535:12
  wire        _T_80;	// matmul/matmul-hw.mlir:534:12
  wire        _T_81;	// matmul/matmul-hw.mlir:495:12
  wire [7:0]  _T_82;	// matmul/matmul-hw.mlir:494:12
  wire        _T_83;	// matmul/matmul-hw.mlir:493:12
  wire [31:0] _T_84;	// matmul/matmul-hw.mlir:490:12
  wire        _T_85;	// matmul/matmul-hw.mlir:489:12
  wire [3:0]  _T_86;	// matmul/matmul-hw.mlir:488:12
  wire        _T_87;	// matmul/matmul-hw.mlir:487:12
  wire        _T_88;	// matmul/matmul-hw.mlir:448:11
  wire [7:0]  _T_89;	// matmul/matmul-hw.mlir:447:11
  wire        _T_90;	// matmul/matmul-hw.mlir:446:11
  wire [31:0] _T_91;	// matmul/matmul-hw.mlir:443:11
  wire        _T_92;	// matmul/matmul-hw.mlir:442:11
  wire [3:0]  _T_93;	// matmul/matmul-hw.mlir:441:11
  wire        _T_94;	// matmul/matmul-hw.mlir:440:11
  wire        _T_95;	// matmul/matmul-hw.mlir:401:11
  wire [7:0]  _T_96;	// matmul/matmul-hw.mlir:400:11
  wire        _T_97;	// matmul/matmul-hw.mlir:399:11
  wire [31:0] _T_98;	// matmul/matmul-hw.mlir:396:11
  wire        _T_99;	// matmul/matmul-hw.mlir:395:11
  wire [3:0]  _T_100;	// matmul/matmul-hw.mlir:394:11
  wire        _T_101;	// matmul/matmul-hw.mlir:393:11
  wire        _T_102;	// matmul/matmul-hw.mlir:354:11
  wire [7:0]  _T_103;	// matmul/matmul-hw.mlir:353:11
  wire        _T_104;	// matmul/matmul-hw.mlir:352:11
  wire [31:0] _T_105;	// matmul/matmul-hw.mlir:349:11
  wire        _T_106;	// matmul/matmul-hw.mlir:348:11
  wire [3:0]  _T_107;	// matmul/matmul-hw.mlir:347:11
  wire        _T_108;	// matmul/matmul-hw.mlir:346:11
  wire        _T_109;	// matmul/matmul-hw.mlir:306:11
  wire        _T_110;	// matmul/matmul-hw.mlir:305:11
  wire        _T_111;	// matmul/matmul-hw.mlir:304:11
  wire [5:0]  _T_112;	// matmul/matmul-hw.mlir:297:11
  wire        _T_113;	// matmul/matmul-hw.mlir:296:11
  wire        _T_114;	// matmul/matmul-hw.mlir:293:11
  wire        reg_1x1_r0_w1_inst0_p0_rd_data;	// matmul/matmul-hw.mlir:303:39
  wire [5:0]  reg_1x6_r0_w1_inst0_p0_rd_data;	// matmul/matmul-hw.mlir:292:39
  reg         _T_115;	// matmul/matmul-hw.mlir:269:10
  reg  [4:0]  _T_121;	// matmul/matmul-hw.mlir:308:11
  reg         _T_124;	// matmul/matmul-hw.mlir:322:11
  reg  [3:0]  i1;	// matmul/matmul-hw.mlir:330:11
  reg         _T_127;	// matmul/matmul-hw.mlir:338:11
  reg  [1:0]  _T_129;	// matmul/matmul-hw.mlir:355:11
  reg  [3:0]  i1_133;	// matmul/matmul-hw.mlir:370:15
  reg  [1:0]  _T_135;	// matmul/matmul-hw.mlir:378:11
  reg  [2:0]  _T_140;	// matmul/matmul-hw.mlir:402:11
  reg  [3:0]  i1_144;	// matmul/matmul-hw.mlir:417:15
  reg  [2:0]  _T_146;	// matmul/matmul-hw.mlir:425:11
  reg  [3:0]  _T_151;	// matmul/matmul-hw.mlir:449:11
  reg  [3:0]  i1_155;	// matmul/matmul-hw.mlir:464:15
  reg  [3:0]  _T_157;	// matmul/matmul-hw.mlir:472:11
  reg  [4:0]  _T_162;	// matmul/matmul-hw.mlir:496:12
  reg  [3:0]  i1_166;	// matmul/matmul-hw.mlir:511:15
  reg  [4:0]  _T_168;	// matmul/matmul-hw.mlir:519:12
  reg  [5:0]  _T_173;	// matmul/matmul-hw.mlir:543:12
  reg  [3:0]  i1_177;	// matmul/matmul-hw.mlir:558:15
  reg  [5:0]  _T_179;	// matmul/matmul-hw.mlir:566:12
  reg  [6:0]  _T_184;	// matmul/matmul-hw.mlir:590:12
  reg  [3:0]  i1_188;	// matmul/matmul-hw.mlir:605:15
  reg  [6:0]  _T_190;	// matmul/matmul-hw.mlir:613:12
  reg  [7:0]  _T_195;	// matmul/matmul-hw.mlir:637:12
  reg  [3:0]  i1_199;	// matmul/matmul-hw.mlir:652:15
  reg  [7:0]  _T_201;	// matmul/matmul-hw.mlir:660:12
  reg  [8:0]  _T_206;	// matmul/matmul-hw.mlir:684:12
  reg  [3:0]  i1_210;	// matmul/matmul-hw.mlir:699:15
  reg  [8:0]  _T_212;	// matmul/matmul-hw.mlir:707:12
  reg  [9:0]  _T_217;	// matmul/matmul-hw.mlir:731:12
  reg  [3:0]  i1_221;	// matmul/matmul-hw.mlir:746:15
  reg  [9:0]  _T_223;	// matmul/matmul-hw.mlir:754:12
  reg  [10:0] _T_228;	// matmul/matmul-hw.mlir:778:12
  reg  [3:0]  i1_232;	// matmul/matmul-hw.mlir:793:15
  reg  [10:0] _T_234;	// matmul/matmul-hw.mlir:801:12
  reg  [11:0] _T_239;	// matmul/matmul-hw.mlir:825:12
  reg  [3:0]  i1_243;	// matmul/matmul-hw.mlir:840:15
  reg  [11:0] _T_245;	// matmul/matmul-hw.mlir:848:12
  reg  [12:0] _T_250;	// matmul/matmul-hw.mlir:872:12
  reg  [3:0]  i1_254;	// matmul/matmul-hw.mlir:887:15
  reg  [12:0] _T_256;	// matmul/matmul-hw.mlir:895:12
  reg  [13:0] _T_261;	// matmul/matmul-hw.mlir:919:12
  reg  [3:0]  i1_265;	// matmul/matmul-hw.mlir:934:15
  reg  [13:0] _T_267;	// matmul/matmul-hw.mlir:942:12
  reg  [14:0] _T_272;	// matmul/matmul-hw.mlir:966:12
  reg  [3:0]  i1_276;	// matmul/matmul-hw.mlir:981:15
  reg  [14:0] _T_278;	// matmul/matmul-hw.mlir:989:12
  reg  [15:0] _T_283;	// matmul/matmul-hw.mlir:1013:12
  reg  [3:0]  i1_287;	// matmul/matmul-hw.mlir:1028:15
  reg  [15:0] _T_289;	// matmul/matmul-hw.mlir:1036:12
  reg  [16:0] _T_294;	// matmul/matmul-hw.mlir:1055:12

  localparam _T_116 = 1'h0;	// matmul/matmul-hw.mlir:271:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:272:5
    if (rst)	// matmul/matmul-hw.mlir:272:5
      _T_115 <= _T_116;	// matmul/matmul-hw.mlir:275:7
    else	// matmul/matmul-hw.mlir:272:5
      _T_115 <= t;	// matmul/matmul-hw.mlir:273:7
  end // always @(posedge)
  wire _T_117 = _T_115 & 1'h1 | _T & reg_1x1_r0_w1_inst0_p0_rd_data;	// matmul/matmul-hw.mlir:79:13, :270:10, :280:10, :281:10, :282:10, :303:39, :1069:12
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd6)
  ) reg_1x6_r0_w1_inst0 (	// matmul/matmul-hw.mlir:292:39
    .p0_rd_en   (_T_114),	// matmul/matmul-hw.mlir:293:11
    .p1_wr_en   (_T_113),	// matmul/matmul-hw.mlir:296:11
    .p1_wr_data (_T_112),	// matmul/matmul-hw.mlir:297:11
    .t          (_T_117),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x6_r0_w1_inst0_p0_rd_data)
  );
  assign _T_114 = _T_117 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :293:11
  wire [5:0] _T_118 = _T_115 ? 6'h0 : reg_1x6_r0_w1_inst0_p0_rd_data;	// matmul/matmul-hw.mlir:80:14, :270:10, :292:39, :294:11
  wire [5:0] _T_119 = _T_118 + 6'h1;	// matmul/matmul-hw.mlir:82:14, :295:11
  assign _T_113 = _T_117 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :296:11
  assign _T_112 = _T_117 ? _T_119 : 6'bx;	// matmul/matmul-hw.mlir:199:13, :297:11
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd1)
  ) reg_1x1_r0_w1_inst0 (	// matmul/matmul-hw.mlir:303:39
    .p0_rd_en   (_T_109),	// matmul/matmul-hw.mlir:306:11
    .p1_wr_en   (_T_111),	// matmul/matmul-hw.mlir:304:11
    .p1_wr_data (_T_110),	// matmul/matmul-hw.mlir:305:11
    .t          (_T_117),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x1_r0_w1_inst0_p0_rd_data)
  );
  assign _T_111 = _T_117 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :304:11
  assign _T_110 = _T_117 ? _T_119 < 6'h10 : 1'bx;	// matmul/matmul-hw.mlir:81:15, :197:17, :298:11, :305:11
  assign _T_109 = _T_117 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :306:11
  wire [4:0] _T_120 = _T_118[4:0];	// matmul/matmul-hw.mlir:307:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:309:5
    if (_T_117)	// matmul/matmul-hw.mlir:310:7
      _T_121 <= _T_120;	// matmul/matmul-hw.mlir:311:9
  end // always @(posedge)
  wire [4:0] _T_122 = _T_117 ? _T_120 : _T_121;	// matmul/matmul-hw.mlir:314:11, :315:11
  wire [3:0] _T_123 = _T_122[3:0];	// matmul/matmul-hw.mlir:316:11
  localparam _T_125 = 1'h0;	// matmul/matmul-hw.mlir:324:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:325:5
    if (rst)	// matmul/matmul-hw.mlir:325:5
      _T_124 <= _T_125;	// matmul/matmul-hw.mlir:328:7
    else	// matmul/matmul-hw.mlir:325:5
      _T_124 <= _T_117;	// matmul/matmul-hw.mlir:326:7
  end // always @(posedge)
  localparam [3:0] _T_126 = 4'h0;	// matmul/matmul-hw.mlir:332:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:333:5
    if (rst)	// matmul/matmul-hw.mlir:333:5
      i1 <= _T_126;	// matmul/matmul-hw.mlir:336:7
    else	// matmul/matmul-hw.mlir:333:5
      i1 <= _T_123;	// matmul/matmul-hw.mlir:334:7
  end // always @(posedge)
  localparam _T_128 = 1'h0;	// matmul/matmul-hw.mlir:340:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:341:5
    if (rst)	// matmul/matmul-hw.mlir:341:5
      _T_127 <= _T_128;	// matmul/matmul-hw.mlir:344:7
    else	// matmul/matmul-hw.mlir:341:5
      _T_127 <= _T_117;	// matmul/matmul-hw.mlir:342:7
  end // always @(posedge)
  assign _T_108 = _T_127 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :339:11, :346:11
  assign _T_107 = _T_127 ? i1 : 4'bx;	// matmul/matmul-hw.mlir:191:17, :331:11, :339:11, :347:11
  assign _T_106 = _T_127 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :339:11, :348:11
  assign _T_105 = _T_127 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:189:18, :339:11, :349:11
  assign _T_104 = _T_127 ? 1'h1 : _T_97;	// matmul/matmul-hw.mlir:79:13, :339:11, :352:11, :399:11
  assign _T_103 = _T_127 ? {_T_123, 4'h1} : _T_96;	// matmul/matmul-hw.mlir:339:11, :350:14, :351:11, :353:11, :400:11
  assign _T_102 = _T_127 ? 1'h1 : _T_95;	// matmul/matmul-hw.mlir:79:13, :339:11, :354:11, :401:11
  wire [1:0] _T_130 = _T_129;	// matmul/matmul-hw.mlir:356:11
  wire [1:0] _T_131 = {_T_130[1'h0+:1], {{_T_117}}};	// matmul/matmul-hw.mlir:357:18, :358:11, :359:11, :360:11
  wire [1:0] _T_132 = {{1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:361:18, :362:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:363:5
    if (rst)	// matmul/matmul-hw.mlir:363:5
      _T_129 <= _T_132;	// matmul/matmul-hw.mlir:366:7
    else	// matmul/matmul-hw.mlir:363:5
      _T_129 <= _T_131;	// matmul/matmul-hw.mlir:364:7
  end // always @(posedge)
  localparam [3:0] _T_134 = 4'h0;	// matmul/matmul-hw.mlir:372:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:373:5
    if (rst)	// matmul/matmul-hw.mlir:373:5
      i1_133 <= _T_134;	// matmul/matmul-hw.mlir:376:7
    else	// matmul/matmul-hw.mlir:373:5
      i1_133 <= _T_123;	// matmul/matmul-hw.mlir:374:7
  end // always @(posedge)
  wire [1:0] _T_136 = _T_135;	// matmul/matmul-hw.mlir:379:11
  wire [1:0] _T_137 = {_T_136[1'h0+:1], {{_T_117}}};	// matmul/matmul-hw.mlir:380:18, :381:11, :382:11, :383:11
  wire [1:0] _T_138 = {{1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:384:18, :385:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:386:5
    if (rst)	// matmul/matmul-hw.mlir:386:5
      _T_135 <= _T_138;	// matmul/matmul-hw.mlir:389:7
    else	// matmul/matmul-hw.mlir:386:5
      _T_135 <= _T_137;	// matmul/matmul-hw.mlir:387:7
  end // always @(posedge)
  wire _T_139 = _T_135[1'h1];	// matmul/matmul-hw.mlir:379:11, :391:17, :392:11
  assign _T_101 = _T_139 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :393:11
  assign _T_100 = _T_139 ? i1_133 : 4'bx;	// matmul/matmul-hw.mlir:184:17, :371:11, :394:11
  assign _T_99 = _T_139 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :395:11
  assign _T_98 = _T_139 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:182:18, :396:11
  assign _T_97 = _T_139 ? 1'h1 : _T_90;	// matmul/matmul-hw.mlir:79:13, :399:11, :446:11
  assign _T_96 = _T_139 ? {_T_123, 4'h2} : _T_89;	// matmul/matmul-hw.mlir:397:14, :398:11, :400:11, :447:11
  assign _T_95 = _T_139 ? 1'h1 : _T_88;	// matmul/matmul-hw.mlir:79:13, :401:11, :448:11
  wire [2:0] _T_141 = _T_140;	// matmul/matmul-hw.mlir:403:11
  wire [2:0] _T_142 = {_T_141[2'h0+:2], {{_T_117}}};	// matmul/matmul-hw.mlir:404:14, :405:11, :406:11, :407:11
  wire [2:0] _T_143 = {{1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:408:18, :409:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:410:5
    if (rst)	// matmul/matmul-hw.mlir:410:5
      _T_140 <= _T_143;	// matmul/matmul-hw.mlir:413:7
    else	// matmul/matmul-hw.mlir:410:5
      _T_140 <= _T_142;	// matmul/matmul-hw.mlir:411:7
  end // always @(posedge)
  localparam [3:0] _T_145 = 4'h0;	// matmul/matmul-hw.mlir:419:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:420:5
    if (rst)	// matmul/matmul-hw.mlir:420:5
      i1_144 <= _T_145;	// matmul/matmul-hw.mlir:423:7
    else	// matmul/matmul-hw.mlir:420:5
      i1_144 <= _T_123;	// matmul/matmul-hw.mlir:421:7
  end // always @(posedge)
  wire [2:0] _T_147 = _T_146;	// matmul/matmul-hw.mlir:426:11
  wire [2:0] _T_148 = {_T_147[2'h0+:2], {{_T_117}}};	// matmul/matmul-hw.mlir:427:18, :428:11, :429:11, :430:11
  wire [2:0] _T_149 = {{1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:431:18, :432:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:433:5
    if (rst)	// matmul/matmul-hw.mlir:433:5
      _T_146 <= _T_149;	// matmul/matmul-hw.mlir:436:7
    else	// matmul/matmul-hw.mlir:433:5
      _T_146 <= _T_148;	// matmul/matmul-hw.mlir:434:7
  end // always @(posedge)
  wire _T_150 = _T_146[2'h2];	// matmul/matmul-hw.mlir:426:11, :438:19, :439:11
  assign _T_94 = _T_150 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :440:11
  assign _T_93 = _T_150 ? i1_144 : 4'bx;	// matmul/matmul-hw.mlir:177:17, :418:11, :441:11
  assign _T_92 = _T_150 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :442:11
  assign _T_91 = _T_150 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:175:18, :443:11
  assign _T_90 = _T_150 ? 1'h1 : _T_83;	// matmul/matmul-hw.mlir:79:13, :446:11, :493:12
  assign _T_89 = _T_150 ? {_T_123, 4'h3} : _T_82;	// matmul/matmul-hw.mlir:444:14, :445:11, :447:11, :494:12
  assign _T_88 = _T_150 ? 1'h1 : _T_81;	// matmul/matmul-hw.mlir:79:13, :448:11, :495:12
  wire [3:0] _T_152 = _T_151;	// matmul/matmul-hw.mlir:450:11
  wire [3:0] _T_153 = {_T_152[2'h0+:3], {{_T_117}}};	// matmul/matmul-hw.mlir:451:18, :452:11, :453:11, :454:11
  wire [3:0] _T_154 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:455:18, :456:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:457:5
    if (rst)	// matmul/matmul-hw.mlir:457:5
      _T_151 <= _T_154;	// matmul/matmul-hw.mlir:460:7
    else	// matmul/matmul-hw.mlir:457:5
      _T_151 <= _T_153;	// matmul/matmul-hw.mlir:458:7
  end // always @(posedge)
  localparam [3:0] _T_156 = 4'h0;	// matmul/matmul-hw.mlir:466:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:467:5
    if (rst)	// matmul/matmul-hw.mlir:467:5
      i1_155 <= _T_156;	// matmul/matmul-hw.mlir:470:7
    else	// matmul/matmul-hw.mlir:467:5
      i1_155 <= _T_123;	// matmul/matmul-hw.mlir:468:7
  end // always @(posedge)
  wire [3:0] _T_158 = _T_157;	// matmul/matmul-hw.mlir:473:12
  wire [3:0] _T_159 = {_T_158[2'h0+:3], {{_T_117}}};	// matmul/matmul-hw.mlir:474:18, :475:12, :476:12, :477:12
  wire [3:0] _T_160 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:478:18, :479:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:480:5
    if (rst)	// matmul/matmul-hw.mlir:480:5
      _T_157 <= _T_160;	// matmul/matmul-hw.mlir:483:7
    else	// matmul/matmul-hw.mlir:480:5
      _T_157 <= _T_159;	// matmul/matmul-hw.mlir:481:7
  end // always @(posedge)
  wire _T_161 = _T_157[2'h3];	// matmul/matmul-hw.mlir:473:12, :485:19, :486:12
  assign _T_87 = _T_161 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :487:12
  assign _T_86 = _T_161 ? i1_155 : 4'bx;	// matmul/matmul-hw.mlir:170:17, :465:11, :488:12
  assign _T_85 = _T_161 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :489:12
  assign _T_84 = _T_161 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:168:18, :490:12
  assign _T_83 = _T_161 ? 1'h1 : _T_76;	// matmul/matmul-hw.mlir:79:13, :493:12, :540:12
  assign _T_82 = _T_161 ? {_T_123, 4'h4} : _T_75;	// matmul/matmul-hw.mlir:491:14, :492:12, :494:12, :541:12
  assign _T_81 = _T_161 ? 1'h1 : _T_74;	// matmul/matmul-hw.mlir:79:13, :495:12, :542:12
  wire [4:0] _T_163 = _T_162;	// matmul/matmul-hw.mlir:497:12
  wire [4:0] _T_164 = {_T_163[3'h0+:4], {{_T_117}}};	// matmul/matmul-hw.mlir:498:14, :499:12, :500:12, :501:12
  wire [4:0] _T_165 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:502:18, :503:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:504:5
    if (rst)	// matmul/matmul-hw.mlir:504:5
      _T_162 <= _T_165;	// matmul/matmul-hw.mlir:507:7
    else	// matmul/matmul-hw.mlir:504:5
      _T_162 <= _T_164;	// matmul/matmul-hw.mlir:505:7
  end // always @(posedge)
  localparam [3:0] _T_167 = 4'h0;	// matmul/matmul-hw.mlir:513:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:514:5
    if (rst)	// matmul/matmul-hw.mlir:514:5
      i1_166 <= _T_167;	// matmul/matmul-hw.mlir:517:7
    else	// matmul/matmul-hw.mlir:514:5
      i1_166 <= _T_123;	// matmul/matmul-hw.mlir:515:7
  end // always @(posedge)
  wire [4:0] _T_169 = _T_168;	// matmul/matmul-hw.mlir:520:12
  wire [4:0] _T_170 = {_T_169[3'h0+:4], {{_T_117}}};	// matmul/matmul-hw.mlir:521:18, :522:12, :523:12, :524:12
  wire [4:0] _T_171 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:525:18, :526:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:527:5
    if (rst)	// matmul/matmul-hw.mlir:527:5
      _T_168 <= _T_171;	// matmul/matmul-hw.mlir:530:7
    else	// matmul/matmul-hw.mlir:527:5
      _T_168 <= _T_170;	// matmul/matmul-hw.mlir:528:7
  end // always @(posedge)
  wire _T_172 = _T_168[3'h4];	// matmul/matmul-hw.mlir:520:12, :532:19, :533:12
  assign _T_80 = _T_172 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :534:12
  assign _T_79 = _T_172 ? i1_166 : 4'bx;	// matmul/matmul-hw.mlir:163:17, :512:12, :535:12
  assign _T_78 = _T_172 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :536:12
  assign _T_77 = _T_172 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:161:18, :537:12
  assign _T_76 = _T_172 ? 1'h1 : _T_69;	// matmul/matmul-hw.mlir:79:13, :540:12, :587:12
  assign _T_75 = _T_172 ? {_T_123, 4'h5} : _T_68;	// matmul/matmul-hw.mlir:538:14, :539:12, :541:12, :588:12
  assign _T_74 = _T_172 ? 1'h1 : _T_67;	// matmul/matmul-hw.mlir:79:13, :542:12, :589:12
  wire [5:0] _T_174 = _T_173;	// matmul/matmul-hw.mlir:544:12
  wire [5:0] _T_175 = {_T_174[3'h0+:5], {{_T_117}}};	// matmul/matmul-hw.mlir:545:18, :546:12, :547:12, :548:12
  wire [5:0] _T_176 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:549:18, :550:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:551:5
    if (rst)	// matmul/matmul-hw.mlir:551:5
      _T_173 <= _T_176;	// matmul/matmul-hw.mlir:554:7
    else	// matmul/matmul-hw.mlir:551:5
      _T_173 <= _T_175;	// matmul/matmul-hw.mlir:552:7
  end // always @(posedge)
  localparam [3:0] _T_178 = 4'h0;	// matmul/matmul-hw.mlir:560:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:561:5
    if (rst)	// matmul/matmul-hw.mlir:561:5
      i1_177 <= _T_178;	// matmul/matmul-hw.mlir:564:7
    else	// matmul/matmul-hw.mlir:561:5
      i1_177 <= _T_123;	// matmul/matmul-hw.mlir:562:7
  end // always @(posedge)
  wire [5:0] _T_180 = _T_179;	// matmul/matmul-hw.mlir:567:12
  wire [5:0] _T_181 = {_T_180[3'h0+:5], {{_T_117}}};	// matmul/matmul-hw.mlir:568:18, :569:12, :570:12, :571:12
  wire [5:0] _T_182 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:572:18, :573:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:574:5
    if (rst)	// matmul/matmul-hw.mlir:574:5
      _T_179 <= _T_182;	// matmul/matmul-hw.mlir:577:7
    else	// matmul/matmul-hw.mlir:574:5
      _T_179 <= _T_181;	// matmul/matmul-hw.mlir:575:7
  end // always @(posedge)
  wire _T_183 = _T_179[3'h5];	// matmul/matmul-hw.mlir:567:12, :579:19, :580:12
  assign _T_73 = _T_183 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :581:12
  assign _T_72 = _T_183 ? i1_177 : 4'bx;	// matmul/matmul-hw.mlir:156:17, :559:12, :582:12
  assign _T_71 = _T_183 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :583:12
  assign _T_70 = _T_183 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:154:18, :584:12
  assign _T_69 = _T_183 ? 1'h1 : _T_62;	// matmul/matmul-hw.mlir:79:13, :587:12, :634:12
  assign _T_68 = _T_183 ? {_T_123, 4'h6} : _T_61;	// matmul/matmul-hw.mlir:585:14, :586:12, :588:12, :635:12
  assign _T_67 = _T_183 ? 1'h1 : _T_60;	// matmul/matmul-hw.mlir:79:13, :589:12, :636:12
  wire [6:0] _T_185 = _T_184;	// matmul/matmul-hw.mlir:591:12
  wire [6:0] _T_186 = {_T_185[3'h0+:6], {{_T_117}}};	// matmul/matmul-hw.mlir:592:18, :593:12, :594:12, :595:12
  wire [6:0] _T_187 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:596:18, :597:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:598:5
    if (rst)	// matmul/matmul-hw.mlir:598:5
      _T_184 <= _T_187;	// matmul/matmul-hw.mlir:601:7
    else	// matmul/matmul-hw.mlir:598:5
      _T_184 <= _T_186;	// matmul/matmul-hw.mlir:599:7
  end // always @(posedge)
  localparam [3:0] _T_189 = 4'h0;	// matmul/matmul-hw.mlir:607:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:608:5
    if (rst)	// matmul/matmul-hw.mlir:608:5
      i1_188 <= _T_189;	// matmul/matmul-hw.mlir:611:7
    else	// matmul/matmul-hw.mlir:608:5
      i1_188 <= _T_123;	// matmul/matmul-hw.mlir:609:7
  end // always @(posedge)
  wire [6:0] _T_191 = _T_190;	// matmul/matmul-hw.mlir:614:12
  wire [6:0] _T_192 = {_T_191[3'h0+:6], {{_T_117}}};	// matmul/matmul-hw.mlir:615:18, :616:12, :617:12, :618:12
  wire [6:0] _T_193 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:619:18, :620:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:621:5
    if (rst)	// matmul/matmul-hw.mlir:621:5
      _T_190 <= _T_193;	// matmul/matmul-hw.mlir:624:7
    else	// matmul/matmul-hw.mlir:621:5
      _T_190 <= _T_192;	// matmul/matmul-hw.mlir:622:7
  end // always @(posedge)
  wire _T_194 = _T_190[3'h6];	// matmul/matmul-hw.mlir:614:12, :626:19, :627:12
  assign _T_66 = _T_194 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :628:12
  assign _T_65 = _T_194 ? i1_188 : 4'bx;	// matmul/matmul-hw.mlir:149:17, :606:12, :629:12
  assign _T_64 = _T_194 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :630:12
  assign _T_63 = _T_194 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:147:18, :631:12
  assign _T_62 = _T_194 ? 1'h1 : _T_55;	// matmul/matmul-hw.mlir:79:13, :634:12, :681:12
  assign _T_61 = _T_194 ? {_T_123, 4'h7} : _T_54;	// matmul/matmul-hw.mlir:632:14, :633:12, :635:12, :682:12
  assign _T_60 = _T_194 ? 1'h1 : _T_53;	// matmul/matmul-hw.mlir:79:13, :636:12, :683:12
  wire [7:0] _T_196 = _T_195;	// matmul/matmul-hw.mlir:638:12
  wire [7:0] _T_197 = {_T_196[3'h0+:7], {{_T_117}}};	// matmul/matmul-hw.mlir:639:18, :640:12, :641:12, :642:12
  wire [7:0] _T_198 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:643:18, :644:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:645:5
    if (rst)	// matmul/matmul-hw.mlir:645:5
      _T_195 <= _T_198;	// matmul/matmul-hw.mlir:648:7
    else	// matmul/matmul-hw.mlir:645:5
      _T_195 <= _T_197;	// matmul/matmul-hw.mlir:646:7
  end // always @(posedge)
  localparam [3:0] _T_200 = 4'h0;	// matmul/matmul-hw.mlir:654:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:655:5
    if (rst)	// matmul/matmul-hw.mlir:655:5
      i1_199 <= _T_200;	// matmul/matmul-hw.mlir:658:7
    else	// matmul/matmul-hw.mlir:655:5
      i1_199 <= _T_123;	// matmul/matmul-hw.mlir:656:7
  end // always @(posedge)
  wire [7:0] _T_202 = _T_201;	// matmul/matmul-hw.mlir:661:12
  wire [7:0] _T_203 = {_T_202[3'h0+:7], {{_T_117}}};	// matmul/matmul-hw.mlir:662:18, :663:12, :664:12, :665:12
  wire [7:0] _T_204 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:666:18, :667:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:668:5
    if (rst)	// matmul/matmul-hw.mlir:668:5
      _T_201 <= _T_204;	// matmul/matmul-hw.mlir:671:7
    else	// matmul/matmul-hw.mlir:668:5
      _T_201 <= _T_203;	// matmul/matmul-hw.mlir:669:7
  end // always @(posedge)
  wire _T_205 = _T_201[3'h7];	// matmul/matmul-hw.mlir:661:12, :673:19, :674:12
  assign _T_59 = _T_205 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :675:12
  assign _T_58 = _T_205 ? i1_199 : 4'bx;	// matmul/matmul-hw.mlir:142:17, :653:12, :676:12
  assign _T_57 = _T_205 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :677:12
  assign _T_56 = _T_205 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:140:18, :678:12
  assign _T_55 = _T_205 ? 1'h1 : _T_48;	// matmul/matmul-hw.mlir:79:13, :681:12, :728:12
  assign _T_54 = _T_205 ? {_T_123, 4'h8} : _T_47;	// matmul/matmul-hw.mlir:679:15, :680:12, :682:12, :729:12
  assign _T_53 = _T_205 ? 1'h1 : _T_46;	// matmul/matmul-hw.mlir:79:13, :683:12, :730:12
  wire [8:0] _T_207 = _T_206;	// matmul/matmul-hw.mlir:685:12
  wire [8:0] _T_208 = {_T_207[4'h0+:8], {{_T_117}}};	// matmul/matmul-hw.mlir:686:18, :687:12, :688:12, :689:12
  wire [8:0] _T_209 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:690:18, :691:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:692:5
    if (rst)	// matmul/matmul-hw.mlir:692:5
      _T_206 <= _T_209;	// matmul/matmul-hw.mlir:695:7
    else	// matmul/matmul-hw.mlir:692:5
      _T_206 <= _T_208;	// matmul/matmul-hw.mlir:693:7
  end // always @(posedge)
  localparam [3:0] _T_211 = 4'h0;	// matmul/matmul-hw.mlir:701:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:702:5
    if (rst)	// matmul/matmul-hw.mlir:702:5
      i1_210 <= _T_211;	// matmul/matmul-hw.mlir:705:7
    else	// matmul/matmul-hw.mlir:702:5
      i1_210 <= _T_123;	// matmul/matmul-hw.mlir:703:7
  end // always @(posedge)
  wire [8:0] _T_213 = _T_212;	// matmul/matmul-hw.mlir:708:12
  wire [8:0] _T_214 = {_T_213[4'h0+:8], {{_T_117}}};	// matmul/matmul-hw.mlir:709:18, :710:12, :711:12, :712:12
  wire [8:0] _T_215 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:713:18, :714:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:715:5
    if (rst)	// matmul/matmul-hw.mlir:715:5
      _T_212 <= _T_215;	// matmul/matmul-hw.mlir:718:7
    else	// matmul/matmul-hw.mlir:715:5
      _T_212 <= _T_214;	// matmul/matmul-hw.mlir:716:7
  end // always @(posedge)
  wire _T_216 = _T_212[4'h8];	// matmul/matmul-hw.mlir:708:12, :720:19, :721:12
  assign _T_52 = _T_216 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :722:12
  assign _T_51 = _T_216 ? i1_210 : 4'bx;	// matmul/matmul-hw.mlir:135:17, :700:12, :723:12
  assign _T_50 = _T_216 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :724:12
  assign _T_49 = _T_216 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:133:18, :725:12
  assign _T_48 = _T_216 ? 1'h1 : _T_41;	// matmul/matmul-hw.mlir:79:13, :728:12, :775:12
  assign _T_47 = _T_216 ? {_T_123, 4'h9} : _T_40;	// matmul/matmul-hw.mlir:726:15, :727:12, :729:12, :776:12
  assign _T_46 = _T_216 ? 1'h1 : _T_39;	// matmul/matmul-hw.mlir:79:13, :730:12, :777:12
  wire [9:0] _T_218 = _T_217;	// matmul/matmul-hw.mlir:732:12
  wire [9:0] _T_219 = {_T_218[4'h0+:9], {{_T_117}}};	// matmul/matmul-hw.mlir:733:18, :734:12, :735:12, :736:12
  wire [9:0] _T_220 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:737:18, :738:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:739:5
    if (rst)	// matmul/matmul-hw.mlir:739:5
      _T_217 <= _T_220;	// matmul/matmul-hw.mlir:742:7
    else	// matmul/matmul-hw.mlir:739:5
      _T_217 <= _T_219;	// matmul/matmul-hw.mlir:740:7
  end // always @(posedge)
  localparam [3:0] _T_222 = 4'h0;	// matmul/matmul-hw.mlir:748:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:749:5
    if (rst)	// matmul/matmul-hw.mlir:749:5
      i1_221 <= _T_222;	// matmul/matmul-hw.mlir:752:7
    else	// matmul/matmul-hw.mlir:749:5
      i1_221 <= _T_123;	// matmul/matmul-hw.mlir:750:7
  end // always @(posedge)
  wire [9:0] _T_224 = _T_223;	// matmul/matmul-hw.mlir:755:12
  wire [9:0] _T_225 = {_T_224[4'h0+:9], {{_T_117}}};	// matmul/matmul-hw.mlir:756:18, :757:12, :758:12, :759:12
  wire [9:0] _T_226 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:760:18, :761:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:762:5
    if (rst)	// matmul/matmul-hw.mlir:762:5
      _T_223 <= _T_226;	// matmul/matmul-hw.mlir:765:7
    else	// matmul/matmul-hw.mlir:762:5
      _T_223 <= _T_225;	// matmul/matmul-hw.mlir:763:7
  end // always @(posedge)
  wire _T_227 = _T_223[4'h9];	// matmul/matmul-hw.mlir:755:12, :767:19, :768:12
  assign _T_45 = _T_227 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :769:12
  assign _T_44 = _T_227 ? i1_221 : 4'bx;	// matmul/matmul-hw.mlir:128:17, :747:12, :770:12
  assign _T_43 = _T_227 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :771:12
  assign _T_42 = _T_227 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:126:18, :772:12
  assign _T_41 = _T_227 ? 1'h1 : _T_34;	// matmul/matmul-hw.mlir:79:13, :775:12, :822:12
  assign _T_40 = _T_227 ? {_T_123, 4'hA} : _T_33;	// matmul/matmul-hw.mlir:773:15, :774:12, :776:12, :823:12
  assign _T_39 = _T_227 ? 1'h1 : _T_32;	// matmul/matmul-hw.mlir:79:13, :777:12, :824:12
  wire [10:0] _T_229 = _T_228;	// matmul/matmul-hw.mlir:779:12
  wire [10:0] _T_230 = {_T_229[4'h0+:10], {{_T_117}}};	// matmul/matmul-hw.mlir:780:18, :781:12, :782:12, :783:12
  wire [10:0] _T_231 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:784:18, :785:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:786:5
    if (rst)	// matmul/matmul-hw.mlir:786:5
      _T_228 <= _T_231;	// matmul/matmul-hw.mlir:789:7
    else	// matmul/matmul-hw.mlir:786:5
      _T_228 <= _T_230;	// matmul/matmul-hw.mlir:787:7
  end // always @(posedge)
  localparam [3:0] _T_233 = 4'h0;	// matmul/matmul-hw.mlir:795:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:796:5
    if (rst)	// matmul/matmul-hw.mlir:796:5
      i1_232 <= _T_233;	// matmul/matmul-hw.mlir:799:7
    else	// matmul/matmul-hw.mlir:796:5
      i1_232 <= _T_123;	// matmul/matmul-hw.mlir:797:7
  end // always @(posedge)
  wire [10:0] _T_235 = _T_234;	// matmul/matmul-hw.mlir:802:12
  wire [10:0] _T_236 = {_T_235[4'h0+:10], {{_T_117}}};	// matmul/matmul-hw.mlir:803:18, :804:12, :805:12, :806:12
  wire [10:0] _T_237 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:807:18, :808:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:809:5
    if (rst)	// matmul/matmul-hw.mlir:809:5
      _T_234 <= _T_237;	// matmul/matmul-hw.mlir:812:7
    else	// matmul/matmul-hw.mlir:809:5
      _T_234 <= _T_236;	// matmul/matmul-hw.mlir:810:7
  end // always @(posedge)
  wire _T_238 = _T_234[4'hA];	// matmul/matmul-hw.mlir:802:12, :814:19, :815:12
  assign _T_38 = _T_238 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :816:12
  assign _T_37 = _T_238 ? i1_232 : 4'bx;	// matmul/matmul-hw.mlir:121:17, :794:12, :817:12
  assign _T_36 = _T_238 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :818:12
  assign _T_35 = _T_238 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:119:17, :819:12
  assign _T_34 = _T_238 ? 1'h1 : _T_27;	// matmul/matmul-hw.mlir:79:13, :822:12, :869:12
  assign _T_33 = _T_238 ? {_T_123, 4'hB} : _T_26;	// matmul/matmul-hw.mlir:820:15, :821:12, :823:12, :870:12
  assign _T_32 = _T_238 ? 1'h1 : _T_25;	// matmul/matmul-hw.mlir:79:13, :824:12, :871:12
  wire [11:0] _T_240 = _T_239;	// matmul/matmul-hw.mlir:826:12
  wire [11:0] _T_241 = {_T_240[4'h0+:11], {{_T_117}}};	// matmul/matmul-hw.mlir:827:18, :828:12, :829:12, :830:12
  wire [11:0] _T_242 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:831:18, :832:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:833:5
    if (rst)	// matmul/matmul-hw.mlir:833:5
      _T_239 <= _T_242;	// matmul/matmul-hw.mlir:836:7
    else	// matmul/matmul-hw.mlir:833:5
      _T_239 <= _T_241;	// matmul/matmul-hw.mlir:834:7
  end // always @(posedge)
  localparam [3:0] _T_244 = 4'h0;	// matmul/matmul-hw.mlir:842:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:843:5
    if (rst)	// matmul/matmul-hw.mlir:843:5
      i1_243 <= _T_244;	// matmul/matmul-hw.mlir:846:7
    else	// matmul/matmul-hw.mlir:843:5
      i1_243 <= _T_123;	// matmul/matmul-hw.mlir:844:7
  end // always @(posedge)
  wire [11:0] _T_246 = _T_245;	// matmul/matmul-hw.mlir:849:12
  wire [11:0] _T_247 = {_T_246[4'h0+:11], {{_T_117}}};	// matmul/matmul-hw.mlir:850:18, :851:12, :852:12, :853:12
  wire [11:0] _T_248 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:854:18, :855:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:856:5
    if (rst)	// matmul/matmul-hw.mlir:856:5
      _T_245 <= _T_248;	// matmul/matmul-hw.mlir:859:7
    else	// matmul/matmul-hw.mlir:856:5
      _T_245 <= _T_247;	// matmul/matmul-hw.mlir:857:7
  end // always @(posedge)
  wire _T_249 = _T_245[4'hB];	// matmul/matmul-hw.mlir:849:12, :861:19, :862:12
  assign _T_31 = _T_249 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :863:12
  assign _T_30 = _T_249 ? i1_243 : 4'bx;	// matmul/matmul-hw.mlir:114:16, :841:12, :864:12
  assign _T_29 = _T_249 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :865:12
  assign _T_28 = _T_249 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:112:17, :866:12
  assign _T_27 = _T_249 ? 1'h1 : _T_20;	// matmul/matmul-hw.mlir:79:13, :869:12, :916:12
  assign _T_26 = _T_249 ? {_T_123, 4'hC} : _T_19;	// matmul/matmul-hw.mlir:867:15, :868:12, :870:12, :917:12
  assign _T_25 = _T_249 ? 1'h1 : _T_18;	// matmul/matmul-hw.mlir:79:13, :871:12, :918:12
  wire [12:0] _T_251 = _T_250;	// matmul/matmul-hw.mlir:873:12
  wire [12:0] _T_252 = {_T_251[4'h0+:12], {{_T_117}}};	// matmul/matmul-hw.mlir:874:18, :875:12, :876:12, :877:12
  wire [12:0] _T_253 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:878:18, :879:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:880:5
    if (rst)	// matmul/matmul-hw.mlir:880:5
      _T_250 <= _T_253;	// matmul/matmul-hw.mlir:883:7
    else	// matmul/matmul-hw.mlir:880:5
      _T_250 <= _T_252;	// matmul/matmul-hw.mlir:881:7
  end // always @(posedge)
  localparam [3:0] _T_255 = 4'h0;	// matmul/matmul-hw.mlir:889:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:890:5
    if (rst)	// matmul/matmul-hw.mlir:890:5
      i1_254 <= _T_255;	// matmul/matmul-hw.mlir:893:7
    else	// matmul/matmul-hw.mlir:890:5
      i1_254 <= _T_123;	// matmul/matmul-hw.mlir:891:7
  end // always @(posedge)
  wire [12:0] _T_257 = _T_256;	// matmul/matmul-hw.mlir:896:12
  wire [12:0] _T_258 = {_T_257[4'h0+:12], {{_T_117}}};	// matmul/matmul-hw.mlir:897:18, :898:12, :899:12, :900:12
  wire [12:0] _T_259 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:901:18, :902:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:903:5
    if (rst)	// matmul/matmul-hw.mlir:903:5
      _T_256 <= _T_259;	// matmul/matmul-hw.mlir:906:7
    else	// matmul/matmul-hw.mlir:903:5
      _T_256 <= _T_258;	// matmul/matmul-hw.mlir:904:7
  end // always @(posedge)
  wire _T_260 = _T_256[4'hC];	// matmul/matmul-hw.mlir:896:12, :908:19, :909:12
  assign _T_24 = _T_260 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :910:12
  assign _T_23 = _T_260 ? i1_254 : 4'bx;	// matmul/matmul-hw.mlir:107:16, :888:12, :911:12
  assign _T_22 = _T_260 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :912:12
  assign _T_21 = _T_260 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:105:17, :913:12
  assign _T_20 = _T_260 ? 1'h1 : _T_13;	// matmul/matmul-hw.mlir:79:13, :916:12, :963:12
  assign _T_19 = _T_260 ? {_T_123, 4'hD} : _T_12;	// matmul/matmul-hw.mlir:914:15, :915:12, :917:12, :964:12
  assign _T_18 = _T_260 ? 1'h1 : _T_11;	// matmul/matmul-hw.mlir:79:13, :918:12, :965:12
  wire [13:0] _T_262 = _T_261;	// matmul/matmul-hw.mlir:920:12
  wire [13:0] _T_263 = {_T_262[4'h0+:13], {{_T_117}}};	// matmul/matmul-hw.mlir:921:18, :922:12, :923:12, :924:12
  wire [13:0] _T_264 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:925:18, :926:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:927:5
    if (rst)	// matmul/matmul-hw.mlir:927:5
      _T_261 <= _T_264;	// matmul/matmul-hw.mlir:930:7
    else	// matmul/matmul-hw.mlir:927:5
      _T_261 <= _T_263;	// matmul/matmul-hw.mlir:928:7
  end // always @(posedge)
  localparam [3:0] _T_266 = 4'h0;	// matmul/matmul-hw.mlir:936:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:937:5
    if (rst)	// matmul/matmul-hw.mlir:937:5
      i1_265 <= _T_266;	// matmul/matmul-hw.mlir:940:7
    else	// matmul/matmul-hw.mlir:937:5
      i1_265 <= _T_123;	// matmul/matmul-hw.mlir:938:7
  end // always @(posedge)
  wire [13:0] _T_268 = _T_267;	// matmul/matmul-hw.mlir:943:12
  wire [13:0] _T_269 = {_T_268[4'h0+:13], {{_T_117}}};	// matmul/matmul-hw.mlir:944:18, :945:12, :946:12, :947:12
  wire [13:0] _T_270 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:948:18, :949:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:950:5
    if (rst)	// matmul/matmul-hw.mlir:950:5
      _T_267 <= _T_270;	// matmul/matmul-hw.mlir:953:7
    else	// matmul/matmul-hw.mlir:950:5
      _T_267 <= _T_269;	// matmul/matmul-hw.mlir:951:7
  end // always @(posedge)
  wire _T_271 = _T_267[4'hD];	// matmul/matmul-hw.mlir:943:12, :955:19, :956:12
  assign _T_17 = _T_271 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :957:12
  assign _T_16 = _T_271 ? i1_265 : 4'bx;	// matmul/matmul-hw.mlir:100:16, :935:12, :958:12
  assign _T_15 = _T_271 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :959:12
  assign _T_14 = _T_271 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:98:17, :960:12
  assign _T_13 = _T_271 ? 1'h1 : _T_6;	// matmul/matmul-hw.mlir:79:13, :963:12, :1010:12
  assign _T_12 = _T_271 ? {_T_123, 4'hE} : _T_5;	// matmul/matmul-hw.mlir:961:15, :962:12, :964:12, :1011:12
  assign _T_11 = _T_271 ? 1'h1 : _T_4;	// matmul/matmul-hw.mlir:79:13, :965:12, :1012:12
  wire [14:0] _T_273 = _T_272;	// matmul/matmul-hw.mlir:967:12
  wire [14:0] _T_274 = {_T_273[4'h0+:14], {{_T_117}}};	// matmul/matmul-hw.mlir:968:18, :969:12, :970:12, :971:12
  wire [14:0] _T_275 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:972:18, :973:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:974:5
    if (rst)	// matmul/matmul-hw.mlir:974:5
      _T_272 <= _T_275;	// matmul/matmul-hw.mlir:977:7
    else	// matmul/matmul-hw.mlir:974:5
      _T_272 <= _T_274;	// matmul/matmul-hw.mlir:975:7
  end // always @(posedge)
  localparam [3:0] _T_277 = 4'h0;	// matmul/matmul-hw.mlir:983:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:984:5
    if (rst)	// matmul/matmul-hw.mlir:984:5
      i1_276 <= _T_277;	// matmul/matmul-hw.mlir:987:7
    else	// matmul/matmul-hw.mlir:984:5
      i1_276 <= _T_123;	// matmul/matmul-hw.mlir:985:7
  end // always @(posedge)
  wire [14:0] _T_279 = _T_278;	// matmul/matmul-hw.mlir:990:12
  wire [14:0] _T_280 = {_T_279[4'h0+:14], {{_T_117}}};	// matmul/matmul-hw.mlir:991:18, :992:12, :993:12, :994:12
  wire [14:0] _T_281 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:995:18, :996:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:997:5
    if (rst)	// matmul/matmul-hw.mlir:997:5
      _T_278 <= _T_281;	// matmul/matmul-hw.mlir:1000:7
    else	// matmul/matmul-hw.mlir:997:5
      _T_278 <= _T_280;	// matmul/matmul-hw.mlir:998:7
  end // always @(posedge)
  wire _T_282 = _T_278[4'hE];	// matmul/matmul-hw.mlir:990:12, :1002:19, :1003:12
  assign _T_10 = _T_282 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :1004:12
  assign _T_9 = _T_282 ? i1_276 : 4'bx;	// matmul/matmul-hw.mlir:93:16, :982:12, :1005:12
  assign _T_8 = _T_282 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :1006:12
  assign _T_7 = _T_282 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:91:17, :1007:12
  assign _T_6 = _T_282 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :1010:12
  assign _T_5 = _T_282 ? {_T_123, 4'hF} : 8'bx;	// matmul/matmul-hw.mlir:89:16, :1008:15, :1009:12, :1011:12
  assign _T_4 = _T_282 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :1012:12
  wire [15:0] _T_284 = _T_283;	// matmul/matmul-hw.mlir:1014:12
  wire [15:0] _T_285 = {_T_284[4'h0+:15], {{_T_117}}};	// matmul/matmul-hw.mlir:1015:18, :1016:12, :1017:12, :1018:12
  wire [15:0] _T_286 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:1019:18, :1020:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:1021:5
    if (rst)	// matmul/matmul-hw.mlir:1021:5
      _T_283 <= _T_286;	// matmul/matmul-hw.mlir:1024:7
    else	// matmul/matmul-hw.mlir:1021:5
      _T_283 <= _T_285;	// matmul/matmul-hw.mlir:1022:7
  end // always @(posedge)
  localparam [3:0] _T_288 = 4'h0;	// matmul/matmul-hw.mlir:1030:18
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:1031:5
    if (rst)	// matmul/matmul-hw.mlir:1031:5
      i1_287 <= _T_288;	// matmul/matmul-hw.mlir:1034:7
    else	// matmul/matmul-hw.mlir:1031:5
      i1_287 <= _T_123;	// matmul/matmul-hw.mlir:1032:7
  end // always @(posedge)
  wire [15:0] _T_290 = _T_289;	// matmul/matmul-hw.mlir:1037:12
  wire [15:0] _T_291 = {_T_290[4'h0+:15], {{_T_117}}};	// matmul/matmul-hw.mlir:1038:18, :1039:12, :1040:12, :1041:12
  wire [15:0] _T_292 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:1042:18, :1043:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:1044:5
    if (rst)	// matmul/matmul-hw.mlir:1044:5
      _T_289 <= _T_292;	// matmul/matmul-hw.mlir:1047:7
    else	// matmul/matmul-hw.mlir:1044:5
      _T_289 <= _T_291;	// matmul/matmul-hw.mlir:1045:7
  end // always @(posedge)
  wire _T_293 = _T_289[4'hF];	// matmul/matmul-hw.mlir:1037:12, :1049:19, :1050:12
  assign _T_3 = _T_293 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :1051:12
  assign _T_2 = _T_293 ? i1_287 : 4'bx;	// matmul/matmul-hw.mlir:86:16, :1029:12, :1052:12
  assign _T_1 = _T_293 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:79:13, :83:14, :1053:12
  assign _T_0 = _T_293 ? Ai_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:84:17, :1054:12
  wire [16:0] _T_295 = _T_294;	// matmul/matmul-hw.mlir:1056:12
  wire [16:0] _T_296 = {_T_295[5'h0+:16], {{_T_117}}};	// matmul/matmul-hw.mlir:1057:14, :1058:12, :1059:12, :1060:12
  wire [16:0] _T_297 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:1061:18, :1062:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:1063:5
    if (rst)	// matmul/matmul-hw.mlir:1063:5
      _T_294 <= _T_297;	// matmul/matmul-hw.mlir:1066:7
    else	// matmul/matmul-hw.mlir:1063:5
      _T_294 <= _T_296;	// matmul/matmul-hw.mlir:1064:7
  end // always @(posedge)
  assign _T = _T_294[5'h10];	// matmul/matmul-hw.mlir:1056:12, :1068:16, :1069:12
  assign Ai_p0_addr_en = _T_117 ? 1'h1 : _T_104;	// matmul/matmul-hw.mlir:79:13, :319:11, :352:11, :1070:5
  assign Ai_p0_addr_data = _T_117 ? {_T_123, 4'h0} : _T_103;	// matmul/matmul-hw.mlir:317:14, :318:11, :320:11, :353:11, :1070:5
  assign Ai_p0_rd_en = _T_117 ? 1'h1 : _T_102;	// matmul/matmul-hw.mlir:79:13, :321:11, :354:11, :1070:5
  assign Aw_p0_addr_en = {{_T_3}, {_T_10}, {_T_17}, {_T_24}, {_T_31}, {_T_38}, {_T_45}, {_T_52}, {_T_59}, {_T_66}, {_T_73}, {_T_80}, {_T_87}, {_T_94}, {_T_101}, {_T_108}};	// matmul/matmul-hw.mlir:27:10, :346:11, :393:11, :440:11, :487:12, :534:12, :581:12, :628:12, :675:12, :722:12, :769:12, :816:12, :863:12, :910:12, :957:12, :1004:12, :1051:12, :1070:5
  assign Aw_p0_addr_data = {{_T_2}, {_T_9}, {_T_16}, {_T_23}, {_T_30}, {_T_37}, {_T_44}, {_T_51}, {_T_58}, {_T_65}, {_T_72}, {_T_79}, {_T_86}, {_T_93}, {_T_100}, {_T_107}};	// matmul/matmul-hw.mlir:44:10, :347:11, :394:11, :441:11, :488:12, :535:12, :582:12, :629:12, :676:12, :723:12, :770:12, :817:12, :864:12, :911:12, :958:12, :1005:12, :1052:12, :1070:5
  assign Aw_p0_wr_en = {{_T_1}, {_T_8}, {_T_15}, {_T_22}, {_T_29}, {_T_36}, {_T_43}, {_T_50}, {_T_57}, {_T_64}, {_T_71}, {_T_78}, {_T_85}, {_T_92}, {_T_99}, {_T_106}};	// matmul/matmul-hw.mlir:61:10, :348:11, :395:11, :442:11, :489:12, :536:12, :583:12, :630:12, :677:12, :724:12, :771:12, :818:12, :865:12, :912:12, :959:12, :1006:12, :1053:12, :1070:5
  assign Aw_p0_wr_data = {{_T_0}, {_T_7}, {_T_14}, {_T_21}, {_T_28}, {_T_35}, {_T_42}, {_T_49}, {_T_56}, {_T_63}, {_T_70}, {_T_77}, {_T_84}, {_T_91}, {_T_98}, {_T_105}};	// matmul/matmul-hw.mlir:78:10, :349:11, :396:11, :443:11, :490:12, :537:12, :584:12, :631:12, :678:12, :725:12, :772:12, :819:12, :866:12, :913:12, :960:12, :1007:12, :1054:12, :1070:5
endmodule

