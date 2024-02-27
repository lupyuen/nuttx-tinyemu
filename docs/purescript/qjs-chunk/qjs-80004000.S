    80003000:	60e2                	ld	ra,24(sp)
    80003002:	6442                	ld	s0,16(sp)
    80003004:	2422                	fld	fs0,8(sp)
    80003006:	2482                	fld	fs1,0(sp)
    80003008:	02a57553          	fadd.d	fa0,fa0,fa0
    8000300c:	6105                	addi	sp,sp,32
    8000300e:	8082                	ret
    80003010:	8fba0737          	lui	a4,0x8fba0
    80003014:	0007869b          	sext.w	a3,a5
    80003018:	87d70713          	addi	a4,a4,-1923 # ffffffff8fb9f87d <_ebss+0xffffffff0fa9e717>
    8000301c:	fcd764e3          	bltu	a4,a3,80002fe4 <__ieee754_sinh+0xba>
    80003020:	f2078553          	fmv.d.x	fa0,a5
    80003024:	90ffd0ef          	jal	ra,80000932 <fabs>
    80003028:	00091797          	auipc	a5,0x91
    8000302c:	dd87b787          	fld	fa5,-552(a5) # 80093e00 <_erodata+0x28e>
    80003030:	12f57553          	fmul.d	fa0,fa0,fa5
    80003034:	beffe0ef          	jal	ra,80001c22 <__ieee754_exp>
    80003038:	12a47453          	fmul.d	fs0,fs0,fa0
    8000303c:	12a47553          	fmul.d	fa0,fs0,fa0
    80003040:	b7b5                	j	80002fac <__ieee754_sinh+0x82>
    80003042:	f2078553          	fmv.d.x	fa0,a5
    80003046:	8edfd0ef          	jal	ra,80000932 <fabs>
    8000304a:	db2fd0ef          	jal	ra,800005fc <expm1>
    8000304e:	3ff007b7          	lui	a5,0x3ff00
    80003052:	02f44d63          	blt	s0,a5,8000308c <__ieee754_sinh+0x162>
    80003056:	00091797          	auipc	a5,0x91
    8000305a:	b3a7b787          	fld	fa5,-1222(a5) # 80093b90 <_erodata+0x1e>
    8000305e:	02f577d3          	fadd.d	fa5,fa0,fa5
    80003062:	60e2                	ld	ra,24(sp)
    80003064:	6442                	ld	s0,16(sp)
    80003066:	2482                	fld	fs1,0(sp)
    80003068:	1af577d3          	fdiv.d	fa5,fa0,fa5
    8000306c:	02a7f553          	fadd.d	fa0,fa5,fa0
    80003070:	12857553          	fmul.d	fa0,fa0,fs0
    80003074:	2422                	fld	fs0,8(sp)
    80003076:	6105                	addi	sp,sp,32
    80003078:	8082                	ret
    8000307a:	f2078553          	fmv.d.x	fa0,a5
    8000307e:	8b5fd0ef          	jal	ra,80000932 <fabs>
    80003082:	ba1fe0ef          	jal	ra,80001c22 <__ieee754_exp>
    80003086:	12857553          	fmul.d	fa0,fa0,fs0
    8000308a:	b70d                	j	80002fac <__ieee754_sinh+0x82>
    8000308c:	00091797          	auipc	a5,0x91
    80003090:	b047b487          	fld	fs1,-1276(a5) # 80093b90 <_erodata+0x1e>
    80003094:	bdf5                	j	80002f90 <__ieee754_sinh+0x66>

0000000080003096 <__ieee754_sqrt>:
__ieee754_sqrt():
    80003096:	5a057553          	fsqrt.d	fa0,fa0
    8000309a:	8082                	ret

000000008000309c <__kernel_cos>:
__kernel_cos():
    8000309c:	e20507d3          	fmv.x.d	a5,fa0
    800030a0:	3e4006b7          	lui	a3,0x3e400
    800030a4:	00179713          	slli	a4,a5,0x1
    800030a8:	9305                	srli	a4,a4,0x21
    800030aa:	08d75063          	bge	a4,a3,8000312a <__kernel_cos+0x8e>
    800030ae:	c2051753          	fcvt.w.d	a4,fa0,rtz
    800030b2:	2701                	sext.w	a4,a4
    800030b4:	12070363          	beqz	a4,800031da <__kernel_cos+0x13e>
    800030b8:	12a57653          	fmul.d	fa2,fa0,fa0
    800030bc:	00091717          	auipc	a4,0x91
    800030c0:	fdc73687          	fld	fa3,-36(a4) # 80094098 <_erodata+0x526>
    800030c4:	00091717          	auipc	a4,0x91
    800030c8:	fdc73707          	fld	fa4,-36(a4) # 800940a0 <_erodata+0x52e>
    800030cc:	00091717          	auipc	a4,0x91
    800030d0:	fdc73087          	fld	ft1,-36(a4) # 800940a8 <_erodata+0x536>
    800030d4:	00091717          	auipc	a4,0x91
    800030d8:	fdc73007          	fld	ft0,-36(a4) # 800940b0 <_erodata+0x53e>
    800030dc:	00091717          	auipc	a4,0x91
    800030e0:	fdc73507          	fld	fa0,-36(a4) # 800940b8 <_erodata+0x546>
    800030e4:	00091717          	auipc	a4,0x91
    800030e8:	fdc73787          	fld	fa5,-36(a4) # 800940c0 <_erodata+0x54e>
    800030ec:	72d67743          	fmadd.d	fa4,fa2,fa3,fa4
    800030f0:	0ae67743          	fmadd.d	fa4,fa2,fa4,ft1
    800030f4:	02e67743          	fmadd.d	fa4,fa2,fa4,ft0
    800030f8:	52e67743          	fmadd.d	fa4,fa2,fa4,fa0
    800030fc:	7ae677c3          	fmadd.d	fa5,fa2,fa4,fa5
    80003100:	12f677d3          	fmul.d	fa5,fa2,fa5
    80003104:	f2078753          	fmv.d.x	fa4,a5
    80003108:	00091797          	auipc	a5,0x91
    8000310c:	a887b507          	fld	fa0,-1400(a5) # 80093b90 <_erodata+0x1e>
    80003110:	12b775d3          	fmul.d	fa1,fa4,fa1
    80003114:	00091797          	auipc	a5,0x91
    80003118:	cec7b707          	fld	fa4,-788(a5) # 80093e00 <_erodata+0x28e>
    8000311c:	5af677c7          	fmsub.d	fa5,fa2,fa5,fa1
    80003120:	7ae677c7          	fmsub.d	fa5,fa2,fa4,fa5
    80003124:	0af57553          	fsub.d	fa0,fa0,fa5
    80003128:	8082                	ret
    8000312a:	12a57653          	fmul.d	fa2,fa0,fa0
    8000312e:	00091697          	auipc	a3,0x91
    80003132:	f6a6b707          	fld	fa4,-150(a3) # 80094098 <_erodata+0x526>
    80003136:	00091697          	auipc	a3,0x91
    8000313a:	f6a6b787          	fld	fa5,-150(a3) # 800940a0 <_erodata+0x52e>
    8000313e:	00091697          	auipc	a3,0x91
    80003142:	f6a6b087          	fld	ft1,-150(a3) # 800940a8 <_erodata+0x536>
    80003146:	00091697          	auipc	a3,0x91
    8000314a:	f6a6b007          	fld	ft0,-150(a3) # 800940b0 <_erodata+0x53e>
    8000314e:	00091697          	auipc	a3,0x91
    80003152:	f6a6b687          	fld	fa3,-150(a3) # 800940b8 <_erodata+0x546>
    80003156:	00091697          	auipc	a3,0x91
    8000315a:	f6a6b507          	fld	fa0,-150(a3) # 800940c0 <_erodata+0x54e>
    8000315e:	7ae677c3          	fmadd.d	fa5,fa2,fa4,fa5
    80003162:	3fd336b7          	lui	a3,0x3fd33
    80003166:	33268693          	addi	a3,a3,818 # 3fd33332 <asinh-0x402cccce>
    8000316a:	0ac7f7c3          	fmadd.d	fa5,fa5,fa2,ft1
    8000316e:	02c7f7c3          	fmadd.d	fa5,fa5,fa2,ft0
    80003172:	6ac7f7c3          	fmadd.d	fa5,fa5,fa2,fa3
    80003176:	52c7f7c3          	fmadd.d	fa5,fa5,fa2,fa0
    8000317a:	12c7f7d3          	fmul.d	fa5,fa5,fa2
    8000317e:	f8e6d3e3          	bge	a3,a4,80003104 <__kernel_cos+0x68>
    80003182:	3fe906b7          	lui	a3,0x3fe90
    80003186:	04e6c163          	blt	a3,a4,800031c8 <__kernel_cos+0x12c>
    8000318a:	ffe006b7          	lui	a3,0xffe00
    8000318e:	9f35                	addw	a4,a4,a3
    80003190:	1702                	slli	a4,a4,0x20
    80003192:	f2070753          	fmv.d.x	fa4,a4
    80003196:	00091697          	auipc	a3,0x91
    8000319a:	9fa6b507          	fld	fa0,-1542(a3) # 80093b90 <_erodata+0x1e>
    8000319e:	f20706d3          	fmv.d.x	fa3,a4
    800031a2:	0ae57553          	fsub.d	fa0,fa0,fa4
    800031a6:	f2078753          	fmv.d.x	fa4,a5
    800031aa:	12b775d3          	fmul.d	fa1,fa4,fa1
    800031ae:	00091797          	auipc	a5,0x91
    800031b2:	c527b707          	fld	fa4,-942(a5) # 80093e00 <_erodata+0x28e>
    800031b6:	6ae67747          	fmsub.d	fa4,fa2,fa4,fa3
    800031ba:	5af67647          	fmsub.d	fa2,fa2,fa5,fa1
    800031be:	0ac77753          	fsub.d	fa4,fa4,fa2
    800031c2:	0ae57553          	fsub.d	fa0,fa0,fa4
    800031c6:	8082                	ret
    800031c8:	00091717          	auipc	a4,0x91
    800031cc:	ec073507          	fld	fa0,-320(a4) # 80094088 <_erodata+0x516>
    800031d0:	00091717          	auipc	a4,0x91
    800031d4:	ec073687          	fld	fa3,-320(a4) # 80094090 <_erodata+0x51e>
    800031d8:	b7f9                	j	800031a6 <__kernel_cos+0x10a>
    800031da:	00091797          	auipc	a5,0x91
    800031de:	9b67b507          	fld	fa0,-1610(a5) # 80093b90 <_erodata+0x1e>
    800031e2:	8082                	ret

00000000800031e4 <__kernel_rem_pio2>:
__kernel_rem_pio2():
    800031e4:	d0010113          	addi	sp,sp,-768
    800031e8:	2d313c23          	sd	s3,728(sp)
    800031ec:	e43a                	sd	a4,8(sp)
    800031ee:	89b6                	mv	s3,a3
    800031f0:	00271693          	slli	a3,a4,0x2
    800031f4:	00062717          	auipc	a4,0x62
    800031f8:	b8c70713          	addi	a4,a4,-1140 # 80064d80 <init_jk>
    800031fc:	9736                	add	a4,a4,a3
    800031fe:	2d413823          	sd	s4,720(sp)
    80003202:	2b713c23          	sd	s7,696(sp)
    80003206:	2b913423          	sd	s9,680(sp)
    8000320a:	2ba13023          	sd	s10,672(sp)
    8000320e:	29b13c23          	sd	s11,664(sp)
    80003212:	fff9889b          	addiw	a7,s3,-1
    80003216:	2e113c23          	sd	ra,760(sp)
    8000321a:	2e813823          	sd	s0,752(sp)
    8000321e:	2e913423          	sd	s1,744(sp)
    80003222:	2f213023          	sd	s2,736(sp)
    80003226:	2d513423          	sd	s5,712(sp)
    8000322a:	2d613023          	sd	s6,704(sp)
    8000322e:	2b813823          	sd	s8,688(sp)
    80003232:	28813427          	fsd	fs0,648(sp)
    80003236:	28913027          	fsd	fs1,640(sp)
    8000323a:	27213c27          	fsd	fs2,632(sp)
    8000323e:	27313827          	fsd	fs3,624(sp)
    80003242:	27413427          	fsd	fs4,616(sp)
    80003246:	27513027          	fsd	fs5,608(sp)
    8000324a:	25613c27          	fsd	fs6,600(sp)
    8000324e:	56b1                	li	a3,-20
    80003250:	e02e                	sd	a1,0(sp)
    80003252:	00072c83          	lw	s9,0(a4)
    80003256:	8bb2                	mv	s7,a2
    80003258:	8daa                	mv	s11,a0
    8000325a:	8a3e                	mv	s4,a5
    8000325c:	00088d1b          	sext.w	s10,a7
    80003260:	60d64463          	blt	a2,a3,80003868 <__kernel_rem_pio2+0x684>
    80003264:	47e1                	li	a5,24
    80003266:	ffd6049b          	addiw	s1,a2,-3
    8000326a:	02f4c4bb          	divw	s1,s1,a5
    8000326e:	0014879b          	addiw	a5,s1,1
    80003272:	0027971b          	slliw	a4,a5,0x2
    80003276:	9f99                	subw	a5,a5,a4
    80003278:	0037979b          	slliw	a5,a5,0x3
    8000327c:	00fb8b3b          	addw	s6,s7,a5
    80003280:	019886bb          	addw	a3,a7,s9
    80003284:	411485bb          	subw	a1,s1,a7
    80003288:	c85a                	sw	s6,16(sp)
    8000328a:	8736                	mv	a4,a3
    8000328c:	0005879b          	sext.w	a5,a1
    80003290:	0206c663          	bltz	a3,800032bc <__kernel_rem_pio2+0xd8>
    80003294:	0017061b          	addiw	a2,a4,1
    80003298:	00279693          	slli	a3,a5,0x2
    8000329c:	1898                	addi	a4,sp,112
    8000329e:	96d2                	add	a3,a3,s4
    800032a0:	9e2d                	addw	a2,a2,a1
    800032a2:	f20007d3          	fmv.d.x	fa5,zero
    800032a6:	0007c563          	bltz	a5,800032b0 <__kernel_rem_pio2+0xcc>
    800032aa:	428c                	lw	a1,0(a3)
    800032ac:	d20587d3          	fcvt.d.w	fa5,a1
    800032b0:	2785                	addiw	a5,a5,1
    800032b2:	a31c                	fsd	fa5,0(a4)
    800032b4:	0721                	addi	a4,a4,8
    800032b6:	0691                	addi	a3,a3,4
    800032b8:	fec795e3          	bne	a5,a2,800032a2 <__kernel_rem_pio2+0xbe>
    800032bc:	040cc563          	bltz	s9,80003306 <__kernel_rem_pio2+0x122>
    800032c0:	fff9869b          	addiw	a3,s3,-1
    800032c4:	02069793          	slli	a5,a3,0x20
    800032c8:	01d7d693          	srli	a3,a5,0x1d
    800032cc:	008d8793          	addi	a5,s11,8
    800032d0:	1b0c                	addi	a1,sp,432
    800032d2:	866a                	mv	a2,s10
    800032d4:	013c853b          	addw	a0,s9,s3
    800032d8:	96be                	add	a3,a3,a5
    800032da:	f20007d3          	fmv.d.x	fa5,zero
    800032de:	000d4f63          	bltz	s10,800032fc <__kernel_rem_pio2+0x118>
    800032e2:	189c                	addi	a5,sp,112
    800032e4:	00361713          	slli	a4,a2,0x3
    800032e8:	973e                	add	a4,a4,a5
    800032ea:	87ee                	mv	a5,s11
    800032ec:	2394                	fld	fa3,0(a5)
    800032ee:	2318                	fld	fa4,0(a4)
    800032f0:	07a1                	addi	a5,a5,8
    800032f2:	1761                	addi	a4,a4,-8
    800032f4:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
    800032f8:	fed79ae3          	bne	a5,a3,800032ec <__kernel_rem_pio2+0x108>
    800032fc:	a19c                	fsd	fa5,0(a1)
    800032fe:	2605                	addiw	a2,a2,1
    80003300:	05a1                	addi	a1,a1,8
    80003302:	fca61ce3          	bne	a2,a0,800032da <__kernel_rem_pio2+0xf6>
    80003306:	02089793          	slli	a5,a7,0x20
    8000330a:	002c9913          	slli	s2,s9,0x2
    8000330e:	01d7d893          	srli	a7,a5,0x1d
    80003312:	1961                	addi	s2,s2,-8
    80003314:	101c                	addi	a5,sp,32
    80003316:	993e                	add	s2,s2,a5
    80003318:	fffc841b          	addiw	s0,s9,-1
    8000331c:	00091797          	auipc	a5,0x91
    80003320:	dbc7b487          	fld	fs1,-580(a5) # 800940d8 <_erodata+0x566>
    80003324:	00091797          	auipc	a5,0x91
    80003328:	dbc7b407          	fld	fs0,-580(a5) # 800940e0 <_erodata+0x56e>
    8000332c:	00091797          	auipc	a5,0x91
    80003330:	8647b907          	fld	fs2,-1948(a5) # 80093b90 <_erodata+0x1e>
    80003334:	00091797          	auipc	a5,0x91
    80003338:	d9c7ba87          	fld	fs5,-612(a5) # 800940d0 <_erodata+0x55e>
    8000333c:	00091797          	auipc	a5,0x91
    80003340:	d3c7ba07          	fld	fs4,-708(a5) # 80094078 <_erodata+0x506>
    80003344:	00091797          	auipc	a5,0x91
    80003348:	abc7b987          	fld	fs3,-1348(a5) # 80093e00 <_erodata+0x28e>
    8000334c:	040a                	slli	s0,s0,0x2
    8000334e:	0c9c                	addi	a5,sp,592
    80003350:	011d8c33          	add	s8,s11,a7
    80003354:	8ae6                	mv	s5,s9
    80003356:	943e                	add	s0,s0,a5
    80003358:	003a9793          	slli	a5,s5,0x3
    8000335c:	0c98                	addi	a4,sp,592
    8000335e:	973e                	add	a4,a4,a5
    80003360:	f6073507          	fld	fa0,-160(a4)
    80003364:	05505263          	blez	s5,800033a8 <__kernel_rem_pio2+0x1c4>
    80003368:	fffa861b          	addiw	a2,s5,-1
    8000336c:	ff878713          	addi	a4,a5,-8
    80003370:	1b14                	addi	a3,sp,432
    80003372:	02061793          	slli	a5,a2,0x20
    80003376:	01e7d613          	srli	a2,a5,0x1e
    8000337a:	9736                	add	a4,a4,a3
    8000337c:	1054                	addi	a3,sp,36
    8000337e:	101c                	addi	a5,sp,32
    80003380:	9636                	add	a2,a2,a3
    80003382:	135577d3          	fmul.d	fa5,fa0,fs5
    80003386:	2314                	fld	fa3,0(a4)
    80003388:	0791                	addi	a5,a5,4
    8000338a:	1761                	addi	a4,a4,-8
    8000338c:	c20796d3          	fcvt.w.d	a3,fa5,rtz
    80003390:	d20687d3          	fcvt.d.w	fa5,a3
    80003394:	5347f74b          	fnmsub.d	fa4,fa5,fs4,fa0
    80003398:	02d7f553          	fadd.d	fa0,fa5,fa3
    8000339c:	c20716d3          	fcvt.w.d	a3,fa4,rtz
    800033a0:	fed7ae23          	sw	a3,-4(a5)
    800033a4:	fcc79fe3          	bne	a5,a2,80003382 <__kernel_rem_pio2+0x19e>
    800033a8:	855a                	mv	a0,s6
    800033aa:	195000ef          	jal	ra,80003d3e <scalbn>
    800033ae:	22a50b53          	fmv.d	fs6,fa0
    800033b2:	12957553          	fmul.d	fa0,fa0,fs1
    800033b6:	d82fd0ef          	jal	ra,80000938 <floor>
    800033ba:	b285754b          	fnmsub.d	fa0,fa0,fs0,fs6
    800033be:	c20516d3          	fcvt.w.d	a3,fa0,rtz
    800033c2:	d2068b53          	fcvt.d.w	fs6,a3
    800033c6:	0006859b          	sext.w	a1,a3
    800033ca:	0b657b53          	fsub.d	fs6,fa0,fs6
    800033ce:	0f605e63          	blez	s6,800034ca <__kernel_rem_pio2+0x2e6>
    800033d2:	fffa879b          	addiw	a5,s5,-1
    800033d6:	0c98                	addi	a4,sp,592
    800033d8:	078a                	slli	a5,a5,0x2
    800033da:	97ba                	add	a5,a5,a4
    800033dc:	dd07ab83          	lw	s7,-560(a5)
    800033e0:	4761                	li	a4,24
    800033e2:	4167073b          	subw	a4,a4,s6
    800033e6:	40ebd5bb          	sraw	a1,s7,a4
    800033ea:	00e5973b          	sllw	a4,a1,a4
    800033ee:	40eb873b          	subw	a4,s7,a4
    800033f2:	4bdd                	li	s7,23
    800033f4:	416b8bbb          	subw	s7,s7,s6
    800033f8:	dce7a823          	sw	a4,-560(a5)
    800033fc:	41775bbb          	sraw	s7,a4,s7
    80003400:	9db5                	addw	a1,a1,a3
    80003402:	0f704163          	bgtz	s7,800034e4 <__kernel_rem_pio2+0x300>
    80003406:	f20007d3          	fmv.d.x	fa5,zero
    8000340a:	a2fb27d3          	feq.d	a5,fs6,fa5
    8000340e:	1a078063          	beqz	a5,800035ae <__kernel_rem_pio2+0x3ca>
    80003412:	fffa831b          	addiw	t1,s5,-1
    80003416:	03934b63          	blt	t1,s9,8000344c <__kernel_rem_pio2+0x268>
    8000341a:	fffcc713          	not	a4,s9
    8000341e:	002a9613          	slli	a2,s5,0x2
    80003422:	0157073b          	addw	a4,a4,s5
    80003426:	0834                	addi	a3,sp,24
    80003428:	ffc60793          	addi	a5,a2,-4
    8000342c:	9636                	add	a2,a2,a3
    8000342e:	02071693          	slli	a3,a4,0x20
    80003432:	01e6d713          	srli	a4,a3,0x1e
    80003436:	1014                	addi	a3,sp,32
    80003438:	8e19                	sub	a2,a2,a4
    8000343a:	97b6                	add	a5,a5,a3
    8000343c:	4701                	li	a4,0
    8000343e:	4394                	lw	a3,0(a5)
    80003440:	17f1                	addi	a5,a5,-4
    80003442:	8f55                	or	a4,a4,a3
    80003444:	fec79de3          	bne	a5,a2,8000343e <__kernel_rem_pio2+0x25a>
    80003448:	30071e63          	bnez	a4,80003764 <__kernel_rem_pio2+0x580>
    8000344c:	dd042783          	lw	a5,-560(s0)
    80003450:	30079663          	bnez	a5,8000375c <__kernel_rem_pio2+0x578>
    80003454:	87ca                	mv	a5,s2
    80003456:	4705                	li	a4,1
    80003458:	4394                	lw	a3,0(a5)
    8000345a:	2705                	addiw	a4,a4,1
    8000345c:	17f1                	addi	a5,a5,-4
    8000345e:	deed                	beqz	a3,80003458 <__kernel_rem_pio2+0x274>
    80003460:	001a851b          	addiw	a0,s5,1
    80003464:	00ea883b          	addw	a6,s5,a4
    80003468:	00ad07bb          	addw	a5,s10,a0
    8000346c:	013a88b3          	add	a7,s5,s3
    80003470:	40f888b3          	sub	a7,a7,a5
    80003474:	00a48633          	add	a2,s1,a0
    80003478:	078e                	slli	a5,a5,0x3
    8000347a:	1898                	addi	a4,sp,112
    8000347c:	060a                	slli	a2,a2,0x2
    8000347e:	00351593          	slli	a1,a0,0x3
    80003482:	088e                	slli	a7,a7,0x3
    80003484:	00f706b3          	add	a3,a4,a5
    80003488:	1b1c                	addi	a5,sp,432
    8000348a:	9652                	add	a2,a2,s4
    8000348c:	95be                	add	a1,a1,a5
    8000348e:	18e1                	addi	a7,a7,-8
    80003490:	421c                	lw	a5,0(a2)
    80003492:	f20007d3          	fmv.d.x	fa5,zero
    80003496:	d2078753          	fcvt.d.w	fa4,a5
    8000349a:	a298                	fsd	fa4,0(a3)
    8000349c:	000d4e63          	bltz	s10,800034b8 <__kernel_rem_pio2+0x2d4>
    800034a0:	00d88733          	add	a4,a7,a3
    800034a4:	87ee                	mv	a5,s11
    800034a6:	a021                	j	800034ae <__kernel_rem_pio2+0x2ca>
    800034a8:	2318                	fld	fa4,0(a4)
    800034aa:	07a1                	addi	a5,a5,8
    800034ac:	1761                	addi	a4,a4,-8
    800034ae:	2394                	fld	fa3,0(a5)
    800034b0:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
    800034b4:	ff879ae3          	bne	a5,s8,800034a8 <__kernel_rem_pio2+0x2c4>
    800034b8:	a19c                	fsd	fa5,0(a1)
    800034ba:	2505                	addiw	a0,a0,1
    800034bc:	0611                	addi	a2,a2,4
    800034be:	06a1                	addi	a3,a3,8
    800034c0:	05a1                	addi	a1,a1,8
    800034c2:	fca857e3          	bge	a6,a0,80003490 <__kernel_rem_pio2+0x2ac>
    800034c6:	8ac2                	mv	s5,a6
    800034c8:	bd41                	j	80003358 <__kernel_rem_pio2+0x174>
    800034ca:	260b1c63          	bnez	s6,80003742 <__kernel_rem_pio2+0x55e>
    800034ce:	fffa879b          	addiw	a5,s5,-1
    800034d2:	078a                	slli	a5,a5,0x2
    800034d4:	0c98                	addi	a4,sp,592
    800034d6:	97ba                	add	a5,a5,a4
    800034d8:	dd07ab83          	lw	s7,-560(a5)
    800034dc:	417bdb9b          	sraiw	s7,s7,0x17
    800034e0:	f37053e3          	blez	s7,80003406 <__kernel_rem_pio2+0x222>
    800034e4:	2585                	addiw	a1,a1,1
    800034e6:	39505f63          	blez	s5,80003884 <__kernel_rem_pio2+0x6a0>
    800034ea:	5782                	lw	a5,32(sp)
    800034ec:	24079863          	bnez	a5,8000373c <__kernel_rem_pio2+0x558>
    800034f0:	4705                	li	a4,1
    800034f2:	06ea8563          	beq	s5,a4,8000355c <__kernel_rem_pio2+0x378>
    800034f6:	5792                	lw	a5,36(sp)
    800034f8:	1050                	addi	a2,sp,36
    800034fa:	0017069b          	addiw	a3,a4,1
    800034fe:	0611                	addi	a2,a2,4
    80003500:	eb89                	bnez	a5,80003512 <__kernel_rem_pio2+0x32e>
    80003502:	04da8d63          	beq	s5,a3,8000355c <__kernel_rem_pio2+0x378>
    80003506:	421c                	lw	a5,0(a2)
    80003508:	8736                	mv	a4,a3
    8000350a:	0017069b          	addiw	a3,a4,1
    8000350e:	0611                	addi	a2,a2,4
    80003510:	dbed                	beqz	a5,80003502 <__kernel_rem_pio2+0x31e>
    80003512:	070a                	slli	a4,a4,0x2
    80003514:	01000637          	lui	a2,0x1000
    80003518:	0c88                	addi	a0,sp,592
    8000351a:	972a                	add	a4,a4,a0
    8000351c:	40f607bb          	subw	a5,a2,a5
    80003520:	dcf72823          	sw	a5,-560(a4)
    80003524:	0356db63          	bge	a3,s5,8000355a <__kernel_rem_pio2+0x376>
    80003528:	fffa879b          	addiw	a5,s5,-1
    8000352c:	9f95                	subw	a5,a5,a3
    8000352e:	00269713          	slli	a4,a3,0x2
    80003532:	1782                	slli	a5,a5,0x20
    80003534:	953a                	add	a0,a0,a4
    80003536:	9381                	srli	a5,a5,0x20
    80003538:	97b6                	add	a5,a5,a3
    8000353a:	dd052683          	lw	a3,-560(a0)
    8000353e:	1008                	addi	a0,sp,32
    80003540:	078a                	slli	a5,a5,0x2
    80003542:	972a                	add	a4,a4,a0
    80003544:	1048                	addi	a0,sp,36
    80003546:	97aa                	add	a5,a5,a0
    80003548:	367d                	addiw	a2,a2,-1
    8000354a:	a011                	j	8000354e <__kernel_rem_pio2+0x36a>
    8000354c:	4314                	lw	a3,0(a4)
    8000354e:	40d606bb          	subw	a3,a2,a3
    80003552:	c314                	sw	a3,0(a4)
    80003554:	0711                	addi	a4,a4,4
    80003556:	fef71be3          	bne	a4,a5,8000354c <__kernel_rem_pio2+0x368>
    8000355a:	4785                	li	a5,1
    8000355c:	03605363          	blez	s6,80003582 <__kernel_rem_pio2+0x39e>
    80003560:	4705                	li	a4,1
    80003562:	2eeb0763          	beq	s6,a4,80003850 <__kernel_rem_pio2+0x66c>
    80003566:	4709                	li	a4,2
    80003568:	00eb1d63          	bne	s6,a4,80003582 <__kernel_rem_pio2+0x39e>
    8000356c:	fffa871b          	addiw	a4,s5,-1
    80003570:	0c94                	addi	a3,sp,592
    80003572:	070a                	slli	a4,a4,0x2
    80003574:	9736                	add	a4,a4,a3
    80003576:	dd072683          	lw	a3,-560(a4)
    8000357a:	16aa                	slli	a3,a3,0x2a
    8000357c:	92a9                	srli	a3,a3,0x2a
    8000357e:	dcd72823          	sw	a3,-560(a4)
    80003582:	4709                	li	a4,2
    80003584:	e8eb91e3          	bne	s7,a4,80003406 <__kernel_rem_pio2+0x222>
    80003588:	0b697b53          	fsub.d	fs6,fs2,fs6
    8000358c:	e6078de3          	beqz	a5,80003406 <__kernel_rem_pio2+0x222>
    80003590:	23290553          	fmv.d	fa0,fs2
    80003594:	855a                	mv	a0,s6
    80003596:	ec2e                	sd	a1,24(sp)
    80003598:	7a6000ef          	jal	ra,80003d3e <scalbn>
    8000359c:	0aab7b53          	fsub.d	fs6,fs6,fa0
    800035a0:	f20007d3          	fmv.d.x	fa5,zero
    800035a4:	65e2                	ld	a1,24(sp)
    800035a6:	a2fb27d3          	feq.d	a5,fs6,fa5
    800035aa:	e60794e3          	bnez	a5,80003412 <__kernel_rem_pio2+0x22e>
    800035ae:	4442                	lw	s0,16(sp)
    800035b0:	236b0553          	fmv.d	fa0,fs6
    800035b4:	ec5e                	sd	s7,24(sp)
    800035b6:	4080053b          	negw	a0,s0
    800035ba:	8bae                	mv	s7,a1
    800035bc:	782000ef          	jal	ra,80003d3e <scalbn>
    800035c0:	00091797          	auipc	a5,0x91
    800035c4:	ab87b687          	fld	fa3,-1352(a5) # 80094078 <_erodata+0x506>
    800035c8:	a2a687d3          	fle.d	a5,fa3,fa0
    800035cc:	68e2                	ld	a7,24(sp)
    800035ce:	30078263          	beqz	a5,800038d2 <__kernel_rem_pio2+0x6ee>
    800035d2:	00091797          	auipc	a5,0x91
    800035d6:	afe7b707          	fld	fa4,-1282(a5) # 800940d0 <_erodata+0x55e>
    800035da:	12e57753          	fmul.d	fa4,fa0,fa4
    800035de:	0c9c                	addi	a5,sp,592
    800035e0:	002a9713          	slli	a4,s5,0x2
    800035e4:	001a831b          	addiw	t1,s5,1
    800035e8:	973e                	add	a4,a4,a5
    800035ea:	0c94                	addi	a3,sp,592
    800035ec:	00231793          	slli	a5,t1,0x2
    800035f0:	97b6                	add	a5,a5,a3
    800035f2:	c20716d3          	fcvt.w.d	a3,fa4,rtz
    800035f6:	01840b1b          	addiw	s6,s0,24
    800035fa:	d20687d3          	fcvt.d.w	fa5,a3
    800035fe:	52d7f54b          	fnmsub.d	fa0,fa5,fa3,fa0
    80003602:	c2051653          	fcvt.w.d	a2,fa0,rtz
    80003606:	dcc72823          	sw	a2,-560(a4)
    8000360a:	dcd7a823          	sw	a3,-560(a5)
    8000360e:	23290553          	fmv.d	fa0,fs2
    80003612:	855a                	mv	a0,s6
    80003614:	ec1a                	sd	t1,24(sp)
    80003616:	e846                	sd	a7,16(sp)
    80003618:	726000ef          	jal	ra,80003d3e <scalbn>
    8000361c:	6362                	ld	t1,24(sp)
    8000361e:	68c2                	ld	a7,16(sp)
    80003620:	2e034a63          	bltz	t1,80003914 <__kernel_rem_pio2+0x730>
    80003624:	1b18                	addi	a4,sp,432
    80003626:	00331f13          	slli	t5,t1,0x3
    8000362a:	01e705b3          	add	a1,a4,t5
    8000362e:	00231793          	slli	a5,t1,0x2
    80003632:	1018                	addi	a4,sp,32
    80003634:	97ba                	add	a5,a5,a4
    80003636:	0870                	addi	a2,sp,28
    80003638:	872e                	mv	a4,a1
    8000363a:	00091697          	auipc	a3,0x91
    8000363e:	a966b707          	fld	fa4,-1386(a3) # 800940d0 <_erodata+0x55e>
    80003642:	4394                	lw	a3,0(a5)
    80003644:	1761                	addi	a4,a4,-8
    80003646:	17f1                	addi	a5,a5,-4
    80003648:	d20687d3          	fcvt.d.w	fa5,a3
    8000364c:	12a7f7d3          	fmul.d	fa5,fa5,fa0
    80003650:	12e57553          	fmul.d	fa0,fa0,fa4
    80003654:	a71c                	fsd	fa5,8(a4)
    80003656:	fec796e3          	bne	a5,a2,80003642 <__kernel_rem_pio2+0x45e>
    8000365a:	11010813          	addi	a6,sp,272
    8000365e:	851a                	mv	a0,t1
    80003660:	4e81                	li	t4,0
    80003662:	00091797          	auipc	a5,0x91
    80003666:	a667b607          	fld	fa2,-1434(a5) # 800940c8 <_erodata+0x556>
    8000366a:	5ffd                	li	t6,-1
    8000366c:	200cc163          	bltz	s9,8000386e <__kernel_rem_pio2+0x68a>
    80003670:	22c60753          	fmv.d	fa4,fa2
    80003674:	f20007d3          	fmv.d.x	fa5,zero
    80003678:	00061697          	auipc	a3,0x61
    8000367c:	71868693          	addi	a3,a3,1816 # 80064d90 <PIo2>
    80003680:	872e                	mv	a4,a1
    80003682:	4781                	li	a5,0
    80003684:	000e861b          	sext.w	a2,t4
    80003688:	a029                	j	80003692 <__kernel_rem_pio2+0x4ae>
    8000368a:	0721                	addi	a4,a4,8
    8000368c:	00f64a63          	blt	a2,a5,800036a0 <__kernel_rem_pio2+0x4bc>
    80003690:	2298                	fld	fa4,0(a3)
    80003692:	2314                	fld	fa3,0(a4)
    80003694:	2785                	addiw	a5,a5,1
    80003696:	06a1                	addi	a3,a3,8
    80003698:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
    8000369c:	fefcd7e3          	bge	s9,a5,8000368a <__kernel_rem_pio2+0x4a6>
    800036a0:	00f83027          	fsd	fa5,0(a6) # 40000 <asinh-0x7ffc0000>
    800036a4:	357d                	addiw	a0,a0,-1
    800036a6:	0e85                	addi	t4,t4,1
    800036a8:	0821                	addi	a6,a6,8
    800036aa:	15e1                	addi	a1,a1,-8
    800036ac:	fdf510e3          	bne	a0,t6,8000366c <__kernel_rem_pio2+0x488>
    800036b0:	6722                	ld	a4,8(sp)
    800036b2:	4789                	li	a5,2
    800036b4:	0ce7ce63          	blt	a5,a4,80003790 <__kernel_rem_pio2+0x5ac>
    800036b8:	1ce04863          	bgtz	a4,80003888 <__kernel_rem_pio2+0x6a4>
    800036bc:	e31d                	bnez	a4,800036e2 <__kernel_rem_pio2+0x4fe>
    800036be:	f20007d3          	fmv.d.x	fa5,zero
    800036c2:	0a1c                	addi	a5,sp,272
    800036c4:	9f3e                	add	t5,t5,a5
    800036c6:	17e1                	addi	a5,a5,-8
    800036c8:	000f3707          	fld	fa4,0(t5) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    800036cc:	1f61                	addi	t5,t5,-8
    800036ce:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    800036d2:	ffe79be3          	bne	a5,t5,800036c8 <__kernel_rem_pio2+0x4e4>
    800036d6:	00088463          	beqz	a7,800036de <__kernel_rem_pio2+0x4fa>
    800036da:	22f797d3          	fneg.d	fa5,fa5
    800036de:	6782                	ld	a5,0(sp)
    800036e0:	a39c                	fsd	fa5,0(a5)
    800036e2:	2f813083          	ld	ra,760(sp)
    800036e6:	2f013403          	ld	s0,752(sp)
    800036ea:	2e813483          	ld	s1,744(sp)
    800036ee:	2e013903          	ld	s2,736(sp)
    800036f2:	2d813983          	ld	s3,728(sp)
    800036f6:	2d013a03          	ld	s4,720(sp)
    800036fa:	2c813a83          	ld	s5,712(sp)
    800036fe:	2c013b03          	ld	s6,704(sp)
    80003702:	2b013c03          	ld	s8,688(sp)
    80003706:	2a813c83          	ld	s9,680(sp)
    8000370a:	2a013d03          	ld	s10,672(sp)
    8000370e:	29813d83          	ld	s11,664(sp)
    80003712:	28813407          	fld	fs0,648(sp)
    80003716:	28013487          	fld	fs1,640(sp)
    8000371a:	27813907          	fld	fs2,632(sp)
    8000371e:	27013987          	fld	fs3,624(sp)
    80003722:	26813a07          	fld	fs4,616(sp)
    80003726:	26013a87          	fld	fs5,608(sp)
    8000372a:	25813b07          	fld	fs6,600(sp)
    8000372e:	007bf513          	andi	a0,s7,7
    80003732:	2b813b83          	ld	s7,696(sp)
    80003736:	30010113          	addi	sp,sp,768
    8000373a:	8082                	ret
    8000373c:	4685                	li	a3,1
    8000373e:	4701                	li	a4,0
    80003740:	bbc9                	j	80003512 <__kernel_rem_pio2+0x32e>
    80003742:	a36987d3          	fle.d	a5,fs3,fs6
    80003746:	4b81                	li	s7,0
    80003748:	ca078fe3          	beqz	a5,80003406 <__kernel_rem_pio2+0x222>
    8000374c:	0016859b          	addiw	a1,a3,1
    80003750:	4b89                	li	s7,2
    80003752:	d9504ce3          	bgtz	s5,800034ea <__kernel_rem_pio2+0x306>
    80003756:	0b697b53          	fsub.d	fs6,fs2,fs6
    8000375a:	b175                	j	80003406 <__kernel_rem_pio2+0x222>
    8000375c:	001a851b          	addiw	a0,s5,1
    80003760:	882a                	mv	a6,a0
    80003762:	b319                	j	80003468 <__kernel_rem_pio2+0x284>
    80003764:	00231793          	slli	a5,t1,0x2
    80003768:	0c98                	addi	a4,sp,592
    8000376a:	973e                	add	a4,a4,a5
    8000376c:	46c2                	lw	a3,16(sp)
    8000376e:	dd072703          	lw	a4,-560(a4)
    80003772:	88de                	mv	a7,s7
    80003774:	fe868b1b          	addiw	s6,a3,-24
    80003778:	8bae                	mv	s7,a1
    8000377a:	e8071ae3          	bnez	a4,8000360e <__kernel_rem_pio2+0x42a>
    8000377e:	17f1                	addi	a5,a5,-4
    80003780:	1018                	addi	a4,sp,32
    80003782:	97ba                	add	a5,a5,a4
    80003784:	4398                	lw	a4,0(a5)
    80003786:	337d                	addiw	t1,t1,-1
    80003788:	17f1                	addi	a5,a5,-4
    8000378a:	3b21                	addiw	s6,s6,-24
    8000378c:	df65                	beqz	a4,80003784 <__kernel_rem_pio2+0x5a0>
    8000378e:	b541                	j	8000360e <__kernel_rem_pio2+0x42a>
    80003790:	6722                	ld	a4,8(sp)
    80003792:	478d                	li	a5,3
    80003794:	f4f717e3          	bne	a4,a5,800036e2 <__kernel_rem_pio2+0x4fe>
    80003798:	04030163          	beqz	t1,800037da <__kernel_rem_pio2+0x5f6>
    8000379c:	fff3069b          	addiw	a3,t1,-1
    800037a0:	0c9c                	addi	a5,sp,592
    800037a2:	97fa                	add	a5,a5,t5
    800037a4:	02069613          	slli	a2,a3,0x20
    800037a8:	0218                	addi	a4,sp,256
    800037aa:	01d65693          	srli	a3,a2,0x1d
    800037ae:	ec07b707          	fld	fa4,-320(a5)
    800037b2:	977a                	add	a4,a4,t5
    800037b4:	ff8f0793          	addi	a5,t5,-8
    800037b8:	0a10                	addi	a2,sp,272
    800037ba:	97b2                	add	a5,a5,a2
    800037bc:	8f15                	sub	a4,a4,a3
    800037be:	239c                	fld	fa5,0(a5)
    800037c0:	22e706d3          	fmv.d	fa3,fa4
    800037c4:	17e1                	addi	a5,a5,-8
    800037c6:	02f77753          	fadd.d	fa4,fa4,fa5
    800037ca:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    800037ce:	a798                	fsd	fa4,8(a5)
    800037d0:	02d7f7d3          	fadd.d	fa5,fa5,fa3
    800037d4:	ab9c                	fsd	fa5,16(a5)
    800037d6:	fef714e3          	bne	a4,a5,800037be <__kernel_rem_pio2+0x5da>
    800037da:	4785                	li	a5,1
    800037dc:	f20007d3          	fmv.d.x	fa5,zero
    800037e0:	0467df63          	bge	a5,t1,8000383e <__kernel_rem_pio2+0x65a>
    800037e4:	ffe3069b          	addiw	a3,t1,-2
    800037e8:	02069713          	slli	a4,a3,0x20
    800037ec:	0c9c                	addi	a5,sp,592
    800037ee:	97fa                	add	a5,a5,t5
    800037f0:	01d75693          	srli	a3,a4,0x1d
    800037f4:	0218                	addi	a4,sp,256
    800037f6:	ec07b707          	fld	fa4,-320(a5)
    800037fa:	977a                	add	a4,a4,t5
    800037fc:	ff8f0793          	addi	a5,t5,-8
    80003800:	0a10                	addi	a2,sp,272
    80003802:	97b2                	add	a5,a5,a2
    80003804:	8f15                	sub	a4,a4,a3
    80003806:	239c                	fld	fa5,0(a5)
    80003808:	22e706d3          	fmv.d	fa3,fa4
    8000380c:	17e1                	addi	a5,a5,-8
    8000380e:	02f77753          	fadd.d	fa4,fa4,fa5
    80003812:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80003816:	a798                	fsd	fa4,8(a5)
    80003818:	02d7f7d3          	fadd.d	fa5,fa5,fa3
    8000381c:	ab9c                	fsd	fa5,16(a5)
    8000381e:	fee794e3          	bne	a5,a4,80003806 <__kernel_rem_pio2+0x622>
    80003822:	023c                	addi	a5,sp,264
    80003824:	f20007d3          	fmv.d.x	fa5,zero
    80003828:	97fa                	add	a5,a5,t5
    8000382a:	0a18                	addi	a4,sp,272
    8000382c:	9f3a                	add	t5,t5,a4
    8000382e:	8f95                	sub	a5,a5,a3
    80003830:	000f3707          	fld	fa4,0(t5)
    80003834:	1f61                	addi	t5,t5,-8
    80003836:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    8000383a:	ffe79be3          	bne	a5,t5,80003830 <__kernel_rem_pio2+0x64c>
    8000383e:	26d2                	fld	fa3,272(sp)
    80003840:	2772                	fld	fa4,280(sp)
    80003842:	0a089263          	bnez	a7,800038e6 <__kernel_rem_pio2+0x702>
    80003846:	6782                	ld	a5,0(sp)
    80003848:	a394                	fsd	fa3,0(a5)
    8000384a:	a798                	fsd	fa4,8(a5)
    8000384c:	ab9c                	fsd	fa5,16(a5)
    8000384e:	bd51                	j	800036e2 <__kernel_rem_pio2+0x4fe>
    80003850:	fffa871b          	addiw	a4,s5,-1
    80003854:	0c94                	addi	a3,sp,592
    80003856:	070a                	slli	a4,a4,0x2
    80003858:	9736                	add	a4,a4,a3
    8000385a:	dd072683          	lw	a3,-560(a4)
    8000385e:	16a6                	slli	a3,a3,0x29
    80003860:	92a5                	srli	a3,a3,0x29
    80003862:	dcd72823          	sw	a3,-560(a4)
    80003866:	bb31                	j	80003582 <__kernel_rem_pio2+0x39e>
    80003868:	57a1                	li	a5,-24
    8000386a:	4481                	li	s1,0
    8000386c:	bc01                	j	8000327c <__kernel_rem_pio2+0x98>
    8000386e:	f20007d3          	fmv.d.x	fa5,zero
    80003872:	357d                	addiw	a0,a0,-1
    80003874:	0e85                	addi	t4,t4,1
    80003876:	00f83027          	fsd	fa5,0(a6)
    8000387a:	15e1                	addi	a1,a1,-8
    8000387c:	0821                	addi	a6,a6,8
    8000387e:	dff517e3          	bne	a0,t6,8000366c <__kernel_rem_pio2+0x488>
    80003882:	b53d                	j	800036b0 <__kernel_rem_pio2+0x4cc>
    80003884:	4781                	li	a5,0
    80003886:	b9d9                	j	8000355c <__kernel_rem_pio2+0x378>
    80003888:	f20007d3          	fmv.d.x	fa5,zero
    8000388c:	0a1c                	addi	a5,sp,272
    8000388e:	9f3e                	add	t5,t5,a5
    80003890:	023c                	addi	a5,sp,264
    80003892:	000f3707          	fld	fa4,0(t5)
    80003896:	1f61                	addi	t5,t5,-8
    80003898:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    8000389c:	ffe79be3          	bne	a5,t5,80003892 <__kernel_rem_pio2+0x6ae>
    800038a0:	04089e63          	bnez	a7,800038fc <__kernel_rem_pio2+0x718>
    800038a4:	6782                	ld	a5,0(sp)
    800038a6:	2752                	fld	fa4,272(sp)
    800038a8:	a39c                	fsd	fa5,0(a5)
    800038aa:	0af777d3          	fsub.d	fa5,fa4,fa5
    800038ae:	00605f63          	blez	t1,800038cc <__kernel_rem_pio2+0x6e8>
    800038b2:	0a38                	addi	a4,sp,280
    800038b4:	4785                	li	a5,1
    800038b6:	2318                	fld	fa4,0(a4)
    800038b8:	2785                	addiw	a5,a5,1
    800038ba:	0721                	addi	a4,a4,8
    800038bc:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    800038c0:	fef35be3          	bge	t1,a5,800038b6 <__kernel_rem_pio2+0x6d2>
    800038c4:	00088463          	beqz	a7,800038cc <__kernel_rem_pio2+0x6e8>
    800038c8:	22f797d3          	fneg.d	fa5,fa5
    800038cc:	6782                	ld	a5,0(sp)
    800038ce:	a79c                	fsd	fa5,8(a5)
    800038d0:	bd09                	j	800036e2 <__kernel_rem_pio2+0x4fe>
    800038d2:	c2051753          	fcvt.w.d	a4,fa0,rtz
    800038d6:	002a9793          	slli	a5,s5,0x2
    800038da:	0c94                	addi	a3,sp,592
    800038dc:	97b6                	add	a5,a5,a3
    800038de:	dce7a823          	sw	a4,-560(a5)
    800038e2:	8356                	mv	t1,s5
    800038e4:	b32d                	j	8000360e <__kernel_rem_pio2+0x42a>
    800038e6:	6782                	ld	a5,0(sp)
    800038e8:	22d696d3          	fneg.d	fa3,fa3
    800038ec:	22e71753          	fneg.d	fa4,fa4
    800038f0:	22f797d3          	fneg.d	fa5,fa5
    800038f4:	a394                	fsd	fa3,0(a5)
    800038f6:	a798                	fsd	fa4,8(a5)
    800038f8:	ab9c                	fsd	fa5,16(a5)
    800038fa:	b3e5                	j	800036e2 <__kernel_rem_pio2+0x4fe>
    800038fc:	22f79753          	fneg.d	fa4,fa5
    80003900:	6782                	ld	a5,0(sp)
    80003902:	a398                	fsd	fa4,0(a5)
    80003904:	2752                	fld	fa4,272(sp)
    80003906:	0af777d3          	fsub.d	fa5,fa4,fa5
    8000390a:	fa6044e3          	bgtz	t1,800038b2 <__kernel_rem_pio2+0x6ce>
    8000390e:	22f797d3          	fneg.d	fa5,fa5
    80003912:	bf6d                	j	800038cc <__kernel_rem_pio2+0x6e8>
    80003914:	6722                	ld	a4,8(sp)
    80003916:	4789                	li	a5,2
    80003918:	00e7cb63          	blt	a5,a4,8000392e <__kernel_rem_pio2+0x74a>
    8000391c:	f20007d3          	fmv.d.x	fa5,zero
    80003920:	f8e040e3          	bgtz	a4,800038a0 <__kernel_rem_pio2+0x6bc>
    80003924:	da071fe3          	bnez	a4,800036e2 <__kernel_rem_pio2+0x4fe>
    80003928:	da088be3          	beqz	a7,800036de <__kernel_rem_pio2+0x4fa>
    8000392c:	b37d                	j	800036da <__kernel_rem_pio2+0x4f6>
    8000392e:	6722                	ld	a4,8(sp)
    80003930:	478d                	li	a5,3
    80003932:	f20007d3          	fmv.d.x	fa5,zero
    80003936:	f0f704e3          	beq	a4,a5,8000383e <__kernel_rem_pio2+0x65a>
    8000393a:	b365                	j	800036e2 <__kernel_rem_pio2+0x4fe>

000000008000393c <__kernel_sin>:
__kernel_sin():
    8000393c:	e20507d3          	fmv.x.d	a5,fa0
    80003940:	3e4006b7          	lui	a3,0x3e400
    80003944:	00179713          	slli	a4,a5,0x1
    80003948:	9305                	srli	a4,a4,0x21
    8000394a:	00d75663          	bge	a4,a3,80003956 <__kernel_sin+0x1a>
    8000394e:	c2051753          	fcvt.w.d	a4,fa0,rtz
    80003952:	2701                	sext.w	a4,a4
    80003954:	c749                	beqz	a4,800039de <__kernel_sin+0xa2>
    80003956:	f20787d3          	fmv.d.x	fa5,a5
    8000395a:	00090717          	auipc	a4,0x90
    8000395e:	79673507          	fld	fa0,1942(a4) # 800940f0 <_erodata+0x57e>
    80003962:	00090717          	auipc	a4,0x90
    80003966:	79673007          	fld	ft0,1942(a4) # 800940f8 <_erodata+0x586>
    8000396a:	12f7f753          	fmul.d	fa4,fa5,fa5
    8000396e:	00090717          	auipc	a4,0x90
    80003972:	77a73787          	fld	fa5,1914(a4) # 800940e8 <_erodata+0x576>
    80003976:	00090717          	auipc	a4,0x90
    8000397a:	78a73607          	fld	fa2,1930(a4) # 80094100 <_erodata+0x58e>
    8000397e:	00090717          	auipc	a4,0x90
    80003982:	78a73687          	fld	fa3,1930(a4) # 80094108 <_erodata+0x596>
    80003986:	52f777c3          	fmadd.d	fa5,fa4,fa5,fa0
    8000398a:	f2078553          	fmv.d.x	fa0,a5
    8000398e:	12e57553          	fmul.d	fa0,fa0,fa4
    80003992:	02e7f7c3          	fmadd.d	fa5,fa5,fa4,ft0
    80003996:	62e7f7c3          	fmadd.d	fa5,fa5,fa4,fa2
    8000399a:	6ae7f7c3          	fmadd.d	fa5,fa5,fa4,fa3
    8000399e:	ed01                	bnez	a0,800039b6 <__kernel_sin+0x7a>
    800039a0:	00090717          	auipc	a4,0x90
    800039a4:	77073587          	fld	fa1,1904(a4) # 80094110 <_erodata+0x59e>
    800039a8:	5af777c3          	fmadd.d	fa5,fa4,fa5,fa1
    800039ac:	f2078753          	fmv.d.x	fa4,a5
    800039b0:	72a7f543          	fmadd.d	fa0,fa5,fa0,fa4
    800039b4:	8082                	ret
    800039b6:	12f577d3          	fmul.d	fa5,fa0,fa5
    800039ba:	00090717          	auipc	a4,0x90
    800039be:	44673687          	fld	fa3,1094(a4) # 80093e00 <_erodata+0x28e>
    800039c2:	00090717          	auipc	a4,0x90
    800039c6:	75673607          	fld	fa2,1878(a4) # 80094118 <_erodata+0x5a6>
    800039ca:	7ad5f7c7          	fmsub.d	fa5,fa1,fa3,fa5
    800039ce:	5ae7f5c7          	fmsub.d	fa1,fa5,fa4,fa1
    800039d2:	f20787d3          	fmv.d.x	fa5,a5
    800039d6:	5ac57543          	fmadd.d	fa0,fa0,fa2,fa1
    800039da:	0aa7f553          	fsub.d	fa0,fa5,fa0
    800039de:	8082                	ret

00000000800039e0 <__kernel_tan>:
__kernel_tan():
    800039e0:	e20507d3          	fmv.x.d	a5,fa0
    800039e4:	3e3005b7          	lui	a1,0x3e300
    800039e8:	4207d613          	srai	a2,a5,0x20
    800039ec:	02161693          	slli	a3,a2,0x21
    800039f0:	9285                	srli	a3,a3,0x21
    800039f2:	08b6d063          	bge	a3,a1,80003a72 <__kernel_tan+0x92>
    800039f6:	c20515d3          	fcvt.w.d	a1,fa0,rtz
    800039fa:	2581                	sext.w	a1,a1
    800039fc:	edcd                	bnez	a1,80003ab6 <__kernel_tan+0xd6>
    800039fe:	0015061b          	addiw	a2,a0,1
    80003a02:	00c7e733          	or	a4,a5,a2
    80003a06:	8ed9                	or	a3,a3,a4
    80003a08:	2681                	sext.w	a3,a3
    80003a0a:	22068263          	beqz	a3,80003c2e <__kernel_tan+0x24e>
    80003a0e:	4685                	li	a3,1
    80003a10:	e2050753          	fmv.x.d	a4,fa0
    80003a14:	1cd50563          	beq	a0,a3,80003bde <__kernel_tan+0x1fe>
    80003a18:	02b577d3          	fadd.d	fa5,fa0,fa1
    80003a1c:	00090797          	auipc	a5,0x90
    80003a20:	16c7b707          	fld	fa4,364(a5) # 80093b88 <_erodata+0x16>
    80003a24:	57fd                	li	a5,-1
    80003a26:	1782                	slli	a5,a5,0x20
    80003a28:	00090617          	auipc	a2,0x90
    80003a2c:	16863687          	fld	fa3,360(a2) # 80093b90 <_erodata+0x1e>
    80003a30:	e20786d3          	fmv.x.d	a3,fa5
    80003a34:	1af777d3          	fdiv.d	fa5,fa4,fa5
    80003a38:	8efd                	and	a3,a3,a5
    80003a3a:	f2068753          	fmv.d.x	fa4,a3
    80003a3e:	e2078653          	fmv.x.d	a2,fa5
    80003a42:	f20687d3          	fmv.d.x	fa5,a3
    80003a46:	8ff1                	and	a5,a5,a2
    80003a48:	0aa7f7d3          	fsub.d	fa5,fa5,fa0
    80003a4c:	0af5f5d3          	fsub.d	fa1,fa1,fa5
    80003a50:	f20787d3          	fmv.d.x	fa5,a5
    80003a54:	6ae7f6c3          	fmadd.d	fa3,fa5,fa4,fa3
    80003a58:	f2078753          	fmv.d.x	fa4,a5
    80003a5c:	6af5f5c3          	fmadd.d	fa1,fa1,fa5,fa3
    80003a60:	f20607d3          	fmv.d.x	fa5,a2
    80003a64:	72f5f7c3          	fmadd.d	fa5,fa1,fa5,fa4
    80003a68:	e2078753          	fmv.x.d	a4,fa5
    80003a6c:	f2070553          	fmv.d.x	fa0,a4
    80003a70:	8082                	ret
    80003a72:	3fe59737          	lui	a4,0x3fe59
    80003a76:	42770713          	addi	a4,a4,1063 # 3fe59427 <asinh-0x401a6bd9>
    80003a7a:	02d75e63          	bge	a4,a3,80003ab6 <__kernel_tan+0xd6>
    80003a7e:	00065863          	bgez	a2,80003a8e <__kernel_tan+0xae>
    80003a82:	22a517d3          	fneg.d	fa5,fa0
    80003a86:	22b595d3          	fneg.d	fa1,fa1
    80003a8a:	e20787d3          	fmv.x.d	a5,fa5
    80003a8e:	f20786d3          	fmv.d.x	fa3,a5
    80003a92:	00090717          	auipc	a4,0x90
    80003a96:	47673787          	fld	fa5,1142(a4) # 80093f08 <_erodata+0x396>
    80003a9a:	00090717          	auipc	a4,0x90
    80003a9e:	68673707          	fld	fa4,1670(a4) # 80094120 <_erodata+0x5ae>
    80003aa2:	0ab77753          	fsub.d	fa4,fa4,fa1
    80003aa6:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80003aaa:	f20005d3          	fmv.d.x	fa1,zero
    80003aae:	02f777d3          	fadd.d	fa5,fa4,fa5
    80003ab2:	e20787d3          	fmv.x.d	a5,fa5
    80003ab6:	f20787d3          	fmv.d.x	fa5,a5
    80003aba:	00090717          	auipc	a4,0x90
    80003abe:	67673087          	fld	ft1,1654(a4) # 80094130 <_erodata+0x5be>
    80003ac2:	00090717          	auipc	a4,0x90
    80003ac6:	69e73007          	fld	ft0,1694(a4) # 80094160 <_erodata+0x5ee>
    80003aca:	12f7f553          	fmul.d	fa0,fa5,fa5
    80003ace:	00090717          	auipc	a4,0x90
    80003ad2:	65a73687          	fld	fa3,1626(a4) # 80094128 <_erodata+0x5b6>
    80003ad6:	00090717          	auipc	a4,0x90
    80003ada:	68273707          	fld	fa4,1666(a4) # 80094158 <_erodata+0x5e6>
    80003ade:	00090717          	auipc	a4,0x90
    80003ae2:	65a73807          	fld	fa6,1626(a4) # 80094138 <_erodata+0x5c6>
    80003ae6:	00090717          	auipc	a4,0x90
    80003aea:	68273387          	fld	ft7,1666(a4) # 80094168 <_erodata+0x5f6>
    80003aee:	00090717          	auipc	a4,0x90
    80003af2:	65273307          	fld	ft6,1618(a4) # 80094140 <_erodata+0x5ce>
    80003af6:	00090717          	auipc	a4,0x90
    80003afa:	67a73287          	fld	ft5,1658(a4) # 80094170 <_erodata+0x5fe>
    80003afe:	12a57653          	fmul.d	fa2,fa0,fa0
    80003b02:	00090717          	auipc	a4,0x90
    80003b06:	64673207          	fld	ft4,1606(a4) # 80094148 <_erodata+0x5d6>
    80003b0a:	00090717          	auipc	a4,0x90
    80003b0e:	66e73787          	fld	fa5,1646(a4) # 80094178 <_erodata+0x606>
    80003b12:	00090717          	auipc	a4,0x90
    80003b16:	63e73187          	fld	ft3,1598(a4) # 80094150 <_erodata+0x5de>
    80003b1a:	00090717          	auipc	a4,0x90
    80003b1e:	66673107          	fld	ft2,1638(a4) # 80094180 <_erodata+0x60e>
    80003b22:	3fe595b7          	lui	a1,0x3fe59
    80003b26:	42758593          	addi	a1,a1,1063 # 3fe59427 <asinh-0x401a6bd9>
    80003b2a:	0ad676c3          	fmadd.d	fa3,fa2,fa3,ft1
    80003b2e:	02e67743          	fmadd.d	fa4,fa2,fa4,ft0
    80003b32:	f2078053          	fmv.d.x	ft0,a5
    80003b36:	00090717          	auipc	a4,0x90
    80003b3a:	65273087          	fld	ft1,1618(a4) # 80094188 <_erodata+0x616>
    80003b3e:	12a07053          	fmul.d	ft0,ft0,fa0
    80003b42:	82c6f6c3          	fmadd.d	fa3,fa3,fa2,fa6
    80003b46:	3ac77743          	fmadd.d	fa4,fa4,fa2,ft7
    80003b4a:	32c6f6c3          	fmadd.d	fa3,fa3,fa2,ft6
    80003b4e:	2ac77743          	fmadd.d	fa4,fa4,fa2,ft5
    80003b52:	22c6f6c3          	fmadd.d	fa3,fa3,fa2,ft4
    80003b56:	7ac777c3          	fmadd.d	fa5,fa4,fa2,fa5
    80003b5a:	1ac6f6c3          	fmadd.d	fa3,fa3,fa2,ft3
    80003b5e:	12c7f7c3          	fmadd.d	fa5,fa5,fa2,ft2
    80003b62:	6aa7f7c3          	fmadd.d	fa5,fa5,fa0,fa3
    80003b66:	5a07f7c3          	fmadd.d	fa5,fa5,ft0,fa1
    80003b6a:	5aa7f5c3          	fmadd.d	fa1,fa5,fa0,fa1
    80003b6e:	f20787d3          	fmv.d.x	fa5,a5
    80003b72:	5a1075c3          	fmadd.d	fa1,ft0,ft1,fa1
    80003b76:	02b7f7d3          	fadd.d	fa5,fa5,fa1
    80003b7a:	e2078753          	fmv.x.d	a4,fa5
    80003b7e:	06d5c363          	blt	a1,a3,80003be4 <__kernel_tan+0x204>
    80003b82:	4685                	li	a3,1
    80003b84:	04d50d63          	beq	a0,a3,80003bde <__kernel_tan+0x1fe>
    80003b88:	f2070753          	fmv.d.x	fa4,a4
    80003b8c:	00090697          	auipc	a3,0x90
    80003b90:	ffc6b787          	fld	fa5,-4(a3) # 80093b88 <_erodata+0x16>
    80003b94:	567d                	li	a2,-1
    80003b96:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
    80003b9a:	1602                	slli	a2,a2,0x20
    80003b9c:	00e676b3          	and	a3,a2,a4
    80003ba0:	f2078753          	fmv.d.x	fa4,a5
    80003ba4:	f20686d3          	fmv.d.x	fa3,a3
    80003ba8:	e20785d3          	fmv.x.d	a1,fa5
    80003bac:	f20687d3          	fmv.d.x	fa5,a3
    80003bb0:	8e6d                	and	a2,a2,a1
    80003bb2:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80003bb6:	00090797          	auipc	a5,0x90
    80003bba:	fda7b707          	fld	fa4,-38(a5) # 80093b90 <_erodata+0x1e>
    80003bbe:	0af5f5d3          	fsub.d	fa1,fa1,fa5
    80003bc2:	f20607d3          	fmv.d.x	fa5,a2
    80003bc6:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
    80003bca:	f20606d3          	fmv.d.x	fa3,a2
    80003bce:	72f5f743          	fmadd.d	fa4,fa1,fa5,fa4
    80003bd2:	f20587d3          	fmv.d.x	fa5,a1
    80003bd6:	6af777c3          	fmadd.d	fa5,fa4,fa5,fa3
    80003bda:	e2078753          	fmv.x.d	a4,fa5
    80003bde:	f2070553          	fmv.d.x	fa0,a4
    80003be2:	8082                	ret
    80003be4:	d20507d3          	fcvt.d.w	fa5,a0
    80003be8:	f2070753          	fmv.d.x	fa4,a4
    80003bec:	00090697          	auipc	a3,0x90
    80003bf0:	1646b607          	fld	fa2,356(a3) # 80093d50 <_erodata+0x1de>
    80003bf4:	41e6561b          	sraiw	a2,a2,0x1e
    80003bf8:	12e77053          	fmul.d	ft0,fa4,fa4
    80003bfc:	02f77753          	fadd.d	fa4,fa4,fa5
    80003c00:	4685                	li	a3,1
    80003c02:	8a09                	andi	a2,a2,2
    80003c04:	40c6863b          	subw	a2,a3,a2
    80003c08:	d20606d3          	fcvt.d.w	fa3,a2
    80003c0c:	1ae07753          	fdiv.d	fa4,ft0,fa4
    80003c10:	0ab775d3          	fsub.d	fa1,fa4,fa1
    80003c14:	f2078753          	fmv.d.x	fa4,a5
    80003c18:	0ab775d3          	fsub.d	fa1,fa4,fa1
    80003c1c:	7ac5f5cb          	fnmsub.d	fa1,fa1,fa2,fa5
    80003c20:	12b6f7d3          	fmul.d	fa5,fa3,fa1
    80003c24:	e2078753          	fmv.x.d	a4,fa5
    80003c28:	f2070553          	fmv.d.x	fa0,a4
    80003c2c:	8082                	ret
    80003c2e:	1141                	addi	sp,sp,-16
    80003c30:	e406                	sd	ra,8(sp)
    80003c32:	d01fc0ef          	jal	ra,80000932 <fabs>
    80003c36:	00090797          	auipc	a5,0x90
    80003c3a:	f5a7b787          	fld	fa5,-166(a5) # 80093b90 <_erodata+0x1e>
    80003c3e:	1aa7f7d3          	fdiv.d	fa5,fa5,fa0
    80003c42:	60a2                	ld	ra,8(sp)
    80003c44:	0141                	addi	sp,sp,16
    80003c46:	22f78553          	fmv.d	fa0,fa5
    80003c4a:	8082                	ret

0000000080003c4c <with_errno>:
with_errno():
    80003c4c:	1101                	addi	sp,sp,-32
    80003c4e:	e822                	sd	s0,16(sp)
    80003c50:	ec06                	sd	ra,24(sp)
    80003c52:	842a                	mv	s0,a0
    80003c54:	a42a                	fsd	fa0,8(sp)
    80003c56:	5c35c0ef          	jal	ra,80060a18 <__errno>
    80003c5a:	60e2                	ld	ra,24(sp)
    80003c5c:	c100                	sw	s0,0(a0)
    80003c5e:	6442                	ld	s0,16(sp)
    80003c60:	2522                	fld	fa0,8(sp)
    80003c62:	6105                	addi	sp,sp,32
    80003c64:	8082                	ret

0000000080003c66 <xflow>:
xflow():
    80003c66:	22a507d3          	fmv.d	fa5,fa0
    80003c6a:	1141                	addi	sp,sp,-16
    80003c6c:	c119                	beqz	a0,80003c72 <xflow+0xc>
    80003c6e:	22a517d3          	fneg.d	fa5,fa0
    80003c72:	a43e                	fsd	fa5,8(sp)
    80003c74:	27a2                	fld	fa5,8(sp)
    80003c76:	02200513          	li	a0,34
    80003c7a:	12f57553          	fmul.d	fa0,fa0,fa5
    80003c7e:	0141                	addi	sp,sp,16
    80003c80:	b7f1                	j	80003c4c <with_errno>

0000000080003c82 <__math_uflow>:
__math_uflow():
    80003c82:	00090797          	auipc	a5,0x90
    80003c86:	50e7b507          	fld	fa0,1294(a5) # 80094190 <_erodata+0x61e>
    80003c8a:	bff1                	j	80003c66 <xflow>

0000000080003c8c <__math_may_uflow>:
__math_may_uflow():
    80003c8c:	00090797          	auipc	a5,0x90
    80003c90:	50c7b507          	fld	fa0,1292(a5) # 80094198 <_erodata+0x626>
    80003c94:	bfc9                	j	80003c66 <xflow>

0000000080003c96 <__math_oflow>:
__math_oflow():
    80003c96:	00090797          	auipc	a5,0x90
    80003c9a:	50a7b507          	fld	fa0,1290(a5) # 800941a0 <_erodata+0x62e>
    80003c9e:	b7e1                	j	80003c66 <xflow>

0000000080003ca0 <__math_divzero>:
__math_divzero():
    80003ca0:	1141                	addi	sp,sp,-16
    80003ca2:	ed19                	bnez	a0,80003cc0 <__math_divzero+0x20>
    80003ca4:	00090797          	auipc	a5,0x90
    80003ca8:	eec7b787          	fld	fa5,-276(a5) # 80093b90 <_erodata+0x1e>
    80003cac:	a43e                	fsd	fa5,8(sp)
    80003cae:	2522                	fld	fa0,8(sp)
    80003cb0:	f20007d3          	fmv.d.x	fa5,zero
    80003cb4:	02200513          	li	a0,34
    80003cb8:	1af57553          	fdiv.d	fa0,fa0,fa5
    80003cbc:	0141                	addi	sp,sp,16
    80003cbe:	b779                	j	80003c4c <with_errno>
    80003cc0:	00090797          	auipc	a5,0x90
    80003cc4:	ec87b787          	fld	fa5,-312(a5) # 80093b88 <_erodata+0x16>
    80003cc8:	a43e                	fsd	fa5,8(sp)
    80003cca:	2522                	fld	fa0,8(sp)
    80003ccc:	f20007d3          	fmv.d.x	fa5,zero
    80003cd0:	02200513          	li	a0,34
    80003cd4:	1af57553          	fdiv.d	fa0,fa0,fa5
    80003cd8:	0141                	addi	sp,sp,16
    80003cda:	bf8d                	j	80003c4c <with_errno>

0000000080003cdc <__math_invalid>:
__math_invalid():
    80003cdc:	0aa577d3          	fsub.d	fa5,fa0,fa0
    80003ce0:	a2a527d3          	feq.d	a5,fa0,fa0
    80003ce4:	1af7f553          	fdiv.d	fa0,fa5,fa5
    80003ce8:	c781                	beqz	a5,80003cf0 <__math_invalid+0x14>
    80003cea:	02100513          	li	a0,33
    80003cee:	bfb9                	j	80003c4c <with_errno>
    80003cf0:	8082                	ret

0000000080003cf2 <__math_check_uflow>:
__math_check_uflow():
    80003cf2:	f20007d3          	fmv.d.x	fa5,zero
    80003cf6:	a2f527d3          	feq.d	a5,fa0,fa5
    80003cfa:	e391                	bnez	a5,80003cfe <__math_check_uflow+0xc>
    80003cfc:	8082                	ret
    80003cfe:	02200513          	li	a0,34
    80003d02:	b7a9                	j	80003c4c <with_errno>

0000000080003d04 <__math_check_oflow>:
__math_check_oflow():
    80003d04:	22a527d3          	fabs.d	fa5,fa0
    80003d08:	00090797          	auipc	a5,0x90
    80003d0c:	0187b707          	fld	fa4,24(a5) # 80093d20 <_erodata+0x1ae>
    80003d10:	00102773          	frflags	a4
    80003d14:	a2f717d3          	flt.d	a5,fa4,fa5
    80003d18:	00171073          	fsflags	a4
    80003d1c:	e391                	bnez	a5,80003d20 <__math_check_oflow+0x1c>
    80003d1e:	8082                	ret
    80003d20:	02200513          	li	a0,34
    80003d24:	b725                	j	80003c4c <with_errno>

0000000080003d26 <finite>:
finite():
    80003d26:	e2051553          	fclass.d	a0,fa0
    80003d2a:	38157513          	andi	a0,a0,897
    80003d2e:	00153513          	seqz	a0,a0
    80003d32:	8082                	ret

0000000080003d34 <nan>:
nan():
    80003d34:	00090797          	auipc	a5,0x90
    80003d38:	4747b507          	fld	fa0,1140(a5) # 800941a8 <_erodata+0x636>
    80003d3c:	8082                	ret

0000000080003d3e <scalbn>:
scalbn():
    80003d3e:	e20507d3          	fmv.x.d	a5,fa0
    80003d42:	4347d713          	srai	a4,a5,0x34
    80003d46:	7ff77713          	andi	a4,a4,2047
    80003d4a:	4207d693          	srai	a3,a5,0x20
    80003d4e:	ef25                	bnez	a4,80003dc6 <scalbn+0x88>
    80003d50:	1686                	slli	a3,a3,0x21
    80003d52:	9285                	srli	a3,a3,0x21
    80003d54:	8edd                	or	a3,a3,a5
    80003d56:	2681                	sext.w	a3,a3
    80003d58:	c6a5                	beqz	a3,80003dc0 <scalbn+0x82>
    80003d5a:	00090717          	auipc	a4,0x90
    80003d5e:	06e73787          	fld	fa5,110(a4) # 80093dc8 <_erodata+0x256>
    80003d62:	12f577d3          	fmul.d	fa5,fa0,fa5
    80003d66:	7751                	lui	a4,0xffff4
    80003d68:	cb070713          	addi	a4,a4,-848 # ffffffffffff3cb0 <_ebss+0xffffffff7fef2b4a>
    80003d6c:	e20787d3          	fmv.x.d	a5,fa5
    80003d70:	0ce54f63          	blt	a0,a4,80003e4e <scalbn+0x110>
    80003d74:	4347d713          	srai	a4,a5,0x34
    80003d78:	7ff77713          	andi	a4,a4,2047
    80003d7c:	4207d693          	srai	a3,a5,0x20
    80003d80:	fca7071b          	addiw	a4,a4,-54
    80003d84:	00e5063b          	addw	a2,a0,a4
    80003d88:	7fe00593          	li	a1,2046
    80003d8c:	8732                	mv	a4,a2
    80003d8e:	04c5c763          	blt	a1,a2,80003ddc <scalbn+0x9e>
    80003d92:	08c04f63          	bgtz	a2,80003e30 <scalbn+0xf2>
    80003d96:	fcb00593          	li	a1,-53
    80003d9a:	06b65063          	bge	a2,a1,80003dfa <scalbn+0xbc>
    80003d9e:	6731                	lui	a4,0xc
    80003da0:	35070713          	addi	a4,a4,848 # c350 <asinh-0x7fff3cb0>
    80003da4:	02a74c63          	blt	a4,a0,80003ddc <scalbn+0x9e>
    80003da8:	f2078753          	fmv.d.x	fa4,a5
    80003dac:	00090717          	auipc	a4,0x90
    80003db0:	07473787          	fld	fa5,116(a4) # 80093e20 <_erodata+0x2ae>
    80003db4:	22e78753          	fsgnj.d	fa4,fa5,fa4
    80003db8:	12f777d3          	fmul.d	fa5,fa4,fa5
    80003dbc:	e20787d3          	fmv.x.d	a5,fa5
    80003dc0:	f2078553          	fmv.d.x	fa0,a5
    80003dc4:	8082                	ret
    80003dc6:	7ff00613          	li	a2,2047
    80003dca:	fac71de3          	bne	a4,a2,80003d84 <scalbn+0x46>
    80003dce:	02a577d3          	fadd.d	fa5,fa0,fa0
    80003dd2:	e20787d3          	fmv.x.d	a5,fa5
    80003dd6:	f2078553          	fmv.d.x	fa0,a5
    80003dda:	8082                	ret
    80003ddc:	f2078753          	fmv.d.x	fa4,a5
    80003de0:	00090717          	auipc	a4,0x90
    80003de4:	da073787          	fld	fa5,-608(a4) # 80093b80 <_erodata+0xe>
    80003de8:	22e78753          	fsgnj.d	fa4,fa5,fa4
    80003dec:	12f777d3          	fmul.d	fa5,fa4,fa5
    80003df0:	e20787d3          	fmv.x.d	a5,fa5
    80003df4:	f2078553          	fmv.d.x	fa0,a5
    80003df8:	8082                	ret
    80003dfa:	0366071b          	addiw	a4,a2,54
    80003dfe:	80100637          	lui	a2,0x80100
    80003e02:	167d                	addi	a2,a2,-1
    80003e04:	8ef1                	and	a3,a3,a2
    80003e06:	0147171b          	slliw	a4,a4,0x14
    80003e0a:	8f55                	or	a4,a4,a3
    80003e0c:	56fd                	li	a3,-1
    80003e0e:	9281                	srli	a3,a3,0x20
    80003e10:	8ff5                	and	a5,a5,a3
    80003e12:	1702                	slli	a4,a4,0x20
    80003e14:	8f5d                	or	a4,a4,a5
    80003e16:	f2070753          	fmv.d.x	fa4,a4
    80003e1a:	00090797          	auipc	a5,0x90
    80003e1e:	3967b787          	fld	fa5,918(a5) # 800941b0 <_erodata+0x63e>
    80003e22:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    80003e26:	e20787d3          	fmv.x.d	a5,fa5
    80003e2a:	f2078553          	fmv.d.x	fa0,a5
    80003e2e:	8082                	ret
    80003e30:	80100637          	lui	a2,0x80100
    80003e34:	167d                	addi	a2,a2,-1
    80003e36:	8ef1                	and	a3,a3,a2
    80003e38:	0147171b          	slliw	a4,a4,0x14
    80003e3c:	8f55                	or	a4,a4,a3
    80003e3e:	56fd                	li	a3,-1
    80003e40:	9281                	srli	a3,a3,0x20
    80003e42:	1702                	slli	a4,a4,0x20
    80003e44:	8ff5                	and	a5,a5,a3
    80003e46:	8fd9                	or	a5,a5,a4
    80003e48:	f2078553          	fmv.d.x	fa0,a5
    80003e4c:	8082                	ret
    80003e4e:	f2078753          	fmv.d.x	fa4,a5
    80003e52:	00090717          	auipc	a4,0x90
    80003e56:	fce73787          	fld	fa5,-50(a4) # 80093e20 <_erodata+0x2ae>
    80003e5a:	12f777d3          	fmul.d	fa5,fa4,fa5
    80003e5e:	e20787d3          	fmv.x.d	a5,fa5
    80003e62:	f2078553          	fmv.d.x	fa0,a5
    80003e66:	8082                	ret

0000000080003e68 <__ashlti3>:
__ashlti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:434
    80003e68:	ce11                	beqz	a2,80003e84 <__ashlti3+0x1c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:438
    80003e6a:	04000713          	li	a4,64
    80003e6e:	8f11                	sub	a4,a4,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:444
    80003e70:	0007079b          	sext.w	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:441
    80003e74:	00e04963          	bgtz	a4,80003e86 <__ashlti3+0x1e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:444
    80003e78:	40f005bb          	negw	a1,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:443
    80003e7c:	4701                	li	a4,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:444
    80003e7e:	00b515b3          	sll	a1,a0,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:454
    80003e82:	853a                	mv	a0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:455
    80003e84:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:450
    80003e86:	00c51733          	sll	a4,a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:451
    80003e8a:	00c595b3          	sll	a1,a1,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:448
    80003e8e:	00f55533          	srl	a0,a0,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:451
    80003e92:	8dc9                	or	a1,a1,a0
    80003e94:	b7fd                	j	80003e82 <__ashlti3+0x1a>

0000000080003e96 <__clzdi2>:
__clzdi2():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:710
    80003e96:	03800793          	li	a5,56
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:710 (discriminator 20)
    80003e9a:	00f55733          	srl	a4,a0,a5
    80003e9e:	0ff77713          	zext.b	a4,a4
    80003ea2:	e319                	bnez	a4,80003ea8 <__clzdi2+0x12>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:710 (discriminator 18)
    80003ea4:	17e1                	addi	a5,a5,-8
    80003ea6:	fbf5                	bnez	a5,80003e9a <__clzdi2+0x4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:710 (discriminator 21)
    80003ea8:	04000713          	li	a4,64
    80003eac:	8f1d                	sub	a4,a4,a5
    80003eae:	00f55533          	srl	a0,a0,a5
    80003eb2:	00061797          	auipc	a5,0x61
    80003eb6:	f9678793          	addi	a5,a5,-106 # 80064e48 <__clz_tab>
    80003eba:	953e                	add	a0,a0,a5
    80003ebc:	00054503          	lbu	a0,0(a0)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:713 (discriminator 21)
    80003ec0:	40a7053b          	subw	a0,a4,a0
    80003ec4:	8082                	ret

0000000080003ec6 <__ctzdi2>:
__ctzdi2():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:742
    80003ec6:	40a007b3          	neg	a5,a0
    80003eca:	8d7d                	and	a0,a0,a5
    80003ecc:	03800793          	li	a5,56
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:742 (discriminator 20)
    80003ed0:	00f55733          	srl	a4,a0,a5
    80003ed4:	0ff77713          	zext.b	a4,a4
    80003ed8:	e319                	bnez	a4,80003ede <__ctzdi2+0x18>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:742 (discriminator 18)
    80003eda:	17e1                	addi	a5,a5,-8
    80003edc:	fbf5                	bnez	a5,80003ed0 <__ctzdi2+0xa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:742 (discriminator 21)
    80003ede:	00f55533          	srl	a0,a0,a5
    80003ee2:	00061717          	auipc	a4,0x61
    80003ee6:	f6670713          	addi	a4,a4,-154 # 80064e48 <__clz_tab>
    80003eea:	953a                	add	a0,a0,a4
    80003eec:	00054503          	lbu	a0,0(a0)
    80003ef0:	17fd                	addi	a5,a5,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:745 (discriminator 21)
    80003ef2:	9d3d                	addw	a0,a0,a5
    80003ef4:	8082                	ret

0000000080003ef6 <__divti3>:
__divti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1232
    80003ef6:	8eaa                	mv	t4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1233
    80003ef8:	4801                	li	a6,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1238
    80003efa:	0005da63          	bgez	a1,80003f0e <__divti3+0x18>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1240
    80003efe:	00a037b3          	snez	a5,a0
    80003f02:	40b005b3          	neg	a1,a1
    80003f06:	8d9d                	sub	a1,a1,a5
    80003f08:	40a00eb3          	neg	t4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1239
    80003f0c:	587d                	li	a6,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1241
    80003f0e:	0006db63          	bgez	a3,80003f24 <__divti3+0x2e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1243
    80003f12:	00c037b3          	snez	a5,a2
    80003f16:	40d006b3          	neg	a3,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1242
    80003f1a:	fff84813          	not	a6,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1243
    80003f1e:	8e9d                	sub	a3,a3,a5
    80003f20:	40c00633          	neg	a2,a2
__udivmodti4():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1024
    80003f24:	88b2                	mv	a7,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1026
    80003f26:	8e76                	mv	t3,t4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1027
    80003f28:	852e                	mv	a0,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1064
    80003f2a:	20069f63          	bnez	a3,80004148 <__divti3+0x252>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1066
    80003f2e:	0cc5f363          	bgeu	a1,a2,80003ff4 <__divti3+0xfe>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1070
    80003f32:	03800793          	li	a5,56
    80003f36:	00f65733          	srl	a4,a2,a5
    80003f3a:	0ff77713          	zext.b	a4,a4
    80003f3e:	e319                	bnez	a4,80003f44 <__divti3+0x4e>
    80003f40:	17e1                	addi	a5,a5,-8
    80003f42:	fbf5                	bnez	a5,80003f36 <__divti3+0x40>
    80003f44:	00f656b3          	srl	a3,a2,a5
    80003f48:	00061717          	auipc	a4,0x61
    80003f4c:	f0070713          	addi	a4,a4,-256 # 80064e48 <__clz_tab>
    80003f50:	9736                	add	a4,a4,a3
    80003f52:	00074683          	lbu	a3,0(a4)
    80003f56:	04000713          	li	a4,64
    80003f5a:	40f707b3          	sub	a5,a4,a5
    80003f5e:	40d78733          	sub	a4,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1072
    80003f62:	00d78f63          	beq	a5,a3,80003f80 <__divti3+0x8a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    80003f66:	04000693          	li	a3,64
    80003f6a:	9e99                	subw	a3,a3,a4
    80003f6c:	00e595b3          	sll	a1,a1,a4
    80003f70:	00ded6b3          	srl	a3,t4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1077
    80003f74:	00e618b3          	sll	a7,a2,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    80003f78:	00b6e533          	or	a0,a3,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1079
    80003f7c:	00ee9e33          	sll	t3,t4,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1082
    80003f80:	0208d313          	srli	t1,a7,0x20
    80003f84:	026556b3          	divu	a3,a0,t1
    80003f88:	02089593          	slli	a1,a7,0x20
    80003f8c:	9181                	srli	a1,a1,0x20
    80003f8e:	020e5793          	srli	a5,t3,0x20
    80003f92:	02657733          	remu	a4,a0,t1
    80003f96:	8636                	mv	a2,a3
    80003f98:	02d58533          	mul	a0,a1,a3
    80003f9c:	1702                	slli	a4,a4,0x20
    80003f9e:	8fd9                	or	a5,a5,a4
    80003fa0:	00a7fc63          	bgeu	a5,a0,80003fb8 <__divti3+0xc2>
    80003fa4:	97c6                	add	a5,a5,a7
    80003fa6:	fff68613          	addi	a2,a3,-1
    80003faa:	0117e763          	bltu	a5,a7,80003fb8 <__divti3+0xc2>
    80003fae:	00a7f563          	bgeu	a5,a0,80003fb8 <__divti3+0xc2>
    80003fb2:	ffe68613          	addi	a2,a3,-2
    80003fb6:	97c6                	add	a5,a5,a7
    80003fb8:	8f89                	sub	a5,a5,a0
    80003fba:	0267f733          	remu	a4,a5,t1
    80003fbe:	1e02                	slli	t3,t3,0x20
    80003fc0:	020e5e13          	srli	t3,t3,0x20
    80003fc4:	0267d7b3          	divu	a5,a5,t1
    80003fc8:	1702                	slli	a4,a4,0x20
    80003fca:	01c76e33          	or	t3,a4,t3
    80003fce:	02f586b3          	mul	a3,a1,a5
    80003fd2:	873e                	mv	a4,a5
    80003fd4:	00de7b63          	bgeu	t3,a3,80003fea <__divti3+0xf4>
    80003fd8:	9e46                	add	t3,t3,a7
    80003fda:	fff78713          	addi	a4,a5,-1
    80003fde:	011e6663          	bltu	t3,a7,80003fea <__divti3+0xf4>
    80003fe2:	00de7463          	bgeu	t3,a3,80003fea <__divti3+0xf4>
    80003fe6:	ffe78713          	addi	a4,a5,-2
    80003fea:	02061513          	slli	a0,a2,0x20
    80003fee:	8d59                	or	a0,a0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1209
    80003ff0:	4301                	li	t1,0
    80003ff2:	a84d                	j	800040a4 <__divti3+0x1ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1091
    80003ff4:	e601                	bnez	a2,80003ffc <__divti3+0x106>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1092
    80003ff6:	4885                	li	a7,1
    80003ff8:	02d8d8b3          	divu	a7,a7,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1094
    80003ffc:	03800713          	li	a4,56
