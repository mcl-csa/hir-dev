module matmul_hir(	// matmul/matmul-hw.mlir:24523:3
  input  [31:0] Ai_p0_rd_data, Bi_p0_rd_data,
  input         t, clk, rst,
  output        Ai_p0_addr_en,
  output [7:0]  Ai_p0_addr_data,
  output        Ai_p0_rd_en, Bi_p0_addr_en,
  output [7:0]  Bi_p0_addr_data,
  output        Bi_p0_rd_en, Co_p0_addr_en,
  output [7:0]  Co_p0_addr_data,
  output        Co_p0_wr_en,
  output [31:0] Co_p0_wr_data);

  wire               _T;	// matmul/matmul-hw.mlir:31422:13
  wire [3:0]         _T_0;	// matmul/matmul-hw.mlir:31419:13
  wire               _T_1;	// matmul/matmul-hw.mlir:31416:13
  wire               _T_2;	// matmul/matmul-hw.mlir:31413:13
  wire [3:0]         _T_3;	// matmul/matmul-hw.mlir:31410:13
  wire               _T_4;	// matmul/matmul-hw.mlir:31407:13
  wire               _T_5;	// matmul/matmul-hw.mlir:31404:13
  wire [3:0]         _T_6;	// matmul/matmul-hw.mlir:31401:13
  wire               _T_7;	// matmul/matmul-hw.mlir:31398:13
  wire               _T_8;	// matmul/matmul-hw.mlir:31395:13
  wire [3:0]         _T_9;	// matmul/matmul-hw.mlir:31392:13
  wire               _T_10;	// matmul/matmul-hw.mlir:31389:13
  wire               _T_11;	// matmul/matmul-hw.mlir:31386:13
  wire [3:0]         _T_12;	// matmul/matmul-hw.mlir:31383:13
  wire               _T_13;	// matmul/matmul-hw.mlir:31380:13
  wire               _T_14;	// matmul/matmul-hw.mlir:31377:13
  wire [3:0]         _T_15;	// matmul/matmul-hw.mlir:31374:13
  wire               _T_16;	// matmul/matmul-hw.mlir:31371:13
  wire               _T_17;	// matmul/matmul-hw.mlir:31368:13
  wire [3:0]         _T_18;	// matmul/matmul-hw.mlir:31365:13
  wire               _T_19;	// matmul/matmul-hw.mlir:31362:13
  wire               _T_20;	// matmul/matmul-hw.mlir:31359:13
  wire [3:0]         _T_21;	// matmul/matmul-hw.mlir:31356:13
  wire               _T_22;	// matmul/matmul-hw.mlir:31353:13
  wire               _T_23;	// matmul/matmul-hw.mlir:31350:13
  wire [3:0]         _T_24;	// matmul/matmul-hw.mlir:31347:13
  wire               _T_25;	// matmul/matmul-hw.mlir:31344:13
  wire               _T_26;	// matmul/matmul-hw.mlir:31341:13
  wire [3:0]         _T_27;	// matmul/matmul-hw.mlir:31338:13
  wire               _T_28;	// matmul/matmul-hw.mlir:31335:13
  wire               _T_29;	// matmul/matmul-hw.mlir:31332:13
  wire [3:0]         _T_30;	// matmul/matmul-hw.mlir:31329:13
  wire               _T_31;	// matmul/matmul-hw.mlir:31326:13
  wire               _T_32;	// matmul/matmul-hw.mlir:31323:13
  wire [3:0]         _T_33;	// matmul/matmul-hw.mlir:31320:13
  wire               _T_34;	// matmul/matmul-hw.mlir:31317:13
  wire               _T_35;	// matmul/matmul-hw.mlir:31314:13
  wire [3:0]         _T_36;	// matmul/matmul-hw.mlir:31311:13
  wire               _T_37;	// matmul/matmul-hw.mlir:31308:13
  wire               _T_38;	// matmul/matmul-hw.mlir:31305:13
  wire [3:0]         _T_39;	// matmul/matmul-hw.mlir:31302:13
  wire               _T_40;	// matmul/matmul-hw.mlir:31299:13
  wire               _T_41;	// matmul/matmul-hw.mlir:31296:13
  wire [3:0]         _T_42;	// matmul/matmul-hw.mlir:31293:13
  wire               _T_43;	// matmul/matmul-hw.mlir:31290:13
  wire               _T_44;	// matmul/matmul-hw.mlir:31287:13
  wire [3:0]         _T_45;	// matmul/matmul-hw.mlir:31284:13
  wire               _T_46;	// matmul/matmul-hw.mlir:31281:13
  wire [31:0]        _T_47;	// matmul/matmul-hw.mlir:31194:13
  wire               _T_48;	// matmul/matmul-hw.mlir:31191:13
  wire [3:0]         _T_49;	// matmul/matmul-hw.mlir:31188:13
  wire               _T_50;	// matmul/matmul-hw.mlir:31185:13
  wire [31:0]        _T_51;	// matmul/matmul-hw.mlir:31182:13
  wire               _T_52;	// matmul/matmul-hw.mlir:31179:13
  wire [3:0]         _T_53;	// matmul/matmul-hw.mlir:31176:13
  wire               _T_54;	// matmul/matmul-hw.mlir:31173:13
  wire [31:0]        _T_55;	// matmul/matmul-hw.mlir:31170:13
  wire               _T_56;	// matmul/matmul-hw.mlir:31167:13
  wire [3:0]         _T_57;	// matmul/matmul-hw.mlir:31164:13
  wire               _T_58;	// matmul/matmul-hw.mlir:31161:13
  wire [31:0]        _T_59;	// matmul/matmul-hw.mlir:31158:13
  wire               _T_60;	// matmul/matmul-hw.mlir:31155:13
  wire [3:0]         _T_61;	// matmul/matmul-hw.mlir:31152:13
  wire               _T_62;	// matmul/matmul-hw.mlir:31149:13
  wire [31:0]        _T_63;	// matmul/matmul-hw.mlir:31146:13
  wire               _T_64;	// matmul/matmul-hw.mlir:31143:13
  wire [3:0]         _T_65;	// matmul/matmul-hw.mlir:31140:13
  wire               _T_66;	// matmul/matmul-hw.mlir:31137:13
  wire [31:0]        _T_67;	// matmul/matmul-hw.mlir:31134:13
  wire               _T_68;	// matmul/matmul-hw.mlir:31131:13
  wire [3:0]         _T_69;	// matmul/matmul-hw.mlir:31128:13
  wire               _T_70;	// matmul/matmul-hw.mlir:31125:13
  wire [31:0]        _T_71;	// matmul/matmul-hw.mlir:31122:13
  wire               _T_72;	// matmul/matmul-hw.mlir:31119:13
  wire [3:0]         _T_73;	// matmul/matmul-hw.mlir:31116:13
  wire               _T_74;	// matmul/matmul-hw.mlir:31113:13
  wire [31:0]        _T_75;	// matmul/matmul-hw.mlir:31110:13
  wire               _T_76;	// matmul/matmul-hw.mlir:31107:13
  wire [3:0]         _T_77;	// matmul/matmul-hw.mlir:31104:13
  wire               _T_78;	// matmul/matmul-hw.mlir:31101:13
  wire [31:0]        _T_79;	// matmul/matmul-hw.mlir:31098:13
  wire               _T_80;	// matmul/matmul-hw.mlir:31095:13
  wire [3:0]         _T_81;	// matmul/matmul-hw.mlir:31092:13
  wire               _T_82;	// matmul/matmul-hw.mlir:31089:13
  wire [31:0]        _T_83;	// matmul/matmul-hw.mlir:31086:13
  wire               _T_84;	// matmul/matmul-hw.mlir:31083:13
  wire [3:0]         _T_85;	// matmul/matmul-hw.mlir:31080:13
  wire               _T_86;	// matmul/matmul-hw.mlir:31077:13
  wire [31:0]        _T_87;	// matmul/matmul-hw.mlir:31074:13
  wire               _T_88;	// matmul/matmul-hw.mlir:31071:13
  wire [3:0]         _T_89;	// matmul/matmul-hw.mlir:31068:13
  wire               _T_90;	// matmul/matmul-hw.mlir:31065:13
  wire [31:0]        _T_91;	// matmul/matmul-hw.mlir:31062:13
  wire               _T_92;	// matmul/matmul-hw.mlir:31059:13
  wire [3:0]         _T_93;	// matmul/matmul-hw.mlir:31056:13
  wire               _T_94;	// matmul/matmul-hw.mlir:31053:13
  wire [31:0]        _T_95;	// matmul/matmul-hw.mlir:31050:13
  wire               _T_96;	// matmul/matmul-hw.mlir:31047:13
  wire [3:0]         _T_97;	// matmul/matmul-hw.mlir:31044:13
  wire               _T_98;	// matmul/matmul-hw.mlir:31041:13
  wire [31:0]        _T_99;	// matmul/matmul-hw.mlir:31038:13
  wire               _T_100;	// matmul/matmul-hw.mlir:31035:13
  wire [3:0]         _T_101;	// matmul/matmul-hw.mlir:31032:13
  wire               _T_102;	// matmul/matmul-hw.mlir:31029:13
  wire [31:0]        _T_103;	// matmul/matmul-hw.mlir:31026:13
  wire               _T_104;	// matmul/matmul-hw.mlir:31023:13
  wire [3:0]         _T_105;	// matmul/matmul-hw.mlir:31020:13
  wire               _T_106;	// matmul/matmul-hw.mlir:31017:13
  wire [31:0]        _T_107;	// matmul/matmul-hw.mlir:31014:13
  wire               _T_108;	// matmul/matmul-hw.mlir:31011:13
  wire [3:0]         _T_109;	// matmul/matmul-hw.mlir:31008:13
  wire               _T_110;	// matmul/matmul-hw.mlir:31005:13
  wire               _T_111;	// matmul/matmul-hw.mlir:30934:13
  wire               _T_112;	// matmul/matmul-hw.mlir:30931:13
  wire               _T_113;	// matmul/matmul-hw.mlir:30928:13
  wire               _T_114;	// matmul/matmul-hw.mlir:30925:13
  wire               _T_115;	// matmul/matmul-hw.mlir:30922:13
  wire               _T_116;	// matmul/matmul-hw.mlir:30919:13
  wire               _T_117;	// matmul/matmul-hw.mlir:30916:13
  wire               _T_118;	// matmul/matmul-hw.mlir:30913:13
  wire               _T_119;	// matmul/matmul-hw.mlir:30910:13
  wire               _T_120;	// matmul/matmul-hw.mlir:30907:13
  wire               _T_121;	// matmul/matmul-hw.mlir:30904:13
  wire               _T_122;	// matmul/matmul-hw.mlir:30901:13
  wire               _T_123;	// matmul/matmul-hw.mlir:30898:13
  wire               _T_124;	// matmul/matmul-hw.mlir:30895:13
  wire               _T_125;	// matmul/matmul-hw.mlir:30892:13
  wire               _T_126;	// matmul/matmul-hw.mlir:30889:13
  wire               _T_127;	// matmul/matmul-hw.mlir:30886:13
  wire               _T_128;	// matmul/matmul-hw.mlir:30883:13
  wire               _T_129;	// matmul/matmul-hw.mlir:30880:13
  wire               _T_130;	// matmul/matmul-hw.mlir:30877:13
  wire               _T_131;	// matmul/matmul-hw.mlir:30874:13
  wire               _T_132;	// matmul/matmul-hw.mlir:30871:13
  wire               _T_133;	// matmul/matmul-hw.mlir:30868:13
  wire               _T_134;	// matmul/matmul-hw.mlir:30865:13
  wire               _T_135;	// matmul/matmul-hw.mlir:30862:13
  wire               _T_136;	// matmul/matmul-hw.mlir:30859:13
  wire               _T_137;	// matmul/matmul-hw.mlir:30856:13
  wire               _T_138;	// matmul/matmul-hw.mlir:30853:13
  wire               _T_139;	// matmul/matmul-hw.mlir:30850:13
  wire               _T_140;	// matmul/matmul-hw.mlir:30847:13
  wire               _T_141;	// matmul/matmul-hw.mlir:30844:13
  wire               _T_142;	// matmul/matmul-hw.mlir:30841:13
  wire               _T_143;	// matmul/matmul-hw.mlir:30838:13
  wire               _T_144;	// matmul/matmul-hw.mlir:30835:13
  wire               _T_145;	// matmul/matmul-hw.mlir:30832:13
  wire               _T_146;	// matmul/matmul-hw.mlir:30829:13
  wire               _T_147;	// matmul/matmul-hw.mlir:30826:13
  wire               _T_148;	// matmul/matmul-hw.mlir:30823:13
  wire               _T_149;	// matmul/matmul-hw.mlir:30820:13
  wire               _T_150;	// matmul/matmul-hw.mlir:30817:13
  wire               _T_151;	// matmul/matmul-hw.mlir:30814:13
  wire               _T_152;	// matmul/matmul-hw.mlir:30811:13
  wire               _T_153;	// matmul/matmul-hw.mlir:30808:13
  wire               _T_154;	// matmul/matmul-hw.mlir:30805:13
  wire               _T_155;	// matmul/matmul-hw.mlir:30802:13
  wire               _T_156;	// matmul/matmul-hw.mlir:30799:13
  wire               _T_157;	// matmul/matmul-hw.mlir:30796:13
  wire               _T_158;	// matmul/matmul-hw.mlir:30793:13
  wire               _T_159;	// matmul/matmul-hw.mlir:30790:13
  wire               _T_160;	// matmul/matmul-hw.mlir:30787:13
  wire               _T_161;	// matmul/matmul-hw.mlir:30784:13
  wire               _T_162;	// matmul/matmul-hw.mlir:30781:13
  wire               _T_163;	// matmul/matmul-hw.mlir:30778:13
  wire               _T_164;	// matmul/matmul-hw.mlir:30775:13
  wire               _T_165;	// matmul/matmul-hw.mlir:30772:13
  wire               _T_166;	// matmul/matmul-hw.mlir:30769:13
  wire               _T_167;	// matmul/matmul-hw.mlir:30766:13
  wire               _T_168;	// matmul/matmul-hw.mlir:30763:13
  wire               _T_169;	// matmul/matmul-hw.mlir:30760:13
  wire               _T_170;	// matmul/matmul-hw.mlir:30757:13
  wire               _T_171;	// matmul/matmul-hw.mlir:30754:13
  wire               _T_172;	// matmul/matmul-hw.mlir:30751:13
  wire               _T_173;	// matmul/matmul-hw.mlir:30748:13
  wire               _T_174;	// matmul/matmul-hw.mlir:30745:13
  wire               _T_175;	// matmul/matmul-hw.mlir:30742:13
  wire               _T_176;	// matmul/matmul-hw.mlir:30739:13
  wire               _T_177;	// matmul/matmul-hw.mlir:30736:13
  wire               _T_178;	// matmul/matmul-hw.mlir:30733:13
  wire               _T_179;	// matmul/matmul-hw.mlir:30730:13
  wire               _T_180;	// matmul/matmul-hw.mlir:30727:13
  wire               _T_181;	// matmul/matmul-hw.mlir:30724:13
  wire               _T_182;	// matmul/matmul-hw.mlir:30721:13
  wire               _T_183;	// matmul/matmul-hw.mlir:30718:13
  wire               _T_184;	// matmul/matmul-hw.mlir:30715:13
  wire               _T_185;	// matmul/matmul-hw.mlir:30712:13
  wire               _T_186;	// matmul/matmul-hw.mlir:30709:13
  wire               _T_187;	// matmul/matmul-hw.mlir:30706:13
  wire               _T_188;	// matmul/matmul-hw.mlir:30703:13
  wire               _T_189;	// matmul/matmul-hw.mlir:30700:13
  wire               _T_190;	// matmul/matmul-hw.mlir:30697:13
  wire               _T_191;	// matmul/matmul-hw.mlir:30694:13
  wire               _T_192;	// matmul/matmul-hw.mlir:30691:13
  wire               _T_193;	// matmul/matmul-hw.mlir:30688:13
  wire               _T_194;	// matmul/matmul-hw.mlir:30685:13
  wire               _T_195;	// matmul/matmul-hw.mlir:30682:13
  wire               _T_196;	// matmul/matmul-hw.mlir:30679:13
  wire               _T_197;	// matmul/matmul-hw.mlir:30676:13
  wire               _T_198;	// matmul/matmul-hw.mlir:30673:13
  wire               _T_199;	// matmul/matmul-hw.mlir:30670:13
  wire               _T_200;	// matmul/matmul-hw.mlir:30667:13
  wire               _T_201;	// matmul/matmul-hw.mlir:30664:13
  wire               _T_202;	// matmul/matmul-hw.mlir:30661:13
  wire               _T_203;	// matmul/matmul-hw.mlir:30658:13
  wire               _T_204;	// matmul/matmul-hw.mlir:30655:13
  wire               _T_205;	// matmul/matmul-hw.mlir:30652:13
  wire               _T_206;	// matmul/matmul-hw.mlir:30649:13
  wire               _T_207;	// matmul/matmul-hw.mlir:30646:13
  wire               _T_208;	// matmul/matmul-hw.mlir:30643:13
  wire               _T_209;	// matmul/matmul-hw.mlir:30640:13
  wire               _T_210;	// matmul/matmul-hw.mlir:30637:13
  wire               _T_211;	// matmul/matmul-hw.mlir:30634:13
  wire               _T_212;	// matmul/matmul-hw.mlir:30631:13
  wire               _T_213;	// matmul/matmul-hw.mlir:30628:13
  wire               _T_214;	// matmul/matmul-hw.mlir:30625:13
  wire               _T_215;	// matmul/matmul-hw.mlir:30622:13
  wire               _T_216;	// matmul/matmul-hw.mlir:30619:13
  wire               _T_217;	// matmul/matmul-hw.mlir:30616:13
  wire               _T_218;	// matmul/matmul-hw.mlir:30613:13
  wire               _T_219;	// matmul/matmul-hw.mlir:30610:13
  wire               _T_220;	// matmul/matmul-hw.mlir:30607:13
  wire               _T_221;	// matmul/matmul-hw.mlir:30604:13
  wire               _T_222;	// matmul/matmul-hw.mlir:30601:13
  wire               _T_223;	// matmul/matmul-hw.mlir:30598:13
  wire               _T_224;	// matmul/matmul-hw.mlir:30595:13
  wire               _T_225;	// matmul/matmul-hw.mlir:30592:13
  wire               _T_226;	// matmul/matmul-hw.mlir:30589:13
  wire               _T_227;	// matmul/matmul-hw.mlir:30586:13
  wire               _T_228;	// matmul/matmul-hw.mlir:30583:13
  wire               _T_229;	// matmul/matmul-hw.mlir:30580:13
  wire               _T_230;	// matmul/matmul-hw.mlir:30577:13
  wire               _T_231;	// matmul/matmul-hw.mlir:30574:13
  wire               _T_232;	// matmul/matmul-hw.mlir:30571:13
  wire               _T_233;	// matmul/matmul-hw.mlir:30568:13
  wire               _T_234;	// matmul/matmul-hw.mlir:30565:13
  wire               _T_235;	// matmul/matmul-hw.mlir:30562:13
  wire               _T_236;	// matmul/matmul-hw.mlir:30559:13
  wire               _T_237;	// matmul/matmul-hw.mlir:30556:13
  wire               _T_238;	// matmul/matmul-hw.mlir:30553:13
  wire               _T_239;	// matmul/matmul-hw.mlir:30550:13
  wire               _T_240;	// matmul/matmul-hw.mlir:30547:13
  wire               _T_241;	// matmul/matmul-hw.mlir:30544:13
  wire               _T_242;	// matmul/matmul-hw.mlir:30541:13
  wire               _T_243;	// matmul/matmul-hw.mlir:30538:13
  wire               _T_244;	// matmul/matmul-hw.mlir:30535:13
  wire               _T_245;	// matmul/matmul-hw.mlir:30532:13
  wire               _T_246;	// matmul/matmul-hw.mlir:30529:13
  wire               _T_247;	// matmul/matmul-hw.mlir:30526:13
  wire               _T_248;	// matmul/matmul-hw.mlir:30523:13
  wire               _T_249;	// matmul/matmul-hw.mlir:30520:13
  wire               _T_250;	// matmul/matmul-hw.mlir:30517:13
  wire               _T_251;	// matmul/matmul-hw.mlir:30514:13
  wire               _T_252;	// matmul/matmul-hw.mlir:30511:13
  wire               _T_253;	// matmul/matmul-hw.mlir:30508:13
  wire               _T_254;	// matmul/matmul-hw.mlir:30505:13
  wire               _T_255;	// matmul/matmul-hw.mlir:30502:13
  wire               _T_256;	// matmul/matmul-hw.mlir:30499:13
  wire               _T_257;	// matmul/matmul-hw.mlir:30496:13
  wire               _T_258;	// matmul/matmul-hw.mlir:30493:13
  wire               _T_259;	// matmul/matmul-hw.mlir:30490:13
  wire               _T_260;	// matmul/matmul-hw.mlir:30487:13
  wire               _T_261;	// matmul/matmul-hw.mlir:30484:13
  wire               _T_262;	// matmul/matmul-hw.mlir:30481:13
  wire               _T_263;	// matmul/matmul-hw.mlir:30478:13
  wire               _T_264;	// matmul/matmul-hw.mlir:30475:13
  wire               _T_265;	// matmul/matmul-hw.mlir:30472:13
  wire               _T_266;	// matmul/matmul-hw.mlir:30469:13
  wire               _T_267;	// matmul/matmul-hw.mlir:30466:13
  wire               _T_268;	// matmul/matmul-hw.mlir:30463:13
  wire               _T_269;	// matmul/matmul-hw.mlir:30460:13
  wire               _T_270;	// matmul/matmul-hw.mlir:30457:13
  wire               _T_271;	// matmul/matmul-hw.mlir:30454:13
  wire               _T_272;	// matmul/matmul-hw.mlir:30451:13
  wire               _T_273;	// matmul/matmul-hw.mlir:30448:13
  wire               _T_274;	// matmul/matmul-hw.mlir:30445:13
  wire               _T_275;	// matmul/matmul-hw.mlir:30442:13
  wire               _T_276;	// matmul/matmul-hw.mlir:30439:13
  wire               _T_277;	// matmul/matmul-hw.mlir:30436:13
  wire               _T_278;	// matmul/matmul-hw.mlir:30433:13
  wire               _T_279;	// matmul/matmul-hw.mlir:30430:13
  wire               _T_280;	// matmul/matmul-hw.mlir:30427:13
  wire               _T_281;	// matmul/matmul-hw.mlir:30424:13
  wire               _T_282;	// matmul/matmul-hw.mlir:30421:13
  wire               _T_283;	// matmul/matmul-hw.mlir:30418:13
  wire               _T_284;	// matmul/matmul-hw.mlir:30415:13
  wire               _T_285;	// matmul/matmul-hw.mlir:30412:13
  wire               _T_286;	// matmul/matmul-hw.mlir:30409:13
  wire               _T_287;	// matmul/matmul-hw.mlir:30406:13
  wire               _T_288;	// matmul/matmul-hw.mlir:30403:13
  wire               _T_289;	// matmul/matmul-hw.mlir:30400:13
  wire               _T_290;	// matmul/matmul-hw.mlir:30397:13
  wire               _T_291;	// matmul/matmul-hw.mlir:30394:13
  wire               _T_292;	// matmul/matmul-hw.mlir:30391:13
  wire               _T_293;	// matmul/matmul-hw.mlir:30388:13
  wire               _T_294;	// matmul/matmul-hw.mlir:30385:13
  wire               _T_295;	// matmul/matmul-hw.mlir:30382:13
  wire               _T_296;	// matmul/matmul-hw.mlir:30379:13
  wire               _T_297;	// matmul/matmul-hw.mlir:30376:13
  wire               _T_298;	// matmul/matmul-hw.mlir:30373:13
  wire               _T_299;	// matmul/matmul-hw.mlir:30370:13
  wire               _T_300;	// matmul/matmul-hw.mlir:30367:13
  wire               _T_301;	// matmul/matmul-hw.mlir:30364:13
  wire               _T_302;	// matmul/matmul-hw.mlir:30361:13
  wire               _T_303;	// matmul/matmul-hw.mlir:30358:13
  wire               _T_304;	// matmul/matmul-hw.mlir:30355:13
  wire               _T_305;	// matmul/matmul-hw.mlir:30352:13
  wire               _T_306;	// matmul/matmul-hw.mlir:30349:13
  wire               _T_307;	// matmul/matmul-hw.mlir:30346:13
  wire               _T_308;	// matmul/matmul-hw.mlir:30343:13
  wire               _T_309;	// matmul/matmul-hw.mlir:30340:13
  wire               _T_310;	// matmul/matmul-hw.mlir:30337:13
  wire               _T_311;	// matmul/matmul-hw.mlir:30334:13
  wire               _T_312;	// matmul/matmul-hw.mlir:30331:13
  wire               _T_313;	// matmul/matmul-hw.mlir:30328:13
  wire               _T_314;	// matmul/matmul-hw.mlir:30325:13
  wire               _T_315;	// matmul/matmul-hw.mlir:30322:13
  wire               _T_316;	// matmul/matmul-hw.mlir:30319:13
  wire               _T_317;	// matmul/matmul-hw.mlir:30316:13
  wire               _T_318;	// matmul/matmul-hw.mlir:30313:13
  wire               _T_319;	// matmul/matmul-hw.mlir:30310:13
  wire               _T_320;	// matmul/matmul-hw.mlir:30307:13
  wire               _T_321;	// matmul/matmul-hw.mlir:30304:13
  wire               _T_322;	// matmul/matmul-hw.mlir:30301:13
  wire               _T_323;	// matmul/matmul-hw.mlir:30298:13
  wire               _T_324;	// matmul/matmul-hw.mlir:30295:13
  wire               _T_325;	// matmul/matmul-hw.mlir:30292:13
  wire               _T_326;	// matmul/matmul-hw.mlir:30289:13
  wire               _T_327;	// matmul/matmul-hw.mlir:30286:13
  wire               _T_328;	// matmul/matmul-hw.mlir:30283:13
  wire               _T_329;	// matmul/matmul-hw.mlir:30280:13
  wire               _T_330;	// matmul/matmul-hw.mlir:30277:13
  wire               _T_331;	// matmul/matmul-hw.mlir:30274:13
  wire               _T_332;	// matmul/matmul-hw.mlir:30271:13
  wire               _T_333;	// matmul/matmul-hw.mlir:30268:13
  wire               _T_334;	// matmul/matmul-hw.mlir:30265:13
  wire               _T_335;	// matmul/matmul-hw.mlir:30262:13
  wire               _T_336;	// matmul/matmul-hw.mlir:30259:13
  wire               _T_337;	// matmul/matmul-hw.mlir:30256:13
  wire               _T_338;	// matmul/matmul-hw.mlir:30253:13
  wire               _T_339;	// matmul/matmul-hw.mlir:30250:13
  wire               _T_340;	// matmul/matmul-hw.mlir:30247:13
  wire               _T_341;	// matmul/matmul-hw.mlir:30244:13
  wire               _T_342;	// matmul/matmul-hw.mlir:30241:13
  wire               _T_343;	// matmul/matmul-hw.mlir:30238:13
  wire               _T_344;	// matmul/matmul-hw.mlir:30235:13
  wire               _T_345;	// matmul/matmul-hw.mlir:30232:13
  wire               _T_346;	// matmul/matmul-hw.mlir:30229:13
  wire               _T_347;	// matmul/matmul-hw.mlir:30226:13
  wire               _T_348;	// matmul/matmul-hw.mlir:30223:13
  wire               _T_349;	// matmul/matmul-hw.mlir:30220:13
  wire               _T_350;	// matmul/matmul-hw.mlir:30217:13
  wire               _T_351;	// matmul/matmul-hw.mlir:30214:13
  wire               _T_352;	// matmul/matmul-hw.mlir:30211:13
  wire               _T_353;	// matmul/matmul-hw.mlir:30208:13
  wire               _T_354;	// matmul/matmul-hw.mlir:30205:13
  wire               _T_355;	// matmul/matmul-hw.mlir:30202:13
  wire               _T_356;	// matmul/matmul-hw.mlir:30199:13
  wire               _T_357;	// matmul/matmul-hw.mlir:30196:13
  wire               _T_358;	// matmul/matmul-hw.mlir:30193:13
  wire               _T_359;	// matmul/matmul-hw.mlir:30190:13
  wire               _T_360;	// matmul/matmul-hw.mlir:30187:13
  wire               _T_361;	// matmul/matmul-hw.mlir:30184:13
  wire               _T_362;	// matmul/matmul-hw.mlir:30181:13
  wire               _T_363;	// matmul/matmul-hw.mlir:30178:13
  wire               _T_364;	// matmul/matmul-hw.mlir:30175:13
  wire               _T_365;	// matmul/matmul-hw.mlir:30172:13
  wire               _T_366;	// matmul/matmul-hw.mlir:30169:13
  wire               _T_367;	// matmul/matmul-hw.mlir:29652:13
  wire [3:0]         _T_368;	// matmul/matmul-hw.mlir:29649:13
  wire               _T_369;	// matmul/matmul-hw.mlir:29646:13
  wire               _T_370;	// matmul/matmul-hw.mlir:29643:13
  wire [3:0]         _T_371;	// matmul/matmul-hw.mlir:29640:13
  wire               _T_372;	// matmul/matmul-hw.mlir:29637:13
  wire               _T_373;	// matmul/matmul-hw.mlir:29634:13
  wire [3:0]         _T_374;	// matmul/matmul-hw.mlir:29631:13
  wire               _T_375;	// matmul/matmul-hw.mlir:29628:13
  wire               _T_376;	// matmul/matmul-hw.mlir:29625:13
  wire [3:0]         _T_377;	// matmul/matmul-hw.mlir:29622:13
  wire               _T_378;	// matmul/matmul-hw.mlir:29619:13
  wire               _T_379;	// matmul/matmul-hw.mlir:29616:13
  wire [3:0]         _T_380;	// matmul/matmul-hw.mlir:29613:13
  wire               _T_381;	// matmul/matmul-hw.mlir:29610:13
  wire               _T_382;	// matmul/matmul-hw.mlir:29607:13
  wire [3:0]         _T_383;	// matmul/matmul-hw.mlir:29604:13
  wire               _T_384;	// matmul/matmul-hw.mlir:29601:13
  wire               _T_385;	// matmul/matmul-hw.mlir:29598:13
  wire [3:0]         _T_386;	// matmul/matmul-hw.mlir:29595:13
  wire               _T_387;	// matmul/matmul-hw.mlir:29592:13
  wire               _T_388;	// matmul/matmul-hw.mlir:29589:13
  wire [3:0]         _T_389;	// matmul/matmul-hw.mlir:29586:13
  wire               _T_390;	// matmul/matmul-hw.mlir:29583:13
  wire               _T_391;	// matmul/matmul-hw.mlir:29580:13
  wire [3:0]         _T_392;	// matmul/matmul-hw.mlir:29577:13
  wire               _T_393;	// matmul/matmul-hw.mlir:29574:13
  wire               _T_394;	// matmul/matmul-hw.mlir:29571:13
  wire [3:0]         _T_395;	// matmul/matmul-hw.mlir:29568:13
  wire               _T_396;	// matmul/matmul-hw.mlir:29565:13
  wire               _T_397;	// matmul/matmul-hw.mlir:29562:13
  wire [3:0]         _T_398;	// matmul/matmul-hw.mlir:29559:13
  wire               _T_399;	// matmul/matmul-hw.mlir:29556:13
  wire               _T_400;	// matmul/matmul-hw.mlir:29553:13
  wire [3:0]         _T_401;	// matmul/matmul-hw.mlir:29550:13
  wire               _T_402;	// matmul/matmul-hw.mlir:29547:13
  wire               _T_403;	// matmul/matmul-hw.mlir:29544:13
  wire [3:0]         _T_404;	// matmul/matmul-hw.mlir:29541:13
  wire               _T_405;	// matmul/matmul-hw.mlir:29538:13
  wire               _T_406;	// matmul/matmul-hw.mlir:29535:13
  wire [3:0]         _T_407;	// matmul/matmul-hw.mlir:29532:13
  wire               _T_408;	// matmul/matmul-hw.mlir:29529:13
  wire               _T_409;	// matmul/matmul-hw.mlir:29526:13
  wire [3:0]         _T_410;	// matmul/matmul-hw.mlir:29523:13
  wire               _T_411;	// matmul/matmul-hw.mlir:29520:13
  wire               _T_412;	// matmul/matmul-hw.mlir:29517:13
  wire [3:0]         _T_413;	// matmul/matmul-hw.mlir:29514:13
  wire               _T_414;	// matmul/matmul-hw.mlir:29511:13
  wire [31:0]        _T_415;	// matmul/matmul-hw.mlir:29439:13
  wire               _T_416;	// matmul/matmul-hw.mlir:29436:13
  wire [31:0]        _T_417;	// matmul/matmul-hw.mlir:29433:13
  wire               _T_418;	// matmul/matmul-hw.mlir:29430:13
  wire [31:0]        _T_419;	// matmul/matmul-hw.mlir:29427:13
  wire               _T_420;	// matmul/matmul-hw.mlir:29424:13
  wire [31:0]        _T_421;	// matmul/matmul-hw.mlir:29421:13
  wire               _T_422;	// matmul/matmul-hw.mlir:29418:13
  wire [31:0]        _T_423;	// matmul/matmul-hw.mlir:29415:13
  wire               _T_424;	// matmul/matmul-hw.mlir:29412:13
  wire [31:0]        _T_425;	// matmul/matmul-hw.mlir:29409:13
  wire               _T_426;	// matmul/matmul-hw.mlir:29406:13
  wire [31:0]        _T_427;	// matmul/matmul-hw.mlir:29403:13
  wire               _T_428;	// matmul/matmul-hw.mlir:29400:13
  wire [31:0]        _T_429;	// matmul/matmul-hw.mlir:29397:13
  wire               _T_430;	// matmul/matmul-hw.mlir:29394:13
  wire [31:0]        _T_431;	// matmul/matmul-hw.mlir:29391:13
  wire               _T_432;	// matmul/matmul-hw.mlir:29388:13
  wire [31:0]        _T_433;	// matmul/matmul-hw.mlir:29385:13
  wire               _T_434;	// matmul/matmul-hw.mlir:29382:13
  wire [31:0]        _T_435;	// matmul/matmul-hw.mlir:29379:13
  wire               _T_436;	// matmul/matmul-hw.mlir:29376:13
  wire [31:0]        _T_437;	// matmul/matmul-hw.mlir:29373:13
  wire               _T_438;	// matmul/matmul-hw.mlir:29370:13
  wire [31:0]        _T_439;	// matmul/matmul-hw.mlir:29367:13
  wire               _T_440;	// matmul/matmul-hw.mlir:29364:13
  wire [31:0]        _T_441;	// matmul/matmul-hw.mlir:29361:13
  wire               _T_442;	// matmul/matmul-hw.mlir:29358:13
  wire [31:0]        _T_443;	// matmul/matmul-hw.mlir:29355:13
  wire               _T_444;	// matmul/matmul-hw.mlir:29352:13
  wire [31:0]        _T_445;	// matmul/matmul-hw.mlir:29349:13
  wire               _T_446;	// matmul/matmul-hw.mlir:29346:13
  wire [31:0]        _T_447;	// matmul/matmul-hw.mlir:29343:13
  wire               _T_448;	// matmul/matmul-hw.mlir:29340:13
  wire [31:0]        _T_449;	// matmul/matmul-hw.mlir:29337:13
  wire               _T_450;	// matmul/matmul-hw.mlir:29334:13
  wire [31:0]        _T_451;	// matmul/matmul-hw.mlir:29331:13
  wire               _T_452;	// matmul/matmul-hw.mlir:29328:13
  wire [31:0]        _T_453;	// matmul/matmul-hw.mlir:29325:13
  wire               _T_454;	// matmul/matmul-hw.mlir:29322:13
  wire [31:0]        _T_455;	// matmul/matmul-hw.mlir:29319:13
  wire               _T_456;	// matmul/matmul-hw.mlir:29316:13
  wire [31:0]        _T_457;	// matmul/matmul-hw.mlir:29313:13
  wire               _T_458;	// matmul/matmul-hw.mlir:29310:13
  wire [31:0]        _T_459;	// matmul/matmul-hw.mlir:29307:13
  wire               _T_460;	// matmul/matmul-hw.mlir:29304:13
  wire [31:0]        _T_461;	// matmul/matmul-hw.mlir:29301:13
  wire               _T_462;	// matmul/matmul-hw.mlir:29298:13
  wire [31:0]        _T_463;	// matmul/matmul-hw.mlir:29295:13
  wire               _T_464;	// matmul/matmul-hw.mlir:29292:13
  wire [31:0]        _T_465;	// matmul/matmul-hw.mlir:29289:13
  wire               _T_466;	// matmul/matmul-hw.mlir:29286:13
  wire [31:0]        _T_467;	// matmul/matmul-hw.mlir:29283:13
  wire               _T_468;	// matmul/matmul-hw.mlir:29280:13
  wire [31:0]        _T_469;	// matmul/matmul-hw.mlir:29277:13
  wire               _T_470;	// matmul/matmul-hw.mlir:29274:13
  wire [31:0]        _T_471;	// matmul/matmul-hw.mlir:29271:13
  wire               _T_472;	// matmul/matmul-hw.mlir:29268:13
  wire [31:0]        _T_473;	// matmul/matmul-hw.mlir:29265:13
  wire               _T_474;	// matmul/matmul-hw.mlir:29262:13
  wire [31:0]        _T_475;	// matmul/matmul-hw.mlir:29259:13
  wire               _T_476;	// matmul/matmul-hw.mlir:29256:13
  wire [31:0]        _T_477;	// matmul/matmul-hw.mlir:29253:13
  wire               _T_478;	// matmul/matmul-hw.mlir:29250:13
  wire [31:0]        _T_479;	// matmul/matmul-hw.mlir:29247:13
  wire               _T_480;	// matmul/matmul-hw.mlir:29244:13
  wire [31:0]        _T_481;	// matmul/matmul-hw.mlir:29241:13
  wire               _T_482;	// matmul/matmul-hw.mlir:29238:13
  wire [31:0]        _T_483;	// matmul/matmul-hw.mlir:29235:13
  wire               _T_484;	// matmul/matmul-hw.mlir:29232:13
  wire [31:0]        _T_485;	// matmul/matmul-hw.mlir:29229:13
  wire               _T_486;	// matmul/matmul-hw.mlir:29226:13
  wire [31:0]        _T_487;	// matmul/matmul-hw.mlir:29223:13
  wire               _T_488;	// matmul/matmul-hw.mlir:29220:13
  wire [31:0]        _T_489;	// matmul/matmul-hw.mlir:29217:13
  wire               _T_490;	// matmul/matmul-hw.mlir:29214:13
  wire [31:0]        _T_491;	// matmul/matmul-hw.mlir:29211:13
  wire               _T_492;	// matmul/matmul-hw.mlir:29208:13
  wire [31:0]        _T_493;	// matmul/matmul-hw.mlir:29205:13
  wire               _T_494;	// matmul/matmul-hw.mlir:29202:13
  wire [31:0]        _T_495;	// matmul/matmul-hw.mlir:29199:13
  wire               _T_496;	// matmul/matmul-hw.mlir:29196:13
  wire [31:0]        _T_497;	// matmul/matmul-hw.mlir:29193:12
  wire               _T_498;	// matmul/matmul-hw.mlir:29190:12
  wire [31:0]        _T_499;	// matmul/matmul-hw.mlir:29187:12
  wire               _T_500;	// matmul/matmul-hw.mlir:29184:12
  wire [31:0]        _T_501;	// matmul/matmul-hw.mlir:29181:12
  wire               _T_502;	// matmul/matmul-hw.mlir:29178:12
  wire [31:0]        _T_503;	// matmul/matmul-hw.mlir:29175:12
  wire               _T_504;	// matmul/matmul-hw.mlir:29172:12
  wire [31:0]        _T_505;	// matmul/matmul-hw.mlir:29169:12
  wire               _T_506;	// matmul/matmul-hw.mlir:29166:12
  wire [31:0]        _T_507;	// matmul/matmul-hw.mlir:29163:12
  wire               _T_508;	// matmul/matmul-hw.mlir:29160:12
  wire [31:0]        _T_509;	// matmul/matmul-hw.mlir:29157:12
  wire               _T_510;	// matmul/matmul-hw.mlir:29154:12
  wire [31:0]        _T_511;	// matmul/matmul-hw.mlir:29151:12
  wire               _T_512;	// matmul/matmul-hw.mlir:29148:12
  wire [31:0]        _T_513;	// matmul/matmul-hw.mlir:29145:12
  wire               _T_514;	// matmul/matmul-hw.mlir:29142:12
  wire [31:0]        _T_515;	// matmul/matmul-hw.mlir:29139:12
  wire               _T_516;	// matmul/matmul-hw.mlir:29136:12
  wire [31:0]        _T_517;	// matmul/matmul-hw.mlir:29133:12
  wire               _T_518;	// matmul/matmul-hw.mlir:29130:12
  wire [31:0]        _T_519;	// matmul/matmul-hw.mlir:29127:12
  wire               _T_520;	// matmul/matmul-hw.mlir:29124:12
  wire [31:0]        _T_521;	// matmul/matmul-hw.mlir:29121:12
  wire               _T_522;	// matmul/matmul-hw.mlir:29118:12
  wire [31:0]        _T_523;	// matmul/matmul-hw.mlir:29115:12
  wire               _T_524;	// matmul/matmul-hw.mlir:29112:12
  wire [31:0]        _T_525;	// matmul/matmul-hw.mlir:29109:12
  wire               _T_526;	// matmul/matmul-hw.mlir:29106:12
  wire [31:0]        _T_527;	// matmul/matmul-hw.mlir:29103:12
  wire               _T_528;	// matmul/matmul-hw.mlir:29100:12
  wire [31:0]        _T_529;	// matmul/matmul-hw.mlir:29097:12
  wire               _T_530;	// matmul/matmul-hw.mlir:29094:12
  wire [31:0]        _T_531;	// matmul/matmul-hw.mlir:29091:12
  wire               _T_532;	// matmul/matmul-hw.mlir:29088:12
  wire [31:0]        _T_533;	// matmul/matmul-hw.mlir:29085:12
  wire               _T_534;	// matmul/matmul-hw.mlir:29082:12
  wire [31:0]        _T_535;	// matmul/matmul-hw.mlir:29079:12
  wire               _T_536;	// matmul/matmul-hw.mlir:29076:12
  wire [31:0]        _T_537;	// matmul/matmul-hw.mlir:29073:12
  wire               _T_538;	// matmul/matmul-hw.mlir:29070:12
  wire [31:0]        _T_539;	// matmul/matmul-hw.mlir:29067:12
  wire               _T_540;	// matmul/matmul-hw.mlir:29064:12
  wire [31:0]        _T_541;	// matmul/matmul-hw.mlir:29061:12
  wire               _T_542;	// matmul/matmul-hw.mlir:29058:12
  wire [31:0]        _T_543;	// matmul/matmul-hw.mlir:29055:12
  wire               _T_544;	// matmul/matmul-hw.mlir:29052:12
  wire [31:0]        _T_545;	// matmul/matmul-hw.mlir:29049:12
  wire               _T_546;	// matmul/matmul-hw.mlir:29046:12
  wire [31:0]        _T_547;	// matmul/matmul-hw.mlir:29043:12
  wire               _T_548;	// matmul/matmul-hw.mlir:29040:12
  wire [31:0]        _T_549;	// matmul/matmul-hw.mlir:29037:12
  wire               _T_550;	// matmul/matmul-hw.mlir:29034:12
  wire [31:0]        _T_551;	// matmul/matmul-hw.mlir:29031:12
  wire               _T_552;	// matmul/matmul-hw.mlir:29028:12
  wire [31:0]        _T_553;	// matmul/matmul-hw.mlir:29025:12
  wire               _T_554;	// matmul/matmul-hw.mlir:29022:12
  wire [31:0]        _T_555;	// matmul/matmul-hw.mlir:29019:12
  wire               _T_556;	// matmul/matmul-hw.mlir:29016:12
  wire [31:0]        _T_557;	// matmul/matmul-hw.mlir:29013:12
  wire               _T_558;	// matmul/matmul-hw.mlir:29010:12
  wire [31:0]        _T_559;	// matmul/matmul-hw.mlir:29007:12
  wire               _T_560;	// matmul/matmul-hw.mlir:29004:12
  wire [31:0]        _T_561;	// matmul/matmul-hw.mlir:29001:12
  wire               _T_562;	// matmul/matmul-hw.mlir:28998:12
  wire [31:0]        _T_563;	// matmul/matmul-hw.mlir:28995:12
  wire               _T_564;	// matmul/matmul-hw.mlir:28992:12
  wire [31:0]        _T_565;	// matmul/matmul-hw.mlir:28989:12
  wire               _T_566;	// matmul/matmul-hw.mlir:28986:12
  wire [31:0]        _T_567;	// matmul/matmul-hw.mlir:28983:12
  wire               _T_568;	// matmul/matmul-hw.mlir:28980:12
  wire [31:0]        _T_569;	// matmul/matmul-hw.mlir:28977:12
  wire               _T_570;	// matmul/matmul-hw.mlir:28974:12
  wire [31:0]        _T_571;	// matmul/matmul-hw.mlir:28971:12
  wire               _T_572;	// matmul/matmul-hw.mlir:28968:12
  wire [31:0]        _T_573;	// matmul/matmul-hw.mlir:28965:12
  wire               _T_574;	// matmul/matmul-hw.mlir:28962:12
  wire [31:0]        _T_575;	// matmul/matmul-hw.mlir:28959:12
  wire               _T_576;	// matmul/matmul-hw.mlir:28956:12
  wire [31:0]        _T_577;	// matmul/matmul-hw.mlir:28953:12
  wire               _T_578;	// matmul/matmul-hw.mlir:28950:12
  wire [31:0]        _T_579;	// matmul/matmul-hw.mlir:28947:12
  wire               _T_580;	// matmul/matmul-hw.mlir:28944:12
  wire [31:0]        _T_581;	// matmul/matmul-hw.mlir:28941:12
  wire               _T_582;	// matmul/matmul-hw.mlir:28938:12
  wire [31:0]        _T_583;	// matmul/matmul-hw.mlir:28935:12
  wire               _T_584;	// matmul/matmul-hw.mlir:28932:12
  wire [31:0]        _T_585;	// matmul/matmul-hw.mlir:28929:12
  wire               _T_586;	// matmul/matmul-hw.mlir:28926:12
  wire [31:0]        _T_587;	// matmul/matmul-hw.mlir:28923:12
  wire               _T_588;	// matmul/matmul-hw.mlir:28920:12
  wire [31:0]        _T_589;	// matmul/matmul-hw.mlir:28917:12
  wire               _T_590;	// matmul/matmul-hw.mlir:28914:12
  wire [31:0]        _T_591;	// matmul/matmul-hw.mlir:28911:12
  wire               _T_592;	// matmul/matmul-hw.mlir:28908:12
  wire [31:0]        _T_593;	// matmul/matmul-hw.mlir:28905:12
  wire               _T_594;	// matmul/matmul-hw.mlir:28902:12
  wire [31:0]        _T_595;	// matmul/matmul-hw.mlir:28899:12
  wire               _T_596;	// matmul/matmul-hw.mlir:28896:12
  wire [31:0]        _T_597;	// matmul/matmul-hw.mlir:28893:12
  wire               _T_598;	// matmul/matmul-hw.mlir:28890:12
  wire [31:0]        _T_599;	// matmul/matmul-hw.mlir:28887:12
  wire               _T_600;	// matmul/matmul-hw.mlir:28884:12
  wire [31:0]        _T_601;	// matmul/matmul-hw.mlir:28881:12
  wire               _T_602;	// matmul/matmul-hw.mlir:28878:12
  wire [31:0]        _T_603;	// matmul/matmul-hw.mlir:28875:12
  wire               _T_604;	// matmul/matmul-hw.mlir:28872:12
  wire [31:0]        _T_605;	// matmul/matmul-hw.mlir:28869:12
  wire               _T_606;	// matmul/matmul-hw.mlir:28866:12
  wire [31:0]        _T_607;	// matmul/matmul-hw.mlir:28863:12
  wire               _T_608;	// matmul/matmul-hw.mlir:28860:12
  wire [31:0]        _T_609;	// matmul/matmul-hw.mlir:28857:12
  wire               _T_610;	// matmul/matmul-hw.mlir:28854:12
  wire [31:0]        _T_611;	// matmul/matmul-hw.mlir:28851:12
  wire               _T_612;	// matmul/matmul-hw.mlir:28848:12
  wire [31:0]        _T_613;	// matmul/matmul-hw.mlir:28845:12
  wire               _T_614;	// matmul/matmul-hw.mlir:28842:12
  wire [31:0]        _T_615;	// matmul/matmul-hw.mlir:28839:12
  wire               _T_616;	// matmul/matmul-hw.mlir:28836:12
  wire [31:0]        _T_617;	// matmul/matmul-hw.mlir:28833:12
  wire               _T_618;	// matmul/matmul-hw.mlir:28830:12
  wire [31:0]        _T_619;	// matmul/matmul-hw.mlir:28827:12
  wire               _T_620;	// matmul/matmul-hw.mlir:28824:12
  wire [31:0]        _T_621;	// matmul/matmul-hw.mlir:28821:12
  wire               _T_622;	// matmul/matmul-hw.mlir:28818:12
  wire [31:0]        _T_623;	// matmul/matmul-hw.mlir:28815:12
  wire               _T_624;	// matmul/matmul-hw.mlir:28812:12
  wire [31:0]        _T_625;	// matmul/matmul-hw.mlir:28809:12
  wire               _T_626;	// matmul/matmul-hw.mlir:28806:12
  wire [31:0]        _T_627;	// matmul/matmul-hw.mlir:28803:12
  wire               _T_628;	// matmul/matmul-hw.mlir:28800:12
  wire [31:0]        _T_629;	// matmul/matmul-hw.mlir:28797:12
  wire               _T_630;	// matmul/matmul-hw.mlir:28794:12
  wire [31:0]        _T_631;	// matmul/matmul-hw.mlir:28791:12
  wire               _T_632;	// matmul/matmul-hw.mlir:28788:12
  wire [31:0]        _T_633;	// matmul/matmul-hw.mlir:28785:12
  wire               _T_634;	// matmul/matmul-hw.mlir:28782:12
  wire [31:0]        _T_635;	// matmul/matmul-hw.mlir:28779:12
  wire               _T_636;	// matmul/matmul-hw.mlir:28776:12
  wire [31:0]        _T_637;	// matmul/matmul-hw.mlir:28773:12
  wire               _T_638;	// matmul/matmul-hw.mlir:28770:12
  wire [31:0]        _T_639;	// matmul/matmul-hw.mlir:28767:12
  wire               _T_640;	// matmul/matmul-hw.mlir:28764:12
  wire [31:0]        _T_641;	// matmul/matmul-hw.mlir:28761:12
  wire               _T_642;	// matmul/matmul-hw.mlir:28758:12
  wire [31:0]        _T_643;	// matmul/matmul-hw.mlir:28755:12
  wire               _T_644;	// matmul/matmul-hw.mlir:28752:12
  wire [31:0]        _T_645;	// matmul/matmul-hw.mlir:28749:12
  wire               _T_646;	// matmul/matmul-hw.mlir:28746:12
  wire [31:0]        _T_647;	// matmul/matmul-hw.mlir:28743:12
  wire               _T_648;	// matmul/matmul-hw.mlir:28740:12
  wire [31:0]        _T_649;	// matmul/matmul-hw.mlir:28737:12
  wire               _T_650;	// matmul/matmul-hw.mlir:28734:12
  wire [31:0]        _T_651;	// matmul/matmul-hw.mlir:28731:12
  wire               _T_652;	// matmul/matmul-hw.mlir:28728:12
  wire [31:0]        _T_653;	// matmul/matmul-hw.mlir:28725:12
  wire               _T_654;	// matmul/matmul-hw.mlir:28722:12
  wire [31:0]        _T_655;	// matmul/matmul-hw.mlir:28719:12
  wire               _T_656;	// matmul/matmul-hw.mlir:28716:12
  wire [31:0]        _T_657;	// matmul/matmul-hw.mlir:28713:12
  wire               _T_658;	// matmul/matmul-hw.mlir:28710:12
  wire [31:0]        _T_659;	// matmul/matmul-hw.mlir:28707:12
  wire               _T_660;	// matmul/matmul-hw.mlir:28704:12
  wire [31:0]        _T_661;	// matmul/matmul-hw.mlir:28701:12
  wire               _T_662;	// matmul/matmul-hw.mlir:28698:12
  wire [31:0]        _T_663;	// matmul/matmul-hw.mlir:28695:12
  wire               _T_664;	// matmul/matmul-hw.mlir:28692:12
  wire [31:0]        _T_665;	// matmul/matmul-hw.mlir:28689:12
  wire               _T_666;	// matmul/matmul-hw.mlir:28686:12
  wire [31:0]        _T_667;	// matmul/matmul-hw.mlir:28683:12
  wire               _T_668;	// matmul/matmul-hw.mlir:28680:12
  wire [31:0]        _T_669;	// matmul/matmul-hw.mlir:28677:12
  wire               _T_670;	// matmul/matmul-hw.mlir:28674:12
  wire [31:0]        _T_671;	// matmul/matmul-hw.mlir:28671:12
  wire               _T_672;	// matmul/matmul-hw.mlir:28668:12
  wire [31:0]        _T_673;	// matmul/matmul-hw.mlir:28665:12
  wire               _T_674;	// matmul/matmul-hw.mlir:28662:12
  wire [31:0]        _T_675;	// matmul/matmul-hw.mlir:28659:12
  wire               _T_676;	// matmul/matmul-hw.mlir:28656:12
  wire [31:0]        _T_677;	// matmul/matmul-hw.mlir:28653:12
  wire               _T_678;	// matmul/matmul-hw.mlir:28650:12
  wire [31:0]        _T_679;	// matmul/matmul-hw.mlir:28647:12
  wire               _T_680;	// matmul/matmul-hw.mlir:28644:12
  wire [31:0]        _T_681;	// matmul/matmul-hw.mlir:28641:12
  wire               _T_682;	// matmul/matmul-hw.mlir:28638:12
  wire [31:0]        _T_683;	// matmul/matmul-hw.mlir:28635:12
  wire               _T_684;	// matmul/matmul-hw.mlir:28632:12
  wire [31:0]        _T_685;	// matmul/matmul-hw.mlir:28629:12
  wire               _T_686;	// matmul/matmul-hw.mlir:28626:12
  wire [31:0]        _T_687;	// matmul/matmul-hw.mlir:28623:12
  wire               _T_688;	// matmul/matmul-hw.mlir:28620:12
  wire [31:0]        _T_689;	// matmul/matmul-hw.mlir:28617:12
  wire               _T_690;	// matmul/matmul-hw.mlir:28614:12
  wire [31:0]        _T_691;	// matmul/matmul-hw.mlir:28611:12
  wire               _T_692;	// matmul/matmul-hw.mlir:28608:12
  wire [31:0]        _T_693;	// matmul/matmul-hw.mlir:28605:12
  wire               _T_694;	// matmul/matmul-hw.mlir:28602:12
  wire [31:0]        _T_695;	// matmul/matmul-hw.mlir:28599:12
  wire               _T_696;	// matmul/matmul-hw.mlir:28596:12
  wire [31:0]        _T_697;	// matmul/matmul-hw.mlir:28593:12
  wire               _T_698;	// matmul/matmul-hw.mlir:28590:12
  wire [31:0]        _T_699;	// matmul/matmul-hw.mlir:28587:12
  wire               _T_700;	// matmul/matmul-hw.mlir:28584:12
  wire [31:0]        _T_701;	// matmul/matmul-hw.mlir:28581:12
  wire               _T_702;	// matmul/matmul-hw.mlir:28578:12
  wire [31:0]        _T_703;	// matmul/matmul-hw.mlir:28575:12
  wire               _T_704;	// matmul/matmul-hw.mlir:28572:12
  wire [31:0]        _T_705;	// matmul/matmul-hw.mlir:28569:12
  wire               _T_706;	// matmul/matmul-hw.mlir:28566:12
  wire [31:0]        _T_707;	// matmul/matmul-hw.mlir:28563:12
  wire               _T_708;	// matmul/matmul-hw.mlir:28560:12
  wire [31:0]        _T_709;	// matmul/matmul-hw.mlir:28557:12
  wire               _T_710;	// matmul/matmul-hw.mlir:28554:12
  wire [31:0]        _T_711;	// matmul/matmul-hw.mlir:28551:12
  wire               _T_712;	// matmul/matmul-hw.mlir:28548:12
  wire [31:0]        _T_713;	// matmul/matmul-hw.mlir:28545:12
  wire               _T_714;	// matmul/matmul-hw.mlir:28542:12
  wire [31:0]        _T_715;	// matmul/matmul-hw.mlir:28539:12
  wire               _T_716;	// matmul/matmul-hw.mlir:28536:12
  wire [31:0]        _T_717;	// matmul/matmul-hw.mlir:28533:12
  wire               _T_718;	// matmul/matmul-hw.mlir:28530:12
  wire [31:0]        _T_719;	// matmul/matmul-hw.mlir:28527:12
  wire               _T_720;	// matmul/matmul-hw.mlir:28524:12
  wire [31:0]        _T_721;	// matmul/matmul-hw.mlir:28521:12
  wire               _T_722;	// matmul/matmul-hw.mlir:28518:12
  wire [31:0]        _T_723;	// matmul/matmul-hw.mlir:28515:12
  wire               _T_724;	// matmul/matmul-hw.mlir:28512:12
  wire [31:0]        _T_725;	// matmul/matmul-hw.mlir:28509:12
  wire               _T_726;	// matmul/matmul-hw.mlir:28506:12
  wire [31:0]        _T_727;	// matmul/matmul-hw.mlir:28503:12
  wire               _T_728;	// matmul/matmul-hw.mlir:28500:12
  wire [31:0]        _T_729;	// matmul/matmul-hw.mlir:28497:12
  wire               _T_730;	// matmul/matmul-hw.mlir:28494:12
  wire [31:0]        _T_731;	// matmul/matmul-hw.mlir:28491:12
  wire               _T_732;	// matmul/matmul-hw.mlir:28488:12
  wire [31:0]        _T_733;	// matmul/matmul-hw.mlir:28485:12
  wire               _T_734;	// matmul/matmul-hw.mlir:28482:12
  wire [31:0]        _T_735;	// matmul/matmul-hw.mlir:28479:12
  wire               _T_736;	// matmul/matmul-hw.mlir:28476:12
  wire [31:0]        _T_737;	// matmul/matmul-hw.mlir:28473:12
  wire               _T_738;	// matmul/matmul-hw.mlir:28470:12
  wire [31:0]        _T_739;	// matmul/matmul-hw.mlir:28467:12
  wire               _T_740;	// matmul/matmul-hw.mlir:28464:12
  wire [31:0]        _T_741;	// matmul/matmul-hw.mlir:28461:12
  wire               _T_742;	// matmul/matmul-hw.mlir:28458:12
  wire [31:0]        _T_743;	// matmul/matmul-hw.mlir:28455:12
  wire               _T_744;	// matmul/matmul-hw.mlir:28452:12
  wire [31:0]        _T_745;	// matmul/matmul-hw.mlir:28449:12
  wire               _T_746;	// matmul/matmul-hw.mlir:28446:12
  wire [31:0]        _T_747;	// matmul/matmul-hw.mlir:28443:12
  wire               _T_748;	// matmul/matmul-hw.mlir:28440:12
  wire [31:0]        _T_749;	// matmul/matmul-hw.mlir:28437:12
  wire               _T_750;	// matmul/matmul-hw.mlir:28434:12
  wire [31:0]        _T_751;	// matmul/matmul-hw.mlir:28431:12
  wire               _T_752;	// matmul/matmul-hw.mlir:28428:12
  wire [31:0]        _T_753;	// matmul/matmul-hw.mlir:28425:12
  wire               _T_754;	// matmul/matmul-hw.mlir:28422:12
  wire [31:0]        _T_755;	// matmul/matmul-hw.mlir:28419:12
  wire               _T_756;	// matmul/matmul-hw.mlir:28416:12
  wire [31:0]        _T_757;	// matmul/matmul-hw.mlir:28413:12
  wire               _T_758;	// matmul/matmul-hw.mlir:28410:12
  wire [31:0]        _T_759;	// matmul/matmul-hw.mlir:28407:12
  wire               _T_760;	// matmul/matmul-hw.mlir:28404:12
  wire [31:0]        _T_761;	// matmul/matmul-hw.mlir:28401:12
  wire               _T_762;	// matmul/matmul-hw.mlir:28398:12
  wire [31:0]        _T_763;	// matmul/matmul-hw.mlir:28395:12
  wire               _T_764;	// matmul/matmul-hw.mlir:28392:12
  wire [31:0]        _T_765;	// matmul/matmul-hw.mlir:28389:12
  wire               _T_766;	// matmul/matmul-hw.mlir:28386:12
  wire [31:0]        _T_767;	// matmul/matmul-hw.mlir:28383:12
  wire               _T_768;	// matmul/matmul-hw.mlir:28380:12
  wire [31:0]        _T_769;	// matmul/matmul-hw.mlir:28377:12
  wire               _T_770;	// matmul/matmul-hw.mlir:28374:12
  wire [31:0]        _T_771;	// matmul/matmul-hw.mlir:28371:12
  wire               _T_772;	// matmul/matmul-hw.mlir:28368:12
  wire [31:0]        _T_773;	// matmul/matmul-hw.mlir:28365:12
  wire               _T_774;	// matmul/matmul-hw.mlir:28362:12
  wire [31:0]        _T_775;	// matmul/matmul-hw.mlir:28359:12
  wire               _T_776;	// matmul/matmul-hw.mlir:28356:12
  wire [31:0]        _T_777;	// matmul/matmul-hw.mlir:28353:12
  wire               _T_778;	// matmul/matmul-hw.mlir:28350:12
  wire [31:0]        _T_779;	// matmul/matmul-hw.mlir:28347:12
  wire               _T_780;	// matmul/matmul-hw.mlir:28344:12
  wire [31:0]        _T_781;	// matmul/matmul-hw.mlir:28341:12
  wire               _T_782;	// matmul/matmul-hw.mlir:28338:12
  wire [31:0]        _T_783;	// matmul/matmul-hw.mlir:28335:12
  wire               _T_784;	// matmul/matmul-hw.mlir:28332:12
  wire [31:0]        _T_785;	// matmul/matmul-hw.mlir:28329:12
  wire               _T_786;	// matmul/matmul-hw.mlir:28326:12
  wire [31:0]        _T_787;	// matmul/matmul-hw.mlir:28323:12
  wire               _T_788;	// matmul/matmul-hw.mlir:28320:12
  wire [31:0]        _T_789;	// matmul/matmul-hw.mlir:28317:12
  wire               _T_790;	// matmul/matmul-hw.mlir:28314:12
  wire [31:0]        _T_791;	// matmul/matmul-hw.mlir:28311:12
  wire               _T_792;	// matmul/matmul-hw.mlir:28308:12
  wire [31:0]        _T_793;	// matmul/matmul-hw.mlir:28305:12
  wire               _T_794;	// matmul/matmul-hw.mlir:28302:12
  wire [31:0]        _T_795;	// matmul/matmul-hw.mlir:28299:12
  wire               _T_796;	// matmul/matmul-hw.mlir:28296:12
  wire [31:0]        _T_797;	// matmul/matmul-hw.mlir:28293:12
  wire               _T_798;	// matmul/matmul-hw.mlir:28290:12
  wire [31:0]        _T_799;	// matmul/matmul-hw.mlir:28287:12
  wire               _T_800;	// matmul/matmul-hw.mlir:28284:12
  wire [31:0]        _T_801;	// matmul/matmul-hw.mlir:28281:12
  wire               _T_802;	// matmul/matmul-hw.mlir:28278:12
  wire [31:0]        _T_803;	// matmul/matmul-hw.mlir:28275:12
  wire               _T_804;	// matmul/matmul-hw.mlir:28272:12
  wire [31:0]        _T_805;	// matmul/matmul-hw.mlir:28269:12
  wire               _T_806;	// matmul/matmul-hw.mlir:28266:12
  wire [31:0]        _T_807;	// matmul/matmul-hw.mlir:28263:12
  wire               _T_808;	// matmul/matmul-hw.mlir:28260:12
  wire [31:0]        _T_809;	// matmul/matmul-hw.mlir:28257:12
  wire               _T_810;	// matmul/matmul-hw.mlir:28254:12
  wire [31:0]        _T_811;	// matmul/matmul-hw.mlir:28251:12
  wire               _T_812;	// matmul/matmul-hw.mlir:28248:12
  wire [31:0]        _T_813;	// matmul/matmul-hw.mlir:28245:12
  wire               _T_814;	// matmul/matmul-hw.mlir:28242:12
  wire [31:0]        _T_815;	// matmul/matmul-hw.mlir:28239:12
  wire               _T_816;	// matmul/matmul-hw.mlir:28236:12
  wire [31:0]        _T_817;	// matmul/matmul-hw.mlir:28233:12
  wire               _T_818;	// matmul/matmul-hw.mlir:28230:12
  wire [31:0]        _T_819;	// matmul/matmul-hw.mlir:28227:12
  wire               _T_820;	// matmul/matmul-hw.mlir:28224:12
  wire [31:0]        _T_821;	// matmul/matmul-hw.mlir:28221:12
  wire               _T_822;	// matmul/matmul-hw.mlir:28218:12
  wire [31:0]        _T_823;	// matmul/matmul-hw.mlir:28215:12
  wire               _T_824;	// matmul/matmul-hw.mlir:28212:12
  wire [31:0]        _T_825;	// matmul/matmul-hw.mlir:28209:12
  wire               _T_826;	// matmul/matmul-hw.mlir:28206:12
  wire [31:0]        _T_827;	// matmul/matmul-hw.mlir:28203:12
  wire               _T_828;	// matmul/matmul-hw.mlir:28200:12
  wire [31:0]        _T_829;	// matmul/matmul-hw.mlir:28197:12
  wire               _T_830;	// matmul/matmul-hw.mlir:28194:12
  wire [31:0]        _T_831;	// matmul/matmul-hw.mlir:28191:12
  wire               _T_832;	// matmul/matmul-hw.mlir:28188:12
  wire [31:0]        _T_833;	// matmul/matmul-hw.mlir:28185:12
  wire               _T_834;	// matmul/matmul-hw.mlir:28182:12
  wire [31:0]        _T_835;	// matmul/matmul-hw.mlir:28179:12
  wire               _T_836;	// matmul/matmul-hw.mlir:28176:12
  wire [31:0]        _T_837;	// matmul/matmul-hw.mlir:28173:12
  wire               _T_838;	// matmul/matmul-hw.mlir:28170:12
  wire [31:0]        _T_839;	// matmul/matmul-hw.mlir:28167:12
  wire               _T_840;	// matmul/matmul-hw.mlir:28164:12
  wire [31:0]        _T_841;	// matmul/matmul-hw.mlir:28161:12
  wire               _T_842;	// matmul/matmul-hw.mlir:28158:12
  wire [31:0]        _T_843;	// matmul/matmul-hw.mlir:28155:12
  wire               _T_844;	// matmul/matmul-hw.mlir:28152:12
  wire [31:0]        _T_845;	// matmul/matmul-hw.mlir:28149:12
  wire               _T_846;	// matmul/matmul-hw.mlir:28146:12
  wire [31:0]        _T_847;	// matmul/matmul-hw.mlir:28143:12
  wire               _T_848;	// matmul/matmul-hw.mlir:28140:12
  wire [31:0]        _T_849;	// matmul/matmul-hw.mlir:28137:12
  wire               _T_850;	// matmul/matmul-hw.mlir:28134:12
  wire [31:0]        _T_851;	// matmul/matmul-hw.mlir:28131:12
  wire               _T_852;	// matmul/matmul-hw.mlir:28128:12
  wire [31:0]        _T_853;	// matmul/matmul-hw.mlir:28125:12
  wire               _T_854;	// matmul/matmul-hw.mlir:28122:12
  wire [31:0]        _T_855;	// matmul/matmul-hw.mlir:28119:12
  wire               _T_856;	// matmul/matmul-hw.mlir:28116:12
  wire [31:0]        _T_857;	// matmul/matmul-hw.mlir:28113:12
  wire               _T_858;	// matmul/matmul-hw.mlir:28110:12
  wire [31:0]        _T_859;	// matmul/matmul-hw.mlir:28107:12
  wire               _T_860;	// matmul/matmul-hw.mlir:28104:12
  wire [31:0]        _T_861;	// matmul/matmul-hw.mlir:28101:12
  wire               _T_862;	// matmul/matmul-hw.mlir:28098:12
  wire [31:0]        _T_863;	// matmul/matmul-hw.mlir:28095:12
  wire               _T_864;	// matmul/matmul-hw.mlir:28092:12
  wire [31:0]        _T_865;	// matmul/matmul-hw.mlir:28089:12
  wire               _T_866;	// matmul/matmul-hw.mlir:28086:12
  wire [31:0]        _T_867;	// matmul/matmul-hw.mlir:28083:12
  wire               _T_868;	// matmul/matmul-hw.mlir:28080:12
  wire [31:0]        _T_869;	// matmul/matmul-hw.mlir:28077:12
  wire               _T_870;	// matmul/matmul-hw.mlir:28074:12
  wire [31:0]        _T_871;	// matmul/matmul-hw.mlir:28071:12
  wire               _T_872;	// matmul/matmul-hw.mlir:28068:12
  wire [31:0]        _T_873;	// matmul/matmul-hw.mlir:28065:12
  wire               _T_874;	// matmul/matmul-hw.mlir:28062:12
  wire [31:0]        _T_875;	// matmul/matmul-hw.mlir:28059:12
  wire               _T_876;	// matmul/matmul-hw.mlir:28056:12
  wire [31:0]        _T_877;	// matmul/matmul-hw.mlir:28053:12
  wire               _T_878;	// matmul/matmul-hw.mlir:28050:12
  wire [31:0]        _T_879;	// matmul/matmul-hw.mlir:28047:12
  wire               _T_880;	// matmul/matmul-hw.mlir:28044:12
  wire [31:0]        _T_881;	// matmul/matmul-hw.mlir:28041:12
  wire               _T_882;	// matmul/matmul-hw.mlir:28038:12
  wire [31:0]        _T_883;	// matmul/matmul-hw.mlir:28035:12
  wire               _T_884;	// matmul/matmul-hw.mlir:28032:12
  wire [31:0]        _T_885;	// matmul/matmul-hw.mlir:28029:12
  wire               _T_886;	// matmul/matmul-hw.mlir:28026:12
  wire [31:0]        _T_887;	// matmul/matmul-hw.mlir:28023:12
  wire               _T_888;	// matmul/matmul-hw.mlir:28020:12
  wire [31:0]        _T_889;	// matmul/matmul-hw.mlir:28017:12
  wire               _T_890;	// matmul/matmul-hw.mlir:28014:12
  wire [31:0]        _T_891;	// matmul/matmul-hw.mlir:28011:12
  wire               _T_892;	// matmul/matmul-hw.mlir:28008:12
  wire [31:0]        _T_893;	// matmul/matmul-hw.mlir:28005:12
  wire               _T_894;	// matmul/matmul-hw.mlir:28002:12
  wire [31:0]        _T_895;	// matmul/matmul-hw.mlir:27999:12
  wire               _T_896;	// matmul/matmul-hw.mlir:27996:12
  wire [31:0]        _T_897;	// matmul/matmul-hw.mlir:27993:12
  wire               _T_898;	// matmul/matmul-hw.mlir:27990:12
  wire [31:0]        _T_899;	// matmul/matmul-hw.mlir:27987:12
  wire               _T_900;	// matmul/matmul-hw.mlir:27984:12
  wire [31:0]        _T_901;	// matmul/matmul-hw.mlir:27981:12
  wire               _T_902;	// matmul/matmul-hw.mlir:27978:12
  wire [31:0]        _T_903;	// matmul/matmul-hw.mlir:27975:12
  wire               _T_904;	// matmul/matmul-hw.mlir:27972:12
  wire [31:0]        _T_905;	// matmul/matmul-hw.mlir:27969:12
  wire               _T_906;	// matmul/matmul-hw.mlir:27966:12
  wire [31:0]        _T_907;	// matmul/matmul-hw.mlir:27963:12
  wire               _T_908;	// matmul/matmul-hw.mlir:27960:12
  wire [31:0]        _T_909;	// matmul/matmul-hw.mlir:27957:12
  wire               _T_910;	// matmul/matmul-hw.mlir:27954:12
  wire [31:0]        _T_911;	// matmul/matmul-hw.mlir:27951:12
  wire               _T_912;	// matmul/matmul-hw.mlir:27948:12
  wire [31:0]        _T_913;	// matmul/matmul-hw.mlir:27945:12
  wire               _T_914;	// matmul/matmul-hw.mlir:27942:12
  wire [31:0]        _T_915;	// matmul/matmul-hw.mlir:27939:12
  wire               _T_916;	// matmul/matmul-hw.mlir:27936:12
  wire [31:0]        _T_917;	// matmul/matmul-hw.mlir:27933:12
  wire               _T_918;	// matmul/matmul-hw.mlir:27930:12
  wire [31:0]        _T_919;	// matmul/matmul-hw.mlir:27927:12
  wire               _T_920;	// matmul/matmul-hw.mlir:27924:12
  wire [31:0]        _T_921;	// matmul/matmul-hw.mlir:27921:12
  wire               _T_922;	// matmul/matmul-hw.mlir:27918:12
  wire [31:0]        _T_923;	// matmul/matmul-hw.mlir:27915:12
  wire               _T_924;	// matmul/matmul-hw.mlir:27912:12
  wire [31:0]        _T_925;	// matmul/matmul-hw.mlir:27909:12
  wire               _T_926;	// matmul/matmul-hw.mlir:27906:12
  wire [31:0]        _T_927;	// matmul/matmul-hw.mlir:27381:12
  wire               _T_928;	// matmul/matmul-hw.mlir:27378:12
  wire [3:0]         _T_929;	// matmul/matmul-hw.mlir:27375:12
  wire               _T_930;	// matmul/matmul-hw.mlir:27372:12
  wire [31:0]        _T_931;	// matmul/matmul-hw.mlir:27369:12
  wire               _T_932;	// matmul/matmul-hw.mlir:27366:12
  wire [3:0]         _T_933;	// matmul/matmul-hw.mlir:27363:12
  wire               _T_934;	// matmul/matmul-hw.mlir:27360:12
  wire [31:0]        _T_935;	// matmul/matmul-hw.mlir:27357:12
  wire               _T_936;	// matmul/matmul-hw.mlir:27354:12
  wire [3:0]         _T_937;	// matmul/matmul-hw.mlir:27351:12
  wire               _T_938;	// matmul/matmul-hw.mlir:27348:12
  wire [31:0]        _T_939;	// matmul/matmul-hw.mlir:27345:12
  wire               _T_940;	// matmul/matmul-hw.mlir:27342:12
  wire [3:0]         _T_941;	// matmul/matmul-hw.mlir:27339:12
  wire               _T_942;	// matmul/matmul-hw.mlir:27336:12
  wire [31:0]        _T_943;	// matmul/matmul-hw.mlir:27333:12
  wire               _T_944;	// matmul/matmul-hw.mlir:27330:12
  wire [3:0]         _T_945;	// matmul/matmul-hw.mlir:27327:11
  wire               _T_946;	// matmul/matmul-hw.mlir:27324:11
  wire [31:0]        _T_947;	// matmul/matmul-hw.mlir:27321:11
  wire               _T_948;	// matmul/matmul-hw.mlir:27318:11
  wire [3:0]         _T_949;	// matmul/matmul-hw.mlir:27315:11
  wire               _T_950;	// matmul/matmul-hw.mlir:27312:11
  wire [31:0]        _T_951;	// matmul/matmul-hw.mlir:27309:11
  wire               _T_952;	// matmul/matmul-hw.mlir:27306:11
  wire [3:0]         _T_953;	// matmul/matmul-hw.mlir:27303:11
  wire               _T_954;	// matmul/matmul-hw.mlir:27300:11
  wire [31:0]        _T_955;	// matmul/matmul-hw.mlir:27297:11
  wire               _T_956;	// matmul/matmul-hw.mlir:27294:11
  wire [3:0]         _T_957;	// matmul/matmul-hw.mlir:27291:11
  wire               _T_958;	// matmul/matmul-hw.mlir:27288:11
  wire [31:0]        _T_959;	// matmul/matmul-hw.mlir:27285:11
  wire               _T_960;	// matmul/matmul-hw.mlir:27282:11
  wire [3:0]         _T_961;	// matmul/matmul-hw.mlir:27279:11
  wire               _T_962;	// matmul/matmul-hw.mlir:27276:11
  wire [31:0]        _T_963;	// matmul/matmul-hw.mlir:27273:11
  wire               _T_964;	// matmul/matmul-hw.mlir:27270:11
  wire [3:0]         _T_965;	// matmul/matmul-hw.mlir:27267:11
  wire               _T_966;	// matmul/matmul-hw.mlir:27264:11
  wire [31:0]        _T_967;	// matmul/matmul-hw.mlir:27261:11
  wire               _T_968;	// matmul/matmul-hw.mlir:27258:11
  wire [3:0]         _T_969;	// matmul/matmul-hw.mlir:27255:11
  wire               _T_970;	// matmul/matmul-hw.mlir:27252:11
  wire [31:0]        _T_971;	// matmul/matmul-hw.mlir:27249:11
  wire               _T_972;	// matmul/matmul-hw.mlir:27246:11
  wire [3:0]         _T_973;	// matmul/matmul-hw.mlir:27243:11
  wire               _T_974;	// matmul/matmul-hw.mlir:27240:11
  wire [31:0]        _T_975;	// matmul/matmul-hw.mlir:27237:11
  wire               _T_976;	// matmul/matmul-hw.mlir:27234:11
  wire [3:0]         _T_977;	// matmul/matmul-hw.mlir:27231:11
  wire               _T_978;	// matmul/matmul-hw.mlir:27228:11
  wire [31:0]        _T_979;	// matmul/matmul-hw.mlir:27225:11
  wire               _T_980;	// matmul/matmul-hw.mlir:27222:11
  wire [3:0]         _T_981;	// matmul/matmul-hw.mlir:27219:11
  wire               _T_982;	// matmul/matmul-hw.mlir:27216:11
  wire [31:0]        _T_983;	// matmul/matmul-hw.mlir:27213:11
  wire               _T_984;	// matmul/matmul-hw.mlir:27210:11
  wire [3:0]         _T_985;	// matmul/matmul-hw.mlir:27207:11
  wire               _T_986;	// matmul/matmul-hw.mlir:27204:11
  wire [31:0]        _T_987;	// matmul/matmul-hw.mlir:27201:11
  wire               _T_988;	// matmul/matmul-hw.mlir:27198:11
  wire [3:0]         _T_989;	// matmul/matmul-hw.mlir:27195:11
  wire               _T_990;	// matmul/matmul-hw.mlir:27192:10
  wire [15:0]        writeC_inst0_Cr_p0_addr_en;	// matmul/matmul-hw.mlir:31431:209
  wire [15:0][3:0]   writeC_inst0_Cr_p0_addr_data;	// matmul/matmul-hw.mlir:31431:209
  wire [15:0]        writeC_inst0_Cr_p0_rd_en;	// matmul/matmul-hw.mlir:31431:209
  wire               writeC_inst0_Co_p0_addr_en;	// matmul/matmul-hw.mlir:31431:209
  wire [7:0]         writeC_inst0_Co_p0_addr_data;	// matmul/matmul-hw.mlir:31431:209
  wire               writeC_inst0_Co_p0_wr_en;	// matmul/matmul-hw.mlir:31431:209
  wire [31:0]        writeC_inst0_Co_p0_wr_data;	// matmul/matmul-hw.mlir:31431:209
  wire [15:0]        kernel_inst0_A_p0_addr_en;	// matmul/matmul-hw.mlir:31195:228
  wire [15:0][3:0]   kernel_inst0_A_p0_addr_data;	// matmul/matmul-hw.mlir:31195:228
  wire [15:0]        kernel_inst0_A_p0_rd_en;	// matmul/matmul-hw.mlir:31195:228
  wire [255:0]       kernel_inst0_B_p0_rd_en;	// matmul/matmul-hw.mlir:31195:228
  wire [15:0]        kernel_inst0_C_p0_addr_en;	// matmul/matmul-hw.mlir:31195:228
  wire [15:0][3:0]   kernel_inst0_C_p0_addr_data;	// matmul/matmul-hw.mlir:31195:228
  wire [15:0]        kernel_inst0_C_p0_wr_en;	// matmul/matmul-hw.mlir:31195:228
  wire [15:0][31:0]  kernel_inst0_C_p0_wr_data;	// matmul/matmul-hw.mlir:31195:228
  wire               readB_inst0_Bi_p0_addr_en;	// matmul/matmul-hw.mlir:29440:165
  wire [7:0]         readB_inst0_Bi_p0_addr_data;	// matmul/matmul-hw.mlir:29440:165
  wire               readB_inst0_Bi_p0_rd_en;	// matmul/matmul-hw.mlir:29440:165
  wire [255:0]       readB_inst0_Bw_p0_wr_en;	// matmul/matmul-hw.mlir:29440:165
  wire [255:0][31:0] readB_inst0_Bw_p0_wr_data;	// matmul/matmul-hw.mlir:29440:165
  wire               readB_inst0_t_done;	// matmul/matmul-hw.mlir:29440:165
  wire               readA_inst0_Ai_p0_addr_en;	// matmul/matmul-hw.mlir:27382:202
  wire [7:0]         readA_inst0_Ai_p0_addr_data;	// matmul/matmul-hw.mlir:27382:202
  wire               readA_inst0_Ai_p0_rd_en;	// matmul/matmul-hw.mlir:27382:202
  wire [15:0]        readA_inst0_Aw_p0_addr_en;	// matmul/matmul-hw.mlir:27382:202
  wire [15:0][3:0]   readA_inst0_Aw_p0_addr_data;	// matmul/matmul-hw.mlir:27382:202
  wire [15:0]        readA_inst0_Aw_p0_wr_en;	// matmul/matmul-hw.mlir:27382:202
  wire [15:0][31:0]  readA_inst0_Aw_p0_wr_data;	// matmul/matmul-hw.mlir:27382:202
  wire [31:0]        C_bank15_p0_rd_data;	// matmul/matmul-hw.mlir:27114:28
  wire [31:0]        C_bank14_p0_rd_data;	// matmul/matmul-hw.mlir:27113:28
  wire [31:0]        C_bank13_p0_rd_data;	// matmul/matmul-hw.mlir:27112:28
  wire [31:0]        C_bank12_p0_rd_data;	// matmul/matmul-hw.mlir:27111:28
  wire [31:0]        C_bank11_p0_rd_data;	// matmul/matmul-hw.mlir:27110:28
  wire [31:0]        C_bank10_p0_rd_data;	// matmul/matmul-hw.mlir:27109:28
  wire [31:0]        C_bank9_p0_rd_data;	// matmul/matmul-hw.mlir:27108:27
  wire [31:0]        C_bank8_p0_rd_data;	// matmul/matmul-hw.mlir:27107:27
  wire [31:0]        C_bank7_p0_rd_data;	// matmul/matmul-hw.mlir:27106:27
  wire [31:0]        C_bank6_p0_rd_data;	// matmul/matmul-hw.mlir:27105:27
  wire [31:0]        C_bank5_p0_rd_data;	// matmul/matmul-hw.mlir:27104:27
  wire [31:0]        C_bank4_p0_rd_data;	// matmul/matmul-hw.mlir:27103:27
  wire [31:0]        C_bank3_p0_rd_data;	// matmul/matmul-hw.mlir:27102:27
  wire [31:0]        C_bank2_p0_rd_data;	// matmul/matmul-hw.mlir:27101:27
  wire [31:0]        C_bank1_p0_rd_data;	// matmul/matmul-hw.mlir:27100:27
  wire [31:0]        C_bank0_p0_rd_data;	// matmul/matmul-hw.mlir:27099:27
  wire [31:0]        B_bank255_p0_rd_data;	// matmul/matmul-hw.mlir:26970:29
  wire [31:0]        B_bank254_p0_rd_data;	// matmul/matmul-hw.mlir:26969:29
  wire [31:0]        B_bank253_p0_rd_data;	// matmul/matmul-hw.mlir:26968:29
  wire [31:0]        B_bank252_p0_rd_data;	// matmul/matmul-hw.mlir:26967:29
  wire [31:0]        B_bank251_p0_rd_data;	// matmul/matmul-hw.mlir:26966:29
  wire [31:0]        B_bank250_p0_rd_data;	// matmul/matmul-hw.mlir:26965:29
  wire [31:0]        B_bank249_p0_rd_data;	// matmul/matmul-hw.mlir:26964:29
  wire [31:0]        B_bank248_p0_rd_data;	// matmul/matmul-hw.mlir:26963:29
  wire [31:0]        B_bank247_p0_rd_data;	// matmul/matmul-hw.mlir:26962:29
  wire [31:0]        B_bank246_p0_rd_data;	// matmul/matmul-hw.mlir:26961:29
  wire [31:0]        B_bank245_p0_rd_data;	// matmul/matmul-hw.mlir:26960:29
  wire [31:0]        B_bank244_p0_rd_data;	// matmul/matmul-hw.mlir:26959:29
  wire [31:0]        B_bank243_p0_rd_data;	// matmul/matmul-hw.mlir:26958:29
  wire [31:0]        B_bank242_p0_rd_data;	// matmul/matmul-hw.mlir:26957:29
  wire [31:0]        B_bank241_p0_rd_data;	// matmul/matmul-hw.mlir:26956:29
  wire [31:0]        B_bank240_p0_rd_data;	// matmul/matmul-hw.mlir:26955:29
  wire [31:0]        B_bank239_p0_rd_data;	// matmul/matmul-hw.mlir:26954:29
  wire [31:0]        B_bank238_p0_rd_data;	// matmul/matmul-hw.mlir:26953:29
  wire [31:0]        B_bank237_p0_rd_data;	// matmul/matmul-hw.mlir:26952:29
  wire [31:0]        B_bank236_p0_rd_data;	// matmul/matmul-hw.mlir:26951:29
  wire [31:0]        B_bank235_p0_rd_data;	// matmul/matmul-hw.mlir:26950:29
  wire [31:0]        B_bank234_p0_rd_data;	// matmul/matmul-hw.mlir:26949:29
  wire [31:0]        B_bank233_p0_rd_data;	// matmul/matmul-hw.mlir:26948:29
  wire [31:0]        B_bank232_p0_rd_data;	// matmul/matmul-hw.mlir:26947:29
  wire [31:0]        B_bank231_p0_rd_data;	// matmul/matmul-hw.mlir:26946:29
  wire [31:0]        B_bank230_p0_rd_data;	// matmul/matmul-hw.mlir:26945:29
  wire [31:0]        B_bank229_p0_rd_data;	// matmul/matmul-hw.mlir:26944:29
  wire [31:0]        B_bank228_p0_rd_data;	// matmul/matmul-hw.mlir:26943:29
  wire [31:0]        B_bank227_p0_rd_data;	// matmul/matmul-hw.mlir:26942:29
  wire [31:0]        B_bank226_p0_rd_data;	// matmul/matmul-hw.mlir:26941:29
  wire [31:0]        B_bank225_p0_rd_data;	// matmul/matmul-hw.mlir:26940:29
  wire [31:0]        B_bank224_p0_rd_data;	// matmul/matmul-hw.mlir:26939:29
  wire [31:0]        B_bank223_p0_rd_data;	// matmul/matmul-hw.mlir:26938:29
  wire [31:0]        B_bank222_p0_rd_data;	// matmul/matmul-hw.mlir:26937:29
  wire [31:0]        B_bank221_p0_rd_data;	// matmul/matmul-hw.mlir:26936:29
  wire [31:0]        B_bank220_p0_rd_data;	// matmul/matmul-hw.mlir:26935:29
  wire [31:0]        B_bank219_p0_rd_data;	// matmul/matmul-hw.mlir:26934:29
  wire [31:0]        B_bank218_p0_rd_data;	// matmul/matmul-hw.mlir:26933:29
  wire [31:0]        B_bank217_p0_rd_data;	// matmul/matmul-hw.mlir:26932:29
  wire [31:0]        B_bank216_p0_rd_data;	// matmul/matmul-hw.mlir:26931:29
  wire [31:0]        B_bank215_p0_rd_data;	// matmul/matmul-hw.mlir:26930:29
  wire [31:0]        B_bank214_p0_rd_data;	// matmul/matmul-hw.mlir:26929:29
  wire [31:0]        B_bank213_p0_rd_data;	// matmul/matmul-hw.mlir:26928:29
  wire [31:0]        B_bank212_p0_rd_data;	// matmul/matmul-hw.mlir:26927:29
  wire [31:0]        B_bank211_p0_rd_data;	// matmul/matmul-hw.mlir:26926:29
  wire [31:0]        B_bank210_p0_rd_data;	// matmul/matmul-hw.mlir:26925:29
  wire [31:0]        B_bank209_p0_rd_data;	// matmul/matmul-hw.mlir:26924:29
  wire [31:0]        B_bank208_p0_rd_data;	// matmul/matmul-hw.mlir:26923:29
  wire [31:0]        B_bank207_p0_rd_data;	// matmul/matmul-hw.mlir:26922:29
  wire [31:0]        B_bank206_p0_rd_data;	// matmul/matmul-hw.mlir:26921:29
  wire [31:0]        B_bank205_p0_rd_data;	// matmul/matmul-hw.mlir:26920:29
  wire [31:0]        B_bank204_p0_rd_data;	// matmul/matmul-hw.mlir:26919:29
  wire [31:0]        B_bank203_p0_rd_data;	// matmul/matmul-hw.mlir:26918:29
  wire [31:0]        B_bank202_p0_rd_data;	// matmul/matmul-hw.mlir:26917:29
  wire [31:0]        B_bank201_p0_rd_data;	// matmul/matmul-hw.mlir:26916:29
  wire [31:0]        B_bank200_p0_rd_data;	// matmul/matmul-hw.mlir:26915:29
  wire [31:0]        B_bank199_p0_rd_data;	// matmul/matmul-hw.mlir:26914:29
  wire [31:0]        B_bank198_p0_rd_data;	// matmul/matmul-hw.mlir:26913:29
  wire [31:0]        B_bank197_p0_rd_data;	// matmul/matmul-hw.mlir:26912:29
  wire [31:0]        B_bank196_p0_rd_data;	// matmul/matmul-hw.mlir:26911:29
  wire [31:0]        B_bank195_p0_rd_data;	// matmul/matmul-hw.mlir:26910:29
  wire [31:0]        B_bank194_p0_rd_data;	// matmul/matmul-hw.mlir:26909:29
  wire [31:0]        B_bank193_p0_rd_data;	// matmul/matmul-hw.mlir:26908:29
  wire [31:0]        B_bank192_p0_rd_data;	// matmul/matmul-hw.mlir:26907:29
  wire [31:0]        B_bank191_p0_rd_data;	// matmul/matmul-hw.mlir:26906:29
  wire [31:0]        B_bank190_p0_rd_data;	// matmul/matmul-hw.mlir:26905:29
  wire [31:0]        B_bank189_p0_rd_data;	// matmul/matmul-hw.mlir:26904:29
  wire [31:0]        B_bank188_p0_rd_data;	// matmul/matmul-hw.mlir:26903:29
  wire [31:0]        B_bank187_p0_rd_data;	// matmul/matmul-hw.mlir:26902:29
  wire [31:0]        B_bank186_p0_rd_data;	// matmul/matmul-hw.mlir:26901:29
  wire [31:0]        B_bank185_p0_rd_data;	// matmul/matmul-hw.mlir:26900:29
  wire [31:0]        B_bank184_p0_rd_data;	// matmul/matmul-hw.mlir:26899:29
  wire [31:0]        B_bank183_p0_rd_data;	// matmul/matmul-hw.mlir:26898:29
  wire [31:0]        B_bank182_p0_rd_data;	// matmul/matmul-hw.mlir:26897:29
  wire [31:0]        B_bank181_p0_rd_data;	// matmul/matmul-hw.mlir:26896:29
  wire [31:0]        B_bank180_p0_rd_data;	// matmul/matmul-hw.mlir:26895:29
  wire [31:0]        B_bank179_p0_rd_data;	// matmul/matmul-hw.mlir:26894:29
  wire [31:0]        B_bank178_p0_rd_data;	// matmul/matmul-hw.mlir:26893:29
  wire [31:0]        B_bank177_p0_rd_data;	// matmul/matmul-hw.mlir:26892:29
  wire [31:0]        B_bank176_p0_rd_data;	// matmul/matmul-hw.mlir:26891:29
  wire [31:0]        B_bank175_p0_rd_data;	// matmul/matmul-hw.mlir:26890:29
  wire [31:0]        B_bank174_p0_rd_data;	// matmul/matmul-hw.mlir:26889:29
  wire [31:0]        B_bank173_p0_rd_data;	// matmul/matmul-hw.mlir:26888:29
  wire [31:0]        B_bank172_p0_rd_data;	// matmul/matmul-hw.mlir:26887:29
  wire [31:0]        B_bank171_p0_rd_data;	// matmul/matmul-hw.mlir:26886:29
  wire [31:0]        B_bank170_p0_rd_data;	// matmul/matmul-hw.mlir:26885:29
  wire [31:0]        B_bank169_p0_rd_data;	// matmul/matmul-hw.mlir:26884:29
  wire [31:0]        B_bank168_p0_rd_data;	// matmul/matmul-hw.mlir:26883:29
  wire [31:0]        B_bank167_p0_rd_data;	// matmul/matmul-hw.mlir:26882:29
  wire [31:0]        B_bank166_p0_rd_data;	// matmul/matmul-hw.mlir:26881:29
  wire [31:0]        B_bank165_p0_rd_data;	// matmul/matmul-hw.mlir:26880:29
  wire [31:0]        B_bank164_p0_rd_data;	// matmul/matmul-hw.mlir:26879:29
  wire [31:0]        B_bank163_p0_rd_data;	// matmul/matmul-hw.mlir:26878:29
  wire [31:0]        B_bank162_p0_rd_data;	// matmul/matmul-hw.mlir:26877:29
  wire [31:0]        B_bank161_p0_rd_data;	// matmul/matmul-hw.mlir:26876:29
  wire [31:0]        B_bank160_p0_rd_data;	// matmul/matmul-hw.mlir:26875:29
  wire [31:0]        B_bank159_p0_rd_data;	// matmul/matmul-hw.mlir:26874:29
  wire [31:0]        B_bank158_p0_rd_data;	// matmul/matmul-hw.mlir:26873:29
  wire [31:0]        B_bank157_p0_rd_data;	// matmul/matmul-hw.mlir:26872:29
  wire [31:0]        B_bank156_p0_rd_data;	// matmul/matmul-hw.mlir:26871:29
  wire [31:0]        B_bank155_p0_rd_data;	// matmul/matmul-hw.mlir:26870:29
  wire [31:0]        B_bank154_p0_rd_data;	// matmul/matmul-hw.mlir:26869:29
  wire [31:0]        B_bank153_p0_rd_data;	// matmul/matmul-hw.mlir:26868:29
  wire [31:0]        B_bank152_p0_rd_data;	// matmul/matmul-hw.mlir:26867:29
  wire [31:0]        B_bank151_p0_rd_data;	// matmul/matmul-hw.mlir:26866:29
  wire [31:0]        B_bank150_p0_rd_data;	// matmul/matmul-hw.mlir:26865:29
  wire [31:0]        B_bank149_p0_rd_data;	// matmul/matmul-hw.mlir:26864:29
  wire [31:0]        B_bank148_p0_rd_data;	// matmul/matmul-hw.mlir:26863:29
  wire [31:0]        B_bank147_p0_rd_data;	// matmul/matmul-hw.mlir:26862:29
  wire [31:0]        B_bank146_p0_rd_data;	// matmul/matmul-hw.mlir:26861:29
  wire [31:0]        B_bank145_p0_rd_data;	// matmul/matmul-hw.mlir:26860:29
  wire [31:0]        B_bank144_p0_rd_data;	// matmul/matmul-hw.mlir:26859:29
  wire [31:0]        B_bank143_p0_rd_data;	// matmul/matmul-hw.mlir:26858:29
  wire [31:0]        B_bank142_p0_rd_data;	// matmul/matmul-hw.mlir:26857:29
  wire [31:0]        B_bank141_p0_rd_data;	// matmul/matmul-hw.mlir:26856:29
  wire [31:0]        B_bank140_p0_rd_data;	// matmul/matmul-hw.mlir:26855:29
  wire [31:0]        B_bank139_p0_rd_data;	// matmul/matmul-hw.mlir:26854:29
  wire [31:0]        B_bank138_p0_rd_data;	// matmul/matmul-hw.mlir:26853:29
  wire [31:0]        B_bank137_p0_rd_data;	// matmul/matmul-hw.mlir:26852:29
  wire [31:0]        B_bank136_p0_rd_data;	// matmul/matmul-hw.mlir:26851:29
  wire [31:0]        B_bank135_p0_rd_data;	// matmul/matmul-hw.mlir:26850:29
  wire [31:0]        B_bank134_p0_rd_data;	// matmul/matmul-hw.mlir:26849:29
  wire [31:0]        B_bank133_p0_rd_data;	// matmul/matmul-hw.mlir:26848:29
  wire [31:0]        B_bank132_p0_rd_data;	// matmul/matmul-hw.mlir:26847:29
  wire [31:0]        B_bank131_p0_rd_data;	// matmul/matmul-hw.mlir:26846:29
  wire [31:0]        B_bank130_p0_rd_data;	// matmul/matmul-hw.mlir:26845:29
  wire [31:0]        B_bank129_p0_rd_data;	// matmul/matmul-hw.mlir:26844:29
  wire [31:0]        B_bank128_p0_rd_data;	// matmul/matmul-hw.mlir:26843:29
  wire [31:0]        B_bank127_p0_rd_data;	// matmul/matmul-hw.mlir:26842:29
  wire [31:0]        B_bank126_p0_rd_data;	// matmul/matmul-hw.mlir:26841:29
  wire [31:0]        B_bank125_p0_rd_data;	// matmul/matmul-hw.mlir:26840:29
  wire [31:0]        B_bank124_p0_rd_data;	// matmul/matmul-hw.mlir:26839:29
  wire [31:0]        B_bank123_p0_rd_data;	// matmul/matmul-hw.mlir:26838:29
  wire [31:0]        B_bank122_p0_rd_data;	// matmul/matmul-hw.mlir:26837:29
  wire [31:0]        B_bank121_p0_rd_data;	// matmul/matmul-hw.mlir:26836:29
  wire [31:0]        B_bank120_p0_rd_data;	// matmul/matmul-hw.mlir:26835:29
  wire [31:0]        B_bank119_p0_rd_data;	// matmul/matmul-hw.mlir:26834:29
  wire [31:0]        B_bank118_p0_rd_data;	// matmul/matmul-hw.mlir:26833:29
  wire [31:0]        B_bank117_p0_rd_data;	// matmul/matmul-hw.mlir:26832:29
  wire [31:0]        B_bank116_p0_rd_data;	// matmul/matmul-hw.mlir:26831:29
  wire [31:0]        B_bank115_p0_rd_data;	// matmul/matmul-hw.mlir:26830:29
  wire [31:0]        B_bank114_p0_rd_data;	// matmul/matmul-hw.mlir:26829:29
  wire [31:0]        B_bank113_p0_rd_data;	// matmul/matmul-hw.mlir:26828:29
  wire [31:0]        B_bank112_p0_rd_data;	// matmul/matmul-hw.mlir:26827:29
  wire [31:0]        B_bank111_p0_rd_data;	// matmul/matmul-hw.mlir:26826:29
  wire [31:0]        B_bank110_p0_rd_data;	// matmul/matmul-hw.mlir:26825:29
  wire [31:0]        B_bank109_p0_rd_data;	// matmul/matmul-hw.mlir:26824:29
  wire [31:0]        B_bank108_p0_rd_data;	// matmul/matmul-hw.mlir:26823:29
  wire [31:0]        B_bank107_p0_rd_data;	// matmul/matmul-hw.mlir:26822:29
  wire [31:0]        B_bank106_p0_rd_data;	// matmul/matmul-hw.mlir:26821:29
  wire [31:0]        B_bank105_p0_rd_data;	// matmul/matmul-hw.mlir:26820:29
  wire [31:0]        B_bank104_p0_rd_data;	// matmul/matmul-hw.mlir:26819:29
  wire [31:0]        B_bank103_p0_rd_data;	// matmul/matmul-hw.mlir:26818:29
  wire [31:0]        B_bank102_p0_rd_data;	// matmul/matmul-hw.mlir:26817:29
  wire [31:0]        B_bank101_p0_rd_data;	// matmul/matmul-hw.mlir:26816:29
  wire [31:0]        B_bank100_p0_rd_data;	// matmul/matmul-hw.mlir:26815:29
  wire [31:0]        B_bank99_p0_rd_data;	// matmul/matmul-hw.mlir:26814:28
  wire [31:0]        B_bank98_p0_rd_data;	// matmul/matmul-hw.mlir:26813:28
  wire [31:0]        B_bank97_p0_rd_data;	// matmul/matmul-hw.mlir:26812:28
  wire [31:0]        B_bank96_p0_rd_data;	// matmul/matmul-hw.mlir:26811:28
  wire [31:0]        B_bank95_p0_rd_data;	// matmul/matmul-hw.mlir:26810:28
  wire [31:0]        B_bank94_p0_rd_data;	// matmul/matmul-hw.mlir:26809:28
  wire [31:0]        B_bank93_p0_rd_data;	// matmul/matmul-hw.mlir:26808:28
  wire [31:0]        B_bank92_p0_rd_data;	// matmul/matmul-hw.mlir:26807:28
  wire [31:0]        B_bank91_p0_rd_data;	// matmul/matmul-hw.mlir:26806:28
  wire [31:0]        B_bank90_p0_rd_data;	// matmul/matmul-hw.mlir:26805:28
  wire [31:0]        B_bank89_p0_rd_data;	// matmul/matmul-hw.mlir:26804:28
  wire [31:0]        B_bank88_p0_rd_data;	// matmul/matmul-hw.mlir:26803:28
  wire [31:0]        B_bank87_p0_rd_data;	// matmul/matmul-hw.mlir:26802:28
  wire [31:0]        B_bank86_p0_rd_data;	// matmul/matmul-hw.mlir:26801:28
  wire [31:0]        B_bank85_p0_rd_data;	// matmul/matmul-hw.mlir:26800:28
  wire [31:0]        B_bank84_p0_rd_data;	// matmul/matmul-hw.mlir:26799:28
  wire [31:0]        B_bank83_p0_rd_data;	// matmul/matmul-hw.mlir:26798:28
  wire [31:0]        B_bank82_p0_rd_data;	// matmul/matmul-hw.mlir:26797:28
  wire [31:0]        B_bank81_p0_rd_data;	// matmul/matmul-hw.mlir:26796:28
  wire [31:0]        B_bank80_p0_rd_data;	// matmul/matmul-hw.mlir:26795:28
  wire [31:0]        B_bank79_p0_rd_data;	// matmul/matmul-hw.mlir:26794:28
  wire [31:0]        B_bank78_p0_rd_data;	// matmul/matmul-hw.mlir:26793:28
  wire [31:0]        B_bank77_p0_rd_data;	// matmul/matmul-hw.mlir:26792:28
  wire [31:0]        B_bank76_p0_rd_data;	// matmul/matmul-hw.mlir:26791:28
  wire [31:0]        B_bank75_p0_rd_data;	// matmul/matmul-hw.mlir:26790:28
  wire [31:0]        B_bank74_p0_rd_data;	// matmul/matmul-hw.mlir:26789:28
  wire [31:0]        B_bank73_p0_rd_data;	// matmul/matmul-hw.mlir:26788:28
  wire [31:0]        B_bank72_p0_rd_data;	// matmul/matmul-hw.mlir:26787:28
  wire [31:0]        B_bank71_p0_rd_data;	// matmul/matmul-hw.mlir:26786:28
  wire [31:0]        B_bank70_p0_rd_data;	// matmul/matmul-hw.mlir:26785:28
  wire [31:0]        B_bank69_p0_rd_data;	// matmul/matmul-hw.mlir:26784:28
  wire [31:0]        B_bank68_p0_rd_data;	// matmul/matmul-hw.mlir:26783:28
  wire [31:0]        B_bank67_p0_rd_data;	// matmul/matmul-hw.mlir:26782:28
  wire [31:0]        B_bank66_p0_rd_data;	// matmul/matmul-hw.mlir:26781:28
  wire [31:0]        B_bank65_p0_rd_data;	// matmul/matmul-hw.mlir:26780:28
  wire [31:0]        B_bank64_p0_rd_data;	// matmul/matmul-hw.mlir:26779:28
  wire [31:0]        B_bank63_p0_rd_data;	// matmul/matmul-hw.mlir:26778:28
  wire [31:0]        B_bank62_p0_rd_data;	// matmul/matmul-hw.mlir:26777:28
  wire [31:0]        B_bank61_p0_rd_data;	// matmul/matmul-hw.mlir:26776:28
  wire [31:0]        B_bank60_p0_rd_data;	// matmul/matmul-hw.mlir:26775:28
  wire [31:0]        B_bank59_p0_rd_data;	// matmul/matmul-hw.mlir:26774:28
  wire [31:0]        B_bank58_p0_rd_data;	// matmul/matmul-hw.mlir:26773:28
  wire [31:0]        B_bank57_p0_rd_data;	// matmul/matmul-hw.mlir:26772:28
  wire [31:0]        B_bank56_p0_rd_data;	// matmul/matmul-hw.mlir:26771:28
  wire [31:0]        B_bank55_p0_rd_data;	// matmul/matmul-hw.mlir:26770:28
  wire [31:0]        B_bank54_p0_rd_data;	// matmul/matmul-hw.mlir:26769:28
  wire [31:0]        B_bank53_p0_rd_data;	// matmul/matmul-hw.mlir:26768:28
  wire [31:0]        B_bank52_p0_rd_data;	// matmul/matmul-hw.mlir:26767:28
  wire [31:0]        B_bank51_p0_rd_data;	// matmul/matmul-hw.mlir:26766:28
  wire [31:0]        B_bank50_p0_rd_data;	// matmul/matmul-hw.mlir:26765:28
  wire [31:0]        B_bank49_p0_rd_data;	// matmul/matmul-hw.mlir:26764:28
  wire [31:0]        B_bank48_p0_rd_data;	// matmul/matmul-hw.mlir:26763:28
  wire [31:0]        B_bank47_p0_rd_data;	// matmul/matmul-hw.mlir:26762:28
  wire [31:0]        B_bank46_p0_rd_data;	// matmul/matmul-hw.mlir:26761:28
  wire [31:0]        B_bank45_p0_rd_data;	// matmul/matmul-hw.mlir:26760:28
  wire [31:0]        B_bank44_p0_rd_data;	// matmul/matmul-hw.mlir:26759:28
  wire [31:0]        B_bank43_p0_rd_data;	// matmul/matmul-hw.mlir:26758:28
  wire [31:0]        B_bank42_p0_rd_data;	// matmul/matmul-hw.mlir:26757:28
  wire [31:0]        B_bank41_p0_rd_data;	// matmul/matmul-hw.mlir:26756:28
  wire [31:0]        B_bank40_p0_rd_data;	// matmul/matmul-hw.mlir:26755:28
  wire [31:0]        B_bank39_p0_rd_data;	// matmul/matmul-hw.mlir:26754:28
  wire [31:0]        B_bank38_p0_rd_data;	// matmul/matmul-hw.mlir:26753:28
  wire [31:0]        B_bank37_p0_rd_data;	// matmul/matmul-hw.mlir:26752:28
  wire [31:0]        B_bank36_p0_rd_data;	// matmul/matmul-hw.mlir:26751:28
  wire [31:0]        B_bank35_p0_rd_data;	// matmul/matmul-hw.mlir:26750:28
  wire [31:0]        B_bank34_p0_rd_data;	// matmul/matmul-hw.mlir:26749:28
  wire [31:0]        B_bank33_p0_rd_data;	// matmul/matmul-hw.mlir:26748:28
  wire [31:0]        B_bank32_p0_rd_data;	// matmul/matmul-hw.mlir:26747:28
  wire [31:0]        B_bank31_p0_rd_data;	// matmul/matmul-hw.mlir:26746:28
  wire [31:0]        B_bank30_p0_rd_data;	// matmul/matmul-hw.mlir:26745:28
  wire [31:0]        B_bank29_p0_rd_data;	// matmul/matmul-hw.mlir:26744:28
  wire [31:0]        B_bank28_p0_rd_data;	// matmul/matmul-hw.mlir:26743:28
  wire [31:0]        B_bank27_p0_rd_data;	// matmul/matmul-hw.mlir:26742:28
  wire [31:0]        B_bank26_p0_rd_data;	// matmul/matmul-hw.mlir:26741:28
  wire [31:0]        B_bank25_p0_rd_data;	// matmul/matmul-hw.mlir:26740:28
  wire [31:0]        B_bank24_p0_rd_data;	// matmul/matmul-hw.mlir:26739:28
  wire [31:0]        B_bank23_p0_rd_data;	// matmul/matmul-hw.mlir:26738:28
  wire [31:0]        B_bank22_p0_rd_data;	// matmul/matmul-hw.mlir:26737:28
  wire [31:0]        B_bank21_p0_rd_data;	// matmul/matmul-hw.mlir:26736:28
  wire [31:0]        B_bank20_p0_rd_data;	// matmul/matmul-hw.mlir:26735:28
  wire [31:0]        B_bank19_p0_rd_data;	// matmul/matmul-hw.mlir:26734:28
  wire [31:0]        B_bank18_p0_rd_data;	// matmul/matmul-hw.mlir:26733:28
  wire [31:0]        B_bank17_p0_rd_data;	// matmul/matmul-hw.mlir:26732:28
  wire [31:0]        B_bank16_p0_rd_data;	// matmul/matmul-hw.mlir:26731:28
  wire [31:0]        B_bank15_p0_rd_data;	// matmul/matmul-hw.mlir:26730:28
  wire [31:0]        B_bank14_p0_rd_data;	// matmul/matmul-hw.mlir:26729:28
  wire [31:0]        B_bank13_p0_rd_data;	// matmul/matmul-hw.mlir:26728:28
  wire [31:0]        B_bank12_p0_rd_data;	// matmul/matmul-hw.mlir:26727:28
  wire [31:0]        B_bank11_p0_rd_data;	// matmul/matmul-hw.mlir:26726:28
  wire [31:0]        B_bank10_p0_rd_data;	// matmul/matmul-hw.mlir:26725:28
  wire [31:0]        B_bank9_p0_rd_data;	// matmul/matmul-hw.mlir:26724:27
  wire [31:0]        B_bank8_p0_rd_data;	// matmul/matmul-hw.mlir:26723:27
  wire [31:0]        B_bank7_p0_rd_data;	// matmul/matmul-hw.mlir:26722:27
  wire [31:0]        B_bank6_p0_rd_data;	// matmul/matmul-hw.mlir:26721:27
  wire [31:0]        B_bank5_p0_rd_data;	// matmul/matmul-hw.mlir:26720:27
  wire [31:0]        B_bank4_p0_rd_data;	// matmul/matmul-hw.mlir:26719:27
  wire [31:0]        B_bank3_p0_rd_data;	// matmul/matmul-hw.mlir:26718:27
  wire [31:0]        B_bank2_p0_rd_data;	// matmul/matmul-hw.mlir:26717:27
  wire [31:0]        B_bank1_p0_rd_data;	// matmul/matmul-hw.mlir:26716:27
  wire [31:0]        B_bank0_p0_rd_data;	// matmul/matmul-hw.mlir:26715:27
  wire [31:0]        A_bank15_p0_rd_data;	// matmul/matmul-hw.mlir:25690:28
  wire [31:0]        A_bank14_p0_rd_data;	// matmul/matmul-hw.mlir:25689:28
  wire [31:0]        A_bank13_p0_rd_data;	// matmul/matmul-hw.mlir:25688:28
  wire [31:0]        A_bank12_p0_rd_data;	// matmul/matmul-hw.mlir:25687:28
  wire [31:0]        A_bank11_p0_rd_data;	// matmul/matmul-hw.mlir:25686:28
  wire [31:0]        A_bank10_p0_rd_data;	// matmul/matmul-hw.mlir:25685:28
  wire [31:0]        A_bank9_p0_rd_data;	// matmul/matmul-hw.mlir:25684:27
  wire [31:0]        A_bank8_p0_rd_data;	// matmul/matmul-hw.mlir:25683:27
  wire [31:0]        A_bank7_p0_rd_data;	// matmul/matmul-hw.mlir:25682:27
  wire [31:0]        A_bank6_p0_rd_data;	// matmul/matmul-hw.mlir:25681:27
  wire [31:0]        A_bank5_p0_rd_data;	// matmul/matmul-hw.mlir:25680:27
  wire [31:0]        A_bank4_p0_rd_data;	// matmul/matmul-hw.mlir:25679:27
  wire [31:0]        A_bank3_p0_rd_data;	// matmul/matmul-hw.mlir:25678:27
  wire [31:0]        A_bank2_p0_rd_data;	// matmul/matmul-hw.mlir:25677:27
  wire [31:0]        A_bank1_p0_rd_data;	// matmul/matmul-hw.mlir:25676:27
  wire [31:0]        A_bank0_p0_rd_data;	// matmul/matmul-hw.mlir:25675:27
  reg  [31:0]        _T_1599;	// matmul/matmul-hw.mlir:31196:13

  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank0 (	// matmul/matmul-hw.mlir:25675:27
    .p0_addr_en   (_T_414),	// matmul/matmul-hw.mlir:29511:13
    .p0_addr_data (_T_413),	// matmul/matmul-hw.mlir:29514:13
    .p0_rd_en     (_T_412),	// matmul/matmul-hw.mlir:29517:13
    .p1_addr_en   (_T_990),	// matmul/matmul-hw.mlir:27192:10
    .p1_addr_data (_T_989),	// matmul/matmul-hw.mlir:27195:11
    .p1_wr_en     (_T_988),	// matmul/matmul-hw.mlir:27198:11
    .p1_wr_data   (_T_987),	// matmul/matmul-hw.mlir:27201:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank0_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank1 (	// matmul/matmul-hw.mlir:25676:27
    .p0_addr_en   (_T_411),	// matmul/matmul-hw.mlir:29520:13
    .p0_addr_data (_T_410),	// matmul/matmul-hw.mlir:29523:13
    .p0_rd_en     (_T_409),	// matmul/matmul-hw.mlir:29526:13
    .p1_addr_en   (_T_986),	// matmul/matmul-hw.mlir:27204:11
    .p1_addr_data (_T_985),	// matmul/matmul-hw.mlir:27207:11
    .p1_wr_en     (_T_984),	// matmul/matmul-hw.mlir:27210:11
    .p1_wr_data   (_T_983),	// matmul/matmul-hw.mlir:27213:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank1_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank2 (	// matmul/matmul-hw.mlir:25677:27
    .p0_addr_en   (_T_408),	// matmul/matmul-hw.mlir:29529:13
    .p0_addr_data (_T_407),	// matmul/matmul-hw.mlir:29532:13
    .p0_rd_en     (_T_406),	// matmul/matmul-hw.mlir:29535:13
    .p1_addr_en   (_T_982),	// matmul/matmul-hw.mlir:27216:11
    .p1_addr_data (_T_981),	// matmul/matmul-hw.mlir:27219:11
    .p1_wr_en     (_T_980),	// matmul/matmul-hw.mlir:27222:11
    .p1_wr_data   (_T_979),	// matmul/matmul-hw.mlir:27225:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank2_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank3 (	// matmul/matmul-hw.mlir:25678:27
    .p0_addr_en   (_T_405),	// matmul/matmul-hw.mlir:29538:13
    .p0_addr_data (_T_404),	// matmul/matmul-hw.mlir:29541:13
    .p0_rd_en     (_T_403),	// matmul/matmul-hw.mlir:29544:13
    .p1_addr_en   (_T_978),	// matmul/matmul-hw.mlir:27228:11
    .p1_addr_data (_T_977),	// matmul/matmul-hw.mlir:27231:11
    .p1_wr_en     (_T_976),	// matmul/matmul-hw.mlir:27234:11
    .p1_wr_data   (_T_975),	// matmul/matmul-hw.mlir:27237:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank3_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank4 (	// matmul/matmul-hw.mlir:25679:27
    .p0_addr_en   (_T_402),	// matmul/matmul-hw.mlir:29547:13
    .p0_addr_data (_T_401),	// matmul/matmul-hw.mlir:29550:13
    .p0_rd_en     (_T_400),	// matmul/matmul-hw.mlir:29553:13
    .p1_addr_en   (_T_974),	// matmul/matmul-hw.mlir:27240:11
    .p1_addr_data (_T_973),	// matmul/matmul-hw.mlir:27243:11
    .p1_wr_en     (_T_972),	// matmul/matmul-hw.mlir:27246:11
    .p1_wr_data   (_T_971),	// matmul/matmul-hw.mlir:27249:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank4_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank5 (	// matmul/matmul-hw.mlir:25680:27
    .p0_addr_en   (_T_399),	// matmul/matmul-hw.mlir:29556:13
    .p0_addr_data (_T_398),	// matmul/matmul-hw.mlir:29559:13
    .p0_rd_en     (_T_397),	// matmul/matmul-hw.mlir:29562:13
    .p1_addr_en   (_T_970),	// matmul/matmul-hw.mlir:27252:11
    .p1_addr_data (_T_969),	// matmul/matmul-hw.mlir:27255:11
    .p1_wr_en     (_T_968),	// matmul/matmul-hw.mlir:27258:11
    .p1_wr_data   (_T_967),	// matmul/matmul-hw.mlir:27261:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank5_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank6 (	// matmul/matmul-hw.mlir:25681:27
    .p0_addr_en   (_T_396),	// matmul/matmul-hw.mlir:29565:13
    .p0_addr_data (_T_395),	// matmul/matmul-hw.mlir:29568:13
    .p0_rd_en     (_T_394),	// matmul/matmul-hw.mlir:29571:13
    .p1_addr_en   (_T_966),	// matmul/matmul-hw.mlir:27264:11
    .p1_addr_data (_T_965),	// matmul/matmul-hw.mlir:27267:11
    .p1_wr_en     (_T_964),	// matmul/matmul-hw.mlir:27270:11
    .p1_wr_data   (_T_963),	// matmul/matmul-hw.mlir:27273:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank6_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank7 (	// matmul/matmul-hw.mlir:25682:27
    .p0_addr_en   (_T_393),	// matmul/matmul-hw.mlir:29574:13
    .p0_addr_data (_T_392),	// matmul/matmul-hw.mlir:29577:13
    .p0_rd_en     (_T_391),	// matmul/matmul-hw.mlir:29580:13
    .p1_addr_en   (_T_962),	// matmul/matmul-hw.mlir:27276:11
    .p1_addr_data (_T_961),	// matmul/matmul-hw.mlir:27279:11
    .p1_wr_en     (_T_960),	// matmul/matmul-hw.mlir:27282:11
    .p1_wr_data   (_T_959),	// matmul/matmul-hw.mlir:27285:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank7_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank8 (	// matmul/matmul-hw.mlir:25683:27
    .p0_addr_en   (_T_390),	// matmul/matmul-hw.mlir:29583:13
    .p0_addr_data (_T_389),	// matmul/matmul-hw.mlir:29586:13
    .p0_rd_en     (_T_388),	// matmul/matmul-hw.mlir:29589:13
    .p1_addr_en   (_T_958),	// matmul/matmul-hw.mlir:27288:11
    .p1_addr_data (_T_957),	// matmul/matmul-hw.mlir:27291:11
    .p1_wr_en     (_T_956),	// matmul/matmul-hw.mlir:27294:11
    .p1_wr_data   (_T_955),	// matmul/matmul-hw.mlir:27297:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank8_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank9 (	// matmul/matmul-hw.mlir:25684:27
    .p0_addr_en   (_T_387),	// matmul/matmul-hw.mlir:29592:13
    .p0_addr_data (_T_386),	// matmul/matmul-hw.mlir:29595:13
    .p0_rd_en     (_T_385),	// matmul/matmul-hw.mlir:29598:13
    .p1_addr_en   (_T_954),	// matmul/matmul-hw.mlir:27300:11
    .p1_addr_data (_T_953),	// matmul/matmul-hw.mlir:27303:11
    .p1_wr_en     (_T_952),	// matmul/matmul-hw.mlir:27306:11
    .p1_wr_data   (_T_951),	// matmul/matmul-hw.mlir:27309:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank9_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank10 (	// matmul/matmul-hw.mlir:25685:28
    .p0_addr_en   (_T_384),	// matmul/matmul-hw.mlir:29601:13
    .p0_addr_data (_T_383),	// matmul/matmul-hw.mlir:29604:13
    .p0_rd_en     (_T_382),	// matmul/matmul-hw.mlir:29607:13
    .p1_addr_en   (_T_950),	// matmul/matmul-hw.mlir:27312:11
    .p1_addr_data (_T_949),	// matmul/matmul-hw.mlir:27315:11
    .p1_wr_en     (_T_948),	// matmul/matmul-hw.mlir:27318:11
    .p1_wr_data   (_T_947),	// matmul/matmul-hw.mlir:27321:11
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank10_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank11 (	// matmul/matmul-hw.mlir:25686:28
    .p0_addr_en   (_T_381),	// matmul/matmul-hw.mlir:29610:13
    .p0_addr_data (_T_380),	// matmul/matmul-hw.mlir:29613:13
    .p0_rd_en     (_T_379),	// matmul/matmul-hw.mlir:29616:13
    .p1_addr_en   (_T_946),	// matmul/matmul-hw.mlir:27324:11
    .p1_addr_data (_T_945),	// matmul/matmul-hw.mlir:27327:11
    .p1_wr_en     (_T_944),	// matmul/matmul-hw.mlir:27330:12
    .p1_wr_data   (_T_943),	// matmul/matmul-hw.mlir:27333:12
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank11_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank12 (	// matmul/matmul-hw.mlir:25687:28
    .p0_addr_en   (_T_378),	// matmul/matmul-hw.mlir:29619:13
    .p0_addr_data (_T_377),	// matmul/matmul-hw.mlir:29622:13
    .p0_rd_en     (_T_376),	// matmul/matmul-hw.mlir:29625:13
    .p1_addr_en   (_T_942),	// matmul/matmul-hw.mlir:27336:12
    .p1_addr_data (_T_941),	// matmul/matmul-hw.mlir:27339:12
    .p1_wr_en     (_T_940),	// matmul/matmul-hw.mlir:27342:12
    .p1_wr_data   (_T_939),	// matmul/matmul-hw.mlir:27345:12
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank12_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank13 (	// matmul/matmul-hw.mlir:25688:28
    .p0_addr_en   (_T_375),	// matmul/matmul-hw.mlir:29628:13
    .p0_addr_data (_T_374),	// matmul/matmul-hw.mlir:29631:13
    .p0_rd_en     (_T_373),	// matmul/matmul-hw.mlir:29634:13
    .p1_addr_en   (_T_938),	// matmul/matmul-hw.mlir:27348:12
    .p1_addr_data (_T_937),	// matmul/matmul-hw.mlir:27351:12
    .p1_wr_en     (_T_936),	// matmul/matmul-hw.mlir:27354:12
    .p1_wr_data   (_T_935),	// matmul/matmul-hw.mlir:27357:12
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank13_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank14 (	// matmul/matmul-hw.mlir:25689:28
    .p0_addr_en   (_T_372),	// matmul/matmul-hw.mlir:29637:13
    .p0_addr_data (_T_371),	// matmul/matmul-hw.mlir:29640:13
    .p0_rd_en     (_T_370),	// matmul/matmul-hw.mlir:29643:13
    .p1_addr_en   (_T_934),	// matmul/matmul-hw.mlir:27360:12
    .p1_addr_data (_T_933),	// matmul/matmul-hw.mlir:27363:12
    .p1_wr_en     (_T_932),	// matmul/matmul-hw.mlir:27366:12
    .p1_wr_data   (_T_931),	// matmul/matmul-hw.mlir:27369:12
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank14_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) A_bank15 (	// matmul/matmul-hw.mlir:25690:28
    .p0_addr_en   (_T_369),	// matmul/matmul-hw.mlir:29646:13
    .p0_addr_data (_T_368),	// matmul/matmul-hw.mlir:29649:13
    .p0_rd_en     (_T_367),	// matmul/matmul-hw.mlir:29652:13
    .p1_addr_en   (_T_930),	// matmul/matmul-hw.mlir:27372:12
    .p1_addr_data (_T_929),	// matmul/matmul-hw.mlir:27375:12
    .p1_wr_en     (_T_928),	// matmul/matmul-hw.mlir:27378:12
    .p1_wr_data   (_T_927),	// matmul/matmul-hw.mlir:27381:12
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (A_bank15_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank0 (	// matmul/matmul-hw.mlir:26715:27
    .p0_rd_en   (_T_366),	// matmul/matmul-hw.mlir:30169:13
    .p1_wr_en   (_T_926),	// matmul/matmul-hw.mlir:27906:12
    .p1_wr_data (_T_925),	// matmul/matmul-hw.mlir:27909:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank0_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank1 (	// matmul/matmul-hw.mlir:26716:27
    .p0_rd_en   (_T_365),	// matmul/matmul-hw.mlir:30172:13
    .p1_wr_en   (_T_924),	// matmul/matmul-hw.mlir:27912:12
    .p1_wr_data (_T_923),	// matmul/matmul-hw.mlir:27915:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank1_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank2 (	// matmul/matmul-hw.mlir:26717:27
    .p0_rd_en   (_T_364),	// matmul/matmul-hw.mlir:30175:13
    .p1_wr_en   (_T_922),	// matmul/matmul-hw.mlir:27918:12
    .p1_wr_data (_T_921),	// matmul/matmul-hw.mlir:27921:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank2_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank3 (	// matmul/matmul-hw.mlir:26718:27
    .p0_rd_en   (_T_363),	// matmul/matmul-hw.mlir:30178:13
    .p1_wr_en   (_T_920),	// matmul/matmul-hw.mlir:27924:12
    .p1_wr_data (_T_919),	// matmul/matmul-hw.mlir:27927:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank3_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank4 (	// matmul/matmul-hw.mlir:26719:27
    .p0_rd_en   (_T_362),	// matmul/matmul-hw.mlir:30181:13
    .p1_wr_en   (_T_918),	// matmul/matmul-hw.mlir:27930:12
    .p1_wr_data (_T_917),	// matmul/matmul-hw.mlir:27933:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank4_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank5 (	// matmul/matmul-hw.mlir:26720:27
    .p0_rd_en   (_T_361),	// matmul/matmul-hw.mlir:30184:13
    .p1_wr_en   (_T_916),	// matmul/matmul-hw.mlir:27936:12
    .p1_wr_data (_T_915),	// matmul/matmul-hw.mlir:27939:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank5_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank6 (	// matmul/matmul-hw.mlir:26721:27
    .p0_rd_en   (_T_360),	// matmul/matmul-hw.mlir:30187:13
    .p1_wr_en   (_T_914),	// matmul/matmul-hw.mlir:27942:12
    .p1_wr_data (_T_913),	// matmul/matmul-hw.mlir:27945:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank6_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank7 (	// matmul/matmul-hw.mlir:26722:27
    .p0_rd_en   (_T_359),	// matmul/matmul-hw.mlir:30190:13
    .p1_wr_en   (_T_912),	// matmul/matmul-hw.mlir:27948:12
    .p1_wr_data (_T_911),	// matmul/matmul-hw.mlir:27951:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank7_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank8 (	// matmul/matmul-hw.mlir:26723:27
    .p0_rd_en   (_T_358),	// matmul/matmul-hw.mlir:30193:13
    .p1_wr_en   (_T_910),	// matmul/matmul-hw.mlir:27954:12
    .p1_wr_data (_T_909),	// matmul/matmul-hw.mlir:27957:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank8_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank9 (	// matmul/matmul-hw.mlir:26724:27
    .p0_rd_en   (_T_357),	// matmul/matmul-hw.mlir:30196:13
    .p1_wr_en   (_T_908),	// matmul/matmul-hw.mlir:27960:12
    .p1_wr_data (_T_907),	// matmul/matmul-hw.mlir:27963:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank9_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank10 (	// matmul/matmul-hw.mlir:26725:28
    .p0_rd_en   (_T_356),	// matmul/matmul-hw.mlir:30199:13
    .p1_wr_en   (_T_906),	// matmul/matmul-hw.mlir:27966:12
    .p1_wr_data (_T_905),	// matmul/matmul-hw.mlir:27969:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank10_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank11 (	// matmul/matmul-hw.mlir:26726:28
    .p0_rd_en   (_T_355),	// matmul/matmul-hw.mlir:30202:13
    .p1_wr_en   (_T_904),	// matmul/matmul-hw.mlir:27972:12
    .p1_wr_data (_T_903),	// matmul/matmul-hw.mlir:27975:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank11_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank12 (	// matmul/matmul-hw.mlir:26727:28
    .p0_rd_en   (_T_354),	// matmul/matmul-hw.mlir:30205:13
    .p1_wr_en   (_T_902),	// matmul/matmul-hw.mlir:27978:12
    .p1_wr_data (_T_901),	// matmul/matmul-hw.mlir:27981:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank12_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank13 (	// matmul/matmul-hw.mlir:26728:28
    .p0_rd_en   (_T_353),	// matmul/matmul-hw.mlir:30208:13
    .p1_wr_en   (_T_900),	// matmul/matmul-hw.mlir:27984:12
    .p1_wr_data (_T_899),	// matmul/matmul-hw.mlir:27987:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank13_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank14 (	// matmul/matmul-hw.mlir:26729:28
    .p0_rd_en   (_T_352),	// matmul/matmul-hw.mlir:30211:13
    .p1_wr_en   (_T_898),	// matmul/matmul-hw.mlir:27990:12
    .p1_wr_data (_T_897),	// matmul/matmul-hw.mlir:27993:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank14_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank15 (	// matmul/matmul-hw.mlir:26730:28
    .p0_rd_en   (_T_351),	// matmul/matmul-hw.mlir:30214:13
    .p1_wr_en   (_T_896),	// matmul/matmul-hw.mlir:27996:12
    .p1_wr_data (_T_895),	// matmul/matmul-hw.mlir:27999:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank15_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank16 (	// matmul/matmul-hw.mlir:26731:28
    .p0_rd_en   (_T_350),	// matmul/matmul-hw.mlir:30217:13
    .p1_wr_en   (_T_894),	// matmul/matmul-hw.mlir:28002:12
    .p1_wr_data (_T_893),	// matmul/matmul-hw.mlir:28005:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank16_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank17 (	// matmul/matmul-hw.mlir:26732:28
    .p0_rd_en   (_T_349),	// matmul/matmul-hw.mlir:30220:13
    .p1_wr_en   (_T_892),	// matmul/matmul-hw.mlir:28008:12
    .p1_wr_data (_T_891),	// matmul/matmul-hw.mlir:28011:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank17_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank18 (	// matmul/matmul-hw.mlir:26733:28
    .p0_rd_en   (_T_348),	// matmul/matmul-hw.mlir:30223:13
    .p1_wr_en   (_T_890),	// matmul/matmul-hw.mlir:28014:12
    .p1_wr_data (_T_889),	// matmul/matmul-hw.mlir:28017:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank18_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank19 (	// matmul/matmul-hw.mlir:26734:28
    .p0_rd_en   (_T_347),	// matmul/matmul-hw.mlir:30226:13
    .p1_wr_en   (_T_888),	// matmul/matmul-hw.mlir:28020:12
    .p1_wr_data (_T_887),	// matmul/matmul-hw.mlir:28023:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank19_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank20 (	// matmul/matmul-hw.mlir:26735:28
    .p0_rd_en   (_T_346),	// matmul/matmul-hw.mlir:30229:13
    .p1_wr_en   (_T_886),	// matmul/matmul-hw.mlir:28026:12
    .p1_wr_data (_T_885),	// matmul/matmul-hw.mlir:28029:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank20_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank21 (	// matmul/matmul-hw.mlir:26736:28
    .p0_rd_en   (_T_345),	// matmul/matmul-hw.mlir:30232:13
    .p1_wr_en   (_T_884),	// matmul/matmul-hw.mlir:28032:12
    .p1_wr_data (_T_883),	// matmul/matmul-hw.mlir:28035:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank21_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank22 (	// matmul/matmul-hw.mlir:26737:28
    .p0_rd_en   (_T_344),	// matmul/matmul-hw.mlir:30235:13
    .p1_wr_en   (_T_882),	// matmul/matmul-hw.mlir:28038:12
    .p1_wr_data (_T_881),	// matmul/matmul-hw.mlir:28041:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank22_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank23 (	// matmul/matmul-hw.mlir:26738:28
    .p0_rd_en   (_T_343),	// matmul/matmul-hw.mlir:30238:13
    .p1_wr_en   (_T_880),	// matmul/matmul-hw.mlir:28044:12
    .p1_wr_data (_T_879),	// matmul/matmul-hw.mlir:28047:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank23_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank24 (	// matmul/matmul-hw.mlir:26739:28
    .p0_rd_en   (_T_342),	// matmul/matmul-hw.mlir:30241:13
    .p1_wr_en   (_T_878),	// matmul/matmul-hw.mlir:28050:12
    .p1_wr_data (_T_877),	// matmul/matmul-hw.mlir:28053:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank24_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank25 (	// matmul/matmul-hw.mlir:26740:28
    .p0_rd_en   (_T_341),	// matmul/matmul-hw.mlir:30244:13
    .p1_wr_en   (_T_876),	// matmul/matmul-hw.mlir:28056:12
    .p1_wr_data (_T_875),	// matmul/matmul-hw.mlir:28059:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank25_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank26 (	// matmul/matmul-hw.mlir:26741:28
    .p0_rd_en   (_T_340),	// matmul/matmul-hw.mlir:30247:13
    .p1_wr_en   (_T_874),	// matmul/matmul-hw.mlir:28062:12
    .p1_wr_data (_T_873),	// matmul/matmul-hw.mlir:28065:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank26_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank27 (	// matmul/matmul-hw.mlir:26742:28
    .p0_rd_en   (_T_339),	// matmul/matmul-hw.mlir:30250:13
    .p1_wr_en   (_T_872),	// matmul/matmul-hw.mlir:28068:12
    .p1_wr_data (_T_871),	// matmul/matmul-hw.mlir:28071:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank27_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank28 (	// matmul/matmul-hw.mlir:26743:28
    .p0_rd_en   (_T_338),	// matmul/matmul-hw.mlir:30253:13
    .p1_wr_en   (_T_870),	// matmul/matmul-hw.mlir:28074:12
    .p1_wr_data (_T_869),	// matmul/matmul-hw.mlir:28077:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank28_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank29 (	// matmul/matmul-hw.mlir:26744:28
    .p0_rd_en   (_T_337),	// matmul/matmul-hw.mlir:30256:13
    .p1_wr_en   (_T_868),	// matmul/matmul-hw.mlir:28080:12
    .p1_wr_data (_T_867),	// matmul/matmul-hw.mlir:28083:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank29_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank30 (	// matmul/matmul-hw.mlir:26745:28
    .p0_rd_en   (_T_336),	// matmul/matmul-hw.mlir:30259:13
    .p1_wr_en   (_T_866),	// matmul/matmul-hw.mlir:28086:12
    .p1_wr_data (_T_865),	// matmul/matmul-hw.mlir:28089:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank30_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank31 (	// matmul/matmul-hw.mlir:26746:28
    .p0_rd_en   (_T_335),	// matmul/matmul-hw.mlir:30262:13
    .p1_wr_en   (_T_864),	// matmul/matmul-hw.mlir:28092:12
    .p1_wr_data (_T_863),	// matmul/matmul-hw.mlir:28095:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank31_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank32 (	// matmul/matmul-hw.mlir:26747:28
    .p0_rd_en   (_T_334),	// matmul/matmul-hw.mlir:30265:13
    .p1_wr_en   (_T_862),	// matmul/matmul-hw.mlir:28098:12
    .p1_wr_data (_T_861),	// matmul/matmul-hw.mlir:28101:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank32_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank33 (	// matmul/matmul-hw.mlir:26748:28
    .p0_rd_en   (_T_333),	// matmul/matmul-hw.mlir:30268:13
    .p1_wr_en   (_T_860),	// matmul/matmul-hw.mlir:28104:12
    .p1_wr_data (_T_859),	// matmul/matmul-hw.mlir:28107:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank33_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank34 (	// matmul/matmul-hw.mlir:26749:28
    .p0_rd_en   (_T_332),	// matmul/matmul-hw.mlir:30271:13
    .p1_wr_en   (_T_858),	// matmul/matmul-hw.mlir:28110:12
    .p1_wr_data (_T_857),	// matmul/matmul-hw.mlir:28113:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank34_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank35 (	// matmul/matmul-hw.mlir:26750:28
    .p0_rd_en   (_T_331),	// matmul/matmul-hw.mlir:30274:13
    .p1_wr_en   (_T_856),	// matmul/matmul-hw.mlir:28116:12
    .p1_wr_data (_T_855),	// matmul/matmul-hw.mlir:28119:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank35_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank36 (	// matmul/matmul-hw.mlir:26751:28
    .p0_rd_en   (_T_330),	// matmul/matmul-hw.mlir:30277:13
    .p1_wr_en   (_T_854),	// matmul/matmul-hw.mlir:28122:12
    .p1_wr_data (_T_853),	// matmul/matmul-hw.mlir:28125:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank36_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank37 (	// matmul/matmul-hw.mlir:26752:28
    .p0_rd_en   (_T_329),	// matmul/matmul-hw.mlir:30280:13
    .p1_wr_en   (_T_852),	// matmul/matmul-hw.mlir:28128:12
    .p1_wr_data (_T_851),	// matmul/matmul-hw.mlir:28131:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank37_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank38 (	// matmul/matmul-hw.mlir:26753:28
    .p0_rd_en   (_T_328),	// matmul/matmul-hw.mlir:30283:13
    .p1_wr_en   (_T_850),	// matmul/matmul-hw.mlir:28134:12
    .p1_wr_data (_T_849),	// matmul/matmul-hw.mlir:28137:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank38_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank39 (	// matmul/matmul-hw.mlir:26754:28
    .p0_rd_en   (_T_327),	// matmul/matmul-hw.mlir:30286:13
    .p1_wr_en   (_T_848),	// matmul/matmul-hw.mlir:28140:12
    .p1_wr_data (_T_847),	// matmul/matmul-hw.mlir:28143:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank39_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank40 (	// matmul/matmul-hw.mlir:26755:28
    .p0_rd_en   (_T_326),	// matmul/matmul-hw.mlir:30289:13
    .p1_wr_en   (_T_846),	// matmul/matmul-hw.mlir:28146:12
    .p1_wr_data (_T_845),	// matmul/matmul-hw.mlir:28149:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank40_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank41 (	// matmul/matmul-hw.mlir:26756:28
    .p0_rd_en   (_T_325),	// matmul/matmul-hw.mlir:30292:13
    .p1_wr_en   (_T_844),	// matmul/matmul-hw.mlir:28152:12
    .p1_wr_data (_T_843),	// matmul/matmul-hw.mlir:28155:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank41_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank42 (	// matmul/matmul-hw.mlir:26757:28
    .p0_rd_en   (_T_324),	// matmul/matmul-hw.mlir:30295:13
    .p1_wr_en   (_T_842),	// matmul/matmul-hw.mlir:28158:12
    .p1_wr_data (_T_841),	// matmul/matmul-hw.mlir:28161:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank42_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank43 (	// matmul/matmul-hw.mlir:26758:28
    .p0_rd_en   (_T_323),	// matmul/matmul-hw.mlir:30298:13
    .p1_wr_en   (_T_840),	// matmul/matmul-hw.mlir:28164:12
    .p1_wr_data (_T_839),	// matmul/matmul-hw.mlir:28167:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank43_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank44 (	// matmul/matmul-hw.mlir:26759:28
    .p0_rd_en   (_T_322),	// matmul/matmul-hw.mlir:30301:13
    .p1_wr_en   (_T_838),	// matmul/matmul-hw.mlir:28170:12
    .p1_wr_data (_T_837),	// matmul/matmul-hw.mlir:28173:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank44_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank45 (	// matmul/matmul-hw.mlir:26760:28
    .p0_rd_en   (_T_321),	// matmul/matmul-hw.mlir:30304:13
    .p1_wr_en   (_T_836),	// matmul/matmul-hw.mlir:28176:12
    .p1_wr_data (_T_835),	// matmul/matmul-hw.mlir:28179:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank45_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank46 (	// matmul/matmul-hw.mlir:26761:28
    .p0_rd_en   (_T_320),	// matmul/matmul-hw.mlir:30307:13
    .p1_wr_en   (_T_834),	// matmul/matmul-hw.mlir:28182:12
    .p1_wr_data (_T_833),	// matmul/matmul-hw.mlir:28185:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank46_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank47 (	// matmul/matmul-hw.mlir:26762:28
    .p0_rd_en   (_T_319),	// matmul/matmul-hw.mlir:30310:13
    .p1_wr_en   (_T_832),	// matmul/matmul-hw.mlir:28188:12
    .p1_wr_data (_T_831),	// matmul/matmul-hw.mlir:28191:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank47_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank48 (	// matmul/matmul-hw.mlir:26763:28
    .p0_rd_en   (_T_318),	// matmul/matmul-hw.mlir:30313:13
    .p1_wr_en   (_T_830),	// matmul/matmul-hw.mlir:28194:12
    .p1_wr_data (_T_829),	// matmul/matmul-hw.mlir:28197:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank48_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank49 (	// matmul/matmul-hw.mlir:26764:28
    .p0_rd_en   (_T_317),	// matmul/matmul-hw.mlir:30316:13
    .p1_wr_en   (_T_828),	// matmul/matmul-hw.mlir:28200:12
    .p1_wr_data (_T_827),	// matmul/matmul-hw.mlir:28203:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank49_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank50 (	// matmul/matmul-hw.mlir:26765:28
    .p0_rd_en   (_T_316),	// matmul/matmul-hw.mlir:30319:13
    .p1_wr_en   (_T_826),	// matmul/matmul-hw.mlir:28206:12
    .p1_wr_data (_T_825),	// matmul/matmul-hw.mlir:28209:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank50_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank51 (	// matmul/matmul-hw.mlir:26766:28
    .p0_rd_en   (_T_315),	// matmul/matmul-hw.mlir:30322:13
    .p1_wr_en   (_T_824),	// matmul/matmul-hw.mlir:28212:12
    .p1_wr_data (_T_823),	// matmul/matmul-hw.mlir:28215:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank51_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank52 (	// matmul/matmul-hw.mlir:26767:28
    .p0_rd_en   (_T_314),	// matmul/matmul-hw.mlir:30325:13
    .p1_wr_en   (_T_822),	// matmul/matmul-hw.mlir:28218:12
    .p1_wr_data (_T_821),	// matmul/matmul-hw.mlir:28221:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank52_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank53 (	// matmul/matmul-hw.mlir:26768:28
    .p0_rd_en   (_T_313),	// matmul/matmul-hw.mlir:30328:13
    .p1_wr_en   (_T_820),	// matmul/matmul-hw.mlir:28224:12
    .p1_wr_data (_T_819),	// matmul/matmul-hw.mlir:28227:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank53_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank54 (	// matmul/matmul-hw.mlir:26769:28
    .p0_rd_en   (_T_312),	// matmul/matmul-hw.mlir:30331:13
    .p1_wr_en   (_T_818),	// matmul/matmul-hw.mlir:28230:12
    .p1_wr_data (_T_817),	// matmul/matmul-hw.mlir:28233:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank54_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank55 (	// matmul/matmul-hw.mlir:26770:28
    .p0_rd_en   (_T_311),	// matmul/matmul-hw.mlir:30334:13
    .p1_wr_en   (_T_816),	// matmul/matmul-hw.mlir:28236:12
    .p1_wr_data (_T_815),	// matmul/matmul-hw.mlir:28239:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank55_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank56 (	// matmul/matmul-hw.mlir:26771:28
    .p0_rd_en   (_T_310),	// matmul/matmul-hw.mlir:30337:13
    .p1_wr_en   (_T_814),	// matmul/matmul-hw.mlir:28242:12
    .p1_wr_data (_T_813),	// matmul/matmul-hw.mlir:28245:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank56_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank57 (	// matmul/matmul-hw.mlir:26772:28
    .p0_rd_en   (_T_309),	// matmul/matmul-hw.mlir:30340:13
    .p1_wr_en   (_T_812),	// matmul/matmul-hw.mlir:28248:12
    .p1_wr_data (_T_811),	// matmul/matmul-hw.mlir:28251:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank57_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank58 (	// matmul/matmul-hw.mlir:26773:28
    .p0_rd_en   (_T_308),	// matmul/matmul-hw.mlir:30343:13
    .p1_wr_en   (_T_810),	// matmul/matmul-hw.mlir:28254:12
    .p1_wr_data (_T_809),	// matmul/matmul-hw.mlir:28257:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank58_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank59 (	// matmul/matmul-hw.mlir:26774:28
    .p0_rd_en   (_T_307),	// matmul/matmul-hw.mlir:30346:13
    .p1_wr_en   (_T_808),	// matmul/matmul-hw.mlir:28260:12
    .p1_wr_data (_T_807),	// matmul/matmul-hw.mlir:28263:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank59_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank60 (	// matmul/matmul-hw.mlir:26775:28
    .p0_rd_en   (_T_306),	// matmul/matmul-hw.mlir:30349:13
    .p1_wr_en   (_T_806),	// matmul/matmul-hw.mlir:28266:12
    .p1_wr_data (_T_805),	// matmul/matmul-hw.mlir:28269:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank60_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank61 (	// matmul/matmul-hw.mlir:26776:28
    .p0_rd_en   (_T_305),	// matmul/matmul-hw.mlir:30352:13
    .p1_wr_en   (_T_804),	// matmul/matmul-hw.mlir:28272:12
    .p1_wr_data (_T_803),	// matmul/matmul-hw.mlir:28275:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank61_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank62 (	// matmul/matmul-hw.mlir:26777:28
    .p0_rd_en   (_T_304),	// matmul/matmul-hw.mlir:30355:13
    .p1_wr_en   (_T_802),	// matmul/matmul-hw.mlir:28278:12
    .p1_wr_data (_T_801),	// matmul/matmul-hw.mlir:28281:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank62_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank63 (	// matmul/matmul-hw.mlir:26778:28
    .p0_rd_en   (_T_303),	// matmul/matmul-hw.mlir:30358:13
    .p1_wr_en   (_T_800),	// matmul/matmul-hw.mlir:28284:12
    .p1_wr_data (_T_799),	// matmul/matmul-hw.mlir:28287:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank63_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank64 (	// matmul/matmul-hw.mlir:26779:28
    .p0_rd_en   (_T_302),	// matmul/matmul-hw.mlir:30361:13
    .p1_wr_en   (_T_798),	// matmul/matmul-hw.mlir:28290:12
    .p1_wr_data (_T_797),	// matmul/matmul-hw.mlir:28293:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank64_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank65 (	// matmul/matmul-hw.mlir:26780:28
    .p0_rd_en   (_T_301),	// matmul/matmul-hw.mlir:30364:13
    .p1_wr_en   (_T_796),	// matmul/matmul-hw.mlir:28296:12
    .p1_wr_data (_T_795),	// matmul/matmul-hw.mlir:28299:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank65_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank66 (	// matmul/matmul-hw.mlir:26781:28
    .p0_rd_en   (_T_300),	// matmul/matmul-hw.mlir:30367:13
    .p1_wr_en   (_T_794),	// matmul/matmul-hw.mlir:28302:12
    .p1_wr_data (_T_793),	// matmul/matmul-hw.mlir:28305:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank66_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank67 (	// matmul/matmul-hw.mlir:26782:28
    .p0_rd_en   (_T_299),	// matmul/matmul-hw.mlir:30370:13
    .p1_wr_en   (_T_792),	// matmul/matmul-hw.mlir:28308:12
    .p1_wr_data (_T_791),	// matmul/matmul-hw.mlir:28311:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank67_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank68 (	// matmul/matmul-hw.mlir:26783:28
    .p0_rd_en   (_T_298),	// matmul/matmul-hw.mlir:30373:13
    .p1_wr_en   (_T_790),	// matmul/matmul-hw.mlir:28314:12
    .p1_wr_data (_T_789),	// matmul/matmul-hw.mlir:28317:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank68_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank69 (	// matmul/matmul-hw.mlir:26784:28
    .p0_rd_en   (_T_297),	// matmul/matmul-hw.mlir:30376:13
    .p1_wr_en   (_T_788),	// matmul/matmul-hw.mlir:28320:12
    .p1_wr_data (_T_787),	// matmul/matmul-hw.mlir:28323:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank69_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank70 (	// matmul/matmul-hw.mlir:26785:28
    .p0_rd_en   (_T_296),	// matmul/matmul-hw.mlir:30379:13
    .p1_wr_en   (_T_786),	// matmul/matmul-hw.mlir:28326:12
    .p1_wr_data (_T_785),	// matmul/matmul-hw.mlir:28329:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank70_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank71 (	// matmul/matmul-hw.mlir:26786:28
    .p0_rd_en   (_T_295),	// matmul/matmul-hw.mlir:30382:13
    .p1_wr_en   (_T_784),	// matmul/matmul-hw.mlir:28332:12
    .p1_wr_data (_T_783),	// matmul/matmul-hw.mlir:28335:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank71_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank72 (	// matmul/matmul-hw.mlir:26787:28
    .p0_rd_en   (_T_294),	// matmul/matmul-hw.mlir:30385:13
    .p1_wr_en   (_T_782),	// matmul/matmul-hw.mlir:28338:12
    .p1_wr_data (_T_781),	// matmul/matmul-hw.mlir:28341:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank72_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank73 (	// matmul/matmul-hw.mlir:26788:28
    .p0_rd_en   (_T_293),	// matmul/matmul-hw.mlir:30388:13
    .p1_wr_en   (_T_780),	// matmul/matmul-hw.mlir:28344:12
    .p1_wr_data (_T_779),	// matmul/matmul-hw.mlir:28347:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank73_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank74 (	// matmul/matmul-hw.mlir:26789:28
    .p0_rd_en   (_T_292),	// matmul/matmul-hw.mlir:30391:13
    .p1_wr_en   (_T_778),	// matmul/matmul-hw.mlir:28350:12
    .p1_wr_data (_T_777),	// matmul/matmul-hw.mlir:28353:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank74_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank75 (	// matmul/matmul-hw.mlir:26790:28
    .p0_rd_en   (_T_291),	// matmul/matmul-hw.mlir:30394:13
    .p1_wr_en   (_T_776),	// matmul/matmul-hw.mlir:28356:12
    .p1_wr_data (_T_775),	// matmul/matmul-hw.mlir:28359:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank75_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank76 (	// matmul/matmul-hw.mlir:26791:28
    .p0_rd_en   (_T_290),	// matmul/matmul-hw.mlir:30397:13
    .p1_wr_en   (_T_774),	// matmul/matmul-hw.mlir:28362:12
    .p1_wr_data (_T_773),	// matmul/matmul-hw.mlir:28365:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank76_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank77 (	// matmul/matmul-hw.mlir:26792:28
    .p0_rd_en   (_T_289),	// matmul/matmul-hw.mlir:30400:13
    .p1_wr_en   (_T_772),	// matmul/matmul-hw.mlir:28368:12
    .p1_wr_data (_T_771),	// matmul/matmul-hw.mlir:28371:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank77_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank78 (	// matmul/matmul-hw.mlir:26793:28
    .p0_rd_en   (_T_288),	// matmul/matmul-hw.mlir:30403:13
    .p1_wr_en   (_T_770),	// matmul/matmul-hw.mlir:28374:12
    .p1_wr_data (_T_769),	// matmul/matmul-hw.mlir:28377:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank78_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank79 (	// matmul/matmul-hw.mlir:26794:28
    .p0_rd_en   (_T_287),	// matmul/matmul-hw.mlir:30406:13
    .p1_wr_en   (_T_768),	// matmul/matmul-hw.mlir:28380:12
    .p1_wr_data (_T_767),	// matmul/matmul-hw.mlir:28383:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank79_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank80 (	// matmul/matmul-hw.mlir:26795:28
    .p0_rd_en   (_T_286),	// matmul/matmul-hw.mlir:30409:13
    .p1_wr_en   (_T_766),	// matmul/matmul-hw.mlir:28386:12
    .p1_wr_data (_T_765),	// matmul/matmul-hw.mlir:28389:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank80_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank81 (	// matmul/matmul-hw.mlir:26796:28
    .p0_rd_en   (_T_285),	// matmul/matmul-hw.mlir:30412:13
    .p1_wr_en   (_T_764),	// matmul/matmul-hw.mlir:28392:12
    .p1_wr_data (_T_763),	// matmul/matmul-hw.mlir:28395:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank81_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank82 (	// matmul/matmul-hw.mlir:26797:28
    .p0_rd_en   (_T_284),	// matmul/matmul-hw.mlir:30415:13
    .p1_wr_en   (_T_762),	// matmul/matmul-hw.mlir:28398:12
    .p1_wr_data (_T_761),	// matmul/matmul-hw.mlir:28401:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank82_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank83 (	// matmul/matmul-hw.mlir:26798:28
    .p0_rd_en   (_T_283),	// matmul/matmul-hw.mlir:30418:13
    .p1_wr_en   (_T_760),	// matmul/matmul-hw.mlir:28404:12
    .p1_wr_data (_T_759),	// matmul/matmul-hw.mlir:28407:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank83_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank84 (	// matmul/matmul-hw.mlir:26799:28
    .p0_rd_en   (_T_282),	// matmul/matmul-hw.mlir:30421:13
    .p1_wr_en   (_T_758),	// matmul/matmul-hw.mlir:28410:12
    .p1_wr_data (_T_757),	// matmul/matmul-hw.mlir:28413:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank84_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank85 (	// matmul/matmul-hw.mlir:26800:28
    .p0_rd_en   (_T_281),	// matmul/matmul-hw.mlir:30424:13
    .p1_wr_en   (_T_756),	// matmul/matmul-hw.mlir:28416:12
    .p1_wr_data (_T_755),	// matmul/matmul-hw.mlir:28419:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank85_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank86 (	// matmul/matmul-hw.mlir:26801:28
    .p0_rd_en   (_T_280),	// matmul/matmul-hw.mlir:30427:13
    .p1_wr_en   (_T_754),	// matmul/matmul-hw.mlir:28422:12
    .p1_wr_data (_T_753),	// matmul/matmul-hw.mlir:28425:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank86_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank87 (	// matmul/matmul-hw.mlir:26802:28
    .p0_rd_en   (_T_279),	// matmul/matmul-hw.mlir:30430:13
    .p1_wr_en   (_T_752),	// matmul/matmul-hw.mlir:28428:12
    .p1_wr_data (_T_751),	// matmul/matmul-hw.mlir:28431:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank87_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank88 (	// matmul/matmul-hw.mlir:26803:28
    .p0_rd_en   (_T_278),	// matmul/matmul-hw.mlir:30433:13
    .p1_wr_en   (_T_750),	// matmul/matmul-hw.mlir:28434:12
    .p1_wr_data (_T_749),	// matmul/matmul-hw.mlir:28437:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank88_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank89 (	// matmul/matmul-hw.mlir:26804:28
    .p0_rd_en   (_T_277),	// matmul/matmul-hw.mlir:30436:13
    .p1_wr_en   (_T_748),	// matmul/matmul-hw.mlir:28440:12
    .p1_wr_data (_T_747),	// matmul/matmul-hw.mlir:28443:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank89_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank90 (	// matmul/matmul-hw.mlir:26805:28
    .p0_rd_en   (_T_276),	// matmul/matmul-hw.mlir:30439:13
    .p1_wr_en   (_T_746),	// matmul/matmul-hw.mlir:28446:12
    .p1_wr_data (_T_745),	// matmul/matmul-hw.mlir:28449:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank90_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank91 (	// matmul/matmul-hw.mlir:26806:28
    .p0_rd_en   (_T_275),	// matmul/matmul-hw.mlir:30442:13
    .p1_wr_en   (_T_744),	// matmul/matmul-hw.mlir:28452:12
    .p1_wr_data (_T_743),	// matmul/matmul-hw.mlir:28455:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank91_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank92 (	// matmul/matmul-hw.mlir:26807:28
    .p0_rd_en   (_T_274),	// matmul/matmul-hw.mlir:30445:13
    .p1_wr_en   (_T_742),	// matmul/matmul-hw.mlir:28458:12
    .p1_wr_data (_T_741),	// matmul/matmul-hw.mlir:28461:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank92_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank93 (	// matmul/matmul-hw.mlir:26808:28
    .p0_rd_en   (_T_273),	// matmul/matmul-hw.mlir:30448:13
    .p1_wr_en   (_T_740),	// matmul/matmul-hw.mlir:28464:12
    .p1_wr_data (_T_739),	// matmul/matmul-hw.mlir:28467:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank93_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank94 (	// matmul/matmul-hw.mlir:26809:28
    .p0_rd_en   (_T_272),	// matmul/matmul-hw.mlir:30451:13
    .p1_wr_en   (_T_738),	// matmul/matmul-hw.mlir:28470:12
    .p1_wr_data (_T_737),	// matmul/matmul-hw.mlir:28473:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank94_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank95 (	// matmul/matmul-hw.mlir:26810:28
    .p0_rd_en   (_T_271),	// matmul/matmul-hw.mlir:30454:13
    .p1_wr_en   (_T_736),	// matmul/matmul-hw.mlir:28476:12
    .p1_wr_data (_T_735),	// matmul/matmul-hw.mlir:28479:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank95_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank96 (	// matmul/matmul-hw.mlir:26811:28
    .p0_rd_en   (_T_270),	// matmul/matmul-hw.mlir:30457:13
    .p1_wr_en   (_T_734),	// matmul/matmul-hw.mlir:28482:12
    .p1_wr_data (_T_733),	// matmul/matmul-hw.mlir:28485:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank96_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank97 (	// matmul/matmul-hw.mlir:26812:28
    .p0_rd_en   (_T_269),	// matmul/matmul-hw.mlir:30460:13
    .p1_wr_en   (_T_732),	// matmul/matmul-hw.mlir:28488:12
    .p1_wr_data (_T_731),	// matmul/matmul-hw.mlir:28491:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank97_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank98 (	// matmul/matmul-hw.mlir:26813:28
    .p0_rd_en   (_T_268),	// matmul/matmul-hw.mlir:30463:13
    .p1_wr_en   (_T_730),	// matmul/matmul-hw.mlir:28494:12
    .p1_wr_data (_T_729),	// matmul/matmul-hw.mlir:28497:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank98_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank99 (	// matmul/matmul-hw.mlir:26814:28
    .p0_rd_en   (_T_267),	// matmul/matmul-hw.mlir:30466:13
    .p1_wr_en   (_T_728),	// matmul/matmul-hw.mlir:28500:12
    .p1_wr_data (_T_727),	// matmul/matmul-hw.mlir:28503:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank99_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank100 (	// matmul/matmul-hw.mlir:26815:29
    .p0_rd_en   (_T_266),	// matmul/matmul-hw.mlir:30469:13
    .p1_wr_en   (_T_726),	// matmul/matmul-hw.mlir:28506:12
    .p1_wr_data (_T_725),	// matmul/matmul-hw.mlir:28509:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank100_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank101 (	// matmul/matmul-hw.mlir:26816:29
    .p0_rd_en   (_T_265),	// matmul/matmul-hw.mlir:30472:13
    .p1_wr_en   (_T_724),	// matmul/matmul-hw.mlir:28512:12
    .p1_wr_data (_T_723),	// matmul/matmul-hw.mlir:28515:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank101_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank102 (	// matmul/matmul-hw.mlir:26817:29
    .p0_rd_en   (_T_264),	// matmul/matmul-hw.mlir:30475:13
    .p1_wr_en   (_T_722),	// matmul/matmul-hw.mlir:28518:12
    .p1_wr_data (_T_721),	// matmul/matmul-hw.mlir:28521:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank102_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank103 (	// matmul/matmul-hw.mlir:26818:29
    .p0_rd_en   (_T_263),	// matmul/matmul-hw.mlir:30478:13
    .p1_wr_en   (_T_720),	// matmul/matmul-hw.mlir:28524:12
    .p1_wr_data (_T_719),	// matmul/matmul-hw.mlir:28527:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank103_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank104 (	// matmul/matmul-hw.mlir:26819:29
    .p0_rd_en   (_T_262),	// matmul/matmul-hw.mlir:30481:13
    .p1_wr_en   (_T_718),	// matmul/matmul-hw.mlir:28530:12
    .p1_wr_data (_T_717),	// matmul/matmul-hw.mlir:28533:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank104_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank105 (	// matmul/matmul-hw.mlir:26820:29
    .p0_rd_en   (_T_261),	// matmul/matmul-hw.mlir:30484:13
    .p1_wr_en   (_T_716),	// matmul/matmul-hw.mlir:28536:12
    .p1_wr_data (_T_715),	// matmul/matmul-hw.mlir:28539:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank105_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank106 (	// matmul/matmul-hw.mlir:26821:29
    .p0_rd_en   (_T_260),	// matmul/matmul-hw.mlir:30487:13
    .p1_wr_en   (_T_714),	// matmul/matmul-hw.mlir:28542:12
    .p1_wr_data (_T_713),	// matmul/matmul-hw.mlir:28545:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank106_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank107 (	// matmul/matmul-hw.mlir:26822:29
    .p0_rd_en   (_T_259),	// matmul/matmul-hw.mlir:30490:13
    .p1_wr_en   (_T_712),	// matmul/matmul-hw.mlir:28548:12
    .p1_wr_data (_T_711),	// matmul/matmul-hw.mlir:28551:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank107_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank108 (	// matmul/matmul-hw.mlir:26823:29
    .p0_rd_en   (_T_258),	// matmul/matmul-hw.mlir:30493:13
    .p1_wr_en   (_T_710),	// matmul/matmul-hw.mlir:28554:12
    .p1_wr_data (_T_709),	// matmul/matmul-hw.mlir:28557:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank108_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank109 (	// matmul/matmul-hw.mlir:26824:29
    .p0_rd_en   (_T_257),	// matmul/matmul-hw.mlir:30496:13
    .p1_wr_en   (_T_708),	// matmul/matmul-hw.mlir:28560:12
    .p1_wr_data (_T_707),	// matmul/matmul-hw.mlir:28563:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank109_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank110 (	// matmul/matmul-hw.mlir:26825:29
    .p0_rd_en   (_T_256),	// matmul/matmul-hw.mlir:30499:13
    .p1_wr_en   (_T_706),	// matmul/matmul-hw.mlir:28566:12
    .p1_wr_data (_T_705),	// matmul/matmul-hw.mlir:28569:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank110_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank111 (	// matmul/matmul-hw.mlir:26826:29
    .p0_rd_en   (_T_255),	// matmul/matmul-hw.mlir:30502:13
    .p1_wr_en   (_T_704),	// matmul/matmul-hw.mlir:28572:12
    .p1_wr_data (_T_703),	// matmul/matmul-hw.mlir:28575:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank111_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank112 (	// matmul/matmul-hw.mlir:26827:29
    .p0_rd_en   (_T_254),	// matmul/matmul-hw.mlir:30505:13
    .p1_wr_en   (_T_702),	// matmul/matmul-hw.mlir:28578:12
    .p1_wr_data (_T_701),	// matmul/matmul-hw.mlir:28581:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank112_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank113 (	// matmul/matmul-hw.mlir:26828:29
    .p0_rd_en   (_T_253),	// matmul/matmul-hw.mlir:30508:13
    .p1_wr_en   (_T_700),	// matmul/matmul-hw.mlir:28584:12
    .p1_wr_data (_T_699),	// matmul/matmul-hw.mlir:28587:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank113_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank114 (	// matmul/matmul-hw.mlir:26829:29
    .p0_rd_en   (_T_252),	// matmul/matmul-hw.mlir:30511:13
    .p1_wr_en   (_T_698),	// matmul/matmul-hw.mlir:28590:12
    .p1_wr_data (_T_697),	// matmul/matmul-hw.mlir:28593:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank114_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank115 (	// matmul/matmul-hw.mlir:26830:29
    .p0_rd_en   (_T_251),	// matmul/matmul-hw.mlir:30514:13
    .p1_wr_en   (_T_696),	// matmul/matmul-hw.mlir:28596:12
    .p1_wr_data (_T_695),	// matmul/matmul-hw.mlir:28599:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank115_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank116 (	// matmul/matmul-hw.mlir:26831:29
    .p0_rd_en   (_T_250),	// matmul/matmul-hw.mlir:30517:13
    .p1_wr_en   (_T_694),	// matmul/matmul-hw.mlir:28602:12
    .p1_wr_data (_T_693),	// matmul/matmul-hw.mlir:28605:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank116_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank117 (	// matmul/matmul-hw.mlir:26832:29
    .p0_rd_en   (_T_249),	// matmul/matmul-hw.mlir:30520:13
    .p1_wr_en   (_T_692),	// matmul/matmul-hw.mlir:28608:12
    .p1_wr_data (_T_691),	// matmul/matmul-hw.mlir:28611:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank117_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank118 (	// matmul/matmul-hw.mlir:26833:29
    .p0_rd_en   (_T_248),	// matmul/matmul-hw.mlir:30523:13
    .p1_wr_en   (_T_690),	// matmul/matmul-hw.mlir:28614:12
    .p1_wr_data (_T_689),	// matmul/matmul-hw.mlir:28617:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank118_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank119 (	// matmul/matmul-hw.mlir:26834:29
    .p0_rd_en   (_T_247),	// matmul/matmul-hw.mlir:30526:13
    .p1_wr_en   (_T_688),	// matmul/matmul-hw.mlir:28620:12
    .p1_wr_data (_T_687),	// matmul/matmul-hw.mlir:28623:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank119_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank120 (	// matmul/matmul-hw.mlir:26835:29
    .p0_rd_en   (_T_246),	// matmul/matmul-hw.mlir:30529:13
    .p1_wr_en   (_T_686),	// matmul/matmul-hw.mlir:28626:12
    .p1_wr_data (_T_685),	// matmul/matmul-hw.mlir:28629:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank120_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank121 (	// matmul/matmul-hw.mlir:26836:29
    .p0_rd_en   (_T_245),	// matmul/matmul-hw.mlir:30532:13
    .p1_wr_en   (_T_684),	// matmul/matmul-hw.mlir:28632:12
    .p1_wr_data (_T_683),	// matmul/matmul-hw.mlir:28635:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank121_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank122 (	// matmul/matmul-hw.mlir:26837:29
    .p0_rd_en   (_T_244),	// matmul/matmul-hw.mlir:30535:13
    .p1_wr_en   (_T_682),	// matmul/matmul-hw.mlir:28638:12
    .p1_wr_data (_T_681),	// matmul/matmul-hw.mlir:28641:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank122_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank123 (	// matmul/matmul-hw.mlir:26838:29
    .p0_rd_en   (_T_243),	// matmul/matmul-hw.mlir:30538:13
    .p1_wr_en   (_T_680),	// matmul/matmul-hw.mlir:28644:12
    .p1_wr_data (_T_679),	// matmul/matmul-hw.mlir:28647:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank123_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank124 (	// matmul/matmul-hw.mlir:26839:29
    .p0_rd_en   (_T_242),	// matmul/matmul-hw.mlir:30541:13
    .p1_wr_en   (_T_678),	// matmul/matmul-hw.mlir:28650:12
    .p1_wr_data (_T_677),	// matmul/matmul-hw.mlir:28653:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank124_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank125 (	// matmul/matmul-hw.mlir:26840:29
    .p0_rd_en   (_T_241),	// matmul/matmul-hw.mlir:30544:13
    .p1_wr_en   (_T_676),	// matmul/matmul-hw.mlir:28656:12
    .p1_wr_data (_T_675),	// matmul/matmul-hw.mlir:28659:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank125_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank126 (	// matmul/matmul-hw.mlir:26841:29
    .p0_rd_en   (_T_240),	// matmul/matmul-hw.mlir:30547:13
    .p1_wr_en   (_T_674),	// matmul/matmul-hw.mlir:28662:12
    .p1_wr_data (_T_673),	// matmul/matmul-hw.mlir:28665:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank126_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank127 (	// matmul/matmul-hw.mlir:26842:29
    .p0_rd_en   (_T_239),	// matmul/matmul-hw.mlir:30550:13
    .p1_wr_en   (_T_672),	// matmul/matmul-hw.mlir:28668:12
    .p1_wr_data (_T_671),	// matmul/matmul-hw.mlir:28671:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank127_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank128 (	// matmul/matmul-hw.mlir:26843:29
    .p0_rd_en   (_T_238),	// matmul/matmul-hw.mlir:30553:13
    .p1_wr_en   (_T_670),	// matmul/matmul-hw.mlir:28674:12
    .p1_wr_data (_T_669),	// matmul/matmul-hw.mlir:28677:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank128_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank129 (	// matmul/matmul-hw.mlir:26844:29
    .p0_rd_en   (_T_237),	// matmul/matmul-hw.mlir:30556:13
    .p1_wr_en   (_T_668),	// matmul/matmul-hw.mlir:28680:12
    .p1_wr_data (_T_667),	// matmul/matmul-hw.mlir:28683:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank129_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank130 (	// matmul/matmul-hw.mlir:26845:29
    .p0_rd_en   (_T_236),	// matmul/matmul-hw.mlir:30559:13
    .p1_wr_en   (_T_666),	// matmul/matmul-hw.mlir:28686:12
    .p1_wr_data (_T_665),	// matmul/matmul-hw.mlir:28689:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank130_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank131 (	// matmul/matmul-hw.mlir:26846:29
    .p0_rd_en   (_T_235),	// matmul/matmul-hw.mlir:30562:13
    .p1_wr_en   (_T_664),	// matmul/matmul-hw.mlir:28692:12
    .p1_wr_data (_T_663),	// matmul/matmul-hw.mlir:28695:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank131_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank132 (	// matmul/matmul-hw.mlir:26847:29
    .p0_rd_en   (_T_234),	// matmul/matmul-hw.mlir:30565:13
    .p1_wr_en   (_T_662),	// matmul/matmul-hw.mlir:28698:12
    .p1_wr_data (_T_661),	// matmul/matmul-hw.mlir:28701:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank132_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank133 (	// matmul/matmul-hw.mlir:26848:29
    .p0_rd_en   (_T_233),	// matmul/matmul-hw.mlir:30568:13
    .p1_wr_en   (_T_660),	// matmul/matmul-hw.mlir:28704:12
    .p1_wr_data (_T_659),	// matmul/matmul-hw.mlir:28707:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank133_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank134 (	// matmul/matmul-hw.mlir:26849:29
    .p0_rd_en   (_T_232),	// matmul/matmul-hw.mlir:30571:13
    .p1_wr_en   (_T_658),	// matmul/matmul-hw.mlir:28710:12
    .p1_wr_data (_T_657),	// matmul/matmul-hw.mlir:28713:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank134_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank135 (	// matmul/matmul-hw.mlir:26850:29
    .p0_rd_en   (_T_231),	// matmul/matmul-hw.mlir:30574:13
    .p1_wr_en   (_T_656),	// matmul/matmul-hw.mlir:28716:12
    .p1_wr_data (_T_655),	// matmul/matmul-hw.mlir:28719:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank135_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank136 (	// matmul/matmul-hw.mlir:26851:29
    .p0_rd_en   (_T_230),	// matmul/matmul-hw.mlir:30577:13
    .p1_wr_en   (_T_654),	// matmul/matmul-hw.mlir:28722:12
    .p1_wr_data (_T_653),	// matmul/matmul-hw.mlir:28725:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank136_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank137 (	// matmul/matmul-hw.mlir:26852:29
    .p0_rd_en   (_T_229),	// matmul/matmul-hw.mlir:30580:13
    .p1_wr_en   (_T_652),	// matmul/matmul-hw.mlir:28728:12
    .p1_wr_data (_T_651),	// matmul/matmul-hw.mlir:28731:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank137_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank138 (	// matmul/matmul-hw.mlir:26853:29
    .p0_rd_en   (_T_228),	// matmul/matmul-hw.mlir:30583:13
    .p1_wr_en   (_T_650),	// matmul/matmul-hw.mlir:28734:12
    .p1_wr_data (_T_649),	// matmul/matmul-hw.mlir:28737:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank138_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank139 (	// matmul/matmul-hw.mlir:26854:29
    .p0_rd_en   (_T_227),	// matmul/matmul-hw.mlir:30586:13
    .p1_wr_en   (_T_648),	// matmul/matmul-hw.mlir:28740:12
    .p1_wr_data (_T_647),	// matmul/matmul-hw.mlir:28743:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank139_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank140 (	// matmul/matmul-hw.mlir:26855:29
    .p0_rd_en   (_T_226),	// matmul/matmul-hw.mlir:30589:13
    .p1_wr_en   (_T_646),	// matmul/matmul-hw.mlir:28746:12
    .p1_wr_data (_T_645),	// matmul/matmul-hw.mlir:28749:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank140_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank141 (	// matmul/matmul-hw.mlir:26856:29
    .p0_rd_en   (_T_225),	// matmul/matmul-hw.mlir:30592:13
    .p1_wr_en   (_T_644),	// matmul/matmul-hw.mlir:28752:12
    .p1_wr_data (_T_643),	// matmul/matmul-hw.mlir:28755:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank141_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank142 (	// matmul/matmul-hw.mlir:26857:29
    .p0_rd_en   (_T_224),	// matmul/matmul-hw.mlir:30595:13
    .p1_wr_en   (_T_642),	// matmul/matmul-hw.mlir:28758:12
    .p1_wr_data (_T_641),	// matmul/matmul-hw.mlir:28761:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank142_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank143 (	// matmul/matmul-hw.mlir:26858:29
    .p0_rd_en   (_T_223),	// matmul/matmul-hw.mlir:30598:13
    .p1_wr_en   (_T_640),	// matmul/matmul-hw.mlir:28764:12
    .p1_wr_data (_T_639),	// matmul/matmul-hw.mlir:28767:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank143_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank144 (	// matmul/matmul-hw.mlir:26859:29
    .p0_rd_en   (_T_222),	// matmul/matmul-hw.mlir:30601:13
    .p1_wr_en   (_T_638),	// matmul/matmul-hw.mlir:28770:12
    .p1_wr_data (_T_637),	// matmul/matmul-hw.mlir:28773:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank144_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank145 (	// matmul/matmul-hw.mlir:26860:29
    .p0_rd_en   (_T_221),	// matmul/matmul-hw.mlir:30604:13
    .p1_wr_en   (_T_636),	// matmul/matmul-hw.mlir:28776:12
    .p1_wr_data (_T_635),	// matmul/matmul-hw.mlir:28779:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank145_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank146 (	// matmul/matmul-hw.mlir:26861:29
    .p0_rd_en   (_T_220),	// matmul/matmul-hw.mlir:30607:13
    .p1_wr_en   (_T_634),	// matmul/matmul-hw.mlir:28782:12
    .p1_wr_data (_T_633),	// matmul/matmul-hw.mlir:28785:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank146_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank147 (	// matmul/matmul-hw.mlir:26862:29
    .p0_rd_en   (_T_219),	// matmul/matmul-hw.mlir:30610:13
    .p1_wr_en   (_T_632),	// matmul/matmul-hw.mlir:28788:12
    .p1_wr_data (_T_631),	// matmul/matmul-hw.mlir:28791:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank147_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank148 (	// matmul/matmul-hw.mlir:26863:29
    .p0_rd_en   (_T_218),	// matmul/matmul-hw.mlir:30613:13
    .p1_wr_en   (_T_630),	// matmul/matmul-hw.mlir:28794:12
    .p1_wr_data (_T_629),	// matmul/matmul-hw.mlir:28797:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank148_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank149 (	// matmul/matmul-hw.mlir:26864:29
    .p0_rd_en   (_T_217),	// matmul/matmul-hw.mlir:30616:13
    .p1_wr_en   (_T_628),	// matmul/matmul-hw.mlir:28800:12
    .p1_wr_data (_T_627),	// matmul/matmul-hw.mlir:28803:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank149_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank150 (	// matmul/matmul-hw.mlir:26865:29
    .p0_rd_en   (_T_216),	// matmul/matmul-hw.mlir:30619:13
    .p1_wr_en   (_T_626),	// matmul/matmul-hw.mlir:28806:12
    .p1_wr_data (_T_625),	// matmul/matmul-hw.mlir:28809:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank150_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank151 (	// matmul/matmul-hw.mlir:26866:29
    .p0_rd_en   (_T_215),	// matmul/matmul-hw.mlir:30622:13
    .p1_wr_en   (_T_624),	// matmul/matmul-hw.mlir:28812:12
    .p1_wr_data (_T_623),	// matmul/matmul-hw.mlir:28815:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank151_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank152 (	// matmul/matmul-hw.mlir:26867:29
    .p0_rd_en   (_T_214),	// matmul/matmul-hw.mlir:30625:13
    .p1_wr_en   (_T_622),	// matmul/matmul-hw.mlir:28818:12
    .p1_wr_data (_T_621),	// matmul/matmul-hw.mlir:28821:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank152_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank153 (	// matmul/matmul-hw.mlir:26868:29
    .p0_rd_en   (_T_213),	// matmul/matmul-hw.mlir:30628:13
    .p1_wr_en   (_T_620),	// matmul/matmul-hw.mlir:28824:12
    .p1_wr_data (_T_619),	// matmul/matmul-hw.mlir:28827:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank153_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank154 (	// matmul/matmul-hw.mlir:26869:29
    .p0_rd_en   (_T_212),	// matmul/matmul-hw.mlir:30631:13
    .p1_wr_en   (_T_618),	// matmul/matmul-hw.mlir:28830:12
    .p1_wr_data (_T_617),	// matmul/matmul-hw.mlir:28833:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank154_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank155 (	// matmul/matmul-hw.mlir:26870:29
    .p0_rd_en   (_T_211),	// matmul/matmul-hw.mlir:30634:13
    .p1_wr_en   (_T_616),	// matmul/matmul-hw.mlir:28836:12
    .p1_wr_data (_T_615),	// matmul/matmul-hw.mlir:28839:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank155_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank156 (	// matmul/matmul-hw.mlir:26871:29
    .p0_rd_en   (_T_210),	// matmul/matmul-hw.mlir:30637:13
    .p1_wr_en   (_T_614),	// matmul/matmul-hw.mlir:28842:12
    .p1_wr_data (_T_613),	// matmul/matmul-hw.mlir:28845:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank156_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank157 (	// matmul/matmul-hw.mlir:26872:29
    .p0_rd_en   (_T_209),	// matmul/matmul-hw.mlir:30640:13
    .p1_wr_en   (_T_612),	// matmul/matmul-hw.mlir:28848:12
    .p1_wr_data (_T_611),	// matmul/matmul-hw.mlir:28851:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank157_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank158 (	// matmul/matmul-hw.mlir:26873:29
    .p0_rd_en   (_T_208),	// matmul/matmul-hw.mlir:30643:13
    .p1_wr_en   (_T_610),	// matmul/matmul-hw.mlir:28854:12
    .p1_wr_data (_T_609),	// matmul/matmul-hw.mlir:28857:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank158_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank159 (	// matmul/matmul-hw.mlir:26874:29
    .p0_rd_en   (_T_207),	// matmul/matmul-hw.mlir:30646:13
    .p1_wr_en   (_T_608),	// matmul/matmul-hw.mlir:28860:12
    .p1_wr_data (_T_607),	// matmul/matmul-hw.mlir:28863:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank159_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank160 (	// matmul/matmul-hw.mlir:26875:29
    .p0_rd_en   (_T_206),	// matmul/matmul-hw.mlir:30649:13
    .p1_wr_en   (_T_606),	// matmul/matmul-hw.mlir:28866:12
    .p1_wr_data (_T_605),	// matmul/matmul-hw.mlir:28869:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank160_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank161 (	// matmul/matmul-hw.mlir:26876:29
    .p0_rd_en   (_T_205),	// matmul/matmul-hw.mlir:30652:13
    .p1_wr_en   (_T_604),	// matmul/matmul-hw.mlir:28872:12
    .p1_wr_data (_T_603),	// matmul/matmul-hw.mlir:28875:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank161_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank162 (	// matmul/matmul-hw.mlir:26877:29
    .p0_rd_en   (_T_204),	// matmul/matmul-hw.mlir:30655:13
    .p1_wr_en   (_T_602),	// matmul/matmul-hw.mlir:28878:12
    .p1_wr_data (_T_601),	// matmul/matmul-hw.mlir:28881:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank162_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank163 (	// matmul/matmul-hw.mlir:26878:29
    .p0_rd_en   (_T_203),	// matmul/matmul-hw.mlir:30658:13
    .p1_wr_en   (_T_600),	// matmul/matmul-hw.mlir:28884:12
    .p1_wr_data (_T_599),	// matmul/matmul-hw.mlir:28887:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank163_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank164 (	// matmul/matmul-hw.mlir:26879:29
    .p0_rd_en   (_T_202),	// matmul/matmul-hw.mlir:30661:13
    .p1_wr_en   (_T_598),	// matmul/matmul-hw.mlir:28890:12
    .p1_wr_data (_T_597),	// matmul/matmul-hw.mlir:28893:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank164_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank165 (	// matmul/matmul-hw.mlir:26880:29
    .p0_rd_en   (_T_201),	// matmul/matmul-hw.mlir:30664:13
    .p1_wr_en   (_T_596),	// matmul/matmul-hw.mlir:28896:12
    .p1_wr_data (_T_595),	// matmul/matmul-hw.mlir:28899:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank165_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank166 (	// matmul/matmul-hw.mlir:26881:29
    .p0_rd_en   (_T_200),	// matmul/matmul-hw.mlir:30667:13
    .p1_wr_en   (_T_594),	// matmul/matmul-hw.mlir:28902:12
    .p1_wr_data (_T_593),	// matmul/matmul-hw.mlir:28905:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank166_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank167 (	// matmul/matmul-hw.mlir:26882:29
    .p0_rd_en   (_T_199),	// matmul/matmul-hw.mlir:30670:13
    .p1_wr_en   (_T_592),	// matmul/matmul-hw.mlir:28908:12
    .p1_wr_data (_T_591),	// matmul/matmul-hw.mlir:28911:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank167_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank168 (	// matmul/matmul-hw.mlir:26883:29
    .p0_rd_en   (_T_198),	// matmul/matmul-hw.mlir:30673:13
    .p1_wr_en   (_T_590),	// matmul/matmul-hw.mlir:28914:12
    .p1_wr_data (_T_589),	// matmul/matmul-hw.mlir:28917:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank168_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank169 (	// matmul/matmul-hw.mlir:26884:29
    .p0_rd_en   (_T_197),	// matmul/matmul-hw.mlir:30676:13
    .p1_wr_en   (_T_588),	// matmul/matmul-hw.mlir:28920:12
    .p1_wr_data (_T_587),	// matmul/matmul-hw.mlir:28923:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank169_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank170 (	// matmul/matmul-hw.mlir:26885:29
    .p0_rd_en   (_T_196),	// matmul/matmul-hw.mlir:30679:13
    .p1_wr_en   (_T_586),	// matmul/matmul-hw.mlir:28926:12
    .p1_wr_data (_T_585),	// matmul/matmul-hw.mlir:28929:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank170_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank171 (	// matmul/matmul-hw.mlir:26886:29
    .p0_rd_en   (_T_195),	// matmul/matmul-hw.mlir:30682:13
    .p1_wr_en   (_T_584),	// matmul/matmul-hw.mlir:28932:12
    .p1_wr_data (_T_583),	// matmul/matmul-hw.mlir:28935:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank171_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank172 (	// matmul/matmul-hw.mlir:26887:29
    .p0_rd_en   (_T_194),	// matmul/matmul-hw.mlir:30685:13
    .p1_wr_en   (_T_582),	// matmul/matmul-hw.mlir:28938:12
    .p1_wr_data (_T_581),	// matmul/matmul-hw.mlir:28941:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank172_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank173 (	// matmul/matmul-hw.mlir:26888:29
    .p0_rd_en   (_T_193),	// matmul/matmul-hw.mlir:30688:13
    .p1_wr_en   (_T_580),	// matmul/matmul-hw.mlir:28944:12
    .p1_wr_data (_T_579),	// matmul/matmul-hw.mlir:28947:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank173_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank174 (	// matmul/matmul-hw.mlir:26889:29
    .p0_rd_en   (_T_192),	// matmul/matmul-hw.mlir:30691:13
    .p1_wr_en   (_T_578),	// matmul/matmul-hw.mlir:28950:12
    .p1_wr_data (_T_577),	// matmul/matmul-hw.mlir:28953:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank174_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank175 (	// matmul/matmul-hw.mlir:26890:29
    .p0_rd_en   (_T_191),	// matmul/matmul-hw.mlir:30694:13
    .p1_wr_en   (_T_576),	// matmul/matmul-hw.mlir:28956:12
    .p1_wr_data (_T_575),	// matmul/matmul-hw.mlir:28959:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank175_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank176 (	// matmul/matmul-hw.mlir:26891:29
    .p0_rd_en   (_T_190),	// matmul/matmul-hw.mlir:30697:13
    .p1_wr_en   (_T_574),	// matmul/matmul-hw.mlir:28962:12
    .p1_wr_data (_T_573),	// matmul/matmul-hw.mlir:28965:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank176_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank177 (	// matmul/matmul-hw.mlir:26892:29
    .p0_rd_en   (_T_189),	// matmul/matmul-hw.mlir:30700:13
    .p1_wr_en   (_T_572),	// matmul/matmul-hw.mlir:28968:12
    .p1_wr_data (_T_571),	// matmul/matmul-hw.mlir:28971:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank177_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank178 (	// matmul/matmul-hw.mlir:26893:29
    .p0_rd_en   (_T_188),	// matmul/matmul-hw.mlir:30703:13
    .p1_wr_en   (_T_570),	// matmul/matmul-hw.mlir:28974:12
    .p1_wr_data (_T_569),	// matmul/matmul-hw.mlir:28977:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank178_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank179 (	// matmul/matmul-hw.mlir:26894:29
    .p0_rd_en   (_T_187),	// matmul/matmul-hw.mlir:30706:13
    .p1_wr_en   (_T_568),	// matmul/matmul-hw.mlir:28980:12
    .p1_wr_data (_T_567),	// matmul/matmul-hw.mlir:28983:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank179_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank180 (	// matmul/matmul-hw.mlir:26895:29
    .p0_rd_en   (_T_186),	// matmul/matmul-hw.mlir:30709:13
    .p1_wr_en   (_T_566),	// matmul/matmul-hw.mlir:28986:12
    .p1_wr_data (_T_565),	// matmul/matmul-hw.mlir:28989:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank180_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank181 (	// matmul/matmul-hw.mlir:26896:29
    .p0_rd_en   (_T_185),	// matmul/matmul-hw.mlir:30712:13
    .p1_wr_en   (_T_564),	// matmul/matmul-hw.mlir:28992:12
    .p1_wr_data (_T_563),	// matmul/matmul-hw.mlir:28995:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank181_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank182 (	// matmul/matmul-hw.mlir:26897:29
    .p0_rd_en   (_T_184),	// matmul/matmul-hw.mlir:30715:13
    .p1_wr_en   (_T_562),	// matmul/matmul-hw.mlir:28998:12
    .p1_wr_data (_T_561),	// matmul/matmul-hw.mlir:29001:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank182_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank183 (	// matmul/matmul-hw.mlir:26898:29
    .p0_rd_en   (_T_183),	// matmul/matmul-hw.mlir:30718:13
    .p1_wr_en   (_T_560),	// matmul/matmul-hw.mlir:29004:12
    .p1_wr_data (_T_559),	// matmul/matmul-hw.mlir:29007:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank183_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank184 (	// matmul/matmul-hw.mlir:26899:29
    .p0_rd_en   (_T_182),	// matmul/matmul-hw.mlir:30721:13
    .p1_wr_en   (_T_558),	// matmul/matmul-hw.mlir:29010:12
    .p1_wr_data (_T_557),	// matmul/matmul-hw.mlir:29013:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank184_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank185 (	// matmul/matmul-hw.mlir:26900:29
    .p0_rd_en   (_T_181),	// matmul/matmul-hw.mlir:30724:13
    .p1_wr_en   (_T_556),	// matmul/matmul-hw.mlir:29016:12
    .p1_wr_data (_T_555),	// matmul/matmul-hw.mlir:29019:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank185_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank186 (	// matmul/matmul-hw.mlir:26901:29
    .p0_rd_en   (_T_180),	// matmul/matmul-hw.mlir:30727:13
    .p1_wr_en   (_T_554),	// matmul/matmul-hw.mlir:29022:12
    .p1_wr_data (_T_553),	// matmul/matmul-hw.mlir:29025:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank186_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank187 (	// matmul/matmul-hw.mlir:26902:29
    .p0_rd_en   (_T_179),	// matmul/matmul-hw.mlir:30730:13
    .p1_wr_en   (_T_552),	// matmul/matmul-hw.mlir:29028:12
    .p1_wr_data (_T_551),	// matmul/matmul-hw.mlir:29031:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank187_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank188 (	// matmul/matmul-hw.mlir:26903:29
    .p0_rd_en   (_T_178),	// matmul/matmul-hw.mlir:30733:13
    .p1_wr_en   (_T_550),	// matmul/matmul-hw.mlir:29034:12
    .p1_wr_data (_T_549),	// matmul/matmul-hw.mlir:29037:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank188_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank189 (	// matmul/matmul-hw.mlir:26904:29
    .p0_rd_en   (_T_177),	// matmul/matmul-hw.mlir:30736:13
    .p1_wr_en   (_T_548),	// matmul/matmul-hw.mlir:29040:12
    .p1_wr_data (_T_547),	// matmul/matmul-hw.mlir:29043:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank189_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank190 (	// matmul/matmul-hw.mlir:26905:29
    .p0_rd_en   (_T_176),	// matmul/matmul-hw.mlir:30739:13
    .p1_wr_en   (_T_546),	// matmul/matmul-hw.mlir:29046:12
    .p1_wr_data (_T_545),	// matmul/matmul-hw.mlir:29049:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank190_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank191 (	// matmul/matmul-hw.mlir:26906:29
    .p0_rd_en   (_T_175),	// matmul/matmul-hw.mlir:30742:13
    .p1_wr_en   (_T_544),	// matmul/matmul-hw.mlir:29052:12
    .p1_wr_data (_T_543),	// matmul/matmul-hw.mlir:29055:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank191_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank192 (	// matmul/matmul-hw.mlir:26907:29
    .p0_rd_en   (_T_174),	// matmul/matmul-hw.mlir:30745:13
    .p1_wr_en   (_T_542),	// matmul/matmul-hw.mlir:29058:12
    .p1_wr_data (_T_541),	// matmul/matmul-hw.mlir:29061:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank192_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank193 (	// matmul/matmul-hw.mlir:26908:29
    .p0_rd_en   (_T_173),	// matmul/matmul-hw.mlir:30748:13
    .p1_wr_en   (_T_540),	// matmul/matmul-hw.mlir:29064:12
    .p1_wr_data (_T_539),	// matmul/matmul-hw.mlir:29067:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank193_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank194 (	// matmul/matmul-hw.mlir:26909:29
    .p0_rd_en   (_T_172),	// matmul/matmul-hw.mlir:30751:13
    .p1_wr_en   (_T_538),	// matmul/matmul-hw.mlir:29070:12
    .p1_wr_data (_T_537),	// matmul/matmul-hw.mlir:29073:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank194_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank195 (	// matmul/matmul-hw.mlir:26910:29
    .p0_rd_en   (_T_171),	// matmul/matmul-hw.mlir:30754:13
    .p1_wr_en   (_T_536),	// matmul/matmul-hw.mlir:29076:12
    .p1_wr_data (_T_535),	// matmul/matmul-hw.mlir:29079:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank195_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank196 (	// matmul/matmul-hw.mlir:26911:29
    .p0_rd_en   (_T_170),	// matmul/matmul-hw.mlir:30757:13
    .p1_wr_en   (_T_534),	// matmul/matmul-hw.mlir:29082:12
    .p1_wr_data (_T_533),	// matmul/matmul-hw.mlir:29085:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank196_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank197 (	// matmul/matmul-hw.mlir:26912:29
    .p0_rd_en   (_T_169),	// matmul/matmul-hw.mlir:30760:13
    .p1_wr_en   (_T_532),	// matmul/matmul-hw.mlir:29088:12
    .p1_wr_data (_T_531),	// matmul/matmul-hw.mlir:29091:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank197_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank198 (	// matmul/matmul-hw.mlir:26913:29
    .p0_rd_en   (_T_168),	// matmul/matmul-hw.mlir:30763:13
    .p1_wr_en   (_T_530),	// matmul/matmul-hw.mlir:29094:12
    .p1_wr_data (_T_529),	// matmul/matmul-hw.mlir:29097:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank198_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank199 (	// matmul/matmul-hw.mlir:26914:29
    .p0_rd_en   (_T_167),	// matmul/matmul-hw.mlir:30766:13
    .p1_wr_en   (_T_528),	// matmul/matmul-hw.mlir:29100:12
    .p1_wr_data (_T_527),	// matmul/matmul-hw.mlir:29103:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank199_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank200 (	// matmul/matmul-hw.mlir:26915:29
    .p0_rd_en   (_T_166),	// matmul/matmul-hw.mlir:30769:13
    .p1_wr_en   (_T_526),	// matmul/matmul-hw.mlir:29106:12
    .p1_wr_data (_T_525),	// matmul/matmul-hw.mlir:29109:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank200_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank201 (	// matmul/matmul-hw.mlir:26916:29
    .p0_rd_en   (_T_165),	// matmul/matmul-hw.mlir:30772:13
    .p1_wr_en   (_T_524),	// matmul/matmul-hw.mlir:29112:12
    .p1_wr_data (_T_523),	// matmul/matmul-hw.mlir:29115:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank201_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank202 (	// matmul/matmul-hw.mlir:26917:29
    .p0_rd_en   (_T_164),	// matmul/matmul-hw.mlir:30775:13
    .p1_wr_en   (_T_522),	// matmul/matmul-hw.mlir:29118:12
    .p1_wr_data (_T_521),	// matmul/matmul-hw.mlir:29121:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank202_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank203 (	// matmul/matmul-hw.mlir:26918:29
    .p0_rd_en   (_T_163),	// matmul/matmul-hw.mlir:30778:13
    .p1_wr_en   (_T_520),	// matmul/matmul-hw.mlir:29124:12
    .p1_wr_data (_T_519),	// matmul/matmul-hw.mlir:29127:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank203_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank204 (	// matmul/matmul-hw.mlir:26919:29
    .p0_rd_en   (_T_162),	// matmul/matmul-hw.mlir:30781:13
    .p1_wr_en   (_T_518),	// matmul/matmul-hw.mlir:29130:12
    .p1_wr_data (_T_517),	// matmul/matmul-hw.mlir:29133:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank204_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank205 (	// matmul/matmul-hw.mlir:26920:29
    .p0_rd_en   (_T_161),	// matmul/matmul-hw.mlir:30784:13
    .p1_wr_en   (_T_516),	// matmul/matmul-hw.mlir:29136:12
    .p1_wr_data (_T_515),	// matmul/matmul-hw.mlir:29139:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank205_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank206 (	// matmul/matmul-hw.mlir:26921:29
    .p0_rd_en   (_T_160),	// matmul/matmul-hw.mlir:30787:13
    .p1_wr_en   (_T_514),	// matmul/matmul-hw.mlir:29142:12
    .p1_wr_data (_T_513),	// matmul/matmul-hw.mlir:29145:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank206_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank207 (	// matmul/matmul-hw.mlir:26922:29
    .p0_rd_en   (_T_159),	// matmul/matmul-hw.mlir:30790:13
    .p1_wr_en   (_T_512),	// matmul/matmul-hw.mlir:29148:12
    .p1_wr_data (_T_511),	// matmul/matmul-hw.mlir:29151:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank207_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank208 (	// matmul/matmul-hw.mlir:26923:29
    .p0_rd_en   (_T_158),	// matmul/matmul-hw.mlir:30793:13
    .p1_wr_en   (_T_510),	// matmul/matmul-hw.mlir:29154:12
    .p1_wr_data (_T_509),	// matmul/matmul-hw.mlir:29157:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank208_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank209 (	// matmul/matmul-hw.mlir:26924:29
    .p0_rd_en   (_T_157),	// matmul/matmul-hw.mlir:30796:13
    .p1_wr_en   (_T_508),	// matmul/matmul-hw.mlir:29160:12
    .p1_wr_data (_T_507),	// matmul/matmul-hw.mlir:29163:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank209_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank210 (	// matmul/matmul-hw.mlir:26925:29
    .p0_rd_en   (_T_156),	// matmul/matmul-hw.mlir:30799:13
    .p1_wr_en   (_T_506),	// matmul/matmul-hw.mlir:29166:12
    .p1_wr_data (_T_505),	// matmul/matmul-hw.mlir:29169:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank210_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank211 (	// matmul/matmul-hw.mlir:26926:29
    .p0_rd_en   (_T_155),	// matmul/matmul-hw.mlir:30802:13
    .p1_wr_en   (_T_504),	// matmul/matmul-hw.mlir:29172:12
    .p1_wr_data (_T_503),	// matmul/matmul-hw.mlir:29175:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank211_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank212 (	// matmul/matmul-hw.mlir:26927:29
    .p0_rd_en   (_T_154),	// matmul/matmul-hw.mlir:30805:13
    .p1_wr_en   (_T_502),	// matmul/matmul-hw.mlir:29178:12
    .p1_wr_data (_T_501),	// matmul/matmul-hw.mlir:29181:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank212_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank213 (	// matmul/matmul-hw.mlir:26928:29
    .p0_rd_en   (_T_153),	// matmul/matmul-hw.mlir:30808:13
    .p1_wr_en   (_T_500),	// matmul/matmul-hw.mlir:29184:12
    .p1_wr_data (_T_499),	// matmul/matmul-hw.mlir:29187:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank213_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank214 (	// matmul/matmul-hw.mlir:26929:29
    .p0_rd_en   (_T_152),	// matmul/matmul-hw.mlir:30811:13
    .p1_wr_en   (_T_498),	// matmul/matmul-hw.mlir:29190:12
    .p1_wr_data (_T_497),	// matmul/matmul-hw.mlir:29193:12
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank214_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank215 (	// matmul/matmul-hw.mlir:26930:29
    .p0_rd_en   (_T_151),	// matmul/matmul-hw.mlir:30814:13
    .p1_wr_en   (_T_496),	// matmul/matmul-hw.mlir:29196:13
    .p1_wr_data (_T_495),	// matmul/matmul-hw.mlir:29199:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank215_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank216 (	// matmul/matmul-hw.mlir:26931:29
    .p0_rd_en   (_T_150),	// matmul/matmul-hw.mlir:30817:13
    .p1_wr_en   (_T_494),	// matmul/matmul-hw.mlir:29202:13
    .p1_wr_data (_T_493),	// matmul/matmul-hw.mlir:29205:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank216_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank217 (	// matmul/matmul-hw.mlir:26932:29
    .p0_rd_en   (_T_149),	// matmul/matmul-hw.mlir:30820:13
    .p1_wr_en   (_T_492),	// matmul/matmul-hw.mlir:29208:13
    .p1_wr_data (_T_491),	// matmul/matmul-hw.mlir:29211:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank217_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank218 (	// matmul/matmul-hw.mlir:26933:29
    .p0_rd_en   (_T_148),	// matmul/matmul-hw.mlir:30823:13
    .p1_wr_en   (_T_490),	// matmul/matmul-hw.mlir:29214:13
    .p1_wr_data (_T_489),	// matmul/matmul-hw.mlir:29217:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank218_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank219 (	// matmul/matmul-hw.mlir:26934:29
    .p0_rd_en   (_T_147),	// matmul/matmul-hw.mlir:30826:13
    .p1_wr_en   (_T_488),	// matmul/matmul-hw.mlir:29220:13
    .p1_wr_data (_T_487),	// matmul/matmul-hw.mlir:29223:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank219_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank220 (	// matmul/matmul-hw.mlir:26935:29
    .p0_rd_en   (_T_146),	// matmul/matmul-hw.mlir:30829:13
    .p1_wr_en   (_T_486),	// matmul/matmul-hw.mlir:29226:13
    .p1_wr_data (_T_485),	// matmul/matmul-hw.mlir:29229:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank220_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank221 (	// matmul/matmul-hw.mlir:26936:29
    .p0_rd_en   (_T_145),	// matmul/matmul-hw.mlir:30832:13
    .p1_wr_en   (_T_484),	// matmul/matmul-hw.mlir:29232:13
    .p1_wr_data (_T_483),	// matmul/matmul-hw.mlir:29235:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank221_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank222 (	// matmul/matmul-hw.mlir:26937:29
    .p0_rd_en   (_T_144),	// matmul/matmul-hw.mlir:30835:13
    .p1_wr_en   (_T_482),	// matmul/matmul-hw.mlir:29238:13
    .p1_wr_data (_T_481),	// matmul/matmul-hw.mlir:29241:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank222_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank223 (	// matmul/matmul-hw.mlir:26938:29
    .p0_rd_en   (_T_143),	// matmul/matmul-hw.mlir:30838:13
    .p1_wr_en   (_T_480),	// matmul/matmul-hw.mlir:29244:13
    .p1_wr_data (_T_479),	// matmul/matmul-hw.mlir:29247:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank223_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank224 (	// matmul/matmul-hw.mlir:26939:29
    .p0_rd_en   (_T_142),	// matmul/matmul-hw.mlir:30841:13
    .p1_wr_en   (_T_478),	// matmul/matmul-hw.mlir:29250:13
    .p1_wr_data (_T_477),	// matmul/matmul-hw.mlir:29253:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank224_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank225 (	// matmul/matmul-hw.mlir:26940:29
    .p0_rd_en   (_T_141),	// matmul/matmul-hw.mlir:30844:13
    .p1_wr_en   (_T_476),	// matmul/matmul-hw.mlir:29256:13
    .p1_wr_data (_T_475),	// matmul/matmul-hw.mlir:29259:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank225_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank226 (	// matmul/matmul-hw.mlir:26941:29
    .p0_rd_en   (_T_140),	// matmul/matmul-hw.mlir:30847:13
    .p1_wr_en   (_T_474),	// matmul/matmul-hw.mlir:29262:13
    .p1_wr_data (_T_473),	// matmul/matmul-hw.mlir:29265:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank226_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank227 (	// matmul/matmul-hw.mlir:26942:29
    .p0_rd_en   (_T_139),	// matmul/matmul-hw.mlir:30850:13
    .p1_wr_en   (_T_472),	// matmul/matmul-hw.mlir:29268:13
    .p1_wr_data (_T_471),	// matmul/matmul-hw.mlir:29271:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank227_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank228 (	// matmul/matmul-hw.mlir:26943:29
    .p0_rd_en   (_T_138),	// matmul/matmul-hw.mlir:30853:13
    .p1_wr_en   (_T_470),	// matmul/matmul-hw.mlir:29274:13
    .p1_wr_data (_T_469),	// matmul/matmul-hw.mlir:29277:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank228_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank229 (	// matmul/matmul-hw.mlir:26944:29
    .p0_rd_en   (_T_137),	// matmul/matmul-hw.mlir:30856:13
    .p1_wr_en   (_T_468),	// matmul/matmul-hw.mlir:29280:13
    .p1_wr_data (_T_467),	// matmul/matmul-hw.mlir:29283:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank229_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank230 (	// matmul/matmul-hw.mlir:26945:29
    .p0_rd_en   (_T_136),	// matmul/matmul-hw.mlir:30859:13
    .p1_wr_en   (_T_466),	// matmul/matmul-hw.mlir:29286:13
    .p1_wr_data (_T_465),	// matmul/matmul-hw.mlir:29289:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank230_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank231 (	// matmul/matmul-hw.mlir:26946:29
    .p0_rd_en   (_T_135),	// matmul/matmul-hw.mlir:30862:13
    .p1_wr_en   (_T_464),	// matmul/matmul-hw.mlir:29292:13
    .p1_wr_data (_T_463),	// matmul/matmul-hw.mlir:29295:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank231_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank232 (	// matmul/matmul-hw.mlir:26947:29
    .p0_rd_en   (_T_134),	// matmul/matmul-hw.mlir:30865:13
    .p1_wr_en   (_T_462),	// matmul/matmul-hw.mlir:29298:13
    .p1_wr_data (_T_461),	// matmul/matmul-hw.mlir:29301:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank232_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank233 (	// matmul/matmul-hw.mlir:26948:29
    .p0_rd_en   (_T_133),	// matmul/matmul-hw.mlir:30868:13
    .p1_wr_en   (_T_460),	// matmul/matmul-hw.mlir:29304:13
    .p1_wr_data (_T_459),	// matmul/matmul-hw.mlir:29307:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank233_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank234 (	// matmul/matmul-hw.mlir:26949:29
    .p0_rd_en   (_T_132),	// matmul/matmul-hw.mlir:30871:13
    .p1_wr_en   (_T_458),	// matmul/matmul-hw.mlir:29310:13
    .p1_wr_data (_T_457),	// matmul/matmul-hw.mlir:29313:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank234_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank235 (	// matmul/matmul-hw.mlir:26950:29
    .p0_rd_en   (_T_131),	// matmul/matmul-hw.mlir:30874:13
    .p1_wr_en   (_T_456),	// matmul/matmul-hw.mlir:29316:13
    .p1_wr_data (_T_455),	// matmul/matmul-hw.mlir:29319:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank235_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank236 (	// matmul/matmul-hw.mlir:26951:29
    .p0_rd_en   (_T_130),	// matmul/matmul-hw.mlir:30877:13
    .p1_wr_en   (_T_454),	// matmul/matmul-hw.mlir:29322:13
    .p1_wr_data (_T_453),	// matmul/matmul-hw.mlir:29325:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank236_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank237 (	// matmul/matmul-hw.mlir:26952:29
    .p0_rd_en   (_T_129),	// matmul/matmul-hw.mlir:30880:13
    .p1_wr_en   (_T_452),	// matmul/matmul-hw.mlir:29328:13
    .p1_wr_data (_T_451),	// matmul/matmul-hw.mlir:29331:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank237_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank238 (	// matmul/matmul-hw.mlir:26953:29
    .p0_rd_en   (_T_128),	// matmul/matmul-hw.mlir:30883:13
    .p1_wr_en   (_T_450),	// matmul/matmul-hw.mlir:29334:13
    .p1_wr_data (_T_449),	// matmul/matmul-hw.mlir:29337:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank238_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank239 (	// matmul/matmul-hw.mlir:26954:29
    .p0_rd_en   (_T_127),	// matmul/matmul-hw.mlir:30886:13
    .p1_wr_en   (_T_448),	// matmul/matmul-hw.mlir:29340:13
    .p1_wr_data (_T_447),	// matmul/matmul-hw.mlir:29343:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank239_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank240 (	// matmul/matmul-hw.mlir:26955:29
    .p0_rd_en   (_T_126),	// matmul/matmul-hw.mlir:30889:13
    .p1_wr_en   (_T_446),	// matmul/matmul-hw.mlir:29346:13
    .p1_wr_data (_T_445),	// matmul/matmul-hw.mlir:29349:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank240_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank241 (	// matmul/matmul-hw.mlir:26956:29
    .p0_rd_en   (_T_125),	// matmul/matmul-hw.mlir:30892:13
    .p1_wr_en   (_T_444),	// matmul/matmul-hw.mlir:29352:13
    .p1_wr_data (_T_443),	// matmul/matmul-hw.mlir:29355:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank241_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank242 (	// matmul/matmul-hw.mlir:26957:29
    .p0_rd_en   (_T_124),	// matmul/matmul-hw.mlir:30895:13
    .p1_wr_en   (_T_442),	// matmul/matmul-hw.mlir:29358:13
    .p1_wr_data (_T_441),	// matmul/matmul-hw.mlir:29361:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank242_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank243 (	// matmul/matmul-hw.mlir:26958:29
    .p0_rd_en   (_T_123),	// matmul/matmul-hw.mlir:30898:13
    .p1_wr_en   (_T_440),	// matmul/matmul-hw.mlir:29364:13
    .p1_wr_data (_T_439),	// matmul/matmul-hw.mlir:29367:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank243_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank244 (	// matmul/matmul-hw.mlir:26959:29
    .p0_rd_en   (_T_122),	// matmul/matmul-hw.mlir:30901:13
    .p1_wr_en   (_T_438),	// matmul/matmul-hw.mlir:29370:13
    .p1_wr_data (_T_437),	// matmul/matmul-hw.mlir:29373:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank244_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank245 (	// matmul/matmul-hw.mlir:26960:29
    .p0_rd_en   (_T_121),	// matmul/matmul-hw.mlir:30904:13
    .p1_wr_en   (_T_436),	// matmul/matmul-hw.mlir:29376:13
    .p1_wr_data (_T_435),	// matmul/matmul-hw.mlir:29379:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank245_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank246 (	// matmul/matmul-hw.mlir:26961:29
    .p0_rd_en   (_T_120),	// matmul/matmul-hw.mlir:30907:13
    .p1_wr_en   (_T_434),	// matmul/matmul-hw.mlir:29382:13
    .p1_wr_data (_T_433),	// matmul/matmul-hw.mlir:29385:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank246_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank247 (	// matmul/matmul-hw.mlir:26962:29
    .p0_rd_en   (_T_119),	// matmul/matmul-hw.mlir:30910:13
    .p1_wr_en   (_T_432),	// matmul/matmul-hw.mlir:29388:13
    .p1_wr_data (_T_431),	// matmul/matmul-hw.mlir:29391:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank247_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank248 (	// matmul/matmul-hw.mlir:26963:29
    .p0_rd_en   (_T_118),	// matmul/matmul-hw.mlir:30913:13
    .p1_wr_en   (_T_430),	// matmul/matmul-hw.mlir:29394:13
    .p1_wr_data (_T_429),	// matmul/matmul-hw.mlir:29397:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank248_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank249 (	// matmul/matmul-hw.mlir:26964:29
    .p0_rd_en   (_T_117),	// matmul/matmul-hw.mlir:30916:13
    .p1_wr_en   (_T_428),	// matmul/matmul-hw.mlir:29400:13
    .p1_wr_data (_T_427),	// matmul/matmul-hw.mlir:29403:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank249_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank250 (	// matmul/matmul-hw.mlir:26965:29
    .p0_rd_en   (_T_116),	// matmul/matmul-hw.mlir:30919:13
    .p1_wr_en   (_T_426),	// matmul/matmul-hw.mlir:29406:13
    .p1_wr_data (_T_425),	// matmul/matmul-hw.mlir:29409:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank250_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank251 (	// matmul/matmul-hw.mlir:26966:29
    .p0_rd_en   (_T_115),	// matmul/matmul-hw.mlir:30922:13
    .p1_wr_en   (_T_424),	// matmul/matmul-hw.mlir:29412:13
    .p1_wr_data (_T_423),	// matmul/matmul-hw.mlir:29415:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank251_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank252 (	// matmul/matmul-hw.mlir:26967:29
    .p0_rd_en   (_T_114),	// matmul/matmul-hw.mlir:30925:13
    .p1_wr_en   (_T_422),	// matmul/matmul-hw.mlir:29418:13
    .p1_wr_data (_T_421),	// matmul/matmul-hw.mlir:29421:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank252_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank253 (	// matmul/matmul-hw.mlir:26968:29
    .p0_rd_en   (_T_113),	// matmul/matmul-hw.mlir:30928:13
    .p1_wr_en   (_T_420),	// matmul/matmul-hw.mlir:29424:13
    .p1_wr_data (_T_419),	// matmul/matmul-hw.mlir:29427:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank253_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank254 (	// matmul/matmul-hw.mlir:26969:29
    .p0_rd_en   (_T_112),	// matmul/matmul-hw.mlir:30931:13
    .p1_wr_en   (_T_418),	// matmul/matmul-hw.mlir:29430:13
    .p1_wr_data (_T_417),	// matmul/matmul-hw.mlir:29433:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank254_p0_rd_data)
  );
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) B_bank255 (	// matmul/matmul-hw.mlir:26970:29
    .p0_rd_en   (_T_111),	// matmul/matmul-hw.mlir:30934:13
    .p1_wr_en   (_T_416),	// matmul/matmul-hw.mlir:29436:13
    .p1_wr_data (_T_415),	// matmul/matmul-hw.mlir:29439:13
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (B_bank255_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank0 (	// matmul/matmul-hw.mlir:27099:27
    .p0_addr_en   (_T_46),	// matmul/matmul-hw.mlir:31281:13
    .p0_addr_data (_T_45),	// matmul/matmul-hw.mlir:31284:13
    .p0_rd_en     (_T_44),	// matmul/matmul-hw.mlir:31287:13
    .p1_addr_en   (_T_110),	// matmul/matmul-hw.mlir:31005:13
    .p1_addr_data (_T_109),	// matmul/matmul-hw.mlir:31008:13
    .p1_wr_en     (_T_108),	// matmul/matmul-hw.mlir:31011:13
    .p1_wr_data   (_T_107),	// matmul/matmul-hw.mlir:31014:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank0_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank1 (	// matmul/matmul-hw.mlir:27100:27
    .p0_addr_en   (_T_43),	// matmul/matmul-hw.mlir:31290:13
    .p0_addr_data (_T_42),	// matmul/matmul-hw.mlir:31293:13
    .p0_rd_en     (_T_41),	// matmul/matmul-hw.mlir:31296:13
    .p1_addr_en   (_T_106),	// matmul/matmul-hw.mlir:31017:13
    .p1_addr_data (_T_105),	// matmul/matmul-hw.mlir:31020:13
    .p1_wr_en     (_T_104),	// matmul/matmul-hw.mlir:31023:13
    .p1_wr_data   (_T_103),	// matmul/matmul-hw.mlir:31026:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank1_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank2 (	// matmul/matmul-hw.mlir:27101:27
    .p0_addr_en   (_T_40),	// matmul/matmul-hw.mlir:31299:13
    .p0_addr_data (_T_39),	// matmul/matmul-hw.mlir:31302:13
    .p0_rd_en     (_T_38),	// matmul/matmul-hw.mlir:31305:13
    .p1_addr_en   (_T_102),	// matmul/matmul-hw.mlir:31029:13
    .p1_addr_data (_T_101),	// matmul/matmul-hw.mlir:31032:13
    .p1_wr_en     (_T_100),	// matmul/matmul-hw.mlir:31035:13
    .p1_wr_data   (_T_99),	// matmul/matmul-hw.mlir:31038:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank2_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank3 (	// matmul/matmul-hw.mlir:27102:27
    .p0_addr_en   (_T_37),	// matmul/matmul-hw.mlir:31308:13
    .p0_addr_data (_T_36),	// matmul/matmul-hw.mlir:31311:13
    .p0_rd_en     (_T_35),	// matmul/matmul-hw.mlir:31314:13
    .p1_addr_en   (_T_98),	// matmul/matmul-hw.mlir:31041:13
    .p1_addr_data (_T_97),	// matmul/matmul-hw.mlir:31044:13
    .p1_wr_en     (_T_96),	// matmul/matmul-hw.mlir:31047:13
    .p1_wr_data   (_T_95),	// matmul/matmul-hw.mlir:31050:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank3_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank4 (	// matmul/matmul-hw.mlir:27103:27
    .p0_addr_en   (_T_34),	// matmul/matmul-hw.mlir:31317:13
    .p0_addr_data (_T_33),	// matmul/matmul-hw.mlir:31320:13
    .p0_rd_en     (_T_32),	// matmul/matmul-hw.mlir:31323:13
    .p1_addr_en   (_T_94),	// matmul/matmul-hw.mlir:31053:13
    .p1_addr_data (_T_93),	// matmul/matmul-hw.mlir:31056:13
    .p1_wr_en     (_T_92),	// matmul/matmul-hw.mlir:31059:13
    .p1_wr_data   (_T_91),	// matmul/matmul-hw.mlir:31062:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank4_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank5 (	// matmul/matmul-hw.mlir:27104:27
    .p0_addr_en   (_T_31),	// matmul/matmul-hw.mlir:31326:13
    .p0_addr_data (_T_30),	// matmul/matmul-hw.mlir:31329:13
    .p0_rd_en     (_T_29),	// matmul/matmul-hw.mlir:31332:13
    .p1_addr_en   (_T_90),	// matmul/matmul-hw.mlir:31065:13
    .p1_addr_data (_T_89),	// matmul/matmul-hw.mlir:31068:13
    .p1_wr_en     (_T_88),	// matmul/matmul-hw.mlir:31071:13
    .p1_wr_data   (_T_87),	// matmul/matmul-hw.mlir:31074:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank5_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank6 (	// matmul/matmul-hw.mlir:27105:27
    .p0_addr_en   (_T_28),	// matmul/matmul-hw.mlir:31335:13
    .p0_addr_data (_T_27),	// matmul/matmul-hw.mlir:31338:13
    .p0_rd_en     (_T_26),	// matmul/matmul-hw.mlir:31341:13
    .p1_addr_en   (_T_86),	// matmul/matmul-hw.mlir:31077:13
    .p1_addr_data (_T_85),	// matmul/matmul-hw.mlir:31080:13
    .p1_wr_en     (_T_84),	// matmul/matmul-hw.mlir:31083:13
    .p1_wr_data   (_T_83),	// matmul/matmul-hw.mlir:31086:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank6_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank7 (	// matmul/matmul-hw.mlir:27106:27
    .p0_addr_en   (_T_25),	// matmul/matmul-hw.mlir:31344:13
    .p0_addr_data (_T_24),	// matmul/matmul-hw.mlir:31347:13
    .p0_rd_en     (_T_23),	// matmul/matmul-hw.mlir:31350:13
    .p1_addr_en   (_T_82),	// matmul/matmul-hw.mlir:31089:13
    .p1_addr_data (_T_81),	// matmul/matmul-hw.mlir:31092:13
    .p1_wr_en     (_T_80),	// matmul/matmul-hw.mlir:31095:13
    .p1_wr_data   (_T_79),	// matmul/matmul-hw.mlir:31098:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank7_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank8 (	// matmul/matmul-hw.mlir:27107:27
    .p0_addr_en   (_T_22),	// matmul/matmul-hw.mlir:31353:13
    .p0_addr_data (_T_21),	// matmul/matmul-hw.mlir:31356:13
    .p0_rd_en     (_T_20),	// matmul/matmul-hw.mlir:31359:13
    .p1_addr_en   (_T_78),	// matmul/matmul-hw.mlir:31101:13
    .p1_addr_data (_T_77),	// matmul/matmul-hw.mlir:31104:13
    .p1_wr_en     (_T_76),	// matmul/matmul-hw.mlir:31107:13
    .p1_wr_data   (_T_75),	// matmul/matmul-hw.mlir:31110:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank8_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank9 (	// matmul/matmul-hw.mlir:27108:27
    .p0_addr_en   (_T_19),	// matmul/matmul-hw.mlir:31362:13
    .p0_addr_data (_T_18),	// matmul/matmul-hw.mlir:31365:13
    .p0_rd_en     (_T_17),	// matmul/matmul-hw.mlir:31368:13
    .p1_addr_en   (_T_74),	// matmul/matmul-hw.mlir:31113:13
    .p1_addr_data (_T_73),	// matmul/matmul-hw.mlir:31116:13
    .p1_wr_en     (_T_72),	// matmul/matmul-hw.mlir:31119:13
    .p1_wr_data   (_T_71),	// matmul/matmul-hw.mlir:31122:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank9_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank10 (	// matmul/matmul-hw.mlir:27109:28
    .p0_addr_en   (_T_16),	// matmul/matmul-hw.mlir:31371:13
    .p0_addr_data (_T_15),	// matmul/matmul-hw.mlir:31374:13
    .p0_rd_en     (_T_14),	// matmul/matmul-hw.mlir:31377:13
    .p1_addr_en   (_T_70),	// matmul/matmul-hw.mlir:31125:13
    .p1_addr_data (_T_69),	// matmul/matmul-hw.mlir:31128:13
    .p1_wr_en     (_T_68),	// matmul/matmul-hw.mlir:31131:13
    .p1_wr_data   (_T_67),	// matmul/matmul-hw.mlir:31134:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank10_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank11 (	// matmul/matmul-hw.mlir:27110:28
    .p0_addr_en   (_T_13),	// matmul/matmul-hw.mlir:31380:13
    .p0_addr_data (_T_12),	// matmul/matmul-hw.mlir:31383:13
    .p0_rd_en     (_T_11),	// matmul/matmul-hw.mlir:31386:13
    .p1_addr_en   (_T_66),	// matmul/matmul-hw.mlir:31137:13
    .p1_addr_data (_T_65),	// matmul/matmul-hw.mlir:31140:13
    .p1_wr_en     (_T_64),	// matmul/matmul-hw.mlir:31143:13
    .p1_wr_data   (_T_63),	// matmul/matmul-hw.mlir:31146:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank11_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank12 (	// matmul/matmul-hw.mlir:27111:28
    .p0_addr_en   (_T_10),	// matmul/matmul-hw.mlir:31389:13
    .p0_addr_data (_T_9),	// matmul/matmul-hw.mlir:31392:13
    .p0_rd_en     (_T_8),	// matmul/matmul-hw.mlir:31395:13
    .p1_addr_en   (_T_62),	// matmul/matmul-hw.mlir:31149:13
    .p1_addr_data (_T_61),	// matmul/matmul-hw.mlir:31152:13
    .p1_wr_en     (_T_60),	// matmul/matmul-hw.mlir:31155:13
    .p1_wr_data   (_T_59),	// matmul/matmul-hw.mlir:31158:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank12_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank13 (	// matmul/matmul-hw.mlir:27112:28
    .p0_addr_en   (_T_7),	// matmul/matmul-hw.mlir:31398:13
    .p0_addr_data (_T_6),	// matmul/matmul-hw.mlir:31401:13
    .p0_rd_en     (_T_5),	// matmul/matmul-hw.mlir:31404:13
    .p1_addr_en   (_T_58),	// matmul/matmul-hw.mlir:31161:13
    .p1_addr_data (_T_57),	// matmul/matmul-hw.mlir:31164:13
    .p1_wr_en     (_T_56),	// matmul/matmul-hw.mlir:31167:13
    .p1_wr_data   (_T_55),	// matmul/matmul-hw.mlir:31170:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank13_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank14 (	// matmul/matmul-hw.mlir:27113:28
    .p0_addr_en   (_T_4),	// matmul/matmul-hw.mlir:31407:13
    .p0_addr_data (_T_3),	// matmul/matmul-hw.mlir:31410:13
    .p0_rd_en     (_T_2),	// matmul/matmul-hw.mlir:31413:13
    .p1_addr_en   (_T_54),	// matmul/matmul-hw.mlir:31173:13
    .p1_addr_data (_T_53),	// matmul/matmul-hw.mlir:31176:13
    .p1_wr_en     (_T_52),	// matmul/matmul-hw.mlir:31179:13
    .p1_wr_data   (_T_51),	// matmul/matmul-hw.mlir:31182:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank14_p0_rd_data)
  );
  bram_r1_w1 #(
    .ADDR_WIDTH(64'd4),
    .ELEMENT_WIDTH(64'd32)
  ) C_bank15 (	// matmul/matmul-hw.mlir:27114:28
    .p0_addr_en   (_T_1),	// matmul/matmul-hw.mlir:31416:13
    .p0_addr_data (_T_0),	// matmul/matmul-hw.mlir:31419:13
    .p0_rd_en     (_T),	// matmul/matmul-hw.mlir:31422:13
    .p1_addr_en   (_T_50),	// matmul/matmul-hw.mlir:31185:13
    .p1_addr_data (_T_49),	// matmul/matmul-hw.mlir:31188:13
    .p1_wr_en     (_T_48),	// matmul/matmul-hw.mlir:31191:13
    .p1_wr_data   (_T_47),	// matmul/matmul-hw.mlir:31194:13
    .t            (t),
    .clk          (clk),
    .rst          (rst),
    .p0_rd_data   (C_bank15_p0_rd_data)
  );
  wire _T_991 = readA_inst0_Aw_p0_addr_en[4'h0];	// matmul/matmul-hw.mlir:27190:14, :27191:10, :27382:202
  assign _T_990 = _T_991 ? _T_991 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27192:10
  assign _T_989 = _T_991 ? readA_inst0_Aw_p0_addr_data[4'h0] : 4'bx;	// matmul/matmul-hw.mlir:25532:18, :27193:19, :27194:10, :27195:11, :27382:202
  wire _T_992 = readA_inst0_Aw_p0_wr_en[4'h0];	// matmul/matmul-hw.mlir:27196:19, :27197:11, :27382:202
  assign _T_988 = _T_992 ? _T_992 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27198:11
  assign _T_987 = _T_992 ? readA_inst0_Aw_p0_wr_data[4'h0] : 32'bx;	// matmul/matmul-hw.mlir:25530:19, :27199:19, :27200:11, :27201:11, :27382:202
  wire _T_993 = readA_inst0_Aw_p0_addr_en[4'h1];	// matmul/matmul-hw.mlir:27202:14, :27203:11, :27382:202
  assign _T_986 = _T_993 ? _T_993 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27204:11
  assign _T_985 = _T_993 ? readA_inst0_Aw_p0_addr_data[4'h1] : 4'bx;	// matmul/matmul-hw.mlir:25528:17, :27205:19, :27206:11, :27207:11, :27382:202
  wire _T_994 = readA_inst0_Aw_p0_wr_en[4'h1];	// matmul/matmul-hw.mlir:27208:19, :27209:11, :27382:202
  assign _T_984 = _T_994 ? _T_994 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27210:11
  assign _T_983 = _T_994 ? readA_inst0_Aw_p0_wr_data[4'h1] : 32'bx;	// matmul/matmul-hw.mlir:25526:18, :27211:19, :27212:11, :27213:11, :27382:202
  wire _T_995 = readA_inst0_Aw_p0_addr_en[4'h2];	// matmul/matmul-hw.mlir:27214:14, :27215:11, :27382:202
  assign _T_982 = _T_995 ? _T_995 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27216:11
  assign _T_981 = _T_995 ? readA_inst0_Aw_p0_addr_data[4'h2] : 4'bx;	// matmul/matmul-hw.mlir:25524:17, :27217:19, :27218:11, :27219:11, :27382:202
  wire _T_996 = readA_inst0_Aw_p0_wr_en[4'h2];	// matmul/matmul-hw.mlir:27220:19, :27221:11, :27382:202
  assign _T_980 = _T_996 ? _T_996 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27222:11
  assign _T_979 = _T_996 ? readA_inst0_Aw_p0_wr_data[4'h2] : 32'bx;	// matmul/matmul-hw.mlir:25522:18, :27223:19, :27224:11, :27225:11, :27382:202
  wire _T_997 = readA_inst0_Aw_p0_addr_en[4'h3];	// matmul/matmul-hw.mlir:27226:14, :27227:11, :27382:202
  assign _T_978 = _T_997 ? _T_997 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27228:11
  assign _T_977 = _T_997 ? readA_inst0_Aw_p0_addr_data[4'h3] : 4'bx;	// matmul/matmul-hw.mlir:25520:17, :27229:19, :27230:11, :27231:11, :27382:202
  wire _T_998 = readA_inst0_Aw_p0_wr_en[4'h3];	// matmul/matmul-hw.mlir:27232:19, :27233:11, :27382:202
  assign _T_976 = _T_998 ? _T_998 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27234:11
  assign _T_975 = _T_998 ? readA_inst0_Aw_p0_wr_data[4'h3] : 32'bx;	// matmul/matmul-hw.mlir:25518:18, :27235:19, :27236:11, :27237:11, :27382:202
  wire _T_999 = readA_inst0_Aw_p0_addr_en[4'h4];	// matmul/matmul-hw.mlir:27238:14, :27239:11, :27382:202
  assign _T_974 = _T_999 ? _T_999 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27240:11
  assign _T_973 = _T_999 ? readA_inst0_Aw_p0_addr_data[4'h4] : 4'bx;	// matmul/matmul-hw.mlir:25516:17, :27241:19, :27242:11, :27243:11, :27382:202
  wire _T_1000 = readA_inst0_Aw_p0_wr_en[4'h4];	// matmul/matmul-hw.mlir:27244:19, :27245:11, :27382:202
  assign _T_972 = _T_1000 ? _T_1000 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27246:11
  assign _T_971 = _T_1000 ? readA_inst0_Aw_p0_wr_data[4'h4] : 32'bx;	// matmul/matmul-hw.mlir:25514:18, :27247:19, :27248:11, :27249:11, :27382:202
  wire _T_1001 = readA_inst0_Aw_p0_addr_en[4'h5];	// matmul/matmul-hw.mlir:27250:14, :27251:11, :27382:202
  assign _T_970 = _T_1001 ? _T_1001 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27252:11
  assign _T_969 = _T_1001 ? readA_inst0_Aw_p0_addr_data[4'h5] : 4'bx;	// matmul/matmul-hw.mlir:25512:17, :27253:19, :27254:11, :27255:11, :27382:202
  wire _T_1002 = readA_inst0_Aw_p0_wr_en[4'h5];	// matmul/matmul-hw.mlir:27256:19, :27257:11, :27382:202
  assign _T_968 = _T_1002 ? _T_1002 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27258:11
  assign _T_967 = _T_1002 ? readA_inst0_Aw_p0_wr_data[4'h5] : 32'bx;	// matmul/matmul-hw.mlir:25510:18, :27259:19, :27260:11, :27261:11, :27382:202
  wire _T_1003 = readA_inst0_Aw_p0_addr_en[4'h6];	// matmul/matmul-hw.mlir:27262:14, :27263:11, :27382:202
  assign _T_966 = _T_1003 ? _T_1003 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27264:11
  assign _T_965 = _T_1003 ? readA_inst0_Aw_p0_addr_data[4'h6] : 4'bx;	// matmul/matmul-hw.mlir:25508:17, :27265:19, :27266:11, :27267:11, :27382:202
  wire _T_1004 = readA_inst0_Aw_p0_wr_en[4'h6];	// matmul/matmul-hw.mlir:27268:19, :27269:11, :27382:202
  assign _T_964 = _T_1004 ? _T_1004 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27270:11
  assign _T_963 = _T_1004 ? readA_inst0_Aw_p0_wr_data[4'h6] : 32'bx;	// matmul/matmul-hw.mlir:25506:18, :27271:19, :27272:11, :27273:11, :27382:202
  wire _T_1005 = readA_inst0_Aw_p0_addr_en[4'h7];	// matmul/matmul-hw.mlir:27274:14, :27275:11, :27382:202
  assign _T_962 = _T_1005 ? _T_1005 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27276:11
  assign _T_961 = _T_1005 ? readA_inst0_Aw_p0_addr_data[4'h7] : 4'bx;	// matmul/matmul-hw.mlir:25504:17, :27277:19, :27278:11, :27279:11, :27382:202
  wire _T_1006 = readA_inst0_Aw_p0_wr_en[4'h7];	// matmul/matmul-hw.mlir:27280:19, :27281:11, :27382:202
  assign _T_960 = _T_1006 ? _T_1006 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27282:11
  assign _T_959 = _T_1006 ? readA_inst0_Aw_p0_wr_data[4'h7] : 32'bx;	// matmul/matmul-hw.mlir:25502:18, :27283:19, :27284:11, :27285:11, :27382:202
  wire _T_1007 = readA_inst0_Aw_p0_addr_en[4'h8];	// matmul/matmul-hw.mlir:27286:15, :27287:11, :27382:202
  assign _T_958 = _T_1007 ? _T_1007 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27288:11
  assign _T_957 = _T_1007 ? readA_inst0_Aw_p0_addr_data[4'h8] : 4'bx;	// matmul/matmul-hw.mlir:25500:17, :27289:20, :27290:11, :27291:11, :27382:202
  wire _T_1008 = readA_inst0_Aw_p0_wr_en[4'h8];	// matmul/matmul-hw.mlir:27292:20, :27293:11, :27382:202
  assign _T_956 = _T_1008 ? _T_1008 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27294:11
  assign _T_955 = _T_1008 ? readA_inst0_Aw_p0_wr_data[4'h8] : 32'bx;	// matmul/matmul-hw.mlir:25498:18, :27295:20, :27296:11, :27297:11, :27382:202
  wire _T_1009 = readA_inst0_Aw_p0_addr_en[4'h9];	// matmul/matmul-hw.mlir:27298:15, :27299:11, :27382:202
  assign _T_954 = _T_1009 ? _T_1009 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27300:11
  assign _T_953 = _T_1009 ? readA_inst0_Aw_p0_addr_data[4'h9] : 4'bx;	// matmul/matmul-hw.mlir:25496:17, :27301:20, :27302:11, :27303:11, :27382:202
  wire _T_1010 = readA_inst0_Aw_p0_wr_en[4'h9];	// matmul/matmul-hw.mlir:27304:20, :27305:11, :27382:202
  assign _T_952 = _T_1010 ? _T_1010 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27306:11
  assign _T_951 = _T_1010 ? readA_inst0_Aw_p0_wr_data[4'h9] : 32'bx;	// matmul/matmul-hw.mlir:25494:18, :27307:20, :27308:11, :27309:11, :27382:202
  wire _T_1011 = readA_inst0_Aw_p0_addr_en[4'hA];	// matmul/matmul-hw.mlir:27310:15, :27311:11, :27382:202
  assign _T_950 = _T_1011 ? _T_1011 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27312:11
  assign _T_949 = _T_1011 ? readA_inst0_Aw_p0_addr_data[4'hA] : 4'bx;	// matmul/matmul-hw.mlir:25492:17, :27313:20, :27314:11, :27315:11, :27382:202
  wire _T_1012 = readA_inst0_Aw_p0_wr_en[4'hA];	// matmul/matmul-hw.mlir:27316:20, :27317:11, :27382:202
  assign _T_948 = _T_1012 ? _T_1012 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27318:11
  assign _T_947 = _T_1012 ? readA_inst0_Aw_p0_wr_data[4'hA] : 32'bx;	// matmul/matmul-hw.mlir:25490:18, :27319:20, :27320:11, :27321:11, :27382:202
  wire _T_1013 = readA_inst0_Aw_p0_addr_en[4'hB];	// matmul/matmul-hw.mlir:27322:15, :27323:11, :27382:202
  assign _T_946 = _T_1013 ? _T_1013 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27324:11
  assign _T_945 = _T_1013 ? readA_inst0_Aw_p0_addr_data[4'hB] : 4'bx;	// matmul/matmul-hw.mlir:25488:17, :27325:20, :27326:11, :27327:11, :27382:202
  wire _T_1014 = readA_inst0_Aw_p0_wr_en[4'hB];	// matmul/matmul-hw.mlir:27328:20, :27329:11, :27382:202
  assign _T_944 = _T_1014 ? _T_1014 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27330:12
  assign _T_943 = _T_1014 ? readA_inst0_Aw_p0_wr_data[4'hB] : 32'bx;	// matmul/matmul-hw.mlir:25486:18, :27331:20, :27332:12, :27333:12, :27382:202
  wire _T_1015 = readA_inst0_Aw_p0_addr_en[4'hC];	// matmul/matmul-hw.mlir:27334:15, :27335:12, :27382:202
  assign _T_942 = _T_1015 ? _T_1015 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27336:12
  assign _T_941 = _T_1015 ? readA_inst0_Aw_p0_addr_data[4'hC] : 4'bx;	// matmul/matmul-hw.mlir:25484:17, :27337:20, :27338:12, :27339:12, :27382:202
  wire _T_1016 = readA_inst0_Aw_p0_wr_en[4'hC];	// matmul/matmul-hw.mlir:27340:20, :27341:12, :27382:202
  assign _T_940 = _T_1016 ? _T_1016 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27342:12
  assign _T_939 = _T_1016 ? readA_inst0_Aw_p0_wr_data[4'hC] : 32'bx;	// matmul/matmul-hw.mlir:25482:18, :27343:20, :27344:12, :27345:12, :27382:202
  wire _T_1017 = readA_inst0_Aw_p0_addr_en[4'hD];	// matmul/matmul-hw.mlir:27346:15, :27347:12, :27382:202
  assign _T_938 = _T_1017 ? _T_1017 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27348:12
  assign _T_937 = _T_1017 ? readA_inst0_Aw_p0_addr_data[4'hD] : 4'bx;	// matmul/matmul-hw.mlir:25480:17, :27349:20, :27350:12, :27351:12, :27382:202
  wire _T_1018 = readA_inst0_Aw_p0_wr_en[4'hD];	// matmul/matmul-hw.mlir:27352:20, :27353:12, :27382:202
  assign _T_936 = _T_1018 ? _T_1018 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27354:12
  assign _T_935 = _T_1018 ? readA_inst0_Aw_p0_wr_data[4'hD] : 32'bx;	// matmul/matmul-hw.mlir:25478:18, :27355:20, :27356:12, :27357:12, :27382:202
  wire _T_1019 = readA_inst0_Aw_p0_addr_en[4'hE];	// matmul/matmul-hw.mlir:27358:15, :27359:12, :27382:202
  assign _T_934 = _T_1019 ? _T_1019 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27360:12
  assign _T_933 = _T_1019 ? readA_inst0_Aw_p0_addr_data[4'hE] : 4'bx;	// matmul/matmul-hw.mlir:25476:17, :27361:20, :27362:12, :27363:12, :27382:202
  wire _T_1020 = readA_inst0_Aw_p0_wr_en[4'hE];	// matmul/matmul-hw.mlir:27364:20, :27365:12, :27382:202
  assign _T_932 = _T_1020 ? _T_1020 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27366:12
  assign _T_931 = _T_1020 ? readA_inst0_Aw_p0_wr_data[4'hE] : 32'bx;	// matmul/matmul-hw.mlir:25474:18, :27367:20, :27368:12, :27369:12, :27382:202
  wire _T_1021 = readA_inst0_Aw_p0_addr_en[4'hF];	// matmul/matmul-hw.mlir:27370:15, :27371:12, :27382:202
  assign _T_930 = _T_1021 ? _T_1021 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27372:12
  assign _T_929 = _T_1021 ? readA_inst0_Aw_p0_addr_data[4'hF] : 4'bx;	// matmul/matmul-hw.mlir:25472:17, :27373:20, :27374:12, :27375:12, :27382:202
  wire _T_1022 = readA_inst0_Aw_p0_wr_en[4'hF];	// matmul/matmul-hw.mlir:27376:20, :27377:12, :27382:202
  assign _T_928 = _T_1022 ? _T_1022 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27378:12
  assign _T_927 = _T_1022 ? readA_inst0_Aw_p0_wr_data[4'hF] : 32'bx;	// matmul/matmul-hw.mlir:25470:18, :27379:20, :27380:12, :27381:12, :27382:202
  readA readA_inst0 (	// matmul/matmul-hw.mlir:27382:202
    .Ai_p0_rd_data   (Ai_p0_rd_data),
    .t               (t),
    .clk             (clk),
    .rst             (rst),
    .Ai_p0_addr_en   (readA_inst0_Ai_p0_addr_en),
    .Ai_p0_addr_data (readA_inst0_Ai_p0_addr_data),
    .Ai_p0_rd_en     (readA_inst0_Ai_p0_rd_en),
    .Aw_p0_addr_en   (readA_inst0_Aw_p0_addr_en),
    .Aw_p0_addr_data (readA_inst0_Aw_p0_addr_data),
    .Aw_p0_wr_en     (readA_inst0_Aw_p0_wr_en),
    .Aw_p0_wr_data   (readA_inst0_Aw_p0_wr_data)
  );
  wire _T_1023 = readB_inst0_Bw_p0_wr_en[8'h0];	// matmul/matmul-hw.mlir:27904:14, :27905:12, :29440:165
  assign _T_926 = _T_1023 ? _T_1023 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27906:12
  assign _T_925 = _T_1023 ? readB_inst0_Bw_p0_wr_data[8'h0] : 32'bx;	// matmul/matmul-hw.mlir:25465:18, :27907:19, :27908:12, :27909:12, :29440:165
  wire _T_1024 = readB_inst0_Bw_p0_wr_en[8'h1];	// matmul/matmul-hw.mlir:27910:14, :27911:12, :29440:165
  assign _T_924 = _T_1024 ? _T_1024 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27912:12
  assign _T_923 = _T_1024 ? readB_inst0_Bw_p0_wr_data[8'h1] : 32'bx;	// matmul/matmul-hw.mlir:25463:18, :27913:19, :27914:12, :27915:12, :29440:165
  wire _T_1025 = readB_inst0_Bw_p0_wr_en[8'h2];	// matmul/matmul-hw.mlir:27916:14, :27917:12, :29440:165
  assign _T_922 = _T_1025 ? _T_1025 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27918:12
  assign _T_921 = _T_1025 ? readB_inst0_Bw_p0_wr_data[8'h2] : 32'bx;	// matmul/matmul-hw.mlir:25461:18, :27919:19, :27920:12, :27921:12, :29440:165
  wire _T_1026 = readB_inst0_Bw_p0_wr_en[8'h3];	// matmul/matmul-hw.mlir:27922:14, :27923:12, :29440:165
  assign _T_920 = _T_1026 ? _T_1026 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27924:12
  assign _T_919 = _T_1026 ? readB_inst0_Bw_p0_wr_data[8'h3] : 32'bx;	// matmul/matmul-hw.mlir:25459:18, :27925:19, :27926:12, :27927:12, :29440:165
  wire _T_1027 = readB_inst0_Bw_p0_wr_en[8'h4];	// matmul/matmul-hw.mlir:27928:14, :27929:12, :29440:165
  assign _T_918 = _T_1027 ? _T_1027 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27930:12
  assign _T_917 = _T_1027 ? readB_inst0_Bw_p0_wr_data[8'h4] : 32'bx;	// matmul/matmul-hw.mlir:25457:18, :27931:19, :27932:12, :27933:12, :29440:165
  wire _T_1028 = readB_inst0_Bw_p0_wr_en[8'h5];	// matmul/matmul-hw.mlir:27934:14, :27935:12, :29440:165
  assign _T_916 = _T_1028 ? _T_1028 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27936:12
  assign _T_915 = _T_1028 ? readB_inst0_Bw_p0_wr_data[8'h5] : 32'bx;	// matmul/matmul-hw.mlir:25455:18, :27937:19, :27938:12, :27939:12, :29440:165
  wire _T_1029 = readB_inst0_Bw_p0_wr_en[8'h6];	// matmul/matmul-hw.mlir:27940:14, :27941:12, :29440:165
  assign _T_914 = _T_1029 ? _T_1029 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27942:12
  assign _T_913 = _T_1029 ? readB_inst0_Bw_p0_wr_data[8'h6] : 32'bx;	// matmul/matmul-hw.mlir:25453:18, :27943:19, :27944:12, :27945:12, :29440:165
  wire _T_1030 = readB_inst0_Bw_p0_wr_en[8'h7];	// matmul/matmul-hw.mlir:27946:14, :27947:12, :29440:165
  assign _T_912 = _T_1030 ? _T_1030 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27948:12
  assign _T_911 = _T_1030 ? readB_inst0_Bw_p0_wr_data[8'h7] : 32'bx;	// matmul/matmul-hw.mlir:25451:18, :27949:19, :27950:12, :27951:12, :29440:165
  wire _T_1031 = readB_inst0_Bw_p0_wr_en[8'h8];	// matmul/matmul-hw.mlir:27952:14, :27953:12, :29440:165
  assign _T_910 = _T_1031 ? _T_1031 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27954:12
  assign _T_909 = _T_1031 ? readB_inst0_Bw_p0_wr_data[8'h8] : 32'bx;	// matmul/matmul-hw.mlir:25449:18, :27955:19, :27956:12, :27957:12, :29440:165
  wire _T_1032 = readB_inst0_Bw_p0_wr_en[8'h9];	// matmul/matmul-hw.mlir:27958:14, :27959:12, :29440:165
  assign _T_908 = _T_1032 ? _T_1032 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27960:12
  assign _T_907 = _T_1032 ? readB_inst0_Bw_p0_wr_data[8'h9] : 32'bx;	// matmul/matmul-hw.mlir:25447:18, :27961:19, :27962:12, :27963:12, :29440:165
  wire _T_1033 = readB_inst0_Bw_p0_wr_en[8'hA];	// matmul/matmul-hw.mlir:27964:15, :27965:12, :29440:165
  assign _T_906 = _T_1033 ? _T_1033 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27966:12
  assign _T_905 = _T_1033 ? readB_inst0_Bw_p0_wr_data[8'hA] : 32'bx;	// matmul/matmul-hw.mlir:25445:18, :27967:20, :27968:12, :27969:12, :29440:165
  wire _T_1034 = readB_inst0_Bw_p0_wr_en[8'hB];	// matmul/matmul-hw.mlir:27970:15, :27971:12, :29440:165
  assign _T_904 = _T_1034 ? _T_1034 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27972:12
  assign _T_903 = _T_1034 ? readB_inst0_Bw_p0_wr_data[8'hB] : 32'bx;	// matmul/matmul-hw.mlir:25443:18, :27973:20, :27974:12, :27975:12, :29440:165
  wire _T_1035 = readB_inst0_Bw_p0_wr_en[8'hC];	// matmul/matmul-hw.mlir:27976:15, :27977:12, :29440:165
  assign _T_902 = _T_1035 ? _T_1035 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27978:12
  assign _T_901 = _T_1035 ? readB_inst0_Bw_p0_wr_data[8'hC] : 32'bx;	// matmul/matmul-hw.mlir:25441:18, :27979:20, :27980:12, :27981:12, :29440:165
  wire _T_1036 = readB_inst0_Bw_p0_wr_en[8'hD];	// matmul/matmul-hw.mlir:27982:15, :27983:12, :29440:165
  assign _T_900 = _T_1036 ? _T_1036 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27984:12
  assign _T_899 = _T_1036 ? readB_inst0_Bw_p0_wr_data[8'hD] : 32'bx;	// matmul/matmul-hw.mlir:25439:18, :27985:20, :27986:12, :27987:12, :29440:165
  wire _T_1037 = readB_inst0_Bw_p0_wr_en[8'hE];	// matmul/matmul-hw.mlir:27988:15, :27989:12, :29440:165
  assign _T_898 = _T_1037 ? _T_1037 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27990:12
  assign _T_897 = _T_1037 ? readB_inst0_Bw_p0_wr_data[8'hE] : 32'bx;	// matmul/matmul-hw.mlir:25437:18, :27991:20, :27992:12, :27993:12, :29440:165
  wire _T_1038 = readB_inst0_Bw_p0_wr_en[8'hF];	// matmul/matmul-hw.mlir:27994:15, :27995:12, :29440:165
  assign _T_896 = _T_1038 ? _T_1038 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27996:12
  assign _T_895 = _T_1038 ? readB_inst0_Bw_p0_wr_data[8'hF] : 32'bx;	// matmul/matmul-hw.mlir:25435:18, :27997:20, :27998:12, :27999:12, :29440:165
  wire _T_1039 = readB_inst0_Bw_p0_wr_en[8'h10];	// matmul/matmul-hw.mlir:28000:15, :28001:12, :29440:165
  assign _T_894 = _T_1039 ? _T_1039 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28002:12
  assign _T_893 = _T_1039 ? readB_inst0_Bw_p0_wr_data[8'h10] : 32'bx;	// matmul/matmul-hw.mlir:25433:18, :28003:20, :28004:12, :28005:12, :29440:165
  wire _T_1040 = readB_inst0_Bw_p0_wr_en[8'h11];	// matmul/matmul-hw.mlir:28006:15, :28007:12, :29440:165
  assign _T_892 = _T_1040 ? _T_1040 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28008:12
  assign _T_891 = _T_1040 ? readB_inst0_Bw_p0_wr_data[8'h11] : 32'bx;	// matmul/matmul-hw.mlir:25431:18, :28009:20, :28010:12, :28011:12, :29440:165
  wire _T_1041 = readB_inst0_Bw_p0_wr_en[8'h12];	// matmul/matmul-hw.mlir:28012:15, :28013:12, :29440:165
  assign _T_890 = _T_1041 ? _T_1041 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28014:12
  assign _T_889 = _T_1041 ? readB_inst0_Bw_p0_wr_data[8'h12] : 32'bx;	// matmul/matmul-hw.mlir:25429:18, :28015:20, :28016:12, :28017:12, :29440:165
  wire _T_1042 = readB_inst0_Bw_p0_wr_en[8'h13];	// matmul/matmul-hw.mlir:28018:15, :28019:12, :29440:165
  assign _T_888 = _T_1042 ? _T_1042 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28020:12
  assign _T_887 = _T_1042 ? readB_inst0_Bw_p0_wr_data[8'h13] : 32'bx;	// matmul/matmul-hw.mlir:25427:18, :28021:20, :28022:12, :28023:12, :29440:165
  wire _T_1043 = readB_inst0_Bw_p0_wr_en[8'h14];	// matmul/matmul-hw.mlir:28024:15, :28025:12, :29440:165
  assign _T_886 = _T_1043 ? _T_1043 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28026:12
  assign _T_885 = _T_1043 ? readB_inst0_Bw_p0_wr_data[8'h14] : 32'bx;	// matmul/matmul-hw.mlir:25425:18, :28027:20, :28028:12, :28029:12, :29440:165
  wire _T_1044 = readB_inst0_Bw_p0_wr_en[8'h15];	// matmul/matmul-hw.mlir:28030:15, :28031:12, :29440:165
  assign _T_884 = _T_1044 ? _T_1044 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28032:12
  assign _T_883 = _T_1044 ? readB_inst0_Bw_p0_wr_data[8'h15] : 32'bx;	// matmul/matmul-hw.mlir:25423:18, :28033:20, :28034:12, :28035:12, :29440:165
  wire _T_1045 = readB_inst0_Bw_p0_wr_en[8'h16];	// matmul/matmul-hw.mlir:28036:15, :28037:12, :29440:165
  assign _T_882 = _T_1045 ? _T_1045 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28038:12
  assign _T_881 = _T_1045 ? readB_inst0_Bw_p0_wr_data[8'h16] : 32'bx;	// matmul/matmul-hw.mlir:25421:18, :28039:20, :28040:12, :28041:12, :29440:165
  wire _T_1046 = readB_inst0_Bw_p0_wr_en[8'h17];	// matmul/matmul-hw.mlir:28042:15, :28043:12, :29440:165
  assign _T_880 = _T_1046 ? _T_1046 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28044:12
  assign _T_879 = _T_1046 ? readB_inst0_Bw_p0_wr_data[8'h17] : 32'bx;	// matmul/matmul-hw.mlir:25419:18, :28045:20, :28046:12, :28047:12, :29440:165
  wire _T_1047 = readB_inst0_Bw_p0_wr_en[8'h18];	// matmul/matmul-hw.mlir:28048:15, :28049:12, :29440:165
  assign _T_878 = _T_1047 ? _T_1047 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28050:12
  assign _T_877 = _T_1047 ? readB_inst0_Bw_p0_wr_data[8'h18] : 32'bx;	// matmul/matmul-hw.mlir:25417:18, :28051:20, :28052:12, :28053:12, :29440:165
  wire _T_1048 = readB_inst0_Bw_p0_wr_en[8'h19];	// matmul/matmul-hw.mlir:28054:15, :28055:12, :29440:165
  assign _T_876 = _T_1048 ? _T_1048 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28056:12
  assign _T_875 = _T_1048 ? readB_inst0_Bw_p0_wr_data[8'h19] : 32'bx;	// matmul/matmul-hw.mlir:25415:18, :28057:20, :28058:12, :28059:12, :29440:165
  wire _T_1049 = readB_inst0_Bw_p0_wr_en[8'h1A];	// matmul/matmul-hw.mlir:28060:15, :28061:12, :29440:165
  assign _T_874 = _T_1049 ? _T_1049 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28062:12
  assign _T_873 = _T_1049 ? readB_inst0_Bw_p0_wr_data[8'h1A] : 32'bx;	// matmul/matmul-hw.mlir:25413:18, :28063:20, :28064:12, :28065:12, :29440:165
  wire _T_1050 = readB_inst0_Bw_p0_wr_en[8'h1B];	// matmul/matmul-hw.mlir:28066:15, :28067:12, :29440:165
  assign _T_872 = _T_1050 ? _T_1050 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28068:12
  assign _T_871 = _T_1050 ? readB_inst0_Bw_p0_wr_data[8'h1B] : 32'bx;	// matmul/matmul-hw.mlir:25411:18, :28069:20, :28070:12, :28071:12, :29440:165
  wire _T_1051 = readB_inst0_Bw_p0_wr_en[8'h1C];	// matmul/matmul-hw.mlir:28072:15, :28073:12, :29440:165
  assign _T_870 = _T_1051 ? _T_1051 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28074:12
  assign _T_869 = _T_1051 ? readB_inst0_Bw_p0_wr_data[8'h1C] : 32'bx;	// matmul/matmul-hw.mlir:25409:18, :28075:20, :28076:12, :28077:12, :29440:165
  wire _T_1052 = readB_inst0_Bw_p0_wr_en[8'h1D];	// matmul/matmul-hw.mlir:28078:15, :28079:12, :29440:165
  assign _T_868 = _T_1052 ? _T_1052 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28080:12
  assign _T_867 = _T_1052 ? readB_inst0_Bw_p0_wr_data[8'h1D] : 32'bx;	// matmul/matmul-hw.mlir:25407:18, :28081:20, :28082:12, :28083:12, :29440:165
  wire _T_1053 = readB_inst0_Bw_p0_wr_en[8'h1E];	// matmul/matmul-hw.mlir:28084:15, :28085:12, :29440:165
  assign _T_866 = _T_1053 ? _T_1053 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28086:12
  assign _T_865 = _T_1053 ? readB_inst0_Bw_p0_wr_data[8'h1E] : 32'bx;	// matmul/matmul-hw.mlir:25405:18, :28087:20, :28088:12, :28089:12, :29440:165
  wire _T_1054 = readB_inst0_Bw_p0_wr_en[8'h1F];	// matmul/matmul-hw.mlir:28090:15, :28091:12, :29440:165
  assign _T_864 = _T_1054 ? _T_1054 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28092:12
  assign _T_863 = _T_1054 ? readB_inst0_Bw_p0_wr_data[8'h1F] : 32'bx;	// matmul/matmul-hw.mlir:25403:18, :28093:20, :28094:12, :28095:12, :29440:165
  wire _T_1055 = readB_inst0_Bw_p0_wr_en[8'h20];	// matmul/matmul-hw.mlir:28096:15, :28097:12, :29440:165
  assign _T_862 = _T_1055 ? _T_1055 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28098:12
  assign _T_861 = _T_1055 ? readB_inst0_Bw_p0_wr_data[8'h20] : 32'bx;	// matmul/matmul-hw.mlir:25401:18, :28099:20, :28100:12, :28101:12, :29440:165
  wire _T_1056 = readB_inst0_Bw_p0_wr_en[8'h21];	// matmul/matmul-hw.mlir:28102:15, :28103:12, :29440:165
  assign _T_860 = _T_1056 ? _T_1056 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28104:12
  assign _T_859 = _T_1056 ? readB_inst0_Bw_p0_wr_data[8'h21] : 32'bx;	// matmul/matmul-hw.mlir:25399:18, :28105:20, :28106:12, :28107:12, :29440:165
  wire _T_1057 = readB_inst0_Bw_p0_wr_en[8'h22];	// matmul/matmul-hw.mlir:28108:15, :28109:12, :29440:165
  assign _T_858 = _T_1057 ? _T_1057 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28110:12
  assign _T_857 = _T_1057 ? readB_inst0_Bw_p0_wr_data[8'h22] : 32'bx;	// matmul/matmul-hw.mlir:25397:18, :28111:20, :28112:12, :28113:12, :29440:165
  wire _T_1058 = readB_inst0_Bw_p0_wr_en[8'h23];	// matmul/matmul-hw.mlir:28114:15, :28115:12, :29440:165
  assign _T_856 = _T_1058 ? _T_1058 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28116:12
  assign _T_855 = _T_1058 ? readB_inst0_Bw_p0_wr_data[8'h23] : 32'bx;	// matmul/matmul-hw.mlir:25395:18, :28117:20, :28118:12, :28119:12, :29440:165
  wire _T_1059 = readB_inst0_Bw_p0_wr_en[8'h24];	// matmul/matmul-hw.mlir:28120:15, :28121:12, :29440:165
  assign _T_854 = _T_1059 ? _T_1059 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28122:12
  assign _T_853 = _T_1059 ? readB_inst0_Bw_p0_wr_data[8'h24] : 32'bx;	// matmul/matmul-hw.mlir:25393:18, :28123:20, :28124:12, :28125:12, :29440:165
  wire _T_1060 = readB_inst0_Bw_p0_wr_en[8'h25];	// matmul/matmul-hw.mlir:28126:15, :28127:12, :29440:165
  assign _T_852 = _T_1060 ? _T_1060 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28128:12
  assign _T_851 = _T_1060 ? readB_inst0_Bw_p0_wr_data[8'h25] : 32'bx;	// matmul/matmul-hw.mlir:25391:18, :28129:20, :28130:12, :28131:12, :29440:165
  wire _T_1061 = readB_inst0_Bw_p0_wr_en[8'h26];	// matmul/matmul-hw.mlir:28132:15, :28133:12, :29440:165
  assign _T_850 = _T_1061 ? _T_1061 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28134:12
  assign _T_849 = _T_1061 ? readB_inst0_Bw_p0_wr_data[8'h26] : 32'bx;	// matmul/matmul-hw.mlir:25389:18, :28135:20, :28136:12, :28137:12, :29440:165
  wire _T_1062 = readB_inst0_Bw_p0_wr_en[8'h27];	// matmul/matmul-hw.mlir:28138:15, :28139:12, :29440:165
  assign _T_848 = _T_1062 ? _T_1062 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28140:12
  assign _T_847 = _T_1062 ? readB_inst0_Bw_p0_wr_data[8'h27] : 32'bx;	// matmul/matmul-hw.mlir:25387:18, :28141:20, :28142:12, :28143:12, :29440:165
  wire _T_1063 = readB_inst0_Bw_p0_wr_en[8'h28];	// matmul/matmul-hw.mlir:28144:15, :28145:12, :29440:165
  assign _T_846 = _T_1063 ? _T_1063 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28146:12
  assign _T_845 = _T_1063 ? readB_inst0_Bw_p0_wr_data[8'h28] : 32'bx;	// matmul/matmul-hw.mlir:25385:18, :28147:20, :28148:12, :28149:12, :29440:165
  wire _T_1064 = readB_inst0_Bw_p0_wr_en[8'h29];	// matmul/matmul-hw.mlir:28150:15, :28151:12, :29440:165
  assign _T_844 = _T_1064 ? _T_1064 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28152:12
  assign _T_843 = _T_1064 ? readB_inst0_Bw_p0_wr_data[8'h29] : 32'bx;	// matmul/matmul-hw.mlir:25383:18, :28153:20, :28154:12, :28155:12, :29440:165
  wire _T_1065 = readB_inst0_Bw_p0_wr_en[8'h2A];	// matmul/matmul-hw.mlir:28156:15, :28157:12, :29440:165
  assign _T_842 = _T_1065 ? _T_1065 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28158:12
  assign _T_841 = _T_1065 ? readB_inst0_Bw_p0_wr_data[8'h2A] : 32'bx;	// matmul/matmul-hw.mlir:25381:18, :28159:20, :28160:12, :28161:12, :29440:165
  wire _T_1066 = readB_inst0_Bw_p0_wr_en[8'h2B];	// matmul/matmul-hw.mlir:28162:15, :28163:12, :29440:165
  assign _T_840 = _T_1066 ? _T_1066 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28164:12
  assign _T_839 = _T_1066 ? readB_inst0_Bw_p0_wr_data[8'h2B] : 32'bx;	// matmul/matmul-hw.mlir:25379:18, :28165:20, :28166:12, :28167:12, :29440:165
  wire _T_1067 = readB_inst0_Bw_p0_wr_en[8'h2C];	// matmul/matmul-hw.mlir:28168:15, :28169:12, :29440:165
  assign _T_838 = _T_1067 ? _T_1067 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28170:12
  assign _T_837 = _T_1067 ? readB_inst0_Bw_p0_wr_data[8'h2C] : 32'bx;	// matmul/matmul-hw.mlir:25377:18, :28171:20, :28172:12, :28173:12, :29440:165
  wire _T_1068 = readB_inst0_Bw_p0_wr_en[8'h2D];	// matmul/matmul-hw.mlir:28174:15, :28175:12, :29440:165
  assign _T_836 = _T_1068 ? _T_1068 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28176:12
  assign _T_835 = _T_1068 ? readB_inst0_Bw_p0_wr_data[8'h2D] : 32'bx;	// matmul/matmul-hw.mlir:25375:18, :28177:20, :28178:12, :28179:12, :29440:165
  wire _T_1069 = readB_inst0_Bw_p0_wr_en[8'h2E];	// matmul/matmul-hw.mlir:28180:15, :28181:12, :29440:165
  assign _T_834 = _T_1069 ? _T_1069 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28182:12
  assign _T_833 = _T_1069 ? readB_inst0_Bw_p0_wr_data[8'h2E] : 32'bx;	// matmul/matmul-hw.mlir:25373:18, :28183:20, :28184:12, :28185:12, :29440:165
  wire _T_1070 = readB_inst0_Bw_p0_wr_en[8'h2F];	// matmul/matmul-hw.mlir:28186:15, :28187:12, :29440:165
  assign _T_832 = _T_1070 ? _T_1070 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28188:12
  assign _T_831 = _T_1070 ? readB_inst0_Bw_p0_wr_data[8'h2F] : 32'bx;	// matmul/matmul-hw.mlir:25371:18, :28189:20, :28190:12, :28191:12, :29440:165
  wire _T_1071 = readB_inst0_Bw_p0_wr_en[8'h30];	// matmul/matmul-hw.mlir:28192:15, :28193:12, :29440:165
  assign _T_830 = _T_1071 ? _T_1071 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28194:12
  assign _T_829 = _T_1071 ? readB_inst0_Bw_p0_wr_data[8'h30] : 32'bx;	// matmul/matmul-hw.mlir:25369:18, :28195:20, :28196:12, :28197:12, :29440:165
  wire _T_1072 = readB_inst0_Bw_p0_wr_en[8'h31];	// matmul/matmul-hw.mlir:28198:15, :28199:12, :29440:165
  assign _T_828 = _T_1072 ? _T_1072 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28200:12
  assign _T_827 = _T_1072 ? readB_inst0_Bw_p0_wr_data[8'h31] : 32'bx;	// matmul/matmul-hw.mlir:25367:18, :28201:20, :28202:12, :28203:12, :29440:165
  wire _T_1073 = readB_inst0_Bw_p0_wr_en[8'h32];	// matmul/matmul-hw.mlir:28204:15, :28205:12, :29440:165
  assign _T_826 = _T_1073 ? _T_1073 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28206:12
  assign _T_825 = _T_1073 ? readB_inst0_Bw_p0_wr_data[8'h32] : 32'bx;	// matmul/matmul-hw.mlir:25365:18, :28207:20, :28208:12, :28209:12, :29440:165
  wire _T_1074 = readB_inst0_Bw_p0_wr_en[8'h33];	// matmul/matmul-hw.mlir:28210:15, :28211:12, :29440:165
  assign _T_824 = _T_1074 ? _T_1074 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28212:12
  assign _T_823 = _T_1074 ? readB_inst0_Bw_p0_wr_data[8'h33] : 32'bx;	// matmul/matmul-hw.mlir:25363:18, :28213:20, :28214:12, :28215:12, :29440:165
  wire _T_1075 = readB_inst0_Bw_p0_wr_en[8'h34];	// matmul/matmul-hw.mlir:28216:15, :28217:12, :29440:165
  assign _T_822 = _T_1075 ? _T_1075 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28218:12
  assign _T_821 = _T_1075 ? readB_inst0_Bw_p0_wr_data[8'h34] : 32'bx;	// matmul/matmul-hw.mlir:25361:18, :28219:20, :28220:12, :28221:12, :29440:165
  wire _T_1076 = readB_inst0_Bw_p0_wr_en[8'h35];	// matmul/matmul-hw.mlir:28222:15, :28223:12, :29440:165
  assign _T_820 = _T_1076 ? _T_1076 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28224:12
  assign _T_819 = _T_1076 ? readB_inst0_Bw_p0_wr_data[8'h35] : 32'bx;	// matmul/matmul-hw.mlir:25359:18, :28225:20, :28226:12, :28227:12, :29440:165
  wire _T_1077 = readB_inst0_Bw_p0_wr_en[8'h36];	// matmul/matmul-hw.mlir:28228:15, :28229:12, :29440:165
  assign _T_818 = _T_1077 ? _T_1077 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28230:12
  assign _T_817 = _T_1077 ? readB_inst0_Bw_p0_wr_data[8'h36] : 32'bx;	// matmul/matmul-hw.mlir:25357:18, :28231:20, :28232:12, :28233:12, :29440:165
  wire _T_1078 = readB_inst0_Bw_p0_wr_en[8'h37];	// matmul/matmul-hw.mlir:28234:15, :28235:12, :29440:165
  assign _T_816 = _T_1078 ? _T_1078 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28236:12
  assign _T_815 = _T_1078 ? readB_inst0_Bw_p0_wr_data[8'h37] : 32'bx;	// matmul/matmul-hw.mlir:25355:18, :28237:20, :28238:12, :28239:12, :29440:165
  wire _T_1079 = readB_inst0_Bw_p0_wr_en[8'h38];	// matmul/matmul-hw.mlir:28240:15, :28241:12, :29440:165
  assign _T_814 = _T_1079 ? _T_1079 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28242:12
  assign _T_813 = _T_1079 ? readB_inst0_Bw_p0_wr_data[8'h38] : 32'bx;	// matmul/matmul-hw.mlir:25353:18, :28243:20, :28244:12, :28245:12, :29440:165
  wire _T_1080 = readB_inst0_Bw_p0_wr_en[8'h39];	// matmul/matmul-hw.mlir:28246:15, :28247:12, :29440:165
  assign _T_812 = _T_1080 ? _T_1080 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28248:12
  assign _T_811 = _T_1080 ? readB_inst0_Bw_p0_wr_data[8'h39] : 32'bx;	// matmul/matmul-hw.mlir:25351:18, :28249:20, :28250:12, :28251:12, :29440:165
  wire _T_1081 = readB_inst0_Bw_p0_wr_en[8'h3A];	// matmul/matmul-hw.mlir:28252:15, :28253:12, :29440:165
  assign _T_810 = _T_1081 ? _T_1081 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28254:12
  assign _T_809 = _T_1081 ? readB_inst0_Bw_p0_wr_data[8'h3A] : 32'bx;	// matmul/matmul-hw.mlir:25349:18, :28255:20, :28256:12, :28257:12, :29440:165
  wire _T_1082 = readB_inst0_Bw_p0_wr_en[8'h3B];	// matmul/matmul-hw.mlir:28258:15, :28259:12, :29440:165
  assign _T_808 = _T_1082 ? _T_1082 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28260:12
  assign _T_807 = _T_1082 ? readB_inst0_Bw_p0_wr_data[8'h3B] : 32'bx;	// matmul/matmul-hw.mlir:25347:18, :28261:20, :28262:12, :28263:12, :29440:165
  wire _T_1083 = readB_inst0_Bw_p0_wr_en[8'h3C];	// matmul/matmul-hw.mlir:28264:15, :28265:12, :29440:165
  assign _T_806 = _T_1083 ? _T_1083 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28266:12
  assign _T_805 = _T_1083 ? readB_inst0_Bw_p0_wr_data[8'h3C] : 32'bx;	// matmul/matmul-hw.mlir:25345:18, :28267:20, :28268:12, :28269:12, :29440:165
  wire _T_1084 = readB_inst0_Bw_p0_wr_en[8'h3D];	// matmul/matmul-hw.mlir:28270:15, :28271:12, :29440:165
  assign _T_804 = _T_1084 ? _T_1084 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28272:12
  assign _T_803 = _T_1084 ? readB_inst0_Bw_p0_wr_data[8'h3D] : 32'bx;	// matmul/matmul-hw.mlir:25343:18, :28273:20, :28274:12, :28275:12, :29440:165
  wire _T_1085 = readB_inst0_Bw_p0_wr_en[8'h3E];	// matmul/matmul-hw.mlir:28276:15, :28277:12, :29440:165
  assign _T_802 = _T_1085 ? _T_1085 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28278:12
  assign _T_801 = _T_1085 ? readB_inst0_Bw_p0_wr_data[8'h3E] : 32'bx;	// matmul/matmul-hw.mlir:25341:18, :28279:20, :28280:12, :28281:12, :29440:165
  wire _T_1086 = readB_inst0_Bw_p0_wr_en[8'h3F];	// matmul/matmul-hw.mlir:28282:15, :28283:12, :29440:165
  assign _T_800 = _T_1086 ? _T_1086 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28284:12
  assign _T_799 = _T_1086 ? readB_inst0_Bw_p0_wr_data[8'h3F] : 32'bx;	// matmul/matmul-hw.mlir:25339:18, :28285:20, :28286:12, :28287:12, :29440:165
  wire _T_1087 = readB_inst0_Bw_p0_wr_en[8'h40];	// matmul/matmul-hw.mlir:28288:15, :28289:12, :29440:165
  assign _T_798 = _T_1087 ? _T_1087 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28290:12
  assign _T_797 = _T_1087 ? readB_inst0_Bw_p0_wr_data[8'h40] : 32'bx;	// matmul/matmul-hw.mlir:25337:18, :28291:20, :28292:12, :28293:12, :29440:165
  wire _T_1088 = readB_inst0_Bw_p0_wr_en[8'h41];	// matmul/matmul-hw.mlir:28294:15, :28295:12, :29440:165
  assign _T_796 = _T_1088 ? _T_1088 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28296:12
  assign _T_795 = _T_1088 ? readB_inst0_Bw_p0_wr_data[8'h41] : 32'bx;	// matmul/matmul-hw.mlir:25335:18, :28297:20, :28298:12, :28299:12, :29440:165
  wire _T_1089 = readB_inst0_Bw_p0_wr_en[8'h42];	// matmul/matmul-hw.mlir:28300:15, :28301:12, :29440:165
  assign _T_794 = _T_1089 ? _T_1089 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28302:12
  assign _T_793 = _T_1089 ? readB_inst0_Bw_p0_wr_data[8'h42] : 32'bx;	// matmul/matmul-hw.mlir:25333:18, :28303:20, :28304:12, :28305:12, :29440:165
  wire _T_1090 = readB_inst0_Bw_p0_wr_en[8'h43];	// matmul/matmul-hw.mlir:28306:15, :28307:12, :29440:165
  assign _T_792 = _T_1090 ? _T_1090 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28308:12
  assign _T_791 = _T_1090 ? readB_inst0_Bw_p0_wr_data[8'h43] : 32'bx;	// matmul/matmul-hw.mlir:25331:18, :28309:20, :28310:12, :28311:12, :29440:165
  wire _T_1091 = readB_inst0_Bw_p0_wr_en[8'h44];	// matmul/matmul-hw.mlir:28312:15, :28313:12, :29440:165
  assign _T_790 = _T_1091 ? _T_1091 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28314:12
  assign _T_789 = _T_1091 ? readB_inst0_Bw_p0_wr_data[8'h44] : 32'bx;	// matmul/matmul-hw.mlir:25329:18, :28315:20, :28316:12, :28317:12, :29440:165
  wire _T_1092 = readB_inst0_Bw_p0_wr_en[8'h45];	// matmul/matmul-hw.mlir:28318:15, :28319:12, :29440:165
  assign _T_788 = _T_1092 ? _T_1092 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28320:12
  assign _T_787 = _T_1092 ? readB_inst0_Bw_p0_wr_data[8'h45] : 32'bx;	// matmul/matmul-hw.mlir:25327:18, :28321:20, :28322:12, :28323:12, :29440:165
  wire _T_1093 = readB_inst0_Bw_p0_wr_en[8'h46];	// matmul/matmul-hw.mlir:28324:15, :28325:12, :29440:165
  assign _T_786 = _T_1093 ? _T_1093 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28326:12
  assign _T_785 = _T_1093 ? readB_inst0_Bw_p0_wr_data[8'h46] : 32'bx;	// matmul/matmul-hw.mlir:25325:18, :28327:20, :28328:12, :28329:12, :29440:165
  wire _T_1094 = readB_inst0_Bw_p0_wr_en[8'h47];	// matmul/matmul-hw.mlir:28330:15, :28331:12, :29440:165
  assign _T_784 = _T_1094 ? _T_1094 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28332:12
  assign _T_783 = _T_1094 ? readB_inst0_Bw_p0_wr_data[8'h47] : 32'bx;	// matmul/matmul-hw.mlir:25323:18, :28333:20, :28334:12, :28335:12, :29440:165
  wire _T_1095 = readB_inst0_Bw_p0_wr_en[8'h48];	// matmul/matmul-hw.mlir:28336:15, :28337:12, :29440:165
  assign _T_782 = _T_1095 ? _T_1095 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28338:12
  assign _T_781 = _T_1095 ? readB_inst0_Bw_p0_wr_data[8'h48] : 32'bx;	// matmul/matmul-hw.mlir:25321:18, :28339:20, :28340:12, :28341:12, :29440:165
  wire _T_1096 = readB_inst0_Bw_p0_wr_en[8'h49];	// matmul/matmul-hw.mlir:28342:15, :28343:12, :29440:165
  assign _T_780 = _T_1096 ? _T_1096 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28344:12
  assign _T_779 = _T_1096 ? readB_inst0_Bw_p0_wr_data[8'h49] : 32'bx;	// matmul/matmul-hw.mlir:25319:18, :28345:20, :28346:12, :28347:12, :29440:165
  wire _T_1097 = readB_inst0_Bw_p0_wr_en[8'h4A];	// matmul/matmul-hw.mlir:28348:15, :28349:12, :29440:165
  assign _T_778 = _T_1097 ? _T_1097 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28350:12
  assign _T_777 = _T_1097 ? readB_inst0_Bw_p0_wr_data[8'h4A] : 32'bx;	// matmul/matmul-hw.mlir:25317:18, :28351:20, :28352:12, :28353:12, :29440:165
  wire _T_1098 = readB_inst0_Bw_p0_wr_en[8'h4B];	// matmul/matmul-hw.mlir:28354:15, :28355:12, :29440:165
  assign _T_776 = _T_1098 ? _T_1098 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28356:12
  assign _T_775 = _T_1098 ? readB_inst0_Bw_p0_wr_data[8'h4B] : 32'bx;	// matmul/matmul-hw.mlir:25315:18, :28357:20, :28358:12, :28359:12, :29440:165
  wire _T_1099 = readB_inst0_Bw_p0_wr_en[8'h4C];	// matmul/matmul-hw.mlir:28360:15, :28361:12, :29440:165
  assign _T_774 = _T_1099 ? _T_1099 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28362:12
  assign _T_773 = _T_1099 ? readB_inst0_Bw_p0_wr_data[8'h4C] : 32'bx;	// matmul/matmul-hw.mlir:25313:18, :28363:20, :28364:12, :28365:12, :29440:165
  wire _T_1100 = readB_inst0_Bw_p0_wr_en[8'h4D];	// matmul/matmul-hw.mlir:28366:15, :28367:12, :29440:165
  assign _T_772 = _T_1100 ? _T_1100 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28368:12
  assign _T_771 = _T_1100 ? readB_inst0_Bw_p0_wr_data[8'h4D] : 32'bx;	// matmul/matmul-hw.mlir:25311:18, :28369:20, :28370:12, :28371:12, :29440:165
  wire _T_1101 = readB_inst0_Bw_p0_wr_en[8'h4E];	// matmul/matmul-hw.mlir:28372:15, :28373:12, :29440:165
  assign _T_770 = _T_1101 ? _T_1101 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28374:12
  assign _T_769 = _T_1101 ? readB_inst0_Bw_p0_wr_data[8'h4E] : 32'bx;	// matmul/matmul-hw.mlir:25309:18, :28375:20, :28376:12, :28377:12, :29440:165
  wire _T_1102 = readB_inst0_Bw_p0_wr_en[8'h4F];	// matmul/matmul-hw.mlir:28378:15, :28379:12, :29440:165
  assign _T_768 = _T_1102 ? _T_1102 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28380:12
  assign _T_767 = _T_1102 ? readB_inst0_Bw_p0_wr_data[8'h4F] : 32'bx;	// matmul/matmul-hw.mlir:25307:18, :28381:20, :28382:12, :28383:12, :29440:165
  wire _T_1103 = readB_inst0_Bw_p0_wr_en[8'h50];	// matmul/matmul-hw.mlir:28384:15, :28385:12, :29440:165
  assign _T_766 = _T_1103 ? _T_1103 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28386:12
  assign _T_765 = _T_1103 ? readB_inst0_Bw_p0_wr_data[8'h50] : 32'bx;	// matmul/matmul-hw.mlir:25305:18, :28387:20, :28388:12, :28389:12, :29440:165
  wire _T_1104 = readB_inst0_Bw_p0_wr_en[8'h51];	// matmul/matmul-hw.mlir:28390:15, :28391:12, :29440:165
  assign _T_764 = _T_1104 ? _T_1104 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28392:12
  assign _T_763 = _T_1104 ? readB_inst0_Bw_p0_wr_data[8'h51] : 32'bx;	// matmul/matmul-hw.mlir:25303:18, :28393:20, :28394:12, :28395:12, :29440:165
  wire _T_1105 = readB_inst0_Bw_p0_wr_en[8'h52];	// matmul/matmul-hw.mlir:28396:15, :28397:12, :29440:165
  assign _T_762 = _T_1105 ? _T_1105 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28398:12
  assign _T_761 = _T_1105 ? readB_inst0_Bw_p0_wr_data[8'h52] : 32'bx;	// matmul/matmul-hw.mlir:25301:18, :28399:20, :28400:12, :28401:12, :29440:165
  wire _T_1106 = readB_inst0_Bw_p0_wr_en[8'h53];	// matmul/matmul-hw.mlir:28402:15, :28403:12, :29440:165
  assign _T_760 = _T_1106 ? _T_1106 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28404:12
  assign _T_759 = _T_1106 ? readB_inst0_Bw_p0_wr_data[8'h53] : 32'bx;	// matmul/matmul-hw.mlir:25299:18, :28405:20, :28406:12, :28407:12, :29440:165
  wire _T_1107 = readB_inst0_Bw_p0_wr_en[8'h54];	// matmul/matmul-hw.mlir:28408:15, :28409:12, :29440:165
  assign _T_758 = _T_1107 ? _T_1107 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28410:12
  assign _T_757 = _T_1107 ? readB_inst0_Bw_p0_wr_data[8'h54] : 32'bx;	// matmul/matmul-hw.mlir:25297:18, :28411:20, :28412:12, :28413:12, :29440:165
  wire _T_1108 = readB_inst0_Bw_p0_wr_en[8'h55];	// matmul/matmul-hw.mlir:28414:15, :28415:12, :29440:165
  assign _T_756 = _T_1108 ? _T_1108 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28416:12
  assign _T_755 = _T_1108 ? readB_inst0_Bw_p0_wr_data[8'h55] : 32'bx;	// matmul/matmul-hw.mlir:25295:18, :28417:20, :28418:12, :28419:12, :29440:165
  wire _T_1109 = readB_inst0_Bw_p0_wr_en[8'h56];	// matmul/matmul-hw.mlir:28420:15, :28421:12, :29440:165
  assign _T_754 = _T_1109 ? _T_1109 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28422:12
  assign _T_753 = _T_1109 ? readB_inst0_Bw_p0_wr_data[8'h56] : 32'bx;	// matmul/matmul-hw.mlir:25293:18, :28423:20, :28424:12, :28425:12, :29440:165
  wire _T_1110 = readB_inst0_Bw_p0_wr_en[8'h57];	// matmul/matmul-hw.mlir:28426:15, :28427:12, :29440:165
  assign _T_752 = _T_1110 ? _T_1110 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28428:12
  assign _T_751 = _T_1110 ? readB_inst0_Bw_p0_wr_data[8'h57] : 32'bx;	// matmul/matmul-hw.mlir:25291:18, :28429:20, :28430:12, :28431:12, :29440:165
  wire _T_1111 = readB_inst0_Bw_p0_wr_en[8'h58];	// matmul/matmul-hw.mlir:28432:15, :28433:12, :29440:165
  assign _T_750 = _T_1111 ? _T_1111 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28434:12
  assign _T_749 = _T_1111 ? readB_inst0_Bw_p0_wr_data[8'h58] : 32'bx;	// matmul/matmul-hw.mlir:25289:18, :28435:20, :28436:12, :28437:12, :29440:165
  wire _T_1112 = readB_inst0_Bw_p0_wr_en[8'h59];	// matmul/matmul-hw.mlir:28438:15, :28439:12, :29440:165
  assign _T_748 = _T_1112 ? _T_1112 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28440:12
  assign _T_747 = _T_1112 ? readB_inst0_Bw_p0_wr_data[8'h59] : 32'bx;	// matmul/matmul-hw.mlir:25287:18, :28441:20, :28442:12, :28443:12, :29440:165
  wire _T_1113 = readB_inst0_Bw_p0_wr_en[8'h5A];	// matmul/matmul-hw.mlir:28444:15, :28445:12, :29440:165
  assign _T_746 = _T_1113 ? _T_1113 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28446:12
  assign _T_745 = _T_1113 ? readB_inst0_Bw_p0_wr_data[8'h5A] : 32'bx;	// matmul/matmul-hw.mlir:25285:18, :28447:20, :28448:12, :28449:12, :29440:165
  wire _T_1114 = readB_inst0_Bw_p0_wr_en[8'h5B];	// matmul/matmul-hw.mlir:28450:15, :28451:12, :29440:165
  assign _T_744 = _T_1114 ? _T_1114 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28452:12
  assign _T_743 = _T_1114 ? readB_inst0_Bw_p0_wr_data[8'h5B] : 32'bx;	// matmul/matmul-hw.mlir:25283:18, :28453:20, :28454:12, :28455:12, :29440:165
  wire _T_1115 = readB_inst0_Bw_p0_wr_en[8'h5C];	// matmul/matmul-hw.mlir:28456:15, :28457:12, :29440:165
  assign _T_742 = _T_1115 ? _T_1115 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28458:12
  assign _T_741 = _T_1115 ? readB_inst0_Bw_p0_wr_data[8'h5C] : 32'bx;	// matmul/matmul-hw.mlir:25281:18, :28459:20, :28460:12, :28461:12, :29440:165
  wire _T_1116 = readB_inst0_Bw_p0_wr_en[8'h5D];	// matmul/matmul-hw.mlir:28462:15, :28463:12, :29440:165
  assign _T_740 = _T_1116 ? _T_1116 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28464:12
  assign _T_739 = _T_1116 ? readB_inst0_Bw_p0_wr_data[8'h5D] : 32'bx;	// matmul/matmul-hw.mlir:25279:18, :28465:20, :28466:12, :28467:12, :29440:165
  wire _T_1117 = readB_inst0_Bw_p0_wr_en[8'h5E];	// matmul/matmul-hw.mlir:28468:15, :28469:12, :29440:165
  assign _T_738 = _T_1117 ? _T_1117 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28470:12
  assign _T_737 = _T_1117 ? readB_inst0_Bw_p0_wr_data[8'h5E] : 32'bx;	// matmul/matmul-hw.mlir:25277:18, :28471:20, :28472:12, :28473:12, :29440:165
  wire _T_1118 = readB_inst0_Bw_p0_wr_en[8'h5F];	// matmul/matmul-hw.mlir:28474:15, :28475:12, :29440:165
  assign _T_736 = _T_1118 ? _T_1118 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28476:12
  assign _T_735 = _T_1118 ? readB_inst0_Bw_p0_wr_data[8'h5F] : 32'bx;	// matmul/matmul-hw.mlir:25275:18, :28477:20, :28478:12, :28479:12, :29440:165
  wire _T_1119 = readB_inst0_Bw_p0_wr_en[8'h60];	// matmul/matmul-hw.mlir:28480:15, :28481:12, :29440:165
  assign _T_734 = _T_1119 ? _T_1119 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28482:12
  assign _T_733 = _T_1119 ? readB_inst0_Bw_p0_wr_data[8'h60] : 32'bx;	// matmul/matmul-hw.mlir:25273:18, :28483:20, :28484:12, :28485:12, :29440:165
  wire _T_1120 = readB_inst0_Bw_p0_wr_en[8'h61];	// matmul/matmul-hw.mlir:28486:15, :28487:12, :29440:165
  assign _T_732 = _T_1120 ? _T_1120 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28488:12
  assign _T_731 = _T_1120 ? readB_inst0_Bw_p0_wr_data[8'h61] : 32'bx;	// matmul/matmul-hw.mlir:25271:18, :28489:20, :28490:12, :28491:12, :29440:165
  wire _T_1121 = readB_inst0_Bw_p0_wr_en[8'h62];	// matmul/matmul-hw.mlir:28492:15, :28493:12, :29440:165
  assign _T_730 = _T_1121 ? _T_1121 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28494:12
  assign _T_729 = _T_1121 ? readB_inst0_Bw_p0_wr_data[8'h62] : 32'bx;	// matmul/matmul-hw.mlir:25269:18, :28495:20, :28496:12, :28497:12, :29440:165
  wire _T_1122 = readB_inst0_Bw_p0_wr_en[8'h63];	// matmul/matmul-hw.mlir:28498:15, :28499:12, :29440:165
  assign _T_728 = _T_1122 ? _T_1122 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28500:12
  assign _T_727 = _T_1122 ? readB_inst0_Bw_p0_wr_data[8'h63] : 32'bx;	// matmul/matmul-hw.mlir:25267:18, :28501:20, :28502:12, :28503:12, :29440:165
  wire _T_1123 = readB_inst0_Bw_p0_wr_en[8'h64];	// matmul/matmul-hw.mlir:28504:16, :28505:12, :29440:165
  assign _T_726 = _T_1123 ? _T_1123 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28506:12
  assign _T_725 = _T_1123 ? readB_inst0_Bw_p0_wr_data[8'h64] : 32'bx;	// matmul/matmul-hw.mlir:25265:18, :28507:21, :28508:12, :28509:12, :29440:165
  wire _T_1124 = readB_inst0_Bw_p0_wr_en[8'h65];	// matmul/matmul-hw.mlir:28510:16, :28511:12, :29440:165
  assign _T_724 = _T_1124 ? _T_1124 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28512:12
  assign _T_723 = _T_1124 ? readB_inst0_Bw_p0_wr_data[8'h65] : 32'bx;	// matmul/matmul-hw.mlir:25263:18, :28513:21, :28514:12, :28515:12, :29440:165
  wire _T_1125 = readB_inst0_Bw_p0_wr_en[8'h66];	// matmul/matmul-hw.mlir:28516:16, :28517:12, :29440:165
  assign _T_722 = _T_1125 ? _T_1125 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28518:12
  assign _T_721 = _T_1125 ? readB_inst0_Bw_p0_wr_data[8'h66] : 32'bx;	// matmul/matmul-hw.mlir:25261:18, :28519:21, :28520:12, :28521:12, :29440:165
  wire _T_1126 = readB_inst0_Bw_p0_wr_en[8'h67];	// matmul/matmul-hw.mlir:28522:16, :28523:12, :29440:165
  assign _T_720 = _T_1126 ? _T_1126 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28524:12
  assign _T_719 = _T_1126 ? readB_inst0_Bw_p0_wr_data[8'h67] : 32'bx;	// matmul/matmul-hw.mlir:25259:18, :28525:21, :28526:12, :28527:12, :29440:165
  wire _T_1127 = readB_inst0_Bw_p0_wr_en[8'h68];	// matmul/matmul-hw.mlir:28528:16, :28529:12, :29440:165
  assign _T_718 = _T_1127 ? _T_1127 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28530:12
  assign _T_717 = _T_1127 ? readB_inst0_Bw_p0_wr_data[8'h68] : 32'bx;	// matmul/matmul-hw.mlir:25257:18, :28531:21, :28532:12, :28533:12, :29440:165
  wire _T_1128 = readB_inst0_Bw_p0_wr_en[8'h69];	// matmul/matmul-hw.mlir:28534:16, :28535:12, :29440:165
  assign _T_716 = _T_1128 ? _T_1128 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28536:12
  assign _T_715 = _T_1128 ? readB_inst0_Bw_p0_wr_data[8'h69] : 32'bx;	// matmul/matmul-hw.mlir:25255:18, :28537:21, :28538:12, :28539:12, :29440:165
  wire _T_1129 = readB_inst0_Bw_p0_wr_en[8'h6A];	// matmul/matmul-hw.mlir:28540:16, :28541:12, :29440:165
  assign _T_714 = _T_1129 ? _T_1129 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28542:12
  assign _T_713 = _T_1129 ? readB_inst0_Bw_p0_wr_data[8'h6A] : 32'bx;	// matmul/matmul-hw.mlir:25253:18, :28543:21, :28544:12, :28545:12, :29440:165
  wire _T_1130 = readB_inst0_Bw_p0_wr_en[8'h6B];	// matmul/matmul-hw.mlir:28546:16, :28547:12, :29440:165
  assign _T_712 = _T_1130 ? _T_1130 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28548:12
  assign _T_711 = _T_1130 ? readB_inst0_Bw_p0_wr_data[8'h6B] : 32'bx;	// matmul/matmul-hw.mlir:25251:18, :28549:21, :28550:12, :28551:12, :29440:165
  wire _T_1131 = readB_inst0_Bw_p0_wr_en[8'h6C];	// matmul/matmul-hw.mlir:28552:16, :28553:12, :29440:165
  assign _T_710 = _T_1131 ? _T_1131 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28554:12
  assign _T_709 = _T_1131 ? readB_inst0_Bw_p0_wr_data[8'h6C] : 32'bx;	// matmul/matmul-hw.mlir:25249:18, :28555:21, :28556:12, :28557:12, :29440:165
  wire _T_1132 = readB_inst0_Bw_p0_wr_en[8'h6D];	// matmul/matmul-hw.mlir:28558:16, :28559:12, :29440:165
  assign _T_708 = _T_1132 ? _T_1132 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28560:12
  assign _T_707 = _T_1132 ? readB_inst0_Bw_p0_wr_data[8'h6D] : 32'bx;	// matmul/matmul-hw.mlir:25247:18, :28561:21, :28562:12, :28563:12, :29440:165
  wire _T_1133 = readB_inst0_Bw_p0_wr_en[8'h6E];	// matmul/matmul-hw.mlir:28564:16, :28565:12, :29440:165
  assign _T_706 = _T_1133 ? _T_1133 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28566:12
  assign _T_705 = _T_1133 ? readB_inst0_Bw_p0_wr_data[8'h6E] : 32'bx;	// matmul/matmul-hw.mlir:25245:18, :28567:21, :28568:12, :28569:12, :29440:165
  wire _T_1134 = readB_inst0_Bw_p0_wr_en[8'h6F];	// matmul/matmul-hw.mlir:28570:16, :28571:12, :29440:165
  assign _T_704 = _T_1134 ? _T_1134 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28572:12
  assign _T_703 = _T_1134 ? readB_inst0_Bw_p0_wr_data[8'h6F] : 32'bx;	// matmul/matmul-hw.mlir:25243:18, :28573:21, :28574:12, :28575:12, :29440:165
  wire _T_1135 = readB_inst0_Bw_p0_wr_en[8'h70];	// matmul/matmul-hw.mlir:28576:16, :28577:12, :29440:165
  assign _T_702 = _T_1135 ? _T_1135 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28578:12
  assign _T_701 = _T_1135 ? readB_inst0_Bw_p0_wr_data[8'h70] : 32'bx;	// matmul/matmul-hw.mlir:25241:18, :28579:21, :28580:12, :28581:12, :29440:165
  wire _T_1136 = readB_inst0_Bw_p0_wr_en[8'h71];	// matmul/matmul-hw.mlir:28582:16, :28583:12, :29440:165
  assign _T_700 = _T_1136 ? _T_1136 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28584:12
  assign _T_699 = _T_1136 ? readB_inst0_Bw_p0_wr_data[8'h71] : 32'bx;	// matmul/matmul-hw.mlir:25239:18, :28585:21, :28586:12, :28587:12, :29440:165
  wire _T_1137 = readB_inst0_Bw_p0_wr_en[8'h72];	// matmul/matmul-hw.mlir:28588:16, :28589:12, :29440:165
  assign _T_698 = _T_1137 ? _T_1137 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28590:12
  assign _T_697 = _T_1137 ? readB_inst0_Bw_p0_wr_data[8'h72] : 32'bx;	// matmul/matmul-hw.mlir:25237:18, :28591:21, :28592:12, :28593:12, :29440:165
  wire _T_1138 = readB_inst0_Bw_p0_wr_en[8'h73];	// matmul/matmul-hw.mlir:28594:16, :28595:12, :29440:165
  assign _T_696 = _T_1138 ? _T_1138 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28596:12
  assign _T_695 = _T_1138 ? readB_inst0_Bw_p0_wr_data[8'h73] : 32'bx;	// matmul/matmul-hw.mlir:25235:18, :28597:21, :28598:12, :28599:12, :29440:165
  wire _T_1139 = readB_inst0_Bw_p0_wr_en[8'h74];	// matmul/matmul-hw.mlir:28600:16, :28601:12, :29440:165
  assign _T_694 = _T_1139 ? _T_1139 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28602:12
  assign _T_693 = _T_1139 ? readB_inst0_Bw_p0_wr_data[8'h74] : 32'bx;	// matmul/matmul-hw.mlir:25233:18, :28603:21, :28604:12, :28605:12, :29440:165
  wire _T_1140 = readB_inst0_Bw_p0_wr_en[8'h75];	// matmul/matmul-hw.mlir:28606:16, :28607:12, :29440:165
  assign _T_692 = _T_1140 ? _T_1140 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28608:12
  assign _T_691 = _T_1140 ? readB_inst0_Bw_p0_wr_data[8'h75] : 32'bx;	// matmul/matmul-hw.mlir:25231:18, :28609:21, :28610:12, :28611:12, :29440:165
  wire _T_1141 = readB_inst0_Bw_p0_wr_en[8'h76];	// matmul/matmul-hw.mlir:28612:16, :28613:12, :29440:165
  assign _T_690 = _T_1141 ? _T_1141 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28614:12
  assign _T_689 = _T_1141 ? readB_inst0_Bw_p0_wr_data[8'h76] : 32'bx;	// matmul/matmul-hw.mlir:25229:18, :28615:21, :28616:12, :28617:12, :29440:165
  wire _T_1142 = readB_inst0_Bw_p0_wr_en[8'h77];	// matmul/matmul-hw.mlir:28618:16, :28619:12, :29440:165
  assign _T_688 = _T_1142 ? _T_1142 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28620:12
  assign _T_687 = _T_1142 ? readB_inst0_Bw_p0_wr_data[8'h77] : 32'bx;	// matmul/matmul-hw.mlir:25227:18, :28621:21, :28622:12, :28623:12, :29440:165
  wire _T_1143 = readB_inst0_Bw_p0_wr_en[8'h78];	// matmul/matmul-hw.mlir:28624:16, :28625:12, :29440:165
  assign _T_686 = _T_1143 ? _T_1143 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28626:12
  assign _T_685 = _T_1143 ? readB_inst0_Bw_p0_wr_data[8'h78] : 32'bx;	// matmul/matmul-hw.mlir:25225:18, :28627:21, :28628:12, :28629:12, :29440:165
  wire _T_1144 = readB_inst0_Bw_p0_wr_en[8'h79];	// matmul/matmul-hw.mlir:28630:16, :28631:12, :29440:165
  assign _T_684 = _T_1144 ? _T_1144 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28632:12
  assign _T_683 = _T_1144 ? readB_inst0_Bw_p0_wr_data[8'h79] : 32'bx;	// matmul/matmul-hw.mlir:25223:18, :28633:21, :28634:12, :28635:12, :29440:165
  wire _T_1145 = readB_inst0_Bw_p0_wr_en[8'h7A];	// matmul/matmul-hw.mlir:28636:16, :28637:12, :29440:165
  assign _T_682 = _T_1145 ? _T_1145 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28638:12
  assign _T_681 = _T_1145 ? readB_inst0_Bw_p0_wr_data[8'h7A] : 32'bx;	// matmul/matmul-hw.mlir:25221:18, :28639:21, :28640:12, :28641:12, :29440:165
  wire _T_1146 = readB_inst0_Bw_p0_wr_en[8'h7B];	// matmul/matmul-hw.mlir:28642:16, :28643:12, :29440:165
  assign _T_680 = _T_1146 ? _T_1146 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28644:12
  assign _T_679 = _T_1146 ? readB_inst0_Bw_p0_wr_data[8'h7B] : 32'bx;	// matmul/matmul-hw.mlir:25219:18, :28645:21, :28646:12, :28647:12, :29440:165
  wire _T_1147 = readB_inst0_Bw_p0_wr_en[8'h7C];	// matmul/matmul-hw.mlir:28648:16, :28649:12, :29440:165
  assign _T_678 = _T_1147 ? _T_1147 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28650:12
  assign _T_677 = _T_1147 ? readB_inst0_Bw_p0_wr_data[8'h7C] : 32'bx;	// matmul/matmul-hw.mlir:25217:18, :28651:21, :28652:12, :28653:12, :29440:165
  wire _T_1148 = readB_inst0_Bw_p0_wr_en[8'h7D];	// matmul/matmul-hw.mlir:28654:16, :28655:12, :29440:165
  assign _T_676 = _T_1148 ? _T_1148 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28656:12
  assign _T_675 = _T_1148 ? readB_inst0_Bw_p0_wr_data[8'h7D] : 32'bx;	// matmul/matmul-hw.mlir:25215:18, :28657:21, :28658:12, :28659:12, :29440:165
  wire _T_1149 = readB_inst0_Bw_p0_wr_en[8'h7E];	// matmul/matmul-hw.mlir:28660:16, :28661:12, :29440:165
  assign _T_674 = _T_1149 ? _T_1149 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28662:12
  assign _T_673 = _T_1149 ? readB_inst0_Bw_p0_wr_data[8'h7E] : 32'bx;	// matmul/matmul-hw.mlir:25213:18, :28663:21, :28664:12, :28665:12, :29440:165
  wire _T_1150 = readB_inst0_Bw_p0_wr_en[8'h7F];	// matmul/matmul-hw.mlir:28666:16, :28667:12, :29440:165
  assign _T_672 = _T_1150 ? _T_1150 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28668:12
  assign _T_671 = _T_1150 ? readB_inst0_Bw_p0_wr_data[8'h7F] : 32'bx;	// matmul/matmul-hw.mlir:25211:18, :28669:21, :28670:12, :28671:12, :29440:165
  wire _T_1151 = readB_inst0_Bw_p0_wr_en[8'h80];	// matmul/matmul-hw.mlir:28672:17, :28673:12, :29440:165
  assign _T_670 = _T_1151 ? _T_1151 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28674:12
  assign _T_669 = _T_1151 ? readB_inst0_Bw_p0_wr_data[8'h80] : 32'bx;	// matmul/matmul-hw.mlir:25209:18, :28675:22, :28676:12, :28677:12, :29440:165
  wire _T_1152 = readB_inst0_Bw_p0_wr_en[8'h81];	// matmul/matmul-hw.mlir:28678:17, :28679:12, :29440:165
  assign _T_668 = _T_1152 ? _T_1152 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28680:12
  assign _T_667 = _T_1152 ? readB_inst0_Bw_p0_wr_data[8'h81] : 32'bx;	// matmul/matmul-hw.mlir:25207:18, :28681:22, :28682:12, :28683:12, :29440:165
  wire _T_1153 = readB_inst0_Bw_p0_wr_en[8'h82];	// matmul/matmul-hw.mlir:28684:17, :28685:12, :29440:165
  assign _T_666 = _T_1153 ? _T_1153 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28686:12
  assign _T_665 = _T_1153 ? readB_inst0_Bw_p0_wr_data[8'h82] : 32'bx;	// matmul/matmul-hw.mlir:25205:18, :28687:22, :28688:12, :28689:12, :29440:165
  wire _T_1154 = readB_inst0_Bw_p0_wr_en[8'h83];	// matmul/matmul-hw.mlir:28690:17, :28691:12, :29440:165
  assign _T_664 = _T_1154 ? _T_1154 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28692:12
  assign _T_663 = _T_1154 ? readB_inst0_Bw_p0_wr_data[8'h83] : 32'bx;	// matmul/matmul-hw.mlir:25203:18, :28693:22, :28694:12, :28695:12, :29440:165
  wire _T_1155 = readB_inst0_Bw_p0_wr_en[8'h84];	// matmul/matmul-hw.mlir:28696:17, :28697:12, :29440:165
  assign _T_662 = _T_1155 ? _T_1155 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28698:12
  assign _T_661 = _T_1155 ? readB_inst0_Bw_p0_wr_data[8'h84] : 32'bx;	// matmul/matmul-hw.mlir:25201:18, :28699:22, :28700:12, :28701:12, :29440:165
  wire _T_1156 = readB_inst0_Bw_p0_wr_en[8'h85];	// matmul/matmul-hw.mlir:28702:17, :28703:12, :29440:165
  assign _T_660 = _T_1156 ? _T_1156 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28704:12
  assign _T_659 = _T_1156 ? readB_inst0_Bw_p0_wr_data[8'h85] : 32'bx;	// matmul/matmul-hw.mlir:25199:18, :28705:22, :28706:12, :28707:12, :29440:165
  wire _T_1157 = readB_inst0_Bw_p0_wr_en[8'h86];	// matmul/matmul-hw.mlir:28708:17, :28709:12, :29440:165
  assign _T_658 = _T_1157 ? _T_1157 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28710:12
  assign _T_657 = _T_1157 ? readB_inst0_Bw_p0_wr_data[8'h86] : 32'bx;	// matmul/matmul-hw.mlir:25197:18, :28711:22, :28712:12, :28713:12, :29440:165
  wire _T_1158 = readB_inst0_Bw_p0_wr_en[8'h87];	// matmul/matmul-hw.mlir:28714:17, :28715:12, :29440:165
  assign _T_656 = _T_1158 ? _T_1158 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28716:12
  assign _T_655 = _T_1158 ? readB_inst0_Bw_p0_wr_data[8'h87] : 32'bx;	// matmul/matmul-hw.mlir:25195:18, :28717:22, :28718:12, :28719:12, :29440:165
  wire _T_1159 = readB_inst0_Bw_p0_wr_en[8'h88];	// matmul/matmul-hw.mlir:28720:17, :28721:12, :29440:165
  assign _T_654 = _T_1159 ? _T_1159 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28722:12
  assign _T_653 = _T_1159 ? readB_inst0_Bw_p0_wr_data[8'h88] : 32'bx;	// matmul/matmul-hw.mlir:25193:18, :28723:22, :28724:12, :28725:12, :29440:165
  wire _T_1160 = readB_inst0_Bw_p0_wr_en[8'h89];	// matmul/matmul-hw.mlir:28726:17, :28727:12, :29440:165
  assign _T_652 = _T_1160 ? _T_1160 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28728:12
  assign _T_651 = _T_1160 ? readB_inst0_Bw_p0_wr_data[8'h89] : 32'bx;	// matmul/matmul-hw.mlir:25191:18, :28729:22, :28730:12, :28731:12, :29440:165
  wire _T_1161 = readB_inst0_Bw_p0_wr_en[8'h8A];	// matmul/matmul-hw.mlir:28732:17, :28733:12, :29440:165
  assign _T_650 = _T_1161 ? _T_1161 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28734:12
  assign _T_649 = _T_1161 ? readB_inst0_Bw_p0_wr_data[8'h8A] : 32'bx;	// matmul/matmul-hw.mlir:25189:18, :28735:22, :28736:12, :28737:12, :29440:165
  wire _T_1162 = readB_inst0_Bw_p0_wr_en[8'h8B];	// matmul/matmul-hw.mlir:28738:17, :28739:12, :29440:165
  assign _T_648 = _T_1162 ? _T_1162 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28740:12
  assign _T_647 = _T_1162 ? readB_inst0_Bw_p0_wr_data[8'h8B] : 32'bx;	// matmul/matmul-hw.mlir:25187:18, :28741:22, :28742:12, :28743:12, :29440:165
  wire _T_1163 = readB_inst0_Bw_p0_wr_en[8'h8C];	// matmul/matmul-hw.mlir:28744:17, :28745:12, :29440:165
  assign _T_646 = _T_1163 ? _T_1163 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28746:12
  assign _T_645 = _T_1163 ? readB_inst0_Bw_p0_wr_data[8'h8C] : 32'bx;	// matmul/matmul-hw.mlir:25185:18, :28747:22, :28748:12, :28749:12, :29440:165
  wire _T_1164 = readB_inst0_Bw_p0_wr_en[8'h8D];	// matmul/matmul-hw.mlir:28750:17, :28751:12, :29440:165
  assign _T_644 = _T_1164 ? _T_1164 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28752:12
  assign _T_643 = _T_1164 ? readB_inst0_Bw_p0_wr_data[8'h8D] : 32'bx;	// matmul/matmul-hw.mlir:25183:18, :28753:22, :28754:12, :28755:12, :29440:165
  wire _T_1165 = readB_inst0_Bw_p0_wr_en[8'h8E];	// matmul/matmul-hw.mlir:28756:17, :28757:12, :29440:165
  assign _T_642 = _T_1165 ? _T_1165 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28758:12
  assign _T_641 = _T_1165 ? readB_inst0_Bw_p0_wr_data[8'h8E] : 32'bx;	// matmul/matmul-hw.mlir:25181:18, :28759:22, :28760:12, :28761:12, :29440:165
  wire _T_1166 = readB_inst0_Bw_p0_wr_en[8'h8F];	// matmul/matmul-hw.mlir:28762:17, :28763:12, :29440:165
  assign _T_640 = _T_1166 ? _T_1166 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28764:12
  assign _T_639 = _T_1166 ? readB_inst0_Bw_p0_wr_data[8'h8F] : 32'bx;	// matmul/matmul-hw.mlir:25179:18, :28765:22, :28766:12, :28767:12, :29440:165
  wire _T_1167 = readB_inst0_Bw_p0_wr_en[8'h90];	// matmul/matmul-hw.mlir:28768:17, :28769:12, :29440:165
  assign _T_638 = _T_1167 ? _T_1167 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28770:12
  assign _T_637 = _T_1167 ? readB_inst0_Bw_p0_wr_data[8'h90] : 32'bx;	// matmul/matmul-hw.mlir:25177:18, :28771:22, :28772:12, :28773:12, :29440:165
  wire _T_1168 = readB_inst0_Bw_p0_wr_en[8'h91];	// matmul/matmul-hw.mlir:28774:17, :28775:12, :29440:165
  assign _T_636 = _T_1168 ? _T_1168 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28776:12
  assign _T_635 = _T_1168 ? readB_inst0_Bw_p0_wr_data[8'h91] : 32'bx;	// matmul/matmul-hw.mlir:25175:18, :28777:22, :28778:12, :28779:12, :29440:165
  wire _T_1169 = readB_inst0_Bw_p0_wr_en[8'h92];	// matmul/matmul-hw.mlir:28780:17, :28781:12, :29440:165
  assign _T_634 = _T_1169 ? _T_1169 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28782:12
  assign _T_633 = _T_1169 ? readB_inst0_Bw_p0_wr_data[8'h92] : 32'bx;	// matmul/matmul-hw.mlir:25173:18, :28783:22, :28784:12, :28785:12, :29440:165
  wire _T_1170 = readB_inst0_Bw_p0_wr_en[8'h93];	// matmul/matmul-hw.mlir:28786:17, :28787:12, :29440:165
  assign _T_632 = _T_1170 ? _T_1170 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28788:12
  assign _T_631 = _T_1170 ? readB_inst0_Bw_p0_wr_data[8'h93] : 32'bx;	// matmul/matmul-hw.mlir:25171:18, :28789:22, :28790:12, :28791:12, :29440:165
  wire _T_1171 = readB_inst0_Bw_p0_wr_en[8'h94];	// matmul/matmul-hw.mlir:28792:17, :28793:12, :29440:165
  assign _T_630 = _T_1171 ? _T_1171 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28794:12
  assign _T_629 = _T_1171 ? readB_inst0_Bw_p0_wr_data[8'h94] : 32'bx;	// matmul/matmul-hw.mlir:25169:18, :28795:22, :28796:12, :28797:12, :29440:165
  wire _T_1172 = readB_inst0_Bw_p0_wr_en[8'h95];	// matmul/matmul-hw.mlir:28798:17, :28799:12, :29440:165
  assign _T_628 = _T_1172 ? _T_1172 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28800:12
  assign _T_627 = _T_1172 ? readB_inst0_Bw_p0_wr_data[8'h95] : 32'bx;	// matmul/matmul-hw.mlir:25167:18, :28801:22, :28802:12, :28803:12, :29440:165
  wire _T_1173 = readB_inst0_Bw_p0_wr_en[8'h96];	// matmul/matmul-hw.mlir:28804:17, :28805:12, :29440:165
  assign _T_626 = _T_1173 ? _T_1173 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28806:12
  assign _T_625 = _T_1173 ? readB_inst0_Bw_p0_wr_data[8'h96] : 32'bx;	// matmul/matmul-hw.mlir:25165:18, :28807:22, :28808:12, :28809:12, :29440:165
  wire _T_1174 = readB_inst0_Bw_p0_wr_en[8'h97];	// matmul/matmul-hw.mlir:28810:17, :28811:12, :29440:165
  assign _T_624 = _T_1174 ? _T_1174 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28812:12
  assign _T_623 = _T_1174 ? readB_inst0_Bw_p0_wr_data[8'h97] : 32'bx;	// matmul/matmul-hw.mlir:25163:18, :28813:22, :28814:12, :28815:12, :29440:165
  wire _T_1175 = readB_inst0_Bw_p0_wr_en[8'h98];	// matmul/matmul-hw.mlir:28816:17, :28817:12, :29440:165
  assign _T_622 = _T_1175 ? _T_1175 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28818:12
  assign _T_621 = _T_1175 ? readB_inst0_Bw_p0_wr_data[8'h98] : 32'bx;	// matmul/matmul-hw.mlir:25161:18, :28819:22, :28820:12, :28821:12, :29440:165
  wire _T_1176 = readB_inst0_Bw_p0_wr_en[8'h99];	// matmul/matmul-hw.mlir:28822:17, :28823:12, :29440:165
  assign _T_620 = _T_1176 ? _T_1176 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28824:12
  assign _T_619 = _T_1176 ? readB_inst0_Bw_p0_wr_data[8'h99] : 32'bx;	// matmul/matmul-hw.mlir:25159:18, :28825:22, :28826:12, :28827:12, :29440:165
  wire _T_1177 = readB_inst0_Bw_p0_wr_en[8'h9A];	// matmul/matmul-hw.mlir:28828:17, :28829:12, :29440:165
  assign _T_618 = _T_1177 ? _T_1177 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28830:12
  assign _T_617 = _T_1177 ? readB_inst0_Bw_p0_wr_data[8'h9A] : 32'bx;	// matmul/matmul-hw.mlir:25157:18, :28831:22, :28832:12, :28833:12, :29440:165
  wire _T_1178 = readB_inst0_Bw_p0_wr_en[8'h9B];	// matmul/matmul-hw.mlir:28834:17, :28835:12, :29440:165
  assign _T_616 = _T_1178 ? _T_1178 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28836:12
  assign _T_615 = _T_1178 ? readB_inst0_Bw_p0_wr_data[8'h9B] : 32'bx;	// matmul/matmul-hw.mlir:25155:18, :28837:22, :28838:12, :28839:12, :29440:165
  wire _T_1179 = readB_inst0_Bw_p0_wr_en[8'h9C];	// matmul/matmul-hw.mlir:28840:17, :28841:12, :29440:165
  assign _T_614 = _T_1179 ? _T_1179 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28842:12
  assign _T_613 = _T_1179 ? readB_inst0_Bw_p0_wr_data[8'h9C] : 32'bx;	// matmul/matmul-hw.mlir:25153:18, :28843:22, :28844:12, :28845:12, :29440:165
  wire _T_1180 = readB_inst0_Bw_p0_wr_en[8'h9D];	// matmul/matmul-hw.mlir:28846:16, :28847:12, :29440:165
  assign _T_612 = _T_1180 ? _T_1180 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28848:12
  assign _T_611 = _T_1180 ? readB_inst0_Bw_p0_wr_data[8'h9D] : 32'bx;	// matmul/matmul-hw.mlir:25151:18, :28849:21, :28850:12, :28851:12, :29440:165
  wire _T_1181 = readB_inst0_Bw_p0_wr_en[8'h9E];	// matmul/matmul-hw.mlir:28852:16, :28853:12, :29440:165
  assign _T_610 = _T_1181 ? _T_1181 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28854:12
  assign _T_609 = _T_1181 ? readB_inst0_Bw_p0_wr_data[8'h9E] : 32'bx;	// matmul/matmul-hw.mlir:25149:18, :28855:21, :28856:12, :28857:12, :29440:165
  wire _T_1182 = readB_inst0_Bw_p0_wr_en[8'h9F];	// matmul/matmul-hw.mlir:28858:16, :28859:12, :29440:165
  assign _T_608 = _T_1182 ? _T_1182 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28860:12
  assign _T_607 = _T_1182 ? readB_inst0_Bw_p0_wr_data[8'h9F] : 32'bx;	// matmul/matmul-hw.mlir:25147:18, :28861:21, :28862:12, :28863:12, :29440:165
  wire _T_1183 = readB_inst0_Bw_p0_wr_en[8'hA0];	// matmul/matmul-hw.mlir:28864:16, :28865:12, :29440:165
  assign _T_606 = _T_1183 ? _T_1183 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28866:12
  assign _T_605 = _T_1183 ? readB_inst0_Bw_p0_wr_data[8'hA0] : 32'bx;	// matmul/matmul-hw.mlir:25145:18, :28867:21, :28868:12, :28869:12, :29440:165
  wire _T_1184 = readB_inst0_Bw_p0_wr_en[8'hA1];	// matmul/matmul-hw.mlir:28870:16, :28871:12, :29440:165
  assign _T_604 = _T_1184 ? _T_1184 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28872:12
  assign _T_603 = _T_1184 ? readB_inst0_Bw_p0_wr_data[8'hA1] : 32'bx;	// matmul/matmul-hw.mlir:25143:18, :28873:21, :28874:12, :28875:12, :29440:165
  wire _T_1185 = readB_inst0_Bw_p0_wr_en[8'hA2];	// matmul/matmul-hw.mlir:28876:16, :28877:12, :29440:165
  assign _T_602 = _T_1185 ? _T_1185 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28878:12
  assign _T_601 = _T_1185 ? readB_inst0_Bw_p0_wr_data[8'hA2] : 32'bx;	// matmul/matmul-hw.mlir:25141:18, :28879:21, :28880:12, :28881:12, :29440:165
  wire _T_1186 = readB_inst0_Bw_p0_wr_en[8'hA3];	// matmul/matmul-hw.mlir:28882:16, :28883:12, :29440:165
  assign _T_600 = _T_1186 ? _T_1186 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28884:12
  assign _T_599 = _T_1186 ? readB_inst0_Bw_p0_wr_data[8'hA3] : 32'bx;	// matmul/matmul-hw.mlir:25139:18, :28885:21, :28886:12, :28887:12, :29440:165
  wire _T_1187 = readB_inst0_Bw_p0_wr_en[8'hA4];	// matmul/matmul-hw.mlir:28888:16, :28889:12, :29440:165
  assign _T_598 = _T_1187 ? _T_1187 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28890:12
  assign _T_597 = _T_1187 ? readB_inst0_Bw_p0_wr_data[8'hA4] : 32'bx;	// matmul/matmul-hw.mlir:25137:18, :28891:21, :28892:12, :28893:12, :29440:165
  wire _T_1188 = readB_inst0_Bw_p0_wr_en[8'hA5];	// matmul/matmul-hw.mlir:28894:16, :28895:12, :29440:165
  assign _T_596 = _T_1188 ? _T_1188 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28896:12
  assign _T_595 = _T_1188 ? readB_inst0_Bw_p0_wr_data[8'hA5] : 32'bx;	// matmul/matmul-hw.mlir:25135:18, :28897:21, :28898:12, :28899:12, :29440:165
  wire _T_1189 = readB_inst0_Bw_p0_wr_en[8'hA6];	// matmul/matmul-hw.mlir:28900:16, :28901:12, :29440:165
  assign _T_594 = _T_1189 ? _T_1189 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28902:12
  assign _T_593 = _T_1189 ? readB_inst0_Bw_p0_wr_data[8'hA6] : 32'bx;	// matmul/matmul-hw.mlir:25133:18, :28903:21, :28904:12, :28905:12, :29440:165
  wire _T_1190 = readB_inst0_Bw_p0_wr_en[8'hA7];	// matmul/matmul-hw.mlir:28906:16, :28907:12, :29440:165
  assign _T_592 = _T_1190 ? _T_1190 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28908:12
  assign _T_591 = _T_1190 ? readB_inst0_Bw_p0_wr_data[8'hA7] : 32'bx;	// matmul/matmul-hw.mlir:25131:18, :28909:21, :28910:12, :28911:12, :29440:165
  wire _T_1191 = readB_inst0_Bw_p0_wr_en[8'hA8];	// matmul/matmul-hw.mlir:28912:16, :28913:12, :29440:165
  assign _T_590 = _T_1191 ? _T_1191 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28914:12
  assign _T_589 = _T_1191 ? readB_inst0_Bw_p0_wr_data[8'hA8] : 32'bx;	// matmul/matmul-hw.mlir:25129:18, :28915:21, :28916:12, :28917:12, :29440:165
  wire _T_1192 = readB_inst0_Bw_p0_wr_en[8'hA9];	// matmul/matmul-hw.mlir:28918:16, :28919:12, :29440:165
  assign _T_588 = _T_1192 ? _T_1192 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28920:12
  assign _T_587 = _T_1192 ? readB_inst0_Bw_p0_wr_data[8'hA9] : 32'bx;	// matmul/matmul-hw.mlir:25127:18, :28921:21, :28922:12, :28923:12, :29440:165
  wire _T_1193 = readB_inst0_Bw_p0_wr_en[8'hAA];	// matmul/matmul-hw.mlir:28924:16, :28925:12, :29440:165
  assign _T_586 = _T_1193 ? _T_1193 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28926:12
  assign _T_585 = _T_1193 ? readB_inst0_Bw_p0_wr_data[8'hAA] : 32'bx;	// matmul/matmul-hw.mlir:25125:18, :28927:21, :28928:12, :28929:12, :29440:165
  wire _T_1194 = readB_inst0_Bw_p0_wr_en[8'hAB];	// matmul/matmul-hw.mlir:28930:16, :28931:12, :29440:165
  assign _T_584 = _T_1194 ? _T_1194 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28932:12
  assign _T_583 = _T_1194 ? readB_inst0_Bw_p0_wr_data[8'hAB] : 32'bx;	// matmul/matmul-hw.mlir:25123:18, :28933:21, :28934:12, :28935:12, :29440:165
  wire _T_1195 = readB_inst0_Bw_p0_wr_en[8'hAC];	// matmul/matmul-hw.mlir:28936:16, :28937:12, :29440:165
  assign _T_582 = _T_1195 ? _T_1195 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28938:12
  assign _T_581 = _T_1195 ? readB_inst0_Bw_p0_wr_data[8'hAC] : 32'bx;	// matmul/matmul-hw.mlir:25121:18, :28939:21, :28940:12, :28941:12, :29440:165
  wire _T_1196 = readB_inst0_Bw_p0_wr_en[8'hAD];	// matmul/matmul-hw.mlir:28942:16, :28943:12, :29440:165
  assign _T_580 = _T_1196 ? _T_1196 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28944:12
  assign _T_579 = _T_1196 ? readB_inst0_Bw_p0_wr_data[8'hAD] : 32'bx;	// matmul/matmul-hw.mlir:25119:18, :28945:21, :28946:12, :28947:12, :29440:165
  wire _T_1197 = readB_inst0_Bw_p0_wr_en[8'hAE];	// matmul/matmul-hw.mlir:28948:16, :28949:12, :29440:165
  assign _T_578 = _T_1197 ? _T_1197 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28950:12
  assign _T_577 = _T_1197 ? readB_inst0_Bw_p0_wr_data[8'hAE] : 32'bx;	// matmul/matmul-hw.mlir:25117:18, :28951:21, :28952:12, :28953:12, :29440:165
  wire _T_1198 = readB_inst0_Bw_p0_wr_en[8'hAF];	// matmul/matmul-hw.mlir:28954:16, :28955:12, :29440:165
  assign _T_576 = _T_1198 ? _T_1198 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28956:12
  assign _T_575 = _T_1198 ? readB_inst0_Bw_p0_wr_data[8'hAF] : 32'bx;	// matmul/matmul-hw.mlir:25115:18, :28957:21, :28958:12, :28959:12, :29440:165
  wire _T_1199 = readB_inst0_Bw_p0_wr_en[8'hB0];	// matmul/matmul-hw.mlir:28960:16, :28961:12, :29440:165
  assign _T_574 = _T_1199 ? _T_1199 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28962:12
  assign _T_573 = _T_1199 ? readB_inst0_Bw_p0_wr_data[8'hB0] : 32'bx;	// matmul/matmul-hw.mlir:25113:18, :28963:21, :28964:12, :28965:12, :29440:165
  wire _T_1200 = readB_inst0_Bw_p0_wr_en[8'hB1];	// matmul/matmul-hw.mlir:28966:16, :28967:12, :29440:165
  assign _T_572 = _T_1200 ? _T_1200 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28968:12
  assign _T_571 = _T_1200 ? readB_inst0_Bw_p0_wr_data[8'hB1] : 32'bx;	// matmul/matmul-hw.mlir:25111:18, :28969:21, :28970:12, :28971:12, :29440:165
  wire _T_1201 = readB_inst0_Bw_p0_wr_en[8'hB2];	// matmul/matmul-hw.mlir:28972:16, :28973:12, :29440:165
  assign _T_570 = _T_1201 ? _T_1201 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28974:12
  assign _T_569 = _T_1201 ? readB_inst0_Bw_p0_wr_data[8'hB2] : 32'bx;	// matmul/matmul-hw.mlir:25109:18, :28975:21, :28976:12, :28977:12, :29440:165
  wire _T_1202 = readB_inst0_Bw_p0_wr_en[8'hB3];	// matmul/matmul-hw.mlir:28978:16, :28979:12, :29440:165
  assign _T_568 = _T_1202 ? _T_1202 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28980:12
  assign _T_567 = _T_1202 ? readB_inst0_Bw_p0_wr_data[8'hB3] : 32'bx;	// matmul/matmul-hw.mlir:25107:18, :28981:21, :28982:12, :28983:12, :29440:165
  wire _T_1203 = readB_inst0_Bw_p0_wr_en[8'hB4];	// matmul/matmul-hw.mlir:28984:16, :28985:12, :29440:165
  assign _T_566 = _T_1203 ? _T_1203 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28986:12
  assign _T_565 = _T_1203 ? readB_inst0_Bw_p0_wr_data[8'hB4] : 32'bx;	// matmul/matmul-hw.mlir:25105:18, :28987:21, :28988:12, :28989:12, :29440:165
  wire _T_1204 = readB_inst0_Bw_p0_wr_en[8'hB5];	// matmul/matmul-hw.mlir:28990:16, :28991:12, :29440:165
  assign _T_564 = _T_1204 ? _T_1204 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28992:12
  assign _T_563 = _T_1204 ? readB_inst0_Bw_p0_wr_data[8'hB5] : 32'bx;	// matmul/matmul-hw.mlir:25103:18, :28993:21, :28994:12, :28995:12, :29440:165
  wire _T_1205 = readB_inst0_Bw_p0_wr_en[8'hB6];	// matmul/matmul-hw.mlir:28996:16, :28997:12, :29440:165
  assign _T_562 = _T_1205 ? _T_1205 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :28998:12
  assign _T_561 = _T_1205 ? readB_inst0_Bw_p0_wr_data[8'hB6] : 32'bx;	// matmul/matmul-hw.mlir:25101:18, :28999:21, :29000:12, :29001:12, :29440:165
  wire _T_1206 = readB_inst0_Bw_p0_wr_en[8'hB7];	// matmul/matmul-hw.mlir:29002:16, :29003:12, :29440:165
  assign _T_560 = _T_1206 ? _T_1206 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29004:12
  assign _T_559 = _T_1206 ? readB_inst0_Bw_p0_wr_data[8'hB7] : 32'bx;	// matmul/matmul-hw.mlir:25099:18, :29005:21, :29006:12, :29007:12, :29440:165
  wire _T_1207 = readB_inst0_Bw_p0_wr_en[8'hB8];	// matmul/matmul-hw.mlir:29008:16, :29009:12, :29440:165
  assign _T_558 = _T_1207 ? _T_1207 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29010:12
  assign _T_557 = _T_1207 ? readB_inst0_Bw_p0_wr_data[8'hB8] : 32'bx;	// matmul/matmul-hw.mlir:25097:18, :29011:21, :29012:12, :29013:12, :29440:165
  wire _T_1208 = readB_inst0_Bw_p0_wr_en[8'hB9];	// matmul/matmul-hw.mlir:29014:16, :29015:12, :29440:165
  assign _T_556 = _T_1208 ? _T_1208 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29016:12
  assign _T_555 = _T_1208 ? readB_inst0_Bw_p0_wr_data[8'hB9] : 32'bx;	// matmul/matmul-hw.mlir:25095:18, :29017:21, :29018:12, :29019:12, :29440:165
  wire _T_1209 = readB_inst0_Bw_p0_wr_en[8'hBA];	// matmul/matmul-hw.mlir:29020:16, :29021:12, :29440:165
  assign _T_554 = _T_1209 ? _T_1209 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29022:12
  assign _T_553 = _T_1209 ? readB_inst0_Bw_p0_wr_data[8'hBA] : 32'bx;	// matmul/matmul-hw.mlir:25093:18, :29023:21, :29024:12, :29025:12, :29440:165
  wire _T_1210 = readB_inst0_Bw_p0_wr_en[8'hBB];	// matmul/matmul-hw.mlir:29026:16, :29027:12, :29440:165
  assign _T_552 = _T_1210 ? _T_1210 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29028:12
  assign _T_551 = _T_1210 ? readB_inst0_Bw_p0_wr_data[8'hBB] : 32'bx;	// matmul/matmul-hw.mlir:25091:18, :29029:21, :29030:12, :29031:12, :29440:165
  wire _T_1211 = readB_inst0_Bw_p0_wr_en[8'hBC];	// matmul/matmul-hw.mlir:29032:16, :29033:12, :29440:165
  assign _T_550 = _T_1211 ? _T_1211 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29034:12
  assign _T_549 = _T_1211 ? readB_inst0_Bw_p0_wr_data[8'hBC] : 32'bx;	// matmul/matmul-hw.mlir:25089:18, :29035:21, :29036:12, :29037:12, :29440:165
  wire _T_1212 = readB_inst0_Bw_p0_wr_en[8'hBD];	// matmul/matmul-hw.mlir:29038:16, :29039:12, :29440:165
  assign _T_548 = _T_1212 ? _T_1212 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29040:12
  assign _T_547 = _T_1212 ? readB_inst0_Bw_p0_wr_data[8'hBD] : 32'bx;	// matmul/matmul-hw.mlir:25087:18, :29041:21, :29042:12, :29043:12, :29440:165
  wire _T_1213 = readB_inst0_Bw_p0_wr_en[8'hBE];	// matmul/matmul-hw.mlir:29044:16, :29045:12, :29440:165
  assign _T_546 = _T_1213 ? _T_1213 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29046:12
  assign _T_545 = _T_1213 ? readB_inst0_Bw_p0_wr_data[8'hBE] : 32'bx;	// matmul/matmul-hw.mlir:25085:18, :29047:21, :29048:12, :29049:12, :29440:165
  wire _T_1214 = readB_inst0_Bw_p0_wr_en[8'hBF];	// matmul/matmul-hw.mlir:29050:16, :29051:12, :29440:165
  assign _T_544 = _T_1214 ? _T_1214 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29052:12
  assign _T_543 = _T_1214 ? readB_inst0_Bw_p0_wr_data[8'hBF] : 32'bx;	// matmul/matmul-hw.mlir:25083:18, :29053:21, :29054:12, :29055:12, :29440:165
  wire _T_1215 = readB_inst0_Bw_p0_wr_en[8'hC0];	// matmul/matmul-hw.mlir:29056:16, :29057:12, :29440:165
  assign _T_542 = _T_1215 ? _T_1215 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29058:12
  assign _T_541 = _T_1215 ? readB_inst0_Bw_p0_wr_data[8'hC0] : 32'bx;	// matmul/matmul-hw.mlir:25081:18, :29059:21, :29060:12, :29061:12, :29440:165
  wire _T_1216 = readB_inst0_Bw_p0_wr_en[8'hC1];	// matmul/matmul-hw.mlir:29062:16, :29063:12, :29440:165
  assign _T_540 = _T_1216 ? _T_1216 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29064:12
  assign _T_539 = _T_1216 ? readB_inst0_Bw_p0_wr_data[8'hC1] : 32'bx;	// matmul/matmul-hw.mlir:25079:18, :29065:21, :29066:12, :29067:12, :29440:165
  wire _T_1217 = readB_inst0_Bw_p0_wr_en[8'hC2];	// matmul/matmul-hw.mlir:29068:16, :29069:12, :29440:165
  assign _T_538 = _T_1217 ? _T_1217 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29070:12
  assign _T_537 = _T_1217 ? readB_inst0_Bw_p0_wr_data[8'hC2] : 32'bx;	// matmul/matmul-hw.mlir:25077:18, :29071:21, :29072:12, :29073:12, :29440:165
  wire _T_1218 = readB_inst0_Bw_p0_wr_en[8'hC3];	// matmul/matmul-hw.mlir:29074:16, :29075:12, :29440:165
  assign _T_536 = _T_1218 ? _T_1218 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29076:12
  assign _T_535 = _T_1218 ? readB_inst0_Bw_p0_wr_data[8'hC3] : 32'bx;	// matmul/matmul-hw.mlir:25075:18, :29077:21, :29078:12, :29079:12, :29440:165
  wire _T_1219 = readB_inst0_Bw_p0_wr_en[8'hC4];	// matmul/matmul-hw.mlir:29080:16, :29081:12, :29440:165
  assign _T_534 = _T_1219 ? _T_1219 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29082:12
  assign _T_533 = _T_1219 ? readB_inst0_Bw_p0_wr_data[8'hC4] : 32'bx;	// matmul/matmul-hw.mlir:25073:18, :29083:21, :29084:12, :29085:12, :29440:165
  wire _T_1220 = readB_inst0_Bw_p0_wr_en[8'hC5];	// matmul/matmul-hw.mlir:29086:16, :29087:12, :29440:165
  assign _T_532 = _T_1220 ? _T_1220 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29088:12
  assign _T_531 = _T_1220 ? readB_inst0_Bw_p0_wr_data[8'hC5] : 32'bx;	// matmul/matmul-hw.mlir:25071:18, :29089:21, :29090:12, :29091:12, :29440:165
  wire _T_1221 = readB_inst0_Bw_p0_wr_en[8'hC6];	// matmul/matmul-hw.mlir:29092:16, :29093:12, :29440:165
  assign _T_530 = _T_1221 ? _T_1221 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29094:12
  assign _T_529 = _T_1221 ? readB_inst0_Bw_p0_wr_data[8'hC6] : 32'bx;	// matmul/matmul-hw.mlir:25069:18, :29095:21, :29096:12, :29097:12, :29440:165
  wire _T_1222 = readB_inst0_Bw_p0_wr_en[8'hC7];	// matmul/matmul-hw.mlir:29098:16, :29099:12, :29440:165
  assign _T_528 = _T_1222 ? _T_1222 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29100:12
  assign _T_527 = _T_1222 ? readB_inst0_Bw_p0_wr_data[8'hC7] : 32'bx;	// matmul/matmul-hw.mlir:25067:18, :29101:21, :29102:12, :29103:12, :29440:165
  wire _T_1223 = readB_inst0_Bw_p0_wr_en[8'hC8];	// matmul/matmul-hw.mlir:29104:16, :29105:12, :29440:165
  assign _T_526 = _T_1223 ? _T_1223 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29106:12
  assign _T_525 = _T_1223 ? readB_inst0_Bw_p0_wr_data[8'hC8] : 32'bx;	// matmul/matmul-hw.mlir:25065:18, :29107:21, :29108:12, :29109:12, :29440:165
  wire _T_1224 = readB_inst0_Bw_p0_wr_en[8'hC9];	// matmul/matmul-hw.mlir:29110:16, :29111:12, :29440:165
  assign _T_524 = _T_1224 ? _T_1224 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29112:12
  assign _T_523 = _T_1224 ? readB_inst0_Bw_p0_wr_data[8'hC9] : 32'bx;	// matmul/matmul-hw.mlir:25063:18, :29113:21, :29114:12, :29115:12, :29440:165
  wire _T_1225 = readB_inst0_Bw_p0_wr_en[8'hCA];	// matmul/matmul-hw.mlir:29116:16, :29117:12, :29440:165
  assign _T_522 = _T_1225 ? _T_1225 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29118:12
  assign _T_521 = _T_1225 ? readB_inst0_Bw_p0_wr_data[8'hCA] : 32'bx;	// matmul/matmul-hw.mlir:25061:18, :29119:21, :29120:12, :29121:12, :29440:165
  wire _T_1226 = readB_inst0_Bw_p0_wr_en[8'hCB];	// matmul/matmul-hw.mlir:29122:16, :29123:12, :29440:165
  assign _T_520 = _T_1226 ? _T_1226 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29124:12
  assign _T_519 = _T_1226 ? readB_inst0_Bw_p0_wr_data[8'hCB] : 32'bx;	// matmul/matmul-hw.mlir:25059:18, :29125:21, :29126:12, :29127:12, :29440:165
  wire _T_1227 = readB_inst0_Bw_p0_wr_en[8'hCC];	// matmul/matmul-hw.mlir:29128:16, :29129:12, :29440:165
  assign _T_518 = _T_1227 ? _T_1227 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29130:12
  assign _T_517 = _T_1227 ? readB_inst0_Bw_p0_wr_data[8'hCC] : 32'bx;	// matmul/matmul-hw.mlir:25057:18, :29131:21, :29132:12, :29133:12, :29440:165
  wire _T_1228 = readB_inst0_Bw_p0_wr_en[8'hCD];	// matmul/matmul-hw.mlir:29134:16, :29135:12, :29440:165
  assign _T_516 = _T_1228 ? _T_1228 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29136:12
  assign _T_515 = _T_1228 ? readB_inst0_Bw_p0_wr_data[8'hCD] : 32'bx;	// matmul/matmul-hw.mlir:25055:18, :29137:21, :29138:12, :29139:12, :29440:165
  wire _T_1229 = readB_inst0_Bw_p0_wr_en[8'hCE];	// matmul/matmul-hw.mlir:29140:16, :29141:12, :29440:165
  assign _T_514 = _T_1229 ? _T_1229 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29142:12
  assign _T_513 = _T_1229 ? readB_inst0_Bw_p0_wr_data[8'hCE] : 32'bx;	// matmul/matmul-hw.mlir:25053:18, :29143:21, :29144:12, :29145:12, :29440:165
  wire _T_1230 = readB_inst0_Bw_p0_wr_en[8'hCF];	// matmul/matmul-hw.mlir:29146:16, :29147:12, :29440:165
  assign _T_512 = _T_1230 ? _T_1230 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29148:12
  assign _T_511 = _T_1230 ? readB_inst0_Bw_p0_wr_data[8'hCF] : 32'bx;	// matmul/matmul-hw.mlir:25051:18, :29149:21, :29150:12, :29151:12, :29440:165
  wire _T_1231 = readB_inst0_Bw_p0_wr_en[8'hD0];	// matmul/matmul-hw.mlir:29152:16, :29153:12, :29440:165
  assign _T_510 = _T_1231 ? _T_1231 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29154:12
  assign _T_509 = _T_1231 ? readB_inst0_Bw_p0_wr_data[8'hD0] : 32'bx;	// matmul/matmul-hw.mlir:25049:18, :29155:21, :29156:12, :29157:12, :29440:165
  wire _T_1232 = readB_inst0_Bw_p0_wr_en[8'hD1];	// matmul/matmul-hw.mlir:29158:16, :29159:12, :29440:165
  assign _T_508 = _T_1232 ? _T_1232 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29160:12
  assign _T_507 = _T_1232 ? readB_inst0_Bw_p0_wr_data[8'hD1] : 32'bx;	// matmul/matmul-hw.mlir:25047:18, :29161:21, :29162:12, :29163:12, :29440:165
  wire _T_1233 = readB_inst0_Bw_p0_wr_en[8'hD2];	// matmul/matmul-hw.mlir:29164:16, :29165:12, :29440:165
  assign _T_506 = _T_1233 ? _T_1233 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29166:12
  assign _T_505 = _T_1233 ? readB_inst0_Bw_p0_wr_data[8'hD2] : 32'bx;	// matmul/matmul-hw.mlir:25045:18, :29167:21, :29168:12, :29169:12, :29440:165
  wire _T_1234 = readB_inst0_Bw_p0_wr_en[8'hD3];	// matmul/matmul-hw.mlir:29170:16, :29171:12, :29440:165
  assign _T_504 = _T_1234 ? _T_1234 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29172:12
  assign _T_503 = _T_1234 ? readB_inst0_Bw_p0_wr_data[8'hD3] : 32'bx;	// matmul/matmul-hw.mlir:25043:18, :29173:21, :29174:12, :29175:12, :29440:165
  wire _T_1235 = readB_inst0_Bw_p0_wr_en[8'hD4];	// matmul/matmul-hw.mlir:29176:16, :29177:12, :29440:165
  assign _T_502 = _T_1235 ? _T_1235 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29178:12
  assign _T_501 = _T_1235 ? readB_inst0_Bw_p0_wr_data[8'hD4] : 32'bx;	// matmul/matmul-hw.mlir:25041:18, :29179:21, :29180:12, :29181:12, :29440:165
  wire _T_1236 = readB_inst0_Bw_p0_wr_en[8'hD5];	// matmul/matmul-hw.mlir:29182:16, :29183:12, :29440:165
  assign _T_500 = _T_1236 ? _T_1236 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29184:12
  assign _T_499 = _T_1236 ? readB_inst0_Bw_p0_wr_data[8'hD5] : 32'bx;	// matmul/matmul-hw.mlir:25039:18, :29185:21, :29186:12, :29187:12, :29440:165
  wire _T_1237 = readB_inst0_Bw_p0_wr_en[8'hD6];	// matmul/matmul-hw.mlir:29188:16, :29189:12, :29440:165
  assign _T_498 = _T_1237 ? _T_1237 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29190:12
  assign _T_497 = _T_1237 ? readB_inst0_Bw_p0_wr_data[8'hD6] : 32'bx;	// matmul/matmul-hw.mlir:25037:18, :29191:21, :29192:12, :29193:12, :29440:165
  wire _T_1238 = readB_inst0_Bw_p0_wr_en[8'hD7];	// matmul/matmul-hw.mlir:29194:16, :29195:13, :29440:165
  assign _T_496 = _T_1238 ? _T_1238 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29196:13
  assign _T_495 = _T_1238 ? readB_inst0_Bw_p0_wr_data[8'hD7] : 32'bx;	// matmul/matmul-hw.mlir:25035:18, :29197:21, :29198:13, :29199:13, :29440:165
  wire _T_1239 = readB_inst0_Bw_p0_wr_en[8'hD8];	// matmul/matmul-hw.mlir:29200:16, :29201:13, :29440:165
  assign _T_494 = _T_1239 ? _T_1239 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29202:13
  assign _T_493 = _T_1239 ? readB_inst0_Bw_p0_wr_data[8'hD8] : 32'bx;	// matmul/matmul-hw.mlir:25033:18, :29203:21, :29204:13, :29205:13, :29440:165
  wire _T_1240 = readB_inst0_Bw_p0_wr_en[8'hD9];	// matmul/matmul-hw.mlir:29206:16, :29207:13, :29440:165
  assign _T_492 = _T_1240 ? _T_1240 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29208:13
  assign _T_491 = _T_1240 ? readB_inst0_Bw_p0_wr_data[8'hD9] : 32'bx;	// matmul/matmul-hw.mlir:25031:18, :29209:21, :29210:13, :29211:13, :29440:165
  wire _T_1241 = readB_inst0_Bw_p0_wr_en[8'hDA];	// matmul/matmul-hw.mlir:29212:16, :29213:13, :29440:165
  assign _T_490 = _T_1241 ? _T_1241 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29214:13
  assign _T_489 = _T_1241 ? readB_inst0_Bw_p0_wr_data[8'hDA] : 32'bx;	// matmul/matmul-hw.mlir:25029:18, :29215:21, :29216:13, :29217:13, :29440:165
  wire _T_1242 = readB_inst0_Bw_p0_wr_en[8'hDB];	// matmul/matmul-hw.mlir:29218:16, :29219:13, :29440:165
  assign _T_488 = _T_1242 ? _T_1242 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29220:13
  assign _T_487 = _T_1242 ? readB_inst0_Bw_p0_wr_data[8'hDB] : 32'bx;	// matmul/matmul-hw.mlir:25027:18, :29221:21, :29222:13, :29223:13, :29440:165
  wire _T_1243 = readB_inst0_Bw_p0_wr_en[8'hDC];	// matmul/matmul-hw.mlir:29224:16, :29225:13, :29440:165
  assign _T_486 = _T_1243 ? _T_1243 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29226:13
  assign _T_485 = _T_1243 ? readB_inst0_Bw_p0_wr_data[8'hDC] : 32'bx;	// matmul/matmul-hw.mlir:25025:18, :29227:21, :29228:13, :29229:13, :29440:165
  wire _T_1244 = readB_inst0_Bw_p0_wr_en[8'hDD];	// matmul/matmul-hw.mlir:29230:16, :29231:13, :29440:165
  assign _T_484 = _T_1244 ? _T_1244 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29232:13
  assign _T_483 = _T_1244 ? readB_inst0_Bw_p0_wr_data[8'hDD] : 32'bx;	// matmul/matmul-hw.mlir:25023:18, :29233:21, :29234:13, :29235:13, :29440:165
  wire _T_1245 = readB_inst0_Bw_p0_wr_en[8'hDE];	// matmul/matmul-hw.mlir:29236:16, :29237:13, :29440:165
  assign _T_482 = _T_1245 ? _T_1245 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29238:13
  assign _T_481 = _T_1245 ? readB_inst0_Bw_p0_wr_data[8'hDE] : 32'bx;	// matmul/matmul-hw.mlir:25021:18, :29239:21, :29240:13, :29241:13, :29440:165
  wire _T_1246 = readB_inst0_Bw_p0_wr_en[8'hDF];	// matmul/matmul-hw.mlir:29242:16, :29243:13, :29440:165
  assign _T_480 = _T_1246 ? _T_1246 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29244:13
  assign _T_479 = _T_1246 ? readB_inst0_Bw_p0_wr_data[8'hDF] : 32'bx;	// matmul/matmul-hw.mlir:25019:18, :29245:21, :29246:13, :29247:13, :29440:165
  wire _T_1247 = readB_inst0_Bw_p0_wr_en[8'hE0];	// matmul/matmul-hw.mlir:29248:16, :29249:13, :29440:165
  assign _T_478 = _T_1247 ? _T_1247 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29250:13
  assign _T_477 = _T_1247 ? readB_inst0_Bw_p0_wr_data[8'hE0] : 32'bx;	// matmul/matmul-hw.mlir:25017:18, :29251:21, :29252:13, :29253:13, :29440:165
  wire _T_1248 = readB_inst0_Bw_p0_wr_en[8'hE1];	// matmul/matmul-hw.mlir:29254:16, :29255:13, :29440:165
  assign _T_476 = _T_1248 ? _T_1248 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29256:13
  assign _T_475 = _T_1248 ? readB_inst0_Bw_p0_wr_data[8'hE1] : 32'bx;	// matmul/matmul-hw.mlir:25015:18, :29257:21, :29258:13, :29259:13, :29440:165
  wire _T_1249 = readB_inst0_Bw_p0_wr_en[8'hE2];	// matmul/matmul-hw.mlir:29260:16, :29261:13, :29440:165
  assign _T_474 = _T_1249 ? _T_1249 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29262:13
  assign _T_473 = _T_1249 ? readB_inst0_Bw_p0_wr_data[8'hE2] : 32'bx;	// matmul/matmul-hw.mlir:25013:18, :29263:21, :29264:13, :29265:13, :29440:165
  wire _T_1250 = readB_inst0_Bw_p0_wr_en[8'hE3];	// matmul/matmul-hw.mlir:29266:16, :29267:13, :29440:165
  assign _T_472 = _T_1250 ? _T_1250 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29268:13
  assign _T_471 = _T_1250 ? readB_inst0_Bw_p0_wr_data[8'hE3] : 32'bx;	// matmul/matmul-hw.mlir:25011:18, :29269:21, :29270:13, :29271:13, :29440:165
  wire _T_1251 = readB_inst0_Bw_p0_wr_en[8'hE4];	// matmul/matmul-hw.mlir:29272:16, :29273:13, :29440:165
  assign _T_470 = _T_1251 ? _T_1251 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29274:13
  assign _T_469 = _T_1251 ? readB_inst0_Bw_p0_wr_data[8'hE4] : 32'bx;	// matmul/matmul-hw.mlir:25009:18, :29275:21, :29276:13, :29277:13, :29440:165
  wire _T_1252 = readB_inst0_Bw_p0_wr_en[8'hE5];	// matmul/matmul-hw.mlir:29278:16, :29279:13, :29440:165
  assign _T_468 = _T_1252 ? _T_1252 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29280:13
  assign _T_467 = _T_1252 ? readB_inst0_Bw_p0_wr_data[8'hE5] : 32'bx;	// matmul/matmul-hw.mlir:25007:18, :29281:21, :29282:13, :29283:13, :29440:165
  wire _T_1253 = readB_inst0_Bw_p0_wr_en[8'hE6];	// matmul/matmul-hw.mlir:29284:16, :29285:13, :29440:165
  assign _T_466 = _T_1253 ? _T_1253 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29286:13
  assign _T_465 = _T_1253 ? readB_inst0_Bw_p0_wr_data[8'hE6] : 32'bx;	// matmul/matmul-hw.mlir:25005:18, :29287:21, :29288:13, :29289:13, :29440:165
  wire _T_1254 = readB_inst0_Bw_p0_wr_en[8'hE7];	// matmul/matmul-hw.mlir:29290:16, :29291:13, :29440:165
  assign _T_464 = _T_1254 ? _T_1254 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29292:13
  assign _T_463 = _T_1254 ? readB_inst0_Bw_p0_wr_data[8'hE7] : 32'bx;	// matmul/matmul-hw.mlir:25003:18, :29293:21, :29294:13, :29295:13, :29440:165
  wire _T_1255 = readB_inst0_Bw_p0_wr_en[8'hE8];	// matmul/matmul-hw.mlir:29296:16, :29297:13, :29440:165
  assign _T_462 = _T_1255 ? _T_1255 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29298:13
  assign _T_461 = _T_1255 ? readB_inst0_Bw_p0_wr_data[8'hE8] : 32'bx;	// matmul/matmul-hw.mlir:25001:18, :29299:21, :29300:13, :29301:13, :29440:165
  wire _T_1256 = readB_inst0_Bw_p0_wr_en[8'hE9];	// matmul/matmul-hw.mlir:29302:16, :29303:13, :29440:165
  assign _T_460 = _T_1256 ? _T_1256 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29304:13
  assign _T_459 = _T_1256 ? readB_inst0_Bw_p0_wr_data[8'hE9] : 32'bx;	// matmul/matmul-hw.mlir:24999:18, :29305:21, :29306:13, :29307:13, :29440:165
  wire _T_1257 = readB_inst0_Bw_p0_wr_en[8'hEA];	// matmul/matmul-hw.mlir:29308:16, :29309:13, :29440:165
  assign _T_458 = _T_1257 ? _T_1257 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29310:13
  assign _T_457 = _T_1257 ? readB_inst0_Bw_p0_wr_data[8'hEA] : 32'bx;	// matmul/matmul-hw.mlir:24997:18, :29311:21, :29312:13, :29313:13, :29440:165
  wire _T_1258 = readB_inst0_Bw_p0_wr_en[8'hEB];	// matmul/matmul-hw.mlir:29314:16, :29315:13, :29440:165
  assign _T_456 = _T_1258 ? _T_1258 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29316:13
  assign _T_455 = _T_1258 ? readB_inst0_Bw_p0_wr_data[8'hEB] : 32'bx;	// matmul/matmul-hw.mlir:24995:18, :29317:21, :29318:13, :29319:13, :29440:165
  wire _T_1259 = readB_inst0_Bw_p0_wr_en[8'hEC];	// matmul/matmul-hw.mlir:29320:16, :29321:13, :29440:165
  assign _T_454 = _T_1259 ? _T_1259 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29322:13
  assign _T_453 = _T_1259 ? readB_inst0_Bw_p0_wr_data[8'hEC] : 32'bx;	// matmul/matmul-hw.mlir:24993:18, :29323:21, :29324:13, :29325:13, :29440:165
  wire _T_1260 = readB_inst0_Bw_p0_wr_en[8'hED];	// matmul/matmul-hw.mlir:29326:16, :29327:13, :29440:165
  assign _T_452 = _T_1260 ? _T_1260 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29328:13
  assign _T_451 = _T_1260 ? readB_inst0_Bw_p0_wr_data[8'hED] : 32'bx;	// matmul/matmul-hw.mlir:24991:18, :29329:21, :29330:13, :29331:13, :29440:165
  wire _T_1261 = readB_inst0_Bw_p0_wr_en[8'hEE];	// matmul/matmul-hw.mlir:29332:16, :29333:13, :29440:165
  assign _T_450 = _T_1261 ? _T_1261 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29334:13
  assign _T_449 = _T_1261 ? readB_inst0_Bw_p0_wr_data[8'hEE] : 32'bx;	// matmul/matmul-hw.mlir:24989:18, :29335:21, :29336:13, :29337:13, :29440:165
  wire _T_1262 = readB_inst0_Bw_p0_wr_en[8'hEF];	// matmul/matmul-hw.mlir:29338:16, :29339:13, :29440:165
  assign _T_448 = _T_1262 ? _T_1262 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29340:13
  assign _T_447 = _T_1262 ? readB_inst0_Bw_p0_wr_data[8'hEF] : 32'bx;	// matmul/matmul-hw.mlir:24987:18, :29341:21, :29342:13, :29343:13, :29440:165
  wire _T_1263 = readB_inst0_Bw_p0_wr_en[8'hF0];	// matmul/matmul-hw.mlir:29344:16, :29345:13, :29440:165
  assign _T_446 = _T_1263 ? _T_1263 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29346:13
  assign _T_445 = _T_1263 ? readB_inst0_Bw_p0_wr_data[8'hF0] : 32'bx;	// matmul/matmul-hw.mlir:24985:18, :29347:21, :29348:13, :29349:13, :29440:165
  wire _T_1264 = readB_inst0_Bw_p0_wr_en[8'hF1];	// matmul/matmul-hw.mlir:29350:16, :29351:13, :29440:165
  assign _T_444 = _T_1264 ? _T_1264 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29352:13
  assign _T_443 = _T_1264 ? readB_inst0_Bw_p0_wr_data[8'hF1] : 32'bx;	// matmul/matmul-hw.mlir:24983:18, :29353:21, :29354:13, :29355:13, :29440:165
  wire _T_1265 = readB_inst0_Bw_p0_wr_en[8'hF2];	// matmul/matmul-hw.mlir:29356:16, :29357:13, :29440:165
  assign _T_442 = _T_1265 ? _T_1265 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29358:13
  assign _T_441 = _T_1265 ? readB_inst0_Bw_p0_wr_data[8'hF2] : 32'bx;	// matmul/matmul-hw.mlir:24981:18, :29359:21, :29360:13, :29361:13, :29440:165
  wire _T_1266 = readB_inst0_Bw_p0_wr_en[8'hF3];	// matmul/matmul-hw.mlir:29362:16, :29363:13, :29440:165
  assign _T_440 = _T_1266 ? _T_1266 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29364:13
  assign _T_439 = _T_1266 ? readB_inst0_Bw_p0_wr_data[8'hF3] : 32'bx;	// matmul/matmul-hw.mlir:24979:18, :29365:21, :29366:13, :29367:13, :29440:165
  wire _T_1267 = readB_inst0_Bw_p0_wr_en[8'hF4];	// matmul/matmul-hw.mlir:29368:16, :29369:13, :29440:165
  assign _T_438 = _T_1267 ? _T_1267 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29370:13
  assign _T_437 = _T_1267 ? readB_inst0_Bw_p0_wr_data[8'hF4] : 32'bx;	// matmul/matmul-hw.mlir:24977:18, :29371:21, :29372:13, :29373:13, :29440:165
  wire _T_1268 = readB_inst0_Bw_p0_wr_en[8'hF5];	// matmul/matmul-hw.mlir:29374:16, :29375:13, :29440:165
  assign _T_436 = _T_1268 ? _T_1268 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29376:13
  assign _T_435 = _T_1268 ? readB_inst0_Bw_p0_wr_data[8'hF5] : 32'bx;	// matmul/matmul-hw.mlir:24975:18, :29377:21, :29378:13, :29379:13, :29440:165
  wire _T_1269 = readB_inst0_Bw_p0_wr_en[8'hF6];	// matmul/matmul-hw.mlir:29380:16, :29381:13, :29440:165
  assign _T_434 = _T_1269 ? _T_1269 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29382:13
  assign _T_433 = _T_1269 ? readB_inst0_Bw_p0_wr_data[8'hF6] : 32'bx;	// matmul/matmul-hw.mlir:24973:18, :29383:21, :29384:13, :29385:13, :29440:165
  wire _T_1270 = readB_inst0_Bw_p0_wr_en[8'hF7];	// matmul/matmul-hw.mlir:29386:15, :29387:13, :29440:165
  assign _T_432 = _T_1270 ? _T_1270 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29388:13
  assign _T_431 = _T_1270 ? readB_inst0_Bw_p0_wr_data[8'hF7] : 32'bx;	// matmul/matmul-hw.mlir:24971:18, :29389:20, :29390:13, :29391:13, :29440:165
  wire _T_1271 = readB_inst0_Bw_p0_wr_en[8'hF8];	// matmul/matmul-hw.mlir:29392:15, :29393:13, :29440:165
  assign _T_430 = _T_1271 ? _T_1271 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29394:13
  assign _T_429 = _T_1271 ? readB_inst0_Bw_p0_wr_data[8'hF8] : 32'bx;	// matmul/matmul-hw.mlir:24969:18, :29395:20, :29396:13, :29397:13, :29440:165
  wire _T_1272 = readB_inst0_Bw_p0_wr_en[8'hF9];	// matmul/matmul-hw.mlir:29398:15, :29399:13, :29440:165
  assign _T_428 = _T_1272 ? _T_1272 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29400:13
  assign _T_427 = _T_1272 ? readB_inst0_Bw_p0_wr_data[8'hF9] : 32'bx;	// matmul/matmul-hw.mlir:24967:18, :29401:20, :29402:13, :29403:13, :29440:165
  wire _T_1273 = readB_inst0_Bw_p0_wr_en[8'hFA];	// matmul/matmul-hw.mlir:29404:15, :29405:13, :29440:165
  assign _T_426 = _T_1273 ? _T_1273 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29406:13
  assign _T_425 = _T_1273 ? readB_inst0_Bw_p0_wr_data[8'hFA] : 32'bx;	// matmul/matmul-hw.mlir:24965:18, :29407:20, :29408:13, :29409:13, :29440:165
  wire _T_1274 = readB_inst0_Bw_p0_wr_en[8'hFB];	// matmul/matmul-hw.mlir:29410:15, :29411:13, :29440:165
  assign _T_424 = _T_1274 ? _T_1274 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29412:13
  assign _T_423 = _T_1274 ? readB_inst0_Bw_p0_wr_data[8'hFB] : 32'bx;	// matmul/matmul-hw.mlir:24963:18, :29413:20, :29414:13, :29415:13, :29440:165
  wire _T_1275 = readB_inst0_Bw_p0_wr_en[8'hFC];	// matmul/matmul-hw.mlir:29416:15, :29417:13, :29440:165
  assign _T_422 = _T_1275 ? _T_1275 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29418:13
  assign _T_421 = _T_1275 ? readB_inst0_Bw_p0_wr_data[8'hFC] : 32'bx;	// matmul/matmul-hw.mlir:24961:18, :29419:20, :29420:13, :29421:13, :29440:165
  wire _T_1276 = readB_inst0_Bw_p0_wr_en[8'hFD];	// matmul/matmul-hw.mlir:29422:15, :29423:13, :29440:165
  assign _T_420 = _T_1276 ? _T_1276 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29424:13
  assign _T_419 = _T_1276 ? readB_inst0_Bw_p0_wr_data[8'hFD] : 32'bx;	// matmul/matmul-hw.mlir:24959:18, :29425:20, :29426:13, :29427:13, :29440:165
  wire _T_1277 = readB_inst0_Bw_p0_wr_en[8'hFE];	// matmul/matmul-hw.mlir:29428:15, :29429:13, :29440:165
  assign _T_418 = _T_1277 ? _T_1277 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29430:13
  assign _T_417 = _T_1277 ? readB_inst0_Bw_p0_wr_data[8'hFE] : 32'bx;	// matmul/matmul-hw.mlir:24957:18, :29431:20, :29432:13, :29433:13, :29440:165
  wire _T_1278 = readB_inst0_Bw_p0_wr_en[8'hFF];	// matmul/matmul-hw.mlir:29434:15, :29435:13, :29440:165
  assign _T_416 = _T_1278 ? _T_1278 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29436:13
  assign _T_415 = _T_1278 ? readB_inst0_Bw_p0_wr_data[8'hFF] : 32'bx;	// matmul/matmul-hw.mlir:24955:18, :29437:20, :29438:13, :29439:13, :29440:165
  readB readB_inst0 (	// matmul/matmul-hw.mlir:29440:165
    .Bi_p0_rd_data   (Bi_p0_rd_data),
    .t               (t),
    .clk             (clk),
    .rst             (rst),
    .Bi_p0_addr_en   (readB_inst0_Bi_p0_addr_en),
    .Bi_p0_addr_data (readB_inst0_Bi_p0_addr_data),
    .Bi_p0_rd_en     (readB_inst0_Bi_p0_rd_en),
    .Bw_p0_wr_en     (readB_inst0_Bw_p0_wr_en),
    .Bw_p0_wr_data   (readB_inst0_Bw_p0_wr_data),
    .t_done          (readB_inst0_t_done)
  );
  wire _T_1279 = kernel_inst0_A_p0_addr_en[4'h0];	// matmul/matmul-hw.mlir:29509:19, :29510:13, :31195:228
  assign _T_414 = _T_1279 ? _T_1279 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29511:13
  assign _T_413 = _T_1279 ? kernel_inst0_A_p0_addr_data[4'h0] : 4'bx;	// matmul/matmul-hw.mlir:24953:17, :29512:19, :29513:13, :29514:13, :31195:228
  wire _T_1280 = kernel_inst0_A_p0_rd_en[4'h0];	// matmul/matmul-hw.mlir:29515:19, :29516:13, :31195:228
  assign _T_412 = _T_1280 ? _T_1280 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29517:13
  wire _T_1281 = kernel_inst0_A_p0_addr_en[4'h1];	// matmul/matmul-hw.mlir:29518:19, :29519:13, :31195:228
  assign _T_411 = _T_1281 ? _T_1281 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29520:13
  assign _T_410 = _T_1281 ? kernel_inst0_A_p0_addr_data[4'h1] : 4'bx;	// matmul/matmul-hw.mlir:24950:17, :29521:19, :29522:13, :29523:13, :31195:228
  wire _T_1282 = kernel_inst0_A_p0_rd_en[4'h1];	// matmul/matmul-hw.mlir:29524:19, :29525:13, :31195:228
  assign _T_409 = _T_1282 ? _T_1282 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29526:13
  wire _T_1283 = kernel_inst0_A_p0_addr_en[4'h2];	// matmul/matmul-hw.mlir:29527:19, :29528:13, :31195:228
  assign _T_408 = _T_1283 ? _T_1283 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29529:13
  assign _T_407 = _T_1283 ? kernel_inst0_A_p0_addr_data[4'h2] : 4'bx;	// matmul/matmul-hw.mlir:24947:17, :29530:19, :29531:13, :29532:13, :31195:228
  wire _T_1284 = kernel_inst0_A_p0_rd_en[4'h2];	// matmul/matmul-hw.mlir:29533:19, :29534:13, :31195:228
  assign _T_406 = _T_1284 ? _T_1284 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29535:13
  wire _T_1285 = kernel_inst0_A_p0_addr_en[4'h3];	// matmul/matmul-hw.mlir:29536:19, :29537:13, :31195:228
  assign _T_405 = _T_1285 ? _T_1285 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29538:13
  assign _T_404 = _T_1285 ? kernel_inst0_A_p0_addr_data[4'h3] : 4'bx;	// matmul/matmul-hw.mlir:24944:17, :29539:19, :29540:13, :29541:13, :31195:228
  wire _T_1286 = kernel_inst0_A_p0_rd_en[4'h3];	// matmul/matmul-hw.mlir:29542:19, :29543:13, :31195:228
  assign _T_403 = _T_1286 ? _T_1286 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29544:13
  wire _T_1287 = kernel_inst0_A_p0_addr_en[4'h4];	// matmul/matmul-hw.mlir:29545:19, :29546:13, :31195:228
  assign _T_402 = _T_1287 ? _T_1287 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29547:13
  assign _T_401 = _T_1287 ? kernel_inst0_A_p0_addr_data[4'h4] : 4'bx;	// matmul/matmul-hw.mlir:24941:17, :29548:19, :29549:13, :29550:13, :31195:228
  wire _T_1288 = kernel_inst0_A_p0_rd_en[4'h4];	// matmul/matmul-hw.mlir:29551:19, :29552:13, :31195:228
  assign _T_400 = _T_1288 ? _T_1288 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29553:13
  wire _T_1289 = kernel_inst0_A_p0_addr_en[4'h5];	// matmul/matmul-hw.mlir:29554:19, :29555:13, :31195:228
  assign _T_399 = _T_1289 ? _T_1289 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29556:13
  assign _T_398 = _T_1289 ? kernel_inst0_A_p0_addr_data[4'h5] : 4'bx;	// matmul/matmul-hw.mlir:24938:17, :29557:19, :29558:13, :29559:13, :31195:228
  wire _T_1290 = kernel_inst0_A_p0_rd_en[4'h5];	// matmul/matmul-hw.mlir:29560:19, :29561:13, :31195:228
  assign _T_397 = _T_1290 ? _T_1290 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29562:13
  wire _T_1291 = kernel_inst0_A_p0_addr_en[4'h6];	// matmul/matmul-hw.mlir:29563:19, :29564:13, :31195:228
  assign _T_396 = _T_1291 ? _T_1291 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29565:13
  assign _T_395 = _T_1291 ? kernel_inst0_A_p0_addr_data[4'h6] : 4'bx;	// matmul/matmul-hw.mlir:24935:17, :29566:19, :29567:13, :29568:13, :31195:228
  wire _T_1292 = kernel_inst0_A_p0_rd_en[4'h6];	// matmul/matmul-hw.mlir:29569:19, :29570:13, :31195:228
  assign _T_394 = _T_1292 ? _T_1292 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29571:13
  wire _T_1293 = kernel_inst0_A_p0_addr_en[4'h7];	// matmul/matmul-hw.mlir:29572:19, :29573:13, :31195:228
  assign _T_393 = _T_1293 ? _T_1293 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29574:13
  assign _T_392 = _T_1293 ? kernel_inst0_A_p0_addr_data[4'h7] : 4'bx;	// matmul/matmul-hw.mlir:24932:17, :29575:19, :29576:13, :29577:13, :31195:228
  wire _T_1294 = kernel_inst0_A_p0_rd_en[4'h7];	// matmul/matmul-hw.mlir:29578:19, :29579:13, :31195:228
  assign _T_391 = _T_1294 ? _T_1294 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29580:13
  wire _T_1295 = kernel_inst0_A_p0_addr_en[4'h8];	// matmul/matmul-hw.mlir:29581:20, :29582:13, :31195:228
  assign _T_390 = _T_1295 ? _T_1295 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29583:13
  assign _T_389 = _T_1295 ? kernel_inst0_A_p0_addr_data[4'h8] : 4'bx;	// matmul/matmul-hw.mlir:24929:17, :29584:20, :29585:13, :29586:13, :31195:228
  wire _T_1296 = kernel_inst0_A_p0_rd_en[4'h8];	// matmul/matmul-hw.mlir:29587:20, :29588:13, :31195:228
  assign _T_388 = _T_1296 ? _T_1296 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29589:13
  wire _T_1297 = kernel_inst0_A_p0_addr_en[4'h9];	// matmul/matmul-hw.mlir:29590:20, :29591:13, :31195:228
  assign _T_387 = _T_1297 ? _T_1297 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29592:13
  assign _T_386 = _T_1297 ? kernel_inst0_A_p0_addr_data[4'h9] : 4'bx;	// matmul/matmul-hw.mlir:24926:17, :29593:20, :29594:13, :29595:13, :31195:228
  wire _T_1298 = kernel_inst0_A_p0_rd_en[4'h9];	// matmul/matmul-hw.mlir:29596:20, :29597:13, :31195:228
  assign _T_385 = _T_1298 ? _T_1298 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29598:13
  wire _T_1299 = kernel_inst0_A_p0_addr_en[4'hA];	// matmul/matmul-hw.mlir:29599:20, :29600:13, :31195:228
  assign _T_384 = _T_1299 ? _T_1299 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29601:13
  assign _T_383 = _T_1299 ? kernel_inst0_A_p0_addr_data[4'hA] : 4'bx;	// matmul/matmul-hw.mlir:24923:17, :29602:20, :29603:13, :29604:13, :31195:228
  wire _T_1300 = kernel_inst0_A_p0_rd_en[4'hA];	// matmul/matmul-hw.mlir:29605:20, :29606:13, :31195:228
  assign _T_382 = _T_1300 ? _T_1300 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29607:13
  wire _T_1301 = kernel_inst0_A_p0_addr_en[4'hB];	// matmul/matmul-hw.mlir:29608:20, :29609:13, :31195:228
  assign _T_381 = _T_1301 ? _T_1301 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29610:13
  assign _T_380 = _T_1301 ? kernel_inst0_A_p0_addr_data[4'hB] : 4'bx;	// matmul/matmul-hw.mlir:24920:17, :29611:20, :29612:13, :29613:13, :31195:228
  wire _T_1302 = kernel_inst0_A_p0_rd_en[4'hB];	// matmul/matmul-hw.mlir:29614:20, :29615:13, :31195:228
  assign _T_379 = _T_1302 ? _T_1302 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29616:13
  wire _T_1303 = kernel_inst0_A_p0_addr_en[4'hC];	// matmul/matmul-hw.mlir:29617:20, :29618:13, :31195:228
  assign _T_378 = _T_1303 ? _T_1303 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29619:13
  assign _T_377 = _T_1303 ? kernel_inst0_A_p0_addr_data[4'hC] : 4'bx;	// matmul/matmul-hw.mlir:24917:17, :29620:20, :29621:13, :29622:13, :31195:228
  wire _T_1304 = kernel_inst0_A_p0_rd_en[4'hC];	// matmul/matmul-hw.mlir:29623:20, :29624:13, :31195:228
  assign _T_376 = _T_1304 ? _T_1304 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29625:13
  wire _T_1305 = kernel_inst0_A_p0_addr_en[4'hD];	// matmul/matmul-hw.mlir:29626:20, :29627:13, :31195:228
  assign _T_375 = _T_1305 ? _T_1305 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29628:13
  assign _T_374 = _T_1305 ? kernel_inst0_A_p0_addr_data[4'hD] : 4'bx;	// matmul/matmul-hw.mlir:24914:17, :29629:20, :29630:13, :29631:13, :31195:228
  wire _T_1306 = kernel_inst0_A_p0_rd_en[4'hD];	// matmul/matmul-hw.mlir:29632:20, :29633:13, :31195:228
  assign _T_373 = _T_1306 ? _T_1306 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29634:13
  wire _T_1307 = kernel_inst0_A_p0_addr_en[4'hE];	// matmul/matmul-hw.mlir:29635:20, :29636:13, :31195:228
  assign _T_372 = _T_1307 ? _T_1307 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29637:13
  assign _T_371 = _T_1307 ? kernel_inst0_A_p0_addr_data[4'hE] : 4'bx;	// matmul/matmul-hw.mlir:24911:17, :29638:20, :29639:13, :29640:13, :31195:228
  wire _T_1308 = kernel_inst0_A_p0_rd_en[4'hE];	// matmul/matmul-hw.mlir:29641:20, :29642:13, :31195:228
  assign _T_370 = _T_1308 ? _T_1308 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29643:13
  wire _T_1309 = kernel_inst0_A_p0_addr_en[4'hF];	// matmul/matmul-hw.mlir:29644:20, :29645:13, :31195:228
  assign _T_369 = _T_1309 ? _T_1309 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29646:13
  assign _T_368 = _T_1309 ? kernel_inst0_A_p0_addr_data[4'hF] : 4'bx;	// matmul/matmul-hw.mlir:24908:17, :29647:20, :29648:13, :29649:13, :31195:228
  wire _T_1310 = kernel_inst0_A_p0_rd_en[4'hF];	// matmul/matmul-hw.mlir:29650:20, :29651:13, :31195:228
  assign _T_367 = _T_1310 ? _T_1310 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :29652:13
  wire _T_1311 = kernel_inst0_B_p0_rd_en[8'h0];	// matmul/matmul-hw.mlir:30167:19, :30168:13, :31195:228
  assign _T_366 = _T_1311 ? _T_1311 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30169:13
  wire _T_1312 = kernel_inst0_B_p0_rd_en[8'h1];	// matmul/matmul-hw.mlir:30170:19, :30171:13, :31195:228
  assign _T_365 = _T_1312 ? _T_1312 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30172:13
  wire _T_1313 = kernel_inst0_B_p0_rd_en[8'h2];	// matmul/matmul-hw.mlir:30173:19, :30174:13, :31195:228
  assign _T_364 = _T_1313 ? _T_1313 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30175:13
  wire _T_1314 = kernel_inst0_B_p0_rd_en[8'h3];	// matmul/matmul-hw.mlir:30176:19, :30177:13, :31195:228
  assign _T_363 = _T_1314 ? _T_1314 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30178:13
  wire _T_1315 = kernel_inst0_B_p0_rd_en[8'h4];	// matmul/matmul-hw.mlir:30179:19, :30180:13, :31195:228
  assign _T_362 = _T_1315 ? _T_1315 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30181:13
  wire _T_1316 = kernel_inst0_B_p0_rd_en[8'h5];	// matmul/matmul-hw.mlir:30182:19, :30183:13, :31195:228
  assign _T_361 = _T_1316 ? _T_1316 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30184:13
  wire _T_1317 = kernel_inst0_B_p0_rd_en[8'h6];	// matmul/matmul-hw.mlir:30185:19, :30186:13, :31195:228
  assign _T_360 = _T_1317 ? _T_1317 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30187:13
  wire _T_1318 = kernel_inst0_B_p0_rd_en[8'h7];	// matmul/matmul-hw.mlir:30188:19, :30189:13, :31195:228
  assign _T_359 = _T_1318 ? _T_1318 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30190:13
  wire _T_1319 = kernel_inst0_B_p0_rd_en[8'h8];	// matmul/matmul-hw.mlir:30191:19, :30192:13, :31195:228
  assign _T_358 = _T_1319 ? _T_1319 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30193:13
  wire _T_1320 = kernel_inst0_B_p0_rd_en[8'h9];	// matmul/matmul-hw.mlir:30194:19, :30195:13, :31195:228
  assign _T_357 = _T_1320 ? _T_1320 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30196:13
  wire _T_1321 = kernel_inst0_B_p0_rd_en[8'hA];	// matmul/matmul-hw.mlir:30197:20, :30198:13, :31195:228
  assign _T_356 = _T_1321 ? _T_1321 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30199:13
  wire _T_1322 = kernel_inst0_B_p0_rd_en[8'hB];	// matmul/matmul-hw.mlir:30200:20, :30201:13, :31195:228
  assign _T_355 = _T_1322 ? _T_1322 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30202:13
  wire _T_1323 = kernel_inst0_B_p0_rd_en[8'hC];	// matmul/matmul-hw.mlir:30203:20, :30204:13, :31195:228
  assign _T_354 = _T_1323 ? _T_1323 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30205:13
  wire _T_1324 = kernel_inst0_B_p0_rd_en[8'hD];	// matmul/matmul-hw.mlir:30206:20, :30207:13, :31195:228
  assign _T_353 = _T_1324 ? _T_1324 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30208:13
  wire _T_1325 = kernel_inst0_B_p0_rd_en[8'hE];	// matmul/matmul-hw.mlir:30209:20, :30210:13, :31195:228
  assign _T_352 = _T_1325 ? _T_1325 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30211:13
  wire _T_1326 = kernel_inst0_B_p0_rd_en[8'hF];	// matmul/matmul-hw.mlir:30212:20, :30213:13, :31195:228
  assign _T_351 = _T_1326 ? _T_1326 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30214:13
  wire _T_1327 = kernel_inst0_B_p0_rd_en[8'h10];	// matmul/matmul-hw.mlir:30215:20, :30216:13, :31195:228
  assign _T_350 = _T_1327 ? _T_1327 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30217:13
  wire _T_1328 = kernel_inst0_B_p0_rd_en[8'h11];	// matmul/matmul-hw.mlir:30218:20, :30219:13, :31195:228
  assign _T_349 = _T_1328 ? _T_1328 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30220:13
  wire _T_1329 = kernel_inst0_B_p0_rd_en[8'h12];	// matmul/matmul-hw.mlir:30221:20, :30222:13, :31195:228
  assign _T_348 = _T_1329 ? _T_1329 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30223:13
  wire _T_1330 = kernel_inst0_B_p0_rd_en[8'h13];	// matmul/matmul-hw.mlir:30224:20, :30225:13, :31195:228
  assign _T_347 = _T_1330 ? _T_1330 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30226:13
  wire _T_1331 = kernel_inst0_B_p0_rd_en[8'h14];	// matmul/matmul-hw.mlir:30227:20, :30228:13, :31195:228
  assign _T_346 = _T_1331 ? _T_1331 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30229:13
  wire _T_1332 = kernel_inst0_B_p0_rd_en[8'h15];	// matmul/matmul-hw.mlir:30230:20, :30231:13, :31195:228
  assign _T_345 = _T_1332 ? _T_1332 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30232:13
  wire _T_1333 = kernel_inst0_B_p0_rd_en[8'h16];	// matmul/matmul-hw.mlir:30233:20, :30234:13, :31195:228
  assign _T_344 = _T_1333 ? _T_1333 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30235:13
  wire _T_1334 = kernel_inst0_B_p0_rd_en[8'h17];	// matmul/matmul-hw.mlir:30236:20, :30237:13, :31195:228
  assign _T_343 = _T_1334 ? _T_1334 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30238:13
  wire _T_1335 = kernel_inst0_B_p0_rd_en[8'h18];	// matmul/matmul-hw.mlir:30239:20, :30240:13, :31195:228
  assign _T_342 = _T_1335 ? _T_1335 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30241:13
  wire _T_1336 = kernel_inst0_B_p0_rd_en[8'h19];	// matmul/matmul-hw.mlir:30242:20, :30243:13, :31195:228
  assign _T_341 = _T_1336 ? _T_1336 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30244:13
  wire _T_1337 = kernel_inst0_B_p0_rd_en[8'h1A];	// matmul/matmul-hw.mlir:30245:20, :30246:13, :31195:228
  assign _T_340 = _T_1337 ? _T_1337 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30247:13
  wire _T_1338 = kernel_inst0_B_p0_rd_en[8'h1B];	// matmul/matmul-hw.mlir:30248:20, :30249:13, :31195:228
  assign _T_339 = _T_1338 ? _T_1338 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30250:13
  wire _T_1339 = kernel_inst0_B_p0_rd_en[8'h1C];	// matmul/matmul-hw.mlir:30251:20, :30252:13, :31195:228
  assign _T_338 = _T_1339 ? _T_1339 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30253:13
  wire _T_1340 = kernel_inst0_B_p0_rd_en[8'h1D];	// matmul/matmul-hw.mlir:30254:20, :30255:13, :31195:228
  assign _T_337 = _T_1340 ? _T_1340 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30256:13
  wire _T_1341 = kernel_inst0_B_p0_rd_en[8'h1E];	// matmul/matmul-hw.mlir:30257:20, :30258:13, :31195:228
  assign _T_336 = _T_1341 ? _T_1341 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30259:13
  wire _T_1342 = kernel_inst0_B_p0_rd_en[8'h1F];	// matmul/matmul-hw.mlir:30260:20, :30261:13, :31195:228
  assign _T_335 = _T_1342 ? _T_1342 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30262:13
  wire _T_1343 = kernel_inst0_B_p0_rd_en[8'h20];	// matmul/matmul-hw.mlir:30263:20, :30264:13, :31195:228
  assign _T_334 = _T_1343 ? _T_1343 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30265:13
  wire _T_1344 = kernel_inst0_B_p0_rd_en[8'h21];	// matmul/matmul-hw.mlir:30266:20, :30267:13, :31195:228
  assign _T_333 = _T_1344 ? _T_1344 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30268:13
  wire _T_1345 = kernel_inst0_B_p0_rd_en[8'h22];	// matmul/matmul-hw.mlir:30269:20, :30270:13, :31195:228
  assign _T_332 = _T_1345 ? _T_1345 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30271:13
  wire _T_1346 = kernel_inst0_B_p0_rd_en[8'h23];	// matmul/matmul-hw.mlir:30272:20, :30273:13, :31195:228
  assign _T_331 = _T_1346 ? _T_1346 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30274:13
  wire _T_1347 = kernel_inst0_B_p0_rd_en[8'h24];	// matmul/matmul-hw.mlir:30275:20, :30276:13, :31195:228
  assign _T_330 = _T_1347 ? _T_1347 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30277:13
  wire _T_1348 = kernel_inst0_B_p0_rd_en[8'h25];	// matmul/matmul-hw.mlir:30278:20, :30279:13, :31195:228
  assign _T_329 = _T_1348 ? _T_1348 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30280:13
  wire _T_1349 = kernel_inst0_B_p0_rd_en[8'h26];	// matmul/matmul-hw.mlir:30281:20, :30282:13, :31195:228
  assign _T_328 = _T_1349 ? _T_1349 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30283:13
  wire _T_1350 = kernel_inst0_B_p0_rd_en[8'h27];	// matmul/matmul-hw.mlir:30284:20, :30285:13, :31195:228
  assign _T_327 = _T_1350 ? _T_1350 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30286:13
  wire _T_1351 = kernel_inst0_B_p0_rd_en[8'h28];	// matmul/matmul-hw.mlir:30287:20, :30288:13, :31195:228
  assign _T_326 = _T_1351 ? _T_1351 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30289:13
  wire _T_1352 = kernel_inst0_B_p0_rd_en[8'h29];	// matmul/matmul-hw.mlir:30290:20, :30291:13, :31195:228
  assign _T_325 = _T_1352 ? _T_1352 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30292:13
  wire _T_1353 = kernel_inst0_B_p0_rd_en[8'h2A];	// matmul/matmul-hw.mlir:30293:20, :30294:13, :31195:228
  assign _T_324 = _T_1353 ? _T_1353 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30295:13
  wire _T_1354 = kernel_inst0_B_p0_rd_en[8'h2B];	// matmul/matmul-hw.mlir:30296:20, :30297:13, :31195:228
  assign _T_323 = _T_1354 ? _T_1354 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30298:13
  wire _T_1355 = kernel_inst0_B_p0_rd_en[8'h2C];	// matmul/matmul-hw.mlir:30299:20, :30300:13, :31195:228
  assign _T_322 = _T_1355 ? _T_1355 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30301:13
  wire _T_1356 = kernel_inst0_B_p0_rd_en[8'h2D];	// matmul/matmul-hw.mlir:30302:20, :30303:13, :31195:228
  assign _T_321 = _T_1356 ? _T_1356 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30304:13
  wire _T_1357 = kernel_inst0_B_p0_rd_en[8'h2E];	// matmul/matmul-hw.mlir:30305:20, :30306:13, :31195:228
  assign _T_320 = _T_1357 ? _T_1357 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30307:13
  wire _T_1358 = kernel_inst0_B_p0_rd_en[8'h2F];	// matmul/matmul-hw.mlir:30308:20, :30309:13, :31195:228
  assign _T_319 = _T_1358 ? _T_1358 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30310:13
  wire _T_1359 = kernel_inst0_B_p0_rd_en[8'h30];	// matmul/matmul-hw.mlir:30311:20, :30312:13, :31195:228
  assign _T_318 = _T_1359 ? _T_1359 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30313:13
  wire _T_1360 = kernel_inst0_B_p0_rd_en[8'h31];	// matmul/matmul-hw.mlir:30314:20, :30315:13, :31195:228
  assign _T_317 = _T_1360 ? _T_1360 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30316:13
  wire _T_1361 = kernel_inst0_B_p0_rd_en[8'h32];	// matmul/matmul-hw.mlir:30317:20, :30318:13, :31195:228
  assign _T_316 = _T_1361 ? _T_1361 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30319:13
  wire _T_1362 = kernel_inst0_B_p0_rd_en[8'h33];	// matmul/matmul-hw.mlir:30320:20, :30321:13, :31195:228
  assign _T_315 = _T_1362 ? _T_1362 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30322:13
  wire _T_1363 = kernel_inst0_B_p0_rd_en[8'h34];	// matmul/matmul-hw.mlir:30323:20, :30324:13, :31195:228
  assign _T_314 = _T_1363 ? _T_1363 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30325:13
  wire _T_1364 = kernel_inst0_B_p0_rd_en[8'h35];	// matmul/matmul-hw.mlir:30326:20, :30327:13, :31195:228
  assign _T_313 = _T_1364 ? _T_1364 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30328:13
  wire _T_1365 = kernel_inst0_B_p0_rd_en[8'h36];	// matmul/matmul-hw.mlir:30329:20, :30330:13, :31195:228
  assign _T_312 = _T_1365 ? _T_1365 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30331:13
  wire _T_1366 = kernel_inst0_B_p0_rd_en[8'h37];	// matmul/matmul-hw.mlir:30332:20, :30333:13, :31195:228
  assign _T_311 = _T_1366 ? _T_1366 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30334:13
  wire _T_1367 = kernel_inst0_B_p0_rd_en[8'h38];	// matmul/matmul-hw.mlir:30335:20, :30336:13, :31195:228
  assign _T_310 = _T_1367 ? _T_1367 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30337:13
  wire _T_1368 = kernel_inst0_B_p0_rd_en[8'h39];	// matmul/matmul-hw.mlir:30338:20, :30339:13, :31195:228
  assign _T_309 = _T_1368 ? _T_1368 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30340:13
  wire _T_1369 = kernel_inst0_B_p0_rd_en[8'h3A];	// matmul/matmul-hw.mlir:30341:20, :30342:13, :31195:228
  assign _T_308 = _T_1369 ? _T_1369 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30343:13
  wire _T_1370 = kernel_inst0_B_p0_rd_en[8'h3B];	// matmul/matmul-hw.mlir:30344:20, :30345:13, :31195:228
  assign _T_307 = _T_1370 ? _T_1370 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30346:13
  wire _T_1371 = kernel_inst0_B_p0_rd_en[8'h3C];	// matmul/matmul-hw.mlir:30347:20, :30348:13, :31195:228
  assign _T_306 = _T_1371 ? _T_1371 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30349:13
  wire _T_1372 = kernel_inst0_B_p0_rd_en[8'h3D];	// matmul/matmul-hw.mlir:30350:20, :30351:13, :31195:228
  assign _T_305 = _T_1372 ? _T_1372 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30352:13
  wire _T_1373 = kernel_inst0_B_p0_rd_en[8'h3E];	// matmul/matmul-hw.mlir:30353:20, :30354:13, :31195:228
  assign _T_304 = _T_1373 ? _T_1373 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30355:13
  wire _T_1374 = kernel_inst0_B_p0_rd_en[8'h3F];	// matmul/matmul-hw.mlir:30356:20, :30357:13, :31195:228
  assign _T_303 = _T_1374 ? _T_1374 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30358:13
  wire _T_1375 = kernel_inst0_B_p0_rd_en[8'h40];	// matmul/matmul-hw.mlir:30359:20, :30360:13, :31195:228
  assign _T_302 = _T_1375 ? _T_1375 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30361:13
  wire _T_1376 = kernel_inst0_B_p0_rd_en[8'h41];	// matmul/matmul-hw.mlir:30362:20, :30363:13, :31195:228
  assign _T_301 = _T_1376 ? _T_1376 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30364:13
  wire _T_1377 = kernel_inst0_B_p0_rd_en[8'h42];	// matmul/matmul-hw.mlir:30365:20, :30366:13, :31195:228
  assign _T_300 = _T_1377 ? _T_1377 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30367:13
  wire _T_1378 = kernel_inst0_B_p0_rd_en[8'h43];	// matmul/matmul-hw.mlir:30368:20, :30369:13, :31195:228
  assign _T_299 = _T_1378 ? _T_1378 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30370:13
  wire _T_1379 = kernel_inst0_B_p0_rd_en[8'h44];	// matmul/matmul-hw.mlir:30371:20, :30372:13, :31195:228
  assign _T_298 = _T_1379 ? _T_1379 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30373:13
  wire _T_1380 = kernel_inst0_B_p0_rd_en[8'h45];	// matmul/matmul-hw.mlir:30374:20, :30375:13, :31195:228
  assign _T_297 = _T_1380 ? _T_1380 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30376:13
  wire _T_1381 = kernel_inst0_B_p0_rd_en[8'h46];	// matmul/matmul-hw.mlir:30377:20, :30378:13, :31195:228
  assign _T_296 = _T_1381 ? _T_1381 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30379:13
  wire _T_1382 = kernel_inst0_B_p0_rd_en[8'h47];	// matmul/matmul-hw.mlir:30380:20, :30381:13, :31195:228
  assign _T_295 = _T_1382 ? _T_1382 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30382:13
  wire _T_1383 = kernel_inst0_B_p0_rd_en[8'h48];	// matmul/matmul-hw.mlir:30383:20, :30384:13, :31195:228
  assign _T_294 = _T_1383 ? _T_1383 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30385:13
  wire _T_1384 = kernel_inst0_B_p0_rd_en[8'h49];	// matmul/matmul-hw.mlir:30386:20, :30387:13, :31195:228
  assign _T_293 = _T_1384 ? _T_1384 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30388:13
  wire _T_1385 = kernel_inst0_B_p0_rd_en[8'h4A];	// matmul/matmul-hw.mlir:30389:20, :30390:13, :31195:228
  assign _T_292 = _T_1385 ? _T_1385 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30391:13
  wire _T_1386 = kernel_inst0_B_p0_rd_en[8'h4B];	// matmul/matmul-hw.mlir:30392:20, :30393:13, :31195:228
  assign _T_291 = _T_1386 ? _T_1386 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30394:13
  wire _T_1387 = kernel_inst0_B_p0_rd_en[8'h4C];	// matmul/matmul-hw.mlir:30395:20, :30396:13, :31195:228
  assign _T_290 = _T_1387 ? _T_1387 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30397:13
  wire _T_1388 = kernel_inst0_B_p0_rd_en[8'h4D];	// matmul/matmul-hw.mlir:30398:20, :30399:13, :31195:228
  assign _T_289 = _T_1388 ? _T_1388 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30400:13
  wire _T_1389 = kernel_inst0_B_p0_rd_en[8'h4E];	// matmul/matmul-hw.mlir:30401:20, :30402:13, :31195:228
  assign _T_288 = _T_1389 ? _T_1389 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30403:13
  wire _T_1390 = kernel_inst0_B_p0_rd_en[8'h4F];	// matmul/matmul-hw.mlir:30404:20, :30405:13, :31195:228
  assign _T_287 = _T_1390 ? _T_1390 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30406:13
  wire _T_1391 = kernel_inst0_B_p0_rd_en[8'h50];	// matmul/matmul-hw.mlir:30407:20, :30408:13, :31195:228
  assign _T_286 = _T_1391 ? _T_1391 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30409:13
  wire _T_1392 = kernel_inst0_B_p0_rd_en[8'h51];	// matmul/matmul-hw.mlir:30410:20, :30411:13, :31195:228
  assign _T_285 = _T_1392 ? _T_1392 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30412:13
  wire _T_1393 = kernel_inst0_B_p0_rd_en[8'h52];	// matmul/matmul-hw.mlir:30413:20, :30414:13, :31195:228
  assign _T_284 = _T_1393 ? _T_1393 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30415:13
  wire _T_1394 = kernel_inst0_B_p0_rd_en[8'h53];	// matmul/matmul-hw.mlir:30416:20, :30417:13, :31195:228
  assign _T_283 = _T_1394 ? _T_1394 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30418:13
  wire _T_1395 = kernel_inst0_B_p0_rd_en[8'h54];	// matmul/matmul-hw.mlir:30419:20, :30420:13, :31195:228
  assign _T_282 = _T_1395 ? _T_1395 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30421:13
  wire _T_1396 = kernel_inst0_B_p0_rd_en[8'h55];	// matmul/matmul-hw.mlir:30422:20, :30423:13, :31195:228
  assign _T_281 = _T_1396 ? _T_1396 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30424:13
  wire _T_1397 = kernel_inst0_B_p0_rd_en[8'h56];	// matmul/matmul-hw.mlir:30425:20, :30426:13, :31195:228
  assign _T_280 = _T_1397 ? _T_1397 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30427:13
  wire _T_1398 = kernel_inst0_B_p0_rd_en[8'h57];	// matmul/matmul-hw.mlir:30428:20, :30429:13, :31195:228
  assign _T_279 = _T_1398 ? _T_1398 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30430:13
  wire _T_1399 = kernel_inst0_B_p0_rd_en[8'h58];	// matmul/matmul-hw.mlir:30431:20, :30432:13, :31195:228
  assign _T_278 = _T_1399 ? _T_1399 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30433:13
  wire _T_1400 = kernel_inst0_B_p0_rd_en[8'h59];	// matmul/matmul-hw.mlir:30434:20, :30435:13, :31195:228
  assign _T_277 = _T_1400 ? _T_1400 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30436:13
  wire _T_1401 = kernel_inst0_B_p0_rd_en[8'h5A];	// matmul/matmul-hw.mlir:30437:20, :30438:13, :31195:228
  assign _T_276 = _T_1401 ? _T_1401 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30439:13
  wire _T_1402 = kernel_inst0_B_p0_rd_en[8'h5B];	// matmul/matmul-hw.mlir:30440:20, :30441:13, :31195:228
  assign _T_275 = _T_1402 ? _T_1402 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30442:13
  wire _T_1403 = kernel_inst0_B_p0_rd_en[8'h5C];	// matmul/matmul-hw.mlir:30443:20, :30444:13, :31195:228
  assign _T_274 = _T_1403 ? _T_1403 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30445:13
  wire _T_1404 = kernel_inst0_B_p0_rd_en[8'h5D];	// matmul/matmul-hw.mlir:30446:20, :30447:13, :31195:228
  assign _T_273 = _T_1404 ? _T_1404 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30448:13
  wire _T_1405 = kernel_inst0_B_p0_rd_en[8'h5E];	// matmul/matmul-hw.mlir:30449:20, :30450:13, :31195:228
  assign _T_272 = _T_1405 ? _T_1405 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30451:13
  wire _T_1406 = kernel_inst0_B_p0_rd_en[8'h5F];	// matmul/matmul-hw.mlir:30452:20, :30453:13, :31195:228
  assign _T_271 = _T_1406 ? _T_1406 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30454:13
  wire _T_1407 = kernel_inst0_B_p0_rd_en[8'h60];	// matmul/matmul-hw.mlir:30455:20, :30456:13, :31195:228
  assign _T_270 = _T_1407 ? _T_1407 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30457:13
  wire _T_1408 = kernel_inst0_B_p0_rd_en[8'h61];	// matmul/matmul-hw.mlir:30458:20, :30459:13, :31195:228
  assign _T_269 = _T_1408 ? _T_1408 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30460:13
  wire _T_1409 = kernel_inst0_B_p0_rd_en[8'h62];	// matmul/matmul-hw.mlir:30461:20, :30462:13, :31195:228
  assign _T_268 = _T_1409 ? _T_1409 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30463:13
  wire _T_1410 = kernel_inst0_B_p0_rd_en[8'h63];	// matmul/matmul-hw.mlir:30464:20, :30465:13, :31195:228
  assign _T_267 = _T_1410 ? _T_1410 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30466:13
  wire _T_1411 = kernel_inst0_B_p0_rd_en[8'h64];	// matmul/matmul-hw.mlir:30467:21, :30468:13, :31195:228
  assign _T_266 = _T_1411 ? _T_1411 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30469:13
  wire _T_1412 = kernel_inst0_B_p0_rd_en[8'h65];	// matmul/matmul-hw.mlir:30470:21, :30471:13, :31195:228
  assign _T_265 = _T_1412 ? _T_1412 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30472:13
  wire _T_1413 = kernel_inst0_B_p0_rd_en[8'h66];	// matmul/matmul-hw.mlir:30473:21, :30474:13, :31195:228
  assign _T_264 = _T_1413 ? _T_1413 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30475:13
  wire _T_1414 = kernel_inst0_B_p0_rd_en[8'h67];	// matmul/matmul-hw.mlir:30476:21, :30477:13, :31195:228
  assign _T_263 = _T_1414 ? _T_1414 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30478:13
  wire _T_1415 = kernel_inst0_B_p0_rd_en[8'h68];	// matmul/matmul-hw.mlir:30479:21, :30480:13, :31195:228
  assign _T_262 = _T_1415 ? _T_1415 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30481:13
  wire _T_1416 = kernel_inst0_B_p0_rd_en[8'h69];	// matmul/matmul-hw.mlir:30482:21, :30483:13, :31195:228
  assign _T_261 = _T_1416 ? _T_1416 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30484:13
  wire _T_1417 = kernel_inst0_B_p0_rd_en[8'h6A];	// matmul/matmul-hw.mlir:30485:21, :30486:13, :31195:228
  assign _T_260 = _T_1417 ? _T_1417 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30487:13
  wire _T_1418 = kernel_inst0_B_p0_rd_en[8'h6B];	// matmul/matmul-hw.mlir:30488:21, :30489:13, :31195:228
  assign _T_259 = _T_1418 ? _T_1418 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30490:13
  wire _T_1419 = kernel_inst0_B_p0_rd_en[8'h6C];	// matmul/matmul-hw.mlir:30491:21, :30492:13, :31195:228
  assign _T_258 = _T_1419 ? _T_1419 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30493:13
  wire _T_1420 = kernel_inst0_B_p0_rd_en[8'h6D];	// matmul/matmul-hw.mlir:30494:21, :30495:13, :31195:228
  assign _T_257 = _T_1420 ? _T_1420 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30496:13
  wire _T_1421 = kernel_inst0_B_p0_rd_en[8'h6E];	// matmul/matmul-hw.mlir:30497:21, :30498:13, :31195:228
  assign _T_256 = _T_1421 ? _T_1421 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30499:13
  wire _T_1422 = kernel_inst0_B_p0_rd_en[8'h6F];	// matmul/matmul-hw.mlir:30500:21, :30501:13, :31195:228
  assign _T_255 = _T_1422 ? _T_1422 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30502:13
  wire _T_1423 = kernel_inst0_B_p0_rd_en[8'h70];	// matmul/matmul-hw.mlir:30503:21, :30504:13, :31195:228
  assign _T_254 = _T_1423 ? _T_1423 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30505:13
  wire _T_1424 = kernel_inst0_B_p0_rd_en[8'h71];	// matmul/matmul-hw.mlir:30506:21, :30507:13, :31195:228
  assign _T_253 = _T_1424 ? _T_1424 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30508:13
  wire _T_1425 = kernel_inst0_B_p0_rd_en[8'h72];	// matmul/matmul-hw.mlir:30509:21, :30510:13, :31195:228
  assign _T_252 = _T_1425 ? _T_1425 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30511:13
  wire _T_1426 = kernel_inst0_B_p0_rd_en[8'h73];	// matmul/matmul-hw.mlir:30512:21, :30513:13, :31195:228
  assign _T_251 = _T_1426 ? _T_1426 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30514:13
  wire _T_1427 = kernel_inst0_B_p0_rd_en[8'h74];	// matmul/matmul-hw.mlir:30515:21, :30516:13, :31195:228
  assign _T_250 = _T_1427 ? _T_1427 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30517:13
  wire _T_1428 = kernel_inst0_B_p0_rd_en[8'h75];	// matmul/matmul-hw.mlir:30518:21, :30519:13, :31195:228
  assign _T_249 = _T_1428 ? _T_1428 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30520:13
  wire _T_1429 = kernel_inst0_B_p0_rd_en[8'h76];	// matmul/matmul-hw.mlir:30521:21, :30522:13, :31195:228
  assign _T_248 = _T_1429 ? _T_1429 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30523:13
  wire _T_1430 = kernel_inst0_B_p0_rd_en[8'h77];	// matmul/matmul-hw.mlir:30524:21, :30525:13, :31195:228
  assign _T_247 = _T_1430 ? _T_1430 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30526:13
  wire _T_1431 = kernel_inst0_B_p0_rd_en[8'h78];	// matmul/matmul-hw.mlir:30527:21, :30528:13, :31195:228
  assign _T_246 = _T_1431 ? _T_1431 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30529:13
  wire _T_1432 = kernel_inst0_B_p0_rd_en[8'h79];	// matmul/matmul-hw.mlir:30530:21, :30531:13, :31195:228
  assign _T_245 = _T_1432 ? _T_1432 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30532:13
  wire _T_1433 = kernel_inst0_B_p0_rd_en[8'h7A];	// matmul/matmul-hw.mlir:30533:21, :30534:13, :31195:228
  assign _T_244 = _T_1433 ? _T_1433 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30535:13
  wire _T_1434 = kernel_inst0_B_p0_rd_en[8'h7B];	// matmul/matmul-hw.mlir:30536:21, :30537:13, :31195:228
  assign _T_243 = _T_1434 ? _T_1434 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30538:13
  wire _T_1435 = kernel_inst0_B_p0_rd_en[8'h7C];	// matmul/matmul-hw.mlir:30539:21, :30540:13, :31195:228
  assign _T_242 = _T_1435 ? _T_1435 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30541:13
  wire _T_1436 = kernel_inst0_B_p0_rd_en[8'h7D];	// matmul/matmul-hw.mlir:30542:21, :30543:13, :31195:228
  assign _T_241 = _T_1436 ? _T_1436 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30544:13
  wire _T_1437 = kernel_inst0_B_p0_rd_en[8'h7E];	// matmul/matmul-hw.mlir:30545:21, :30546:13, :31195:228
  assign _T_240 = _T_1437 ? _T_1437 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30547:13
  wire _T_1438 = kernel_inst0_B_p0_rd_en[8'h7F];	// matmul/matmul-hw.mlir:30548:21, :30549:13, :31195:228
  assign _T_239 = _T_1438 ? _T_1438 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30550:13
  wire _T_1439 = kernel_inst0_B_p0_rd_en[8'h80];	// matmul/matmul-hw.mlir:30551:22, :30552:13, :31195:228
  assign _T_238 = _T_1439 ? _T_1439 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30553:13
  wire _T_1440 = kernel_inst0_B_p0_rd_en[8'h81];	// matmul/matmul-hw.mlir:30554:22, :30555:13, :31195:228
  assign _T_237 = _T_1440 ? _T_1440 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30556:13
  wire _T_1441 = kernel_inst0_B_p0_rd_en[8'h82];	// matmul/matmul-hw.mlir:30557:22, :30558:13, :31195:228
  assign _T_236 = _T_1441 ? _T_1441 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30559:13
  wire _T_1442 = kernel_inst0_B_p0_rd_en[8'h83];	// matmul/matmul-hw.mlir:30560:22, :30561:13, :31195:228
  assign _T_235 = _T_1442 ? _T_1442 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30562:13
  wire _T_1443 = kernel_inst0_B_p0_rd_en[8'h84];	// matmul/matmul-hw.mlir:30563:22, :30564:13, :31195:228
  assign _T_234 = _T_1443 ? _T_1443 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30565:13
  wire _T_1444 = kernel_inst0_B_p0_rd_en[8'h85];	// matmul/matmul-hw.mlir:30566:22, :30567:13, :31195:228
  assign _T_233 = _T_1444 ? _T_1444 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30568:13
  wire _T_1445 = kernel_inst0_B_p0_rd_en[8'h86];	// matmul/matmul-hw.mlir:30569:22, :30570:13, :31195:228
  assign _T_232 = _T_1445 ? _T_1445 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30571:13
  wire _T_1446 = kernel_inst0_B_p0_rd_en[8'h87];	// matmul/matmul-hw.mlir:30572:22, :30573:13, :31195:228
  assign _T_231 = _T_1446 ? _T_1446 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30574:13
  wire _T_1447 = kernel_inst0_B_p0_rd_en[8'h88];	// matmul/matmul-hw.mlir:30575:22, :30576:13, :31195:228
  assign _T_230 = _T_1447 ? _T_1447 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30577:13
  wire _T_1448 = kernel_inst0_B_p0_rd_en[8'h89];	// matmul/matmul-hw.mlir:30578:22, :30579:13, :31195:228
  assign _T_229 = _T_1448 ? _T_1448 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30580:13
  wire _T_1449 = kernel_inst0_B_p0_rd_en[8'h8A];	// matmul/matmul-hw.mlir:30581:22, :30582:13, :31195:228
  assign _T_228 = _T_1449 ? _T_1449 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30583:13
  wire _T_1450 = kernel_inst0_B_p0_rd_en[8'h8B];	// matmul/matmul-hw.mlir:30584:22, :30585:13, :31195:228
  assign _T_227 = _T_1450 ? _T_1450 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30586:13
  wire _T_1451 = kernel_inst0_B_p0_rd_en[8'h8C];	// matmul/matmul-hw.mlir:30587:22, :30588:13, :31195:228
  assign _T_226 = _T_1451 ? _T_1451 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30589:13
  wire _T_1452 = kernel_inst0_B_p0_rd_en[8'h8D];	// matmul/matmul-hw.mlir:30590:22, :30591:13, :31195:228
  assign _T_225 = _T_1452 ? _T_1452 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30592:13
  wire _T_1453 = kernel_inst0_B_p0_rd_en[8'h8E];	// matmul/matmul-hw.mlir:30593:22, :30594:13, :31195:228
  assign _T_224 = _T_1453 ? _T_1453 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30595:13
  wire _T_1454 = kernel_inst0_B_p0_rd_en[8'h8F];	// matmul/matmul-hw.mlir:30596:22, :30597:13, :31195:228
  assign _T_223 = _T_1454 ? _T_1454 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30598:13
  wire _T_1455 = kernel_inst0_B_p0_rd_en[8'h90];	// matmul/matmul-hw.mlir:30599:22, :30600:13, :31195:228
  assign _T_222 = _T_1455 ? _T_1455 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30601:13
  wire _T_1456 = kernel_inst0_B_p0_rd_en[8'h91];	// matmul/matmul-hw.mlir:30602:22, :30603:13, :31195:228
  assign _T_221 = _T_1456 ? _T_1456 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30604:13
  wire _T_1457 = kernel_inst0_B_p0_rd_en[8'h92];	// matmul/matmul-hw.mlir:30605:22, :30606:13, :31195:228
  assign _T_220 = _T_1457 ? _T_1457 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30607:13
  wire _T_1458 = kernel_inst0_B_p0_rd_en[8'h93];	// matmul/matmul-hw.mlir:30608:22, :30609:13, :31195:228
  assign _T_219 = _T_1458 ? _T_1458 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30610:13
  wire _T_1459 = kernel_inst0_B_p0_rd_en[8'h94];	// matmul/matmul-hw.mlir:30611:22, :30612:13, :31195:228
  assign _T_218 = _T_1459 ? _T_1459 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30613:13
  wire _T_1460 = kernel_inst0_B_p0_rd_en[8'h95];	// matmul/matmul-hw.mlir:30614:22, :30615:13, :31195:228
  assign _T_217 = _T_1460 ? _T_1460 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30616:13
  wire _T_1461 = kernel_inst0_B_p0_rd_en[8'h96];	// matmul/matmul-hw.mlir:30617:22, :30618:13, :31195:228
  assign _T_216 = _T_1461 ? _T_1461 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30619:13
  wire _T_1462 = kernel_inst0_B_p0_rd_en[8'h97];	// matmul/matmul-hw.mlir:30620:22, :30621:13, :31195:228
  assign _T_215 = _T_1462 ? _T_1462 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30622:13
  wire _T_1463 = kernel_inst0_B_p0_rd_en[8'h98];	// matmul/matmul-hw.mlir:30623:22, :30624:13, :31195:228
  assign _T_214 = _T_1463 ? _T_1463 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30625:13
  wire _T_1464 = kernel_inst0_B_p0_rd_en[8'h99];	// matmul/matmul-hw.mlir:30626:22, :30627:13, :31195:228
  assign _T_213 = _T_1464 ? _T_1464 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30628:13
  wire _T_1465 = kernel_inst0_B_p0_rd_en[8'h9A];	// matmul/matmul-hw.mlir:30629:22, :30630:13, :31195:228
  assign _T_212 = _T_1465 ? _T_1465 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30631:13
  wire _T_1466 = kernel_inst0_B_p0_rd_en[8'h9B];	// matmul/matmul-hw.mlir:30632:22, :30633:13, :31195:228
  assign _T_211 = _T_1466 ? _T_1466 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30634:13
  wire _T_1467 = kernel_inst0_B_p0_rd_en[8'h9C];	// matmul/matmul-hw.mlir:30635:22, :30636:13, :31195:228
  assign _T_210 = _T_1467 ? _T_1467 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30637:13
  wire _T_1468 = kernel_inst0_B_p0_rd_en[8'h9D];	// matmul/matmul-hw.mlir:30638:21, :30639:13, :31195:228
  assign _T_209 = _T_1468 ? _T_1468 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30640:13
  wire _T_1469 = kernel_inst0_B_p0_rd_en[8'h9E];	// matmul/matmul-hw.mlir:30641:21, :30642:13, :31195:228
  assign _T_208 = _T_1469 ? _T_1469 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30643:13
  wire _T_1470 = kernel_inst0_B_p0_rd_en[8'h9F];	// matmul/matmul-hw.mlir:30644:21, :30645:13, :31195:228
  assign _T_207 = _T_1470 ? _T_1470 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30646:13
  wire _T_1471 = kernel_inst0_B_p0_rd_en[8'hA0];	// matmul/matmul-hw.mlir:30647:21, :30648:13, :31195:228
  assign _T_206 = _T_1471 ? _T_1471 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30649:13
  wire _T_1472 = kernel_inst0_B_p0_rd_en[8'hA1];	// matmul/matmul-hw.mlir:30650:21, :30651:13, :31195:228
  assign _T_205 = _T_1472 ? _T_1472 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30652:13
  wire _T_1473 = kernel_inst0_B_p0_rd_en[8'hA2];	// matmul/matmul-hw.mlir:30653:21, :30654:13, :31195:228
  assign _T_204 = _T_1473 ? _T_1473 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30655:13
  wire _T_1474 = kernel_inst0_B_p0_rd_en[8'hA3];	// matmul/matmul-hw.mlir:30656:21, :30657:13, :31195:228
  assign _T_203 = _T_1474 ? _T_1474 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30658:13
  wire _T_1475 = kernel_inst0_B_p0_rd_en[8'hA4];	// matmul/matmul-hw.mlir:30659:21, :30660:13, :31195:228
  assign _T_202 = _T_1475 ? _T_1475 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30661:13
  wire _T_1476 = kernel_inst0_B_p0_rd_en[8'hA5];	// matmul/matmul-hw.mlir:30662:21, :30663:13, :31195:228
  assign _T_201 = _T_1476 ? _T_1476 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30664:13
  wire _T_1477 = kernel_inst0_B_p0_rd_en[8'hA6];	// matmul/matmul-hw.mlir:30665:21, :30666:13, :31195:228
  assign _T_200 = _T_1477 ? _T_1477 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30667:13
  wire _T_1478 = kernel_inst0_B_p0_rd_en[8'hA7];	// matmul/matmul-hw.mlir:30668:21, :30669:13, :31195:228
  assign _T_199 = _T_1478 ? _T_1478 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30670:13
  wire _T_1479 = kernel_inst0_B_p0_rd_en[8'hA8];	// matmul/matmul-hw.mlir:30671:21, :30672:13, :31195:228
  assign _T_198 = _T_1479 ? _T_1479 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30673:13
  wire _T_1480 = kernel_inst0_B_p0_rd_en[8'hA9];	// matmul/matmul-hw.mlir:30674:21, :30675:13, :31195:228
  assign _T_197 = _T_1480 ? _T_1480 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30676:13
  wire _T_1481 = kernel_inst0_B_p0_rd_en[8'hAA];	// matmul/matmul-hw.mlir:30677:21, :30678:13, :31195:228
  assign _T_196 = _T_1481 ? _T_1481 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30679:13
  wire _T_1482 = kernel_inst0_B_p0_rd_en[8'hAB];	// matmul/matmul-hw.mlir:30680:21, :30681:13, :31195:228
  assign _T_195 = _T_1482 ? _T_1482 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30682:13
  wire _T_1483 = kernel_inst0_B_p0_rd_en[8'hAC];	// matmul/matmul-hw.mlir:30683:21, :30684:13, :31195:228
  assign _T_194 = _T_1483 ? _T_1483 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30685:13
  wire _T_1484 = kernel_inst0_B_p0_rd_en[8'hAD];	// matmul/matmul-hw.mlir:30686:21, :30687:13, :31195:228
  assign _T_193 = _T_1484 ? _T_1484 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30688:13
  wire _T_1485 = kernel_inst0_B_p0_rd_en[8'hAE];	// matmul/matmul-hw.mlir:30689:21, :30690:13, :31195:228
  assign _T_192 = _T_1485 ? _T_1485 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30691:13
  wire _T_1486 = kernel_inst0_B_p0_rd_en[8'hAF];	// matmul/matmul-hw.mlir:30692:21, :30693:13, :31195:228
  assign _T_191 = _T_1486 ? _T_1486 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30694:13
  wire _T_1487 = kernel_inst0_B_p0_rd_en[8'hB0];	// matmul/matmul-hw.mlir:30695:21, :30696:13, :31195:228
  assign _T_190 = _T_1487 ? _T_1487 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30697:13
  wire _T_1488 = kernel_inst0_B_p0_rd_en[8'hB1];	// matmul/matmul-hw.mlir:30698:21, :30699:13, :31195:228
  assign _T_189 = _T_1488 ? _T_1488 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30700:13
  wire _T_1489 = kernel_inst0_B_p0_rd_en[8'hB2];	// matmul/matmul-hw.mlir:30701:21, :30702:13, :31195:228
  assign _T_188 = _T_1489 ? _T_1489 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30703:13
  wire _T_1490 = kernel_inst0_B_p0_rd_en[8'hB3];	// matmul/matmul-hw.mlir:30704:21, :30705:13, :31195:228
  assign _T_187 = _T_1490 ? _T_1490 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30706:13
  wire _T_1491 = kernel_inst0_B_p0_rd_en[8'hB4];	// matmul/matmul-hw.mlir:30707:21, :30708:13, :31195:228
  assign _T_186 = _T_1491 ? _T_1491 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30709:13
  wire _T_1492 = kernel_inst0_B_p0_rd_en[8'hB5];	// matmul/matmul-hw.mlir:30710:21, :30711:13, :31195:228
  assign _T_185 = _T_1492 ? _T_1492 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30712:13
  wire _T_1493 = kernel_inst0_B_p0_rd_en[8'hB6];	// matmul/matmul-hw.mlir:30713:21, :30714:13, :31195:228
  assign _T_184 = _T_1493 ? _T_1493 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30715:13
  wire _T_1494 = kernel_inst0_B_p0_rd_en[8'hB7];	// matmul/matmul-hw.mlir:30716:21, :30717:13, :31195:228
  assign _T_183 = _T_1494 ? _T_1494 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30718:13
  wire _T_1495 = kernel_inst0_B_p0_rd_en[8'hB8];	// matmul/matmul-hw.mlir:30719:21, :30720:13, :31195:228
  assign _T_182 = _T_1495 ? _T_1495 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30721:13
  wire _T_1496 = kernel_inst0_B_p0_rd_en[8'hB9];	// matmul/matmul-hw.mlir:30722:21, :30723:13, :31195:228
  assign _T_181 = _T_1496 ? _T_1496 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30724:13
  wire _T_1497 = kernel_inst0_B_p0_rd_en[8'hBA];	// matmul/matmul-hw.mlir:30725:21, :30726:13, :31195:228
  assign _T_180 = _T_1497 ? _T_1497 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30727:13
  wire _T_1498 = kernel_inst0_B_p0_rd_en[8'hBB];	// matmul/matmul-hw.mlir:30728:21, :30729:13, :31195:228
  assign _T_179 = _T_1498 ? _T_1498 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30730:13
  wire _T_1499 = kernel_inst0_B_p0_rd_en[8'hBC];	// matmul/matmul-hw.mlir:30731:21, :30732:13, :31195:228
  assign _T_178 = _T_1499 ? _T_1499 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30733:13
  wire _T_1500 = kernel_inst0_B_p0_rd_en[8'hBD];	// matmul/matmul-hw.mlir:30734:21, :30735:13, :31195:228
  assign _T_177 = _T_1500 ? _T_1500 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30736:13
  wire _T_1501 = kernel_inst0_B_p0_rd_en[8'hBE];	// matmul/matmul-hw.mlir:30737:21, :30738:13, :31195:228
  assign _T_176 = _T_1501 ? _T_1501 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30739:13
  wire _T_1502 = kernel_inst0_B_p0_rd_en[8'hBF];	// matmul/matmul-hw.mlir:30740:21, :30741:13, :31195:228
  assign _T_175 = _T_1502 ? _T_1502 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30742:13
  wire _T_1503 = kernel_inst0_B_p0_rd_en[8'hC0];	// matmul/matmul-hw.mlir:30743:21, :30744:13, :31195:228
  assign _T_174 = _T_1503 ? _T_1503 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30745:13
  wire _T_1504 = kernel_inst0_B_p0_rd_en[8'hC1];	// matmul/matmul-hw.mlir:30746:21, :30747:13, :31195:228
  assign _T_173 = _T_1504 ? _T_1504 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30748:13
  wire _T_1505 = kernel_inst0_B_p0_rd_en[8'hC2];	// matmul/matmul-hw.mlir:30749:21, :30750:13, :31195:228
  assign _T_172 = _T_1505 ? _T_1505 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30751:13
  wire _T_1506 = kernel_inst0_B_p0_rd_en[8'hC3];	// matmul/matmul-hw.mlir:30752:21, :30753:13, :31195:228
  assign _T_171 = _T_1506 ? _T_1506 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30754:13
  wire _T_1507 = kernel_inst0_B_p0_rd_en[8'hC4];	// matmul/matmul-hw.mlir:30755:21, :30756:13, :31195:228
  assign _T_170 = _T_1507 ? _T_1507 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30757:13
  wire _T_1508 = kernel_inst0_B_p0_rd_en[8'hC5];	// matmul/matmul-hw.mlir:30758:21, :30759:13, :31195:228
  assign _T_169 = _T_1508 ? _T_1508 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30760:13
  wire _T_1509 = kernel_inst0_B_p0_rd_en[8'hC6];	// matmul/matmul-hw.mlir:30761:21, :30762:13, :31195:228
  assign _T_168 = _T_1509 ? _T_1509 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30763:13
  wire _T_1510 = kernel_inst0_B_p0_rd_en[8'hC7];	// matmul/matmul-hw.mlir:30764:21, :30765:13, :31195:228
  assign _T_167 = _T_1510 ? _T_1510 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30766:13
  wire _T_1511 = kernel_inst0_B_p0_rd_en[8'hC8];	// matmul/matmul-hw.mlir:30767:21, :30768:13, :31195:228
  assign _T_166 = _T_1511 ? _T_1511 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30769:13
  wire _T_1512 = kernel_inst0_B_p0_rd_en[8'hC9];	// matmul/matmul-hw.mlir:30770:21, :30771:13, :31195:228
  assign _T_165 = _T_1512 ? _T_1512 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30772:13
  wire _T_1513 = kernel_inst0_B_p0_rd_en[8'hCA];	// matmul/matmul-hw.mlir:30773:21, :30774:13, :31195:228
  assign _T_164 = _T_1513 ? _T_1513 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30775:13
  wire _T_1514 = kernel_inst0_B_p0_rd_en[8'hCB];	// matmul/matmul-hw.mlir:30776:21, :30777:13, :31195:228
  assign _T_163 = _T_1514 ? _T_1514 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30778:13
  wire _T_1515 = kernel_inst0_B_p0_rd_en[8'hCC];	// matmul/matmul-hw.mlir:30779:21, :30780:13, :31195:228
  assign _T_162 = _T_1515 ? _T_1515 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30781:13
  wire _T_1516 = kernel_inst0_B_p0_rd_en[8'hCD];	// matmul/matmul-hw.mlir:30782:21, :30783:13, :31195:228
  assign _T_161 = _T_1516 ? _T_1516 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30784:13
  wire _T_1517 = kernel_inst0_B_p0_rd_en[8'hCE];	// matmul/matmul-hw.mlir:30785:21, :30786:13, :31195:228
  assign _T_160 = _T_1517 ? _T_1517 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30787:13
  wire _T_1518 = kernel_inst0_B_p0_rd_en[8'hCF];	// matmul/matmul-hw.mlir:30788:21, :30789:13, :31195:228
  assign _T_159 = _T_1518 ? _T_1518 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30790:13
  wire _T_1519 = kernel_inst0_B_p0_rd_en[8'hD0];	// matmul/matmul-hw.mlir:30791:21, :30792:13, :31195:228
  assign _T_158 = _T_1519 ? _T_1519 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30793:13
  wire _T_1520 = kernel_inst0_B_p0_rd_en[8'hD1];	// matmul/matmul-hw.mlir:30794:21, :30795:13, :31195:228
  assign _T_157 = _T_1520 ? _T_1520 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30796:13
  wire _T_1521 = kernel_inst0_B_p0_rd_en[8'hD2];	// matmul/matmul-hw.mlir:30797:21, :30798:13, :31195:228
  assign _T_156 = _T_1521 ? _T_1521 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30799:13
  wire _T_1522 = kernel_inst0_B_p0_rd_en[8'hD3];	// matmul/matmul-hw.mlir:30800:21, :30801:13, :31195:228
  assign _T_155 = _T_1522 ? _T_1522 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30802:13
  wire _T_1523 = kernel_inst0_B_p0_rd_en[8'hD4];	// matmul/matmul-hw.mlir:30803:21, :30804:13, :31195:228
  assign _T_154 = _T_1523 ? _T_1523 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30805:13
  wire _T_1524 = kernel_inst0_B_p0_rd_en[8'hD5];	// matmul/matmul-hw.mlir:30806:21, :30807:13, :31195:228
  assign _T_153 = _T_1524 ? _T_1524 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30808:13
  wire _T_1525 = kernel_inst0_B_p0_rd_en[8'hD6];	// matmul/matmul-hw.mlir:30809:21, :30810:13, :31195:228
  assign _T_152 = _T_1525 ? _T_1525 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30811:13
  wire _T_1526 = kernel_inst0_B_p0_rd_en[8'hD7];	// matmul/matmul-hw.mlir:30812:21, :30813:13, :31195:228
  assign _T_151 = _T_1526 ? _T_1526 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30814:13
  wire _T_1527 = kernel_inst0_B_p0_rd_en[8'hD8];	// matmul/matmul-hw.mlir:30815:21, :30816:13, :31195:228
  assign _T_150 = _T_1527 ? _T_1527 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30817:13
  wire _T_1528 = kernel_inst0_B_p0_rd_en[8'hD9];	// matmul/matmul-hw.mlir:30818:21, :30819:13, :31195:228
  assign _T_149 = _T_1528 ? _T_1528 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30820:13
  wire _T_1529 = kernel_inst0_B_p0_rd_en[8'hDA];	// matmul/matmul-hw.mlir:30821:21, :30822:13, :31195:228
  assign _T_148 = _T_1529 ? _T_1529 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30823:13
  wire _T_1530 = kernel_inst0_B_p0_rd_en[8'hDB];	// matmul/matmul-hw.mlir:30824:21, :30825:13, :31195:228
  assign _T_147 = _T_1530 ? _T_1530 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30826:13
  wire _T_1531 = kernel_inst0_B_p0_rd_en[8'hDC];	// matmul/matmul-hw.mlir:30827:21, :30828:13, :31195:228
  assign _T_146 = _T_1531 ? _T_1531 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30829:13
  wire _T_1532 = kernel_inst0_B_p0_rd_en[8'hDD];	// matmul/matmul-hw.mlir:30830:21, :30831:13, :31195:228
  assign _T_145 = _T_1532 ? _T_1532 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30832:13
  wire _T_1533 = kernel_inst0_B_p0_rd_en[8'hDE];	// matmul/matmul-hw.mlir:30833:21, :30834:13, :31195:228
  assign _T_144 = _T_1533 ? _T_1533 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30835:13
  wire _T_1534 = kernel_inst0_B_p0_rd_en[8'hDF];	// matmul/matmul-hw.mlir:30836:21, :30837:13, :31195:228
  assign _T_143 = _T_1534 ? _T_1534 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30838:13
  wire _T_1535 = kernel_inst0_B_p0_rd_en[8'hE0];	// matmul/matmul-hw.mlir:30839:21, :30840:13, :31195:228
  assign _T_142 = _T_1535 ? _T_1535 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30841:13
  wire _T_1536 = kernel_inst0_B_p0_rd_en[8'hE1];	// matmul/matmul-hw.mlir:30842:21, :30843:13, :31195:228
  assign _T_141 = _T_1536 ? _T_1536 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30844:13
  wire _T_1537 = kernel_inst0_B_p0_rd_en[8'hE2];	// matmul/matmul-hw.mlir:30845:21, :30846:13, :31195:228
  assign _T_140 = _T_1537 ? _T_1537 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30847:13
  wire _T_1538 = kernel_inst0_B_p0_rd_en[8'hE3];	// matmul/matmul-hw.mlir:30848:21, :30849:13, :31195:228
  assign _T_139 = _T_1538 ? _T_1538 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30850:13
  wire _T_1539 = kernel_inst0_B_p0_rd_en[8'hE4];	// matmul/matmul-hw.mlir:30851:21, :30852:13, :31195:228
  assign _T_138 = _T_1539 ? _T_1539 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30853:13
  wire _T_1540 = kernel_inst0_B_p0_rd_en[8'hE5];	// matmul/matmul-hw.mlir:30854:21, :30855:13, :31195:228
  assign _T_137 = _T_1540 ? _T_1540 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30856:13
  wire _T_1541 = kernel_inst0_B_p0_rd_en[8'hE6];	// matmul/matmul-hw.mlir:30857:21, :30858:13, :31195:228
  assign _T_136 = _T_1541 ? _T_1541 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30859:13
  wire _T_1542 = kernel_inst0_B_p0_rd_en[8'hE7];	// matmul/matmul-hw.mlir:30860:21, :30861:13, :31195:228
  assign _T_135 = _T_1542 ? _T_1542 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30862:13
  wire _T_1543 = kernel_inst0_B_p0_rd_en[8'hE8];	// matmul/matmul-hw.mlir:30863:21, :30864:13, :31195:228
  assign _T_134 = _T_1543 ? _T_1543 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30865:13
  wire _T_1544 = kernel_inst0_B_p0_rd_en[8'hE9];	// matmul/matmul-hw.mlir:30866:21, :30867:13, :31195:228
  assign _T_133 = _T_1544 ? _T_1544 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30868:13
  wire _T_1545 = kernel_inst0_B_p0_rd_en[8'hEA];	// matmul/matmul-hw.mlir:30869:21, :30870:13, :31195:228
  assign _T_132 = _T_1545 ? _T_1545 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30871:13
  wire _T_1546 = kernel_inst0_B_p0_rd_en[8'hEB];	// matmul/matmul-hw.mlir:30872:21, :30873:13, :31195:228
  assign _T_131 = _T_1546 ? _T_1546 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30874:13
  wire _T_1547 = kernel_inst0_B_p0_rd_en[8'hEC];	// matmul/matmul-hw.mlir:30875:21, :30876:13, :31195:228
  assign _T_130 = _T_1547 ? _T_1547 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30877:13
  wire _T_1548 = kernel_inst0_B_p0_rd_en[8'hED];	// matmul/matmul-hw.mlir:30878:21, :30879:13, :31195:228
  assign _T_129 = _T_1548 ? _T_1548 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30880:13
  wire _T_1549 = kernel_inst0_B_p0_rd_en[8'hEE];	// matmul/matmul-hw.mlir:30881:21, :30882:13, :31195:228
  assign _T_128 = _T_1549 ? _T_1549 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30883:13
  wire _T_1550 = kernel_inst0_B_p0_rd_en[8'hEF];	// matmul/matmul-hw.mlir:30884:21, :30885:13, :31195:228
  assign _T_127 = _T_1550 ? _T_1550 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30886:13
  wire _T_1551 = kernel_inst0_B_p0_rd_en[8'hF0];	// matmul/matmul-hw.mlir:30887:21, :30888:13, :31195:228
  assign _T_126 = _T_1551 ? _T_1551 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30889:13
  wire _T_1552 = kernel_inst0_B_p0_rd_en[8'hF1];	// matmul/matmul-hw.mlir:30890:21, :30891:13, :31195:228
  assign _T_125 = _T_1552 ? _T_1552 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30892:13
  wire _T_1553 = kernel_inst0_B_p0_rd_en[8'hF2];	// matmul/matmul-hw.mlir:30893:21, :30894:13, :31195:228
  assign _T_124 = _T_1553 ? _T_1553 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30895:13
  wire _T_1554 = kernel_inst0_B_p0_rd_en[8'hF3];	// matmul/matmul-hw.mlir:30896:21, :30897:13, :31195:228
  assign _T_123 = _T_1554 ? _T_1554 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30898:13
  wire _T_1555 = kernel_inst0_B_p0_rd_en[8'hF4];	// matmul/matmul-hw.mlir:30899:21, :30900:13, :31195:228
  assign _T_122 = _T_1555 ? _T_1555 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30901:13
  wire _T_1556 = kernel_inst0_B_p0_rd_en[8'hF5];	// matmul/matmul-hw.mlir:30902:21, :30903:13, :31195:228
  assign _T_121 = _T_1556 ? _T_1556 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30904:13
  wire _T_1557 = kernel_inst0_B_p0_rd_en[8'hF6];	// matmul/matmul-hw.mlir:30905:21, :30906:13, :31195:228
  assign _T_120 = _T_1557 ? _T_1557 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30907:13
  wire _T_1558 = kernel_inst0_B_p0_rd_en[8'hF7];	// matmul/matmul-hw.mlir:30908:20, :30909:13, :31195:228
  assign _T_119 = _T_1558 ? _T_1558 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30910:13
  wire _T_1559 = kernel_inst0_B_p0_rd_en[8'hF8];	// matmul/matmul-hw.mlir:30911:20, :30912:13, :31195:228
  assign _T_118 = _T_1559 ? _T_1559 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30913:13
  wire _T_1560 = kernel_inst0_B_p0_rd_en[8'hF9];	// matmul/matmul-hw.mlir:30914:20, :30915:13, :31195:228
  assign _T_117 = _T_1560 ? _T_1560 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30916:13
  wire _T_1561 = kernel_inst0_B_p0_rd_en[8'hFA];	// matmul/matmul-hw.mlir:30917:20, :30918:13, :31195:228
  assign _T_116 = _T_1561 ? _T_1561 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30919:13
  wire _T_1562 = kernel_inst0_B_p0_rd_en[8'hFB];	// matmul/matmul-hw.mlir:30920:20, :30921:13, :31195:228
  assign _T_115 = _T_1562 ? _T_1562 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30922:13
  wire _T_1563 = kernel_inst0_B_p0_rd_en[8'hFC];	// matmul/matmul-hw.mlir:30923:20, :30924:13, :31195:228
  assign _T_114 = _T_1563 ? _T_1563 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30925:13
  wire _T_1564 = kernel_inst0_B_p0_rd_en[8'hFD];	// matmul/matmul-hw.mlir:30926:20, :30927:13, :31195:228
  assign _T_113 = _T_1564 ? _T_1564 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30928:13
  wire _T_1565 = kernel_inst0_B_p0_rd_en[8'hFE];	// matmul/matmul-hw.mlir:30929:20, :30930:13, :31195:228
  assign _T_112 = _T_1565 ? _T_1565 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30931:13
  wire _T_1566 = kernel_inst0_B_p0_rd_en[8'hFF];	// matmul/matmul-hw.mlir:30932:20, :30933:13, :31195:228
  assign _T_111 = _T_1566 ? _T_1566 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :30934:13
  wire _T_1567 = kernel_inst0_C_p0_addr_en[4'h0];	// matmul/matmul-hw.mlir:31003:19, :31004:13, :31195:228
  assign _T_110 = _T_1567 ? _T_1567 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31005:13
  assign _T_109 = _T_1567 ? kernel_inst0_C_p0_addr_data[4'h0] : 4'bx;	// matmul/matmul-hw.mlir:24649:17, :31006:19, :31007:13, :31008:13, :31195:228
  wire _T_1568 = kernel_inst0_C_p0_wr_en[4'h0];	// matmul/matmul-hw.mlir:31009:19, :31010:13, :31195:228
  assign _T_108 = _T_1568 ? _T_1568 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31011:13
  assign _T_107 = _T_1568 ? kernel_inst0_C_p0_wr_data[4'h0] : 32'bx;	// matmul/matmul-hw.mlir:24647:18, :31012:19, :31013:13, :31014:13, :31195:228
  wire _T_1569 = kernel_inst0_C_p0_addr_en[4'h1];	// matmul/matmul-hw.mlir:31015:19, :31016:13, :31195:228
  assign _T_106 = _T_1569 ? _T_1569 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31017:13
  assign _T_105 = _T_1569 ? kernel_inst0_C_p0_addr_data[4'h1] : 4'bx;	// matmul/matmul-hw.mlir:24645:17, :31018:19, :31019:13, :31020:13, :31195:228
  wire _T_1570 = kernel_inst0_C_p0_wr_en[4'h1];	// matmul/matmul-hw.mlir:31021:19, :31022:13, :31195:228
  assign _T_104 = _T_1570 ? _T_1570 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31023:13
  assign _T_103 = _T_1570 ? kernel_inst0_C_p0_wr_data[4'h1] : 32'bx;	// matmul/matmul-hw.mlir:24643:18, :31024:19, :31025:13, :31026:13, :31195:228
  wire _T_1571 = kernel_inst0_C_p0_addr_en[4'h2];	// matmul/matmul-hw.mlir:31027:19, :31028:13, :31195:228
  assign _T_102 = _T_1571 ? _T_1571 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31029:13
  assign _T_101 = _T_1571 ? kernel_inst0_C_p0_addr_data[4'h2] : 4'bx;	// matmul/matmul-hw.mlir:24641:17, :31030:19, :31031:13, :31032:13, :31195:228
  wire _T_1572 = kernel_inst0_C_p0_wr_en[4'h2];	// matmul/matmul-hw.mlir:31033:19, :31034:13, :31195:228
  assign _T_100 = _T_1572 ? _T_1572 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31035:13
  assign _T_99 = _T_1572 ? kernel_inst0_C_p0_wr_data[4'h2] : 32'bx;	// matmul/matmul-hw.mlir:24639:18, :31036:19, :31037:13, :31038:13, :31195:228
  wire _T_1573 = kernel_inst0_C_p0_addr_en[4'h3];	// matmul/matmul-hw.mlir:31039:19, :31040:13, :31195:228
  assign _T_98 = _T_1573 ? _T_1573 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31041:13
  assign _T_97 = _T_1573 ? kernel_inst0_C_p0_addr_data[4'h3] : 4'bx;	// matmul/matmul-hw.mlir:24637:17, :31042:19, :31043:13, :31044:13, :31195:228
  wire _T_1574 = kernel_inst0_C_p0_wr_en[4'h3];	// matmul/matmul-hw.mlir:31045:19, :31046:13, :31195:228
  assign _T_96 = _T_1574 ? _T_1574 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31047:13
  assign _T_95 = _T_1574 ? kernel_inst0_C_p0_wr_data[4'h3] : 32'bx;	// matmul/matmul-hw.mlir:24635:18, :31048:19, :31049:13, :31050:13, :31195:228
  wire _T_1575 = kernel_inst0_C_p0_addr_en[4'h4];	// matmul/matmul-hw.mlir:31051:19, :31052:13, :31195:228
  assign _T_94 = _T_1575 ? _T_1575 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31053:13
  assign _T_93 = _T_1575 ? kernel_inst0_C_p0_addr_data[4'h4] : 4'bx;	// matmul/matmul-hw.mlir:24633:17, :31054:19, :31055:13, :31056:13, :31195:228
  wire _T_1576 = kernel_inst0_C_p0_wr_en[4'h4];	// matmul/matmul-hw.mlir:31057:19, :31058:13, :31195:228
  assign _T_92 = _T_1576 ? _T_1576 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31059:13
  assign _T_91 = _T_1576 ? kernel_inst0_C_p0_wr_data[4'h4] : 32'bx;	// matmul/matmul-hw.mlir:24631:18, :31060:19, :31061:13, :31062:13, :31195:228
  wire _T_1577 = kernel_inst0_C_p0_addr_en[4'h5];	// matmul/matmul-hw.mlir:31063:19, :31064:13, :31195:228
  assign _T_90 = _T_1577 ? _T_1577 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31065:13
  assign _T_89 = _T_1577 ? kernel_inst0_C_p0_addr_data[4'h5] : 4'bx;	// matmul/matmul-hw.mlir:24629:17, :31066:19, :31067:13, :31068:13, :31195:228
  wire _T_1578 = kernel_inst0_C_p0_wr_en[4'h5];	// matmul/matmul-hw.mlir:31069:19, :31070:13, :31195:228
  assign _T_88 = _T_1578 ? _T_1578 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31071:13
  assign _T_87 = _T_1578 ? kernel_inst0_C_p0_wr_data[4'h5] : 32'bx;	// matmul/matmul-hw.mlir:24627:17, :31072:19, :31073:13, :31074:13, :31195:228
  wire _T_1579 = kernel_inst0_C_p0_addr_en[4'h6];	// matmul/matmul-hw.mlir:31075:19, :31076:13, :31195:228
  assign _T_86 = _T_1579 ? _T_1579 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31077:13
  assign _T_85 = _T_1579 ? kernel_inst0_C_p0_addr_data[4'h6] : 4'bx;	// matmul/matmul-hw.mlir:24625:16, :31078:19, :31079:13, :31080:13, :31195:228
  wire _T_1580 = kernel_inst0_C_p0_wr_en[4'h6];	// matmul/matmul-hw.mlir:31081:19, :31082:13, :31195:228
  assign _T_84 = _T_1580 ? _T_1580 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31083:13
  assign _T_83 = _T_1580 ? kernel_inst0_C_p0_wr_data[4'h6] : 32'bx;	// matmul/matmul-hw.mlir:24623:17, :31084:19, :31085:13, :31086:13, :31195:228
  wire _T_1581 = kernel_inst0_C_p0_addr_en[4'h7];	// matmul/matmul-hw.mlir:31087:19, :31088:13, :31195:228
  assign _T_82 = _T_1581 ? _T_1581 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31089:13
  assign _T_81 = _T_1581 ? kernel_inst0_C_p0_addr_data[4'h7] : 4'bx;	// matmul/matmul-hw.mlir:24621:16, :31090:19, :31091:13, :31092:13, :31195:228
  wire _T_1582 = kernel_inst0_C_p0_wr_en[4'h7];	// matmul/matmul-hw.mlir:31093:19, :31094:13, :31195:228
  assign _T_80 = _T_1582 ? _T_1582 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31095:13
  assign _T_79 = _T_1582 ? kernel_inst0_C_p0_wr_data[4'h7] : 32'bx;	// matmul/matmul-hw.mlir:24619:17, :31096:19, :31097:13, :31098:13, :31195:228
  wire _T_1583 = kernel_inst0_C_p0_addr_en[4'h8];	// matmul/matmul-hw.mlir:31099:20, :31100:13, :31195:228
  assign _T_78 = _T_1583 ? _T_1583 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31101:13
  assign _T_77 = _T_1583 ? kernel_inst0_C_p0_addr_data[4'h8] : 4'bx;	// matmul/matmul-hw.mlir:24617:16, :31102:20, :31103:13, :31104:13, :31195:228
  wire _T_1584 = kernel_inst0_C_p0_wr_en[4'h8];	// matmul/matmul-hw.mlir:31105:20, :31106:13, :31195:228
  assign _T_76 = _T_1584 ? _T_1584 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31107:13
  assign _T_75 = _T_1584 ? kernel_inst0_C_p0_wr_data[4'h8] : 32'bx;	// matmul/matmul-hw.mlir:24615:17, :31108:20, :31109:13, :31110:13, :31195:228
  wire _T_1585 = kernel_inst0_C_p0_addr_en[4'h9];	// matmul/matmul-hw.mlir:31111:20, :31112:13, :31195:228
  assign _T_74 = _T_1585 ? _T_1585 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31113:13
  assign _T_73 = _T_1585 ? kernel_inst0_C_p0_addr_data[4'h9] : 4'bx;	// matmul/matmul-hw.mlir:24613:16, :31114:20, :31115:13, :31116:13, :31195:228
  wire _T_1586 = kernel_inst0_C_p0_wr_en[4'h9];	// matmul/matmul-hw.mlir:31117:20, :31118:13, :31195:228
  assign _T_72 = _T_1586 ? _T_1586 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31119:13
  assign _T_71 = _T_1586 ? kernel_inst0_C_p0_wr_data[4'h9] : 32'bx;	// matmul/matmul-hw.mlir:24611:17, :31120:20, :31121:13, :31122:13, :31195:228
  wire _T_1587 = kernel_inst0_C_p0_addr_en[4'hA];	// matmul/matmul-hw.mlir:31123:20, :31124:13, :31195:228
  assign _T_70 = _T_1587 ? _T_1587 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31125:13
  assign _T_69 = _T_1587 ? kernel_inst0_C_p0_addr_data[4'hA] : 4'bx;	// matmul/matmul-hw.mlir:24609:16, :31126:20, :31127:13, :31128:13, :31195:228
  wire _T_1588 = kernel_inst0_C_p0_wr_en[4'hA];	// matmul/matmul-hw.mlir:31129:20, :31130:13, :31195:228
  assign _T_68 = _T_1588 ? _T_1588 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31131:13
  assign _T_67 = _T_1588 ? kernel_inst0_C_p0_wr_data[4'hA] : 32'bx;	// matmul/matmul-hw.mlir:24607:17, :31132:20, :31133:13, :31134:13, :31195:228
  wire _T_1589 = kernel_inst0_C_p0_addr_en[4'hB];	// matmul/matmul-hw.mlir:31135:20, :31136:13, :31195:228
  assign _T_66 = _T_1589 ? _T_1589 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31137:13
  assign _T_65 = _T_1589 ? kernel_inst0_C_p0_addr_data[4'hB] : 4'bx;	// matmul/matmul-hw.mlir:24605:16, :31138:20, :31139:13, :31140:13, :31195:228
  wire _T_1590 = kernel_inst0_C_p0_wr_en[4'hB];	// matmul/matmul-hw.mlir:31141:20, :31142:13, :31195:228
  assign _T_64 = _T_1590 ? _T_1590 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31143:13
  assign _T_63 = _T_1590 ? kernel_inst0_C_p0_wr_data[4'hB] : 32'bx;	// matmul/matmul-hw.mlir:24603:17, :31144:20, :31145:13, :31146:13, :31195:228
  wire _T_1591 = kernel_inst0_C_p0_addr_en[4'hC];	// matmul/matmul-hw.mlir:31147:20, :31148:13, :31195:228
  assign _T_62 = _T_1591 ? _T_1591 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31149:13
  assign _T_61 = _T_1591 ? kernel_inst0_C_p0_addr_data[4'hC] : 4'bx;	// matmul/matmul-hw.mlir:24601:16, :31150:20, :31151:13, :31152:13, :31195:228
  wire _T_1592 = kernel_inst0_C_p0_wr_en[4'hC];	// matmul/matmul-hw.mlir:31153:20, :31154:13, :31195:228
  assign _T_60 = _T_1592 ? _T_1592 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31155:13
  assign _T_59 = _T_1592 ? kernel_inst0_C_p0_wr_data[4'hC] : 32'bx;	// matmul/matmul-hw.mlir:24599:17, :31156:20, :31157:13, :31158:13, :31195:228
  wire _T_1593 = kernel_inst0_C_p0_addr_en[4'hD];	// matmul/matmul-hw.mlir:31159:20, :31160:13, :31195:228
  assign _T_58 = _T_1593 ? _T_1593 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31161:13
  assign _T_57 = _T_1593 ? kernel_inst0_C_p0_addr_data[4'hD] : 4'bx;	// matmul/matmul-hw.mlir:24597:16, :31162:20, :31163:13, :31164:13, :31195:228
  wire _T_1594 = kernel_inst0_C_p0_wr_en[4'hD];	// matmul/matmul-hw.mlir:31165:20, :31166:13, :31195:228
  assign _T_56 = _T_1594 ? _T_1594 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31167:13
  assign _T_55 = _T_1594 ? kernel_inst0_C_p0_wr_data[4'hD] : 32'bx;	// matmul/matmul-hw.mlir:24595:17, :31168:20, :31169:13, :31170:13, :31195:228
  wire _T_1595 = kernel_inst0_C_p0_addr_en[4'hE];	// matmul/matmul-hw.mlir:31171:20, :31172:13, :31195:228
  assign _T_54 = _T_1595 ? _T_1595 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31173:13
  assign _T_53 = _T_1595 ? kernel_inst0_C_p0_addr_data[4'hE] : 4'bx;	// matmul/matmul-hw.mlir:24593:16, :31174:20, :31175:13, :31176:13, :31195:228
  wire _T_1596 = kernel_inst0_C_p0_wr_en[4'hE];	// matmul/matmul-hw.mlir:31177:20, :31178:13, :31195:228
  assign _T_52 = _T_1596 ? _T_1596 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31179:13
  assign _T_51 = _T_1596 ? kernel_inst0_C_p0_wr_data[4'hE] : 32'bx;	// matmul/matmul-hw.mlir:24591:17, :31180:20, :31181:13, :31182:13, :31195:228
  wire _T_1597 = kernel_inst0_C_p0_addr_en[4'hF];	// matmul/matmul-hw.mlir:31183:20, :31184:13, :31195:228
  assign _T_50 = _T_1597 ? _T_1597 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31185:13
  assign _T_49 = _T_1597 ? kernel_inst0_C_p0_addr_data[4'hF] : 4'bx;	// matmul/matmul-hw.mlir:24589:16, :31186:20, :31187:13, :31188:13, :31195:228
  wire _T_1598 = kernel_inst0_C_p0_wr_en[4'hF];	// matmul/matmul-hw.mlir:31189:20, :31190:13, :31195:228
  assign _T_48 = _T_1598 ? _T_1598 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31191:13
  assign _T_47 = _T_1598 ? kernel_inst0_C_p0_wr_data[4'hF] : 32'bx;	// matmul/matmul-hw.mlir:24587:17, :31192:20, :31193:13, :31194:13, :31195:228
  kernel kernel_inst0 (	// matmul/matmul-hw.mlir:31195:228
    .A_p0_rd_data   ({{A_bank15_p0_rd_data}, {A_bank14_p0_rd_data}, {A_bank13_p0_rd_data}, {A_bank12_p0_rd_data}, {A_bank11_p0_rd_data}, {A_bank10_p0_rd_data}, {A_bank9_p0_rd_data}, {A_bank8_p0_rd_data}, {A_bank7_p0_rd_data}, {A_bank6_p0_rd_data}, {A_bank5_p0_rd_data}, {A_bank4_p0_rd_data}, {A_bank3_p0_rd_data}, {A_bank2_p0_rd_data}, {A_bank1_p0_rd_data}, {A_bank0_p0_rd_data}}),	// matmul/matmul-hw.mlir:25675:27, :25676:27, :25677:27, :25678:27, :25679:27, :25680:27, :25681:27, :25682:27, :25683:27, :25684:27, :25685:28, :25686:28, :25687:28, :25688:28, :25689:28, :25690:28, :29508:13
    .B_p0_rd_data   ({{B_bank255_p0_rd_data}, {B_bank254_p0_rd_data}, {B_bank253_p0_rd_data}, {B_bank252_p0_rd_data}, {B_bank251_p0_rd_data}, {B_bank250_p0_rd_data}, {B_bank249_p0_rd_data}, {B_bank248_p0_rd_data}, {B_bank247_p0_rd_data}, {B_bank246_p0_rd_data}, {B_bank245_p0_rd_data}, {B_bank244_p0_rd_data}, {B_bank243_p0_rd_data}, {B_bank242_p0_rd_data}, {B_bank241_p0_rd_data}, {B_bank240_p0_rd_data}, {B_bank239_p0_rd_data}, {B_bank238_p0_rd_data}, {B_bank237_p0_rd_data}, {B_bank236_p0_rd_data}, {B_bank235_p0_rd_data}, {B_bank234_p0_rd_data}, {B_bank233_p0_rd_data}, {B_bank232_p0_rd_data}, {B_bank231_p0_rd_data}, {B_bank230_p0_rd_data}, {B_bank229_p0_rd_data}, {B_bank228_p0_rd_data}, {B_bank227_p0_rd_data}, {B_bank226_p0_rd_data}, {B_bank225_p0_rd_data}, {B_bank224_p0_rd_data}, {B_bank223_p0_rd_data}, {B_bank222_p0_rd_data}, {B_bank221_p0_rd_data}, {B_bank220_p0_rd_data}, {B_bank219_p0_rd_data}, {B_bank218_p0_rd_data}, {B_bank217_p0_rd_data}, {B_bank216_p0_rd_data}, {B_bank215_p0_rd_data}, {B_bank214_p0_rd_data}, {B_bank213_p0_rd_data}, {B_bank212_p0_rd_data}, {B_bank211_p0_rd_data}, {B_bank210_p0_rd_data}, {B_bank209_p0_rd_data}, {B_bank208_p0_rd_data}, {B_bank207_p0_rd_data}, {B_bank206_p0_rd_data}, {B_bank205_p0_rd_data}, {B_bank204_p0_rd_data}, {B_bank203_p0_rd_data}, {B_bank202_p0_rd_data}, {B_bank201_p0_rd_data}, {B_bank200_p0_rd_data}, {B_bank199_p0_rd_data}, {B_bank198_p0_rd_data}, {B_bank197_p0_rd_data}, {B_bank196_p0_rd_data}, {B_bank195_p0_rd_data}, {B_bank194_p0_rd_data}, {B_bank193_p0_rd_data}, {B_bank192_p0_rd_data}, {B_bank191_p0_rd_data}, {B_bank190_p0_rd_data}, {B_bank189_p0_rd_data}, {B_bank188_p0_rd_data}, {B_bank187_p0_rd_data}, {B_bank186_p0_rd_data}, {B_bank185_p0_rd_data}, {B_bank184_p0_rd_data}, {B_bank183_p0_rd_data}, {B_bank182_p0_rd_data}, {B_bank181_p0_rd_data}, {B_bank180_p0_rd_data}, {B_bank179_p0_rd_data}, {B_bank178_p0_rd_data}, {B_bank177_p0_rd_data}, {B_bank176_p0_rd_data}, {B_bank175_p0_rd_data}, {B_bank174_p0_rd_data}, {B_bank173_p0_rd_data}, {B_bank172_p0_rd_data}, {B_bank171_p0_rd_data}, {B_bank170_p0_rd_data}, {B_bank169_p0_rd_data}, {B_bank168_p0_rd_data}, {B_bank167_p0_rd_data}, {B_bank166_p0_rd_data}, {B_bank165_p0_rd_data}, {B_bank164_p0_rd_data}, {B_bank163_p0_rd_data}, {B_bank162_p0_rd_data}, {B_bank161_p0_rd_data}, {B_bank160_p0_rd_data}, {B_bank159_p0_rd_data}, {B_bank158_p0_rd_data}, {B_bank157_p0_rd_data}, {B_bank156_p0_rd_data}, {B_bank155_p0_rd_data}, {B_bank154_p0_rd_data}, {B_bank153_p0_rd_data}, {B_bank152_p0_rd_data}, {B_bank151_p0_rd_data}, {B_bank150_p0_rd_data}, {B_bank149_p0_rd_data}, {B_bank148_p0_rd_data}, {B_bank147_p0_rd_data}, {B_bank146_p0_rd_data}, {B_bank145_p0_rd_data}, {B_bank144_p0_rd_data}, {B_bank143_p0_rd_data}, {B_bank142_p0_rd_data}, {B_bank141_p0_rd_data}, {B_bank140_p0_rd_data}, {B_bank139_p0_rd_data}, {B_bank138_p0_rd_data}, {B_bank137_p0_rd_data}, {B_bank136_p0_rd_data}, {B_bank135_p0_rd_data}, {B_bank134_p0_rd_data}, {B_bank133_p0_rd_data}, {B_bank132_p0_rd_data}, {B_bank131_p0_rd_data}, {B_bank130_p0_rd_data}, {B_bank129_p0_rd_data}, {B_bank128_p0_rd_data}, {B_bank127_p0_rd_data}, {B_bank126_p0_rd_data}, {B_bank125_p0_rd_data}, {B_bank124_p0_rd_data}, {B_bank123_p0_rd_data}, {B_bank122_p0_rd_data}, {B_bank121_p0_rd_data}, {B_bank120_p0_rd_data}, {B_bank119_p0_rd_data}, {B_bank118_p0_rd_data}, {B_bank117_p0_rd_data}, {B_bank116_p0_rd_data}, {B_bank115_p0_rd_data}, {B_bank114_p0_rd_data}, {B_bank113_p0_rd_data}, {B_bank112_p0_rd_data}, {B_bank111_p0_rd_data}, {B_bank110_p0_rd_data}, {B_bank109_p0_rd_data}, {B_bank108_p0_rd_data}, {B_bank107_p0_rd_data}, {B_bank106_p0_rd_data}, {B_bank105_p0_rd_data}, {B_bank104_p0_rd_data}, {B_bank103_p0_rd_data}, {B_bank102_p0_rd_data}, {B_bank101_p0_rd_data}, {B_bank100_p0_rd_data}, {B_bank99_p0_rd_data}, {B_bank98_p0_rd_data}, {B_bank97_p0_rd_data}, {B_bank96_p0_rd_data}, {B_bank95_p0_rd_data}, {B_bank94_p0_rd_data}, {B_bank93_p0_rd_data}, {B_bank92_p0_rd_data}, {B_bank91_p0_rd_data}, {B_bank90_p0_rd_data}, {B_bank89_p0_rd_data}, {B_bank88_p0_rd_data}, {B_bank87_p0_rd_data}, {B_bank86_p0_rd_data}, {B_bank85_p0_rd_data}, {B_bank84_p0_rd_data}, {B_bank83_p0_rd_data}, {B_bank82_p0_rd_data}, {B_bank81_p0_rd_data}, {B_bank80_p0_rd_data}, {B_bank79_p0_rd_data}, {B_bank78_p0_rd_data}, {B_bank77_p0_rd_data}, {B_bank76_p0_rd_data}, {B_bank75_p0_rd_data}, {B_bank74_p0_rd_data}, {B_bank73_p0_rd_data}, {B_bank72_p0_rd_data}, {B_bank71_p0_rd_data}, {B_bank70_p0_rd_data}, {B_bank69_p0_rd_data}, {B_bank68_p0_rd_data}, {B_bank67_p0_rd_data}, {B_bank66_p0_rd_data}, {B_bank65_p0_rd_data}, {B_bank64_p0_rd_data}, {B_bank63_p0_rd_data}, {B_bank62_p0_rd_data}, {B_bank61_p0_rd_data}, {B_bank60_p0_rd_data}, {B_bank59_p0_rd_data}, {B_bank58_p0_rd_data}, {B_bank57_p0_rd_data}, {B_bank56_p0_rd_data}, {B_bank55_p0_rd_data}, {B_bank54_p0_rd_data}, {B_bank53_p0_rd_data}, {B_bank52_p0_rd_data}, {B_bank51_p0_rd_data}, {B_bank50_p0_rd_data}, {B_bank49_p0_rd_data}, {B_bank48_p0_rd_data}, {B_bank47_p0_rd_data}, {B_bank46_p0_rd_data}, {B_bank45_p0_rd_data}, {B_bank44_p0_rd_data}, {B_bank43_p0_rd_data}, {B_bank42_p0_rd_data}, {B_bank41_p0_rd_data}, {B_bank40_p0_rd_data}, {B_bank39_p0_rd_data}, {B_bank38_p0_rd_data}, {B_bank37_p0_rd_data}, {B_bank36_p0_rd_data}, {B_bank35_p0_rd_data}, {B_bank34_p0_rd_data}, {B_bank33_p0_rd_data}, {B_bank32_p0_rd_data}, {B_bank31_p0_rd_data}, {B_bank30_p0_rd_data}, {B_bank29_p0_rd_data}, {B_bank28_p0_rd_data}, {B_bank27_p0_rd_data}, {B_bank26_p0_rd_data}, {B_bank25_p0_rd_data}, {B_bank24_p0_rd_data}, {B_bank23_p0_rd_data}, {B_bank22_p0_rd_data}, {B_bank21_p0_rd_data}, {B_bank20_p0_rd_data}, {B_bank19_p0_rd_data}, {B_bank18_p0_rd_data}, {B_bank17_p0_rd_data}, {B_bank16_p0_rd_data}, {B_bank15_p0_rd_data}, {B_bank14_p0_rd_data}, {B_bank13_p0_rd_data}, {B_bank12_p0_rd_data}, {B_bank11_p0_rd_data}, {B_bank10_p0_rd_data}, {B_bank9_p0_rd_data}, {B_bank8_p0_rd_data}, {B_bank7_p0_rd_data}, {B_bank6_p0_rd_data}, {B_bank5_p0_rd_data}, {B_bank4_p0_rd_data}, {B_bank3_p0_rd_data}, {B_bank2_p0_rd_data}, {B_bank1_p0_rd_data}, {B_bank0_p0_rd_data}}),	// matmul/matmul-hw.mlir:26715:27, :26716:27, :26717:27, :26718:27, :26719:27, :26720:27, :26721:27, :26722:27, :26723:27, :26724:27, :26725:28, :26726:28, :26727:28, :26728:28, :26729:28, :26730:28, :26731:28, :26732:28, :26733:28, :26734:28, :26735:28, :26736:28, :26737:28, :26738:28, :26739:28, :26740:28, :26741:28, :26742:28, :26743:28, :26744:28, :26745:28, :26746:28, :26747:28, :26748:28, :26749:28, :26750:28, :26751:28, :26752:28, :26753:28, :26754:28, :26755:28, :26756:28, :26757:28, :26758:28, :26759:28, :26760:28, :26761:28, :26762:28, :26763:28, :26764:28, :26765:28, :26766:28, :26767:28, :26768:28, :26769:28, :26770:28, :26771:28, :26772:28, :26773:28, :26774:28, :26775:28, :26776:28, :26777:28, :26778:28, :26779:28, :26780:28, :26781:28, :26782:28, :26783:28, :26784:28, :26785:28, :26786:28, :26787:28, :26788:28, :26789:28, :26790:28, :26791:28, :26792:28, :26793:28, :26794:28, :26795:28, :26796:28, :26797:28, :26798:28, :26799:28, :26800:28, :26801:28, :26802:28, :26803:28, :26804:28, :26805:28, :26806:28, :26807:28, :26808:28, :26809:28, :26810:28, :26811:28, :26812:28, :26813:28, :26814:28, :26815:29, :26816:29, :26817:29, :26818:29, :26819:29, :26820:29, :26821:29, :26822:29, :26823:29, :26824:29, :26825:29, :26826:29, :26827:29, :26828:29, :26829:29, :26830:29, :26831:29, :26832:29, :26833:29, :26834:29, :26835:29, :26836:29, :26837:29, :26838:29, :26839:29, :26840:29, :26841:29, :26842:29, :26843:29, :26844:29, :26845:29, :26846:29, :26847:29, :26848:29, :26849:29, :26850:29, :26851:29, :26852:29, :26853:29, :26854:29, :26855:29, :26856:29, :26857:29, :26858:29, :26859:29, :26860:29, :26861:29, :26862:29, :26863:29, :26864:29, :26865:29, :26866:29, :26867:29, :26868:29, :26869:29, :26870:29, :26871:29, :26872:29, :26873:29, :26874:29, :26875:29, :26876:29, :26877:29, :26878:29, :26879:29, :26880:29, :26881:29, :26882:29, :26883:29, :26884:29, :26885:29, :26886:29, :26887:29, :26888:29, :26889:29, :26890:29, :26891:29, :26892:29, :26893:29, :26894:29, :26895:29, :26896:29, :26897:29, :26898:29, :26899:29, :26900:29, :26901:29, :26902:29, :26903:29, :26904:29, :26905:29, :26906:29, :26907:29, :26908:29, :26909:29, :26910:29, :26911:29, :26912:29, :26913:29, :26914:29, :26915:29, :26916:29, :26917:29, :26918:29, :26919:29, :26920:29, :26921:29, :26922:29, :26923:29, :26924:29, :26925:29, :26926:29, :26927:29, :26928:29, :26929:29, :26930:29, :26931:29, :26932:29, :26933:29, :26934:29, :26935:29, :26936:29, :26937:29, :26938:29, :26939:29, :26940:29, :26941:29, :26942:29, :26943:29, :26944:29, :26945:29, :26946:29, :26947:29, :26948:29, :26949:29, :26950:29, :26951:29, :26952:29, :26953:29, :26954:29, :26955:29, :26956:29, :26957:29, :26958:29, :26959:29, :26960:29, :26961:29, :26962:29, :26963:29, :26964:29, :26965:29, :26966:29, :26967:29, :26968:29, :26969:29, :26970:29, :30166:13
    .t              (readB_inst0_t_done),	// matmul/matmul-hw.mlir:29440:165
    .clk            (clk),
    .rst            (rst),
    .A_p0_addr_en   (kernel_inst0_A_p0_addr_en),
    .A_p0_addr_data (kernel_inst0_A_p0_addr_data),
    .A_p0_rd_en     (kernel_inst0_A_p0_rd_en),
    .B_p0_rd_en     (kernel_inst0_B_p0_rd_en),
    .C_p0_addr_en   (kernel_inst0_C_p0_addr_en),
    .C_p0_addr_data (kernel_inst0_C_p0_addr_data),
    .C_p0_wr_en     (kernel_inst0_C_p0_wr_en),
    .C_p0_wr_data   (kernel_inst0_C_p0_wr_data)
  );
  wire [31:0] _T_1600 = _T_1599;	// matmul/matmul-hw.mlir:31197:13
  wire [31:0] _T_1601 = {_T_1600[5'h0+:31], {{readB_inst0_t_done}}};	// matmul/matmul-hw.mlir:29440:165, :31198:14, :31199:13, :31200:13, :31201:13
  wire [31:0] _T_1602 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:31202:19, :31203:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:31204:5
    if (rst)	// matmul/matmul-hw.mlir:31204:5
      _T_1599 <= _T_1602;	// matmul/matmul-hw.mlir:31207:7
    else	// matmul/matmul-hw.mlir:31204:5
      _T_1599 <= _T_1601;	// matmul/matmul-hw.mlir:31205:7
  end // always @(posedge)
  wire _T_1603 = writeC_inst0_Cr_p0_addr_en[4'h0];	// matmul/matmul-hw.mlir:31279:19, :31280:13, :31431:209
  assign _T_46 = _T_1603 ? _T_1603 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31281:13
  assign _T_45 = _T_1603 ? writeC_inst0_Cr_p0_addr_data[4'h0] : 4'bx;	// matmul/matmul-hw.mlir:24585:16, :31282:19, :31283:13, :31284:13, :31431:209
  wire _T_1604 = writeC_inst0_Cr_p0_rd_en[4'h0];	// matmul/matmul-hw.mlir:31285:19, :31286:13, :31431:209
  assign _T_44 = _T_1604 ? _T_1604 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31287:13
  wire _T_1605 = writeC_inst0_Cr_p0_addr_en[4'h1];	// matmul/matmul-hw.mlir:31288:19, :31289:13, :31431:209
  assign _T_43 = _T_1605 ? _T_1605 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31290:13
  assign _T_42 = _T_1605 ? writeC_inst0_Cr_p0_addr_data[4'h1] : 4'bx;	// matmul/matmul-hw.mlir:24582:16, :31291:19, :31292:13, :31293:13, :31431:209
  wire _T_1606 = writeC_inst0_Cr_p0_rd_en[4'h1];	// matmul/matmul-hw.mlir:31294:19, :31295:13, :31431:209
  assign _T_41 = _T_1606 ? _T_1606 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31296:13
  wire _T_1607 = writeC_inst0_Cr_p0_addr_en[4'h2];	// matmul/matmul-hw.mlir:31297:19, :31298:13, :31431:209
  assign _T_40 = _T_1607 ? _T_1607 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31299:13
  assign _T_39 = _T_1607 ? writeC_inst0_Cr_p0_addr_data[4'h2] : 4'bx;	// matmul/matmul-hw.mlir:24579:16, :31300:19, :31301:13, :31302:13, :31431:209
  wire _T_1608 = writeC_inst0_Cr_p0_rd_en[4'h2];	// matmul/matmul-hw.mlir:31303:19, :31304:13, :31431:209
  assign _T_38 = _T_1608 ? _T_1608 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31305:13
  wire _T_1609 = writeC_inst0_Cr_p0_addr_en[4'h3];	// matmul/matmul-hw.mlir:31306:19, :31307:13, :31431:209
  assign _T_37 = _T_1609 ? _T_1609 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31308:13
  assign _T_36 = _T_1609 ? writeC_inst0_Cr_p0_addr_data[4'h3] : 4'bx;	// matmul/matmul-hw.mlir:24576:16, :31309:19, :31310:13, :31311:13, :31431:209
  wire _T_1610 = writeC_inst0_Cr_p0_rd_en[4'h3];	// matmul/matmul-hw.mlir:31312:19, :31313:13, :31431:209
  assign _T_35 = _T_1610 ? _T_1610 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31314:13
  wire _T_1611 = writeC_inst0_Cr_p0_addr_en[4'h4];	// matmul/matmul-hw.mlir:31315:19, :31316:13, :31431:209
  assign _T_34 = _T_1611 ? _T_1611 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31317:13
  assign _T_33 = _T_1611 ? writeC_inst0_Cr_p0_addr_data[4'h4] : 4'bx;	// matmul/matmul-hw.mlir:24573:16, :31318:19, :31319:13, :31320:13, :31431:209
  wire _T_1612 = writeC_inst0_Cr_p0_rd_en[4'h4];	// matmul/matmul-hw.mlir:31321:19, :31322:13, :31431:209
  assign _T_32 = _T_1612 ? _T_1612 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31323:13
  wire _T_1613 = writeC_inst0_Cr_p0_addr_en[4'h5];	// matmul/matmul-hw.mlir:31324:19, :31325:13, :31431:209
  assign _T_31 = _T_1613 ? _T_1613 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31326:13
  assign _T_30 = _T_1613 ? writeC_inst0_Cr_p0_addr_data[4'h5] : 4'bx;	// matmul/matmul-hw.mlir:24570:16, :31327:19, :31328:13, :31329:13, :31431:209
  wire _T_1614 = writeC_inst0_Cr_p0_rd_en[4'h5];	// matmul/matmul-hw.mlir:31330:19, :31331:13, :31431:209
  assign _T_29 = _T_1614 ? _T_1614 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31332:13
  wire _T_1615 = writeC_inst0_Cr_p0_addr_en[4'h6];	// matmul/matmul-hw.mlir:31333:19, :31334:13, :31431:209
  assign _T_28 = _T_1615 ? _T_1615 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31335:13
  assign _T_27 = _T_1615 ? writeC_inst0_Cr_p0_addr_data[4'h6] : 4'bx;	// matmul/matmul-hw.mlir:24567:16, :31336:19, :31337:13, :31338:13, :31431:209
  wire _T_1616 = writeC_inst0_Cr_p0_rd_en[4'h6];	// matmul/matmul-hw.mlir:31339:19, :31340:13, :31431:209
  assign _T_26 = _T_1616 ? _T_1616 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31341:13
  wire _T_1617 = writeC_inst0_Cr_p0_addr_en[4'h7];	// matmul/matmul-hw.mlir:31342:19, :31343:13, :31431:209
  assign _T_25 = _T_1617 ? _T_1617 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31344:13
  assign _T_24 = _T_1617 ? writeC_inst0_Cr_p0_addr_data[4'h7] : 4'bx;	// matmul/matmul-hw.mlir:24564:16, :31345:19, :31346:13, :31347:13, :31431:209
  wire _T_1618 = writeC_inst0_Cr_p0_rd_en[4'h7];	// matmul/matmul-hw.mlir:31348:19, :31349:13, :31431:209
  assign _T_23 = _T_1618 ? _T_1618 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31350:13
  wire _T_1619 = writeC_inst0_Cr_p0_addr_en[4'h8];	// matmul/matmul-hw.mlir:31351:20, :31352:13, :31431:209
  assign _T_22 = _T_1619 ? _T_1619 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31353:13
  assign _T_21 = _T_1619 ? writeC_inst0_Cr_p0_addr_data[4'h8] : 4'bx;	// matmul/matmul-hw.mlir:24561:16, :31354:20, :31355:13, :31356:13, :31431:209
  wire _T_1620 = writeC_inst0_Cr_p0_rd_en[4'h8];	// matmul/matmul-hw.mlir:31357:20, :31358:13, :31431:209
  assign _T_20 = _T_1620 ? _T_1620 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31359:13
  wire _T_1621 = writeC_inst0_Cr_p0_addr_en[4'h9];	// matmul/matmul-hw.mlir:31360:20, :31361:13, :31431:209
  assign _T_19 = _T_1621 ? _T_1621 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31362:13
  assign _T_18 = _T_1621 ? writeC_inst0_Cr_p0_addr_data[4'h9] : 4'bx;	// matmul/matmul-hw.mlir:24558:16, :31363:20, :31364:13, :31365:13, :31431:209
  wire _T_1622 = writeC_inst0_Cr_p0_rd_en[4'h9];	// matmul/matmul-hw.mlir:31366:20, :31367:13, :31431:209
  assign _T_17 = _T_1622 ? _T_1622 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31368:13
  wire _T_1623 = writeC_inst0_Cr_p0_addr_en[4'hA];	// matmul/matmul-hw.mlir:31369:20, :31370:13, :31431:209
  assign _T_16 = _T_1623 ? _T_1623 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31371:13
  assign _T_15 = _T_1623 ? writeC_inst0_Cr_p0_addr_data[4'hA] : 4'bx;	// matmul/matmul-hw.mlir:24555:16, :31372:20, :31373:13, :31374:13, :31431:209
  wire _T_1624 = writeC_inst0_Cr_p0_rd_en[4'hA];	// matmul/matmul-hw.mlir:31375:20, :31376:13, :31431:209
  assign _T_14 = _T_1624 ? _T_1624 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31377:13
  wire _T_1625 = writeC_inst0_Cr_p0_addr_en[4'hB];	// matmul/matmul-hw.mlir:31378:20, :31379:13, :31431:209
  assign _T_13 = _T_1625 ? _T_1625 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31380:13
  assign _T_12 = _T_1625 ? writeC_inst0_Cr_p0_addr_data[4'hB] : 4'bx;	// matmul/matmul-hw.mlir:24552:16, :31381:20, :31382:13, :31383:13, :31431:209
  wire _T_1626 = writeC_inst0_Cr_p0_rd_en[4'hB];	// matmul/matmul-hw.mlir:31384:20, :31385:13, :31431:209
  assign _T_11 = _T_1626 ? _T_1626 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31386:13
  wire _T_1627 = writeC_inst0_Cr_p0_addr_en[4'hC];	// matmul/matmul-hw.mlir:31387:20, :31388:13, :31431:209
  assign _T_10 = _T_1627 ? _T_1627 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31389:13
  assign _T_9 = _T_1627 ? writeC_inst0_Cr_p0_addr_data[4'hC] : 4'bx;	// matmul/matmul-hw.mlir:24549:16, :31390:20, :31391:13, :31392:13, :31431:209
  wire _T_1628 = writeC_inst0_Cr_p0_rd_en[4'hC];	// matmul/matmul-hw.mlir:31393:20, :31394:13, :31431:209
  assign _T_8 = _T_1628 ? _T_1628 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31395:13
  wire _T_1629 = writeC_inst0_Cr_p0_addr_en[4'hD];	// matmul/matmul-hw.mlir:31396:20, :31397:13, :31431:209
  assign _T_7 = _T_1629 ? _T_1629 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31398:13
  assign _T_6 = _T_1629 ? writeC_inst0_Cr_p0_addr_data[4'hD] : 4'bx;	// matmul/matmul-hw.mlir:24546:16, :31399:20, :31400:13, :31401:13, :31431:209
  wire _T_1630 = writeC_inst0_Cr_p0_rd_en[4'hD];	// matmul/matmul-hw.mlir:31402:20, :31403:13, :31431:209
  assign _T_5 = _T_1630 ? _T_1630 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31404:13
  wire _T_1631 = writeC_inst0_Cr_p0_addr_en[4'hE];	// matmul/matmul-hw.mlir:31405:20, :31406:13, :31431:209
  assign _T_4 = _T_1631 ? _T_1631 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31407:13
  assign _T_3 = _T_1631 ? writeC_inst0_Cr_p0_addr_data[4'hE] : 4'bx;	// matmul/matmul-hw.mlir:24543:16, :31408:20, :31409:13, :31410:13, :31431:209
  wire _T_1632 = writeC_inst0_Cr_p0_rd_en[4'hE];	// matmul/matmul-hw.mlir:31411:20, :31412:13, :31431:209
  assign _T_2 = _T_1632 ? _T_1632 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31413:13
  wire _T_1633 = writeC_inst0_Cr_p0_addr_en[4'hF];	// matmul/matmul-hw.mlir:31414:20, :31415:13, :31431:209
  assign _T_1 = _T_1633 ? _T_1633 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31416:13
  assign _T_0 = _T_1633 ? writeC_inst0_Cr_p0_addr_data[4'hF] : 4'bx;	// matmul/matmul-hw.mlir:24540:13, :31417:20, :31418:13, :31419:13, :31431:209
  wire _T_1634 = writeC_inst0_Cr_p0_rd_en[4'hF];	// matmul/matmul-hw.mlir:31420:20, :31421:13, :31431:209
  assign _T = _T_1634 ? _T_1634 : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31422:13
  writeC writeC_inst0 (	// matmul/matmul-hw.mlir:31431:209
    .Cr_p0_rd_data   ({{C_bank15_p0_rd_data}, {C_bank14_p0_rd_data}, {C_bank13_p0_rd_data}, {C_bank12_p0_rd_data}, {C_bank11_p0_rd_data}, {C_bank10_p0_rd_data}, {C_bank9_p0_rd_data}, {C_bank8_p0_rd_data}, {C_bank7_p0_rd_data}, {C_bank6_p0_rd_data}, {C_bank5_p0_rd_data}, {C_bank4_p0_rd_data}, {C_bank3_p0_rd_data}, {C_bank2_p0_rd_data}, {C_bank1_p0_rd_data}, {C_bank0_p0_rd_data}}),	// matmul/matmul-hw.mlir:27099:27, :27100:27, :27101:27, :27102:27, :27103:27, :27104:27, :27105:27, :27106:27, :27107:27, :27108:27, :27109:28, :27110:28, :27111:28, :27112:28, :27113:28, :27114:28, :31278:13
    .t               (_T_1599[5'h1F]),	// matmul/matmul-hw.mlir:31197:13, :31209:15, :31210:13
    .clk             (clk),
    .rst             (rst),
    .Cr_p0_addr_en   (writeC_inst0_Cr_p0_addr_en),
    .Cr_p0_addr_data (writeC_inst0_Cr_p0_addr_data),
    .Cr_p0_rd_en     (writeC_inst0_Cr_p0_rd_en),
    .Co_p0_addr_en   (writeC_inst0_Co_p0_addr_en),
    .Co_p0_addr_data (writeC_inst0_Co_p0_addr_data),
    .Co_p0_wr_en     (writeC_inst0_Co_p0_wr_en),
    .Co_p0_wr_data   (writeC_inst0_Co_p0_wr_data)
  );
  assign Ai_p0_addr_en = readA_inst0_Ai_p0_addr_en ? readA_inst0_Ai_p0_addr_en : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27119:10, :27382:202, :31432:5
  assign Ai_p0_addr_data = readA_inst0_Ai_p0_addr_en ? readA_inst0_Ai_p0_addr_data : 8'bx;	// matmul/matmul-hw.mlir:25535:18, :27120:10, :27382:202, :31432:5
  assign Ai_p0_rd_en = readA_inst0_Ai_p0_rd_en ? readA_inst0_Ai_p0_rd_en : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27121:10, :27382:202, :31432:5
  assign Bi_p0_addr_en = readB_inst0_Bi_p0_addr_en ? readB_inst0_Bi_p0_addr_en : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27387:12, :29440:165, :31432:5
  assign Bi_p0_addr_data = readB_inst0_Bi_p0_addr_en ? readB_inst0_Bi_p0_addr_data : 8'bx;	// matmul/matmul-hw.mlir:25468:17, :27388:12, :29440:165, :31432:5
  assign Bi_p0_rd_en = readB_inst0_Bi_p0_rd_en ? readB_inst0_Bi_p0_rd_en : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :27389:12, :29440:165, :31432:5
  assign Co_p0_addr_en = writeC_inst0_Co_p0_addr_en ? writeC_inst0_Co_p0_addr_en : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31427:13, :31431:209, :31432:5
  assign Co_p0_addr_data = writeC_inst0_Co_p0_addr_en ? writeC_inst0_Co_p0_addr_data : 8'bx;	// matmul/matmul-hw.mlir:24537:15, :31428:13, :31431:209, :31432:5
  assign Co_p0_wr_en = writeC_inst0_Co_p0_wr_en ? writeC_inst0_Co_p0_wr_en : 1'h0;	// matmul/matmul-hw.mlir:24534:14, :31429:13, :31431:209, :31432:5
  assign Co_p0_wr_data = writeC_inst0_Co_p0_wr_en ? writeC_inst0_Co_p0_wr_data : 32'bx;	// matmul/matmul-hw.mlir:24535:16, :31430:13, :31431:209, :31432:5
endmodule

