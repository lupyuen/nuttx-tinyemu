    80000000:	7139                	addi	sp,sp,-64
    80000002:	f822                	sd	s0,48(sp)
    80000004:	e2050453          	fmv.x.d	s0,fa0
    80000008:	f426                	sd	s1,40(sp)
    8000000a:	fc06                	sd	ra,56(sp)
    8000000c:	42045493          	srai	s1,s0,0x20
    80000010:	02149793          	slli	a5,s1,0x21
    80000014:	ac22                	fsd	fs0,24(sp)
    80000016:	a826                	fsd	fs1,16(sp)
    80000018:	a44a                	fsd	fs2,8(sp)
    8000001a:	7ff00737          	lui	a4,0x7ff00
    8000001e:	9385                	srli	a5,a5,0x21
    80000020:	0ae7d863          	bge	a5,a4,800000d0 <asinh+0xd0>
    80000024:	3e300737          	lui	a4,0x3e300
    80000028:	06e7d163          	bge	a5,a4,8000008a <asinh+0x8a>
    8000002c:	00094797          	auipc	a5,0x94
    80000030:	b547b787          	fld	fa5,-1196(a5) # 80093b80 <_erodata+0xe>
    80000034:	02f577d3          	fadd.d	fa5,fa0,fa5
    80000038:	00094797          	auipc	a5,0x94
    8000003c:	b587b407          	fld	fs0,-1192(a5) # 80093b90 <_erodata+0x1e>
    80000040:	a2f417d3          	flt.d	a5,fs0,fa5
    80000044:	eb9d                	bnez	a5,8000007a <asinh+0x7a>
    80000046:	f20407d3          	fmv.d.x	fa5,s0
    8000004a:	f2040553          	fmv.d.x	fa0,s0
    8000004e:	12f7f4d3          	fmul.d	fs1,fa5,fa5
    80000052:	0e1000ef          	jal	ra,80000932 <fabs>
    80000056:	22a50953          	fmv.d	fs2,fa0
    8000005a:	0284f553          	fadd.d	fa0,fs1,fs0
    8000005e:	038030ef          	jal	ra,80003096 <__ieee754_sqrt>
    80000062:	02857553          	fadd.d	fa0,fa0,fs0
    80000066:	1aa4f553          	fdiv.d	fa0,fs1,fa0
    8000006a:	03257553          	fadd.d	fa0,fa0,fs2
    8000006e:	3a35f0ef          	jal	ra,8005fc10 <log1p>
    80000072:	00904463          	bgtz	s1,8000007a <asinh+0x7a>
    80000076:	22a51553          	fneg.d	fa0,fa0
    8000007a:	70e2                	ld	ra,56(sp)
    8000007c:	7442                	ld	s0,48(sp)
    8000007e:	74a2                	ld	s1,40(sp)
    80000080:	2462                	fld	fs0,24(sp)
    80000082:	24c2                	fld	fs1,16(sp)
    80000084:	2922                	fld	fs2,8(sp)
    80000086:	6121                	addi	sp,sp,64
    80000088:	8082                	ret
    8000008a:	41b00737          	lui	a4,0x41b00
    8000008e:	04f74b63          	blt	a4,a5,800000e4 <asinh+0xe4>
    80000092:	40000737          	lui	a4,0x40000
    80000096:	06f75263          	bge	a4,a5,800000fa <asinh+0xfa>
    8000009a:	099000ef          	jal	ra,80000932 <fabs>
    8000009e:	f20407d3          	fmv.d.x	fa5,s0
    800000a2:	00094797          	auipc	a5,0x94
    800000a6:	aee7b407          	fld	fs0,-1298(a5) # 80093b90 <_erodata+0x1e>
    800000aa:	22a504d3          	fmv.d	fs1,fa0
    800000ae:	42f7f543          	fmadd.d	fa0,fa5,fa5,fs0
    800000b2:	7e5020ef          	jal	ra,80003096 <__ieee754_sqrt>
    800000b6:	02957553          	fadd.d	fa0,fa0,fs1
    800000ba:	00094797          	auipc	a5,0x94
    800000be:	c967b707          	fld	fa4,-874(a5) # 80093d50 <_erodata+0x1de>
    800000c2:	1aa47553          	fdiv.d	fa0,fs0,fa0
    800000c6:	52e4f543          	fmadd.d	fa0,fs1,fa4,fa0
    800000ca:	0bc020ef          	jal	ra,80002186 <__ieee754_log>
    800000ce:	b755                	j	80000072 <asinh+0x72>
    800000d0:	70e2                	ld	ra,56(sp)
    800000d2:	7442                	ld	s0,48(sp)
    800000d4:	74a2                	ld	s1,40(sp)
    800000d6:	2462                	fld	fs0,24(sp)
    800000d8:	24c2                	fld	fs1,16(sp)
    800000da:	2922                	fld	fs2,8(sp)
    800000dc:	02a57553          	fadd.d	fa0,fa0,fa0
    800000e0:	6121                	addi	sp,sp,64
    800000e2:	8082                	ret
    800000e4:	04f000ef          	jal	ra,80000932 <fabs>
    800000e8:	09e020ef          	jal	ra,80002186 <__ieee754_log>
    800000ec:	00094797          	auipc	a5,0x94
    800000f0:	c5c7b787          	fld	fa5,-932(a5) # 80093d48 <_erodata+0x1d6>
    800000f4:	02f57553          	fadd.d	fa0,fa0,fa5
    800000f8:	bfad                	j	80000072 <asinh+0x72>
    800000fa:	00094797          	auipc	a5,0x94
    800000fe:	a967b407          	fld	fs0,-1386(a5) # 80093b90 <_erodata+0x1e>
    80000102:	b791                	j	80000046 <asinh+0x46>

0000000080000104 <atan>:
atan():
    80000104:	e20507d3          	fmv.x.d	a5,fa0
    80000108:	1101                	addi	sp,sp,-32
    8000010a:	e426                	sd	s1,8(sp)
    8000010c:	4207d493          	srai	s1,a5,0x20
    80000110:	e822                	sd	s0,16(sp)
    80000112:	02149413          	slli	s0,s1,0x21
    80000116:	ec06                	sd	ra,24(sp)
    80000118:	44100737          	lui	a4,0x44100
    8000011c:	9005                	srli	s0,s0,0x21
    8000011e:	02e44f63          	blt	s0,a4,8000015c <atan+0x58>
    80000122:	7ff00737          	lui	a4,0x7ff00
    80000126:	02874263          	blt	a4,s0,8000014a <atan+0x46>
    8000012a:	00e40d63          	beq	s0,a4,80000144 <atan+0x40>
    8000012e:	12905663          	blez	s1,8000025a <atan+0x156>
    80000132:	60e2                	ld	ra,24(sp)
    80000134:	6442                	ld	s0,16(sp)
    80000136:	64a2                	ld	s1,8(sp)
    80000138:	00094797          	auipc	a5,0x94
    8000013c:	c207b507          	fld	fa0,-992(a5) # 80093d58 <_erodata+0x1e6>
    80000140:	6105                	addi	sp,sp,32
    80000142:	8082                	ret
    80000144:	0007869b          	sext.w	a3,a5
    80000148:	d2fd                	beqz	a3,8000012e <atan+0x2a>
    8000014a:	f20787d3          	fmv.d.x	fa5,a5
    8000014e:	02f7f553          	fadd.d	fa0,fa5,fa5
    80000152:	60e2                	ld	ra,24(sp)
    80000154:	6442                	ld	s0,16(sp)
    80000156:	64a2                	ld	s1,8(sp)
    80000158:	6105                	addi	sp,sp,32
    8000015a:	8082                	ret
    8000015c:	3fdc0737          	lui	a4,0x3fdc0
    80000160:	10e45663          	bge	s0,a4,8000026c <atan+0x168>
    80000164:	3e200737          	lui	a4,0x3e200
    80000168:	0ce44b63          	blt	s0,a4,8000023e <atan+0x13a>
    8000016c:	577d                	li	a4,-1
    8000016e:	f20786d3          	fmv.d.x	fa3,a5
    80000172:	00094697          	auipc	a3,0x94
    80000176:	bfe6b787          	fld	fa5,-1026(a3) # 80093d70 <_erodata+0x1fe>
    8000017a:	00094697          	auipc	a3,0x94
    8000017e:	bfe6b307          	fld	ft6,-1026(a3) # 80093d78 <_erodata+0x206>
    80000182:	12d6f653          	fmul.d	fa2,fa3,fa3
    80000186:	00094697          	auipc	a3,0x94
    8000018a:	c1a6b707          	fld	fa4,-998(a3) # 80093da0 <_erodata+0x22e>
    8000018e:	00094697          	auipc	a3,0x94
    80000192:	c1a6b287          	fld	ft5,-998(a3) # 80093da8 <_erodata+0x236>
    80000196:	00094697          	auipc	a3,0x94
    8000019a:	bea6b507          	fld	fa0,-1046(a3) # 80093d80 <_erodata+0x20e>
    8000019e:	00094697          	auipc	a3,0x94
    800001a2:	c126b207          	fld	ft4,-1006(a3) # 80093db0 <_erodata+0x23e>
    800001a6:	00094697          	auipc	a3,0x94
    800001aa:	be26b187          	fld	ft3,-1054(a3) # 80093d88 <_erodata+0x216>
    800001ae:	00094697          	auipc	a3,0x94
    800001b2:	c0a6b107          	fld	ft2,-1014(a3) # 80093db8 <_erodata+0x246>
    800001b6:	12c676d3          	fmul.d	fa3,fa2,fa2
    800001ba:	00094697          	auipc	a3,0x94
    800001be:	bd66b087          	fld	ft1,-1066(a3) # 80093d90 <_erodata+0x21e>
    800001c2:	00094697          	auipc	a3,0x94
    800001c6:	bfe6b007          	fld	ft0,-1026(a3) # 80093dc0 <_erodata+0x24e>
    800001ca:	00094697          	auipc	a3,0x94
    800001ce:	bce6b587          	fld	fa1,-1074(a3) # 80093d98 <_erodata+0x226>
    800001d2:	56fd                	li	a3,-1
    800001d4:	32f6f7c3          	fmadd.d	fa5,fa3,fa5,ft6
    800001d8:	2ae6f743          	fmadd.d	fa4,fa3,fa4,ft5
    800001dc:	52d7f543          	fmadd.d	fa0,fa5,fa3,fa0
    800001e0:	22d777c3          	fmadd.d	fa5,fa4,fa3,ft4
    800001e4:	1ad57543          	fmadd.d	fa0,fa0,fa3,ft3
    800001e8:	12d7f7c3          	fmadd.d	fa5,fa5,fa3,ft2
    800001ec:	0ad57543          	fmadd.d	fa0,fa0,fa3,ft1
    800001f0:	02d7f7c3          	fmadd.d	fa5,fa5,fa3,ft0
    800001f4:	5ad57543          	fmadd.d	fa0,fa0,fa3,fa1
    800001f8:	12d7f7d3          	fmul.d	fa5,fa5,fa3
    800001fc:	7ac57543          	fmadd.d	fa0,fa0,fa2,fa5
    80000200:	f20787d3          	fmv.d.x	fa5,a5
    80000204:	12a7f553          	fmul.d	fa0,fa5,fa0
    80000208:	08d70e63          	beq	a4,a3,800002a4 <atan+0x1a0>
    8000020c:	070e                	slli	a4,a4,0x3
    8000020e:	00065697          	auipc	a3,0x65
    80000212:	93a68693          	addi	a3,a3,-1734 # 80064b48 <atanhi>
    80000216:	9736                	add	a4,a4,a3
    80000218:	3318                	fld	fa4,32(a4)
    8000021a:	231c                	fld	fa5,0(a4)
    8000021c:	0ae57553          	fsub.d	fa0,fa0,fa4
    80000220:	f2078753          	fmv.d.x	fa4,a5
    80000224:	0ae57553          	fsub.d	fa0,fa0,fa4
    80000228:	0aa7f553          	fsub.d	fa0,fa5,fa0
    8000022c:	f204d3e3          	bgez	s1,80000152 <atan+0x4e>
    80000230:	60e2                	ld	ra,24(sp)
    80000232:	6442                	ld	s0,16(sp)
    80000234:	64a2                	ld	s1,8(sp)
    80000236:	22a51553          	fneg.d	fa0,fa0
    8000023a:	6105                	addi	sp,sp,32
    8000023c:	8082                	ret
    8000023e:	00094717          	auipc	a4,0x94
    80000242:	94273787          	fld	fa5,-1726(a4) # 80093b80 <_erodata+0xe>
    80000246:	02f577d3          	fadd.d	fa5,fa0,fa5
    8000024a:	00094717          	auipc	a4,0x94
    8000024e:	94673707          	fld	fa4,-1722(a4) # 80093b90 <_erodata+0x1e>
    80000252:	a2f71753          	flt.d	a4,fa4,fa5
    80000256:	db19                	beqz	a4,8000016c <atan+0x68>
    80000258:	bded                	j	80000152 <atan+0x4e>
    8000025a:	60e2                	ld	ra,24(sp)
    8000025c:	6442                	ld	s0,16(sp)
    8000025e:	64a2                	ld	s1,8(sp)
    80000260:	00094797          	auipc	a5,0x94
    80000264:	b007b507          	fld	fa0,-1280(a5) # 80093d60 <_erodata+0x1ee>
    80000268:	6105                	addi	sp,sp,32
    8000026a:	8082                	ret
    8000026c:	6c6000ef          	jal	ra,80000932 <fabs>
    80000270:	3ff307b7          	lui	a5,0x3ff30
    80000274:	02f45f63          	bge	s0,a5,800002b2 <atan+0x1ae>
    80000278:	3fe607b7          	lui	a5,0x3fe60
    8000027c:	06f45b63          	bge	s0,a5,800002f2 <atan+0x1ee>
    80000280:	00094797          	auipc	a5,0x94
    80000284:	ad07b707          	fld	fa4,-1328(a5) # 80093d50 <_erodata+0x1de>
    80000288:	00094797          	auipc	a5,0x94
    8000028c:	9007b787          	fld	fa5,-1792(a5) # 80093b88 <_erodata+0x16>
    80000290:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
    80000294:	02e57553          	fadd.d	fa0,fa0,fa4
    80000298:	4701                	li	a4,0
    8000029a:	1aa7f7d3          	fdiv.d	fa5,fa5,fa0
    8000029e:	e20787d3          	fmv.x.d	a5,fa5
    800002a2:	b5f1                	j	8000016e <atan+0x6a>
    800002a4:	60e2                	ld	ra,24(sp)
    800002a6:	6442                	ld	s0,16(sp)
    800002a8:	64a2                	ld	s1,8(sp)
    800002aa:	0aa7f553          	fsub.d	fa0,fa5,fa0
    800002ae:	6105                	addi	sp,sp,32
    800002b0:	8082                	ret
    800002b2:	400387b7          	lui	a5,0x40038
    800002b6:	02f45463          	bge	s0,a5,800002de <atan+0x1da>
    800002ba:	00094797          	auipc	a5,0x94
    800002be:	aae7b787          	fld	fa5,-1362(a5) # 80093d68 <_erodata+0x1f6>
    800002c2:	00094797          	auipc	a5,0x94
    800002c6:	8ce7b687          	fld	fa3,-1842(a5) # 80093b90 <_erodata+0x1e>
    800002ca:	0af57753          	fsub.d	fa4,fa0,fa5
    800002ce:	6af57543          	fmadd.d	fa0,fa0,fa5,fa3
    800002d2:	4709                	li	a4,2
    800002d4:	1aa777d3          	fdiv.d	fa5,fa4,fa0
    800002d8:	e20787d3          	fmv.x.d	a5,fa5
    800002dc:	bd49                	j	8000016e <atan+0x6a>
    800002de:	00094797          	auipc	a5,0x94
    800002e2:	8aa7b787          	fld	fa5,-1878(a5) # 80093b88 <_erodata+0x16>
    800002e6:	1aa7f7d3          	fdiv.d	fa5,fa5,fa0
    800002ea:	470d                	li	a4,3
    800002ec:	e20787d3          	fmv.x.d	a5,fa5
    800002f0:	bdbd                	j	8000016e <atan+0x6a>
    800002f2:	00094797          	auipc	a5,0x94
    800002f6:	89e7b787          	fld	fa5,-1890(a5) # 80093b90 <_erodata+0x1e>
    800002fa:	0af57753          	fsub.d	fa4,fa0,fa5
    800002fe:	02f57553          	fadd.d	fa0,fa0,fa5
    80000302:	4705                	li	a4,1
    80000304:	1aa777d3          	fdiv.d	fa5,fa4,fa0
    80000308:	e20787d3          	fmv.x.d	a5,fa5
    8000030c:	b58d                	j	8000016e <atan+0x6a>

000000008000030e <cbrt>:
cbrt():
    8000030e:	e2050753          	fmv.x.d	a4,fa0
    80000312:	7ff006b7          	lui	a3,0x7ff00
    80000316:	42075593          	srai	a1,a4,0x20
    8000031a:	02159793          	slli	a5,a1,0x21
    8000031e:	9385                	srli	a5,a5,0x21
    80000320:	10d7f663          	bgeu	a5,a3,8000042c <cbrt+0x11e>
    80000324:	00e7e633          	or	a2,a5,a4
    80000328:	2601                	sext.w	a2,a2
    8000032a:	e20506d3          	fmv.x.d	a3,fa0
    8000032e:	ce65                	beqz	a2,80000426 <cbrt+0x118>
    80000330:	56fd                	li	a3,-1
    80000332:	9281                	srli	a3,a3,0x20
    80000334:	7ff00637          	lui	a2,0x7ff00
    80000338:	02079513          	slli	a0,a5,0x20
    8000033c:	8f75                	and	a4,a4,a3
    8000033e:	8e6d                	and	a2,a2,a1
    80000340:	2781                	sext.w	a5,a5
    80000342:	8f49                	or	a4,a4,a0
    80000344:	ea7d                	bnez	a2,8000043a <cbrt+0x12c>
    80000346:	f2070753          	fmv.d.x	fa4,a4
    8000034a:	00094797          	auipc	a5,0x94
    8000034e:	a7e7b787          	fld	fa5,-1410(a5) # 80093dc8 <_erodata+0x256>
    80000352:	450d                	li	a0,3
    80000354:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    80000358:	e2078653          	fmv.x.d	a2,fa5
    8000035c:	02065793          	srli	a5,a2,0x20
    80000360:	02a7d7bb          	divuw	a5,a5,a0
    80000364:	8ef1                	and	a3,a3,a2
    80000366:	297f8637          	lui	a2,0x297f8
    8000036a:	8936061b          	addiw	a2,a2,-1901
    8000036e:	9fb1                	addw	a5,a5,a2
    80000370:	1782                	slli	a5,a5,0x20
    80000372:	8fd5                	or	a5,a5,a3
    80000374:	f20787d3          	fmv.d.x	fa5,a5
    80000378:	f2070653          	fmv.d.x	fa2,a4
    8000037c:	f20780d3          	fmv.d.x	ft1,a5
    80000380:	12f7f6d3          	fmul.d	fa3,fa5,fa5
    80000384:	00094697          	auipc	a3,0x94
    80000388:	a4c6b707          	fld	fa4,-1460(a3) # 80093dd0 <_erodata+0x25e>
    8000038c:	00094697          	auipc	a3,0x94
    80000390:	a546b587          	fld	fa1,-1452(a3) # 80093de0 <_erodata+0x26e>
    80000394:	00094697          	auipc	a3,0x94
    80000398:	a446b007          	fld	ft0,-1468(a3) # 80093dd8 <_erodata+0x266>
    8000039c:	00094697          	auipc	a3,0x94
    800003a0:	a4c6b787          	fld	fa5,-1460(a3) # 80093de8 <_erodata+0x276>
    800003a4:	00094697          	auipc	a3,0x94
    800003a8:	a4c6b507          	fld	fa0,-1460(a3) # 80093df0 <_erodata+0x27e>
    800003ac:	56fd                	li	a3,-1
    800003ae:	1ac6f6d3          	fdiv.d	fa3,fa3,fa2
    800003b2:	00094617          	auipc	a2,0x94
    800003b6:	99e63607          	fld	fa2,-1634(a2) # 80093d50 <_erodata+0x1de>
    800003ba:	80000637          	lui	a2,0x80000
    800003be:	8df1                	and	a1,a1,a2
    800003c0:	0206d613          	srli	a2,a3,0x20
    800003c4:	72d0f743          	fmadd.d	fa4,ft1,fa3,fa4
    800003c8:	1ae5f5d3          	fdiv.d	fa1,fa1,fa4
    800003cc:	02077753          	fadd.d	fa4,fa4,ft0
    800003d0:	02b77753          	fadd.d	fa4,fa4,fa1
    800003d4:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
    800003d8:	f2070753          	fmv.d.x	fa4,a4
    800003dc:	02a7f7d3          	fadd.d	fa5,fa5,fa0
    800003e0:	1217f7d3          	fmul.d	fa5,fa5,ft1
    800003e4:	e20787d3          	fmv.x.d	a5,fa5
    800003e8:	9381                	srli	a5,a5,0x20
    800003ea:	2785                	addiw	a5,a5,1
    800003ec:	8efd                	and	a3,a3,a5
    800003ee:	02069793          	slli	a5,a3,0x20
    800003f2:	f20787d3          	fmv.d.x	fa5,a5
    800003f6:	f20786d3          	fmv.d.x	fa3,a5
    800003fa:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    800003fe:	1af777d3          	fdiv.d	fa5,fa4,fa5
    80000402:	f2078753          	fmv.d.x	fa4,a5
    80000406:	0ae7f753          	fsub.d	fa4,fa5,fa4
    8000040a:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
    8000040e:	1af777d3          	fdiv.d	fa5,fa4,fa5
    80000412:	6ad7f7c3          	fmadd.d	fa5,fa5,fa3,fa3
    80000416:	e20787d3          	fmv.x.d	a5,fa5
    8000041a:	0207d693          	srli	a3,a5,0x20
    8000041e:	8ecd                	or	a3,a3,a1
    80000420:	1682                	slli	a3,a3,0x20
    80000422:	8ff1                	and	a5,a5,a2
    80000424:	8edd                	or	a3,a3,a5
    80000426:	f2068553          	fmv.d.x	fa0,a3
    8000042a:	8082                	ret
    8000042c:	02a577d3          	fadd.d	fa5,fa0,fa0
    80000430:	e20786d3          	fmv.x.d	a3,fa5
    80000434:	f2068553          	fmv.d.x	fa0,a3
    80000438:	8082                	ret
    8000043a:	468d                	li	a3,3
    8000043c:	02d7c7bb          	divw	a5,a5,a3
    80000440:	2a9f86b7          	lui	a3,0x2a9f8
    80000444:	8936869b          	addiw	a3,a3,-1901
    80000448:	9fb5                	addw	a5,a5,a3
    8000044a:	1782                	slli	a5,a5,0x20
    8000044c:	b725                	j	80000374 <cbrt+0x66>

000000008000044e <ceil>:
ceil():
    8000044e:	e20507d3          	fmv.x.d	a5,fa0
    80000452:	464d                	li	a2,19
    80000454:	4347d713          	srai	a4,a5,0x34
    80000458:	7ff77713          	andi	a4,a4,2047
    8000045c:	c017081b          	addiw	a6,a4,-1023
    80000460:	4207d893          	srai	a7,a5,0x20
    80000464:	0007851b          	sext.w	a0,a5
    80000468:	09064863          	blt	a2,a6,800004f8 <ceil+0xaa>
    8000046c:	06084163          	bltz	a6,800004ce <ceil+0x80>
    80000470:	00100737          	lui	a4,0x100
    80000474:	fff7059b          	addiw	a1,a4,-1
    80000478:	4105d5bb          	sraw	a1,a1,a6
    8000047c:	00b8f6b3          	and	a3,a7,a1
    80000480:	8ec9                	or	a3,a3,a0
    80000482:	2681                	sext.w	a3,a3
    80000484:	e2050653          	fmv.x.d	a2,fa0
    80000488:	c2a1                	beqz	a3,800004c8 <ceil+0x7a>
    8000048a:	00093697          	auipc	a3,0x93
    8000048e:	6f66b787          	fld	fa5,1782(a3) # 80093b80 <_erodata+0xe>
    80000492:	02f577d3          	fadd.d	fa5,fa0,fa5
    80000496:	f2000753          	fmv.d.x	fa4,zero
    8000049a:	a2f717d3          	flt.d	a5,fa4,fa5
    8000049e:	cf91                	beqz	a5,800004ba <ceil+0x6c>
    800004a0:	01105663          	blez	a7,800004ac <ceil+0x5e>
    800004a4:	4107573b          	sraw	a4,a4,a6
    800004a8:	011708bb          	addw	a7,a4,a7
    800004ac:	fff5c713          	not	a4,a1
    800004b0:	01177733          	and	a4,a4,a7
    800004b4:	0007089b          	sext.w	a7,a4
    800004b8:	4501                	li	a0,0
    800004ba:	02051793          	slli	a5,a0,0x20
    800004be:	9381                	srli	a5,a5,0x20
    800004c0:	02089713          	slli	a4,a7,0x20
    800004c4:	00f76633          	or	a2,a4,a5
    800004c8:	f2060553          	fmv.d.x	fa0,a2
    800004cc:	8082                	ret
    800004ce:	00093717          	auipc	a4,0x93
    800004d2:	6b273787          	fld	fa5,1714(a4) # 80093b80 <_erodata+0xe>
    800004d6:	02f577d3          	fadd.d	fa5,fa0,fa5
    800004da:	f2000753          	fmv.d.x	fa4,zero
    800004de:	a2f717d3          	flt.d	a5,fa4,fa5
    800004e2:	dfe1                	beqz	a5,800004ba <ceil+0x6c>
    800004e4:	0808cb63          	bltz	a7,8000057a <ceil+0x12c>
    800004e8:	00a8e6b3          	or	a3,a7,a0
    800004ec:	4501                	li	a0,0
    800004ee:	3ff008b7          	lui	a7,0x3ff00
    800004f2:	f6e1                	bnez	a3,800004ba <ceil+0x6c>
    800004f4:	4881                	li	a7,0
    800004f6:	b7d1                	j	800004ba <ceil+0x6c>
    800004f8:	03300613          	li	a2,51
    800004fc:	01065d63          	bge	a2,a6,80000516 <ceil+0xc8>
    80000500:	40000713          	li	a4,1024
    80000504:	e2050653          	fmv.x.d	a2,fa0
    80000508:	fce810e3          	bne	a6,a4,800004c8 <ceil+0x7a>
    8000050c:	02a577d3          	fadd.d	fa5,fa0,fa0
    80000510:	e2078653          	fmv.x.d	a2,fa5
    80000514:	bf55                	j	800004c8 <ceil+0x7a>
    80000516:	567d                	li	a2,-1
    80000518:	bed7071b          	addiw	a4,a4,-1043
    8000051c:	00e6573b          	srlw	a4,a2,a4
    80000520:	00e57e33          	and	t3,a0,a4
    80000524:	2e01                	sext.w	t3,t3
    80000526:	e2050653          	fmv.x.d	a2,fa0
    8000052a:	f80e0fe3          	beqz	t3,800004c8 <ceil+0x7a>
    8000052e:	00093617          	auipc	a2,0x93
    80000532:	65263787          	fld	fa5,1618(a2) # 80093b80 <_erodata+0xe>
    80000536:	02f577d3          	fadd.d	fa5,fa0,fa5
    8000053a:	f2000753          	fmv.d.x	fa4,zero
    8000053e:	a2f717d3          	flt.d	a5,fa4,fa5
    80000542:	dfa5                	beqz	a5,800004ba <ceil+0x6c>
    80000544:	03105263          	blez	a7,80000568 <ceil+0x11a>
    80000548:	47d1                	li	a5,20
    8000054a:	02f80663          	beq	a6,a5,80000576 <ceil+0x128>
    8000054e:	03400793          	li	a5,52
    80000552:	410787bb          	subw	a5,a5,a6
    80000556:	4585                	li	a1,1
    80000558:	00f595bb          	sllw	a1,a1,a5
    8000055c:	00a586bb          	addw	a3,a1,a0
    80000560:	02a6f163          	bgeu	a3,a0,80000582 <ceil+0x134>
    80000564:	2885                	addiw	a7,a7,1
    80000566:	8536                	mv	a0,a3
    80000568:	fff74713          	not	a4,a4
    8000056c:	00a777b3          	and	a5,a4,a0
    80000570:	0007851b          	sext.w	a0,a5
    80000574:	b799                	j	800004ba <ceil+0x6c>
    80000576:	2885                	addiw	a7,a7,1
    80000578:	bfc5                	j	80000568 <ceil+0x11a>
    8000057a:	4501                	li	a0,0
    8000057c:	800008b7          	lui	a7,0x80000
    80000580:	bf2d                	j	800004ba <ceil+0x6c>
    80000582:	8536                	mv	a0,a3
    80000584:	b7d5                	j	80000568 <ceil+0x11a>

0000000080000586 <cos>:
cos():
    80000586:	e20507d3          	fmv.x.d	a5,fa0
    8000058a:	3fe926b7          	lui	a3,0x3fe92
    8000058e:	1fb68693          	addi	a3,a3,507 # 3fe921fb <asinh-0x4016de05>
    80000592:	00179713          	slli	a4,a5,0x1
    80000596:	9305                	srli	a4,a4,0x21
    80000598:	02e6de63          	bge	a3,a4,800005d4 <cos+0x4e>
    8000059c:	7ff006b7          	lui	a3,0x7ff00
    800005a0:	00d74563          	blt	a4,a3,800005aa <cos+0x24>
    800005a4:	0aa57553          	fsub.d	fa0,fa0,fa0
    800005a8:	8082                	ret
    800005aa:	1101                	addi	sp,sp,-32
    800005ac:	850a                	mv	a0,sp
    800005ae:	ec06                	sd	ra,24(sp)
    800005b0:	6b4020ef          	jal	ra,80002c64 <__ieee754_rem_pio2>
    800005b4:	890d                	andi	a0,a0,3
    800005b6:	4785                	li	a5,1
    800005b8:	02f50263          	beq	a0,a5,800005dc <cos+0x56>
    800005bc:	4789                	li	a5,2
    800005be:	25a2                	fld	fa1,8(sp)
    800005c0:	2502                	fld	fa0,0(sp)
    800005c2:	02f50863          	beq	a0,a5,800005f2 <cos+0x6c>
    800005c6:	c11d                	beqz	a0,800005ec <cos+0x66>
    800005c8:	4505                	li	a0,1
    800005ca:	372030ef          	jal	ra,8000393c <__kernel_sin>
    800005ce:	60e2                	ld	ra,24(sp)
    800005d0:	6105                	addi	sp,sp,32
    800005d2:	8082                	ret
    800005d4:	f20005d3          	fmv.d.x	fa1,zero
    800005d8:	2c50206f          	j	8000309c <__kernel_cos>
    800005dc:	25a2                	fld	fa1,8(sp)
    800005de:	2502                	fld	fa0,0(sp)
    800005e0:	4505                	li	a0,1
    800005e2:	35a030ef          	jal	ra,8000393c <__kernel_sin>
    800005e6:	22a51553          	fneg.d	fa0,fa0
    800005ea:	b7d5                	j	800005ce <cos+0x48>
    800005ec:	2b1020ef          	jal	ra,8000309c <__kernel_cos>
    800005f0:	bff9                	j	800005ce <cos+0x48>
    800005f2:	2ab020ef          	jal	ra,8000309c <__kernel_cos>
    800005f6:	22a51553          	fneg.d	fa0,fa0
    800005fa:	bfd1                	j	800005ce <cos+0x48>

00000000800005fc <expm1>:
expm1():
    800005fc:	e20507d3          	fmv.x.d	a5,fa0
    80000600:	404376b7          	lui	a3,0x40437
    80000604:	87968693          	addi	a3,a3,-1927 # 40436879 <asinh-0x3fbc9787>
    80000608:	4207d613          	srai	a2,a5,0x20
    8000060c:	02161713          	slli	a4,a2,0x21
    80000610:	9305                	srli	a4,a4,0x21
    80000612:	85b2                	mv	a1,a2
    80000614:	16e6f563          	bgeu	a3,a4,8000077e <expm1+0x182>
    80000618:	408636b7          	lui	a3,0x40863
    8000061c:	e4168693          	addi	a3,a3,-447 # 40862e41 <asinh-0x3f79d1bf>
    80000620:	12e6ef63          	bltu	a3,a4,8000075e <expm1+0x162>
    80000624:	2005c963          	bltz	a1,80000836 <expm1+0x23a>
    80000628:	f20787d3          	fmv.d.x	fa5,a5
    8000062c:	00094717          	auipc	a4,0x94
    80000630:	80473707          	fld	fa4,-2044(a4) # 80093e30 <_erodata+0x2be>
    80000634:	00093717          	auipc	a4,0x93
    80000638:	7cc73507          	fld	fa0,1996(a4) # 80093e00 <_erodata+0x28e>
    8000063c:	12e7f753          	fmul.d	fa4,fa5,fa4
    80000640:	22a507d3          	fmv.d	fa5,fa0
    80000644:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80000648:	00093717          	auipc	a4,0x93
    8000064c:	7c873687          	fld	fa3,1992(a4) # 80093e10 <_erodata+0x29e>
    80000650:	00093717          	auipc	a4,0x93
    80000654:	7d873707          	fld	fa4,2008(a4) # 80093e28 <_erodata+0x2b6>
    80000658:	c2079653          	fcvt.w.d	a2,fa5,rtz
    8000065c:	f20787d3          	fmv.d.x	fa5,a5
    80000660:	d20605d3          	fcvt.d.w	fa1,a2
    80000664:	2601                	sext.w	a2,a2
    80000666:	7ae5f74b          	fnmsub.d	fa4,fa1,fa4,fa5
    8000066a:	12d5f5d3          	fmul.d	fa1,fa1,fa3
    8000066e:	0ab777d3          	fsub.d	fa5,fa4,fa1
    80000672:	0af77753          	fsub.d	fa4,fa4,fa5
    80000676:	e20787d3          	fmv.x.d	a5,fa5
    8000067a:	0ab775d3          	fsub.d	fa1,fa4,fa1
    8000067e:	f20786d3          	fmv.d.x	fa3,a5
    80000682:	f2078653          	fmv.d.x	fa2,a5
    80000686:	00093717          	auipc	a4,0x93
    8000068a:	7b273707          	fld	fa4,1970(a4) # 80093e38 <_erodata+0x2c6>
    8000068e:	12a6f6d3          	fmul.d	fa3,fa3,fa0
    80000692:	00093717          	auipc	a4,0x93
    80000696:	7ae73787          	fld	fa5,1966(a4) # 80093e40 <_erodata+0x2ce>
    8000069a:	00093717          	auipc	a4,0x93
    8000069e:	7ae73287          	fld	ft5,1966(a4) # 80093e48 <_erodata+0x2d6>
    800006a2:	00093717          	auipc	a4,0x93
    800006a6:	7ae73207          	fld	ft4,1966(a4) # 80093e50 <_erodata+0x2de>
    800006aa:	00093717          	auipc	a4,0x93
    800006ae:	7ae73187          	fld	ft3,1966(a4) # 80093e58 <_erodata+0x2e6>
    800006b2:	00093717          	auipc	a4,0x93
    800006b6:	4de73007          	fld	ft0,1246(a4) # 80093b90 <_erodata+0x1e>
    800006ba:	00093717          	auipc	a4,0x93
    800006be:	7a673107          	fld	ft2,1958(a4) # 80093e60 <_erodata+0x2ee>
    800006c2:	12d67653          	fmul.d	fa2,fa2,fa3
    800006c6:	00093717          	auipc	a4,0x93
    800006ca:	7a273087          	fld	ft1,1954(a4) # 80093e68 <_erodata+0x2f6>
    800006ce:	7ae677c3          	fmadd.d	fa5,fa2,fa4,fa5
    800006d2:	2ac7f7c3          	fmadd.d	fa5,fa5,fa2,ft5
    800006d6:	22c7f7c3          	fmadd.d	fa5,fa5,fa2,ft4
    800006da:	1ac7f7c3          	fmadd.d	fa5,fa5,fa2,ft3
    800006de:	02c7f7c3          	fmadd.d	fa5,fa5,fa2,ft0
    800006e2:	12f6f74b          	fnmsub.d	fa4,fa3,fa5,ft2
    800006e6:	f20786d3          	fmv.d.x	fa3,a5
    800006ea:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    800006ee:	0ae6f74b          	fnmsub.d	fa4,fa3,fa4,ft1
    800006f2:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
    800006f6:	12c7f7d3          	fmul.d	fa5,fa5,fa2
    800006fa:	c255                	beqz	a2,8000079e <expm1+0x1a2>
    800006fc:	0ab7f7d3          	fsub.d	fa5,fa5,fa1
    80000700:	577d                	li	a4,-1
    80000702:	5ad7f7c7          	fmsub.d	fa5,fa5,fa3,fa1
    80000706:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
    8000070a:	1ae60763          	beq	a2,a4,800008b8 <expm1+0x2bc>
    8000070e:	4685                	li	a3,1
    80000710:	18d60063          	beq	a2,a3,80000890 <expm1+0x294>
    80000714:	0016059b          	addiw	a1,a2,1
    80000718:	03900693          	li	a3,57
    8000071c:	0146151b          	slliw	a0,a2,0x14
    80000720:	0eb6e763          	bltu	a3,a1,8000080e <expm1+0x212>
    80000724:	46cd                	li	a3,19
    80000726:	1ac6c463          	blt	a3,a2,800008ce <expm1+0x2d2>
    8000072a:	002007b7          	lui	a5,0x200
    8000072e:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80000732:	40c7d63b          	sraw	a2,a5,a2
    80000736:	3ff007b7          	lui	a5,0x3ff00
    8000073a:	9f91                	subw	a5,a5,a2
    8000073c:	1782                	slli	a5,a5,0x20
    8000073e:	f2078753          	fmv.d.x	fa4,a5
    80000742:	9301                	srli	a4,a4,0x20
    80000744:	0af777d3          	fsub.d	fa5,fa4,fa5
    80000748:	e20787d3          	fmv.x.d	a5,fa5
    8000074c:	0207d693          	srli	a3,a5,0x20
    80000750:	9ea9                	addw	a3,a3,a0
    80000752:	1682                	slli	a3,a3,0x20
    80000754:	8ff9                	and	a5,a5,a4
    80000756:	8fd5                	or	a5,a5,a3
    80000758:	f2078553          	fmv.d.x	fa0,a5
    8000075c:	8082                	ret
    8000075e:	7ff006b7          	lui	a3,0x7ff00
    80000762:	06d76f63          	bltu	a4,a3,800007e0 <expm1+0x1e4>
    80000766:	02c61713          	slli	a4,a2,0x2c
    8000076a:	9331                	srli	a4,a4,0x2c
    8000076c:	8f5d                	or	a4,a4,a5
    8000076e:	2701                	sext.w	a4,a4
    80000770:	18070063          	beqz	a4,800008f0 <expm1+0x2f4>
    80000774:	02a577d3          	fadd.d	fa5,fa0,fa0
    80000778:	e20787d3          	fmv.x.d	a5,fa5
    8000077c:	a03d                	j	800007aa <expm1+0x1ae>
    8000077e:	3fd636b7          	lui	a3,0x3fd63
    80000782:	e4268693          	addi	a3,a3,-446 # 3fd62e42 <asinh-0x4029d1be>
    80000786:	02e6e563          	bltu	a3,a4,800007b0 <expm1+0x1b4>
    8000078a:	3c9006b7          	lui	a3,0x3c900
    8000078e:	0ed76263          	bltu	a4,a3,80000872 <expm1+0x276>
    80000792:	4601                	li	a2,0
    80000794:	00093717          	auipc	a4,0x93
    80000798:	66c73507          	fld	fa0,1644(a4) # 80093e00 <_erodata+0x28e>
    8000079c:	b5cd                	j	8000067e <expm1+0x82>
    8000079e:	62f6f7c7          	fmsub.d	fa5,fa3,fa5,fa2
    800007a2:	0af6f7d3          	fsub.d	fa5,fa3,fa5
    800007a6:	e20787d3          	fmv.x.d	a5,fa5
    800007aa:	f2078553          	fmv.d.x	fa0,a5
    800007ae:	8082                	ret
    800007b0:	3ff0a6b7          	lui	a3,0x3ff0a
    800007b4:	2b168693          	addi	a3,a3,689 # 3ff0a2b1 <asinh-0x400f5d4f>
    800007b8:	14e6ee63          	bltu	a3,a4,80000914 <expm1+0x318>
    800007bc:	00093717          	auipc	a4,0x93
    800007c0:	66c73707          	fld	fa4,1644(a4) # 80093e28 <_erodata+0x2b6>
    800007c4:	02064963          	bltz	a2,800007f6 <expm1+0x1fa>
    800007c8:	0ae57753          	fsub.d	fa4,fa0,fa4
    800007cc:	4605                	li	a2,1
    800007ce:	00093797          	auipc	a5,0x93
    800007d2:	6427b587          	fld	fa1,1602(a5) # 80093e10 <_erodata+0x29e>
    800007d6:	00093797          	auipc	a5,0x93
    800007da:	62a7b507          	fld	fa0,1578(a5) # 80093e00 <_erodata+0x28e>
    800007de:	bd41                	j	8000066e <expm1+0x72>
    800007e0:	00093717          	auipc	a4,0x93
    800007e4:	63873787          	fld	fa5,1592(a4) # 80093e18 <_erodata+0x2a6>
    800007e8:	a2a79753          	flt.d	a4,fa5,fa0
    800007ec:	e2070ce3          	beqz	a4,80000624 <expm1+0x28>
    800007f0:	4501                	li	a0,0
    800007f2:	4a40306f          	j	80003c96 <__math_oflow>
    800007f6:	02e57753          	fadd.d	fa4,fa0,fa4
    800007fa:	567d                	li	a2,-1
    800007fc:	00093797          	auipc	a5,0x93
    80000800:	60c7b587          	fld	fa1,1548(a5) # 80093e08 <_erodata+0x296>
    80000804:	00093797          	auipc	a5,0x93
    80000808:	5fc7b507          	fld	fa0,1532(a5) # 80093e00 <_erodata+0x28e>
    8000080c:	b58d                	j	8000066e <expm1+0x72>
    8000080e:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
    80000812:	9301                	srli	a4,a4,0x20
    80000814:	0af077d3          	fsub.d	fa5,ft0,fa5
    80000818:	e20787d3          	fmv.x.d	a5,fa5
    8000081c:	0207d693          	srli	a3,a5,0x20
    80000820:	9ea9                	addw	a3,a3,a0
    80000822:	8f7d                	and	a4,a4,a5
    80000824:	1682                	slli	a3,a3,0x20
    80000826:	8f55                	or	a4,a4,a3
    80000828:	f20707d3          	fmv.d.x	fa5,a4
    8000082c:	0a07f7d3          	fsub.d	fa5,fa5,ft0
    80000830:	e20787d3          	fmv.x.d	a5,fa5
    80000834:	bf9d                	j	800007aa <expm1+0x1ae>
    80000836:	f2078753          	fmv.d.x	fa4,a5
    8000083a:	00093717          	auipc	a4,0x93
    8000083e:	5e673787          	fld	fa5,1510(a4) # 80093e20 <_erodata+0x2ae>
    80000842:	02f777d3          	fadd.d	fa5,fa4,fa5
    80000846:	f2000753          	fmv.d.x	fa4,zero
    8000084a:	a2e79753          	flt.d	a4,fa5,fa4
    8000084e:	e35d                	bnez	a4,800008f4 <expm1+0x2f8>
    80000850:	f20787d3          	fmv.d.x	fa5,a5
    80000854:	00093717          	auipc	a4,0x93
    80000858:	5dc73707          	fld	fa4,1500(a4) # 80093e30 <_erodata+0x2be>
    8000085c:	12e7f753          	fmul.d	fa4,fa5,fa4
    80000860:	00093717          	auipc	a4,0x93
    80000864:	59873787          	fld	fa5,1432(a4) # 80093df8 <_erodata+0x286>
    80000868:	00093717          	auipc	a4,0x93
    8000086c:	59873507          	fld	fa0,1432(a4) # 80093e00 <_erodata+0x28e>
    80000870:	bbd1                	j	80000644 <expm1+0x48>
    80000872:	00093717          	auipc	a4,0x93
    80000876:	30e73787          	fld	fa5,782(a4) # 80093b80 <_erodata+0xe>
    8000087a:	02f577d3          	fadd.d	fa5,fa0,fa5
    8000087e:	0af7f7d3          	fsub.d	fa5,fa5,fa5
    80000882:	0af577d3          	fsub.d	fa5,fa0,fa5
    80000886:	e20787d3          	fmv.x.d	a5,fa5
    8000088a:	f2078553          	fmv.d.x	fa0,a5
    8000088e:	8082                	ret
    80000890:	00093717          	auipc	a4,0x93
    80000894:	5e073707          	fld	fa4,1504(a4) # 80093e70 <_erodata+0x2fe>
    80000898:	a2e69753          	flt.d	a4,fa3,fa4
    8000089c:	c32d                	beqz	a4,800008fe <expm1+0x302>
    8000089e:	02a6f553          	fadd.d	fa0,fa3,fa0
    800008a2:	00093797          	auipc	a5,0x93
    800008a6:	5d67b707          	fld	fa4,1494(a5) # 80093e78 <_erodata+0x306>
    800008aa:	0aa7f7d3          	fsub.d	fa5,fa5,fa0
    800008ae:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    800008b2:	e20787d3          	fmv.x.d	a5,fa5
    800008b6:	bdd5                	j	800007aa <expm1+0x1ae>
    800008b8:	0af6f7d3          	fsub.d	fa5,fa3,fa5
    800008bc:	00093797          	auipc	a5,0x93
    800008c0:	53c7b707          	fld	fa4,1340(a5) # 80093df8 <_erodata+0x286>
    800008c4:	72a7f7c3          	fmadd.d	fa5,fa5,fa0,fa4
    800008c8:	e20787d3          	fmv.x.d	a5,fa5
    800008cc:	bdf9                	j	800007aa <expm1+0x1ae>
    800008ce:	3ff00593          	li	a1,1023
    800008d2:	40c5863b          	subw	a2,a1,a2
    800008d6:	0146161b          	slliw	a2,a2,0x14
    800008da:	1602                	slli	a2,a2,0x20
    800008dc:	f2060753          	fmv.d.x	fa4,a2
    800008e0:	9301                	srli	a4,a4,0x20
    800008e2:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    800008e6:	0af6f7d3          	fsub.d	fa5,fa3,fa5
    800008ea:	0207f7d3          	fadd.d	fa5,fa5,ft0
    800008ee:	bda9                	j	80000748 <expm1+0x14c>
    800008f0:	ea065de3          	bgez	a2,800007aa <expm1+0x1ae>
    800008f4:	00093797          	auipc	a5,0x93
    800008f8:	2947b783          	ld	a5,660(a5) # 80093b88 <_erodata+0x16>
    800008fc:	b57d                	j	800007aa <expm1+0x1ae>
    800008fe:	0af6f7d3          	fsub.d	fa5,fa3,fa5
    80000902:	00093797          	auipc	a5,0x93
    80000906:	44e7b707          	fld	fa4,1102(a5) # 80093d50 <_erodata+0x1de>
    8000090a:	02e7f7c3          	fmadd.d	fa5,fa5,fa4,ft0
    8000090e:	e20787d3          	fmv.x.d	a5,fa5
    80000912:	bd61                	j	800007aa <expm1+0x1ae>
    80000914:	00093717          	auipc	a4,0x93
    80000918:	51c73707          	fld	fa4,1308(a4) # 80093e30 <_erodata+0x2be>
    8000091c:	12e57753          	fmul.d	fa4,fa0,fa4
    80000920:	f40640e3          	bltz	a2,80000860 <expm1+0x264>
    80000924:	00093717          	auipc	a4,0x93
    80000928:	4dc73507          	fld	fa0,1244(a4) # 80093e00 <_erodata+0x28e>
    8000092c:	22a507d3          	fmv.d	fa5,fa0
    80000930:	bb11                	j	80000644 <expm1+0x48>

0000000080000932 <fabs>:
fabs():
    80000932:	22a52553          	fabs.d	fa0,fa0
    80000936:	8082                	ret

0000000080000938 <floor>:
floor():
    80000938:	e20507d3          	fmv.x.d	a5,fa0
    8000093c:	464d                	li	a2,19
    8000093e:	4347d713          	srai	a4,a5,0x34
    80000942:	7ff77713          	andi	a4,a4,2047
    80000946:	c017081b          	addiw	a6,a4,-1023
    8000094a:	4207d893          	srai	a7,a5,0x20
    8000094e:	0007851b          	sext.w	a0,a5
    80000952:	09064363          	blt	a2,a6,800009d8 <floor+0xa0>
    80000956:	06084163          	bltz	a6,800009b8 <floor+0x80>
    8000095a:	001005b7          	lui	a1,0x100
    8000095e:	fff5869b          	addiw	a3,a1,-1
    80000962:	4106d6bb          	sraw	a3,a3,a6
    80000966:	00d8f733          	and	a4,a7,a3
    8000096a:	8f49                	or	a4,a4,a0
    8000096c:	2701                	sext.w	a4,a4
    8000096e:	e2050653          	fmv.x.d	a2,fa0
    80000972:	c321                	beqz	a4,800009b2 <floor+0x7a>
    80000974:	00093717          	auipc	a4,0x93
    80000978:	20c73787          	fld	fa5,524(a4) # 80093b80 <_erodata+0xe>
    8000097c:	02f577d3          	fadd.d	fa5,fa0,fa5
    80000980:	f2000753          	fmv.d.x	fa4,zero
    80000984:	a2f717d3          	flt.d	a5,fa4,fa5
    80000988:	cf91                	beqz	a5,800009a4 <floor+0x6c>
    8000098a:	0008d663          	bgez	a7,80000996 <floor+0x5e>
    8000098e:	4105d73b          	sraw	a4,a1,a6
    80000992:	011708bb          	addw	a7,a4,a7
    80000996:	fff6c713          	not	a4,a3
    8000099a:	01177733          	and	a4,a4,a7
    8000099e:	0007089b          	sext.w	a7,a4
    800009a2:	4501                	li	a0,0
    800009a4:	02051793          	slli	a5,a0,0x20
    800009a8:	9381                	srli	a5,a5,0x20
    800009aa:	02089713          	slli	a4,a7,0x20
    800009ae:	00f76633          	or	a2,a4,a5
    800009b2:	f2060553          	fmv.d.x	fa0,a2
    800009b6:	8082                	ret
    800009b8:	00093717          	auipc	a4,0x93
    800009bc:	1c873787          	fld	fa5,456(a4) # 80093b80 <_erodata+0xe>
    800009c0:	02f577d3          	fadd.d	fa5,fa0,fa5
    800009c4:	f2000753          	fmv.d.x	fa4,zero
    800009c8:	a2f717d3          	flt.d	a5,fa4,fa5
    800009cc:	dfe1                	beqz	a5,800009a4 <floor+0x6c>
    800009ce:	0608c463          	bltz	a7,80000a36 <floor+0xfe>
    800009d2:	4501                	li	a0,0
    800009d4:	4881                	li	a7,0
    800009d6:	b7f9                	j	800009a4 <floor+0x6c>
    800009d8:	03300613          	li	a2,51
    800009dc:	01065d63          	bge	a2,a6,800009f6 <floor+0xbe>
    800009e0:	40000713          	li	a4,1024
    800009e4:	e2050653          	fmv.x.d	a2,fa0
    800009e8:	fce815e3          	bne	a6,a4,800009b2 <floor+0x7a>
    800009ec:	02a577d3          	fadd.d	fa5,fa0,fa0
    800009f0:	e2078653          	fmv.x.d	a2,fa5
    800009f4:	bf7d                	j	800009b2 <floor+0x7a>
    800009f6:	567d                	li	a2,-1
    800009f8:	bed7071b          	addiw	a4,a4,-1043
    800009fc:	00e6573b          	srlw	a4,a2,a4
    80000a00:	00e57e33          	and	t3,a0,a4
    80000a04:	2e01                	sext.w	t3,t3
    80000a06:	e2050653          	fmv.x.d	a2,fa0
    80000a0a:	fa0e04e3          	beqz	t3,800009b2 <floor+0x7a>
    80000a0e:	00093617          	auipc	a2,0x93
    80000a12:	17263787          	fld	fa5,370(a2) # 80093b80 <_erodata+0xe>
    80000a16:	02f577d3          	fadd.d	fa5,fa0,fa5
    80000a1a:	f2000753          	fmv.d.x	fa4,zero
    80000a1e:	a2f717d3          	flt.d	a5,fa4,fa5
    80000a22:	d3c9                	beqz	a5,800009a4 <floor+0x6c>
    80000a24:	0208c463          	bltz	a7,80000a4c <floor+0x114>
    80000a28:	fff74713          	not	a4,a4
    80000a2c:	00a777b3          	and	a5,a4,a0
    80000a30:	0007851b          	sext.w	a0,a5
    80000a34:	bf85                	j	800009a4 <floor+0x6c>
    80000a36:	02189313          	slli	t1,a7,0x21
    80000a3a:	02135313          	srli	t1,t1,0x21
    80000a3e:	006566b3          	or	a3,a0,t1
    80000a42:	4501                	li	a0,0
    80000a44:	d2a5                	beqz	a3,800009a4 <floor+0x6c>
    80000a46:	bff008b7          	lui	a7,0xbff00
    80000a4a:	bfa9                	j	800009a4 <floor+0x6c>
    80000a4c:	47d1                	li	a5,20
    80000a4e:	02f80063          	beq	a6,a5,80000a6e <floor+0x136>
    80000a52:	03400793          	li	a5,52
    80000a56:	410787bb          	subw	a5,a5,a6
    80000a5a:	4585                	li	a1,1
    80000a5c:	00f595bb          	sllw	a1,a1,a5
    80000a60:	00a586bb          	addw	a3,a1,a0
    80000a64:	00a6f763          	bgeu	a3,a0,80000a72 <floor+0x13a>
    80000a68:	2885                	addiw	a7,a7,1
    80000a6a:	8536                	mv	a0,a3
    80000a6c:	bf75                	j	80000a28 <floor+0xf0>
    80000a6e:	2885                	addiw	a7,a7,1
    80000a70:	bf65                	j	80000a28 <floor+0xf0>
    80000a72:	8536                	mv	a0,a3
    80000a74:	bf55                	j	80000a28 <floor+0xf0>

0000000080000a76 <fmax>:
fmax():
    80000a76:	2ab51553          	fmax.d	fa0,fa0,fa1
    80000a7a:	8082                	ret

0000000080000a7c <fmin>:
fmin():
    80000a7c:	2ab50553          	fmin.d	fa0,fa0,fa1
    80000a80:	8082                	ret

0000000080000a82 <log2>:
log2():
    80000a82:	1141                	addi	sp,sp,-16
    80000a84:	e406                	sd	ra,8(sp)
    80000a86:	5a0000ef          	jal	ra,80001026 <log>
    80000a8a:	60a2                	ld	ra,8(sp)
    80000a8c:	00093797          	auipc	a5,0x93
    80000a90:	2bc7b787          	fld	fa5,700(a5) # 80093d48 <_erodata+0x1d6>
    80000a94:	1af57553          	fdiv.d	fa0,fa0,fa5
    80000a98:	0141                	addi	sp,sp,16
    80000a9a:	8082                	ret

0000000080000a9c <round>:
round():
    80000a9c:	e20507d3          	fmv.x.d	a5,fa0
    80000aa0:	484d                	li	a6,19
    80000aa2:	4347d693          	srai	a3,a5,0x34
    80000aa6:	7ff6f693          	andi	a3,a3,2047
    80000aaa:	c016861b          	addiw	a2,a3,-1023
    80000aae:	4207d713          	srai	a4,a5,0x20
    80000ab2:	8532                	mv	a0,a2
    80000ab4:	88ba                	mv	a7,a4
    80000ab6:	0007859b          	sext.w	a1,a5
    80000aba:	04c84c63          	blt	a6,a2,80000b12 <round+0x76>
    80000abe:	02064e63          	bltz	a2,80000afa <round+0x5e>
    80000ac2:	001006b7          	lui	a3,0x100
    80000ac6:	36fd                	addiw	a3,a3,-1
    80000ac8:	40c6d6bb          	sraw	a3,a3,a2
    80000acc:	8f75                	and	a4,a4,a3
    80000ace:	8dd9                	or	a1,a1,a4
    80000ad0:	2581                	sext.w	a1,a1
    80000ad2:	c18d                	beqz	a1,80000af4 <round+0x58>
    80000ad4:	00080737          	lui	a4,0x80
    80000ad8:	40c7573b          	sraw	a4,a4,a2
    80000adc:	011708bb          	addw	a7,a4,a7
    80000ae0:	fff6c713          	not	a4,a3
    80000ae4:	01177733          	and	a4,a4,a7
    80000ae8:	2701                	sext.w	a4,a4
    80000aea:	4781                	li	a5,0
    80000aec:	1782                	slli	a5,a5,0x20
    80000aee:	9381                	srli	a5,a5,0x20
    80000af0:	1702                	slli	a4,a4,0x20
    80000af2:	8fd9                	or	a5,a5,a4
    80000af4:	f2078553          	fmv.d.x	fa0,a5
    80000af8:	8082                	ret
    80000afa:	80000737          	lui	a4,0x80000
    80000afe:	57fd                	li	a5,-1
    80000b00:	00e8f733          	and	a4,a7,a4
    80000b04:	fef612e3          	bne	a2,a5,80000ae8 <round+0x4c>
    80000b08:	3ff007b7          	lui	a5,0x3ff00
    80000b0c:	8f5d                	or	a4,a4,a5
    80000b0e:	4781                	li	a5,0
    80000b10:	bff1                	j	80000aec <round+0x50>
    80000b12:	03300813          	li	a6,51
    80000b16:	00c85b63          	bge	a6,a2,80000b2c <round+0x90>
    80000b1a:	40000713          	li	a4,1024
    80000b1e:	fce61be3          	bne	a2,a4,80000af4 <round+0x58>
    80000b22:	02a577d3          	fadd.d	fa5,fa0,fa0
    80000b26:	e20787d3          	fmv.x.d	a5,fa5
    80000b2a:	b7e9                	j	80000af4 <round+0x58>
    80000b2c:	567d                	li	a2,-1
    80000b2e:	bed6869b          	addiw	a3,a3,-1043
    80000b32:	00d656bb          	srlw	a3,a2,a3
    80000b36:	00d5f633          	and	a2,a1,a3
    80000b3a:	2601                	sext.w	a2,a2
    80000b3c:	de45                	beqz	a2,80000af4 <round+0x58>
    80000b3e:	03300793          	li	a5,51
    80000b42:	40a7853b          	subw	a0,a5,a0
    80000b46:	4785                	li	a5,1
    80000b48:	00a797bb          	sllw	a5,a5,a0
    80000b4c:	9fad                	addw	a5,a5,a1
    80000b4e:	0007861b          	sext.w	a2,a5
    80000b52:	00b67363          	bgeu	a2,a1,80000b58 <round+0xbc>
    80000b56:	2705                	addiw	a4,a4,1
    80000b58:	fff6c693          	not	a3,a3
    80000b5c:	8ff5                	and	a5,a5,a3
    80000b5e:	2781                	sext.w	a5,a5
    80000b60:	b771                	j	80000aec <round+0x50>

0000000080000b62 <sin>:
sin():
    80000b62:	e20507d3          	fmv.x.d	a5,fa0
    80000b66:	3fe926b7          	lui	a3,0x3fe92
    80000b6a:	1fb68693          	addi	a3,a3,507 # 3fe921fb <asinh-0x4016de05>
    80000b6e:	00179713          	slli	a4,a5,0x1
    80000b72:	9305                	srli	a4,a4,0x21
    80000b74:	02e6df63          	bge	a3,a4,80000bb2 <sin+0x50>
    80000b78:	7ff006b7          	lui	a3,0x7ff00
    80000b7c:	00d74563          	blt	a4,a3,80000b86 <sin+0x24>
    80000b80:	0aa57553          	fsub.d	fa0,fa0,fa0
    80000b84:	8082                	ret
    80000b86:	1101                	addi	sp,sp,-32
    80000b88:	850a                	mv	a0,sp
    80000b8a:	ec06                	sd	ra,24(sp)
    80000b8c:	0d8020ef          	jal	ra,80002c64 <__ieee754_rem_pio2>
    80000b90:	890d                	andi	a0,a0,3
    80000b92:	4785                	li	a5,1
    80000b94:	02f50463          	beq	a0,a5,80000bbc <sin+0x5a>
    80000b98:	4789                	li	a5,2
    80000b9a:	25a2                	fld	fa1,8(sp)
    80000b9c:	2502                	fld	fa0,0(sp)
    80000b9e:	02f50863          	beq	a0,a5,80000bce <sin+0x6c>
    80000ba2:	c115                	beqz	a0,80000bc6 <sin+0x64>
    80000ba4:	4f8020ef          	jal	ra,8000309c <__kernel_cos>
    80000ba8:	22a51553          	fneg.d	fa0,fa0
    80000bac:	60e2                	ld	ra,24(sp)
    80000bae:	6105                	addi	sp,sp,32
    80000bb0:	8082                	ret
    80000bb2:	f20005d3          	fmv.d.x	fa1,zero
    80000bb6:	4501                	li	a0,0
    80000bb8:	5850206f          	j	8000393c <__kernel_sin>
    80000bbc:	25a2                	fld	fa1,8(sp)
    80000bbe:	2502                	fld	fa0,0(sp)
    80000bc0:	4dc020ef          	jal	ra,8000309c <__kernel_cos>
    80000bc4:	b7e5                	j	80000bac <sin+0x4a>
    80000bc6:	4505                	li	a0,1
    80000bc8:	575020ef          	jal	ra,8000393c <__kernel_sin>
    80000bcc:	b7c5                	j	80000bac <sin+0x4a>
    80000bce:	4505                	li	a0,1
    80000bd0:	56d020ef          	jal	ra,8000393c <__kernel_sin>
    80000bd4:	22a51553          	fneg.d	fa0,fa0
    80000bd8:	bfd1                	j	80000bac <sin+0x4a>

0000000080000bda <tan>:
tan():
    80000bda:	e20507d3          	fmv.x.d	a5,fa0
    80000bde:	3fe926b7          	lui	a3,0x3fe92
    80000be2:	1fb68693          	addi	a3,a3,507 # 3fe921fb <asinh-0x4016de05>
    80000be6:	00179713          	slli	a4,a5,0x1
    80000bea:	9305                	srli	a4,a4,0x21
    80000bec:	02e6db63          	bge	a3,a4,80000c22 <tan+0x48>
    80000bf0:	7ff006b7          	lui	a3,0x7ff00
    80000bf4:	00d74563          	blt	a4,a3,80000bfe <tan+0x24>
    80000bf8:	0aa57553          	fsub.d	fa0,fa0,fa0
    80000bfc:	8082                	ret
    80000bfe:	1101                	addi	sp,sp,-32
    80000c00:	850a                	mv	a0,sp
    80000c02:	ec06                	sd	ra,24(sp)
    80000c04:	060020ef          	jal	ra,80002c64 <__ieee754_rem_pio2>
    80000c08:	25a2                	fld	fa1,8(sp)
    80000c0a:	2502                	fld	fa0,0(sp)
    80000c0c:	0015151b          	slliw	a0,a0,0x1
    80000c10:	4785                	li	a5,1
    80000c12:	8909                	andi	a0,a0,2
    80000c14:	40a7853b          	subw	a0,a5,a0
    80000c18:	5c9020ef          	jal	ra,800039e0 <__kernel_tan>
    80000c1c:	60e2                	ld	ra,24(sp)
    80000c1e:	6105                	addi	sp,sp,32
    80000c20:	8082                	ret
    80000c22:	f20005d3          	fmv.d.x	fa1,zero
    80000c26:	4505                	li	a0,1
    80000c28:	5b90206f          	j	800039e0 <__kernel_tan>

0000000080000c2c <tanh>:
tanh():
    80000c2c:	e20507d3          	fmv.x.d	a5,fa0
    80000c30:	1141                	addi	sp,sp,-16
    80000c32:	e022                	sd	s0,0(sp)
    80000c34:	4207d413          	srai	s0,a5,0x20
    80000c38:	02141713          	slli	a4,s0,0x21
    80000c3c:	e406                	sd	ra,8(sp)
    80000c3e:	7ff006b7          	lui	a3,0x7ff00
    80000c42:	9305                	srli	a4,a4,0x21
    80000c44:	02d74063          	blt	a4,a3,80000c64 <tanh+0x38>
    80000c48:	00093717          	auipc	a4,0x93
    80000c4c:	f4873787          	fld	fa5,-184(a4) # 80093b90 <_erodata+0x1e>
    80000c50:	1aa7f553          	fdiv.d	fa0,fa5,fa0
    80000c54:	06044763          	bltz	s0,80000cc2 <tanh+0x96>
    80000c58:	02f57553          	fadd.d	fa0,fa0,fa5
    80000c5c:	60a2                	ld	ra,8(sp)
    80000c5e:	6402                	ld	s0,0(sp)
    80000c60:	0141                	addi	sp,sp,16
    80000c62:	8082                	ret
    80000c64:	403606b7          	lui	a3,0x40360
    80000c68:	04d75663          	bge	a4,a3,80000cb4 <tanh+0x88>
    80000c6c:	3c8006b7          	lui	a3,0x3c800
    80000c70:	04d74f63          	blt	a4,a3,80000cce <tanh+0xa2>
    80000c74:	3ff007b7          	lui	a5,0x3ff00
    80000c78:	06f74663          	blt	a4,a5,80000ce4 <tanh+0xb8>
    80000c7c:	cb7ff0ef          	jal	ra,80000932 <fabs>
    80000c80:	02a57553          	fadd.d	fa0,fa0,fa0
    80000c84:	979ff0ef          	jal	ra,800005fc <expm1>
    80000c88:	00093797          	auipc	a5,0x93
    80000c8c:	0c87b707          	fld	fa4,200(a5) # 80093d50 <_erodata+0x1de>
    80000c90:	02e57553          	fadd.d	fa0,fa0,fa4
    80000c94:	00093797          	auipc	a5,0x93
    80000c98:	efc7b787          	fld	fa5,-260(a5) # 80093b90 <_erodata+0x1e>
    80000c9c:	1aa77553          	fdiv.d	fa0,fa4,fa0
    80000ca0:	0aa7f553          	fsub.d	fa0,fa5,fa0
    80000ca4:	fa045ce3          	bgez	s0,80000c5c <tanh+0x30>
    80000ca8:	60a2                	ld	ra,8(sp)
    80000caa:	6402                	ld	s0,0(sp)
    80000cac:	22a51553          	fneg.d	fa0,fa0
    80000cb0:	0141                	addi	sp,sp,16
    80000cb2:	8082                	ret
    80000cb4:	00093797          	auipc	a5,0x93
    80000cb8:	edc7b507          	fld	fa0,-292(a5) # 80093b90 <_erodata+0x1e>
    80000cbc:	fa0450e3          	bgez	s0,80000c5c <tanh+0x30>
    80000cc0:	b7e5                	j	80000ca8 <tanh+0x7c>
    80000cc2:	60a2                	ld	ra,8(sp)
    80000cc4:	6402                	ld	s0,0(sp)
    80000cc6:	0af57553          	fsub.d	fa0,fa0,fa5
    80000cca:	0141                	addi	sp,sp,16
    80000ccc:	8082                	ret
    80000cce:	f20787d3          	fmv.d.x	fa5,a5
    80000cd2:	00093717          	auipc	a4,0x93
    80000cd6:	ebe73507          	fld	fa0,-322(a4) # 80093b90 <_erodata+0x1e>
    80000cda:	02a7f553          	fadd.d	fa0,fa5,fa0
    80000cde:	12f57553          	fmul.d	fa0,fa0,fa5
    80000ce2:	bfad                	j	80000c5c <tanh+0x30>
    80000ce4:	c4fff0ef          	jal	ra,80000932 <fabs>
    80000ce8:	00093797          	auipc	a5,0x93
    80000cec:	1907b787          	fld	fa5,400(a5) # 80093e78 <_erodata+0x306>
    80000cf0:	12f57553          	fmul.d	fa0,fa0,fa5
    80000cf4:	909ff0ef          	jal	ra,800005fc <expm1>
    80000cf8:	00093797          	auipc	a5,0x93
    80000cfc:	0587b787          	fld	fa5,88(a5) # 80093d50 <_erodata+0x1de>
    80000d00:	02f577d3          	fadd.d	fa5,fa0,fa5
    80000d04:	22a51553          	fneg.d	fa0,fa0
    80000d08:	1af57553          	fdiv.d	fa0,fa0,fa5
    80000d0c:	f40458e3          	bgez	s0,80000c5c <tanh+0x30>
    80000d10:	bf61                	j	80000ca8 <tanh+0x7c>

0000000080000d12 <trunc>:
trunc():
    80000d12:	e20507d3          	fmv.x.d	a5,fa0
    80000d16:	45cd                	li	a1,19
    80000d18:	4347d713          	srai	a4,a5,0x34
    80000d1c:	7ff77713          	andi	a4,a4,2047
    80000d20:	c017069b          	addiw	a3,a4,-1023
    80000d24:	4207d513          	srai	a0,a5,0x20
    80000d28:	02d5c063          	blt	a1,a3,80000d48 <trunc+0x36>
    80000d2c:	0406ca63          	bltz	a3,80000d80 <trunc+0x6e>
    80000d30:	001007b7          	lui	a5,0x100
    80000d34:	37fd                	addiw	a5,a5,-1
    80000d36:	40d7d7bb          	sraw	a5,a5,a3
    80000d3a:	fff7c793          	not	a5,a5
    80000d3e:	8fe9                	and	a5,a5,a0
    80000d40:	1782                	slli	a5,a5,0x20
    80000d42:	f2078553          	fmv.d.x	fa0,a5
    80000d46:	8082                	ret
    80000d48:	03300613          	li	a2,51
    80000d4c:	00d65b63          	bge	a2,a3,80000d62 <trunc+0x50>
    80000d50:	40000713          	li	a4,1024
    80000d54:	fee697e3          	bne	a3,a4,80000d42 <trunc+0x30>
    80000d58:	02a577d3          	fadd.d	fa5,fa0,fa0
    80000d5c:	e20787d3          	fmv.x.d	a5,fa5
    80000d60:	b7cd                	j	80000d42 <trunc+0x30>
    80000d62:	56fd                	li	a3,-1
    80000d64:	bed7071b          	addiw	a4,a4,-1043
    80000d68:	00e6d73b          	srlw	a4,a3,a4
    80000d6c:	fff74713          	not	a4,a4
    80000d70:	8ff9                	and	a5,a5,a4
    80000d72:	1782                	slli	a5,a5,0x20
    80000d74:	1502                	slli	a0,a0,0x20
    80000d76:	9381                	srli	a5,a5,0x20
    80000d78:	8fc9                	or	a5,a5,a0
    80000d7a:	f2078553          	fmv.d.x	fa0,a5
    80000d7e:	8082                	ret
    80000d80:	800007b7          	lui	a5,0x80000
    80000d84:	8fe9                	and	a5,a5,a0
    80000d86:	1782                	slli	a5,a5,0x20
    80000d88:	f2078553          	fmv.d.x	fa0,a5
    80000d8c:	8082                	ret

0000000080000d8e <acos>:
acos():
    80000d8e:	1101                	addi	sp,sp,-32
    80000d90:	a422                	fsd	fs0,8(sp)
    80000d92:	22a50453          	fmv.d	fs0,fa0
    80000d96:	a026                	fsd	fs1,0(sp)
    80000d98:	ec06                	sd	ra,24(sp)
    80000d9a:	492000ef          	jal	ra,8000122c <__ieee754_acos>
    80000d9e:	a28427d3          	feq.d	a5,fs0,fs0
    80000da2:	22a504d3          	fmv.d	fs1,fa0
    80000da6:	cf81                	beqz	a5,80000dbe <acos+0x30>
    80000da8:	22840553          	fmv.d	fa0,fs0
    80000dac:	b87ff0ef          	jal	ra,80000932 <fabs>
    80000db0:	00093797          	auipc	a5,0x93
    80000db4:	de07b787          	fld	fa5,-544(a5) # 80093b90 <_erodata+0x1e>
    80000db8:	a2a797d3          	flt.d	a5,fa5,fa0
    80000dbc:	eb81                	bnez	a5,80000dcc <acos+0x3e>
    80000dbe:	60e2                	ld	ra,24(sp)
    80000dc0:	22948553          	fmv.d	fa0,fs1
    80000dc4:	2422                	fld	fs0,8(sp)
    80000dc6:	2482                	fld	fs1,0(sp)
    80000dc8:	6105                	addi	sp,sp,32
    80000dca:	8082                	ret
    80000dcc:	44d5f0ef          	jal	ra,80060a18 <__errno>
    80000dd0:	60e2                	ld	ra,24(sp)
    80000dd2:	2422                	fld	fs0,8(sp)
    80000dd4:	2482                	fld	fs1,0(sp)
    80000dd6:	02100793          	li	a5,33
    80000dda:	c11c                	sw	a5,0(a0)
    80000ddc:	00069517          	auipc	a0,0x69
    80000de0:	dac50513          	addi	a0,a0,-596 # 80069b88 <qjsc_repl+0x45d8>
    80000de4:	6105                	addi	sp,sp,32
    80000de6:	74f0206f          	j	80003d34 <nan>

0000000080000dea <acosh>:
acosh():
    80000dea:	1101                	addi	sp,sp,-32
    80000dec:	a422                	fsd	fs0,8(sp)
    80000dee:	22a50453          	fmv.d	fs0,fa0
    80000df2:	ec06                	sd	ra,24(sp)
    80000df4:	6e4000ef          	jal	ra,800014d8 <__ieee754_acosh>
    80000df8:	a28427d3          	feq.d	a5,fs0,fs0
    80000dfc:	cb81                	beqz	a5,80000e0c <acosh+0x22>
    80000dfe:	00093797          	auipc	a5,0x93
    80000e02:	d927b787          	fld	fa5,-622(a5) # 80093b90 <_erodata+0x1e>
    80000e06:	a2f417d3          	flt.d	a5,fs0,fa5
    80000e0a:	e789                	bnez	a5,80000e14 <acosh+0x2a>
    80000e0c:	60e2                	ld	ra,24(sp)
    80000e0e:	2422                	fld	fs0,8(sp)
    80000e10:	6105                	addi	sp,sp,32
    80000e12:	8082                	ret
    80000e14:	4055f0ef          	jal	ra,80060a18 <__errno>
    80000e18:	60e2                	ld	ra,24(sp)
    80000e1a:	f2000553          	fmv.d.x	fa0,zero
    80000e1e:	02100793          	li	a5,33
    80000e22:	c11c                	sw	a5,0(a0)
    80000e24:	2422                	fld	fs0,8(sp)
    80000e26:	1aa57553          	fdiv.d	fa0,fa0,fa0
    80000e2a:	6105                	addi	sp,sp,32
    80000e2c:	8082                	ret

0000000080000e2e <asin>:
asin():
    80000e2e:	1101                	addi	sp,sp,-32
    80000e30:	a422                	fsd	fs0,8(sp)
    80000e32:	22a50453          	fmv.d	fs0,fa0
    80000e36:	a026                	fsd	fs1,0(sp)
    80000e38:	ec06                	sd	ra,24(sp)
    80000e3a:	792000ef          	jal	ra,800015cc <__ieee754_asin>
    80000e3e:	a28427d3          	feq.d	a5,fs0,fs0
    80000e42:	22a504d3          	fmv.d	fs1,fa0
    80000e46:	cf81                	beqz	a5,80000e5e <asin+0x30>
    80000e48:	22840553          	fmv.d	fa0,fs0
    80000e4c:	ae7ff0ef          	jal	ra,80000932 <fabs>
    80000e50:	00093797          	auipc	a5,0x93
    80000e54:	d407b787          	fld	fa5,-704(a5) # 80093b90 <_erodata+0x1e>
    80000e58:	a2a797d3          	flt.d	a5,fa5,fa0
    80000e5c:	eb81                	bnez	a5,80000e6c <asin+0x3e>
    80000e5e:	60e2                	ld	ra,24(sp)
    80000e60:	22948553          	fmv.d	fa0,fs1
    80000e64:	2422                	fld	fs0,8(sp)
    80000e66:	2482                	fld	fs1,0(sp)
    80000e68:	6105                	addi	sp,sp,32
    80000e6a:	8082                	ret
    80000e6c:	3ad5f0ef          	jal	ra,80060a18 <__errno>
    80000e70:	60e2                	ld	ra,24(sp)
    80000e72:	2422                	fld	fs0,8(sp)
    80000e74:	2482                	fld	fs1,0(sp)
    80000e76:	02100793          	li	a5,33
    80000e7a:	c11c                	sw	a5,0(a0)
    80000e7c:	00069517          	auipc	a0,0x69
    80000e80:	d0c50513          	addi	a0,a0,-756 # 80069b88 <qjsc_repl+0x45d8>
    80000e84:	6105                	addi	sp,sp,32
    80000e86:	6af0206f          	j	80003d34 <nan>

0000000080000e8a <atan2>:
atan2():
    80000e8a:	1a10006f          	j	8000182a <__ieee754_atan2>

0000000080000e8e <atanh>:
atanh():
    80000e8e:	1101                	addi	sp,sp,-32
    80000e90:	a026                	fsd	fs1,0(sp)
    80000e92:	22a504d3          	fmv.d	fs1,fa0
    80000e96:	a422                	fsd	fs0,8(sp)
    80000e98:	ec06                	sd	ra,24(sp)
    80000e9a:	37b000ef          	jal	ra,80001a14 <__ieee754_atanh>
    80000e9e:	a294a7d3          	feq.d	a5,fs1,fs1
    80000ea2:	22a50453          	fmv.d	fs0,fa0
    80000ea6:	cb85                	beqz	a5,80000ed6 <atanh+0x48>
    80000ea8:	22948553          	fmv.d	fa0,fs1
    80000eac:	a87ff0ef          	jal	ra,80000932 <fabs>
    80000eb0:	00093797          	auipc	a5,0x93
    80000eb4:	ce07b787          	fld	fa5,-800(a5) # 80093b90 <_erodata+0x1e>
    80000eb8:	a2a787d3          	fle.d	a5,fa5,fa0
    80000ebc:	cf89                	beqz	a5,80000ed6 <atanh+0x48>
    80000ebe:	a2a797d3          	flt.d	a5,fa5,fa0
    80000ec2:	c38d                	beqz	a5,80000ee4 <atanh+0x56>
    80000ec4:	f2000453          	fmv.d.x	fs0,zero
    80000ec8:	3515f0ef          	jal	ra,80060a18 <__errno>
    80000ecc:	02100793          	li	a5,33
    80000ed0:	1a847453          	fdiv.d	fs0,fs0,fs0
    80000ed4:	c11c                	sw	a5,0(a0)
    80000ed6:	60e2                	ld	ra,24(sp)
    80000ed8:	22840553          	fmv.d	fa0,fs0
    80000edc:	2482                	fld	fs1,0(sp)
    80000ede:	2422                	fld	fs0,8(sp)
    80000ee0:	6105                	addi	sp,sp,32
    80000ee2:	8082                	ret
    80000ee4:	f2000453          	fmv.d.x	fs0,zero
    80000ee8:	3315f0ef          	jal	ra,80060a18 <__errno>
    80000eec:	60e2                	ld	ra,24(sp)
    80000eee:	1a84f453          	fdiv.d	fs0,fs1,fs0
    80000ef2:	02100793          	li	a5,33
    80000ef6:	c11c                	sw	a5,0(a0)
    80000ef8:	2482                	fld	fs1,0(sp)
    80000efa:	22840553          	fmv.d	fa0,fs0
    80000efe:	2422                	fld	fs0,8(sp)
    80000f00:	6105                	addi	sp,sp,32
    80000f02:	8082                	ret

0000000080000f04 <cosh>:
cosh():
    80000f04:	1101                	addi	sp,sp,-32
    80000f06:	a422                	fsd	fs0,8(sp)
    80000f08:	22a50453          	fmv.d	fs0,fa0
    80000f0c:	a026                	fsd	fs1,0(sp)
    80000f0e:	ec06                	sd	ra,24(sp)
    80000f10:	407000ef          	jal	ra,80001b16 <__ieee754_cosh>
    80000f14:	a28427d3          	feq.d	a5,fs0,fs0
    80000f18:	22a504d3          	fmv.d	fs1,fa0
    80000f1c:	cf81                	beqz	a5,80000f34 <cosh+0x30>
    80000f1e:	22840553          	fmv.d	fa0,fs0
    80000f22:	a11ff0ef          	jal	ra,80000932 <fabs>
    80000f26:	00093797          	auipc	a5,0x93
    80000f2a:	f627b787          	fld	fa5,-158(a5) # 80093e88 <_erodata+0x316>
    80000f2e:	a2a797d3          	flt.d	a5,fa5,fa0
    80000f32:	eb81                	bnez	a5,80000f42 <cosh+0x3e>
    80000f34:	60e2                	ld	ra,24(sp)
    80000f36:	22948553          	fmv.d	fa0,fs1
    80000f3a:	2422                	fld	fs0,8(sp)
    80000f3c:	2482                	fld	fs1,0(sp)
    80000f3e:	6105                	addi	sp,sp,32
    80000f40:	8082                	ret
    80000f42:	2d75f0ef          	jal	ra,80060a18 <__errno>
    80000f46:	60e2                	ld	ra,24(sp)
    80000f48:	02200793          	li	a5,34
    80000f4c:	c11c                	sw	a5,0(a0)
    80000f4e:	00093797          	auipc	a5,0x93
    80000f52:	f327b487          	fld	fs1,-206(a5) # 80093e80 <_erodata+0x30e>
    80000f56:	22948553          	fmv.d	fa0,fs1
    80000f5a:	2422                	fld	fs0,8(sp)
    80000f5c:	2482                	fld	fs1,0(sp)
    80000f5e:	6105                	addi	sp,sp,32
    80000f60:	8082                	ret

0000000080000f62 <exp>:
exp():
    80000f62:	1101                	addi	sp,sp,-32
    80000f64:	a422                	fsd	fs0,8(sp)
    80000f66:	22a50453          	fmv.d	fs0,fa0
    80000f6a:	a026                	fsd	fs1,0(sp)
    80000f6c:	ec06                	sd	ra,24(sp)
    80000f6e:	4b5000ef          	jal	ra,80001c22 <__ieee754_exp>
    80000f72:	22a504d3          	fmv.d	fs1,fa0
    80000f76:	22840553          	fmv.d	fa0,fs0
    80000f7a:	5ad020ef          	jal	ra,80003d26 <finite>
    80000f7e:	cd19                	beqz	a0,80000f9c <exp+0x3a>
    80000f80:	00093797          	auipc	a5,0x93
    80000f84:	e987b787          	fld	fa5,-360(a5) # 80093e18 <_erodata+0x2a6>
    80000f88:	a28797d3          	flt.d	a5,fa5,fs0
    80000f8c:	ef99                	bnez	a5,80000faa <exp+0x48>
    80000f8e:	00093797          	auipc	a5,0x93
    80000f92:	f027b787          	fld	fa5,-254(a5) # 80093e90 <_erodata+0x31e>
    80000f96:	a2f417d3          	flt.d	a5,fs0,fa5
    80000f9a:	eb85                	bnez	a5,80000fca <exp+0x68>
    80000f9c:	60e2                	ld	ra,24(sp)
    80000f9e:	22948553          	fmv.d	fa0,fs1
    80000fa2:	2422                	fld	fs0,8(sp)
    80000fa4:	2482                	fld	fs1,0(sp)
    80000fa6:	6105                	addi	sp,sp,32
    80000fa8:	8082                	ret
    80000faa:	26f5f0ef          	jal	ra,80060a18 <__errno>
    80000fae:	60e2                	ld	ra,24(sp)
    80000fb0:	02200793          	li	a5,34
    80000fb4:	c11c                	sw	a5,0(a0)
    80000fb6:	00093797          	auipc	a5,0x93
    80000fba:	eca7b487          	fld	fs1,-310(a5) # 80093e80 <_erodata+0x30e>
    80000fbe:	22948553          	fmv.d	fa0,fs1
    80000fc2:	2422                	fld	fs0,8(sp)
    80000fc4:	2482                	fld	fs1,0(sp)
    80000fc6:	6105                	addi	sp,sp,32
    80000fc8:	8082                	ret
    80000fca:	24f5f0ef          	jal	ra,80060a18 <__errno>
    80000fce:	02200793          	li	a5,34
    80000fd2:	f20004d3          	fmv.d.x	fs1,zero
    80000fd6:	c11c                	sw	a5,0(a0)
    80000fd8:	b7d1                	j	80000f9c <exp+0x3a>

0000000080000fda <fmod>:
fmod():
    80000fda:	1101                	addi	sp,sp,-32
    80000fdc:	a422                	fsd	fs0,8(sp)
    80000fde:	a026                	fsd	fs1,0(sp)
    80000fe0:	22b58453          	fmv.d	fs0,fa1
    80000fe4:	22a504d3          	fmv.d	fs1,fa0
    80000fe8:	ec06                	sd	ra,24(sp)
    80000fea:	6a9000ef          	jal	ra,80001e92 <__ieee754_fmod>
    80000fee:	a294a7d3          	feq.d	a5,fs1,fs1
    80000ff2:	a2842753          	feq.d	a4,fs0,fs0
    80000ff6:	8ff9                	and	a5,a5,a4
    80000ff8:	c791                	beqz	a5,80001004 <fmod+0x2a>
    80000ffa:	f20004d3          	fmv.d.x	fs1,zero
    80000ffe:	a29427d3          	feq.d	a5,fs0,fs1
