module readB(	// matmul/matmul-hw.mlir:1072:3
  input  [31:0]        Bi_p0_rd_data,
  input                t, clk, rst,
  output               Bi_p0_addr_en,
  output [7:0]         Bi_p0_addr_data,
  output               Bi_p0_rd_en,
  output [255:0]       Bw_p0_wr_en,
  output [255:0][31:0] Bw_p0_wr_data,
  output               t_done);

  wire [31:0]  _T;	// matmul/matmul-hw.mlir:7633:13
  wire         _T_0;	// matmul/matmul-hw.mlir:7632:13
  wire         _T_1;	// matmul/matmul-hw.mlir:7631:13
  wire [31:0]  _T_2;	// matmul/matmul-hw.mlir:7615:13
  wire         _T_3;	// matmul/matmul-hw.mlir:7614:13
  wire         _T_4;	// matmul/matmul-hw.mlir:7613:13
  wire [31:0]  _T_5;	// matmul/matmul-hw.mlir:7597:13
  wire         _T_6;	// matmul/matmul-hw.mlir:7596:13
  wire         _T_7;	// matmul/matmul-hw.mlir:7595:13
  wire [31:0]  _T_8;	// matmul/matmul-hw.mlir:7579:13
  wire         _T_9;	// matmul/matmul-hw.mlir:7578:13
  wire         _T_10;	// matmul/matmul-hw.mlir:7577:13
  wire [31:0]  _T_11;	// matmul/matmul-hw.mlir:7561:13
  wire         _T_12;	// matmul/matmul-hw.mlir:7560:13
  wire         _T_13;	// matmul/matmul-hw.mlir:7559:13
  wire [31:0]  _T_14;	// matmul/matmul-hw.mlir:7543:13
  wire         _T_15;	// matmul/matmul-hw.mlir:7542:13
  wire         _T_16;	// matmul/matmul-hw.mlir:7541:13
  wire [31:0]  _T_17;	// matmul/matmul-hw.mlir:7525:13
  wire         _T_18;	// matmul/matmul-hw.mlir:7524:13
  wire         _T_19;	// matmul/matmul-hw.mlir:7523:13
  wire [31:0]  _T_20;	// matmul/matmul-hw.mlir:7507:13
  wire         _T_21;	// matmul/matmul-hw.mlir:7506:13
  wire         _T_22;	// matmul/matmul-hw.mlir:7505:13
  wire [31:0]  _T_23;	// matmul/matmul-hw.mlir:7489:13
  wire         _T_24;	// matmul/matmul-hw.mlir:7488:13
  wire         _T_25;	// matmul/matmul-hw.mlir:7487:13
  wire [31:0]  _T_26;	// matmul/matmul-hw.mlir:7471:13
  wire         _T_27;	// matmul/matmul-hw.mlir:7470:13
  wire         _T_28;	// matmul/matmul-hw.mlir:7469:13
  wire [31:0]  _T_29;	// matmul/matmul-hw.mlir:7453:13
  wire         _T_30;	// matmul/matmul-hw.mlir:7452:13
  wire         _T_31;	// matmul/matmul-hw.mlir:7451:13
  wire [31:0]  _T_32;	// matmul/matmul-hw.mlir:7435:13
  wire         _T_33;	// matmul/matmul-hw.mlir:7434:13
  wire         _T_34;	// matmul/matmul-hw.mlir:7433:13
  wire [31:0]  _T_35;	// matmul/matmul-hw.mlir:7417:13
  wire         _T_36;	// matmul/matmul-hw.mlir:7416:13
  wire         _T_37;	// matmul/matmul-hw.mlir:7415:13
  wire [31:0]  _T_38;	// matmul/matmul-hw.mlir:7399:13
  wire         _T_39;	// matmul/matmul-hw.mlir:7398:13
  wire         _T_40;	// matmul/matmul-hw.mlir:7397:13
  wire [31:0]  _T_41;	// matmul/matmul-hw.mlir:7381:13
  wire         _T_42;	// matmul/matmul-hw.mlir:7380:13
  wire         _T_43;	// matmul/matmul-hw.mlir:7379:13
  wire [31:0]  _T_44;	// matmul/matmul-hw.mlir:7363:13
  wire         _T_45;	// matmul/matmul-hw.mlir:7362:13
  wire         _T_46;	// matmul/matmul-hw.mlir:7361:13
  wire [31:0]  _T_47;	// matmul/matmul-hw.mlir:7345:13
  wire         _T_48;	// matmul/matmul-hw.mlir:7344:13
  wire         _T_49;	// matmul/matmul-hw.mlir:7343:13
  wire [31:0]  _T_50;	// matmul/matmul-hw.mlir:7327:13
  wire         _T_51;	// matmul/matmul-hw.mlir:7326:13
  wire         _T_52;	// matmul/matmul-hw.mlir:7325:13
  wire [31:0]  _T_53;	// matmul/matmul-hw.mlir:7309:13
  wire         _T_54;	// matmul/matmul-hw.mlir:7308:13
  wire         _T_55;	// matmul/matmul-hw.mlir:7307:13
  wire [31:0]  _T_56;	// matmul/matmul-hw.mlir:7291:13
  wire         _T_57;	// matmul/matmul-hw.mlir:7290:13
  wire         _T_58;	// matmul/matmul-hw.mlir:7289:13
  wire [31:0]  _T_59;	// matmul/matmul-hw.mlir:7273:13
  wire         _T_60;	// matmul/matmul-hw.mlir:7272:13
  wire         _T_61;	// matmul/matmul-hw.mlir:7271:13
  wire [31:0]  _T_62;	// matmul/matmul-hw.mlir:7255:13
  wire         _T_63;	// matmul/matmul-hw.mlir:7254:13
  wire         _T_64;	// matmul/matmul-hw.mlir:7253:13
  wire [31:0]  _T_65;	// matmul/matmul-hw.mlir:7237:13
  wire         _T_66;	// matmul/matmul-hw.mlir:7236:13
  wire         _T_67;	// matmul/matmul-hw.mlir:7235:13
  wire [31:0]  _T_68;	// matmul/matmul-hw.mlir:7219:13
  wire         _T_69;	// matmul/matmul-hw.mlir:7218:13
  wire         _T_70;	// matmul/matmul-hw.mlir:7217:13
  wire [31:0]  _T_71;	// matmul/matmul-hw.mlir:7201:13
  wire         _T_72;	// matmul/matmul-hw.mlir:7200:13
  wire         _T_73;	// matmul/matmul-hw.mlir:7199:13
  wire [31:0]  _T_74;	// matmul/matmul-hw.mlir:7183:13
  wire         _T_75;	// matmul/matmul-hw.mlir:7182:13
  wire         _T_76;	// matmul/matmul-hw.mlir:7181:13
  wire [31:0]  _T_77;	// matmul/matmul-hw.mlir:7165:13
  wire         _T_78;	// matmul/matmul-hw.mlir:7164:13
  wire         _T_79;	// matmul/matmul-hw.mlir:7163:13
  wire [31:0]  _T_80;	// matmul/matmul-hw.mlir:7147:13
  wire         _T_81;	// matmul/matmul-hw.mlir:7146:13
  wire         _T_82;	// matmul/matmul-hw.mlir:7145:13
  wire [31:0]  _T_83;	// matmul/matmul-hw.mlir:7129:13
  wire         _T_84;	// matmul/matmul-hw.mlir:7128:13
  wire         _T_85;	// matmul/matmul-hw.mlir:7127:13
  wire [31:0]  _T_86;	// matmul/matmul-hw.mlir:7111:13
  wire         _T_87;	// matmul/matmul-hw.mlir:7110:13
  wire         _T_88;	// matmul/matmul-hw.mlir:7109:13
  wire [31:0]  _T_89;	// matmul/matmul-hw.mlir:7093:13
  wire         _T_90;	// matmul/matmul-hw.mlir:7092:13
  wire         _T_91;	// matmul/matmul-hw.mlir:7091:13
  wire [31:0]  _T_92;	// matmul/matmul-hw.mlir:7075:13
  wire         _T_93;	// matmul/matmul-hw.mlir:7074:13
  wire         _T_94;	// matmul/matmul-hw.mlir:7073:13
  wire [31:0]  _T_95;	// matmul/matmul-hw.mlir:7057:13
  wire         _T_96;	// matmul/matmul-hw.mlir:7056:13
  wire         _T_97;	// matmul/matmul-hw.mlir:7055:13
  wire [31:0]  _T_98;	// matmul/matmul-hw.mlir:7039:13
  wire         _T_99;	// matmul/matmul-hw.mlir:7038:13
  wire         _T_100;	// matmul/matmul-hw.mlir:7037:13
  wire [31:0]  _T_101;	// matmul/matmul-hw.mlir:7021:13
  wire         _T_102;	// matmul/matmul-hw.mlir:7020:13
  wire         _T_103;	// matmul/matmul-hw.mlir:7019:13
  wire [31:0]  _T_104;	// matmul/matmul-hw.mlir:7003:13
  wire         _T_105;	// matmul/matmul-hw.mlir:7002:13
  wire         _T_106;	// matmul/matmul-hw.mlir:7001:13
  wire [31:0]  _T_107;	// matmul/matmul-hw.mlir:6985:13
  wire         _T_108;	// matmul/matmul-hw.mlir:6984:13
  wire         _T_109;	// matmul/matmul-hw.mlir:6983:13
  wire [31:0]  _T_110;	// matmul/matmul-hw.mlir:6967:13
  wire         _T_111;	// matmul/matmul-hw.mlir:6966:13
  wire         _T_112;	// matmul/matmul-hw.mlir:6965:13
  wire [31:0]  _T_113;	// matmul/matmul-hw.mlir:6949:13
  wire         _T_114;	// matmul/matmul-hw.mlir:6948:13
  wire         _T_115;	// matmul/matmul-hw.mlir:6947:13
  wire [31:0]  _T_116;	// matmul/matmul-hw.mlir:6931:13
  wire         _T_117;	// matmul/matmul-hw.mlir:6930:13
  wire         _T_118;	// matmul/matmul-hw.mlir:6929:13
  wire [31:0]  _T_119;	// matmul/matmul-hw.mlir:6913:13
  wire         _T_120;	// matmul/matmul-hw.mlir:6912:13
  wire         _T_121;	// matmul/matmul-hw.mlir:6911:13
  wire [31:0]  _T_122;	// matmul/matmul-hw.mlir:6895:13
  wire         _T_123;	// matmul/matmul-hw.mlir:6894:13
  wire         _T_124;	// matmul/matmul-hw.mlir:6893:13
  wire [31:0]  _T_125;	// matmul/matmul-hw.mlir:6877:13
  wire         _T_126;	// matmul/matmul-hw.mlir:6876:13
  wire         _T_127;	// matmul/matmul-hw.mlir:6875:13
  wire [31:0]  _T_128;	// matmul/matmul-hw.mlir:6859:13
  wire         _T_129;	// matmul/matmul-hw.mlir:6858:13
  wire         _T_130;	// matmul/matmul-hw.mlir:6857:13
  wire [31:0]  _T_131;	// matmul/matmul-hw.mlir:6841:13
  wire         _T_132;	// matmul/matmul-hw.mlir:6840:13
  wire         _T_133;	// matmul/matmul-hw.mlir:6839:13
  wire [31:0]  _T_134;	// matmul/matmul-hw.mlir:6823:13
  wire         _T_135;	// matmul/matmul-hw.mlir:6822:13
  wire         _T_136;	// matmul/matmul-hw.mlir:6821:13
  wire [31:0]  _T_137;	// matmul/matmul-hw.mlir:6805:13
  wire         _T_138;	// matmul/matmul-hw.mlir:6804:13
  wire         _T_139;	// matmul/matmul-hw.mlir:6803:13
  wire [31:0]  _T_140;	// matmul/matmul-hw.mlir:6787:13
  wire         _T_141;	// matmul/matmul-hw.mlir:6786:13
  wire         _T_142;	// matmul/matmul-hw.mlir:6785:13
  wire [31:0]  _T_143;	// matmul/matmul-hw.mlir:6769:13
  wire         _T_144;	// matmul/matmul-hw.mlir:6768:13
  wire         _T_145;	// matmul/matmul-hw.mlir:6767:13
  wire [31:0]  _T_146;	// matmul/matmul-hw.mlir:6751:13
  wire         _T_147;	// matmul/matmul-hw.mlir:6750:13
  wire         _T_148;	// matmul/matmul-hw.mlir:6749:13
  wire [31:0]  _T_149;	// matmul/matmul-hw.mlir:6733:13
  wire         _T_150;	// matmul/matmul-hw.mlir:6732:13
  wire         _T_151;	// matmul/matmul-hw.mlir:6731:13
  wire [31:0]  _T_152;	// matmul/matmul-hw.mlir:6715:13
  wire         _T_153;	// matmul/matmul-hw.mlir:6714:13
  wire         _T_154;	// matmul/matmul-hw.mlir:6713:13
  wire [31:0]  _T_155;	// matmul/matmul-hw.mlir:6697:13
  wire         _T_156;	// matmul/matmul-hw.mlir:6696:13
  wire         _T_157;	// matmul/matmul-hw.mlir:6695:13
  wire [31:0]  _T_158;	// matmul/matmul-hw.mlir:6679:13
  wire         _T_159;	// matmul/matmul-hw.mlir:6678:13
  wire         _T_160;	// matmul/matmul-hw.mlir:6677:13
  wire [31:0]  _T_161;	// matmul/matmul-hw.mlir:6661:13
  wire         _T_162;	// matmul/matmul-hw.mlir:6660:13
  wire         _T_163;	// matmul/matmul-hw.mlir:6659:13
  wire [31:0]  _T_164;	// matmul/matmul-hw.mlir:6643:13
  wire         _T_165;	// matmul/matmul-hw.mlir:6642:13
  wire         _T_166;	// matmul/matmul-hw.mlir:6641:13
  wire [31:0]  _T_167;	// matmul/matmul-hw.mlir:6625:13
  wire         _T_168;	// matmul/matmul-hw.mlir:6624:13
  wire         _T_169;	// matmul/matmul-hw.mlir:6623:13
  wire [31:0]  _T_170;	// matmul/matmul-hw.mlir:6607:13
  wire         _T_171;	// matmul/matmul-hw.mlir:6606:13
  wire         _T_172;	// matmul/matmul-hw.mlir:6605:13
  wire [31:0]  _T_173;	// matmul/matmul-hw.mlir:6589:13
  wire         _T_174;	// matmul/matmul-hw.mlir:6588:13
  wire         _T_175;	// matmul/matmul-hw.mlir:6587:13
  wire [31:0]  _T_176;	// matmul/matmul-hw.mlir:6571:13
  wire         _T_177;	// matmul/matmul-hw.mlir:6570:13
  wire         _T_178;	// matmul/matmul-hw.mlir:6569:13
  wire [31:0]  _T_179;	// matmul/matmul-hw.mlir:6553:13
  wire         _T_180;	// matmul/matmul-hw.mlir:6552:13
  wire         _T_181;	// matmul/matmul-hw.mlir:6551:13
  wire [31:0]  _T_182;	// matmul/matmul-hw.mlir:6535:13
  wire         _T_183;	// matmul/matmul-hw.mlir:6534:13
  wire         _T_184;	// matmul/matmul-hw.mlir:6533:13
  wire [31:0]  _T_185;	// matmul/matmul-hw.mlir:6517:13
  wire         _T_186;	// matmul/matmul-hw.mlir:6516:13
  wire         _T_187;	// matmul/matmul-hw.mlir:6515:13
  wire [31:0]  _T_188;	// matmul/matmul-hw.mlir:6499:13
  wire         _T_189;	// matmul/matmul-hw.mlir:6498:13
  wire         _T_190;	// matmul/matmul-hw.mlir:6497:13
  wire [31:0]  _T_191;	// matmul/matmul-hw.mlir:6481:13
  wire         _T_192;	// matmul/matmul-hw.mlir:6480:13
  wire         _T_193;	// matmul/matmul-hw.mlir:6479:13
  wire [31:0]  _T_194;	// matmul/matmul-hw.mlir:6463:13
  wire         _T_195;	// matmul/matmul-hw.mlir:6462:13
  wire         _T_196;	// matmul/matmul-hw.mlir:6461:13
  wire [31:0]  _T_197;	// matmul/matmul-hw.mlir:6445:13
  wire         _T_198;	// matmul/matmul-hw.mlir:6444:13
  wire         _T_199;	// matmul/matmul-hw.mlir:6443:13
  wire [31:0]  _T_200;	// matmul/matmul-hw.mlir:6427:13
  wire         _T_201;	// matmul/matmul-hw.mlir:6426:13
  wire         _T_202;	// matmul/matmul-hw.mlir:6425:13
  wire [31:0]  _T_203;	// matmul/matmul-hw.mlir:6409:13
  wire         _T_204;	// matmul/matmul-hw.mlir:6408:13
  wire         _T_205;	// matmul/matmul-hw.mlir:6407:13
  wire [31:0]  _T_206;	// matmul/matmul-hw.mlir:6391:13
  wire         _T_207;	// matmul/matmul-hw.mlir:6390:13
  wire         _T_208;	// matmul/matmul-hw.mlir:6389:13
  wire [31:0]  _T_209;	// matmul/matmul-hw.mlir:6373:13
  wire         _T_210;	// matmul/matmul-hw.mlir:6372:13
  wire         _T_211;	// matmul/matmul-hw.mlir:6371:13
  wire [31:0]  _T_212;	// matmul/matmul-hw.mlir:6355:13
  wire         _T_213;	// matmul/matmul-hw.mlir:6354:13
  wire         _T_214;	// matmul/matmul-hw.mlir:6353:13
  wire [31:0]  _T_215;	// matmul/matmul-hw.mlir:6337:13
  wire         _T_216;	// matmul/matmul-hw.mlir:6336:13
  wire         _T_217;	// matmul/matmul-hw.mlir:6335:13
  wire [31:0]  _T_218;	// matmul/matmul-hw.mlir:6319:13
  wire         _T_219;	// matmul/matmul-hw.mlir:6318:13
  wire         _T_220;	// matmul/matmul-hw.mlir:6317:13
  wire [31:0]  _T_221;	// matmul/matmul-hw.mlir:6301:13
  wire         _T_222;	// matmul/matmul-hw.mlir:6300:13
  wire         _T_223;	// matmul/matmul-hw.mlir:6299:13
  wire [31:0]  _T_224;	// matmul/matmul-hw.mlir:6283:13
  wire         _T_225;	// matmul/matmul-hw.mlir:6282:13
  wire         _T_226;	// matmul/matmul-hw.mlir:6281:13
  wire [31:0]  _T_227;	// matmul/matmul-hw.mlir:6265:13
  wire         _T_228;	// matmul/matmul-hw.mlir:6264:13
  wire         _T_229;	// matmul/matmul-hw.mlir:6263:13
  wire [31:0]  _T_230;	// matmul/matmul-hw.mlir:6247:13
  wire         _T_231;	// matmul/matmul-hw.mlir:6246:13
  wire         _T_232;	// matmul/matmul-hw.mlir:6245:13
  wire [31:0]  _T_233;	// matmul/matmul-hw.mlir:6229:13
  wire         _T_234;	// matmul/matmul-hw.mlir:6228:13
  wire         _T_235;	// matmul/matmul-hw.mlir:6227:13
  wire [31:0]  _T_236;	// matmul/matmul-hw.mlir:6211:13
  wire         _T_237;	// matmul/matmul-hw.mlir:6210:13
  wire         _T_238;	// matmul/matmul-hw.mlir:6209:13
  wire [31:0]  _T_239;	// matmul/matmul-hw.mlir:6193:13
  wire         _T_240;	// matmul/matmul-hw.mlir:6192:13
  wire         _T_241;	// matmul/matmul-hw.mlir:6191:13
  wire [31:0]  _T_242;	// matmul/matmul-hw.mlir:6175:13
  wire         _T_243;	// matmul/matmul-hw.mlir:6174:13
  wire         _T_244;	// matmul/matmul-hw.mlir:6173:13
  wire [31:0]  _T_245;	// matmul/matmul-hw.mlir:6157:13
  wire         _T_246;	// matmul/matmul-hw.mlir:6156:13
  wire         _T_247;	// matmul/matmul-hw.mlir:6155:13
  wire [31:0]  _T_248;	// matmul/matmul-hw.mlir:6139:13
  wire         _T_249;	// matmul/matmul-hw.mlir:6138:13
  wire         _T_250;	// matmul/matmul-hw.mlir:6137:13
  wire [31:0]  _T_251;	// matmul/matmul-hw.mlir:6121:13
  wire         _T_252;	// matmul/matmul-hw.mlir:6120:13
  wire         _T_253;	// matmul/matmul-hw.mlir:6119:13
  wire [31:0]  _T_254;	// matmul/matmul-hw.mlir:6103:13
  wire         _T_255;	// matmul/matmul-hw.mlir:6102:13
  wire         _T_256;	// matmul/matmul-hw.mlir:6101:13
  wire [31:0]  _T_257;	// matmul/matmul-hw.mlir:6085:13
  wire         _T_258;	// matmul/matmul-hw.mlir:6084:13
  wire         _T_259;	// matmul/matmul-hw.mlir:6083:13
  wire [31:0]  _T_260;	// matmul/matmul-hw.mlir:6067:13
  wire         _T_261;	// matmul/matmul-hw.mlir:6066:13
  wire         _T_262;	// matmul/matmul-hw.mlir:6065:13
  wire [31:0]  _T_263;	// matmul/matmul-hw.mlir:6049:13
  wire         _T_264;	// matmul/matmul-hw.mlir:6048:13
  wire         _T_265;	// matmul/matmul-hw.mlir:6047:13
  wire [31:0]  _T_266;	// matmul/matmul-hw.mlir:6031:13
  wire         _T_267;	// matmul/matmul-hw.mlir:6030:13
  wire         _T_268;	// matmul/matmul-hw.mlir:6029:13
  wire [31:0]  _T_269;	// matmul/matmul-hw.mlir:6013:13
  wire         _T_270;	// matmul/matmul-hw.mlir:6012:13
  wire         _T_271;	// matmul/matmul-hw.mlir:6011:13
  wire [31:0]  _T_272;	// matmul/matmul-hw.mlir:5995:13
  wire         _T_273;	// matmul/matmul-hw.mlir:5994:13
  wire         _T_274;	// matmul/matmul-hw.mlir:5993:13
  wire [31:0]  _T_275;	// matmul/matmul-hw.mlir:5977:13
  wire         _T_276;	// matmul/matmul-hw.mlir:5976:13
  wire         _T_277;	// matmul/matmul-hw.mlir:5975:13
  wire [31:0]  _T_278;	// matmul/matmul-hw.mlir:5959:13
  wire         _T_279;	// matmul/matmul-hw.mlir:5958:13
  wire         _T_280;	// matmul/matmul-hw.mlir:5957:13
  wire [31:0]  _T_281;	// matmul/matmul-hw.mlir:5941:13
  wire         _T_282;	// matmul/matmul-hw.mlir:5940:13
  wire         _T_283;	// matmul/matmul-hw.mlir:5939:13
  wire [31:0]  _T_284;	// matmul/matmul-hw.mlir:5923:13
  wire         _T_285;	// matmul/matmul-hw.mlir:5922:13
  wire         _T_286;	// matmul/matmul-hw.mlir:5921:13
  wire [31:0]  _T_287;	// matmul/matmul-hw.mlir:5905:13
  wire         _T_288;	// matmul/matmul-hw.mlir:5904:13
  wire         _T_289;	// matmul/matmul-hw.mlir:5903:13
  wire [31:0]  _T_290;	// matmul/matmul-hw.mlir:5887:13
  wire         _T_291;	// matmul/matmul-hw.mlir:5886:13
  wire         _T_292;	// matmul/matmul-hw.mlir:5885:13
  wire [31:0]  _T_293;	// matmul/matmul-hw.mlir:5869:13
  wire         _T_294;	// matmul/matmul-hw.mlir:5868:13
  wire         _T_295;	// matmul/matmul-hw.mlir:5867:13
  wire [31:0]  _T_296;	// matmul/matmul-hw.mlir:5851:13
  wire         _T_297;	// matmul/matmul-hw.mlir:5850:13
  wire         _T_298;	// matmul/matmul-hw.mlir:5849:13
  wire [31:0]  _T_299;	// matmul/matmul-hw.mlir:5833:13
  wire         _T_300;	// matmul/matmul-hw.mlir:5832:13
  wire         _T_301;	// matmul/matmul-hw.mlir:5831:13
  wire [31:0]  _T_302;	// matmul/matmul-hw.mlir:5815:13
  wire         _T_303;	// matmul/matmul-hw.mlir:5814:13
  wire         _T_304;	// matmul/matmul-hw.mlir:5813:13
  wire [31:0]  _T_305;	// matmul/matmul-hw.mlir:5797:13
  wire         _T_306;	// matmul/matmul-hw.mlir:5796:13
  wire         _T_307;	// matmul/matmul-hw.mlir:5795:13
  wire [31:0]  _T_308;	// matmul/matmul-hw.mlir:5779:13
  wire         _T_309;	// matmul/matmul-hw.mlir:5778:13
  wire         _T_310;	// matmul/matmul-hw.mlir:5777:13
  wire [31:0]  _T_311;	// matmul/matmul-hw.mlir:5761:13
  wire         _T_312;	// matmul/matmul-hw.mlir:5760:13
  wire         _T_313;	// matmul/matmul-hw.mlir:5759:13
  wire [31:0]  _T_314;	// matmul/matmul-hw.mlir:5743:13
  wire         _T_315;	// matmul/matmul-hw.mlir:5742:13
  wire         _T_316;	// matmul/matmul-hw.mlir:5741:13
  wire [31:0]  _T_317;	// matmul/matmul-hw.mlir:5725:13
  wire         _T_318;	// matmul/matmul-hw.mlir:5724:13
  wire         _T_319;	// matmul/matmul-hw.mlir:5723:13
  wire [31:0]  _T_320;	// matmul/matmul-hw.mlir:5707:13
  wire         _T_321;	// matmul/matmul-hw.mlir:5706:13
  wire         _T_322;	// matmul/matmul-hw.mlir:5705:13
  wire [31:0]  _T_323;	// matmul/matmul-hw.mlir:5689:13
  wire         _T_324;	// matmul/matmul-hw.mlir:5688:13
  wire         _T_325;	// matmul/matmul-hw.mlir:5687:13
  wire [31:0]  _T_326;	// matmul/matmul-hw.mlir:5671:13
  wire         _T_327;	// matmul/matmul-hw.mlir:5670:13
  wire         _T_328;	// matmul/matmul-hw.mlir:5669:13
  wire [31:0]  _T_329;	// matmul/matmul-hw.mlir:5653:13
  wire         _T_330;	// matmul/matmul-hw.mlir:5652:13
  wire         _T_331;	// matmul/matmul-hw.mlir:5651:13
  wire [31:0]  _T_332;	// matmul/matmul-hw.mlir:5635:13
  wire         _T_333;	// matmul/matmul-hw.mlir:5634:13
  wire         _T_334;	// matmul/matmul-hw.mlir:5633:13
  wire [31:0]  _T_335;	// matmul/matmul-hw.mlir:5617:13
  wire         _T_336;	// matmul/matmul-hw.mlir:5616:13
  wire         _T_337;	// matmul/matmul-hw.mlir:5615:13
  wire [31:0]  _T_338;	// matmul/matmul-hw.mlir:5599:13
  wire         _T_339;	// matmul/matmul-hw.mlir:5598:13
  wire         _T_340;	// matmul/matmul-hw.mlir:5597:13
  wire [31:0]  _T_341;	// matmul/matmul-hw.mlir:5581:13
  wire         _T_342;	// matmul/matmul-hw.mlir:5580:13
  wire         _T_343;	// matmul/matmul-hw.mlir:5579:13
  wire [31:0]  _T_344;	// matmul/matmul-hw.mlir:5563:13
  wire         _T_345;	// matmul/matmul-hw.mlir:5562:13
  wire         _T_346;	// matmul/matmul-hw.mlir:5561:13
  wire [31:0]  _T_347;	// matmul/matmul-hw.mlir:5545:13
  wire         _T_348;	// matmul/matmul-hw.mlir:5544:13
  wire         _T_349;	// matmul/matmul-hw.mlir:5543:13
  wire [31:0]  _T_350;	// matmul/matmul-hw.mlir:5527:13
  wire         _T_351;	// matmul/matmul-hw.mlir:5526:13
  wire         _T_352;	// matmul/matmul-hw.mlir:5525:13
  wire [31:0]  _T_353;	// matmul/matmul-hw.mlir:5509:13
  wire         _T_354;	// matmul/matmul-hw.mlir:5508:13
  wire         _T_355;	// matmul/matmul-hw.mlir:5507:13
  wire [31:0]  _T_356;	// matmul/matmul-hw.mlir:5491:13
  wire         _T_357;	// matmul/matmul-hw.mlir:5490:13
  wire         _T_358;	// matmul/matmul-hw.mlir:5489:13
  wire [31:0]  _T_359;	// matmul/matmul-hw.mlir:5473:13
  wire         _T_360;	// matmul/matmul-hw.mlir:5472:13
  wire         _T_361;	// matmul/matmul-hw.mlir:5471:13
  wire [31:0]  _T_362;	// matmul/matmul-hw.mlir:5455:13
  wire         _T_363;	// matmul/matmul-hw.mlir:5454:13
  wire         _T_364;	// matmul/matmul-hw.mlir:5453:13
  wire [31:0]  _T_365;	// matmul/matmul-hw.mlir:5437:13
  wire         _T_366;	// matmul/matmul-hw.mlir:5436:13
  wire         _T_367;	// matmul/matmul-hw.mlir:5435:13
  wire [31:0]  _T_368;	// matmul/matmul-hw.mlir:5419:13
  wire         _T_369;	// matmul/matmul-hw.mlir:5418:13
  wire         _T_370;	// matmul/matmul-hw.mlir:5417:13
  wire [31:0]  _T_371;	// matmul/matmul-hw.mlir:5401:13
  wire         _T_372;	// matmul/matmul-hw.mlir:5400:13
  wire         _T_373;	// matmul/matmul-hw.mlir:5399:13
  wire [31:0]  _T_374;	// matmul/matmul-hw.mlir:5383:13
  wire         _T_375;	// matmul/matmul-hw.mlir:5382:13
  wire         _T_376;	// matmul/matmul-hw.mlir:5381:13
  wire [31:0]  _T_377;	// matmul/matmul-hw.mlir:5365:13
  wire         _T_378;	// matmul/matmul-hw.mlir:5364:13
  wire         _T_379;	// matmul/matmul-hw.mlir:5363:13
  wire [31:0]  _T_380;	// matmul/matmul-hw.mlir:5347:13
  wire         _T_381;	// matmul/matmul-hw.mlir:5346:13
  wire         _T_382;	// matmul/matmul-hw.mlir:5345:13
  wire [31:0]  _T_383;	// matmul/matmul-hw.mlir:5329:13
  wire         _T_384;	// matmul/matmul-hw.mlir:5328:13
  wire         _T_385;	// matmul/matmul-hw.mlir:5327:13
  wire [31:0]  _T_386;	// matmul/matmul-hw.mlir:5311:13
  wire         _T_387;	// matmul/matmul-hw.mlir:5310:13
  wire         _T_388;	// matmul/matmul-hw.mlir:5309:13
  wire [31:0]  _T_389;	// matmul/matmul-hw.mlir:5293:13
  wire         _T_390;	// matmul/matmul-hw.mlir:5292:13
  wire         _T_391;	// matmul/matmul-hw.mlir:5291:13
  wire [31:0]  _T_392;	// matmul/matmul-hw.mlir:5275:13
  wire         _T_393;	// matmul/matmul-hw.mlir:5274:13
  wire         _T_394;	// matmul/matmul-hw.mlir:5273:13
  wire [31:0]  _T_395;	// matmul/matmul-hw.mlir:5257:13
  wire         _T_396;	// matmul/matmul-hw.mlir:5256:13
  wire         _T_397;	// matmul/matmul-hw.mlir:5255:13
  wire [31:0]  _T_398;	// matmul/matmul-hw.mlir:5239:13
  wire         _T_399;	// matmul/matmul-hw.mlir:5238:13
  wire         _T_400;	// matmul/matmul-hw.mlir:5237:13
  wire [31:0]  _T_401;	// matmul/matmul-hw.mlir:5221:13
  wire         _T_402;	// matmul/matmul-hw.mlir:5220:13
  wire         _T_403;	// matmul/matmul-hw.mlir:5219:13
  wire [31:0]  _T_404;	// matmul/matmul-hw.mlir:5203:13
  wire         _T_405;	// matmul/matmul-hw.mlir:5202:13
  wire         _T_406;	// matmul/matmul-hw.mlir:5201:13
  wire [31:0]  _T_407;	// matmul/matmul-hw.mlir:5185:13
  wire         _T_408;	// matmul/matmul-hw.mlir:5184:13
  wire         _T_409;	// matmul/matmul-hw.mlir:5183:13
  wire [31:0]  _T_410;	// matmul/matmul-hw.mlir:5167:13
  wire         _T_411;	// matmul/matmul-hw.mlir:5166:13
  wire         _T_412;	// matmul/matmul-hw.mlir:5165:13
  wire [31:0]  _T_413;	// matmul/matmul-hw.mlir:5149:13
  wire         _T_414;	// matmul/matmul-hw.mlir:5148:13
  wire         _T_415;	// matmul/matmul-hw.mlir:5147:13
  wire [31:0]  _T_416;	// matmul/matmul-hw.mlir:5131:13
  wire         _T_417;	// matmul/matmul-hw.mlir:5130:13
  wire         _T_418;	// matmul/matmul-hw.mlir:5129:13
  wire [31:0]  _T_419;	// matmul/matmul-hw.mlir:5113:13
  wire         _T_420;	// matmul/matmul-hw.mlir:5112:13
  wire         _T_421;	// matmul/matmul-hw.mlir:5111:13
  wire [31:0]  _T_422;	// matmul/matmul-hw.mlir:5095:13
  wire         _T_423;	// matmul/matmul-hw.mlir:5094:13
  wire         _T_424;	// matmul/matmul-hw.mlir:5093:13
  wire [31:0]  _T_425;	// matmul/matmul-hw.mlir:5077:13
  wire         _T_426;	// matmul/matmul-hw.mlir:5076:13
  wire         _T_427;	// matmul/matmul-hw.mlir:5075:13
  wire [31:0]  _T_428;	// matmul/matmul-hw.mlir:5059:13
  wire         _T_429;	// matmul/matmul-hw.mlir:5058:13
  wire         _T_430;	// matmul/matmul-hw.mlir:5057:13
  wire [31:0]  _T_431;	// matmul/matmul-hw.mlir:5041:13
  wire         _T_432;	// matmul/matmul-hw.mlir:5040:13
  wire         _T_433;	// matmul/matmul-hw.mlir:5039:13
  wire [31:0]  _T_434;	// matmul/matmul-hw.mlir:5023:13
  wire         _T_435;	// matmul/matmul-hw.mlir:5022:13
  wire         _T_436;	// matmul/matmul-hw.mlir:5021:13
  wire [31:0]  _T_437;	// matmul/matmul-hw.mlir:5005:13
  wire         _T_438;	// matmul/matmul-hw.mlir:5004:13
  wire         _T_439;	// matmul/matmul-hw.mlir:5003:13
  wire [31:0]  _T_440;	// matmul/matmul-hw.mlir:4987:13
  wire         _T_441;	// matmul/matmul-hw.mlir:4986:13
  wire         _T_442;	// matmul/matmul-hw.mlir:4985:13
  wire [31:0]  _T_443;	// matmul/matmul-hw.mlir:4969:13
  wire         _T_444;	// matmul/matmul-hw.mlir:4968:13
  wire         _T_445;	// matmul/matmul-hw.mlir:4967:13
  wire [31:0]  _T_446;	// matmul/matmul-hw.mlir:4951:13
  wire         _T_447;	// matmul/matmul-hw.mlir:4950:13
  wire         _T_448;	// matmul/matmul-hw.mlir:4949:13
  wire [31:0]  _T_449;	// matmul/matmul-hw.mlir:4933:13
  wire         _T_450;	// matmul/matmul-hw.mlir:4932:13
  wire         _T_451;	// matmul/matmul-hw.mlir:4931:13
  wire [31:0]  _T_452;	// matmul/matmul-hw.mlir:4915:13
  wire         _T_453;	// matmul/matmul-hw.mlir:4914:13
  wire         _T_454;	// matmul/matmul-hw.mlir:4913:13
  wire [31:0]  _T_455;	// matmul/matmul-hw.mlir:4897:13
  wire         _T_456;	// matmul/matmul-hw.mlir:4896:13
  wire         _T_457;	// matmul/matmul-hw.mlir:4895:13
  wire [31:0]  _T_458;	// matmul/matmul-hw.mlir:4879:13
  wire         _T_459;	// matmul/matmul-hw.mlir:4878:13
  wire         _T_460;	// matmul/matmul-hw.mlir:4877:13
  wire [31:0]  _T_461;	// matmul/matmul-hw.mlir:4861:13
  wire         _T_462;	// matmul/matmul-hw.mlir:4860:13
  wire         _T_463;	// matmul/matmul-hw.mlir:4859:13
  wire [31:0]  _T_464;	// matmul/matmul-hw.mlir:4843:13
  wire         _T_465;	// matmul/matmul-hw.mlir:4842:13
  wire         _T_466;	// matmul/matmul-hw.mlir:4841:13
  wire [31:0]  _T_467;	// matmul/matmul-hw.mlir:4825:13
  wire         _T_468;	// matmul/matmul-hw.mlir:4824:13
  wire         _T_469;	// matmul/matmul-hw.mlir:4823:13
  wire [31:0]  _T_470;	// matmul/matmul-hw.mlir:4807:13
  wire         _T_471;	// matmul/matmul-hw.mlir:4806:13
  wire         _T_472;	// matmul/matmul-hw.mlir:4805:13
  wire [31:0]  _T_473;	// matmul/matmul-hw.mlir:4789:13
  wire         _T_474;	// matmul/matmul-hw.mlir:4788:13
  wire         _T_475;	// matmul/matmul-hw.mlir:4787:13
  wire [31:0]  _T_476;	// matmul/matmul-hw.mlir:4771:13
  wire         _T_477;	// matmul/matmul-hw.mlir:4770:13
  wire         _T_478;	// matmul/matmul-hw.mlir:4769:13
  wire [31:0]  _T_479;	// matmul/matmul-hw.mlir:4753:13
  wire         _T_480;	// matmul/matmul-hw.mlir:4752:13
  wire         _T_481;	// matmul/matmul-hw.mlir:4751:13
  wire [31:0]  _T_482;	// matmul/matmul-hw.mlir:4735:13
  wire         _T_483;	// matmul/matmul-hw.mlir:4734:13
  wire         _T_484;	// matmul/matmul-hw.mlir:4733:13
  wire [31:0]  _T_485;	// matmul/matmul-hw.mlir:4717:13
  wire         _T_486;	// matmul/matmul-hw.mlir:4716:13
  wire         _T_487;	// matmul/matmul-hw.mlir:4715:12
  wire [31:0]  _T_488;	// matmul/matmul-hw.mlir:4699:12
  wire         _T_489;	// matmul/matmul-hw.mlir:4698:12
  wire         _T_490;	// matmul/matmul-hw.mlir:4697:12
  wire [31:0]  _T_491;	// matmul/matmul-hw.mlir:4681:12
  wire         _T_492;	// matmul/matmul-hw.mlir:4680:12
  wire         _T_493;	// matmul/matmul-hw.mlir:4679:12
  wire [31:0]  _T_494;	// matmul/matmul-hw.mlir:4663:12
  wire         _T_495;	// matmul/matmul-hw.mlir:4662:12
  wire         _T_496;	// matmul/matmul-hw.mlir:4661:12
  wire [31:0]  _T_497;	// matmul/matmul-hw.mlir:4645:12
  wire         _T_498;	// matmul/matmul-hw.mlir:4644:12
  wire         _T_499;	// matmul/matmul-hw.mlir:4643:12
  wire [31:0]  _T_500;	// matmul/matmul-hw.mlir:4627:12
  wire         _T_501;	// matmul/matmul-hw.mlir:4626:12
  wire         _T_502;	// matmul/matmul-hw.mlir:4625:12
  wire [31:0]  _T_503;	// matmul/matmul-hw.mlir:4609:12
  wire         _T_504;	// matmul/matmul-hw.mlir:4608:12
  wire         _T_505;	// matmul/matmul-hw.mlir:4607:12
  wire [31:0]  _T_506;	// matmul/matmul-hw.mlir:4591:12
  wire         _T_507;	// matmul/matmul-hw.mlir:4590:12
  wire         _T_508;	// matmul/matmul-hw.mlir:4589:12
  wire [31:0]  _T_509;	// matmul/matmul-hw.mlir:4573:12
  wire         _T_510;	// matmul/matmul-hw.mlir:4572:12
  wire         _T_511;	// matmul/matmul-hw.mlir:4571:12
  wire [31:0]  _T_512;	// matmul/matmul-hw.mlir:4555:12
  wire         _T_513;	// matmul/matmul-hw.mlir:4554:12
  wire         _T_514;	// matmul/matmul-hw.mlir:4553:12
  wire [31:0]  _T_515;	// matmul/matmul-hw.mlir:4537:12
  wire         _T_516;	// matmul/matmul-hw.mlir:4536:12
  wire         _T_517;	// matmul/matmul-hw.mlir:4535:12
  wire [31:0]  _T_518;	// matmul/matmul-hw.mlir:4519:12
  wire         _T_519;	// matmul/matmul-hw.mlir:4518:12
  wire         _T_520;	// matmul/matmul-hw.mlir:4517:12
  wire [31:0]  _T_521;	// matmul/matmul-hw.mlir:4501:12
  wire         _T_522;	// matmul/matmul-hw.mlir:4500:12
  wire         _T_523;	// matmul/matmul-hw.mlir:4499:12
  wire [31:0]  _T_524;	// matmul/matmul-hw.mlir:4483:12
  wire         _T_525;	// matmul/matmul-hw.mlir:4482:12
  wire         _T_526;	// matmul/matmul-hw.mlir:4481:12
  wire [31:0]  _T_527;	// matmul/matmul-hw.mlir:4465:12
  wire         _T_528;	// matmul/matmul-hw.mlir:4464:12
  wire         _T_529;	// matmul/matmul-hw.mlir:4463:12
  wire [31:0]  _T_530;	// matmul/matmul-hw.mlir:4447:12
  wire         _T_531;	// matmul/matmul-hw.mlir:4446:12
  wire         _T_532;	// matmul/matmul-hw.mlir:4445:12
  wire [31:0]  _T_533;	// matmul/matmul-hw.mlir:4429:12
  wire         _T_534;	// matmul/matmul-hw.mlir:4428:12
  wire         _T_535;	// matmul/matmul-hw.mlir:4427:12
  wire [31:0]  _T_536;	// matmul/matmul-hw.mlir:4411:12
  wire         _T_537;	// matmul/matmul-hw.mlir:4410:12
  wire         _T_538;	// matmul/matmul-hw.mlir:4409:12
  wire [31:0]  _T_539;	// matmul/matmul-hw.mlir:4393:12
  wire         _T_540;	// matmul/matmul-hw.mlir:4392:12
  wire         _T_541;	// matmul/matmul-hw.mlir:4391:12
  wire [31:0]  _T_542;	// matmul/matmul-hw.mlir:4375:12
  wire         _T_543;	// matmul/matmul-hw.mlir:4374:12
  wire         _T_544;	// matmul/matmul-hw.mlir:4373:12
  wire [31:0]  _T_545;	// matmul/matmul-hw.mlir:4357:12
  wire         _T_546;	// matmul/matmul-hw.mlir:4356:12
  wire         _T_547;	// matmul/matmul-hw.mlir:4355:12
  wire [31:0]  _T_548;	// matmul/matmul-hw.mlir:4339:12
  wire         _T_549;	// matmul/matmul-hw.mlir:4338:12
  wire         _T_550;	// matmul/matmul-hw.mlir:4337:12
  wire [31:0]  _T_551;	// matmul/matmul-hw.mlir:4321:12
  wire         _T_552;	// matmul/matmul-hw.mlir:4320:12
  wire         _T_553;	// matmul/matmul-hw.mlir:4319:12
  wire [31:0]  _T_554;	// matmul/matmul-hw.mlir:4303:12
  wire         _T_555;	// matmul/matmul-hw.mlir:4302:12
  wire         _T_556;	// matmul/matmul-hw.mlir:4301:12
  wire [31:0]  _T_557;	// matmul/matmul-hw.mlir:4285:12
  wire         _T_558;	// matmul/matmul-hw.mlir:4284:12
  wire         _T_559;	// matmul/matmul-hw.mlir:4283:12
  wire [31:0]  _T_560;	// matmul/matmul-hw.mlir:4267:12
  wire         _T_561;	// matmul/matmul-hw.mlir:4266:12
  wire         _T_562;	// matmul/matmul-hw.mlir:4265:12
  wire [31:0]  _T_563;	// matmul/matmul-hw.mlir:4249:12
  wire         _T_564;	// matmul/matmul-hw.mlir:4248:12
  wire         _T_565;	// matmul/matmul-hw.mlir:4247:12
  wire [31:0]  _T_566;	// matmul/matmul-hw.mlir:4231:12
  wire         _T_567;	// matmul/matmul-hw.mlir:4230:12
  wire         _T_568;	// matmul/matmul-hw.mlir:4229:12
  wire [31:0]  _T_569;	// matmul/matmul-hw.mlir:4213:12
  wire         _T_570;	// matmul/matmul-hw.mlir:4212:12
  wire         _T_571;	// matmul/matmul-hw.mlir:4211:12
  wire [31:0]  _T_572;	// matmul/matmul-hw.mlir:4195:12
  wire         _T_573;	// matmul/matmul-hw.mlir:4194:12
  wire         _T_574;	// matmul/matmul-hw.mlir:4193:12
  wire [31:0]  _T_575;	// matmul/matmul-hw.mlir:4177:12
  wire         _T_576;	// matmul/matmul-hw.mlir:4176:12
  wire         _T_577;	// matmul/matmul-hw.mlir:4175:12
  wire [31:0]  _T_578;	// matmul/matmul-hw.mlir:4159:12
  wire         _T_579;	// matmul/matmul-hw.mlir:4158:12
  wire         _T_580;	// matmul/matmul-hw.mlir:4157:12
  wire [31:0]  _T_581;	// matmul/matmul-hw.mlir:4141:12
  wire         _T_582;	// matmul/matmul-hw.mlir:4140:12
  wire         _T_583;	// matmul/matmul-hw.mlir:4139:12
  wire [31:0]  _T_584;	// matmul/matmul-hw.mlir:4123:12
  wire         _T_585;	// matmul/matmul-hw.mlir:4122:12
  wire         _T_586;	// matmul/matmul-hw.mlir:4121:12
  wire [31:0]  _T_587;	// matmul/matmul-hw.mlir:4105:12
  wire         _T_588;	// matmul/matmul-hw.mlir:4104:12
  wire         _T_589;	// matmul/matmul-hw.mlir:4103:12
  wire [31:0]  _T_590;	// matmul/matmul-hw.mlir:4087:12
  wire         _T_591;	// matmul/matmul-hw.mlir:4086:12
  wire         _T_592;	// matmul/matmul-hw.mlir:4085:12
  wire [31:0]  _T_593;	// matmul/matmul-hw.mlir:4069:12
  wire         _T_594;	// matmul/matmul-hw.mlir:4068:12
  wire         _T_595;	// matmul/matmul-hw.mlir:4067:12
  wire [31:0]  _T_596;	// matmul/matmul-hw.mlir:4051:12
  wire         _T_597;	// matmul/matmul-hw.mlir:4050:12
  wire         _T_598;	// matmul/matmul-hw.mlir:4049:12
  wire [31:0]  _T_599;	// matmul/matmul-hw.mlir:4033:12
  wire         _T_600;	// matmul/matmul-hw.mlir:4032:12
  wire         _T_601;	// matmul/matmul-hw.mlir:4031:12
  wire [31:0]  _T_602;	// matmul/matmul-hw.mlir:4015:12
  wire         _T_603;	// matmul/matmul-hw.mlir:4014:12
  wire         _T_604;	// matmul/matmul-hw.mlir:4013:12
  wire [31:0]  _T_605;	// matmul/matmul-hw.mlir:3997:12
  wire         _T_606;	// matmul/matmul-hw.mlir:3996:12
  wire         _T_607;	// matmul/matmul-hw.mlir:3995:12
  wire [31:0]  _T_608;	// matmul/matmul-hw.mlir:3979:12
  wire         _T_609;	// matmul/matmul-hw.mlir:3978:12
  wire         _T_610;	// matmul/matmul-hw.mlir:3977:12
  wire [31:0]  _T_611;	// matmul/matmul-hw.mlir:3961:12
  wire         _T_612;	// matmul/matmul-hw.mlir:3960:12
  wire         _T_613;	// matmul/matmul-hw.mlir:3959:12
  wire [31:0]  _T_614;	// matmul/matmul-hw.mlir:3943:12
  wire         _T_615;	// matmul/matmul-hw.mlir:3942:12
  wire         _T_616;	// matmul/matmul-hw.mlir:3941:12
  wire [31:0]  _T_617;	// matmul/matmul-hw.mlir:3925:12
  wire         _T_618;	// matmul/matmul-hw.mlir:3924:12
  wire         _T_619;	// matmul/matmul-hw.mlir:3923:12
  wire [31:0]  _T_620;	// matmul/matmul-hw.mlir:3907:12
  wire         _T_621;	// matmul/matmul-hw.mlir:3906:12
  wire         _T_622;	// matmul/matmul-hw.mlir:3905:12
  wire [31:0]  _T_623;	// matmul/matmul-hw.mlir:3889:12
  wire         _T_624;	// matmul/matmul-hw.mlir:3888:12
  wire         _T_625;	// matmul/matmul-hw.mlir:3887:12
  wire [31:0]  _T_626;	// matmul/matmul-hw.mlir:3871:12
  wire         _T_627;	// matmul/matmul-hw.mlir:3870:12
  wire         _T_628;	// matmul/matmul-hw.mlir:3869:12
  wire [31:0]  _T_629;	// matmul/matmul-hw.mlir:3853:12
  wire         _T_630;	// matmul/matmul-hw.mlir:3852:12
  wire         _T_631;	// matmul/matmul-hw.mlir:3851:12
  wire [31:0]  _T_632;	// matmul/matmul-hw.mlir:3835:12
  wire         _T_633;	// matmul/matmul-hw.mlir:3834:12
  wire         _T_634;	// matmul/matmul-hw.mlir:3833:12
  wire [31:0]  _T_635;	// matmul/matmul-hw.mlir:3817:12
  wire         _T_636;	// matmul/matmul-hw.mlir:3816:12
  wire         _T_637;	// matmul/matmul-hw.mlir:3815:12
  wire [31:0]  _T_638;	// matmul/matmul-hw.mlir:3799:12
  wire         _T_639;	// matmul/matmul-hw.mlir:3798:12
  wire         _T_640;	// matmul/matmul-hw.mlir:3797:12
  wire [31:0]  _T_641;	// matmul/matmul-hw.mlir:3781:12
  wire         _T_642;	// matmul/matmul-hw.mlir:3780:12
  wire         _T_643;	// matmul/matmul-hw.mlir:3779:12
  wire [31:0]  _T_644;	// matmul/matmul-hw.mlir:3763:12
  wire         _T_645;	// matmul/matmul-hw.mlir:3762:12
  wire         _T_646;	// matmul/matmul-hw.mlir:3761:12
  wire [31:0]  _T_647;	// matmul/matmul-hw.mlir:3745:12
  wire         _T_648;	// matmul/matmul-hw.mlir:3744:12
  wire         _T_649;	// matmul/matmul-hw.mlir:3743:12
  wire [31:0]  _T_650;	// matmul/matmul-hw.mlir:3727:12
  wire         _T_651;	// matmul/matmul-hw.mlir:3726:12
  wire         _T_652;	// matmul/matmul-hw.mlir:3725:12
  wire [31:0]  _T_653;	// matmul/matmul-hw.mlir:3709:12
  wire         _T_654;	// matmul/matmul-hw.mlir:3708:12
  wire         _T_655;	// matmul/matmul-hw.mlir:3707:12
  wire [31:0]  _T_656;	// matmul/matmul-hw.mlir:3691:12
  wire         _T_657;	// matmul/matmul-hw.mlir:3690:12
  wire         _T_658;	// matmul/matmul-hw.mlir:3689:12
  wire [31:0]  _T_659;	// matmul/matmul-hw.mlir:3673:12
  wire         _T_660;	// matmul/matmul-hw.mlir:3672:12
  wire         _T_661;	// matmul/matmul-hw.mlir:3671:12
  wire [31:0]  _T_662;	// matmul/matmul-hw.mlir:3655:12
  wire         _T_663;	// matmul/matmul-hw.mlir:3654:12
  wire         _T_664;	// matmul/matmul-hw.mlir:3653:12
  wire [31:0]  _T_665;	// matmul/matmul-hw.mlir:3637:12
  wire         _T_666;	// matmul/matmul-hw.mlir:3636:12
  wire         _T_667;	// matmul/matmul-hw.mlir:3635:12
  wire [31:0]  _T_668;	// matmul/matmul-hw.mlir:3619:12
  wire         _T_669;	// matmul/matmul-hw.mlir:3618:12
  wire         _T_670;	// matmul/matmul-hw.mlir:3617:12
  wire [31:0]  _T_671;	// matmul/matmul-hw.mlir:3601:12
  wire         _T_672;	// matmul/matmul-hw.mlir:3600:12
  wire         _T_673;	// matmul/matmul-hw.mlir:3599:12
  wire [31:0]  _T_674;	// matmul/matmul-hw.mlir:3583:12
  wire         _T_675;	// matmul/matmul-hw.mlir:3582:12
  wire         _T_676;	// matmul/matmul-hw.mlir:3581:12
  wire [31:0]  _T_677;	// matmul/matmul-hw.mlir:3565:12
  wire         _T_678;	// matmul/matmul-hw.mlir:3564:12
  wire         _T_679;	// matmul/matmul-hw.mlir:3563:12
  wire [31:0]  _T_680;	// matmul/matmul-hw.mlir:3547:12
  wire         _T_681;	// matmul/matmul-hw.mlir:3546:12
  wire         _T_682;	// matmul/matmul-hw.mlir:3545:12
  wire [31:0]  _T_683;	// matmul/matmul-hw.mlir:3529:12
  wire         _T_684;	// matmul/matmul-hw.mlir:3528:12
  wire         _T_685;	// matmul/matmul-hw.mlir:3527:12
  wire [31:0]  _T_686;	// matmul/matmul-hw.mlir:3511:12
  wire         _T_687;	// matmul/matmul-hw.mlir:3510:12
  wire         _T_688;	// matmul/matmul-hw.mlir:3509:12
  wire [31:0]  _T_689;	// matmul/matmul-hw.mlir:3493:12
  wire         _T_690;	// matmul/matmul-hw.mlir:3492:12
  wire         _T_691;	// matmul/matmul-hw.mlir:3491:12
  wire [31:0]  _T_692;	// matmul/matmul-hw.mlir:3475:12
  wire         _T_693;	// matmul/matmul-hw.mlir:3474:12
  wire         _T_694;	// matmul/matmul-hw.mlir:3473:12
  wire [31:0]  _T_695;	// matmul/matmul-hw.mlir:3457:12
  wire         _T_696;	// matmul/matmul-hw.mlir:3456:12
  wire         _T_697;	// matmul/matmul-hw.mlir:3455:12
  wire [31:0]  _T_698;	// matmul/matmul-hw.mlir:3439:12
  wire         _T_699;	// matmul/matmul-hw.mlir:3438:12
  wire         _T_700;	// matmul/matmul-hw.mlir:3437:12
  wire [31:0]  _T_701;	// matmul/matmul-hw.mlir:3421:12
  wire         _T_702;	// matmul/matmul-hw.mlir:3420:12
  wire         _T_703;	// matmul/matmul-hw.mlir:3419:12
  wire [31:0]  _T_704;	// matmul/matmul-hw.mlir:3403:12
  wire         _T_705;	// matmul/matmul-hw.mlir:3402:12
  wire         _T_706;	// matmul/matmul-hw.mlir:3401:12
  wire [31:0]  _T_707;	// matmul/matmul-hw.mlir:3385:12
  wire         _T_708;	// matmul/matmul-hw.mlir:3384:12
  wire         _T_709;	// matmul/matmul-hw.mlir:3383:12
  wire [31:0]  _T_710;	// matmul/matmul-hw.mlir:3367:12
  wire         _T_711;	// matmul/matmul-hw.mlir:3366:12
  wire         _T_712;	// matmul/matmul-hw.mlir:3365:12
  wire [31:0]  _T_713;	// matmul/matmul-hw.mlir:3349:12
  wire         _T_714;	// matmul/matmul-hw.mlir:3348:12
  wire         _T_715;	// matmul/matmul-hw.mlir:3347:12
  wire [31:0]  _T_716;	// matmul/matmul-hw.mlir:3331:12
  wire         _T_717;	// matmul/matmul-hw.mlir:3330:12
  wire         _T_718;	// matmul/matmul-hw.mlir:3329:12
  wire [31:0]  _T_719;	// matmul/matmul-hw.mlir:3313:12
  wire         _T_720;	// matmul/matmul-hw.mlir:3312:12
  wire         _T_721;	// matmul/matmul-hw.mlir:3311:12
  wire [31:0]  _T_722;	// matmul/matmul-hw.mlir:3295:12
  wire         _T_723;	// matmul/matmul-hw.mlir:3294:12
  wire         _T_724;	// matmul/matmul-hw.mlir:3293:12
  wire [31:0]  _T_725;	// matmul/matmul-hw.mlir:3277:12
  wire         _T_726;	// matmul/matmul-hw.mlir:3276:12
  wire         _T_727;	// matmul/matmul-hw.mlir:3275:12
  wire [31:0]  _T_728;	// matmul/matmul-hw.mlir:3259:12
  wire         _T_729;	// matmul/matmul-hw.mlir:3258:12
  wire         _T_730;	// matmul/matmul-hw.mlir:3257:12
  wire [31:0]  _T_731;	// matmul/matmul-hw.mlir:3241:12
  wire         _T_732;	// matmul/matmul-hw.mlir:3240:12
  wire         _T_733;	// matmul/matmul-hw.mlir:3239:12
  wire [31:0]  _T_734;	// matmul/matmul-hw.mlir:3223:12
  wire         _T_735;	// matmul/matmul-hw.mlir:3222:12
  wire         _T_736;	// matmul/matmul-hw.mlir:3221:12
  wire [31:0]  _T_737;	// matmul/matmul-hw.mlir:3205:12
  wire         _T_738;	// matmul/matmul-hw.mlir:3204:12
  wire         _T_739;	// matmul/matmul-hw.mlir:3203:12
  wire [31:0]  _T_740;	// matmul/matmul-hw.mlir:3187:12
  wire         _T_741;	// matmul/matmul-hw.mlir:3186:12
  wire         _T_742;	// matmul/matmul-hw.mlir:3185:12
  wire [31:0]  _T_743;	// matmul/matmul-hw.mlir:3169:12
  wire         _T_744;	// matmul/matmul-hw.mlir:3168:12
  wire         _T_745;	// matmul/matmul-hw.mlir:3167:12
  wire [31:0]  _T_746;	// matmul/matmul-hw.mlir:3151:12
  wire         _T_747;	// matmul/matmul-hw.mlir:3150:12
  wire         _T_748;	// matmul/matmul-hw.mlir:3149:12
  wire [31:0]  _T_749;	// matmul/matmul-hw.mlir:3133:12
  wire         _T_750;	// matmul/matmul-hw.mlir:3132:12
  wire         _T_751;	// matmul/matmul-hw.mlir:3131:12
  wire [31:0]  _T_752;	// matmul/matmul-hw.mlir:3115:12
  wire         _T_753;	// matmul/matmul-hw.mlir:3114:12
  wire         _T_754;	// matmul/matmul-hw.mlir:3113:12
  wire [31:0]  _T_755;	// matmul/matmul-hw.mlir:3097:12
  wire         _T_756;	// matmul/matmul-hw.mlir:3096:12
  wire         _T_757;	// matmul/matmul-hw.mlir:3095:11
  wire [31:0]  _T_758;	// matmul/matmul-hw.mlir:3079:11
  wire         _T_759;	// matmul/matmul-hw.mlir:3078:11
  wire         _T_760;	// matmul/matmul-hw.mlir:3077:11
  wire [31:0]  _T_761;	// matmul/matmul-hw.mlir:3061:11
  wire         _T_762;	// matmul/matmul-hw.mlir:3060:11
  wire         _T_763;	// matmul/matmul-hw.mlir:3059:11
  wire [31:0]  _T_764;	// matmul/matmul-hw.mlir:3043:11
  wire         _T_765;	// matmul/matmul-hw.mlir:3042:11
  wire         _T_766;	// matmul/matmul-hw.mlir:3041:11
  wire         _T_767;	// matmul/matmul-hw.mlir:3019:11
  reg          _T_768;	// matmul/matmul-hw.mlir:3018:11
  wire [31:0]  _T_769;	// matmul/matmul-hw.mlir:3017:11
  wire         _T_770;	// matmul/matmul-hw.mlir:3016:11
  wire         _T_771;	// matmul/matmul-hw.mlir:3009:11
  reg          _T_772;	// matmul/matmul-hw.mlir:3008:11
  wire         _T_773;	// matmul/matmul-hw.mlir:2984:11
  wire         _T_774;	// matmul/matmul-hw.mlir:2983:11
  wire         _T_775;	// matmul/matmul-hw.mlir:2982:11
  wire [5:0]   _T_776;	// matmul/matmul-hw.mlir:2975:11
  wire         _T_777;	// matmul/matmul-hw.mlir:2974:11
  wire         _T_778;	// matmul/matmul-hw.mlir:2971:11
  wire         _T_779;	// matmul/matmul-hw.mlir:2937:11
  wire         _T_780;	// matmul/matmul-hw.mlir:2936:11
  wire         _T_781;	// matmul/matmul-hw.mlir:2935:11
  wire [5:0]   _T_782;	// matmul/matmul-hw.mlir:2928:11
  wire         _T_783;	// matmul/matmul-hw.mlir:2927:11
  wire         _T_784;	// matmul/matmul-hw.mlir:2924:11
  wire         reg_1x1_r0_w1_inst2_p0_rd_data;	// matmul/matmul-hw.mlir:2981:39
  wire [5:0]   reg_1x6_r0_w1_inst2_p0_rd_data;	// matmul/matmul-hw.mlir:2970:39
  wire         reg_1x1_r0_w1_inst1_p0_rd_data;	// matmul/matmul-hw.mlir:2934:39
  wire [5:0]   reg_1x6_r0_w1_inst1_p0_rd_data;	// matmul/matmul-hw.mlir:2923:39
  wire [31:0]  buff_bank0_p0_rd_data;	// matmul/matmul-hw.mlir:2899:30
  reg          _T_785;	// matmul/matmul-hw.mlir:2900:10
  reg  [4:0]   _T_791;	// matmul/matmul-hw.mlir:2939:11
  reg          _T_793;	// matmul/matmul-hw.mlir:2947:11
  reg  [4:0]   _T_799;	// matmul/matmul-hw.mlir:2986:11
  reg          _T_801;	// matmul/matmul-hw.mlir:3000:11
  reg  [3:0]   _T_805;	// matmul/matmul-hw.mlir:3026:11
  reg  [4:0]   _T_810;	// matmul/matmul-hw.mlir:3044:11
  reg  [5:0]   _T_815;	// matmul/matmul-hw.mlir:3062:11
  reg  [6:0]   _T_820;	// matmul/matmul-hw.mlir:3080:11
  reg  [7:0]   _T_825;	// matmul/matmul-hw.mlir:3098:12
  reg  [8:0]   _T_830;	// matmul/matmul-hw.mlir:3116:12
  reg  [9:0]   _T_835;	// matmul/matmul-hw.mlir:3134:12
  reg  [10:0]  _T_840;	// matmul/matmul-hw.mlir:3152:12
  reg  [11:0]  _T_845;	// matmul/matmul-hw.mlir:3170:12
  reg  [12:0]  _T_850;	// matmul/matmul-hw.mlir:3188:12
  reg  [13:0]  _T_855;	// matmul/matmul-hw.mlir:3206:12
  reg  [14:0]  _T_860;	// matmul/matmul-hw.mlir:3224:12
  reg  [15:0]  _T_865;	// matmul/matmul-hw.mlir:3242:12
  reg  [16:0]  _T_870;	// matmul/matmul-hw.mlir:3260:12
  reg  [17:0]  _T_875;	// matmul/matmul-hw.mlir:3278:12
  reg  [18:0]  _T_880;	// matmul/matmul-hw.mlir:3296:12
  reg  [21:0]  _T_885;	// matmul/matmul-hw.mlir:3314:12
  reg  [22:0]  _T_890;	// matmul/matmul-hw.mlir:3332:12
  reg  [23:0]  _T_895;	// matmul/matmul-hw.mlir:3350:12
  reg  [24:0]  _T_900;	// matmul/matmul-hw.mlir:3368:12
  reg  [25:0]  _T_905;	// matmul/matmul-hw.mlir:3386:12
  reg  [26:0]  _T_910;	// matmul/matmul-hw.mlir:3404:12
  reg  [27:0]  _T_915;	// matmul/matmul-hw.mlir:3422:12
  reg  [28:0]  _T_920;	// matmul/matmul-hw.mlir:3440:12
  reg  [29:0]  _T_925;	// matmul/matmul-hw.mlir:3458:12
  reg  [30:0]  _T_930;	// matmul/matmul-hw.mlir:3476:12
  reg  [31:0]  _T_935;	// matmul/matmul-hw.mlir:3494:12
  reg  [32:0]  _T_940;	// matmul/matmul-hw.mlir:3512:12
  reg  [33:0]  _T_945;	// matmul/matmul-hw.mlir:3530:12
  reg  [34:0]  _T_950;	// matmul/matmul-hw.mlir:3548:12
  reg  [35:0]  _T_955;	// matmul/matmul-hw.mlir:3566:12
  reg  [36:0]  _T_960;	// matmul/matmul-hw.mlir:3584:12
  reg  [39:0]  _T_965;	// matmul/matmul-hw.mlir:3602:12
  reg  [40:0]  _T_970;	// matmul/matmul-hw.mlir:3620:12
  reg  [41:0]  _T_975;	// matmul/matmul-hw.mlir:3638:12
  reg  [42:0]  _T_980;	// matmul/matmul-hw.mlir:3656:12
  reg  [43:0]  _T_985;	// matmul/matmul-hw.mlir:3674:12
  reg  [44:0]  _T_990;	// matmul/matmul-hw.mlir:3692:12
  reg  [45:0]  _T_995;	// matmul/matmul-hw.mlir:3710:12
  reg  [46:0]  _T_1000;	// matmul/matmul-hw.mlir:3728:12
  reg  [47:0]  _T_1005;	// matmul/matmul-hw.mlir:3746:12
  reg  [48:0]  _T_1010;	// matmul/matmul-hw.mlir:3764:12
  reg  [49:0]  _T_1015;	// matmul/matmul-hw.mlir:3782:12
  reg  [50:0]  _T_1020;	// matmul/matmul-hw.mlir:3800:12
  reg  [51:0]  _T_1025;	// matmul/matmul-hw.mlir:3818:12
  reg  [52:0]  _T_1030;	// matmul/matmul-hw.mlir:3836:12
  reg  [53:0]  _T_1035;	// matmul/matmul-hw.mlir:3854:12
  reg  [54:0]  _T_1040;	// matmul/matmul-hw.mlir:3872:12
  reg  [57:0]  _T_1045;	// matmul/matmul-hw.mlir:3890:12
  reg  [58:0]  _T_1050;	// matmul/matmul-hw.mlir:3908:12
  reg  [59:0]  _T_1055;	// matmul/matmul-hw.mlir:3926:12
  reg  [60:0]  _T_1060;	// matmul/matmul-hw.mlir:3944:12
  reg  [61:0]  _T_1065;	// matmul/matmul-hw.mlir:3962:12
  reg  [62:0]  _T_1070;	// matmul/matmul-hw.mlir:3980:12
  reg  [63:0]  _T_1075;	// matmul/matmul-hw.mlir:3998:12
  reg  [64:0]  _T_1080;	// matmul/matmul-hw.mlir:4016:12
  reg  [65:0]  _T_1085;	// matmul/matmul-hw.mlir:4034:12
  reg  [66:0]  _T_1090;	// matmul/matmul-hw.mlir:4052:12
  reg  [67:0]  _T_1095;	// matmul/matmul-hw.mlir:4070:12
  reg  [68:0]  _T_1100;	// matmul/matmul-hw.mlir:4088:12
  reg  [69:0]  _T_1105;	// matmul/matmul-hw.mlir:4106:12
  reg  [70:0]  _T_1110;	// matmul/matmul-hw.mlir:4124:12
  reg  [71:0]  _T_1115;	// matmul/matmul-hw.mlir:4142:12
  reg  [72:0]  _T_1120;	// matmul/matmul-hw.mlir:4160:12
  reg  [75:0]  _T_1125;	// matmul/matmul-hw.mlir:4178:12
  reg  [76:0]  _T_1130;	// matmul/matmul-hw.mlir:4196:12
  reg  [77:0]  _T_1135;	// matmul/matmul-hw.mlir:4214:12
  reg  [78:0]  _T_1140;	// matmul/matmul-hw.mlir:4232:12
  reg  [79:0]  _T_1145;	// matmul/matmul-hw.mlir:4250:12
  reg  [80:0]  _T_1150;	// matmul/matmul-hw.mlir:4268:12
  reg  [81:0]  _T_1155;	// matmul/matmul-hw.mlir:4286:12
  reg  [82:0]  _T_1160;	// matmul/matmul-hw.mlir:4304:12
  reg  [83:0]  _T_1165;	// matmul/matmul-hw.mlir:4322:12
  reg  [84:0]  _T_1170;	// matmul/matmul-hw.mlir:4340:12
  reg  [85:0]  _T_1175;	// matmul/matmul-hw.mlir:4358:12
  reg  [86:0]  _T_1180;	// matmul/matmul-hw.mlir:4376:12
  reg  [87:0]  _T_1185;	// matmul/matmul-hw.mlir:4394:12
  reg  [88:0]  _T_1190;	// matmul/matmul-hw.mlir:4412:12
  reg  [89:0]  _T_1195;	// matmul/matmul-hw.mlir:4430:12
  reg  [90:0]  _T_1200;	// matmul/matmul-hw.mlir:4448:12
  reg  [93:0]  _T_1205;	// matmul/matmul-hw.mlir:4466:12
  reg  [94:0]  _T_1210;	// matmul/matmul-hw.mlir:4484:12
  reg  [95:0]  _T_1215;	// matmul/matmul-hw.mlir:4502:12
  reg  [96:0]  _T_1220;	// matmul/matmul-hw.mlir:4520:12
  reg  [97:0]  _T_1225;	// matmul/matmul-hw.mlir:4538:12
  reg  [98:0]  _T_1230;	// matmul/matmul-hw.mlir:4556:12
  reg  [99:0]  _T_1235;	// matmul/matmul-hw.mlir:4574:12
  reg  [100:0] _T_1240;	// matmul/matmul-hw.mlir:4592:12
  reg  [101:0] _T_1245;	// matmul/matmul-hw.mlir:4610:12
  reg  [102:0] _T_1250;	// matmul/matmul-hw.mlir:4628:12
  reg  [103:0] _T_1255;	// matmul/matmul-hw.mlir:4646:12
  reg  [104:0] _T_1260;	// matmul/matmul-hw.mlir:4664:12
  reg  [105:0] _T_1265;	// matmul/matmul-hw.mlir:4682:12
  reg  [106:0] _T_1270;	// matmul/matmul-hw.mlir:4700:12
  reg  [107:0] _T_1275;	// matmul/matmul-hw.mlir:4718:13
  reg  [108:0] _T_1280;	// matmul/matmul-hw.mlir:4736:13
  reg  [111:0] _T_1285;	// matmul/matmul-hw.mlir:4754:13
  reg  [112:0] _T_1290;	// matmul/matmul-hw.mlir:4772:13
  reg  [113:0] _T_1295;	// matmul/matmul-hw.mlir:4790:13
  reg  [114:0] _T_1300;	// matmul/matmul-hw.mlir:4808:13
  reg  [115:0] _T_1305;	// matmul/matmul-hw.mlir:4826:13
  reg  [116:0] _T_1310;	// matmul/matmul-hw.mlir:4844:13
  reg  [117:0] _T_1315;	// matmul/matmul-hw.mlir:4862:13
  reg  [118:0] _T_1320;	// matmul/matmul-hw.mlir:4880:13
  reg  [119:0] _T_1325;	// matmul/matmul-hw.mlir:4898:13
  reg  [120:0] _T_1330;	// matmul/matmul-hw.mlir:4916:13
  reg  [121:0] _T_1335;	// matmul/matmul-hw.mlir:4934:13
  reg  [122:0] _T_1340;	// matmul/matmul-hw.mlir:4952:13
  reg  [123:0] _T_1345;	// matmul/matmul-hw.mlir:4970:13
  reg  [124:0] _T_1350;	// matmul/matmul-hw.mlir:4988:13
  reg  [125:0] _T_1355;	// matmul/matmul-hw.mlir:5006:13
  reg  [126:0] _T_1360;	// matmul/matmul-hw.mlir:5024:13
  reg  [129:0] _T_1365;	// matmul/matmul-hw.mlir:5042:13
  reg  [130:0] _T_1370;	// matmul/matmul-hw.mlir:5060:13
  reg  [131:0] _T_1375;	// matmul/matmul-hw.mlir:5078:13
  reg  [132:0] _T_1380;	// matmul/matmul-hw.mlir:5096:13
  reg  [133:0] _T_1385;	// matmul/matmul-hw.mlir:5114:13
  reg  [134:0] _T_1390;	// matmul/matmul-hw.mlir:5132:13
  reg  [135:0] _T_1395;	// matmul/matmul-hw.mlir:5150:13
  reg  [136:0] _T_1400;	// matmul/matmul-hw.mlir:5168:13
  reg  [137:0] _T_1405;	// matmul/matmul-hw.mlir:5186:13
  reg  [138:0] _T_1410;	// matmul/matmul-hw.mlir:5204:13
  reg  [139:0] _T_1415;	// matmul/matmul-hw.mlir:5222:13
  reg  [140:0] _T_1420;	// matmul/matmul-hw.mlir:5240:13
  reg  [141:0] _T_1425;	// matmul/matmul-hw.mlir:5258:13
  reg  [142:0] _T_1430;	// matmul/matmul-hw.mlir:5276:13
  reg  [143:0] _T_1435;	// matmul/matmul-hw.mlir:5294:13
  reg  [144:0] _T_1440;	// matmul/matmul-hw.mlir:5312:13
  reg  [147:0] _T_1445;	// matmul/matmul-hw.mlir:5330:13
  reg  [148:0] _T_1450;	// matmul/matmul-hw.mlir:5348:13
  reg  [149:0] _T_1455;	// matmul/matmul-hw.mlir:5366:13
  reg  [150:0] _T_1460;	// matmul/matmul-hw.mlir:5384:13
  reg  [151:0] _T_1465;	// matmul/matmul-hw.mlir:5402:13
  reg  [152:0] _T_1470;	// matmul/matmul-hw.mlir:5420:13
  reg  [153:0] _T_1475;	// matmul/matmul-hw.mlir:5438:13
  reg  [154:0] _T_1480;	// matmul/matmul-hw.mlir:5456:13
  reg  [155:0] _T_1485;	// matmul/matmul-hw.mlir:5474:13
  reg  [156:0] _T_1490;	// matmul/matmul-hw.mlir:5492:13
  reg  [157:0] _T_1495;	// matmul/matmul-hw.mlir:5510:13
  reg  [158:0] _T_1500;	// matmul/matmul-hw.mlir:5528:13
  reg  [159:0] _T_1505;	// matmul/matmul-hw.mlir:5546:13
  reg  [160:0] _T_1510;	// matmul/matmul-hw.mlir:5564:13
  reg  [161:0] _T_1515;	// matmul/matmul-hw.mlir:5582:13
  reg  [162:0] _T_1520;	// matmul/matmul-hw.mlir:5600:13
  reg  [165:0] _T_1525;	// matmul/matmul-hw.mlir:5618:13
  reg  [166:0] _T_1530;	// matmul/matmul-hw.mlir:5636:13
  reg  [167:0] _T_1535;	// matmul/matmul-hw.mlir:5654:13
  reg  [168:0] _T_1540;	// matmul/matmul-hw.mlir:5672:13
  reg  [169:0] _T_1545;	// matmul/matmul-hw.mlir:5690:13
  reg  [170:0] _T_1550;	// matmul/matmul-hw.mlir:5708:13
  reg  [171:0] _T_1555;	// matmul/matmul-hw.mlir:5726:13
  reg  [172:0] _T_1560;	// matmul/matmul-hw.mlir:5744:13
  reg  [173:0] _T_1565;	// matmul/matmul-hw.mlir:5762:13
  reg  [174:0] _T_1570;	// matmul/matmul-hw.mlir:5780:13
  reg  [175:0] _T_1575;	// matmul/matmul-hw.mlir:5798:13
  reg  [176:0] _T_1580;	// matmul/matmul-hw.mlir:5816:13
  reg  [177:0] _T_1585;	// matmul/matmul-hw.mlir:5834:13
  reg  [178:0] _T_1590;	// matmul/matmul-hw.mlir:5852:13
  reg  [179:0] _T_1595;	// matmul/matmul-hw.mlir:5870:13
  reg  [180:0] _T_1600;	// matmul/matmul-hw.mlir:5888:13
  reg  [183:0] _T_1605;	// matmul/matmul-hw.mlir:5906:13
  reg  [184:0] _T_1610;	// matmul/matmul-hw.mlir:5924:13
  reg  [185:0] _T_1615;	// matmul/matmul-hw.mlir:5942:13
  reg  [186:0] _T_1620;	// matmul/matmul-hw.mlir:5960:13
  reg  [187:0] _T_1625;	// matmul/matmul-hw.mlir:5978:13
  reg  [188:0] _T_1630;	// matmul/matmul-hw.mlir:5996:13
  reg  [189:0] _T_1635;	// matmul/matmul-hw.mlir:6014:13
  reg  [190:0] _T_1640;	// matmul/matmul-hw.mlir:6032:13
  reg  [191:0] _T_1645;	// matmul/matmul-hw.mlir:6050:13
  reg  [192:0] _T_1650;	// matmul/matmul-hw.mlir:6068:13
  reg  [193:0] _T_1655;	// matmul/matmul-hw.mlir:6086:13
  reg  [194:0] _T_1660;	// matmul/matmul-hw.mlir:6104:13
  reg  [195:0] _T_1665;	// matmul/matmul-hw.mlir:6122:13
  reg  [196:0] _T_1670;	// matmul/matmul-hw.mlir:6140:13
  reg  [197:0] _T_1675;	// matmul/matmul-hw.mlir:6158:13
  reg  [198:0] _T_1680;	// matmul/matmul-hw.mlir:6176:13
  reg  [201:0] _T_1685;	// matmul/matmul-hw.mlir:6194:13
  reg  [202:0] _T_1690;	// matmul/matmul-hw.mlir:6212:13
  reg  [203:0] _T_1695;	// matmul/matmul-hw.mlir:6230:13
  reg  [204:0] _T_1700;	// matmul/matmul-hw.mlir:6248:13
  reg  [205:0] _T_1705;	// matmul/matmul-hw.mlir:6266:13
  reg  [206:0] _T_1710;	// matmul/matmul-hw.mlir:6284:13
  reg  [207:0] _T_1715;	// matmul/matmul-hw.mlir:6302:13
  reg  [208:0] _T_1720;	// matmul/matmul-hw.mlir:6320:13
  reg  [209:0] _T_1725;	// matmul/matmul-hw.mlir:6338:13
  reg  [210:0] _T_1730;	// matmul/matmul-hw.mlir:6356:13
  reg  [211:0] _T_1735;	// matmul/matmul-hw.mlir:6374:13
  reg  [212:0] _T_1740;	// matmul/matmul-hw.mlir:6392:13
  reg  [213:0] _T_1745;	// matmul/matmul-hw.mlir:6410:13
  reg  [214:0] _T_1750;	// matmul/matmul-hw.mlir:6428:13
  reg  [215:0] _T_1755;	// matmul/matmul-hw.mlir:6446:13
  reg  [216:0] _T_1760;	// matmul/matmul-hw.mlir:6464:13
  reg  [219:0] _T_1765;	// matmul/matmul-hw.mlir:6482:13
  reg  [220:0] _T_1770;	// matmul/matmul-hw.mlir:6500:13
  reg  [221:0] _T_1775;	// matmul/matmul-hw.mlir:6518:13
  reg  [222:0] _T_1780;	// matmul/matmul-hw.mlir:6536:13
  reg  [223:0] _T_1785;	// matmul/matmul-hw.mlir:6554:13
  reg  [224:0] _T_1790;	// matmul/matmul-hw.mlir:6572:13
  reg  [225:0] _T_1795;	// matmul/matmul-hw.mlir:6590:13
  reg  [226:0] _T_1800;	// matmul/matmul-hw.mlir:6608:13
  reg  [227:0] _T_1805;	// matmul/matmul-hw.mlir:6626:13
  reg  [228:0] _T_1810;	// matmul/matmul-hw.mlir:6644:13
  reg  [229:0] _T_1815;	// matmul/matmul-hw.mlir:6662:13
  reg  [230:0] _T_1820;	// matmul/matmul-hw.mlir:6680:13
  reg  [231:0] _T_1825;	// matmul/matmul-hw.mlir:6698:13
  reg  [232:0] _T_1830;	// matmul/matmul-hw.mlir:6716:13
  reg  [233:0] _T_1835;	// matmul/matmul-hw.mlir:6734:13
  reg  [234:0] _T_1840;	// matmul/matmul-hw.mlir:6752:13
  reg  [237:0] _T_1845;	// matmul/matmul-hw.mlir:6770:13
  reg  [238:0] _T_1850;	// matmul/matmul-hw.mlir:6788:13
  reg  [239:0] _T_1855;	// matmul/matmul-hw.mlir:6806:13
  reg  [240:0] _T_1860;	// matmul/matmul-hw.mlir:6824:13
  reg  [241:0] _T_1865;	// matmul/matmul-hw.mlir:6842:13
  reg  [242:0] _T_1870;	// matmul/matmul-hw.mlir:6860:13
  reg  [243:0] _T_1875;	// matmul/matmul-hw.mlir:6878:13
  reg  [244:0] _T_1880;	// matmul/matmul-hw.mlir:6896:13
  reg  [245:0] _T_1885;	// matmul/matmul-hw.mlir:6914:13
  reg  [246:0] _T_1890;	// matmul/matmul-hw.mlir:6932:13
  reg  [247:0] _T_1895;	// matmul/matmul-hw.mlir:6950:13
  reg  [248:0] _T_1900;	// matmul/matmul-hw.mlir:6968:13
  reg  [249:0] _T_1905;	// matmul/matmul-hw.mlir:6986:13
  reg  [250:0] _T_1910;	// matmul/matmul-hw.mlir:7004:13
  reg  [251:0] _T_1915;	// matmul/matmul-hw.mlir:7022:13
  reg  [252:0] _T_1920;	// matmul/matmul-hw.mlir:7040:13
  reg  [255:0] _T_1925;	// matmul/matmul-hw.mlir:7058:13
  reg  [256:0] _T_1930;	// matmul/matmul-hw.mlir:7076:13
  reg  [257:0] _T_1935;	// matmul/matmul-hw.mlir:7094:13
  reg  [258:0] _T_1940;	// matmul/matmul-hw.mlir:7112:13
  reg  [259:0] _T_1945;	// matmul/matmul-hw.mlir:7130:13
  reg  [260:0] _T_1950;	// matmul/matmul-hw.mlir:7148:13
  reg  [261:0] _T_1955;	// matmul/matmul-hw.mlir:7166:13
  reg  [262:0] _T_1960;	// matmul/matmul-hw.mlir:7184:13
  reg  [263:0] _T_1965;	// matmul/matmul-hw.mlir:7202:13
  reg  [264:0] _T_1970;	// matmul/matmul-hw.mlir:7220:13
  reg  [265:0] _T_1975;	// matmul/matmul-hw.mlir:7238:13
  reg  [266:0] _T_1980;	// matmul/matmul-hw.mlir:7256:13
  reg  [267:0] _T_1985;	// matmul/matmul-hw.mlir:7274:13
  reg  [268:0] _T_1990;	// matmul/matmul-hw.mlir:7292:13
  reg  [269:0] _T_1995;	// matmul/matmul-hw.mlir:7310:13
  reg  [270:0] _T_2000;	// matmul/matmul-hw.mlir:7328:13
  reg  [273:0] _T_2005;	// matmul/matmul-hw.mlir:7346:13
  reg  [274:0] _T_2010;	// matmul/matmul-hw.mlir:7364:13
  reg  [275:0] _T_2015;	// matmul/matmul-hw.mlir:7382:13
  reg  [276:0] _T_2020;	// matmul/matmul-hw.mlir:7400:13
  reg  [277:0] _T_2025;	// matmul/matmul-hw.mlir:7418:13
  reg  [278:0] _T_2030;	// matmul/matmul-hw.mlir:7436:13
  reg  [279:0] _T_2035;	// matmul/matmul-hw.mlir:7454:13
  reg  [280:0] _T_2040;	// matmul/matmul-hw.mlir:7472:13
  reg  [281:0] _T_2045;	// matmul/matmul-hw.mlir:7490:13
  reg  [282:0] _T_2050;	// matmul/matmul-hw.mlir:7508:13
  reg  [283:0] _T_2055;	// matmul/matmul-hw.mlir:7526:13
  reg  [284:0] _T_2060;	// matmul/matmul-hw.mlir:7544:13
  reg  [285:0] _T_2065;	// matmul/matmul-hw.mlir:7562:13
  reg  [286:0] _T_2070;	// matmul/matmul-hw.mlir:7580:13
  reg  [287:0] _T_2075;	// matmul/matmul-hw.mlir:7598:13
  reg  [288:0] _T_2080;	// matmul/matmul-hw.mlir:7616:13
  reg  [290:0] _T_2085;	// matmul/matmul-hw.mlir:7634:13

  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd32)
  ) buff_bank0 (	// matmul/matmul-hw.mlir:2899:30
    .p0_rd_en   (_T_766),	// matmul/matmul-hw.mlir:3041:11
    .p1_wr_en   (_T_770),	// matmul/matmul-hw.mlir:3016:11
    .p1_wr_data (_T_769),	// matmul/matmul-hw.mlir:3017:11
    .t          (t),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (buff_bank0_p0_rd_data)
  );
  localparam _T_786 = 1'h0;	// matmul/matmul-hw.mlir:2902:19
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:2903:5
    if (rst)	// matmul/matmul-hw.mlir:2903:5
      _T_785 <= _T_786;	// matmul/matmul-hw.mlir:2906:7
    else	// matmul/matmul-hw.mlir:2903:5
      _T_785 <= t;	// matmul/matmul-hw.mlir:2904:7
  end // always @(posedge)
  wire _T_787 = _T_785 & 1'h1 | _T_768 & reg_1x1_r0_w1_inst1_p0_rd_data;	// matmul/matmul-hw.mlir:1590:13, :2901:10, :2911:10, :2912:10, :2913:10, :2934:39, :3019:11
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd6)
  ) reg_1x6_r0_w1_inst1 (	// matmul/matmul-hw.mlir:2923:39
    .p0_rd_en   (_T_784),	// matmul/matmul-hw.mlir:2924:11
    .p1_wr_en   (_T_783),	// matmul/matmul-hw.mlir:2927:11
    .p1_wr_data (_T_782),	// matmul/matmul-hw.mlir:2928:11
    .t          (_T_787),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x6_r0_w1_inst1_p0_rd_data)
  );
  assign _T_784 = _T_787 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2924:11
  wire [5:0] _T_788 = _T_785 ? 6'h0 : reg_1x6_r0_w1_inst1_p0_rd_data;	// matmul/matmul-hw.mlir:1591:14, :2901:10, :2923:39, :2925:11
  wire [5:0] _T_789 = _T_788 + 6'h1;	// matmul/matmul-hw.mlir:1593:14, :2926:11
  assign _T_783 = _T_787 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2927:11
  assign _T_782 = _T_787 ? _T_789 : 6'bx;	// matmul/matmul-hw.mlir:2377:18, :2928:11
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd1)
  ) reg_1x1_r0_w1_inst1 (	// matmul/matmul-hw.mlir:2934:39
    .p0_rd_en   (_T_779),	// matmul/matmul-hw.mlir:2937:11
    .p1_wr_en   (_T_781),	// matmul/matmul-hw.mlir:2935:11
    .p1_wr_data (_T_780),	// matmul/matmul-hw.mlir:2936:11
    .t          (_T_787),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x1_r0_w1_inst1_p0_rd_data)
  );
  assign _T_781 = _T_787 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2935:11
  assign _T_780 = _T_787 ? _T_789 < 6'h10 : 1'bx;	// matmul/matmul-hw.mlir:1592:15, :2375:18, :2929:11, :2936:11
  assign _T_779 = _T_787 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2937:11
  wire [4:0] _T_790 = _T_788[4:0];	// matmul/matmul-hw.mlir:2938:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:2940:5
    if (_T_787)	// matmul/matmul-hw.mlir:2941:7
      _T_791 <= _T_790;	// matmul/matmul-hw.mlir:2942:9
  end // always @(posedge)
  wire [4:0] _T_792 = _T_787 ? _T_790 : _T_791;	// matmul/matmul-hw.mlir:2945:11, :2946:11
  localparam _T_794 = 1'h0;	// matmul/matmul-hw.mlir:2949:19
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:2950:5
    if (rst)	// matmul/matmul-hw.mlir:2950:5
      _T_793 <= _T_794;	// matmul/matmul-hw.mlir:2953:7
    else	// matmul/matmul-hw.mlir:2950:5
      _T_793 <= _T_787;	// matmul/matmul-hw.mlir:2951:7
  end // always @(posedge)
  wire _T_795 = _T_793 & 1'h1 | _T_772 & reg_1x1_r0_w1_inst2_p0_rd_data;	// matmul/matmul-hw.mlir:1590:13, :2948:11, :2958:11, :2959:11, :2960:11, :2981:39, :3009:11
  wire tk_end = _T_793 & ~(1'h1) | _T_771 & ~reg_1x1_r0_w1_inst2_p0_rd_data;	// matmul/matmul-hw.mlir:1590:13, :2948:11, :2961:11, :2962:11, :2963:11, :2964:11, :2965:11, :2981:39, :3009:11
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd6)
  ) reg_1x6_r0_w1_inst2 (	// matmul/matmul-hw.mlir:2970:39
    .p0_rd_en   (_T_778),	// matmul/matmul-hw.mlir:2971:11
    .p1_wr_en   (_T_777),	// matmul/matmul-hw.mlir:2974:11
    .p1_wr_data (_T_776),	// matmul/matmul-hw.mlir:2975:11
    .t          (_T_795),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x6_r0_w1_inst2_p0_rd_data)
  );
  assign _T_778 = _T_795 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2971:11
  wire [5:0] _T_796 = _T_793 ? 6'h0 : reg_1x6_r0_w1_inst2_p0_rd_data;	// matmul/matmul-hw.mlir:1591:14, :2948:11, :2970:39, :2972:11
  wire [5:0] _T_797 = _T_796 + 6'h1;	// matmul/matmul-hw.mlir:1593:14, :2973:11
  assign _T_777 = _T_795 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2974:11
  assign _T_776 = _T_795 ? _T_797 : 6'bx;	// matmul/matmul-hw.mlir:2371:13, :2975:11
  reg_r0_w1 #(
    .ELEMENT_WIDTH(64'd1)
  ) reg_1x1_r0_w1_inst2 (	// matmul/matmul-hw.mlir:2981:39
    .p0_rd_en   (_T_773),	// matmul/matmul-hw.mlir:2984:11
    .p1_wr_en   (_T_775),	// matmul/matmul-hw.mlir:2982:11
    .p1_wr_data (_T_774),	// matmul/matmul-hw.mlir:2983:11
    .t          (_T_795),
    .clk        (clk),
    .rst        (rst),
    .p0_rd_data (reg_1x1_r0_w1_inst2_p0_rd_data)
  );
  assign _T_775 = _T_795 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2982:11
  assign _T_774 = _T_795 ? _T_797 < 6'h10 : 1'bx;	// matmul/matmul-hw.mlir:1592:15, :2369:18, :2976:11, :2983:11
  assign _T_773 = _T_795 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2984:11
  wire [4:0] _T_798 = _T_796[4:0];	// matmul/matmul-hw.mlir:2985:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:2987:5
    if (_T_795)	// matmul/matmul-hw.mlir:2988:7
      _T_799 <= _T_798;	// matmul/matmul-hw.mlir:2989:9
  end // always @(posedge)
  wire [4:0] _T_800 = _T_795 ? _T_798 : _T_799;	// matmul/matmul-hw.mlir:2992:11, :2993:11
  localparam _T_802 = 1'h0;	// matmul/matmul-hw.mlir:3002:19
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3003:5
    if (rst)	// matmul/matmul-hw.mlir:3003:5
      _T_801 <= _T_802;	// matmul/matmul-hw.mlir:3006:7
    else	// matmul/matmul-hw.mlir:3003:5
      _T_801 <= _T_795;	// matmul/matmul-hw.mlir:3004:7
  end // always @(posedge)
  assign _T_771 = _T_772;	// matmul/matmul-hw.mlir:3009:11
  localparam _T_803 = 1'h0;	// matmul/matmul-hw.mlir:3010:19
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3011:5
    if (rst)	// matmul/matmul-hw.mlir:3011:5
      _T_772 <= _T_803;	// matmul/matmul-hw.mlir:3014:7
    else	// matmul/matmul-hw.mlir:3011:5
      _T_772 <= _T_795;	// matmul/matmul-hw.mlir:3012:7
  end // always @(posedge)
  assign _T_770 = _T_772 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3009:11, :3016:11
  assign _T_769 = _T_772 ? Bi_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2363:19, :3009:11, :3017:11
  assign _T_767 = _T_768;	// matmul/matmul-hw.mlir:3019:11
  localparam _T_804 = 1'h0;	// matmul/matmul-hw.mlir:3020:19
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3021:5
    if (rst)	// matmul/matmul-hw.mlir:3021:5
      _T_768 <= _T_804;	// matmul/matmul-hw.mlir:3024:7
    else	// matmul/matmul-hw.mlir:3021:5
      _T_768 <= tk_end;	// matmul/matmul-hw.mlir:3022:7
  end // always @(posedge)
  wire [3:0] _T_806 = _T_805;	// matmul/matmul-hw.mlir:3027:11
  wire [3:0] _T_807 = {_T_806[2'h0+:3], {{t}}};	// matmul/matmul-hw.mlir:3028:14, :3029:11, :3030:11, :3031:11
  wire [3:0] _T_808 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3032:19, :3033:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3034:5
    if (rst)	// matmul/matmul-hw.mlir:3034:5
      _T_805 <= _T_808;	// matmul/matmul-hw.mlir:3037:7
    else	// matmul/matmul-hw.mlir:3034:5
      _T_805 <= _T_807;	// matmul/matmul-hw.mlir:3035:7
  end // always @(posedge)
  wire _T_809 = _T_805[2'h3];	// matmul/matmul-hw.mlir:3027:11, :3039:15, :3040:11
  assign _T_766 = _T_809 ? 1'h1 : _T_763;	// matmul/matmul-hw.mlir:1590:13, :3041:11, :3059:11
  assign _T_765 = _T_809 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3042:11
  assign _T_764 = _T_809 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2360:19, :2899:30, :3043:11
  wire [4:0] _T_811 = _T_810;	// matmul/matmul-hw.mlir:3045:11
  wire [4:0] _T_812 = {_T_811[3'h0+:4], {{t}}};	// matmul/matmul-hw.mlir:3046:14, :3047:11, :3048:11, :3049:11
  wire [4:0] _T_813 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3050:19, :3051:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3052:5
    if (rst)	// matmul/matmul-hw.mlir:3052:5
      _T_810 <= _T_813;	// matmul/matmul-hw.mlir:3055:7
    else	// matmul/matmul-hw.mlir:3052:5
      _T_810 <= _T_812;	// matmul/matmul-hw.mlir:3053:7
  end // always @(posedge)
  wire _T_814 = _T_810[3'h4];	// matmul/matmul-hw.mlir:3045:11, :3057:15, :3058:11
  assign _T_763 = _T_814 ? 1'h1 : _T_760;	// matmul/matmul-hw.mlir:1590:13, :3059:11, :3077:11
  assign _T_762 = _T_814 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3060:11
  assign _T_761 = _T_814 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2357:19, :2899:30, :3061:11
  wire [5:0] _T_816 = _T_815;	// matmul/matmul-hw.mlir:3063:11
  wire [5:0] _T_817 = {_T_816[3'h0+:5], {{t}}};	// matmul/matmul-hw.mlir:3064:19, :3065:11, :3066:11, :3067:11
  wire [5:0] _T_818 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3068:19, :3069:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3070:5
    if (rst)	// matmul/matmul-hw.mlir:3070:5
      _T_815 <= _T_818;	// matmul/matmul-hw.mlir:3073:7
    else	// matmul/matmul-hw.mlir:3070:5
      _T_815 <= _T_817;	// matmul/matmul-hw.mlir:3071:7
  end // always @(posedge)
  wire _T_819 = _T_815[3'h5];	// matmul/matmul-hw.mlir:3063:11, :3075:15, :3076:11
  assign _T_760 = _T_819 ? 1'h1 : _T_757;	// matmul/matmul-hw.mlir:1590:13, :3077:11, :3095:11
  assign _T_759 = _T_819 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3078:11
  assign _T_758 = _T_819 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2354:19, :2899:30, :3079:11
  wire [6:0] _T_821 = _T_820;	// matmul/matmul-hw.mlir:3081:11
  wire [6:0] _T_822 = {_T_821[3'h0+:6], {{t}}};	// matmul/matmul-hw.mlir:3082:19, :3083:11, :3084:11, :3085:11
  wire [6:0] _T_823 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3086:19, :3087:11
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3088:5
    if (rst)	// matmul/matmul-hw.mlir:3088:5
      _T_820 <= _T_823;	// matmul/matmul-hw.mlir:3091:7
    else	// matmul/matmul-hw.mlir:3088:5
      _T_820 <= _T_822;	// matmul/matmul-hw.mlir:3089:7
  end // always @(posedge)
  wire _T_824 = _T_820[3'h6];	// matmul/matmul-hw.mlir:3081:11, :3093:15, :3094:11
  assign _T_757 = _T_824 ? 1'h1 : _T_754;	// matmul/matmul-hw.mlir:1590:13, :3095:11, :3113:12
  assign _T_756 = _T_824 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3096:12
  assign _T_755 = _T_824 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2351:19, :2899:30, :3097:12
  wire [7:0] _T_826 = _T_825;	// matmul/matmul-hw.mlir:3099:12
  wire [7:0] _T_827 = {_T_826[3'h0+:7], {{t}}};	// matmul/matmul-hw.mlir:3100:19, :3101:12, :3102:12, :3103:12
  wire [7:0] _T_828 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3104:19, :3105:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3106:5
    if (rst)	// matmul/matmul-hw.mlir:3106:5
      _T_825 <= _T_828;	// matmul/matmul-hw.mlir:3109:7
    else	// matmul/matmul-hw.mlir:3106:5
      _T_825 <= _T_827;	// matmul/matmul-hw.mlir:3107:7
  end // always @(posedge)
  wire _T_829 = _T_825[3'h7];	// matmul/matmul-hw.mlir:3099:12, :3111:15, :3112:12
  assign _T_754 = _T_829 ? 1'h1 : _T_751;	// matmul/matmul-hw.mlir:1590:13, :3113:12, :3131:12
  assign _T_753 = _T_829 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3114:12
  assign _T_752 = _T_829 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2348:19, :2899:30, :3115:12
  wire [8:0] _T_831 = _T_830;	// matmul/matmul-hw.mlir:3117:12
  wire [8:0] _T_832 = {_T_831[4'h0+:8], {{t}}};	// matmul/matmul-hw.mlir:3118:14, :3119:12, :3120:12, :3121:12
  wire [8:0] _T_833 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3122:19, :3123:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3124:5
    if (rst)	// matmul/matmul-hw.mlir:3124:5
      _T_830 <= _T_833;	// matmul/matmul-hw.mlir:3127:7
    else	// matmul/matmul-hw.mlir:3124:5
      _T_830 <= _T_832;	// matmul/matmul-hw.mlir:3125:7
  end // always @(posedge)
  wire _T_834 = _T_830[4'h8];	// matmul/matmul-hw.mlir:3117:12, :3129:15, :3130:12
  assign _T_751 = _T_834 ? 1'h1 : _T_748;	// matmul/matmul-hw.mlir:1590:13, :3131:12, :3149:12
  assign _T_750 = _T_834 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3132:12
  assign _T_749 = _T_834 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2345:19, :2899:30, :3133:12
  wire [9:0] _T_836 = _T_835;	// matmul/matmul-hw.mlir:3135:12
  wire [9:0] _T_837 = {_T_836[4'h0+:9], {{t}}};	// matmul/matmul-hw.mlir:3136:19, :3137:12, :3138:12, :3139:12
  wire [9:0] _T_838 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3140:19, :3141:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3142:5
    if (rst)	// matmul/matmul-hw.mlir:3142:5
      _T_835 <= _T_838;	// matmul/matmul-hw.mlir:3145:7
    else	// matmul/matmul-hw.mlir:3142:5
      _T_835 <= _T_837;	// matmul/matmul-hw.mlir:3143:7
  end // always @(posedge)
  wire _T_839 = _T_835[4'h9];	// matmul/matmul-hw.mlir:3135:12, :3147:15, :3148:12
  assign _T_748 = _T_839 ? 1'h1 : _T_745;	// matmul/matmul-hw.mlir:1590:13, :3149:12, :3167:12
  assign _T_747 = _T_839 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3150:12
  assign _T_746 = _T_839 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2342:19, :2899:30, :3151:12
  wire [10:0] _T_841 = _T_840;	// matmul/matmul-hw.mlir:3153:12
  wire [10:0] _T_842 = {_T_841[4'h0+:10], {{t}}};	// matmul/matmul-hw.mlir:3154:19, :3155:12, :3156:12, :3157:12
  wire [10:0] _T_843 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3158:19, :3159:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3160:5
    if (rst)	// matmul/matmul-hw.mlir:3160:5
      _T_840 <= _T_843;	// matmul/matmul-hw.mlir:3163:7
    else	// matmul/matmul-hw.mlir:3160:5
      _T_840 <= _T_842;	// matmul/matmul-hw.mlir:3161:7
  end // always @(posedge)
  wire _T_844 = _T_840[4'hA];	// matmul/matmul-hw.mlir:3153:12, :3165:15, :3166:12
  assign _T_745 = _T_844 ? 1'h1 : _T_742;	// matmul/matmul-hw.mlir:1590:13, :3167:12, :3185:12
  assign _T_744 = _T_844 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3168:12
  assign _T_743 = _T_844 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2339:19, :2899:30, :3169:12
  wire [11:0] _T_846 = _T_845;	// matmul/matmul-hw.mlir:3171:12
  wire [11:0] _T_847 = {_T_846[4'h0+:11], {{t}}};	// matmul/matmul-hw.mlir:3172:19, :3173:12, :3174:12, :3175:12
  wire [11:0] _T_848 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3176:19, :3177:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3178:5
    if (rst)	// matmul/matmul-hw.mlir:3178:5
      _T_845 <= _T_848;	// matmul/matmul-hw.mlir:3181:7
    else	// matmul/matmul-hw.mlir:3178:5
      _T_845 <= _T_847;	// matmul/matmul-hw.mlir:3179:7
  end // always @(posedge)
  wire _T_849 = _T_845[4'hB];	// matmul/matmul-hw.mlir:3171:12, :3183:15, :3184:12
  assign _T_742 = _T_849 ? 1'h1 : _T_739;	// matmul/matmul-hw.mlir:1590:13, :3185:12, :3203:12
  assign _T_741 = _T_849 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3186:12
  assign _T_740 = _T_849 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2336:19, :2899:30, :3187:12
  wire [12:0] _T_851 = _T_850;	// matmul/matmul-hw.mlir:3189:12
  wire [12:0] _T_852 = {_T_851[4'h0+:12], {{t}}};	// matmul/matmul-hw.mlir:3190:19, :3191:12, :3192:12, :3193:12
  wire [12:0] _T_853 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3194:19, :3195:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3196:5
    if (rst)	// matmul/matmul-hw.mlir:3196:5
      _T_850 <= _T_853;	// matmul/matmul-hw.mlir:3199:7
    else	// matmul/matmul-hw.mlir:3196:5
      _T_850 <= _T_852;	// matmul/matmul-hw.mlir:3197:7
  end // always @(posedge)
  wire _T_854 = _T_850[4'hC];	// matmul/matmul-hw.mlir:3189:12, :3201:15, :3202:12
  assign _T_739 = _T_854 ? 1'h1 : _T_736;	// matmul/matmul-hw.mlir:1590:13, :3203:12, :3221:12
  assign _T_738 = _T_854 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3204:12
  assign _T_737 = _T_854 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2333:19, :2899:30, :3205:12
  wire [13:0] _T_856 = _T_855;	// matmul/matmul-hw.mlir:3207:12
  wire [13:0] _T_857 = {_T_856[4'h0+:13], {{t}}};	// matmul/matmul-hw.mlir:3208:19, :3209:12, :3210:12, :3211:12
  wire [13:0] _T_858 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3212:19, :3213:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3214:5
    if (rst)	// matmul/matmul-hw.mlir:3214:5
      _T_855 <= _T_858;	// matmul/matmul-hw.mlir:3217:7
    else	// matmul/matmul-hw.mlir:3214:5
      _T_855 <= _T_857;	// matmul/matmul-hw.mlir:3215:7
  end // always @(posedge)
  wire _T_859 = _T_855[4'hD];	// matmul/matmul-hw.mlir:3207:12, :3219:15, :3220:12
  assign _T_736 = _T_859 ? 1'h1 : _T_733;	// matmul/matmul-hw.mlir:1590:13, :3221:12, :3239:12
  assign _T_735 = _T_859 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3222:12
  assign _T_734 = _T_859 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2330:19, :2899:30, :3223:12
  wire [14:0] _T_861 = _T_860;	// matmul/matmul-hw.mlir:3225:12
  wire [14:0] _T_862 = {_T_861[4'h0+:14], {{t}}};	// matmul/matmul-hw.mlir:3226:19, :3227:12, :3228:12, :3229:12
  wire [14:0] _T_863 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3230:19, :3231:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3232:5
    if (rst)	// matmul/matmul-hw.mlir:3232:5
      _T_860 <= _T_863;	// matmul/matmul-hw.mlir:3235:7
    else	// matmul/matmul-hw.mlir:3232:5
      _T_860 <= _T_862;	// matmul/matmul-hw.mlir:3233:7
  end // always @(posedge)
  wire _T_864 = _T_860[4'hE];	// matmul/matmul-hw.mlir:3225:12, :3237:15, :3238:12
  assign _T_733 = _T_864 ? 1'h1 : _T_730;	// matmul/matmul-hw.mlir:1590:13, :3239:12, :3257:12
  assign _T_732 = _T_864 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3240:12
  assign _T_731 = _T_864 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2327:19, :2899:30, :3241:12
  wire [15:0] _T_866 = _T_865;	// matmul/matmul-hw.mlir:3243:12
  wire [15:0] _T_867 = {_T_866[4'h0+:15], {{t}}};	// matmul/matmul-hw.mlir:3244:19, :3245:12, :3246:12, :3247:12
  wire [15:0] _T_868 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3248:19, :3249:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3250:5
    if (rst)	// matmul/matmul-hw.mlir:3250:5
      _T_865 <= _T_868;	// matmul/matmul-hw.mlir:3253:7
    else	// matmul/matmul-hw.mlir:3250:5
      _T_865 <= _T_867;	// matmul/matmul-hw.mlir:3251:7
  end // always @(posedge)
  wire _T_869 = _T_865[4'hF];	// matmul/matmul-hw.mlir:3243:12, :3255:15, :3256:12
  assign _T_730 = _T_869 ? 1'h1 : _T_727;	// matmul/matmul-hw.mlir:1590:13, :3257:12, :3275:12
  assign _T_729 = _T_869 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3258:12
  assign _T_728 = _T_869 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2324:19, :2899:30, :3259:12
  wire [16:0] _T_871 = _T_870;	// matmul/matmul-hw.mlir:3261:12
  wire [16:0] _T_872 = {_T_871[5'h0+:16], {{t}}};	// matmul/matmul-hw.mlir:3262:14, :3263:12, :3264:12, :3265:12
  wire [16:0] _T_873 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3266:19, :3267:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3268:5
    if (rst)	// matmul/matmul-hw.mlir:3268:5
      _T_870 <= _T_873;	// matmul/matmul-hw.mlir:3271:7
    else	// matmul/matmul-hw.mlir:3268:5
      _T_870 <= _T_872;	// matmul/matmul-hw.mlir:3269:7
  end // always @(posedge)
  wire _T_874 = _T_870[5'h10];	// matmul/matmul-hw.mlir:3261:12, :3273:16, :3274:12
  assign _T_727 = _T_874 ? 1'h1 : _T_724;	// matmul/matmul-hw.mlir:1590:13, :3275:12, :3293:12
  assign _T_726 = _T_874 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3276:12
  assign _T_725 = _T_874 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2321:19, :2899:30, :3277:12
  wire [17:0] _T_876 = _T_875;	// matmul/matmul-hw.mlir:3279:12
  wire [17:0] _T_877 = {_T_876[5'h0+:17], {{t}}};	// matmul/matmul-hw.mlir:3280:19, :3281:12, :3282:12, :3283:12
  wire [17:0] _T_878 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3284:19, :3285:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3286:5
    if (rst)	// matmul/matmul-hw.mlir:3286:5
      _T_875 <= _T_878;	// matmul/matmul-hw.mlir:3289:7
    else	// matmul/matmul-hw.mlir:3286:5
      _T_875 <= _T_877;	// matmul/matmul-hw.mlir:3287:7
  end // always @(posedge)
  wire _T_879 = _T_875[5'h11];	// matmul/matmul-hw.mlir:3279:12, :3291:16, :3292:12
  assign _T_724 = _T_879 ? 1'h1 : _T_721;	// matmul/matmul-hw.mlir:1590:13, :3293:12, :3311:12
  assign _T_723 = _T_879 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3294:12
  assign _T_722 = _T_879 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2318:19, :2899:30, :3295:12
  wire [18:0] _T_881 = _T_880;	// matmul/matmul-hw.mlir:3297:12
  wire [18:0] _T_882 = {_T_881[5'h0+:18], {{t}}};	// matmul/matmul-hw.mlir:3298:19, :3299:12, :3300:12, :3301:12
  wire [18:0] _T_883 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3302:19, :3303:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3304:5
    if (rst)	// matmul/matmul-hw.mlir:3304:5
      _T_880 <= _T_883;	// matmul/matmul-hw.mlir:3307:7
    else	// matmul/matmul-hw.mlir:3304:5
      _T_880 <= _T_882;	// matmul/matmul-hw.mlir:3305:7
  end // always @(posedge)
  wire _T_884 = _T_880[5'h12];	// matmul/matmul-hw.mlir:3297:12, :3309:16, :3310:12
  assign _T_721 = _T_884 ? 1'h1 : _T_718;	// matmul/matmul-hw.mlir:1590:13, :3311:12, :3329:12
  assign _T_720 = _T_884 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3312:12
  assign _T_719 = _T_884 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2315:19, :2899:30, :3313:12
  wire [21:0] _T_886 = _T_885;	// matmul/matmul-hw.mlir:3315:12
  wire [21:0] _T_887 = {_T_886[5'h0+:21], {{t}}};	// matmul/matmul-hw.mlir:3316:19, :3317:12, :3318:12, :3319:12
  wire [21:0] _T_888 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3320:19, :3321:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3322:5
    if (rst)	// matmul/matmul-hw.mlir:3322:5
      _T_885 <= _T_888;	// matmul/matmul-hw.mlir:3325:7
    else	// matmul/matmul-hw.mlir:3322:5
      _T_885 <= _T_887;	// matmul/matmul-hw.mlir:3323:7
  end // always @(posedge)
  wire _T_889 = _T_885[5'h15];	// matmul/matmul-hw.mlir:3315:12, :3327:16, :3328:12
  assign _T_718 = _T_889 ? 1'h1 : _T_715;	// matmul/matmul-hw.mlir:1590:13, :3329:12, :3347:12
  assign _T_717 = _T_889 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3330:12
  assign _T_716 = _T_889 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2312:19, :2899:30, :3331:12
  wire [22:0] _T_891 = _T_890;	// matmul/matmul-hw.mlir:3333:12
  wire [22:0] _T_892 = {_T_891[5'h0+:22], {{t}}};	// matmul/matmul-hw.mlir:3334:19, :3335:12, :3336:12, :3337:12
  wire [22:0] _T_893 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3338:19, :3339:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3340:5
    if (rst)	// matmul/matmul-hw.mlir:3340:5
      _T_890 <= _T_893;	// matmul/matmul-hw.mlir:3343:7
    else	// matmul/matmul-hw.mlir:3340:5
      _T_890 <= _T_892;	// matmul/matmul-hw.mlir:3341:7
  end // always @(posedge)
  wire _T_894 = _T_890[5'h16];	// matmul/matmul-hw.mlir:3333:12, :3345:16, :3346:12
  assign _T_715 = _T_894 ? 1'h1 : _T_712;	// matmul/matmul-hw.mlir:1590:13, :3347:12, :3365:12
  assign _T_714 = _T_894 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3348:12
  assign _T_713 = _T_894 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2309:19, :2899:30, :3349:12
  wire [23:0] _T_896 = _T_895;	// matmul/matmul-hw.mlir:3351:12
  wire [23:0] _T_897 = {_T_896[5'h0+:23], {{t}}};	// matmul/matmul-hw.mlir:3352:19, :3353:12, :3354:12, :3355:12
  wire [23:0] _T_898 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3356:19, :3357:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3358:5
    if (rst)	// matmul/matmul-hw.mlir:3358:5
      _T_895 <= _T_898;	// matmul/matmul-hw.mlir:3361:7
    else	// matmul/matmul-hw.mlir:3358:5
      _T_895 <= _T_897;	// matmul/matmul-hw.mlir:3359:7
  end // always @(posedge)
  wire _T_899 = _T_895[5'h17];	// matmul/matmul-hw.mlir:3351:12, :3363:15, :3364:12
  assign _T_712 = _T_899 ? 1'h1 : _T_709;	// matmul/matmul-hw.mlir:1590:13, :3365:12, :3383:12
  assign _T_711 = _T_899 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3366:12
  assign _T_710 = _T_899 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2306:19, :2899:30, :3367:12
  wire [24:0] _T_901 = _T_900;	// matmul/matmul-hw.mlir:3369:12
  wire [24:0] _T_902 = {_T_901[5'h0+:24], {{t}}};	// matmul/matmul-hw.mlir:3370:19, :3371:12, :3372:12, :3373:12
  wire [24:0] _T_903 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3374:19, :3375:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3376:5
    if (rst)	// matmul/matmul-hw.mlir:3376:5
      _T_900 <= _T_903;	// matmul/matmul-hw.mlir:3379:7
    else	// matmul/matmul-hw.mlir:3376:5
      _T_900 <= _T_902;	// matmul/matmul-hw.mlir:3377:7
  end // always @(posedge)
  wire _T_904 = _T_900[5'h18];	// matmul/matmul-hw.mlir:3369:12, :3381:15, :3382:12
  assign _T_709 = _T_904 ? 1'h1 : _T_706;	// matmul/matmul-hw.mlir:1590:13, :3383:12, :3401:12
  assign _T_708 = _T_904 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3384:12
  assign _T_707 = _T_904 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2303:19, :2899:30, :3385:12
  wire [25:0] _T_906 = _T_905;	// matmul/matmul-hw.mlir:3387:12
  wire [25:0] _T_907 = {_T_906[5'h0+:25], {{t}}};	// matmul/matmul-hw.mlir:3388:19, :3389:12, :3390:12, :3391:12
  wire [25:0] _T_908 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3392:19, :3393:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3394:5
    if (rst)	// matmul/matmul-hw.mlir:3394:5
      _T_905 <= _T_908;	// matmul/matmul-hw.mlir:3397:7
    else	// matmul/matmul-hw.mlir:3394:5
      _T_905 <= _T_907;	// matmul/matmul-hw.mlir:3395:7
  end // always @(posedge)
  wire _T_909 = _T_905[5'h19];	// matmul/matmul-hw.mlir:3387:12, :3399:15, :3400:12
  assign _T_706 = _T_909 ? 1'h1 : _T_703;	// matmul/matmul-hw.mlir:1590:13, :3401:12, :3419:12
  assign _T_705 = _T_909 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3402:12
  assign _T_704 = _T_909 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2300:19, :2899:30, :3403:12
  wire [26:0] _T_911 = _T_910;	// matmul/matmul-hw.mlir:3405:12
  wire [26:0] _T_912 = {_T_911[5'h0+:26], {{t}}};	// matmul/matmul-hw.mlir:3406:19, :3407:12, :3408:12, :3409:12
  wire [26:0] _T_913 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3410:19, :3411:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3412:5
    if (rst)	// matmul/matmul-hw.mlir:3412:5
      _T_910 <= _T_913;	// matmul/matmul-hw.mlir:3415:7
    else	// matmul/matmul-hw.mlir:3412:5
      _T_910 <= _T_912;	// matmul/matmul-hw.mlir:3413:7
  end // always @(posedge)
  wire _T_914 = _T_910[5'h1A];	// matmul/matmul-hw.mlir:3405:12, :3417:15, :3418:12
  assign _T_703 = _T_914 ? 1'h1 : _T_700;	// matmul/matmul-hw.mlir:1590:13, :3419:12, :3437:12
  assign _T_702 = _T_914 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3420:12
  assign _T_701 = _T_914 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2297:19, :2899:30, :3421:12
  wire [27:0] _T_916 = _T_915;	// matmul/matmul-hw.mlir:3423:12
  wire [27:0] _T_917 = {_T_916[5'h0+:27], {{t}}};	// matmul/matmul-hw.mlir:3424:19, :3425:12, :3426:12, :3427:12
  wire [27:0] _T_918 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3428:19, :3429:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3430:5
    if (rst)	// matmul/matmul-hw.mlir:3430:5
      _T_915 <= _T_918;	// matmul/matmul-hw.mlir:3433:7
    else	// matmul/matmul-hw.mlir:3430:5
      _T_915 <= _T_917;	// matmul/matmul-hw.mlir:3431:7
  end // always @(posedge)
  wire _T_919 = _T_915[5'h1B];	// matmul/matmul-hw.mlir:3423:12, :3435:15, :3436:12
  assign _T_700 = _T_919 ? 1'h1 : _T_697;	// matmul/matmul-hw.mlir:1590:13, :3437:12, :3455:12
  assign _T_699 = _T_919 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3438:12
  assign _T_698 = _T_919 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2294:19, :2899:30, :3439:12
  wire [28:0] _T_921 = _T_920;	// matmul/matmul-hw.mlir:3441:12
  wire [28:0] _T_922 = {_T_921[5'h0+:28], {{t}}};	// matmul/matmul-hw.mlir:3442:19, :3443:12, :3444:12, :3445:12
  wire [28:0] _T_923 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3446:19, :3447:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3448:5
    if (rst)	// matmul/matmul-hw.mlir:3448:5
      _T_920 <= _T_923;	// matmul/matmul-hw.mlir:3451:7
    else	// matmul/matmul-hw.mlir:3448:5
      _T_920 <= _T_922;	// matmul/matmul-hw.mlir:3449:7
  end // always @(posedge)
  wire _T_924 = _T_920[5'h1C];	// matmul/matmul-hw.mlir:3441:12, :3453:15, :3454:12
  assign _T_697 = _T_924 ? 1'h1 : _T_694;	// matmul/matmul-hw.mlir:1590:13, :3455:12, :3473:12
  assign _T_696 = _T_924 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3456:12
  assign _T_695 = _T_924 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2291:19, :2899:30, :3457:12
  wire [29:0] _T_926 = _T_925;	// matmul/matmul-hw.mlir:3459:12
  wire [29:0] _T_927 = {_T_926[5'h0+:29], {{t}}};	// matmul/matmul-hw.mlir:3460:19, :3461:12, :3462:12, :3463:12
  wire [29:0] _T_928 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3464:19, :3465:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3466:5
    if (rst)	// matmul/matmul-hw.mlir:3466:5
      _T_925 <= _T_928;	// matmul/matmul-hw.mlir:3469:7
    else	// matmul/matmul-hw.mlir:3466:5
      _T_925 <= _T_927;	// matmul/matmul-hw.mlir:3467:7
  end // always @(posedge)
  wire _T_929 = _T_925[5'h1D];	// matmul/matmul-hw.mlir:3459:12, :3471:15, :3472:12
  assign _T_694 = _T_929 ? 1'h1 : _T_691;	// matmul/matmul-hw.mlir:1590:13, :3473:12, :3491:12
  assign _T_693 = _T_929 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3474:12
  assign _T_692 = _T_929 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2288:19, :2899:30, :3475:12
  wire [30:0] _T_931 = _T_930;	// matmul/matmul-hw.mlir:3477:12
  wire [30:0] _T_932 = {_T_931[5'h0+:30], {{t}}};	// matmul/matmul-hw.mlir:3478:19, :3479:12, :3480:12, :3481:12
  wire [30:0] _T_933 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3482:19, :3483:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3484:5
    if (rst)	// matmul/matmul-hw.mlir:3484:5
      _T_930 <= _T_933;	// matmul/matmul-hw.mlir:3487:7
    else	// matmul/matmul-hw.mlir:3484:5
      _T_930 <= _T_932;	// matmul/matmul-hw.mlir:3485:7
  end // always @(posedge)
  wire _T_934 = _T_930[5'h1E];	// matmul/matmul-hw.mlir:3477:12, :3489:15, :3490:12
  assign _T_691 = _T_934 ? 1'h1 : _T_688;	// matmul/matmul-hw.mlir:1590:13, :3491:12, :3509:12
  assign _T_690 = _T_934 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3492:12
  assign _T_689 = _T_934 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2285:19, :2899:30, :3493:12
  wire [31:0] _T_936 = _T_935;	// matmul/matmul-hw.mlir:3495:12
  wire [31:0] _T_937 = {_T_936[5'h0+:31], {{t}}};	// matmul/matmul-hw.mlir:3496:19, :3497:12, :3498:12, :3499:12
  wire [31:0] _T_938 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3500:19, :3501:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3502:5
    if (rst)	// matmul/matmul-hw.mlir:3502:5
      _T_935 <= _T_938;	// matmul/matmul-hw.mlir:3505:7
    else	// matmul/matmul-hw.mlir:3502:5
      _T_935 <= _T_937;	// matmul/matmul-hw.mlir:3503:7
  end // always @(posedge)
  wire _T_939 = _T_935[5'h1F];	// matmul/matmul-hw.mlir:3495:12, :3507:15, :3508:12
  assign _T_688 = _T_939 ? 1'h1 : _T_685;	// matmul/matmul-hw.mlir:1590:13, :3509:12, :3527:12
  assign _T_687 = _T_939 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3510:12
  assign _T_686 = _T_939 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2282:19, :2899:30, :3511:12
  wire [32:0] _T_941 = _T_940;	// matmul/matmul-hw.mlir:3513:12
  wire [32:0] _T_942 = {_T_941[6'h0+:32], {{t}}};	// matmul/matmul-hw.mlir:3514:19, :3515:12, :3516:12, :3517:12
  wire [32:0] _T_943 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3518:19, :3519:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3520:5
    if (rst)	// matmul/matmul-hw.mlir:3520:5
      _T_940 <= _T_943;	// matmul/matmul-hw.mlir:3523:7
    else	// matmul/matmul-hw.mlir:3520:5
      _T_940 <= _T_942;	// matmul/matmul-hw.mlir:3521:7
  end // always @(posedge)
  wire _T_944 = _T_940[6'h20];	// matmul/matmul-hw.mlir:3513:12, :3525:16, :3526:12
  assign _T_685 = _T_944 ? 1'h1 : _T_682;	// matmul/matmul-hw.mlir:1590:13, :3527:12, :3545:12
  assign _T_684 = _T_944 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3528:12
  assign _T_683 = _T_944 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2279:19, :2899:30, :3529:12
  wire [33:0] _T_946 = _T_945;	// matmul/matmul-hw.mlir:3531:12
  wire [33:0] _T_947 = {_T_946[6'h0+:33], {{t}}};	// matmul/matmul-hw.mlir:3532:19, :3533:12, :3534:12, :3535:12
  wire [33:0] _T_948 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3536:19, :3537:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3538:5
    if (rst)	// matmul/matmul-hw.mlir:3538:5
      _T_945 <= _T_948;	// matmul/matmul-hw.mlir:3541:7
    else	// matmul/matmul-hw.mlir:3538:5
      _T_945 <= _T_947;	// matmul/matmul-hw.mlir:3539:7
  end // always @(posedge)
  wire _T_949 = _T_945[6'h21];	// matmul/matmul-hw.mlir:3531:12, :3543:16, :3544:12
  assign _T_682 = _T_949 ? 1'h1 : _T_679;	// matmul/matmul-hw.mlir:1590:13, :3545:12, :3563:12
  assign _T_681 = _T_949 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3546:12
  assign _T_680 = _T_949 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2276:19, :2899:30, :3547:12
  wire [34:0] _T_951 = _T_950;	// matmul/matmul-hw.mlir:3549:12
  wire [34:0] _T_952 = {_T_951[6'h0+:34], {{t}}};	// matmul/matmul-hw.mlir:3550:19, :3551:12, :3552:12, :3553:12
  wire [34:0] _T_953 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3554:19, :3555:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3556:5
    if (rst)	// matmul/matmul-hw.mlir:3556:5
      _T_950 <= _T_953;	// matmul/matmul-hw.mlir:3559:7
    else	// matmul/matmul-hw.mlir:3556:5
      _T_950 <= _T_952;	// matmul/matmul-hw.mlir:3557:7
  end // always @(posedge)
  wire _T_954 = _T_950[6'h22];	// matmul/matmul-hw.mlir:3549:12, :3561:16, :3562:12
  assign _T_679 = _T_954 ? 1'h1 : _T_676;	// matmul/matmul-hw.mlir:1590:13, :3563:12, :3581:12
  assign _T_678 = _T_954 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3564:12
  assign _T_677 = _T_954 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2273:19, :2899:30, :3565:12
  wire [35:0] _T_956 = _T_955;	// matmul/matmul-hw.mlir:3567:12
  wire [35:0] _T_957 = {_T_956[6'h0+:35], {{t}}};	// matmul/matmul-hw.mlir:3568:19, :3569:12, :3570:12, :3571:12
  wire [35:0] _T_958 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3572:19, :3573:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3574:5
    if (rst)	// matmul/matmul-hw.mlir:3574:5
      _T_955 <= _T_958;	// matmul/matmul-hw.mlir:3577:7
    else	// matmul/matmul-hw.mlir:3574:5
      _T_955 <= _T_957;	// matmul/matmul-hw.mlir:3575:7
  end // always @(posedge)
  wire _T_959 = _T_955[6'h23];	// matmul/matmul-hw.mlir:3567:12, :3579:16, :3580:12
  assign _T_676 = _T_959 ? 1'h1 : _T_673;	// matmul/matmul-hw.mlir:1590:13, :3581:12, :3599:12
  assign _T_675 = _T_959 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3582:12
  assign _T_674 = _T_959 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2270:19, :2899:30, :3583:12
  wire [36:0] _T_961 = _T_960;	// matmul/matmul-hw.mlir:3585:12
  wire [36:0] _T_962 = {_T_961[6'h0+:36], {{t}}};	// matmul/matmul-hw.mlir:3586:19, :3587:12, :3588:12, :3589:12
  wire [36:0] _T_963 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3590:19, :3591:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3592:5
    if (rst)	// matmul/matmul-hw.mlir:3592:5
      _T_960 <= _T_963;	// matmul/matmul-hw.mlir:3595:7
    else	// matmul/matmul-hw.mlir:3592:5
      _T_960 <= _T_962;	// matmul/matmul-hw.mlir:3593:7
  end // always @(posedge)
  wire _T_964 = _T_960[6'h24];	// matmul/matmul-hw.mlir:3585:12, :3597:16, :3598:12
  assign _T_673 = _T_964 ? 1'h1 : _T_670;	// matmul/matmul-hw.mlir:1590:13, :3599:12, :3617:12
  assign _T_672 = _T_964 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3600:12
  assign _T_671 = _T_964 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2267:19, :2899:30, :3601:12
  wire [39:0] _T_966 = _T_965;	// matmul/matmul-hw.mlir:3603:12
  wire [39:0] _T_967 = {_T_966[6'h0+:39], {{t}}};	// matmul/matmul-hw.mlir:3604:19, :3605:12, :3606:12, :3607:12
  wire [39:0] _T_968 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3608:19, :3609:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3610:5
    if (rst)	// matmul/matmul-hw.mlir:3610:5
      _T_965 <= _T_968;	// matmul/matmul-hw.mlir:3613:7
    else	// matmul/matmul-hw.mlir:3610:5
      _T_965 <= _T_967;	// matmul/matmul-hw.mlir:3611:7
  end // always @(posedge)
  wire _T_969 = _T_965[6'h27];	// matmul/matmul-hw.mlir:3603:12, :3615:16, :3616:12
  assign _T_670 = _T_969 ? 1'h1 : _T_667;	// matmul/matmul-hw.mlir:1590:13, :3617:12, :3635:12
  assign _T_669 = _T_969 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3618:12
  assign _T_668 = _T_969 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2264:19, :2899:30, :3619:12
  wire [40:0] _T_971 = _T_970;	// matmul/matmul-hw.mlir:3621:12
  wire [40:0] _T_972 = {_T_971[6'h0+:40], {{t}}};	// matmul/matmul-hw.mlir:3622:19, :3623:12, :3624:12, :3625:12
  wire [40:0] _T_973 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3626:19, :3627:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3628:5
    if (rst)	// matmul/matmul-hw.mlir:3628:5
      _T_970 <= _T_973;	// matmul/matmul-hw.mlir:3631:7
    else	// matmul/matmul-hw.mlir:3628:5
      _T_970 <= _T_972;	// matmul/matmul-hw.mlir:3629:7
  end // always @(posedge)
  wire _T_974 = _T_970[6'h28];	// matmul/matmul-hw.mlir:3621:12, :3633:16, :3634:12
  assign _T_667 = _T_974 ? 1'h1 : _T_664;	// matmul/matmul-hw.mlir:1590:13, :3635:12, :3653:12
  assign _T_666 = _T_974 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3636:12
  assign _T_665 = _T_974 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2261:19, :2899:30, :3637:12
  wire [41:0] _T_976 = _T_975;	// matmul/matmul-hw.mlir:3639:12
  wire [41:0] _T_977 = {_T_976[6'h0+:41], {{t}}};	// matmul/matmul-hw.mlir:3640:19, :3641:12, :3642:12, :3643:12
  wire [41:0] _T_978 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3644:19, :3645:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3646:5
    if (rst)	// matmul/matmul-hw.mlir:3646:5
      _T_975 <= _T_978;	// matmul/matmul-hw.mlir:3649:7
    else	// matmul/matmul-hw.mlir:3646:5
      _T_975 <= _T_977;	// matmul/matmul-hw.mlir:3647:7
  end // always @(posedge)
  wire _T_979 = _T_975[6'h29];	// matmul/matmul-hw.mlir:3639:12, :3651:16, :3652:12
  assign _T_664 = _T_979 ? 1'h1 : _T_661;	// matmul/matmul-hw.mlir:1590:13, :3653:12, :3671:12
  assign _T_663 = _T_979 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3654:12
  assign _T_662 = _T_979 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2258:19, :2899:30, :3655:12
  wire [42:0] _T_981 = _T_980;	// matmul/matmul-hw.mlir:3657:12
  wire [42:0] _T_982 = {_T_981[6'h0+:42], {{t}}};	// matmul/matmul-hw.mlir:3658:19, :3659:12, :3660:12, :3661:12
  wire [42:0] _T_983 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3662:19, :3663:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3664:5
    if (rst)	// matmul/matmul-hw.mlir:3664:5
      _T_980 <= _T_983;	// matmul/matmul-hw.mlir:3667:7
    else	// matmul/matmul-hw.mlir:3664:5
      _T_980 <= _T_982;	// matmul/matmul-hw.mlir:3665:7
  end // always @(posedge)
  wire _T_984 = _T_980[6'h2A];	// matmul/matmul-hw.mlir:3657:12, :3669:16, :3670:12
  assign _T_661 = _T_984 ? 1'h1 : _T_658;	// matmul/matmul-hw.mlir:1590:13, :3671:12, :3689:12
  assign _T_660 = _T_984 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3672:12
  assign _T_659 = _T_984 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2255:19, :2899:30, :3673:12
  wire [43:0] _T_986 = _T_985;	// matmul/matmul-hw.mlir:3675:12
  wire [43:0] _T_987 = {_T_986[6'h0+:43], {{t}}};	// matmul/matmul-hw.mlir:3676:19, :3677:12, :3678:12, :3679:12
  wire [43:0] _T_988 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3680:19, :3681:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3682:5
    if (rst)	// matmul/matmul-hw.mlir:3682:5
      _T_985 <= _T_988;	// matmul/matmul-hw.mlir:3685:7
    else	// matmul/matmul-hw.mlir:3682:5
      _T_985 <= _T_987;	// matmul/matmul-hw.mlir:3683:7
  end // always @(posedge)
  wire _T_989 = _T_985[6'h2B];	// matmul/matmul-hw.mlir:3675:12, :3687:16, :3688:12
  assign _T_658 = _T_989 ? 1'h1 : _T_655;	// matmul/matmul-hw.mlir:1590:13, :3689:12, :3707:12
  assign _T_657 = _T_989 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3690:12
  assign _T_656 = _T_989 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2252:19, :2899:30, :3691:12
  wire [44:0] _T_991 = _T_990;	// matmul/matmul-hw.mlir:3693:12
  wire [44:0] _T_992 = {_T_991[6'h0+:44], {{t}}};	// matmul/matmul-hw.mlir:3694:19, :3695:12, :3696:12, :3697:12
  wire [44:0] _T_993 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3698:19, :3699:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3700:5
    if (rst)	// matmul/matmul-hw.mlir:3700:5
      _T_990 <= _T_993;	// matmul/matmul-hw.mlir:3703:7
    else	// matmul/matmul-hw.mlir:3700:5
      _T_990 <= _T_992;	// matmul/matmul-hw.mlir:3701:7
  end // always @(posedge)
  wire _T_994 = _T_990[6'h2C];	// matmul/matmul-hw.mlir:3693:12, :3705:16, :3706:12
  assign _T_655 = _T_994 ? 1'h1 : _T_652;	// matmul/matmul-hw.mlir:1590:13, :3707:12, :3725:12
  assign _T_654 = _T_994 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3708:12
  assign _T_653 = _T_994 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2249:19, :2899:30, :3709:12
  wire [45:0] _T_996 = _T_995;	// matmul/matmul-hw.mlir:3711:12
  wire [45:0] _T_997 = {_T_996[6'h0+:45], {{t}}};	// matmul/matmul-hw.mlir:3712:19, :3713:12, :3714:12, :3715:12
  wire [45:0] _T_998 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3716:19, :3717:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3718:5
    if (rst)	// matmul/matmul-hw.mlir:3718:5
      _T_995 <= _T_998;	// matmul/matmul-hw.mlir:3721:7
    else	// matmul/matmul-hw.mlir:3718:5
      _T_995 <= _T_997;	// matmul/matmul-hw.mlir:3719:7
  end // always @(posedge)
  wire _T_999 = _T_995[6'h2D];	// matmul/matmul-hw.mlir:3711:12, :3723:16, :3724:12
  assign _T_652 = _T_999 ? 1'h1 : _T_649;	// matmul/matmul-hw.mlir:1590:13, :3725:12, :3743:12
  assign _T_651 = _T_999 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3726:12
  assign _T_650 = _T_999 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2246:19, :2899:30, :3727:12
  wire [46:0] _T_1001 = _T_1000;	// matmul/matmul-hw.mlir:3729:12
  wire [46:0] _T_1002 = {_T_1001[6'h0+:46], {{t}}};	// matmul/matmul-hw.mlir:3730:19, :3731:12, :3732:12, :3733:12
  wire [46:0] _T_1003 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3734:19, :3735:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3736:5
    if (rst)	// matmul/matmul-hw.mlir:3736:5
      _T_1000 <= _T_1003;	// matmul/matmul-hw.mlir:3739:7
    else	// matmul/matmul-hw.mlir:3736:5
      _T_1000 <= _T_1002;	// matmul/matmul-hw.mlir:3737:7
  end // always @(posedge)
  wire _T_1004 = _T_1000[6'h2E];	// matmul/matmul-hw.mlir:3729:12, :3741:16, :3742:12
  assign _T_649 = _T_1004 ? 1'h1 : _T_646;	// matmul/matmul-hw.mlir:1590:13, :3743:12, :3761:12
  assign _T_648 = _T_1004 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3744:12
  assign _T_647 = _T_1004 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2243:19, :2899:30, :3745:12
  wire [47:0] _T_1006 = _T_1005;	// matmul/matmul-hw.mlir:3747:12
  wire [47:0] _T_1007 = {_T_1006[6'h0+:47], {{t}}};	// matmul/matmul-hw.mlir:3748:19, :3749:12, :3750:12, :3751:12
  wire [47:0] _T_1008 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3752:19, :3753:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3754:5
    if (rst)	// matmul/matmul-hw.mlir:3754:5
      _T_1005 <= _T_1008;	// matmul/matmul-hw.mlir:3757:7
    else	// matmul/matmul-hw.mlir:3754:5
      _T_1005 <= _T_1007;	// matmul/matmul-hw.mlir:3755:7
  end // always @(posedge)
  wire _T_1009 = _T_1005[6'h2F];	// matmul/matmul-hw.mlir:3747:12, :3759:16, :3760:12
  assign _T_646 = _T_1009 ? 1'h1 : _T_643;	// matmul/matmul-hw.mlir:1590:13, :3761:12, :3779:12
  assign _T_645 = _T_1009 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3762:12
  assign _T_644 = _T_1009 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2240:19, :2899:30, :3763:12
  wire [48:0] _T_1011 = _T_1010;	// matmul/matmul-hw.mlir:3765:12
  wire [48:0] _T_1012 = {_T_1011[6'h0+:48], {{t}}};	// matmul/matmul-hw.mlir:3766:19, :3767:12, :3768:12, :3769:12
  wire [48:0] _T_1013 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3770:19, :3771:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3772:5
    if (rst)	// matmul/matmul-hw.mlir:3772:5
      _T_1010 <= _T_1013;	// matmul/matmul-hw.mlir:3775:7
    else	// matmul/matmul-hw.mlir:3772:5
      _T_1010 <= _T_1012;	// matmul/matmul-hw.mlir:3773:7
  end // always @(posedge)
  wire _T_1014 = _T_1010[6'h30];	// matmul/matmul-hw.mlir:3765:12, :3777:16, :3778:12
  assign _T_643 = _T_1014 ? 1'h1 : _T_640;	// matmul/matmul-hw.mlir:1590:13, :3779:12, :3797:12
  assign _T_642 = _T_1014 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3780:12
  assign _T_641 = _T_1014 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2237:19, :2899:30, :3781:12
  wire [49:0] _T_1016 = _T_1015;	// matmul/matmul-hw.mlir:3783:12
  wire [49:0] _T_1017 = {_T_1016[6'h0+:49], {{t}}};	// matmul/matmul-hw.mlir:3784:19, :3785:12, :3786:12, :3787:12
  wire [49:0] _T_1018 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3788:19, :3789:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3790:5
    if (rst)	// matmul/matmul-hw.mlir:3790:5
      _T_1015 <= _T_1018;	// matmul/matmul-hw.mlir:3793:7
    else	// matmul/matmul-hw.mlir:3790:5
      _T_1015 <= _T_1017;	// matmul/matmul-hw.mlir:3791:7
  end // always @(posedge)
  wire _T_1019 = _T_1015[6'h31];	// matmul/matmul-hw.mlir:3783:12, :3795:16, :3796:12
  assign _T_640 = _T_1019 ? 1'h1 : _T_637;	// matmul/matmul-hw.mlir:1590:13, :3797:12, :3815:12
  assign _T_639 = _T_1019 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3798:12
  assign _T_638 = _T_1019 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2234:19, :2899:30, :3799:12
  wire [50:0] _T_1021 = _T_1020;	// matmul/matmul-hw.mlir:3801:12
  wire [50:0] _T_1022 = {_T_1021[6'h0+:50], {{t}}};	// matmul/matmul-hw.mlir:3802:19, :3803:12, :3804:12, :3805:12
  wire [50:0] _T_1023 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3806:19, :3807:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3808:5
    if (rst)	// matmul/matmul-hw.mlir:3808:5
      _T_1020 <= _T_1023;	// matmul/matmul-hw.mlir:3811:7
    else	// matmul/matmul-hw.mlir:3808:5
      _T_1020 <= _T_1022;	// matmul/matmul-hw.mlir:3809:7
  end // always @(posedge)
  wire _T_1024 = _T_1020[6'h32];	// matmul/matmul-hw.mlir:3801:12, :3813:16, :3814:12
  assign _T_637 = _T_1024 ? 1'h1 : _T_634;	// matmul/matmul-hw.mlir:1590:13, :3815:12, :3833:12
  assign _T_636 = _T_1024 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3816:12
  assign _T_635 = _T_1024 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2231:19, :2899:30, :3817:12
  wire [51:0] _T_1026 = _T_1025;	// matmul/matmul-hw.mlir:3819:12
  wire [51:0] _T_1027 = {_T_1026[6'h0+:51], {{t}}};	// matmul/matmul-hw.mlir:3820:19, :3821:12, :3822:12, :3823:12
  wire [51:0] _T_1028 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3824:19, :3825:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3826:5
    if (rst)	// matmul/matmul-hw.mlir:3826:5
      _T_1025 <= _T_1028;	// matmul/matmul-hw.mlir:3829:7
    else	// matmul/matmul-hw.mlir:3826:5
      _T_1025 <= _T_1027;	// matmul/matmul-hw.mlir:3827:7
  end // always @(posedge)
  wire _T_1029 = _T_1025[6'h33];	// matmul/matmul-hw.mlir:3819:12, :3831:16, :3832:12
  assign _T_634 = _T_1029 ? 1'h1 : _T_631;	// matmul/matmul-hw.mlir:1590:13, :3833:12, :3851:12
  assign _T_633 = _T_1029 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3834:12
  assign _T_632 = _T_1029 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2228:19, :2899:30, :3835:12
  wire [52:0] _T_1031 = _T_1030;	// matmul/matmul-hw.mlir:3837:12
  wire [52:0] _T_1032 = {_T_1031[6'h0+:52], {{t}}};	// matmul/matmul-hw.mlir:3838:19, :3839:12, :3840:12, :3841:12
  wire [52:0] _T_1033 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3842:19, :3843:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3844:5
    if (rst)	// matmul/matmul-hw.mlir:3844:5
      _T_1030 <= _T_1033;	// matmul/matmul-hw.mlir:3847:7
    else	// matmul/matmul-hw.mlir:3844:5
      _T_1030 <= _T_1032;	// matmul/matmul-hw.mlir:3845:7
  end // always @(posedge)
  wire _T_1034 = _T_1030[6'h34];	// matmul/matmul-hw.mlir:3837:12, :3849:16, :3850:12
  assign _T_631 = _T_1034 ? 1'h1 : _T_628;	// matmul/matmul-hw.mlir:1590:13, :3851:12, :3869:12
  assign _T_630 = _T_1034 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3852:12
  assign _T_629 = _T_1034 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2225:19, :2899:30, :3853:12
  wire [53:0] _T_1036 = _T_1035;	// matmul/matmul-hw.mlir:3855:12
  wire [53:0] _T_1037 = {_T_1036[6'h0+:53], {{t}}};	// matmul/matmul-hw.mlir:3856:19, :3857:12, :3858:12, :3859:12
  wire [53:0] _T_1038 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3860:19, :3861:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3862:5
    if (rst)	// matmul/matmul-hw.mlir:3862:5
      _T_1035 <= _T_1038;	// matmul/matmul-hw.mlir:3865:7
    else	// matmul/matmul-hw.mlir:3862:5
      _T_1035 <= _T_1037;	// matmul/matmul-hw.mlir:3863:7
  end // always @(posedge)
  wire _T_1039 = _T_1035[6'h35];	// matmul/matmul-hw.mlir:3855:12, :3867:16, :3868:12
  assign _T_628 = _T_1039 ? 1'h1 : _T_625;	// matmul/matmul-hw.mlir:1590:13, :3869:12, :3887:12
  assign _T_627 = _T_1039 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3870:12
  assign _T_626 = _T_1039 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2222:19, :2899:30, :3871:12
  wire [54:0] _T_1041 = _T_1040;	// matmul/matmul-hw.mlir:3873:12
  wire [54:0] _T_1042 = {_T_1041[6'h0+:54], {{t}}};	// matmul/matmul-hw.mlir:3874:19, :3875:12, :3876:12, :3877:12
  wire [54:0] _T_1043 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3878:19, :3879:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3880:5
    if (rst)	// matmul/matmul-hw.mlir:3880:5
      _T_1040 <= _T_1043;	// matmul/matmul-hw.mlir:3883:7
    else	// matmul/matmul-hw.mlir:3880:5
      _T_1040 <= _T_1042;	// matmul/matmul-hw.mlir:3881:7
  end // always @(posedge)
  wire _T_1044 = _T_1040[6'h36];	// matmul/matmul-hw.mlir:3873:12, :3885:16, :3886:12
  assign _T_625 = _T_1044 ? 1'h1 : _T_622;	// matmul/matmul-hw.mlir:1590:13, :3887:12, :3905:12
  assign _T_624 = _T_1044 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3888:12
  assign _T_623 = _T_1044 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2219:19, :2899:30, :3889:12
  wire [57:0] _T_1046 = _T_1045;	// matmul/matmul-hw.mlir:3891:12
  wire [57:0] _T_1047 = {_T_1046[6'h0+:57], {{t}}};	// matmul/matmul-hw.mlir:3892:19, :3893:12, :3894:12, :3895:12
  wire [57:0] _T_1048 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3896:19, :3897:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3898:5
    if (rst)	// matmul/matmul-hw.mlir:3898:5
      _T_1045 <= _T_1048;	// matmul/matmul-hw.mlir:3901:7
    else	// matmul/matmul-hw.mlir:3898:5
      _T_1045 <= _T_1047;	// matmul/matmul-hw.mlir:3899:7
  end // always @(posedge)
  wire _T_1049 = _T_1045[6'h39];	// matmul/matmul-hw.mlir:3891:12, :3903:15, :3904:12
  assign _T_622 = _T_1049 ? 1'h1 : _T_619;	// matmul/matmul-hw.mlir:1590:13, :3905:12, :3923:12
  assign _T_621 = _T_1049 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3906:12
  assign _T_620 = _T_1049 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2216:19, :2899:30, :3907:12
  wire [58:0] _T_1051 = _T_1050;	// matmul/matmul-hw.mlir:3909:12
  wire [58:0] _T_1052 = {_T_1051[6'h0+:58], {{t}}};	// matmul/matmul-hw.mlir:3910:19, :3911:12, :3912:12, :3913:12
  wire [58:0] _T_1053 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3914:19, :3915:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3916:5
    if (rst)	// matmul/matmul-hw.mlir:3916:5
      _T_1050 <= _T_1053;	// matmul/matmul-hw.mlir:3919:7
    else	// matmul/matmul-hw.mlir:3916:5
      _T_1050 <= _T_1052;	// matmul/matmul-hw.mlir:3917:7
  end // always @(posedge)
  wire _T_1054 = _T_1050[6'h3A];	// matmul/matmul-hw.mlir:3909:12, :3921:15, :3922:12
  assign _T_619 = _T_1054 ? 1'h1 : _T_616;	// matmul/matmul-hw.mlir:1590:13, :3923:12, :3941:12
  assign _T_618 = _T_1054 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3924:12
  assign _T_617 = _T_1054 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2213:19, :2899:30, :3925:12
  wire [59:0] _T_1056 = _T_1055;	// matmul/matmul-hw.mlir:3927:12
  wire [59:0] _T_1057 = {_T_1056[6'h0+:59], {{t}}};	// matmul/matmul-hw.mlir:3928:19, :3929:12, :3930:12, :3931:12
  wire [59:0] _T_1058 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3932:19, :3933:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3934:5
    if (rst)	// matmul/matmul-hw.mlir:3934:5
      _T_1055 <= _T_1058;	// matmul/matmul-hw.mlir:3937:7
    else	// matmul/matmul-hw.mlir:3934:5
      _T_1055 <= _T_1057;	// matmul/matmul-hw.mlir:3935:7
  end // always @(posedge)
  wire _T_1059 = _T_1055[6'h3B];	// matmul/matmul-hw.mlir:3927:12, :3939:15, :3940:12
  assign _T_616 = _T_1059 ? 1'h1 : _T_613;	// matmul/matmul-hw.mlir:1590:13, :3941:12, :3959:12
  assign _T_615 = _T_1059 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3942:12
  assign _T_614 = _T_1059 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2210:19, :2899:30, :3943:12
  wire [60:0] _T_1061 = _T_1060;	// matmul/matmul-hw.mlir:3945:12
  wire [60:0] _T_1062 = {_T_1061[6'h0+:60], {{t}}};	// matmul/matmul-hw.mlir:3946:19, :3947:12, :3948:12, :3949:12
  wire [60:0] _T_1063 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3950:19, :3951:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3952:5
    if (rst)	// matmul/matmul-hw.mlir:3952:5
      _T_1060 <= _T_1063;	// matmul/matmul-hw.mlir:3955:7
    else	// matmul/matmul-hw.mlir:3952:5
      _T_1060 <= _T_1062;	// matmul/matmul-hw.mlir:3953:7
  end // always @(posedge)
  wire _T_1064 = _T_1060[6'h3C];	// matmul/matmul-hw.mlir:3945:12, :3957:15, :3958:12
  assign _T_613 = _T_1064 ? 1'h1 : _T_610;	// matmul/matmul-hw.mlir:1590:13, :3959:12, :3977:12
  assign _T_612 = _T_1064 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3960:12
  assign _T_611 = _T_1064 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2207:19, :2899:30, :3961:12
  wire [61:0] _T_1066 = _T_1065;	// matmul/matmul-hw.mlir:3963:12
  wire [61:0] _T_1067 = {_T_1066[6'h0+:61], {{t}}};	// matmul/matmul-hw.mlir:3964:19, :3965:12, :3966:12, :3967:12
  wire [61:0] _T_1068 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3968:19, :3969:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3970:5
    if (rst)	// matmul/matmul-hw.mlir:3970:5
      _T_1065 <= _T_1068;	// matmul/matmul-hw.mlir:3973:7
    else	// matmul/matmul-hw.mlir:3970:5
      _T_1065 <= _T_1067;	// matmul/matmul-hw.mlir:3971:7
  end // always @(posedge)
  wire _T_1069 = _T_1065[6'h3D];	// matmul/matmul-hw.mlir:3963:12, :3975:15, :3976:12
  assign _T_610 = _T_1069 ? 1'h1 : _T_607;	// matmul/matmul-hw.mlir:1590:13, :3977:12, :3995:12
  assign _T_609 = _T_1069 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3978:12
  assign _T_608 = _T_1069 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2204:19, :2899:30, :3979:12
  wire [62:0] _T_1071 = _T_1070;	// matmul/matmul-hw.mlir:3981:12
  wire [62:0] _T_1072 = {_T_1071[6'h0+:62], {{t}}};	// matmul/matmul-hw.mlir:3982:19, :3983:12, :3984:12, :3985:12
  wire [62:0] _T_1073 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:3986:19, :3987:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:3988:5
    if (rst)	// matmul/matmul-hw.mlir:3988:5
      _T_1070 <= _T_1073;	// matmul/matmul-hw.mlir:3991:7
    else	// matmul/matmul-hw.mlir:3988:5
      _T_1070 <= _T_1072;	// matmul/matmul-hw.mlir:3989:7
  end // always @(posedge)
  wire _T_1074 = _T_1070[6'h3E];	// matmul/matmul-hw.mlir:3981:12, :3993:15, :3994:12
  assign _T_607 = _T_1074 ? 1'h1 : _T_604;	// matmul/matmul-hw.mlir:1590:13, :3995:12, :4013:12
  assign _T_606 = _T_1074 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :3996:12
  assign _T_605 = _T_1074 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2201:19, :2899:30, :3997:12
  wire [63:0] _T_1076 = _T_1075;	// matmul/matmul-hw.mlir:3999:12
  wire [63:0] _T_1077 = {_T_1076[6'h0+:63], {{t}}};	// matmul/matmul-hw.mlir:4000:19, :4001:12, :4002:12, :4003:12
  wire [63:0] _T_1078 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4004:19, :4005:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4006:5
    if (rst)	// matmul/matmul-hw.mlir:4006:5
      _T_1075 <= _T_1078;	// matmul/matmul-hw.mlir:4009:7
    else	// matmul/matmul-hw.mlir:4006:5
      _T_1075 <= _T_1077;	// matmul/matmul-hw.mlir:4007:7
  end // always @(posedge)
  wire _T_1079 = _T_1075[6'h3F];	// matmul/matmul-hw.mlir:3999:12, :4011:15, :4012:12
  assign _T_604 = _T_1079 ? 1'h1 : _T_601;	// matmul/matmul-hw.mlir:1590:13, :4013:12, :4031:12
  assign _T_603 = _T_1079 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4014:12
  assign _T_602 = _T_1079 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2198:19, :2899:30, :4015:12
  wire [64:0] _T_1081 = _T_1080;	// matmul/matmul-hw.mlir:4017:12
  wire [64:0] _T_1082 = {_T_1081[7'h0+:64], {{t}}};	// matmul/matmul-hw.mlir:4018:14, :4019:12, :4020:12, :4021:12
  wire [64:0] _T_1083 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4022:19, :4023:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4024:5
    if (rst)	// matmul/matmul-hw.mlir:4024:5
      _T_1080 <= _T_1083;	// matmul/matmul-hw.mlir:4027:7
    else	// matmul/matmul-hw.mlir:4024:5
      _T_1080 <= _T_1082;	// matmul/matmul-hw.mlir:4025:7
  end // always @(posedge)
  wire _T_1084 = _T_1080[7'h40];	// matmul/matmul-hw.mlir:4017:12, :4029:16, :4030:12
  assign _T_601 = _T_1084 ? 1'h1 : _T_598;	// matmul/matmul-hw.mlir:1590:13, :4031:12, :4049:12
  assign _T_600 = _T_1084 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4032:12
  assign _T_599 = _T_1084 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2195:19, :2899:30, :4033:12
  wire [65:0] _T_1086 = _T_1085;	// matmul/matmul-hw.mlir:4035:12
  wire [65:0] _T_1087 = {_T_1086[7'h0+:65], {{t}}};	// matmul/matmul-hw.mlir:4036:19, :4037:12, :4038:12, :4039:12
  wire [65:0] _T_1088 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4040:19, :4041:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4042:5
    if (rst)	// matmul/matmul-hw.mlir:4042:5
      _T_1085 <= _T_1088;	// matmul/matmul-hw.mlir:4045:7
    else	// matmul/matmul-hw.mlir:4042:5
      _T_1085 <= _T_1087;	// matmul/matmul-hw.mlir:4043:7
  end // always @(posedge)
  wire _T_1089 = _T_1085[7'h41];	// matmul/matmul-hw.mlir:4035:12, :4047:16, :4048:12
  assign _T_598 = _T_1089 ? 1'h1 : _T_595;	// matmul/matmul-hw.mlir:1590:13, :4049:12, :4067:12
  assign _T_597 = _T_1089 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4050:12
  assign _T_596 = _T_1089 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2192:19, :2899:30, :4051:12
  wire [66:0] _T_1091 = _T_1090;	// matmul/matmul-hw.mlir:4053:12
  wire [66:0] _T_1092 = {_T_1091[7'h0+:66], {{t}}};	// matmul/matmul-hw.mlir:4054:19, :4055:12, :4056:12, :4057:12
  wire [66:0] _T_1093 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4058:19, :4059:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4060:5
    if (rst)	// matmul/matmul-hw.mlir:4060:5
      _T_1090 <= _T_1093;	// matmul/matmul-hw.mlir:4063:7
    else	// matmul/matmul-hw.mlir:4060:5
      _T_1090 <= _T_1092;	// matmul/matmul-hw.mlir:4061:7
  end // always @(posedge)
  wire _T_1094 = _T_1090[7'h42];	// matmul/matmul-hw.mlir:4053:12, :4065:16, :4066:12
  assign _T_595 = _T_1094 ? 1'h1 : _T_592;	// matmul/matmul-hw.mlir:1590:13, :4067:12, :4085:12
  assign _T_594 = _T_1094 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4068:12
  assign _T_593 = _T_1094 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2189:19, :2899:30, :4069:12
  wire [67:0] _T_1096 = _T_1095;	// matmul/matmul-hw.mlir:4071:12
  wire [67:0] _T_1097 = {_T_1096[7'h0+:67], {{t}}};	// matmul/matmul-hw.mlir:4072:19, :4073:12, :4074:12, :4075:12
  wire [67:0] _T_1098 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4076:19, :4077:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4078:5
    if (rst)	// matmul/matmul-hw.mlir:4078:5
      _T_1095 <= _T_1098;	// matmul/matmul-hw.mlir:4081:7
    else	// matmul/matmul-hw.mlir:4078:5
      _T_1095 <= _T_1097;	// matmul/matmul-hw.mlir:4079:7
  end // always @(posedge)
  wire _T_1099 = _T_1095[7'h43];	// matmul/matmul-hw.mlir:4071:12, :4083:16, :4084:12
  assign _T_592 = _T_1099 ? 1'h1 : _T_589;	// matmul/matmul-hw.mlir:1590:13, :4085:12, :4103:12
  assign _T_591 = _T_1099 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4086:12
  assign _T_590 = _T_1099 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2186:19, :2899:30, :4087:12
  wire [68:0] _T_1101 = _T_1100;	// matmul/matmul-hw.mlir:4089:12
  wire [68:0] _T_1102 = {_T_1101[7'h0+:68], {{t}}};	// matmul/matmul-hw.mlir:4090:19, :4091:12, :4092:12, :4093:12
  wire [68:0] _T_1103 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4094:19, :4095:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4096:5
    if (rst)	// matmul/matmul-hw.mlir:4096:5
      _T_1100 <= _T_1103;	// matmul/matmul-hw.mlir:4099:7
    else	// matmul/matmul-hw.mlir:4096:5
      _T_1100 <= _T_1102;	// matmul/matmul-hw.mlir:4097:7
  end // always @(posedge)
  wire _T_1104 = _T_1100[7'h44];	// matmul/matmul-hw.mlir:4089:12, :4101:16, :4102:12
  assign _T_589 = _T_1104 ? 1'h1 : _T_586;	// matmul/matmul-hw.mlir:1590:13, :4103:12, :4121:12
  assign _T_588 = _T_1104 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4104:12
  assign _T_587 = _T_1104 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2183:19, :2899:30, :4105:12
  wire [69:0] _T_1106 = _T_1105;	// matmul/matmul-hw.mlir:4107:12
  wire [69:0] _T_1107 = {_T_1106[7'h0+:69], {{t}}};	// matmul/matmul-hw.mlir:4108:19, :4109:12, :4110:12, :4111:12
  wire [69:0] _T_1108 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4112:19, :4113:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4114:5
    if (rst)	// matmul/matmul-hw.mlir:4114:5
      _T_1105 <= _T_1108;	// matmul/matmul-hw.mlir:4117:7
    else	// matmul/matmul-hw.mlir:4114:5
      _T_1105 <= _T_1107;	// matmul/matmul-hw.mlir:4115:7
  end // always @(posedge)
  wire _T_1109 = _T_1105[7'h45];	// matmul/matmul-hw.mlir:4107:12, :4119:16, :4120:12
  assign _T_586 = _T_1109 ? 1'h1 : _T_583;	// matmul/matmul-hw.mlir:1590:13, :4121:12, :4139:12
  assign _T_585 = _T_1109 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4122:12
  assign _T_584 = _T_1109 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2180:19, :2899:30, :4123:12
  wire [70:0] _T_1111 = _T_1110;	// matmul/matmul-hw.mlir:4125:12
  wire [70:0] _T_1112 = {_T_1111[7'h0+:70], {{t}}};	// matmul/matmul-hw.mlir:4126:19, :4127:12, :4128:12, :4129:12
  wire [70:0] _T_1113 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4130:19, :4131:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4132:5
    if (rst)	// matmul/matmul-hw.mlir:4132:5
      _T_1110 <= _T_1113;	// matmul/matmul-hw.mlir:4135:7
    else	// matmul/matmul-hw.mlir:4132:5
      _T_1110 <= _T_1112;	// matmul/matmul-hw.mlir:4133:7
  end // always @(posedge)
  wire _T_1114 = _T_1110[7'h46];	// matmul/matmul-hw.mlir:4125:12, :4137:16, :4138:12
  assign _T_583 = _T_1114 ? 1'h1 : _T_580;	// matmul/matmul-hw.mlir:1590:13, :4139:12, :4157:12
  assign _T_582 = _T_1114 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4140:12
  assign _T_581 = _T_1114 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2177:19, :2899:30, :4141:12
  wire [71:0] _T_1116 = _T_1115;	// matmul/matmul-hw.mlir:4143:12
  wire [71:0] _T_1117 = {_T_1116[7'h0+:71], {{t}}};	// matmul/matmul-hw.mlir:4144:19, :4145:12, :4146:12, :4147:12
  wire [71:0] _T_1118 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4148:19, :4149:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4150:5
    if (rst)	// matmul/matmul-hw.mlir:4150:5
      _T_1115 <= _T_1118;	// matmul/matmul-hw.mlir:4153:7
    else	// matmul/matmul-hw.mlir:4150:5
      _T_1115 <= _T_1117;	// matmul/matmul-hw.mlir:4151:7
  end // always @(posedge)
  wire _T_1119 = _T_1115[7'h47];	// matmul/matmul-hw.mlir:4143:12, :4155:16, :4156:12
  assign _T_580 = _T_1119 ? 1'h1 : _T_577;	// matmul/matmul-hw.mlir:1590:13, :4157:12, :4175:12
  assign _T_579 = _T_1119 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4158:12
  assign _T_578 = _T_1119 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2174:19, :2899:30, :4159:12
  wire [72:0] _T_1121 = _T_1120;	// matmul/matmul-hw.mlir:4161:12
  wire [72:0] _T_1122 = {_T_1121[7'h0+:72], {{t}}};	// matmul/matmul-hw.mlir:4162:19, :4163:12, :4164:12, :4165:12
  wire [72:0] _T_1123 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4166:19, :4167:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4168:5
    if (rst)	// matmul/matmul-hw.mlir:4168:5
      _T_1120 <= _T_1123;	// matmul/matmul-hw.mlir:4171:7
    else	// matmul/matmul-hw.mlir:4168:5
      _T_1120 <= _T_1122;	// matmul/matmul-hw.mlir:4169:7
  end // always @(posedge)
  wire _T_1124 = _T_1120[7'h48];	// matmul/matmul-hw.mlir:4161:12, :4173:16, :4174:12
  assign _T_577 = _T_1124 ? 1'h1 : _T_574;	// matmul/matmul-hw.mlir:1590:13, :4175:12, :4193:12
  assign _T_576 = _T_1124 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4176:12
  assign _T_575 = _T_1124 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2171:19, :2899:30, :4177:12
  wire [75:0] _T_1126 = _T_1125;	// matmul/matmul-hw.mlir:4179:12
  wire [75:0] _T_1127 = {_T_1126[7'h0+:75], {{t}}};	// matmul/matmul-hw.mlir:4180:19, :4181:12, :4182:12, :4183:12
  wire [75:0] _T_1128 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4184:19, :4185:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4186:5
    if (rst)	// matmul/matmul-hw.mlir:4186:5
      _T_1125 <= _T_1128;	// matmul/matmul-hw.mlir:4189:7
    else	// matmul/matmul-hw.mlir:4186:5
      _T_1125 <= _T_1127;	// matmul/matmul-hw.mlir:4187:7
  end // always @(posedge)
  wire _T_1129 = _T_1125[7'h4B];	// matmul/matmul-hw.mlir:4179:12, :4191:16, :4192:12
  assign _T_574 = _T_1129 ? 1'h1 : _T_571;	// matmul/matmul-hw.mlir:1590:13, :4193:12, :4211:12
  assign _T_573 = _T_1129 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4194:12
  assign _T_572 = _T_1129 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2168:19, :2899:30, :4195:12
  wire [76:0] _T_1131 = _T_1130;	// matmul/matmul-hw.mlir:4197:12
  wire [76:0] _T_1132 = {_T_1131[7'h0+:76], {{t}}};	// matmul/matmul-hw.mlir:4198:19, :4199:12, :4200:12, :4201:12
  wire [76:0] _T_1133 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4202:19, :4203:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4204:5
    if (rst)	// matmul/matmul-hw.mlir:4204:5
      _T_1130 <= _T_1133;	// matmul/matmul-hw.mlir:4207:7
    else	// matmul/matmul-hw.mlir:4204:5
      _T_1130 <= _T_1132;	// matmul/matmul-hw.mlir:4205:7
  end // always @(posedge)
  wire _T_1134 = _T_1130[7'h4C];	// matmul/matmul-hw.mlir:4197:12, :4209:16, :4210:12
  assign _T_571 = _T_1134 ? 1'h1 : _T_568;	// matmul/matmul-hw.mlir:1590:13, :4211:12, :4229:12
  assign _T_570 = _T_1134 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4212:12
  assign _T_569 = _T_1134 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2165:19, :2899:30, :4213:12
  wire [77:0] _T_1136 = _T_1135;	// matmul/matmul-hw.mlir:4215:12
  wire [77:0] _T_1137 = {_T_1136[7'h0+:77], {{t}}};	// matmul/matmul-hw.mlir:4216:19, :4217:12, :4218:12, :4219:12
  wire [77:0] _T_1138 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4220:19, :4221:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4222:5
    if (rst)	// matmul/matmul-hw.mlir:4222:5
      _T_1135 <= _T_1138;	// matmul/matmul-hw.mlir:4225:7
    else	// matmul/matmul-hw.mlir:4222:5
      _T_1135 <= _T_1137;	// matmul/matmul-hw.mlir:4223:7
  end // always @(posedge)
  wire _T_1139 = _T_1135[7'h4D];	// matmul/matmul-hw.mlir:4215:12, :4227:16, :4228:12
  assign _T_568 = _T_1139 ? 1'h1 : _T_565;	// matmul/matmul-hw.mlir:1590:13, :4229:12, :4247:12
  assign _T_567 = _T_1139 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4230:12
  assign _T_566 = _T_1139 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2162:19, :2899:30, :4231:12
  wire [78:0] _T_1141 = _T_1140;	// matmul/matmul-hw.mlir:4233:12
  wire [78:0] _T_1142 = {_T_1141[7'h0+:78], {{t}}};	// matmul/matmul-hw.mlir:4234:19, :4235:12, :4236:12, :4237:12
  wire [78:0] _T_1143 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4238:19, :4239:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4240:5
    if (rst)	// matmul/matmul-hw.mlir:4240:5
      _T_1140 <= _T_1143;	// matmul/matmul-hw.mlir:4243:7
    else	// matmul/matmul-hw.mlir:4240:5
      _T_1140 <= _T_1142;	// matmul/matmul-hw.mlir:4241:7
  end // always @(posedge)
  wire _T_1144 = _T_1140[7'h4E];	// matmul/matmul-hw.mlir:4233:12, :4245:16, :4246:12
  assign _T_565 = _T_1144 ? 1'h1 : _T_562;	// matmul/matmul-hw.mlir:1590:13, :4247:12, :4265:12
  assign _T_564 = _T_1144 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4248:12
  assign _T_563 = _T_1144 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2159:19, :2899:30, :4249:12
  wire [79:0] _T_1146 = _T_1145;	// matmul/matmul-hw.mlir:4251:12
  wire [79:0] _T_1147 = {_T_1146[7'h0+:79], {{t}}};	// matmul/matmul-hw.mlir:4252:19, :4253:12, :4254:12, :4255:12
  wire [79:0] _T_1148 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4256:19, :4257:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4258:5
    if (rst)	// matmul/matmul-hw.mlir:4258:5
      _T_1145 <= _T_1148;	// matmul/matmul-hw.mlir:4261:7
    else	// matmul/matmul-hw.mlir:4258:5
      _T_1145 <= _T_1147;	// matmul/matmul-hw.mlir:4259:7
  end // always @(posedge)
  wire _T_1149 = _T_1145[7'h4F];	// matmul/matmul-hw.mlir:4251:12, :4263:16, :4264:12
  assign _T_562 = _T_1149 ? 1'h1 : _T_559;	// matmul/matmul-hw.mlir:1590:13, :4265:12, :4283:12
  assign _T_561 = _T_1149 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4266:12
  assign _T_560 = _T_1149 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2156:19, :2899:30, :4267:12
  wire [80:0] _T_1151 = _T_1150;	// matmul/matmul-hw.mlir:4269:12
  wire [80:0] _T_1152 = {_T_1151[7'h0+:80], {{t}}};	// matmul/matmul-hw.mlir:4270:19, :4271:12, :4272:12, :4273:12
  wire [80:0] _T_1153 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4274:19, :4275:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4276:5
    if (rst)	// matmul/matmul-hw.mlir:4276:5
      _T_1150 <= _T_1153;	// matmul/matmul-hw.mlir:4279:7
    else	// matmul/matmul-hw.mlir:4276:5
      _T_1150 <= _T_1152;	// matmul/matmul-hw.mlir:4277:7
  end // always @(posedge)
  wire _T_1154 = _T_1150[7'h50];	// matmul/matmul-hw.mlir:4269:12, :4281:16, :4282:12
  assign _T_559 = _T_1154 ? 1'h1 : _T_556;	// matmul/matmul-hw.mlir:1590:13, :4283:12, :4301:12
  assign _T_558 = _T_1154 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4284:12
  assign _T_557 = _T_1154 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2153:19, :2899:30, :4285:12
  wire [81:0] _T_1156 = _T_1155;	// matmul/matmul-hw.mlir:4287:12
  wire [81:0] _T_1157 = {_T_1156[7'h0+:81], {{t}}};	// matmul/matmul-hw.mlir:4288:19, :4289:12, :4290:12, :4291:12
  wire [81:0] _T_1158 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4292:19, :4293:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4294:5
    if (rst)	// matmul/matmul-hw.mlir:4294:5
      _T_1155 <= _T_1158;	// matmul/matmul-hw.mlir:4297:7
    else	// matmul/matmul-hw.mlir:4294:5
      _T_1155 <= _T_1157;	// matmul/matmul-hw.mlir:4295:7
  end // always @(posedge)
  wire _T_1159 = _T_1155[7'h51];	// matmul/matmul-hw.mlir:4287:12, :4299:16, :4300:12
  assign _T_556 = _T_1159 ? 1'h1 : _T_553;	// matmul/matmul-hw.mlir:1590:13, :4301:12, :4319:12
  assign _T_555 = _T_1159 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4302:12
  assign _T_554 = _T_1159 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2150:19, :2899:30, :4303:12
  wire [82:0] _T_1161 = _T_1160;	// matmul/matmul-hw.mlir:4305:12
  wire [82:0] _T_1162 = {_T_1161[7'h0+:82], {{t}}};	// matmul/matmul-hw.mlir:4306:19, :4307:12, :4308:12, :4309:12
  wire [82:0] _T_1163 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4310:19, :4311:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4312:5
    if (rst)	// matmul/matmul-hw.mlir:4312:5
      _T_1160 <= _T_1163;	// matmul/matmul-hw.mlir:4315:7
    else	// matmul/matmul-hw.mlir:4312:5
      _T_1160 <= _T_1162;	// matmul/matmul-hw.mlir:4313:7
  end // always @(posedge)
  wire _T_1164 = _T_1160[7'h52];	// matmul/matmul-hw.mlir:4305:12, :4317:16, :4318:12
  assign _T_553 = _T_1164 ? 1'h1 : _T_550;	// matmul/matmul-hw.mlir:1590:13, :4319:12, :4337:12
  assign _T_552 = _T_1164 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4320:12
  assign _T_551 = _T_1164 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2147:19, :2899:30, :4321:12
  wire [83:0] _T_1166 = _T_1165;	// matmul/matmul-hw.mlir:4323:12
  wire [83:0] _T_1167 = {_T_1166[7'h0+:83], {{t}}};	// matmul/matmul-hw.mlir:4324:19, :4325:12, :4326:12, :4327:12
  wire [83:0] _T_1168 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4328:19, :4329:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4330:5
    if (rst)	// matmul/matmul-hw.mlir:4330:5
      _T_1165 <= _T_1168;	// matmul/matmul-hw.mlir:4333:7
    else	// matmul/matmul-hw.mlir:4330:5
      _T_1165 <= _T_1167;	// matmul/matmul-hw.mlir:4331:7
  end // always @(posedge)
  wire _T_1169 = _T_1165[7'h53];	// matmul/matmul-hw.mlir:4323:12, :4335:16, :4336:12
  assign _T_550 = _T_1169 ? 1'h1 : _T_547;	// matmul/matmul-hw.mlir:1590:13, :4337:12, :4355:12
  assign _T_549 = _T_1169 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4338:12
  assign _T_548 = _T_1169 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2144:19, :2899:30, :4339:12
  wire [84:0] _T_1171 = _T_1170;	// matmul/matmul-hw.mlir:4341:12
  wire [84:0] _T_1172 = {_T_1171[7'h0+:84], {{t}}};	// matmul/matmul-hw.mlir:4342:19, :4343:12, :4344:12, :4345:12
  wire [84:0] _T_1173 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4346:19, :4347:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4348:5
    if (rst)	// matmul/matmul-hw.mlir:4348:5
      _T_1170 <= _T_1173;	// matmul/matmul-hw.mlir:4351:7
    else	// matmul/matmul-hw.mlir:4348:5
      _T_1170 <= _T_1172;	// matmul/matmul-hw.mlir:4349:7
  end // always @(posedge)
  wire _T_1174 = _T_1170[7'h54];	// matmul/matmul-hw.mlir:4341:12, :4353:16, :4354:12
  assign _T_547 = _T_1174 ? 1'h1 : _T_544;	// matmul/matmul-hw.mlir:1590:13, :4355:12, :4373:12
  assign _T_546 = _T_1174 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4356:12
  assign _T_545 = _T_1174 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2141:19, :2899:30, :4357:12
  wire [85:0] _T_1176 = _T_1175;	// matmul/matmul-hw.mlir:4359:12
  wire [85:0] _T_1177 = {_T_1176[7'h0+:85], {{t}}};	// matmul/matmul-hw.mlir:4360:19, :4361:12, :4362:12, :4363:12
  wire [85:0] _T_1178 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4364:19, :4365:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4366:5
    if (rst)	// matmul/matmul-hw.mlir:4366:5
      _T_1175 <= _T_1178;	// matmul/matmul-hw.mlir:4369:7
    else	// matmul/matmul-hw.mlir:4366:5
      _T_1175 <= _T_1177;	// matmul/matmul-hw.mlir:4367:7
  end // always @(posedge)
  wire _T_1179 = _T_1175[7'h55];	// matmul/matmul-hw.mlir:4359:12, :4371:16, :4372:12
  assign _T_544 = _T_1179 ? 1'h1 : _T_541;	// matmul/matmul-hw.mlir:1590:13, :4373:12, :4391:12
  assign _T_543 = _T_1179 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4374:12
  assign _T_542 = _T_1179 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2138:19, :2899:30, :4375:12
  wire [86:0] _T_1181 = _T_1180;	// matmul/matmul-hw.mlir:4377:12
  wire [86:0] _T_1182 = {_T_1181[7'h0+:86], {{t}}};	// matmul/matmul-hw.mlir:4378:19, :4379:12, :4380:12, :4381:12
  wire [86:0] _T_1183 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4382:19, :4383:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4384:5
    if (rst)	// matmul/matmul-hw.mlir:4384:5
      _T_1180 <= _T_1183;	// matmul/matmul-hw.mlir:4387:7
    else	// matmul/matmul-hw.mlir:4384:5
      _T_1180 <= _T_1182;	// matmul/matmul-hw.mlir:4385:7
  end // always @(posedge)
  wire _T_1184 = _T_1180[7'h56];	// matmul/matmul-hw.mlir:4377:12, :4389:16, :4390:12
  assign _T_541 = _T_1184 ? 1'h1 : _T_538;	// matmul/matmul-hw.mlir:1590:13, :4391:12, :4409:12
  assign _T_540 = _T_1184 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4392:12
  assign _T_539 = _T_1184 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2135:19, :2899:30, :4393:12
  wire [87:0] _T_1186 = _T_1185;	// matmul/matmul-hw.mlir:4395:12
  wire [87:0] _T_1187 = {_T_1186[7'h0+:87], {{t}}};	// matmul/matmul-hw.mlir:4396:19, :4397:12, :4398:12, :4399:12
  wire [87:0] _T_1188 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4400:19, :4401:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4402:5
    if (rst)	// matmul/matmul-hw.mlir:4402:5
      _T_1185 <= _T_1188;	// matmul/matmul-hw.mlir:4405:7
    else	// matmul/matmul-hw.mlir:4402:5
      _T_1185 <= _T_1187;	// matmul/matmul-hw.mlir:4403:7
  end // always @(posedge)
  wire _T_1189 = _T_1185[7'h57];	// matmul/matmul-hw.mlir:4395:12, :4407:16, :4408:12
  assign _T_538 = _T_1189 ? 1'h1 : _T_535;	// matmul/matmul-hw.mlir:1590:13, :4409:12, :4427:12
  assign _T_537 = _T_1189 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4410:12
  assign _T_536 = _T_1189 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2132:19, :2899:30, :4411:12
  wire [88:0] _T_1191 = _T_1190;	// matmul/matmul-hw.mlir:4413:12
  wire [88:0] _T_1192 = {_T_1191[7'h0+:88], {{t}}};	// matmul/matmul-hw.mlir:4414:19, :4415:12, :4416:12, :4417:12
  wire [88:0] _T_1193 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4418:19, :4419:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4420:5
    if (rst)	// matmul/matmul-hw.mlir:4420:5
      _T_1190 <= _T_1193;	// matmul/matmul-hw.mlir:4423:7
    else	// matmul/matmul-hw.mlir:4420:5
      _T_1190 <= _T_1192;	// matmul/matmul-hw.mlir:4421:7
  end // always @(posedge)
  wire _T_1194 = _T_1190[7'h58];	// matmul/matmul-hw.mlir:4413:12, :4425:16, :4426:12
  assign _T_535 = _T_1194 ? 1'h1 : _T_532;	// matmul/matmul-hw.mlir:1590:13, :4427:12, :4445:12
  assign _T_534 = _T_1194 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4428:12
  assign _T_533 = _T_1194 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2129:19, :2899:30, :4429:12
  wire [89:0] _T_1196 = _T_1195;	// matmul/matmul-hw.mlir:4431:12
  wire [89:0] _T_1197 = {_T_1196[7'h0+:89], {{t}}};	// matmul/matmul-hw.mlir:4432:19, :4433:12, :4434:12, :4435:12
  wire [89:0] _T_1198 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4436:19, :4437:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4438:5
    if (rst)	// matmul/matmul-hw.mlir:4438:5
      _T_1195 <= _T_1198;	// matmul/matmul-hw.mlir:4441:7
    else	// matmul/matmul-hw.mlir:4438:5
      _T_1195 <= _T_1197;	// matmul/matmul-hw.mlir:4439:7
  end // always @(posedge)
  wire _T_1199 = _T_1195[7'h59];	// matmul/matmul-hw.mlir:4431:12, :4443:16, :4444:12
  assign _T_532 = _T_1199 ? 1'h1 : _T_529;	// matmul/matmul-hw.mlir:1590:13, :4445:12, :4463:12
  assign _T_531 = _T_1199 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4446:12
  assign _T_530 = _T_1199 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2126:19, :2899:30, :4447:12
  wire [90:0] _T_1201 = _T_1200;	// matmul/matmul-hw.mlir:4449:12
  wire [90:0] _T_1202 = {_T_1201[7'h0+:90], {{t}}};	// matmul/matmul-hw.mlir:4450:19, :4451:12, :4452:12, :4453:12
  wire [90:0] _T_1203 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4454:19, :4455:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4456:5
    if (rst)	// matmul/matmul-hw.mlir:4456:5
      _T_1200 <= _T_1203;	// matmul/matmul-hw.mlir:4459:7
    else	// matmul/matmul-hw.mlir:4456:5
      _T_1200 <= _T_1202;	// matmul/matmul-hw.mlir:4457:7
  end // always @(posedge)
  wire _T_1204 = _T_1200[7'h5A];	// matmul/matmul-hw.mlir:4449:12, :4461:16, :4462:12
  assign _T_529 = _T_1204 ? 1'h1 : _T_526;	// matmul/matmul-hw.mlir:1590:13, :4463:12, :4481:12
  assign _T_528 = _T_1204 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4464:12
  assign _T_527 = _T_1204 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2123:19, :2899:30, :4465:12
  wire [93:0] _T_1206 = _T_1205;	// matmul/matmul-hw.mlir:4467:12
  wire [93:0] _T_1207 = {_T_1206[7'h0+:93], {{t}}};	// matmul/matmul-hw.mlir:4468:19, :4469:12, :4470:12, :4471:12
  wire [93:0] _T_1208 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4472:19, :4473:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4474:5
    if (rst)	// matmul/matmul-hw.mlir:4474:5
      _T_1205 <= _T_1208;	// matmul/matmul-hw.mlir:4477:7
    else	// matmul/matmul-hw.mlir:4474:5
      _T_1205 <= _T_1207;	// matmul/matmul-hw.mlir:4475:7
  end // always @(posedge)
  wire _T_1209 = _T_1205[7'h5D];	// matmul/matmul-hw.mlir:4467:12, :4479:16, :4480:12
  assign _T_526 = _T_1209 ? 1'h1 : _T_523;	// matmul/matmul-hw.mlir:1590:13, :4481:12, :4499:12
  assign _T_525 = _T_1209 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4482:12
  assign _T_524 = _T_1209 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2120:19, :2899:30, :4483:12
  wire [94:0] _T_1211 = _T_1210;	// matmul/matmul-hw.mlir:4485:12
  wire [94:0] _T_1212 = {_T_1211[7'h0+:94], {{t}}};	// matmul/matmul-hw.mlir:4486:19, :4487:12, :4488:12, :4489:12
  wire [94:0] _T_1213 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4490:19, :4491:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4492:5
    if (rst)	// matmul/matmul-hw.mlir:4492:5
      _T_1210 <= _T_1213;	// matmul/matmul-hw.mlir:4495:7
    else	// matmul/matmul-hw.mlir:4492:5
      _T_1210 <= _T_1212;	// matmul/matmul-hw.mlir:4493:7
  end // always @(posedge)
  wire _T_1214 = _T_1210[7'h5E];	// matmul/matmul-hw.mlir:4485:12, :4497:16, :4498:12
  assign _T_523 = _T_1214 ? 1'h1 : _T_520;	// matmul/matmul-hw.mlir:1590:13, :4499:12, :4517:12
  assign _T_522 = _T_1214 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4500:12
  assign _T_521 = _T_1214 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2117:19, :2899:30, :4501:12
  wire [95:0] _T_1216 = _T_1215;	// matmul/matmul-hw.mlir:4503:12
  wire [95:0] _T_1217 = {_T_1216[7'h0+:95], {{t}}};	// matmul/matmul-hw.mlir:4504:19, :4505:12, :4506:12, :4507:12
  wire [95:0] _T_1218 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4508:19, :4509:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4510:5
    if (rst)	// matmul/matmul-hw.mlir:4510:5
      _T_1215 <= _T_1218;	// matmul/matmul-hw.mlir:4513:7
    else	// matmul/matmul-hw.mlir:4510:5
      _T_1215 <= _T_1217;	// matmul/matmul-hw.mlir:4511:7
  end // always @(posedge)
  wire _T_1219 = _T_1215[7'h5F];	// matmul/matmul-hw.mlir:4503:12, :4515:16, :4516:12
  assign _T_520 = _T_1219 ? 1'h1 : _T_517;	// matmul/matmul-hw.mlir:1590:13, :4517:12, :4535:12
  assign _T_519 = _T_1219 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4518:12
  assign _T_518 = _T_1219 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2114:19, :2899:30, :4519:12
  wire [96:0] _T_1221 = _T_1220;	// matmul/matmul-hw.mlir:4521:12
  wire [96:0] _T_1222 = {_T_1221[7'h0+:96], {{t}}};	// matmul/matmul-hw.mlir:4522:19, :4523:12, :4524:12, :4525:12
  wire [96:0] _T_1223 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4526:19, :4527:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4528:5
    if (rst)	// matmul/matmul-hw.mlir:4528:5
      _T_1220 <= _T_1223;	// matmul/matmul-hw.mlir:4531:7
    else	// matmul/matmul-hw.mlir:4528:5
      _T_1220 <= _T_1222;	// matmul/matmul-hw.mlir:4529:7
  end // always @(posedge)
  wire _T_1224 = _T_1220[7'h60];	// matmul/matmul-hw.mlir:4521:12, :4533:16, :4534:12
  assign _T_517 = _T_1224 ? 1'h1 : _T_514;	// matmul/matmul-hw.mlir:1590:13, :4535:12, :4553:12
  assign _T_516 = _T_1224 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4536:12
  assign _T_515 = _T_1224 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2111:19, :2899:30, :4537:12
  wire [97:0] _T_1226 = _T_1225;	// matmul/matmul-hw.mlir:4539:12
  wire [97:0] _T_1227 = {_T_1226[7'h0+:97], {{t}}};	// matmul/matmul-hw.mlir:4540:19, :4541:12, :4542:12, :4543:12
  wire [97:0] _T_1228 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4544:19, :4545:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4546:5
    if (rst)	// matmul/matmul-hw.mlir:4546:5
      _T_1225 <= _T_1228;	// matmul/matmul-hw.mlir:4549:7
    else	// matmul/matmul-hw.mlir:4546:5
      _T_1225 <= _T_1227;	// matmul/matmul-hw.mlir:4547:7
  end // always @(posedge)
  wire _T_1229 = _T_1225[7'h61];	// matmul/matmul-hw.mlir:4539:12, :4551:16, :4552:12
  assign _T_514 = _T_1229 ? 1'h1 : _T_511;	// matmul/matmul-hw.mlir:1590:13, :4553:12, :4571:12
  assign _T_513 = _T_1229 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4554:12
  assign _T_512 = _T_1229 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2108:19, :2899:30, :4555:12
  wire [98:0] _T_1231 = _T_1230;	// matmul/matmul-hw.mlir:4557:12
  wire [98:0] _T_1232 = {_T_1231[7'h0+:98], {{t}}};	// matmul/matmul-hw.mlir:4558:19, :4559:12, :4560:12, :4561:12
  wire [98:0] _T_1233 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4562:19, :4563:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4564:5
    if (rst)	// matmul/matmul-hw.mlir:4564:5
      _T_1230 <= _T_1233;	// matmul/matmul-hw.mlir:4567:7
    else	// matmul/matmul-hw.mlir:4564:5
      _T_1230 <= _T_1232;	// matmul/matmul-hw.mlir:4565:7
  end // always @(posedge)
  wire _T_1234 = _T_1230[7'h62];	// matmul/matmul-hw.mlir:4557:12, :4569:16, :4570:12
  assign _T_511 = _T_1234 ? 1'h1 : _T_508;	// matmul/matmul-hw.mlir:1590:13, :4571:12, :4589:12
  assign _T_510 = _T_1234 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4572:12
  assign _T_509 = _T_1234 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2105:19, :2899:30, :4573:12
  wire [99:0] _T_1236 = _T_1235;	// matmul/matmul-hw.mlir:4575:12
  wire [99:0] _T_1237 = {_T_1236[7'h0+:99], {{t}}};	// matmul/matmul-hw.mlir:4576:19, :4577:12, :4578:12, :4579:12
  wire [99:0] _T_1238 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4580:19, :4581:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4582:5
    if (rst)	// matmul/matmul-hw.mlir:4582:5
      _T_1235 <= _T_1238;	// matmul/matmul-hw.mlir:4585:7
    else	// matmul/matmul-hw.mlir:4582:5
      _T_1235 <= _T_1237;	// matmul/matmul-hw.mlir:4583:7
  end // always @(posedge)
  wire _T_1239 = _T_1235[7'h63];	// matmul/matmul-hw.mlir:4575:12, :4587:16, :4588:12
  assign _T_508 = _T_1239 ? 1'h1 : _T_505;	// matmul/matmul-hw.mlir:1590:13, :4589:12, :4607:12
  assign _T_507 = _T_1239 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4590:12
  assign _T_506 = _T_1239 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2102:19, :2899:30, :4591:12
  wire [100:0] _T_1241 = _T_1240;	// matmul/matmul-hw.mlir:4593:12
  wire [100:0] _T_1242 = {_T_1241[7'h0+:100], {{t}}};	// matmul/matmul-hw.mlir:4594:19, :4595:12, :4596:12, :4597:12
  wire [100:0] _T_1243 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4598:19, :4599:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4600:5
    if (rst)	// matmul/matmul-hw.mlir:4600:5
      _T_1240 <= _T_1243;	// matmul/matmul-hw.mlir:4603:7
    else	// matmul/matmul-hw.mlir:4600:5
      _T_1240 <= _T_1242;	// matmul/matmul-hw.mlir:4601:7
  end // always @(posedge)
  wire _T_1244 = _T_1240[7'h64];	// matmul/matmul-hw.mlir:4593:12, :4605:16, :4606:12
  assign _T_505 = _T_1244 ? 1'h1 : _T_502;	// matmul/matmul-hw.mlir:1590:13, :4607:12, :4625:12
  assign _T_504 = _T_1244 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4608:12
  assign _T_503 = _T_1244 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2099:19, :2899:30, :4609:12
  wire [101:0] _T_1246 = _T_1245;	// matmul/matmul-hw.mlir:4611:12
  wire [101:0] _T_1247 = {_T_1246[7'h0+:101], {{t}}};	// matmul/matmul-hw.mlir:4612:19, :4613:12, :4614:12, :4615:12
  wire [101:0] _T_1248 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4616:19, :4617:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4618:5
    if (rst)	// matmul/matmul-hw.mlir:4618:5
      _T_1245 <= _T_1248;	// matmul/matmul-hw.mlir:4621:7
    else	// matmul/matmul-hw.mlir:4618:5
      _T_1245 <= _T_1247;	// matmul/matmul-hw.mlir:4619:7
  end // always @(posedge)
  wire _T_1249 = _T_1245[7'h65];	// matmul/matmul-hw.mlir:4611:12, :4623:16, :4624:12
  assign _T_502 = _T_1249 ? 1'h1 : _T_499;	// matmul/matmul-hw.mlir:1590:13, :4625:12, :4643:12
  assign _T_501 = _T_1249 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4626:12
  assign _T_500 = _T_1249 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2096:19, :2899:30, :4627:12
  wire [102:0] _T_1251 = _T_1250;	// matmul/matmul-hw.mlir:4629:12
  wire [102:0] _T_1252 = {_T_1251[7'h0+:102], {{t}}};	// matmul/matmul-hw.mlir:4630:19, :4631:12, :4632:12, :4633:12
  wire [102:0] _T_1253 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4634:19, :4635:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4636:5
    if (rst)	// matmul/matmul-hw.mlir:4636:5
      _T_1250 <= _T_1253;	// matmul/matmul-hw.mlir:4639:7
    else	// matmul/matmul-hw.mlir:4636:5
      _T_1250 <= _T_1252;	// matmul/matmul-hw.mlir:4637:7
  end // always @(posedge)
  wire _T_1254 = _T_1250[7'h66];	// matmul/matmul-hw.mlir:4629:12, :4641:16, :4642:12
  assign _T_499 = _T_1254 ? 1'h1 : _T_496;	// matmul/matmul-hw.mlir:1590:13, :4643:12, :4661:12
  assign _T_498 = _T_1254 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4644:12
  assign _T_497 = _T_1254 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2093:19, :2899:30, :4645:12
  wire [103:0] _T_1256 = _T_1255;	// matmul/matmul-hw.mlir:4647:12
  wire [103:0] _T_1257 = {_T_1256[7'h0+:103], {{t}}};	// matmul/matmul-hw.mlir:4648:19, :4649:12, :4650:12, :4651:12
  wire [103:0] _T_1258 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4652:19, :4653:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4654:5
    if (rst)	// matmul/matmul-hw.mlir:4654:5
      _T_1255 <= _T_1258;	// matmul/matmul-hw.mlir:4657:7
    else	// matmul/matmul-hw.mlir:4654:5
      _T_1255 <= _T_1257;	// matmul/matmul-hw.mlir:4655:7
  end // always @(posedge)
  wire _T_1259 = _T_1255[7'h67];	// matmul/matmul-hw.mlir:4647:12, :4659:16, :4660:12
  assign _T_496 = _T_1259 ? 1'h1 : _T_493;	// matmul/matmul-hw.mlir:1590:13, :4661:12, :4679:12
  assign _T_495 = _T_1259 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4662:12
  assign _T_494 = _T_1259 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2090:19, :2899:30, :4663:12
  wire [104:0] _T_1261 = _T_1260;	// matmul/matmul-hw.mlir:4665:12
  wire [104:0] _T_1262 = {_T_1261[7'h0+:104], {{t}}};	// matmul/matmul-hw.mlir:4666:19, :4667:12, :4668:12, :4669:12
  wire [104:0] _T_1263 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4670:19, :4671:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4672:5
    if (rst)	// matmul/matmul-hw.mlir:4672:5
      _T_1260 <= _T_1263;	// matmul/matmul-hw.mlir:4675:7
    else	// matmul/matmul-hw.mlir:4672:5
      _T_1260 <= _T_1262;	// matmul/matmul-hw.mlir:4673:7
  end // always @(posedge)
  wire _T_1264 = _T_1260[7'h68];	// matmul/matmul-hw.mlir:4665:12, :4677:16, :4678:12
  assign _T_493 = _T_1264 ? 1'h1 : _T_490;	// matmul/matmul-hw.mlir:1590:13, :4679:12, :4697:12
  assign _T_492 = _T_1264 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4680:12
  assign _T_491 = _T_1264 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2087:19, :2899:30, :4681:12
  wire [105:0] _T_1266 = _T_1265;	// matmul/matmul-hw.mlir:4683:12
  wire [105:0] _T_1267 = {_T_1266[7'h0+:105], {{t}}};	// matmul/matmul-hw.mlir:4684:19, :4685:12, :4686:12, :4687:12
  wire [105:0] _T_1268 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4688:19, :4689:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4690:5
    if (rst)	// matmul/matmul-hw.mlir:4690:5
      _T_1265 <= _T_1268;	// matmul/matmul-hw.mlir:4693:7
    else	// matmul/matmul-hw.mlir:4690:5
      _T_1265 <= _T_1267;	// matmul/matmul-hw.mlir:4691:7
  end // always @(posedge)
  wire _T_1269 = _T_1265[7'h69];	// matmul/matmul-hw.mlir:4683:12, :4695:16, :4696:12
  assign _T_490 = _T_1269 ? 1'h1 : _T_487;	// matmul/matmul-hw.mlir:1590:13, :4697:12, :4715:12
  assign _T_489 = _T_1269 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4698:12
  assign _T_488 = _T_1269 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2084:19, :2899:30, :4699:12
  wire [106:0] _T_1271 = _T_1270;	// matmul/matmul-hw.mlir:4701:12
  wire [106:0] _T_1272 = {_T_1271[7'h0+:106], {{t}}};	// matmul/matmul-hw.mlir:4702:19, :4703:12, :4704:12, :4705:12
  wire [106:0] _T_1273 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4706:19, :4707:12
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4708:5
    if (rst)	// matmul/matmul-hw.mlir:4708:5
      _T_1270 <= _T_1273;	// matmul/matmul-hw.mlir:4711:7
    else	// matmul/matmul-hw.mlir:4708:5
      _T_1270 <= _T_1272;	// matmul/matmul-hw.mlir:4709:7
  end // always @(posedge)
  wire _T_1274 = _T_1270[7'h6A];	// matmul/matmul-hw.mlir:4701:12, :4713:16, :4714:12
  assign _T_487 = _T_1274 ? 1'h1 : _T_484;	// matmul/matmul-hw.mlir:1590:13, :4715:12, :4733:13
  assign _T_486 = _T_1274 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4716:13
  assign _T_485 = _T_1274 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2081:18, :2899:30, :4717:13
  wire [107:0] _T_1276 = _T_1275;	// matmul/matmul-hw.mlir:4719:13
  wire [107:0] _T_1277 = {_T_1276[7'h0+:107], {{t}}};	// matmul/matmul-hw.mlir:4720:19, :4721:13, :4722:13, :4723:13
  wire [107:0] _T_1278 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4724:19, :4725:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4726:5
    if (rst)	// matmul/matmul-hw.mlir:4726:5
      _T_1275 <= _T_1278;	// matmul/matmul-hw.mlir:4729:7
    else	// matmul/matmul-hw.mlir:4726:5
      _T_1275 <= _T_1277;	// matmul/matmul-hw.mlir:4727:7
  end // always @(posedge)
  wire _T_1279 = _T_1275[7'h6B];	// matmul/matmul-hw.mlir:4719:13, :4731:16, :4732:13
  assign _T_484 = _T_1279 ? 1'h1 : _T_481;	// matmul/matmul-hw.mlir:1590:13, :4733:13, :4751:13
  assign _T_483 = _T_1279 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4734:13
  assign _T_482 = _T_1279 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2078:18, :2899:30, :4735:13
  wire [108:0] _T_1281 = _T_1280;	// matmul/matmul-hw.mlir:4737:13
  wire [108:0] _T_1282 = {_T_1281[7'h0+:108], {{t}}};	// matmul/matmul-hw.mlir:4738:19, :4739:13, :4740:13, :4741:13
  wire [108:0] _T_1283 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4742:19, :4743:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4744:5
    if (rst)	// matmul/matmul-hw.mlir:4744:5
      _T_1280 <= _T_1283;	// matmul/matmul-hw.mlir:4747:7
    else	// matmul/matmul-hw.mlir:4744:5
      _T_1280 <= _T_1282;	// matmul/matmul-hw.mlir:4745:7
  end // always @(posedge)
  wire _T_1284 = _T_1280[7'h6C];	// matmul/matmul-hw.mlir:4737:13, :4749:16, :4750:13
  assign _T_481 = _T_1284 ? 1'h1 : _T_478;	// matmul/matmul-hw.mlir:1590:13, :4751:13, :4769:13
  assign _T_480 = _T_1284 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4752:13
  assign _T_479 = _T_1284 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2075:18, :2899:30, :4753:13
  wire [111:0] _T_1286 = _T_1285;	// matmul/matmul-hw.mlir:4755:13
  wire [111:0] _T_1287 = {_T_1286[7'h0+:111], {{t}}};	// matmul/matmul-hw.mlir:4756:19, :4757:13, :4758:13, :4759:13
  wire [111:0] _T_1288 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4760:19, :4761:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4762:5
    if (rst)	// matmul/matmul-hw.mlir:4762:5
      _T_1285 <= _T_1288;	// matmul/matmul-hw.mlir:4765:7
    else	// matmul/matmul-hw.mlir:4762:5
      _T_1285 <= _T_1287;	// matmul/matmul-hw.mlir:4763:7
  end // always @(posedge)
  wire _T_1289 = _T_1285[7'h6F];	// matmul/matmul-hw.mlir:4755:13, :4767:16, :4768:13
  assign _T_478 = _T_1289 ? 1'h1 : _T_475;	// matmul/matmul-hw.mlir:1590:13, :4769:13, :4787:13
  assign _T_477 = _T_1289 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4770:13
  assign _T_476 = _T_1289 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2072:18, :2899:30, :4771:13
  wire [112:0] _T_1291 = _T_1290;	// matmul/matmul-hw.mlir:4773:13
  wire [112:0] _T_1292 = {_T_1291[7'h0+:112], {{t}}};	// matmul/matmul-hw.mlir:4774:19, :4775:13, :4776:13, :4777:13
  wire [112:0] _T_1293 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4778:19, :4779:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4780:5
    if (rst)	// matmul/matmul-hw.mlir:4780:5
      _T_1290 <= _T_1293;	// matmul/matmul-hw.mlir:4783:7
    else	// matmul/matmul-hw.mlir:4780:5
      _T_1290 <= _T_1292;	// matmul/matmul-hw.mlir:4781:7
  end // always @(posedge)
  wire _T_1294 = _T_1290[7'h70];	// matmul/matmul-hw.mlir:4773:13, :4785:16, :4786:13
  assign _T_475 = _T_1294 ? 1'h1 : _T_472;	// matmul/matmul-hw.mlir:1590:13, :4787:13, :4805:13
  assign _T_474 = _T_1294 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4788:13
  assign _T_473 = _T_1294 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2069:18, :2899:30, :4789:13
  wire [113:0] _T_1296 = _T_1295;	// matmul/matmul-hw.mlir:4791:13
  wire [113:0] _T_1297 = {_T_1296[7'h0+:113], {{t}}};	// matmul/matmul-hw.mlir:4792:19, :4793:13, :4794:13, :4795:13
  wire [113:0] _T_1298 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4796:19, :4797:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4798:5
    if (rst)	// matmul/matmul-hw.mlir:4798:5
      _T_1295 <= _T_1298;	// matmul/matmul-hw.mlir:4801:7
    else	// matmul/matmul-hw.mlir:4798:5
      _T_1295 <= _T_1297;	// matmul/matmul-hw.mlir:4799:7
  end // always @(posedge)
  wire _T_1299 = _T_1295[7'h71];	// matmul/matmul-hw.mlir:4791:13, :4803:16, :4804:13
  assign _T_472 = _T_1299 ? 1'h1 : _T_469;	// matmul/matmul-hw.mlir:1590:13, :4805:13, :4823:13
  assign _T_471 = _T_1299 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4806:13
  assign _T_470 = _T_1299 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2066:18, :2899:30, :4807:13
  wire [114:0] _T_1301 = _T_1300;	// matmul/matmul-hw.mlir:4809:13
  wire [114:0] _T_1302 = {_T_1301[7'h0+:114], {{t}}};	// matmul/matmul-hw.mlir:4810:19, :4811:13, :4812:13, :4813:13
  wire [114:0] _T_1303 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4814:19, :4815:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4816:5
    if (rst)	// matmul/matmul-hw.mlir:4816:5
      _T_1300 <= _T_1303;	// matmul/matmul-hw.mlir:4819:7
    else	// matmul/matmul-hw.mlir:4816:5
      _T_1300 <= _T_1302;	// matmul/matmul-hw.mlir:4817:7
  end // always @(posedge)
  wire _T_1304 = _T_1300[7'h72];	// matmul/matmul-hw.mlir:4809:13, :4821:16, :4822:13
  assign _T_469 = _T_1304 ? 1'h1 : _T_466;	// matmul/matmul-hw.mlir:1590:13, :4823:13, :4841:13
  assign _T_468 = _T_1304 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4824:13
  assign _T_467 = _T_1304 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2063:18, :2899:30, :4825:13
  wire [115:0] _T_1306 = _T_1305;	// matmul/matmul-hw.mlir:4827:13
  wire [115:0] _T_1307 = {_T_1306[7'h0+:115], {{t}}};	// matmul/matmul-hw.mlir:4828:19, :4829:13, :4830:13, :4831:13
  wire [115:0] _T_1308 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4832:19, :4833:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4834:5
    if (rst)	// matmul/matmul-hw.mlir:4834:5
      _T_1305 <= _T_1308;	// matmul/matmul-hw.mlir:4837:7
    else	// matmul/matmul-hw.mlir:4834:5
      _T_1305 <= _T_1307;	// matmul/matmul-hw.mlir:4835:7
  end // always @(posedge)
  wire _T_1309 = _T_1305[7'h73];	// matmul/matmul-hw.mlir:4827:13, :4839:16, :4840:13
  assign _T_466 = _T_1309 ? 1'h1 : _T_463;	// matmul/matmul-hw.mlir:1590:13, :4841:13, :4859:13
  assign _T_465 = _T_1309 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4842:13
  assign _T_464 = _T_1309 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2060:18, :2899:30, :4843:13
  wire [116:0] _T_1311 = _T_1310;	// matmul/matmul-hw.mlir:4845:13
  wire [116:0] _T_1312 = {_T_1311[7'h0+:116], {{t}}};	// matmul/matmul-hw.mlir:4846:19, :4847:13, :4848:13, :4849:13
  wire [116:0] _T_1313 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4850:19, :4851:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4852:5
    if (rst)	// matmul/matmul-hw.mlir:4852:5
      _T_1310 <= _T_1313;	// matmul/matmul-hw.mlir:4855:7
    else	// matmul/matmul-hw.mlir:4852:5
      _T_1310 <= _T_1312;	// matmul/matmul-hw.mlir:4853:7
  end // always @(posedge)
  wire _T_1314 = _T_1310[7'h74];	// matmul/matmul-hw.mlir:4845:13, :4857:16, :4858:13
  assign _T_463 = _T_1314 ? 1'h1 : _T_460;	// matmul/matmul-hw.mlir:1590:13, :4859:13, :4877:13
  assign _T_462 = _T_1314 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4860:13
  assign _T_461 = _T_1314 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2057:18, :2899:30, :4861:13
  wire [117:0] _T_1316 = _T_1315;	// matmul/matmul-hw.mlir:4863:13
  wire [117:0] _T_1317 = {_T_1316[7'h0+:117], {{t}}};	// matmul/matmul-hw.mlir:4864:19, :4865:13, :4866:13, :4867:13
  wire [117:0] _T_1318 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4868:19, :4869:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4870:5
    if (rst)	// matmul/matmul-hw.mlir:4870:5
      _T_1315 <= _T_1318;	// matmul/matmul-hw.mlir:4873:7
    else	// matmul/matmul-hw.mlir:4870:5
      _T_1315 <= _T_1317;	// matmul/matmul-hw.mlir:4871:7
  end // always @(posedge)
  wire _T_1319 = _T_1315[7'h75];	// matmul/matmul-hw.mlir:4863:13, :4875:16, :4876:13
  assign _T_460 = _T_1319 ? 1'h1 : _T_457;	// matmul/matmul-hw.mlir:1590:13, :4877:13, :4895:13
  assign _T_459 = _T_1319 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4878:13
  assign _T_458 = _T_1319 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2054:18, :2899:30, :4879:13
  wire [118:0] _T_1321 = _T_1320;	// matmul/matmul-hw.mlir:4881:13
  wire [118:0] _T_1322 = {_T_1321[7'h0+:118], {{t}}};	// matmul/matmul-hw.mlir:4882:19, :4883:13, :4884:13, :4885:13
  wire [118:0] _T_1323 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4886:19, :4887:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4888:5
    if (rst)	// matmul/matmul-hw.mlir:4888:5
      _T_1320 <= _T_1323;	// matmul/matmul-hw.mlir:4891:7
    else	// matmul/matmul-hw.mlir:4888:5
      _T_1320 <= _T_1322;	// matmul/matmul-hw.mlir:4889:7
  end // always @(posedge)
  wire _T_1324 = _T_1320[7'h76];	// matmul/matmul-hw.mlir:4881:13, :4893:16, :4894:13
  assign _T_457 = _T_1324 ? 1'h1 : _T_454;	// matmul/matmul-hw.mlir:1590:13, :4895:13, :4913:13
  assign _T_456 = _T_1324 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4896:13
  assign _T_455 = _T_1324 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2051:18, :2899:30, :4897:13
  wire [119:0] _T_1326 = _T_1325;	// matmul/matmul-hw.mlir:4899:13
  wire [119:0] _T_1327 = {_T_1326[7'h0+:119], {{t}}};	// matmul/matmul-hw.mlir:4900:19, :4901:13, :4902:13, :4903:13
  wire [119:0] _T_1328 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4904:19, :4905:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4906:5
    if (rst)	// matmul/matmul-hw.mlir:4906:5
      _T_1325 <= _T_1328;	// matmul/matmul-hw.mlir:4909:7
    else	// matmul/matmul-hw.mlir:4906:5
      _T_1325 <= _T_1327;	// matmul/matmul-hw.mlir:4907:7
  end // always @(posedge)
  wire _T_1329 = _T_1325[7'h77];	// matmul/matmul-hw.mlir:4899:13, :4911:15, :4912:13
  assign _T_454 = _T_1329 ? 1'h1 : _T_451;	// matmul/matmul-hw.mlir:1590:13, :4913:13, :4931:13
  assign _T_453 = _T_1329 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4914:13
  assign _T_452 = _T_1329 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2048:18, :2899:30, :4915:13
  wire [120:0] _T_1331 = _T_1330;	// matmul/matmul-hw.mlir:4917:13
  wire [120:0] _T_1332 = {_T_1331[7'h0+:120], {{t}}};	// matmul/matmul-hw.mlir:4918:19, :4919:13, :4920:13, :4921:13
  wire [120:0] _T_1333 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4922:19, :4923:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4924:5
    if (rst)	// matmul/matmul-hw.mlir:4924:5
      _T_1330 <= _T_1333;	// matmul/matmul-hw.mlir:4927:7
    else	// matmul/matmul-hw.mlir:4924:5
      _T_1330 <= _T_1332;	// matmul/matmul-hw.mlir:4925:7
  end // always @(posedge)
  wire _T_1334 = _T_1330[7'h78];	// matmul/matmul-hw.mlir:4917:13, :4929:15, :4930:13
  assign _T_451 = _T_1334 ? 1'h1 : _T_448;	// matmul/matmul-hw.mlir:1590:13, :4931:13, :4949:13
  assign _T_450 = _T_1334 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4932:13
  assign _T_449 = _T_1334 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2045:18, :2899:30, :4933:13
  wire [121:0] _T_1336 = _T_1335;	// matmul/matmul-hw.mlir:4935:13
  wire [121:0] _T_1337 = {_T_1336[7'h0+:121], {{t}}};	// matmul/matmul-hw.mlir:4936:19, :4937:13, :4938:13, :4939:13
  wire [121:0] _T_1338 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4940:19, :4941:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4942:5
    if (rst)	// matmul/matmul-hw.mlir:4942:5
      _T_1335 <= _T_1338;	// matmul/matmul-hw.mlir:4945:7
    else	// matmul/matmul-hw.mlir:4942:5
      _T_1335 <= _T_1337;	// matmul/matmul-hw.mlir:4943:7
  end // always @(posedge)
  wire _T_1339 = _T_1335[7'h79];	// matmul/matmul-hw.mlir:4935:13, :4947:15, :4948:13
  assign _T_448 = _T_1339 ? 1'h1 : _T_445;	// matmul/matmul-hw.mlir:1590:13, :4949:13, :4967:13
  assign _T_447 = _T_1339 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4950:13
  assign _T_446 = _T_1339 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2042:18, :2899:30, :4951:13
  wire [122:0] _T_1341 = _T_1340;	// matmul/matmul-hw.mlir:4953:13
  wire [122:0] _T_1342 = {_T_1341[7'h0+:122], {{t}}};	// matmul/matmul-hw.mlir:4954:19, :4955:13, :4956:13, :4957:13
  wire [122:0] _T_1343 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4958:19, :4959:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4960:5
    if (rst)	// matmul/matmul-hw.mlir:4960:5
      _T_1340 <= _T_1343;	// matmul/matmul-hw.mlir:4963:7
    else	// matmul/matmul-hw.mlir:4960:5
      _T_1340 <= _T_1342;	// matmul/matmul-hw.mlir:4961:7
  end // always @(posedge)
  wire _T_1344 = _T_1340[7'h7A];	// matmul/matmul-hw.mlir:4953:13, :4965:15, :4966:13
  assign _T_445 = _T_1344 ? 1'h1 : _T_442;	// matmul/matmul-hw.mlir:1590:13, :4967:13, :4985:13
  assign _T_444 = _T_1344 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4968:13
  assign _T_443 = _T_1344 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2039:18, :2899:30, :4969:13
  wire [123:0] _T_1346 = _T_1345;	// matmul/matmul-hw.mlir:4971:13
  wire [123:0] _T_1347 = {_T_1346[7'h0+:123], {{t}}};	// matmul/matmul-hw.mlir:4972:19, :4973:13, :4974:13, :4975:13
  wire [123:0] _T_1348 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4976:19, :4977:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4978:5
    if (rst)	// matmul/matmul-hw.mlir:4978:5
      _T_1345 <= _T_1348;	// matmul/matmul-hw.mlir:4981:7
    else	// matmul/matmul-hw.mlir:4978:5
      _T_1345 <= _T_1347;	// matmul/matmul-hw.mlir:4979:7
  end // always @(posedge)
  wire _T_1349 = _T_1345[7'h7B];	// matmul/matmul-hw.mlir:4971:13, :4983:15, :4984:13
  assign _T_442 = _T_1349 ? 1'h1 : _T_439;	// matmul/matmul-hw.mlir:1590:13, :4985:13, :5003:13
  assign _T_441 = _T_1349 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :4986:13
  assign _T_440 = _T_1349 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2036:18, :2899:30, :4987:13
  wire [124:0] _T_1351 = _T_1350;	// matmul/matmul-hw.mlir:4989:13
  wire [124:0] _T_1352 = {_T_1351[7'h0+:124], {{t}}};	// matmul/matmul-hw.mlir:4990:19, :4991:13, :4992:13, :4993:13
  wire [124:0] _T_1353 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:4994:19, :4995:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:4996:5
    if (rst)	// matmul/matmul-hw.mlir:4996:5
      _T_1350 <= _T_1353;	// matmul/matmul-hw.mlir:4999:7
    else	// matmul/matmul-hw.mlir:4996:5
      _T_1350 <= _T_1352;	// matmul/matmul-hw.mlir:4997:7
  end // always @(posedge)
  wire _T_1354 = _T_1350[7'h7C];	// matmul/matmul-hw.mlir:4989:13, :5001:15, :5002:13
  assign _T_439 = _T_1354 ? 1'h1 : _T_436;	// matmul/matmul-hw.mlir:1590:13, :5003:13, :5021:13
  assign _T_438 = _T_1354 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5004:13
  assign _T_437 = _T_1354 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2033:18, :2899:30, :5005:13
  wire [125:0] _T_1356 = _T_1355;	// matmul/matmul-hw.mlir:5007:13
  wire [125:0] _T_1357 = {_T_1356[7'h0+:125], {{t}}};	// matmul/matmul-hw.mlir:5008:19, :5009:13, :5010:13, :5011:13
  wire [125:0] _T_1358 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5012:19, :5013:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5014:5
    if (rst)	// matmul/matmul-hw.mlir:5014:5
      _T_1355 <= _T_1358;	// matmul/matmul-hw.mlir:5017:7
    else	// matmul/matmul-hw.mlir:5014:5
      _T_1355 <= _T_1357;	// matmul/matmul-hw.mlir:5015:7
  end // always @(posedge)
  wire _T_1359 = _T_1355[7'h7D];	// matmul/matmul-hw.mlir:5007:13, :5019:15, :5020:13
  assign _T_436 = _T_1359 ? 1'h1 : _T_433;	// matmul/matmul-hw.mlir:1590:13, :5021:13, :5039:13
  assign _T_435 = _T_1359 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5022:13
  assign _T_434 = _T_1359 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2030:18, :2899:30, :5023:13
  wire [126:0] _T_1361 = _T_1360;	// matmul/matmul-hw.mlir:5025:13
  wire [126:0] _T_1362 = {_T_1361[7'h0+:126], {{t}}};	// matmul/matmul-hw.mlir:5026:19, :5027:13, :5028:13, :5029:13
  wire [126:0] _T_1363 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5030:19, :5031:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5032:5
    if (rst)	// matmul/matmul-hw.mlir:5032:5
      _T_1360 <= _T_1363;	// matmul/matmul-hw.mlir:5035:7
    else	// matmul/matmul-hw.mlir:5032:5
      _T_1360 <= _T_1362;	// matmul/matmul-hw.mlir:5033:7
  end // always @(posedge)
  wire _T_1364 = _T_1360[7'h7E];	// matmul/matmul-hw.mlir:5025:13, :5037:15, :5038:13
  assign _T_433 = _T_1364 ? 1'h1 : _T_430;	// matmul/matmul-hw.mlir:1590:13, :5039:13, :5057:13
  assign _T_432 = _T_1364 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5040:13
  assign _T_431 = _T_1364 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2027:18, :2899:30, :5041:13
  wire [129:0] _T_1366 = _T_1365;	// matmul/matmul-hw.mlir:5043:13
  wire [129:0] _T_1367 = {_T_1366[8'h0+:129], {{t}}};	// matmul/matmul-hw.mlir:5044:14, :5045:13, :5046:13, :5047:13
  wire [129:0] _T_1368 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5048:19, :5049:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5050:5
    if (rst)	// matmul/matmul-hw.mlir:5050:5
      _T_1365 <= _T_1368;	// matmul/matmul-hw.mlir:5053:7
    else	// matmul/matmul-hw.mlir:5050:5
      _T_1365 <= _T_1367;	// matmul/matmul-hw.mlir:5051:7
  end // always @(posedge)
  wire _T_1369 = _T_1365[8'h81];	// matmul/matmul-hw.mlir:5043:13, :5055:17, :5056:13
  assign _T_430 = _T_1369 ? 1'h1 : _T_427;	// matmul/matmul-hw.mlir:1590:13, :5057:13, :5075:13
  assign _T_429 = _T_1369 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5058:13
  assign _T_428 = _T_1369 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2024:18, :2899:30, :5059:13
  wire [130:0] _T_1371 = _T_1370;	// matmul/matmul-hw.mlir:5061:13
  wire [130:0] _T_1372 = {_T_1371[8'h0+:130], {{t}}};	// matmul/matmul-hw.mlir:5062:19, :5063:13, :5064:13, :5065:13
  wire [130:0] _T_1373 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5066:19, :5067:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5068:5
    if (rst)	// matmul/matmul-hw.mlir:5068:5
      _T_1370 <= _T_1373;	// matmul/matmul-hw.mlir:5071:7
    else	// matmul/matmul-hw.mlir:5068:5
      _T_1370 <= _T_1372;	// matmul/matmul-hw.mlir:5069:7
  end // always @(posedge)
  wire _T_1374 = _T_1370[8'h82];	// matmul/matmul-hw.mlir:5061:13, :5073:17, :5074:13
  assign _T_427 = _T_1374 ? 1'h1 : _T_424;	// matmul/matmul-hw.mlir:1590:13, :5075:13, :5093:13
  assign _T_426 = _T_1374 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5076:13
  assign _T_425 = _T_1374 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2021:18, :2899:30, :5077:13
  wire [131:0] _T_1376 = _T_1375;	// matmul/matmul-hw.mlir:5079:13
  wire [131:0] _T_1377 = {_T_1376[8'h0+:131], {{t}}};	// matmul/matmul-hw.mlir:5080:19, :5081:13, :5082:13, :5083:13
  wire [131:0] _T_1378 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5084:19, :5085:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5086:5
    if (rst)	// matmul/matmul-hw.mlir:5086:5
      _T_1375 <= _T_1378;	// matmul/matmul-hw.mlir:5089:7
    else	// matmul/matmul-hw.mlir:5086:5
      _T_1375 <= _T_1377;	// matmul/matmul-hw.mlir:5087:7
  end // always @(posedge)
  wire _T_1379 = _T_1375[8'h83];	// matmul/matmul-hw.mlir:5079:13, :5091:17, :5092:13
  assign _T_424 = _T_1379 ? 1'h1 : _T_421;	// matmul/matmul-hw.mlir:1590:13, :5093:13, :5111:13
  assign _T_423 = _T_1379 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5094:13
  assign _T_422 = _T_1379 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2018:18, :2899:30, :5095:13
  wire [132:0] _T_1381 = _T_1380;	// matmul/matmul-hw.mlir:5097:13
  wire [132:0] _T_1382 = {_T_1381[8'h0+:132], {{t}}};	// matmul/matmul-hw.mlir:5098:19, :5099:13, :5100:13, :5101:13
  wire [132:0] _T_1383 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5102:19, :5103:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5104:5
    if (rst)	// matmul/matmul-hw.mlir:5104:5
      _T_1380 <= _T_1383;	// matmul/matmul-hw.mlir:5107:7
    else	// matmul/matmul-hw.mlir:5104:5
      _T_1380 <= _T_1382;	// matmul/matmul-hw.mlir:5105:7
  end // always @(posedge)
  wire _T_1384 = _T_1380[8'h84];	// matmul/matmul-hw.mlir:5097:13, :5109:17, :5110:13
  assign _T_421 = _T_1384 ? 1'h1 : _T_418;	// matmul/matmul-hw.mlir:1590:13, :5111:13, :5129:13
  assign _T_420 = _T_1384 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5112:13
  assign _T_419 = _T_1384 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2015:18, :2899:30, :5113:13
  wire [133:0] _T_1386 = _T_1385;	// matmul/matmul-hw.mlir:5115:13
  wire [133:0] _T_1387 = {_T_1386[8'h0+:133], {{t}}};	// matmul/matmul-hw.mlir:5116:19, :5117:13, :5118:13, :5119:13
  wire [133:0] _T_1388 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5120:19, :5121:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5122:5
    if (rst)	// matmul/matmul-hw.mlir:5122:5
      _T_1385 <= _T_1388;	// matmul/matmul-hw.mlir:5125:7
    else	// matmul/matmul-hw.mlir:5122:5
      _T_1385 <= _T_1387;	// matmul/matmul-hw.mlir:5123:7
  end // always @(posedge)
  wire _T_1389 = _T_1385[8'h85];	// matmul/matmul-hw.mlir:5115:13, :5127:17, :5128:13
  assign _T_418 = _T_1389 ? 1'h1 : _T_415;	// matmul/matmul-hw.mlir:1590:13, :5129:13, :5147:13
  assign _T_417 = _T_1389 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5130:13
  assign _T_416 = _T_1389 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2012:18, :2899:30, :5131:13
  wire [134:0] _T_1391 = _T_1390;	// matmul/matmul-hw.mlir:5133:13
  wire [134:0] _T_1392 = {_T_1391[8'h0+:134], {{t}}};	// matmul/matmul-hw.mlir:5134:19, :5135:13, :5136:13, :5137:13
  wire [134:0] _T_1393 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5138:19, :5139:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5140:5
    if (rst)	// matmul/matmul-hw.mlir:5140:5
      _T_1390 <= _T_1393;	// matmul/matmul-hw.mlir:5143:7
    else	// matmul/matmul-hw.mlir:5140:5
      _T_1390 <= _T_1392;	// matmul/matmul-hw.mlir:5141:7
  end // always @(posedge)
  wire _T_1394 = _T_1390[8'h86];	// matmul/matmul-hw.mlir:5133:13, :5145:17, :5146:13
  assign _T_415 = _T_1394 ? 1'h1 : _T_412;	// matmul/matmul-hw.mlir:1590:13, :5147:13, :5165:13
  assign _T_414 = _T_1394 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5148:13
  assign _T_413 = _T_1394 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2009:18, :2899:30, :5149:13
  wire [135:0] _T_1396 = _T_1395;	// matmul/matmul-hw.mlir:5151:13
  wire [135:0] _T_1397 = {_T_1396[8'h0+:135], {{t}}};	// matmul/matmul-hw.mlir:5152:19, :5153:13, :5154:13, :5155:13
  wire [135:0] _T_1398 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5156:19, :5157:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5158:5
    if (rst)	// matmul/matmul-hw.mlir:5158:5
      _T_1395 <= _T_1398;	// matmul/matmul-hw.mlir:5161:7
    else	// matmul/matmul-hw.mlir:5158:5
      _T_1395 <= _T_1397;	// matmul/matmul-hw.mlir:5159:7
  end // always @(posedge)
  wire _T_1399 = _T_1395[8'h87];	// matmul/matmul-hw.mlir:5151:13, :5163:17, :5164:13
  assign _T_412 = _T_1399 ? 1'h1 : _T_409;	// matmul/matmul-hw.mlir:1590:13, :5165:13, :5183:13
  assign _T_411 = _T_1399 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5166:13
  assign _T_410 = _T_1399 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2006:18, :2899:30, :5167:13
  wire [136:0] _T_1401 = _T_1400;	// matmul/matmul-hw.mlir:5169:13
  wire [136:0] _T_1402 = {_T_1401[8'h0+:136], {{t}}};	// matmul/matmul-hw.mlir:5170:19, :5171:13, :5172:13, :5173:13
  wire [136:0] _T_1403 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5174:19, :5175:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5176:5
    if (rst)	// matmul/matmul-hw.mlir:5176:5
      _T_1400 <= _T_1403;	// matmul/matmul-hw.mlir:5179:7
    else	// matmul/matmul-hw.mlir:5176:5
      _T_1400 <= _T_1402;	// matmul/matmul-hw.mlir:5177:7
  end // always @(posedge)
  wire _T_1404 = _T_1400[8'h88];	// matmul/matmul-hw.mlir:5169:13, :5181:17, :5182:13
  assign _T_409 = _T_1404 ? 1'h1 : _T_406;	// matmul/matmul-hw.mlir:1590:13, :5183:13, :5201:13
  assign _T_408 = _T_1404 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5184:13
  assign _T_407 = _T_1404 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2003:18, :2899:30, :5185:13
  wire [137:0] _T_1406 = _T_1405;	// matmul/matmul-hw.mlir:5187:13
  wire [137:0] _T_1407 = {_T_1406[8'h0+:137], {{t}}};	// matmul/matmul-hw.mlir:5188:19, :5189:13, :5190:13, :5191:13
  wire [137:0] _T_1408 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5192:19, :5193:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5194:5
    if (rst)	// matmul/matmul-hw.mlir:5194:5
      _T_1405 <= _T_1408;	// matmul/matmul-hw.mlir:5197:7
    else	// matmul/matmul-hw.mlir:5194:5
      _T_1405 <= _T_1407;	// matmul/matmul-hw.mlir:5195:7
  end // always @(posedge)
  wire _T_1409 = _T_1405[8'h89];	// matmul/matmul-hw.mlir:5187:13, :5199:17, :5200:13
  assign _T_406 = _T_1409 ? 1'h1 : _T_403;	// matmul/matmul-hw.mlir:1590:13, :5201:13, :5219:13
  assign _T_405 = _T_1409 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5202:13
  assign _T_404 = _T_1409 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:2000:18, :2899:30, :5203:13
  wire [138:0] _T_1411 = _T_1410;	// matmul/matmul-hw.mlir:5205:13
  wire [138:0] _T_1412 = {_T_1411[8'h0+:138], {{t}}};	// matmul/matmul-hw.mlir:5206:19, :5207:13, :5208:13, :5209:13
  wire [138:0] _T_1413 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5210:19, :5211:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5212:5
    if (rst)	// matmul/matmul-hw.mlir:5212:5
      _T_1410 <= _T_1413;	// matmul/matmul-hw.mlir:5215:7
    else	// matmul/matmul-hw.mlir:5212:5
      _T_1410 <= _T_1412;	// matmul/matmul-hw.mlir:5213:7
  end // always @(posedge)
  wire _T_1414 = _T_1410[8'h8A];	// matmul/matmul-hw.mlir:5205:13, :5217:17, :5218:13
  assign _T_403 = _T_1414 ? 1'h1 : _T_400;	// matmul/matmul-hw.mlir:1590:13, :5219:13, :5237:13
  assign _T_402 = _T_1414 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5220:13
  assign _T_401 = _T_1414 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1997:18, :2899:30, :5221:13
  wire [139:0] _T_1416 = _T_1415;	// matmul/matmul-hw.mlir:5223:13
  wire [139:0] _T_1417 = {_T_1416[8'h0+:139], {{t}}};	// matmul/matmul-hw.mlir:5224:19, :5225:13, :5226:13, :5227:13
  wire [139:0] _T_1418 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5228:19, :5229:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5230:5
    if (rst)	// matmul/matmul-hw.mlir:5230:5
      _T_1415 <= _T_1418;	// matmul/matmul-hw.mlir:5233:7
    else	// matmul/matmul-hw.mlir:5230:5
      _T_1415 <= _T_1417;	// matmul/matmul-hw.mlir:5231:7
  end // always @(posedge)
  wire _T_1419 = _T_1415[8'h8B];	// matmul/matmul-hw.mlir:5223:13, :5235:17, :5236:13
  assign _T_400 = _T_1419 ? 1'h1 : _T_397;	// matmul/matmul-hw.mlir:1590:13, :5237:13, :5255:13
  assign _T_399 = _T_1419 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5238:13
  assign _T_398 = _T_1419 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1994:18, :2899:30, :5239:13
  wire [140:0] _T_1421 = _T_1420;	// matmul/matmul-hw.mlir:5241:13
  wire [140:0] _T_1422 = {_T_1421[8'h0+:140], {{t}}};	// matmul/matmul-hw.mlir:5242:19, :5243:13, :5244:13, :5245:13
  wire [140:0] _T_1423 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5246:19, :5247:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5248:5
    if (rst)	// matmul/matmul-hw.mlir:5248:5
      _T_1420 <= _T_1423;	// matmul/matmul-hw.mlir:5251:7
    else	// matmul/matmul-hw.mlir:5248:5
      _T_1420 <= _T_1422;	// matmul/matmul-hw.mlir:5249:7
  end // always @(posedge)
  wire _T_1424 = _T_1420[8'h8C];	// matmul/matmul-hw.mlir:5241:13, :5253:17, :5254:13
  assign _T_397 = _T_1424 ? 1'h1 : _T_394;	// matmul/matmul-hw.mlir:1590:13, :5255:13, :5273:13
  assign _T_396 = _T_1424 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5256:13
  assign _T_395 = _T_1424 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1991:18, :2899:30, :5257:13
  wire [141:0] _T_1426 = _T_1425;	// matmul/matmul-hw.mlir:5259:13
  wire [141:0] _T_1427 = {_T_1426[8'h0+:141], {{t}}};	// matmul/matmul-hw.mlir:5260:19, :5261:13, :5262:13, :5263:13
  wire [141:0] _T_1428 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5264:19, :5265:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5266:5
    if (rst)	// matmul/matmul-hw.mlir:5266:5
      _T_1425 <= _T_1428;	// matmul/matmul-hw.mlir:5269:7
    else	// matmul/matmul-hw.mlir:5266:5
      _T_1425 <= _T_1427;	// matmul/matmul-hw.mlir:5267:7
  end // always @(posedge)
  wire _T_1429 = _T_1425[8'h8D];	// matmul/matmul-hw.mlir:5259:13, :5271:17, :5272:13
  assign _T_394 = _T_1429 ? 1'h1 : _T_391;	// matmul/matmul-hw.mlir:1590:13, :5273:13, :5291:13
  assign _T_393 = _T_1429 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5274:13
  assign _T_392 = _T_1429 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1988:18, :2899:30, :5275:13
  wire [142:0] _T_1431 = _T_1430;	// matmul/matmul-hw.mlir:5277:13
  wire [142:0] _T_1432 = {_T_1431[8'h0+:142], {{t}}};	// matmul/matmul-hw.mlir:5278:19, :5279:13, :5280:13, :5281:13
  wire [142:0] _T_1433 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5282:19, :5283:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5284:5
    if (rst)	// matmul/matmul-hw.mlir:5284:5
      _T_1430 <= _T_1433;	// matmul/matmul-hw.mlir:5287:7
    else	// matmul/matmul-hw.mlir:5284:5
      _T_1430 <= _T_1432;	// matmul/matmul-hw.mlir:5285:7
  end // always @(posedge)
  wire _T_1434 = _T_1430[8'h8E];	// matmul/matmul-hw.mlir:5277:13, :5289:17, :5290:13
  assign _T_391 = _T_1434 ? 1'h1 : _T_388;	// matmul/matmul-hw.mlir:1590:13, :5291:13, :5309:13
  assign _T_390 = _T_1434 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5292:13
  assign _T_389 = _T_1434 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1985:18, :2899:30, :5293:13
  wire [143:0] _T_1436 = _T_1435;	// matmul/matmul-hw.mlir:5295:13
  wire [143:0] _T_1437 = {_T_1436[8'h0+:143], {{t}}};	// matmul/matmul-hw.mlir:5296:19, :5297:13, :5298:13, :5299:13
  wire [143:0] _T_1438 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5300:19, :5301:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5302:5
    if (rst)	// matmul/matmul-hw.mlir:5302:5
      _T_1435 <= _T_1438;	// matmul/matmul-hw.mlir:5305:7
    else	// matmul/matmul-hw.mlir:5302:5
      _T_1435 <= _T_1437;	// matmul/matmul-hw.mlir:5303:7
  end // always @(posedge)
  wire _T_1439 = _T_1435[8'h8F];	// matmul/matmul-hw.mlir:5295:13, :5307:17, :5308:13
  assign _T_388 = _T_1439 ? 1'h1 : _T_385;	// matmul/matmul-hw.mlir:1590:13, :5309:13, :5327:13
  assign _T_387 = _T_1439 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5310:13
  assign _T_386 = _T_1439 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1982:18, :2899:30, :5311:13
  wire [144:0] _T_1441 = _T_1440;	// matmul/matmul-hw.mlir:5313:13
  wire [144:0] _T_1442 = {_T_1441[8'h0+:144], {{t}}};	// matmul/matmul-hw.mlir:5314:19, :5315:13, :5316:13, :5317:13
  wire [144:0] _T_1443 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5318:19, :5319:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5320:5
    if (rst)	// matmul/matmul-hw.mlir:5320:5
      _T_1440 <= _T_1443;	// matmul/matmul-hw.mlir:5323:7
    else	// matmul/matmul-hw.mlir:5320:5
      _T_1440 <= _T_1442;	// matmul/matmul-hw.mlir:5321:7
  end // always @(posedge)
  wire _T_1444 = _T_1440[8'h90];	// matmul/matmul-hw.mlir:5313:13, :5325:17, :5326:13
  assign _T_385 = _T_1444 ? 1'h1 : _T_382;	// matmul/matmul-hw.mlir:1590:13, :5327:13, :5345:13
  assign _T_384 = _T_1444 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5328:13
  assign _T_383 = _T_1444 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1979:18, :2899:30, :5329:13
  wire [147:0] _T_1446 = _T_1445;	// matmul/matmul-hw.mlir:5331:13
  wire [147:0] _T_1447 = {_T_1446[8'h0+:147], {{t}}};	// matmul/matmul-hw.mlir:5332:19, :5333:13, :5334:13, :5335:13
  wire [147:0] _T_1448 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5336:19, :5337:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5338:5
    if (rst)	// matmul/matmul-hw.mlir:5338:5
      _T_1445 <= _T_1448;	// matmul/matmul-hw.mlir:5341:7
    else	// matmul/matmul-hw.mlir:5338:5
      _T_1445 <= _T_1447;	// matmul/matmul-hw.mlir:5339:7
  end // always @(posedge)
  wire _T_1449 = _T_1445[8'h93];	// matmul/matmul-hw.mlir:5331:13, :5343:17, :5344:13
  assign _T_382 = _T_1449 ? 1'h1 : _T_379;	// matmul/matmul-hw.mlir:1590:13, :5345:13, :5363:13
  assign _T_381 = _T_1449 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5346:13
  assign _T_380 = _T_1449 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1976:18, :2899:30, :5347:13
  wire [148:0] _T_1451 = _T_1450;	// matmul/matmul-hw.mlir:5349:13
  wire [148:0] _T_1452 = {_T_1451[8'h0+:148], {{t}}};	// matmul/matmul-hw.mlir:5350:19, :5351:13, :5352:13, :5353:13
  wire [148:0] _T_1453 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5354:19, :5355:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5356:5
    if (rst)	// matmul/matmul-hw.mlir:5356:5
      _T_1450 <= _T_1453;	// matmul/matmul-hw.mlir:5359:7
    else	// matmul/matmul-hw.mlir:5356:5
      _T_1450 <= _T_1452;	// matmul/matmul-hw.mlir:5357:7
  end // always @(posedge)
  wire _T_1454 = _T_1450[8'h94];	// matmul/matmul-hw.mlir:5349:13, :5361:17, :5362:13
  assign _T_379 = _T_1454 ? 1'h1 : _T_376;	// matmul/matmul-hw.mlir:1590:13, :5363:13, :5381:13
  assign _T_378 = _T_1454 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5364:13
  assign _T_377 = _T_1454 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1973:18, :2899:30, :5365:13
  wire [149:0] _T_1456 = _T_1455;	// matmul/matmul-hw.mlir:5367:13
  wire [149:0] _T_1457 = {_T_1456[8'h0+:149], {{t}}};	// matmul/matmul-hw.mlir:5368:19, :5369:13, :5370:13, :5371:13
  wire [149:0] _T_1458 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5372:19, :5373:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5374:5
    if (rst)	// matmul/matmul-hw.mlir:5374:5
      _T_1455 <= _T_1458;	// matmul/matmul-hw.mlir:5377:7
    else	// matmul/matmul-hw.mlir:5374:5
      _T_1455 <= _T_1457;	// matmul/matmul-hw.mlir:5375:7
  end // always @(posedge)
  wire _T_1459 = _T_1455[8'h95];	// matmul/matmul-hw.mlir:5367:13, :5379:17, :5380:13
  assign _T_376 = _T_1459 ? 1'h1 : _T_373;	// matmul/matmul-hw.mlir:1590:13, :5381:13, :5399:13
  assign _T_375 = _T_1459 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5382:13
  assign _T_374 = _T_1459 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1970:18, :2899:30, :5383:13
  wire [150:0] _T_1461 = _T_1460;	// matmul/matmul-hw.mlir:5385:13
  wire [150:0] _T_1462 = {_T_1461[8'h0+:150], {{t}}};	// matmul/matmul-hw.mlir:5386:19, :5387:13, :5388:13, :5389:13
  wire [150:0] _T_1463 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5390:19, :5391:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5392:5
    if (rst)	// matmul/matmul-hw.mlir:5392:5
      _T_1460 <= _T_1463;	// matmul/matmul-hw.mlir:5395:7
    else	// matmul/matmul-hw.mlir:5392:5
      _T_1460 <= _T_1462;	// matmul/matmul-hw.mlir:5393:7
  end // always @(posedge)
  wire _T_1464 = _T_1460[8'h96];	// matmul/matmul-hw.mlir:5385:13, :5397:17, :5398:13
  assign _T_373 = _T_1464 ? 1'h1 : _T_370;	// matmul/matmul-hw.mlir:1590:13, :5399:13, :5417:13
  assign _T_372 = _T_1464 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5400:13
  assign _T_371 = _T_1464 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1967:18, :2899:30, :5401:13
  wire [151:0] _T_1466 = _T_1465;	// matmul/matmul-hw.mlir:5403:13
  wire [151:0] _T_1467 = {_T_1466[8'h0+:151], {{t}}};	// matmul/matmul-hw.mlir:5404:19, :5405:13, :5406:13, :5407:13
  wire [151:0] _T_1468 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5408:19, :5409:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5410:5
    if (rst)	// matmul/matmul-hw.mlir:5410:5
      _T_1465 <= _T_1468;	// matmul/matmul-hw.mlir:5413:7
    else	// matmul/matmul-hw.mlir:5410:5
      _T_1465 <= _T_1467;	// matmul/matmul-hw.mlir:5411:7
  end // always @(posedge)
  wire _T_1469 = _T_1465[8'h97];	// matmul/matmul-hw.mlir:5403:13, :5415:17, :5416:13
  assign _T_370 = _T_1469 ? 1'h1 : _T_367;	// matmul/matmul-hw.mlir:1590:13, :5417:13, :5435:13
  assign _T_369 = _T_1469 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5418:13
  assign _T_368 = _T_1469 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1964:18, :2899:30, :5419:13
  wire [152:0] _T_1471 = _T_1470;	// matmul/matmul-hw.mlir:5421:13
  wire [152:0] _T_1472 = {_T_1471[8'h0+:152], {{t}}};	// matmul/matmul-hw.mlir:5422:19, :5423:13, :5424:13, :5425:13
  wire [152:0] _T_1473 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5426:19, :5427:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5428:5
    if (rst)	// matmul/matmul-hw.mlir:5428:5
      _T_1470 <= _T_1473;	// matmul/matmul-hw.mlir:5431:7
    else	// matmul/matmul-hw.mlir:5428:5
      _T_1470 <= _T_1472;	// matmul/matmul-hw.mlir:5429:7
  end // always @(posedge)
  wire _T_1474 = _T_1470[8'h98];	// matmul/matmul-hw.mlir:5421:13, :5433:17, :5434:13
  assign _T_367 = _T_1474 ? 1'h1 : _T_364;	// matmul/matmul-hw.mlir:1590:13, :5435:13, :5453:13
  assign _T_366 = _T_1474 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5436:13
  assign _T_365 = _T_1474 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1961:18, :2899:30, :5437:13
  wire [153:0] _T_1476 = _T_1475;	// matmul/matmul-hw.mlir:5439:13
  wire [153:0] _T_1477 = {_T_1476[8'h0+:153], {{t}}};	// matmul/matmul-hw.mlir:5440:19, :5441:13, :5442:13, :5443:13
  wire [153:0] _T_1478 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5444:19, :5445:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5446:5
    if (rst)	// matmul/matmul-hw.mlir:5446:5
      _T_1475 <= _T_1478;	// matmul/matmul-hw.mlir:5449:7
    else	// matmul/matmul-hw.mlir:5446:5
      _T_1475 <= _T_1477;	// matmul/matmul-hw.mlir:5447:7
  end // always @(posedge)
  wire _T_1479 = _T_1475[8'h99];	// matmul/matmul-hw.mlir:5439:13, :5451:17, :5452:13
  assign _T_364 = _T_1479 ? 1'h1 : _T_361;	// matmul/matmul-hw.mlir:1590:13, :5453:13, :5471:13
  assign _T_363 = _T_1479 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5454:13
  assign _T_362 = _T_1479 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1958:18, :2899:30, :5455:13
  wire [154:0] _T_1481 = _T_1480;	// matmul/matmul-hw.mlir:5457:13
  wire [154:0] _T_1482 = {_T_1481[8'h0+:154], {{t}}};	// matmul/matmul-hw.mlir:5458:19, :5459:13, :5460:13, :5461:13
  wire [154:0] _T_1483 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5462:19, :5463:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5464:5
    if (rst)	// matmul/matmul-hw.mlir:5464:5
      _T_1480 <= _T_1483;	// matmul/matmul-hw.mlir:5467:7
    else	// matmul/matmul-hw.mlir:5464:5
      _T_1480 <= _T_1482;	// matmul/matmul-hw.mlir:5465:7
  end // always @(posedge)
  wire _T_1484 = _T_1480[8'h9A];	// matmul/matmul-hw.mlir:5457:13, :5469:17, :5470:13
  assign _T_361 = _T_1484 ? 1'h1 : _T_358;	// matmul/matmul-hw.mlir:1590:13, :5471:13, :5489:13
  assign _T_360 = _T_1484 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5472:13
  assign _T_359 = _T_1484 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1955:18, :2899:30, :5473:13
  wire [155:0] _T_1486 = _T_1485;	// matmul/matmul-hw.mlir:5475:13
  wire [155:0] _T_1487 = {_T_1486[8'h0+:155], {{t}}};	// matmul/matmul-hw.mlir:5476:19, :5477:13, :5478:13, :5479:13
  wire [155:0] _T_1488 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5480:19, :5481:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5482:5
    if (rst)	// matmul/matmul-hw.mlir:5482:5
      _T_1485 <= _T_1488;	// matmul/matmul-hw.mlir:5485:7
    else	// matmul/matmul-hw.mlir:5482:5
      _T_1485 <= _T_1487;	// matmul/matmul-hw.mlir:5483:7
  end // always @(posedge)
  wire _T_1489 = _T_1485[8'h9B];	// matmul/matmul-hw.mlir:5475:13, :5487:17, :5488:13
  assign _T_358 = _T_1489 ? 1'h1 : _T_355;	// matmul/matmul-hw.mlir:1590:13, :5489:13, :5507:13
  assign _T_357 = _T_1489 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5490:13
  assign _T_356 = _T_1489 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1952:18, :2899:30, :5491:13
  wire [156:0] _T_1491 = _T_1490;	// matmul/matmul-hw.mlir:5493:13
  wire [156:0] _T_1492 = {_T_1491[8'h0+:156], {{t}}};	// matmul/matmul-hw.mlir:5494:19, :5495:13, :5496:13, :5497:13
  wire [156:0] _T_1493 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5498:19, :5499:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5500:5
    if (rst)	// matmul/matmul-hw.mlir:5500:5
      _T_1490 <= _T_1493;	// matmul/matmul-hw.mlir:5503:7
    else	// matmul/matmul-hw.mlir:5500:5
      _T_1490 <= _T_1492;	// matmul/matmul-hw.mlir:5501:7
  end // always @(posedge)
  wire _T_1494 = _T_1490[8'h9C];	// matmul/matmul-hw.mlir:5493:13, :5505:17, :5506:13
  assign _T_355 = _T_1494 ? 1'h1 : _T_352;	// matmul/matmul-hw.mlir:1590:13, :5507:13, :5525:13
  assign _T_354 = _T_1494 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5508:13
  assign _T_353 = _T_1494 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1949:18, :2899:30, :5509:13
  wire [157:0] _T_1496 = _T_1495;	// matmul/matmul-hw.mlir:5511:13
  wire [157:0] _T_1497 = {_T_1496[8'h0+:157], {{t}}};	// matmul/matmul-hw.mlir:5512:19, :5513:13, :5514:13, :5515:13
  wire [157:0] _T_1498 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5516:19, :5517:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5518:5
    if (rst)	// matmul/matmul-hw.mlir:5518:5
      _T_1495 <= _T_1498;	// matmul/matmul-hw.mlir:5521:7
    else	// matmul/matmul-hw.mlir:5518:5
      _T_1495 <= _T_1497;	// matmul/matmul-hw.mlir:5519:7
  end // always @(posedge)
  wire _T_1499 = _T_1495[8'h9D];	// matmul/matmul-hw.mlir:5511:13, :5523:16, :5524:13
  assign _T_352 = _T_1499 ? 1'h1 : _T_349;	// matmul/matmul-hw.mlir:1590:13, :5525:13, :5543:13
  assign _T_351 = _T_1499 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5526:13
  assign _T_350 = _T_1499 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1946:18, :2899:30, :5527:13
  wire [158:0] _T_1501 = _T_1500;	// matmul/matmul-hw.mlir:5529:13
  wire [158:0] _T_1502 = {_T_1501[8'h0+:158], {{t}}};	// matmul/matmul-hw.mlir:5530:19, :5531:13, :5532:13, :5533:13
  wire [158:0] _T_1503 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5534:19, :5535:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5536:5
    if (rst)	// matmul/matmul-hw.mlir:5536:5
      _T_1500 <= _T_1503;	// matmul/matmul-hw.mlir:5539:7
    else	// matmul/matmul-hw.mlir:5536:5
      _T_1500 <= _T_1502;	// matmul/matmul-hw.mlir:5537:7
  end // always @(posedge)
  wire _T_1504 = _T_1500[8'h9E];	// matmul/matmul-hw.mlir:5529:13, :5541:16, :5542:13
  assign _T_349 = _T_1504 ? 1'h1 : _T_346;	// matmul/matmul-hw.mlir:1590:13, :5543:13, :5561:13
  assign _T_348 = _T_1504 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5544:13
  assign _T_347 = _T_1504 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1943:18, :2899:30, :5545:13
  wire [159:0] _T_1506 = _T_1505;	// matmul/matmul-hw.mlir:5547:13
  wire [159:0] _T_1507 = {_T_1506[8'h0+:159], {{t}}};	// matmul/matmul-hw.mlir:5548:19, :5549:13, :5550:13, :5551:13
  wire [159:0] _T_1508 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5552:19, :5553:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5554:5
    if (rst)	// matmul/matmul-hw.mlir:5554:5
      _T_1505 <= _T_1508;	// matmul/matmul-hw.mlir:5557:7
    else	// matmul/matmul-hw.mlir:5554:5
      _T_1505 <= _T_1507;	// matmul/matmul-hw.mlir:5555:7
  end // always @(posedge)
  wire _T_1509 = _T_1505[8'h9F];	// matmul/matmul-hw.mlir:5547:13, :5559:16, :5560:13
  assign _T_346 = _T_1509 ? 1'h1 : _T_343;	// matmul/matmul-hw.mlir:1590:13, :5561:13, :5579:13
  assign _T_345 = _T_1509 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5562:13
  assign _T_344 = _T_1509 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1940:18, :2899:30, :5563:13
  wire [160:0] _T_1511 = _T_1510;	// matmul/matmul-hw.mlir:5565:13
  wire [160:0] _T_1512 = {_T_1511[8'h0+:160], {{t}}};	// matmul/matmul-hw.mlir:5566:19, :5567:13, :5568:13, :5569:13
  wire [160:0] _T_1513 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5570:19, :5571:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5572:5
    if (rst)	// matmul/matmul-hw.mlir:5572:5
      _T_1510 <= _T_1513;	// matmul/matmul-hw.mlir:5575:7
    else	// matmul/matmul-hw.mlir:5572:5
      _T_1510 <= _T_1512;	// matmul/matmul-hw.mlir:5573:7
  end // always @(posedge)
  wire _T_1514 = _T_1510[8'hA0];	// matmul/matmul-hw.mlir:5565:13, :5577:16, :5578:13
  assign _T_343 = _T_1514 ? 1'h1 : _T_340;	// matmul/matmul-hw.mlir:1590:13, :5579:13, :5597:13
  assign _T_342 = _T_1514 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5580:13
  assign _T_341 = _T_1514 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1937:18, :2899:30, :5581:13
  wire [161:0] _T_1516 = _T_1515;	// matmul/matmul-hw.mlir:5583:13
  wire [161:0] _T_1517 = {_T_1516[8'h0+:161], {{t}}};	// matmul/matmul-hw.mlir:5584:19, :5585:13, :5586:13, :5587:13
  wire [161:0] _T_1518 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5588:19, :5589:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5590:5
    if (rst)	// matmul/matmul-hw.mlir:5590:5
      _T_1515 <= _T_1518;	// matmul/matmul-hw.mlir:5593:7
    else	// matmul/matmul-hw.mlir:5590:5
      _T_1515 <= _T_1517;	// matmul/matmul-hw.mlir:5591:7
  end // always @(posedge)
  wire _T_1519 = _T_1515[8'hA1];	// matmul/matmul-hw.mlir:5583:13, :5595:16, :5596:13
  assign _T_340 = _T_1519 ? 1'h1 : _T_337;	// matmul/matmul-hw.mlir:1590:13, :5597:13, :5615:13
  assign _T_339 = _T_1519 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5598:13
  assign _T_338 = _T_1519 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1934:18, :2899:30, :5599:13
  wire [162:0] _T_1521 = _T_1520;	// matmul/matmul-hw.mlir:5601:13
  wire [162:0] _T_1522 = {_T_1521[8'h0+:162], {{t}}};	// matmul/matmul-hw.mlir:5602:19, :5603:13, :5604:13, :5605:13
  wire [162:0] _T_1523 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5606:19, :5607:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5608:5
    if (rst)	// matmul/matmul-hw.mlir:5608:5
      _T_1520 <= _T_1523;	// matmul/matmul-hw.mlir:5611:7
    else	// matmul/matmul-hw.mlir:5608:5
      _T_1520 <= _T_1522;	// matmul/matmul-hw.mlir:5609:7
  end // always @(posedge)
  wire _T_1524 = _T_1520[8'hA2];	// matmul/matmul-hw.mlir:5601:13, :5613:16, :5614:13
  assign _T_337 = _T_1524 ? 1'h1 : _T_334;	// matmul/matmul-hw.mlir:1590:13, :5615:13, :5633:13
  assign _T_336 = _T_1524 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5616:13
  assign _T_335 = _T_1524 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1931:18, :2899:30, :5617:13
  wire [165:0] _T_1526 = _T_1525;	// matmul/matmul-hw.mlir:5619:13
  wire [165:0] _T_1527 = {_T_1526[8'h0+:165], {{t}}};	// matmul/matmul-hw.mlir:5620:19, :5621:13, :5622:13, :5623:13
  wire [165:0] _T_1528 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5624:19, :5625:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5626:5
    if (rst)	// matmul/matmul-hw.mlir:5626:5
      _T_1525 <= _T_1528;	// matmul/matmul-hw.mlir:5629:7
    else	// matmul/matmul-hw.mlir:5626:5
      _T_1525 <= _T_1527;	// matmul/matmul-hw.mlir:5627:7
  end // always @(posedge)
  wire _T_1529 = _T_1525[8'hA5];	// matmul/matmul-hw.mlir:5619:13, :5631:16, :5632:13
  assign _T_334 = _T_1529 ? 1'h1 : _T_331;	// matmul/matmul-hw.mlir:1590:13, :5633:13, :5651:13
  assign _T_333 = _T_1529 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5634:13
  assign _T_332 = _T_1529 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1928:18, :2899:30, :5635:13
  wire [166:0] _T_1531 = _T_1530;	// matmul/matmul-hw.mlir:5637:13
  wire [166:0] _T_1532 = {_T_1531[8'h0+:166], {{t}}};	// matmul/matmul-hw.mlir:5638:19, :5639:13, :5640:13, :5641:13
  wire [166:0] _T_1533 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5642:19, :5643:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5644:5
    if (rst)	// matmul/matmul-hw.mlir:5644:5
      _T_1530 <= _T_1533;	// matmul/matmul-hw.mlir:5647:7
    else	// matmul/matmul-hw.mlir:5644:5
      _T_1530 <= _T_1532;	// matmul/matmul-hw.mlir:5645:7
  end // always @(posedge)
  wire _T_1534 = _T_1530[8'hA6];	// matmul/matmul-hw.mlir:5637:13, :5649:16, :5650:13
  assign _T_331 = _T_1534 ? 1'h1 : _T_328;	// matmul/matmul-hw.mlir:1590:13, :5651:13, :5669:13
  assign _T_330 = _T_1534 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5652:13
  assign _T_329 = _T_1534 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1925:18, :2899:30, :5653:13
  wire [167:0] _T_1536 = _T_1535;	// matmul/matmul-hw.mlir:5655:13
  wire [167:0] _T_1537 = {_T_1536[8'h0+:167], {{t}}};	// matmul/matmul-hw.mlir:5656:19, :5657:13, :5658:13, :5659:13
  wire [167:0] _T_1538 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5660:19, :5661:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5662:5
    if (rst)	// matmul/matmul-hw.mlir:5662:5
      _T_1535 <= _T_1538;	// matmul/matmul-hw.mlir:5665:7
    else	// matmul/matmul-hw.mlir:5662:5
      _T_1535 <= _T_1537;	// matmul/matmul-hw.mlir:5663:7
  end // always @(posedge)
  wire _T_1539 = _T_1535[8'hA7];	// matmul/matmul-hw.mlir:5655:13, :5667:16, :5668:13
  assign _T_328 = _T_1539 ? 1'h1 : _T_325;	// matmul/matmul-hw.mlir:1590:13, :5669:13, :5687:13
  assign _T_327 = _T_1539 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5670:13
  assign _T_326 = _T_1539 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1922:18, :2899:30, :5671:13
  wire [168:0] _T_1541 = _T_1540;	// matmul/matmul-hw.mlir:5673:13
  wire [168:0] _T_1542 = {_T_1541[8'h0+:168], {{t}}};	// matmul/matmul-hw.mlir:5674:19, :5675:13, :5676:13, :5677:13
  wire [168:0] _T_1543 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5678:19, :5679:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5680:5
    if (rst)	// matmul/matmul-hw.mlir:5680:5
      _T_1540 <= _T_1543;	// matmul/matmul-hw.mlir:5683:7
    else	// matmul/matmul-hw.mlir:5680:5
      _T_1540 <= _T_1542;	// matmul/matmul-hw.mlir:5681:7
  end // always @(posedge)
  wire _T_1544 = _T_1540[8'hA8];	// matmul/matmul-hw.mlir:5673:13, :5685:16, :5686:13
  assign _T_325 = _T_1544 ? 1'h1 : _T_322;	// matmul/matmul-hw.mlir:1590:13, :5687:13, :5705:13
  assign _T_324 = _T_1544 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5688:13
  assign _T_323 = _T_1544 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1919:18, :2899:30, :5689:13
  wire [169:0] _T_1546 = _T_1545;	// matmul/matmul-hw.mlir:5691:13
  wire [169:0] _T_1547 = {_T_1546[8'h0+:169], {{t}}};	// matmul/matmul-hw.mlir:5692:19, :5693:13, :5694:13, :5695:13
  wire [169:0] _T_1548 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5696:19, :5697:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5698:5
    if (rst)	// matmul/matmul-hw.mlir:5698:5
      _T_1545 <= _T_1548;	// matmul/matmul-hw.mlir:5701:7
    else	// matmul/matmul-hw.mlir:5698:5
      _T_1545 <= _T_1547;	// matmul/matmul-hw.mlir:5699:7
  end // always @(posedge)
  wire _T_1549 = _T_1545[8'hA9];	// matmul/matmul-hw.mlir:5691:13, :5703:16, :5704:13
  assign _T_322 = _T_1549 ? 1'h1 : _T_319;	// matmul/matmul-hw.mlir:1590:13, :5705:13, :5723:13
  assign _T_321 = _T_1549 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5706:13
  assign _T_320 = _T_1549 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1916:18, :2899:30, :5707:13
  wire [170:0] _T_1551 = _T_1550;	// matmul/matmul-hw.mlir:5709:13
  wire [170:0] _T_1552 = {_T_1551[8'h0+:170], {{t}}};	// matmul/matmul-hw.mlir:5710:19, :5711:13, :5712:13, :5713:13
  wire [170:0] _T_1553 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5714:19, :5715:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5716:5
    if (rst)	// matmul/matmul-hw.mlir:5716:5
      _T_1550 <= _T_1553;	// matmul/matmul-hw.mlir:5719:7
    else	// matmul/matmul-hw.mlir:5716:5
      _T_1550 <= _T_1552;	// matmul/matmul-hw.mlir:5717:7
  end // always @(posedge)
  wire _T_1554 = _T_1550[8'hAA];	// matmul/matmul-hw.mlir:5709:13, :5721:16, :5722:13
  assign _T_319 = _T_1554 ? 1'h1 : _T_316;	// matmul/matmul-hw.mlir:1590:13, :5723:13, :5741:13
  assign _T_318 = _T_1554 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5724:13
  assign _T_317 = _T_1554 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1913:18, :2899:30, :5725:13
  wire [171:0] _T_1556 = _T_1555;	// matmul/matmul-hw.mlir:5727:13
  wire [171:0] _T_1557 = {_T_1556[8'h0+:171], {{t}}};	// matmul/matmul-hw.mlir:5728:19, :5729:13, :5730:13, :5731:13
  wire [171:0] _T_1558 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5732:19, :5733:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5734:5
    if (rst)	// matmul/matmul-hw.mlir:5734:5
      _T_1555 <= _T_1558;	// matmul/matmul-hw.mlir:5737:7
    else	// matmul/matmul-hw.mlir:5734:5
      _T_1555 <= _T_1557;	// matmul/matmul-hw.mlir:5735:7
  end // always @(posedge)
  wire _T_1559 = _T_1555[8'hAB];	// matmul/matmul-hw.mlir:5727:13, :5739:16, :5740:13
  assign _T_316 = _T_1559 ? 1'h1 : _T_313;	// matmul/matmul-hw.mlir:1590:13, :5741:13, :5759:13
  assign _T_315 = _T_1559 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5742:13
  assign _T_314 = _T_1559 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1910:18, :2899:30, :5743:13
  wire [172:0] _T_1561 = _T_1560;	// matmul/matmul-hw.mlir:5745:13
  wire [172:0] _T_1562 = {_T_1561[8'h0+:172], {{t}}};	// matmul/matmul-hw.mlir:5746:19, :5747:13, :5748:13, :5749:13
  wire [172:0] _T_1563 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5750:19, :5751:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5752:5
    if (rst)	// matmul/matmul-hw.mlir:5752:5
      _T_1560 <= _T_1563;	// matmul/matmul-hw.mlir:5755:7
    else	// matmul/matmul-hw.mlir:5752:5
      _T_1560 <= _T_1562;	// matmul/matmul-hw.mlir:5753:7
  end // always @(posedge)
  wire _T_1564 = _T_1560[8'hAC];	// matmul/matmul-hw.mlir:5745:13, :5757:16, :5758:13
  assign _T_313 = _T_1564 ? 1'h1 : _T_310;	// matmul/matmul-hw.mlir:1590:13, :5759:13, :5777:13
  assign _T_312 = _T_1564 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5760:13
  assign _T_311 = _T_1564 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1907:18, :2899:30, :5761:13
  wire [173:0] _T_1566 = _T_1565;	// matmul/matmul-hw.mlir:5763:13
  wire [173:0] _T_1567 = {_T_1566[8'h0+:173], {{t}}};	// matmul/matmul-hw.mlir:5764:19, :5765:13, :5766:13, :5767:13
  wire [173:0] _T_1568 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5768:19, :5769:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5770:5
    if (rst)	// matmul/matmul-hw.mlir:5770:5
      _T_1565 <= _T_1568;	// matmul/matmul-hw.mlir:5773:7
    else	// matmul/matmul-hw.mlir:5770:5
      _T_1565 <= _T_1567;	// matmul/matmul-hw.mlir:5771:7
  end // always @(posedge)
  wire _T_1569 = _T_1565[8'hAD];	// matmul/matmul-hw.mlir:5763:13, :5775:16, :5776:13
  assign _T_310 = _T_1569 ? 1'h1 : _T_307;	// matmul/matmul-hw.mlir:1590:13, :5777:13, :5795:13
  assign _T_309 = _T_1569 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5778:13
  assign _T_308 = _T_1569 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1904:18, :2899:30, :5779:13
  wire [174:0] _T_1571 = _T_1570;	// matmul/matmul-hw.mlir:5781:13
  wire [174:0] _T_1572 = {_T_1571[8'h0+:174], {{t}}};	// matmul/matmul-hw.mlir:5782:19, :5783:13, :5784:13, :5785:13
  wire [174:0] _T_1573 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5786:19, :5787:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5788:5
    if (rst)	// matmul/matmul-hw.mlir:5788:5
      _T_1570 <= _T_1573;	// matmul/matmul-hw.mlir:5791:7
    else	// matmul/matmul-hw.mlir:5788:5
      _T_1570 <= _T_1572;	// matmul/matmul-hw.mlir:5789:7
  end // always @(posedge)
  wire _T_1574 = _T_1570[8'hAE];	// matmul/matmul-hw.mlir:5781:13, :5793:16, :5794:13
  assign _T_307 = _T_1574 ? 1'h1 : _T_304;	// matmul/matmul-hw.mlir:1590:13, :5795:13, :5813:13
  assign _T_306 = _T_1574 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5796:13
  assign _T_305 = _T_1574 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1901:18, :2899:30, :5797:13
  wire [175:0] _T_1576 = _T_1575;	// matmul/matmul-hw.mlir:5799:13
  wire [175:0] _T_1577 = {_T_1576[8'h0+:175], {{t}}};	// matmul/matmul-hw.mlir:5800:19, :5801:13, :5802:13, :5803:13
  wire [175:0] _T_1578 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5804:19, :5805:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5806:5
    if (rst)	// matmul/matmul-hw.mlir:5806:5
      _T_1575 <= _T_1578;	// matmul/matmul-hw.mlir:5809:7
    else	// matmul/matmul-hw.mlir:5806:5
      _T_1575 <= _T_1577;	// matmul/matmul-hw.mlir:5807:7
  end // always @(posedge)
  wire _T_1579 = _T_1575[8'hAF];	// matmul/matmul-hw.mlir:5799:13, :5811:16, :5812:13
  assign _T_304 = _T_1579 ? 1'h1 : _T_301;	// matmul/matmul-hw.mlir:1590:13, :5813:13, :5831:13
  assign _T_303 = _T_1579 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5814:13
  assign _T_302 = _T_1579 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1898:18, :2899:30, :5815:13
  wire [176:0] _T_1581 = _T_1580;	// matmul/matmul-hw.mlir:5817:13
  wire [176:0] _T_1582 = {_T_1581[8'h0+:176], {{t}}};	// matmul/matmul-hw.mlir:5818:19, :5819:13, :5820:13, :5821:13
  wire [176:0] _T_1583 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5822:19, :5823:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5824:5
    if (rst)	// matmul/matmul-hw.mlir:5824:5
      _T_1580 <= _T_1583;	// matmul/matmul-hw.mlir:5827:7
    else	// matmul/matmul-hw.mlir:5824:5
      _T_1580 <= _T_1582;	// matmul/matmul-hw.mlir:5825:7
  end // always @(posedge)
  wire _T_1584 = _T_1580[8'hB0];	// matmul/matmul-hw.mlir:5817:13, :5829:16, :5830:13
  assign _T_301 = _T_1584 ? 1'h1 : _T_298;	// matmul/matmul-hw.mlir:1590:13, :5831:13, :5849:13
  assign _T_300 = _T_1584 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5832:13
  assign _T_299 = _T_1584 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1895:18, :2899:30, :5833:13
  wire [177:0] _T_1586 = _T_1585;	// matmul/matmul-hw.mlir:5835:13
  wire [177:0] _T_1587 = {_T_1586[8'h0+:177], {{t}}};	// matmul/matmul-hw.mlir:5836:19, :5837:13, :5838:13, :5839:13
  wire [177:0] _T_1588 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5840:19, :5841:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5842:5
    if (rst)	// matmul/matmul-hw.mlir:5842:5
      _T_1585 <= _T_1588;	// matmul/matmul-hw.mlir:5845:7
    else	// matmul/matmul-hw.mlir:5842:5
      _T_1585 <= _T_1587;	// matmul/matmul-hw.mlir:5843:7
  end // always @(posedge)
  wire _T_1589 = _T_1585[8'hB1];	// matmul/matmul-hw.mlir:5835:13, :5847:16, :5848:13
  assign _T_298 = _T_1589 ? 1'h1 : _T_295;	// matmul/matmul-hw.mlir:1590:13, :5849:13, :5867:13
  assign _T_297 = _T_1589 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5850:13
  assign _T_296 = _T_1589 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1892:18, :2899:30, :5851:13
  wire [178:0] _T_1591 = _T_1590;	// matmul/matmul-hw.mlir:5853:13
  wire [178:0] _T_1592 = {_T_1591[8'h0+:178], {{t}}};	// matmul/matmul-hw.mlir:5854:19, :5855:13, :5856:13, :5857:13
  wire [178:0] _T_1593 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5858:19, :5859:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5860:5
    if (rst)	// matmul/matmul-hw.mlir:5860:5
      _T_1590 <= _T_1593;	// matmul/matmul-hw.mlir:5863:7
    else	// matmul/matmul-hw.mlir:5860:5
      _T_1590 <= _T_1592;	// matmul/matmul-hw.mlir:5861:7
  end // always @(posedge)
  wire _T_1594 = _T_1590[8'hB2];	// matmul/matmul-hw.mlir:5853:13, :5865:16, :5866:13
  assign _T_295 = _T_1594 ? 1'h1 : _T_292;	// matmul/matmul-hw.mlir:1590:13, :5867:13, :5885:13
  assign _T_294 = _T_1594 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5868:13
  assign _T_293 = _T_1594 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1889:18, :2899:30, :5869:13
  wire [179:0] _T_1596 = _T_1595;	// matmul/matmul-hw.mlir:5871:13
  wire [179:0] _T_1597 = {_T_1596[8'h0+:179], {{t}}};	// matmul/matmul-hw.mlir:5872:19, :5873:13, :5874:13, :5875:13
  wire [179:0] _T_1598 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5876:19, :5877:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5878:5
    if (rst)	// matmul/matmul-hw.mlir:5878:5
      _T_1595 <= _T_1598;	// matmul/matmul-hw.mlir:5881:7
    else	// matmul/matmul-hw.mlir:5878:5
      _T_1595 <= _T_1597;	// matmul/matmul-hw.mlir:5879:7
  end // always @(posedge)
  wire _T_1599 = _T_1595[8'hB3];	// matmul/matmul-hw.mlir:5871:13, :5883:16, :5884:13
  assign _T_292 = _T_1599 ? 1'h1 : _T_289;	// matmul/matmul-hw.mlir:1590:13, :5885:13, :5903:13
  assign _T_291 = _T_1599 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5886:13
  assign _T_290 = _T_1599 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1886:18, :2899:30, :5887:13
  wire [180:0] _T_1601 = _T_1600;	// matmul/matmul-hw.mlir:5889:13
  wire [180:0] _T_1602 = {_T_1601[8'h0+:180], {{t}}};	// matmul/matmul-hw.mlir:5890:19, :5891:13, :5892:13, :5893:13
  wire [180:0] _T_1603 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5894:19, :5895:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5896:5
    if (rst)	// matmul/matmul-hw.mlir:5896:5
      _T_1600 <= _T_1603;	// matmul/matmul-hw.mlir:5899:7
    else	// matmul/matmul-hw.mlir:5896:5
      _T_1600 <= _T_1602;	// matmul/matmul-hw.mlir:5897:7
  end // always @(posedge)
  wire _T_1604 = _T_1600[8'hB4];	// matmul/matmul-hw.mlir:5889:13, :5901:16, :5902:13
  assign _T_289 = _T_1604 ? 1'h1 : _T_286;	// matmul/matmul-hw.mlir:1590:13, :5903:13, :5921:13
  assign _T_288 = _T_1604 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5904:13
  assign _T_287 = _T_1604 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1883:18, :2899:30, :5905:13
  wire [183:0] _T_1606 = _T_1605;	// matmul/matmul-hw.mlir:5907:13
  wire [183:0] _T_1607 = {_T_1606[8'h0+:183], {{t}}};	// matmul/matmul-hw.mlir:5908:19, :5909:13, :5910:13, :5911:13
  wire [183:0] _T_1608 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5912:19, :5913:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5914:5
    if (rst)	// matmul/matmul-hw.mlir:5914:5
      _T_1605 <= _T_1608;	// matmul/matmul-hw.mlir:5917:7
    else	// matmul/matmul-hw.mlir:5914:5
      _T_1605 <= _T_1607;	// matmul/matmul-hw.mlir:5915:7
  end // always @(posedge)
  wire _T_1609 = _T_1605[8'hB7];	// matmul/matmul-hw.mlir:5907:13, :5919:16, :5920:13
  assign _T_286 = _T_1609 ? 1'h1 : _T_283;	// matmul/matmul-hw.mlir:1590:13, :5921:13, :5939:13
  assign _T_285 = _T_1609 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5922:13
  assign _T_284 = _T_1609 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1880:18, :2899:30, :5923:13
  wire [184:0] _T_1611 = _T_1610;	// matmul/matmul-hw.mlir:5925:13
  wire [184:0] _T_1612 = {_T_1611[8'h0+:184], {{t}}};	// matmul/matmul-hw.mlir:5926:19, :5927:13, :5928:13, :5929:13
  wire [184:0] _T_1613 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5930:19, :5931:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5932:5
    if (rst)	// matmul/matmul-hw.mlir:5932:5
      _T_1610 <= _T_1613;	// matmul/matmul-hw.mlir:5935:7
    else	// matmul/matmul-hw.mlir:5932:5
      _T_1610 <= _T_1612;	// matmul/matmul-hw.mlir:5933:7
  end // always @(posedge)
  wire _T_1614 = _T_1610[8'hB8];	// matmul/matmul-hw.mlir:5925:13, :5937:16, :5938:13
  assign _T_283 = _T_1614 ? 1'h1 : _T_280;	// matmul/matmul-hw.mlir:1590:13, :5939:13, :5957:13
  assign _T_282 = _T_1614 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5940:13
  assign _T_281 = _T_1614 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1877:18, :2899:30, :5941:13
  wire [185:0] _T_1616 = _T_1615;	// matmul/matmul-hw.mlir:5943:13
  wire [185:0] _T_1617 = {_T_1616[8'h0+:185], {{t}}};	// matmul/matmul-hw.mlir:5944:19, :5945:13, :5946:13, :5947:13
  wire [185:0] _T_1618 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5948:19, :5949:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5950:5
    if (rst)	// matmul/matmul-hw.mlir:5950:5
      _T_1615 <= _T_1618;	// matmul/matmul-hw.mlir:5953:7
    else	// matmul/matmul-hw.mlir:5950:5
      _T_1615 <= _T_1617;	// matmul/matmul-hw.mlir:5951:7
  end // always @(posedge)
  wire _T_1619 = _T_1615[8'hB9];	// matmul/matmul-hw.mlir:5943:13, :5955:16, :5956:13
  assign _T_280 = _T_1619 ? 1'h1 : _T_277;	// matmul/matmul-hw.mlir:1590:13, :5957:13, :5975:13
  assign _T_279 = _T_1619 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5958:13
  assign _T_278 = _T_1619 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1874:18, :2899:30, :5959:13
  wire [186:0] _T_1621 = _T_1620;	// matmul/matmul-hw.mlir:5961:13
  wire [186:0] _T_1622 = {_T_1621[8'h0+:186], {{t}}};	// matmul/matmul-hw.mlir:5962:19, :5963:13, :5964:13, :5965:13
  wire [186:0] _T_1623 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5966:19, :5967:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5968:5
    if (rst)	// matmul/matmul-hw.mlir:5968:5
      _T_1620 <= _T_1623;	// matmul/matmul-hw.mlir:5971:7
    else	// matmul/matmul-hw.mlir:5968:5
      _T_1620 <= _T_1622;	// matmul/matmul-hw.mlir:5969:7
  end // always @(posedge)
  wire _T_1624 = _T_1620[8'hBA];	// matmul/matmul-hw.mlir:5961:13, :5973:16, :5974:13
  assign _T_277 = _T_1624 ? 1'h1 : _T_274;	// matmul/matmul-hw.mlir:1590:13, :5975:13, :5993:13
  assign _T_276 = _T_1624 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5976:13
  assign _T_275 = _T_1624 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1871:18, :2899:30, :5977:13
  wire [187:0] _T_1626 = _T_1625;	// matmul/matmul-hw.mlir:5979:13
  wire [187:0] _T_1627 = {_T_1626[8'h0+:187], {{t}}};	// matmul/matmul-hw.mlir:5980:19, :5981:13, :5982:13, :5983:13
  wire [187:0] _T_1628 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:5984:19, :5985:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:5986:5
    if (rst)	// matmul/matmul-hw.mlir:5986:5
      _T_1625 <= _T_1628;	// matmul/matmul-hw.mlir:5989:7
    else	// matmul/matmul-hw.mlir:5986:5
      _T_1625 <= _T_1627;	// matmul/matmul-hw.mlir:5987:7
  end // always @(posedge)
  wire _T_1629 = _T_1625[8'hBB];	// matmul/matmul-hw.mlir:5979:13, :5991:16, :5992:13
  assign _T_274 = _T_1629 ? 1'h1 : _T_271;	// matmul/matmul-hw.mlir:1590:13, :5993:13, :6011:13
  assign _T_273 = _T_1629 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :5994:13
  assign _T_272 = _T_1629 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1868:18, :2899:30, :5995:13
  wire [188:0] _T_1631 = _T_1630;	// matmul/matmul-hw.mlir:5997:13
  wire [188:0] _T_1632 = {_T_1631[8'h0+:188], {{t}}};	// matmul/matmul-hw.mlir:5998:19, :5999:13, :6000:13, :6001:13
  wire [188:0] _T_1633 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6002:19, :6003:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6004:5
    if (rst)	// matmul/matmul-hw.mlir:6004:5
      _T_1630 <= _T_1633;	// matmul/matmul-hw.mlir:6007:7
    else	// matmul/matmul-hw.mlir:6004:5
      _T_1630 <= _T_1632;	// matmul/matmul-hw.mlir:6005:7
  end // always @(posedge)
  wire _T_1634 = _T_1630[8'hBC];	// matmul/matmul-hw.mlir:5997:13, :6009:16, :6010:13
  assign _T_271 = _T_1634 ? 1'h1 : _T_268;	// matmul/matmul-hw.mlir:1590:13, :6011:13, :6029:13
  assign _T_270 = _T_1634 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6012:13
  assign _T_269 = _T_1634 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1865:18, :2899:30, :6013:13
  wire [189:0] _T_1636 = _T_1635;	// matmul/matmul-hw.mlir:6015:13
  wire [189:0] _T_1637 = {_T_1636[8'h0+:189], {{t}}};	// matmul/matmul-hw.mlir:6016:19, :6017:13, :6018:13, :6019:13
  wire [189:0] _T_1638 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6020:19, :6021:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6022:5
    if (rst)	// matmul/matmul-hw.mlir:6022:5
      _T_1635 <= _T_1638;	// matmul/matmul-hw.mlir:6025:7
    else	// matmul/matmul-hw.mlir:6022:5
      _T_1635 <= _T_1637;	// matmul/matmul-hw.mlir:6023:7
  end // always @(posedge)
  wire _T_1639 = _T_1635[8'hBD];	// matmul/matmul-hw.mlir:6015:13, :6027:16, :6028:13
  assign _T_268 = _T_1639 ? 1'h1 : _T_265;	// matmul/matmul-hw.mlir:1590:13, :6029:13, :6047:13
  assign _T_267 = _T_1639 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6030:13
  assign _T_266 = _T_1639 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1862:18, :2899:30, :6031:13
  wire [190:0] _T_1641 = _T_1640;	// matmul/matmul-hw.mlir:6033:13
  wire [190:0] _T_1642 = {_T_1641[8'h0+:190], {{t}}};	// matmul/matmul-hw.mlir:6034:19, :6035:13, :6036:13, :6037:13
  wire [190:0] _T_1643 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6038:19, :6039:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6040:5
    if (rst)	// matmul/matmul-hw.mlir:6040:5
      _T_1640 <= _T_1643;	// matmul/matmul-hw.mlir:6043:7
    else	// matmul/matmul-hw.mlir:6040:5
      _T_1640 <= _T_1642;	// matmul/matmul-hw.mlir:6041:7
  end // always @(posedge)
  wire _T_1644 = _T_1640[8'hBE];	// matmul/matmul-hw.mlir:6033:13, :6045:16, :6046:13
  assign _T_265 = _T_1644 ? 1'h1 : _T_262;	// matmul/matmul-hw.mlir:1590:13, :6047:13, :6065:13
  assign _T_264 = _T_1644 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6048:13
  assign _T_263 = _T_1644 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1859:18, :2899:30, :6049:13
  wire [191:0] _T_1646 = _T_1645;	// matmul/matmul-hw.mlir:6051:13
  wire [191:0] _T_1647 = {_T_1646[8'h0+:191], {{t}}};	// matmul/matmul-hw.mlir:6052:19, :6053:13, :6054:13, :6055:13
  wire [191:0] _T_1648 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6056:19, :6057:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6058:5
    if (rst)	// matmul/matmul-hw.mlir:6058:5
      _T_1645 <= _T_1648;	// matmul/matmul-hw.mlir:6061:7
    else	// matmul/matmul-hw.mlir:6058:5
      _T_1645 <= _T_1647;	// matmul/matmul-hw.mlir:6059:7
  end // always @(posedge)
  wire _T_1649 = _T_1645[8'hBF];	// matmul/matmul-hw.mlir:6051:13, :6063:16, :6064:13
  assign _T_262 = _T_1649 ? 1'h1 : _T_259;	// matmul/matmul-hw.mlir:1590:13, :6065:13, :6083:13
  assign _T_261 = _T_1649 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6066:13
  assign _T_260 = _T_1649 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1856:18, :2899:30, :6067:13
  wire [192:0] _T_1651 = _T_1650;	// matmul/matmul-hw.mlir:6069:13
  wire [192:0] _T_1652 = {_T_1651[8'h0+:192], {{t}}};	// matmul/matmul-hw.mlir:6070:19, :6071:13, :6072:13, :6073:13
  wire [192:0] _T_1653 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6074:19, :6075:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6076:5
    if (rst)	// matmul/matmul-hw.mlir:6076:5
      _T_1650 <= _T_1653;	// matmul/matmul-hw.mlir:6079:7
    else	// matmul/matmul-hw.mlir:6076:5
      _T_1650 <= _T_1652;	// matmul/matmul-hw.mlir:6077:7
  end // always @(posedge)
  wire _T_1654 = _T_1650[8'hC0];	// matmul/matmul-hw.mlir:6069:13, :6081:16, :6082:13
  assign _T_259 = _T_1654 ? 1'h1 : _T_256;	// matmul/matmul-hw.mlir:1590:13, :6083:13, :6101:13
  assign _T_258 = _T_1654 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6084:13
  assign _T_257 = _T_1654 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1853:18, :2899:30, :6085:13
  wire [193:0] _T_1656 = _T_1655;	// matmul/matmul-hw.mlir:6087:13
  wire [193:0] _T_1657 = {_T_1656[8'h0+:193], {{t}}};	// matmul/matmul-hw.mlir:6088:19, :6089:13, :6090:13, :6091:13
  wire [193:0] _T_1658 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6092:19, :6093:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6094:5
    if (rst)	// matmul/matmul-hw.mlir:6094:5
      _T_1655 <= _T_1658;	// matmul/matmul-hw.mlir:6097:7
    else	// matmul/matmul-hw.mlir:6094:5
      _T_1655 <= _T_1657;	// matmul/matmul-hw.mlir:6095:7
  end // always @(posedge)
  wire _T_1659 = _T_1655[8'hC1];	// matmul/matmul-hw.mlir:6087:13, :6099:16, :6100:13
  assign _T_256 = _T_1659 ? 1'h1 : _T_253;	// matmul/matmul-hw.mlir:1590:13, :6101:13, :6119:13
  assign _T_255 = _T_1659 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6102:13
  assign _T_254 = _T_1659 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1850:18, :2899:30, :6103:13
  wire [194:0] _T_1661 = _T_1660;	// matmul/matmul-hw.mlir:6105:13
  wire [194:0] _T_1662 = {_T_1661[8'h0+:194], {{t}}};	// matmul/matmul-hw.mlir:6106:19, :6107:13, :6108:13, :6109:13
  wire [194:0] _T_1663 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6110:19, :6111:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6112:5
    if (rst)	// matmul/matmul-hw.mlir:6112:5
      _T_1660 <= _T_1663;	// matmul/matmul-hw.mlir:6115:7
    else	// matmul/matmul-hw.mlir:6112:5
      _T_1660 <= _T_1662;	// matmul/matmul-hw.mlir:6113:7
  end // always @(posedge)
  wire _T_1664 = _T_1660[8'hC2];	// matmul/matmul-hw.mlir:6105:13, :6117:16, :6118:13
  assign _T_253 = _T_1664 ? 1'h1 : _T_250;	// matmul/matmul-hw.mlir:1590:13, :6119:13, :6137:13
  assign _T_252 = _T_1664 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6120:13
  assign _T_251 = _T_1664 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1847:18, :2899:30, :6121:13
  wire [195:0] _T_1666 = _T_1665;	// matmul/matmul-hw.mlir:6123:13
  wire [195:0] _T_1667 = {_T_1666[8'h0+:195], {{t}}};	// matmul/matmul-hw.mlir:6124:19, :6125:13, :6126:13, :6127:13
  wire [195:0] _T_1668 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6128:19, :6129:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6130:5
    if (rst)	// matmul/matmul-hw.mlir:6130:5
      _T_1665 <= _T_1668;	// matmul/matmul-hw.mlir:6133:7
    else	// matmul/matmul-hw.mlir:6130:5
      _T_1665 <= _T_1667;	// matmul/matmul-hw.mlir:6131:7
  end // always @(posedge)
  wire _T_1669 = _T_1665[8'hC3];	// matmul/matmul-hw.mlir:6123:13, :6135:16, :6136:13
  assign _T_250 = _T_1669 ? 1'h1 : _T_247;	// matmul/matmul-hw.mlir:1590:13, :6137:13, :6155:13
  assign _T_249 = _T_1669 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6138:13
  assign _T_248 = _T_1669 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1844:18, :2899:30, :6139:13
  wire [196:0] _T_1671 = _T_1670;	// matmul/matmul-hw.mlir:6141:13
  wire [196:0] _T_1672 = {_T_1671[8'h0+:196], {{t}}};	// matmul/matmul-hw.mlir:6142:19, :6143:13, :6144:13, :6145:13
  wire [196:0] _T_1673 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6146:19, :6147:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6148:5
    if (rst)	// matmul/matmul-hw.mlir:6148:5
      _T_1670 <= _T_1673;	// matmul/matmul-hw.mlir:6151:7
    else	// matmul/matmul-hw.mlir:6148:5
      _T_1670 <= _T_1672;	// matmul/matmul-hw.mlir:6149:7
  end // always @(posedge)
  wire _T_1674 = _T_1670[8'hC4];	// matmul/matmul-hw.mlir:6141:13, :6153:16, :6154:13
  assign _T_247 = _T_1674 ? 1'h1 : _T_244;	// matmul/matmul-hw.mlir:1590:13, :6155:13, :6173:13
  assign _T_246 = _T_1674 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6156:13
  assign _T_245 = _T_1674 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1841:18, :2899:30, :6157:13
  wire [197:0] _T_1676 = _T_1675;	// matmul/matmul-hw.mlir:6159:13
  wire [197:0] _T_1677 = {_T_1676[8'h0+:197], {{t}}};	// matmul/matmul-hw.mlir:6160:19, :6161:13, :6162:13, :6163:13
  wire [197:0] _T_1678 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6164:19, :6165:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6166:5
    if (rst)	// matmul/matmul-hw.mlir:6166:5
      _T_1675 <= _T_1678;	// matmul/matmul-hw.mlir:6169:7
    else	// matmul/matmul-hw.mlir:6166:5
      _T_1675 <= _T_1677;	// matmul/matmul-hw.mlir:6167:7
  end // always @(posedge)
  wire _T_1679 = _T_1675[8'hC5];	// matmul/matmul-hw.mlir:6159:13, :6171:16, :6172:13
  assign _T_244 = _T_1679 ? 1'h1 : _T_241;	// matmul/matmul-hw.mlir:1590:13, :6173:13, :6191:13
  assign _T_243 = _T_1679 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6174:13
  assign _T_242 = _T_1679 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1838:18, :2899:30, :6175:13
  wire [198:0] _T_1681 = _T_1680;	// matmul/matmul-hw.mlir:6177:13
  wire [198:0] _T_1682 = {_T_1681[8'h0+:198], {{t}}};	// matmul/matmul-hw.mlir:6178:19, :6179:13, :6180:13, :6181:13
  wire [198:0] _T_1683 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6182:19, :6183:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6184:5
    if (rst)	// matmul/matmul-hw.mlir:6184:5
      _T_1680 <= _T_1683;	// matmul/matmul-hw.mlir:6187:7
    else	// matmul/matmul-hw.mlir:6184:5
      _T_1680 <= _T_1682;	// matmul/matmul-hw.mlir:6185:7
  end // always @(posedge)
  wire _T_1684 = _T_1680[8'hC6];	// matmul/matmul-hw.mlir:6177:13, :6189:16, :6190:13
  assign _T_241 = _T_1684 ? 1'h1 : _T_238;	// matmul/matmul-hw.mlir:1590:13, :6191:13, :6209:13
  assign _T_240 = _T_1684 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6192:13
  assign _T_239 = _T_1684 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1835:18, :2899:30, :6193:13
  wire [201:0] _T_1686 = _T_1685;	// matmul/matmul-hw.mlir:6195:13
  wire [201:0] _T_1687 = {_T_1686[8'h0+:201], {{t}}};	// matmul/matmul-hw.mlir:6196:19, :6197:13, :6198:13, :6199:13
  wire [201:0] _T_1688 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6200:19, :6201:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6202:5
    if (rst)	// matmul/matmul-hw.mlir:6202:5
      _T_1685 <= _T_1688;	// matmul/matmul-hw.mlir:6205:7
    else	// matmul/matmul-hw.mlir:6202:5
      _T_1685 <= _T_1687;	// matmul/matmul-hw.mlir:6203:7
  end // always @(posedge)
  wire _T_1689 = _T_1685[8'hC9];	// matmul/matmul-hw.mlir:6195:13, :6207:16, :6208:13
  assign _T_238 = _T_1689 ? 1'h1 : _T_235;	// matmul/matmul-hw.mlir:1590:13, :6209:13, :6227:13
  assign _T_237 = _T_1689 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6210:13
  assign _T_236 = _T_1689 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1832:18, :2899:30, :6211:13
  wire [202:0] _T_1691 = _T_1690;	// matmul/matmul-hw.mlir:6213:13
  wire [202:0] _T_1692 = {_T_1691[8'h0+:202], {{t}}};	// matmul/matmul-hw.mlir:6214:19, :6215:13, :6216:13, :6217:13
  wire [202:0] _T_1693 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6218:19, :6219:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6220:5
    if (rst)	// matmul/matmul-hw.mlir:6220:5
      _T_1690 <= _T_1693;	// matmul/matmul-hw.mlir:6223:7
    else	// matmul/matmul-hw.mlir:6220:5
      _T_1690 <= _T_1692;	// matmul/matmul-hw.mlir:6221:7
  end // always @(posedge)
  wire _T_1694 = _T_1690[8'hCA];	// matmul/matmul-hw.mlir:6213:13, :6225:16, :6226:13
  assign _T_235 = _T_1694 ? 1'h1 : _T_232;	// matmul/matmul-hw.mlir:1590:13, :6227:13, :6245:13
  assign _T_234 = _T_1694 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6228:13
  assign _T_233 = _T_1694 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1829:18, :2899:30, :6229:13
  wire [203:0] _T_1696 = _T_1695;	// matmul/matmul-hw.mlir:6231:13
  wire [203:0] _T_1697 = {_T_1696[8'h0+:203], {{t}}};	// matmul/matmul-hw.mlir:6232:19, :6233:13, :6234:13, :6235:13
  wire [203:0] _T_1698 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6236:19, :6237:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6238:5
    if (rst)	// matmul/matmul-hw.mlir:6238:5
      _T_1695 <= _T_1698;	// matmul/matmul-hw.mlir:6241:7
    else	// matmul/matmul-hw.mlir:6238:5
      _T_1695 <= _T_1697;	// matmul/matmul-hw.mlir:6239:7
  end // always @(posedge)
  wire _T_1699 = _T_1695[8'hCB];	// matmul/matmul-hw.mlir:6231:13, :6243:16, :6244:13
  assign _T_232 = _T_1699 ? 1'h1 : _T_229;	// matmul/matmul-hw.mlir:1590:13, :6245:13, :6263:13
  assign _T_231 = _T_1699 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6246:13
  assign _T_230 = _T_1699 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1826:18, :2899:30, :6247:13
  wire [204:0] _T_1701 = _T_1700;	// matmul/matmul-hw.mlir:6249:13
  wire [204:0] _T_1702 = {_T_1701[8'h0+:204], {{t}}};	// matmul/matmul-hw.mlir:6250:19, :6251:13, :6252:13, :6253:13
  wire [204:0] _T_1703 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6254:19, :6255:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6256:5
    if (rst)	// matmul/matmul-hw.mlir:6256:5
      _T_1700 <= _T_1703;	// matmul/matmul-hw.mlir:6259:7
    else	// matmul/matmul-hw.mlir:6256:5
      _T_1700 <= _T_1702;	// matmul/matmul-hw.mlir:6257:7
  end // always @(posedge)
  wire _T_1704 = _T_1700[8'hCC];	// matmul/matmul-hw.mlir:6249:13, :6261:16, :6262:13
  assign _T_229 = _T_1704 ? 1'h1 : _T_226;	// matmul/matmul-hw.mlir:1590:13, :6263:13, :6281:13
  assign _T_228 = _T_1704 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6264:13
  assign _T_227 = _T_1704 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1823:18, :2899:30, :6265:13
  wire [205:0] _T_1706 = _T_1705;	// matmul/matmul-hw.mlir:6267:13
  wire [205:0] _T_1707 = {_T_1706[8'h0+:205], {{t}}};	// matmul/matmul-hw.mlir:6268:19, :6269:13, :6270:13, :6271:13
  wire [205:0] _T_1708 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6272:19, :6273:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6274:5
    if (rst)	// matmul/matmul-hw.mlir:6274:5
      _T_1705 <= _T_1708;	// matmul/matmul-hw.mlir:6277:7
    else	// matmul/matmul-hw.mlir:6274:5
      _T_1705 <= _T_1707;	// matmul/matmul-hw.mlir:6275:7
  end // always @(posedge)
  wire _T_1709 = _T_1705[8'hCD];	// matmul/matmul-hw.mlir:6267:13, :6279:16, :6280:13
  assign _T_226 = _T_1709 ? 1'h1 : _T_223;	// matmul/matmul-hw.mlir:1590:13, :6281:13, :6299:13
  assign _T_225 = _T_1709 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6282:13
  assign _T_224 = _T_1709 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1820:18, :2899:30, :6283:13
  wire [206:0] _T_1711 = _T_1710;	// matmul/matmul-hw.mlir:6285:13
  wire [206:0] _T_1712 = {_T_1711[8'h0+:206], {{t}}};	// matmul/matmul-hw.mlir:6286:19, :6287:13, :6288:13, :6289:13
  wire [206:0] _T_1713 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6290:19, :6291:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6292:5
    if (rst)	// matmul/matmul-hw.mlir:6292:5
      _T_1710 <= _T_1713;	// matmul/matmul-hw.mlir:6295:7
    else	// matmul/matmul-hw.mlir:6292:5
      _T_1710 <= _T_1712;	// matmul/matmul-hw.mlir:6293:7
  end // always @(posedge)
  wire _T_1714 = _T_1710[8'hCE];	// matmul/matmul-hw.mlir:6285:13, :6297:16, :6298:13
  assign _T_223 = _T_1714 ? 1'h1 : _T_220;	// matmul/matmul-hw.mlir:1590:13, :6299:13, :6317:13
  assign _T_222 = _T_1714 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6300:13
  assign _T_221 = _T_1714 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1817:18, :2899:30, :6301:13
  wire [207:0] _T_1716 = _T_1715;	// matmul/matmul-hw.mlir:6303:13
  wire [207:0] _T_1717 = {_T_1716[8'h0+:207], {{t}}};	// matmul/matmul-hw.mlir:6304:19, :6305:13, :6306:13, :6307:13
  wire [207:0] _T_1718 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6308:19, :6309:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6310:5
    if (rst)	// matmul/matmul-hw.mlir:6310:5
      _T_1715 <= _T_1718;	// matmul/matmul-hw.mlir:6313:7
    else	// matmul/matmul-hw.mlir:6310:5
      _T_1715 <= _T_1717;	// matmul/matmul-hw.mlir:6311:7
  end // always @(posedge)
  wire _T_1719 = _T_1715[8'hCF];	// matmul/matmul-hw.mlir:6303:13, :6315:16, :6316:13
  assign _T_220 = _T_1719 ? 1'h1 : _T_217;	// matmul/matmul-hw.mlir:1590:13, :6317:13, :6335:13
  assign _T_219 = _T_1719 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6318:13
  assign _T_218 = _T_1719 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1814:18, :2899:30, :6319:13
  wire [208:0] _T_1721 = _T_1720;	// matmul/matmul-hw.mlir:6321:13
  wire [208:0] _T_1722 = {_T_1721[8'h0+:208], {{t}}};	// matmul/matmul-hw.mlir:6322:19, :6323:13, :6324:13, :6325:13
  wire [208:0] _T_1723 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6326:19, :6327:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6328:5
    if (rst)	// matmul/matmul-hw.mlir:6328:5
      _T_1720 <= _T_1723;	// matmul/matmul-hw.mlir:6331:7
    else	// matmul/matmul-hw.mlir:6328:5
      _T_1720 <= _T_1722;	// matmul/matmul-hw.mlir:6329:7
  end // always @(posedge)
  wire _T_1724 = _T_1720[8'hD0];	// matmul/matmul-hw.mlir:6321:13, :6333:16, :6334:13
  assign _T_217 = _T_1724 ? 1'h1 : _T_214;	// matmul/matmul-hw.mlir:1590:13, :6335:13, :6353:13
  assign _T_216 = _T_1724 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6336:13
  assign _T_215 = _T_1724 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1811:18, :2899:30, :6337:13
  wire [209:0] _T_1726 = _T_1725;	// matmul/matmul-hw.mlir:6339:13
  wire [209:0] _T_1727 = {_T_1726[8'h0+:209], {{t}}};	// matmul/matmul-hw.mlir:6340:19, :6341:13, :6342:13, :6343:13
  wire [209:0] _T_1728 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6344:19, :6345:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6346:5
    if (rst)	// matmul/matmul-hw.mlir:6346:5
      _T_1725 <= _T_1728;	// matmul/matmul-hw.mlir:6349:7
    else	// matmul/matmul-hw.mlir:6346:5
      _T_1725 <= _T_1727;	// matmul/matmul-hw.mlir:6347:7
  end // always @(posedge)
  wire _T_1729 = _T_1725[8'hD1];	// matmul/matmul-hw.mlir:6339:13, :6351:16, :6352:13
  assign _T_214 = _T_1729 ? 1'h1 : _T_211;	// matmul/matmul-hw.mlir:1590:13, :6353:13, :6371:13
  assign _T_213 = _T_1729 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6354:13
  assign _T_212 = _T_1729 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1808:18, :2899:30, :6355:13
  wire [210:0] _T_1731 = _T_1730;	// matmul/matmul-hw.mlir:6357:13
  wire [210:0] _T_1732 = {_T_1731[8'h0+:210], {{t}}};	// matmul/matmul-hw.mlir:6358:19, :6359:13, :6360:13, :6361:13
  wire [210:0] _T_1733 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6362:19, :6363:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6364:5
    if (rst)	// matmul/matmul-hw.mlir:6364:5
      _T_1730 <= _T_1733;	// matmul/matmul-hw.mlir:6367:7
    else	// matmul/matmul-hw.mlir:6364:5
      _T_1730 <= _T_1732;	// matmul/matmul-hw.mlir:6365:7
  end // always @(posedge)
  wire _T_1734 = _T_1730[8'hD2];	// matmul/matmul-hw.mlir:6357:13, :6369:16, :6370:13
  assign _T_211 = _T_1734 ? 1'h1 : _T_208;	// matmul/matmul-hw.mlir:1590:13, :6371:13, :6389:13
  assign _T_210 = _T_1734 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6372:13
  assign _T_209 = _T_1734 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1805:18, :2899:30, :6373:13
  wire [211:0] _T_1736 = _T_1735;	// matmul/matmul-hw.mlir:6375:13
  wire [211:0] _T_1737 = {_T_1736[8'h0+:211], {{t}}};	// matmul/matmul-hw.mlir:6376:19, :6377:13, :6378:13, :6379:13
  wire [211:0] _T_1738 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6380:19, :6381:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6382:5
    if (rst)	// matmul/matmul-hw.mlir:6382:5
      _T_1735 <= _T_1738;	// matmul/matmul-hw.mlir:6385:7
    else	// matmul/matmul-hw.mlir:6382:5
      _T_1735 <= _T_1737;	// matmul/matmul-hw.mlir:6383:7
  end // always @(posedge)
  wire _T_1739 = _T_1735[8'hD3];	// matmul/matmul-hw.mlir:6375:13, :6387:16, :6388:13
  assign _T_208 = _T_1739 ? 1'h1 : _T_205;	// matmul/matmul-hw.mlir:1590:13, :6389:13, :6407:13
  assign _T_207 = _T_1739 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6390:13
  assign _T_206 = _T_1739 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1802:18, :2899:30, :6391:13
  wire [212:0] _T_1741 = _T_1740;	// matmul/matmul-hw.mlir:6393:13
  wire [212:0] _T_1742 = {_T_1741[8'h0+:212], {{t}}};	// matmul/matmul-hw.mlir:6394:19, :6395:13, :6396:13, :6397:13
  wire [212:0] _T_1743 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6398:19, :6399:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6400:5
    if (rst)	// matmul/matmul-hw.mlir:6400:5
      _T_1740 <= _T_1743;	// matmul/matmul-hw.mlir:6403:7
    else	// matmul/matmul-hw.mlir:6400:5
      _T_1740 <= _T_1742;	// matmul/matmul-hw.mlir:6401:7
  end // always @(posedge)
  wire _T_1744 = _T_1740[8'hD4];	// matmul/matmul-hw.mlir:6393:13, :6405:16, :6406:13
  assign _T_205 = _T_1744 ? 1'h1 : _T_202;	// matmul/matmul-hw.mlir:1590:13, :6407:13, :6425:13
  assign _T_204 = _T_1744 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6408:13
  assign _T_203 = _T_1744 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1799:18, :2899:30, :6409:13
  wire [213:0] _T_1746 = _T_1745;	// matmul/matmul-hw.mlir:6411:13
  wire [213:0] _T_1747 = {_T_1746[8'h0+:213], {{t}}};	// matmul/matmul-hw.mlir:6412:19, :6413:13, :6414:13, :6415:13
  wire [213:0] _T_1748 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6416:19, :6417:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6418:5
    if (rst)	// matmul/matmul-hw.mlir:6418:5
      _T_1745 <= _T_1748;	// matmul/matmul-hw.mlir:6421:7
    else	// matmul/matmul-hw.mlir:6418:5
      _T_1745 <= _T_1747;	// matmul/matmul-hw.mlir:6419:7
  end // always @(posedge)
  wire _T_1749 = _T_1745[8'hD5];	// matmul/matmul-hw.mlir:6411:13, :6423:16, :6424:13
  assign _T_202 = _T_1749 ? 1'h1 : _T_199;	// matmul/matmul-hw.mlir:1590:13, :6425:13, :6443:13
  assign _T_201 = _T_1749 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6426:13
  assign _T_200 = _T_1749 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1796:18, :2899:30, :6427:13
  wire [214:0] _T_1751 = _T_1750;	// matmul/matmul-hw.mlir:6429:13
  wire [214:0] _T_1752 = {_T_1751[8'h0+:214], {{t}}};	// matmul/matmul-hw.mlir:6430:19, :6431:13, :6432:13, :6433:13
  wire [214:0] _T_1753 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6434:19, :6435:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6436:5
    if (rst)	// matmul/matmul-hw.mlir:6436:5
      _T_1750 <= _T_1753;	// matmul/matmul-hw.mlir:6439:7
    else	// matmul/matmul-hw.mlir:6436:5
      _T_1750 <= _T_1752;	// matmul/matmul-hw.mlir:6437:7
  end // always @(posedge)
  wire _T_1754 = _T_1750[8'hD6];	// matmul/matmul-hw.mlir:6429:13, :6441:16, :6442:13
  assign _T_199 = _T_1754 ? 1'h1 : _T_196;	// matmul/matmul-hw.mlir:1590:13, :6443:13, :6461:13
  assign _T_198 = _T_1754 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6444:13
  assign _T_197 = _T_1754 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1793:18, :2899:30, :6445:13
  wire [215:0] _T_1756 = _T_1755;	// matmul/matmul-hw.mlir:6447:13
  wire [215:0] _T_1757 = {_T_1756[8'h0+:215], {{t}}};	// matmul/matmul-hw.mlir:6448:19, :6449:13, :6450:13, :6451:13
  wire [215:0] _T_1758 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6452:19, :6453:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6454:5
    if (rst)	// matmul/matmul-hw.mlir:6454:5
      _T_1755 <= _T_1758;	// matmul/matmul-hw.mlir:6457:7
    else	// matmul/matmul-hw.mlir:6454:5
      _T_1755 <= _T_1757;	// matmul/matmul-hw.mlir:6455:7
  end // always @(posedge)
  wire _T_1759 = _T_1755[8'hD7];	// matmul/matmul-hw.mlir:6447:13, :6459:16, :6460:13
  assign _T_196 = _T_1759 ? 1'h1 : _T_193;	// matmul/matmul-hw.mlir:1590:13, :6461:13, :6479:13
  assign _T_195 = _T_1759 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6462:13
  assign _T_194 = _T_1759 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1790:18, :2899:30, :6463:13
  wire [216:0] _T_1761 = _T_1760;	// matmul/matmul-hw.mlir:6465:13
  wire [216:0] _T_1762 = {_T_1761[8'h0+:216], {{t}}};	// matmul/matmul-hw.mlir:6466:19, :6467:13, :6468:13, :6469:13
  wire [216:0] _T_1763 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6470:19, :6471:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6472:5
    if (rst)	// matmul/matmul-hw.mlir:6472:5
      _T_1760 <= _T_1763;	// matmul/matmul-hw.mlir:6475:7
    else	// matmul/matmul-hw.mlir:6472:5
      _T_1760 <= _T_1762;	// matmul/matmul-hw.mlir:6473:7
  end // always @(posedge)
  wire _T_1764 = _T_1760[8'hD8];	// matmul/matmul-hw.mlir:6465:13, :6477:16, :6478:13
  assign _T_193 = _T_1764 ? 1'h1 : _T_190;	// matmul/matmul-hw.mlir:1590:13, :6479:13, :6497:13
  assign _T_192 = _T_1764 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6480:13
  assign _T_191 = _T_1764 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1787:18, :2899:30, :6481:13
  wire [219:0] _T_1766 = _T_1765;	// matmul/matmul-hw.mlir:6483:13
  wire [219:0] _T_1767 = {_T_1766[8'h0+:219], {{t}}};	// matmul/matmul-hw.mlir:6484:19, :6485:13, :6486:13, :6487:13
  wire [219:0] _T_1768 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6488:19, :6489:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6490:5
    if (rst)	// matmul/matmul-hw.mlir:6490:5
      _T_1765 <= _T_1768;	// matmul/matmul-hw.mlir:6493:7
    else	// matmul/matmul-hw.mlir:6490:5
      _T_1765 <= _T_1767;	// matmul/matmul-hw.mlir:6491:7
  end // always @(posedge)
  wire _T_1769 = _T_1765[8'hDB];	// matmul/matmul-hw.mlir:6483:13, :6495:16, :6496:13
  assign _T_190 = _T_1769 ? 1'h1 : _T_187;	// matmul/matmul-hw.mlir:1590:13, :6497:13, :6515:13
  assign _T_189 = _T_1769 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6498:13
  assign _T_188 = _T_1769 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1784:18, :2899:30, :6499:13
  wire [220:0] _T_1771 = _T_1770;	// matmul/matmul-hw.mlir:6501:13
  wire [220:0] _T_1772 = {_T_1771[8'h0+:220], {{t}}};	// matmul/matmul-hw.mlir:6502:19, :6503:13, :6504:13, :6505:13
  wire [220:0] _T_1773 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6506:19, :6507:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6508:5
    if (rst)	// matmul/matmul-hw.mlir:6508:5
      _T_1770 <= _T_1773;	// matmul/matmul-hw.mlir:6511:7
    else	// matmul/matmul-hw.mlir:6508:5
      _T_1770 <= _T_1772;	// matmul/matmul-hw.mlir:6509:7
  end // always @(posedge)
  wire _T_1774 = _T_1770[8'hDC];	// matmul/matmul-hw.mlir:6501:13, :6513:16, :6514:13
  assign _T_187 = _T_1774 ? 1'h1 : _T_184;	// matmul/matmul-hw.mlir:1590:13, :6515:13, :6533:13
  assign _T_186 = _T_1774 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6516:13
  assign _T_185 = _T_1774 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1781:18, :2899:30, :6517:13
  wire [221:0] _T_1776 = _T_1775;	// matmul/matmul-hw.mlir:6519:13
  wire [221:0] _T_1777 = {_T_1776[8'h0+:221], {{t}}};	// matmul/matmul-hw.mlir:6520:19, :6521:13, :6522:13, :6523:13
  wire [221:0] _T_1778 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6524:19, :6525:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6526:5
    if (rst)	// matmul/matmul-hw.mlir:6526:5
      _T_1775 <= _T_1778;	// matmul/matmul-hw.mlir:6529:7
    else	// matmul/matmul-hw.mlir:6526:5
      _T_1775 <= _T_1777;	// matmul/matmul-hw.mlir:6527:7
  end // always @(posedge)
  wire _T_1779 = _T_1775[8'hDD];	// matmul/matmul-hw.mlir:6519:13, :6531:16, :6532:13
  assign _T_184 = _T_1779 ? 1'h1 : _T_181;	// matmul/matmul-hw.mlir:1590:13, :6533:13, :6551:13
  assign _T_183 = _T_1779 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6534:13
  assign _T_182 = _T_1779 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1778:18, :2899:30, :6535:13
  wire [222:0] _T_1781 = _T_1780;	// matmul/matmul-hw.mlir:6537:13
  wire [222:0] _T_1782 = {_T_1781[8'h0+:222], {{t}}};	// matmul/matmul-hw.mlir:6538:19, :6539:13, :6540:13, :6541:13
  wire [222:0] _T_1783 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6542:19, :6543:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6544:5
    if (rst)	// matmul/matmul-hw.mlir:6544:5
      _T_1780 <= _T_1783;	// matmul/matmul-hw.mlir:6547:7
    else	// matmul/matmul-hw.mlir:6544:5
      _T_1780 <= _T_1782;	// matmul/matmul-hw.mlir:6545:7
  end // always @(posedge)
  wire _T_1784 = _T_1780[8'hDE];	// matmul/matmul-hw.mlir:6537:13, :6549:16, :6550:13
  assign _T_181 = _T_1784 ? 1'h1 : _T_178;	// matmul/matmul-hw.mlir:1590:13, :6551:13, :6569:13
  assign _T_180 = _T_1784 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6552:13
  assign _T_179 = _T_1784 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1775:18, :2899:30, :6553:13
  wire [223:0] _T_1786 = _T_1785;	// matmul/matmul-hw.mlir:6555:13
  wire [223:0] _T_1787 = {_T_1786[8'h0+:223], {{t}}};	// matmul/matmul-hw.mlir:6556:19, :6557:13, :6558:13, :6559:13
  wire [223:0] _T_1788 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6560:19, :6561:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6562:5
    if (rst)	// matmul/matmul-hw.mlir:6562:5
      _T_1785 <= _T_1788;	// matmul/matmul-hw.mlir:6565:7
    else	// matmul/matmul-hw.mlir:6562:5
      _T_1785 <= _T_1787;	// matmul/matmul-hw.mlir:6563:7
  end // always @(posedge)
  wire _T_1789 = _T_1785[8'hDF];	// matmul/matmul-hw.mlir:6555:13, :6567:16, :6568:13
  assign _T_178 = _T_1789 ? 1'h1 : _T_175;	// matmul/matmul-hw.mlir:1590:13, :6569:13, :6587:13
  assign _T_177 = _T_1789 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6570:13
  assign _T_176 = _T_1789 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1772:18, :2899:30, :6571:13
  wire [224:0] _T_1791 = _T_1790;	// matmul/matmul-hw.mlir:6573:13
  wire [224:0] _T_1792 = {_T_1791[8'h0+:224], {{t}}};	// matmul/matmul-hw.mlir:6574:19, :6575:13, :6576:13, :6577:13
  wire [224:0] _T_1793 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6578:19, :6579:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6580:5
    if (rst)	// matmul/matmul-hw.mlir:6580:5
      _T_1790 <= _T_1793;	// matmul/matmul-hw.mlir:6583:7
    else	// matmul/matmul-hw.mlir:6580:5
      _T_1790 <= _T_1792;	// matmul/matmul-hw.mlir:6581:7
  end // always @(posedge)
  wire _T_1794 = _T_1790[8'hE0];	// matmul/matmul-hw.mlir:6573:13, :6585:16, :6586:13
  assign _T_175 = _T_1794 ? 1'h1 : _T_172;	// matmul/matmul-hw.mlir:1590:13, :6587:13, :6605:13
  assign _T_174 = _T_1794 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6588:13
  assign _T_173 = _T_1794 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1769:18, :2899:30, :6589:13
  wire [225:0] _T_1796 = _T_1795;	// matmul/matmul-hw.mlir:6591:13
  wire [225:0] _T_1797 = {_T_1796[8'h0+:225], {{t}}};	// matmul/matmul-hw.mlir:6592:19, :6593:13, :6594:13, :6595:13
  wire [225:0] _T_1798 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6596:19, :6597:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6598:5
    if (rst)	// matmul/matmul-hw.mlir:6598:5
      _T_1795 <= _T_1798;	// matmul/matmul-hw.mlir:6601:7
    else	// matmul/matmul-hw.mlir:6598:5
      _T_1795 <= _T_1797;	// matmul/matmul-hw.mlir:6599:7
  end // always @(posedge)
  wire _T_1799 = _T_1795[8'hE1];	// matmul/matmul-hw.mlir:6591:13, :6603:16, :6604:13
  assign _T_172 = _T_1799 ? 1'h1 : _T_169;	// matmul/matmul-hw.mlir:1590:13, :6605:13, :6623:13
  assign _T_171 = _T_1799 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6606:13
  assign _T_170 = _T_1799 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1766:18, :2899:30, :6607:13
  wire [226:0] _T_1801 = _T_1800;	// matmul/matmul-hw.mlir:6609:13
  wire [226:0] _T_1802 = {_T_1801[8'h0+:226], {{t}}};	// matmul/matmul-hw.mlir:6610:19, :6611:13, :6612:13, :6613:13
  wire [226:0] _T_1803 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6614:19, :6615:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6616:5
    if (rst)	// matmul/matmul-hw.mlir:6616:5
      _T_1800 <= _T_1803;	// matmul/matmul-hw.mlir:6619:7
    else	// matmul/matmul-hw.mlir:6616:5
      _T_1800 <= _T_1802;	// matmul/matmul-hw.mlir:6617:7
  end // always @(posedge)
  wire _T_1804 = _T_1800[8'hE2];	// matmul/matmul-hw.mlir:6609:13, :6621:16, :6622:13
  assign _T_169 = _T_1804 ? 1'h1 : _T_166;	// matmul/matmul-hw.mlir:1590:13, :6623:13, :6641:13
  assign _T_168 = _T_1804 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6624:13
  assign _T_167 = _T_1804 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1763:18, :2899:30, :6625:13
  wire [227:0] _T_1806 = _T_1805;	// matmul/matmul-hw.mlir:6627:13
  wire [227:0] _T_1807 = {_T_1806[8'h0+:227], {{t}}};	// matmul/matmul-hw.mlir:6628:19, :6629:13, :6630:13, :6631:13
  wire [227:0] _T_1808 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6632:19, :6633:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6634:5
    if (rst)	// matmul/matmul-hw.mlir:6634:5
      _T_1805 <= _T_1808;	// matmul/matmul-hw.mlir:6637:7
    else	// matmul/matmul-hw.mlir:6634:5
      _T_1805 <= _T_1807;	// matmul/matmul-hw.mlir:6635:7
  end // always @(posedge)
  wire _T_1809 = _T_1805[8'hE3];	// matmul/matmul-hw.mlir:6627:13, :6639:16, :6640:13
  assign _T_166 = _T_1809 ? 1'h1 : _T_163;	// matmul/matmul-hw.mlir:1590:13, :6641:13, :6659:13
  assign _T_165 = _T_1809 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6642:13
  assign _T_164 = _T_1809 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1760:18, :2899:30, :6643:13
  wire [228:0] _T_1811 = _T_1810;	// matmul/matmul-hw.mlir:6645:13
  wire [228:0] _T_1812 = {_T_1811[8'h0+:228], {{t}}};	// matmul/matmul-hw.mlir:6646:19, :6647:13, :6648:13, :6649:13
  wire [228:0] _T_1813 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6650:19, :6651:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6652:5
    if (rst)	// matmul/matmul-hw.mlir:6652:5
      _T_1810 <= _T_1813;	// matmul/matmul-hw.mlir:6655:7
    else	// matmul/matmul-hw.mlir:6652:5
      _T_1810 <= _T_1812;	// matmul/matmul-hw.mlir:6653:7
  end // always @(posedge)
  wire _T_1814 = _T_1810[8'hE4];	// matmul/matmul-hw.mlir:6645:13, :6657:16, :6658:13
  assign _T_163 = _T_1814 ? 1'h1 : _T_160;	// matmul/matmul-hw.mlir:1590:13, :6659:13, :6677:13
  assign _T_162 = _T_1814 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6660:13
  assign _T_161 = _T_1814 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1757:18, :2899:30, :6661:13
  wire [229:0] _T_1816 = _T_1815;	// matmul/matmul-hw.mlir:6663:13
  wire [229:0] _T_1817 = {_T_1816[8'h0+:229], {{t}}};	// matmul/matmul-hw.mlir:6664:19, :6665:13, :6666:13, :6667:13
  wire [229:0] _T_1818 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6668:19, :6669:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6670:5
    if (rst)	// matmul/matmul-hw.mlir:6670:5
      _T_1815 <= _T_1818;	// matmul/matmul-hw.mlir:6673:7
    else	// matmul/matmul-hw.mlir:6670:5
      _T_1815 <= _T_1817;	// matmul/matmul-hw.mlir:6671:7
  end // always @(posedge)
  wire _T_1819 = _T_1815[8'hE5];	// matmul/matmul-hw.mlir:6663:13, :6675:16, :6676:13
  assign _T_160 = _T_1819 ? 1'h1 : _T_157;	// matmul/matmul-hw.mlir:1590:13, :6677:13, :6695:13
  assign _T_159 = _T_1819 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6678:13
  assign _T_158 = _T_1819 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1754:18, :2899:30, :6679:13
  wire [230:0] _T_1821 = _T_1820;	// matmul/matmul-hw.mlir:6681:13
  wire [230:0] _T_1822 = {_T_1821[8'h0+:230], {{t}}};	// matmul/matmul-hw.mlir:6682:19, :6683:13, :6684:13, :6685:13
  wire [230:0] _T_1823 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6686:19, :6687:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6688:5
    if (rst)	// matmul/matmul-hw.mlir:6688:5
      _T_1820 <= _T_1823;	// matmul/matmul-hw.mlir:6691:7
    else	// matmul/matmul-hw.mlir:6688:5
      _T_1820 <= _T_1822;	// matmul/matmul-hw.mlir:6689:7
  end // always @(posedge)
  wire _T_1824 = _T_1820[8'hE6];	// matmul/matmul-hw.mlir:6681:13, :6693:16, :6694:13
  assign _T_157 = _T_1824 ? 1'h1 : _T_154;	// matmul/matmul-hw.mlir:1590:13, :6695:13, :6713:13
  assign _T_156 = _T_1824 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6696:13
  assign _T_155 = _T_1824 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1751:18, :2899:30, :6697:13
  wire [231:0] _T_1826 = _T_1825;	// matmul/matmul-hw.mlir:6699:13
  wire [231:0] _T_1827 = {_T_1826[8'h0+:231], {{t}}};	// matmul/matmul-hw.mlir:6700:19, :6701:13, :6702:13, :6703:13
  wire [231:0] _T_1828 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6704:19, :6705:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6706:5
    if (rst)	// matmul/matmul-hw.mlir:6706:5
      _T_1825 <= _T_1828;	// matmul/matmul-hw.mlir:6709:7
    else	// matmul/matmul-hw.mlir:6706:5
      _T_1825 <= _T_1827;	// matmul/matmul-hw.mlir:6707:7
  end // always @(posedge)
  wire _T_1829 = _T_1825[8'hE7];	// matmul/matmul-hw.mlir:6699:13, :6711:16, :6712:13
  assign _T_154 = _T_1829 ? 1'h1 : _T_151;	// matmul/matmul-hw.mlir:1590:13, :6713:13, :6731:13
  assign _T_153 = _T_1829 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6714:13
  assign _T_152 = _T_1829 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1748:18, :2899:30, :6715:13
  wire [232:0] _T_1831 = _T_1830;	// matmul/matmul-hw.mlir:6717:13
  wire [232:0] _T_1832 = {_T_1831[8'h0+:232], {{t}}};	// matmul/matmul-hw.mlir:6718:19, :6719:13, :6720:13, :6721:13
  wire [232:0] _T_1833 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6722:19, :6723:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6724:5
    if (rst)	// matmul/matmul-hw.mlir:6724:5
      _T_1830 <= _T_1833;	// matmul/matmul-hw.mlir:6727:7
    else	// matmul/matmul-hw.mlir:6724:5
      _T_1830 <= _T_1832;	// matmul/matmul-hw.mlir:6725:7
  end // always @(posedge)
  wire _T_1834 = _T_1830[8'hE8];	// matmul/matmul-hw.mlir:6717:13, :6729:16, :6730:13
  assign _T_151 = _T_1834 ? 1'h1 : _T_148;	// matmul/matmul-hw.mlir:1590:13, :6731:13, :6749:13
  assign _T_150 = _T_1834 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6732:13
  assign _T_149 = _T_1834 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1745:18, :2899:30, :6733:13
  wire [233:0] _T_1836 = _T_1835;	// matmul/matmul-hw.mlir:6735:13
  wire [233:0] _T_1837 = {_T_1836[8'h0+:233], {{t}}};	// matmul/matmul-hw.mlir:6736:19, :6737:13, :6738:13, :6739:13
  wire [233:0] _T_1838 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6740:19, :6741:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6742:5
    if (rst)	// matmul/matmul-hw.mlir:6742:5
      _T_1835 <= _T_1838;	// matmul/matmul-hw.mlir:6745:7
    else	// matmul/matmul-hw.mlir:6742:5
      _T_1835 <= _T_1837;	// matmul/matmul-hw.mlir:6743:7
  end // always @(posedge)
  wire _T_1839 = _T_1835[8'hE9];	// matmul/matmul-hw.mlir:6735:13, :6747:16, :6748:13
  assign _T_148 = _T_1839 ? 1'h1 : _T_145;	// matmul/matmul-hw.mlir:1590:13, :6749:13, :6767:13
  assign _T_147 = _T_1839 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6750:13
  assign _T_146 = _T_1839 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1742:18, :2899:30, :6751:13
  wire [234:0] _T_1841 = _T_1840;	// matmul/matmul-hw.mlir:6753:13
  wire [234:0] _T_1842 = {_T_1841[8'h0+:234], {{t}}};	// matmul/matmul-hw.mlir:6754:19, :6755:13, :6756:13, :6757:13
  wire [234:0] _T_1843 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6758:19, :6759:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6760:5
    if (rst)	// matmul/matmul-hw.mlir:6760:5
      _T_1840 <= _T_1843;	// matmul/matmul-hw.mlir:6763:7
    else	// matmul/matmul-hw.mlir:6760:5
      _T_1840 <= _T_1842;	// matmul/matmul-hw.mlir:6761:7
  end // always @(posedge)
  wire _T_1844 = _T_1840[8'hEA];	// matmul/matmul-hw.mlir:6753:13, :6765:16, :6766:13
  assign _T_145 = _T_1844 ? 1'h1 : _T_142;	// matmul/matmul-hw.mlir:1590:13, :6767:13, :6785:13
  assign _T_144 = _T_1844 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6768:13
  assign _T_143 = _T_1844 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1739:18, :2899:30, :6769:13
  wire [237:0] _T_1846 = _T_1845;	// matmul/matmul-hw.mlir:6771:13
  wire [237:0] _T_1847 = {_T_1846[8'h0+:237], {{t}}};	// matmul/matmul-hw.mlir:6772:19, :6773:13, :6774:13, :6775:13
  wire [237:0] _T_1848 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6776:19, :6777:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6778:5
    if (rst)	// matmul/matmul-hw.mlir:6778:5
      _T_1845 <= _T_1848;	// matmul/matmul-hw.mlir:6781:7
    else	// matmul/matmul-hw.mlir:6778:5
      _T_1845 <= _T_1847;	// matmul/matmul-hw.mlir:6779:7
  end // always @(posedge)
  wire _T_1849 = _T_1845[8'hED];	// matmul/matmul-hw.mlir:6771:13, :6783:16, :6784:13
  assign _T_142 = _T_1849 ? 1'h1 : _T_139;	// matmul/matmul-hw.mlir:1590:13, :6785:13, :6803:13
  assign _T_141 = _T_1849 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6786:13
  assign _T_140 = _T_1849 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1736:18, :2899:30, :6787:13
  wire [238:0] _T_1851 = _T_1850;	// matmul/matmul-hw.mlir:6789:13
  wire [238:0] _T_1852 = {_T_1851[8'h0+:238], {{t}}};	// matmul/matmul-hw.mlir:6790:19, :6791:13, :6792:13, :6793:13
  wire [238:0] _T_1853 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6794:19, :6795:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6796:5
    if (rst)	// matmul/matmul-hw.mlir:6796:5
      _T_1850 <= _T_1853;	// matmul/matmul-hw.mlir:6799:7
    else	// matmul/matmul-hw.mlir:6796:5
      _T_1850 <= _T_1852;	// matmul/matmul-hw.mlir:6797:7
  end // always @(posedge)
  wire _T_1854 = _T_1850[8'hEE];	// matmul/matmul-hw.mlir:6789:13, :6801:16, :6802:13
  assign _T_139 = _T_1854 ? 1'h1 : _T_136;	// matmul/matmul-hw.mlir:1590:13, :6803:13, :6821:13
  assign _T_138 = _T_1854 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6804:13
  assign _T_137 = _T_1854 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1733:18, :2899:30, :6805:13
  wire [239:0] _T_1856 = _T_1855;	// matmul/matmul-hw.mlir:6807:13
  wire [239:0] _T_1857 = {_T_1856[8'h0+:239], {{t}}};	// matmul/matmul-hw.mlir:6808:19, :6809:13, :6810:13, :6811:13
  wire [239:0] _T_1858 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6812:19, :6813:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6814:5
    if (rst)	// matmul/matmul-hw.mlir:6814:5
      _T_1855 <= _T_1858;	// matmul/matmul-hw.mlir:6817:7
    else	// matmul/matmul-hw.mlir:6814:5
      _T_1855 <= _T_1857;	// matmul/matmul-hw.mlir:6815:7
  end // always @(posedge)
  wire _T_1859 = _T_1855[8'hEF];	// matmul/matmul-hw.mlir:6807:13, :6819:16, :6820:13
  assign _T_136 = _T_1859 ? 1'h1 : _T_133;	// matmul/matmul-hw.mlir:1590:13, :6821:13, :6839:13
  assign _T_135 = _T_1859 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6822:13
  assign _T_134 = _T_1859 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1730:18, :2899:30, :6823:13
  wire [240:0] _T_1861 = _T_1860;	// matmul/matmul-hw.mlir:6825:13
  wire [240:0] _T_1862 = {_T_1861[8'h0+:240], {{t}}};	// matmul/matmul-hw.mlir:6826:19, :6827:13, :6828:13, :6829:13
  wire [240:0] _T_1863 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6830:19, :6831:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6832:5
    if (rst)	// matmul/matmul-hw.mlir:6832:5
      _T_1860 <= _T_1863;	// matmul/matmul-hw.mlir:6835:7
    else	// matmul/matmul-hw.mlir:6832:5
      _T_1860 <= _T_1862;	// matmul/matmul-hw.mlir:6833:7
  end // always @(posedge)
  wire _T_1864 = _T_1860[8'hF0];	// matmul/matmul-hw.mlir:6825:13, :6837:16, :6838:13
  assign _T_133 = _T_1864 ? 1'h1 : _T_130;	// matmul/matmul-hw.mlir:1590:13, :6839:13, :6857:13
  assign _T_132 = _T_1864 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6840:13
  assign _T_131 = _T_1864 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1727:18, :2899:30, :6841:13
  wire [241:0] _T_1866 = _T_1865;	// matmul/matmul-hw.mlir:6843:13
  wire [241:0] _T_1867 = {_T_1866[8'h0+:241], {{t}}};	// matmul/matmul-hw.mlir:6844:19, :6845:13, :6846:13, :6847:13
  wire [241:0] _T_1868 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6848:19, :6849:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6850:5
    if (rst)	// matmul/matmul-hw.mlir:6850:5
      _T_1865 <= _T_1868;	// matmul/matmul-hw.mlir:6853:7
    else	// matmul/matmul-hw.mlir:6850:5
      _T_1865 <= _T_1867;	// matmul/matmul-hw.mlir:6851:7
  end // always @(posedge)
  wire _T_1869 = _T_1865[8'hF1];	// matmul/matmul-hw.mlir:6843:13, :6855:16, :6856:13
  assign _T_130 = _T_1869 ? 1'h1 : _T_127;	// matmul/matmul-hw.mlir:1590:13, :6857:13, :6875:13
  assign _T_129 = _T_1869 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6858:13
  assign _T_128 = _T_1869 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1724:18, :2899:30, :6859:13
  wire [242:0] _T_1871 = _T_1870;	// matmul/matmul-hw.mlir:6861:13
  wire [242:0] _T_1872 = {_T_1871[8'h0+:242], {{t}}};	// matmul/matmul-hw.mlir:6862:19, :6863:13, :6864:13, :6865:13
  wire [242:0] _T_1873 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6866:19, :6867:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6868:5
    if (rst)	// matmul/matmul-hw.mlir:6868:5
      _T_1870 <= _T_1873;	// matmul/matmul-hw.mlir:6871:7
    else	// matmul/matmul-hw.mlir:6868:5
      _T_1870 <= _T_1872;	// matmul/matmul-hw.mlir:6869:7
  end // always @(posedge)
  wire _T_1874 = _T_1870[8'hF2];	// matmul/matmul-hw.mlir:6861:13, :6873:16, :6874:13
  assign _T_127 = _T_1874 ? 1'h1 : _T_124;	// matmul/matmul-hw.mlir:1590:13, :6875:13, :6893:13
  assign _T_126 = _T_1874 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6876:13
  assign _T_125 = _T_1874 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1721:18, :2899:30, :6877:13
  wire [243:0] _T_1876 = _T_1875;	// matmul/matmul-hw.mlir:6879:13
  wire [243:0] _T_1877 = {_T_1876[8'h0+:243], {{t}}};	// matmul/matmul-hw.mlir:6880:19, :6881:13, :6882:13, :6883:13
  wire [243:0] _T_1878 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6884:19, :6885:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6886:5
    if (rst)	// matmul/matmul-hw.mlir:6886:5
      _T_1875 <= _T_1878;	// matmul/matmul-hw.mlir:6889:7
    else	// matmul/matmul-hw.mlir:6886:5
      _T_1875 <= _T_1877;	// matmul/matmul-hw.mlir:6887:7
  end // always @(posedge)
  wire _T_1879 = _T_1875[8'hF3];	// matmul/matmul-hw.mlir:6879:13, :6891:16, :6892:13
  assign _T_124 = _T_1879 ? 1'h1 : _T_121;	// matmul/matmul-hw.mlir:1590:13, :6893:13, :6911:13
  assign _T_123 = _T_1879 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6894:13
  assign _T_122 = _T_1879 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1718:18, :2899:30, :6895:13
  wire [244:0] _T_1881 = _T_1880;	// matmul/matmul-hw.mlir:6897:13
  wire [244:0] _T_1882 = {_T_1881[8'h0+:244], {{t}}};	// matmul/matmul-hw.mlir:6898:19, :6899:13, :6900:13, :6901:13
  wire [244:0] _T_1883 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6902:19, :6903:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6904:5
    if (rst)	// matmul/matmul-hw.mlir:6904:5
      _T_1880 <= _T_1883;	// matmul/matmul-hw.mlir:6907:7
    else	// matmul/matmul-hw.mlir:6904:5
      _T_1880 <= _T_1882;	// matmul/matmul-hw.mlir:6905:7
  end // always @(posedge)
  wire _T_1884 = _T_1880[8'hF4];	// matmul/matmul-hw.mlir:6897:13, :6909:16, :6910:13
  assign _T_121 = _T_1884 ? 1'h1 : _T_118;	// matmul/matmul-hw.mlir:1590:13, :6911:13, :6929:13
  assign _T_120 = _T_1884 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6912:13
  assign _T_119 = _T_1884 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1715:18, :2899:30, :6913:13
  wire [245:0] _T_1886 = _T_1885;	// matmul/matmul-hw.mlir:6915:13
  wire [245:0] _T_1887 = {_T_1886[8'h0+:245], {{t}}};	// matmul/matmul-hw.mlir:6916:19, :6917:13, :6918:13, :6919:13
  wire [245:0] _T_1888 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6920:19, :6921:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6922:5
    if (rst)	// matmul/matmul-hw.mlir:6922:5
      _T_1885 <= _T_1888;	// matmul/matmul-hw.mlir:6925:7
    else	// matmul/matmul-hw.mlir:6922:5
      _T_1885 <= _T_1887;	// matmul/matmul-hw.mlir:6923:7
  end // always @(posedge)
  wire _T_1889 = _T_1885[8'hF5];	// matmul/matmul-hw.mlir:6915:13, :6927:16, :6928:13
  assign _T_118 = _T_1889 ? 1'h1 : _T_115;	// matmul/matmul-hw.mlir:1590:13, :6929:13, :6947:13
  assign _T_117 = _T_1889 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6930:13
  assign _T_116 = _T_1889 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1712:18, :2899:30, :6931:13
  wire [246:0] _T_1891 = _T_1890;	// matmul/matmul-hw.mlir:6933:13
  wire [246:0] _T_1892 = {_T_1891[8'h0+:246], {{t}}};	// matmul/matmul-hw.mlir:6934:19, :6935:13, :6936:13, :6937:13
  wire [246:0] _T_1893 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6938:19, :6939:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6940:5
    if (rst)	// matmul/matmul-hw.mlir:6940:5
      _T_1890 <= _T_1893;	// matmul/matmul-hw.mlir:6943:7
    else	// matmul/matmul-hw.mlir:6940:5
      _T_1890 <= _T_1892;	// matmul/matmul-hw.mlir:6941:7
  end // always @(posedge)
  wire _T_1894 = _T_1890[8'hF6];	// matmul/matmul-hw.mlir:6933:13, :6945:16, :6946:13
  assign _T_115 = _T_1894 ? 1'h1 : _T_112;	// matmul/matmul-hw.mlir:1590:13, :6947:13, :6965:13
  assign _T_114 = _T_1894 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6948:13
  assign _T_113 = _T_1894 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1709:18, :2899:30, :6949:13
  wire [247:0] _T_1896 = _T_1895;	// matmul/matmul-hw.mlir:6951:13
  wire [247:0] _T_1897 = {_T_1896[8'h0+:247], {{t}}};	// matmul/matmul-hw.mlir:6952:19, :6953:13, :6954:13, :6955:13
  wire [247:0] _T_1898 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6956:19, :6957:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6958:5
    if (rst)	// matmul/matmul-hw.mlir:6958:5
      _T_1895 <= _T_1898;	// matmul/matmul-hw.mlir:6961:7
    else	// matmul/matmul-hw.mlir:6958:5
      _T_1895 <= _T_1897;	// matmul/matmul-hw.mlir:6959:7
  end // always @(posedge)
  wire _T_1899 = _T_1895[8'hF7];	// matmul/matmul-hw.mlir:6951:13, :6963:15, :6964:13
  assign _T_112 = _T_1899 ? 1'h1 : _T_109;	// matmul/matmul-hw.mlir:1590:13, :6965:13, :6983:13
  assign _T_111 = _T_1899 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6966:13
  assign _T_110 = _T_1899 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1706:18, :2899:30, :6967:13
  wire [248:0] _T_1901 = _T_1900;	// matmul/matmul-hw.mlir:6969:13
  wire [248:0] _T_1902 = {_T_1901[8'h0+:248], {{t}}};	// matmul/matmul-hw.mlir:6970:19, :6971:13, :6972:13, :6973:13
  wire [248:0] _T_1903 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6974:19, :6975:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6976:5
    if (rst)	// matmul/matmul-hw.mlir:6976:5
      _T_1900 <= _T_1903;	// matmul/matmul-hw.mlir:6979:7
    else	// matmul/matmul-hw.mlir:6976:5
      _T_1900 <= _T_1902;	// matmul/matmul-hw.mlir:6977:7
  end // always @(posedge)
  wire _T_1904 = _T_1900[8'hF8];	// matmul/matmul-hw.mlir:6969:13, :6981:15, :6982:13
  assign _T_109 = _T_1904 ? 1'h1 : _T_106;	// matmul/matmul-hw.mlir:1590:13, :6983:13, :7001:13
  assign _T_108 = _T_1904 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :6984:13
  assign _T_107 = _T_1904 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1703:18, :2899:30, :6985:13
  wire [249:0] _T_1906 = _T_1905;	// matmul/matmul-hw.mlir:6987:13
  wire [249:0] _T_1907 = {_T_1906[8'h0+:249], {{t}}};	// matmul/matmul-hw.mlir:6988:19, :6989:13, :6990:13, :6991:13
  wire [249:0] _T_1908 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:6992:19, :6993:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:6994:5
    if (rst)	// matmul/matmul-hw.mlir:6994:5
      _T_1905 <= _T_1908;	// matmul/matmul-hw.mlir:6997:7
    else	// matmul/matmul-hw.mlir:6994:5
      _T_1905 <= _T_1907;	// matmul/matmul-hw.mlir:6995:7
  end // always @(posedge)
  wire _T_1909 = _T_1905[8'hF9];	// matmul/matmul-hw.mlir:6987:13, :6999:15, :7000:13
  assign _T_106 = _T_1909 ? 1'h1 : _T_103;	// matmul/matmul-hw.mlir:1590:13, :7001:13, :7019:13
  assign _T_105 = _T_1909 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7002:13
  assign _T_104 = _T_1909 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1700:18, :2899:30, :7003:13
  wire [250:0] _T_1911 = _T_1910;	// matmul/matmul-hw.mlir:7005:13
  wire [250:0] _T_1912 = {_T_1911[8'h0+:250], {{t}}};	// matmul/matmul-hw.mlir:7006:19, :7007:13, :7008:13, :7009:13
  wire [250:0] _T_1913 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7010:19, :7011:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7012:5
    if (rst)	// matmul/matmul-hw.mlir:7012:5
      _T_1910 <= _T_1913;	// matmul/matmul-hw.mlir:7015:7
    else	// matmul/matmul-hw.mlir:7012:5
      _T_1910 <= _T_1912;	// matmul/matmul-hw.mlir:7013:7
  end // always @(posedge)
  wire _T_1914 = _T_1910[8'hFA];	// matmul/matmul-hw.mlir:7005:13, :7017:15, :7018:13
  assign _T_103 = _T_1914 ? 1'h1 : _T_100;	// matmul/matmul-hw.mlir:1590:13, :7019:13, :7037:13
  assign _T_102 = _T_1914 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7020:13
  assign _T_101 = _T_1914 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1697:18, :2899:30, :7021:13
  wire [251:0] _T_1916 = _T_1915;	// matmul/matmul-hw.mlir:7023:13
  wire [251:0] _T_1917 = {_T_1916[8'h0+:251], {{t}}};	// matmul/matmul-hw.mlir:7024:19, :7025:13, :7026:13, :7027:13
  wire [251:0] _T_1918 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7028:19, :7029:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7030:5
    if (rst)	// matmul/matmul-hw.mlir:7030:5
      _T_1915 <= _T_1918;	// matmul/matmul-hw.mlir:7033:7
    else	// matmul/matmul-hw.mlir:7030:5
      _T_1915 <= _T_1917;	// matmul/matmul-hw.mlir:7031:7
  end // always @(posedge)
  wire _T_1919 = _T_1915[8'hFB];	// matmul/matmul-hw.mlir:7023:13, :7035:15, :7036:13
  assign _T_100 = _T_1919 ? 1'h1 : _T_97;	// matmul/matmul-hw.mlir:1590:13, :7037:13, :7055:13
  assign _T_99 = _T_1919 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7038:13
  assign _T_98 = _T_1919 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1694:18, :2899:30, :7039:13
  wire [252:0] _T_1921 = _T_1920;	// matmul/matmul-hw.mlir:7041:13
  wire [252:0] _T_1922 = {_T_1921[8'h0+:252], {{t}}};	// matmul/matmul-hw.mlir:7042:19, :7043:13, :7044:13, :7045:13
  wire [252:0] _T_1923 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7046:19, :7047:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7048:5
    if (rst)	// matmul/matmul-hw.mlir:7048:5
      _T_1920 <= _T_1923;	// matmul/matmul-hw.mlir:7051:7
    else	// matmul/matmul-hw.mlir:7048:5
      _T_1920 <= _T_1922;	// matmul/matmul-hw.mlir:7049:7
  end // always @(posedge)
  wire _T_1924 = _T_1920[8'hFC];	// matmul/matmul-hw.mlir:7041:13, :7053:15, :7054:13
  assign _T_97 = _T_1924 ? 1'h1 : _T_94;	// matmul/matmul-hw.mlir:1590:13, :7055:13, :7073:13
  assign _T_96 = _T_1924 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7056:13
  assign _T_95 = _T_1924 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1691:18, :2899:30, :7057:13
  wire [255:0] _T_1926 = _T_1925;	// matmul/matmul-hw.mlir:7059:13
  wire [255:0] _T_1927 = {_T_1926[8'h0+:255], {{t}}};	// matmul/matmul-hw.mlir:7060:19, :7061:13, :7062:13, :7063:13
  wire [255:0] _T_1928 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7064:19, :7065:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7066:5
    if (rst)	// matmul/matmul-hw.mlir:7066:5
      _T_1925 <= _T_1928;	// matmul/matmul-hw.mlir:7069:7
    else	// matmul/matmul-hw.mlir:7066:5
      _T_1925 <= _T_1927;	// matmul/matmul-hw.mlir:7067:7
  end // always @(posedge)
  wire _T_1929 = _T_1925[8'hFF];	// matmul/matmul-hw.mlir:7059:13, :7071:15, :7072:13
  assign _T_94 = _T_1929 ? 1'h1 : _T_91;	// matmul/matmul-hw.mlir:1590:13, :7073:13, :7091:13
  assign _T_93 = _T_1929 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7074:13
  assign _T_92 = _T_1929 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1688:18, :2899:30, :7075:13
  wire [256:0] _T_1931 = _T_1930;	// matmul/matmul-hw.mlir:7077:13
  wire [256:0] _T_1932 = {_T_1931[9'h0+:256], {{t}}};	// matmul/matmul-hw.mlir:7078:14, :7079:13, :7080:13, :7081:13
  wire [256:0] _T_1933 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7082:19, :7083:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7084:5
    if (rst)	// matmul/matmul-hw.mlir:7084:5
      _T_1930 <= _T_1933;	// matmul/matmul-hw.mlir:7087:7
    else	// matmul/matmul-hw.mlir:7084:5
      _T_1930 <= _T_1932;	// matmul/matmul-hw.mlir:7085:7
  end // always @(posedge)
  wire _T_1934 = _T_1930[9'h100];	// matmul/matmul-hw.mlir:7077:13, :7089:17, :7090:13
  assign _T_91 = _T_1934 ? 1'h1 : _T_88;	// matmul/matmul-hw.mlir:1590:13, :7091:13, :7109:13
  assign _T_90 = _T_1934 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7092:13
  assign _T_89 = _T_1934 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1685:18, :2899:30, :7093:13
  wire [257:0] _T_1936 = _T_1935;	// matmul/matmul-hw.mlir:7095:13
  wire [257:0] _T_1937 = {_T_1936[9'h0+:257], {{t}}};	// matmul/matmul-hw.mlir:7096:19, :7097:13, :7098:13, :7099:13
  wire [257:0] _T_1938 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7100:19, :7101:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7102:5
    if (rst)	// matmul/matmul-hw.mlir:7102:5
      _T_1935 <= _T_1938;	// matmul/matmul-hw.mlir:7105:7
    else	// matmul/matmul-hw.mlir:7102:5
      _T_1935 <= _T_1937;	// matmul/matmul-hw.mlir:7103:7
  end // always @(posedge)
  wire _T_1939 = _T_1935[9'h101];	// matmul/matmul-hw.mlir:7095:13, :7107:17, :7108:13
  assign _T_88 = _T_1939 ? 1'h1 : _T_85;	// matmul/matmul-hw.mlir:1590:13, :7109:13, :7127:13
  assign _T_87 = _T_1939 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7110:13
  assign _T_86 = _T_1939 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1682:18, :2899:30, :7111:13
  wire [258:0] _T_1941 = _T_1940;	// matmul/matmul-hw.mlir:7113:13
  wire [258:0] _T_1942 = {_T_1941[9'h0+:258], {{t}}};	// matmul/matmul-hw.mlir:7114:19, :7115:13, :7116:13, :7117:13
  wire [258:0] _T_1943 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7118:19, :7119:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7120:5
    if (rst)	// matmul/matmul-hw.mlir:7120:5
      _T_1940 <= _T_1943;	// matmul/matmul-hw.mlir:7123:7
    else	// matmul/matmul-hw.mlir:7120:5
      _T_1940 <= _T_1942;	// matmul/matmul-hw.mlir:7121:7
  end // always @(posedge)
  wire _T_1944 = _T_1940[9'h102];	// matmul/matmul-hw.mlir:7113:13, :7125:17, :7126:13
  assign _T_85 = _T_1944 ? 1'h1 : _T_82;	// matmul/matmul-hw.mlir:1590:13, :7127:13, :7145:13
  assign _T_84 = _T_1944 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7128:13
  assign _T_83 = _T_1944 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1679:18, :2899:30, :7129:13
  wire [259:0] _T_1946 = _T_1945;	// matmul/matmul-hw.mlir:7131:13
  wire [259:0] _T_1947 = {_T_1946[9'h0+:259], {{t}}};	// matmul/matmul-hw.mlir:7132:19, :7133:13, :7134:13, :7135:13
  wire [259:0] _T_1948 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7136:19, :7137:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7138:5
    if (rst)	// matmul/matmul-hw.mlir:7138:5
      _T_1945 <= _T_1948;	// matmul/matmul-hw.mlir:7141:7
    else	// matmul/matmul-hw.mlir:7138:5
      _T_1945 <= _T_1947;	// matmul/matmul-hw.mlir:7139:7
  end // always @(posedge)
  wire _T_1949 = _T_1945[9'h103];	// matmul/matmul-hw.mlir:7131:13, :7143:17, :7144:13
  assign _T_82 = _T_1949 ? 1'h1 : _T_79;	// matmul/matmul-hw.mlir:1590:13, :7145:13, :7163:13
  assign _T_81 = _T_1949 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7146:13
  assign _T_80 = _T_1949 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1676:18, :2899:30, :7147:13
  wire [260:0] _T_1951 = _T_1950;	// matmul/matmul-hw.mlir:7149:13
  wire [260:0] _T_1952 = {_T_1951[9'h0+:260], {{t}}};	// matmul/matmul-hw.mlir:7150:19, :7151:13, :7152:13, :7153:13
  wire [260:0] _T_1953 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7154:19, :7155:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7156:5
    if (rst)	// matmul/matmul-hw.mlir:7156:5
      _T_1950 <= _T_1953;	// matmul/matmul-hw.mlir:7159:7
    else	// matmul/matmul-hw.mlir:7156:5
      _T_1950 <= _T_1952;	// matmul/matmul-hw.mlir:7157:7
  end // always @(posedge)
  wire _T_1954 = _T_1950[9'h104];	// matmul/matmul-hw.mlir:7149:13, :7161:17, :7162:13
  assign _T_79 = _T_1954 ? 1'h1 : _T_76;	// matmul/matmul-hw.mlir:1590:13, :7163:13, :7181:13
  assign _T_78 = _T_1954 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7164:13
  assign _T_77 = _T_1954 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1673:18, :2899:30, :7165:13
  wire [261:0] _T_1956 = _T_1955;	// matmul/matmul-hw.mlir:7167:13
  wire [261:0] _T_1957 = {_T_1956[9'h0+:261], {{t}}};	// matmul/matmul-hw.mlir:7168:19, :7169:13, :7170:13, :7171:13
  wire [261:0] _T_1958 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7172:19, :7173:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7174:5
    if (rst)	// matmul/matmul-hw.mlir:7174:5
      _T_1955 <= _T_1958;	// matmul/matmul-hw.mlir:7177:7
    else	// matmul/matmul-hw.mlir:7174:5
      _T_1955 <= _T_1957;	// matmul/matmul-hw.mlir:7175:7
  end // always @(posedge)
  wire _T_1959 = _T_1955[9'h105];	// matmul/matmul-hw.mlir:7167:13, :7179:17, :7180:13
  assign _T_76 = _T_1959 ? 1'h1 : _T_73;	// matmul/matmul-hw.mlir:1590:13, :7181:13, :7199:13
  assign _T_75 = _T_1959 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7182:13
  assign _T_74 = _T_1959 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1670:18, :2899:30, :7183:13
  wire [262:0] _T_1961 = _T_1960;	// matmul/matmul-hw.mlir:7185:13
  wire [262:0] _T_1962 = {_T_1961[9'h0+:262], {{t}}};	// matmul/matmul-hw.mlir:7186:19, :7187:13, :7188:13, :7189:13
  wire [262:0] _T_1963 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7190:19, :7191:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7192:5
    if (rst)	// matmul/matmul-hw.mlir:7192:5
      _T_1960 <= _T_1963;	// matmul/matmul-hw.mlir:7195:7
    else	// matmul/matmul-hw.mlir:7192:5
      _T_1960 <= _T_1962;	// matmul/matmul-hw.mlir:7193:7
  end // always @(posedge)
  wire _T_1964 = _T_1960[9'h106];	// matmul/matmul-hw.mlir:7185:13, :7197:17, :7198:13
  assign _T_73 = _T_1964 ? 1'h1 : _T_70;	// matmul/matmul-hw.mlir:1590:13, :7199:13, :7217:13
  assign _T_72 = _T_1964 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7200:13
  assign _T_71 = _T_1964 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1667:18, :2899:30, :7201:13
  wire [263:0] _T_1966 = _T_1965;	// matmul/matmul-hw.mlir:7203:13
  wire [263:0] _T_1967 = {_T_1966[9'h0+:263], {{t}}};	// matmul/matmul-hw.mlir:7204:19, :7205:13, :7206:13, :7207:13
  wire [263:0] _T_1968 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7208:19, :7209:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7210:5
    if (rst)	// matmul/matmul-hw.mlir:7210:5
      _T_1965 <= _T_1968;	// matmul/matmul-hw.mlir:7213:7
    else	// matmul/matmul-hw.mlir:7210:5
      _T_1965 <= _T_1967;	// matmul/matmul-hw.mlir:7211:7
  end // always @(posedge)
  wire _T_1969 = _T_1965[9'h107];	// matmul/matmul-hw.mlir:7203:13, :7215:17, :7216:13
  assign _T_70 = _T_1969 ? 1'h1 : _T_67;	// matmul/matmul-hw.mlir:1590:13, :7217:13, :7235:13
  assign _T_69 = _T_1969 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7218:13
  assign _T_68 = _T_1969 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1664:18, :2899:30, :7219:13
  wire [264:0] _T_1971 = _T_1970;	// matmul/matmul-hw.mlir:7221:13
  wire [264:0] _T_1972 = {_T_1971[9'h0+:264], {{t}}};	// matmul/matmul-hw.mlir:7222:19, :7223:13, :7224:13, :7225:13
  wire [264:0] _T_1973 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7226:19, :7227:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7228:5
    if (rst)	// matmul/matmul-hw.mlir:7228:5
      _T_1970 <= _T_1973;	// matmul/matmul-hw.mlir:7231:7
    else	// matmul/matmul-hw.mlir:7228:5
      _T_1970 <= _T_1972;	// matmul/matmul-hw.mlir:7229:7
  end // always @(posedge)
  wire _T_1974 = _T_1970[9'h108];	// matmul/matmul-hw.mlir:7221:13, :7233:17, :7234:13
  assign _T_67 = _T_1974 ? 1'h1 : _T_64;	// matmul/matmul-hw.mlir:1590:13, :7235:13, :7253:13
  assign _T_66 = _T_1974 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7236:13
  assign _T_65 = _T_1974 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1661:18, :2899:30, :7237:13
  wire [265:0] _T_1976 = _T_1975;	// matmul/matmul-hw.mlir:7239:13
  wire [265:0] _T_1977 = {_T_1976[9'h0+:265], {{t}}};	// matmul/matmul-hw.mlir:7240:19, :7241:13, :7242:13, :7243:13
  wire [265:0] _T_1978 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7244:19, :7245:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7246:5
    if (rst)	// matmul/matmul-hw.mlir:7246:5
      _T_1975 <= _T_1978;	// matmul/matmul-hw.mlir:7249:7
    else	// matmul/matmul-hw.mlir:7246:5
      _T_1975 <= _T_1977;	// matmul/matmul-hw.mlir:7247:7
  end // always @(posedge)
  wire _T_1979 = _T_1975[9'h109];	// matmul/matmul-hw.mlir:7239:13, :7251:17, :7252:13
  assign _T_64 = _T_1979 ? 1'h1 : _T_61;	// matmul/matmul-hw.mlir:1590:13, :7253:13, :7271:13
  assign _T_63 = _T_1979 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7254:13
  assign _T_62 = _T_1979 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1658:18, :2899:30, :7255:13
  wire [266:0] _T_1981 = _T_1980;	// matmul/matmul-hw.mlir:7257:13
  wire [266:0] _T_1982 = {_T_1981[9'h0+:266], {{t}}};	// matmul/matmul-hw.mlir:7258:19, :7259:13, :7260:13, :7261:13
  wire [266:0] _T_1983 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7262:19, :7263:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7264:5
    if (rst)	// matmul/matmul-hw.mlir:7264:5
      _T_1980 <= _T_1983;	// matmul/matmul-hw.mlir:7267:7
    else	// matmul/matmul-hw.mlir:7264:5
      _T_1980 <= _T_1982;	// matmul/matmul-hw.mlir:7265:7
  end // always @(posedge)
  wire _T_1984 = _T_1980[9'h10A];	// matmul/matmul-hw.mlir:7257:13, :7269:17, :7270:13
  assign _T_61 = _T_1984 ? 1'h1 : _T_58;	// matmul/matmul-hw.mlir:1590:13, :7271:13, :7289:13
  assign _T_60 = _T_1984 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7272:13
  assign _T_59 = _T_1984 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1655:18, :2899:30, :7273:13
  wire [267:0] _T_1986 = _T_1985;	// matmul/matmul-hw.mlir:7275:13
  wire [267:0] _T_1987 = {_T_1986[9'h0+:267], {{t}}};	// matmul/matmul-hw.mlir:7276:19, :7277:13, :7278:13, :7279:13
  wire [267:0] _T_1988 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7280:19, :7281:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7282:5
    if (rst)	// matmul/matmul-hw.mlir:7282:5
      _T_1985 <= _T_1988;	// matmul/matmul-hw.mlir:7285:7
    else	// matmul/matmul-hw.mlir:7282:5
      _T_1985 <= _T_1987;	// matmul/matmul-hw.mlir:7283:7
  end // always @(posedge)
  wire _T_1989 = _T_1985[9'h10B];	// matmul/matmul-hw.mlir:7275:13, :7287:17, :7288:13
  assign _T_58 = _T_1989 ? 1'h1 : _T_55;	// matmul/matmul-hw.mlir:1590:13, :7289:13, :7307:13
  assign _T_57 = _T_1989 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7290:13
  assign _T_56 = _T_1989 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1652:18, :2899:30, :7291:13
  wire [268:0] _T_1991 = _T_1990;	// matmul/matmul-hw.mlir:7293:13
  wire [268:0] _T_1992 = {_T_1991[9'h0+:268], {{t}}};	// matmul/matmul-hw.mlir:7294:19, :7295:13, :7296:13, :7297:13
  wire [268:0] _T_1993 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7298:19, :7299:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7300:5
    if (rst)	// matmul/matmul-hw.mlir:7300:5
      _T_1990 <= _T_1993;	// matmul/matmul-hw.mlir:7303:7
    else	// matmul/matmul-hw.mlir:7300:5
      _T_1990 <= _T_1992;	// matmul/matmul-hw.mlir:7301:7
  end // always @(posedge)
  wire _T_1994 = _T_1990[9'h10C];	// matmul/matmul-hw.mlir:7293:13, :7305:17, :7306:13
  assign _T_55 = _T_1994 ? 1'h1 : _T_52;	// matmul/matmul-hw.mlir:1590:13, :7307:13, :7325:13
  assign _T_54 = _T_1994 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7308:13
  assign _T_53 = _T_1994 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1649:18, :2899:30, :7309:13
  wire [269:0] _T_1996 = _T_1995;	// matmul/matmul-hw.mlir:7311:13
  wire [269:0] _T_1997 = {_T_1996[9'h0+:269], {{t}}};	// matmul/matmul-hw.mlir:7312:19, :7313:13, :7314:13, :7315:13
  wire [269:0] _T_1998 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7316:19, :7317:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7318:5
    if (rst)	// matmul/matmul-hw.mlir:7318:5
      _T_1995 <= _T_1998;	// matmul/matmul-hw.mlir:7321:7
    else	// matmul/matmul-hw.mlir:7318:5
      _T_1995 <= _T_1997;	// matmul/matmul-hw.mlir:7319:7
  end // always @(posedge)
  wire _T_1999 = _T_1995[9'h10D];	// matmul/matmul-hw.mlir:7311:13, :7323:17, :7324:13
  assign _T_52 = _T_1999 ? 1'h1 : _T_49;	// matmul/matmul-hw.mlir:1590:13, :7325:13, :7343:13
  assign _T_51 = _T_1999 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7326:13
  assign _T_50 = _T_1999 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1646:18, :2899:30, :7327:13
  wire [270:0] _T_2001 = _T_2000;	// matmul/matmul-hw.mlir:7329:13
  wire [270:0] _T_2002 = {_T_2001[9'h0+:270], {{t}}};	// matmul/matmul-hw.mlir:7330:19, :7331:13, :7332:13, :7333:13
  wire [270:0] _T_2003 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7334:19, :7335:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7336:5
    if (rst)	// matmul/matmul-hw.mlir:7336:5
      _T_2000 <= _T_2003;	// matmul/matmul-hw.mlir:7339:7
    else	// matmul/matmul-hw.mlir:7336:5
      _T_2000 <= _T_2002;	// matmul/matmul-hw.mlir:7337:7
  end // always @(posedge)
  wire _T_2004 = _T_2000[9'h10E];	// matmul/matmul-hw.mlir:7329:13, :7341:17, :7342:13
  assign _T_49 = _T_2004 ? 1'h1 : _T_46;	// matmul/matmul-hw.mlir:1590:13, :7343:13, :7361:13
  assign _T_48 = _T_2004 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7344:13
  assign _T_47 = _T_2004 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1643:18, :2899:30, :7345:13
  wire [273:0] _T_2006 = _T_2005;	// matmul/matmul-hw.mlir:7347:13
  wire [273:0] _T_2007 = {_T_2006[9'h0+:273], {{t}}};	// matmul/matmul-hw.mlir:7348:19, :7349:13, :7350:13, :7351:13
  wire [273:0] _T_2008 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7352:19, :7353:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7354:5
    if (rst)	// matmul/matmul-hw.mlir:7354:5
      _T_2005 <= _T_2008;	// matmul/matmul-hw.mlir:7357:7
    else	// matmul/matmul-hw.mlir:7354:5
      _T_2005 <= _T_2007;	// matmul/matmul-hw.mlir:7355:7
  end // always @(posedge)
  wire _T_2009 = _T_2005[9'h111];	// matmul/matmul-hw.mlir:7347:13, :7359:17, :7360:13
  assign _T_46 = _T_2009 ? 1'h1 : _T_43;	// matmul/matmul-hw.mlir:1590:13, :7361:13, :7379:13
  assign _T_45 = _T_2009 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7362:13
  assign _T_44 = _T_2009 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1640:18, :2899:30, :7363:13
  wire [274:0] _T_2011 = _T_2010;	// matmul/matmul-hw.mlir:7365:13
  wire [274:0] _T_2012 = {_T_2011[9'h0+:274], {{t}}};	// matmul/matmul-hw.mlir:7366:19, :7367:13, :7368:13, :7369:13
  wire [274:0] _T_2013 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7370:19, :7371:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7372:5
    if (rst)	// matmul/matmul-hw.mlir:7372:5
      _T_2010 <= _T_2013;	// matmul/matmul-hw.mlir:7375:7
    else	// matmul/matmul-hw.mlir:7372:5
      _T_2010 <= _T_2012;	// matmul/matmul-hw.mlir:7373:7
  end // always @(posedge)
  wire _T_2014 = _T_2010[9'h112];	// matmul/matmul-hw.mlir:7365:13, :7377:17, :7378:13
  assign _T_43 = _T_2014 ? 1'h1 : _T_40;	// matmul/matmul-hw.mlir:1590:13, :7379:13, :7397:13
  assign _T_42 = _T_2014 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7380:13
  assign _T_41 = _T_2014 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1637:18, :2899:30, :7381:13
  wire [275:0] _T_2016 = _T_2015;	// matmul/matmul-hw.mlir:7383:13
  wire [275:0] _T_2017 = {_T_2016[9'h0+:275], {{t}}};	// matmul/matmul-hw.mlir:7384:19, :7385:13, :7386:13, :7387:13
  wire [275:0] _T_2018 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7388:19, :7389:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7390:5
    if (rst)	// matmul/matmul-hw.mlir:7390:5
      _T_2015 <= _T_2018;	// matmul/matmul-hw.mlir:7393:7
    else	// matmul/matmul-hw.mlir:7390:5
      _T_2015 <= _T_2017;	// matmul/matmul-hw.mlir:7391:7
  end // always @(posedge)
  wire _T_2019 = _T_2015[9'h113];	// matmul/matmul-hw.mlir:7383:13, :7395:17, :7396:13
  assign _T_40 = _T_2019 ? 1'h1 : _T_37;	// matmul/matmul-hw.mlir:1590:13, :7397:13, :7415:13
  assign _T_39 = _T_2019 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7398:13
  assign _T_38 = _T_2019 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1634:18, :2899:30, :7399:13
  wire [276:0] _T_2021 = _T_2020;	// matmul/matmul-hw.mlir:7401:13
  wire [276:0] _T_2022 = {_T_2021[9'h0+:276], {{t}}};	// matmul/matmul-hw.mlir:7402:19, :7403:13, :7404:13, :7405:13
  wire [276:0] _T_2023 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7406:19, :7407:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7408:5
    if (rst)	// matmul/matmul-hw.mlir:7408:5
      _T_2020 <= _T_2023;	// matmul/matmul-hw.mlir:7411:7
    else	// matmul/matmul-hw.mlir:7408:5
      _T_2020 <= _T_2022;	// matmul/matmul-hw.mlir:7409:7
  end // always @(posedge)
  wire _T_2024 = _T_2020[9'h114];	// matmul/matmul-hw.mlir:7401:13, :7413:17, :7414:13
  assign _T_37 = _T_2024 ? 1'h1 : _T_34;	// matmul/matmul-hw.mlir:1590:13, :7415:13, :7433:13
  assign _T_36 = _T_2024 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7416:13
  assign _T_35 = _T_2024 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1631:18, :2899:30, :7417:13
  wire [277:0] _T_2026 = _T_2025;	// matmul/matmul-hw.mlir:7419:13
  wire [277:0] _T_2027 = {_T_2026[9'h0+:277], {{t}}};	// matmul/matmul-hw.mlir:7420:19, :7421:13, :7422:13, :7423:13
  wire [277:0] _T_2028 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7424:19, :7425:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7426:5
    if (rst)	// matmul/matmul-hw.mlir:7426:5
      _T_2025 <= _T_2028;	// matmul/matmul-hw.mlir:7429:7
    else	// matmul/matmul-hw.mlir:7426:5
      _T_2025 <= _T_2027;	// matmul/matmul-hw.mlir:7427:7
  end // always @(posedge)
  wire _T_2029 = _T_2025[9'h115];	// matmul/matmul-hw.mlir:7419:13, :7431:17, :7432:13
  assign _T_34 = _T_2029 ? 1'h1 : _T_31;	// matmul/matmul-hw.mlir:1590:13, :7433:13, :7451:13
  assign _T_33 = _T_2029 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7434:13
  assign _T_32 = _T_2029 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1628:18, :2899:30, :7435:13
  wire [278:0] _T_2031 = _T_2030;	// matmul/matmul-hw.mlir:7437:13
  wire [278:0] _T_2032 = {_T_2031[9'h0+:278], {{t}}};	// matmul/matmul-hw.mlir:7438:19, :7439:13, :7440:13, :7441:13
  wire [278:0] _T_2033 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7442:19, :7443:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7444:5
    if (rst)	// matmul/matmul-hw.mlir:7444:5
      _T_2030 <= _T_2033;	// matmul/matmul-hw.mlir:7447:7
    else	// matmul/matmul-hw.mlir:7444:5
      _T_2030 <= _T_2032;	// matmul/matmul-hw.mlir:7445:7
  end // always @(posedge)
  wire _T_2034 = _T_2030[9'h116];	// matmul/matmul-hw.mlir:7437:13, :7449:17, :7450:13
  assign _T_31 = _T_2034 ? 1'h1 : _T_28;	// matmul/matmul-hw.mlir:1590:13, :7451:13, :7469:13
  assign _T_30 = _T_2034 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7452:13
  assign _T_29 = _T_2034 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1625:18, :2899:30, :7453:13
  wire [279:0] _T_2036 = _T_2035;	// matmul/matmul-hw.mlir:7455:13
  wire [279:0] _T_2037 = {_T_2036[9'h0+:279], {{t}}};	// matmul/matmul-hw.mlir:7456:19, :7457:13, :7458:13, :7459:13
  wire [279:0] _T_2038 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7460:19, :7461:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7462:5
    if (rst)	// matmul/matmul-hw.mlir:7462:5
      _T_2035 <= _T_2038;	// matmul/matmul-hw.mlir:7465:7
    else	// matmul/matmul-hw.mlir:7462:5
      _T_2035 <= _T_2037;	// matmul/matmul-hw.mlir:7463:7
  end // always @(posedge)
  wire _T_2039 = _T_2035[9'h117];	// matmul/matmul-hw.mlir:7455:13, :7467:17, :7468:13
  assign _T_28 = _T_2039 ? 1'h1 : _T_25;	// matmul/matmul-hw.mlir:1590:13, :7469:13, :7487:13
  assign _T_27 = _T_2039 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7470:13
  assign _T_26 = _T_2039 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1622:18, :2899:30, :7471:13
  wire [280:0] _T_2041 = _T_2040;	// matmul/matmul-hw.mlir:7473:13
  wire [280:0] _T_2042 = {_T_2041[9'h0+:280], {{t}}};	// matmul/matmul-hw.mlir:7474:19, :7475:13, :7476:13, :7477:13
  wire [280:0] _T_2043 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7478:19, :7479:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7480:5
    if (rst)	// matmul/matmul-hw.mlir:7480:5
      _T_2040 <= _T_2043;	// matmul/matmul-hw.mlir:7483:7
    else	// matmul/matmul-hw.mlir:7480:5
      _T_2040 <= _T_2042;	// matmul/matmul-hw.mlir:7481:7
  end // always @(posedge)
  wire _T_2044 = _T_2040[9'h118];	// matmul/matmul-hw.mlir:7473:13, :7485:17, :7486:13
  assign _T_25 = _T_2044 ? 1'h1 : _T_22;	// matmul/matmul-hw.mlir:1590:13, :7487:13, :7505:13
  assign _T_24 = _T_2044 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7488:13
  assign _T_23 = _T_2044 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1619:18, :2899:30, :7489:13
  wire [281:0] _T_2046 = _T_2045;	// matmul/matmul-hw.mlir:7491:13
  wire [281:0] _T_2047 = {_T_2046[9'h0+:281], {{t}}};	// matmul/matmul-hw.mlir:7492:19, :7493:13, :7494:13, :7495:13
  wire [281:0] _T_2048 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7496:19, :7497:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7498:5
    if (rst)	// matmul/matmul-hw.mlir:7498:5
      _T_2045 <= _T_2048;	// matmul/matmul-hw.mlir:7501:7
    else	// matmul/matmul-hw.mlir:7498:5
      _T_2045 <= _T_2047;	// matmul/matmul-hw.mlir:7499:7
  end // always @(posedge)
  wire _T_2049 = _T_2045[9'h119];	// matmul/matmul-hw.mlir:7491:13, :7503:17, :7504:13
  assign _T_22 = _T_2049 ? 1'h1 : _T_19;	// matmul/matmul-hw.mlir:1590:13, :7505:13, :7523:13
  assign _T_21 = _T_2049 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7506:13
  assign _T_20 = _T_2049 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1616:18, :2899:30, :7507:13
  wire [282:0] _T_2051 = _T_2050;	// matmul/matmul-hw.mlir:7509:13
  wire [282:0] _T_2052 = {_T_2051[9'h0+:282], {{t}}};	// matmul/matmul-hw.mlir:7510:19, :7511:13, :7512:13, :7513:13
  wire [282:0] _T_2053 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7514:19, :7515:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7516:5
    if (rst)	// matmul/matmul-hw.mlir:7516:5
      _T_2050 <= _T_2053;	// matmul/matmul-hw.mlir:7519:7
    else	// matmul/matmul-hw.mlir:7516:5
      _T_2050 <= _T_2052;	// matmul/matmul-hw.mlir:7517:7
  end // always @(posedge)
  wire _T_2054 = _T_2050[9'h11A];	// matmul/matmul-hw.mlir:7509:13, :7521:17, :7522:13
  assign _T_19 = _T_2054 ? 1'h1 : _T_16;	// matmul/matmul-hw.mlir:1590:13, :7523:13, :7541:13
  assign _T_18 = _T_2054 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7524:13
  assign _T_17 = _T_2054 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1613:18, :2899:30, :7525:13
  wire [283:0] _T_2056 = _T_2055;	// matmul/matmul-hw.mlir:7527:13
  wire [283:0] _T_2057 = {_T_2056[9'h0+:283], {{t}}};	// matmul/matmul-hw.mlir:7528:19, :7529:13, :7530:13, :7531:13
  wire [283:0] _T_2058 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7532:19, :7533:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7534:5
    if (rst)	// matmul/matmul-hw.mlir:7534:5
      _T_2055 <= _T_2058;	// matmul/matmul-hw.mlir:7537:7
    else	// matmul/matmul-hw.mlir:7534:5
      _T_2055 <= _T_2057;	// matmul/matmul-hw.mlir:7535:7
  end // always @(posedge)
  wire _T_2059 = _T_2055[9'h11B];	// matmul/matmul-hw.mlir:7527:13, :7539:17, :7540:13
  assign _T_16 = _T_2059 ? 1'h1 : _T_13;	// matmul/matmul-hw.mlir:1590:13, :7541:13, :7559:13
  assign _T_15 = _T_2059 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7542:13
  assign _T_14 = _T_2059 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1610:18, :2899:30, :7543:13
  wire [284:0] _T_2061 = _T_2060;	// matmul/matmul-hw.mlir:7545:13
  wire [284:0] _T_2062 = {_T_2061[9'h0+:284], {{t}}};	// matmul/matmul-hw.mlir:7546:19, :7547:13, :7548:13, :7549:13
  wire [284:0] _T_2063 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7550:19, :7551:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7552:5
    if (rst)	// matmul/matmul-hw.mlir:7552:5
      _T_2060 <= _T_2063;	// matmul/matmul-hw.mlir:7555:7
    else	// matmul/matmul-hw.mlir:7552:5
      _T_2060 <= _T_2062;	// matmul/matmul-hw.mlir:7553:7
  end // always @(posedge)
  wire _T_2064 = _T_2060[9'h11C];	// matmul/matmul-hw.mlir:7545:13, :7557:17, :7558:13
  assign _T_13 = _T_2064 ? 1'h1 : _T_10;	// matmul/matmul-hw.mlir:1590:13, :7559:13, :7577:13
  assign _T_12 = _T_2064 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7560:13
  assign _T_11 = _T_2064 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1607:18, :2899:30, :7561:13
  wire [285:0] _T_2066 = _T_2065;	// matmul/matmul-hw.mlir:7563:13
  wire [285:0] _T_2067 = {_T_2066[9'h0+:285], {{t}}};	// matmul/matmul-hw.mlir:7564:19, :7565:13, :7566:13, :7567:13
  wire [285:0] _T_2068 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7568:19, :7569:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7570:5
    if (rst)	// matmul/matmul-hw.mlir:7570:5
      _T_2065 <= _T_2068;	// matmul/matmul-hw.mlir:7573:7
    else	// matmul/matmul-hw.mlir:7570:5
      _T_2065 <= _T_2067;	// matmul/matmul-hw.mlir:7571:7
  end // always @(posedge)
  wire _T_2069 = _T_2065[9'h11D];	// matmul/matmul-hw.mlir:7563:13, :7575:17, :7576:13
  assign _T_10 = _T_2069 ? 1'h1 : _T_7;	// matmul/matmul-hw.mlir:1590:13, :7577:13, :7595:13
  assign _T_9 = _T_2069 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7578:13
  assign _T_8 = _T_2069 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1604:18, :2899:30, :7579:13
  wire [286:0] _T_2071 = _T_2070;	// matmul/matmul-hw.mlir:7581:13
  wire [286:0] _T_2072 = {_T_2071[9'h0+:286], {{t}}};	// matmul/matmul-hw.mlir:7582:19, :7583:13, :7584:13, :7585:13
  wire [286:0] _T_2073 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7586:19, :7587:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7588:5
    if (rst)	// matmul/matmul-hw.mlir:7588:5
      _T_2070 <= _T_2073;	// matmul/matmul-hw.mlir:7591:7
    else	// matmul/matmul-hw.mlir:7588:5
      _T_2070 <= _T_2072;	// matmul/matmul-hw.mlir:7589:7
  end // always @(posedge)
  wire _T_2074 = _T_2070[9'h11E];	// matmul/matmul-hw.mlir:7581:13, :7593:17, :7594:13
  assign _T_7 = _T_2074 ? 1'h1 : _T_4;	// matmul/matmul-hw.mlir:1590:13, :7595:13, :7613:13
  assign _T_6 = _T_2074 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7596:13
  assign _T_5 = _T_2074 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1601:18, :2899:30, :7597:13
  wire [287:0] _T_2076 = _T_2075;	// matmul/matmul-hw.mlir:7599:13
  wire [287:0] _T_2077 = {_T_2076[9'h0+:287], {{t}}};	// matmul/matmul-hw.mlir:7600:19, :7601:13, :7602:13, :7603:13
  wire [287:0] _T_2078 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7604:19, :7605:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7606:5
    if (rst)	// matmul/matmul-hw.mlir:7606:5
      _T_2075 <= _T_2078;	// matmul/matmul-hw.mlir:7609:7
    else	// matmul/matmul-hw.mlir:7606:5
      _T_2075 <= _T_2077;	// matmul/matmul-hw.mlir:7607:7
  end // always @(posedge)
  wire _T_2079 = _T_2075[9'h11F];	// matmul/matmul-hw.mlir:7599:13, :7611:17, :7612:13
  assign _T_4 = _T_2079 ? 1'h1 : _T_1;	// matmul/matmul-hw.mlir:1590:13, :7613:13, :7631:13
  assign _T_3 = _T_2079 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7614:13
  assign _T_2 = _T_2079 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1598:18, :2899:30, :7615:13
  wire [288:0] _T_2081 = _T_2080;	// matmul/matmul-hw.mlir:7617:13
  wire [288:0] _T_2082 = {_T_2081[9'h0+:288], {{t}}};	// matmul/matmul-hw.mlir:7618:19, :7619:13, :7620:13, :7621:13
  wire [288:0] _T_2083 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7622:19, :7623:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7624:5
    if (rst)	// matmul/matmul-hw.mlir:7624:5
      _T_2080 <= _T_2083;	// matmul/matmul-hw.mlir:7627:7
    else	// matmul/matmul-hw.mlir:7624:5
      _T_2080 <= _T_2082;	// matmul/matmul-hw.mlir:7625:7
  end // always @(posedge)
  wire _T_2084 = _T_2080[9'h120];	// matmul/matmul-hw.mlir:7617:13, :7629:17, :7630:13
  assign _T_1 = _T_2084 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7631:13
  assign _T_0 = _T_2084 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :7632:13
  assign _T = _T_2084 ? buff_bank0_p0_rd_data : 32'bx;	// matmul/matmul-hw.mlir:1595:18, :2899:30, :7633:13
  wire [290:0] _T_2086 = _T_2085;	// matmul/matmul-hw.mlir:7635:13
  wire [290:0] _T_2087 = {_T_2086[9'h0+:290], {{t}}};	// matmul/matmul-hw.mlir:7636:19, :7637:13, :7638:13, :7639:13
  wire [290:0] _T_2088 = {{1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}, {1'h0}};	// matmul/matmul-hw.mlir:7640:19, :7641:13
  always @(posedge clk) begin	// matmul/matmul-hw.mlir:7642:5
    if (rst)	// matmul/matmul-hw.mlir:7642:5
      _T_2085 <= _T_2088;	// matmul/matmul-hw.mlir:7645:7
    else	// matmul/matmul-hw.mlir:7642:5
      _T_2085 <= _T_2087;	// matmul/matmul-hw.mlir:7643:7
  end // always @(posedge)
  assign Bi_p0_addr_en = _T_795 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2997:11, :7649:5
  assign Bi_p0_addr_data = _T_795 ? {_T_800[3:0], _T_792[3:0]} : 8'bx;	// matmul/matmul-hw.mlir:2366:18, :2994:11, :2995:11, :2996:11, :2998:11, :7649:5
  assign Bi_p0_rd_en = _T_795 ? 1'h1 : 1'h0;	// matmul/matmul-hw.mlir:1590:13, :1594:14, :2999:11, :7649:5
  assign Bw_p0_wr_en = {{_T_0}, {_T_48}, {_T_96}, {_T_144}, {_T_192}, {_T_240}, {_T_288}, {_T_336}, {_T_384}, {_T_432}, {_T_480}, {_T_528}, {_T_576}, {_T_624}, {_T_672}, {_T_720}, {_T_3}, {_T_51}, {_T_99}, {_T_147}, {_T_195}, {_T_243}, {_T_291}, {_T_339}, {_T_387}, {_T_435}, {_T_483}, {_T_531}, {_T_579}, {_T_627}, {_T_675}, {_T_723}, {_T_6}, {_T_54}, {_T_102}, {_T_150}, {_T_198}, {_T_246}, {_T_294}, {_T_342}, {_T_390}, {_T_438}, {_T_486}, {_T_534}, {_T_582}, {_T_630}, {_T_678}, {_T_726}, {_T_9}, {_T_57}, {_T_105}, {_T_153}, {_T_201}, {_T_249}, {_T_297}, {_T_345}, {_T_393}, {_T_441}, {_T_489}, {_T_537}, {_T_585}, {_T_633}, {_T_681}, {_T_729}, {_T_12}, {_T_60}, {_T_108}, {_T_156}, {_T_204}, {_T_252}, {_T_300}, {_T_348}, {_T_396}, {_T_444}, {_T_492}, {_T_540}, {_T_588}, {_T_636}, {_T_684}, {_T_732}, {_T_15}, {_T_63}, {_T_111}, {_T_159}, {_T_207}, {_T_255}, {_T_303}, {_T_351}, {_T_399}, {_T_447}, {_T_495}, {_T_543}, {_T_591}, {_T_639}, {_T_687}, {_T_735}, {_T_18}, {_T_66}, {_T_114}, {_T_162}, {_T_210}, {_T_258}, {_T_306}, {_T_354}, {_T_402}, {_T_450}, {_T_498}, {_T_546}, {_T_594}, {_T_642}, {_T_690}, {_T_738}, {_T_21}, {_T_69}, {_T_117}, {_T_165}, {_T_213}, {_T_261}, {_T_309}, {_T_357}, {_T_405}, {_T_453}, {_T_501}, {_T_549}, {_T_597}, {_T_645}, {_T_693}, {_T_741}, {_T_24}, {_T_72}, {_T_120}, {_T_168}, {_T_216}, {_T_264}, {_T_312}, {_T_360}, {_T_408}, {_T_456}, {_T_504}, {_T_552}, {_T_600}, {_T_648}, {_T_696}, {_T_744}, {_T_27}, {_T_75}, {_T_123}, {_T_171}, {_T_219}, {_T_267}, {_T_315}, {_T_363}, {_T_411}, {_T_459}, {_T_507}, {_T_555}, {_T_603}, {_T_651}, {_T_699}, {_T_747}, {_T_30}, {_T_78}, {_T_126}, {_T_174}, {_T_222}, {_T_270}, {_T_318}, {_T_366}, {_T_414}, {_T_462}, {_T_510}, {_T_558}, {_T_606}, {_T_654}, {_T_702}, {_T_750}, {_T_33}, {_T_81}, {_T_129}, {_T_177}, {_T_225}, {_T_273}, {_T_321}, {_T_369}, {_T_417}, {_T_465}, {_T_513}, {_T_561}, {_T_609}, {_T_657}, {_T_705}, {_T_753}, {_T_36}, {_T_84}, {_T_132}, {_T_180}, {_T_228}, {_T_276}, {_T_324}, {_T_372}, {_T_420}, {_T_468}, {_T_516}, {_T_564}, {_T_612}, {_T_660}, {_T_708}, {_T_756}, {_T_39}, {_T_87}, {_T_135}, {_T_183}, {_T_231}, {_T_279}, {_T_327}, {_T_375}, {_T_423}, {_T_471}, {_T_519}, {_T_567}, {_T_615}, {_T_663}, {_T_711}, {_T_759}, {_T_42}, {_T_90}, {_T_138}, {_T_186}, {_T_234}, {_T_282}, {_T_330}, {_T_378}, {_T_426}, {_T_474}, {_T_522}, {_T_570}, {_T_618}, {_T_666}, {_T_714}, {_T_762}, {_T_45}, {_T_93}, {_T_141}, {_T_189}, {_T_237}, {_T_285}, {_T_333}, {_T_381}, {_T_429}, {_T_477}, {_T_525}, {_T_573}, {_T_621}, {_T_669}, {_T_717}, {_T_765}};	// matmul/matmul-hw.mlir:1332:10, :3042:11, :3060:11, :3078:11, :3096:12, :3114:12, :3132:12, :3150:12, :3168:12, :3186:12, :3204:12, :3222:12, :3240:12, :3258:12, :3276:12, :3294:12, :3312:12, :3330:12, :3348:12, :3366:12, :3384:12, :3402:12, :3420:12, :3438:12, :3456:12, :3474:12, :3492:12, :3510:12, :3528:12, :3546:12, :3564:12, :3582:12, :3600:12, :3618:12, :3636:12, :3654:12, :3672:12, :3690:12, :3708:12, :3726:12, :3744:12, :3762:12, :3780:12, :3798:12, :3816:12, :3834:12, :3852:12, :3870:12, :3888:12, :3906:12, :3924:12, :3942:12, :3960:12, :3978:12, :3996:12, :4014:12, :4032:12, :4050:12, :4068:12, :4086:12, :4104:12, :4122:12, :4140:12, :4158:12, :4176:12, :4194:12, :4212:12, :4230:12, :4248:12, :4266:12, :4284:12, :4302:12, :4320:12, :4338:12, :4356:12, :4374:12, :4392:12, :4410:12, :4428:12, :4446:12, :4464:12, :4482:12, :4500:12, :4518:12, :4536:12, :4554:12, :4572:12, :4590:12, :4608:12, :4626:12, :4644:12, :4662:12, :4680:12, :4698:12, :4716:13, :4734:13, :4752:13, :4770:13, :4788:13, :4806:13, :4824:13, :4842:13, :4860:13, :4878:13, :4896:13, :4914:13, :4932:13, :4950:13, :4968:13, :4986:13, :5004:13, :5022:13, :5040:13, :5058:13, :5076:13, :5094:13, :5112:13, :5130:13, :5148:13, :5166:13, :5184:13, :5202:13, :5220:13, :5238:13, :5256:13, :5274:13, :5292:13, :5310:13, :5328:13, :5346:13, :5364:13, :5382:13, :5400:13, :5418:13, :5436:13, :5454:13, :5472:13, :5490:13, :5508:13, :5526:13, :5544:13, :5562:13, :5580:13, :5598:13, :5616:13, :5634:13, :5652:13, :5670:13, :5688:13, :5706:13, :5724:13, :5742:13, :5760:13, :5778:13, :5796:13, :5814:13, :5832:13, :5850:13, :5868:13, :5886:13, :5904:13, :5922:13, :5940:13, :5958:13, :5976:13, :5994:13, :6012:13, :6030:13, :6048:13, :6066:13, :6084:13, :6102:13, :6120:13, :6138:13, :6156:13, :6174:13, :6192:13, :6210:13, :6228:13, :6246:13, :6264:13, :6282:13, :6300:13, :6318:13, :6336:13, :6354:13, :6372:13, :6390:13, :6408:13, :6426:13, :6444:13, :6462:13, :6480:13, :6498:13, :6516:13, :6534:13, :6552:13, :6570:13, :6588:13, :6606:13, :6624:13, :6642:13, :6660:13, :6678:13, :6696:13, :6714:13, :6732:13, :6750:13, :6768:13, :6786:13, :6804:13, :6822:13, :6840:13, :6858:13, :6876:13, :6894:13, :6912:13, :6930:13, :6948:13, :6966:13, :6984:13, :7002:13, :7020:13, :7038:13, :7056:13, :7074:13, :7092:13, :7110:13, :7128:13, :7146:13, :7164:13, :7182:13, :7200:13, :7218:13, :7236:13, :7254:13, :7272:13, :7290:13, :7308:13, :7326:13, :7344:13, :7362:13, :7380:13, :7398:13, :7416:13, :7434:13, :7452:13, :7470:13, :7488:13, :7506:13, :7524:13, :7542:13, :7560:13, :7578:13, :7596:13, :7614:13, :7632:13, :7649:5
  assign Bw_p0_wr_data = {{_T}, {_T_47}, {_T_95}, {_T_143}, {_T_191}, {_T_239}, {_T_287}, {_T_335}, {_T_383}, {_T_431}, {_T_479}, {_T_527}, {_T_575}, {_T_623}, {_T_671}, {_T_719}, {_T_2}, {_T_50}, {_T_98}, {_T_146}, {_T_194}, {_T_242}, {_T_290}, {_T_338}, {_T_386}, {_T_434}, {_T_482}, {_T_530}, {_T_578}, {_T_626}, {_T_674}, {_T_722}, {_T_5}, {_T_53}, {_T_101}, {_T_149}, {_T_197}, {_T_245}, {_T_293}, {_T_341}, {_T_389}, {_T_437}, {_T_485}, {_T_533}, {_T_581}, {_T_629}, {_T_677}, {_T_725}, {_T_8}, {_T_56}, {_T_104}, {_T_152}, {_T_200}, {_T_248}, {_T_296}, {_T_344}, {_T_392}, {_T_440}, {_T_488}, {_T_536}, {_T_584}, {_T_632}, {_T_680}, {_T_728}, {_T_11}, {_T_59}, {_T_107}, {_T_155}, {_T_203}, {_T_251}, {_T_299}, {_T_347}, {_T_395}, {_T_443}, {_T_491}, {_T_539}, {_T_587}, {_T_635}, {_T_683}, {_T_731}, {_T_14}, {_T_62}, {_T_110}, {_T_158}, {_T_206}, {_T_254}, {_T_302}, {_T_350}, {_T_398}, {_T_446}, {_T_494}, {_T_542}, {_T_590}, {_T_638}, {_T_686}, {_T_734}, {_T_17}, {_T_65}, {_T_113}, {_T_161}, {_T_209}, {_T_257}, {_T_305}, {_T_353}, {_T_401}, {_T_449}, {_T_497}, {_T_545}, {_T_593}, {_T_641}, {_T_689}, {_T_737}, {_T_20}, {_T_68}, {_T_116}, {_T_164}, {_T_212}, {_T_260}, {_T_308}, {_T_356}, {_T_404}, {_T_452}, {_T_500}, {_T_548}, {_T_596}, {_T_644}, {_T_692}, {_T_740}, {_T_23}, {_T_71}, {_T_119}, {_T_167}, {_T_215}, {_T_263}, {_T_311}, {_T_359}, {_T_407}, {_T_455}, {_T_503}, {_T_551}, {_T_599}, {_T_647}, {_T_695}, {_T_743}, {_T_26}, {_T_74}, {_T_122}, {_T_170}, {_T_218}, {_T_266}, {_T_314}, {_T_362}, {_T_410}, {_T_458}, {_T_506}, {_T_554}, {_T_602}, {_T_650}, {_T_698}, {_T_746}, {_T_29}, {_T_77}, {_T_125}, {_T_173}, {_T_221}, {_T_269}, {_T_317}, {_T_365}, {_T_413}, {_T_461}, {_T_509}, {_T_557}, {_T_605}, {_T_653}, {_T_701}, {_T_749}, {_T_32}, {_T_80}, {_T_128}, {_T_176}, {_T_224}, {_T_272}, {_T_320}, {_T_368}, {_T_416}, {_T_464}, {_T_512}, {_T_560}, {_T_608}, {_T_656}, {_T_704}, {_T_752}, {_T_35}, {_T_83}, {_T_131}, {_T_179}, {_T_227}, {_T_275}, {_T_323}, {_T_371}, {_T_419}, {_T_467}, {_T_515}, {_T_563}, {_T_611}, {_T_659}, {_T_707}, {_T_755}, {_T_38}, {_T_86}, {_T_134}, {_T_182}, {_T_230}, {_T_278}, {_T_326}, {_T_374}, {_T_422}, {_T_470}, {_T_518}, {_T_566}, {_T_614}, {_T_662}, {_T_710}, {_T_758}, {_T_41}, {_T_89}, {_T_137}, {_T_185}, {_T_233}, {_T_281}, {_T_329}, {_T_377}, {_T_425}, {_T_473}, {_T_521}, {_T_569}, {_T_617}, {_T_665}, {_T_713}, {_T_761}, {_T_44}, {_T_92}, {_T_140}, {_T_188}, {_T_236}, {_T_284}, {_T_332}, {_T_380}, {_T_428}, {_T_476}, {_T_524}, {_T_572}, {_T_620}, {_T_668}, {_T_716}, {_T_764}};	// matmul/matmul-hw.mlir:1589:10, :3043:11, :3061:11, :3079:11, :3097:12, :3115:12, :3133:12, :3151:12, :3169:12, :3187:12, :3205:12, :3223:12, :3241:12, :3259:12, :3277:12, :3295:12, :3313:12, :3331:12, :3349:12, :3367:12, :3385:12, :3403:12, :3421:12, :3439:12, :3457:12, :3475:12, :3493:12, :3511:12, :3529:12, :3547:12, :3565:12, :3583:12, :3601:12, :3619:12, :3637:12, :3655:12, :3673:12, :3691:12, :3709:12, :3727:12, :3745:12, :3763:12, :3781:12, :3799:12, :3817:12, :3835:12, :3853:12, :3871:12, :3889:12, :3907:12, :3925:12, :3943:12, :3961:12, :3979:12, :3997:12, :4015:12, :4033:12, :4051:12, :4069:12, :4087:12, :4105:12, :4123:12, :4141:12, :4159:12, :4177:12, :4195:12, :4213:12, :4231:12, :4249:12, :4267:12, :4285:12, :4303:12, :4321:12, :4339:12, :4357:12, :4375:12, :4393:12, :4411:12, :4429:12, :4447:12, :4465:12, :4483:12, :4501:12, :4519:12, :4537:12, :4555:12, :4573:12, :4591:12, :4609:12, :4627:12, :4645:12, :4663:12, :4681:12, :4699:12, :4717:13, :4735:13, :4753:13, :4771:13, :4789:13, :4807:13, :4825:13, :4843:13, :4861:13, :4879:13, :4897:13, :4915:13, :4933:13, :4951:13, :4969:13, :4987:13, :5005:13, :5023:13, :5041:13, :5059:13, :5077:13, :5095:13, :5113:13, :5131:13, :5149:13, :5167:13, :5185:13, :5203:13, :5221:13, :5239:13, :5257:13, :5275:13, :5293:13, :5311:13, :5329:13, :5347:13, :5365:13, :5383:13, :5401:13, :5419:13, :5437:13, :5455:13, :5473:13, :5491:13, :5509:13, :5527:13, :5545:13, :5563:13, :5581:13, :5599:13, :5617:13, :5635:13, :5653:13, :5671:13, :5689:13, :5707:13, :5725:13, :5743:13, :5761:13, :5779:13, :5797:13, :5815:13, :5833:13, :5851:13, :5869:13, :5887:13, :5905:13, :5923:13, :5941:13, :5959:13, :5977:13, :5995:13, :6013:13, :6031:13, :6049:13, :6067:13, :6085:13, :6103:13, :6121:13, :6139:13, :6157:13, :6175:13, :6193:13, :6211:13, :6229:13, :6247:13, :6265:13, :6283:13, :6301:13, :6319:13, :6337:13, :6355:13, :6373:13, :6391:13, :6409:13, :6427:13, :6445:13, :6463:13, :6481:13, :6499:13, :6517:13, :6535:13, :6553:13, :6571:13, :6589:13, :6607:13, :6625:13, :6643:13, :6661:13, :6679:13, :6697:13, :6715:13, :6733:13, :6751:13, :6769:13, :6787:13, :6805:13, :6823:13, :6841:13, :6859:13, :6877:13, :6895:13, :6913:13, :6931:13, :6949:13, :6967:13, :6985:13, :7003:13, :7021:13, :7039:13, :7057:13, :7075:13, :7093:13, :7111:13, :7129:13, :7147:13, :7165:13, :7183:13, :7201:13, :7219:13, :7237:13, :7255:13, :7273:13, :7291:13, :7309:13, :7327:13, :7345:13, :7363:13, :7381:13, :7399:13, :7417:13, :7435:13, :7453:13, :7471:13, :7489:13, :7507:13, :7525:13, :7543:13, :7561:13, :7579:13, :7597:13, :7615:13, :7633:13, :7649:5
  assign t_done = _T_2085[9'h122];	// matmul/matmul-hw.mlir:7635:13, :7647:17, :7648:13, :7649:5
endmodule

