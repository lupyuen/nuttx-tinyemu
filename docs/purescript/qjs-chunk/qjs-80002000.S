    80001002:	e791                	bnez	a5,8000100e <fmod+0x34>
    80001004:	60e2                	ld	ra,24(sp)
    80001006:	2422                	fld	fs0,8(sp)
    80001008:	2482                	fld	fs1,0(sp)
    8000100a:	6105                	addi	sp,sp,32
    8000100c:	8082                	ret
    8000100e:	20b5f0ef          	jal	ra,80060a18 <__errno>
    80001012:	60e2                	ld	ra,24(sp)
    80001014:	02100793          	li	a5,33
    80001018:	c11c                	sw	a5,0(a0)
    8000101a:	1a94f553          	fdiv.d	fa0,fs1,fs1
    8000101e:	2422                	fld	fs0,8(sp)
    80001020:	2482                	fld	fs1,0(sp)
    80001022:	6105                	addi	sp,sp,32
    80001024:	8082                	ret

0000000080001026 <log>:
log():
    80001026:	1101                	addi	sp,sp,-32
    80001028:	a422                	fsd	fs0,8(sp)
    8000102a:	22a50453          	fmv.d	fs0,fa0
    8000102e:	ec06                	sd	ra,24(sp)
    80001030:	156010ef          	jal	ra,80002186 <__ieee754_log>
    80001034:	a28427d3          	feq.d	a5,fs0,fs0
    80001038:	c395                	beqz	a5,8000105c <log+0x36>
    8000103a:	f20007d3          	fmv.d.x	fa5,zero
    8000103e:	a28797d3          	flt.d	a5,fa5,fs0
    80001042:	ef89                	bnez	a5,8000105c <log+0x36>
    80001044:	a2f427d3          	feq.d	a5,fs0,fa5
    80001048:	cf91                	beqz	a5,80001064 <log+0x3e>
    8000104a:	1cf5f0ef          	jal	ra,80060a18 <__errno>
    8000104e:	02200793          	li	a5,34
    80001052:	c11c                	sw	a5,0(a0)
    80001054:	00093797          	auipc	a5,0x93
    80001058:	e447b507          	fld	fa0,-444(a5) # 80093e98 <_erodata+0x326>
    8000105c:	60e2                	ld	ra,24(sp)
    8000105e:	2422                	fld	fs0,8(sp)
    80001060:	6105                	addi	sp,sp,32
    80001062:	8082                	ret
    80001064:	1b55f0ef          	jal	ra,80060a18 <__errno>
    80001068:	60e2                	ld	ra,24(sp)
    8000106a:	2422                	fld	fs0,8(sp)
    8000106c:	02100793          	li	a5,33
    80001070:	c11c                	sw	a5,0(a0)
    80001072:	00069517          	auipc	a0,0x69
    80001076:	b1650513          	addi	a0,a0,-1258 # 80069b88 <qjsc_repl+0x45d8>
    8000107a:	6105                	addi	sp,sp,32
    8000107c:	4b90206f          	j	80003d34 <nan>

0000000080001080 <log10>:
log10():
    80001080:	1101                	addi	sp,sp,-32
    80001082:	a422                	fsd	fs0,8(sp)
    80001084:	22a50453          	fmv.d	fs0,fa0
    80001088:	ec06                	sd	ra,24(sp)
    8000108a:	356010ef          	jal	ra,800023e0 <__ieee754_log10>
    8000108e:	a28427d3          	feq.d	a5,fs0,fs0
    80001092:	c395                	beqz	a5,800010b6 <log10+0x36>
    80001094:	f20007d3          	fmv.d.x	fa5,zero
    80001098:	a2f407d3          	fle.d	a5,fs0,fa5
    8000109c:	cf89                	beqz	a5,800010b6 <log10+0x36>
    8000109e:	a2f427d3          	feq.d	a5,fs0,fa5
    800010a2:	cf91                	beqz	a5,800010be <log10+0x3e>
    800010a4:	1755f0ef          	jal	ra,80060a18 <__errno>
    800010a8:	02200793          	li	a5,34
    800010ac:	c11c                	sw	a5,0(a0)
    800010ae:	00093797          	auipc	a5,0x93
    800010b2:	dea7b507          	fld	fa0,-534(a5) # 80093e98 <_erodata+0x326>
    800010b6:	60e2                	ld	ra,24(sp)
    800010b8:	2422                	fld	fs0,8(sp)
    800010ba:	6105                	addi	sp,sp,32
    800010bc:	8082                	ret
    800010be:	15b5f0ef          	jal	ra,80060a18 <__errno>
    800010c2:	60e2                	ld	ra,24(sp)
    800010c4:	2422                	fld	fs0,8(sp)
    800010c6:	02100793          	li	a5,33
    800010ca:	c11c                	sw	a5,0(a0)
    800010cc:	00069517          	auipc	a0,0x69
    800010d0:	abc50513          	addi	a0,a0,-1348 # 80069b88 <qjsc_repl+0x45d8>
    800010d4:	6105                	addi	sp,sp,32
    800010d6:	45f0206f          	j	80003d34 <nan>

00000000800010da <pow>:
pow():
    800010da:	7179                	addi	sp,sp,-48
    800010dc:	ac22                	fsd	fs0,24(sp)
    800010de:	22b58453          	fmv.d	fs0,fa1
    800010e2:	a826                	fsd	fs1,16(sp)
    800010e4:	a44a                	fsd	fs2,8(sp)
    800010e6:	f406                	sd	ra,40(sp)
    800010e8:	22a50953          	fmv.d	fs2,fa0
    800010ec:	a04e                	fsd	fs3,0(sp)
    800010ee:	3ce010ef          	jal	ra,800024bc <__ieee754_pow>
    800010f2:	a28427d3          	feq.d	a5,fs0,fs0
    800010f6:	22a504d3          	fmv.d	fs1,fa0
    800010fa:	cf89                	beqz	a5,80001114 <pow+0x3a>
    800010fc:	f20009d3          	fmv.d.x	fs3,zero
    80001100:	a33927d3          	feq.d	a5,fs2,fs3
    80001104:	cb95                	beqz	a5,80001138 <pow+0x5e>
    80001106:	a33427d3          	feq.d	a5,fs0,fs3
    8000110a:	cf91                	beqz	a5,80001126 <pow+0x4c>
    8000110c:	00093797          	auipc	a5,0x93
    80001110:	a847b487          	fld	fs1,-1404(a5) # 80093b90 <_erodata+0x1e>
    80001114:	70a2                	ld	ra,40(sp)
    80001116:	22948553          	fmv.d	fa0,fs1
    8000111a:	2462                	fld	fs0,24(sp)
    8000111c:	24c2                	fld	fs1,16(sp)
    8000111e:	2922                	fld	fs2,8(sp)
    80001120:	2982                	fld	fs3,0(sp)
    80001122:	6145                	addi	sp,sp,48
    80001124:	8082                	ret
    80001126:	22840553          	fmv.d	fa0,fs0
    8000112a:	3fd020ef          	jal	ra,80003d26 <finite>
    8000112e:	d17d                	beqz	a0,80001114 <pow+0x3a>
    80001130:	a33417d3          	flt.d	a5,fs0,fs3
    80001134:	d3e5                	beqz	a5,80001114 <pow+0x3a>
    80001136:	a089                	j	80001178 <pow+0x9e>
    80001138:	3ef020ef          	jal	ra,80003d26 <finite>
    8000113c:	c10d                	beqz	a0,8000115e <pow+0x84>
    8000113e:	f20007d3          	fmv.d.x	fa5,zero
    80001142:	a2f4a7d3          	feq.d	a5,fs1,fa5
    80001146:	d7f9                	beqz	a5,80001114 <pow+0x3a>
    80001148:	23290553          	fmv.d	fa0,fs2
    8000114c:	3db020ef          	jal	ra,80003d26 <finite>
    80001150:	d171                	beqz	a0,80001114 <pow+0x3a>
    80001152:	22840553          	fmv.d	fa0,fs0
    80001156:	3d1020ef          	jal	ra,80003d26 <finite>
    8000115a:	dd4d                	beqz	a0,80001114 <pow+0x3a>
    8000115c:	a831                	j	80001178 <pow+0x9e>
    8000115e:	23290553          	fmv.d	fa0,fs2
    80001162:	3c5020ef          	jal	ra,80003d26 <finite>
    80001166:	dd61                	beqz	a0,8000113e <pow+0x64>
    80001168:	22840553          	fmv.d	fa0,fs0
    8000116c:	3bb020ef          	jal	ra,80003d26 <finite>
    80001170:	d579                	beqz	a0,8000113e <pow+0x64>
    80001172:	a294a7d3          	feq.d	a5,fs1,fs1
    80001176:	c799                	beqz	a5,80001184 <pow+0xaa>
    80001178:	0a15f0ef          	jal	ra,80060a18 <__errno>
    8000117c:	02200793          	li	a5,34
    80001180:	c11c                	sw	a5,0(a0)
    80001182:	bf49                	j	80001114 <pow+0x3a>
    80001184:	0955f0ef          	jal	ra,80060a18 <__errno>
    80001188:	02100793          	li	a5,33
    8000118c:	c11c                	sw	a5,0(a0)
    8000118e:	b759                	j	80001114 <pow+0x3a>

0000000080001190 <sinh>:
sinh():
    80001190:	1101                	addi	sp,sp,-32
    80001192:	a422                	fsd	fs0,8(sp)
    80001194:	a026                	fsd	fs1,0(sp)
    80001196:	ec06                	sd	ra,24(sp)
    80001198:	22a504d3          	fmv.d	fs1,fa0
    8000119c:	58f010ef          	jal	ra,80002f2a <__ieee754_sinh>
    800011a0:	22a50453          	fmv.d	fs0,fa0
    800011a4:	383020ef          	jal	ra,80003d26 <finite>
    800011a8:	c901                	beqz	a0,800011b8 <sinh+0x28>
    800011aa:	60e2                	ld	ra,24(sp)
    800011ac:	22840553          	fmv.d	fa0,fs0
    800011b0:	2482                	fld	fs1,0(sp)
    800011b2:	2422                	fld	fs0,8(sp)
    800011b4:	6105                	addi	sp,sp,32
    800011b6:	8082                	ret
    800011b8:	22948553          	fmv.d	fa0,fs1
    800011bc:	36b020ef          	jal	ra,80003d26 <finite>
    800011c0:	d56d                	beqz	a0,800011aa <sinh+0x1a>
    800011c2:	0575f0ef          	jal	ra,80060a18 <__errno>
    800011c6:	f20007d3          	fmv.d.x	fa5,zero
    800011ca:	02200793          	li	a5,34
    800011ce:	c11c                	sw	a5,0(a0)
    800011d0:	a29797d3          	flt.d	a5,fa5,fs1
    800011d4:	c791                	beqz	a5,800011e0 <sinh+0x50>
    800011d6:	00093797          	auipc	a5,0x93
    800011da:	caa7b407          	fld	fs0,-854(a5) # 80093e80 <_erodata+0x30e>
    800011de:	b7f1                	j	800011aa <sinh+0x1a>
    800011e0:	00093797          	auipc	a5,0x93
    800011e4:	cb87b407          	fld	fs0,-840(a5) # 80093e98 <_erodata+0x326>
    800011e8:	b7c9                	j	800011aa <sinh+0x1a>

00000000800011ea <sqrt>:
sqrt():
    800011ea:	1101                	addi	sp,sp,-32
    800011ec:	a422                	fsd	fs0,8(sp)
    800011ee:	22a50453          	fmv.d	fs0,fa0
    800011f2:	ec06                	sd	ra,24(sp)
    800011f4:	a026                	fsd	fs1,0(sp)
    800011f6:	6a1010ef          	jal	ra,80003096 <__ieee754_sqrt>
    800011fa:	a28427d3          	feq.d	a5,fs0,fs0
    800011fe:	c791                	beqz	a5,8000120a <sqrt+0x20>
    80001200:	f20004d3          	fmv.d.x	fs1,zero
    80001204:	a29417d3          	flt.d	a5,fs0,fs1
    80001208:	e791                	bnez	a5,80001214 <sqrt+0x2a>
    8000120a:	60e2                	ld	ra,24(sp)
    8000120c:	2422                	fld	fs0,8(sp)
    8000120e:	2482                	fld	fs1,0(sp)
    80001210:	6105                	addi	sp,sp,32
    80001212:	8082                	ret
    80001214:	0055f0ef          	jal	ra,80060a18 <__errno>
    80001218:	60e2                	ld	ra,24(sp)
    8000121a:	02100793          	li	a5,33
    8000121e:	c11c                	sw	a5,0(a0)
    80001220:	1a94f553          	fdiv.d	fa0,fs1,fs1
    80001224:	2422                	fld	fs0,8(sp)
    80001226:	2482                	fld	fs1,0(sp)
    80001228:	6105                	addi	sp,sp,32
    8000122a:	8082                	ret

000000008000122c <__ieee754_acos>:
__ieee754_acos():
    8000122c:	e20507d3          	fmv.x.d	a5,fa0
    80001230:	3ff006b7          	lui	a3,0x3ff00
    80001234:	4207d613          	srai	a2,a5,0x20
    80001238:	02161713          	slli	a4,a2,0x21
    8000123c:	9305                	srli	a4,a4,0x21
    8000123e:	00d74e63          	blt	a4,a3,8000125a <__ieee754_acos+0x2e>
    80001242:	c01006b7          	lui	a3,0xc0100
    80001246:	9f35                	addw	a4,a4,a3
    80001248:	8f5d                	or	a4,a4,a5
    8000124a:	2701                	sext.w	a4,a4
    8000124c:	10071463          	bnez	a4,80001354 <__ieee754_acos+0x128>
    80001250:	f2000553          	fmv.d.x	fa0,zero
    80001254:	10c05563          	blez	a2,8000135e <__ieee754_acos+0x132>
    80001258:	8082                	ret
    8000125a:	3fe006b7          	lui	a3,0x3fe00
    8000125e:	00d75b63          	bge	a4,a3,80001274 <__ieee754_acos+0x48>
    80001262:	3c6006b7          	lui	a3,0x3c600
    80001266:	10e6c163          	blt	a3,a4,80001368 <__ieee754_acos+0x13c>
    8000126a:	00093797          	auipc	a5,0x93
    8000126e:	aee7b507          	fld	fa0,-1298(a5) # 80093d58 <_erodata+0x1e6>
    80001272:	8082                	ret
    80001274:	1101                	addi	sp,sp,-32
    80001276:	ec06                	sd	ra,24(sp)
    80001278:	a422                	fsd	fs0,8(sp)
    8000127a:	a026                	fsd	fs1,0(sp)
    8000127c:	18064b63          	bltz	a2,80001412 <__ieee754_acos+0x1e6>
    80001280:	00093717          	auipc	a4,0x93
    80001284:	91073487          	fld	fs1,-1776(a4) # 80093b90 <_erodata+0x1e>
    80001288:	0aa4f453          	fsub.d	fs0,fs1,fa0
    8000128c:	00093797          	auipc	a5,0x93
    80001290:	b747b507          	fld	fa0,-1164(a5) # 80093e00 <_erodata+0x28e>
    80001294:	12a47453          	fmul.d	fs0,fs0,fa0
    80001298:	22840553          	fmv.d	fa0,fs0
    8000129c:	5fb010ef          	jal	ra,80003096 <__ieee754_sqrt>
    800012a0:	00093797          	auipc	a5,0x93
    800012a4:	c107b707          	fld	fa4,-1008(a5) # 80093eb0 <_erodata+0x33e>
    800012a8:	00093797          	auipc	a5,0x93
    800012ac:	c007b787          	fld	fa5,-1024(a5) # 80093ea8 <_erodata+0x336>
    800012b0:	72f477c3          	fmadd.d	fa5,fs0,fa5,fa4
    800012b4:	00093797          	auipc	a5,0x93
    800012b8:	c047b607          	fld	fa2,-1020(a5) # 80093eb8 <_erodata+0x346>
    800012bc:	00093797          	auipc	a5,0x93
    800012c0:	c247b587          	fld	fa1,-988(a5) # 80093ee0 <_erodata+0x36e>
    800012c4:	00093797          	auipc	a5,0x93
    800012c8:	c147b707          	fld	fa4,-1004(a5) # 80093ed8 <_erodata+0x366>
    800012cc:	5ae47743          	fmadd.d	fa4,fs0,fa4,fa1
    800012d0:	00093797          	auipc	a5,0x93
    800012d4:	bf07b687          	fld	fa3,-1040(a5) # 80093ec0 <_erodata+0x34e>
    800012d8:	e2050753          	fmv.x.d	a4,fa0
    800012dc:	6287f7c3          	fmadd.d	fa5,fa5,fs0,fa2
    800012e0:	00093797          	auipc	a5,0x93
    800012e4:	c087b087          	fld	ft1,-1016(a5) # 80093ee8 <_erodata+0x376>
    800012e8:	00093797          	auipc	a5,0x93
    800012ec:	be07b587          	fld	fa1,-1056(a5) # 80093ec8 <_erodata+0x356>
    800012f0:	00093797          	auipc	a5,0x93
    800012f4:	be07b607          	fld	fa2,-1056(a5) # 80093ed0 <_erodata+0x35e>
    800012f8:	00093797          	auipc	a5,0x93
    800012fc:	bf87b007          	fld	ft0,-1032(a5) # 80093ef0 <_erodata+0x37e>
    80001300:	02075793          	srli	a5,a4,0x20
    80001304:	1782                	slli	a5,a5,0x20
    80001306:	6a87f7c3          	fmadd.d	fa5,fa5,fs0,fa3
    8000130a:	0a877743          	fmadd.d	fa4,fa4,fs0,ft1
    8000130e:	f20786d3          	fmv.d.x	fa3,a5
    80001312:	f20780d3          	fmv.d.x	ft1,a5
    80001316:	60e2                	ld	ra,24(sp)
    80001318:	42d6f6cb          	fnmsub.d	fa3,fa3,fa3,fs0
    8000131c:	02157553          	fadd.d	fa0,fa0,ft1
    80001320:	5a87f7c3          	fmadd.d	fa5,fa5,fs0,fa1
    80001324:	02877743          	fmadd.d	fa4,fa4,fs0,ft0
    80001328:	1aa6f6d3          	fdiv.d	fa3,fa3,fa0
    8000132c:	6287f543          	fmadd.d	fa0,fa5,fs0,fa2
    80001330:	4a877743          	fmadd.d	fa4,fa4,fs0,fs1
    80001334:	f20707d3          	fmv.d.x	fa5,a4
    80001338:	2482                	fld	fs1,0(sp)
    8000133a:	12857553          	fmul.d	fa0,fa0,fs0
    8000133e:	2422                	fld	fs0,8(sp)
    80001340:	6105                	addi	sp,sp,32
    80001342:	1ae57553          	fdiv.d	fa0,fa0,fa4
    80001346:	6aa7f543          	fmadd.d	fa0,fa5,fa0,fa3
    8000134a:	02157553          	fadd.d	fa0,fa0,ft1
    8000134e:	02a57553          	fadd.d	fa0,fa0,fa0
    80001352:	8082                	ret
    80001354:	0aa57553          	fsub.d	fa0,fa0,fa0
    80001358:	1aa57553          	fdiv.d	fa0,fa0,fa0
    8000135c:	8082                	ret
    8000135e:	00093797          	auipc	a5,0x93
    80001362:	b427b507          	fld	fa0,-1214(a5) # 80093ea0 <_erodata+0x32e>
    80001366:	8082                	ret
    80001368:	12a576d3          	fmul.d	fa3,fa0,fa0
    8000136c:	00093717          	auipc	a4,0x93
    80001370:	b4473587          	fld	fa1,-1212(a4) # 80093eb0 <_erodata+0x33e>
    80001374:	00093717          	auipc	a4,0x93
    80001378:	b3473707          	fld	fa4,-1228(a4) # 80093ea8 <_erodata+0x336>
    8000137c:	00093717          	auipc	a4,0x93
    80001380:	b3c73507          	fld	fa0,-1220(a4) # 80093eb8 <_erodata+0x346>
    80001384:	00093717          	auipc	a4,0x93
    80001388:	b5c73787          	fld	fa5,-1188(a4) # 80093ee0 <_erodata+0x36e>
    8000138c:	00093717          	auipc	a4,0x93
    80001390:	b3473187          	fld	ft3,-1228(a4) # 80093ec0 <_erodata+0x34e>
    80001394:	00093717          	auipc	a4,0x93
    80001398:	b4473607          	fld	fa2,-1212(a4) # 80093ed8 <_erodata+0x366>
    8000139c:	5ae6f743          	fmadd.d	fa4,fa3,fa4,fa1
    800013a0:	7ac6f643          	fmadd.d	fa2,fa3,fa2,fa5
    800013a4:	00093717          	auipc	a4,0x93
    800013a8:	b4473587          	fld	fa1,-1212(a4) # 80093ee8 <_erodata+0x376>
    800013ac:	00093717          	auipc	a4,0x93
    800013b0:	b1c73087          	fld	ft1,-1252(a4) # 80093ec8 <_erodata+0x356>
    800013b4:	00093717          	auipc	a4,0x93
    800013b8:	b1c73787          	fld	fa5,-1252(a4) # 80093ed0 <_erodata+0x35e>
    800013bc:	00093717          	auipc	a4,0x93
    800013c0:	b3473107          	fld	ft2,-1228(a4) # 80093ef0 <_erodata+0x37e>
    800013c4:	00092717          	auipc	a4,0x92
    800013c8:	7cc73007          	fld	ft0,1996(a4) # 80093b90 <_erodata+0x1e>
    800013cc:	52d77743          	fmadd.d	fa4,fa4,fa3,fa0
    800013d0:	5ad67643          	fmadd.d	fa2,fa2,fa3,fa1
    800013d4:	00093717          	auipc	a4,0x93
    800013d8:	b2473587          	fld	fa1,-1244(a4) # 80093ef8 <_erodata+0x386>
    800013dc:	00093717          	auipc	a4,0x93
    800013e0:	97c73507          	fld	fa0,-1668(a4) # 80093d58 <_erodata+0x1e6>
    800013e4:	1ad77743          	fmadd.d	fa4,fa4,fa3,ft3
    800013e8:	12d67643          	fmadd.d	fa2,fa2,fa3,ft2
    800013ec:	0ad77743          	fmadd.d	fa4,fa4,fa3,ft1
    800013f0:	02d67643          	fmadd.d	fa2,fa2,fa3,ft0
    800013f4:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
    800013f8:	f2078753          	fmv.d.x	fa4,a5
    800013fc:	12d7f7d3          	fmul.d	fa5,fa5,fa3
    80001400:	1ac7f7d3          	fdiv.d	fa5,fa5,fa2
    80001404:	5af777cb          	fnmsub.d	fa5,fa4,fa5,fa1
    80001408:	0af777d3          	fsub.d	fa5,fa4,fa5
    8000140c:	0af57553          	fsub.d	fa0,fa0,fa5
    80001410:	8082                	ret
    80001412:	00092717          	auipc	a4,0x92
    80001416:	77e73707          	fld	fa4,1918(a4) # 80093b90 <_erodata+0x1e>
    8000141a:	02e57553          	fadd.d	fa0,fa0,fa4
    8000141e:	00093797          	auipc	a5,0x93
    80001422:	9e27b407          	fld	fs0,-1566(a5) # 80093e00 <_erodata+0x28e>
    80001426:	00093797          	auipc	a5,0x93
    8000142a:	a827b787          	fld	fa5,-1406(a5) # 80093ea8 <_erodata+0x336>
    8000142e:	00093797          	auipc	a5,0x93
    80001432:	a827b187          	fld	ft3,-1406(a5) # 80093eb0 <_erodata+0x33e>
    80001436:	00093797          	auipc	a5,0x93
    8000143a:	a827b087          	fld	ft1,-1406(a5) # 80093eb8 <_erodata+0x346>
    8000143e:	00093797          	auipc	a5,0x93
    80001442:	a827b587          	fld	fa1,-1406(a5) # 80093ec0 <_erodata+0x34e>
    80001446:	00093797          	auipc	a5,0x93
    8000144a:	a927b487          	fld	fs1,-1390(a5) # 80093ed8 <_erodata+0x366>
    8000144e:	12857553          	fmul.d	fa0,fa0,fs0
    80001452:	00093797          	auipc	a5,0x93
    80001456:	a8e7b107          	fld	ft2,-1394(a5) # 80093ee0 <_erodata+0x36e>
    8000145a:	00093797          	auipc	a5,0x93
    8000145e:	a6e7b607          	fld	fa2,-1426(a5) # 80093ec8 <_erodata+0x356>
    80001462:	00093797          	auipc	a5,0x93
    80001466:	a867b007          	fld	ft0,-1402(a5) # 80093ee8 <_erodata+0x376>
    8000146a:	00093797          	auipc	a5,0x93
    8000146e:	a667b687          	fld	fa3,-1434(a5) # 80093ed0 <_erodata+0x35e>
    80001472:	00093797          	auipc	a5,0x93
    80001476:	a7e7b407          	fld	fs0,-1410(a5) # 80093ef0 <_erodata+0x37e>
    8000147a:	1af577c3          	fmadd.d	fa5,fa0,fa5,ft3
    8000147e:	129574c3          	fmadd.d	fs1,fa0,fs1,ft2
    80001482:	0aa7f7c3          	fmadd.d	fa5,fa5,fa0,ft1
    80001486:	02a4f4c3          	fmadd.d	fs1,fs1,fa0,ft0
    8000148a:	5aa7f7c3          	fmadd.d	fa5,fa5,fa0,fa1
    8000148e:	42a4f4c3          	fmadd.d	fs1,fs1,fa0,fs0
    80001492:	62a7f7c3          	fmadd.d	fa5,fa5,fa0,fa2
    80001496:	72a4f4c3          	fmadd.d	fs1,fs1,fa0,fa4
    8000149a:	6aa7f7c3          	fmadd.d	fa5,fa5,fa0,fa3
    8000149e:	12a7f453          	fmul.d	fs0,fa5,fa0
    800014a2:	3f5010ef          	jal	ra,80003096 <__ieee754_sqrt>
    800014a6:	00093797          	auipc	a5,0x93
    800014aa:	a5a7b687          	fld	fa3,-1446(a5) # 80093f00 <_erodata+0x38e>
    800014ae:	60e2                	ld	ra,24(sp)
    800014b0:	00093797          	auipc	a5,0x93
    800014b4:	8a07b707          	fld	fa4,-1888(a5) # 80093d50 <_erodata+0x1de>
    800014b8:	00093797          	auipc	a5,0x93
    800014bc:	9e87b787          	fld	fa5,-1560(a5) # 80093ea0 <_erodata+0x32e>
    800014c0:	1a947453          	fdiv.d	fs0,fs0,fs1
    800014c4:	2482                	fld	fs1,0(sp)
    800014c6:	6a857443          	fmadd.d	fs0,fa0,fs0,fa3
    800014ca:	02a47553          	fadd.d	fa0,fs0,fa0
    800014ce:	2422                	fld	fs0,8(sp)
    800014d0:	6105                	addi	sp,sp,32
    800014d2:	7ae5754b          	fnmsub.d	fa0,fa0,fa4,fa5
    800014d6:	8082                	ret

00000000800014d8 <__ieee754_acosh>:
__ieee754_acosh():
    800014d8:	1101                	addi	sp,sp,-32
    800014da:	e822                	sd	s0,16(sp)
    800014dc:	e2050453          	fmv.x.d	s0,fa0
    800014e0:	ec06                	sd	ra,24(sp)
    800014e2:	a422                	fsd	fs0,8(sp)
    800014e4:	3ff00737          	lui	a4,0x3ff00
    800014e8:	42045793          	srai	a5,s0,0x20
    800014ec:	06e7cb63          	blt	a5,a4,80001562 <__ieee754_acosh+0x8a>
    800014f0:	41b00737          	lui	a4,0x41b00
    800014f4:	00e7cd63          	blt	a5,a4,8000150e <__ieee754_acosh+0x36>
    800014f8:	7ff00737          	lui	a4,0x7ff00
    800014fc:	0ae7cb63          	blt	a5,a4,800015b2 <__ieee754_acosh+0xda>
    80001500:	60e2                	ld	ra,24(sp)
    80001502:	6442                	ld	s0,16(sp)
    80001504:	2422                	fld	fs0,8(sp)
    80001506:	02a57553          	fadd.d	fa0,fa0,fa0
    8000150a:	6105                	addi	sp,sp,32
    8000150c:	8082                	ret
    8000150e:	c0100737          	lui	a4,0xc0100
    80001512:	9f3d                	addw	a4,a4,a5
    80001514:	8f41                	or	a4,a4,s0
    80001516:	2701                	sext.w	a4,a4
    80001518:	c751                	beqz	a4,800015a4 <__ieee754_acosh+0xcc>
    8000151a:	40000737          	lui	a4,0x40000
    8000151e:	04f75b63          	bge	a4,a5,80001574 <__ieee754_acosh+0x9c>
    80001522:	f20407d3          	fmv.d.x	fa5,s0
    80001526:	00092797          	auipc	a5,0x92
    8000152a:	6627b507          	fld	fa0,1634(a5) # 80093b88 <_erodata+0x16>
    8000152e:	52f7f543          	fmadd.d	fa0,fa5,fa5,fa0
    80001532:	365010ef          	jal	ra,80003096 <__ieee754_sqrt>
    80001536:	f2040753          	fmv.d.x	fa4,s0
    8000153a:	00092797          	auipc	a5,0x92
    8000153e:	6567b787          	fld	fa5,1622(a5) # 80093b90 <_erodata+0x1e>
    80001542:	00093797          	auipc	a5,0x93
    80001546:	80e7b687          	fld	fa3,-2034(a5) # 80093d50 <_erodata+0x1de>
    8000154a:	02e57553          	fadd.d	fa0,fa0,fa4
    8000154e:	6442                	ld	s0,16(sp)
    80001550:	60e2                	ld	ra,24(sp)
    80001552:	2422                	fld	fs0,8(sp)
    80001554:	6105                	addi	sp,sp,32
    80001556:	1aa7f553          	fdiv.d	fa0,fa5,fa0
    8000155a:	52d77547          	fmsub.d	fa0,fa4,fa3,fa0
    8000155e:	4290006f          	j	80002186 <__ieee754_log>
    80001562:	0aa57553          	fsub.d	fa0,fa0,fa0
    80001566:	60e2                	ld	ra,24(sp)
    80001568:	6442                	ld	s0,16(sp)
    8000156a:	2422                	fld	fs0,8(sp)
    8000156c:	6105                	addi	sp,sp,32
    8000156e:	1aa57553          	fdiv.d	fa0,fa0,fa0
    80001572:	8082                	ret
    80001574:	00092797          	auipc	a5,0x92
    80001578:	61c7b407          	fld	fs0,1564(a5) # 80093b90 <_erodata+0x1e>
    8000157c:	0a857453          	fsub.d	fs0,fa0,fs0
    80001580:	00092797          	auipc	a5,0x92
    80001584:	7d07b507          	fld	fa0,2000(a5) # 80093d50 <_erodata+0x1de>
    80001588:	128477d3          	fmul.d	fa5,fs0,fs0
    8000158c:	7aa47543          	fmadd.d	fa0,fs0,fa0,fa5
    80001590:	307010ef          	jal	ra,80003096 <__ieee754_sqrt>
    80001594:	02857553          	fadd.d	fa0,fa0,fs0
    80001598:	6442                	ld	s0,16(sp)
    8000159a:	60e2                	ld	ra,24(sp)
    8000159c:	2422                	fld	fs0,8(sp)
    8000159e:	6105                	addi	sp,sp,32
    800015a0:	6705e06f          	j	8005fc10 <log1p>
    800015a4:	60e2                	ld	ra,24(sp)
    800015a6:	6442                	ld	s0,16(sp)
    800015a8:	2422                	fld	fs0,8(sp)
    800015aa:	f2000553          	fmv.d.x	fa0,zero
    800015ae:	6105                	addi	sp,sp,32
    800015b0:	8082                	ret
    800015b2:	3d5000ef          	jal	ra,80002186 <__ieee754_log>
    800015b6:	60e2                	ld	ra,24(sp)
    800015b8:	6442                	ld	s0,16(sp)
    800015ba:	00092797          	auipc	a5,0x92
    800015be:	78e7b787          	fld	fa5,1934(a5) # 80093d48 <_erodata+0x1d6>
    800015c2:	2422                	fld	fs0,8(sp)
    800015c4:	02f57553          	fadd.d	fa0,fa0,fa5
    800015c8:	6105                	addi	sp,sp,32
    800015ca:	8082                	ret

00000000800015cc <__ieee754_asin>:
__ieee754_asin():
    800015cc:	e20507d3          	fmv.x.d	a5,fa0
    800015d0:	7139                	addi	sp,sp,-64
    800015d2:	f426                	sd	s1,40(sp)
    800015d4:	4207d493          	srai	s1,a5,0x20
    800015d8:	f822                	sd	s0,48(sp)
    800015da:	02149413          	slli	s0,s1,0x21
    800015de:	fc06                	sd	ra,56(sp)
    800015e0:	ac22                	fsd	fs0,24(sp)
    800015e2:	a826                	fsd	fs1,16(sp)
    800015e4:	a44a                	fsd	fs2,8(sp)
    800015e6:	a04e                	fsd	fs3,0(sp)
    800015e8:	3ff00737          	lui	a4,0x3ff00
    800015ec:	9005                	srli	s0,s0,0x21
    800015ee:	04e44463          	blt	s0,a4,80001636 <__ieee754_asin+0x6a>
    800015f2:	c0100737          	lui	a4,0xc0100
    800015f6:	9c39                	addw	s0,s0,a4
    800015f8:	8c5d                	or	s0,s0,a5
    800015fa:	2401                	sext.w	s0,s0
    800015fc:	cc11                	beqz	s0,80001618 <__ieee754_asin+0x4c>
    800015fe:	0aa57553          	fsub.d	fa0,fa0,fa0
    80001602:	1aa57553          	fdiv.d	fa0,fa0,fa0
    80001606:	70e2                	ld	ra,56(sp)
    80001608:	7442                	ld	s0,48(sp)
    8000160a:	74a2                	ld	s1,40(sp)
    8000160c:	2462                	fld	fs0,24(sp)
    8000160e:	24c2                	fld	fs1,16(sp)
    80001610:	2922                	fld	fs2,8(sp)
    80001612:	2982                	fld	fs3,0(sp)
    80001614:	6121                	addi	sp,sp,64
    80001616:	8082                	ret
    80001618:	00093717          	auipc	a4,0x93
    8000161c:	8e073787          	fld	fa5,-1824(a4) # 80093ef8 <_erodata+0x386>
    80001620:	12f577d3          	fmul.d	fa5,fa0,fa5
    80001624:	22a50753          	fmv.d	fa4,fa0
    80001628:	00092717          	auipc	a4,0x92
    8000162c:	73073507          	fld	fa0,1840(a4) # 80093d58 <_erodata+0x1e6>
    80001630:	7aa77543          	fmadd.d	fa0,fa4,fa0,fa5
    80001634:	bfc9                	j	80001606 <__ieee754_asin+0x3a>
    80001636:	3fe00737          	lui	a4,0x3fe00
    8000163a:	14e45a63          	bge	s0,a4,8000178e <__ieee754_asin+0x1c2>
    8000163e:	3e400737          	lui	a4,0x3e400
    80001642:	14e45b63          	bge	s0,a4,80001798 <__ieee754_asin+0x1cc>
    80001646:	00092717          	auipc	a4,0x92
    8000164a:	53a73787          	fld	fa5,1338(a4) # 80093b80 <_erodata+0xe>
    8000164e:	02f577d3          	fadd.d	fa5,fa0,fa5
    80001652:	00092717          	auipc	a4,0x92
    80001656:	53e73987          	fld	fs3,1342(a4) # 80093b90 <_erodata+0x1e>
    8000165a:	a2f99753          	flt.d	a4,fs3,fa5
    8000165e:	f745                	bnez	a4,80001606 <__ieee754_asin+0x3a>
    80001660:	f2078553          	fmv.d.x	fa0,a5
    80001664:	aceff0ef          	jal	ra,80000932 <fabs>
    80001668:	0aa9f453          	fsub.d	fs0,fs3,fa0
    8000166c:	00092797          	auipc	a5,0x92
    80001670:	7947b707          	fld	fa4,1940(a5) # 80093e00 <_erodata+0x28e>
    80001674:	00093797          	auipc	a5,0x93
    80001678:	8347b787          	fld	fa5,-1996(a5) # 80093ea8 <_erodata+0x336>
    8000167c:	00093797          	auipc	a5,0x93
    80001680:	8347b487          	fld	fs1,-1996(a5) # 80093eb0 <_erodata+0x33e>
    80001684:	00093797          	auipc	a5,0x93
    80001688:	8347b087          	fld	ft1,-1996(a5) # 80093eb8 <_erodata+0x346>
    8000168c:	00093797          	auipc	a5,0x93
    80001690:	8347b587          	fld	fa1,-1996(a5) # 80093ec0 <_erodata+0x34e>
    80001694:	00093797          	auipc	a5,0x93
    80001698:	8447b907          	fld	fs2,-1980(a5) # 80093ed8 <_erodata+0x366>
    8000169c:	12e47453          	fmul.d	fs0,fs0,fa4
    800016a0:	00093797          	auipc	a5,0x93
    800016a4:	8407b107          	fld	ft2,-1984(a5) # 80093ee0 <_erodata+0x36e>
    800016a8:	00093797          	auipc	a5,0x93
    800016ac:	8207b687          	fld	fa3,-2016(a5) # 80093ec8 <_erodata+0x356>
    800016b0:	00093797          	auipc	a5,0x93
    800016b4:	8387b007          	fld	ft0,-1992(a5) # 80093ee8 <_erodata+0x376>
    800016b8:	00093797          	auipc	a5,0x93
    800016bc:	8187b707          	fld	fa4,-2024(a5) # 80093ed0 <_erodata+0x35e>
    800016c0:	00093797          	auipc	a5,0x93
    800016c4:	8307b607          	fld	fa2,-2000(a5) # 80093ef0 <_erodata+0x37e>
    800016c8:	4af474c3          	fmadd.d	fs1,fs0,fa5,fs1
    800016cc:	13247943          	fmadd.d	fs2,fs0,fs2,ft2
    800016d0:	22840553          	fmv.d	fa0,fs0
    800016d4:	0a84f4c3          	fmadd.d	fs1,fs1,fs0,ft1
    800016d8:	02897943          	fmadd.d	fs2,fs2,fs0,ft0
    800016dc:	5a84f4c3          	fmadd.d	fs1,fs1,fs0,fa1
    800016e0:	62897943          	fmadd.d	fs2,fs2,fs0,fa2
    800016e4:	6a84f4c3          	fmadd.d	fs1,fs1,fs0,fa3
    800016e8:	9a897943          	fmadd.d	fs2,fs2,fs0,fs3
    800016ec:	7284f4c3          	fmadd.d	fs1,fs1,fs0,fa4
    800016f0:	1a7010ef          	jal	ra,80003096 <__ieee754_sqrt>
    800016f4:	3fef3737          	lui	a4,0x3fef3
    800016f8:	33270713          	addi	a4,a4,818 # 3fef3332 <asinh-0x4010ccce>
    800016fc:	e20507d3          	fmv.x.d	a5,fa0
    80001700:	1284f4d3          	fmul.d	fs1,fs1,fs0
    80001704:	02875d63          	bge	a4,s0,8000173e <__ieee754_asin+0x172>
    80001708:	1b24f4d3          	fdiv.d	fs1,fs1,fs2
    8000170c:	f20786d3          	fmv.d.x	fa3,a5
    80001710:	00092717          	auipc	a4,0x92
    80001714:	64073707          	fld	fa4,1600(a4) # 80093d50 <_erodata+0x1de>
    80001718:	00092717          	auipc	a4,0x92
    8000171c:	7e873507          	fld	fa0,2024(a4) # 80093f00 <_erodata+0x38e>
    80001720:	00092717          	auipc	a4,0x92
    80001724:	63873787          	fld	fa5,1592(a4) # 80093d58 <_erodata+0x1e6>
    80001728:	6a96f4c3          	fmadd.d	fs1,fa3,fs1,fa3
    8000172c:	52e4f543          	fmadd.d	fa0,fs1,fa4,fa0
    80001730:	0aa7f553          	fsub.d	fa0,fa5,fa0
    80001734:	ec9049e3          	bgtz	s1,80001606 <__ieee754_asin+0x3a>
    80001738:	22a51553          	fneg.d	fa0,fa0
    8000173c:	b5e9                	j	80001606 <__ieee754_asin+0x3a>
    8000173e:	0207d713          	srli	a4,a5,0x20
    80001742:	1702                	slli	a4,a4,0x20
    80001744:	f20707d3          	fmv.d.x	fa5,a4
    80001748:	1b24f4d3          	fdiv.d	fs1,fs1,fs2
    8000174c:	00092697          	auipc	a3,0x92
    80001750:	6046b687          	fld	fa3,1540(a3) # 80093d50 <_erodata+0x1de>
    80001754:	02f575d3          	fadd.d	fa1,fa0,fa5
    80001758:	42f7f44b          	fnmsub.d	fs0,fa5,fa5,fs0
    8000175c:	00092697          	auipc	a3,0x92
    80001760:	79c6b607          	fld	fa2,1948(a3) # 80093ef8 <_erodata+0x386>
    80001764:	02a57553          	fadd.d	fa0,fa0,fa0
    80001768:	f2070753          	fmv.d.x	fa4,a4
    8000176c:	00092797          	auipc	a5,0x92
    80001770:	79c7b787          	fld	fa5,1948(a5) # 80093f08 <_erodata+0x396>
    80001774:	7ad7774b          	fnmsub.d	fa4,fa4,fa3,fa5
    80001778:	1ab47453          	fdiv.d	fs0,fs0,fa1
    8000177c:	62d4744b          	fnmsub.d	fs0,fs0,fa3,fa2
    80001780:	42957547          	fmsub.d	fa0,fa0,fs1,fs0
    80001784:	0ae57553          	fsub.d	fa0,fa0,fa4
    80001788:	0aa7f553          	fsub.d	fa0,fa5,fa0
    8000178c:	b765                	j	80001734 <__ieee754_asin+0x168>
    8000178e:	00092717          	auipc	a4,0x92
    80001792:	40273987          	fld	fs3,1026(a4) # 80093b90 <_erodata+0x1e>
    80001796:	b5e9                	j	80001660 <__ieee754_asin+0x94>
    80001798:	12a57753          	fmul.d	fa4,fa0,fa0
    8000179c:	00092717          	auipc	a4,0x92
    800017a0:	70c73787          	fld	fa5,1804(a4) # 80093ea8 <_erodata+0x336>
    800017a4:	00092717          	auipc	a4,0x92
    800017a8:	70c73507          	fld	fa0,1804(a4) # 80093eb0 <_erodata+0x33e>
    800017ac:	00092717          	auipc	a4,0x92
    800017b0:	70c73187          	fld	ft3,1804(a4) # 80093eb8 <_erodata+0x346>
    800017b4:	00092717          	auipc	a4,0x92
    800017b8:	72c73607          	fld	fa2,1836(a4) # 80093ee0 <_erodata+0x36e>
    800017bc:	00092717          	auipc	a4,0x92
    800017c0:	70473087          	fld	ft1,1796(a4) # 80093ec0 <_erodata+0x34e>
    800017c4:	00092717          	auipc	a4,0x92
    800017c8:	71473687          	fld	fa3,1812(a4) # 80093ed8 <_erodata+0x366>
    800017cc:	52f777c3          	fmadd.d	fa5,fa4,fa5,fa0
    800017d0:	62d776c3          	fmadd.d	fa3,fa4,fa3,fa2
    800017d4:	00092717          	auipc	a4,0x92
    800017d8:	6f473507          	fld	fa0,1780(a4) # 80093ec8 <_erodata+0x356>
    800017dc:	00092717          	auipc	a4,0x92
    800017e0:	70c73107          	fld	ft2,1804(a4) # 80093ee8 <_erodata+0x376>
    800017e4:	00092717          	auipc	a4,0x92
    800017e8:	6ec73607          	fld	fa2,1772(a4) # 80093ed0 <_erodata+0x35e>
    800017ec:	00092717          	auipc	a4,0x92
    800017f0:	70473007          	fld	ft0,1796(a4) # 80093ef0 <_erodata+0x37e>
    800017f4:	00092717          	auipc	a4,0x92
    800017f8:	39c73587          	fld	fa1,924(a4) # 80093b90 <_erodata+0x1e>
    800017fc:	1ae7f7c3          	fmadd.d	fa5,fa5,fa4,ft3
    80001800:	12e6f6c3          	fmadd.d	fa3,fa3,fa4,ft2
    80001804:	0ae7f7c3          	fmadd.d	fa5,fa5,fa4,ft1
    80001808:	02e6f6c3          	fmadd.d	fa3,fa3,fa4,ft0
    8000180c:	52e7f543          	fmadd.d	fa0,fa5,fa4,fa0
    80001810:	5ae6f6c3          	fmadd.d	fa3,fa3,fa4,fa1
    80001814:	f20787d3          	fmv.d.x	fa5,a5
    80001818:	62e57543          	fmadd.d	fa0,fa0,fa4,fa2
    8000181c:	12e57553          	fmul.d	fa0,fa0,fa4
    80001820:	1ad57553          	fdiv.d	fa0,fa0,fa3
    80001824:	7aa7f543          	fmadd.d	fa0,fa5,fa0,fa5
    80001828:	bbf9                	j	80001606 <__ieee754_asin+0x3a>

000000008000182a <__ieee754_atan2>:
__ieee754_atan2():
    8000182a:	e2058653          	fmv.x.d	a2,fa1
    8000182e:	80000737          	lui	a4,0x80000
    80001832:	fff74713          	not	a4,a4
    80001836:	0006051b          	sext.w	a0,a2
    8000183a:	40c007bb          	negw	a5,a2
    8000183e:	42065593          	srai	a1,a2,0x20
    80001842:	8fc9                	or	a5,a5,a0
    80001844:	00e5f8b3          	and	a7,a1,a4
    80001848:	01f7d79b          	srliw	a5,a5,0x1f
    8000184c:	00f8e7b3          	or	a5,a7,a5
    80001850:	7ff00837          	lui	a6,0x7ff00
    80001854:	2781                	sext.w	a5,a5
    80001856:	e20506d3          	fmv.x.d	a3,fa0
    8000185a:	06f86c63          	bltu	a6,a5,800018d2 <__ieee754_atan2+0xa8>
    8000185e:	4206de13          	srai	t3,a3,0x20
    80001862:	00068e9b          	sext.w	t4,a3
    80001866:	40d007bb          	negw	a5,a3
    8000186a:	00ee7733          	and	a4,t3,a4
    8000186e:	00fee7b3          	or	a5,t4,a5
    80001872:	00070f9b          	sext.w	t6,a4
    80001876:	01f7d79b          	srliw	a5,a5,0x1f
    8000187a:	00ffe7b3          	or	a5,t6,a5
    8000187e:	2781                	sext.w	a5,a5
    80001880:	04f86963          	bltu	a6,a5,800018d2 <__ieee754_atan2+0xa8>
    80001884:	c01007b7          	lui	a5,0xc0100
    80001888:	9fad                	addw	a5,a5,a1
    8000188a:	8fc9                	or	a5,a5,a0
    8000188c:	2781                	sext.w	a5,a5
    8000188e:	c7f9                	beqz	a5,8000195c <__ieee754_atan2+0x132>
    80001890:	1141                	addi	sp,sp,-16
    80001892:	e022                	sd	s0,0(sp)
    80001894:	41e5d41b          	sraiw	s0,a1,0x1e
    80001898:	8809                	andi	s0,s0,2
    8000189a:	01fe5f1b          	srliw	t5,t3,0x1f
    8000189e:	01e46433          	or	s0,s0,t5
    800018a2:	e406                	sd	ra,8(sp)
    800018a4:	01feeeb3          	or	t4,t4,t6
    800018a8:	2401                	sext.w	s0,s0
    800018aa:	020e9d63          	bnez	t4,800018e4 <__ieee754_atan2+0xba>
    800018ae:	4789                	li	a5,2
    800018b0:	0af40f63          	beq	s0,a5,8000196e <__ieee754_atan2+0x144>
    800018b4:	470d                	li	a4,3
    800018b6:	e20507d3          	fmv.x.d	a5,fa0
    800018ba:	00e41663          	bne	s0,a4,800018c6 <__ieee754_atan2+0x9c>
    800018be:	00092797          	auipc	a5,0x92
    800018c2:	6527b783          	ld	a5,1618(a5) # 80093f10 <_erodata+0x39e>
    800018c6:	60a2                	ld	ra,8(sp)
    800018c8:	6402                	ld	s0,0(sp)
    800018ca:	f2078553          	fmv.d.x	fa0,a5
    800018ce:	0141                	addi	sp,sp,16
    800018d0:	8082                	ret
    800018d2:	f20607d3          	fmv.d.x	fa5,a2
    800018d6:	f2068753          	fmv.d.x	fa4,a3
    800018da:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    800018de:	22f78553          	fmv.d	fa0,fa5
    800018e2:	8082                	ret
    800018e4:	01156533          	or	a0,a0,a7
    800018e8:	2501                	sext.w	a0,a0
    800018ea:	c93d                	beqz	a0,80001960 <__ieee754_atan2+0x136>
    800018ec:	0b088063          	beq	a7,a6,8000198c <__ieee754_atan2+0x162>
    800018f0:	070f8863          	beq	t6,a6,80001960 <__ieee754_atan2+0x136>
    800018f4:	411f873b          	subw	a4,t6,a7
    800018f8:	4147571b          	sraiw	a4,a4,0x14
    800018fc:	03c00793          	li	a5,60
    80001900:	08e7c163          	blt	a5,a4,80001982 <__ieee754_atan2+0x158>
    80001904:	0005d863          	bgez	a1,80001914 <__ieee754_atan2+0xea>
    80001908:	fc400593          	li	a1,-60
    8000190c:	00000793          	li	a5,0
    80001910:	00b74e63          	blt	a4,a1,8000192c <__ieee754_atan2+0x102>
    80001914:	f20687d3          	fmv.d.x	fa5,a3
    80001918:	f2060753          	fmv.d.x	fa4,a2
    8000191c:	1ae7f553          	fdiv.d	fa0,fa5,fa4
    80001920:	812ff0ef          	jal	ra,80000932 <fabs>
    80001924:	fe0fe0ef          	jal	ra,80000104 <atan>
    80001928:	e20507d3          	fmv.x.d	a5,fa0
    8000192c:	4705                	li	a4,1
    8000192e:	0ae40563          	beq	s0,a4,800019d8 <__ieee754_atan2+0x1ae>
    80001932:	4709                	li	a4,2
    80001934:	08e40163          	beq	s0,a4,800019b6 <__ieee754_atan2+0x18c>
    80001938:	d459                	beqz	s0,800018c6 <__ieee754_atan2+0x9c>
    8000193a:	f2078753          	fmv.d.x	fa4,a5
    8000193e:	00092717          	auipc	a4,0x92
    80001942:	5da73787          	fld	fa5,1498(a4) # 80093f18 <_erodata+0x3a6>
    80001946:	0af777d3          	fsub.d	fa5,fa4,fa5
    8000194a:	00092797          	auipc	a5,0x92
    8000194e:	5567b707          	fld	fa4,1366(a5) # 80093ea0 <_erodata+0x32e>
    80001952:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80001956:	e20787d3          	fmv.x.d	a5,fa5
    8000195a:	b7b5                	j	800018c6 <__ieee754_atan2+0x9c>
    8000195c:	fa8fe06f          	j	80000104 <atan>
    80001960:	000e4c63          	bltz	t3,80001978 <__ieee754_atan2+0x14e>
    80001964:	00092797          	auipc	a5,0x92
    80001968:	3f47b783          	ld	a5,1012(a5) # 80093d58 <_erodata+0x1e6>
    8000196c:	bfa9                	j	800018c6 <__ieee754_atan2+0x9c>
    8000196e:	00092797          	auipc	a5,0x92
    80001972:	5327b783          	ld	a5,1330(a5) # 80093ea0 <_erodata+0x32e>
    80001976:	bf81                	j	800018c6 <__ieee754_atan2+0x9c>
    80001978:	00092797          	auipc	a5,0x92
    8000197c:	3e87b783          	ld	a5,1000(a5) # 80093d60 <_erodata+0x1ee>
    80001980:	b799                	j	800018c6 <__ieee754_atan2+0x9c>
    80001982:	00092797          	auipc	a5,0x92
    80001986:	3d67b783          	ld	a5,982(a5) # 80093d58 <_erodata+0x1e6>
    8000198a:	b74d                	j	8000192c <__ieee754_atan2+0x102>
    8000198c:	347d                	addiw	s0,s0,-1
    8000198e:	0004069b          	sext.w	a3,s0
    80001992:	051f8e63          	beq	t6,a7,800019ee <__ieee754_atan2+0x1c4>
    80001996:	4709                	li	a4,2
    80001998:	00000793          	li	a5,0
    8000199c:	f2d765e3          	bltu	a4,a3,800018c6 <__ieee754_atan2+0x9c>
    800019a0:	02041793          	slli	a5,s0,0x20
    800019a4:	01d7d413          	srli	s0,a5,0x1d
    800019a8:	00063797          	auipc	a5,0x63
    800019ac:	1e078793          	addi	a5,a5,480 # 80064b88 <CSWTCH.8>
    800019b0:	943e                	add	s0,s0,a5
    800019b2:	6c1c                	ld	a5,24(s0)
    800019b4:	bf09                	j	800018c6 <__ieee754_atan2+0x9c>
    800019b6:	f2078753          	fmv.d.x	fa4,a5
    800019ba:	00092717          	auipc	a4,0x92
    800019be:	55e73787          	fld	fa5,1374(a4) # 80093f18 <_erodata+0x3a6>
    800019c2:	0af777d3          	fsub.d	fa5,fa4,fa5
    800019c6:	00092797          	auipc	a5,0x92
    800019ca:	4da7b707          	fld	fa4,1242(a5) # 80093ea0 <_erodata+0x32e>
    800019ce:	0af777d3          	fsub.d	fa5,fa4,fa5
    800019d2:	e20787d3          	fmv.x.d	a5,fa5
    800019d6:	bdc5                	j	800018c6 <__ieee754_atan2+0x9c>
    800019d8:	0207d713          	srli	a4,a5,0x20
    800019dc:	800006b7          	lui	a3,0x80000
    800019e0:	8f35                	xor	a4,a4,a3
    800019e2:	56fd                	li	a3,-1
    800019e4:	9281                	srli	a3,a3,0x20
    800019e6:	1702                	slli	a4,a4,0x20
    800019e8:	8ff5                	and	a5,a5,a3
    800019ea:	8fd9                	or	a5,a5,a4
    800019ec:	bde9                	j	800018c6 <__ieee754_atan2+0x9c>
    800019ee:	4789                	li	a5,2
    800019f0:	00d7ed63          	bltu	a5,a3,80001a0a <__ieee754_atan2+0x1e0>
    800019f4:	02041793          	slli	a5,s0,0x20
    800019f8:	01d7d413          	srli	s0,a5,0x1d
    800019fc:	00063797          	auipc	a5,0x63
    80001a00:	18c78793          	addi	a5,a5,396 # 80064b88 <CSWTCH.8>
    80001a04:	943e                	add	s0,s0,a5
    80001a06:	601c                	ld	a5,0(s0)
    80001a08:	bd7d                	j	800018c6 <__ieee754_atan2+0x9c>
    80001a0a:	00092797          	auipc	a5,0x92
    80001a0e:	4fe7b783          	ld	a5,1278(a5) # 80093f08 <_erodata+0x396>
    80001a12:	bd55                	j	800018c6 <__ieee754_atan2+0x9c>

0000000080001a14 <__ieee754_atanh>:
__ieee754_atanh():
    80001a14:	e2050753          	fmv.x.d	a4,fa0
    80001a18:	1141                	addi	sp,sp,-16
    80001a1a:	e022                	sd	s0,0(sp)
    80001a1c:	40e0063b          	negw	a2,a4
    80001a20:	42075413          	srai	s0,a4,0x20
    80001a24:	00c767b3          	or	a5,a4,a2
    80001a28:	02141693          	slli	a3,s0,0x21
    80001a2c:	0216d613          	srli	a2,a3,0x21
    80001a30:	01f7d79b          	srliw	a5,a5,0x1f
    80001a34:	8fd1                	or	a5,a5,a2
    80001a36:	e406                	sd	ra,8(sp)
    80001a38:	3ff005b7          	lui	a1,0x3ff00
    80001a3c:	2781                	sext.w	a5,a5
    80001a3e:	0af5ea63          	bltu	a1,a5,80001af2 <__ieee754_atanh+0xde>
    80001a42:	86b2                	mv	a3,a2
    80001a44:	0ab60f63          	beq	a2,a1,80001b02 <__ieee754_atanh+0xee>
    80001a48:	3e3007b7          	lui	a5,0x3e300
    80001a4c:	04f64863          	blt	a2,a5,80001a9c <__ieee754_atanh+0x88>
    80001a50:	57fd                	li	a5,-1
    80001a52:	9381                	srli	a5,a5,0x20
    80001a54:	1602                	slli	a2,a2,0x20
    80001a56:	8f7d                	and	a4,a4,a5
    80001a58:	8f51                	or	a4,a4,a2
    80001a5a:	3fe007b7          	lui	a5,0x3fe00
    80001a5e:	863a                	mv	a2,a4
    80001a60:	04f6ce63          	blt	a3,a5,80001abc <__ieee754_atanh+0xa8>
    80001a64:	f2070753          	fmv.d.x	fa4,a4
    80001a68:	00092797          	auipc	a5,0x92
    80001a6c:	1287b787          	fld	fa5,296(a5) # 80093b90 <_erodata+0x1e>
    80001a70:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80001a74:	02e77553          	fadd.d	fa0,fa4,fa4
    80001a78:	1af57553          	fdiv.d	fa0,fa0,fa5
    80001a7c:	1945e0ef          	jal	ra,8005fc10 <log1p>
    80001a80:	00092797          	auipc	a5,0x92
    80001a84:	3807b787          	fld	fa5,896(a5) # 80093e00 <_erodata+0x28e>
    80001a88:	12f57553          	fmul.d	fa0,fa0,fa5
    80001a8c:	00045463          	bgez	s0,80001a94 <__ieee754_atanh+0x80>
    80001a90:	22a51553          	fneg.d	fa0,fa0
    80001a94:	60a2                	ld	ra,8(sp)
    80001a96:	6402                	ld	s0,0(sp)
    80001a98:	0141                	addi	sp,sp,16
    80001a9a:	8082                	ret
    80001a9c:	00092797          	auipc	a5,0x92
    80001aa0:	0e47b787          	fld	fa5,228(a5) # 80093b80 <_erodata+0xe>
    80001aa4:	02f577d3          	fadd.d	fa5,fa0,fa5
    80001aa8:	f2000753          	fmv.d.x	fa4,zero
    80001aac:	a2f717d3          	flt.d	a5,fa4,fa5
    80001ab0:	f3f5                	bnez	a5,80001a94 <__ieee754_atanh+0x80>
    80001ab2:	57fd                	li	a5,-1
    80001ab4:	9381                	srli	a5,a5,0x20
    80001ab6:	1602                	slli	a2,a2,0x20
    80001ab8:	8f7d                	and	a4,a4,a5
    80001aba:	8e59                	or	a2,a2,a4
    80001abc:	f20607d3          	fmv.d.x	fa5,a2
    80001ac0:	f2060753          	fmv.d.x	fa4,a2
    80001ac4:	00092797          	auipc	a5,0x92
    80001ac8:	0cc7b507          	fld	fa0,204(a5) # 80093b90 <_erodata+0x1e>
    80001acc:	02f7f7d3          	fadd.d	fa5,fa5,fa5
    80001ad0:	0ae57553          	fsub.d	fa0,fa0,fa4
    80001ad4:	12e7f753          	fmul.d	fa4,fa5,fa4
    80001ad8:	1aa77553          	fdiv.d	fa0,fa4,fa0
    80001adc:	02f57553          	fadd.d	fa0,fa0,fa5
    80001ae0:	1305e0ef          	jal	ra,8005fc10 <log1p>
    80001ae4:	00092797          	auipc	a5,0x92
    80001ae8:	31c7b787          	fld	fa5,796(a5) # 80093e00 <_erodata+0x28e>
    80001aec:	12f57553          	fmul.d	fa0,fa0,fa5
    80001af0:	bf71                	j	80001a8c <__ieee754_atanh+0x78>
    80001af2:	0aa57553          	fsub.d	fa0,fa0,fa0
    80001af6:	60a2                	ld	ra,8(sp)
    80001af8:	6402                	ld	s0,0(sp)
    80001afa:	0141                	addi	sp,sp,16
    80001afc:	1aa57553          	fdiv.d	fa0,fa0,fa0
    80001b00:	8082                	ret
    80001b02:	60a2                	ld	ra,8(sp)
    80001b04:	6402                	ld	s0,0(sp)
    80001b06:	f2000553          	fmv.d.x	fa0,zero
    80001b0a:	f20707d3          	fmv.d.x	fa5,a4
    80001b0e:	0141                	addi	sp,sp,16
    80001b10:	1aa7f553          	fdiv.d	fa0,fa5,fa0
    80001b14:	8082                	ret

0000000080001b16 <__ieee754_cosh>:
__ieee754_cosh():
    80001b16:	e20507d3          	fmv.x.d	a5,fa0
    80001b1a:	1101                	addi	sp,sp,-32
    80001b1c:	e822                	sd	s0,16(sp)
    80001b1e:	00179413          	slli	s0,a5,0x1
    80001b22:	ec06                	sd	ra,24(sp)
    80001b24:	a422                	fsd	fs0,8(sp)
    80001b26:	7ff00737          	lui	a4,0x7ff00
    80001b2a:	9005                	srli	s0,s0,0x21
    80001b2c:	06e45e63          	bge	s0,a4,80001ba8 <__ieee754_cosh+0x92>
    80001b30:	3fd63737          	lui	a4,0x3fd63
    80001b34:	e4270713          	addi	a4,a4,-446 # 3fd62e42 <asinh-0x4029d1be>
    80001b38:	04875363          	bge	a4,s0,80001b7e <__ieee754_cosh+0x68>
    80001b3c:	40360737          	lui	a4,0x40360
    80001b40:	0ae44963          	blt	s0,a4,80001bf2 <__ieee754_cosh+0xdc>
    80001b44:	40863737          	lui	a4,0x40863
    80001b48:	e4170613          	addi	a2,a4,-447 # 40862e41 <asinh-0x3f79d1bf>
    80001b4c:	0c865063          	bge	a2,s0,80001c0c <__ieee754_cosh+0xf6>
    80001b50:	3cd70613          	addi	a2,a4,973
    80001b54:	06865e63          	bge	a2,s0,80001bd0 <__ieee754_cosh+0xba>
    80001b58:	3ce70713          	addi	a4,a4,974
    80001b5c:	00e41a63          	bne	s0,a4,80001b70 <__ieee754_cosh+0x5a>
    80001b60:	8fba0737          	lui	a4,0x8fba0
    80001b64:	0007869b          	sext.w	a3,a5
    80001b68:	87d70713          	addi	a4,a4,-1923 # ffffffff8fb9f87d <_ebss+0xffffffff0fa9e717>
    80001b6c:	06d77263          	bgeu	a4,a3,80001bd0 <__ieee754_cosh+0xba>
    80001b70:	6442                	ld	s0,16(sp)
    80001b72:	60e2                	ld	ra,24(sp)
    80001b74:	2422                	fld	fs0,8(sp)
    80001b76:	4501                	li	a0,0
    80001b78:	6105                	addi	sp,sp,32
    80001b7a:	11c0206f          	j	80003c96 <__math_oflow>
    80001b7e:	db5fe0ef          	jal	ra,80000932 <fabs>
    80001b82:	a7bfe0ef          	jal	ra,800005fc <expm1>
    80001b86:	00092797          	auipc	a5,0x92
    80001b8a:	00a7b707          	fld	fa4,10(a5) # 80093b90 <_erodata+0x1e>
    80001b8e:	3c8007b7          	lui	a5,0x3c800
    80001b92:	22a507d3          	fmv.d	fa5,fa0
    80001b96:	02e57553          	fadd.d	fa0,fa0,fa4
    80001b9a:	00f45e63          	bge	s0,a5,80001bb6 <__ieee754_cosh+0xa0>
    80001b9e:	60e2                	ld	ra,24(sp)
    80001ba0:	6442                	ld	s0,16(sp)
    80001ba2:	2422                	fld	fs0,8(sp)
    80001ba4:	6105                	addi	sp,sp,32
    80001ba6:	8082                	ret
    80001ba8:	60e2                	ld	ra,24(sp)
    80001baa:	6442                	ld	s0,16(sp)
    80001bac:	2422                	fld	fs0,8(sp)
    80001bae:	12a57553          	fmul.d	fa0,fa0,fa0
    80001bb2:	6105                	addi	sp,sp,32
    80001bb4:	8082                	ret
    80001bb6:	02a576d3          	fadd.d	fa3,fa0,fa0
    80001bba:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80001bbe:	60e2                	ld	ra,24(sp)
    80001bc0:	6442                	ld	s0,16(sp)
    80001bc2:	2422                	fld	fs0,8(sp)
    80001bc4:	6105                	addi	sp,sp,32
    80001bc6:	1ad7f553          	fdiv.d	fa0,fa5,fa3
    80001bca:	02e57553          	fadd.d	fa0,fa0,fa4
    80001bce:	8082                	ret
    80001bd0:	f2078553          	fmv.d.x	fa0,a5
    80001bd4:	d5ffe0ef          	jal	ra,80000932 <fabs>
    80001bd8:	00092797          	auipc	a5,0x92
    80001bdc:	2287b407          	fld	fs0,552(a5) # 80093e00 <_erodata+0x28e>
    80001be0:	12857553          	fmul.d	fa0,fa0,fs0
    80001be4:	03e000ef          	jal	ra,80001c22 <__ieee754_exp>
    80001be8:	12857453          	fmul.d	fs0,fa0,fs0
    80001bec:	12a47553          	fmul.d	fa0,fs0,fa0
    80001bf0:	b77d                	j	80001b9e <__ieee754_cosh+0x88>
    80001bf2:	d41fe0ef          	jal	ra,80000932 <fabs>
    80001bf6:	02c000ef          	jal	ra,80001c22 <__ieee754_exp>
    80001bfa:	00092797          	auipc	a5,0x92
    80001bfe:	2067b787          	fld	fa5,518(a5) # 80093e00 <_erodata+0x28e>
    80001c02:	1aa7f753          	fdiv.d	fa4,fa5,fa0
    80001c06:	72f57543          	fmadd.d	fa0,fa0,fa5,fa4
    80001c0a:	bf51                	j	80001b9e <__ieee754_cosh+0x88>
    80001c0c:	d27fe0ef          	jal	ra,80000932 <fabs>
    80001c10:	012000ef          	jal	ra,80001c22 <__ieee754_exp>
    80001c14:	00092797          	auipc	a5,0x92
    80001c18:	1ec7b787          	fld	fa5,492(a5) # 80093e00 <_erodata+0x28e>
    80001c1c:	12f57553          	fmul.d	fa0,fa0,fa5
    80001c20:	bfbd                	j	80001b9e <__ieee754_cosh+0x88>

0000000080001c22 <__ieee754_exp>:
__ieee754_exp():
    80001c22:	e20507d3          	fmv.x.d	a5,fa0
    80001c26:	40863637          	lui	a2,0x40863
    80001c2a:	e4160613          	addi	a2,a2,-447 # 40862e41 <asinh-0x3f79d1bf>
    80001c2e:	4207d693          	srai	a3,a5,0x20
    80001c32:	02169713          	slli	a4,a3,0x21
    80001c36:	9305                	srli	a4,a4,0x21
    80001c38:	03f7d513          	srli	a0,a5,0x3f
    80001c3c:	0007a593          	slti	a1,a5,0
    80001c40:	02e67263          	bgeu	a2,a4,80001c64 <__ieee754_exp+0x42>
    80001c44:	7ff00637          	lui	a2,0x7ff00
    80001c48:	0ac76563          	bltu	a4,a2,80001cf2 <__ieee754_exp+0xd0>
    80001c4c:	02c69713          	slli	a4,a3,0x2c
    80001c50:	9331                	srli	a4,a4,0x2c
    80001c52:	8f5d                	or	a4,a4,a5
    80001c54:	2701                	sext.w	a4,a4
    80001c56:	1e071563          	bnez	a4,80001e40 <__ieee754_exp+0x21e>
    80001c5a:	18058963          	beqz	a1,80001dec <__ieee754_exp+0x1ca>
    80001c5e:	00000793          	li	a5,0
    80001c62:	a269                	j	80001dec <__ieee754_exp+0x1ca>
    80001c64:	3fd636b7          	lui	a3,0x3fd63
    80001c68:	e4268693          	addi	a3,a3,-446 # 3fd62e42 <asinh-0x4029d1be>
    80001c6c:	18e6e363          	bltu	a3,a4,80001df2 <__ieee754_exp+0x1d0>
    80001c70:	3df006b7          	lui	a3,0x3df00
    80001c74:	1ad76363          	bltu	a4,a3,80001e1a <__ieee754_exp+0x1f8>
    80001c78:	00092717          	auipc	a4,0x92
    80001c7c:	f1873687          	fld	fa3,-232(a4) # 80093b90 <_erodata+0x1e>
    80001c80:	f20787d3          	fmv.d.x	fa5,a5
    80001c84:	00092717          	auipc	a4,0x92
    80001c88:	29c73707          	fld	fa4,668(a4) # 80093f20 <_erodata+0x3ae>
    80001c8c:	00092717          	auipc	a4,0x92
    80001c90:	29c73007          	fld	ft0,668(a4) # 80093f28 <_erodata+0x3b6>
    80001c94:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80001c98:	00092717          	auipc	a4,0x92
    80001c9c:	29873507          	fld	fa0,664(a4) # 80093f30 <_erodata+0x3be>
    80001ca0:	00092717          	auipc	a4,0x92
    80001ca4:	29873587          	fld	fa1,664(a4) # 80093f38 <_erodata+0x3c6>
    80001ca8:	00092717          	auipc	a4,0x92
    80001cac:	29873607          	fld	fa2,664(a4) # 80093f40 <_erodata+0x3ce>
    80001cb0:	02e7f743          	fmadd.d	fa4,fa5,fa4,ft0
    80001cb4:	52e7f743          	fmadd.d	fa4,fa5,fa4,fa0
    80001cb8:	5ae7f743          	fmadd.d	fa4,fa5,fa4,fa1
    80001cbc:	62e7f743          	fmadd.d	fa4,fa5,fa4,fa2
    80001cc0:	f2078653          	fmv.d.x	fa2,a5
    80001cc4:	62e7f7cb          	fnmsub.d	fa5,fa5,fa4,fa2
    80001cc8:	12f67753          	fmul.d	fa4,fa2,fa5
    80001ccc:	00092717          	auipc	a4,0x92
    80001cd0:	08473607          	fld	fa2,132(a4) # 80093d50 <_erodata+0x1de>
    80001cd4:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
    80001cd8:	1af777d3          	fdiv.d	fa5,fa4,fa5
    80001cdc:	f2078753          	fmv.d.x	fa4,a5
    80001ce0:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80001ce4:	0af6f7d3          	fsub.d	fa5,fa3,fa5
    80001ce8:	e20787d3          	fmv.x.d	a5,fa5
    80001cec:	f2078553          	fmv.d.x	fa0,a5
    80001cf0:	8082                	ret
    80001cf2:	00092717          	auipc	a4,0x92
    80001cf6:	12673787          	fld	fa5,294(a4) # 80093e18 <_erodata+0x2a6>
    80001cfa:	a2a79753          	flt.d	a4,fa5,fa0
    80001cfe:	14071863          	bnez	a4,80001e4e <__ieee754_exp+0x22c>
    80001d02:	00092717          	auipc	a4,0x92
    80001d06:	18e73787          	fld	fa5,398(a4) # 80093e90 <_erodata+0x31e>
    80001d0a:	a2f51753          	flt.d	a4,fa0,fa5
    80001d0e:	16071a63          	bnez	a4,80001e82 <__ieee754_exp+0x260>
    80001d12:	00063717          	auipc	a4,0x63
    80001d16:	ea670713          	addi	a4,a4,-346 # 80064bb8 <ln2HI>
    80001d1a:	058e                	slli	a1,a1,0x3
    80001d1c:	95ba                	add	a1,a1,a4
    80001d1e:	f20786d3          	fmv.d.x	fa3,a5
    80001d22:	3198                	fld	fa4,32(a1)
    80001d24:	00092717          	auipc	a4,0x92
    80001d28:	10c73787          	fld	fa5,268(a4) # 80093e30 <_erodata+0x2be>
    80001d2c:	00092717          	auipc	a4,0x92
    80001d30:	0fc73587          	fld	fa1,252(a4) # 80093e28 <_erodata+0x2b6>
    80001d34:	72f6f7c3          	fmadd.d	fa5,fa3,fa5,fa4
    80001d38:	00092717          	auipc	a4,0x92
    80001d3c:	0d873607          	fld	fa2,216(a4) # 80093e10 <_erodata+0x29e>
    80001d40:	c2079753          	fcvt.w.d	a4,fa5,rtz
    80001d44:	d2070753          	fcvt.d.w	fa4,a4
    80001d48:	2701                	sext.w	a4,a4
    80001d4a:	6ab775cb          	fnmsub.d	fa1,fa4,fa1,fa3
    80001d4e:	12c776d3          	fmul.d	fa3,fa4,fa2
    80001d52:	0ad5f7d3          	fsub.d	fa5,fa1,fa3
    80001d56:	00092697          	auipc	a3,0x92
    80001d5a:	1ca6b707          	fld	fa4,458(a3) # 80093f20 <_erodata+0x3ae>
    80001d5e:	00092697          	auipc	a3,0x92
    80001d62:	1d26b087          	fld	ft1,466(a3) # 80093f30 <_erodata+0x3be>
    80001d66:	00092697          	auipc	a3,0x92
    80001d6a:	1d26b007          	fld	ft0,466(a3) # 80093f38 <_erodata+0x3c6>
    80001d6e:	00092697          	auipc	a3,0x92
    80001d72:	1d26b507          	fld	fa0,466(a3) # 80093f40 <_erodata+0x3ce>
    80001d76:	e20787d3          	fmv.x.d	a5,fa5
    80001d7a:	00092697          	auipc	a3,0x92
    80001d7e:	1ae6b787          	fld	fa5,430(a3) # 80093f28 <_erodata+0x3b6>
    80001d82:	f2078653          	fmv.d.x	fa2,a5
    80001d86:	12c67653          	fmul.d	fa2,fa2,fa2
    80001d8a:	7ae677c3          	fmadd.d	fa5,fa2,fa4,fa5
    80001d8e:	f2078753          	fmv.d.x	fa4,a5
    80001d92:	0ac7f7c3          	fmadd.d	fa5,fa5,fa2,ft1
    80001d96:	02c7f7c3          	fmadd.d	fa5,fa5,fa2,ft0
    80001d9a:	52c7f7c3          	fmadd.d	fa5,fa5,fa2,fa0
    80001d9e:	72c7f7cb          	fnmsub.d	fa5,fa5,fa2,fa4
    80001da2:	12f77753          	fmul.d	fa4,fa4,fa5
    80001da6:	c36d                	beqz	a4,80001e88 <__ieee754_exp+0x266>
    80001da8:	00092797          	auipc	a5,0x92
    80001dac:	fa87b607          	fld	fa2,-88(a5) # 80093d50 <_erodata+0x1de>
    80001db0:	0af677d3          	fsub.d	fa5,fa2,fa5
    80001db4:	00092797          	auipc	a5,0x92
    80001db8:	ddc7b607          	fld	fa2,-548(a5) # 80093b90 <_erodata+0x1e>
    80001dbc:	c0300613          	li	a2,-1021
    80001dc0:	1af77753          	fdiv.d	fa4,fa4,fa5
    80001dc4:	0ae6f6d3          	fsub.d	fa3,fa3,fa4
    80001dc8:	0ab6f6d3          	fsub.d	fa3,fa3,fa1
    80001dcc:	0ad677d3          	fsub.d	fa5,fa2,fa3
    80001dd0:	e20786d3          	fmv.x.d	a3,fa5
    80001dd4:	4206d793          	srai	a5,a3,0x20
    80001dd8:	06c74e63          	blt	a4,a2,80001e54 <__ieee754_exp+0x232>
    80001ddc:	0147171b          	slliw	a4,a4,0x14
    80001de0:	9f3d                	addw	a4,a4,a5
    80001de2:	57fd                	li	a5,-1
    80001de4:	9381                	srli	a5,a5,0x20
    80001de6:	1702                	slli	a4,a4,0x20
    80001de8:	8ff5                	and	a5,a5,a3
    80001dea:	8fd9                	or	a5,a5,a4
    80001dec:	f2078553          	fmv.d.x	fa0,a5
    80001df0:	8082                	ret
    80001df2:	3ff0a6b7          	lui	a3,0x3ff0a
    80001df6:	2b168693          	addi	a3,a3,689 # 3ff0a2b1 <asinh-0x400f5d4f>
    80001dfa:	f0e6ece3          	bltu	a3,a4,80001d12 <__ieee754_exp+0xf0>
    80001dfe:	00063717          	auipc	a4,0x63
    80001e02:	dba70713          	addi	a4,a4,-582 # 80064bb8 <ln2HI>
    80001e06:	058e                	slli	a1,a1,0x3
    80001e08:	95ba                	add	a1,a1,a4
    80001e0a:	2194                	fld	fa3,0(a1)
    80001e0c:	4705                	li	a4,1
    80001e0e:	9f09                	subw	a4,a4,a0
    80001e10:	0ad575d3          	fsub.d	fa1,fa0,fa3
    80001e14:	9f09                	subw	a4,a4,a0
    80001e16:	2994                	fld	fa3,16(a1)
    80001e18:	bf2d                	j	80001d52 <__ieee754_exp+0x130>
    80001e1a:	00092717          	auipc	a4,0x92
    80001e1e:	d6673787          	fld	fa5,-666(a4) # 80093b80 <_erodata+0xe>
    80001e22:	02f577d3          	fadd.d	fa5,fa0,fa5
    80001e26:	00092717          	auipc	a4,0x92
    80001e2a:	d6a73687          	fld	fa3,-662(a4) # 80093b90 <_erodata+0x1e>
    80001e2e:	a2f69753          	flt.d	a4,fa3,fa5
    80001e32:	e40707e3          	beqz	a4,80001c80 <__ieee754_exp+0x5e>
    80001e36:	02d577d3          	fadd.d	fa5,fa0,fa3
    80001e3a:	e20787d3          	fmv.x.d	a5,fa5
    80001e3e:	b77d                	j	80001dec <__ieee754_exp+0x1ca>
    80001e40:	02a577d3          	fadd.d	fa5,fa0,fa0
    80001e44:	e20787d3          	fmv.x.d	a5,fa5
    80001e48:	f2078553          	fmv.d.x	fa0,a5
    80001e4c:	8082                	ret
    80001e4e:	4501                	li	a0,0
    80001e50:	6470106f          	j	80003c96 <__math_oflow>
    80001e54:	3e87071b          	addiw	a4,a4,1000
    80001e58:	0147171b          	slliw	a4,a4,0x14
    80001e5c:	9f3d                	addw	a4,a4,a5
    80001e5e:	57fd                	li	a5,-1
    80001e60:	9381                	srli	a5,a5,0x20
    80001e62:	8ff5                	and	a5,a5,a3
    80001e64:	1702                	slli	a4,a4,0x20
    80001e66:	8f5d                	or	a4,a4,a5
    80001e68:	f2070753          	fmv.d.x	fa4,a4
    80001e6c:	00092797          	auipc	a5,0x92
    80001e70:	0dc7b787          	fld	fa5,220(a5) # 80093f48 <_erodata+0x3d6>
    80001e74:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    80001e78:	e20787d3          	fmv.x.d	a5,fa5
    80001e7c:	f2078553          	fmv.d.x	fa0,a5
    80001e80:	8082                	ret
    80001e82:	4501                	li	a0,0
    80001e84:	5ff0106f          	j	80003c82 <__math_uflow>
    80001e88:	00092717          	auipc	a4,0x92
    80001e8c:	d0873687          	fld	fa3,-760(a4) # 80093b90 <_erodata+0x1e>
    80001e90:	bd35                	j	80001ccc <__ieee754_exp+0xaa>

0000000080001e92 <__ieee754_fmod>:
__ieee754_fmod():
    80001e92:	e2058653          	fmv.x.d	a2,fa1
    80001e96:	800007b7          	lui	a5,0x80000
    80001e9a:	fff7c793          	not	a5,a5
    80001e9e:	42065813          	srai	a6,a2,0x20
    80001ea2:	0006069b          	sext.w	a3,a2
    80001ea6:	00f875b3          	and	a1,a6,a5
    80001eaa:	00d5e533          	or	a0,a1,a3
    80001eae:	e2050753          	fmv.x.d	a4,fa0
    80001eb2:	8e2e                	mv	t3,a1
    80001eb4:	8f36                	mv	t5,a3
    80001eb6:	c525                	beqz	a0,80001f1e <__ieee754_fmod+0x8c>
    80001eb8:	42075513          	srai	a0,a4,0x20
    80001ebc:	00f57333          	and	t1,a0,a5
    80001ec0:	7ff00eb7          	lui	t4,0x7ff00
    80001ec4:	05d35d63          	bge	t1,t4,80001f1e <__ieee754_fmod+0x8c>
    80001ec8:	40d008bb          	negw	a7,a3
    80001ecc:	01e8e8b3          	or	a7,a7,t5
    80001ed0:	01f8d89b          	srliw	a7,a7,0x1f
    80001ed4:	0115e5b3          	or	a1,a1,a7
    80001ed8:	2581                	sext.w	a1,a1
    80001eda:	04bee263          	bltu	t4,a1,80001f1e <__ieee754_fmod+0x8c>
    80001ede:	80000f37          	lui	t5,0x80000
    80001ee2:	0007079b          	sext.w	a5,a4
    80001ee6:	01e57f33          	and	t5,a0,t5
    80001eea:	006e4863          	blt	t3,t1,80001efa <__ieee754_fmod+0x68>
    80001eee:	05c34263          	blt	t1,t3,80001f32 <__ieee754_fmod+0xa0>
    80001ef2:	04d7e063          	bltu	a5,a3,80001f32 <__ieee754_fmod+0xa0>
    80001ef6:	24d78b63          	beq	a5,a3,8000214c <__ieee754_fmod+0x2ba>
    80001efa:	7ff00737          	lui	a4,0x7ff00
    80001efe:	8f69                	and	a4,a4,a0
    80001f00:	ef05                	bnez	a4,80001f38 <__ieee754_fmod+0xa6>
    80001f02:	20031963          	bnez	t1,80002114 <__ieee754_fmod+0x282>
    80001f06:	0007871b          	sext.w	a4,a5
    80001f0a:	bed00593          	li	a1,-1043
    80001f0e:	02e05963          	blez	a4,80001f40 <__ieee754_fmod+0xae>
    80001f12:	0017171b          	slliw	a4,a4,0x1
    80001f16:	35fd                	addiw	a1,a1,-1
    80001f18:	fee04de3          	bgtz	a4,80001f12 <__ieee754_fmod+0x80>
    80001f1c:	a015                	j	80001f40 <__ieee754_fmod+0xae>
    80001f1e:	f20707d3          	fmv.d.x	fa5,a4
    80001f22:	f2060753          	fmv.d.x	fa4,a2
    80001f26:	12e7f5d3          	fmul.d	fa1,fa5,fa4
    80001f2a:	1ab5f7d3          	fdiv.d	fa5,fa1,fa1
    80001f2e:	e2078753          	fmv.x.d	a4,fa5
    80001f32:	f2070553          	fmv.d.x	fa0,a4
    80001f36:	8082                	ret
    80001f38:	4143559b          	sraiw	a1,t1,0x14
    80001f3c:	c015859b          	addiw	a1,a1,-1023
    80001f40:	7ff00737          	lui	a4,0x7ff00
    80001f44:	00e87733          	and	a4,a6,a4
    80001f48:	ef19                	bnez	a4,80001f66 <__ieee754_fmod+0xd4>
    80001f4a:	1a0e1963          	bnez	t3,800020fc <__ieee754_fmod+0x26a>
    80001f4e:	0006871b          	sext.w	a4,a3
    80001f52:	bed00f93          	li	t6,-1043
    80001f56:	00d05c63          	blez	a3,80001f6e <__ieee754_fmod+0xdc>
    80001f5a:	0017171b          	slliw	a4,a4,0x1
    80001f5e:	3ffd                	addiw	t6,t6,-1
    80001f60:	fee04de3          	bgtz	a4,80001f5a <__ieee754_fmod+0xc8>
    80001f64:	a029                	j	80001f6e <__ieee754_fmod+0xdc>
    80001f66:	414e5f9b          	sraiw	t6,t3,0x14
    80001f6a:	c01f8f9b          	addiw	t6,t6,-1023
    80001f6e:	c0200713          	li	a4,-1022
    80001f72:	12e5cd63          	blt	a1,a4,800020ac <__ieee754_fmod+0x21a>
    80001f76:	02c51713          	slli	a4,a0,0x2c
    80001f7a:	9331                	srli	a4,a4,0x2c
    80001f7c:	00100637          	lui	a2,0x100
    80001f80:	8f51                	or	a4,a4,a2
    80001f82:	c0200613          	li	a2,-1022
    80001f86:	0ecfce63          	blt	t6,a2,80002082 <__ieee754_fmod+0x1f0>
    80001f8a:	1832                	slli	a6,a6,0x2c
    80001f8c:	00100637          	lui	a2,0x100
    80001f90:	02c85813          	srli	a6,a6,0x2c
    80001f94:	00c86833          	or	a6,a6,a2
    80001f98:	40d7863b          	subw	a2,a5,a3
    80001f9c:	41f585bb          	subw	a1,a1,t6
    80001fa0:	c9a1                	beqz	a1,80001ff0 <__ieee754_fmod+0x15e>
    80001fa2:	2581                	sext.w	a1,a1
    80001fa4:	a801                	j	80001fb4 <__ieee754_fmod+0x122>
    80001fa6:	c3f1                	beqz	a5,8000206a <__ieee754_fmod+0x1d8>
    80001fa8:	35fd                	addiw	a1,a1,-1
    80001faa:	0068873b          	addw	a4,a7,t1
    80001fae:	0015179b          	slliw	a5,a0,0x1
    80001fb2:	cd8d                	beqz	a1,80001fec <__ieee754_fmod+0x15a>
    80001fb4:	40d7853b          	subw	a0,a5,a3
    80001fb8:	4107063b          	subw	a2,a4,a6
    80001fbc:	01f5531b          	srliw	t1,a0,0x1f
    80001fc0:	01f7de9b          	srliw	t4,a5,0x1f
    80001fc4:	0017171b          	slliw	a4,a4,0x1
    80001fc8:	00179e1b          	slliw	t3,a5,0x1
    80001fcc:	00d7f363          	bgeu	a5,a3,80001fd2 <__ieee754_fmod+0x140>
    80001fd0:	367d                	addiw	a2,a2,-1
    80001fd2:	00a667b3          	or	a5,a2,a0
    80001fd6:	2781                	sext.w	a5,a5
    80001fd8:	0016189b          	slliw	a7,a2,0x1
    80001fdc:	fc0655e3          	bgez	a2,80001fa6 <__ieee754_fmod+0x114>
    80001fe0:	35fd                	addiw	a1,a1,-1
    80001fe2:	01d7073b          	addw	a4,a4,t4
    80001fe6:	000e079b          	sext.w	a5,t3
    80001fea:	f5e9                	bnez	a1,80001fb4 <__ieee754_fmod+0x122>
    80001fec:	40d7863b          	subw	a2,a5,a3
    80001ff0:	410705bb          	subw	a1,a4,a6
    80001ff4:	00d7f363          	bgeu	a5,a3,80001ffa <__ieee754_fmod+0x168>
    80001ff8:	35fd                	addiw	a1,a1,-1
    80001ffa:	0005c463          	bltz	a1,80002002 <__ieee754_fmod+0x170>
    80001ffe:	87b2                	mv	a5,a2
