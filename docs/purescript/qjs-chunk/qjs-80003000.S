    80002000:	872e                	mv	a4,a1
    80002002:	00f766b3          	or	a3,a4,a5
    80002006:	2681                	sext.w	a3,a3
    80002008:	c2ad                	beqz	a3,8000206a <__ieee754_fmod+0x1d8>
    8000200a:	001006b7          	lui	a3,0x100
    8000200e:	00100637          	lui	a2,0x100
    80002012:	00d75c63          	bge	a4,a3,8000202a <__ieee754_fmod+0x198>
    80002016:	01f7d69b          	srliw	a3,a5,0x1f
    8000201a:	0017171b          	slliw	a4,a4,0x1
    8000201e:	9f35                	addw	a4,a4,a3
    80002020:	0017979b          	slliw	a5,a5,0x1
    80002024:	3ffd                	addiw	t6,t6,-1
    80002026:	fec748e3          	blt	a4,a2,80002016 <__ieee754_fmod+0x184>
    8000202a:	c0200693          	li	a3,-1022
    8000202e:	0edfdf63          	bge	t6,a3,8000212c <__ieee754_fmod+0x29a>
    80002032:	c0200693          	li	a3,-1022
    80002036:	41f686bb          	subw	a3,a3,t6
    8000203a:	4651                	li	a2,20
    8000203c:	12d64263          	blt	a2,a3,80002160 <__ieee754_fmod+0x2ce>
    80002040:	41ef8f9b          	addiw	t6,t6,1054
    80002044:	00d7d63b          	srlw	a2,a5,a3
    80002048:	01f717bb          	sllw	a5,a4,t6
    8000204c:	40d7573b          	sraw	a4,a4,a3
    80002050:	00ef6f33          	or	t5,t5,a4
    80002054:	8fd1                	or	a5,a5,a2
    80002056:	0007871b          	sext.w	a4,a5
    8000205a:	2f01                	sext.w	t5,t5
    8000205c:	02071793          	slli	a5,a4,0x20
    80002060:	9381                	srli	a5,a5,0x20
    80002062:	020f1713          	slli	a4,t5,0x20
    80002066:	8f5d                	or	a4,a4,a5
    80002068:	b5e9                	j	80001f32 <__ieee754_fmod+0xa0>
    8000206a:	01ff571b          	srliw	a4,t5,0x1f
    8000206e:	070e                	slli	a4,a4,0x3
    80002070:	00063797          	auipc	a5,0x63
    80002074:	b7878793          	addi	a5,a5,-1160 # 80064be8 <Zero>
    80002078:	97ba                	add	a5,a5,a4
    8000207a:	6398                	ld	a4,0(a5)
    8000207c:	f2070553          	fmv.d.x	fa0,a4
    80002080:	8082                	ret
    80002082:	c0200613          	li	a2,-1022
    80002086:	41f6063b          	subw	a2,a2,t6
    8000208a:	457d                	li	a0,31
    8000208c:	04c55a63          	bge	a0,a2,800020e0 <__ieee754_fmod+0x24e>
    80002090:	be200613          	li	a2,-1054
    80002094:	41f6063b          	subw	a2,a2,t6
    80002098:	41f585bb          	subw	a1,a1,t6
    8000209c:	00c6983b          	sllw	a6,a3,a2
    800020a0:	4681                	li	a3,0
    800020a2:	f181                	bnez	a1,80001fa2 <__ieee754_fmod+0x110>
    800020a4:	410705bb          	subw	a1,a4,a6
    800020a8:	863e                	mv	a2,a5
    800020aa:	bf81                	j	80001ffa <__ieee754_fmod+0x168>
    800020ac:	c0200613          	li	a2,-1022
    800020b0:	9e0d                	subw	a2,a2,a1
    800020b2:	477d                	li	a4,31
    800020b4:	00c74f63          	blt	a4,a2,800020d2 <__ieee754_fmod+0x240>
    800020b8:	41e5871b          	addiw	a4,a1,1054
    800020bc:	00e7d73b          	srlw	a4,a5,a4
    800020c0:	00c3133b          	sllw	t1,t1,a2
    800020c4:	00676333          	or	t1,a4,t1
    800020c8:	0003071b          	sext.w	a4,t1
    800020cc:	00c797bb          	sllw	a5,a5,a2
    800020d0:	bd4d                	j	80001f82 <__ieee754_fmod+0xf0>
    800020d2:	be200713          	li	a4,-1054
    800020d6:	9f0d                	subw	a4,a4,a1
    800020d8:	00e7973b          	sllw	a4,a5,a4
    800020dc:	4781                	li	a5,0
    800020de:	b555                	j	80001f82 <__ieee754_fmod+0xf0>
    800020e0:	41ef881b          	addiw	a6,t6,1054
    800020e4:	0106d83b          	srlw	a6,a3,a6
    800020e8:	00ce1e3b          	sllw	t3,t3,a2
    800020ec:	00c696bb          	sllw	a3,a3,a2
    800020f0:	01c86833          	or	a6,a6,t3
    800020f4:	2801                	sext.w	a6,a6
    800020f6:	40d7863b          	subw	a2,a5,a3
    800020fa:	b54d                	j	80001f9c <__ieee754_fmod+0x10a>
    800020fc:	00be171b          	slliw	a4,t3,0xb
    80002100:	c0200f93          	li	t6,-1022
    80002104:	e6e055e3          	blez	a4,80001f6e <__ieee754_fmod+0xdc>
    80002108:	0017171b          	slliw	a4,a4,0x1
    8000210c:	3ffd                	addiw	t6,t6,-1
    8000210e:	fee04de3          	bgtz	a4,80002108 <__ieee754_fmod+0x276>
    80002112:	bdb1                	j	80001f6e <__ieee754_fmod+0xdc>
    80002114:	00b3171b          	slliw	a4,t1,0xb
    80002118:	c0200593          	li	a1,-1022
    8000211c:	e2e052e3          	blez	a4,80001f40 <__ieee754_fmod+0xae>
    80002120:	0017171b          	slliw	a4,a4,0x1
    80002124:	35fd                	addiw	a1,a1,-1
    80002126:	fee04de3          	bgtz	a4,80002120 <__ieee754_fmod+0x28e>
    8000212a:	bd19                	j	80001f40 <__ieee754_fmod+0xae>
    8000212c:	fff006b7          	lui	a3,0xfff00
    80002130:	9f35                	addw	a4,a4,a3
    80002132:	3fff8f9b          	addiw	t6,t6,1023
    80002136:	00ef6733          	or	a4,t5,a4
    8000213a:	014f9f9b          	slliw	t6,t6,0x14
    8000213e:	01f76733          	or	a4,a4,t6
    80002142:	1782                	slli	a5,a5,0x20
    80002144:	9381                	srli	a5,a5,0x20
    80002146:	1702                	slli	a4,a4,0x20
    80002148:	8f5d                	or	a4,a4,a5
    8000214a:	b3e5                	j	80001f32 <__ieee754_fmod+0xa0>
    8000214c:	03cf5713          	srli	a4,t5,0x3c
    80002150:	8b21                	andi	a4,a4,8
    80002152:	00063797          	auipc	a5,0x63
    80002156:	a9678793          	addi	a5,a5,-1386 # 80064be8 <Zero>
    8000215a:	97ba                	add	a5,a5,a4
    8000215c:	6398                	ld	a4,0(a5)
    8000215e:	bbd1                	j	80001f32 <__ieee754_fmod+0xa0>
    80002160:	467d                	li	a2,31
    80002162:	00d64b63          	blt	a2,a3,80002178 <__ieee754_fmod+0x2e6>
    80002166:	41ef8f9b          	addiw	t6,t6,1054
    8000216a:	00d7d7bb          	srlw	a5,a5,a3
    8000216e:	01f7173b          	sllw	a4,a4,t6
    80002172:	8f5d                	or	a4,a4,a5
    80002174:	2701                	sext.w	a4,a4
    80002176:	b5dd                	j	8000205c <__ieee754_fmod+0x1ca>
    80002178:	be200793          	li	a5,-1054
    8000217c:	41f787bb          	subw	a5,a5,t6
    80002180:	40f7573b          	sraw	a4,a4,a5
    80002184:	bde1                	j	8000205c <__ieee754_fmod+0x1ca>

0000000080002186 <__ieee754_log>:
__ieee754_log():
    80002186:	e20507d3          	fmv.x.d	a5,fa0
    8000218a:	00100637          	lui	a2,0x100
    8000218e:	4207d713          	srai	a4,a5,0x20
    80002192:	0cc75a63          	bge	a4,a2,80002266 <__ieee754_log+0xe0>
    80002196:	02171693          	slli	a3,a4,0x21
    8000219a:	9285                	srli	a3,a3,0x21
    8000219c:	8edd                	or	a3,a3,a5
    8000219e:	2681                	sext.w	a3,a3
    800021a0:	18068863          	beqz	a3,80002330 <__ieee754_log+0x1aa>
    800021a4:	20074663          	bltz	a4,800023b0 <__ieee754_log+0x22a>
    800021a8:	00092717          	auipc	a4,0x92
    800021ac:	c2073787          	fld	fa5,-992(a4) # 80093dc8 <_erodata+0x256>
    800021b0:	12f577d3          	fmul.d	fa5,fa0,fa5
    800021b4:	7ff006b7          	lui	a3,0x7ff00
    800021b8:	fca00593          	li	a1,-54
    800021bc:	e20787d3          	fmv.x.d	a5,fa5
    800021c0:	4207d713          	srai	a4,a5,0x20
    800021c4:	0ad75663          	bge	a4,a3,80002270 <__ieee754_log+0xea>
    800021c8:	00100537          	lui	a0,0x100
    800021cc:	fff50893          	addi	a7,a0,-1 # fffff <asinh-0x7ff00001>
    800021d0:	000966b7          	lui	a3,0x96
    800021d4:	01177833          	and	a6,a4,a7
    800021d8:	f646869b          	addiw	a3,a3,-156
    800021dc:	00100637          	lui	a2,0x100
    800021e0:	00d806bb          	addw	a3,a6,a3
    800021e4:	8ef1                	and	a3,a3,a2
    800021e6:	3ff00637          	lui	a2,0x3ff00
    800021ea:	8e35                	xor	a2,a2,a3
    800021ec:	4147571b          	sraiw	a4,a4,0x14
    800021f0:	00c86633          	or	a2,a6,a2
    800021f4:	c017071b          	addiw	a4,a4,-1023
    800021f8:	9f2d                	addw	a4,a4,a1
    800021fa:	02061593          	slli	a1,a2,0x20
    800021fe:	567d                	li	a2,-1
    80002200:	9201                	srli	a2,a2,0x20
    80002202:	8ff1                	and	a5,a5,a2
    80002204:	00b7e633          	or	a2,a5,a1
    80002208:	f2060753          	fmv.d.x	fa4,a2
    8000220c:	0028051b          	addiw	a0,a6,2
    80002210:	01157533          	and	a0,a0,a7
    80002214:	4146d69b          	sraiw	a3,a3,0x14
    80002218:	9eb9                	addw	a3,a3,a4
    8000221a:	00092797          	auipc	a5,0x92
    8000221e:	9767b787          	fld	fa5,-1674(a5) # 80093b90 <_erodata+0x1e>
    80002222:	0005059b          	sext.w	a1,a0
    80002226:	4889                	li	a7,2
    80002228:	0af777d3          	fsub.d	fa5,fa4,fa5
    8000222c:	0006851b          	sext.w	a0,a3
    80002230:	04b8c563          	blt	a7,a1,8000227a <__ieee754_log+0xf4>
    80002234:	f2000753          	fmv.d.x	fa4,zero
    80002238:	a2e7a7d3          	feq.d	a5,fa5,fa4
    8000223c:	10078363          	beqz	a5,80002342 <__ieee754_log+0x1bc>
    80002240:	22e70553          	fmv.d	fa0,fa4
    80002244:	16050263          	beqz	a0,800023a8 <__ieee754_log+0x222>
    80002248:	d20687d3          	fcvt.d.w	fa5,a3
    8000224c:	00092797          	auipc	a5,0x92
    80002250:	bc47b507          	fld	fa0,-1084(a5) # 80093e10 <_erodata+0x29e>
    80002254:	00092797          	auipc	a5,0x92
    80002258:	bd47b707          	fld	fa4,-1068(a5) # 80093e28 <_erodata+0x2b6>
    8000225c:	12a7f553          	fmul.d	fa0,fa5,fa0
    80002260:	52e7f543          	fmadd.d	fa0,fa5,fa4,fa0
    80002264:	8082                	ret
    80002266:	7ff006b7          	lui	a3,0x7ff00
    8000226a:	4581                	li	a1,0
    8000226c:	f4d74ee3          	blt	a4,a3,800021c8 <__ieee754_log+0x42>
    80002270:	f20787d3          	fmv.d.x	fa5,a5
    80002274:	02f7f553          	fadd.d	fa0,fa5,fa5
    80002278:	8082                	ret
    8000227a:	00092797          	auipc	a5,0x92
    8000227e:	ad67b507          	fld	fa0,-1322(a5) # 80093d50 <_erodata+0x1de>
    80002282:	02a7f553          	fadd.d	fa0,fa5,fa0
    80002286:	00092797          	auipc	a5,0x92
    8000228a:	cf27b687          	fld	fa3,-782(a5) # 80093f78 <_erodata+0x406>
    8000228e:	00092797          	auipc	a5,0x92
    80002292:	cf27b207          	fld	ft4,-782(a5) # 80093f80 <_erodata+0x40e>
    80002296:	00092797          	auipc	a5,0x92
    8000229a:	cf27b107          	fld	ft2,-782(a5) # 80093f88 <_erodata+0x416>
    8000229e:	00092797          	auipc	a5,0x92
    800022a2:	cc27b707          	fld	fa4,-830(a5) # 80093f60 <_erodata+0x3ee>
    800022a6:	00092797          	auipc	a5,0x92
    800022aa:	cc27b187          	fld	ft3,-830(a5) # 80093f68 <_erodata+0x3f6>
    800022ae:	00092797          	auipc	a5,0x92
    800022b2:	ce27b007          	fld	ft0,-798(a5) # 80093f90 <_erodata+0x41e>
    800022b6:	1aa7f553          	fdiv.d	fa0,fa5,fa0
    800022ba:	00092797          	auipc	a5,0x92
    800022be:	cb67b087          	fld	ft1,-842(a5) # 80093f70 <_erodata+0x3fe>
    800022c2:	fff9f637          	lui	a2,0xfff9f
    800022c6:	0006c7b7          	lui	a5,0x6c
    800022ca:	b866061b          	addiw	a2,a2,-1146
    800022ce:	8517879b          	addiw	a5,a5,-1967
    800022d2:	0106063b          	addw	a2,a2,a6
    800022d6:	4107883b          	subw	a6,a5,a6
    800022da:	01066633          	or	a2,a2,a6
    800022de:	2601                	sext.w	a2,a2
    800022e0:	d20682d3          	fcvt.d.w	ft5,a3
    800022e4:	12a575d3          	fmul.d	fa1,fa0,fa0
    800022e8:	12b5f653          	fmul.d	fa2,fa1,fa1
    800022ec:	22d676c3          	fmadd.d	fa3,fa2,fa3,ft4
    800022f0:	1ae67743          	fmadd.d	fa4,fa2,fa4,ft3
    800022f4:	12c6f6c3          	fmadd.d	fa3,fa3,fa2,ft2
    800022f8:	0ac77743          	fmadd.d	fa4,fa4,fa2,ft1
    800022fc:	02c6f6c3          	fmadd.d	fa3,fa3,fa2,ft0
    80002300:	12b6f6d3          	fmul.d	fa3,fa3,fa1
    80002304:	6ac77743          	fmadd.d	fa4,fa4,fa2,fa3
    80002308:	06c05d63          	blez	a2,80002382 <__ieee754_log+0x1fc>
    8000230c:	00092797          	auipc	a5,0x92
    80002310:	af47b687          	fld	fa3,-1292(a5) # 80093e00 <_erodata+0x28e>
    80002314:	12d7f6d3          	fmul.d	fa3,fa5,fa3
    80002318:	12f6f6d3          	fmul.d	fa3,fa3,fa5
    8000231c:	02d77753          	fadd.d	fa4,fa4,fa3
    80002320:	12a77753          	fmul.d	fa4,fa4,fa0
    80002324:	ed49                	bnez	a0,800023be <__ieee754_log+0x238>
    80002326:	0ae6f553          	fsub.d	fa0,fa3,fa4
    8000232a:	0aa7f553          	fsub.d	fa0,fa5,fa0
    8000232e:	8082                	ret
    80002330:	f2000553          	fmv.d.x	fa0,zero
    80002334:	00092797          	auipc	a5,0x92
    80002338:	c1c7b787          	fld	fa5,-996(a5) # 80093f50 <_erodata+0x3de>
    8000233c:	1aa7f553          	fdiv.d	fa0,fa5,fa0
    80002340:	8082                	ret
    80002342:	00092797          	auipc	a5,0x92
    80002346:	c167b507          	fld	fa0,-1002(a5) # 80093f58 <_erodata+0x3e6>
    8000234a:	00092797          	auipc	a5,0x92
    8000234e:	ab67b687          	fld	fa3,-1354(a5) # 80093e00 <_erodata+0x28e>
    80002352:	12f7f753          	fmul.d	fa4,fa5,fa5
    80002356:	6aa7f54b          	fnmsub.d	fa0,fa5,fa0,fa3
    8000235a:	12a77753          	fmul.d	fa4,fa4,fa0
    8000235e:	c531                	beqz	a0,800023aa <__ieee754_log+0x224>
    80002360:	d20686d3          	fcvt.d.w	fa3,a3
    80002364:	00092797          	auipc	a5,0x92
    80002368:	aac7b507          	fld	fa0,-1364(a5) # 80093e10 <_erodata+0x29e>
    8000236c:	00092797          	auipc	a5,0x92
    80002370:	abc7b607          	fld	fa2,-1348(a5) # 80093e28 <_erodata+0x2b6>
    80002374:	72a6f54b          	fnmsub.d	fa0,fa3,fa0,fa4
    80002378:	0af57553          	fsub.d	fa0,fa0,fa5
    8000237c:	52c6f547          	fmsub.d	fa0,fa3,fa2,fa0
    80002380:	8082                	ret
    80002382:	0ae7f753          	fsub.d	fa4,fa5,fa4
    80002386:	12a77753          	fmul.d	fa4,fa4,fa0
    8000238a:	c105                	beqz	a0,800023aa <__ieee754_log+0x224>
    8000238c:	00092797          	auipc	a5,0x92
    80002390:	a847b507          	fld	fa0,-1404(a5) # 80093e10 <_erodata+0x29e>
    80002394:	72a2f54b          	fnmsub.d	fa0,ft5,fa0,fa4
    80002398:	00092797          	auipc	a5,0x92
    8000239c:	a907b707          	fld	fa4,-1392(a5) # 80093e28 <_erodata+0x2b6>
    800023a0:	0af57553          	fsub.d	fa0,fa0,fa5
    800023a4:	52e2f547          	fmsub.d	fa0,ft5,fa4,fa0
    800023a8:	8082                	ret
    800023aa:	0ae7f553          	fsub.d	fa0,fa5,fa4
    800023ae:	8082                	ret
    800023b0:	0aa577d3          	fsub.d	fa5,fa0,fa0
    800023b4:	f2000553          	fmv.d.x	fa0,zero
    800023b8:	1aa7f553          	fdiv.d	fa0,fa5,fa0
    800023bc:	8082                	ret
    800023be:	00092797          	auipc	a5,0x92
    800023c2:	a527b507          	fld	fa0,-1454(a5) # 80093e10 <_erodata+0x29e>
    800023c6:	72a2f543          	fmadd.d	fa0,ft5,fa0,fa4
    800023ca:	00092797          	auipc	a5,0x92
    800023ce:	a5e7b607          	fld	fa2,-1442(a5) # 80093e28 <_erodata+0x2b6>
    800023d2:	0aa6f553          	fsub.d	fa0,fa3,fa0
    800023d6:	0af57553          	fsub.d	fa0,fa0,fa5
    800023da:	52c2f547          	fmsub.d	fa0,ft5,fa2,fa0
    800023de:	8082                	ret

00000000800023e0 <__ieee754_log10>:
__ieee754_log10():
    800023e0:	e20507d3          	fmv.x.d	a5,fa0
    800023e4:	00100637          	lui	a2,0x100
    800023e8:	4207d713          	srai	a4,a5,0x20
    800023ec:	02c75f63          	bge	a4,a2,8000242a <__ieee754_log10+0x4a>
    800023f0:	02171693          	slli	a3,a4,0x21
    800023f4:	9285                	srli	a3,a3,0x21
    800023f6:	8edd                	or	a3,a3,a5
    800023f8:	2681                	sext.w	a3,a3
    800023fa:	c2cd                	beqz	a3,8000249c <__ieee754_log10+0xbc>
    800023fc:	0a074963          	bltz	a4,800024ae <__ieee754_log10+0xce>
    80002400:	00092717          	auipc	a4,0x92
    80002404:	9c873787          	fld	fa5,-1592(a4) # 80093dc8 <_erodata+0x256>
    80002408:	12f577d3          	fmul.d	fa5,fa0,fa5
    8000240c:	7ff00637          	lui	a2,0x7ff00
    80002410:	fca00593          	li	a1,-54
    80002414:	e20787d3          	fmv.x.d	a5,fa5
    80002418:	4207d713          	srai	a4,a5,0x20
    8000241c:	00c74c63          	blt	a4,a2,80002434 <__ieee754_log10+0x54>
    80002420:	f20787d3          	fmv.d.x	fa5,a5
    80002424:	02f7f553          	fadd.d	fa0,fa5,fa5
    80002428:	8082                	ret
    8000242a:	7ff00637          	lui	a2,0x7ff00
    8000242e:	4581                	li	a1,0
    80002430:	fec758e3          	bge	a4,a2,80002420 <__ieee754_log10+0x40>
    80002434:	4147569b          	sraiw	a3,a4,0x14
    80002438:	c016869b          	addiw	a3,a3,-1023
    8000243c:	9ead                	addw	a3,a3,a1
    8000243e:	01f6d59b          	srliw	a1,a3,0x1f
    80002442:	3ff00613          	li	a2,1023
    80002446:	9e0d                	subw	a2,a2,a1
    80002448:	1732                	slli	a4,a4,0x2c
    8000244a:	0146161b          	slliw	a2,a2,0x14
    8000244e:	9331                	srli	a4,a4,0x2c
    80002450:	8f51                	or	a4,a4,a2
    80002452:	567d                	li	a2,-1
    80002454:	9201                	srli	a2,a2,0x20
    80002456:	8ff1                	and	a5,a5,a2
    80002458:	1702                	slli	a4,a4,0x20
    8000245a:	8f5d                	or	a4,a4,a5
    8000245c:	f2070553          	fmv.d.x	fa0,a4
    80002460:	1101                	addi	sp,sp,-32
    80002462:	9ead                	addw	a3,a3,a1
    80002464:	a422                	fsd	fs0,8(sp)
    80002466:	ec06                	sd	ra,24(sp)
    80002468:	d2068453          	fcvt.d.w	fs0,a3
    8000246c:	d1bff0ef          	jal	ra,80002186 <__ieee754_log>
    80002470:	00092797          	auipc	a5,0x92
    80002474:	b287b707          	fld	fa4,-1240(a5) # 80093f98 <_erodata+0x426>
    80002478:	12e57553          	fmul.d	fa0,fa0,fa4
    8000247c:	00092797          	auipc	a5,0x92
    80002480:	b247b787          	fld	fa5,-1244(a5) # 80093fa0 <_erodata+0x42e>
    80002484:	60e2                	ld	ra,24(sp)
    80002486:	00092797          	auipc	a5,0x92
    8000248a:	b227b707          	fld	fa4,-1246(a5) # 80093fa8 <_erodata+0x436>
    8000248e:	52f47543          	fmadd.d	fa0,fs0,fa5,fa0
    80002492:	52e47543          	fmadd.d	fa0,fs0,fa4,fa0
    80002496:	2422                	fld	fs0,8(sp)
    80002498:	6105                	addi	sp,sp,32
    8000249a:	8082                	ret
    8000249c:	f20007d3          	fmv.d.x	fa5,zero
    800024a0:	00092797          	auipc	a5,0x92
    800024a4:	ab07b507          	fld	fa0,-1360(a5) # 80093f50 <_erodata+0x3de>
    800024a8:	1af57553          	fdiv.d	fa0,fa0,fa5
    800024ac:	8082                	ret
    800024ae:	0aa577d3          	fsub.d	fa5,fa0,fa0
    800024b2:	f2000553          	fmv.d.x	fa0,zero
    800024b6:	1aa7f553          	fdiv.d	fa0,fa5,fa0
    800024ba:	8082                	ret

00000000800024bc <__ieee754_pow>:
__ieee754_pow():
    800024bc:	711d                	addi	sp,sp,-96
    800024be:	e4a6                	sd	s1,72(sp)
    800024c0:	e20584d3          	fmv.x.d	s1,fa1
    800024c4:	800007b7          	lui	a5,0x80000
    800024c8:	ec5e                	sd	s7,24(sp)
    800024ca:	fff7c793          	not	a5,a5
    800024ce:	4204db93          	srai	s7,s1,0x20
    800024d2:	f852                	sd	s4,48(sp)
    800024d4:	0004871b          	sext.w	a4,s1
    800024d8:	00fbfa33          	and	s4,s7,a5
    800024dc:	e0ca                	sd	s2,64(sp)
    800024de:	ec86                	sd	ra,88(sp)
    800024e0:	e8a2                	sd	s0,80(sp)
    800024e2:	fc4e                	sd	s3,56(sp)
    800024e4:	f456                	sd	s5,40(sp)
    800024e6:	f05a                	sd	s6,32(sp)
    800024e8:	e862                	sd	s8,16(sp)
    800024ea:	a422                	fsd	fs0,8(sp)
    800024ec:	00ea66b3          	or	a3,s4,a4
    800024f0:	e2050953          	fmv.x.d	s2,fa0
    800024f4:	e2a9                	bnez	a3,80002536 <__ieee754_pow+0x7a>
    800024f6:	4785                	li	a5,1
    800024f8:	17ce                	slli	a5,a5,0x33
    800024fa:	00f947b3          	xor	a5,s2,a5
    800024fe:	577d                	li	a4,-1
    80002500:	0786                	slli	a5,a5,0x1
    80002502:	1752                	slli	a4,a4,0x34
    80002504:	06f77463          	bgeu	a4,a5,8000256c <__ieee754_pow+0xb0>
    80002508:	f20907d3          	fmv.d.x	fa5,s2
    8000250c:	f2048753          	fmv.d.x	fa4,s1
    80002510:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80002514:	e2078753          	fmv.x.d	a4,fa5
    80002518:	60e6                	ld	ra,88(sp)
    8000251a:	6446                	ld	s0,80(sp)
    8000251c:	64a6                	ld	s1,72(sp)
    8000251e:	6906                	ld	s2,64(sp)
    80002520:	79e2                	ld	s3,56(sp)
    80002522:	7a42                	ld	s4,48(sp)
    80002524:	7aa2                	ld	s5,40(sp)
    80002526:	7b02                	ld	s6,32(sp)
    80002528:	6be2                	ld	s7,24(sp)
    8000252a:	6c42                	ld	s8,16(sp)
    8000252c:	2422                	fld	fs0,8(sp)
    8000252e:	f2070553          	fmv.d.x	fa0,a4
    80002532:	6125                	addi	sp,sp,96
    80002534:	8082                	ret
    80002536:	42095c13          	srai	s8,s2,0x20
    8000253a:	00fc7433          	and	s0,s8,a5
    8000253e:	7ff00637          	lui	a2,0x7ff00
    80002542:	8ae2                	mv	s5,s8
    80002544:	0009099b          	sext.w	s3,s2
    80002548:	02865763          	bge	a2,s0,80002576 <__ieee754_pow+0xba>
    8000254c:	c01007b7          	lui	a5,0xc0100
    80002550:	018787bb          	addw	a5,a5,s8
    80002554:	00f9e7b3          	or	a5,s3,a5
    80002558:	2781                	sext.w	a5,a5
    8000255a:	f7dd                	bnez	a5,80002508 <__ieee754_pow+0x4c>
    8000255c:	4785                	li	a5,1
    8000255e:	17ce                	slli	a5,a5,0x33
    80002560:	8fa5                	xor	a5,a5,s1
    80002562:	577d                	li	a4,-1
    80002564:	0786                	slli	a5,a5,0x1
    80002566:	1752                	slli	a4,a4,0x34
    80002568:	faf760e3          	bltu	a4,a5,80002508 <__ieee754_pow+0x4c>
    8000256c:	00091717          	auipc	a4,0x91
    80002570:	62473703          	ld	a4,1572(a4) # 80093b90 <_erodata+0x1e>
    80002574:	b755                	j	80002518 <__ieee754_pow+0x5c>
    80002576:	08c40963          	beq	s0,a2,80002608 <__ieee754_pow+0x14c>
    8000257a:	7ff006b7          	lui	a3,0x7ff00
    8000257e:	fd46c7e3          	blt	a3,s4,8000254c <__ieee754_pow+0x90>
    80002582:	14da0963          	beq	s4,a3,800026d4 <__ieee754_pow+0x218>
    80002586:	4b01                	li	s6,0
    80002588:	080c4363          	bltz	s8,8000260e <__ieee754_pow+0x152>
    8000258c:	e30d                	bnez	a4,800025ae <__ieee754_pow+0xf2>
    8000258e:	7ff00737          	lui	a4,0x7ff00
    80002592:	14ea0463          	beq	s4,a4,800026da <__ieee754_pow+0x21e>
    80002596:	3ff00737          	lui	a4,0x3ff00
    8000259a:	16ea0663          	beq	s4,a4,80002706 <__ieee754_pow+0x24a>
    8000259e:	400007b7          	lui	a5,0x40000
    800025a2:	62fb8963          	beq	s7,a5,80002bd4 <__ieee754_pow+0x718>
    800025a6:	3fe007b7          	lui	a5,0x3fe00
    800025aa:	52fb8163          	beq	s7,a5,80002acc <__ieee754_pow+0x610>
    800025ae:	f2090553          	fmv.d.x	fa0,s2
    800025b2:	b80fe0ef          	jal	ra,80000932 <fabs>
    800025b6:	e2050753          	fmv.x.d	a4,fa0
    800025ba:	08098d63          	beqz	s3,80002654 <__ieee754_pow+0x198>
    800025be:	01fada9b          	srliw	s5,s5,0x1f
    800025c2:	3afd                	addiw	s5,s5,-1
    800025c4:	015b66b3          	or	a3,s6,s5
    800025c8:	2681                	sext.w	a3,a3
    800025ca:	14068c63          	beqz	a3,80002722 <__ieee754_pow+0x266>
    800025ce:	41e007b7          	lui	a5,0x41e00
    800025d2:	1747d163          	bge	a5,s4,80002734 <__ieee754_pow+0x278>
    800025d6:	43f007b7          	lui	a5,0x43f00
    800025da:	5747dc63          	bge	a5,s4,80002b52 <__ieee754_pow+0x696>
    800025de:	3ff007b7          	lui	a5,0x3ff00
    800025e2:	0af45663          	bge	s0,a5,8000268e <__ieee754_pow+0x1d2>
    800025e6:	0a0bc663          	bltz	s7,80002692 <__ieee754_pow+0x1d6>
    800025ea:	4501                	li	a0,0
    800025ec:	6446                	ld	s0,80(sp)
    800025ee:	60e6                	ld	ra,88(sp)
    800025f0:	64a6                	ld	s1,72(sp)
    800025f2:	6906                	ld	s2,64(sp)
    800025f4:	79e2                	ld	s3,56(sp)
    800025f6:	7a42                	ld	s4,48(sp)
    800025f8:	7aa2                	ld	s5,40(sp)
    800025fa:	7b02                	ld	s6,32(sp)
    800025fc:	6be2                	ld	s7,24(sp)
    800025fe:	6c42                	ld	s8,16(sp)
    80002600:	2422                	fld	fs0,8(sp)
    80002602:	6125                	addi	sp,sp,96
    80002604:	67e0106f          	j	80003c82 <__math_uflow>
    80002608:	f00990e3          	bnez	s3,80002508 <__ieee754_pow+0x4c>
    8000260c:	b7bd                	j	8000257a <__ieee754_pow+0xbe>
    8000260e:	434007b7          	lui	a5,0x43400
    80002612:	0efa5663          	bge	s4,a5,800026fe <__ieee754_pow+0x242>
    80002616:	3ff007b7          	lui	a5,0x3ff00
    8000261a:	02fa4363          	blt	s4,a5,80002640 <__ieee754_pow+0x184>
    8000261e:	414a579b          	sraiw	a5,s4,0x14
    80002622:	c017861b          	addiw	a2,a5,-1023
    80002626:	46d1                	li	a3,20
    80002628:	5cc6d563          	bge	a3,a2,80002bf2 <__ieee754_pow+0x736>
    8000262c:	03400693          	li	a3,52
    80002630:	40c687bb          	subw	a5,a3,a2
    80002634:	00f756bb          	srlw	a3,a4,a5
    80002638:	00f697bb          	sllw	a5,a3,a5
    8000263c:	08e78563          	beq	a5,a4,800026c6 <__ieee754_pow+0x20a>
    80002640:	db39                	beqz	a4,80002596 <__ieee754_pow+0xda>
    80002642:	b7b5                	j	800025ae <__ieee754_pow+0xf2>
    80002644:	f2090553          	fmv.d.x	fa0,s2
    80002648:	aeafe0ef          	jal	ra,80000932 <fabs>
    8000264c:	e2050753          	fmv.x.d	a4,fa0
    80002650:	0c099963          	bnez	s3,80002722 <__ieee754_pow+0x266>
    80002654:	c801                	beqz	s0,80002664 <__ieee754_pow+0x1a8>
    80002656:	022c1793          	slli	a5,s8,0x22
    8000265a:	9389                	srli	a5,a5,0x22
    8000265c:	3ff006b7          	lui	a3,0x3ff00
    80002660:	f4d79fe3          	bne	a5,a3,800025be <__ieee754_pow+0x102>
    80002664:	040bc663          	bltz	s7,800026b0 <__ieee754_pow+0x1f4>
    80002668:	ea0c58e3          	bgez	s8,80002518 <__ieee754_pow+0x5c>
    8000266c:	c01007b7          	lui	a5,0xc0100
    80002670:	9fa1                	addw	a5,a5,s0
    80002672:	00fb67b3          	or	a5,s6,a5
    80002676:	2781                	sext.w	a5,a5
    80002678:	58079d63          	bnez	a5,80002c12 <__ieee754_pow+0x756>
    8000267c:	f20707d3          	fmv.d.x	fa5,a4
    80002680:	0af7f7d3          	fsub.d	fa5,fa5,fa5
    80002684:	1af7f7d3          	fdiv.d	fa5,fa5,fa5
    80002688:	e2078753          	fmv.x.d	a4,fa5
    8000268c:	b571                	j	80002518 <__ieee754_pow+0x5c>
    8000268e:	f5705ee3          	blez	s7,800025ea <__ieee754_pow+0x12e>
    80002692:	4501                	li	a0,0
    80002694:	6446                	ld	s0,80(sp)
    80002696:	60e6                	ld	ra,88(sp)
    80002698:	64a6                	ld	s1,72(sp)
    8000269a:	6906                	ld	s2,64(sp)
    8000269c:	79e2                	ld	s3,56(sp)
    8000269e:	7a42                	ld	s4,48(sp)
    800026a0:	7aa2                	ld	s5,40(sp)
    800026a2:	7b02                	ld	s6,32(sp)
    800026a4:	6be2                	ld	s7,24(sp)
    800026a6:	6c42                	ld	s8,16(sp)
    800026a8:	2422                	fld	fs0,8(sp)
    800026aa:	6125                	addi	sp,sp,96
    800026ac:	5ea0106f          	j	80003c96 <__math_oflow>
    800026b0:	f2070753          	fmv.d.x	fa4,a4
    800026b4:	00091797          	auipc	a5,0x91
    800026b8:	4dc7b787          	fld	fa5,1244(a5) # 80093b90 <_erodata+0x1e>
    800026bc:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
    800026c0:	e2078753          	fmv.x.d	a4,fa5
    800026c4:	b755                	j	80002668 <__ieee754_pow+0x1ac>
    800026c6:	8a85                	andi	a3,a3,1
    800026c8:	4b09                	li	s6,2
    800026ca:	40db0b3b          	subw	s6,s6,a3
    800026ce:	ec0704e3          	beqz	a4,80002596 <__ieee754_pow+0xda>
    800026d2:	bdf1                	j	800025ae <__ieee754_pow+0xf2>
    800026d4:	ea0709e3          	beqz	a4,80002586 <__ieee754_pow+0xca>
    800026d8:	bd95                	j	8000254c <__ieee754_pow+0x90>
    800026da:	c01007b7          	lui	a5,0xc0100
    800026de:	9fa1                	addw	a5,a5,s0
    800026e0:	00f9e7b3          	or	a5,s3,a5
    800026e4:	2781                	sext.w	a5,a5
    800026e6:	e80783e3          	beqz	a5,8000256c <__ieee754_pow+0xb0>
    800026ea:	3ff007b7          	lui	a5,0x3ff00
    800026ee:	00000713          	li	a4,0
    800026f2:	42f44b63          	blt	s0,a5,80002b28 <__ieee754_pow+0x66c>
    800026f6:	e20bc1e3          	bltz	s7,80002518 <__ieee754_pow+0x5c>
    800026fa:	8726                	mv	a4,s1
    800026fc:	bd31                	j	80002518 <__ieee754_pow+0x5c>
    800026fe:	4b09                	li	s6,2
    80002700:	e80707e3          	beqz	a4,8000258e <__ieee754_pow+0xd2>
    80002704:	b56d                	j	800025ae <__ieee754_pow+0xf2>
    80002706:	874a                	mv	a4,s2
    80002708:	e00bd8e3          	bgez	s7,80002518 <__ieee754_pow+0x5c>
    8000270c:	f2090753          	fmv.d.x	fa4,s2
    80002710:	00091797          	auipc	a5,0x91
    80002714:	4807b787          	fld	fa5,1152(a5) # 80093b90 <_erodata+0x1e>
    80002718:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
    8000271c:	e2078753          	fmv.x.d	a4,fa5
    80002720:	bbe5                	j	80002518 <__ieee754_pow+0x5c>
    80002722:	f20907d3          	fmv.d.x	fa5,s2
    80002726:	0af7f7d3          	fsub.d	fa5,fa5,fa5
    8000272a:	1af7f7d3          	fdiv.d	fa5,fa5,fa5
    8000272e:	e2078753          	fmv.x.d	a4,fa5
    80002732:	b3dd                	j	80002518 <__ieee754_pow+0x5c>
    80002734:	7ff007b7          	lui	a5,0x7ff00
    80002738:	00fc77b3          	and	a5,s8,a5
    8000273c:	4681                	li	a3,0
    8000273e:	ef99                	bnez	a5,8000275c <__ieee754_pow+0x2a0>
    80002740:	f2070753          	fmv.d.x	fa4,a4
    80002744:	00092797          	auipc	a5,0x92
    80002748:	8947b787          	fld	fa5,-1900(a5) # 80093fd8 <_erodata+0x466>
    8000274c:	fcb00693          	li	a3,-53
    80002750:	12f777d3          	fmul.d	fa5,fa4,fa5
    80002754:	e2078753          	fmv.x.d	a4,fa5
    80002758:	42075413          	srai	s0,a4,0x20
    8000275c:	4144561b          	sraiw	a2,s0,0x14
    80002760:	c016061b          	addiw	a2,a2,-1023
    80002764:	02c41793          	slli	a5,s0,0x2c
    80002768:	0003a537          	lui	a0,0x3a
    8000276c:	00d605bb          	addw	a1,a2,a3
    80002770:	93b1                	srli	a5,a5,0x2c
    80002772:	3ff006b7          	lui	a3,0x3ff00
    80002776:	88e50513          	addi	a0,a0,-1906 # 3988e <asinh-0x7ffc6772>
    8000277a:	8edd                	or	a3,a3,a5
    8000277c:	3af55f63          	bge	a0,a5,80002b3a <__ieee754_pow+0x67e>
    80002780:	000bb537          	lui	a0,0xbb
    80002784:	67950513          	addi	a0,a0,1657 # bb679 <asinh-0x7ff44987>
    80002788:	48f55f63          	bge	a0,a5,80002c26 <__ieee754_pow+0x76a>
    8000278c:	f20002d3          	fmv.d.x	ft5,zero
    80002790:	00091797          	auipc	a5,0x91
    80002794:	4007b507          	fld	fa0,1024(a5) # 80093b90 <_erodata+0x1e>
    80002798:	22a50753          	fmv.d	fa4,fa0
    8000279c:	22528653          	fmv.d	fa2,ft5
    800027a0:	fff007b7          	lui	a5,0xfff00
    800027a4:	2585                	addiw	a1,a1,1
    800027a6:	9ebd                	addw	a3,a3,a5
    800027a8:	4801                	li	a6,0
    800027aa:	557d                	li	a0,-1
    800027ac:	02055793          	srli	a5,a0,0x20
    800027b0:	02069613          	slli	a2,a3,0x20
    800027b4:	8ff9                	and	a5,a5,a4
    800027b6:	8fd1                	or	a5,a5,a2
    800027b8:	f20787d3          	fmv.d.x	fa5,a5
    800027bc:	20000737          	lui	a4,0x20000
    800027c0:	4016d69b          	sraiw	a3,a3,0x1
    800027c4:	02f771d3          	fadd.d	ft3,fa4,fa5
    800027c8:	0ae7f253          	fsub.d	ft4,fa5,fa4
    800027cc:	00080637          	lui	a2,0x80
    800027d0:	8ed9                	or	a3,a3,a4
    800027d2:	9eb1                	addw	a3,a3,a2
    800027d4:	010686bb          	addw	a3,a3,a6
    800027d8:	1682                	slli	a3,a3,0x20
    800027da:	1a3571d3          	fdiv.d	ft3,fa0,ft3
    800027de:	f20687d3          	fmv.d.x	fa5,a3
    800027e2:	00091717          	auipc	a4,0x91
    800027e6:	7fe73587          	fld	fa1,2046(a4) # 80093fe0 <_erodata+0x46e>
    800027ea:	00091717          	auipc	a4,0x91
    800027ee:	7fe73687          	fld	fa3,2046(a4) # 80093fe8 <_erodata+0x476>
    800027f2:	d20580d3          	fcvt.d.w	ft1,a1
    800027f6:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    800027fa:	02051713          	slli	a4,a0,0x20
    800027fe:	00091617          	auipc	a2,0x91
    80002802:	66263107          	fld	ft2,1634(a2) # 80093e60 <_erodata+0x2ee>
    80002806:	00091617          	auipc	a2,0x91
    8000280a:	7ea63f07          	fld	ft10,2026(a2) # 80093ff0 <_erodata+0x47e>
    8000280e:	00091617          	auipc	a2,0x91
    80002812:	7ea63e87          	fld	ft9,2026(a2) # 80093ff8 <_erodata+0x486>
    80002816:	00091617          	auipc	a2,0x91
    8000281a:	7ea63e07          	fld	ft8,2026(a2) # 80094000 <_erodata+0x48e>
    8000281e:	00091617          	auipc	a2,0x91
    80002822:	7ea63887          	fld	fa7,2026(a2) # 80094008 <_erodata+0x496>
    80002826:	f2078753          	fmv.d.x	fa4,a5
    8000282a:	f2068353          	fmv.d.x	ft6,a3
    8000282e:	00091797          	auipc	a5,0x91
    80002832:	7f27b387          	fld	ft7,2034(a5) # 80094020 <_erodata+0x4ae>
    80002836:	0af777d3          	fsub.d	fa5,fa4,fa5
    8000283a:	00091797          	auipc	a5,0x91
    8000283e:	7d67b807          	fld	fa6,2006(a5) # 80094010 <_erodata+0x49e>
    80002842:	00091797          	auipc	a5,0x91
    80002846:	7d67b707          	fld	fa4,2006(a5) # 80094018 <_erodata+0x4a6>
    8000284a:	12327453          	fmul.d	fs0,ft4,ft3
    8000284e:	12847053          	fmul.d	ft0,fs0,fs0
    80002852:	e20405d3          	fmv.x.d	a1,fs0
    80002856:	00b77633          	and	a2,a4,a1
    8000285a:	f2060453          	fmv.d.x	fs0,a2
    8000285e:	6ab076c3          	fmadd.d	fa3,ft0,fa1,fa3
    80002862:	2264724b          	fnmsub.d	ft4,fs0,ft6,ft4
    80002866:	f2058453          	fmv.d.x	fs0,a1
    8000286a:	f2060353          	fmv.d.x	ft6,a2
    8000286e:	120075d3          	fmul.d	fa1,ft0,ft0
    80002872:	02647353          	fadd.d	ft6,fs0,ft6
    80002876:	f206f6c3          	fmadd.d	fa3,fa3,ft0,ft10
    8000287a:	f2060453          	fmv.d.x	fs0,a2
    8000287e:	22f477cb          	fnmsub.d	fa5,fs0,fa5,ft4
    80002882:	12847fc3          	fmadd.d	ft11,fs0,fs0,ft2
    80002886:	ea06f6c3          	fmadd.d	fa3,fa3,ft0,ft9
    8000288a:	1237f7d3          	fmul.d	fa5,fa5,ft3
    8000288e:	e206f6c3          	fmadd.d	fa3,fa3,ft0,ft8
    80002892:	12f37353          	fmul.d	ft6,ft6,fa5
    80002896:	8a06f6c3          	fmadd.d	fa3,fa3,ft0,fa7
    8000289a:	32d5f6c3          	fmadd.d	fa3,fa1,fa3,ft6
    8000289e:	02dff5d3          	fadd.d	fa1,ft11,fa3
    800028a2:	e20586d3          	fmv.x.d	a3,fa1
    800028a6:	8ef9                	and	a3,a3,a4
    800028a8:	f20685d3          	fmv.d.x	fa1,a3
    800028ac:	0a25f153          	fsub.d	ft2,fa1,ft2
    800028b0:	f20585d3          	fmv.d.x	fa1,a1
    800028b4:	1284714b          	fnmsub.d	ft2,fs0,fs0,ft2
    800028b8:	0a26f6d3          	fsub.d	fa3,fa3,ft2
    800028bc:	12b6f6d3          	fmul.d	fa3,fa3,fa1
    800028c0:	f20685d3          	fmv.d.x	fa1,a3
    800028c4:	6ab7f7c3          	fmadd.d	fa5,fa5,fa1,fa3
    800028c8:	7a85f6c3          	fmadd.d	fa3,fa1,fs0,fa5
    800028cc:	e20687d3          	fmv.x.d	a5,fa3
    800028d0:	f20606d3          	fmv.d.x	fa3,a2
    800028d4:	8ff9                	and	a5,a5,a4
    800028d6:	f2078453          	fmv.d.x	fs0,a5
    800028da:	42b6f6cb          	fnmsub.d	fa3,fa3,fa1,fs0
    800028de:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    800028e2:	1307f7d3          	fmul.d	fa5,fa5,fa6
    800028e6:	7a8777c3          	fmadd.d	fa5,fa4,fs0,fa5
    800028ea:	02c7f7d3          	fadd.d	fa5,fa5,fa2
    800028ee:	7a83f743          	fmadd.d	fa4,ft7,fs0,fa5
    800028f2:	02577753          	fadd.d	fa4,fa4,ft5
    800028f6:	02177753          	fadd.d	fa4,fa4,ft1
    800028fa:	e20706d3          	fmv.x.d	a3,fa4
    800028fe:	8f75                	and	a4,a4,a3
    80002900:	f2070753          	fmv.d.x	fa4,a4
    80002904:	f20706d3          	fmv.d.x	fa3,a4
    80002908:	0a177653          	fsub.d	fa2,fa4,ft1
    8000290c:	0a567653          	fsub.d	fa2,fa2,ft5
    80002910:	6274764b          	fnmsub.d	fa2,fs0,ft7,fa2
    80002914:	0ac7f653          	fsub.d	fa2,fa5,fa2
    80002918:	fffb079b          	addiw	a5,s6,-1
    8000291c:	0157e7b3          	or	a5,a5,s5
    80002920:	2781                	sext.w	a5,a5
    80002922:	22a50453          	fmv.d	fs0,fa0
    80002926:	e789                	bnez	a5,80002930 <__ieee754_pow+0x474>
    80002928:	00091797          	auipc	a5,0x91
    8000292c:	2607b407          	fld	fs0,608(a5) # 80093b88 <_erodata+0x16>
    80002930:	0204d793          	srli	a5,s1,0x20
    80002934:	1782                	slli	a5,a5,0x20
    80002936:	f2078753          	fmv.d.x	fa4,a5
    8000293a:	f20487d3          	fmv.d.x	fa5,s1
    8000293e:	40900737          	lui	a4,0x40900
    80002942:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80002946:	f2048753          	fmv.d.x	fa4,s1
    8000294a:	12e67653          	fmul.d	fa2,fa2,fa4
    8000294e:	f2078753          	fmv.d.x	fa4,a5
    80002952:	12e6f753          	fmul.d	fa4,fa3,fa4
    80002956:	62d7f7c3          	fmadd.d	fa5,fa5,fa3,fa2
    8000295a:	02e7f6d3          	fadd.d	fa3,fa5,fa4
    8000295e:	e2068653          	fmv.x.d	a2,fa3
    80002962:	42065813          	srai	a6,a2,0x20
    80002966:	0006069b          	sext.w	a3,a2
    8000296a:	18e84263          	blt	a6,a4,80002aee <__ieee754_pow+0x632>
    8000296e:	bf7007b7          	lui	a5,0xbf700
    80002972:	010787bb          	addw	a5,a5,a6
    80002976:	8fd5                	or	a5,a5,a3
    80002978:	2781                	sext.w	a5,a5
    8000297a:	2c079963          	bnez	a5,80002c4c <__ieee754_pow+0x790>
    8000297e:	f2060653          	fmv.d.x	fa2,a2
    80002982:	00091797          	auipc	a5,0x91
    80002986:	6a67b687          	fld	fa3,1702(a5) # 80094028 <_erodata+0x4b6>
    8000298a:	02d7f6d3          	fadd.d	fa3,fa5,fa3
    8000298e:	0ae67653          	fsub.d	fa2,fa2,fa4
    80002992:	a2d617d3          	flt.d	a5,fa2,fa3
    80002996:	2a079b63          	bnez	a5,80002c4c <__ieee754_pow+0x790>
    8000299a:	4148579b          	sraiw	a5,a6,0x14
    8000299e:	7ff7f793          	andi	a5,a5,2047
    800029a2:	001005b7          	lui	a1,0x100
    800029a6:	c027879b          	addiw	a5,a5,-1022
    800029aa:	40f5d7bb          	sraw	a5,a1,a5
    800029ae:	010787bb          	addw	a5,a5,a6
    800029b2:	4147d71b          	sraiw	a4,a5,0x14
    800029b6:	7ff77713          	andi	a4,a4,2047
    800029ba:	c017071b          	addiw	a4,a4,-1023
    800029be:	fff5861b          	addiw	a2,a1,-1
    800029c2:	02c79693          	slli	a3,a5,0x2c
    800029c6:	40e6563b          	sraw	a2,a2,a4
    800029ca:	92b1                	srli	a3,a3,0x2c
    800029cc:	8ecd                	or	a3,a3,a1
    800029ce:	fff64613          	not	a2,a2
    800029d2:	45d1                	li	a1,20
    800029d4:	40e5873b          	subw	a4,a1,a4
    800029d8:	8ff1                	and	a5,a5,a2
    800029da:	40e6d53b          	sraw	a0,a3,a4
    800029de:	1782                	slli	a5,a5,0x20
    800029e0:	00085463          	bgez	a6,800029e8 <__ieee754_pow+0x52c>
    800029e4:	40a0053b          	negw	a0,a0
    800029e8:	f20786d3          	fmv.d.x	fa3,a5
    800029ec:	0145159b          	slliw	a1,a0,0x14
    800029f0:	0ad77753          	fsub.d	fa4,fa4,fa3
    800029f4:	02e7f6d3          	fadd.d	fa3,fa5,fa4
    800029f8:	e2068653          	fmv.x.d	a2,fa3
    800029fc:	56fd                	li	a3,-1
    800029fe:	02069793          	slli	a5,a3,0x20
    80002a02:	8e7d                	and	a2,a2,a5
    80002a04:	f20606d3          	fmv.d.x	fa3,a2
    80002a08:	00091797          	auipc	a5,0x91
    80002a0c:	6287b607          	fld	fa2,1576(a5) # 80094030 <_erodata+0x4be>
    80002a10:	00091797          	auipc	a5,0x91
    80002a14:	3387b587          	fld	fa1,824(a5) # 80093d48 <_erodata+0x1d6>
    80002a18:	0ae6f753          	fsub.d	fa4,fa3,fa4
    80002a1c:	12d67653          	fmul.d	fa2,fa2,fa3
    80002a20:	00091797          	auipc	a5,0x91
    80002a24:	6187b007          	fld	ft0,1560(a5) # 80094038 <_erodata+0x4c6>
    80002a28:	00091797          	auipc	a5,0x91
    80002a2c:	4f87b687          	fld	fa3,1272(a5) # 80093f20 <_erodata+0x3ae>
    80002a30:	00091797          	auipc	a5,0x91
    80002a34:	4f87b287          	fld	ft5,1272(a5) # 80093f28 <_erodata+0x3b6>
    80002a38:	00091797          	auipc	a5,0x91
    80002a3c:	4f87b207          	fld	ft4,1272(a5) # 80093f30 <_erodata+0x3be>
    80002a40:	00091797          	auipc	a5,0x91
    80002a44:	4f87b187          	fld	ft3,1272(a5) # 80093f38 <_erodata+0x3c6>
    80002a48:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80002a4c:	f2060753          	fmv.d.x	fa4,a2
    80002a50:	00091797          	auipc	a5,0x91
    80002a54:	4f07b107          	fld	ft2,1264(a5) # 80093f40 <_erodata+0x3ce>
    80002a58:	00091797          	auipc	a5,0x91
    80002a5c:	2f87b087          	fld	ft1,760(a5) # 80093d50 <_erodata+0x1de>
    80002a60:	62b7f7c3          	fmadd.d	fa5,fa5,fa1,fa2
    80002a64:	7ae07643          	fmadd.d	fa2,ft0,fa4,fa5
    80002a68:	12c675d3          	fmul.d	fa1,fa2,fa2
    80002a6c:	6207704b          	fnmsub.d	ft0,fa4,ft0,fa2
    80002a70:	2ad5f743          	fmadd.d	fa4,fa1,fa3,ft5
    80002a74:	0a07f7d3          	fsub.d	fa5,fa5,ft0
    80002a78:	22b77743          	fmadd.d	fa4,fa4,fa1,ft4
    80002a7c:	7af677c3          	fmadd.d	fa5,fa2,fa5,fa5
    80002a80:	1ab77743          	fmadd.d	fa4,fa4,fa1,ft3
    80002a84:	12b77743          	fmadd.d	fa4,fa4,fa1,ft2
    80002a88:	62b7774b          	fnmsub.d	fa4,fa4,fa1,fa2
    80002a8c:	12e676d3          	fmul.d	fa3,fa2,fa4
    80002a90:	0a177753          	fsub.d	fa4,fa4,ft1
    80002a94:	1ae6f753          	fdiv.d	fa4,fa3,fa4
    80002a98:	0af777d3          	fsub.d	fa5,fa4,fa5
    80002a9c:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
    80002aa0:	0af577d3          	fsub.d	fa5,fa0,fa5
    80002aa4:	e20787d3          	fmv.x.d	a5,fa5
    80002aa8:	4207d613          	srai	a2,a5,0x20
    80002aac:	9db1                	addw	a1,a1,a2
    80002aae:	4145d71b          	sraiw	a4,a1,0x14
    80002ab2:	1ae05263          	blez	a4,80002c56 <__ieee754_pow+0x79a>
    80002ab6:	9281                	srli	a3,a3,0x20
    80002ab8:	1582                	slli	a1,a1,0x20
    80002aba:	8ff5                	and	a5,a5,a3
    80002abc:	8fcd                	or	a5,a5,a1
    80002abe:	f20787d3          	fmv.d.x	fa5,a5
    80002ac2:	1287f7d3          	fmul.d	fa5,fa5,fs0
    80002ac6:	e2078753          	fmv.x.d	a4,fa5
    80002aca:	b4b9                	j	80002518 <__ieee754_pow+0x5c>
    80002acc:	ae0c41e3          	bltz	s8,800025ae <__ieee754_pow+0xf2>
    80002ad0:	6446                	ld	s0,80(sp)
    80002ad2:	60e6                	ld	ra,88(sp)
    80002ad4:	64a6                	ld	s1,72(sp)
    80002ad6:	79e2                	ld	s3,56(sp)
    80002ad8:	7a42                	ld	s4,48(sp)
    80002ada:	7aa2                	ld	s5,40(sp)
    80002adc:	7b02                	ld	s6,32(sp)
    80002ade:	6be2                	ld	s7,24(sp)
    80002ae0:	6c42                	ld	s8,16(sp)
    80002ae2:	2422                	fld	fs0,8(sp)
    80002ae4:	f2090553          	fmv.d.x	fa0,s2
    80002ae8:	6906                	ld	s2,64(sp)
    80002aea:	6125                	addi	sp,sp,96
    80002aec:	a36d                	j	80003096 <__ieee754_sqrt>
    80002aee:	02181793          	slli	a5,a6,0x21
    80002af2:	4090d737          	lui	a4,0x4090d
    80002af6:	9385                	srli	a5,a5,0x21
    80002af8:	bff70713          	addi	a4,a4,-1025 # 4090cbff <asinh-0x3f6f3401>
    80002afc:	0ef75363          	bge	a4,a5,80002be2 <__ieee754_pow+0x726>
    80002b00:	3f6f37b7          	lui	a5,0x3f6f3
    80002b04:	4007879b          	addiw	a5,a5,1024
    80002b08:	00f807bb          	addw	a5,a6,a5
    80002b0c:	8fd5                	or	a5,a5,a3
    80002b0e:	2781                	sext.w	a5,a5
    80002b10:	e799                	bnez	a5,80002b1e <__ieee754_pow+0x662>
    80002b12:	0ae6f6d3          	fsub.d	fa3,fa3,fa4
    80002b16:	a2d787d3          	fle.d	a5,fa5,fa3
    80002b1a:	e80780e3          	beqz	a5,8000299a <__ieee754_pow+0x4de>
    80002b1e:	f20007d3          	fmv.d.x	fa5,zero
    80002b22:	a2f41553          	flt.d	a0,fs0,fa5
    80002b26:	b4d9                	j	800025ec <__ieee754_pow+0x130>
    80002b28:	9e0bd8e3          	bgez	s7,80002518 <__ieee754_pow+0x5c>
    80002b2c:	f20487d3          	fmv.d.x	fa5,s1
    80002b30:	22f797d3          	fneg.d	fa5,fa5
    80002b34:	e2078753          	fmv.x.d	a4,fa5
    80002b38:	b2c5                	j	80002518 <__ieee754_pow+0x5c>
    80002b3a:	f20002d3          	fmv.d.x	ft5,zero
    80002b3e:	00091797          	auipc	a5,0x91
    80002b42:	0527b507          	fld	fa0,82(a5) # 80093b90 <_erodata+0x1e>
    80002b46:	22a50753          	fmv.d	fa4,fa0
    80002b4a:	22528653          	fmv.d	fa2,ft5
    80002b4e:	4801                	li	a6,0
    80002b50:	b9a9                	j	800027aa <__ieee754_pow+0x2ee>
    80002b52:	3ff007b7          	lui	a5,0x3ff00
    80002b56:	ffe78693          	addi	a3,a5,-2 # 3feffffe <asinh-0x40100002>
    80002b5a:	a886d6e3          	bge	a3,s0,800025e6 <__ieee754_pow+0x12a>
    80002b5e:	b287c8e3          	blt	a5,s0,8000268e <__ieee754_pow+0x1d2>
    80002b62:	f20707d3          	fmv.d.x	fa5,a4
    80002b66:	00091797          	auipc	a5,0x91
    80002b6a:	02a7b507          	fld	fa0,42(a5) # 80093b90 <_erodata+0x1e>
    80002b6e:	00091797          	auipc	a5,0x91
    80002b72:	3ea7b607          	fld	fa2,1002(a5) # 80093f58 <_erodata+0x3e6>
    80002b76:	0aa7f753          	fsub.d	fa4,fa5,fa0
    80002b7a:	00091797          	auipc	a5,0x91
    80002b7e:	4467b687          	fld	fa3,1094(a5) # 80093fc0 <_erodata+0x44e>
    80002b82:	00091797          	auipc	a5,0x91
    80002b86:	27e7b087          	fld	ft1,638(a5) # 80093e00 <_erodata+0x28e>
    80002b8a:	00091797          	auipc	a5,0x91
    80002b8e:	2a67b007          	fld	ft0,678(a5) # 80093e30 <_erodata+0x2be>
    80002b92:	00091797          	auipc	a5,0x91
    80002b96:	4367b787          	fld	fa5,1078(a5) # 80093fc8 <_erodata+0x456>
    80002b9a:	00091797          	auipc	a5,0x91
    80002b9e:	4367b587          	fld	fa1,1078(a5) # 80093fd0 <_erodata+0x45e>
    80002ba2:	62d776cb          	fnmsub.d	fa3,fa4,fa3,fa2
    80002ba6:	12e77653          	fmul.d	fa2,fa4,fa4
    80002baa:	0ae6f6cb          	fnmsub.d	fa3,fa3,fa4,ft1
    80002bae:	12d67653          	fmul.d	fa2,fa2,fa3
    80002bb2:	12067653          	fmul.d	fa2,fa2,ft0
    80002bb6:	62f777c7          	fmsub.d	fa5,fa4,fa5,fa2
    80002bba:	7ab776c3          	fmadd.d	fa3,fa4,fa1,fa5
    80002bbe:	e20687d3          	fmv.x.d	a5,fa3
    80002bc2:	9381                	srli	a5,a5,0x20
    80002bc4:	1782                	slli	a5,a5,0x20
    80002bc6:	f20786d3          	fmv.d.x	fa3,a5
    80002bca:	6ab7764b          	fnmsub.d	fa2,fa4,fa1,fa3
    80002bce:	0ac7f653          	fsub.d	fa2,fa5,fa2
    80002bd2:	b399                	j	80002918 <__ieee754_pow+0x45c>
    80002bd4:	f20907d3          	fmv.d.x	fa5,s2
    80002bd8:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80002bdc:	e2078753          	fmv.x.d	a4,fa5
    80002be0:	ba25                	j	80002518 <__ieee754_pow+0x5c>
    80002be2:	3fe00737          	lui	a4,0x3fe00
    80002be6:	4581                	li	a1,0
    80002be8:	4501                	li	a0,0
    80002bea:	e0f759e3          	bge	a4,a5,800029fc <__ieee754_pow+0x540>
    80002bee:	83d1                	srli	a5,a5,0x14
    80002bf0:	bb4d                	j	800029a2 <__ieee754_pow+0x4e6>
    80002bf2:	a40719e3          	bnez	a4,80002644 <__ieee754_pow+0x188>
    80002bf6:	4751                	li	a4,20
    80002bf8:	40c707bb          	subw	a5,a4,a2
    80002bfc:	40fa573b          	sraw	a4,s4,a5
    80002c00:	00f717bb          	sllw	a5,a4,a5
    80002c04:	994799e3          	bne	a5,s4,80002596 <__ieee754_pow+0xda>
    80002c08:	8b05                	andi	a4,a4,1
    80002c0a:	4b09                	li	s6,2
    80002c0c:	40eb0b3b          	subw	s6,s6,a4
    80002c10:	b259                	j	80002596 <__ieee754_pow+0xda>
    80002c12:	4785                	li	a5,1
    80002c14:	90fb12e3          	bne	s6,a5,80002518 <__ieee754_pow+0x5c>
    80002c18:	f20707d3          	fmv.d.x	fa5,a4
    80002c1c:	22f797d3          	fneg.d	fa5,fa5
    80002c20:	e2078753          	fmv.x.d	a4,fa5
    80002c24:	b8d5                	j	80002518 <__ieee754_pow+0x5c>
    80002c26:	00091797          	auipc	a5,0x91
    80002c2a:	38a7b287          	fld	ft5,906(a5) # 80093fb0 <_erodata+0x43e>
    80002c2e:	00091797          	auipc	a5,0x91
    80002c32:	38a7b607          	fld	fa2,906(a5) # 80093fb8 <_erodata+0x446>
    80002c36:	00040837          	lui	a6,0x40
    80002c3a:	00091797          	auipc	a5,0x91
    80002c3e:	12e7b707          	fld	fa4,302(a5) # 80093d68 <_erodata+0x1f6>
    80002c42:	00091797          	auipc	a5,0x91
    80002c46:	f4e7b507          	fld	fa0,-178(a5) # 80093b90 <_erodata+0x1e>
    80002c4a:	b685                	j	800027aa <__ieee754_pow+0x2ee>
    80002c4c:	f20007d3          	fmv.d.x	fa5,zero
    80002c50:	a2f41553          	flt.d	a0,fs0,fa5
    80002c54:	b481                	j	80002694 <__ieee754_pow+0x1d8>
    80002c56:	22f78553          	fmv.d	fa0,fa5
    80002c5a:	0e4010ef          	jal	ra,80003d3e <scalbn>
    80002c5e:	e20507d3          	fmv.x.d	a5,fa0
    80002c62:	bdb1                	j	80002abe <__ieee754_pow+0x602>

0000000080002c64 <__ieee754_rem_pio2>:
__ieee754_rem_pio2():
    80002c64:	e20507d3          	fmv.x.d	a5,fa0
    80002c68:	7139                	addi	sp,sp,-64
    80002c6a:	f04a                	sd	s2,32(sp)
    80002c6c:	4207d913          	srai	s2,a5,0x20
    80002c70:	f822                	sd	s0,48(sp)
    80002c72:	3fe92737          	lui	a4,0x3fe92
    80002c76:	02191413          	slli	s0,s2,0x21
    80002c7a:	f426                	sd	s1,40(sp)
    80002c7c:	fc06                	sd	ra,56(sp)
    80002c7e:	1fb70713          	addi	a4,a4,507 # 3fe921fb <asinh-0x4016de05>
    80002c82:	9005                	srli	s0,s0,0x21
    80002c84:	84aa                	mv	s1,a0
    80002c86:	0e875a63          	bge	a4,s0,80002d7a <__ieee754_rem_pio2+0x116>
    80002c8a:	4002e737          	lui	a4,0x4002e
    80002c8e:	97b70713          	addi	a4,a4,-1669 # 4002d97b <asinh-0x3ffd2685>
    80002c92:	04874363          	blt	a4,s0,80002cd8 <__ieee754_rem_pio2+0x74>
    80002c96:	00091717          	auipc	a4,0x91
    80002c9a:	3aa73787          	fld	fa5,938(a4) # 80094040 <_erodata+0x4ce>
    80002c9e:	3ff92737          	lui	a4,0x3ff92
    80002ca2:	1fb70713          	addi	a4,a4,507 # 3ff921fb <asinh-0x4006de05>
    80002ca6:	23205c63          	blez	s2,80002ede <__ieee754_rem_pio2+0x27a>
    80002caa:	0af577d3          	fsub.d	fa5,fa0,fa5
    80002cae:	0ee40663          	beq	s0,a4,80002d9a <__ieee754_rem_pio2+0x136>
    80002cb2:	00091797          	auipc	a5,0x91
    80002cb6:	3967b707          	fld	fa4,918(a5) # 80094048 <_erodata+0x4d6>
    80002cba:	0ae7f6d3          	fsub.d	fa3,fa5,fa4
    80002cbe:	4505                	li	a0,1
    80002cc0:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80002cc4:	a094                	fsd	fa3,0(s1)
    80002cc6:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80002cca:	a49c                	fsd	fa5,8(s1)
    80002ccc:	70e2                	ld	ra,56(sp)
    80002cce:	7442                	ld	s0,48(sp)
    80002cd0:	74a2                	ld	s1,40(sp)
    80002cd2:	7902                	ld	s2,32(sp)
    80002cd4:	6121                	addi	sp,sp,64
    80002cd6:	8082                	ret
    80002cd8:	41392737          	lui	a4,0x41392
    80002cdc:	1fb70713          	addi	a4,a4,507 # 413921fb <asinh-0x3ec6de05>
    80002ce0:	0e875663          	bge	a4,s0,80002dcc <__ieee754_rem_pio2+0x168>
    80002ce4:	7ff00737          	lui	a4,0x7ff00
    80002ce8:	0ae45363          	bge	s0,a4,80002d8e <__ieee754_rem_pio2+0x12a>
    80002cec:	4144561b          	sraiw	a2,s0,0x14
    80002cf0:	bea6061b          	addiw	a2,a2,-1046
    80002cf4:	86be                	mv	a3,a5
    80002cf6:	0146179b          	slliw	a5,a2,0x14
    80002cfa:	9c1d                	subw	s0,s0,a5
    80002cfc:	1682                	slli	a3,a3,0x20
    80002cfe:	9281                	srli	a3,a3,0x20
    80002d00:	1402                	slli	s0,s0,0x20
    80002d02:	8c55                	or	s0,s0,a3
    80002d04:	f20407d3          	fmv.d.x	fa5,s0
    80002d08:	f20406d3          	fmv.d.x	fa3,s0
    80002d0c:	00091717          	auipc	a4,0x91
    80002d10:	36c73707          	fld	fa4,876(a4) # 80094078 <_erodata+0x506>
    80002d14:	c20797d3          	fcvt.w.d	a5,fa5,rtz
    80002d18:	468d                	li	a3,3
    80002d1a:	d20787d3          	fcvt.d.w	fa5,a5
    80002d1e:	0af6f6d3          	fsub.d	fa3,fa3,fa5
    80002d22:	a43e                	fsd	fa5,8(sp)
    80002d24:	12e6f7d3          	fmul.d	fa5,fa3,fa4
    80002d28:	c20797d3          	fcvt.w.d	a5,fa5,rtz
    80002d2c:	d20786d3          	fcvt.d.w	fa3,a5
    80002d30:	2781                	sext.w	a5,a5
    80002d32:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80002d36:	a836                	fsd	fa3,16(sp)
    80002d38:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    80002d3c:	f2000753          	fmv.d.x	fa4,zero
    80002d40:	a2e7a753          	feq.d	a4,fa5,fa4
    80002d44:	ac3e                	fsd	fa5,24(sp)
    80002d46:	c701                	beqz	a4,80002d4e <__ieee754_rem_pio2+0xea>
    80002d48:	00f036b3          	snez	a3,a5
    80002d4c:	0685                	addi	a3,a3,1
    80002d4e:	00062797          	auipc	a5,0x62
    80002d52:	f2a78793          	addi	a5,a5,-214 # 80064c78 <two_over_pi>
    80002d56:	4709                	li	a4,2
    80002d58:	85a6                	mv	a1,s1
    80002d5a:	0028                	addi	a0,sp,8
    80002d5c:	488000ef          	jal	ra,800031e4 <__kernel_rem_pio2>
    80002d60:	f60956e3          	bgez	s2,80002ccc <__ieee754_rem_pio2+0x68>
    80002d64:	2098                	fld	fa4,0(s1)
    80002d66:	249c                	fld	fa5,8(s1)
    80002d68:	40a0053b          	negw	a0,a0
    80002d6c:	22e71753          	fneg.d	fa4,fa4
    80002d70:	22f797d3          	fneg.d	fa5,fa5
    80002d74:	a098                	fsd	fa4,0(s1)
    80002d76:	a49c                	fsd	fa5,8(s1)
    80002d78:	bf91                	j	80002ccc <__ieee754_rem_pio2+0x68>
    80002d7a:	70e2                	ld	ra,56(sp)
    80002d7c:	7442                	ld	s0,48(sp)
    80002d7e:	a088                	fsd	fa0,0(s1)
    80002d80:	00053423          	sd	zero,8(a0)
    80002d84:	74a2                	ld	s1,40(sp)
    80002d86:	7902                	ld	s2,32(sp)
    80002d88:	4501                	li	a0,0
    80002d8a:	6121                	addi	sp,sp,64
    80002d8c:	8082                	ret
    80002d8e:	0aa577d3          	fsub.d	fa5,fa0,fa0
    80002d92:	4501                	li	a0,0
    80002d94:	a49c                	fsd	fa5,8(s1)
    80002d96:	a09c                	fsd	fa5,0(s1)
    80002d98:	bf15                	j	80002ccc <__ieee754_rem_pio2+0x68>
    80002d9a:	00091797          	auipc	a5,0x91
    80002d9e:	2b67b707          	fld	fa4,694(a5) # 80094050 <_erodata+0x4de>
    80002da2:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80002da6:	00091797          	auipc	a5,0x91
    80002daa:	2b27b707          	fld	fa4,690(a5) # 80094058 <_erodata+0x4e6>
    80002dae:	70e2                	ld	ra,56(sp)
    80002db0:	7442                	ld	s0,48(sp)
    80002db2:	7902                	ld	s2,32(sp)
    80002db4:	4505                	li	a0,1
    80002db6:	0ae7f6d3          	fsub.d	fa3,fa5,fa4
    80002dba:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80002dbe:	a094                	fsd	fa3,0(s1)
    80002dc0:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80002dc4:	a49c                	fsd	fa5,8(s1)
    80002dc6:	74a2                	ld	s1,40(sp)
    80002dc8:	6121                	addi	sp,sp,64
    80002dca:	8082                	ret
    80002dcc:	b67fd0ef          	jal	ra,80000932 <fabs>
    80002dd0:	00091797          	auipc	a5,0x91
    80002dd4:	2907b687          	fld	fa3,656(a5) # 80094060 <_erodata+0x4ee>
    80002dd8:	00091797          	auipc	a5,0x91
    80002ddc:	0287b607          	fld	fa2,40(a5) # 80093e00 <_erodata+0x28e>
    80002de0:	62d576c3          	fmadd.d	fa3,fa0,fa3,fa2
    80002de4:	00091797          	auipc	a5,0x91
    80002de8:	25c7b787          	fld	fa5,604(a5) # 80094040 <_erodata+0x4ce>
    80002dec:	00091797          	auipc	a5,0x91
    80002df0:	25c7b707          	fld	fa4,604(a5) # 80094048 <_erodata+0x4d6>
    80002df4:	47fd                	li	a5,31
    80002df6:	c20696d3          	fcvt.w.d	a3,fa3,rtz
    80002dfa:	d20686d3          	fcvt.d.w	fa3,a3
    80002dfe:	0006851b          	sext.w	a0,a3
    80002e02:	52f6f54b          	fnmsub.d	fa0,fa3,fa5,fa0
    80002e06:	12e6f7d3          	fmul.d	fa5,fa3,fa4
    80002e0a:	04a7c563          	blt	a5,a0,80002e54 <__ieee754_rem_pio2+0x1f0>
    80002e0e:	0af57753          	fsub.d	fa4,fa0,fa5
    80002e12:	fff6879b          	addiw	a5,a3,-1
    80002e16:	00279713          	slli	a4,a5,0x2
    80002e1a:	00062797          	auipc	a5,0x62
    80002e1e:	dde78793          	addi	a5,a5,-546 # 80064bf8 <npio2_hw>
    80002e22:	97ba                	add	a5,a5,a4
    80002e24:	4398                	lw	a4,0(a5)
    80002e26:	e20707d3          	fmv.x.d	a5,fa4
    80002e2a:	02870963          	beq	a4,s0,80002e5c <__ieee754_rem_pio2+0x1f8>
    80002e2e:	e09c                	sd	a5,0(s1)
    80002e30:	f2078753          	fmv.d.x	fa4,a5
    80002e34:	0ae57553          	fsub.d	fa0,fa0,fa4
    80002e38:	0af57553          	fsub.d	fa0,fa0,fa5
    80002e3c:	a488                	fsd	fa0,8(s1)
    80002e3e:	e80957e3          	bgez	s2,80002ccc <__ieee754_rem_pio2+0x68>
    80002e42:	22e717d3          	fneg.d	fa5,fa4
    80002e46:	22a51553          	fneg.d	fa0,fa0
    80002e4a:	40d0053b          	negw	a0,a3
    80002e4e:	a09c                	fsd	fa5,0(s1)
    80002e50:	a488                	fsd	fa0,8(s1)
    80002e52:	bdad                	j	80002ccc <__ieee754_rem_pio2+0x68>
    80002e54:	0af57753          	fsub.d	fa4,fa0,fa5
    80002e58:	e20707d3          	fmv.x.d	a5,fa4
    80002e5c:	0347d713          	srli	a4,a5,0x34
    80002e60:	4144541b          	sraiw	s0,s0,0x14
    80002e64:	7ff77713          	andi	a4,a4,2047
    80002e68:	40e4073b          	subw	a4,s0,a4
    80002e6c:	4641                	li	a2,16
    80002e6e:	fce650e3          	bge	a2,a4,80002e2e <__ieee754_rem_pio2+0x1ca>
    80002e72:	00091797          	auipc	a5,0x91
    80002e76:	1de7b607          	fld	fa2,478(a5) # 80094050 <_erodata+0x4de>
    80002e7a:	52c6f74b          	fnmsub.d	fa4,fa3,fa2,fa0
    80002e7e:	00091797          	auipc	a5,0x91
    80002e82:	1da7b787          	fld	fa5,474(a5) # 80094058 <_erodata+0x4e6>
    80002e86:	03100613          	li	a2,49
    80002e8a:	0ae57553          	fsub.d	fa0,fa0,fa4
    80002e8e:	52c6f54b          	fnmsub.d	fa0,fa3,fa2,fa0
    80002e92:	52f6f7c7          	fmsub.d	fa5,fa3,fa5,fa0
    80002e96:	0af77653          	fsub.d	fa2,fa4,fa5
    80002e9a:	e20607d3          	fmv.x.d	a5,fa2
    80002e9e:	0347d713          	srli	a4,a5,0x34
    80002ea2:	7ff77713          	andi	a4,a4,2047
    80002ea6:	9c19                	subw	s0,s0,a4
    80002ea8:	00864663          	blt	a2,s0,80002eb4 <__ieee754_rem_pio2+0x250>
    80002eac:	22e70553          	fmv.d	fa0,fa4
    80002eb0:	a090                	fsd	fa2,0(s1)
    80002eb2:	bfbd                	j	80002e30 <__ieee754_rem_pio2+0x1cc>
    80002eb4:	00091797          	auipc	a5,0x91
    80002eb8:	1b47b607          	fld	fa2,436(a5) # 80094068 <_erodata+0x4f6>
    80002ebc:	72c6f54b          	fnmsub.d	fa0,fa3,fa2,fa4
    80002ec0:	00091797          	auipc	a5,0x91
    80002ec4:	1b07b787          	fld	fa5,432(a5) # 80094070 <_erodata+0x4fe>
    80002ec8:	0aa77753          	fsub.d	fa4,fa4,fa0
    80002ecc:	72c6f74b          	fnmsub.d	fa4,fa3,fa2,fa4
    80002ed0:	72f6f7c7          	fmsub.d	fa5,fa3,fa5,fa4
    80002ed4:	0af57753          	fsub.d	fa4,fa0,fa5
    80002ed8:	e20707d3          	fmv.x.d	a5,fa4
    80002edc:	bf89                	j	80002e2e <__ieee754_rem_pio2+0x1ca>
    80002ede:	02f577d3          	fadd.d	fa5,fa0,fa5
    80002ee2:	02e40063          	beq	s0,a4,80002f02 <__ieee754_rem_pio2+0x29e>
    80002ee6:	00091797          	auipc	a5,0x91
    80002eea:	1627b707          	fld	fa4,354(a5) # 80094048 <_erodata+0x4d6>
    80002eee:	02e7f6d3          	fadd.d	fa3,fa5,fa4
    80002ef2:	557d                	li	a0,-1
    80002ef4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80002ef8:	a094                	fsd	fa3,0(s1)
    80002efa:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80002efe:	a49c                	fsd	fa5,8(s1)
    80002f00:	b3f1                	j	80002ccc <__ieee754_rem_pio2+0x68>
    80002f02:	00091797          	auipc	a5,0x91
    80002f06:	14e7b707          	fld	fa4,334(a5) # 80094050 <_erodata+0x4de>
    80002f0a:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80002f0e:	00091797          	auipc	a5,0x91
    80002f12:	14a7b707          	fld	fa4,330(a5) # 80094058 <_erodata+0x4e6>
    80002f16:	557d                	li	a0,-1
    80002f18:	02e7f6d3          	fadd.d	fa3,fa5,fa4
    80002f1c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80002f20:	a094                	fsd	fa3,0(s1)
    80002f22:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80002f26:	a49c                	fsd	fa5,8(s1)
    80002f28:	b355                	j	80002ccc <__ieee754_rem_pio2+0x68>

0000000080002f2a <__ieee754_sinh>:
__ieee754_sinh():
    80002f2a:	e20507d3          	fmv.x.d	a5,fa0
    80002f2e:	1101                	addi	sp,sp,-32
    80002f30:	e822                	sd	s0,16(sp)
    80002f32:	4207d713          	srai	a4,a5,0x20
    80002f36:	02171413          	slli	s0,a4,0x21
    80002f3a:	ec06                	sd	ra,24(sp)
    80002f3c:	a422                	fsd	fs0,8(sp)
    80002f3e:	a026                	fsd	fs1,0(sp)
    80002f40:	7ff006b7          	lui	a3,0x7ff00
    80002f44:	9005                	srli	s0,s0,0x21
    80002f46:	0ad45d63          	bge	s0,a3,80003000 <__ieee754_sinh+0xd6>
    80002f4a:	06074763          	bltz	a4,80002fb8 <__ieee754_sinh+0x8e>
    80002f4e:	00091717          	auipc	a4,0x91
    80002f52:	eb273407          	fld	fs0,-334(a4) # 80093e00 <_erodata+0x28e>
    80002f56:	40360737          	lui	a4,0x40360
    80002f5a:	06e45763          	bge	s0,a4,80002fc8 <__ieee754_sinh+0x9e>
    80002f5e:	3e300737          	lui	a4,0x3e300
    80002f62:	0ee45063          	bge	s0,a4,80003042 <__ieee754_sinh+0x118>
    80002f66:	f2078753          	fmv.d.x	fa4,a5
    80002f6a:	00091717          	auipc	a4,0x91
    80002f6e:	11673787          	fld	fa5,278(a4) # 80094080 <_erodata+0x50e>
    80002f72:	00091717          	auipc	a4,0x91
    80002f76:	c1e73487          	fld	fs1,-994(a4) # 80093b90 <_erodata+0x1e>
    80002f7a:	02f777d3          	fadd.d	fa5,fa4,fa5
    80002f7e:	f2078553          	fmv.d.x	fa0,a5
    80002f82:	a2f49753          	flt.d	a4,fs1,fa5
    80002f86:	e31d                	bnez	a4,80002fac <__ieee754_sinh+0x82>
    80002f88:	9abfd0ef          	jal	ra,80000932 <fabs>
    80002f8c:	e70fd0ef          	jal	ra,800005fc <expm1>
    80002f90:	12a577d3          	fmul.d	fa5,fa0,fa0
    80002f94:	029574d3          	fadd.d	fs1,fa0,fs1
    80002f98:	00091797          	auipc	a5,0x91
    80002f9c:	db87b707          	fld	fa4,-584(a5) # 80093d50 <_erodata+0x1de>
    80002fa0:	1a97f4d3          	fdiv.d	fs1,fa5,fs1
    80002fa4:	4ae57547          	fmsub.d	fa0,fa0,fa4,fs1
    80002fa8:	12857553          	fmul.d	fa0,fa0,fs0
    80002fac:	60e2                	ld	ra,24(sp)
    80002fae:	6442                	ld	s0,16(sp)
    80002fb0:	2422                	fld	fs0,8(sp)
    80002fb2:	2482                	fld	fs1,0(sp)
    80002fb4:	6105                	addi	sp,sp,32
    80002fb6:	8082                	ret
    80002fb8:	00091717          	auipc	a4,0x91
    80002fbc:	e4073407          	fld	fs0,-448(a4) # 80093df8 <_erodata+0x286>
    80002fc0:	40360737          	lui	a4,0x40360
    80002fc4:	f8e44de3          	blt	s0,a4,80002f5e <__ieee754_sinh+0x34>
    80002fc8:	40863737          	lui	a4,0x40863
    80002fcc:	e4170693          	addi	a3,a4,-447 # 40862e41 <asinh-0x3f79d1bf>
    80002fd0:	0a86d563          	bge	a3,s0,8000307a <__ieee754_sinh+0x150>
    80002fd4:	3cd70693          	addi	a3,a4,973
    80002fd8:	0486d463          	bge	a3,s0,80003020 <__ieee754_sinh+0xf6>
    80002fdc:	3ce70713          	addi	a4,a4,974
    80002fe0:	02e40863          	beq	s0,a4,80003010 <__ieee754_sinh+0xe6>
    80002fe4:	60e2                	ld	ra,24(sp)
    80002fe6:	6442                	ld	s0,16(sp)
    80002fe8:	f20787d3          	fmv.d.x	fa5,a5
    80002fec:	00091717          	auipc	a4,0x91
    80002ff0:	09473507          	fld	fa0,148(a4) # 80094080 <_erodata+0x50e>
    80002ff4:	2422                	fld	fs0,8(sp)
    80002ff6:	2482                	fld	fs1,0(sp)
    80002ff8:	12a7f553          	fmul.d	fa0,fa5,fa0
    80002ffc:	6105                	addi	sp,sp,32
    80002ffe:	8082                	ret
