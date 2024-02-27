    8003e000:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:13419
    if (JS_IsException(op2)) {
    8003e002:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:13418
    op2 = JS_ToNumericFree(ctx, op2);
    8003e006:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:13419
    if (JS_IsException(op2)) {
    8003e008:	01479663          	bne	a5,s4,8003e014 <js_binary_arith_slow+0x138>
quickjs-nuttx/quickjs.c:13420
        JS_FreeValue(ctx, op1);
    8003e00c:	7582                	ld	a1,32(sp)
    8003e00e:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:13503
            JS_FreeValue(ctx, op2);
    8003e010:	8526                	mv	a0,s1
    8003e012:	bf59                	j	8003dfa8 <js_binary_arith_slow+0xcc>
quickjs-nuttx/quickjs.c:13426
    if (tag1 == JS_TAG_INT && tag2 == JS_TAG_INT) {
    8003e014:	1a099f63          	bnez	s3,8003e1d2 <js_binary_arith_slow+0x2f6>
quickjs-nuttx/quickjs.c:13426 (discriminator 1)
    8003e018:	28079a63          	bnez	a5,8003e2ac <js_binary_arith_slow+0x3d0>
quickjs-nuttx/quickjs.c:13431
        switch(op) {
    8003e01c:	0a000793          	li	a5,160
quickjs-nuttx/quickjs.c:13429
        v1 = JS_VALUE_GET_INT(op1);
    8003e020:	5b82                	lw	s7,32(sp)
quickjs-nuttx/quickjs.c:13430
        v2 = JS_VALUE_GET_INT(op2);
    8003e022:	5a42                	lw	s4,48(sp)
quickjs-nuttx/quickjs.c:13431
        switch(op) {
    8003e024:	0327e963          	bltu	a5,s2,8003e056 <js_binary_arith_slow+0x17a>
    8003e028:	09a00793          	li	a5,154
    8003e02c:	0327f963          	bgeu	a5,s2,8003e05e <js_binary_arith_slow+0x182>
    8003e030:	f659079b          	addiw	a5,s2,-155
    8003e034:	0007869b          	sext.w	a3,a5
    8003e038:	4715                	li	a4,5
    8003e03a:	02d76263          	bltu	a4,a3,8003e05e <js_binary_arith_slow+0x182>
    8003e03e:	02079713          	slli	a4,a5,0x20
    8003e042:	01e75793          	srli	a5,a4,0x1e
    8003e046:	0002f717          	auipc	a4,0x2f
    8003e04a:	07270713          	addi	a4,a4,114 # 8006d0b8 <qjsc_repl+0x7b08>
    8003e04e:	97ba                	add	a5,a5,a4
    8003e050:	439c                	lw	a5,0(a5)
    8003e052:	97ba                	add	a5,a5,a4
    8003e054:	8782                	jr	a5
    8003e056:	0b400793          	li	a5,180
    8003e05a:	08f90f63          	beq	s2,a5,8003e0f8 <js_binary_arith_slow+0x21c>
quickjs-nuttx/quickjs.c:13482
            abort();
    8003e05e:	325240ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:13433
            v = (int64_t)v1 - (int64_t)v2;
    8003e062:	414b89b3          	sub	s3,s7,s4
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003e066:	0009879b          	sext.w	a5,s3
    8003e06a:	14f99c63          	bne	s3,a5,8003e1c2 <js_binary_arith_slow+0x2e6>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003e06e:	ca82                	sw	zero,84(sp)
    8003e070:	c8be                	sw	a5,80(sp)
    8003e072:	6746                	ld	a4,80(sp)
    8003e074:	e0ba                	sd	a4,64(sp)
    8003e076:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003e078:	c0be                	sw	a5,64(sp)
    8003e07a:	2786                	fld	fa5,64(sp)
js_binary_arith_slow():
quickjs-nuttx/quickjs.c:13484
        sp[-2] = JS_NewInt64(ctx, v);
    8003e07c:	fee43423          	sd	a4,-24(s0)
    8003e080:	fef43027          	fsd	fa5,-32(s0)
quickjs-nuttx/quickjs.c:13541
    return 0;
    8003e084:	4501                	li	a0,0
    8003e086:	a8b1                	j	8003e0e2 <js_binary_arith_slow+0x206>
quickjs-nuttx/quickjs.c:13437
            if (is_math_mode(ctx) &&
    8003e088:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:13436
            v = (int64_t)v1 * (int64_t)v2;
    8003e08a:	034b89b3          	mul	s3,s7,s4
quickjs-nuttx/quickjs.c:13437
            if (is_math_mode(ctx) &&
    8003e08e:	b07c90ef          	jal	ra,80007b94 <is_math_mode>
    8003e092:	c909                	beqz	a0,8003e0a4 <js_binary_arith_slow+0x1c8>
quickjs-nuttx/quickjs.c:13438 (discriminator 1)
                (v < -MAX_SAFE_INTEGER || v > MAX_SAFE_INTEGER))
    8003e094:	57fd                	li	a5,-1
    8003e096:	83ad                	srli	a5,a5,0xb
quickjs-nuttx/quickjs.c:13437 (discriminator 1)
            if (is_math_mode(ctx) &&
    8003e098:	bff00713          	li	a4,-1025
quickjs-nuttx/quickjs.c:13438 (discriminator 1)
                (v < -MAX_SAFE_INTEGER || v > MAX_SAFE_INTEGER))
    8003e09c:	97ce                	add	a5,a5,s3
quickjs-nuttx/quickjs.c:13437 (discriminator 1)
            if (is_math_mode(ctx) &&
    8003e09e:	8329                	srli	a4,a4,0xa
    8003e0a0:	16f76c63          	bltu	a4,a5,8003e218 <js_binary_arith_slow+0x33c>
quickjs-nuttx/quickjs.c:13440
            if (v == 0 && (v1 | v2) < 0) {
    8003e0a4:	fc0991e3          	bnez	s3,8003e066 <js_binary_arith_slow+0x18a>
quickjs-nuttx/quickjs.c:13440 (discriminator 1)
    8003e0a8:	014bea33          	or	s4,s7,s4
    8003e0ac:	4781                	li	a5,0
    8003e0ae:	fc0a50e3          	bgez	s4,8003e06e <js_binary_arith_slow+0x192>
quickjs-nuttx/quickjs.c:13441
                sp[-2] = __JS_NewFloat64(ctx, -0.0);
    8003e0b2:	00056797          	auipc	a5,0x56
    8003e0b6:	b2e7b787          	fld	fa5,-1234(a5) # 80093be0 <_erodata+0x6e>
    8003e0ba:	fef43027          	fsd	fa5,-32(s0)
quickjs-nuttx/quickjs.c:13539
        sp[-2] = __JS_NewFloat64(ctx, dr);
    8003e0be:	479d                	li	a5,7
    8003e0c0:	bf15                	j	8003dff4 <js_binary_arith_slow+0x118>
quickjs-nuttx/quickjs.c:13446
            if (is_math_mode(ctx))
    8003e0c2:	8526                	mv	a0,s1
    8003e0c4:	ad1c90ef          	jal	ra,80007b94 <is_math_mode>
    8003e0c8:	14051863          	bnez	a0,8003e218 <js_binary_arith_slow+0x33c>
quickjs-nuttx/quickjs.c:13448
            sp[-2] = __JS_NewFloat64(ctx, (double)v1 / (double)v2);
    8003e0cc:	d20b87d3          	fcvt.d.w	fa5,s7
    8003e0d0:	d20a0753          	fcvt.d.w	fa4,s4
    8003e0d4:	479d                	li	a5,7
    8003e0d6:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
    8003e0da:	fef43027          	fsd	fa5,-32(s0)
quickjs-nuttx/quickjs.c:13475
                sp[-2] = JS_NewFloat64(ctx, js_pow(v1, v2));
    8003e0de:	fef43423          	sd	a5,-24(s0)
quickjs-nuttx/quickjs.c:13546
}
    8003e0e2:	70aa                	ld	ra,168(sp)
    8003e0e4:	740a                	ld	s0,160(sp)
    8003e0e6:	64ea                	ld	s1,152(sp)
    8003e0e8:	694a                	ld	s2,144(sp)
    8003e0ea:	69aa                	ld	s3,136(sp)
    8003e0ec:	6a0a                	ld	s4,128(sp)
    8003e0ee:	7ae6                	ld	s5,120(sp)
    8003e0f0:	7b46                	ld	s6,112(sp)
    8003e0f2:	7ba6                	ld	s7,104(sp)
    8003e0f4:	614d                	addi	sp,sp,176
    8003e0f6:	8082                	ret
quickjs-nuttx/quickjs.c:13452
            if (unlikely(v2 == 0)) {
    8003e0f8:	020a1163          	bnez	s4,8003e11a <js_binary_arith_slow+0x23e>
quickjs-nuttx/quickjs.c:13453
                throw_bf_exception(ctx, BF_ST_DIVIDE_ZERO);
    8003e0fc:	4589                	li	a1,2
    8003e0fe:	8526                	mv	a0,s1
    8003e100:	ac6e00ef          	jal	ra,8001e3c6 <throw_bf_exception>
quickjs-nuttx/quickjs.c:13543
    sp[-2] = JS_UNDEFINED;
    8003e104:	478d                	li	a5,3
    8003e106:	fe043023          	sd	zero,-32(s0)
    8003e10a:	fef43423          	sd	a5,-24(s0)
quickjs-nuttx/quickjs.c:13544
    sp[-1] = JS_UNDEFINED;
    8003e10e:	fe043823          	sd	zero,-16(s0)
    8003e112:	fef43c23          	sd	a5,-8(s0)
quickjs-nuttx/quickjs.c:13545
    return -1;
    8003e116:	557d                	li	a0,-1
    8003e118:	b7e9                	j	8003e0e2 <js_binary_arith_slow+0x206>
quickjs-nuttx/quickjs.c:13456
            v = (int64_t)v1 % (int64_t)v2;
    8003e11a:	034be9b3          	rem	s3,s7,s4
quickjs-nuttx/quickjs.c:13457
            if (v < 0) {
    8003e11e:	f409d4e3          	bgez	s3,8003e066 <js_binary_arith_slow+0x18a>
quickjs-nuttx/quickjs.c:13458
                if (v2 < 0)
    8003e122:	000a5563          	bgez	s4,8003e12c <js_binary_arith_slow+0x250>
quickjs-nuttx/quickjs.c:13459
                    v -= v2;
    8003e126:	414989b3          	sub	s3,s3,s4
    8003e12a:	bf35                	j	8003e066 <js_binary_arith_slow+0x18a>
quickjs-nuttx/quickjs.c:13461
                    v += v2;
    8003e12c:	99d2                	add	s3,s3,s4
    8003e12e:	bf25                	j	8003e066 <js_binary_arith_slow+0x18a>
quickjs-nuttx/quickjs.c:13466
            if (v1 < 0 || v2 <= 0) {
    8003e130:	000bc463          	bltz	s7,8003e138 <js_binary_arith_slow+0x25c>
quickjs-nuttx/quickjs.c:13466 (discriminator 1)
    8003e134:	05404063          	bgtz	s4,8003e174 <js_binary_arith_slow+0x298>
quickjs-nuttx/quickjs.c:13467
                sp[-2] = JS_NewFloat64(ctx, fmod(v1, v2));
    8003e138:	d20a05d3          	fcvt.d.w	fa1,s4
    8003e13c:	d20b8553          	fcvt.d.w	fa0,s7
    8003e140:	e9bc20ef          	jal	ra,80000fda <fmod>
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8003e144:	c20516d3          	fcvt.w.d	a3,fa0,rtz
js_binary_arith_slow():
quickjs-nuttx/quickjs.c:13467
    8003e148:	e20507d3          	fmv.x.d	a5,fa0
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003e14c:	d20687d3          	fcvt.d.w	fa5,a3
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8003e150:	0006871b          	sext.w	a4,a3
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003e154:	e2078653          	fmv.x.d	a2,fa5
    8003e158:	00f61963          	bne	a2,a5,8003e16a <js_binary_arith_slow+0x28e>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8003e15c:	ca82                	sw	zero,84(sp)
    8003e15e:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    8003e160:	c8ba                	sw	a4,80(sp)
    8003e162:	27c6                	fld	fa5,80(sp)
js_binary_arith_slow():
quickjs-nuttx/quickjs.c:13467
    8003e164:	fef43027          	fsd	fa5,-32(s0)
    8003e168:	b571                	j	8003dff4 <js_binary_arith_slow+0x118>
quickjs-nuttx/quickjs.h:230
    return v;
    8003e16a:	0007871b          	sext.w	a4,a5
    8003e16e:	a8aa                	fsd	fa0,80(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003e170:	479d                	li	a5,7
    8003e172:	b7fd                	j	8003e160 <js_binary_arith_slow+0x284>
js_binary_arith_slow():
quickjs-nuttx/quickjs.c:13470
                v = (int64_t)v1 % (int64_t)v2;
    8003e174:	034be9b3          	rem	s3,s7,s4
quickjs-nuttx/quickjs.c:13472
            break;
    8003e178:	b5fd                	j	8003e066 <js_binary_arith_slow+0x18a>
quickjs-nuttx/quickjs.c:13474
            if (!is_math_mode(ctx)) {
    8003e17a:	8526                	mv	a0,s1
    8003e17c:	a19c90ef          	jal	ra,80007b94 <is_math_mode>
    8003e180:	ed41                	bnez	a0,8003e218 <js_binary_arith_slow+0x33c>
quickjs-nuttx/quickjs.c:13475
                sp[-2] = JS_NewFloat64(ctx, js_pow(v1, v2));
    8003e182:	d20a05d3          	fcvt.d.w	fa1,s4
    8003e186:	d20b8553          	fcvt.d.w	fa0,s7
    8003e18a:	ec2a                	sd	a0,24(sp)
    8003e18c:	9b5ca0ef          	jal	ra,80008b40 <js_pow>
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8003e190:	c2051653          	fcvt.w.d	a2,fa0,rtz
js_binary_arith_slow():
quickjs-nuttx/quickjs.c:13475
    8003e194:	e20507d3          	fmv.x.d	a5,fa0
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003e198:	6562                	ld	a0,24(sp)
    8003e19a:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8003e19e:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003e1a2:	e2078653          	fmv.x.d	a2,fa5
    8003e1a6:	00c79963          	bne	a5,a2,8003e1b8 <js_binary_arith_slow+0x2dc>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8003e1aa:	ca82                	sw	zero,84(sp)
    8003e1ac:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    8003e1ae:	c8ba                	sw	a4,80(sp)
    8003e1b0:	27c6                	fld	fa5,80(sp)
js_binary_arith_slow():
quickjs-nuttx/quickjs.c:13475
    8003e1b2:	fef43027          	fsd	fa5,-32(s0)
    8003e1b6:	b725                	j	8003e0de <js_binary_arith_slow+0x202>
quickjs-nuttx/quickjs.h:230
    return v;
    8003e1b8:	0007871b          	sext.w	a4,a5
    8003e1bc:	a8aa                	fsd	fa0,80(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003e1be:	479d                	li	a5,7
    8003e1c0:	b7fd                	j	8003e1ae <js_binary_arith_slow+0x2d2>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003e1c2:	d229f7d3          	fcvt.d.l	fa5,s3
    8003e1c6:	471d                	li	a4,7
    8003e1c8:	e20787d3          	fmv.x.d	a5,fa5
js_binary_arith_slow():
quickjs-nuttx/quickjs.h:230
    return v;
    8003e1cc:	a0be                	fsd	fa5,64(sp)
    8003e1ce:	2781                	sext.w	a5,a5
    8003e1d0:	b565                	j	8003e078 <js_binary_arith_slow+0x19c>
quickjs-nuttx/quickjs.c:13487
    if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003e1d2:	5755                	li	a4,-11
    8003e1d4:	00e98463          	beq	s3,a4,8003e1dc <js_binary_arith_slow+0x300>
quickjs-nuttx/quickjs.c:13487 (discriminator 1)
    8003e1d8:	02e79163          	bne	a5,a4,8003e1fa <js_binary_arith_slow+0x31e>
quickjs-nuttx/quickjs.c:13488
        if (ctx->rt->bigdecimal_ops.binary_arith(ctx, op, sp - 2, op1, op2))
    8003e1dc:	6c9c                	ld	a5,24(s1)
    8003e1de:	2907b883          	ld	a7,656(a5)
    8003e1e2:	77c2                	ld	a5,48(sp)
    8003e1e4:	7862                	ld	a6,56(sp)
    8003e1e6:	7682                	ld	a3,32(sp)
    8003e1e8:	7722                	ld	a4,40(sp)
    8003e1ea:	fe040613          	addi	a2,s0,-32
    8003e1ee:	85ca                	mv	a1,s2
    8003e1f0:	8526                	mv	a0,s1
    8003e1f2:	9882                	jalr	a7
    8003e1f4:	e80508e3          	beqz	a0,8003e084 <js_binary_arith_slow+0x1a8>
    8003e1f8:	b731                	j	8003e104 <js_binary_arith_slow+0x228>
quickjs-nuttx/quickjs.c:13490
    } else if (tag1 == JS_TAG_BIG_FLOAT || tag2 == JS_TAG_BIG_FLOAT) {
    8003e1fa:	575d                	li	a4,-9
    8003e1fc:	00e98463          	beq	s3,a4,8003e204 <js_binary_arith_slow+0x328>
quickjs-nuttx/quickjs.c:13490 (discriminator 1)
    8003e200:	00e79663          	bne	a5,a4,8003e20c <js_binary_arith_slow+0x330>
quickjs-nuttx/quickjs.c:13491
        if (ctx->rt->bigfloat_ops.binary_arith(ctx, op, sp - 2, op1, op2))
    8003e204:	6c9c                	ld	a5,24(s1)
    8003e206:	2587b883          	ld	a7,600(a5)
    8003e20a:	bfe1                	j	8003e1e2 <js_binary_arith_slow+0x306>
quickjs-nuttx/quickjs.c:13495
    if (tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) {
    8003e20c:	5759                	li	a4,-10
    8003e20e:	00e98563          	beq	s3,a4,8003e218 <js_binary_arith_slow+0x33c>
quickjs-nuttx/quickjs.c:13495 (discriminator 1)
    8003e212:	5759                	li	a4,-10
    8003e214:	00e79a63          	bne	a5,a4,8003e228 <js_binary_arith_slow+0x34c>
quickjs-nuttx/quickjs.c:13497
        if (ctx->rt->bigint_ops.binary_arith(ctx, op, sp - 2, op1, op2))
    8003e218:	6c9c                	ld	a5,24(s1)
    8003e21a:	7682                	ld	a3,32(sp)
    8003e21c:	8856                	mv	a6,s5
    8003e21e:	2207b883          	ld	a7,544(a5)
    8003e222:	875a                	mv	a4,s6
    8003e224:	77c2                	ld	a5,48(sp)
    8003e226:	b7d1                	j	8003e1ea <js_binary_arith_slow+0x30e>
quickjs-nuttx/quickjs.c:13502
        if (JS_ToFloat64Free(ctx, &d1, op1)) {
    8003e228:	7602                	ld	a2,32(sp)
    8003e22a:	76a2                	ld	a3,40(sp)
    8003e22c:	008c                	addi	a1,sp,64
    8003e22e:	8526                	mv	a0,s1
    8003e230:	c66e40ef          	jal	ra,80022696 <JS_ToFloat64Free>
    8003e234:	c501                	beqz	a0,8003e23c <js_binary_arith_slow+0x360>
quickjs-nuttx/quickjs.c:13503
            JS_FreeValue(ctx, op2);
    8003e236:	75c2                	ld	a1,48(sp)
    8003e238:	7662                	ld	a2,56(sp)
    8003e23a:	bbd9                	j	8003e010 <js_binary_arith_slow+0x134>
quickjs-nuttx/quickjs.c:13506
        if (JS_ToFloat64Free(ctx, &d2, op2))
    8003e23c:	7642                	ld	a2,48(sp)
    8003e23e:	76e2                	ld	a3,56(sp)
    8003e240:	088c                	addi	a1,sp,80
    8003e242:	8526                	mv	a0,s1
    8003e244:	c52e40ef          	jal	ra,80022696 <JS_ToFloat64Free>
    8003e248:	ce0500e3          	beqz	a0,8003df28 <js_binary_arith_slow+0x4c>
    8003e24c:	bd65                	j	8003e104 <js_binary_arith_slow+0x228>
quickjs-nuttx/quickjs.c:13511
        switch(op) {
    8003e24e:	0b400793          	li	a5,180
    8003e252:	e0f916e3          	bne	s2,a5,8003e05e <js_binary_arith_slow+0x182>
quickjs-nuttx/quickjs.c:13526
            d2 = fabs(d2);
    8003e256:	25c6                	fld	fa1,80(sp)
quickjs-nuttx/quickjs.c:13527
            dr = fmod(d1, d2);
    8003e258:	2506                	fld	fa0,64(sp)
quickjs-nuttx/quickjs.c:13526
            d2 = fabs(d2);
    8003e25a:	22b5a5d3          	fabs.d	fa1,fa1
    8003e25e:	a8ae                	fsd	fa1,80(sp)
quickjs-nuttx/quickjs.c:13527
            dr = fmod(d1, d2);
    8003e260:	d7bc20ef          	jal	ra,80000fda <fmod>
quickjs-nuttx/quickjs.c:13529
            if (dr < 0)
    8003e264:	f20007d3          	fmv.d.x	fa5,zero
    8003e268:	a2f517d3          	flt.d	a5,fa0,fa5
    8003e26c:	cb89                	beqz	a5,8003e27e <js_binary_arith_slow+0x3a2>
quickjs-nuttx/quickjs.c:13530
                dr += d2;
    8003e26e:	27c6                	fld	fa5,80(sp)
    8003e270:	02f57553          	fadd.d	fa0,fa0,fa5
    8003e274:	a029                	j	8003e27e <js_binary_arith_slow+0x3a2>
quickjs-nuttx/quickjs.c:13513
            dr = d1 - d2;
    8003e276:	2506                	fld	fa0,64(sp)
    8003e278:	27c6                	fld	fa5,80(sp)
    8003e27a:	0af57553          	fsub.d	fa0,fa0,fa5
quickjs-nuttx/quickjs.c:13539
        sp[-2] = __JS_NewFloat64(ctx, dr);
    8003e27e:	fea43027          	fsd	fa0,-32(s0)
    8003e282:	bd35                	j	8003e0be <js_binary_arith_slow+0x1e2>
quickjs-nuttx/quickjs.c:13516
            dr = d1 * d2;
    8003e284:	2506                	fld	fa0,64(sp)
    8003e286:	27c6                	fld	fa5,80(sp)
    8003e288:	12f57553          	fmul.d	fa0,fa0,fa5
quickjs-nuttx/quickjs.c:13517
            break;
    8003e28c:	bfcd                	j	8003e27e <js_binary_arith_slow+0x3a2>
quickjs-nuttx/quickjs.c:13519
            dr = d1 / d2;
    8003e28e:	2506                	fld	fa0,64(sp)
    8003e290:	27c6                	fld	fa5,80(sp)
    8003e292:	1af57553          	fdiv.d	fa0,fa0,fa5
quickjs-nuttx/quickjs.c:13520
            break;
    8003e296:	b7e5                	j	8003e27e <js_binary_arith_slow+0x3a2>
quickjs-nuttx/quickjs.c:13522
            dr = fmod(d1, d2);
    8003e298:	25c6                	fld	fa1,80(sp)
    8003e29a:	2506                	fld	fa0,64(sp)
    8003e29c:	d3fc20ef          	jal	ra,80000fda <fmod>
quickjs-nuttx/quickjs.c:13523
            break;
    8003e2a0:	bff9                	j	8003e27e <js_binary_arith_slow+0x3a2>
quickjs-nuttx/quickjs.c:13534
            dr = js_pow(d1, d2);
    8003e2a2:	25c6                	fld	fa1,80(sp)
    8003e2a4:	2506                	fld	fa0,64(sp)
    8003e2a6:	89bca0ef          	jal	ra,80008b40 <js_pow>
quickjs-nuttx/quickjs.c:13535
            break;
    8003e2aa:	bfd1                	j	8003e27e <js_binary_arith_slow+0x3a2>
quickjs-nuttx/quickjs.c:13487
    if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003e2ac:	5755                	li	a4,-11
    8003e2ae:	f2e787e3          	beq	a5,a4,8003e1dc <js_binary_arith_slow+0x300>
quickjs-nuttx/quickjs.c:13490
    } else if (tag1 == JS_TAG_BIG_FLOAT || tag2 == JS_TAG_BIG_FLOAT) {
    8003e2b2:	575d                	li	a4,-9
    8003e2b4:	f4e79fe3          	bne	a5,a4,8003e212 <js_binary_arith_slow+0x336>
    8003e2b8:	b7b1                	j	8003e204 <js_binary_arith_slow+0x328>
quickjs-nuttx/quickjs.c:13395
         (tag2 != JS_TAG_NULL && tag2 != JS_TAG_UNDEFINED)) ||
    8003e2ba:	577d                	li	a4,-1
    8003e2bc:	cce796e3          	bne	a5,a4,8003df88 <js_binary_arith_slow+0xac>
    8003e2c0:	b9ed                	j	8003dfba <js_binary_arith_slow+0xde>

000000008003e2c2 <js_relational_slow>:
js_relational_slow():
quickjs-nuttx/quickjs.c:13860
{
    8003e2c2:	7135                	addi	sp,sp,-160
    8003e2c4:	e14a                	sd	s2,128(sp)
    8003e2c6:	fcce                	sd	s3,120(sp)
    8003e2c8:	f8d2                	sd	s4,112(sp)
    8003e2ca:	ed06                	sd	ra,152(sp)
    8003e2cc:	e922                	sd	s0,144(sp)
    8003e2ce:	e526                	sd	s1,136(sp)
    8003e2d0:	f4d6                	sd	s5,104(sp)
    8003e2d2:	f0da                	sd	s6,96(sp)
quickjs-nuttx/quickjs.c:13865
    op1 = sp[-2];
    8003e2d4:	fe05b783          	ld	a5,-32(a1)
quickjs-nuttx/quickjs.c:13866
    op2 = sp[-1];
    8003e2d8:	ff05b703          	ld	a4,-16(a1)
quickjs-nuttx/quickjs.c:13871
    if ((tag1 == JS_TAG_OBJECT &&
    8003e2dc:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:13865
    op1 = sp[-2];
    8003e2de:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:13866
    op2 = sp[-1];
    8003e2e0:	f83a                	sd	a4,48(sp)
quickjs-nuttx/quickjs.c:13865
    op1 = sp[-2];
    8003e2e2:	fe85b783          	ld	a5,-24(a1)
quickjs-nuttx/quickjs.c:13866
    op2 = sp[-1];
    8003e2e6:	ff85b703          	ld	a4,-8(a1)
quickjs-nuttx/quickjs.c:13860
{
    8003e2ea:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:13865
    op1 = sp[-2];
    8003e2ec:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:13866
    op2 = sp[-1];
    8003e2ee:	fc3a                	sd	a4,56(sp)
quickjs-nuttx/quickjs.c:13867
    tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003e2f0:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:13860
{
    8003e2f2:	89ae                	mv	s3,a1
    8003e2f4:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:13868
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003e2f6:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:13871
    if ((tag1 == JS_TAG_OBJECT &&
    8003e2f8:	04d79463          	bne	a5,a3,8003e340 <js_relational_slow+0x7e>
quickjs-nuttx/quickjs.c:13871 (discriminator 1)
    8003e2fc:	3779                	addiw	a4,a4,-2
    8003e2fe:	4785                	li	a5,1
    8003e300:	04e7e663          	bltu	a5,a4,8003e34c <js_relational_slow+0x8a>
quickjs-nuttx/quickjs.c:13890
    op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NUMBER);
    8003e304:	7582                	ld	a1,32(sp)
    8003e306:	7622                	ld	a2,40(sp)
    8003e308:	4685                	li	a3,1
    8003e30a:	854a                	mv	a0,s2
    8003e30c:	fd0e10ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    8003e310:	f02a                	sd	a0,32(sp)
    8003e312:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13891
    if (JS_IsException(op1)) {
    8003e314:	00058b1b          	sext.w	s6,a1
    8003e318:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:13890
    op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NUMBER);
    8003e31a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:13891
    if (JS_IsException(op1)) {
    8003e31c:	088b1363          	bne	s6,s0,8003e3a2 <js_relational_slow+0xe0>
quickjs-nuttx/quickjs.c:13892
        JS_FreeValue(ctx, op2);
    8003e320:	75c2                	ld	a1,48(sp)
    8003e322:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:13897
        JS_FreeValue(ctx, op1);
    8003e324:	854a                	mv	a0,s2
    8003e326:	c78cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14015
    sp[-2] = JS_UNDEFINED;
    8003e32a:	478d                	li	a5,3
    8003e32c:	fe09b023          	sd	zero,-32(s3)
    8003e330:	fef9b423          	sd	a5,-24(s3)
quickjs-nuttx/quickjs.c:14016
    sp[-1] = JS_UNDEFINED;
    8003e334:	fe09b823          	sd	zero,-16(s3)
    8003e338:	fef9bc23          	sd	a5,-8(s3)
quickjs-nuttx/quickjs.c:14017
    return -1;
    8003e33c:	557d                	li	a0,-1
    8003e33e:	a881                	j	8003e38e <js_relational_slow+0xcc>
quickjs-nuttx/quickjs.c:13872
         (tag2 != JS_TAG_NULL && tag2 != JS_TAG_UNDEFINED)) ||
    8003e340:	fcd712e3          	bne	a4,a3,8003e304 <js_relational_slow+0x42>
quickjs-nuttx/quickjs.c:13873
        (tag2 == JS_TAG_OBJECT &&
    8003e344:	37f9                	addiw	a5,a5,-2
    8003e346:	4705                	li	a4,1
    8003e348:	faf77ee3          	bgeu	a4,a5,8003e304 <js_relational_slow+0x42>
quickjs-nuttx/quickjs.c:13876
        res = js_call_binary_op_fallback(ctx, &ret, op1, op2, op,
    8003e34c:	4785                	li	a5,1
    8003e34e:	e03e                	sd	a5,0(sp)
    8003e350:	7742                	ld	a4,48(sp)
    8003e352:	77e2                	ld	a5,56(sp)
    8003e354:	7602                	ld	a2,32(sp)
    8003e356:	76a2                	ld	a3,40(sp)
    8003e358:	4881                	li	a7,0
    8003e35a:	8852                	mv	a6,s4
    8003e35c:	088c                	addi	a1,sp,80
    8003e35e:	854a                	mv	a0,s2
    8003e360:	bd6ff0ef          	jal	ra,8003d736 <js_call_binary_op_fallback>
    8003e364:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13878
        if (res != 0) {
    8003e366:	dd59                	beqz	a0,8003e304 <js_relational_slow+0x42>
quickjs-nuttx/quickjs.c:13879
            JS_FreeValue(ctx, op1);
    8003e368:	7582                	ld	a1,32(sp)
    8003e36a:	7622                	ld	a2,40(sp)
    8003e36c:	854a                	mv	a0,s2
    8003e36e:	c30cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13880
            JS_FreeValue(ctx, op2);
    8003e372:	75c2                	ld	a1,48(sp)
    8003e374:	7662                	ld	a2,56(sp)
    8003e376:	854a                	mv	a0,s2
    8003e378:	c26cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13881
            if (res < 0) {
    8003e37c:	fa0447e3          	bltz	s0,8003e32a <js_relational_slow+0x68>
quickjs-nuttx/quickjs.c:13884
                sp[-2] = ret;
    8003e380:	67c6                	ld	a5,80(sp)
    8003e382:	fef9b023          	sd	a5,-32(s3)
    8003e386:	67e6                	ld	a5,88(sp)
quickjs-nuttx/quickjs.c:14012
    sp[-2] = JS_NewBool(ctx, res);
    8003e388:	fef9b423          	sd	a5,-24(s3)
quickjs-nuttx/quickjs.c:14013
    return 0;
    8003e38c:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:14018
}
    8003e38e:	60ea                	ld	ra,152(sp)
    8003e390:	644a                	ld	s0,144(sp)
    8003e392:	64aa                	ld	s1,136(sp)
    8003e394:	690a                	ld	s2,128(sp)
    8003e396:	79e6                	ld	s3,120(sp)
    8003e398:	7a46                	ld	s4,112(sp)
    8003e39a:	7aa6                	ld	s5,104(sp)
    8003e39c:	7b06                	ld	s6,96(sp)
    8003e39e:	610d                	addi	sp,sp,160
    8003e3a0:	8082                	ret
quickjs-nuttx/quickjs.c:13895
    op2 = JS_ToPrimitiveFree(ctx, op2, HINT_NUMBER);
    8003e3a2:	75c2                	ld	a1,48(sp)
    8003e3a4:	7662                	ld	a2,56(sp)
    8003e3a6:	4685                	li	a3,1
    8003e3a8:	854a                	mv	a0,s2
    8003e3aa:	f32e10ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    8003e3ae:	f82a                	sd	a0,48(sp)
    8003e3b0:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:13896
    if (JS_IsException(op2)) {
    8003e3b2:	00058a9b          	sext.w	s5,a1
quickjs-nuttx/quickjs.c:13895
    op2 = JS_ToPrimitiveFree(ctx, op2, HINT_NUMBER);
    8003e3b6:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:13896
    if (JS_IsException(op2)) {
    8003e3b8:	008a9563          	bne	s5,s0,8003e3c2 <js_relational_slow+0x100>
quickjs-nuttx/quickjs.c:13897
        JS_FreeValue(ctx, op1);
    8003e3bc:	7582                	ld	a1,32(sp)
    8003e3be:	7622                	ld	a2,40(sp)
    8003e3c0:	b795                	j	8003e324 <js_relational_slow+0x62>
quickjs-nuttx/quickjs.c:13903
    if (tag1 == JS_TAG_STRING && tag2 == JS_TAG_STRING) {
    8003e3c2:	56e5                	li	a3,-7
quickjs-nuttx/quickjs.c:13901
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003e3c4:	8756                	mv	a4,s5
quickjs-nuttx/quickjs.c:13903
    if (tag1 == JS_TAG_STRING && tag2 == JS_TAG_STRING) {
    8003e3c6:	06db1163          	bne	s6,a3,8003e428 <js_relational_slow+0x166>
quickjs-nuttx/quickjs.c:13930 (discriminator 1)
        if (((tag1 == JS_TAG_BIG_INT && tag2 == JS_TAG_STRING) ||
    8003e3ca:	5759                	li	a4,-10
quickjs-nuttx/quickjs.c:13903 (discriminator 1)
    if (tag1 == JS_TAG_STRING && tag2 == JS_TAG_STRING) {
    8003e3cc:	076a9863          	bne	s5,s6,8003e43c <js_relational_slow+0x17a>
quickjs-nuttx/quickjs.c:13907
        res = js_string_compare(ctx, p1, p2);
    8003e3d0:	85aa                	mv	a1,a0
    8003e3d2:	7502                	ld	a0,32(sp)
    8003e3d4:	d70cc0ef          	jal	ra,8000a944 <js_string_compare.constprop.0>
quickjs-nuttx/quickjs.c:13908
        switch(op) {
    8003e3d8:	0a500793          	li	a5,165
quickjs-nuttx/quickjs.c:13913
            res = (res <= 0);
    8003e3dc:	00152413          	slti	s0,a0,1
quickjs-nuttx/quickjs.c:13908
        switch(op) {
    8003e3e0:	00fa0e63          	beq	s4,a5,8003e3fc <js_relational_slow+0x13a>
    8003e3e4:	0a600793          	li	a5,166
quickjs-nuttx/quickjs.c:13916
            res = (res > 0);
    8003e3e8:	00a02433          	sgtz	s0,a0
quickjs-nuttx/quickjs.c:13908
        switch(op) {
    8003e3ec:	00fa0863          	beq	s4,a5,8003e3fc <js_relational_slow+0x13a>
    8003e3f0:	0a400793          	li	a5,164
    8003e3f4:	02fa1763          	bne	s4,a5,8003e422 <js_relational_slow+0x160>
quickjs-nuttx/quickjs.c:13920
            res = (res >= 0);
    8003e3f8:	01f5541b          	srliw	s0,a0,0x1f
quickjs-nuttx/quickjs.c:13923
        JS_FreeValue(ctx, op1);
    8003e3fc:	7582                	ld	a1,32(sp)
    8003e3fe:	7622                	ld	a2,40(sp)
    8003e400:	854a                	mv	a0,s2
    8003e402:	b9ccd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13924
        JS_FreeValue(ctx, op2);
    8003e406:	75c2                	ld	a1,48(sp)
    8003e408:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:13943
                    JS_FreeValue(ctx, op2);
    8003e40a:	854a                	mv	a0,s2
    8003e40c:	b92cd0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8003e410:	00803533          	snez	a0,s0
    8003e414:	ca82                	sw	zero,84(sp)
    8003e416:	c8aa                	sw	a0,80(sp)
    8003e418:	67c6                	ld	a5,80(sp)
js_relational_slow():
quickjs-nuttx/quickjs.c:14012
    sp[-2] = JS_NewBool(ctx, res);
    8003e41a:	fef9b023          	sd	a5,-32(s3)
    8003e41e:	4785                	li	a5,1
    8003e420:	b7a5                	j	8003e388 <js_relational_slow+0xc6>
quickjs-nuttx/quickjs.c:13920
            res = (res >= 0);
    8003e422:	fff54513          	not	a0,a0
    8003e426:	bfc9                	j	8003e3f8 <js_relational_slow+0x136>
quickjs-nuttx/quickjs.c:13925
    } else if ((tag1 <= JS_TAG_NULL || tag1 == JS_TAG_FLOAT64) &&
    8003e428:	4689                	li	a3,2
    8003e42a:	0766fd63          	bgeu	a3,s6,8003e4a4 <js_relational_slow+0x1e2>
quickjs-nuttx/quickjs.c:13925 (discriminator 2)
    8003e42e:	461d                	li	a2,7
    8003e430:	14cb0863          	beq	s6,a2,8003e580 <js_relational_slow+0x2be>
quickjs-nuttx/quickjs.c:13930
        if (((tag1 == JS_TAG_BIG_INT && tag2 == JS_TAG_STRING) ||
    8003e434:	5759                	li	a4,-10
    8003e436:	06eb1d63          	bne	s6,a4,8003e4b0 <js_relational_slow+0x1ee>
quickjs-nuttx/quickjs.c:13930 (discriminator 1)
    8003e43a:	5765                	li	a4,-7
quickjs-nuttx/quickjs.c:13930 (discriminator 3)
    8003e43c:	06ea9a63          	bne	s5,a4,8003e4b0 <js_relational_slow+0x1ee>
quickjs-nuttx/quickjs.c:13932 (discriminator 1)
            !is_math_mode(ctx)) {
    8003e440:	854a                	mv	a0,s2
    8003e442:	ec3e                	sd	a5,24(sp)
    8003e444:	f50c90ef          	jal	ra,80007b94 <is_math_mode>
    8003e448:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13931 (discriminator 1)
             (tag2 == JS_TAG_BIG_INT && tag1 == JS_TAG_STRING)) &&
    8003e44a:	e13d                	bnez	a0,8003e4b0 <js_relational_slow+0x1ee>
quickjs-nuttx/quickjs.c:13933
            if (tag1 == JS_TAG_STRING) {
    8003e44c:	5765                	li	a4,-7
    8003e44e:	67e2                	ld	a5,24(sp)
    8003e450:	02eb1063          	bne	s6,a4,8003e470 <js_relational_slow+0x1ae>
quickjs-nuttx/quickjs.c:13934
                op1 = JS_StringToBigInt(ctx, op1);
    8003e454:	7582                	ld	a1,32(sp)
    8003e456:	7622                	ld	a2,40(sp)
    8003e458:	854a                	mv	a0,s2
    8003e45a:	a03e70ef          	jal	ra,80025e5c <JS_StringToBigInt>
    8003e45e:	f02a                	sd	a0,32(sp)
    8003e460:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13935
                if (JS_VALUE_GET_TAG(op1) != JS_TAG_BIG_INT)
    8003e462:	0005869b          	sext.w	a3,a1
    8003e466:	5759                	li	a4,-10
    8003e468:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:13934
                op1 = JS_StringToBigInt(ctx, op1);
    8003e46a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:13935
                if (JS_VALUE_GET_TAG(op1) != JS_TAG_BIG_INT)
    8003e46c:	02e69263          	bne	a3,a4,8003e490 <js_relational_slow+0x1ce>
quickjs-nuttx/quickjs.c:13938
            if (tag2 == JS_TAG_STRING) {
    8003e470:	5765                	li	a4,-7
    8003e472:	06ea9863          	bne	s5,a4,8003e4e2 <js_relational_slow+0x220>
quickjs-nuttx/quickjs.c:13939
                op2 = JS_StringToBigInt(ctx, op2);
    8003e476:	75c2                	ld	a1,48(sp)
    8003e478:	7662                	ld	a2,56(sp)
    8003e47a:	854a                	mv	a0,s2
    8003e47c:	9e1e70ef          	jal	ra,80025e5c <JS_StringToBigInt>
    8003e480:	f82a                	sd	a0,48(sp)
    8003e482:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:13940
                if (JS_VALUE_GET_TAG(op2) != JS_TAG_BIG_INT) {
    8003e484:	0005869b          	sext.w	a3,a1
    8003e488:	5759                	li	a4,-10
quickjs-nuttx/quickjs.c:13939
                op2 = JS_StringToBigInt(ctx, op2);
    8003e48a:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:13940
                if (JS_VALUE_GET_TAG(op2) != JS_TAG_BIG_INT) {
    8003e48c:	04e68b63          	beq	a3,a4,8003e4e2 <js_relational_slow+0x220>
quickjs-nuttx/quickjs.c:13942
                    JS_FreeValue(ctx, op1);
    8003e490:	7582                	ld	a1,32(sp)
    8003e492:	8626                	mv	a2,s1
    8003e494:	854a                	mv	a0,s2
    8003e496:	ec3e                	sd	a5,24(sp)
    8003e498:	b06cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13943
                    JS_FreeValue(ctx, op2);
    8003e49c:	67e2                	ld	a5,24(sp)
    8003e49e:	75c2                	ld	a1,48(sp)
    8003e4a0:	863e                	mv	a2,a5
    8003e4a2:	b7a5                	j	8003e40a <js_relational_slow+0x148>
quickjs-nuttx/quickjs.c:13925 (discriminator 3)
    } else if ((tag1 <= JS_TAG_NULL || tag1 == JS_TAG_FLOAT64) &&
    8003e4a4:	0f56e363          	bltu	a3,s5,8003e58a <js_relational_slow+0x2c8>
quickjs-nuttx/quickjs.c:13987
                d1 = JS_VALUE_GET_INT(op1);
    8003e4a8:	5782                	lw	a5,32(sp)
    8003e4aa:	d2078753          	fcvt.d.w	fa4,a5
    8003e4ae:	a849                	j	8003e540 <js_relational_slow+0x27e>
quickjs-nuttx/quickjs.c:13949
            op1 = JS_ToNumericFree(ctx, op1);
    8003e4b0:	7622                	ld	a2,40(sp)
    8003e4b2:	7582                	ld	a1,32(sp)
    8003e4b4:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:13950
            if (JS_IsException(op1)) {
    8003e4b6:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:13949
            op1 = JS_ToNumericFree(ctx, op1);
    8003e4b8:	a3de60ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003e4bc:	f02a                	sd	a0,32(sp)
    8003e4be:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13950
            if (JS_IsException(op1)) {
    8003e4c0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:13949
            op1 = JS_ToNumericFree(ctx, op1);
    8003e4c4:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:13951
                JS_FreeValue(ctx, op2);
    8003e4c6:	7662                	ld	a2,56(sp)
    8003e4c8:	75c2                	ld	a1,48(sp)
    8003e4ca:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:13950
            if (JS_IsException(op1)) {
    8003e4cc:	e4878de3          	beq	a5,s0,8003e326 <js_relational_slow+0x64>
quickjs-nuttx/quickjs.c:13954
            op2 = JS_ToNumericFree(ctx, op2);
    8003e4d0:	a25e60ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003e4d4:	f82a                	sd	a0,48(sp)
    8003e4d6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:13955
            if (JS_IsException(op2)) {
    8003e4d8:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:13954
            op2 = JS_ToNumericFree(ctx, op2);
    8003e4dc:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:13955
            if (JS_IsException(op2)) {
    8003e4de:	ec870fe3          	beq	a4,s0,8003e3bc <js_relational_slow+0xfa>
quickjs-nuttx/quickjs.c:13961
        tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003e4e2:	0004869b          	sext.w	a3,s1
quickjs-nuttx/quickjs.c:13965
        if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003e4e6:	5655                	li	a2,-11
    8003e4e8:	00c68663          	beq	a3,a2,8003e4f4 <js_relational_slow+0x232>
quickjs-nuttx/quickjs.c:13962 (discriminator 1)
        tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003e4ec:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.c:13965 (discriminator 1)
        if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003e4f0:	02c71063          	bne	a4,a2,8003e510 <js_relational_slow+0x24e>
quickjs-nuttx/quickjs.c:13966
            res = ctx->rt->bigdecimal_ops.compare(ctx, op, op1, op2);
    8003e4f4:	01893703          	ld	a4,24(s2)
    8003e4f8:	29873803          	ld	a6,664(a4)
quickjs-nuttx/quickjs.c:13976
            res = ctx->rt->bigint_ops.compare(ctx, op, op1, op2);
    8003e4fc:	7742                	ld	a4,48(sp)
    8003e4fe:	7602                	ld	a2,32(sp)
    8003e500:	86a6                	mv	a3,s1
    8003e502:	85d2                	mv	a1,s4
    8003e504:	854a                	mv	a0,s2
    8003e506:	9802                	jalr	a6
    8003e508:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13977
            if (res < 0)
    8003e50a:	f00553e3          	bgez	a0,8003e410 <js_relational_slow+0x14e>
    8003e50e:	bd31                	j	8003e32a <js_relational_slow+0x68>
quickjs-nuttx/quickjs.c:13969
        } else if (tag1 == JS_TAG_BIG_FLOAT || tag2 == JS_TAG_BIG_FLOAT) {
    8003e510:	565d                	li	a2,-9
    8003e512:	00c68463          	beq	a3,a2,8003e51a <js_relational_slow+0x258>
quickjs-nuttx/quickjs.c:13969 (discriminator 1)
    8003e516:	00c71763          	bne	a4,a2,8003e524 <js_relational_slow+0x262>
quickjs-nuttx/quickjs.c:13970
            res = ctx->rt->bigfloat_ops.compare(ctx, op, op1, op2);
    8003e51a:	01893703          	ld	a4,24(s2)
    8003e51e:	26073803          	ld	a6,608(a4)
    8003e522:	bfe9                	j	8003e4fc <js_relational_slow+0x23a>
quickjs-nuttx/quickjs.c:13975
        if (tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) {
    8003e524:	5659                	li	a2,-10
    8003e526:	00c68463          	beq	a3,a2,8003e52e <js_relational_slow+0x26c>
quickjs-nuttx/quickjs.c:13975 (discriminator 1)
    8003e52a:	00c71763          	bne	a4,a2,8003e538 <js_relational_slow+0x276>
quickjs-nuttx/quickjs.c:13976
            res = ctx->rt->bigint_ops.compare(ctx, op, op1, op2);
    8003e52e:	01893703          	ld	a4,24(s2)
    8003e532:	22873803          	ld	a6,552(a4)
    8003e536:	b7d9                	j	8003e4fc <js_relational_slow+0x23a>
quickjs-nuttx/quickjs.c:13984
            if (tag1 == JS_TAG_FLOAT64) {
    8003e538:	479d                	li	a5,7
    8003e53a:	f6f697e3          	bne	a3,a5,8003e4a8 <js_relational_slow+0x1e6>
quickjs-nuttx/quickjs.c:13985
                d1 = JS_VALUE_GET_FLOAT64(op1);
    8003e53e:	3702                	fld	fa4,32(sp)
quickjs-nuttx/quickjs.c:13989
            if (tag2 == JS_TAG_FLOAT64) {
    8003e540:	479d                	li	a5,7
    8003e542:	02f71263          	bne	a4,a5,8003e566 <js_relational_slow+0x2a4>
quickjs-nuttx/quickjs.c:13990
                d2 = JS_VALUE_GET_FLOAT64(op2);
    8003e546:	37c2                	fld	fa5,48(sp)
quickjs-nuttx/quickjs.c:13994
            switch(op) {
    8003e548:	0a500793          	li	a5,165
    8003e54c:	02fa0163          	beq	s4,a5,8003e56e <js_relational_slow+0x2ac>
    8003e550:	0a600793          	li	a5,166
    8003e554:	02fa0063          	beq	s4,a5,8003e574 <js_relational_slow+0x2b2>
    8003e558:	0a400793          	li	a5,164
    8003e55c:	00fa1f63          	bne	s4,a5,8003e57a <js_relational_slow+0x2b8>
quickjs-nuttx/quickjs.c:13996
                res = (d1 < d2); /* if NaN return false */
    8003e560:	a2f71453          	flt.d	s0,fa4,fa5
quickjs-nuttx/quickjs.c:13997
                break;
    8003e564:	b575                	j	8003e410 <js_relational_slow+0x14e>
quickjs-nuttx/quickjs.c:13992
                d2 = JS_VALUE_GET_INT(op2);
    8003e566:	57c2                	lw	a5,48(sp)
    8003e568:	d20787d3          	fcvt.d.w	fa5,a5
    8003e56c:	bff1                	j	8003e548 <js_relational_slow+0x286>
quickjs-nuttx/quickjs.c:13999
                res = (d1 <= d2); /* if NaN return false */
    8003e56e:	a2f70453          	fle.d	s0,fa4,fa5
quickjs-nuttx/quickjs.c:14000
                break;
    8003e572:	bd79                	j	8003e410 <js_relational_slow+0x14e>
quickjs-nuttx/quickjs.c:14002
                res = (d1 > d2); /* if NaN return false */
    8003e574:	a2e79453          	flt.d	s0,fa5,fa4
quickjs-nuttx/quickjs.c:14003
                break;
    8003e578:	bd61                	j	8003e410 <js_relational_slow+0x14e>
quickjs-nuttx/quickjs.c:14006
                res = (d1 >= d2); /* if NaN return false */
    8003e57a:	a2e78453          	fle.d	s0,fa5,fa4
quickjs-nuttx/quickjs.c:14007
                break;
    8003e57e:	bd49                	j	8003e410 <js_relational_slow+0x14e>
quickjs-nuttx/quickjs.c:13925
    } else if ((tag1 <= JS_TAG_NULL || tag1 == JS_TAG_FLOAT64) &&
    8003e580:	fb56ffe3          	bgeu	a3,s5,8003e53e <js_relational_slow+0x27c>
quickjs-nuttx/quickjs.c:13926
               (tag2 <= JS_TAG_NULL || tag2 == JS_TAG_FLOAT64)) {
    8003e584:	eb6a98e3          	bne	s5,s6,8003e434 <js_relational_slow+0x172>
    8003e588:	bf5d                	j	8003e53e <js_relational_slow+0x27c>
    8003e58a:	469d                	li	a3,7
    8003e58c:	eada94e3          	bne	s5,a3,8003e434 <js_relational_slow+0x172>
    8003e590:	bf21                	j	8003e4a8 <js_relational_slow+0x1e6>

000000008003e592 <js_eq_slow>:
js_eq_slow():
quickjs-nuttx/quickjs.c:14032
{
    8003e592:	7111                	addi	sp,sp,-256
    8003e594:	f9a2                	sd	s0,240(sp)
    8003e596:	edce                	sd	s3,216(sp)
    8003e598:	e9d2                	sd	s4,208(sp)
    8003e59a:	e5d6                	sd	s5,200(sp)
    8003e59c:	e1da                	sd	s6,192(sp)
    8003e59e:	f962                	sd	s8,176(sp)
    8003e5a0:	f566                	sd	s9,168(sp)
    8003e5a2:	fd86                	sd	ra,248(sp)
    8003e5a4:	f5a6                	sd	s1,232(sp)
    8003e5a6:	f1ca                	sd	s2,224(sp)
    8003e5a8:	fd5e                	sd	s7,184(sp)
    8003e5aa:	f16a                	sd	s10,160(sp)
    8003e5ac:	ed6e                	sd	s11,152(sp)
quickjs-nuttx/quickjs.c:14040
    op1 = sp[-2];
    8003e5ae:	fe05b783          	ld	a5,-32(a1)
    8003e5b2:	fe85b483          	ld	s1,-24(a1)
quickjs-nuttx/quickjs.c:14041
    op2 = sp[-1];
    8003e5b6:	ff85b903          	ld	s2,-8(a1)
quickjs-nuttx/quickjs.c:14040
    op1 = sp[-2];
    8003e5ba:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:14041
    op2 = sp[-1];
    8003e5bc:	ff05b783          	ld	a5,-16(a1)
quickjs-nuttx/quickjs.c:14032
{
    8003e5c0:	89aa                	mv	s3,a0
    8003e5c2:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:14041
    op2 = sp[-1];
    8003e5c4:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:14149
        res = js_call_binary_op_fallback(ctx, &ret, op1, op2,
    8003e5c6:	0aa6079b          	addiw	a5,a2,170
quickjs-nuttx/quickjs.c:14032
{
    8003e5ca:	8ab2                	mv	s5,a2
quickjs-nuttx/quickjs.c:14040
    op1 = sp[-2];
    8003e5cc:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:14041
    op2 = sp[-1];
    8003e5ce:	fc4a                	sd	s2,56(sp)
quickjs-nuttx/quickjs.c:14101
    } else if ((tag1 == JS_TAG_NULL && tag2 == JS_TAG_UNDEFINED) ||
    8003e5d0:	4b09                	li	s6,2
quickjs-nuttx/quickjs.c:14143
    } else if ((tag1 == JS_TAG_OBJECT &&
    8003e5d2:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:14149
        res = js_call_binary_op_fallback(ctx, &ret, op1, op2,
    8003e5d4:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:14164
        if (JS_IsException(op1)) {
    8003e5d6:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:14146
                (tag_is_number(tag1) || tag1 == JS_TAG_STRING || tag1 == JS_TAG_SYMBOL))) {
    8003e5d8:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:14043
    tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003e5da:	00048d1b          	sext.w	s10,s1
quickjs-nuttx/quickjs.c:14045
    if (tag_is_number(tag1) && tag_is_number(tag2)) {
    8003e5de:	856a                	mv	a0,s10
    8003e5e0:	fd1ca0ef          	jal	ra,800095b0 <tag_is_number>
quickjs-nuttx/quickjs.c:14044
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003e5e4:	00090b9b          	sext.w	s7,s2
quickjs-nuttx/quickjs.c:14045
    if (tag_is_number(tag1) && tag_is_number(tag2)) {
    8003e5e8:	8daa                	mv	s11,a0
    8003e5ea:	cd55                	beqz	a0,8003e6a6 <js_eq_slow+0x114>
quickjs-nuttx/quickjs.c:14045 (discriminator 1)
    8003e5ec:	855e                	mv	a0,s7
    8003e5ee:	fc3ca0ef          	jal	ra,800095b0 <tag_is_number>
    8003e5f2:	c955                	beqz	a0,8003e6a6 <js_eq_slow+0x114>
quickjs-nuttx/quickjs.c:14046
        if (tag1 == JS_TAG_INT && tag2 == JS_TAG_INT) {
    8003e5f4:	020d1463          	bnez	s10,8003e61c <js_eq_slow+0x8a>
quickjs-nuttx/quickjs.c:14046 (discriminator 1)
    8003e5f8:	2a0b9463          	bnez	s7,8003e8a0 <js_eq_slow+0x30e>
quickjs-nuttx/quickjs.c:14047
            res = JS_VALUE_GET_INT(op1) == JS_VALUE_GET_INT(op2);
    8003e5fc:	5442                	lw	s0,48(sp)
    8003e5fe:	5502                	lw	a0,32(sp)
    8003e600:	8d01                	sub	a0,a0,s0
    8003e602:	00153413          	seqz	s0,a0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8003e606:	41540433          	sub	s0,s0,s5
    8003e60a:	00803433          	snez	s0,s0
    8003e60e:	c302                	sw	zero,132(sp)
    8003e610:	c122                	sw	s0,128(sp)
    8003e612:	678a                	ld	a5,128(sp)
js_eq_slow():
quickjs-nuttx/quickjs.c:14188
    sp[-2] = JS_NewBool(ctx, res ^ is_neq);
    8003e614:	fefa3023          	sd	a5,-32(s4)
    8003e618:	4785                	li	a5,1
    8003e61a:	a8e1                	j	8003e6f2 <js_eq_slow+0x160>
quickjs-nuttx/quickjs.c:14048
        } else if ((tag1 == JS_TAG_FLOAT64 &&
    8003e61c:	479d                	li	a5,7
    8003e61e:	00fd1e63          	bne	s10,a5,8003e63a <js_eq_slow+0xa8>
quickjs-nuttx/quickjs.c:14048 (discriminator 1)
    8003e622:	000b8463          	beqz	s7,8003e62a <js_eq_slow+0x98>
quickjs-nuttx/quickjs.c:14049
                    (tag2 == JS_TAG_INT || tag2 == JS_TAG_FLOAT64)) ||
    8003e626:	05ab9063          	bne	s7,s10,8003e666 <js_eq_slow+0xd4>
quickjs-nuttx/quickjs.c:14058
            if (tag2 == JS_TAG_FLOAT64) {
    8003e62a:	479d                	li	a5,7
quickjs-nuttx/quickjs.c:14054
                d1 = JS_VALUE_GET_FLOAT64(op1);
    8003e62c:	3782                	fld	fa5,32(sp)
quickjs-nuttx/quickjs.c:14058
            if (tag2 == JS_TAG_FLOAT64) {
    8003e62e:	02fb9563          	bne	s7,a5,8003e658 <js_eq_slow+0xc6>
quickjs-nuttx/quickjs.c:14059
                d2 = JS_VALUE_GET_FLOAT64(op2);
    8003e632:	3742                	fld	fa4,48(sp)
quickjs-nuttx/quickjs.c:14063
            res = (d1 == d2);
    8003e634:	a2f72453          	feq.d	s0,fa4,fa5
quickjs-nuttx/quickjs.c:14051
                    (tag1 == JS_TAG_INT || tag1 == JS_TAG_FLOAT64))) {
    8003e638:	b7f9                	j	8003e606 <js_eq_slow+0x74>
quickjs-nuttx/quickjs.c:14049 (discriminator 1)
                    (tag2 == JS_TAG_INT || tag2 == JS_TAG_FLOAT64)) ||
    8003e63a:	02fb9363          	bne	s7,a5,8003e660 <js_eq_slow+0xce>
quickjs-nuttx/quickjs.c:14066
        if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003e63e:	57d5                	li	a5,-11
    8003e640:	02fd0663          	beq	s10,a5,8003e66c <js_eq_slow+0xda>
quickjs-nuttx/quickjs.c:14070
        } else if (tag1 == JS_TAG_BIG_FLOAT || tag2 == JS_TAG_BIG_FLOAT) {
    8003e644:	565d                	li	a2,-9
quickjs-nuttx/quickjs.c:14067
            res = ctx->rt->bigdecimal_ops.compare(ctx, OP_eq, op1, op2);
    8003e646:	0189b783          	ld	a5,24(s3)
quickjs-nuttx/quickjs.c:14070
        } else if (tag1 == JS_TAG_BIG_FLOAT || tag2 == JS_TAG_BIG_FLOAT) {
    8003e64a:	00cd0463          	beq	s10,a2,8003e652 <js_eq_slow+0xc0>
quickjs-nuttx/quickjs.c:14070 (discriminator 1)
    8003e64e:	04cb9963          	bne	s7,a2,8003e6a0 <js_eq_slow+0x10e>
quickjs-nuttx/quickjs.c:14071
            res = ctx->rt->bigfloat_ops.compare(ctx, OP_eq, op1, op2);
    8003e652:	2607b803          	ld	a6,608(a5)
    8003e656:	a839                	j	8003e674 <js_eq_slow+0xe2>
quickjs-nuttx/quickjs.c:14061
                d2 = JS_VALUE_GET_INT(op2);
    8003e658:	57c2                	lw	a5,48(sp)
    8003e65a:	d2078753          	fcvt.d.w	fa4,a5
    8003e65e:	bfd9                	j	8003e634 <js_eq_slow+0xa2>
quickjs-nuttx/quickjs.c:14066
        if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003e660:	57d5                	li	a5,-11
    8003e662:	00fd0563          	beq	s10,a5,8003e66c <js_eq_slow+0xda>
quickjs-nuttx/quickjs.c:14066 (discriminator 1)
    8003e666:	57d5                	li	a5,-11
    8003e668:	fcfb9ee3          	bne	s7,a5,8003e644 <js_eq_slow+0xb2>
quickjs-nuttx/quickjs.c:14067
            res = ctx->rt->bigdecimal_ops.compare(ctx, OP_eq, op1, op2);
    8003e66c:	0189b783          	ld	a5,24(s3)
    8003e670:	2987b803          	ld	a6,664(a5)
quickjs-nuttx/quickjs.c:14077
            res = ctx->rt->bigint_ops.compare(ctx, OP_eq, op1, op2);
    8003e674:	7742                	ld	a4,48(sp)
    8003e676:	7602                	ld	a2,32(sp)
    8003e678:	87ca                	mv	a5,s2
    8003e67a:	86a6                	mv	a3,s1
    8003e67c:	0aa00593          	li	a1,170
    8003e680:	854e                	mv	a0,s3
    8003e682:	9802                	jalr	a6
    8003e684:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:14078
            if (res < 0)
    8003e686:	f80550e3          	bgez	a0,8003e606 <js_eq_slow+0x74>
quickjs-nuttx/quickjs.c:14191
    sp[-2] = JS_UNDEFINED;
    8003e68a:	478d                	li	a5,3
    8003e68c:	fe0a3023          	sd	zero,-32(s4)
    8003e690:	fefa3423          	sd	a5,-24(s4)
quickjs-nuttx/quickjs.c:14192
    sp[-1] = JS_UNDEFINED;
    8003e694:	fe0a3823          	sd	zero,-16(s4)
    8003e698:	fefa3c23          	sd	a5,-8(s4)
quickjs-nuttx/quickjs.c:14193
    return -1;
    8003e69c:	557d                	li	a0,-1
    8003e69e:	a8a9                	j	8003e6f8 <js_eq_slow+0x166>
quickjs-nuttx/quickjs.c:14077
            res = ctx->rt->bigint_ops.compare(ctx, OP_eq, op1, op2);
    8003e6a0:	2287b803          	ld	a6,552(a5)
    8003e6a4:	bfc1                	j	8003e674 <js_eq_slow+0xe2>
quickjs-nuttx/quickjs.c:14081
    } else if (tag1 == tag2) {
    8003e6a6:	097d1263          	bne	s10,s7,8003e72a <js_eq_slow+0x198>
quickjs-nuttx/quickjs.c:14083
        if (tag1 == JS_TAG_OBJECT) {
    8003e6aa:	57fd                	li	a5,-1
    8003e6ac:	06fd1563          	bne	s10,a5,8003e716 <js_eq_slow+0x184>
quickjs-nuttx/quickjs.c:14085
            res = js_call_binary_op_fallback(ctx, &ret, op1, op2,
    8003e6b0:	7742                	ld	a4,48(sp)
    8003e6b2:	7602                	ld	a2,32(sp)
    8003e6b4:	4789                	li	a5,2
    8003e6b6:	e03e                	sd	a5,0(sp)
    8003e6b8:	4881                	li	a7,0
    8003e6ba:	0aaa881b          	addiw	a6,s5,170
    8003e6be:	87ca                	mv	a5,s2
    8003e6c0:	86a6                	mv	a3,s1
    8003e6c2:	008c                	addi	a1,sp,64
    8003e6c4:	854e                	mv	a0,s3
    8003e6c6:	f426                	sd	s1,40(sp)
    8003e6c8:	fc4a                	sd	s2,56(sp)
    8003e6ca:	86cff0ef          	jal	ra,8003d736 <js_call_binary_op_fallback>
    8003e6ce:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:14088
            if (res != 0) {
    8003e6d0:	c139                	beqz	a0,8003e716 <js_eq_slow+0x184>
quickjs-nuttx/quickjs.c:14089
                JS_FreeValue(ctx, op1);
    8003e6d2:	7582                	ld	a1,32(sp)
    8003e6d4:	7622                	ld	a2,40(sp)
    8003e6d6:	854e                	mv	a0,s3
    8003e6d8:	8c6cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14090
                JS_FreeValue(ctx, op2);
    8003e6dc:	75c2                	ld	a1,48(sp)
    8003e6de:	7662                	ld	a2,56(sp)
    8003e6e0:	854e                	mv	a0,s3
    8003e6e2:	8bccd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14091
                if (res < 0) {
    8003e6e6:	fa0442e3          	bltz	s0,8003e68a <js_eq_slow+0xf8>
quickjs-nuttx/quickjs.c:14094
                    sp[-2] = ret;
    8003e6ea:	6786                	ld	a5,64(sp)
    8003e6ec:	fefa3023          	sd	a5,-32(s4)
    8003e6f0:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:14188
    sp[-2] = JS_NewBool(ctx, res ^ is_neq);
    8003e6f2:	fefa3423          	sd	a5,-24(s4)
quickjs-nuttx/quickjs.c:14189
    return 0;
    8003e6f6:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:14194
}
    8003e6f8:	70ee                	ld	ra,248(sp)
    8003e6fa:	744e                	ld	s0,240(sp)
    8003e6fc:	74ae                	ld	s1,232(sp)
    8003e6fe:	790e                	ld	s2,224(sp)
    8003e700:	69ee                	ld	s3,216(sp)
    8003e702:	6a4e                	ld	s4,208(sp)
    8003e704:	6aae                	ld	s5,200(sp)
    8003e706:	6b0e                	ld	s6,192(sp)
    8003e708:	7bea                	ld	s7,184(sp)
    8003e70a:	7c4a                	ld	s8,176(sp)
    8003e70c:	7caa                	ld	s9,168(sp)
    8003e70e:	7d0a                	ld	s10,160(sp)
    8003e710:	6dea                	ld	s11,152(sp)
    8003e712:	6111                	addi	sp,sp,256
    8003e714:	8082                	ret
quickjs-nuttx/quickjs.c:14100
        res = js_strict_eq2(ctx, op1, op2, JS_EQ_STRICT);
    8003e716:	76c2                	ld	a3,48(sp)
    8003e718:	7582                	ld	a1,32(sp)
    8003e71a:	4781                	li	a5,0
    8003e71c:	874a                	mv	a4,s2
js_strict_eq():
quickjs-nuttx/quickjs.c:14456
    return js_strict_eq2(ctx, op1, op2, JS_EQ_STRICT);
    8003e71e:	8626                	mv	a2,s1
    8003e720:	854e                	mv	a0,s3
    8003e722:	8a2cd0ef          	jal	ra,8000b7c4 <js_strict_eq2>
    8003e726:	842a                	mv	s0,a0
js_eq_slow():
quickjs-nuttx/quickjs.c:14136
        res = js_strict_eq(ctx, op1, op2);
    8003e728:	bdf9                	j	8003e606 <js_eq_slow+0x74>
quickjs-nuttx/quickjs.c:14101
    } else if ((tag1 == JS_TAG_NULL && tag2 == JS_TAG_UNDEFINED) ||
    8003e72a:	016d1563          	bne	s10,s6,8003e734 <js_eq_slow+0x1a2>
quickjs-nuttx/quickjs.c:14101 (discriminator 1)
    8003e72e:	478d                	li	a5,3
    8003e730:	00fb8763          	beq	s7,a5,8003e73e <js_eq_slow+0x1ac>
quickjs-nuttx/quickjs.c:14101 (discriminator 3)
    8003e734:	016b9763          	bne	s7,s6,8003e742 <js_eq_slow+0x1b0>
quickjs-nuttx/quickjs.c:14102
               (tag2 == JS_TAG_NULL && tag1 == JS_TAG_UNDEFINED)) {
    8003e738:	478d                	li	a5,3
    8003e73a:	18fd1863          	bne	s10,a5,8003e8ca <js_eq_slow+0x338>
quickjs-nuttx/quickjs.c:14103
        res = TRUE;
    8003e73e:	4405                	li	s0,1
    8003e740:	b5d9                	j	8003e606 <js_eq_slow+0x74>
quickjs-nuttx/quickjs.c:14104
    } else if ((tag1 == JS_TAG_STRING && tag_is_number(tag2)) ||
    8003e742:	57e5                	li	a5,-7
    8003e744:	06fd1963          	bne	s10,a5,8003e7b6 <js_eq_slow+0x224>
quickjs-nuttx/quickjs.c:14104 (discriminator 1)
    8003e748:	855e                	mv	a0,s7
    8003e74a:	e67ca0ef          	jal	ra,800095b0 <tag_is_number>
    8003e74e:	16050063          	beqz	a0,8003e8ae <js_eq_slow+0x31c>
quickjs-nuttx/quickjs.c:14107
        if ((tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) &&
    8003e752:	57d9                	li	a5,-10
    8003e754:	06fb9963          	bne	s7,a5,8003e7c6 <js_eq_slow+0x234>
quickjs-nuttx/quickjs.c:14043
    tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003e758:	5d65                	li	s10,-7
quickjs-nuttx/quickjs.c:14108 (discriminator 3)
            !is_math_mode(ctx)) {
    8003e75a:	854e                	mv	a0,s3
    8003e75c:	c38c90ef          	jal	ra,80007b94 <is_math_mode>
    8003e760:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:14107 (discriminator 3)
        if ((tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) &&
    8003e762:	e135                	bnez	a0,8003e7c6 <js_eq_slow+0x234>
quickjs-nuttx/quickjs.c:14109
            if (tag1 == JS_TAG_STRING) {
    8003e764:	57e5                	li	a5,-7
    8003e766:	00fd1e63          	bne	s10,a5,8003e782 <js_eq_slow+0x1f0>
quickjs-nuttx/quickjs.c:14110
                op1 = JS_StringToBigInt(ctx, op1);
    8003e76a:	7582                	ld	a1,32(sp)
    8003e76c:	8626                	mv	a2,s1
    8003e76e:	854e                	mv	a0,s3
    8003e770:	eece70ef          	jal	ra,80025e5c <JS_StringToBigInt>
    8003e774:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:14111
                if (JS_VALUE_GET_TAG(op1) != JS_TAG_BIG_INT)
    8003e776:	0005869b          	sext.w	a3,a1
    8003e77a:	57d9                	li	a5,-10
quickjs-nuttx/quickjs.c:14110
                op1 = JS_StringToBigInt(ctx, op1);
    8003e77c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:14111
                if (JS_VALUE_GET_TAG(op1) != JS_TAG_BIG_INT)
    8003e77e:	02f69163          	bne	a3,a5,8003e7a0 <js_eq_slow+0x20e>
quickjs-nuttx/quickjs.c:14114
            if (tag2 == JS_TAG_STRING) {
    8003e782:	57e5                	li	a5,-7
    8003e784:	08fb9063          	bne	s7,a5,8003e804 <js_eq_slow+0x272>
quickjs-nuttx/quickjs.c:14115
                op2 = JS_StringToBigInt(ctx, op2);
    8003e788:	75c2                	ld	a1,48(sp)
    8003e78a:	864a                	mv	a2,s2
    8003e78c:	854e                	mv	a0,s3
    8003e78e:	ecee70ef          	jal	ra,80025e5c <JS_StringToBigInt>
    8003e792:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:14116
                if (JS_VALUE_GET_TAG(op2) != JS_TAG_BIG_INT) {
    8003e794:	0005871b          	sext.w	a4,a1
    8003e798:	57d9                	li	a5,-10
quickjs-nuttx/quickjs.c:14115
                op2 = JS_StringToBigInt(ctx, op2);
    8003e79a:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:14116
                if (JS_VALUE_GET_TAG(op2) != JS_TAG_BIG_INT) {
    8003e79c:	06f70463          	beq	a4,a5,8003e804 <js_eq_slow+0x272>
quickjs-nuttx/quickjs.c:14184
        JS_FreeValue(ctx, op1);
    8003e7a0:	7582                	ld	a1,32(sp)
    8003e7a2:	8626                	mv	a2,s1
    8003e7a4:	854e                	mv	a0,s3
    8003e7a6:	ff9cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14185
        JS_FreeValue(ctx, op2);
    8003e7aa:	75c2                	ld	a1,48(sp)
    8003e7ac:	864a                	mv	a2,s2
    8003e7ae:	854e                	mv	a0,s3
    8003e7b0:	fefcc0ef          	jal	ra,8000b79e <JS_FreeValue>
    8003e7b4:	bd89                	j	8003e606 <js_eq_slow+0x74>
quickjs-nuttx/quickjs.c:14104 (discriminator 3)
    } else if ((tag1 == JS_TAG_STRING && tag_is_number(tag2)) ||
    8003e7b6:	06fb9063          	bne	s7,a5,8003e816 <js_eq_slow+0x284>
quickjs-nuttx/quickjs.c:14105
               (tag2 == JS_TAG_STRING && tag_is_number(tag1))) {
    8003e7ba:	100d8b63          	beqz	s11,8003e8d0 <js_eq_slow+0x33e>
quickjs-nuttx/quickjs.c:14107
        if ((tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) &&
    8003e7be:	57d9                	li	a5,-10
quickjs-nuttx/quickjs.c:14044
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003e7c0:	5be5                	li	s7,-7
quickjs-nuttx/quickjs.c:14107
        if ((tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) &&
    8003e7c2:	f8fd0ce3          	beq	s10,a5,8003e75a <js_eq_slow+0x1c8>
quickjs-nuttx/quickjs.c:14125
            op1 = JS_ToNumericFree(ctx, op1);
    8003e7c6:	7582                	ld	a1,32(sp)
    8003e7c8:	8626                	mv	a2,s1
    8003e7ca:	854e                	mv	a0,s3
    8003e7cc:	f28e60ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003e7d0:	f02a                	sd	a0,32(sp)
    8003e7d2:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:14126
            if (JS_IsException(op1)) {
    8003e7d4:	0005879b          	sext.w	a5,a1
    8003e7d8:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:14125
            op1 = JS_ToNumericFree(ctx, op1);
    8003e7da:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:14127
                JS_FreeValue(ctx, op2);
    8003e7dc:	864a                	mv	a2,s2
    8003e7de:	75c2                	ld	a1,48(sp)
    8003e7e0:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:14126
            if (JS_IsException(op1)) {
    8003e7e2:	00879563          	bne	a5,s0,8003e7ec <js_eq_slow+0x25a>
quickjs-nuttx/quickjs.c:14132
                JS_FreeValue(ctx, op1);
    8003e7e6:	fb9cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14133
                goto exception;
    8003e7ea:	b545                	j	8003e68a <js_eq_slow+0xf8>
quickjs-nuttx/quickjs.c:14130
            op2 = JS_ToNumericFree(ctx, op2);
    8003e7ec:	f08e60ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003e7f0:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:14131
            if (JS_IsException(op2)) {
    8003e7f2:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:14130
            op2 = JS_ToNumericFree(ctx, op2);
    8003e7f6:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:14131
            if (JS_IsException(op2)) {
    8003e7f8:	00879663          	bne	a5,s0,8003e804 <js_eq_slow+0x272>
quickjs-nuttx/quickjs.c:14132
                JS_FreeValue(ctx, op1);
    8003e7fc:	7582                	ld	a1,32(sp)
    8003e7fe:	7622                	ld	a2,40(sp)
    8003e800:	854e                	mv	a0,s3
    8003e802:	b7d5                	j	8003e7e6 <js_eq_slow+0x254>
quickjs-nuttx/quickjs.c:14136
        res = js_strict_eq(ctx, op1, op2);
    8003e804:	7582                	ld	a1,32(sp)
    8003e806:	76c2                	ld	a3,48(sp)
    8003e808:	fca6                	sd	s1,120(sp)
    8003e80a:	f8ae                	sd	a1,112(sp)
    8003e80c:	e136                	sd	a3,128(sp)
    8003e80e:	e54a                	sd	s2,136(sp)
js_strict_eq():
quickjs-nuttx/quickjs.c:14456
    return js_strict_eq2(ctx, op1, op2, JS_EQ_STRICT);
    8003e810:	4781                	li	a5,0
    8003e812:	874a                	mv	a4,s2
    8003e814:	b729                	j	8003e71e <js_eq_slow+0x18c>
js_eq_slow():
quickjs-nuttx/quickjs.c:14137
    } else if (tag1 == JS_TAG_BOOL) {
    8003e816:	088d1f63          	bne	s10,s0,8003e8b4 <js_eq_slow+0x322>
quickjs-nuttx/quickjs.c:14138
        op1 = JS_NewInt32(ctx, JS_VALUE_GET_INT(op1));
    8003e81a:	5782                	lw	a5,32(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003e81c:	ca82                	sw	zero,84(sp)
    8003e81e:	ec82                	sd	zero,88(sp)
    8003e820:	c8be                	sw	a5,80(sp)
    8003e822:	67c6                	ld	a5,80(sp)
    8003e824:	f402                	sd	zero,40(sp)
js_eq_slow():
quickjs-nuttx/quickjs.c:14139
        goto redo;
    8003e826:	4481                	li	s1,0
    8003e828:	f03e                	sd	a5,32(sp)
    8003e82a:	bb45                	j	8003e5da <js_eq_slow+0x48>
quickjs-nuttx/quickjs.c:14163
        op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NONE);
    8003e82c:	7582                	ld	a1,32(sp)
    8003e82e:	7622                	ld	a2,40(sp)
    8003e830:	4689                	li	a3,2
    8003e832:	854e                	mv	a0,s3
    8003e834:	aa8e10ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    8003e838:	f02a                	sd	a0,32(sp)
    8003e83a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:14164
        if (JS_IsException(op1)) {
    8003e83c:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:14163
        op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NONE);
    8003e840:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:14164
        if (JS_IsException(op1)) {
    8003e842:	01979563          	bne	a5,s9,8003e84c <js_eq_slow+0x2ba>
quickjs-nuttx/quickjs.c:14165
            JS_FreeValue(ctx, op2);
    8003e846:	75c2                	ld	a1,48(sp)
    8003e848:	7662                	ld	a2,56(sp)
    8003e84a:	bf5d                	j	8003e800 <js_eq_slow+0x26e>
quickjs-nuttx/quickjs.c:14168
        op2 = JS_ToPrimitiveFree(ctx, op2, HINT_NONE);
    8003e84c:	75c2                	ld	a1,48(sp)
    8003e84e:	7662                	ld	a2,56(sp)
    8003e850:	4689                	li	a3,2
    8003e852:	854e                	mv	a0,s3
    8003e854:	a88e10ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    8003e858:	f82a                	sd	a0,48(sp)
    8003e85a:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:14169
        if (JS_IsException(op2)) {
    8003e85c:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:14168
        op2 = JS_ToPrimitiveFree(ctx, op2, HINT_NONE);
    8003e860:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:14169
        if (JS_IsException(op2)) {
    8003e862:	d7979ce3          	bne	a5,s9,8003e5da <js_eq_slow+0x48>
    8003e866:	bf59                	j	8003e7fc <js_eq_slow+0x26a>
JS_IsHTMLDDA():
quickjs-nuttx/quickjs.c:9933
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8003e868:	57fd                	li	a5,-1
    8003e86a:	00fd1c63          	bne	s10,a5,8003e882 <js_eq_slow+0x2f0>
quickjs-nuttx/quickjs.c:9936
    return p->is_HTMLDDA;
    8003e86e:	7782                	ld	a5,32(sp)
    8003e870:	639c                	ld	a5,0(a5)
    8003e872:	93bd                	srli	a5,a5,0x2f
js_eq_slow():
quickjs-nuttx/quickjs.c:14176
        if ((JS_IsHTMLDDA(ctx, op1) &&
    8003e874:	8b85                	andi	a5,a5,1
    8003e876:	c791                	beqz	a5,8003e882 <js_eq_slow+0x2f0>
quickjs-nuttx/quickjs.c:14176 (discriminator 1)
    8003e878:	ffeb879b          	addiw	a5,s7,-2
quickjs-nuttx/quickjs.c:14180 (discriminator 1)
            res = TRUE;
    8003e87c:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:14176 (discriminator 1)
        if ((JS_IsHTMLDDA(ctx, op1) &&
    8003e87e:	f2f471e3          	bgeu	s0,a5,8003e7a0 <js_eq_slow+0x20e>
JS_IsHTMLDDA():
quickjs-nuttx/quickjs.c:9933
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8003e882:	57fd                	li	a5,-1
js_eq_slow():
quickjs-nuttx/quickjs.c:14182
            res = FALSE;
    8003e884:	4401                	li	s0,0
JS_IsHTMLDDA():
quickjs-nuttx/quickjs.c:9933
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8003e886:	f0fb9de3          	bne	s7,a5,8003e7a0 <js_eq_slow+0x20e>
quickjs-nuttx/quickjs.c:9936
    return p->is_HTMLDDA;
    8003e88a:	77c2                	ld	a5,48(sp)
    8003e88c:	639c                	ld	a5,0(a5)
    8003e88e:	93bd                	srli	a5,a5,0x2f
js_eq_slow():
quickjs-nuttx/quickjs.c:14177
             (tag2 == JS_TAG_NULL || tag2 == JS_TAG_UNDEFINED)) ||
    8003e890:	8b85                	andi	a5,a5,1
    8003e892:	f00787e3          	beqz	a5,8003e7a0 <js_eq_slow+0x20e>
quickjs-nuttx/quickjs.c:14178
            (JS_IsHTMLDDA(ctx, op2) &&
    8003e896:	ffed051b          	addiw	a0,s10,-2
quickjs-nuttx/quickjs.c:14180
            res = TRUE;
    8003e89a:	00253413          	sltiu	s0,a0,2
    8003e89e:	b709                	j	8003e7a0 <js_eq_slow+0x20e>
quickjs-nuttx/quickjs.c:14049
                    (tag2 == JS_TAG_INT || tag2 == JS_TAG_FLOAT64)) ||
    8003e8a0:	479d                	li	a5,7
    8003e8a2:	dcfb92e3          	bne	s7,a5,8003e666 <js_eq_slow+0xd4>
quickjs-nuttx/quickjs.c:14056
                d1 = JS_VALUE_GET_INT(op1);
    8003e8a6:	5782                	lw	a5,32(sp)
    8003e8a8:	d20787d3          	fcvt.d.w	fa5,a5
quickjs-nuttx/quickjs.c:14058
            if (tag2 == JS_TAG_FLOAT64) {
    8003e8ac:	b359                	j	8003e632 <js_eq_slow+0xa0>
quickjs-nuttx/quickjs.c:14104
    } else if ((tag1 == JS_TAG_STRING && tag_is_number(tag2)) ||
    8003e8ae:	57e5                	li	a5,-7
    8003e8b0:	f0fb85e3          	beq	s7,a5,8003e7ba <js_eq_slow+0x228>
quickjs-nuttx/quickjs.c:14140
    } else if (tag2 == JS_TAG_BOOL) {
    8003e8b4:	028b9063          	bne	s7,s0,8003e8d4 <js_eq_slow+0x342>
quickjs-nuttx/quickjs.c:14141
        op2 = JS_NewInt32(ctx, JS_VALUE_GET_INT(op2));
    8003e8b8:	57c2                	lw	a5,48(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003e8ba:	d282                	sw	zero,100(sp)
    8003e8bc:	f482                	sd	zero,104(sp)
    8003e8be:	d0be                	sw	a5,96(sp)
    8003e8c0:	7786                	ld	a5,96(sp)
    8003e8c2:	fc02                	sd	zero,56(sp)
js_eq_slow():
quickjs-nuttx/quickjs.c:14142
        goto redo;
    8003e8c4:	4901                	li	s2,0
    8003e8c6:	f83e                	sd	a5,48(sp)
    8003e8c8:	bb09                	j	8003e5da <js_eq_slow+0x48>
quickjs-nuttx/quickjs.c:14104
    } else if ((tag1 == JS_TAG_STRING && tag_is_number(tag2)) ||
    8003e8ca:	57e5                	li	a5,-7
    8003e8cc:	e6fd0ee3          	beq	s10,a5,8003e748 <js_eq_slow+0x1b6>
quickjs-nuttx/quickjs.c:14137
    } else if (tag1 == JS_TAG_BOOL) {
    8003e8d0:	f48d05e3          	beq	s10,s0,8003e81a <js_eq_slow+0x288>
quickjs-nuttx/quickjs.c:14143
    } else if ((tag1 == JS_TAG_OBJECT &&
    8003e8d4:	018d1a63          	bne	s10,s8,8003e8e8 <js_eq_slow+0x356>
quickjs-nuttx/quickjs.c:14144 (discriminator 1)
                (tag_is_number(tag2) || tag2 == JS_TAG_STRING || tag2 == JS_TAG_SYMBOL)) ||
    8003e8d8:	855e                	mv	a0,s7
    8003e8da:	cd7ca0ef          	jal	ra,800095b0 <tag_is_number>
quickjs-nuttx/quickjs.c:14143 (discriminator 1)
    } else if ((tag1 == JS_TAG_OBJECT &&
    8003e8de:	ed09                	bnez	a0,8003e8f8 <js_eq_slow+0x366>
quickjs-nuttx/quickjs.c:14144 (discriminator 1)
                (tag_is_number(tag2) || tag2 == JS_TAG_STRING || tag2 == JS_TAG_SYMBOL)) ||
    8003e8e0:	008b879b          	addiw	a5,s7,8
    8003e8e4:	00f47a63          	bgeu	s0,a5,8003e8f8 <js_eq_slow+0x366>
quickjs-nuttx/quickjs.c:14144 (discriminator 2)
    8003e8e8:	f98b90e3          	bne	s7,s8,8003e868 <js_eq_slow+0x2d6>
quickjs-nuttx/quickjs.c:14145
               (tag2 == JS_TAG_OBJECT &&
    8003e8ec:	000d9663          	bnez	s11,8003e8f8 <js_eq_slow+0x366>
quickjs-nuttx/quickjs.c:14146 (discriminator 1)
                (tag_is_number(tag1) || tag1 == JS_TAG_STRING || tag1 == JS_TAG_SYMBOL))) {
    8003e8f0:	008d079b          	addiw	a5,s10,8
    8003e8f4:	f6f46ae3          	bltu	s0,a5,8003e868 <js_eq_slow+0x2d6>
quickjs-nuttx/quickjs.c:14149
        res = js_call_binary_op_fallback(ctx, &ret, op1, op2,
    8003e8f8:	6862                	ld	a6,24(sp)
    8003e8fa:	7742                	ld	a4,48(sp)
    8003e8fc:	7602                	ld	a2,32(sp)
    8003e8fe:	86a6                	mv	a3,s1
    8003e900:	e05a                	sd	s6,0(sp)
    8003e902:	4881                	li	a7,0
    8003e904:	87ca                	mv	a5,s2
    8003e906:	008c                	addi	a1,sp,64
    8003e908:	854e                	mv	a0,s3
    8003e90a:	f426                	sd	s1,40(sp)
    8003e90c:	fc4a                	sd	s2,56(sp)
    8003e90e:	e29fe0ef          	jal	ra,8003d736 <js_call_binary_op_fallback>
    8003e912:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:14152
        if (res != 0) {
    8003e914:	dd01                	beqz	a0,8003e82c <js_eq_slow+0x29a>
quickjs-nuttx/quickjs.c:14153
            JS_FreeValue(ctx, op1);
    8003e916:	7582                	ld	a1,32(sp)
    8003e918:	7622                	ld	a2,40(sp)
    8003e91a:	854e                	mv	a0,s3
    8003e91c:	e83cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14154
            JS_FreeValue(ctx, op2);
    8003e920:	75c2                	ld	a1,48(sp)
    8003e922:	7662                	ld	a2,56(sp)
    8003e924:	854e                	mv	a0,s3
    8003e926:	e79cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14155
            if (res < 0) {
    8003e92a:	dc04d0e3          	bgez	s1,8003e6ea <js_eq_slow+0x158>
    8003e92e:	bbb1                	j	8003e68a <js_eq_slow+0xf8>

000000008003e930 <js_reflect_get>:
js_reflect_get():
quickjs-nuttx/quickjs.c:45589
{
    8003e930:	7119                	addi	sp,sp,-128
    8003e932:	fc86                	sd	ra,120(sp)
    8003e934:	f8a2                	sd	s0,112(sp)
    8003e936:	f4a6                	sd	s1,104(sp)
quickjs-nuttx/quickjs.c:45595
    prop = argv[1];
    8003e938:	6b0c                	ld	a1,16(a4)
quickjs-nuttx/quickjs.c:45594
    obj = argv[0];
    8003e93a:	671c                	ld	a5,8(a4)
    8003e93c:	6310                	ld	a2,0(a4)
quickjs-nuttx/quickjs.c:45595
    prop = argv[1];
    8003e93e:	f02e                	sd	a1,32(sp)
    8003e940:	6f0c                	ld	a1,24(a4)
quickjs-nuttx/quickjs.c:45594
    obj = argv[0];
    8003e942:	e832                	sd	a2,16(sp)
    8003e944:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:45595
    prop = argv[1];
    8003e946:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:45596
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8003e948:	0007881b          	sext.w	a6,a5
    8003e94c:	55fd                	li	a1,-1
    8003e94e:	00b80863          	beq	a6,a1,8003e95e <js_reflect_get+0x2e>
quickjs-nuttx/quickjs.c:45608
}
    8003e952:	7446                	ld	s0,112(sp)
    8003e954:	70e6                	ld	ra,120(sp)
    8003e956:	74a6                	ld	s1,104(sp)
    8003e958:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:45597
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8003e95a:	ad0da06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:45598
    if (argc > 2)
    8003e95e:	4589                	li	a1,2
    8003e960:	842a                	mv	s0,a0
    8003e962:	02d5d863          	bge	a1,a3,8003e992 <js_reflect_get+0x62>
quickjs-nuttx/quickjs.c:45599
        receiver = argv[2];
    8003e966:	731c                	ld	a5,32(a4)
    8003e968:	f83e                	sd	a5,48(sp)
    8003e96a:	771c                	ld	a5,40(a4)
quickjs-nuttx/quickjs.c:45602
    atom = JS_ValueToAtom(ctx, prop);
    8003e96c:	7582                	ld	a1,32(sp)
    8003e96e:	7622                	ld	a2,40(sp)
    8003e970:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:45601
        receiver = obj;
    8003e972:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:45602
    atom = JS_ValueToAtom(ctx, prop);
    8003e974:	e9fe90ef          	jal	ra,80028812 <JS_ValueToAtom>
    8003e978:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:45603
    if (unlikely(atom == JS_ATOM_NULL))
    8003e97c:	ec89                	bnez	s1,8003e996 <js_reflect_get+0x66>
quickjs-nuttx/quickjs.c:45604
        return JS_EXCEPTION;
    8003e97e:	e882                	sd	zero,80(sp)
    8003e980:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45608
}
    8003e982:	70e6                	ld	ra,120(sp)
    8003e984:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:45607
    return ret;
    8003e986:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:45608
}
    8003e988:	6546                	ld	a0,80(sp)
    8003e98a:	65e6                	ld	a1,88(sp)
    8003e98c:	74a6                	ld	s1,104(sp)
    8003e98e:	6109                	addi	sp,sp,128
    8003e990:	8082                	ret
quickjs-nuttx/quickjs.c:45601
        receiver = obj;
    8003e992:	f832                	sd	a2,48(sp)
    8003e994:	bfe1                	j	8003e96c <js_reflect_get+0x3c>
quickjs-nuttx/quickjs.c:45605
    ret = JS_GetPropertyInternal(ctx, obj, atom, receiver, FALSE);
    8003e996:	77e2                	ld	a5,56(sp)
    8003e998:	7742                	ld	a4,48(sp)
    8003e99a:	6662                	ld	a2,24(sp)
    8003e99c:	65c2                	ld	a1,16(sp)
    8003e99e:	4801                	li	a6,0
    8003e9a0:	86a6                	mv	a3,s1
    8003e9a2:	8522                	mv	a0,s0
    8003e9a4:	906d80ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003e9a8:	e0aa                	sd	a0,64(sp)
    8003e9aa:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:45606
    JS_FreeAtom(ctx, atom);
    8003e9ac:	8522                	mv	a0,s0
    8003e9ae:	85a6                	mv	a1,s1
    8003e9b0:	f98cc0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:45607
    return ret;
    8003e9b4:	6786                	ld	a5,64(sp)
    8003e9b6:	e8be                	sd	a5,80(sp)
    8003e9b8:	67a6                	ld	a5,72(sp)
    8003e9ba:	b7e1                	j	8003e982 <js_reflect_get+0x52>

000000008003e9bc <js_bigdecimal_fop>:
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52059
{
    8003e9bc:	712d                	addi	sp,sp,-288
    8003e9be:	ea22                	sd	s0,272(sp)
    8003e9c0:	e626                	sd	s1,264(sp)
    8003e9c2:	fdce                	sd	s3,248(sp)
    8003e9c4:	f1da                	sd	s6,224(sp)
    8003e9c6:	e9e2                	sd	s8,208(sp)
    8003e9c8:	e1ea                	sd	s10,192(sp)
    8003e9ca:	fd6e                	sd	s11,184(sp)
    8003e9cc:	ee06                	sd	ra,280(sp)
    8003e9ce:	e24a                	sd	s2,256(sp)
    8003e9d0:	f9d2                	sd	s4,240(sp)
    8003e9d2:	f5d6                	sd	s5,232(sp)
    8003e9d4:	edde                	sd	s7,216(sp)
    8003e9d6:	e5e6                	sd	s9,200(sp)
quickjs-nuttx/quickjs.c:52071
    op1 = JS_ToNumeric(ctx, argv[0]);
    8003e9d8:	630c                	ld	a1,0(a4)
    8003e9da:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:52059
{
    8003e9dc:	84aa                	mv	s1,a0
    8003e9de:	e436                	sd	a3,8(sp)
    8003e9e0:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:52065
    if (magic == MATH_OP_SQRT ||
    8003e9e2:	ffd78c1b          	addiw	s8,a5,-3
quickjs-nuttx/quickjs.c:52071
    op1 = JS_ToNumeric(ctx, argv[0]);
    8003e9e6:	d18e60ef          	jal	ra,80024efe <JS_ToNumeric>
    8003e9ea:	f82a                	sd	a0,48(sp)
    8003e9ec:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:52072
    if (JS_IsException(op1))
    8003e9ee:	00058d9b          	sext.w	s11,a1
    8003e9f2:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:52071
    op1 = JS_ToNumeric(ctx, argv[0]);
    8003e9f4:	842a                	mv	s0,a0
    8003e9f6:	8d2e                	mv	s10,a1
quickjs-nuttx/quickjs.c:52072
    if (JS_IsException(op1))
    8003e9f8:	036d9563          	bne	s11,s6,8003ea22 <js_bigdecimal_fop+0x66>
quickjs-nuttx/quickjs.c:52073
        return op1;
    8003e9fc:	f8aa                	sd	a0,112(sp)
    8003e9fe:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:52144 (discriminator 1)
}
    8003ea00:	60f2                	ld	ra,280(sp)
    8003ea02:	6452                	ld	s0,272(sp)
    8003ea04:	7546                	ld	a0,112(sp)
    8003ea06:	75e6                	ld	a1,120(sp)
    8003ea08:	64b2                	ld	s1,264(sp)
    8003ea0a:	6912                	ld	s2,256(sp)
    8003ea0c:	79ee                	ld	s3,248(sp)
    8003ea0e:	7a4e                	ld	s4,240(sp)
    8003ea10:	7aae                	ld	s5,232(sp)
    8003ea12:	7b0e                	ld	s6,224(sp)
    8003ea14:	6bee                	ld	s7,216(sp)
    8003ea16:	6c4e                	ld	s8,208(sp)
    8003ea18:	6cae                	ld	s9,200(sp)
    8003ea1a:	6d0e                	ld	s10,192(sp)
    8003ea1c:	7dea                	ld	s11,184(sp)
    8003ea1e:	6115                	addi	sp,sp,288
    8003ea20:	8082                	ret
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12374
    switch(tag) {
    8003ea22:	5755                	li	a4,-11
    8003ea24:	04ed9f63          	bne	s11,a4,8003ea82 <js_bigdecimal_fop+0xc6>
    8003ea28:	ffdc7913          	andi	s2,s8,-3
    8003ea2c:	2901                	sext.w	s2,s2
    8003ea2e:	01203933          	snez	s2,s2
    8003ea32:	0905                	addi	s2,s2,1
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52079
    if (op_count >= 2) {
    8003ea34:	4709                	li	a4,2
    8003ea36:	06e90563          	beq	s2,a4,8003eaa0 <js_bigdecimal_fop+0xe4>
quickjs-nuttx/quickjs.c:52089
        op2 = JS_UNDEFINED;
    8003ea3a:	4a8d                	li	s5,3
    8003ea3c:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:52090
        b = NULL;
    8003ea3e:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:52094
    if (op_count < argc) {
    8003ea40:	67a2                	ld	a5,8(sp)
    8003ea42:	1ef95a63          	bge	s2,a5,8003ec36 <js_bigdecimal_fop+0x27a>
quickjs-nuttx/quickjs.c:52095
        if (js_bigdecimal_get_env(ctx, fe, argv[op_count]))
    8003ea46:	0912                	slli	s2,s2,0x4
    8003ea48:	994e                	add	s2,s2,s3
    8003ea4a:	00893783          	ld	a5,8(s2)
    8003ea4e:	00093703          	ld	a4,0(s2)
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52003
    if (!JS_IsObject(obj)) {
    8003ea52:	56fd                	li	a3,-1
    8003ea54:	ecbe                	sd	a5,88(sp)
    8003ea56:	e8ba                	sd	a4,80(sp)
    8003ea58:	00078b1b          	sext.w	s6,a5
    8003ea5c:	08db0563          	beq	s6,a3,8003eae6 <js_bigdecimal_fop+0x12a>
quickjs-nuttx/quickjs.c:52004
        JS_ThrowTypeErrorNotAnObject(ctx);
    8003ea60:	8526                	mv	a0,s1
    8003ea62:	9c8da0ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52102
        JS_FreeValue(ctx, op1);
    8003ea66:	85a2                	mv	a1,s0
    8003ea68:	866a                	mv	a2,s10
    8003ea6a:	8526                	mv	a0,s1
    8003ea6c:	d33cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52103
        JS_FreeValue(ctx, op2);
    8003ea70:	85d2                	mv	a1,s4
    8003ea72:	8656                	mv	a2,s5
    8003ea74:	8526                	mv	a0,s1
    8003ea76:	d29cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52104
        return JS_EXCEPTION;
    8003ea7a:	4799                	li	a5,6
    8003ea7c:	f882                	sd	zero,112(sp)
    8003ea7e:	fcbe                	sd	a5,120(sp)
    8003ea80:	b741                	j	8003ea00 <js_bigdecimal_fop+0x44>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12380
        JS_ThrowTypeError(ctx, "bigdecimal expected");
    8003ea82:	0002c597          	auipc	a1,0x2c
    8003ea86:	dbe58593          	addi	a1,a1,-578 # 8006a840 <qjsc_repl+0x5290>
    8003ea8a:	8526                	mv	a0,s1
    8003ea8c:	be1d90ef          	jal	ra,8001866c <JS_ThrowTypeError>
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52076
        JS_FreeValue(ctx, op1);
    8003ea90:	75c2                	ld	a1,48(sp)
    8003ea92:	7662                	ld	a2,56(sp)
    8003ea94:	8526                	mv	a0,s1
    8003ea96:	d09cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52077
        return JS_EXCEPTION;
    8003ea9a:	f882                	sd	zero,112(sp)
    8003ea9c:	fcda                	sd	s6,120(sp)
    8003ea9e:	b78d                	j	8003ea00 <js_bigdecimal_fop+0x44>
quickjs-nuttx/quickjs.c:52080
        op2 = JS_ToNumeric(ctx, argv[1]);
    8003eaa0:	0109b583          	ld	a1,16(s3)
    8003eaa4:	0189b603          	ld	a2,24(s3)
    8003eaa8:	8526                	mv	a0,s1
    8003eaaa:	c54e60ef          	jal	ra,80024efe <JS_ToNumeric>
quickjs-nuttx/quickjs.c:52081
        if (JS_IsException(op2)) {
    8003eaae:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:52080
        op2 = JS_ToNumeric(ctx, argv[1]);
    8003eab2:	8caa                	mv	s9,a0
    8003eab4:	8bae                	mv	s7,a1
    8003eab6:	8a2a                	mv	s4,a0
    8003eab8:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:52081
        if (JS_IsException(op2)) {
    8003eaba:	01671a63          	bne	a4,s6,8003eace <js_bigdecimal_fop+0x112>
quickjs-nuttx/quickjs.c:52082
            JS_FreeValue(ctx, op1);
    8003eabe:	75c2                	ld	a1,48(sp)
    8003eac0:	7662                	ld	a2,56(sp)
    8003eac2:	8526                	mv	a0,s1
    8003eac4:	cdbcc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52083
            return op2;
    8003eac8:	f8e6                	sd	s9,112(sp)
    8003eaca:	fcde                	sd	s7,120(sp)
    8003eacc:	bf15                	j	8003ea00 <js_bigdecimal_fop+0x44>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    8003eace:	00850c93          	addi	s9,a0,8
quickjs-nuttx/quickjs.c:12380
        JS_ThrowTypeError(ctx, "bigdecimal expected");
    8003ead2:	0002c597          	auipc	a1,0x2c
    8003ead6:	d6e58593          	addi	a1,a1,-658 # 8006a840 <qjsc_repl+0x5290>
quickjs-nuttx/quickjs.c:12374
    switch(tag) {
    8003eada:	f7b703e3          	beq	a4,s11,8003ea40 <js_bigdecimal_fop+0x84>
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52035
            JS_ThrowTypeError(ctx, "cannot provide both maximumSignificantDigits and maximumFractionDigits");
    8003eade:	8526                	mv	a0,s1
    8003eae0:	b8dd90ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:52036
            return -1;
    8003eae4:	b749                	j	8003ea66 <js_bigdecimal_fop+0xaa>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003eae6:	863e                	mv	a2,a5
    8003eae8:	4801                	li	a6,0
    8003eaea:	09000693          	li	a3,144
    8003eaee:	85ba                	mv	a1,a4
    8003eaf0:	8526                	mv	a0,s1
    8003eaf2:	f53e                	sd	a5,168(sp)
    8003eaf4:	f13a                	sd	a4,160(sp)
    8003eaf6:	fb5d70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003eafa:	f0aa                	sd	a0,96(sp)
    8003eafc:	f4ae                	sd	a1,104(sp)
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52008
    if (JS_IsException(prop))
    8003eafe:	0005879b          	sext.w	a5,a1
    8003eb02:	4919                	li	s2,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003eb04:	862e                	mv	a2,a1
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52008
    8003eb06:	f72780e3          	beq	a5,s2,8003ea66 <js_bigdecimal_fop+0xaa>
quickjs-nuttx/quickjs.c:52010
    rnd_mode = js_bigdecimal_get_rnd_mode(ctx, prop);
    8003eb0a:	85aa                	mv	a1,a0
    8003eb0c:	8526                	mv	a0,s1
    8003eb0e:	df9e80ef          	jal	ra,80027906 <js_bigdecimal_get_rnd_mode>
quickjs-nuttx/quickjs.c:52011
    JS_FreeValue(ctx, prop);
    8003eb12:	7586                	ld	a1,96(sp)
    8003eb14:	7626                	ld	a2,104(sp)
quickjs-nuttx/quickjs.c:52010
    rnd_mode = js_bigdecimal_get_rnd_mode(ctx, prop);
    8003eb16:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:52011
    JS_FreeValue(ctx, prop);
    8003eb18:	8526                	mv	a0,s1
    8003eb1a:	c85cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52012
    if (rnd_mode < 0)
    8003eb1e:	f40bc4e3          	bltz	s7,8003ea66 <js_bigdecimal_fop+0xaa>
quickjs-nuttx/quickjs.c:52014
    fe->flags = rnd_mode;
    8003eb22:	67e6                	ld	a5,88(sp)
    8003eb24:	6746                	ld	a4,80(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003eb26:	09100693          	li	a3,145
    8003eb2a:	863e                	mv	a2,a5
    8003eb2c:	4801                	li	a6,0
    8003eb2e:	85ba                	mv	a1,a4
    8003eb30:	8526                	mv	a0,s1
    8003eb32:	f53e                	sd	a5,168(sp)
    8003eb34:	f13a                	sd	a4,160(sp)
    8003eb36:	f75d70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003eb3a:	f0aa                	sd	a0,96(sp)
    8003eb3c:	f4ae                	sd	a1,104(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003eb3e:	0005879b          	sext.w	a5,a1
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52014
    8003eb42:	2b81                	sext.w	s7,s7
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003eb44:	862a                	mv	a2,a0
    8003eb46:	86ae                	mv	a3,a1
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52017
    if (JS_IsException(prop))
    8003eb48:	f1278fe3          	beq	a5,s2,8003ea66 <js_bigdecimal_fop+0xaa>
quickjs-nuttx/quickjs.c:52020
    if (!JS_IsUndefined(prop)) {
    8003eb4c:	470d                	li	a4,3
    8003eb4e:	02e78563          	beq	a5,a4,8003eb78 <js_bigdecimal_fop+0x1bc>
quickjs-nuttx/quickjs.c:52021
        if (JS_ToInt64SatFree(ctx, &val, prop))
    8003eb52:	102c                	addi	a1,sp,40
    8003eb54:	8526                	mv	a0,s1
    8003eb56:	fbee50ef          	jal	ra,80024314 <JS_ToInt64SatFree>
    8003eb5a:	f00516e3          	bnez	a0,8003ea66 <js_bigdecimal_fop+0xaa>
quickjs-nuttx/quickjs.c:52023
        if (val < 1 || val > BF_PREC_MAX)
    8003eb5e:	7b22                	ld	s6,40(sp)
    8003eb60:	57dd                	li	a5,-9
    8003eb62:	8389                	srli	a5,a5,0x2
    8003eb64:	fffb0713          	addi	a4,s6,-1
quickjs-nuttx/quickjs.c:52026
        has_prec = TRUE;
    8003eb68:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:52023
        if (val < 1 || val > BF_PREC_MAX)
    8003eb6a:	00e7fa63          	bgeu	a5,a4,8003eb7e <js_bigdecimal_fop+0x1c2>
quickjs-nuttx/quickjs.c:52042
            JS_ThrowTypeError(ctx, "invalid precision");
    8003eb6e:	0002c597          	auipc	a1,0x2c
    8003eb72:	18a58593          	addi	a1,a1,394 # 8006acf8 <qjsc_repl+0x5748>
    8003eb76:	b7a5                	j	8003eade <js_bigdecimal_fop+0x122>
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52093
    fe->prec = BF_PREC_INF;
    8003eb78:	002b5b13          	srli	s6,s6,0x2
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52019
    has_prec = FALSE;
    8003eb7c:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:52029
    prop = JS_GetProperty(ctx, obj, JS_ATOM_maximumFractionDigits);
    8003eb7e:	6746                	ld	a4,80(sp)
    8003eb80:	67e6                	ld	a5,88(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003eb82:	09200693          	li	a3,146
    8003eb86:	85ba                	mv	a1,a4
    8003eb88:	863e                	mv	a2,a5
    8003eb8a:	4801                	li	a6,0
    8003eb8c:	8526                	mv	a0,s1
    8003eb8e:	f8ba                	sd	a4,112(sp)
    8003eb90:	fcbe                	sd	a5,120(sp)
    8003eb92:	f19d70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003eb96:	f12a                	sd	a0,160(sp)
    8003eb98:	f52e                	sd	a1,168(sp)
    8003eb9a:	f0aa                	sd	a0,96(sp)
    8003eb9c:	f4ae                	sd	a1,104(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003eb9e:	0005879b          	sext.w	a5,a1
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52030
    if (JS_IsException(prop))
    8003eba2:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003eba4:	862a                	mv	a2,a0
    8003eba6:	86ae                	mv	a3,a1
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52030
    8003eba8:	eae78fe3          	beq	a5,a4,8003ea66 <js_bigdecimal_fop+0xaa>
quickjs-nuttx/quickjs.c:52032
    if (!JS_IsUndefined(prop)) {
    8003ebac:	470d                	li	a4,3
    8003ebae:	06e78d63          	beq	a5,a4,8003ec28 <js_bigdecimal_fop+0x26c>
quickjs-nuttx/quickjs.c:52033
        if (has_prec) {
    8003ebb2:	00090c63          	beqz	s2,8003ebca <js_bigdecimal_fop+0x20e>
quickjs-nuttx/quickjs.c:52034
            JS_FreeValue(ctx, prop);
    8003ebb6:	85aa                	mv	a1,a0
    8003ebb8:	8636                	mv	a2,a3
    8003ebba:	8526                	mv	a0,s1
    8003ebbc:	be3cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52035
            JS_ThrowTypeError(ctx, "cannot provide both maximumSignificantDigits and maximumFractionDigits");
    8003ebc0:	0002e597          	auipc	a1,0x2e
    8003ebc4:	51058593          	addi	a1,a1,1296 # 8006d0d0 <qjsc_repl+0x7b20>
    8003ebc8:	bf19                	j	8003eade <js_bigdecimal_fop+0x122>
quickjs-nuttx/quickjs.c:52038
        if (JS_ToInt64SatFree(ctx, &val, prop))
    8003ebca:	102c                	addi	a1,sp,40
    8003ebcc:	8526                	mv	a0,s1
    8003ebce:	f46e50ef          	jal	ra,80024314 <JS_ToInt64SatFree>
    8003ebd2:	e8051ae3          	bnez	a0,8003ea66 <js_bigdecimal_fop+0xaa>
quickjs-nuttx/quickjs.c:52040
        if (val < 0 || val > BF_PREC_MAX) {
    8003ebd6:	7b22                	ld	s6,40(sp)
    8003ebd8:	57ed                	li	a5,-5
    8003ebda:	8389                	srli	a5,a5,0x2
quickjs-nuttx/quickjs.c:52046
        fe->flags |= BF_FLAG_RADPNT_PREC;
    8003ebdc:	010beb93          	ori	s7,s7,16
quickjs-nuttx/quickjs.c:52040
        if (val < 0 || val > BF_PREC_MAX) {
    8003ebe0:	f967e7e3          	bltu	a5,s6,8003eb6e <js_bigdecimal_fop+0x1b2>
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52099
    res = JS_NewBigDecimal(ctx);
    8003ebe4:	8526                	mv	a0,s1
    8003ebe6:	890dc0ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
    8003ebea:	f0aa                	sd	a0,96(sp)
    8003ebec:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:52100
    if (JS_IsException(res)) {
    8003ebee:	0005871b          	sext.w	a4,a1
    8003ebf2:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:52099
    res = JS_NewBigDecimal(ctx);
    8003ebf4:	89aa                	mv	s3,a0
    8003ebf6:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:52100
    if (JS_IsException(res)) {
    8003ebf8:	e6f707e3          	beq	a4,a5,8003ea66 <js_bigdecimal_fop+0xaa>
    8003ebfc:	000c079b          	sext.w	a5,s8
    8003ec00:	4751                	li	a4,20
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    8003ec02:	00840593          	addi	a1,s0,8
JS_GetBigDecimal():
quickjs-nuttx/quickjs.c:1163
    return &p->num;
    8003ec06:	00898d13          	addi	s10,s3,8
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52107
    switch (magic) {
    8003ec0a:	0ef76663          	bltu	a4,a5,8003ecf6 <js_bigdecimal_fop+0x33a>
    8003ec0e:	020c1793          	slli	a5,s8,0x20
    8003ec12:	01e7dc13          	srli	s8,a5,0x1e
    8003ec16:	0002e717          	auipc	a4,0x2e
    8003ec1a:	51e70713          	addi	a4,a4,1310 # 8006d134 <qjsc_repl+0x7b84>
    8003ec1e:	9c3a                	add	s8,s8,a4
    8003ec20:	000c2783          	lw	a5,0(s8)
    8003ec24:	97ba                	add	a5,a5,a4
    8003ec26:	8782                	jr	a5
js_bigdecimal_get_env():
quickjs-nuttx/quickjs.c:52050
        JS_ThrowTypeError(ctx, "precision must be present");
    8003ec28:	0002e597          	auipc	a1,0x2e
    8003ec2c:	4f058593          	addi	a1,a1,1264 # 8006d118 <qjsc_repl+0x7b68>
quickjs-nuttx/quickjs.c:52049
    if (!has_prec) {
    8003ec30:	fa091ae3          	bnez	s2,8003ebe4 <js_bigdecimal_fop+0x228>
    8003ec34:	b56d                	j	8003eade <js_bigdecimal_fop+0x122>
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52093
    fe->prec = BF_PREC_INF;
    8003ec36:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:52092
    fe->flags = BF_RNDZ;
    8003ec38:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:52093
    fe->prec = BF_PREC_INF;
    8003ec3a:	002b5b13          	srli	s6,s6,0x2
    8003ec3e:	b75d                	j	8003ebe4 <js_bigdecimal_fop+0x228>
quickjs-nuttx/quickjs.c:52109
        ret = bfdec_add(r, a, b, fe->prec, fe->flags);
    8003ec40:	875e                	mv	a4,s7
    8003ec42:	86da                	mv	a3,s6
    8003ec44:	8666                	mv	a2,s9
    8003ec46:	856a                	mv	a0,s10
    8003ec48:	29a1c0ef          	jal	ra,8005aee2 <bfdec_add>
quickjs-nuttx/quickjs.c:52112
        ret = bfdec_sub(r, a, b, fe->prec, fe->flags);
    8003ec4c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:52134
    JS_FreeValue(ctx, op1);
    8003ec4e:	75c2                	ld	a1,48(sp)
    8003ec50:	7662                	ld	a2,56(sp)
    8003ec52:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:52136
    ret &= BF_ST_MEM_ERROR | BF_ST_DIVIDE_ZERO | BF_ST_INVALID_OP |
    8003ec54:	02747413          	andi	s0,s0,39
quickjs-nuttx/quickjs.c:52134
    JS_FreeValue(ctx, op1);
    8003ec58:	b47cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52135
    JS_FreeValue(ctx, op2);
    8003ec5c:	85d2                	mv	a1,s4
    8003ec5e:	8656                	mv	a2,s5
    8003ec60:	8526                	mv	a0,s1
    8003ec62:	b3dcc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52138
    if (ret != 0) {
    8003ec66:	c851                	beqz	s0,8003ecfa <js_bigdecimal_fop+0x33e>
quickjs-nuttx/quickjs.c:52139
        JS_FreeValue(ctx, res);
    8003ec68:	7586                	ld	a1,96(sp)
    8003ec6a:	7626                	ld	a2,104(sp)
    8003ec6c:	8526                	mv	a0,s1
    8003ec6e:	b31cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52140
        return throw_bf_exception(ctx, ret);
    8003ec72:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:52144
}
    8003ec74:	6452                	ld	s0,272(sp)
    8003ec76:	60f2                	ld	ra,280(sp)
    8003ec78:	6912                	ld	s2,256(sp)
    8003ec7a:	79ee                	ld	s3,248(sp)
    8003ec7c:	7a4e                	ld	s4,240(sp)
    8003ec7e:	7aae                	ld	s5,232(sp)
    8003ec80:	7b0e                	ld	s6,224(sp)
    8003ec82:	6bee                	ld	s7,216(sp)
    8003ec84:	6c4e                	ld	s8,208(sp)
    8003ec86:	6cae                	ld	s9,200(sp)
    8003ec88:	6d0e                	ld	s10,192(sp)
    8003ec8a:	7dea                	ld	s11,184(sp)
quickjs-nuttx/quickjs.c:52140
        return throw_bf_exception(ctx, ret);
    8003ec8c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:52144
}
    8003ec8e:	64b2                	ld	s1,264(sp)
    8003ec90:	6115                	addi	sp,sp,288
quickjs-nuttx/quickjs.c:52140
        return throw_bf_exception(ctx, ret);
    8003ec92:	f34df06f          	j	8001e3c6 <throw_bf_exception>
quickjs-nuttx/quickjs.c:52112
        ret = bfdec_sub(r, a, b, fe->prec, fe->flags);
    8003ec96:	875e                	mv	a4,s7
    8003ec98:	86da                	mv	a3,s6
    8003ec9a:	8666                	mv	a2,s9
    8003ec9c:	856a                	mv	a0,s10
    8003ec9e:	2501c0ef          	jal	ra,8005aeee <bfdec_sub>
    8003eca2:	b76d                	j	8003ec4c <js_bigdecimal_fop+0x290>
quickjs-nuttx/quickjs.c:52115
        ret = bfdec_mul(r, a, b, fe->prec, fe->flags);
    8003eca4:	875e                	mv	a4,s7
    8003eca6:	86da                	mv	a3,s6
    8003eca8:	8666                	mv	a2,s9
    8003ecaa:	856a                	mv	a0,s10
    8003ecac:	24e1c0ef          	jal	ra,8005aefa <bfdec_mul>
    8003ecb0:	bf71                	j	8003ec4c <js_bigdecimal_fop+0x290>
quickjs-nuttx/quickjs.c:52118
        ret = bfdec_div(r, a, b, fe->prec, fe->flags);
    8003ecb2:	875e                	mv	a4,s7
    8003ecb4:	86da                	mv	a3,s6
    8003ecb6:	8666                	mv	a2,s9
    8003ecb8:	856a                	mv	a0,s10
    8003ecba:	40c1c0ef          	jal	ra,8005b0c6 <bfdec_div>
    8003ecbe:	b779                	j	8003ec4c <js_bigdecimal_fop+0x290>
quickjs-nuttx/quickjs.c:52121
        ret = bfdec_rem(r, a, b, fe->prec, fe->flags, BF_RNDZ);
    8003ecc0:	4785                	li	a5,1
    8003ecc2:	875e                	mv	a4,s7
    8003ecc4:	86da                	mv	a3,s6
    8003ecc6:	8666                	mv	a2,s9
    8003ecc8:	856a                	mv	a0,s10
    8003ecca:	6a01c0ef          	jal	ra,8005b36a <bfdec_rem>
    8003ecce:	bfbd                	j	8003ec4c <js_bigdecimal_fop+0x290>
quickjs-nuttx/quickjs.c:52124
        ret = bfdec_sqrt(r, a, fe->prec, fe->flags);
    8003ecd0:	86de                	mv	a3,s7
    8003ecd2:	865a                	mv	a2,s6
    8003ecd4:	856a                	mv	a0,s10
    8003ecd6:	6da1c0ef          	jal	ra,8005b3b0 <bfdec_sqrt>
    8003ecda:	bf8d                	j	8003ec4c <js_bigdecimal_fop+0x290>
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8003ecdc:	856a                	mv	a0,s10
    8003ecde:	344190ef          	jal	ra,80058022 <bf_set>
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52128
        if (!(ret & BF_ST_MEM_ERROR))
    8003ece2:	02057793          	andi	a5,a0,32
bfdec_set():
quickjs-nuttx/libbf.h:469
    8003ece6:	842a                	mv	s0,a0
js_bigdecimal_fop():
quickjs-nuttx/quickjs.c:52128
    8003ece8:	f3bd                	bnez	a5,8003ec4e <js_bigdecimal_fop+0x292>
quickjs-nuttx/quickjs.c:52129
            ret = bfdec_round(r, fe->prec, fe->flags);
    8003ecea:	865e                	mv	a2,s7
    8003ecec:	85da                	mv	a1,s6
    8003ecee:	856a                	mv	a0,s10
    8003ecf0:	24d1b0ef          	jal	ra,8005a73c <bfdec_round>
    8003ecf4:	bfa1                	j	8003ec4c <js_bigdecimal_fop+0x290>
quickjs-nuttx/quickjs.c:52132
        abort();
    8003ecf6:	68d230ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:52142
        return res;
    8003ecfa:	f8ce                	sd	s3,112(sp)
    8003ecfc:	fcca                	sd	s2,120(sp)
    8003ecfe:	b309                	j	8003ea00 <js_bigdecimal_fop+0x44>

000000008003ed00 <JS_InstantiateFunctionListItem.isra.0>:
JS_InstantiateFunctionListItem():
quickjs-nuttx/quickjs.c:36710
static int JS_InstantiateFunctionListItem(JSContext *ctx, JSValueConst obj,
    8003ed00:	7115                	addi	sp,sp,-224
    8003ed02:	e9a2                	sd	s0,208(sp)
    8003ed04:	ed86                	sd	ra,216(sp)
    8003ed06:	e5a6                	sd	s1,200(sp)
    8003ed08:	e1ca                	sd	s2,192(sp)
    8003ed0a:	fd4e                	sd	s3,184(sp)
    8003ed0c:	f952                	sd	s4,176(sp)
quickjs-nuttx/quickjs.c:36715
    int prop_flags = e->prop_flags;
    8003ed0e:	00874983          	lbu	s3,8(a4)
quickjs-nuttx/quickjs.c:36710
static int JS_InstantiateFunctionListItem(JSContext *ctx, JSValueConst obj,
    8003ed12:	843a                	mv	s0,a4
    8003ed14:	00974703          	lbu	a4,9(a4)
    8003ed18:	e82e                	sd	a1,16(sp)
    8003ed1a:	ec32                	sd	a2,24(sp)
    8003ed1c:	47a5                	li	a5,9
    8003ed1e:	0ce7e663          	bltu	a5,a4,8003edea <JS_InstantiateFunctionListItem.isra.0+0xea>
    8003ed22:	00271793          	slli	a5,a4,0x2
    8003ed26:	0002e717          	auipc	a4,0x2e
    8003ed2a:	47270713          	addi	a4,a4,1138 # 8006d198 <qjsc_repl+0x7be8>
    8003ed2e:	97ba                	add	a5,a5,a4
    8003ed30:	439c                	lw	a5,0(a5)
    8003ed32:	84aa                	mv	s1,a0
    8003ed34:	8936                	mv	s2,a3
    8003ed36:	97ba                	add	a5,a5,a4
    8003ed38:	8782                	jr	a5
quickjs-nuttx/quickjs.c:36720
            JSAtom atom1 = find_atom(ctx, e->u.alias.name);
    8003ed3a:	680c                	ld	a1,16(s0)
    8003ed3c:	945e00ef          	jal	ra,8001f680 <find_atom>
quickjs-nuttx/quickjs.c:36721
            switch (e->u.alias.base) {
    8003ed40:	4c1c                	lw	a5,24(s0)
quickjs-nuttx/quickjs.c:36720
            JSAtom atom1 = find_atom(ctx, e->u.alias.name);
    8003ed42:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:36721
            switch (e->u.alias.base) {
    8003ed46:	c3bd                	beqz	a5,8003edac <JS_InstantiateFunctionListItem.isra.0+0xac>
    8003ed48:	4705                	li	a4,1
    8003ed4a:	08e78163          	beq	a5,a4,8003edcc <JS_InstantiateFunctionListItem.isra.0+0xcc>
    8003ed4e:	577d                	li	a4,-1
    8003ed50:	08e79d63          	bne	a5,a4,8003edea <JS_InstantiateFunctionListItem.isra.0+0xea>
quickjs-nuttx/quickjs.c:36723
                val = JS_GetProperty(ctx, obj, atom1);
    8003ed54:	6742                	ld	a4,16(sp)
    8003ed56:	67e2                	ld	a5,24(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003ed58:	4801                	li	a6,0
    8003ed5a:	86d2                	mv	a3,s4
    8003ed5c:	85ba                	mv	a1,a4
    8003ed5e:	863e                	mv	a2,a5
    8003ed60:	8526                	mv	a0,s1
    8003ed62:	f0ba                	sd	a4,96(sp)
    8003ed64:	f4be                	sd	a5,104(sp)
    8003ed66:	d45d70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003ed6a:	f8aa                	sd	a0,112(sp)
    8003ed6c:	fcae                	sd	a1,120(sp)
    8003ed6e:	f02a                	sd	a0,32(sp)
    8003ed70:	f42e                	sd	a1,40(sp)
JS_InstantiateFunctionListItem():
quickjs-nuttx/quickjs.c:36734
            JS_FreeAtom(ctx, atom1);
    8003ed72:	8526                	mv	a0,s1
    8003ed74:	85d2                	mv	a1,s4
    8003ed76:	bd2cc0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:36735
            if (atom == JS_ATOM_Symbol_toPrimitive) {
    8003ed7a:	0d500793          	li	a5,213
    8003ed7e:	18f90d63          	beq	s2,a5,8003ef18 <JS_InstantiateFunctionListItem.isra.0+0x218>
quickjs-nuttx/quickjs.c:36738
            } else if (atom == JS_ATOM_Symbol_hasInstance) {
    8003ed82:	0de00793          	li	a5,222
    8003ed86:	00f91363          	bne	s2,a5,8003ed8c <JS_InstantiateFunctionListItem.isra.0+0x8c>
quickjs-nuttx/quickjs.c:36740
                prop_flags = 0;
    8003ed8a:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:36801
}
    8003ed8c:	644e                	ld	s0,208(sp)
quickjs-nuttx/quickjs.c:36799
    JS_DefinePropertyValue(ctx, obj, atom, val, prop_flags);
    8003ed8e:	7702                	ld	a4,32(sp)
    8003ed90:	77a2                	ld	a5,40(sp)
    8003ed92:	65c2                	ld	a1,16(sp)
    8003ed94:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:36801
}
    8003ed96:	60ee                	ld	ra,216(sp)
    8003ed98:	7a4a                	ld	s4,176(sp)
quickjs-nuttx/quickjs.c:36799
    JS_DefinePropertyValue(ctx, obj, atom, val, prop_flags);
    8003ed9a:	884e                	mv	a6,s3
    8003ed9c:	86ca                	mv	a3,s2
quickjs-nuttx/quickjs.c:36801
}
    8003ed9e:	79ea                	ld	s3,184(sp)
    8003eda0:	690e                	ld	s2,192(sp)
quickjs-nuttx/quickjs.c:36799
    JS_DefinePropertyValue(ctx, obj, atom, val, prop_flags);
    8003eda2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36801
}
    8003eda4:	64ae                	ld	s1,200(sp)
    8003eda6:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:36799
    JS_DefinePropertyValue(ctx, obj, atom, val, prop_flags);
    8003eda8:	c84d906f          	j	8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:36726
                val = JS_GetProperty(ctx, ctx->global_obj, atom1);
    8003edac:	1684b703          	ld	a4,360(s1)
    8003edb0:	1704b783          	ld	a5,368(s1)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003edb4:	4801                	li	a6,0
    8003edb6:	86d2                	mv	a3,s4
    8003edb8:	85ba                	mv	a1,a4
    8003edba:	863e                	mv	a2,a5
    8003edbc:	8526                	mv	a0,s1
    8003edbe:	f8ba                	sd	a4,112(sp)
    8003edc0:	fcbe                	sd	a5,120(sp)
    8003edc2:	ce9d70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003edc6:	f0aa                	sd	a0,96(sp)
    8003edc8:	f4ae                	sd	a1,104(sp)
    8003edca:	b755                	j	8003ed6e <JS_InstantiateFunctionListItem.isra.0+0x6e>
JS_InstantiateFunctionListItem():
quickjs-nuttx/quickjs.c:36729
                val = JS_GetProperty(ctx, ctx->class_proto[JS_CLASS_ARRAY], atom1);
    8003edcc:	60bc                	ld	a5,64(s1)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003edce:	4801                	li	a6,0
    8003edd0:	86d2                	mv	a3,s4
    8003edd2:	7398                	ld	a4,32(a5)
    8003edd4:	8526                	mv	a0,s1
    8003edd6:	f8ba                	sd	a4,112(sp)
    8003edd8:	779c                	ld	a5,40(a5)
    8003edda:	85ba                	mv	a1,a4
    8003eddc:	863e                	mv	a2,a5
    8003edde:	fcbe                	sd	a5,120(sp)
    8003ede0:	ccbd70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003ede4:	e8aa                	sd	a0,80(sp)
    8003ede6:	ecae                	sd	a1,88(sp)
    8003ede8:	b759                	j	8003ed6e <JS_InstantiateFunctionListItem.isra.0+0x6e>
JS_InstantiateFunctionListItem():
quickjs-nuttx/quickjs.c:36732
                abort();
    8003edea:	599230ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:36745
        if (atom == JS_ATOM_Symbol_toPrimitive) {
    8003edee:	0d500793          	li	a5,213
    8003edf2:	02f68763          	beq	a3,a5,8003ee20 <JS_InstantiateFunctionListItem.isra.0+0x120>
quickjs-nuttx/quickjs.c:36748
        } else if (atom == JS_ATOM_Symbol_hasInstance) {
    8003edf6:	0de00793          	li	a5,222
    8003edfa:	00f69363          	bne	a3,a5,8003ee00 <JS_InstantiateFunctionListItem.isra.0+0x100>
quickjs-nuttx/quickjs.c:36750
            prop_flags = 0;
    8003edfe:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:36793
        JS_DefineAutoInitProperty(ctx, obj, atom, JS_AUTOINIT_ID_PROP,
    8003ee00:	87a2                	mv	a5,s0
quickjs-nuttx/quickjs.c:36801
}
    8003ee02:	644e                	ld	s0,208(sp)
quickjs-nuttx/quickjs.c:36793
        JS_DefineAutoInitProperty(ctx, obj, atom, JS_AUTOINIT_ID_PROP,
    8003ee04:	65c2                	ld	a1,16(sp)
    8003ee06:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:36801
}
    8003ee08:	60ee                	ld	ra,216(sp)
    8003ee0a:	7a4a                	ld	s4,176(sp)
quickjs-nuttx/quickjs.c:36793
        JS_DefineAutoInitProperty(ctx, obj, atom, JS_AUTOINIT_ID_PROP,
    8003ee0c:	884e                	mv	a6,s3
    8003ee0e:	86ca                	mv	a3,s2
quickjs-nuttx/quickjs.c:36801
}
    8003ee10:	79ea                	ld	s3,184(sp)
    8003ee12:	690e                	ld	s2,192(sp)
quickjs-nuttx/quickjs.c:36793
        JS_DefineAutoInitProperty(ctx, obj, atom, JS_AUTOINIT_ID_PROP,
    8003ee14:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36801
}
    8003ee16:	64ae                	ld	s1,200(sp)
quickjs-nuttx/quickjs.c:36793
        JS_DefineAutoInitProperty(ctx, obj, atom, JS_AUTOINIT_ID_PROP,
    8003ee18:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:36801
}
    8003ee1a:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:36793
        JS_DefineAutoInitProperty(ctx, obj, atom, JS_AUTOINIT_ID_PROP,
    8003ee1c:	b9fdc06f          	j	8001b9ba <JS_DefineAutoInitProperty>
quickjs-nuttx/quickjs.c:36747
            prop_flags = JS_PROP_CONFIGURABLE;
    8003ee20:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:36752
        JS_DefineAutoInitProperty(ctx, obj, atom, JS_AUTOINIT_ID_PROP,
    8003ee22:	bff9                	j	8003ee00 <JS_InstantiateFunctionListItem.isra.0+0x100>
quickjs-nuttx/quickjs.c:36761
            getter = JS_UNDEFINED;
    8003ee24:	478d                	li	a5,3
    8003ee26:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:36762
            if (e->u.getset.get.generic) {
    8003ee28:	681c                	ld	a5,16(s0)
quickjs-nuttx/quickjs.c:36761
            getter = JS_UNDEFINED;
    8003ee2a:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:36762
            if (e->u.getset.get.generic) {
    8003ee2c:	cf85                	beqz	a5,8003ee64 <JS_InstantiateFunctionListItem.isra.0+0x164>
quickjs-nuttx/quickjs.c:36763
                snprintf(buf, sizeof(buf), "get %s", e->name);
    8003ee2e:	6014                	ld	a3,0(s0)
    8003ee30:	04000593          	li	a1,64
    8003ee34:	0002e617          	auipc	a2,0x2e
    8003ee38:	35460613          	addi	a2,a2,852 # 8006d188 <qjsc_repl+0x7bd8>
    8003ee3c:	1888                	addi	a0,sp,112
    8003ee3e:	402220ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:36764
                getter = JS_NewCFunction2(ctx, e->u.getset.get.generic,
    8003ee42:	00944683          	lbu	a3,9(s0)
    8003ee46:	4789                	li	a5,2
    8003ee48:	680c                	ld	a1,16(s0)
    8003ee4a:	4729                	li	a4,10
    8003ee4c:	00f68363          	beq	a3,a5,8003ee52 <JS_InstantiateFunctionListItem.isra.0+0x152>
    8003ee50:	4721                	li	a4,8
    8003ee52:	00a41783          	lh	a5,10(s0)
    8003ee56:	4681                	li	a3,0
    8003ee58:	1890                	addi	a2,sp,112
    8003ee5a:	8526                	mv	a0,s1
    8003ee5c:	ca7f10ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8003ee60:	e8aa                	sd	a0,80(sp)
    8003ee62:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:36768
            setter = JS_UNDEFINED;
    8003ee64:	478d                	li	a5,3
    8003ee66:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:36769
            if (e->u.getset.set.generic) {
    8003ee68:	6c1c                	ld	a5,24(s0)
quickjs-nuttx/quickjs.c:36768
            setter = JS_UNDEFINED;
    8003ee6a:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:36769
            if (e->u.getset.set.generic) {
    8003ee6c:	cf85                	beqz	a5,8003eea4 <JS_InstantiateFunctionListItem.isra.0+0x1a4>
quickjs-nuttx/quickjs.c:36770
                snprintf(buf, sizeof(buf), "set %s", e->name);
    8003ee6e:	6014                	ld	a3,0(s0)
    8003ee70:	04000593          	li	a1,64
    8003ee74:	0002e617          	auipc	a2,0x2e
    8003ee78:	31c60613          	addi	a2,a2,796 # 8006d190 <qjsc_repl+0x7be0>
    8003ee7c:	1888                	addi	a0,sp,112
    8003ee7e:	3c2220ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:36771
                setter = JS_NewCFunction2(ctx, e->u.getset.set.generic,
    8003ee82:	00944683          	lbu	a3,9(s0)
    8003ee86:	4789                	li	a5,2
    8003ee88:	6c0c                	ld	a1,24(s0)
    8003ee8a:	472d                	li	a4,11
    8003ee8c:	00f68363          	beq	a3,a5,8003ee92 <JS_InstantiateFunctionListItem.isra.0+0x192>
    8003ee90:	4725                	li	a4,9
    8003ee92:	00a41783          	lh	a5,10(s0)
    8003ee96:	4685                	li	a3,1
    8003ee98:	1890                	addi	a2,sp,112
    8003ee9a:	8526                	mv	a0,s1
    8003ee9c:	c67f10ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8003eea0:	f0aa                	sd	a0,96(sp)
    8003eea2:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:36775
            JS_DefinePropertyGetSet(ctx, obj, atom, getter, setter, prop_flags);
    8003eea4:	7806                	ld	a6,96(sp)
    8003eea6:	78a6                	ld	a7,104(sp)
    8003eea8:	6746                	ld	a4,80(sp)
    8003eeaa:	67e6                	ld	a5,88(sp)
    8003eeac:	65c2                	ld	a1,16(sp)
    8003eeae:	6662                	ld	a2,24(sp)
    8003eeb0:	e04e                	sd	s3,0(sp)
    8003eeb2:	86ca                	mv	a3,s2
    8003eeb4:	8526                	mv	a0,s1
    8003eeb6:	b45f80ef          	jal	ra,800379fa <JS_DefinePropertyGetSet>
quickjs-nuttx/quickjs.c:36801
}
    8003eeba:	60ee                	ld	ra,216(sp)
    8003eebc:	644e                	ld	s0,208(sp)
    8003eebe:	64ae                	ld	s1,200(sp)
    8003eec0:	690e                	ld	s2,192(sp)
    8003eec2:	79ea                	ld	s3,184(sp)
    8003eec4:	7a4a                	ld	s4,176(sp)
    8003eec6:	612d                	addi	sp,sp,224
    8003eec8:	8082                	ret
quickjs-nuttx/quickjs.c:36780
        val = JS_NewInt32(ctx, e->u.i32);
    8003eeca:	481c                	lw	a5,16(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003eecc:	c282                	sw	zero,68(sp)
    8003eece:	f402                	sd	zero,40(sp)
    8003eed0:	c0be                	sw	a5,64(sp)
    8003eed2:	6786                	ld	a5,64(sp)
    8003eed4:	f03e                	sd	a5,32(sp)
    8003eed6:	bd5d                	j	8003ed8c <JS_InstantiateFunctionListItem.isra.0+0x8c>
JS_InstantiateFunctionListItem():
quickjs-nuttx/quickjs.c:36783
        val = JS_NewInt64(ctx, e->u.i64);
    8003eed8:	6818                	ld	a4,16(s0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003eeda:	0007079b          	sext.w	a5,a4
    8003eede:	00f71d63          	bne	a4,a5,8003eef8 <JS_InstantiateFunctionListItem.isra.0+0x1f8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003eee2:	da02                	sw	zero,52(sp)
    8003eee4:	d83e                	sw	a5,48(sp)
    8003eee6:	7742                	ld	a4,48(sp)
    8003eee8:	fc82                	sd	zero,120(sp)
    8003eeea:	f8ba                	sd	a4,112(sp)
    8003eeec:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003eeee:	d8be                	sw	a5,112(sp)
    8003eef0:	37c6                	fld	fa5,112(sp)
    8003eef2:	f43a                	sd	a4,40(sp)
    8003eef4:	b03e                	fsd	fa5,32(sp)
    8003eef6:	bd59                	j	8003ed8c <JS_InstantiateFunctionListItem.isra.0+0x8c>
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003eef8:	d22777d3          	fcvt.d.l	fa5,a4
    8003eefc:	471d                	li	a4,7
    8003eefe:	e20787d3          	fmv.x.d	a5,fa5
JS_InstantiateFunctionListItem():
quickjs-nuttx/quickjs.h:230
    return v;
    8003ef02:	b8be                	fsd	fa5,112(sp)
    8003ef04:	2781                	sext.w	a5,a5
    8003ef06:	b7e5                	j	8003eeee <JS_InstantiateFunctionListItem.isra.0+0x1ee>
__JS_NewFloat64():
quickjs-nuttx/quickjs.h:230
    8003ef08:	281c                	fld	fa5,16(s0)
    8003ef0a:	479d                	li	a5,7
    8003ef0c:	b03e                	fsd	fa5,32(sp)
JS_InstantiateFunctionListItem():
quickjs-nuttx/quickjs.c:36789
        val = JS_UNDEFINED;
    8003ef0e:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:36790
        break;
    8003ef10:	bdb5                	j	8003ed8c <JS_InstantiateFunctionListItem.isra.0+0x8c>
quickjs-nuttx/quickjs.c:36789
        val = JS_UNDEFINED;
    8003ef12:	f002                	sd	zero,32(sp)
    8003ef14:	478d                	li	a5,3
    8003ef16:	bfe5                	j	8003ef0e <JS_InstantiateFunctionListItem.isra.0+0x20e>
quickjs-nuttx/quickjs.c:36737
                prop_flags = JS_PROP_CONFIGURABLE;
    8003ef18:	4985                	li	s3,1
    8003ef1a:	bd8d                	j	8003ed8c <JS_InstantiateFunctionListItem.isra.0+0x8c>

000000008003ef1c <JS_SetPropertyFunctionList>:
JS_SetPropertyFunctionList():
quickjs-nuttx/quickjs.c:36805
{
    8003ef1c:	7139                	addi	sp,sp,-64
    8003ef1e:	f822                	sd	s0,48(sp)
    8003ef20:	f426                	sd	s1,40(sp)
    8003ef22:	ec4e                	sd	s3,24(sp)
    8003ef24:	e852                	sd	s4,16(sp)
    8003ef26:	fc06                	sd	ra,56(sp)
    8003ef28:	f04a                	sd	s2,32(sp)
    8003ef2a:	84aa                	mv	s1,a0
    8003ef2c:	e02e                	sd	a1,0(sp)
    8003ef2e:	e432                	sd	a2,8(sp)
    8003ef30:	89ba                	mv	s3,a4
    8003ef32:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:36808
    for (i = 0; i < len; i++) {
    8003ef34:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:36808 (discriminator 1)
    8003ef36:	013a4a63          	blt	s4,s3,8003ef4a <JS_SetPropertyFunctionList+0x2e>
quickjs-nuttx/quickjs.c:36814
}
    8003ef3a:	70e2                	ld	ra,56(sp)
    8003ef3c:	7442                	ld	s0,48(sp)
    8003ef3e:	74a2                	ld	s1,40(sp)
    8003ef40:	7902                	ld	s2,32(sp)
    8003ef42:	69e2                	ld	s3,24(sp)
    8003ef44:	6a42                	ld	s4,16(sp)
    8003ef46:	6121                	addi	sp,sp,64
    8003ef48:	8082                	ret
quickjs-nuttx/quickjs.c:36810 (discriminator 3)
        JSAtom atom = find_atom(ctx, e->name);
    8003ef4a:	600c                	ld	a1,0(s0)
    8003ef4c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36808 (discriminator 3)
    for (i = 0; i < len; i++) {
    8003ef4e:	2a05                	addiw	s4,s4,1
quickjs-nuttx/quickjs.c:36810 (discriminator 3)
        JSAtom atom = find_atom(ctx, e->name);
    8003ef50:	f30e00ef          	jal	ra,8001f680 <find_atom>
quickjs-nuttx/quickjs.c:36811 (discriminator 3)
        JS_InstantiateFunctionListItem(ctx, obj, atom, e);
    8003ef54:	6582                	ld	a1,0(sp)
    8003ef56:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:36810 (discriminator 3)
        JSAtom atom = find_atom(ctx, e->name);
    8003ef58:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:36811 (discriminator 3)
        JS_InstantiateFunctionListItem(ctx, obj, atom, e);
    8003ef5c:	8722                	mv	a4,s0
    8003ef5e:	86ca                	mv	a3,s2
    8003ef60:	8526                	mv	a0,s1
    8003ef62:	d9fff0ef          	jal	ra,8003ed00 <JS_InstantiateFunctionListItem.isra.0>
quickjs-nuttx/quickjs.c:36812 (discriminator 3)
        JS_FreeAtom(ctx, atom);
    8003ef66:	85ca                	mv	a1,s2
    8003ef68:	8526                	mv	a0,s1
    8003ef6a:	9decc0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:36808 (discriminator 3)
    for (i = 0; i < len; i++) {
    8003ef6e:	02040413          	addi	s0,s0,32
    8003ef72:	b7d1                	j	8003ef36 <JS_SetPropertyFunctionList+0x1a>

000000008003ef74 <JS_InstantiateFunctionListItem2>:
JS_InstantiateFunctionListItem2():
quickjs-nuttx/quickjs.c:36688
{
    8003ef74:	7139                	addi	sp,sp,-64
    8003ef76:	f822                	sd	s0,48(sp)
    8003ef78:	fc06                	sd	ra,56(sp)
    8003ef7a:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:36692
    switch(e->def_type) {
    8003ef7c:	0096c783          	lbu	a5,9(a3)
    8003ef80:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:36688
{
    8003ef82:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:36692
    switch(e->def_type) {
    8003ef84:	02e78463          	beq	a5,a4,8003efac <JS_InstantiateFunctionListItem2+0x38>
    8003ef88:	4721                	li	a4,8
    8003ef8a:	02e78a63          	beq	a5,a4,8003efbe <JS_InstantiateFunctionListItem2+0x4a>
    8003ef8e:	e795                	bnez	a5,8003efba <JS_InstantiateFunctionListItem2+0x46>
quickjs-nuttx/quickjs.c:36694
        val = JS_NewCFunction2(ctx, e->u.func.cfunc.generic,
    8003ef90:	6010                	ld	a2,0(s0)
    8003ef92:	6c0c                	ld	a1,24(s0)
quickjs-nuttx/quickjs.c:36708
}
    8003ef94:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:36694
        val = JS_NewCFunction2(ctx, e->u.func.cfunc.generic,
    8003ef96:	00a69783          	lh	a5,10(a3)
    8003ef9a:	0116c703          	lbu	a4,17(a3)
quickjs-nuttx/quickjs.c:36708
}
    8003ef9e:	70e2                	ld	ra,56(sp)
    8003efa0:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:36694
        val = JS_NewCFunction2(ctx, e->u.func.cfunc.generic,
    8003efa2:	0106c683          	lbu	a3,16(a3)
quickjs-nuttx/quickjs.c:36708
}
    8003efa6:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:36694
        val = JS_NewCFunction2(ctx, e->u.func.cfunc.generic,
    8003efa8:	b5bf106f          	j	80030b02 <JS_NewCFunction2>
quickjs-nuttx/quickjs.c:36708
}
    8003efac:	7442                	ld	s0,48(sp)
    8003efae:	70e2                	ld	ra,56(sp)
    8003efb0:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:36698
        val = JS_NewAtomString(ctx, e->u.str);
    8003efb2:	6a8c                	ld	a1,16(a3)
quickjs-nuttx/quickjs.c:36708
}
    8003efb4:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:36698
        val = JS_NewAtomString(ctx, e->u.str);
    8003efb6:	d81e006f          	j	8001fd36 <JS_NewAtomString>
quickjs-nuttx/quickjs.c:36705
        abort();
    8003efba:	3c9230ef          	jal	ra,80062b82 <abort>
    8003efbe:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:36701
        val = JS_NewObject(ctx);
    8003efc0:	864dd0ef          	jal	ra,8001c024 <JS_NewObject>
quickjs-nuttx/quickjs.c:36702
        JS_SetPropertyFunctionList(ctx, val, e->u.prop_list.tab, e->u.prop_list.len);
    8003efc4:	4c18                	lw	a4,24(s0)
    8003efc6:	6814                	ld	a3,16(s0)
quickjs-nuttx/quickjs.c:36701
        val = JS_NewObject(ctx);
    8003efc8:	e02a                	sd	a0,0(sp)
    8003efca:	e42e                	sd	a1,8(sp)
    8003efcc:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:36702
        JS_SetPropertyFunctionList(ctx, val, e->u.prop_list.tab, e->u.prop_list.len);
    8003efce:	85aa                	mv	a1,a0
    8003efd0:	8526                	mv	a0,s1
    8003efd2:	f4bff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:36708
}
    8003efd6:	70e2                	ld	ra,56(sp)
    8003efd8:	7442                	ld	s0,48(sp)
    8003efda:	6502                	ld	a0,0(sp)
    8003efdc:	65a2                	ld	a1,8(sp)
    8003efde:	74a2                	ld	s1,40(sp)
    8003efe0:	6121                	addi	sp,sp,64
    8003efe2:	8082                	ret

000000008003efe4 <JS_NewContextRaw>:
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2122
{
    8003efe4:	7159                	addi	sp,sp,-112
quickjs-nuttx/quickjs.c:2126
    ctx = js_mallocz_rt(rt, sizeof(JSContext));
    8003efe6:	1d800593          	li	a1,472
quickjs-nuttx/quickjs.c:2122
{
    8003efea:	f0a2                	sd	s0,96(sp)
    8003efec:	eca6                	sd	s1,88(sp)
    8003efee:	f486                	sd	ra,104(sp)
    8003eff0:	e8ca                	sd	s2,80(sp)
    8003eff2:	e4ce                	sd	s3,72(sp)
    8003eff4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:2126
    ctx = js_mallocz_rt(rt, sizeof(JSContext));
    8003eff6:	bb5cb0ef          	jal	ra,8000abaa <js_mallocz_rt>
    8003effa:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:2127
    if (!ctx)
    8003effc:	c91d                	beqz	a0,8003f032 <JS_NewContextRaw+0x4e>
quickjs-nuttx/quickjs.c:2129
    ctx->header.ref_count = 1;
    8003effe:	4785                	li	a5,1
