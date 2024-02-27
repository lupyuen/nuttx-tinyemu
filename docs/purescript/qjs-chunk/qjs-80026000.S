    80025000:	00046717          	auipc	a4,0x46
    80025004:	d3070713          	addi	a4,a4,-720 # 8006ad30 <qjsc_repl+0x5780>
    80025008:	97ba                	add	a5,a5,a4
    8002500a:	439c                	lw	a5,0(a5)
    8002500c:	97ba                	add	a5,a5,a4
    8002500e:	8782                	jr	a5
quickjs-nuttx/quickjs.c:51470
        fe = JS_GetOpaque2(ctx, argv[2], JS_CLASS_FLOAT_ENV);
    80025010:	700c                	ld	a1,32(s0)
    80025012:	7410                	ld	a2,40(s0)
    80025014:	02300693          	li	a3,35
    80025018:	854e                	mv	a0,s3
    8002501a:	fd4f30ef          	jal	ra,800187ee <JS_GetOpaque2>
    8002501e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:51471
        if (!fe)
    80025020:	f945                	bnez	a0,80024fd0 <js_bigfloat_fop2+0xb2>
quickjs-nuttx/quickjs.c:51477
        if (b == &b_s)
    80025022:	01749563          	bne	s1,s7,8002502c <js_bigfloat_fop2+0x10e>
quickjs-nuttx/quickjs.c:51478
            bf_delete(b);
    80025026:	8526                	mv	a0,s1
    80025028:	c2ee50ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:51480
        if (a == &a_s)
    8002502c:	01891563          	bne	s2,s8,80025036 <js_bigfloat_fop2+0x118>
quickjs-nuttx/quickjs.c:51481
            bf_delete(a);
    80025030:	854a                	mv	a0,s2
    80025032:	c24e50ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:51483
        JS_FreeValue(ctx, op1);
    80025036:	65c2                	ld	a1,16(sp)
    80025038:	6662                	ld	a2,24(sp)
    8002503a:	854e                	mv	a0,s3
    8002503c:	f62e60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51484
        JS_FreeValue(ctx, op2);
    80025040:	7582                	ld	a1,32(sp)
    80025042:	7622                	ld	a2,40(sp)
    80025044:	854e                	mv	a0,s3
    80025046:	f58e60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51485
        return JS_EXCEPTION;
    8002504a:	4799                	li	a5,6
    8002504c:	e082                	sd	zero,64(sp)
    8002504e:	b7b1                	j	80024f9a <js_bigfloat_fop2+0x7c>
quickjs-nuttx/quickjs.c:51490
        fe->status |= bf_atan2(r, a, b, fe->prec, fe->flags);
    80025050:	4418                	lw	a4,8(s0)
    80025052:	6014                	ld	a3,0(s0)
    80025054:	8626                	mv	a2,s1
    80025056:	85ca                	mv	a1,s2
    80025058:	00f340ef          	jal	ra,80059866 <bf_atan2>
quickjs-nuttx/quickjs.c:51511
        fe->status |= bf_div(r, a, b, fe->prec, fe->flags);
    8002505c:	445c                	lw	a5,12(s0)
    8002505e:	8d5d                	or	a0,a0,a5
    80025060:	c448                	sw	a0,12(s0)
quickjs-nuttx/quickjs.c:51516
    if (a == &a_s)
    80025062:	01891563          	bne	s2,s8,8002506c <js_bigfloat_fop2+0x14e>
quickjs-nuttx/quickjs.c:51517
        bf_delete(a);
    80025066:	854a                	mv	a0,s2
    80025068:	beee50ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:51518
    if (b == &b_s)
    8002506c:	01749563          	bne	s1,s7,80025076 <js_bigfloat_fop2+0x158>
quickjs-nuttx/quickjs.c:51519
        bf_delete(b);
    80025070:	8526                	mv	a0,s1
    80025072:	be4e50ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:51520
    JS_FreeValue(ctx, op1);
    80025076:	65c2                	ld	a1,16(sp)
    80025078:	6662                	ld	a2,24(sp)
    8002507a:	854e                	mv	a0,s3
    8002507c:	f22e60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51521
    JS_FreeValue(ctx, op2);
    80025080:	7582                	ld	a1,32(sp)
    80025082:	7622                	ld	a2,40(sp)
    80025084:	854e                	mv	a0,s3
    80025086:	f18e60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51522
    return res;
    8002508a:	e0da                	sd	s6,64(sp)
    8002508c:	e4d6                	sd	s5,72(sp)
    8002508e:	b5f1                	j	80024f5a <js_bigfloat_fop2+0x3c>
quickjs-nuttx/quickjs.c:51493
        fe->status |= bf_pow(r, a, b, fe->prec, fe->flags | BF_POW_JS_QUIRKS);
    80025090:	4418                	lw	a4,8(s0)
    80025092:	67c1                	lui	a5,0x10
    80025094:	6014                	ld	a3,0(s0)
    80025096:	8f5d                	or	a4,a4,a5
    80025098:	2701                	sext.w	a4,a4
    8002509a:	8626                	mv	a2,s1
    8002509c:	85ca                	mv	a1,s2
    8002509e:	634390ef          	jal	ra,8005e6d2 <bf_pow>
    800250a2:	bf6d                	j	8002505c <js_bigfloat_fop2+0x13e>
quickjs-nuttx/quickjs.c:51496
        fe->status |= bf_rem(r, a, b, fe->prec, fe->flags, BF_RNDZ);
    800250a4:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:51499
        fe->status |= bf_rem(r, a, b, fe->prec, fe->flags, BF_RNDN);
    800250a6:	4418                	lw	a4,8(s0)
    800250a8:	6014                	ld	a3,0(s0)
    800250aa:	8626                	mv	a2,s1
    800250ac:	85ca                	mv	a1,s2
    800250ae:	4223a0ef          	jal	ra,8005f4d0 <bf_rem>
    800250b2:	b76d                	j	8002505c <js_bigfloat_fop2+0x13e>
    800250b4:	4781                	li	a5,0
    800250b6:	bfc5                	j	800250a6 <js_bigfloat_fop2+0x188>
quickjs-nuttx/quickjs.c:51502
        fe->status |= bf_add(r, a, b, fe->prec, fe->flags);
    800250b8:	4418                	lw	a4,8(s0)
    800250ba:	6014                	ld	a3,0(s0)
    800250bc:	8626                	mv	a2,s1
    800250be:	85ca                	mv	a1,s2
    800250c0:	27d330ef          	jal	ra,80058b3c <bf_add>
    800250c4:	bf61                	j	8002505c <js_bigfloat_fop2+0x13e>
quickjs-nuttx/quickjs.c:51505
        fe->status |= bf_sub(r, a, b, fe->prec, fe->flags);
    800250c6:	4418                	lw	a4,8(s0)
    800250c8:	6014                	ld	a3,0(s0)
    800250ca:	8626                	mv	a2,s1
    800250cc:	85ca                	mv	a1,s2
    800250ce:	2d7330ef          	jal	ra,80058ba4 <bf_sub>
    800250d2:	b769                	j	8002505c <js_bigfloat_fop2+0x13e>
quickjs-nuttx/quickjs.c:51508
        fe->status |= bf_mul(r, a, b, fe->prec, fe->flags);
    800250d4:	4418                	lw	a4,8(s0)
    800250d6:	6014                	ld	a3,0(s0)
    800250d8:	8626                	mv	a2,s1
    800250da:	85ca                	mv	a1,s2
    800250dc:	654370ef          	jal	ra,8005c730 <bf_mul>
    800250e0:	bfb5                	j	8002505c <js_bigfloat_fop2+0x13e>
quickjs-nuttx/quickjs.c:51511
        fe->status |= bf_div(r, a, b, fe->prec, fe->flags);
    800250e2:	4418                	lw	a4,8(s0)
    800250e4:	6014                	ld	a3,0(s0)
    800250e6:	8626                	mv	a2,s1
    800250e8:	85ca                	mv	a1,s2
    800250ea:	2c7330ef          	jal	ra,80058bb0 <bf_div>
    800250ee:	b7bd                	j	8002505c <js_bigfloat_fop2+0x13e>
quickjs-nuttx/quickjs.c:51514
        abort();
    800250f0:	2933d0ef          	jal	ra,80062b82 <abort>

00000000800250f4 <js_bigfloat_fop>:
js_bigfloat_fop():
quickjs-nuttx/quickjs.c:51351
{
    800250f4:	7131                	addi	sp,sp,-192
    800250f6:	f922                	sd	s0,176(sp)
    800250f8:	f14a                	sd	s2,160(sp)
    800250fa:	ed4e                	sd	s3,152(sp)
    800250fc:	e952                	sd	s4,144(sp)
    800250fe:	fd06                	sd	ra,184(sp)
    80025100:	f526                	sd	s1,168(sp)
    80025102:	e556                	sd	s5,136(sp)
    80025104:	e15a                	sd	s6,128(sp)
    80025106:	fcde                	sd	s7,120(sp)
    80025108:	e02e                	sd	a1,0(sp)
    8002510a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:51357
    op1 = JS_ToNumeric(ctx, argv[0]);
    8002510c:	630c                	ld	a1,0(a4)
    8002510e:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:51351
{
    80025110:	8936                	mv	s2,a3
    80025112:	843a                	mv	s0,a4
    80025114:	8a3e                	mv	s4,a5
    80025116:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:51357
    op1 = JS_ToNumeric(ctx, argv[0]);
    80025118:	de7ff0ef          	jal	ra,80024efe <JS_ToNumeric>
    8002511c:	ec2a                	sd	a0,24(sp)
    8002511e:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:51358
    if (JS_IsException(op1))
    80025120:	0005871b          	sext.w	a4,a1
    80025124:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51357
    op1 = JS_ToNumeric(ctx, argv[0]);
    80025126:	862a                	mv	a2,a0
    80025128:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:51358
    if (JS_IsException(op1))
    8002512a:	02f71163          	bne	a4,a5,8002514c <js_bigfloat_fop+0x58>
quickjs-nuttx/quickjs.c:51359
        return op1;
    8002512e:	fc2a                	sd	a0,56(sp)
    80025130:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:51445 (discriminator 1)
}
    80025132:	70ea                	ld	ra,184(sp)
    80025134:	744a                	ld	s0,176(sp)
    80025136:	7562                	ld	a0,56(sp)
    80025138:	6586                	ld	a1,64(sp)
    8002513a:	74aa                	ld	s1,168(sp)
    8002513c:	790a                	ld	s2,160(sp)
    8002513e:	69ea                	ld	s3,152(sp)
    80025140:	6a4a                	ld	s4,144(sp)
    80025142:	6aaa                	ld	s5,136(sp)
    80025144:	6b0a                	ld	s6,128(sp)
    80025146:	7be6                	ld	s7,120(sp)
    80025148:	6129                	addi	sp,sp,192
    8002514a:	8082                	ret
quickjs-nuttx/quickjs.c:51360
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8002514c:	04810b93          	addi	s7,sp,72
    80025150:	85de                	mv	a1,s7
    80025152:	854e                	mv	a0,s3
    80025154:	b14e50ef          	jal	ra,8000a468 <JS_ToBigFloat>
    80025158:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:51361
    if (!a) {
    8002515a:	e911                	bnez	a0,8002516e <js_bigfloat_fop+0x7a>
quickjs-nuttx/quickjs.c:51362
        JS_FreeValue(ctx, op1);
    8002515c:	65e2                	ld	a1,24(sp)
    8002515e:	7602                	ld	a2,32(sp)
    80025160:	854e                	mv	a0,s3
    80025162:	e3ce60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51363
        return JS_EXCEPTION;
    80025166:	4799                	li	a5,6
    80025168:	fc02                	sd	zero,56(sp)
    8002516a:	e0be                	sd	a5,64(sp)
    8002516c:	b7d9                	j	80025132 <js_bigfloat_fop+0x3e>
quickjs-nuttx/quickjs.c:51366
    if (argc > 1) {
    8002516e:	4785                	li	a5,1
    80025170:	0327cf63          	blt	a5,s2,800251ae <js_bigfloat_fop+0xba>
quickjs-nuttx/quickjs.c:51365
    fe = &ctx->fp_env;
    80025174:	19898413          	addi	s0,s3,408
quickjs-nuttx/quickjs.c:51371
    res = JS_NewBigFloat(ctx);
    80025178:	854e                	mv	a0,s3
    8002517a:	806f50ef          	jal	ra,8001a180 <JS_NewBigFloat>
    8002517e:	f42a                	sd	a0,40(sp)
    80025180:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:51372
    if (JS_IsException(res)) {
    80025182:	0005871b          	sext.w	a4,a1
    80025186:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51371
    res = JS_NewBigFloat(ctx);
    80025188:	8aaa                	mv	s5,a0
    8002518a:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:51372
    if (JS_IsException(res)) {
    8002518c:	02f70a63          	beq	a4,a5,800251c0 <js_bigfloat_fop+0xcc>
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    80025190:	47cd                	li	a5,19
    80025192:	00850913          	addi	s2,a0,8
js_bigfloat_fop():
quickjs-nuttx/quickjs.c:51380
    switch (magic) {
    80025196:	1347ef63          	bltu	a5,s4,800252d4 <js_bigfloat_fop+0x1e0>
    8002519a:	00046717          	auipc	a4,0x46
    8002519e:	bce70713          	addi	a4,a4,-1074 # 8006ad68 <qjsc_repl+0x57b8>
    800251a2:	0a0a                	slli	s4,s4,0x2
    800251a4:	9a3a                	add	s4,s4,a4
    800251a6:	000a2783          	lw	a5,0(s4)
    800251aa:	97ba                	add	a5,a5,a4
    800251ac:	8782                	jr	a5
quickjs-nuttx/quickjs.c:51367
        fe = JS_GetOpaque2(ctx, argv[1], JS_CLASS_FLOAT_ENV);
    800251ae:	680c                	ld	a1,16(s0)
    800251b0:	6c10                	ld	a2,24(s0)
    800251b2:	02300693          	li	a3,35
    800251b6:	854e                	mv	a0,s3
    800251b8:	e36f30ef          	jal	ra,800187ee <JS_GetOpaque2>
    800251bc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:51368
        if (!fe)
    800251be:	fd4d                	bnez	a0,80025178 <js_bigfloat_fop+0x84>
quickjs-nuttx/quickjs.c:51374
        if (a == &a_s)
    800251c0:	f9749ee3          	bne	s1,s7,8002515c <js_bigfloat_fop+0x68>
quickjs-nuttx/quickjs.c:51375
            bf_delete(a);
    800251c4:	8526                	mv	a0,s1
    800251c6:	a90e50ef          	jal	ra,8000a456 <bf_delete>
    800251ca:	bf49                	j	8002515c <js_bigfloat_fop+0x68>
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    800251cc:	4a09                	li	s4,2
js_bigfloat_fop():
quickjs-nuttx/quickjs.c:51397
        bf_set(r, a);
    800251ce:	85a6                	mv	a1,s1
    800251d0:	854a                	mv	a0,s2
    800251d2:	651320ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:51398
        fe->status |= bf_rint(r, rnd_mode);
    800251d6:	85d2                	mv	a1,s4
    800251d8:	854a                	mv	a0,s2
    800251da:	45f330ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/quickjs.c:51429
        fe->status |= bf_tan(r, a, fe->prec, fe->flags);
    800251de:	445c                	lw	a5,12(s0)
    800251e0:	8d5d                	or	a0,a0,a5
    800251e2:	c448                	sw	a0,12(s0)
quickjs-nuttx/quickjs.c:51430
        break;
    800251e4:	a039                	j	800251f2 <js_bigfloat_fop+0xfe>
quickjs-nuttx/quickjs.c:51382
        bf_set(r, a);
    800251e6:	85a6                	mv	a1,s1
    800251e8:	854a                	mv	a0,s2
    800251ea:	639320ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:51383
        r->sign = 0;
    800251ee:	000aa823          	sw	zero,16(s5)
quickjs-nuttx/quickjs.c:51441
    if (a == &a_s)
    800251f2:	01749563          	bne	s1,s7,800251fc <js_bigfloat_fop+0x108>
quickjs-nuttx/quickjs.c:51442
        bf_delete(a);
    800251f6:	8526                	mv	a0,s1
    800251f8:	a5ee50ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:51443
    JS_FreeValue(ctx, op1);
    800251fc:	65e2                	ld	a1,24(sp)
    800251fe:	7602                	ld	a2,32(sp)
    80025200:	854e                	mv	a0,s3
    80025202:	d9ce60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51444
    return res;
    80025206:	fc56                	sd	s5,56(sp)
    80025208:	e0da                	sd	s6,64(sp)
    8002520a:	b725                	j	80025132 <js_bigfloat_fop+0x3e>
quickjs-nuttx/quickjs.c:51389
        rnd_mode = BF_RNDU;
    8002520c:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:51390
        goto rint;
    8002520e:	b7c1                	j	800251ce <js_bigfloat_fop+0xda>
quickjs-nuttx/quickjs.c:51392
        rnd_mode = BF_RNDNA;
    80025210:	4a11                	li	s4,4
quickjs-nuttx/quickjs.c:51393
        goto rint;
    80025212:	bf75                	j	800251ce <js_bigfloat_fop+0xda>
quickjs-nuttx/quickjs.c:51395
        rnd_mode = BF_RNDZ;
    80025214:	4a05                	li	s4,1
    80025216:	bf65                	j	800251ce <js_bigfloat_fop+0xda>
quickjs-nuttx/quickjs.c:51401
        fe->status |= bf_sqrt(r, a, fe->prec, fe->flags);
    80025218:	4414                	lw	a3,8(s0)
    8002521a:	6010                	ld	a2,0(s0)
    8002521c:	85a6                	mv	a1,s1
    8002521e:	854a                	mv	a0,s2
    80025220:	37c370ef          	jal	ra,8005c59c <bf_sqrt>
    80025224:	bf6d                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51404
        bf_set(r, a);
    80025226:	85a6                	mv	a1,s1
    80025228:	854a                	mv	a0,s2
    8002522a:	5f9320ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:51405
        fe->status |= bf_round(r, fe->prec, fe->flags);
    8002522e:	4410                	lw	a2,8(s0)
    80025230:	600c                	ld	a1,0(s0)
    80025232:	854a                	mv	a0,s2
    80025234:	0be330ef          	jal	ra,800582f2 <bf_round>
    80025238:	b75d                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51408
        fe->status |= bf_acos(r, a, fe->prec, fe->flags);
    8002523a:	4414                	lw	a3,8(s0)
    8002523c:	6010                	ld	a2,0(s0)
    8002523e:	85a6                	mv	a1,s1
    80025240:	854a                	mv	a0,s2
    80025242:	718340ef          	jal	ra,8005995a <bf_acos>
    80025246:	bf61                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51411
        fe->status |= bf_asin(r, a, fe->prec, fe->flags);
    80025248:	4414                	lw	a3,8(s0)
    8002524a:	6010                	ld	a2,0(s0)
    8002524c:	85a6                	mv	a1,s1
    8002524e:	854a                	mv	a0,s2
    80025250:	628340ef          	jal	ra,80059878 <bf_asin>
    80025254:	b769                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51414
        fe->status |= bf_atan(r, a, fe->prec, fe->flags);
    80025256:	4414                	lw	a3,8(s0)
    80025258:	6010                	ld	a2,0(s0)
    8002525a:	85a6                	mv	a1,s1
    8002525c:	854a                	mv	a0,s2
    8002525e:	3f8340ef          	jal	ra,80059656 <bf_atan>
    80025262:	bfb5                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51417
        fe->status |= bf_cos(r, a, fe->prec, fe->flags);
    80025264:	4414                	lw	a3,8(s0)
    80025266:	6010                	ld	a2,0(s0)
    80025268:	85a6                	mv	a1,s1
    8002526a:	854a                	mv	a0,s2
    8002526c:	192340ef          	jal	ra,800593fe <bf_cos>
    80025270:	b7bd                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51420
        fe->status |= bf_exp(r, a, fe->prec, fe->flags);
    80025272:	4414                	lw	a3,8(s0)
    80025274:	6010                	ld	a2,0(s0)
    80025276:	85a6                	mv	a1,s1
    80025278:	854a                	mv	a0,s2
    8002527a:	105370ef          	jal	ra,8005cb7e <bf_exp>
    8002527e:	b785                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51423
        fe->status |= bf_log(r, a, fe->prec, fe->flags);
    80025280:	4414                	lw	a3,8(s0)
    80025282:	6010                	ld	a2,0(s0)
    80025284:	85a6                	mv	a1,s1
    80025286:	854a                	mv	a0,s2
    80025288:	0a4340ef          	jal	ra,8005932c <bf_log>
    8002528c:	bf89                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51426
        fe->status |= bf_sin(r, a, fe->prec, fe->flags);
    8002528e:	4414                	lw	a3,8(s0)
    80025290:	6010                	ld	a2,0(s0)
    80025292:	85a6                	mv	a1,s1
    80025294:	854a                	mv	a0,s2
    80025296:	1fa340ef          	jal	ra,80059490 <bf_sin>
    8002529a:	b791                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51429
        fe->status |= bf_tan(r, a, fe->prec, fe->flags);
    8002529c:	4414                	lw	a3,8(s0)
    8002529e:	6010                	ld	a2,0(s0)
    800252a0:	85a6                	mv	a1,s1
    800252a2:	854a                	mv	a0,s2
    800252a4:	2c6340ef          	jal	ra,8005956a <bf_tan>
    800252a8:	bf1d                	j	800251de <js_bigfloat_fop+0xea>
quickjs-nuttx/quickjs.c:51432
        if (bf_is_nan(a) || bf_is_zero(a)) {
    800252aa:	689c                	ld	a5,16(s1)
    800252ac:	577d                	li	a4,-1
    800252ae:	8305                	srli	a4,a4,0x1
    800252b0:	97ba                	add	a5,a5,a4
    800252b2:	5775                	li	a4,-3
    800252b4:	00f77763          	bgeu	a4,a5,800252c2 <js_bigfloat_fop+0x1ce>
quickjs-nuttx/quickjs.c:51433
            bf_set(r, a);
    800252b8:	85a6                	mv	a1,s1
    800252ba:	854a                	mv	a0,s2
    800252bc:	567320ef          	jal	ra,80058022 <bf_set>
    800252c0:	bf0d                	j	800251f2 <js_bigfloat_fop+0xfe>
quickjs-nuttx/quickjs.c:51435
            bf_set_si(r, 1 - 2 * a->sign);
    800252c2:	449c                	lw	a5,8(s1)
    800252c4:	55f9                	li	a1,-2
    800252c6:	854a                	mv	a0,s2
    800252c8:	02f585bb          	mulw	a1,a1,a5
    800252cc:	2585                	addiw	a1,a1,1
    800252ce:	16f320ef          	jal	ra,80057c3c <bf_set_si>
    800252d2:	b705                	j	800251f2 <js_bigfloat_fop+0xfe>
quickjs-nuttx/quickjs.c:51439
        abort();
    800252d4:	0af3d0ef          	jal	ra,80062b82 <abort>

00000000800252d8 <js_number_constructor>:
js_number_constructor():
quickjs-nuttx/quickjs.c:40768
{
    800252d8:	7159                	addi	sp,sp,-112
    800252da:	f0a2                	sd	s0,96(sp)
    800252dc:	f486                	sd	ra,104(sp)
    800252de:	eca6                	sd	s1,88(sp)
    800252e0:	e8ca                	sd	s2,80(sp)
    800252e2:	e82e                	sd	a1,16(sp)
    800252e4:	ec32                	sd	a2,24(sp)
    800252e6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:40770
    if (argc == 0) {
    800252e8:	c6e9                	beqz	a3,800253b2 <js_number_constructor+0xda>
quickjs-nuttx/quickjs.c:40773
        val = JS_ToNumeric(ctx, argv[0]);
    800252ea:	6710                	ld	a2,8(a4)
    800252ec:	630c                	ld	a1,0(a4)
quickjs-nuttx/quickjs.c:40774
        if (JS_IsException(val))
    800252ee:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:40773
        val = JS_ToNumeric(ctx, argv[0]);
    800252f0:	c0fff0ef          	jal	ra,80024efe <JS_ToNumeric>
    800252f4:	f02a                	sd	a0,32(sp)
    800252f6:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800252f8:	0005879b          	sext.w	a5,a1
js_number_constructor():
quickjs-nuttx/quickjs.c:40773
    800252fc:	862e                	mv	a2,a1
    800252fe:	84aa                	mv	s1,a0
    80025300:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:40774
        if (JS_IsException(val))
    80025302:	01279c63          	bne	a5,s2,8002531a <js_number_constructor+0x42>
quickjs-nuttx/quickjs.c:40793
                return val;
    80025306:	e0aa                	sd	a0,64(sp)
    80025308:	e4b2                	sd	a2,72(sp)
quickjs-nuttx/quickjs.c:40811
}
    8002530a:	70a6                	ld	ra,104(sp)
    8002530c:	7406                	ld	s0,96(sp)
    8002530e:	6506                	ld	a0,64(sp)
    80025310:	65a6                	ld	a1,72(sp)
    80025312:	64e6                	ld	s1,88(sp)
    80025314:	6946                	ld	s2,80(sp)
    80025316:	6165                	addi	sp,sp,112
    80025318:	8082                	ret
quickjs-nuttx/quickjs.c:40776
        switch(JS_VALUE_GET_TAG(val)) {
    8002531a:	56d5                	li	a3,-11
    8002531c:	06d78563          	beq	a5,a3,80025386 <js_number_constructor+0xae>
    80025320:	02d7c463          	blt	a5,a3,80025348 <js_number_constructor+0x70>
    80025324:	00a5879b          	addiw	a5,a1,10
    80025328:	4685                	li	a3,1
    8002532a:	00f6ef63          	bltu	a3,a5,80025348 <js_number_constructor+0x70>
quickjs-nuttx/quickjs.c:40784
                bf_get_float64(&p->num, &d, BF_RNDN);
    8002532e:	4601                	li	a2,0
    80025330:	008c                	addi	a1,sp,64
    80025332:	00848513          	addi	a0,s1,8
    80025336:	31f330ef          	jal	ra,80058e54 <bf_get_float64>
quickjs-nuttx/quickjs.c:40785
                JS_FreeValue(ctx, val);
    8002533a:	7582                	ld	a1,32(sp)
    8002533c:	7622                	ld	a2,40(sp)
    8002533e:	8522                	mv	a0,s0
    80025340:	c5ee60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.h:230
    return v;
    80025344:	6486                	ld	s1,64(sp)
quickjs-nuttx/quickjs.c:40788
            break;
    80025346:	471d                	li	a4,7
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80025348:	6662                	ld	a2,24(sp)
js_number_constructor():
quickjs-nuttx/quickjs.c:40803
    if (!JS_IsUndefined(new_target)) {
    8002534a:	478d                	li	a5,3
    8002534c:	0006069b          	sext.w	a3,a2
    80025350:	06f68463          	beq	a3,a5,800253b8 <js_number_constructor+0xe0>
quickjs-nuttx/quickjs.c:40804
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_NUMBER);
    80025354:	65c2                	ld	a1,16(sp)
    80025356:	4691                	li	a3,4
    80025358:	8522                	mv	a0,s0
    8002535a:	e43a                	sd	a4,8(sp)
    8002535c:	921f60ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80025360:	f82a                	sd	a0,48(sp)
    80025362:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:40805
        if (!JS_IsException(obj))
    80025364:	0005869b          	sext.w	a3,a1
    80025368:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40804
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_NUMBER);
    8002536a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:40805
        if (!JS_IsException(obj))
    8002536c:	00f68863          	beq	a3,a5,8002537c <js_number_constructor+0xa4>
quickjs-nuttx/quickjs.c:40806
            JS_SetObjectData(ctx, obj, val);
    80025370:	6722                	ld	a4,8(sp)
    80025372:	85aa                	mv	a1,a0
    80025374:	86a6                	mv	a3,s1
    80025376:	8522                	mv	a0,s0
    80025378:	c28f40ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:40807
        return obj;
    8002537c:	77c2                	ld	a5,48(sp)
    8002537e:	e0be                	sd	a5,64(sp)
    80025380:	77e2                	ld	a5,56(sp)
    80025382:	e4be                	sd	a5,72(sp)
    80025384:	b759                	j	8002530a <js_number_constructor+0x32>
quickjs-nuttx/quickjs.c:40791
            val = JS_ToStringFree(ctx, val);
    80025386:	85aa                	mv	a1,a0
    80025388:	8522                	mv	a0,s0
    8002538a:	bfcfb0ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:40792
            if (JS_IsException(val))
    8002538e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:40791
            val = JS_ToStringFree(ctx, val);
    80025392:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:40792
            if (JS_IsException(val))
    80025394:	f72789e3          	beq	a5,s2,80025306 <js_number_constructor+0x2e>
quickjs-nuttx/quickjs.c:40794
            val = JS_ToNumberFree(ctx, val);
    80025398:	85aa                	mv	a1,a0
    8002539a:	8522                	mv	a0,s0
    8002539c:	eeffc0ef          	jal	ra,8002228a <JS_ToNumberFree>
quickjs-nuttx/quickjs.c:40795
            if (JS_IsException(val))
    800253a0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:40794
            val = JS_ToNumberFree(ctx, val);
    800253a4:	84aa                	mv	s1,a0
    800253a6:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:40795
            if (JS_IsException(val))
    800253a8:	fb2790e3          	bne	a5,s2,80025348 <js_number_constructor+0x70>
quickjs-nuttx/quickjs.c:40796
                return val;
    800253ac:	e0aa                	sd	a0,64(sp)
    800253ae:	e4ae                	sd	a1,72(sp)
    800253b0:	bfa9                	j	8002530a <js_number_constructor+0x32>
    800253b2:	4701                	li	a4,0
    800253b4:	4481                	li	s1,0
    800253b6:	bf49                	j	80025348 <js_number_constructor+0x70>
quickjs-nuttx/quickjs.c:40809
        return val;
    800253b8:	e0a6                	sd	s1,64(sp)
    800253ba:	e4ba                	sd	a4,72(sp)
    800253bc:	b7b9                	j	8002530a <js_number_constructor+0x32>

00000000800253be <js_unary_arith_slow>:
js_unary_arith_slow():
quickjs-nuttx/quickjs.c:12900
{
    800253be:	711d                	addi	sp,sp,-96
    800253c0:	e8a2                	sd	s0,80(sp)
    800253c2:	e4a6                	sd	s1,72(sp)
    800253c4:	e0ca                	sd	s2,64(sp)
    800253c6:	fc4e                	sd	s3,56(sp)
    800253c8:	f852                	sd	s4,48(sp)
    800253ca:	ec86                	sd	ra,88(sp)
quickjs-nuttx/quickjs.c:12905
    op1 = sp[-1];
    800253cc:	ff85b683          	ld	a3,-8(a1)
quickjs-nuttx/quickjs.c:12900
{
    800253d0:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:12905
    op1 = sp[-1];
    800253d2:	ff05b603          	ld	a2,-16(a1)
    800253d6:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:12907
    if (JS_TAG_IS_FLOAT64(JS_VALUE_GET_TAG(op1)))
    800253d8:	0006849b          	sext.w	s1,a3
quickjs-nuttx/quickjs.c:12905
    op1 = sp[-1];
    800253dc:	e032                	sd	a2,0(sp)
quickjs-nuttx/quickjs.c:12907
    if (JS_TAG_IS_FLOAT64(JS_VALUE_GET_TAG(op1)))
    800253de:	479d                	li	a5,7
quickjs-nuttx/quickjs.c:12900
{
    800253e0:	892a                	mv	s2,a0
    800253e2:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:12905
    op1 = sp[-1];
    800253e4:	8a36                	mv	s4,a3
quickjs-nuttx/quickjs.c:12907
    if (JS_TAG_IS_FLOAT64(JS_VALUE_GET_TAG(op1)))
    800253e6:	06f48963          	beq	s1,a5,80025458 <js_unary_arith_slow+0x9a>
quickjs-nuttx/quickjs.c:12910
    if (JS_IsObject(op1)) {
    800253ea:	57fd                	li	a5,-1
    800253ec:	02f49e63          	bne	s1,a5,80025428 <js_unary_arith_slow+0x6a>
quickjs-nuttx/quickjs.c:12912
        int ret = js_call_unary_op_fallback(ctx, &val, op1, op);
    800253f0:	8722                	mv	a4,s0
    800253f2:	100c                	addi	a1,sp,32
    800253f4:	ba1f30ef          	jal	ra,80018f94 <js_call_unary_op_fallback>
quickjs-nuttx/quickjs.c:12913
        if (ret < 0)
    800253f8:	00054f63          	bltz	a0,80025416 <js_unary_arith_slow+0x58>
quickjs-nuttx/quickjs.c:12915
        if (ret) {
    800253fc:	c515                	beqz	a0,80025428 <js_unary_arith_slow+0x6a>
quickjs-nuttx/quickjs.c:12916
            JS_FreeValue(ctx, op1);
    800253fe:	6582                	ld	a1,0(sp)
    80025400:	6622                	ld	a2,8(sp)
    80025402:	854a                	mv	a0,s2
    80025404:	b9ae60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12917
            sp[-1] = val;
    80025408:	7782                	ld	a5,32(sp)
    8002540a:	fef9b823          	sd	a5,-16(s3)
    8002540e:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:12941
                    sp[-1] = __JS_NewFloat64(ctx, -0.0);
    80025410:	fef9bc23          	sd	a5,-8(s3)
quickjs-nuttx/quickjs.c:12993
    return 0;
    80025414:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:12997
}
    80025416:	60e6                	ld	ra,88(sp)
    80025418:	6446                	ld	s0,80(sp)
    8002541a:	6906                	ld	s2,64(sp)
    8002541c:	79e2                	ld	s3,56(sp)
    8002541e:	7a42                	ld	s4,48(sp)
    80025420:	8526                	mv	a0,s1
    80025422:	64a6                	ld	s1,72(sp)
    80025424:	6125                	addi	sp,sp,96
    80025426:	8082                	ret
quickjs-nuttx/quickjs.c:12922
    op1 = JS_ToNumericFree(ctx, op1);
    80025428:	6622                	ld	a2,8(sp)
    8002542a:	6582                	ld	a1,0(sp)
    8002542c:	854a                	mv	a0,s2
    8002542e:	ac7ff0ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    80025432:	e02a                	sd	a0,0(sp)
    80025434:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:12923
    if (JS_IsException(op1))
    80025436:	0005879b          	sext.w	a5,a1
    8002543a:	4619                	li	a2,6
quickjs-nuttx/quickjs.c:12922
    op1 = JS_ToNumericFree(ctx, op1);
    8002543c:	86aa                	mv	a3,a0
    8002543e:	872e                	mv	a4,a1
    80025440:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:12923
    if (JS_IsException(op1))
    80025442:	0ec78263          	beq	a5,a2,80025526 <js_unary_arith_slow+0x168>
quickjs-nuttx/quickjs.c:12926
    switch(tag) {
    80025446:	5659                	li	a2,-10
    80025448:	0cc78263          	beq	a5,a2,8002550c <js_unary_arith_slow+0x14e>
    8002544c:	02f66e63          	bltu	a2,a5,80025488 <js_unary_arith_slow+0xca>
    80025450:	c7a1                	beqz	a5,80025498 <js_unary_arith_slow+0xda>
    80025452:	5655                	li	a2,-11
    80025454:	0ec78063          	beq	a5,a2,80025534 <js_unary_arith_slow+0x176>
quickjs-nuttx/quickjs.c:12972
            if (is_math_mode(ctx))
    80025458:	854a                	mv	a0,s2
    8002545a:	f3ae20ef          	jal	ra,80007b94 <is_math_mode>
    8002545e:	84aa                	mv	s1,a0
    80025460:	e555                	bnez	a0,8002550c <js_unary_arith_slow+0x14e>
quickjs-nuttx/quickjs.c:12974
            d = JS_VALUE_GET_FLOAT64(op1);
    80025462:	08e00793          	li	a5,142
    80025466:	2782                	fld	fa5,0(sp)
quickjs-nuttx/quickjs.c:12975
            switch(op) {
    80025468:	00f40a63          	beq	s0,a5,8002547c <js_unary_arith_slow+0xbe>
    8002546c:	0c87e963          	bltu	a5,s0,8002553e <js_unary_arith_slow+0x180>
    80025470:	08d00793          	li	a5,141
quickjs-nuttx/quickjs.c:12984
                d = -d;
    80025474:	22f797d3          	fneg.d	fa5,fa5
    80025478:	02f41b63          	bne	s0,a5,800254ae <js_unary_arith_slow+0xf0>
quickjs-nuttx/quickjs.c:12989
            sp[-1] = __JS_NewFloat64(ctx, d);
    8002547c:	479d                	li	a5,7
    8002547e:	fef9b827          	fsd	fa5,-16(s3)
    80025482:	fef9bc23          	sd	a5,-8(s3)
quickjs-nuttx/quickjs.c:12991
        break;
    80025486:	bf41                	j	80025416 <js_unary_arith_slow+0x58>
quickjs-nuttx/quickjs.c:12926
    switch(tag) {
    80025488:	565d                	li	a2,-9
    8002548a:	fcc797e3          	bne	a5,a2,80025458 <js_unary_arith_slow+0x9a>
quickjs-nuttx/quickjs.c:12960
        if (ctx->rt->bigfloat_ops.unary_arith(ctx, sp - 1, op, op1))
    8002548e:	01893783          	ld	a5,24(s2)
    80025492:	2507b783          	ld	a5,592(a5) # 10250 <asinh-0x7ffefdb0>
    80025496:	a049                	j	80025518 <js_unary_arith_slow+0x15a>
quickjs-nuttx/quickjs.c:12930
            v64 = JS_VALUE_GET_INT(op1);
    80025498:	08e00793          	li	a5,142
    8002549c:	4702                	lw	a4,0(sp)
quickjs-nuttx/quickjs.c:12931
            switch(op) {
    8002549e:	02f40363          	beq	s0,a5,800254c4 <js_unary_arith_slow+0x106>
    800254a2:	0087e863          	bltu	a5,s0,800254b2 <js_unary_arith_slow+0xf4>
    800254a6:	08d00793          	li	a5,141
    800254aa:	02f40d63          	beq	s0,a5,800254e4 <js_unary_arith_slow+0x126>
quickjs-nuttx/quickjs.c:12948
                abort();
    800254ae:	6d43d0ef          	jal	ra,80062b82 <abort>
    800254b2:	f714069b          	addiw	a3,s0,-143
    800254b6:	4785                	li	a5,1
    800254b8:	fed7ebe3          	bltu	a5,a3,800254ae <js_unary_arith_slow+0xf0>
quickjs-nuttx/quickjs.c:12934
                v = 2 * (op - OP_dec) - 1;
    800254bc:	0016941b          	slliw	s0,a3,0x1
quickjs-nuttx/quickjs.c:12935
                v64 += v;
    800254c0:	347d                	addiw	s0,s0,-1
    800254c2:	9722                	add	a4,a4,s0
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800254c4:	0007079b          	sext.w	a5,a4
    800254c8:	02f71a63          	bne	a4,a5,800254fc <js_unary_arith_slow+0x13e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800254cc:	d202                	sw	zero,36(sp)
    800254ce:	d03e                	sw	a5,32(sp)
    800254d0:	7702                	ld	a4,32(sp)
    800254d2:	e83a                	sd	a4,16(sp)
    800254d4:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800254d6:	c83e                	sw	a5,16(sp)
    800254d8:	27c2                	fld	fa5,16(sp)
js_unary_arith_slow():
quickjs-nuttx/quickjs.c:12950
            sp[-1] = JS_NewInt64(ctx, v64);
    800254da:	fee9bc23          	sd	a4,-8(s3)
    800254de:	fef9b827          	fsd	fa5,-16(s3)
    800254e2:	bf0d                	j	80025414 <js_unary_arith_slow+0x56>
quickjs-nuttx/quickjs.c:12940
                if (v64 == 0) {
    800254e4:	eb09                	bnez	a4,800254f6 <js_unary_arith_slow+0x138>
quickjs-nuttx/quickjs.c:12941
                    sp[-1] = __JS_NewFloat64(ctx, -0.0);
    800254e6:	0006e797          	auipc	a5,0x6e
    800254ea:	6fa7b787          	fld	fa5,1786(a5) # 80093be0 <_erodata+0x6e>
    800254ee:	fef9b827          	fsd	fa5,-16(s3)
    800254f2:	479d                	li	a5,7
    800254f4:	bf31                	j	80025410 <js_unary_arith_slow+0x52>
quickjs-nuttx/quickjs.c:12944
                    v64 = -v64;
    800254f6:	40e00733          	neg	a4,a4
quickjs-nuttx/quickjs.c:12946
                break;
    800254fa:	b7e9                	j	800254c4 <js_unary_arith_slow+0x106>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800254fc:	d22777d3          	fcvt.d.l	fa5,a4
    80025500:	471d                	li	a4,7
    80025502:	e20787d3          	fmv.x.d	a5,fa5
js_unary_arith_slow():
quickjs-nuttx/quickjs.h:230
    return v;
    80025506:	a83e                	fsd	fa5,16(sp)
    80025508:	2781                	sext.w	a5,a5
    8002550a:	b7f1                	j	800254d6 <js_unary_arith_slow+0x118>
quickjs-nuttx/quickjs.c:12955
        if (ctx->rt->bigint_ops.unary_arith(ctx, sp - 1, op, op1))
    8002550c:	01893783          	ld	a5,24(s2)
    80025510:	6682                	ld	a3,0(sp)
    80025512:	8752                	mv	a4,s4
    80025514:	2187b783          	ld	a5,536(a5)
    80025518:	8622                	mv	a2,s0
    8002551a:	ff098593          	addi	a1,s3,-16
    8002551e:	854a                	mv	a0,s2
    80025520:	9782                	jalr	a5
    80025522:	ee0509e3          	beqz	a0,80025414 <js_unary_arith_slow+0x56>
quickjs-nuttx/quickjs.c:12995
    sp[-1] = JS_UNDEFINED;
    80025526:	478d                	li	a5,3
    80025528:	fe09b823          	sd	zero,-16(s3)
    8002552c:	fef9bc23          	sd	a5,-8(s3)
quickjs-nuttx/quickjs.c:12996
    return -1;
    80025530:	54fd                	li	s1,-1
    80025532:	b5d5                	j	80025416 <js_unary_arith_slow+0x58>
quickjs-nuttx/quickjs.c:12964
        if (ctx->rt->bigdecimal_ops.unary_arith(ctx, sp - 1, op, op1))
    80025534:	01893783          	ld	a5,24(s2)
    80025538:	2887b783          	ld	a5,648(a5)
    8002553c:	bff1                	j	80025518 <js_unary_arith_slow+0x15a>
    8002553e:	f714071b          	addiw	a4,s0,-143
    80025542:	4785                	li	a5,1
    80025544:	f6e7e5e3          	bltu	a5,a4,800254ae <js_unary_arith_slow+0xf0>
quickjs-nuttx/quickjs.c:12978
                v = 2 * (op - OP_dec) - 1;
    80025548:	0017141b          	slliw	s0,a4,0x1
    8002554c:	347d                	addiw	s0,s0,-1
quickjs-nuttx/quickjs.c:12979
                d += v;
    8002554e:	d2040753          	fcvt.d.w	fa4,s0
    80025552:	02e7f7d3          	fadd.d	fa5,fa5,fa4
quickjs-nuttx/quickjs.c:12980
                break;
    80025556:	b71d                	j	8002547c <js_unary_arith_slow+0xbe>

0000000080025558 <js_not_slow>:
js_not_slow():
quickjs-nuttx/quickjs.c:13017
{
    80025558:	7159                	addi	sp,sp,-112
    8002555a:	f0a2                	sd	s0,96(sp)
    8002555c:	eca6                	sd	s1,88(sp)
    8002555e:	e8ca                	sd	s2,80(sp)
    80025560:	f486                	sd	ra,104(sp)
quickjs-nuttx/quickjs.c:13020
    op1 = sp[-1];
    80025562:	ff85b683          	ld	a3,-8(a1)
    80025566:	ff05b603          	ld	a2,-16(a1)
quickjs-nuttx/quickjs.c:13022
    if (JS_IsObject(op1)) {
    8002556a:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:13020
    op1 = sp[-1];
    8002556c:	f436                	sd	a3,40(sp)
    8002556e:	f032                	sd	a2,32(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    80025570:	0006841b          	sext.w	s0,a3
js_not_slow():
quickjs-nuttx/quickjs.c:13017
{
    80025574:	892a                	mv	s2,a0
    80025576:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:13022
    if (JS_IsObject(op1)) {
    80025578:	02f41d63          	bne	s0,a5,800255b2 <js_not_slow+0x5a>
quickjs-nuttx/quickjs.c:13024
        int ret = js_call_unary_op_fallback(ctx, &val, op1, OP_not);
    8002557c:	09600713          	li	a4,150
    80025580:	008c                	addi	a1,sp,64
    80025582:	a13f30ef          	jal	ra,80018f94 <js_call_unary_op_fallback>
quickjs-nuttx/quickjs.c:13025
        if (ret < 0)
    80025586:	00054f63          	bltz	a0,800255a4 <js_not_slow+0x4c>
quickjs-nuttx/quickjs.c:13027
        if (ret) {
    8002558a:	c505                	beqz	a0,800255b2 <js_not_slow+0x5a>
quickjs-nuttx/quickjs.c:13028
            JS_FreeValue(ctx, op1);
    8002558c:	7582                	ld	a1,32(sp)
    8002558e:	7622                	ld	a2,40(sp)
    80025590:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:13030
            return 0;
    80025592:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:13028
            JS_FreeValue(ctx, op1);
    80025594:	a0ae60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13029
            sp[-1] = val;
    80025598:	6786                	ld	a5,64(sp)
    8002559a:	fef4b823          	sd	a5,-16(s1)
    8002559e:	67a6                	ld	a5,72(sp)
    800255a0:	fef4bc23          	sd	a5,-8(s1)
quickjs-nuttx/quickjs.c:13050
}
    800255a4:	70a6                	ld	ra,104(sp)
    800255a6:	8522                	mv	a0,s0
    800255a8:	7406                	ld	s0,96(sp)
    800255aa:	64e6                	ld	s1,88(sp)
    800255ac:	6946                	ld	s2,80(sp)
    800255ae:	6165                	addi	sp,sp,112
    800255b0:	8082                	ret
quickjs-nuttx/quickjs.c:13034
    op1 = JS_ToNumericFree(ctx, op1);
    800255b2:	7582                	ld	a1,32(sp)
    800255b4:	7622                	ld	a2,40(sp)
    800255b6:	854a                	mv	a0,s2
    800255b8:	93dff0ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    800255bc:	f02a                	sd	a0,32(sp)
    800255be:	e42a                	sd	a0,8(sp)
    800255c0:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800255c2:	0005841b          	sext.w	s0,a1
    800255c6:	e02e                	sd	a1,0(sp)
js_not_slow():
quickjs-nuttx/quickjs.c:13035
    if (JS_IsException(op1))
    800255c8:	4799                	li	a5,6
    800255ca:	02f40963          	beq	s0,a5,800255fc <js_not_slow+0xa4>
quickjs-nuttx/quickjs.c:13037
    if (is_math_mode(ctx) || JS_VALUE_GET_TAG(op1) == JS_TAG_BIG_INT) {
    800255ce:	854a                	mv	a0,s2
    800255d0:	dc4e20ef          	jal	ra,80007b94 <is_math_mode>
    800255d4:	e511                	bnez	a0,800255e0 <js_not_slow+0x88>
quickjs-nuttx/quickjs.c:13037 (discriminator 1)
    800255d6:	57d9                	li	a5,-10
    800255d8:	6682                	ld	a3,0(sp)
    800255da:	6622                	ld	a2,8(sp)
    800255dc:	02f41763          	bne	s0,a5,8002560a <js_not_slow+0xb2>
quickjs-nuttx/quickjs.c:13038
        if (ctx->rt->bigint_ops.unary_arith(ctx, sp - 1, OP_not, op1))
    800255e0:	01893783          	ld	a5,24(s2)
    800255e4:	7682                	ld	a3,32(sp)
    800255e6:	7722                	ld	a4,40(sp)
    800255e8:	2187b783          	ld	a5,536(a5)
    800255ec:	09600613          	li	a2,150
    800255f0:	ff048593          	addi	a1,s1,-16
    800255f4:	854a                	mv	a0,s2
    800255f6:	9782                	jalr	a5
    800255f8:	842a                	mv	s0,a0
    800255fa:	d54d                	beqz	a0,800255a4 <js_not_slow+0x4c>
quickjs-nuttx/quickjs.c:13048
    sp[-1] = JS_UNDEFINED;
    800255fc:	478d                	li	a5,3
    800255fe:	fe04b823          	sd	zero,-16(s1)
    80025602:	fef4bc23          	sd	a5,-8(s1)
quickjs-nuttx/quickjs.c:13049
    return -1;
    80025606:	547d                	li	s0,-1
    80025608:	bf71                	j	800255a4 <js_not_slow+0x4c>
quickjs-nuttx/quickjs.c:13042
        if (unlikely(JS_ToInt32Free(ctx, &v1, op1)))
    8002560a:	086c                	addi	a1,sp,28
    8002560c:	854a                	mv	a0,s2
    8002560e:	c87fc0ef          	jal	ra,80022294 <JS_ToInt32Free>
    80025612:	842a                	mv	s0,a0
    80025614:	f565                	bnez	a0,800255fc <js_not_slow+0xa4>
quickjs-nuttx/quickjs.c:13044
        sp[-1] = JS_NewInt32(ctx, ~v1);
    80025616:	47f2                	lw	a5,28(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80025618:	e082                	sd	zero,64(sp)
js_not_slow():
quickjs-nuttx/quickjs.c:13044
    8002561a:	fe04bc23          	sd	zero,-8(s1)
    8002561e:	fff7c793          	not	a5,a5
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80025622:	c0be                	sw	a5,64(sp)
    80025624:	6786                	ld	a5,64(sp)
js_not_slow():
quickjs-nuttx/quickjs.c:13044
    80025626:	fef4b823          	sd	a5,-16(s1)
    8002562a:	bfad                	j	800255a4 <js_not_slow+0x4c>

000000008002562c <js_shr_slow>:
js_shr_slow():
quickjs-nuttx/quickjs.c:14197
{
    8002562c:	7119                	addi	sp,sp,-128
    8002562e:	f8a2                	sd	s0,112(sp)
    80025630:	f4a6                	sd	s1,104(sp)
    80025632:	ecce                	sd	s3,88(sp)
    80025634:	e8d2                	sd	s4,80(sp)
    80025636:	fc86                	sd	ra,120(sp)
    80025638:	f0ca                	sd	s2,96(sp)
quickjs-nuttx/quickjs.c:14202
    op2 = sp[-1];
    8002563a:	ff05b783          	ld	a5,-16(a1)
quickjs-nuttx/quickjs.c:14197
{
    8002563e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:14203
    op1 = JS_ToNumericFree(ctx, op1);
    80025640:	fe843603          	ld	a2,-24(s0)
quickjs-nuttx/quickjs.c:14202
    op2 = sp[-1];
    80025644:	f03e                	sd	a5,32(sp)
    80025646:	ff85b783          	ld	a5,-8(a1)
quickjs-nuttx/quickjs.c:14203
    op1 = JS_ToNumericFree(ctx, op1);
    8002564a:	fe05b583          	ld	a1,-32(a1)
quickjs-nuttx/quickjs.c:14197
{
    8002564e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:14202
    op2 = sp[-1];
    80025650:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:14203
    op1 = JS_ToNumericFree(ctx, op1);
    80025652:	8a3ff0ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    80025656:	e82a                	sd	a0,16(sp)
    80025658:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8002565a:	0005899b          	sext.w	s3,a1
js_shr_slow():
quickjs-nuttx/quickjs.c:14204
    if (JS_IsException(op1)) {
    8002565e:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:14205
        JS_FreeValue(ctx, op2);
    80025660:	7582                	ld	a1,32(sp)
    80025662:	7622                	ld	a2,40(sp)
    80025664:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:14204
    if (JS_IsException(op1)) {
    80025666:	03499663          	bne	s3,s4,80025692 <js_shr_slow+0x66>
quickjs-nuttx/quickjs.c:14219
        JS_FreeValue(ctx, op2);
    8002566a:	934e60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14229
    sp[-2] = JS_UNDEFINED;
    8002566e:	478d                	li	a5,3
    80025670:	fe043023          	sd	zero,-32(s0)
    80025674:	fef43423          	sd	a5,-24(s0)
quickjs-nuttx/quickjs.c:14230
    sp[-1] = JS_UNDEFINED;
    80025678:	fe043823          	sd	zero,-16(s0)
    8002567c:	fef43c23          	sd	a5,-8(s0)
quickjs-nuttx/quickjs.c:14231
    return -1;
    80025680:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:14232
}
    80025682:	70e6                	ld	ra,120(sp)
    80025684:	7446                	ld	s0,112(sp)
    80025686:	74a6                	ld	s1,104(sp)
    80025688:	7906                	ld	s2,96(sp)
    8002568a:	69e6                	ld	s3,88(sp)
    8002568c:	6a46                	ld	s4,80(sp)
    8002568e:	6109                	addi	sp,sp,128
    80025690:	8082                	ret
quickjs-nuttx/quickjs.c:14208
    op2 = JS_ToNumericFree(ctx, op2);
    80025692:	863ff0ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    80025696:	f02a                	sd	a0,32(sp)
    80025698:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8002569a:	0005891b          	sext.w	s2,a1
js_shr_slow():
quickjs-nuttx/quickjs.c:14209
    if (JS_IsException(op2)) {
    8002569e:	01491663          	bne	s2,s4,800256aa <js_shr_slow+0x7e>
quickjs-nuttx/quickjs.c:14210
        JS_FreeValue(ctx, op1);
    800256a2:	65c2                	ld	a1,16(sp)
    800256a4:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:14219
        JS_FreeValue(ctx, op2);
    800256a6:	8526                	mv	a0,s1
    800256a8:	b7c9                	j	8002566a <js_shr_slow+0x3e>
quickjs-nuttx/quickjs.c:14214
    if (!is_math_mode(ctx) &&
    800256aa:	8526                	mv	a0,s1
    800256ac:	ce8e20ef          	jal	ra,80007b94 <is_math_mode>
    800256b0:	e50d                	bnez	a0,800256da <js_shr_slow+0xae>
quickjs-nuttx/quickjs.c:14214 (discriminator 1)
    800256b2:	57d9                	li	a5,-10
    800256b4:	00f98463          	beq	s3,a5,800256bc <js_shr_slow+0x90>
quickjs-nuttx/quickjs.c:14215
        (JS_VALUE_GET_TAG(op1) == JS_TAG_BIG_INT ||
    800256b8:	02f91163          	bne	s2,a5,800256da <js_shr_slow+0xae>
quickjs-nuttx/quickjs.c:14217
        JS_ThrowTypeError(ctx, "bigint operands are forbidden for >>>");
    800256bc:	00045597          	auipc	a1,0x45
    800256c0:	6fc58593          	addi	a1,a1,1788 # 8006adb8 <qjsc_repl+0x5808>
    800256c4:	8526                	mv	a0,s1
    800256c6:	fa7f20ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:14218
        JS_FreeValue(ctx, op1);
    800256ca:	65c2                	ld	a1,16(sp)
    800256cc:	6662                	ld	a2,24(sp)
    800256ce:	8526                	mv	a0,s1
    800256d0:	8cee60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14219
        JS_FreeValue(ctx, op2);
    800256d4:	7582                	ld	a1,32(sp)
    800256d6:	7622                	ld	a2,40(sp)
    800256d8:	b7f9                	j	800256a6 <js_shr_slow+0x7a>
quickjs-nuttx/quickjs.c:14223
    JS_ToUint32Free(ctx, &v1, op1);
    800256da:	6642                	ld	a2,16(sp)
    800256dc:	66e2                	ld	a3,24(sp)
JS_ToUint32Free():
quickjs-nuttx/quickjs.c:10964
    return JS_ToInt32Free(ctx, (int32_t *)pres, val);
    800256de:	002c                	addi	a1,sp,8
    800256e0:	8526                	mv	a0,s1
    800256e2:	e0b2                	sd	a2,64(sp)
    800256e4:	e4b6                	sd	a3,72(sp)
    800256e6:	baffc0ef          	jal	ra,80022294 <JS_ToInt32Free>
js_shr_slow():
quickjs-nuttx/quickjs.c:14224
    JS_ToUint32Free(ctx, &v2, op2);
    800256ea:	7602                	ld	a2,32(sp)
    800256ec:	76a2                	ld	a3,40(sp)
JS_ToUint32Free():
quickjs-nuttx/quickjs.c:10964
    return JS_ToInt32Free(ctx, (int32_t *)pres, val);
    800256ee:	006c                	addi	a1,sp,12
    800256f0:	8526                	mv	a0,s1
    800256f2:	e0b2                	sd	a2,64(sp)
    800256f4:	e4b6                	sd	a3,72(sp)
    800256f6:	b9ffc0ef          	jal	ra,80022294 <JS_ToInt32Free>
js_shr_slow():
quickjs-nuttx/quickjs.c:14225
    r = v1 >> (v2 & 0x1f);
    800256fa:	47b2                	lw	a5,12(sp)
    800256fc:	4722                	lw	a4,8(sp)
    800256fe:	00f757bb          	srlw	a5,a4,a5
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80025702:	0007cf63          	bltz	a5,80025720 <js_shr_slow+0xf4>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80025706:	c282                	sw	zero,68(sp)
    80025708:	c0be                	sw	a5,64(sp)
    8002570a:	6706                	ld	a4,64(sp)
    8002570c:	f83a                	sd	a4,48(sp)
    8002570e:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80025710:	d83e                	sw	a5,48(sp)
    80025712:	37c2                	fld	fa5,48(sp)
js_shr_slow():
quickjs-nuttx/quickjs.c:14226
    sp[-2] = JS_NewUint32(ctx, r);
    80025714:	fee43423          	sd	a4,-24(s0)
quickjs-nuttx/quickjs.c:14227
    return 0;
    80025718:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:14226
    sp[-2] = JS_NewUint32(ctx, r);
    8002571a:	fef43027          	fsd	fa5,-32(s0)
quickjs-nuttx/quickjs.c:14227
    return 0;
    8002571e:	b795                	j	80025682 <js_shr_slow+0x56>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80025720:	d21787d3          	fcvt.d.wu	fa5,a5
    80025724:	471d                	li	a4,7
    80025726:	e20787d3          	fmv.x.d	a5,fa5
js_shr_slow():
quickjs-nuttx/quickjs.h:230
    return v;
    8002572a:	b83e                	fsd	fa5,48(sp)
    8002572c:	2781                	sext.w	a5,a5
    8002572e:	b7cd                	j	80025710 <js_shr_slow+0xe4>

0000000080025730 <JS_ToCString>:
JS_ToCString():
quickjs-nuttx/quickjs.h:709
{
    80025730:	1141                	addi	sp,sp,-16
    80025732:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.h:710
    return JS_ToCStringLen2(ctx, NULL, val1, 0);
    80025734:	862e                	mv	a2,a1
    80025736:	4701                	li	a4,0
    80025738:	4581                	li	a1,0
quickjs-nuttx/quickjs.h:711
}
    8002573a:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.h:710
    return JS_ToCStringLen2(ctx, NULL, val1, 0);
    8002573c:	f40fc06f          	j	80021e7c <JS_ToCStringLen2>

0000000080025740 <JS_AtomToCString>:
JS_AtomToCString():
quickjs-nuttx/quickjs.c:3320
{
    80025740:	7179                	addi	sp,sp,-48
    80025742:	f022                	sd	s0,32(sp)
    80025744:	ec26                	sd	s1,24(sp)
    80025746:	f406                	sd	ra,40(sp)
    80025748:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3324
    str = JS_AtomToString(ctx, atom);
    8002574a:	b88fa0ef          	jal	ra,8001fad2 <JS_AtomToString>
    8002574e:	e02a                	sd	a0,0(sp)
    80025750:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:3325
    if (JS_IsException(str))
    80025752:	0005871b          	sext.w	a4,a1
    80025756:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3326
        return NULL;
    80025758:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:3325
    if (JS_IsException(str))
    8002575a:	00f70d63          	beq	a4,a5,80025774 <JS_AtomToCString+0x34>
    8002575e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:3327
    cstr = JS_ToCString(ctx, str);
    80025760:	85aa                	mv	a1,a0
    80025762:	8526                	mv	a0,s1
    80025764:	fcdff0ef          	jal	ra,80025730 <JS_ToCString>
quickjs-nuttx/quickjs.c:3328
    JS_FreeValue(ctx, str);
    80025768:	6582                	ld	a1,0(sp)
    8002576a:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:3327
    cstr = JS_ToCString(ctx, str);
    8002576c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3328
    JS_FreeValue(ctx, str);
    8002576e:	8526                	mv	a0,s1
    80025770:	82ee60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3330
}
    80025774:	70a2                	ld	ra,40(sp)
    80025776:	8522                	mv	a0,s0
    80025778:	7402                	ld	s0,32(sp)
    8002577a:	64e2                	ld	s1,24(sp)
    8002577c:	6145                	addi	sp,sp,48
    8002577e:	8082                	ret

0000000080025780 <build_backtrace>:
build_backtrace():
quickjs-nuttx/quickjs.c:6513
{
    80025780:	716d                	addi	sp,sp,-272
    80025782:	f9ca                	sd	s2,240(sp)
    80025784:	e82e                	sd	a1,16(sp)
    80025786:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:6522
    js_dbuf_init(ctx, &dbuf);
    80025788:	188c                	addi	a1,sp,112
quickjs-nuttx/quickjs.c:6513
{
    8002578a:	e222                	sd	s0,256(sp)
    8002578c:	fda6                	sd	s1,248(sp)
    8002578e:	f1d2                	sd	s4,224(sp)
    80025790:	e606                	sd	ra,264(sp)
    80025792:	f5ce                	sd	s3,232(sp)
    80025794:	edd6                	sd	s5,216(sp)
    80025796:	e9da                	sd	s6,208(sp)
    80025798:	e5de                	sd	s7,200(sp)
    8002579a:	e1e2                	sd	s8,192(sp)
    8002579c:	fd66                	sd	s9,184(sp)
    8002579e:	f96a                	sd	s10,176(sp)
    800257a0:	f56e                	sd	s11,168(sp)
    800257a2:	84aa                	mv	s1,a0
    800257a4:	ec32                	sd	a2,24(sp)
    800257a6:	843a                	mv	s0,a4
    800257a8:	8a3e                	mv	s4,a5
quickjs-nuttx/quickjs.c:6522
    js_dbuf_init(ctx, &dbuf);
    800257aa:	d64e30ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:6523
    if (filename) {
    800257ae:	02091763          	bnez	s2,800257dc <build_backtrace+0x5c>
quickjs-nuttx/quickjs.c:6536
    for(sf = ctx->rt->current_stack_frame; sf != NULL; sf = sf->prev_frame) {
    800257b2:	6c9c                	ld	a5,24(s1)
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    800257b4:	04000bb7          	lui	s7,0x4000
build_backtrace():
quickjs-nuttx/quickjs.c:6562
                dbuf_printf(&dbuf, " (%s",
    800257b8:	00044c97          	auipc	s9,0x44
    800257bc:	f28c8c93          	addi	s9,s9,-216 # 800696e0 <qjsc_repl+0x4130>
quickjs-nuttx/quickjs.c:6536
    for(sf = ctx->rt->current_stack_frame; sf != NULL; sf = sf->prev_frame) {
    800257c0:	0f87b983          	ld	s3,248(a5)
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    800257c4:	1bfd                	addi	s7,s7,-1
build_backtrace():
quickjs-nuttx/quickjs.c:6536 (discriminator 1)
    for(sf = ctx->rt->current_stack_frame; sf != NULL; sf = sf->prev_frame) {
    800257c6:	08098463          	beqz	s3,8002584e <build_backtrace+0xce>
quickjs-nuttx/quickjs.c:6537
        if (backtrace_flags & JS_BACKTRACE_FLAG_SKIP_FIRST_LEVEL) {
    800257ca:	001a7a93          	andi	s5,s4,1
    800257ce:	080a8e63          	beqz	s5,8002586a <build_backtrace+0xea>
quickjs-nuttx/quickjs.c:6538
            backtrace_flags &= ~JS_BACKTRACE_FLAG_SKIP_FIRST_LEVEL;
    800257d2:	ffea7a13          	andi	s4,s4,-2
quickjs-nuttx/quickjs.c:6536 (discriminator 2)
    for(sf = ctx->rt->current_stack_frame; sf != NULL; sf = sf->prev_frame) {
    800257d6:	0009b983          	ld	s3,0(s3)
    800257da:	b7f5                	j	800257c6 <build_backtrace+0x46>
quickjs-nuttx/quickjs.c:6524
        dbuf_printf(&dbuf, "    at %s", filename);
    800257dc:	864a                	mv	a2,s2
    800257de:	00045597          	auipc	a1,0x45
    800257e2:	61258593          	addi	a1,a1,1554 # 8006adf0 <qjsc_repl+0x5840>
    800257e6:	1888                	addi	a0,sp,112
    800257e8:	3322c0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs.c:6525
        if (line_num != -1)
    800257ec:	57fd                	li	a5,-1
    800257ee:	00f40a63          	beq	s0,a5,80025802 <build_backtrace+0x82>
quickjs-nuttx/quickjs.c:6526
            dbuf_printf(&dbuf, ":%d", line_num);
    800257f2:	8622                	mv	a2,s0
    800257f4:	00045597          	auipc	a1,0x45
    800257f8:	60c58593          	addi	a1,a1,1548 # 8006ae00 <qjsc_repl+0x5850>
    800257fc:	1888                	addi	a0,sp,112
    800257fe:	31c2c0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs.c:6527
        dbuf_putc(&dbuf, '\n');
    80025802:	45a9                	li	a1,10
    80025804:	1888                	addi	a0,sp,112
    80025806:	2dc2c0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:6528
        str = JS_NewString(ctx, filename);
    8002580a:	85ca                	mv	a1,s2
    8002580c:	8526                	mv	a0,s1
    8002580e:	9aafa0ef          	jal	ra,8001f9b8 <JS_NewString>
    80025812:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:6529
        JS_DefinePropertyValue(ctx, error_obj, JS_ATOM_fileName, str,
    80025814:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:6528
        str = JS_NewString(ctx, filename);
    80025816:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:6529
        JS_DefinePropertyValue(ctx, error_obj, JS_ATOM_fileName, str,
    80025818:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:6528
        str = JS_NewString(ctx, filename);
    8002581a:	872a                	mv	a4,a0
    8002581c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:6529
        JS_DefinePropertyValue(ctx, error_obj, JS_ATOM_fileName, str,
    8002581e:	480d                	li	a6,3
    80025820:	03100693          	li	a3,49
    80025824:	8526                	mv	a0,s1
    80025826:	a07f20ef          	jal	ra,8001822c <JS_DefinePropertyValue>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8002582a:	e882                	sd	zero,80(sp)
    8002582c:	c8a2                	sw	s0,80(sp)
    8002582e:	6746                	ld	a4,80(sp)
build_backtrace():
quickjs-nuttx/quickjs.c:6531
        JS_DefinePropertyValue(ctx, error_obj, JS_ATOM_lineNumber, JS_NewInt32(ctx, line_num),
    80025830:	65c2                	ld	a1,16(sp)
    80025832:	6662                	ld	a2,24(sp)
    80025834:	4781                	li	a5,0
    80025836:	480d                	li	a6,3
    80025838:	03200693          	li	a3,50
    8002583c:	8526                	mv	a0,s1
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8002583e:	ec82                	sd	zero,88(sp)
    80025840:	e0ba                	sd	a4,64(sp)
    80025842:	e482                	sd	zero,72(sp)
build_backtrace():
quickjs-nuttx/quickjs.c:6531
    80025844:	9e9f20ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:6533
        if (backtrace_flags & JS_BACKTRACE_FLAG_SINGLE_LEVEL)
    80025848:	002a7793          	andi	a5,s4,2
    8002584c:	d3bd                	beqz	a5,800257b2 <build_backtrace+0x32>
quickjs-nuttx/quickjs.c:6578
    dbuf_putc(&dbuf, '\0');
    8002584e:	4581                	li	a1,0
    80025850:	1888                	addi	a0,sp,112
    80025852:	2902c0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:6579
    if (dbuf_error(&dbuf))
    80025856:	47aa                	lw	a5,136(sp)
    80025858:	1c079e63          	bnez	a5,80025a34 <build_backtrace+0x2b4>
quickjs-nuttx/quickjs.c:6582
        str = JS_NewString(ctx, (char *)dbuf.buf);
    8002585c:	75c6                	ld	a1,112(sp)
    8002585e:	8526                	mv	a0,s1
    80025860:	958fa0ef          	jal	ra,8001f9b8 <JS_NewString>
    80025864:	f82a                	sd	a0,48(sp)
    80025866:	fc2e                	sd	a1,56(sp)
    80025868:	aac9                	j	80025a3a <build_backtrace+0x2ba>
get_func_name():
quickjs-nuttx/quickjs.c:6491
    if (JS_VALUE_GET_TAG(func) != JS_TAG_OBJECT)
    8002586a:	0109a703          	lw	a4,16(s3)
    8002586e:	57fd                	li	a5,-1
    80025870:	0ef70563          	beq	a4,a5,8002595a <build_backtrace+0x1da>
quickjs-nuttx/quickjs.c:6492
        return NULL;
    80025874:	4401                	li	s0,0
build_backtrace():
quickjs-nuttx/quickjs.c:6543
            str1 = "<anonymous>";
    80025876:	00045617          	auipc	a2,0x45
    8002587a:	56a60613          	addi	a2,a2,1386 # 8006ade0 <qjsc_repl+0x5830>
quickjs-nuttx/quickjs.c:6546
        dbuf_printf(&dbuf, "    at %s", str1);
    8002587e:	00045597          	auipc	a1,0x45
    80025882:	57258593          	addi	a1,a1,1394 # 8006adf0 <qjsc_repl+0x5840>
    80025886:	1888                	addi	a0,sp,112
    80025888:	2922c0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs.c:6547
        JS_FreeCString(ctx, func_name_str);
    8002588c:	85a2                	mv	a1,s0
    8002588e:	8526                	mv	a0,s1
    80025890:	aaee70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:6549
        p = JS_VALUE_GET_OBJ(sf->cur_func);
    80025894:	0089b403          	ld	s0,8(s3)
quickjs-nuttx/quickjs.c:6551
        if (js_class_has_bytecode(p->class_id)) {
    80025898:	00645503          	lhu	a0,6(s0)
    8002589c:	b75e30ef          	jal	ra,80009410 <js_class_has_bytecode>
    800258a0:	892a                	mv	s2,a0
    800258a2:	18050163          	beqz	a0,80025a24 <build_backtrace+0x2a4>
quickjs-nuttx/quickjs.c:6556
            b = p->u.func.function_bytecode;
    800258a6:	03043d03          	ld	s10,48(s0)
quickjs-nuttx/quickjs.c:6557
            backtrace_barrier = b->backtrace_barrier;
    800258aa:	018d3903          	ld	s2,24(s10) # ffffffffffff2018 <_ebss+0xffffffff7fef0eb2>
quickjs-nuttx/quickjs.c:6558
            if (b->has_debug) {
    800258ae:	01ad4783          	lbu	a5,26(s10)
quickjs-nuttx/quickjs.c:6557
            backtrace_barrier = b->backtrace_barrier;
    800258b2:	01395913          	srli	s2,s2,0x13
quickjs-nuttx/quickjs.c:6558
            if (b->has_debug) {
    800258b6:	8b91                	andi	a5,a5,4
quickjs-nuttx/quickjs.c:6557
            backtrace_barrier = b->backtrace_barrier;
    800258b8:	00197913          	andi	s2,s2,1
quickjs-nuttx/quickjs.c:6558
            if (b->has_debug) {
    800258bc:	cbc1                	beqz	a5,8002594c <build_backtrace+0x1cc>
quickjs-nuttx/quickjs.c:6560
                                          sf->cur_pc - b->byte_code_buf - 1);
    800258be:	0389bb03          	ld	s6,56(s3)
    800258c2:	020d3783          	ld	a5,32(s10)
find_line_num():
quickjs-nuttx/quickjs.c:6444
    if (!b->has_debug || !b->debug.pc2line_buf) {
    800258c6:	070d3703          	ld	a4,112(s10)
quickjs-nuttx/quickjs.c:6446
        return -1;
    800258ca:	5dfd                	li	s11,-1
build_backtrace():
quickjs-nuttx/quickjs.c:6560
                                          sf->cur_pc - b->byte_code_buf - 1);
    800258cc:	40fb0b33          	sub	s6,s6,a5
quickjs-nuttx/quickjs.c:6559
                line_num1 = find_line_num(ctx, b,
    800258d0:	3b7d                	addiw	s6,s6,-1
find_line_num():
quickjs-nuttx/quickjs.c:6444
    if (!b->has_debug || !b->debug.pc2line_buf) {
    800258d2:	cb0d                	beqz	a4,80025904 <build_backtrace+0x184>
quickjs-nuttx/quickjs.c:6450
    p_end = p + b->debug.pc2line_len;
    800258d4:	06cd2603          	lw	a2,108(s10)
quickjs-nuttx/quickjs.c:6452
    line_num = b->debug.line_num;
    800258d8:	064d2d83          	lw	s11,100(s10)
quickjs-nuttx/quickjs.c:6472
            pc += (op / PC2LINE_RANGE);
    800258dc:	4c15                	li	s8,5
quickjs-nuttx/quickjs.c:6450
    p_end = p + b->debug.pc2line_len;
    800258de:	963a                	add	a2,a2,a4
quickjs-nuttx/quickjs.c:6453
    while (p < p_end) {
    800258e0:	02c77263          	bgeu	a4,a2,80025904 <build_backtrace+0x184>
quickjs-nuttx/quickjs.c:6454
        op = *p++;
    800258e4:	00170413          	addi	s0,a4,1
    800258e8:	00074703          	lbu	a4,0(a4)
quickjs-nuttx/quickjs.c:6455
        if (op == 0) {
    800258ec:	10071f63          	bnez	a4,80025a0a <build_backtrace+0x28a>
quickjs-nuttx/quickjs.c:6457
            ret = get_leb128(&val, p, p_end);
    800258f0:	85a2                	mv	a1,s0
    800258f2:	1088                	addi	a0,sp,96
    800258f4:	e432                	sd	a2,8(sp)
    800258f6:	840e30ef          	jal	ra,80008936 <get_leb128>
quickjs-nuttx/quickjs.c:6458
            if (ret < 0)
    800258fa:	6622                	ld	a2,8(sp)
    800258fc:	0e055263          	bgez	a0,800259e0 <build_backtrace+0x260>
quickjs-nuttx/quickjs.c:6466
                return b->debug.line_num;
    80025900:	064d2d83          	lw	s11,100(s10)
build_backtrace():
quickjs-nuttx/quickjs.c:6561
                atom_str = JS_AtomToCString(ctx, b->debug.filename);
    80025904:	060d2583          	lw	a1,96(s10)
    80025908:	8526                	mv	a0,s1
    8002590a:	e37ff0ef          	jal	ra,80025740 <JS_AtomToCString>
    8002590e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:6562
                dbuf_printf(&dbuf, " (%s",
    80025910:	862a                	mv	a2,a0
    80025912:	e111                	bnez	a0,80025916 <build_backtrace+0x196>
    80025914:	8666                	mv	a2,s9
quickjs-nuttx/quickjs.c:6562 (discriminator 4)
    80025916:	00045597          	auipc	a1,0x45
    8002591a:	4f258593          	addi	a1,a1,1266 # 8006ae08 <qjsc_repl+0x5858>
    8002591e:	1888                	addi	a0,sp,112
    80025920:	1fa2c0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs.c:6564 (discriminator 4)
                JS_FreeCString(ctx, atom_str);
    80025924:	85a2                	mv	a1,s0
    80025926:	8526                	mv	a0,s1
    80025928:	a16e70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:6565 (discriminator 4)
                if (line_num1 != -1)
    8002592c:	57fd                	li	a5,-1
    8002592e:	00fd8a63          	beq	s11,a5,80025942 <build_backtrace+0x1c2>
quickjs-nuttx/quickjs.c:6566
                    dbuf_printf(&dbuf, ":%d", line_num1);
    80025932:	866e                	mv	a2,s11
    80025934:	00045597          	auipc	a1,0x45
    80025938:	4cc58593          	addi	a1,a1,1228 # 8006ae00 <qjsc_repl+0x5850>
    8002593c:	1888                	addi	a0,sp,112
    8002593e:	1dc2c0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs.c:6567
                dbuf_putc(&dbuf, ')');
    80025942:	02900593          	li	a1,41
    80025946:	1888                	addi	a0,sp,112
    80025948:	19a2c0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:6572
        dbuf_putc(&dbuf, '\n');
    8002594c:	45a9                	li	a1,10
    8002594e:	1888                	addi	a0,sp,112
    80025950:	1922c0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:6574
        if (backtrace_barrier)
    80025954:	e80901e3          	beqz	s2,800257d6 <build_backtrace+0x56>
quickjs-nuttx/quickjs.c:6577
 done:
    80025958:	bddd                	j	8002584e <build_backtrace+0xce>
    8002595a:	0089b603          	ld	a2,8(s3)
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8002595e:	5771                	li	a4,-4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80025960:	03700593          	li	a1,55
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80025964:	6e14                	ld	a3,24(a2)
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80025966:	529c                	lw	a5,32(a3)
    80025968:	0377f793          	andi	a5,a5,55
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8002596c:	0785                	addi	a5,a5,1
    8002596e:	02e787b3          	mul	a5,a5,a4
    80025972:	97b6                	add	a5,a5,a3
    80025974:	0007e703          	lwu	a4,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80025978:	04068693          	addi	a3,a3,64
find_own_property():
quickjs-nuttx/quickjs.c:5224
    while (h) {
    8002597c:	ee070ce3          	beqz	a4,80025874 <build_backtrace+0xf4>
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80025980:	00371793          	slli	a5,a4,0x3
    80025984:	17e1                	addi	a5,a5,-8
    80025986:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80025988:	43c8                	lw	a0,4(a5)
    8002598a:	439c                	lw	a5,0(a5)
    8002598c:	04b51463          	bne	a0,a1,800259d4 <build_backtrace+0x254>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80025990:	7214                	ld	a3,32(a2)
    80025992:	0712                	slli	a4,a4,0x4
get_func_name():
quickjs-nuttx/quickjs.c:6496
    if ((prs->flags & JS_PROP_TMASK) != JS_PROP_NORMAL)
    80025994:	01a7d79b          	srliw	a5,a5,0x1a
find_own_property():
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80025998:	1741                	addi	a4,a4,-16
get_func_name():
quickjs-nuttx/quickjs.c:6496
    if ((prs->flags & JS_PROP_TMASK) != JS_PROP_NORMAL)
    8002599a:	0307f793          	andi	a5,a5,48
find_own_property():
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    8002599e:	9736                	add	a4,a4,a3
get_func_name():
quickjs-nuttx/quickjs.c:6496
    if ((prs->flags & JS_PROP_TMASK) != JS_PROP_NORMAL)
    800259a0:	ec079ae3          	bnez	a5,80025874 <build_backtrace+0xf4>
quickjs-nuttx/quickjs.c:6498
    val = pr->u.value;
    800259a4:	630c                	ld	a1,0(a4)
quickjs-nuttx/quickjs.c:6499
    if (JS_VALUE_GET_TAG(val) != JS_TAG_STRING)
    800259a6:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:6498
    val = pr->u.value;
    800259a8:	f0ae                	sd	a1,96(sp)
    800259aa:	6710                	ld	a2,8(a4)
    800259ac:	f4b2                	sd	a2,104(sp)
quickjs-nuttx/quickjs.c:6499
    if (JS_VALUE_GET_TAG(val) != JS_TAG_STRING)
    800259ae:	4718                	lw	a4,8(a4)
    800259b0:	ecf712e3          	bne	a4,a5,80025874 <build_backtrace+0xf4>
quickjs-nuttx/quickjs.c:6501
    return JS_ToCString(ctx, val);
    800259b4:	8526                	mv	a0,s1
    800259b6:	d7bff0ef          	jal	ra,80025730 <JS_ToCString>
    800259ba:	842a                	mv	s0,a0
build_backtrace():
quickjs-nuttx/quickjs.c:6543
            str1 = "<anonymous>";
    800259bc:	00045617          	auipc	a2,0x45
    800259c0:	42460613          	addi	a2,a2,1060 # 8006ade0 <qjsc_repl+0x5830>
quickjs-nuttx/quickjs.c:6542
        if (!func_name_str || func_name_str[0] == '\0')
    800259c4:	ea050de3          	beqz	a0,8002587e <build_backtrace+0xfe>
quickjs-nuttx/quickjs.c:6542 (discriminator 1)
    800259c8:	00054783          	lbu	a5,0(a0)
    800259cc:	ea0789e3          	beqz	a5,8002587e <build_backtrace+0xfe>
quickjs-nuttx/quickjs.c:6542
    800259d0:	862a                	mv	a2,a0
    800259d2:	b575                	j	8002587e <build_backtrace+0xfe>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    800259d4:	00fbf7b3          	and	a5,s7,a5
    800259d8:	02079713          	slli	a4,a5,0x20
    800259dc:	9301                	srli	a4,a4,0x20
    800259de:	bf79                	j	8002597c <build_backtrace+0x1fc>
find_line_num():
quickjs-nuttx/quickjs.c:6460
            pc += val;
    800259e0:	5786                	lw	a5,96(sp)
quickjs-nuttx/quickjs.c:6461
            p += ret;
    800259e2:	942a                	add	s0,s0,a0
quickjs-nuttx/quickjs.c:6462
            ret = get_sleb128(&v, p, p_end);
    800259e4:	85a2                	mv	a1,s0
    800259e6:	1068                	addi	a0,sp,44
quickjs-nuttx/quickjs.c:6460
            pc += val;
    800259e8:	01578abb          	addw	s5,a5,s5
quickjs-nuttx/quickjs.c:6462
            ret = get_sleb128(&v, p, p_end);
    800259ec:	e432                	sd	a2,8(sp)
    800259ee:	f8de20ef          	jal	ra,8000897a <get_sleb128>
quickjs-nuttx/quickjs.c:6463
            if (ret < 0) {
    800259f2:	f00547e3          	bltz	a0,80025900 <build_backtrace+0x180>
quickjs-nuttx/quickjs.c:6469
            new_line_num = line_num + v;
    800259f6:	57b2                	lw	a5,44(sp)
    800259f8:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:6468
            p += ret;
    800259fa:	00a40733          	add	a4,s0,a0
quickjs-nuttx/quickjs.c:6469
            new_line_num = line_num + v;
    800259fe:	01b787bb          	addw	a5,a5,s11
quickjs-nuttx/quickjs.c:6475
        if (pc_value < pc)
    80025a02:	f15b61e3          	bltu	s6,s5,80025904 <build_backtrace+0x184>
quickjs-nuttx/quickjs.c:6477
        line_num = new_line_num;
    80025a06:	8dbe                	mv	s11,a5
    80025a08:	bde1                	j	800258e0 <build_backtrace+0x160>
quickjs-nuttx/quickjs.c:6471
            op -= PC2LINE_OP_FIRST;
    80025a0a:	fff7079b          	addiw	a5,a4,-1
quickjs-nuttx/quickjs.c:6472
            pc += (op / PC2LINE_RANGE);
    80025a0e:	0387d73b          	divuw	a4,a5,s8
quickjs-nuttx/quickjs.c:6473
            new_line_num = line_num + (op % PC2LINE_RANGE) + PC2LINE_BASE;
    80025a12:	0387f7bb          	remuw	a5,a5,s8
quickjs-nuttx/quickjs.c:6472
            pc += (op / PC2LINE_RANGE);
    80025a16:	01570abb          	addw	s5,a4,s5
quickjs-nuttx/quickjs.c:6473
            new_line_num = line_num + (op % PC2LINE_RANGE) + PC2LINE_BASE;
    80025a1a:	fffd871b          	addiw	a4,s11,-1
    80025a1e:	9fb9                	addw	a5,a5,a4
quickjs-nuttx/quickjs.c:6454
        op = *p++;
    80025a20:	8722                	mv	a4,s0
    80025a22:	b7c5                	j	80025a02 <build_backtrace+0x282>
build_backtrace():
quickjs-nuttx/quickjs.c:6570
            dbuf_printf(&dbuf, " (native)");
    80025a24:	00045597          	auipc	a1,0x45
    80025a28:	3ec58593          	addi	a1,a1,1004 # 8006ae10 <qjsc_repl+0x5860>
    80025a2c:	1888                	addi	a0,sp,112
    80025a2e:	0ec2c0ef          	jal	ra,80051b1a <dbuf_printf>
    80025a32:	bf29                	j	8002594c <build_backtrace+0x1cc>
quickjs-nuttx/quickjs.c:6580
        str = JS_NULL;
    80025a34:	4789                	li	a5,2
    80025a36:	f802                	sd	zero,48(sp)
    80025a38:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:6583
    dbuf_free(&dbuf);
    80025a3a:	1888                	addi	a0,sp,112
    80025a3c:	16a2c0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:6584
    JS_DefinePropertyValue(ctx, error_obj, JS_ATOM_stack, str,
    80025a40:	7742                	ld	a4,48(sp)
    80025a42:	77e2                	ld	a5,56(sp)
    80025a44:	65c2                	ld	a1,16(sp)
    80025a46:	6662                	ld	a2,24(sp)
    80025a48:	8526                	mv	a0,s1
    80025a4a:	480d                	li	a6,3
    80025a4c:	03600693          	li	a3,54
    80025a50:	fdcf20ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:6586
}
    80025a54:	60b2                	ld	ra,264(sp)
    80025a56:	6412                	ld	s0,256(sp)
    80025a58:	74ee                	ld	s1,248(sp)
    80025a5a:	794e                	ld	s2,240(sp)
    80025a5c:	79ae                	ld	s3,232(sp)
    80025a5e:	7a0e                	ld	s4,224(sp)
    80025a60:	6aee                	ld	s5,216(sp)
    80025a62:	6b4e                	ld	s6,208(sp)
    80025a64:	6bae                	ld	s7,200(sp)
    80025a66:	6c0e                	ld	s8,192(sp)
    80025a68:	7cea                	ld	s9,184(sp)
    80025a6a:	7d4a                	ld	s10,176(sp)
    80025a6c:	7daa                	ld	s11,168(sp)
    80025a6e:	6151                	addi	sp,sp,272
    80025a70:	8082                	ret

0000000080025a72 <js_resolve_module>:
js_resolve_module():
quickjs-nuttx/quickjs.c:27923
    if (m->resolved)
    80025a72:	0815c783          	lbu	a5,129(a1)
    80025a76:	c399                	beqz	a5,80025a7c <js_resolve_module+0xa>
quickjs-nuttx/quickjs.c:27924
        return 0;
    80025a78:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:27946
}
    80025a7a:	8082                	ret
quickjs-nuttx/quickjs.c:27919
{
    80025a7c:	7139                	addi	sp,sp,-64
    80025a7e:	f822                	sd	s0,48(sp)
    80025a80:	f426                	sd	s1,40(sp)
    80025a82:	e456                	sd	s5,8(sp)
    80025a84:	fc06                	sd	ra,56(sp)
    80025a86:	f04a                	sd	s2,32(sp)
    80025a88:	ec4e                	sd	s3,24(sp)
    80025a8a:	e852                	sd	s4,16(sp)
    80025a8c:	e05a                	sd	s6,0(sp)
quickjs-nuttx/quickjs.c:27931
    m->resolved = TRUE;
    80025a8e:	4785                	li	a5,1
    80025a90:	842a                	mv	s0,a0
    80025a92:	84ae                	mv	s1,a1
    80025a94:	08f580a3          	sb	a5,129(a1)
quickjs-nuttx/quickjs.c:27933
    for(i = 0; i < m->req_module_entries_count; i++) {
    80025a98:	4a81                	li	s5,0
    80025a9a:	509c                	lw	a5,32(s1)
    80025a9c:	00facd63          	blt	s5,a5,80025ab6 <js_resolve_module+0x44>
quickjs-nuttx/quickjs.c:27924
        return 0;
    80025aa0:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:27946
}
    80025aa2:	70e2                	ld	ra,56(sp)
    80025aa4:	7442                	ld	s0,48(sp)
    80025aa6:	74a2                	ld	s1,40(sp)
    80025aa8:	7902                	ld	s2,32(sp)
    80025aaa:	69e2                	ld	s3,24(sp)
    80025aac:	6a42                	ld	s4,16(sp)
    80025aae:	6aa2                	ld	s5,8(sp)
    80025ab0:	6b02                	ld	s6,0(sp)
    80025ab2:	6121                	addi	sp,sp,64
    80025ab4:	8082                	ret
quickjs-nuttx/quickjs.c:27934
        JSReqModuleEntry *rme = &m->req_module_entries[i];
    80025ab6:	6c9c                	ld	a5,24(s1)
js_host_resolve_imported_module_atom():
quickjs-nuttx/quickjs.c:27488
    base_cname = JS_AtomToCString(ctx, base_module_name);
    80025ab8:	40cc                	lw	a1,4(s1)
js_resolve_module():
quickjs-nuttx/quickjs.c:27934
        JSReqModuleEntry *rme = &m->req_module_entries[i];
    80025aba:	004a9b13          	slli	s6,s5,0x4
    80025abe:	9b3e                	add	s6,s6,a5
js_host_resolve_imported_module_atom():
quickjs-nuttx/quickjs.c:27488
    base_cname = JS_AtomToCString(ctx, base_module_name);
    80025ac0:	8522                	mv	a0,s0
js_resolve_module():
quickjs-nuttx/quickjs.c:27935
        m1 = js_host_resolve_imported_module_atom(ctx, m->module_name,
    80025ac2:	000b2983          	lw	s3,0(s6)
js_host_resolve_imported_module_atom():
quickjs-nuttx/quickjs.c:27488
    base_cname = JS_AtomToCString(ctx, base_module_name);
    80025ac6:	c7bff0ef          	jal	ra,80025740 <JS_AtomToCString>
    80025aca:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:27489
    if (!base_cname)
    80025acc:	e119                	bnez	a0,80025ad2 <js_resolve_module+0x60>
js_resolve_module():
quickjs-nuttx/quickjs.c:27938
            return -1;
    80025ace:	557d                	li	a0,-1
    80025ad0:	bfc9                	j	80025aa2 <js_resolve_module+0x30>
js_host_resolve_imported_module_atom():
quickjs-nuttx/quickjs.c:27491
    cname = JS_AtomToCString(ctx, module_name1);
    80025ad2:	85ce                	mv	a1,s3
    80025ad4:	8522                	mv	a0,s0
    80025ad6:	c6bff0ef          	jal	ra,80025740 <JS_AtomToCString>
    80025ada:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:27492
    if (!cname) {
    80025adc:	e511                	bnez	a0,80025ae8 <js_resolve_module+0x76>
quickjs-nuttx/quickjs.c:27493
        JS_FreeCString(ctx, base_cname);
    80025ade:	85ca                	mv	a1,s2
    80025ae0:	8522                	mv	a0,s0
    80025ae2:	85ce70ef          	jal	ra,8000cb3e <JS_FreeCString>
    80025ae6:	b7e5                	j	80025ace <js_resolve_module+0x5c>
quickjs-nuttx/quickjs.c:27496
    m = js_host_resolve_imported_module(ctx, base_cname, cname);
    80025ae8:	862a                	mv	a2,a0
    80025aea:	85ca                	mv	a1,s2
    80025aec:	8522                	mv	a0,s0
    80025aee:	cecf90ef          	jal	ra,8001efda <js_host_resolve_imported_module>
    80025af2:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:27497
    JS_FreeCString(ctx, base_cname);
    80025af4:	85ca                	mv	a1,s2
    80025af6:	8522                	mv	a0,s0
    80025af8:	846e70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:27498
    JS_FreeCString(ctx, cname);
    80025afc:	85d2                	mv	a1,s4
    80025afe:	8522                	mv	a0,s0
    80025b00:	83ee70ef          	jal	ra,8000cb3e <JS_FreeCString>
js_resolve_module():
quickjs-nuttx/quickjs.c:27937
        if (!m1)
    80025b04:	fc0985e3          	beqz	s3,80025ace <js_resolve_module+0x5c>
quickjs-nuttx/quickjs.c:27939
        rme->module = m1;
    80025b08:	013b3423          	sd	s3,8(s6)
quickjs-nuttx/quickjs.c:27942
        if (js_resolve_module(ctx, m1) < 0)
    80025b0c:	85ce                	mv	a1,s3
    80025b0e:	8522                	mv	a0,s0
    80025b10:	f63ff0ef          	jal	ra,80025a72 <js_resolve_module>
    80025b14:	fa054de3          	bltz	a0,80025ace <js_resolve_module+0x5c>
quickjs-nuttx/quickjs.c:27933
    for(i = 0; i < m->req_module_entries_count; i++) {
    80025b18:	2a85                	addiw	s5,s5,1
    80025b1a:	b741                	j	80025a9a <js_resolve_module+0x28>

0000000080025b1c <JS_ResolveModule>:
JS_ResolveModule():
quickjs-nuttx/quickjs.c:34430
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_MODULE) {
    80025b1c:	2601                	sext.w	a2,a2
    80025b1e:	57f5                	li	a5,-3
    80025b20:	00f60963          	beq	a2,a5,80025b32 <JS_ResolveModule+0x16>
quickjs-nuttx/quickjs.c:34437
    return 0;
    80025b24:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:34438
}
    80025b26:	8082                	ret
quickjs-nuttx/quickjs.c:34437
    return 0;
    80025b28:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:34438
}
    80025b2a:	60e2                	ld	ra,24(sp)
    80025b2c:	6442                	ld	s0,16(sp)
    80025b2e:	6105                	addi	sp,sp,32
    80025b30:	8082                	ret
quickjs-nuttx/quickjs.c:34429
{
    80025b32:	1101                	addi	sp,sp,-32
    80025b34:	e822                	sd	s0,16(sp)
    80025b36:	ec06                	sd	ra,24(sp)
    80025b38:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:34432
        if (js_resolve_module(ctx, m) < 0) {
    80025b3a:	f39ff0ef          	jal	ra,80025a72 <js_resolve_module>
    80025b3e:	fe0555e3          	bgez	a0,80025b28 <JS_ResolveModule+0xc>
quickjs-nuttx/quickjs.c:34433
            js_free_modules(ctx, JS_FREE_MODULE_NOT_RESOLVED);
    80025b42:	8522                	mv	a0,s0
    80025b44:	4585                	li	a1,1
    80025b46:	ab1e60ef          	jal	ra,8000c5f6 <js_free_modules>
quickjs-nuttx/quickjs.c:34434
            return -1;
    80025b4a:	557d                	li	a0,-1
    80025b4c:	bff9                	j	80025b2a <JS_ResolveModule+0xe>

0000000080025b4e <js_bigfloat_parseFloat>:
js_bigfloat_parseFloat():
quickjs-nuttx/quickjs.c:51261
{
    80025b4e:	7159                	addi	sp,sp,-112
    80025b50:	f0a2                	sd	s0,96(sp)
    80025b52:	eca6                	sd	s1,88(sp)
    80025b54:	e4ce                	sd	s3,72(sp)
    80025b56:	f486                	sd	ra,104(sp)
    80025b58:	e8ca                	sd	s2,80(sp)
    80025b5a:	e0d2                	sd	s4,64(sp)
    80025b5c:	e02e                	sd	a1,0(sp)
    80025b5e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:51268
    str = JS_ToCString(ctx, argv[0]);
    80025b60:	630c                	ld	a1,0(a4)
    80025b62:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:51261
{
    80025b64:	842a                	mv	s0,a0
    80025b66:	89b6                	mv	s3,a3
    80025b68:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:51268
    str = JS_ToCString(ctx, argv[0]);
    80025b6a:	bc7ff0ef          	jal	ra,80025730 <JS_ToCString>
quickjs-nuttx/quickjs.c:51269
    if (!str)
    80025b6e:	ed11                	bnez	a0,80025b8a <js_bigfloat_parseFloat+0x3c>
quickjs-nuttx/quickjs.c:51274
        return JS_EXCEPTION;
    80025b70:	4799                	li	a5,6
    80025b72:	f802                	sd	zero,48(sp)
    80025b74:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:51295 (discriminator 1)
}
    80025b76:	70a6                	ld	ra,104(sp)
    80025b78:	7406                	ld	s0,96(sp)
    80025b7a:	7542                	ld	a0,48(sp)
    80025b7c:	75e2                	ld	a1,56(sp)
    80025b7e:	64e6                	ld	s1,88(sp)
    80025b80:	6946                	ld	s2,80(sp)
    80025b82:	69a6                	ld	s3,72(sp)
    80025b84:	6a06                	ld	s4,64(sp)
    80025b86:	6165                	addi	sp,sp,112
    80025b88:	8082                	ret
quickjs-nuttx/quickjs.c:51271
    if (JS_ToInt32(ctx, &radix, argv[1])) {
    80025b8a:	6890                	ld	a2,16(s1)
    80025b8c:	6c94                	ld	a3,24(s1)
    80025b8e:	892a                	mv	s2,a0
    80025b90:	086c                	addi	a1,sp,28
    80025b92:	8522                	mv	a0,s0
    80025b94:	827fc0ef          	jal	ra,800223ba <JS_ToInt32>
    80025b98:	c511                	beqz	a0,80025ba4 <js_bigfloat_parseFloat+0x56>
quickjs-nuttx/quickjs.c:51273
        JS_FreeCString(ctx, str);
    80025b9a:	85ca                	mv	a1,s2
    80025b9c:	8522                	mv	a0,s0
    80025b9e:	fa1e60ef          	jal	ra,8000cb3e <JS_FreeCString>
    80025ba2:	b7f9                	j	80025b70 <js_bigfloat_parseFloat+0x22>
quickjs-nuttx/quickjs.c:51276
    if (radix != 0 && (radix < 2 || radix > 36)) {
    80025ba4:	47f2                	lw	a5,28(sp)
    80025ba6:	cf91                	beqz	a5,80025bc2 <js_bigfloat_parseFloat+0x74>
quickjs-nuttx/quickjs.c:51276 (discriminator 1)
    80025ba8:	37f9                	addiw	a5,a5,-2
    80025baa:	02200713          	li	a4,34
    80025bae:	00f77a63          	bgeu	a4,a5,80025bc2 <js_bigfloat_parseFloat+0x74>
quickjs-nuttx/quickjs.c:51277
        JS_ThrowRangeError(ctx, "radix must be between 2 and 36");
    80025bb2:	8522                	mv	a0,s0
    80025bb4:	00045597          	auipc	a1,0x45
    80025bb8:	fe458593          	addi	a1,a1,-28 # 8006ab98 <qjsc_repl+0x55e8>
    80025bbc:	d13f30ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:51278
        goto fail;
    80025bc0:	bfe9                	j	80025b9a <js_bigfloat_parseFloat+0x4c>
quickjs-nuttx/quickjs.c:51281
    if (argc > 2) {
    80025bc2:	4789                	li	a5,2
    80025bc4:	0537c063          	blt	a5,s3,80025c04 <js_bigfloat_parseFloat+0xb6>
quickjs-nuttx/quickjs.c:51280
    fe = &ctx->fp_env;
    80025bc8:	19840493          	addi	s1,s0,408
quickjs-nuttx/quickjs.c:51286
    ret = JS_NewBigFloat(ctx);
    80025bcc:	8522                	mv	a0,s0
    80025bce:	db2f40ef          	jal	ra,8001a180 <JS_NewBigFloat>
    80025bd2:	f02a                	sd	a0,32(sp)
    80025bd4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:51287
    if (JS_IsException(ret))
    80025bd6:	0005871b          	sext.w	a4,a1
    80025bda:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51286
    ret = JS_NewBigFloat(ctx);
    80025bdc:	8a2a                	mv	s4,a0
    80025bde:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:51287
    if (JS_IsException(ret))
    80025be0:	00f70b63          	beq	a4,a5,80025bf6 <js_bigfloat_parseFloat+0xa8>
quickjs-nuttx/quickjs.c:51291
    bf_atof(a, str, NULL, radix, fe->prec, fe->flags);
    80025be4:	449c                	lw	a5,8(s1)
    80025be6:	6098                	ld	a4,0(s1)
    80025be8:	46f2                	lw	a3,28(sp)
    80025bea:	4601                	li	a2,0
    80025bec:	85ca                	mv	a1,s2
    80025bee:	008a0513          	addi	a0,s4,8
    80025bf2:	21f370ef          	jal	ra,8005d610 <bf_atof>
quickjs-nuttx/quickjs.c:51293
    JS_FreeCString(ctx, str);
    80025bf6:	85ca                	mv	a1,s2
    80025bf8:	8522                	mv	a0,s0
    80025bfa:	f45e60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:51294
    return ret;
    80025bfe:	f852                	sd	s4,48(sp)
    80025c00:	fc4e                	sd	s3,56(sp)
    80025c02:	bf95                	j	80025b76 <js_bigfloat_parseFloat+0x28>
quickjs-nuttx/quickjs.c:51282
        fe = JS_GetOpaque2(ctx, argv[2], JS_CLASS_FLOAT_ENV);
    80025c04:	708c                	ld	a1,32(s1)
    80025c06:	7490                	ld	a2,40(s1)
    80025c08:	02300693          	li	a3,35
    80025c0c:	8522                	mv	a0,s0
    80025c0e:	be1f20ef          	jal	ra,800187ee <JS_GetOpaque2>
    80025c12:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:51283
        if (!fe)
    80025c14:	fd45                	bnez	a0,80025bcc <js_bigfloat_parseFloat+0x7e>
    80025c16:	b751                	j	80025b9a <js_bigfloat_parseFloat+0x4c>

0000000080025c18 <js_parseFloat>:
js_parseFloat():
quickjs-nuttx/quickjs.c:41060
{
    80025c18:	711d                	addi	sp,sp,-96
    80025c1a:	e4a6                	sd	s1,72(sp)
    80025c1c:	ec86                	sd	ra,88(sp)
    80025c1e:	e8a2                	sd	s0,80(sp)
quickjs-nuttx/quickjs.c:41064
    str = JS_ToCString(ctx, argv[0]);
    80025c20:	630c                	ld	a1,0(a4)
    80025c22:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:41060
{
    80025c24:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:41064
    str = JS_ToCString(ctx, argv[0]);
    80025c26:	b0bff0ef          	jal	ra,80025730 <JS_ToCString>
quickjs-nuttx/quickjs.c:41065
    if (!str)
    80025c2a:	e919                	bnez	a0,80025c40 <js_parseFloat+0x28>
quickjs-nuttx/quickjs.c:41066
        return JS_EXCEPTION;
    80025c2c:	f002                	sd	zero,32(sp)
    80025c2e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:41072
}
    80025c30:	60e6                	ld	ra,88(sp)
    80025c32:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:41071
    return ret;
    80025c34:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:41072
}
    80025c36:	7502                	ld	a0,32(sp)
    80025c38:	75a2                	ld	a1,40(sp)
    80025c3a:	64a6                	ld	s1,72(sp)
    80025c3c:	6125                	addi	sp,sp,96
    80025c3e:	8082                	ret
    80025c40:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:41068
    p += skip_spaces(p);
    80025c42:	fdde20ef          	jal	ra,80008c1e <skip_spaces>
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    80025c46:	4781                	li	a5,0
    80025c48:	4701                	li	a4,0
    80025c4a:	46a9                	li	a3,10
    80025c4c:	4601                	li	a2,0
    80025c4e:	00a405b3          	add	a1,s0,a0
    80025c52:	8526                	mv	a0,s1
    80025c54:	c45f70ef          	jal	ra,8001d898 <js_atof2>
    80025c58:	e82a                	sd	a0,16(sp)
    80025c5a:	ec2e                	sd	a1,24(sp)
js_parseFloat():
quickjs-nuttx/quickjs.c:41070
    JS_FreeCString(ctx, str);
    80025c5c:	8526                	mv	a0,s1
    80025c5e:	85a2                	mv	a1,s0
    80025c60:	edfe60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:41071
    return ret;
    80025c64:	67c2                	ld	a5,16(sp)
    80025c66:	f03e                	sd	a5,32(sp)
    80025c68:	67e2                	ld	a5,24(sp)
    80025c6a:	b7d9                	j	80025c30 <js_parseFloat+0x18>

0000000080025c6c <js_parseInt>:
js_parseInt():
quickjs-nuttx/quickjs.c:41034
{
    80025c6c:	7119                	addi	sp,sp,-128
    80025c6e:	f4a6                	sd	s1,104(sp)
    80025c70:	f0ca                	sd	s2,96(sp)
    80025c72:	fc86                	sd	ra,120(sp)
    80025c74:	f8a2                	sd	s0,112(sp)
    80025c76:	aca2                	fsd	fs0,88(sp)
quickjs-nuttx/quickjs.c:41039
    str = JS_ToCString(ctx, argv[0]);
    80025c78:	630c                	ld	a1,0(a4)
    80025c7a:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:41034
{
    80025c7c:	84aa                	mv	s1,a0
    80025c7e:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:41039
    str = JS_ToCString(ctx, argv[0]);
    80025c80:	ab1ff0ef          	jal	ra,80025730 <JS_ToCString>
quickjs-nuttx/quickjs.c:41040
    if (!str)
    80025c84:	ed09                	bnez	a0,80025c9e <js_parseInt+0x32>
quickjs-nuttx/quickjs.c:41044
        return JS_EXCEPTION;
    80025c86:	4799                	li	a5,6
    80025c88:	f802                	sd	zero,48(sp)
    80025c8a:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:41056 (discriminator 1)
}
    80025c8c:	70e6                	ld	ra,120(sp)
    80025c8e:	7446                	ld	s0,112(sp)
    80025c90:	7542                	ld	a0,48(sp)
    80025c92:	75e2                	ld	a1,56(sp)
    80025c94:	74a6                	ld	s1,104(sp)
    80025c96:	7906                	ld	s2,96(sp)
    80025c98:	2466                	fld	fs0,88(sp)
    80025c9a:	6109                	addi	sp,sp,128
    80025c9c:	8082                	ret
quickjs-nuttx/quickjs.c:41042
    if (JS_ToInt32(ctx, &radix, argv[1])) {
    80025c9e:	01093603          	ld	a2,16(s2)
    80025ca2:	01893683          	ld	a3,24(s2)
    80025ca6:	842a                	mv	s0,a0
    80025ca8:	106c                	addi	a1,sp,44
    80025caa:	8526                	mv	a0,s1
    80025cac:	f0efc0ef          	jal	ra,800223ba <JS_ToInt32>
    80025cb0:	c511                	beqz	a0,80025cbc <js_parseInt+0x50>
quickjs-nuttx/quickjs.c:41043
        JS_FreeCString(ctx, str);
    80025cb2:	85a2                	mv	a1,s0
    80025cb4:	8526                	mv	a0,s1
    80025cb6:	e89e60ef          	jal	ra,8000cb3e <JS_FreeCString>
    80025cba:	b7f1                	j	80025c86 <js_parseInt+0x1a>
quickjs-nuttx/quickjs.c:41046
    if (radix != 0 && (radix < 2 || radix > 36)) {
    80025cbc:	57b2                	lw	a5,44(sp)
    80025cbe:	cb85                	beqz	a5,80025cee <js_parseInt+0x82>
quickjs-nuttx/quickjs.c:41046 (discriminator 1)
    80025cc0:	37f9                	addiw	a5,a5,-2
    80025cc2:	02200713          	li	a4,34
    80025cc6:	02f77463          	bgeu	a4,a5,80025cee <js_parseInt+0x82>
quickjs-nuttx/quickjs.c:41047
        ret = JS_NAN;
    80025cca:	0006e797          	auipc	a5,0x6e
    80025cce:	eb67b407          	fld	fs0,-330(a5) # 80093b80 <_erodata+0xe>
    80025cd2:	12847453          	fmul.d	fs0,fs0,fs0
    80025cd6:	f20007d3          	fmv.d.x	fa5,zero
    80025cda:	491d                	li	s2,7
    80025cdc:	12f47453          	fmul.d	fs0,fs0,fa5
quickjs-nuttx/quickjs.c:41054
    JS_FreeCString(ctx, str);
    80025ce0:	85a2                	mv	a1,s0
    80025ce2:	8526                	mv	a0,s1
    80025ce4:	e5be60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:41055
    return ret;
    80025ce8:	b822                	fsd	fs0,48(sp)
    80025cea:	fc4a                	sd	s2,56(sp)
    80025cec:	b745                	j	80025c8c <js_parseInt+0x20>
quickjs-nuttx/quickjs.c:41050
        p += skip_spaces(p);
    80025cee:	8522                	mv	a0,s0
    80025cf0:	f2fe20ef          	jal	ra,80008c1e <skip_spaces>
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    80025cf4:	56b2                	lw	a3,44(sp)
    80025cf6:	00a405b3          	add	a1,s0,a0
    80025cfa:	4781                	li	a5,0
    80025cfc:	40100713          	li	a4,1025
    80025d00:	4601                	li	a2,0
    80025d02:	8526                	mv	a0,s1
    80025d04:	b95f70ef          	jal	ra,8001d898 <js_atof2>
    80025d08:	e42a                	sd	a0,8(sp)
    80025d0a:	2422                	fld	fs0,8(sp)
    80025d0c:	892e                	mv	s2,a1
    80025d0e:	bfc9                	j	80025ce0 <js_parseInt+0x74>

0000000080025d10 <js_compile_regexp>:
js_compile_regexp():
quickjs-nuttx/quickjs.c:43298
{
    80025d10:	7171                	addi	sp,sp,-176
    80025d12:	f122                	sd	s0,160(sp)
    80025d14:	ec32                	sd	a2,24(sp)
    80025d16:	e43a                	sd	a4,8(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80025d18:	87ba                	mv	a5,a4
js_compile_regexp():
quickjs-nuttx/quickjs.c:43308
    if (!JS_IsUndefined(flags)) {
    80025d1a:	0007061b          	sext.w	a2,a4
quickjs-nuttx/quickjs.c:43298
{
    80025d1e:	f506                	sd	ra,168(sp)
    80025d20:	ed26                	sd	s1,152(sp)
    80025d22:	e94a                	sd	s2,144(sp)
    80025d24:	e82e                	sd	a1,16(sp)
    80025d26:	e036                	sd	a3,0(sp)
quickjs-nuttx/quickjs.c:43308
    if (!JS_IsUndefined(flags)) {
    80025d28:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:43298
{
    80025d2a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:43308
    if (!JS_IsUndefined(flags)) {
    80025d2c:	10e60763          	beq	a2,a4,80025e3a <js_compile_regexp+0x12a>
quickjs-nuttx/quickjs.c:43309
        str = JS_ToCStringLen(ctx, &len, flags);
    80025d30:	8636                	mv	a2,a3
    80025d32:	e8b6                	sd	a3,80(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    80025d34:	102c                	addi	a1,sp,40
    80025d36:	4701                	li	a4,0
    80025d38:	86be                	mv	a3,a5
    80025d3a:	ecbe                	sd	a5,88(sp)
    80025d3c:	940fc0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    80025d40:	85aa                	mv	a1,a0
js_compile_regexp():
quickjs-nuttx/quickjs.c:43310
        if (!str)
    80025d42:	c92d                	beqz	a0,80025db4 <js_compile_regexp+0xa4>
quickjs-nuttx/quickjs.c:43313
        for (i = 0; i < len; i++) {
    80025d44:	7622                	ld	a2,40(sp)
    80025d46:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:43307
    re_flags = 0;
    80025d48:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:43314
            switch(str[i]) {
    80025d4a:	07500513          	li	a0,117
    80025d4e:	07900813          	li	a6,121
    80025d52:	06300893          	li	a7,99
    80025d56:	4345                	li	t1,17
    80025d58:	00045697          	auipc	a3,0x45
    80025d5c:	0ec68693          	addi	a3,a3,236 # 8006ae44 <qjsc_repl+0x5894>
quickjs-nuttx/quickjs.c:43313 (discriminator 1)
        for (i = 0; i < len; i++) {
    80025d60:	04f61e63          	bne	a2,a5,80025dbc <js_compile_regexp+0xac>
quickjs-nuttx/quickjs.c:43346
        JS_FreeCString(ctx, str);
    80025d64:	8522                	mv	a0,s0
    80025d66:	dd9e60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:43349
    str = JS_ToCStringLen2(ctx, &len, pattern, !(re_flags & LRE_FLAG_UTF16));
    80025d6a:	6642                	ld	a2,16(sp)
    80025d6c:	66e2                	ld	a3,24(sp)
    80025d6e:	4044d71b          	sraiw	a4,s1,0x4
    80025d72:	00174713          	xori	a4,a4,1
    80025d76:	8b05                	andi	a4,a4,1
    80025d78:	102c                	addi	a1,sp,40
    80025d7a:	8522                	mv	a0,s0
    80025d7c:	900fc0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    80025d80:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:43350
    if (!str)
    80025d82:	c90d                	beqz	a0,80025db4 <js_compile_regexp+0xa4>
quickjs-nuttx/quickjs.c:43352
    re_bytecode_buf = lre_compile(&re_bytecode_len, error_msg,
    80025d84:	7722                	ld	a4,40(sp)
    80025d86:	87a6                	mv	a5,s1
    80025d88:	86aa                	mv	a3,a0
    80025d8a:	088c                	addi	a1,sp,80
    80025d8c:	8822                	mv	a6,s0
    80025d8e:	04000613          	li	a2,64
    80025d92:	1048                	addi	a0,sp,36
    80025d94:	041290ef          	jal	ra,8004f5d4 <lre_compile>
    80025d98:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:43354
    JS_FreeCString(ctx, str);
    80025d9a:	85ca                	mv	a1,s2
    80025d9c:	8522                	mv	a0,s0
    80025d9e:	da1e60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:43355
    if (!re_bytecode_buf) {
    80025da2:	ecd1                	bnez	s1,80025e3e <js_compile_regexp+0x12e>
quickjs-nuttx/quickjs.c:43356
        JS_ThrowSyntaxError(ctx, "%s", error_msg);
    80025da4:	0890                	addi	a2,sp,80
    80025da6:	00045597          	auipc	a1,0x45
    80025daa:	a6258593          	addi	a1,a1,-1438 # 8006a808 <qjsc_repl+0x5258>
    80025dae:	8522                	mv	a0,s0
    80025db0:	dd2f20ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
quickjs-nuttx/quickjs.c:43357
        return JS_EXCEPTION;
    80025db4:	e082                	sd	zero,64(sp)
    80025db6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:43362
    return ret;
    80025db8:	e4be                	sd	a5,72(sp)
    80025dba:	a891                	j	80025e0e <js_compile_regexp+0xfe>
quickjs-nuttx/quickjs.c:43314
            switch(str[i]) {
    80025dbc:	00f58733          	add	a4,a1,a5
    80025dc0:	00074703          	lbu	a4,0(a4)
    80025dc4:	02e56763          	bltu	a0,a4,80025df2 <js_compile_regexp+0xe2>
    80025dc8:	02e8f763          	bgeu	a7,a4,80025df6 <js_compile_regexp+0xe6>
    80025dcc:	f9c7071b          	addiw	a4,a4,-100
    80025dd0:	0ff77713          	zext.b	a4,a4
    80025dd4:	02e36163          	bltu	t1,a4,80025df6 <js_compile_regexp+0xe6>
    80025dd8:	070a                	slli	a4,a4,0x2
    80025dda:	9736                	add	a4,a4,a3
    80025ddc:	4318                	lw	a4,0(a4)
    80025dde:	9736                	add	a4,a4,a3
    80025de0:	8702                	jr	a4
    80025de2:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:43339
            if ((re_flags & mask) != 0) {
    80025de4:	00e4fe33          	and	t3,s1,a4
    80025de8:	000e1763          	bnez	t3,80025df6 <js_compile_regexp+0xe6>
quickjs-nuttx/quickjs.c:43344 (discriminator 2)
            re_flags |= mask;
    80025dec:	8cd9                	or	s1,s1,a4
quickjs-nuttx/quickjs.c:43313 (discriminator 2)
        for (i = 0; i < len; i++) {
    80025dee:	0785                	addi	a5,a5,1
    80025df0:	bf85                	j	80025d60 <js_compile_regexp+0x50>
quickjs-nuttx/quickjs.c:43314
            switch(str[i]) {
    80025df2:	05070163          	beq	a4,a6,80025e34 <js_compile_regexp+0x124>
quickjs-nuttx/quickjs.c:43341
                JS_FreeCString(ctx, str);
    80025df6:	8522                	mv	a0,s0
    80025df8:	d47e60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:43342
                return JS_ThrowSyntaxError(ctx, "invalid regular expression flags");
    80025dfc:	00045597          	auipc	a1,0x45
    80025e00:	02458593          	addi	a1,a1,36 # 8006ae20 <qjsc_repl+0x5870>
    80025e04:	8522                	mv	a0,s0
    80025e06:	d7cf20ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
    80025e0a:	e0aa                	sd	a0,64(sp)
    80025e0c:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:43363 (discriminator 1)
}
    80025e0e:	70aa                	ld	ra,168(sp)
    80025e10:	740a                	ld	s0,160(sp)
    80025e12:	6506                	ld	a0,64(sp)
    80025e14:	65a6                	ld	a1,72(sp)
    80025e16:	64ea                	ld	s1,152(sp)
    80025e18:	694a                	ld	s2,144(sp)
    80025e1a:	614d                	addi	sp,sp,176
    80025e1c:	8082                	ret
quickjs-nuttx/quickjs.c:43322
                mask = LRE_FLAG_IGNORECASE;
    80025e1e:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:43323
                break;
    80025e20:	b7d1                	j	80025de4 <js_compile_regexp+0xd4>
quickjs-nuttx/quickjs.c:43325
                mask = LRE_FLAG_MULTILINE;
    80025e22:	4711                	li	a4,4
quickjs-nuttx/quickjs.c:43326
                break;
    80025e24:	b7c1                	j	80025de4 <js_compile_regexp+0xd4>
quickjs-nuttx/quickjs.c:43328
                mask = LRE_FLAG_DOTALL;
    80025e26:	4721                	li	a4,8
quickjs-nuttx/quickjs.c:43329
                break;
    80025e28:	bf75                	j	80025de4 <js_compile_regexp+0xd4>
quickjs-nuttx/quickjs.c:43331
                mask = LRE_FLAG_UTF16;
    80025e2a:	4741                	li	a4,16
quickjs-nuttx/quickjs.c:43332
                break;
    80025e2c:	bf65                	j	80025de4 <js_compile_regexp+0xd4>
quickjs-nuttx/quickjs.c:43316
                mask = LRE_FLAG_INDICES;
    80025e2e:	04000713          	li	a4,64
    80025e32:	bf4d                	j	80025de4 <js_compile_regexp+0xd4>
quickjs-nuttx/quickjs.c:43334
                mask = LRE_FLAG_STICKY;
    80025e34:	02000713          	li	a4,32
    80025e38:	b775                	j	80025de4 <js_compile_regexp+0xd4>
quickjs-nuttx/quickjs.c:43307
    re_flags = 0;
    80025e3a:	4481                	li	s1,0
    80025e3c:	b73d                	j	80025d6a <js_compile_regexp+0x5a>
quickjs-nuttx/quickjs.c:43360
    ret = js_new_string8(ctx, re_bytecode_buf, re_bytecode_len);
    80025e3e:	5612                	lw	a2,36(sp)
    80025e40:	85a6                	mv	a1,s1
    80025e42:	8522                	mv	a0,s0
    80025e44:	904fa0ef          	jal	ra,8001ff48 <js_new_string8>
    80025e48:	f82a                	sd	a0,48(sp)
    80025e4a:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:43361
    js_free(ctx, re_bytecode_buf);
    80025e4c:	8522                	mv	a0,s0
    80025e4e:	85a6                	mv	a1,s1
    80025e50:	9a6e50ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:43362
    return ret;
    80025e54:	77c2                	ld	a5,48(sp)
    80025e56:	e0be                	sd	a5,64(sp)
    80025e58:	77e2                	ld	a5,56(sp)
    80025e5a:	bfb9                	j	80025db8 <js_compile_regexp+0xa8>

0000000080025e5c <JS_StringToBigInt>:
JS_StringToBigInt():
quickjs-nuttx/quickjs.c:12076
{
    80025e5c:	7119                	addi	sp,sp,-128
    80025e5e:	e42e                	sd	a1,8(sp)
    80025e60:	ec32                	sd	a2,24(sp)
    80025e62:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:12081
    str = JS_ToCStringLen(ctx, &len, val);
    80025e64:	e4b2                	sd	a2,72(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80025e66:	6622                	ld	a2,8(sp)
JS_StringToBigInt():
quickjs-nuttx/quickjs.c:12076
{
    80025e68:	e82e                	sd	a1,16(sp)
    80025e6a:	e0ae                	sd	a1,64(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80025e6c:	4701                	li	a4,0
    80025e6e:	102c                	addi	a1,sp,40
JS_StringToBigInt():
quickjs-nuttx/quickjs.c:12076
    80025e70:	f4a6                	sd	s1,104(sp)
    80025e72:	f0ca                	sd	s2,96(sp)
    80025e74:	fc86                	sd	ra,120(sp)
    80025e76:	f8a2                	sd	s0,112(sp)
    80025e78:	aca2                	fsd	fs0,88(sp)
    80025e7a:	84aa                	mv	s1,a0
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80025e7c:	800fc0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
JS_StringToBigInt():
quickjs-nuttx/quickjs.c:12082
    JS_FreeValue(ctx, val);
    80025e80:	65c2                	ld	a1,16(sp)
    80025e82:	6662                	ld	a2,24(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80025e84:	892a                	mv	s2,a0
JS_StringToBigInt():
quickjs-nuttx/quickjs.c:12082
    80025e86:	8526                	mv	a0,s1
    80025e88:	917e50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12083
    if (!str)
    80025e8c:	00091e63          	bnez	s2,80025ea8 <JS_StringToBigInt+0x4c>
quickjs-nuttx/quickjs.c:12084
        return JS_EXCEPTION;
    80025e90:	4799                	li	a5,6
    80025e92:	f802                	sd	zero,48(sp)
    80025e94:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:12106 (discriminator 1)
}
    80025e96:	70e6                	ld	ra,120(sp)
    80025e98:	7446                	ld	s0,112(sp)
    80025e9a:	7542                	ld	a0,48(sp)
    80025e9c:	75e2                	ld	a1,56(sp)
    80025e9e:	74a6                	ld	s1,104(sp)
    80025ea0:	7906                	ld	s2,96(sp)
    80025ea2:	2466                	fld	fs0,88(sp)
    80025ea4:	6109                	addi	sp,sp,128
    80025ea6:	8082                	ret
quickjs-nuttx/quickjs.c:12086
    p += skip_spaces(p);
    80025ea8:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:12085
    p = str;
    80025eaa:	f04a                	sd	s2,32(sp)
quickjs-nuttx/quickjs.c:12086
    p += skip_spaces(p);
    80025eac:	d73e20ef          	jal	ra,80008c1e <skip_spaces>
    80025eb0:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:12087
    if ((p - str) == len) {
    80025eb2:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:12086
    p += skip_spaces(p);
    80025eb4:	95aa                	add	a1,a1,a0
    80025eb6:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:12087
    if ((p - str) == len) {
    80025eb8:	41258733          	sub	a4,a1,s2
    80025ebc:	02f71063          	bne	a4,a5,80025edc <JS_StringToBigInt+0x80>
quickjs-nuttx/quickjs.c:12088
        val = JS_NewBigInt64(ctx, 0);
    80025ec0:	4581                	li	a1,0
    80025ec2:	8526                	mv	a0,s1
    80025ec4:	9e6f80ef          	jal	ra,8001e0aa <JS_NewBigInt64>
    80025ec8:	e42a                	sd	a0,8(sp)
    80025eca:	2422                	fld	fs0,8(sp)
    80025ecc:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:12104
    JS_FreeCString(ctx, str);
    80025ece:	85ca                	mv	a1,s2
    80025ed0:	8526                	mv	a0,s1
    80025ed2:	c6de60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:12105
    return val;
    80025ed6:	b822                	fsd	fs0,48(sp)
    80025ed8:	fc22                	sd	s0,56(sp)
    80025eda:	bf75                	j	80025e96 <JS_StringToBigInt+0x3a>
quickjs-nuttx/quickjs.c:12092
        if (is_math_mode(ctx))
    80025edc:	8526                	mv	a0,s1
    80025ede:	e42e                	sd	a1,8(sp)
    80025ee0:	cb5e10ef          	jal	ra,80007b94 <is_math_mode>
    80025ee4:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:12090
        flags = ATOD_INT_ONLY | ATOD_ACCEPT_BIN_OCT | ATOD_TYPE_BIG_INT;
    80025ee6:	08500713          	li	a4,133
quickjs-nuttx/quickjs.c:12092
        if (is_math_mode(ctx))
    80025eea:	c119                	beqz	a0,80025ef0 <JS_StringToBigInt+0x94>
quickjs-nuttx/quickjs.c:12093
            flags |= ATOD_MODE_BIGINT;
    80025eec:	28500713          	li	a4,645
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    80025ef0:	4781                	li	a5,0
    80025ef2:	4681                	li	a3,0
    80025ef4:	1010                	addi	a2,sp,32
    80025ef6:	8526                	mv	a0,s1
    80025ef8:	9a1f70ef          	jal	ra,8001d898 <js_atof2>
    80025efc:	e0aa                	sd	a0,64(sp)
    80025efe:	e82a                	sd	a0,16(sp)
    80025f00:	f2050453          	fmv.d.x	fs0,a0
JS_StringToBigInt():
quickjs-nuttx/quickjs.c:12096
        p += skip_spaces(p);
    80025f04:	7502                	ld	a0,32(sp)
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    80025f06:	842e                	mv	s0,a1
    80025f08:	e4ae                	sd	a1,72(sp)
    80025f0a:	ec2e                	sd	a1,24(sp)
JS_StringToBigInt():
quickjs-nuttx/quickjs.c:12096
        p += skip_spaces(p);
    80025f0c:	d13e20ef          	jal	ra,80008c1e <skip_spaces>
    80025f10:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:12097
        if (!JS_IsException(val)) {
    80025f12:	0004071b          	sext.w	a4,s0
quickjs-nuttx/quickjs.c:12096
        p += skip_spaces(p);
    80025f16:	953e                	add	a0,a0,a5
    80025f18:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:12097
        if (!JS_IsException(val)) {
    80025f1a:	4799                	li	a5,6
    80025f1c:	faf709e3          	beq	a4,a5,80025ece <JS_StringToBigInt+0x72>
quickjs-nuttx/quickjs.c:12098
            if ((p - str) != len) {
    80025f20:	77a2                	ld	a5,40(sp)
    80025f22:	41250533          	sub	a0,a0,s2
    80025f26:	faf504e3          	beq	a0,a5,80025ece <JS_StringToBigInt+0x72>
quickjs-nuttx/quickjs.c:12099
                JS_FreeValue(ctx, val);
    80025f2a:	65c2                	ld	a1,16(sp)
    80025f2c:	6662                	ld	a2,24(sp)
    80025f2e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:12100
                val = JS_NAN;
    80025f30:	441d                	li	s0,7
quickjs-nuttx/quickjs.c:12099
                JS_FreeValue(ctx, val);
    80025f32:	86de50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12100
                val = JS_NAN;
    80025f36:	0006e797          	auipc	a5,0x6e
    80025f3a:	c4a7b407          	fld	fs0,-950(a5) # 80093b80 <_erodata+0xe>
    80025f3e:	12847453          	fmul.d	fs0,fs0,fs0
    80025f42:	f20007d3          	fmv.d.x	fa5,zero
    80025f46:	12f47453          	fmul.d	fs0,fs0,fa5
    80025f4a:	b751                	j	80025ece <JS_StringToBigInt+0x72>

0000000080025f4c <JS_StringToBigIntErr>:
JS_StringToBigIntErr():
quickjs-nuttx/quickjs.c:12109
{
    80025f4c:	715d                	addi	sp,sp,-80
    80025f4e:	e0a2                	sd	s0,64(sp)
    80025f50:	e486                	sd	ra,72(sp)
    80025f52:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12110
    val = JS_StringToBigInt(ctx, val);
    80025f54:	f09ff0ef          	jal	ra,80025e5c <JS_StringToBigInt>
    80025f58:	e42a                	sd	a0,8(sp)
JS_VALUE_IS_NAN():
quickjs-nuttx/quickjs.h:239
    if (v.tag != JS_TAG_FLOAT64)
    80025f5a:	479d                	li	a5,7
JS_StringToBigIntErr():
quickjs-nuttx/quickjs.c:12110
    80025f5c:	6522                	ld	a0,8(sp)
JS_VALUE_IS_NAN():
quickjs-nuttx/quickjs.h:239
    80025f5e:	02f59463          	bne	a1,a5,80025f86 <JS_StringToBigIntErr+0x3a>
quickjs-nuttx/quickjs.h:242
    return (u.u64 & 0x7fffffffffffffff) > 0x7ff0000000000000;
    80025f62:	00151713          	slli	a4,a0,0x1
JS_StringToBigIntErr():
quickjs-nuttx/quickjs.c:12111
    if (JS_VALUE_IS_NAN(val))
    80025f66:	7ff00793          	li	a5,2047
JS_VALUE_IS_NAN():
quickjs-nuttx/quickjs.h:242
    80025f6a:	8305                	srli	a4,a4,0x1
JS_StringToBigIntErr():
quickjs-nuttx/quickjs.c:12111
    80025f6c:	17d2                	slli	a5,a5,0x34
    80025f6e:	00e7fc63          	bgeu	a5,a4,80025f86 <JS_StringToBigIntErr+0x3a>
quickjs-nuttx/quickjs.c:12112
        return JS_ThrowSyntaxError(ctx, "invalid bigint literal");
    80025f72:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:12114
}
    80025f74:	6406                	ld	s0,64(sp)
    80025f76:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs.c:12112
        return JS_ThrowSyntaxError(ctx, "invalid bigint literal");
    80025f78:	00045597          	auipc	a1,0x45
    80025f7c:	f1858593          	addi	a1,a1,-232 # 8006ae90 <qjsc_repl+0x58e0>
quickjs-nuttx/quickjs.c:12114
}
    80025f80:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:12112
        return JS_ThrowSyntaxError(ctx, "invalid bigint literal");
    80025f82:	c00f206f          	j	80018382 <JS_ThrowSyntaxError>
quickjs-nuttx/quickjs.c:12114
}
    80025f86:	60a6                	ld	ra,72(sp)
    80025f88:	6406                	ld	s0,64(sp)
    80025f8a:	6161                	addi	sp,sp,80
    80025f8c:	8082                	ret

0000000080025f8e <JS_ToBigIntFree>:
JS_ToBigIntFree():
quickjs-nuttx/quickjs.c:12119
{
    80025f8e:	711d                	addi	sp,sp,-96
    80025f90:	e8a2                	sd	s0,80(sp)
    80025f92:	e4a6                	sd	s1,72(sp)
    80025f94:	e0ca                	sd	s2,64(sp)
    80025f96:	fc4e                	sd	s3,56(sp)
    80025f98:	f852                	sd	s4,48(sp)
    80025f9a:	f456                	sd	s5,40(sp)
    80025f9c:	e832                	sd	a2,16(sp)
    80025f9e:	ec86                	sd	ra,88(sp)
    80025fa0:	84aa                	mv	s1,a0
    80025fa2:	842e                	mv	s0,a1
    80025fa4:	ec36                	sd	a3,24(sp)
    80025fa6:	8636                	mv	a2,a3
quickjs-nuttx/quickjs.c:12126
    switch(tag) {
    80025fa8:	59d9                	li	s3,-10
    80025faa:	5a65                	li	s4,-7
quickjs-nuttx/quickjs.c:12171
        if (JS_IsException(val))
    80025fac:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:12126
    switch(tag) {
    80025fae:	5afd                	li	s5,-1
quickjs-nuttx/quickjs.c:12125
    tag = JS_VALUE_GET_NORM_TAG(val);
    80025fb0:	0006079b          	sext.w	a5,a2
quickjs-nuttx/quickjs.c:12126
    switch(tag) {
    80025fb4:	11378063          	beq	a5,s3,800260b4 <JS_ToBigIntFree+0x126>
    80025fb8:	06f9e063          	bltu	s3,a5,80026018 <JS_ToBigIntFree+0x8a>
    80025fbc:	470d                	li	a4,3
    80025fbe:	02f76e63          	bltu	a4,a5,80025ffa <JS_ToBigIntFree+0x6c>
    80025fc2:	4705                	li	a4,1
    80025fc4:	00e78863          	beq	a5,a4,80025fd4 <JS_ToBigIntFree+0x46>
quickjs-nuttx/quickjs.c:12130
        if (!is_math_mode(ctx))
    80025fc8:	8526                	mv	a0,s1
    80025fca:	e032                	sd	a2,0(sp)
    80025fcc:	bc9e10ef          	jal	ra,80007b94 <is_math_mode>
    80025fd0:	6602                	ld	a2,0(sp)
    80025fd2:	c51d                	beqz	a0,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12135
        bf_init(ctx->bf_ctx, r);
    80025fd4:	1904b503          	ld	a0,400(s1)
    80025fd8:	85a2                	mv	a1,s0
    80025fda:	395310ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12136
        bf_set_si(r, JS_VALUE_GET_INT(val));
    80025fde:	45c2                	lw	a1,16(sp)
    80025fe0:	8522                	mv	a0,s0
    80025fe2:	45b310ef          	jal	ra,80057c3c <bf_set_si>
quickjs-nuttx/quickjs.c:12186
}
    80025fe6:	60e6                	ld	ra,88(sp)
    80025fe8:	8522                	mv	a0,s0
    80025fea:	6446                	ld	s0,80(sp)
    80025fec:	64a6                	ld	s1,72(sp)
    80025fee:	6906                	ld	s2,64(sp)
    80025ff0:	79e2                	ld	s3,56(sp)
    80025ff2:	7a42                	ld	s4,48(sp)
    80025ff4:	7aa2                	ld	s5,40(sp)
    80025ff6:	6125                	addi	sp,sp,96
    80025ff8:	8082                	ret
quickjs-nuttx/quickjs.c:12126
    switch(tag) {
    80025ffa:	471d                	li	a4,7
    80025ffc:	06e78663          	beq	a5,a4,80026068 <JS_ToBigIntFree+0xda>
quickjs-nuttx/quickjs.c:12181
        JS_FreeValue(ctx, val);
