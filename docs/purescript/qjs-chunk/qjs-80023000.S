    80022002:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.c:4032
            if (c < 0x80) {
    80022006:	00f64763          	blt	a2,a5,80022014 <JS_ToCStringLen2+0x198>
quickjs-nuttx/quickjs.c:4033
                *q++ = c;
    8002200a:	00f40023          	sb	a5,0(s0)
    8002200e:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:4030 (discriminator 2)
        for (pos = 0; pos < len; pos++) {
    80022010:	0685                	addi	a3,a3,1
    80022012:	bf69                	j	80021fac <JS_ToCStringLen2+0x130>
quickjs-nuttx/quickjs.c:4035
                *q++ = (c >> 6) | 0xc0;
    80022014:	4067571b          	sraiw	a4,a4,0x6
quickjs-nuttx/quickjs.c:4036
                *q++ = (c & 0x3f) | 0x80;
    80022018:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/quickjs.c:4035
                *q++ = (c >> 6) | 0xc0;
    8002201c:	fc076713          	ori	a4,a4,-64
quickjs-nuttx/quickjs.c:4036
                *q++ = (c & 0x3f) | 0x80;
    80022020:	f807e793          	ori	a5,a5,-128
quickjs-nuttx/quickjs.c:4035
                *q++ = (c >> 6) | 0xc0;
    80022024:	00e40023          	sb	a4,0(s0)
quickjs-nuttx/quickjs.c:4036
                *q++ = (c & 0x3f) | 0x80;
    80022028:	00f400a3          	sb	a5,1(s0)
    8002202c:	0409                	addi	s0,s0,2
    8002202e:	b7cd                	j	80022010 <JS_ToCStringLen2+0x194>
quickjs-nuttx/quickjs.c:4054
                if (c >= 0xd800 && c < 0xdc00) {
    80022030:	00fc87bb          	addw	a5,s9,a5
    80022034:	02f66a63          	bltu	a2,a5,80022068 <JS_ToCStringLen2+0x1ec>
quickjs-nuttx/quickjs.c:4055
                    if (pos < len && !cesu8) {
    80022038:	033c5863          	bge	s8,s3,80022068 <JS_ToCStringLen2+0x1ec>
quickjs-nuttx/quickjs.c:4055 (discriminator 1)
    8002203c:	020b9663          	bnez	s7,80022068 <JS_ToCStringLen2+0x1ec>
quickjs-nuttx/quickjs.c:4056
                        c1 = src[pos];
    80022040:	001c1793          	slli	a5,s8,0x1
    80022044:	97da                	add	a5,a5,s6
    80022046:	0007d683          	lhu	a3,0(a5)
quickjs-nuttx/quickjs.c:4057
                        if (c1 >= 0xdc00 && c1 < 0xe000) {
    8002204a:	00dd07bb          	addw	a5,s10,a3
    8002204e:	00f66d63          	bltu	a2,a5,80022068 <JS_ToCStringLen2+0x1ec>
quickjs-nuttx/quickjs.c:4060
                            c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    80022052:	00a5979b          	slliw	a5,a1,0xa
    80022056:	01b7f7b3          	and	a5,a5,s11
    8002205a:	3ff6f593          	andi	a1,a3,1023
    8002205e:	8fcd                	or	a5,a5,a1
    80022060:	65c1                	lui	a1,0x10
quickjs-nuttx/quickjs.c:4058
                            pos++;
    80022062:	00270c1b          	addiw	s8,a4,2
quickjs-nuttx/quickjs.c:4060
                            c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    80022066:	9dbd                	addw	a1,a1,a5
quickjs-nuttx/quickjs.c:4070
                q += unicode_to_utf8(q, c);
    80022068:	8522                	mv	a0,s0
    8002206a:	3632f0ef          	jal	ra,80051bcc <unicode_to_utf8>
    8002206e:	942a                	add	s0,s0,a0
    80022070:	3ff00613          	li	a2,1023
    80022074:	07f00813          	li	a6,127
    80022078:	b5f9                	j	80021f46 <JS_ToCStringLen2+0xca>

000000008002207a <JS_ToNumberHintFree>:
JS_ToNumberHintFree():
quickjs-nuttx/quickjs.c:10440
{
    8002207a:	7135                	addi	sp,sp,-160
    8002207c:	e922                	sd	s0,144(sp)
    8002207e:	e526                	sd	s1,136(sp)
    80022080:	e14a                	sd	s2,128(sp)
    80022082:	fcce                	sd	s3,120(sp)
    80022084:	f8d2                	sd	s4,112(sp)
    80022086:	f4d6                	sd	s5,104(sp)
    80022088:	f0da                	sd	s6,96(sp)
    8002208a:	e02e                	sd	a1,0(sp)
    8002208c:	ed06                	sd	ra,152(sp)
    8002208e:	aca2                	fsd	fs0,88(sp)
    80022090:	84aa                	mv	s1,a0
    80022092:	8936                	mv	s2,a3
    80022094:	8432                	mv	s0,a2
    80022096:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:10446
    switch(tag) {
    80022098:	5ad1                	li	s5,-12
    8002209a:	4b29                	li	s6,10
    8002209c:	00049a17          	auipc	s4,0x49
    800220a0:	a9ca0a13          	addi	s4,s4,-1380 # 8006ab38 <qjsc_repl+0x5588>
quickjs-nuttx/quickjs.c:10484
        if (JS_IsException(val))
    800220a4:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:10445
    tag = JS_VALUE_GET_NORM_TAG(val);
    800220a6:	0004079b          	sext.w	a5,s0
quickjs-nuttx/quickjs.c:10446
    switch(tag) {
    800220aa:	02faec63          	bltu	s5,a5,800220e2 <JS_ToNumberHintFree+0x68>
    800220ae:	470d                	li	a4,3
    800220b0:	00e78d63          	beq	a5,a4,800220ca <JS_ToNumberHintFree+0x50>
    800220b4:	04f76463          	bltu	a4,a5,800220fc <JS_ToNumberHintFree+0x82>
    800220b8:	c7b1                	beqz	a5,80022104 <JS_ToNumberHintFree+0x8a>
    800220ba:	0ce79063          	bne	a5,a4,8002217a <JS_ToNumberHintFree+0x100>
quickjs-nuttx/quickjs.c:10519
        JS_FreeValue(ctx, val);
    800220be:	c02e                	sw	a1,0(sp)
    800220c0:	6582                	ld	a1,0(sp)
    800220c2:	8622                	mv	a2,s0
    800220c4:	8526                	mv	a0,s1
    800220c6:	ed8e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10520
        ret = JS_NAN;
    800220ca:	00072797          	auipc	a5,0x72
    800220ce:	ab67b407          	fld	fs0,-1354(a5) # 80093b80 <_erodata+0xe>
    800220d2:	12847453          	fmul.d	fs0,fs0,fs0
    800220d6:	f20007d3          	fmv.d.x	fa5,zero
    800220da:	441d                	li	s0,7
    800220dc:	12f47453          	fmul.d	fs0,fs0,fa5
quickjs-nuttx/quickjs.c:10521
        break;
    800220e0:	a025                	j	80022108 <JS_ToNumberHintFree+0x8e>
    800220e2:	27ad                	addiw	a5,a5,11
    800220e4:	0007871b          	sext.w	a4,a5
    800220e8:	fceb6be3          	bltu	s6,a4,800220be <JS_ToNumberHintFree+0x44>
    800220ec:	02079713          	slli	a4,a5,0x20
    800220f0:	01e75793          	srli	a5,a4,0x1e
    800220f4:	97d2                	add	a5,a5,s4
    800220f6:	439c                	lw	a5,0(a5)
    800220f8:	97d2                	add	a5,a5,s4
    800220fa:	8782                	jr	a5
quickjs-nuttx/quickjs.c:10446
    switch(tag) {
    800220fc:	37e9                	addiw	a5,a5,-6
    800220fe:	4705                	li	a4,1
    80022100:	faf76fe3          	bltu	a4,a5,800220be <JS_ToNumberHintFree+0x44>
quickjs-nuttx/quickjs.c:10473
        ret = val;
    80022104:	c02e                	sw	a1,0(sp)
    80022106:	2402                	fld	fs0,0(sp)
quickjs-nuttx/quickjs.c:10523
    return ret;
    80022108:	b022                	fsd	fs0,32(sp)
    8002210a:	f422                	sd	s0,40(sp)
    8002210c:	a869                	j	800221a6 <JS_ToNumberHintFree+0x12c>
quickjs-nuttx/quickjs.c:10448
        if (flag != TON_FLAG_NUMERIC) {
    8002210e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:10449
            JS_FreeValue(ctx, val);
    80022110:	c02e                	sw	a1,0(sp)
quickjs-nuttx/quickjs.c:10448
        if (flag != TON_FLAG_NUMERIC) {
    80022112:	fef90ae3          	beq	s2,a5,80022106 <JS_ToNumberHintFree+0x8c>
quickjs-nuttx/quickjs.c:10449
            JS_FreeValue(ctx, val);
    80022116:	6582                	ld	a1,0(sp)
    80022118:	8622                	mv	a2,s0
    8002211a:	8526                	mv	a0,s1
    8002211c:	e82e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10450
            return JS_ThrowTypeError(ctx, "cannot convert bigint to number");
    80022120:	00049597          	auipc	a1,0x49
    80022124:	98858593          	addi	a1,a1,-1656 # 8006aaa8 <qjsc_repl+0x54f8>
quickjs-nuttx/quickjs.c:10524
}
    80022128:	644a                	ld	s0,144(sp)
    8002212a:	60ea                	ld	ra,152(sp)
    8002212c:	690a                	ld	s2,128(sp)
    8002212e:	79e6                	ld	s3,120(sp)
    80022130:	7a46                	ld	s4,112(sp)
    80022132:	7aa6                	ld	s5,104(sp)
    80022134:	7b06                	ld	s6,96(sp)
    80022136:	2466                	fld	fs0,88(sp)
quickjs-nuttx/quickjs.c:10517
        return JS_ThrowTypeError(ctx, "cannot convert symbol to number");
    80022138:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:10524
}
    8002213a:	64aa                	ld	s1,136(sp)
    8002213c:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:10517
        return JS_ThrowTypeError(ctx, "cannot convert symbol to number");
    8002213e:	d2ef606f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:10456
        if (flag != TON_FLAG_NUMERIC) {
    80022142:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:10457
            JS_FreeValue(ctx, val);
    80022144:	c02e                	sw	a1,0(sp)
quickjs-nuttx/quickjs.c:10456
        if (flag != TON_FLAG_NUMERIC) {
    80022146:	fcf900e3          	beq	s2,a5,80022106 <JS_ToNumberHintFree+0x8c>
quickjs-nuttx/quickjs.c:10457
            JS_FreeValue(ctx, val);
    8002214a:	6582                	ld	a1,0(sp)
    8002214c:	8622                	mv	a2,s0
    8002214e:	8526                	mv	a0,s1
    80022150:	e4ee90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10458
            return JS_ThrowTypeError(ctx, "cannot convert bigdecimal to number");
    80022154:	00049597          	auipc	a1,0x49
    80022158:	97458593          	addi	a1,a1,-1676 # 8006aac8 <qjsc_repl+0x5518>
    8002215c:	b7f1                	j	80022128 <JS_ToNumberHintFree+0xae>
quickjs-nuttx/quickjs.c:10463
        if (flag != TON_FLAG_NUMERIC) {
    8002215e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:10464
            JS_FreeValue(ctx, val);
    80022160:	c02e                	sw	a1,0(sp)
quickjs-nuttx/quickjs.c:10463
        if (flag != TON_FLAG_NUMERIC) {
    80022162:	faf902e3          	beq	s2,a5,80022106 <JS_ToNumberHintFree+0x8c>
quickjs-nuttx/quickjs.c:10464
            JS_FreeValue(ctx, val);
    80022166:	6582                	ld	a1,0(sp)
    80022168:	8622                	mv	a2,s0
    8002216a:	8526                	mv	a0,s1
    8002216c:	e32e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10465
            return JS_ThrowTypeError(ctx, "cannot convert bigfloat to number");
    80022170:	00049597          	auipc	a1,0x49
    80022174:	98058593          	addi	a1,a1,-1664 # 8006aaf0 <qjsc_repl+0x5540>
    80022178:	bf45                	j	80022128 <JS_ToNumberHintFree+0xae>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8002217a:	f802                	sd	zero,48(sp)
    8002217c:	d82e                	sw	a1,48(sp)
    8002217e:	3442                	fld	fs0,48(sp)
    80022180:	4401                	li	s0,0
    80022182:	b759                	j	80022108 <JS_ToNumberHintFree+0x8e>
JS_ToNumberHintFree():
quickjs-nuttx/quickjs.c:10483
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80022184:	c02e                	sw	a1,0(sp)
    80022186:	6582                	ld	a1,0(sp)
    80022188:	8622                	mv	a2,s0
    8002218a:	4685                	li	a3,1
    8002218c:	8526                	mv	a0,s1
    8002218e:	94ffd0ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    80022192:	842e                	mv	s0,a1
    80022194:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:10484
        if (JS_IsException(val))
    80022196:	0004079b          	sext.w	a5,s0
quickjs-nuttx/quickjs.c:10483
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    8002219a:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:10484
        if (JS_IsException(val))
    8002219e:	f13794e3          	bne	a5,s3,800220a6 <JS_ToNumberHintFree+0x2c>
quickjs-nuttx/quickjs.c:10485
            return JS_EXCEPTION;
    800221a2:	f002                	sd	zero,32(sp)
    800221a4:	f44e                	sd	s3,40(sp)
quickjs-nuttx/quickjs.c:10524
}
    800221a6:	60ea                	ld	ra,152(sp)
    800221a8:	644a                	ld	s0,144(sp)
    800221aa:	7502                	ld	a0,32(sp)
    800221ac:	75a2                	ld	a1,40(sp)
    800221ae:	64aa                	ld	s1,136(sp)
    800221b0:	690a                	ld	s2,128(sp)
    800221b2:	79e6                	ld	s3,120(sp)
    800221b4:	7a46                	ld	s4,112(sp)
    800221b6:	7aa6                	ld	s5,104(sp)
    800221b8:	7b06                	ld	s6,96(sp)
    800221ba:	2466                	fld	fs0,88(sp)
    800221bc:	610d                	addi	sp,sp,160
    800221be:	8082                	ret
quickjs-nuttx/quickjs.c:10493
            str = JS_ToCStringLen(ctx, &len, val);
    800221c0:	c02e                	sw	a1,0(sp)
    800221c2:	6602                	ld	a2,0(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    800221c4:	180c                	addi	a1,sp,48
    800221c6:	4701                	li	a4,0
    800221c8:	86a2                	mv	a3,s0
    800221ca:	8526                	mv	a0,s1
    800221cc:	e0b2                	sd	a2,64(sp)
    800221ce:	e422                	sd	s0,8(sp)
    800221d0:	e4a2                	sd	s0,72(sp)
    800221d2:	cabff0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
JS_ToNumberHintFree():
quickjs-nuttx/quickjs.c:10494
            JS_FreeValue(ctx, val);
    800221d6:	6582                	ld	a1,0(sp)
    800221d8:	6622                	ld	a2,8(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    800221da:	892a                	mv	s2,a0
JS_ToNumberHintFree():
quickjs-nuttx/quickjs.c:10494
    800221dc:	8526                	mv	a0,s1
    800221de:	dc0e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10495
            if (!str)
    800221e2:	00091663          	bnez	s2,800221ee <JS_ToNumberHintFree+0x174>
quickjs-nuttx/quickjs.c:10496
                return JS_EXCEPTION;
    800221e6:	4799                	li	a5,6
    800221e8:	f002                	sd	zero,32(sp)
    800221ea:	f43e                	sd	a5,40(sp)
    800221ec:	bf6d                	j	800221a6 <JS_ToNumberHintFree+0x12c>
quickjs-nuttx/quickjs.c:10498
            p += skip_spaces(p);
    800221ee:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:10497
            p = str;
    800221f0:	f04a                	sd	s2,32(sp)
quickjs-nuttx/quickjs.c:10498
            p += skip_spaces(p);
    800221f2:	a2de60ef          	jal	ra,80008c1e <skip_spaces>
    800221f6:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:10499
            if ((p - str) == len) {
    800221f8:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:10498
            p += skip_spaces(p);
    800221fa:	95aa                	add	a1,a1,a0
    800221fc:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:10499
            if ((p - str) == len) {
    800221fe:	41258733          	sub	a4,a1,s2
    80022202:	06f70563          	beq	a4,a5,8002226c <JS_ToNumberHintFree+0x1f2>
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    80022206:	4781                	li	a5,0
    80022208:	4711                	li	a4,4
    8002220a:	4681                	li	a3,0
    8002220c:	1010                	addi	a2,sp,32
    8002220e:	8526                	mv	a0,s1
    80022210:	e88fb0ef          	jal	ra,8001d898 <js_atof2>
    80022214:	e0aa                	sd	a0,64(sp)
    80022216:	e4ae                	sd	a1,72(sp)
    80022218:	e82a                	sd	a0,16(sp)
    8002221a:	ec2e                	sd	a1,24(sp)
JS_ToNumberHintFree():
quickjs-nuttx/quickjs.c:10504
                if (!JS_IsException(ret)) {
    8002221c:	0005871b          	sext.w	a4,a1
    80022220:	4799                	li	a5,6
    80022222:	f2050453          	fmv.d.x	fs0,a0
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    80022226:	842e                	mv	s0,a1
JS_ToNumberHintFree():
quickjs-nuttx/quickjs.c:10504
                if (!JS_IsException(ret)) {
    80022228:	02f70d63          	beq	a4,a5,80022262 <JS_ToNumberHintFree+0x1e8>
quickjs-nuttx/quickjs.c:10505
                    p += skip_spaces(p);
    8002222c:	7502                	ld	a0,32(sp)
    8002222e:	9f1e60ef          	jal	ra,80008c1e <skip_spaces>
    80022232:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:10506
                    if ((p - str) != len) {
    80022234:	7742                	ld	a4,48(sp)
quickjs-nuttx/quickjs.c:10505
                    p += skip_spaces(p);
    80022236:	97aa                	add	a5,a5,a0
    80022238:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:10506
                    if ((p - str) != len) {
    8002223a:	412787b3          	sub	a5,a5,s2
    8002223e:	02e78263          	beq	a5,a4,80022262 <JS_ToNumberHintFree+0x1e8>
quickjs-nuttx/quickjs.c:10507
                        JS_FreeValue(ctx, ret);
    80022242:	65c2                	ld	a1,16(sp)
    80022244:	6662                	ld	a2,24(sp)
    80022246:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:10508
                        ret = JS_NAN;
    80022248:	441d                	li	s0,7
quickjs-nuttx/quickjs.c:10507
                        JS_FreeValue(ctx, ret);
    8002224a:	d54e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10508
                        ret = JS_NAN;
    8002224e:	00072797          	auipc	a5,0x72
    80022252:	9327b407          	fld	fs0,-1742(a5) # 80093b80 <_erodata+0xe>
    80022256:	12847453          	fmul.d	fs0,fs0,fs0
    8002225a:	f20007d3          	fmv.d.x	fa5,zero
    8002225e:	12f47453          	fmul.d	fs0,fs0,fa5
quickjs-nuttx/quickjs.c:10512 (discriminator 2)
            JS_FreeCString(ctx, str);
    80022262:	85ca                	mv	a1,s2
    80022264:	8526                	mv	a0,s1
    80022266:	8d9ea0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:10514 (discriminator 2)
        break;
    8002226a:	bd79                	j	80022108 <JS_ToNumberHintFree+0x8e>
    8002226c:	f2000453          	fmv.d.x	fs0,zero
    80022270:	4401                	li	s0,0
    80022272:	bfc5                	j	80022262 <JS_ToNumberHintFree+0x1e8>
quickjs-nuttx/quickjs.c:10516
        JS_FreeValue(ctx, val);
    80022274:	c02e                	sw	a1,0(sp)
    80022276:	6582                	ld	a1,0(sp)
    80022278:	8622                	mv	a2,s0
    8002227a:	8526                	mv	a0,s1
    8002227c:	d22e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10517
        return JS_ThrowTypeError(ctx, "cannot convert symbol to number");
    80022280:	00049597          	auipc	a1,0x49
    80022284:	89858593          	addi	a1,a1,-1896 # 8006ab18 <qjsc_repl+0x5568>
    80022288:	b545                	j	80022128 <JS_ToNumberHintFree+0xae>

000000008002228a <JS_ToNumberFree>:
JS_ToNumberFree():
quickjs-nuttx/quickjs.c:10527
{
    8002228a:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:10528
    return JS_ToNumberHintFree(ctx, val, TON_FLAG_NUMBER);
    8002228c:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:10529
}
    8002228e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:10528
    return JS_ToNumberHintFree(ctx, val, TON_FLAG_NUMBER);
    80022290:	debff06f          	j	8002207a <JS_ToNumberHintFree>

0000000080022294 <JS_ToInt32Free>:
JS_ToInt32Free():
quickjs-nuttx/quickjs.c:10897
{
    80022294:	711d                	addi	sp,sp,-96
    80022296:	e8a2                	sd	s0,80(sp)
    80022298:	e4a6                	sd	s1,72(sp)
    8002229a:	e0ca                	sd	s2,64(sp)
    8002229c:	fc4e                	sd	s3,56(sp)
    8002229e:	f852                	sd	s4,48(sp)
    800222a0:	f456                	sd	s5,40(sp)
    800222a2:	f05a                	sd	s6,32(sp)
    800222a4:	ec86                	sd	ra,88(sp)
    800222a6:	892a                	mv	s2,a0
    800222a8:	84ae                	mv	s1,a1
    800222aa:	e032                	sd	a2,0(sp)
    800222ac:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:10903
    switch(tag) {
    800222ae:	499d                	li	s3,7
    800222b0:	5add                	li	s5,-9
    800222b2:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:10947
        if (JS_IsException(val)) {
    800222b4:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:10902
    tag = JS_VALUE_GET_NORM_TAG(val);
    800222b6:	0004079b          	sext.w	a5,s0
quickjs-nuttx/quickjs.c:10903
    switch(tag) {
    800222ba:	05378f63          	beq	a5,s3,80022318 <JS_ToInt32Free+0x84>
    800222be:	02f9ec63          	bltu	s3,a5,800222f6 <JS_ToInt32Free+0x62>
    800222c2:	04fb7863          	bgeu	s6,a5,80022312 <JS_ToInt32Free+0x7e>
quickjs-nuttx/quickjs.c:10946
        val = JS_ToNumberFree(ctx, val);
    800222c6:	6582                	ld	a1,0(sp)
    800222c8:	8622                	mv	a2,s0
    800222ca:	854a                	mv	a0,s2
    800222cc:	fbfff0ef          	jal	ra,8002228a <JS_ToNumberFree>
    800222d0:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:10947
        if (JS_IsException(val)) {
    800222d2:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:10946
        val = JS_ToNumberFree(ctx, val);
    800222d6:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10947
        if (JS_IsException(val)) {
    800222d8:	fd479fe3          	bne	a5,s4,800222b6 <JS_ToInt32Free+0x22>
quickjs-nuttx/quickjs.c:10948
            *pres = 0;
    800222dc:	0004a023          	sw	zero,0(s1)
quickjs-nuttx/quickjs.c:10949
            return -1;
    800222e0:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:10955
}
    800222e2:	60e6                	ld	ra,88(sp)
    800222e4:	6446                	ld	s0,80(sp)
    800222e6:	64a6                	ld	s1,72(sp)
    800222e8:	6906                	ld	s2,64(sp)
    800222ea:	79e2                	ld	s3,56(sp)
    800222ec:	7a42                	ld	s4,48(sp)
    800222ee:	7aa2                	ld	s5,40(sp)
    800222f0:	7b02                	ld	s6,32(sp)
    800222f2:	6125                	addi	sp,sp,96
    800222f4:	8082                	ret
quickjs-nuttx/quickjs.c:10903
    switch(tag) {
    800222f6:	fd5798e3          	bne	a5,s5,800222c6 <JS_ToInt32Free+0x32>
quickjs-nuttx/quickjs.c:10940
            bf_get_int32(&ret, &p->num, BF_GET_INT_MOD);
    800222fa:	6582                	ld	a1,0(sp)
    800222fc:	4605                	li	a2,1
    800222fe:	0868                	addi	a0,sp,28
    80022300:	05a1                	addi	a1,a1,8
    80022302:	4a9360ef          	jal	ra,80058faa <bf_get_int32>
quickjs-nuttx/quickjs.c:10941
            JS_FreeValue(ctx, val);
    80022306:	6582                	ld	a1,0(sp)
    80022308:	8622                	mv	a2,s0
    8002230a:	854a                	mv	a0,s2
    8002230c:	c92e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10943
        break;
    80022310:	a0b9                	j	8002235e <JS_ToInt32Free+0xca>
quickjs-nuttx/quickjs.c:10908
        ret = JS_VALUE_GET_INT(val);
    80022312:	4782                	lw	a5,0(sp)
quickjs-nuttx/quickjs.c:10927
                ret = v >> 32;
    80022314:	ce3e                	sw	a5,28(sp)
    80022316:	a0a1                	j	8002235e <JS_ToInt32Free+0xca>
quickjs-nuttx/quickjs.c:10915
            d = JS_VALUE_GET_FLOAT64(val);
    80022318:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:10919
            if (likely(e <= (1023 + 30))) {
    8002231a:	41d00693          	li	a3,1053
quickjs-nuttx/quickjs.c:10918
            e = (u.u64 >> 52) & 0x7ff;
    8002231e:	0347d713          	srli	a4,a5,0x34
    80022322:	7ff77713          	andi	a4,a4,2047
quickjs-nuttx/quickjs.c:10916
            u.d = d;
    80022326:	863e                	mv	a2,a5
quickjs-nuttx/quickjs.c:10919
            if (likely(e <= (1023 + 30))) {
    80022328:	00e6c763          	blt	a3,a4,80022336 <JS_ToInt32Free+0xa2>
quickjs-nuttx/quickjs.c:10921
                ret = (int32_t)d;
    8002232c:	f20787d3          	fmv.d.x	fa5,a5
    80022330:	c20797d3          	fcvt.w.d	a5,fa5,rtz
    80022334:	b7c5                	j	80022314 <JS_ToInt32Free+0x80>
quickjs-nuttx/quickjs.c:10922
            } else if (e <= (1023 + 30 + 53)) {
    80022336:	45200693          	li	a3,1106
    8002233a:	02e6c163          	blt	a3,a4,8002235c <JS_ToInt32Free+0xc8>
quickjs-nuttx/quickjs.c:10925
                v = (u.u64 & (((uint64_t)1 << 52) - 1)) | ((uint64_t)1 << 52);
    8002233e:	07b2                	slli	a5,a5,0xc
    80022340:	4685                	li	a3,1
    80022342:	83b1                	srli	a5,a5,0xc
    80022344:	16d2                	slli	a3,a3,0x34
    80022346:	8fd5                	or	a5,a5,a3
quickjs-nuttx/quickjs.c:10926
                v = v << ((e - 1023) - 52 + 32);
    80022348:	bed7071b          	addiw	a4,a4,-1043
    8002234c:	00e797b3          	sll	a5,a5,a4
quickjs-nuttx/quickjs.c:10927
                ret = v >> 32;
    80022350:	9781                	srai	a5,a5,0x20
quickjs-nuttx/quickjs.c:10929
                if (u.u64 >> 63)
    80022352:	fc0651e3          	bgez	a2,80022314 <JS_ToInt32Free+0x80>
quickjs-nuttx/quickjs.c:10930
                    ret = -ret;
    80022356:	40f007bb          	negw	a5,a5
    8002235a:	bf6d                	j	80022314 <JS_ToInt32Free+0x80>
quickjs-nuttx/quickjs.c:10932
                ret = 0; /* also handles NaN and +inf */
    8002235c:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs.c:10953
    *pres = ret;
    8002235e:	47f2                	lw	a5,28(sp)
quickjs-nuttx/quickjs.c:10954
    return 0;
    80022360:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:10953
    *pres = ret;
    80022362:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:10954
    return 0;
    80022364:	bfbd                	j	800222e2 <JS_ToInt32Free+0x4e>

0000000080022366 <js_get_length32>:
js_get_length32():
quickjs-nuttx/quickjs.c:38281
{
    80022366:	711d                	addi	sp,sp,-96
    80022368:	87b6                	mv	a5,a3
    8002236a:	8732                	mv	a4,a2
    8002236c:	e8a2                	sd	s0,80(sp)
    8002236e:	f832                	sd	a2,48(sp)
    80022370:	fc36                	sd	a3,56(sp)
    80022372:	842e                	mv	s0,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80022374:	4801                	li	a6,0
    80022376:	85b2                	mv	a1,a2
    80022378:	03000693          	li	a3,48
    8002237c:	863e                	mv	a2,a5
js_get_length32():
quickjs-nuttx/quickjs.c:38281
    8002237e:	e4a6                	sd	s1,72(sp)
    80022380:	ec86                	sd	ra,88(sp)
    80022382:	84aa                	mv	s1,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80022384:	f26f40ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
js_get_length32():
quickjs-nuttx/quickjs.c:38284
    if (JS_IsException(len_val)) {
    80022388:	0005871b          	sext.w	a4,a1
    8002238c:	4799                	li	a5,6
    8002238e:	00f70e63          	beq	a4,a5,800223aa <js_get_length32+0x44>
    80022392:	fc2e                	sd	a1,56(sp)
    80022394:	86ae                	mv	a3,a1
JS_ToUint32Free():
quickjs-nuttx/quickjs.c:10964
    return JS_ToInt32Free(ctx, (int32_t *)pres, val);
    80022396:	85a2                	mv	a1,s0
js_get_length32():
quickjs-nuttx/quickjs.c:38289
}
    80022398:	6446                	ld	s0,80(sp)
    8002239a:	f82a                	sd	a0,48(sp)
    8002239c:	60e6                	ld	ra,88(sp)
    8002239e:	862a                	mv	a2,a0
JS_ToUint32Free():
quickjs-nuttx/quickjs.c:10964
    return JS_ToInt32Free(ctx, (int32_t *)pres, val);
    800223a0:	8526                	mv	a0,s1
js_get_length32():
quickjs-nuttx/quickjs.c:38289
}
    800223a2:	64a6                	ld	s1,72(sp)
    800223a4:	6125                	addi	sp,sp,96
JS_ToUint32Free():
quickjs-nuttx/quickjs.c:10964
    return JS_ToInt32Free(ctx, (int32_t *)pres, val);
    800223a6:	eefff06f          	j	80022294 <JS_ToInt32Free>
js_get_length32():
quickjs-nuttx/quickjs.c:38289
}
    800223aa:	60e6                	ld	ra,88(sp)
quickjs-nuttx/quickjs.c:38285
        *pres = 0;
    800223ac:	00042023          	sw	zero,0(s0)
quickjs-nuttx/quickjs.c:38289
}
    800223b0:	6446                	ld	s0,80(sp)
    800223b2:	64a6                	ld	s1,72(sp)
    800223b4:	557d                	li	a0,-1
    800223b6:	6125                	addi	sp,sp,96
    800223b8:	8082                	ret

00000000800223ba <JS_ToInt32>:
JS_ToInt32():
quickjs-nuttx/quickjs.c:10958
{
    800223ba:	7139                	addi	sp,sp,-64
    800223bc:	f822                	sd	s0,48(sp)
    800223be:	f426                	sd	s1,40(sp)
    800223c0:	842a                	mv	s0,a0
    800223c2:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:10959
    return JS_ToInt32Free(ctx, pres, JS_DupValue(ctx, val));
    800223c4:	8532                	mv	a0,a2
    800223c6:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:10958
{
    800223c8:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:10959
    return JS_ToInt32Free(ctx, pres, JS_DupValue(ctx, val));
    800223ca:	850e80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800223ce:	862a                	mv	a2,a0
    800223d0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:10960
}
    800223d2:	7442                	ld	s0,48(sp)
    800223d4:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:10959
    return JS_ToInt32Free(ctx, pres, JS_DupValue(ctx, val));
    800223d6:	86ae                	mv	a3,a1
    800223d8:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:10960
}
    800223da:	74a2                	ld	s1,40(sp)
    800223dc:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:10959
    return JS_ToInt32Free(ctx, pres, JS_DupValue(ctx, val));
    800223de:	eb7ff06f          	j	80022294 <JS_ToInt32Free>

00000000800223e2 <js_string_codePointRange>:
js_string_codePointRange():
quickjs-nuttx/quickjs.c:41360
{
    800223e2:	7159                	addi	sp,sp,-112
    800223e4:	f0a2                	sd	s0,96(sp)
    800223e6:	eca6                	sd	s1,88(sp)
    800223e8:	f486                	sd	ra,104(sp)
    800223ea:	6310                	ld	a2,0(a4)
    800223ec:	6714                	ld	a3,8(a4)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    800223ee:	082c                	addi	a1,sp,24
js_string_codePointRange():
quickjs-nuttx/quickjs.c:41360
    800223f0:	84aa                	mv	s1,a0
    800223f2:	843a                	mv	s0,a4
    800223f4:	f832                	sd	a2,48(sp)
    800223f6:	fc36                	sd	a3,56(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    800223f8:	fc3ff0ef          	jal	ra,800223ba <JS_ToInt32>
js_string_codePointRange():
quickjs-nuttx/quickjs.c:41364
    if (JS_ToUint32(ctx, &start, argv[0]) ||
    800223fc:	e911                	bnez	a0,80022410 <js_string_codePointRange+0x2e>
    800223fe:	6810                	ld	a2,16(s0)
    80022400:	6c14                	ld	a3,24(s0)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688 (discriminator 1)
    80022402:	086c                	addi	a1,sp,28
    80022404:	8526                	mv	a0,s1
    80022406:	f832                	sd	a2,48(sp)
    80022408:	fc36                	sd	a3,56(sp)
    8002240a:	fb1ff0ef          	jal	ra,800223ba <JS_ToInt32>
js_string_codePointRange():
quickjs-nuttx/quickjs.c:41364 (discriminator 1)
    8002240e:	c919                	beqz	a0,80022424 <js_string_codePointRange+0x42>
quickjs-nuttx/quickjs.c:41366
        return JS_EXCEPTION;
    80022410:	4799                	li	a5,6
    80022412:	f002                	sd	zero,32(sp)
    80022414:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:41382 (discriminator 1)
}
    80022416:	70a6                	ld	ra,104(sp)
    80022418:	7406                	ld	s0,96(sp)
    8002241a:	7502                	ld	a0,32(sp)
    8002241c:	75a2                	ld	a1,40(sp)
    8002241e:	64e6                	ld	s1,88(sp)
    80022420:	6165                	addi	sp,sp,112
    80022422:	8082                	ret
quickjs-nuttx/quickjs.c:41367
    end = min_uint32(end, 0x10ffff + 1);
    80022424:	47f2                	lw	a5,28(sp)
min_uint32():
quickjs-nuttx/cutils.h:95
    if (a < b)
    80022426:	00110737          	lui	a4,0x110
    8002242a:	00e7e463          	bltu	a5,a4,80022432 <js_string_codePointRange+0x50>
quickjs-nuttx/cutils.h:98
        return b;
    8002242e:	001107b7          	lui	a5,0x110
js_string_codePointRange():
quickjs-nuttx/quickjs.c:41369
    if (start > end) {
    80022432:	4762                	lw	a4,24(sp)
quickjs-nuttx/quickjs.c:41367
    end = min_uint32(end, 0x10ffff + 1);
    80022434:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:41369
    if (start > end) {
    80022436:	00e7f363          	bgeu	a5,a4,8002243c <js_string_codePointRange+0x5a>
quickjs-nuttx/quickjs.c:41370
        start = end;
    8002243a:	cc3e                	sw	a5,24(sp)
quickjs-nuttx/quickjs.c:41372
    n = end - start;
    8002243c:	4762                	lw	a4,24(sp)
quickjs-nuttx/quickjs.c:41373
    if (end > 0x10000) {
    8002243e:	65c1                	lui	a1,0x10
quickjs-nuttx/quickjs.c:41372
    n = end - start;
    80022440:	40e7863b          	subw	a2,a5,a4
    80022444:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:41373
    if (end > 0x10000) {
    80022446:	00f5f963          	bgeu	a1,a5,80022458 <js_string_codePointRange+0x76>
quickjs-nuttx/quickjs.c:41374
        n += end - max_uint32(start, 0x10000);
    8002244a:	863a                	mv	a2,a4
    8002244c:	00b77363          	bgeu	a4,a1,80022452 <js_string_codePointRange+0x70>
    80022450:	6641                	lui	a2,0x10
    80022452:	40c7863b          	subw	a2,a5,a2
    80022456:	9e35                	addw	a2,a2,a3
quickjs-nuttx/quickjs.c:41376
    if (string_buffer_init2(ctx, b, n, end >= 0x100))
    80022458:	0ff00693          	li	a3,255
    8002245c:	00f6b6b3          	sltu	a3,a3,a5
    80022460:	180c                	addi	a1,sp,48
    80022462:	8526                	mv	a0,s1
    80022464:	ae1fb0ef          	jal	ra,8001df44 <string_buffer_init2>
    80022468:	f545                	bnez	a0,80022410 <js_string_codePointRange+0x2e>
quickjs-nuttx/quickjs.c:41378
    for(i = start; i < end; i++) {
    8002246a:	4462                	lw	s0,24(sp)
quickjs-nuttx/quickjs.c:41378 (discriminator 1)
    8002246c:	47f2                	lw	a5,28(sp)
    8002246e:	00f46863          	bltu	s0,a5,8002247e <js_string_codePointRange+0x9c>
quickjs-nuttx/quickjs.c:41381
    return string_buffer_end(b);
    80022472:	1808                	addi	a0,sp,48
    80022474:	82dfd0ef          	jal	ra,8001fca0 <string_buffer_end>
    80022478:	f02a                	sd	a0,32(sp)
    8002247a:	f42e                	sd	a1,40(sp)
    8002247c:	bf69                	j	80022416 <js_string_codePointRange+0x34>
quickjs-nuttx/quickjs.c:41379 (discriminator 3)
        string_buffer_putc(b, i);
    8002247e:	85a2                	mv	a1,s0
    80022480:	1808                	addi	a0,sp,48
    80022482:	8effc0ef          	jal	ra,8001ed70 <string_buffer_putc>
quickjs-nuttx/quickjs.c:41378 (discriminator 3)
    for(i = start; i < end; i++) {
    80022486:	2405                	addiw	s0,s0,1
    80022488:	b7d5                	j	8002246c <js_string_codePointRange+0x8a>

000000008002248a <js_math_clz32>:
js_math_clz32():
quickjs-nuttx/quickjs.c:43091
    if (JS_ToUint32(ctx, &a, argv[0]))
    8002248a:	6310                	ld	a2,0(a4)
    8002248c:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs.c:43088
{
    8002248e:	715d                	addi	sp,sp,-80
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    80022490:	086c                	addi	a1,sp,28
js_math_clz32():
quickjs-nuttx/quickjs.c:43088
    80022492:	e486                	sd	ra,72(sp)
    80022494:	f832                	sd	a2,48(sp)
    80022496:	fc36                	sd	a3,56(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    80022498:	f23ff0ef          	jal	ra,800223ba <JS_ToInt32>
js_math_clz32():
quickjs-nuttx/quickjs.c:43091
    if (JS_ToUint32(ctx, &a, argv[0]))
    8002249c:	c909                	beqz	a0,800224ae <js_math_clz32+0x24>
quickjs-nuttx/quickjs.c:43092
        return JS_EXCEPTION;
    8002249e:	4799                	li	a5,6
    800224a0:	f002                	sd	zero,32(sp)
    800224a2:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:43098 (discriminator 1)
}
    800224a4:	60a6                	ld	ra,72(sp)
    800224a6:	7502                	ld	a0,32(sp)
    800224a8:	75a2                	ld	a1,40(sp)
    800224aa:	6161                	addi	sp,sp,80
    800224ac:	8082                	ret
quickjs-nuttx/quickjs.c:43093
    if (a == 0)
    800224ae:	4572                	lw	a0,28(sp)
quickjs-nuttx/quickjs.c:43094
        r = 32;
    800224b0:	02000793          	li	a5,32
quickjs-nuttx/quickjs.c:43093
    if (a == 0)
    800224b4:	c519                	beqz	a0,800224c2 <js_math_clz32+0x38>
clz32():
quickjs-nuttx/cutils.h:120
    return __builtin_clz(a);
    800224b6:	1502                	slli	a0,a0,0x20
    800224b8:	9101                	srli	a0,a0,0x20
    800224ba:	9dde10ef          	jal	ra,80003e96 <__clzdi2>
js_math_clz32():
quickjs-nuttx/quickjs.c:43096
        r = clz32(a);
    800224be:	fe05079b          	addiw	a5,a0,-32
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800224c2:	da02                	sw	zero,52(sp)
    800224c4:	d83e                	sw	a5,48(sp)
    800224c6:	77c2                	ld	a5,48(sp)
    800224c8:	f402                	sd	zero,40(sp)
    800224ca:	f03e                	sd	a5,32(sp)
    800224cc:	bfe1                	j	800224a4 <js_math_clz32+0x1a>

00000000800224ce <js_math_imul>:
js_math_imul():
quickjs-nuttx/quickjs.c:43075
{
    800224ce:	711d                	addi	sp,sp,-96
    800224d0:	e8a2                	sd	s0,80(sp)
    800224d2:	e4a6                	sd	s1,72(sp)
    800224d4:	ec86                	sd	ra,88(sp)
quickjs-nuttx/quickjs.c:43078
    if (JS_ToInt32(ctx, &a, argv[0]))
    800224d6:	6310                	ld	a2,0(a4)
    800224d8:	6714                	ld	a3,8(a4)
    800224da:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:43075
{
    800224dc:	84aa                	mv	s1,a0
    800224de:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:43078
    if (JS_ToInt32(ctx, &a, argv[0]))
    800224e0:	edbff0ef          	jal	ra,800223ba <JS_ToInt32>
    800224e4:	c919                	beqz	a0,800224fa <js_math_imul+0x2c>
quickjs-nuttx/quickjs.c:43079
        return JS_EXCEPTION;
    800224e6:	4799                	li	a5,6
    800224e8:	f002                	sd	zero,32(sp)
    800224ea:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:43084 (discriminator 1)
}
    800224ec:	60e6                	ld	ra,88(sp)
    800224ee:	6446                	ld	s0,80(sp)
    800224f0:	7502                	ld	a0,32(sp)
    800224f2:	75a2                	ld	a1,40(sp)
    800224f4:	64a6                	ld	s1,72(sp)
    800224f6:	6125                	addi	sp,sp,96
    800224f8:	8082                	ret
quickjs-nuttx/quickjs.c:43080
    if (JS_ToInt32(ctx, &b, argv[1]))
    800224fa:	6810                	ld	a2,16(s0)
    800224fc:	6c14                	ld	a3,24(s0)
    800224fe:	086c                	addi	a1,sp,28
    80022500:	8526                	mv	a0,s1
    80022502:	eb9ff0ef          	jal	ra,800223ba <JS_ToInt32>
    80022506:	f165                	bnez	a0,800224e6 <js_math_imul+0x18>
quickjs-nuttx/quickjs.c:43083
    return JS_NewInt32(ctx, a * b);
    80022508:	47e2                	lw	a5,24(sp)
    8002250a:	4772                	lw	a4,28(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8002250c:	da02                	sw	zero,52(sp)
    8002250e:	f402                	sd	zero,40(sp)
js_math_imul():
quickjs-nuttx/quickjs.c:43083
    80022510:	02e787bb          	mulw	a5,a5,a4
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80022514:	d83e                	sw	a5,48(sp)
    80022516:	77c2                	ld	a5,48(sp)
    80022518:	f03e                	sd	a5,32(sp)
    8002251a:	bfc9                	j	800224ec <js_math_imul+0x1e>

000000008002251c <js_string_fromCharCode>:
js_string_fromCharCode():
quickjs-nuttx/quickjs.c:41267
{
    8002251c:	7119                	addi	sp,sp,-128
    8002251e:	e8d2                	sd	s4,80(sp)
quickjs-nuttx/quickjs.c:41271
    string_buffer_init(ctx, b, argc);
    80022520:	8636                	mv	a2,a3
    80022522:	180c                	addi	a1,sp,48
quickjs-nuttx/quickjs.c:41275
        if (JS_ToInt32(ctx, &c, argv[i]) || string_buffer_putc16(b, c & 0xffff)) {
    80022524:	6a41                	lui	s4,0x10
quickjs-nuttx/quickjs.c:41267
{
    80022526:	f8a2                	sd	s0,112(sp)
    80022528:	f4a6                	sd	s1,104(sp)
    8002252a:	f0ca                	sd	s2,96(sp)
    8002252c:	ecce                	sd	s3,88(sp)
    8002252e:	fc86                	sd	ra,120(sp)
    80022530:	892a                	mv	s2,a0
    80022532:	8436                	mv	s0,a3
    80022534:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:41273
    for(i = 0; i < argc; i++) {
    80022536:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:41271
    string_buffer_init(ctx, b, argc);
    80022538:	a45fb0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:41275
        if (JS_ToInt32(ctx, &c, argv[i]) || string_buffer_putc16(b, c & 0xffff)) {
    8002253c:	1a7d                	addi	s4,s4,-1
quickjs-nuttx/quickjs.c:41273 (discriminator 1)
    for(i = 0; i < argc; i++) {
    8002253e:	0004879b          	sext.w	a5,s1
    80022542:	0087c863          	blt	a5,s0,80022552 <js_string_fromCharCode+0x36>
quickjs-nuttx/quickjs.c:41280
    return string_buffer_end(b);
    80022546:	1808                	addi	a0,sp,48
    80022548:	f58fd0ef          	jal	ra,8001fca0 <string_buffer_end>
    8002254c:	f02a                	sd	a0,32(sp)
    8002254e:	f42e                	sd	a1,40(sp)
    80022550:	a00d                	j	80022572 <js_string_fromCharCode+0x56>
quickjs-nuttx/quickjs.c:41275
        if (JS_ToInt32(ctx, &c, argv[i]) || string_buffer_putc16(b, c & 0xffff)) {
    80022552:	00449793          	slli	a5,s1,0x4
    80022556:	97ce                	add	a5,a5,s3
    80022558:	6390                	ld	a2,0(a5)
    8002255a:	6794                	ld	a3,8(a5)
    8002255c:	086c                	addi	a1,sp,28
    8002255e:	854a                	mv	a0,s2
    80022560:	e5bff0ef          	jal	ra,800223ba <JS_ToInt32>
    80022564:	c10d                	beqz	a0,80022586 <js_string_fromCharCode+0x6a>
quickjs-nuttx/quickjs.c:41276
            string_buffer_free(b);
    80022566:	1808                	addi	a0,sp,48
    80022568:	abbe80ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:41277
            return JS_EXCEPTION;
    8002256c:	4799                	li	a5,6
    8002256e:	f002                	sd	zero,32(sp)
    80022570:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:41281 (discriminator 2)
}
    80022572:	70e6                	ld	ra,120(sp)
    80022574:	7446                	ld	s0,112(sp)
    80022576:	7502                	ld	a0,32(sp)
    80022578:	75a2                	ld	a1,40(sp)
    8002257a:	74a6                	ld	s1,104(sp)
    8002257c:	7906                	ld	s2,96(sp)
    8002257e:	69e6                	ld	s3,88(sp)
    80022580:	6a46                	ld	s4,80(sp)
    80022582:	6109                	addi	sp,sp,128
    80022584:	8082                	ret
quickjs-nuttx/quickjs.c:41275 (discriminator 1)
        if (JS_ToInt32(ctx, &c, argv[i]) || string_buffer_putc16(b, c & 0xffff)) {
    80022586:	45f2                	lw	a1,28(sp)
    80022588:	1808                	addi	a0,sp,48
    8002258a:	0485                	addi	s1,s1,1
    8002258c:	00ba75b3          	and	a1,s4,a1
    80022590:	fa2fc0ef          	jal	ra,8001ed32 <string_buffer_putc16>
    80022594:	d54d                	beqz	a0,8002253e <js_string_fromCharCode+0x22>
    80022596:	bfc1                	j	80022566 <js_string_fromCharCode+0x4a>

0000000080022598 <JS_ToUint8ClampFree>:
JS_ToUint8ClampFree():
quickjs-nuttx/quickjs.c:10968
{
    80022598:	7119                	addi	sp,sp,-128
    8002259a:	f8a2                	sd	s0,112(sp)
    8002259c:	f4a6                	sd	s1,104(sp)
    8002259e:	f0ca                	sd	s2,96(sp)
    800225a0:	ecce                	sd	s3,88(sp)
    800225a2:	e8d2                	sd	s4,80(sp)
    800225a4:	e4d6                	sd	s5,72(sp)
    800225a6:	e0da                	sd	s6,64(sp)
    800225a8:	fc86                	sd	ra,120(sp)
    800225aa:	84aa                	mv	s1,a0
    800225ac:	892e                	mv	s2,a1
    800225ae:	e032                	sd	a2,0(sp)
    800225b0:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:10974
    switch(tag) {
    800225b2:	499d                	li	s3,7
    800225b4:	5add                	li	s5,-9
    800225b6:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:11016
        if (JS_IsException(val)) {
    800225b8:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:10973
    tag = JS_VALUE_GET_NORM_TAG(val);
    800225ba:	0004079b          	sext.w	a5,s0
quickjs-nuttx/quickjs.c:10974
    switch(tag) {
    800225be:	09378f63          	beq	a5,s3,8002265c <JS_ToUint8ClampFree+0xc4>
    800225c2:	02f9ec63          	bltu	s3,a5,800225fa <JS_ToUint8ClampFree+0x62>
    800225c6:	06fb7963          	bgeu	s6,a5,80022638 <JS_ToUint8ClampFree+0xa0>
quickjs-nuttx/quickjs.c:11015
        val = JS_ToNumberFree(ctx, val);
    800225ca:	6582                	ld	a1,0(sp)
    800225cc:	8622                	mv	a2,s0
    800225ce:	8526                	mv	a0,s1
    800225d0:	cbbff0ef          	jal	ra,8002228a <JS_ToNumberFree>
    800225d4:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:11016
        if (JS_IsException(val)) {
    800225d6:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:11015
        val = JS_ToNumberFree(ctx, val);
    800225da:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:11016
        if (JS_IsException(val)) {
    800225dc:	fd479fe3          	bne	a5,s4,800225ba <JS_ToUint8ClampFree+0x22>
quickjs-nuttx/quickjs.c:11017
            *pres = 0;
    800225e0:	00092023          	sw	zero,0(s2)
quickjs-nuttx/quickjs.c:11018
            return -1;
    800225e4:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:11024
}
    800225e6:	70e6                	ld	ra,120(sp)
    800225e8:	7446                	ld	s0,112(sp)
    800225ea:	74a6                	ld	s1,104(sp)
    800225ec:	7906                	ld	s2,96(sp)
    800225ee:	69e6                	ld	s3,88(sp)
    800225f0:	6a46                	ld	s4,80(sp)
    800225f2:	6aa6                	ld	s5,72(sp)
    800225f4:	6b06                	ld	s6,64(sp)
    800225f6:	6109                	addi	sp,sp,128
    800225f8:	8082                	ret
quickjs-nuttx/quickjs.c:10974
    switch(tag) {
    800225fa:	fd5798e3          	bne	a5,s5,800225ca <JS_ToUint8ClampFree+0x32>
quickjs-nuttx/quickjs.c:11005
            bf_init(ctx->bf_ctx, r);
    800225fe:	1904b503          	ld	a0,400(s1)
quickjs-nuttx/quickjs.c:11003
            JSBigFloat *p = JS_VALUE_GET_PTR(val);
    80022602:	6982                	ld	s3,0(sp)
quickjs-nuttx/quickjs.c:11005
            bf_init(ctx->bf_ctx, r);
    80022604:	082c                	addi	a1,sp,24
    80022606:	568350ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:11006
            bf_set(r, &p->num);
    8002260a:	00898593          	addi	a1,s3,8 # ffffffff80000008 <_ebss+0xfffffffeffefeea2>
    8002260e:	0828                	addi	a0,sp,24
    80022610:	213350ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:11007
            bf_rint(r, BF_RNDN);
    80022614:	4581                	li	a1,0
    80022616:	0828                	addi	a0,sp,24
    80022618:	021360ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/quickjs.c:11008
            bf_get_int32(&res, r, 0);
    8002261c:	082c                	addi	a1,sp,24
    8002261e:	4601                	li	a2,0
    80022620:	0848                	addi	a0,sp,20
    80022622:	189360ef          	jal	ra,80058faa <bf_get_int32>
quickjs-nuttx/quickjs.c:11009
            bf_delete(r);
    80022626:	0828                	addi	a0,sp,24
    80022628:	e2fe70ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:11010
            JS_FreeValue(ctx, val);
    8002262c:	6582                	ld	a1,0(sp)
    8002262e:	8622                	mv	a2,s0
    80022630:	8526                	mv	a0,s1
    80022632:	96ce90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11012
        goto int_clamp;
    80022636:	a019                	j	8002263c <JS_ToUint8ClampFree+0xa4>
quickjs-nuttx/quickjs.c:10979
        res = JS_VALUE_GET_INT(val);
    80022638:	4782                	lw	a5,0(sp)
    8002263a:	ca3e                	sw	a5,20(sp)
quickjs-nuttx/quickjs.c:10983
        res = max_int(0, min_int(255, res));
    8002263c:	47d2                	lw	a5,20(sp)
    8002263e:	0007871b          	sext.w	a4,a5
    80022642:	00075363          	bgez	a4,80022648 <JS_ToUint8ClampFree+0xb0>
    80022646:	4781                	li	a5,0
    80022648:	0007869b          	sext.w	a3,a5
    8002264c:	0ff00713          	li	a4,255
    80022650:	00d75463          	bge	a4,a3,80022658 <JS_ToUint8ClampFree+0xc0>
    80022654:	0ff00793          	li	a5,255
quickjs-nuttx/quickjs.c:10994
                    res = 255;
    80022658:	ca3e                	sw	a5,20(sp)
    8002265a:	a031                	j	80022666 <JS_ToUint8ClampFree+0xce>
quickjs-nuttx/quickjs.c:10987
            double d = JS_VALUE_GET_FLOAT64(val);
    8002265c:	2502                	fld	fa0,0(sp)
quickjs-nuttx/quickjs.c:10988
            if (isnan(d)) {
    8002265e:	a2a527d3          	feq.d	a5,fa0,fa0
    80022662:	e799                	bnez	a5,80022670 <JS_ToUint8ClampFree+0xd8>
quickjs-nuttx/quickjs.c:10989
                res = 0;
    80022664:	ca02                	sw	zero,20(sp)
quickjs-nuttx/quickjs.c:11022
    *pres = res;
    80022666:	47d2                	lw	a5,20(sp)
quickjs-nuttx/quickjs.c:11023
    return 0;
    80022668:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:11022
    *pres = res;
    8002266a:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:11023
    return 0;
    8002266e:	bfa5                	j	800225e6 <JS_ToUint8ClampFree+0x4e>
quickjs-nuttx/quickjs.c:10991
                if (d < 0)
    80022670:	f20007d3          	fmv.d.x	fa5,zero
    80022674:	a2f517d3          	flt.d	a5,fa0,fa5
    80022678:	f7f5                	bnez	a5,80022664 <JS_ToUint8ClampFree+0xcc>
quickjs-nuttx/quickjs.c:10993
                else if (d > 255)
    8002267a:	00071797          	auipc	a5,0x71
    8002267e:	5867b787          	fld	fa5,1414(a5) # 80093c00 <_erodata+0x8e>
    80022682:	a2a797d3          	flt.d	a5,fa5,fa0
    80022686:	c781                	beqz	a5,8002268e <JS_ToUint8ClampFree+0xf6>
quickjs-nuttx/quickjs.c:10994
                    res = 255;
    80022688:	0ff00793          	li	a5,255
    8002268c:	b7f1                	j	80022658 <JS_ToUint8ClampFree+0xc0>
quickjs-nuttx/quickjs.c:10996
                    res = lrint(d);
    8002268e:	5983d0ef          	jal	ra,8005fc26 <lrint>
    80022692:	ca2a                	sw	a0,20(sp)
    80022694:	bfc9                	j	80022666 <JS_ToUint8ClampFree+0xce>

0000000080022696 <JS_ToFloat64Free>:
JS_ToFloat64Free():
quickjs-nuttx/quickjs.c:10581
{
    80022696:	715d                	addi	sp,sp,-80
    80022698:	e0a2                	sd	s0,64(sp)
    8002269a:	e486                	sd	ra,72(sp)
    8002269c:	fc26                	sd	s1,56(sp)
    8002269e:	f84a                	sd	s2,48(sp)
    800226a0:	e032                	sd	a2,0(sp)
quickjs-nuttx/quickjs.c:10584
    tag = JS_VALUE_GET_TAG(val);
    800226a2:	0006879b          	sext.w	a5,a3
quickjs-nuttx/quickjs.c:10585
    if (tag <= JS_TAG_NULL) {
    800226a6:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:10581
{
    800226a8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10585
    if (tag <= JS_TAG_NULL) {
    800226aa:	00f76863          	bltu	a4,a5,800226ba <JS_ToFloat64Free+0x24>
quickjs-nuttx/quickjs.c:10586
        *pres = JS_VALUE_GET_INT(val);
    800226ae:	4782                	lw	a5,0(sp)
    800226b0:	d20787d3          	fcvt.d.w	fa5,a5
__JS_ToFloat64Free():
quickjs-nuttx/quickjs.c:10576
    *pres = d;
    800226b4:	a01c                	fsd	fa5,0(s0)
quickjs-nuttx/quickjs.c:10577
    return 0;
    800226b6:	4501                	li	a0,0
JS_ToFloat64Free():
quickjs-nuttx/quickjs.c:10592
        return __JS_ToFloat64Free(ctx, pres, val);
    800226b8:	a835                	j	800226f4 <JS_ToFloat64Free+0x5e>
quickjs-nuttx/quickjs.c:10588
    } else if (JS_TAG_IS_FLOAT64(tag)) {
    800226ba:	491d                	li	s2,7
    800226bc:	01279463          	bne	a5,s2,800226c4 <JS_ToFloat64Free+0x2e>
quickjs-nuttx/quickjs.c:10589
        *pres = JS_VALUE_GET_FLOAT64(val);
    800226c0:	2782                	fld	fa5,0(sp)
    800226c2:	bfcd                	j	800226b4 <JS_ToFloat64Free+0x1e>
__JS_ToFloat64Free():
quickjs-nuttx/quickjs.c:10547
    val = JS_ToNumberFree(ctx, val);
    800226c4:	85b2                	mv	a1,a2
    800226c6:	8636                	mv	a2,a3
    800226c8:	84aa                	mv	s1,a0
    800226ca:	bc1ff0ef          	jal	ra,8002228a <JS_ToNumberFree>
    800226ce:	f02a                	sd	a0,32(sp)
    800226d0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:10548
    if (JS_IsException(val)) {
    800226d2:	0005879b          	sext.w	a5,a1
    800226d6:	4719                	li	a4,6
    800226d8:	02e79463          	bne	a5,a4,80022700 <JS_ToFloat64Free+0x6a>
quickjs-nuttx/quickjs.c:10549
        *pres = JS_FLOAT64_NAN;
    800226dc:	00071797          	auipc	a5,0x71
    800226e0:	4a47b787          	fld	fa5,1188(a5) # 80093b80 <_erodata+0xe>
    800226e4:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    800226e8:	f2000753          	fmv.d.x	fa4,zero
quickjs-nuttx/quickjs.c:10550
        return -1;
    800226ec:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:10549
        *pres = JS_FLOAT64_NAN;
    800226ee:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    800226f2:	a01c                	fsd	fa5,0(s0)
JS_ToFloat64Free():
quickjs-nuttx/quickjs.c:10594
}
    800226f4:	60a6                	ld	ra,72(sp)
    800226f6:	6406                	ld	s0,64(sp)
    800226f8:	74e2                	ld	s1,56(sp)
    800226fa:	7942                	ld	s2,48(sp)
    800226fc:	6161                	addi	sp,sp,80
    800226fe:	8082                	ret
__JS_ToFloat64Free():
quickjs-nuttx/quickjs.c:10553
    switch(tag) {
    80022700:	03278c63          	beq	a5,s2,80022738 <JS_ToFloat64Free+0xa2>
    80022704:	00f96563          	bltu	s2,a5,8002270e <JS_ToFloat64Free+0x78>
    80022708:	c395                	beqz	a5,8002272c <JS_ToFloat64Free+0x96>
quickjs-nuttx/quickjs.c:10574
        abort();
    8002270a:	478400ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:10553
    switch(tag) {
    8002270e:	27a9                	addiw	a5,a5,10
    80022710:	4705                	li	a4,1
    80022712:	fef76ce3          	bltu	a4,a5,8002270a <JS_ToFloat64Free+0x74>
quickjs-nuttx/quickjs.c:10569
            bf_get_float64(&p->num, &d, BF_RNDN);
    80022716:	082c                	addi	a1,sp,24
    80022718:	4601                	li	a2,0
    8002271a:	0521                	addi	a0,a0,8
    8002271c:	738360ef          	jal	ra,80058e54 <bf_get_float64>
quickjs-nuttx/quickjs.c:10570
            JS_FreeValue(ctx, val);
    80022720:	7582                	ld	a1,32(sp)
    80022722:	7622                	ld	a2,40(sp)
    80022724:	8526                	mv	a0,s1
    80022726:	878e90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10572
        break;
    8002272a:	a029                	j	80022734 <JS_ToFloat64Free+0x9e>
quickjs-nuttx/quickjs.c:10555
        d = JS_VALUE_GET_INT(val);
    8002272c:	5782                	lw	a5,32(sp)
    8002272e:	d20787d3          	fcvt.d.w	fa5,a5
quickjs-nuttx/quickjs.c:10558
        d = JS_VALUE_GET_FLOAT64(val);
    80022732:	ac3e                	fsd	fa5,24(sp)
quickjs-nuttx/quickjs.c:10576
    *pres = d;
    80022734:	27e2                	fld	fa5,24(sp)
    80022736:	bfbd                	j	800226b4 <JS_ToFloat64Free+0x1e>
quickjs-nuttx/quickjs.c:10558
        d = JS_VALUE_GET_FLOAT64(val);
    80022738:	3782                	fld	fa5,32(sp)
    8002273a:	bfe5                	j	80022732 <JS_ToFloat64Free+0x9c>

000000008002273c <JS_ToFloat64>:
JS_ToFloat64():
quickjs-nuttx/quickjs.c:10597
{
    8002273c:	7139                	addi	sp,sp,-64
    8002273e:	f822                	sd	s0,48(sp)
    80022740:	f426                	sd	s1,40(sp)
    80022742:	842a                	mv	s0,a0
    80022744:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:10598
    return JS_ToFloat64Free(ctx, pres, JS_DupValue(ctx, val));
    80022746:	8532                	mv	a0,a2
    80022748:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:10597
{
    8002274a:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:10598
    return JS_ToFloat64Free(ctx, pres, JS_DupValue(ctx, val));
    8002274c:	ccfe70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80022750:	862a                	mv	a2,a0
    80022752:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:10599
}
    80022754:	7442                	ld	s0,48(sp)
    80022756:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:10598
    return JS_ToFloat64Free(ctx, pres, JS_DupValue(ctx, val));
    80022758:	86ae                	mv	a3,a1
    8002275a:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:10599
}
    8002275c:	74a2                	ld	s1,40(sp)
    8002275e:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:10598
    return JS_ToFloat64Free(ctx, pres, JS_DupValue(ctx, val));
    80022760:	f37ff06f          	j	80022696 <JS_ToFloat64Free>

0000000080022764 <JS_NumberIsInteger>:
JS_NumberIsInteger():
quickjs-nuttx/quickjs.c:11138
{
    80022764:	7139                	addi	sp,sp,-64
    80022766:	e432                	sd	a2,8(sp)
    80022768:	fc06                	sd	ra,56(sp)
    8002276a:	b422                	fsd	fs0,40(sp)
    8002276c:	e02e                	sd	a1,0(sp)
JS_IsNumber():
quickjs-nuttx/quickjs.h:571
    int tag = JS_VALUE_GET_TAG(v);
    8002276e:	2601                	sext.w	a2,a2
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    80022770:	c601                	beqz	a2,80022778 <JS_NumberIsInteger+0x14>
    80022772:	479d                	li	a5,7
    80022774:	04f61363          	bne	a2,a5,800227ba <JS_NumberIsInteger+0x56>
JS_NumberIsInteger():
quickjs-nuttx/quickjs.c:11142
    if (unlikely(JS_ToFloat64(ctx, &d, val)))
    80022778:	6602                	ld	a2,0(sp)
    8002277a:	66a2                	ld	a3,8(sp)
    8002277c:	082c                	addi	a1,sp,24
    8002277e:	fbfff0ef          	jal	ra,8002273c <JS_ToFloat64>
quickjs-nuttx/quickjs.c:11143
        return -1;
    80022782:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:11142
    if (unlikely(JS_ToFloat64(ctx, &d, val)))
    80022784:	ed05                	bnez	a0,800227bc <JS_NumberIsInteger+0x58>
quickjs-nuttx/quickjs.c:11144
    return isfinite(d) && floor(d) == d;
    80022786:	00071797          	auipc	a5,0x71
    8002278a:	3fa7b787          	fld	fa5,1018(a5) # 80093b80 <_erodata+0xe>
    8002278e:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80022792:	2462                	fld	fs0,24(sp)
    80022794:	a2f427d3          	feq.d	a5,fs0,fa5
    80022798:	e38d                	bnez	a5,800227ba <JS_NumberIsInteger+0x56>
quickjs-nuttx/quickjs.c:11144 (discriminator 1)
    8002279a:	22f797d3          	fneg.d	fa5,fa5
    8002279e:	a2f427d3          	feq.d	a5,fs0,fa5
    800227a2:	ef81                	bnez	a5,800227ba <JS_NumberIsInteger+0x56>
quickjs-nuttx/quickjs.c:11144 (discriminator 3)
    800227a4:	a28427d3          	feq.d	a5,fs0,fs0
    800227a8:	cb89                	beqz	a5,800227ba <JS_NumberIsInteger+0x56>
quickjs-nuttx/quickjs.c:11144 (discriminator 5)
    800227aa:	22840553          	fmv.d	fa0,fs0
    800227ae:	98ade0ef          	jal	ra,80000938 <floor>
    800227b2:	a2a42753          	feq.d	a4,fs0,fa0
    800227b6:	4785                	li	a5,1
    800227b8:	e311                	bnez	a4,800227bc <JS_NumberIsInteger+0x58>
quickjs-nuttx/quickjs.c:11144 (discriminator 8)
    800227ba:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:11145
}
    800227bc:	70e2                	ld	ra,56(sp)
    800227be:	3422                	fld	fs0,40(sp)
    800227c0:	853e                	mv	a0,a5
    800227c2:	6121                	addi	sp,sp,64
    800227c4:	8082                	ret

00000000800227c6 <js_number_isInteger>:
js_number_isInteger():
quickjs-nuttx/quickjs.c:40850
    ret = JS_NumberIsInteger(ctx, argv[0]);
    800227c6:	630c                	ld	a1,0(a4)
    800227c8:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:40848
{
    800227ca:	7139                	addi	sp,sp,-64
    800227cc:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:40850
    ret = JS_NumberIsInteger(ctx, argv[0]);
    800227ce:	f97ff0ef          	jal	ra,80022764 <JS_NumberIsInteger>
quickjs-nuttx/quickjs.c:40851
    if (ret < 0)
    800227d2:	00055a63          	bgez	a0,800227e6 <js_number_isInteger+0x20>
quickjs-nuttx/quickjs.c:40852
        return JS_EXCEPTION;
    800227d6:	e802                	sd	zero,16(sp)
    800227d8:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40855
}
    800227da:	70e2                	ld	ra,56(sp)
    800227dc:	ec3e                	sd	a5,24(sp)
    800227de:	6542                	ld	a0,16(sp)
    800227e0:	65e2                	ld	a1,24(sp)
    800227e2:	6121                	addi	sp,sp,64
    800227e4:	8082                	ret
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800227e6:	00a03533          	snez	a0,a0
    800227ea:	d202                	sw	zero,36(sp)
    800227ec:	d02a                	sw	a0,32(sp)
    800227ee:	7782                	ld	a5,32(sp)
    800227f0:	e83e                	sd	a5,16(sp)
    800227f2:	4785                	li	a5,1
    800227f4:	b7dd                	j	800227da <js_number_isInteger+0x14>

00000000800227f6 <js_Date_UTC>:
js_Date_UTC():
quickjs-nuttx/quickjs.c:49708
{
    800227f6:	7131                	addi	sp,sp,-192
quickjs-nuttx/quickjs.c:49710
    double fields[] = { 0, 0, 1, 0, 0, 0, 0 };
    800227f8:	00071797          	auipc	a5,0x71
    800227fc:	3987b787          	fld	fa5,920(a5) # 80093b90 <_erodata+0x1e>
quickjs-nuttx/quickjs.c:49708
{
    80022800:	fd06                	sd	ra,184(sp)
    80022802:	f922                	sd	s0,176(sp)
    80022804:	f526                	sd	s1,168(sp)
    80022806:	f14a                	sd	s2,160(sp)
    80022808:	ed4e                	sd	s3,152(sp)
    8002280a:	e952                	sd	s4,144(sp)
    8002280c:	e556                	sd	s5,136(sp)
    8002280e:	e15a                	sd	s6,128(sp)
    80022810:	bca2                	fsd	fs0,120(sp)
    80022812:	b8a6                	fsd	fs1,112(sp)
    80022814:	b4ca                	fsd	fs2,104(sp)
    80022816:	b0ce                	fsd	fs3,96(sp)
quickjs-nuttx/quickjs.c:49710
    double fields[] = { 0, 0, 1, 0, 0, 0, 0 };
    80022818:	f402                	sd	zero,40(sp)
    8002281a:	f802                	sd	zero,48(sp)
    8002281c:	bc3e                	fsd	fa5,56(sp)
    8002281e:	e082                	sd	zero,64(sp)
    80022820:	e482                	sd	zero,72(sp)
    80022822:	e882                	sd	zero,80(sp)
    80022824:	ec82                	sd	zero,88(sp)
quickjs-nuttx/quickjs.c:49715
    if (n == 0)
    80022826:	ee91                	bnez	a3,80022842 <js_Date_UTC+0x4c>
quickjs-nuttx/quickjs.c:49716
        return JS_NAN;
    80022828:	00071797          	auipc	a5,0x71
    8002282c:	3587b787          	fld	fa5,856(a5) # 80093b80 <_erodata+0xe>
    80022830:	12f7f7d3          	fmul.d	fa5,fa5,fa5
quickjs-nuttx/quickjs.c:49723
            return JS_NAN;
    80022834:	f2000753          	fmv.d.x	fa4,zero
    80022838:	479d                	li	a5,7
    8002283a:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    8002283e:	ac3e                	fsd	fa5,24(sp)
    80022840:	a8bd                	j	800228be <js_Date_UTC+0xc8>
    80022842:	479d                	li	a5,7
    80022844:	89aa                	mv	s3,a0
    80022846:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs.c:49717
    if (n > 7)
    80022848:	0006841b          	sext.w	s0,a3
    8002284c:	00d7d363          	bge	a5,a3,80022852 <js_Date_UTC+0x5c>
    80022850:	441d                	li	s0,7
quickjs-nuttx/quickjs.c:49725
        if (i == 0 && fields[0] >= 0 && fields[0] < 100)
    80022852:	f20004d3          	fmv.d.x	fs1,zero
    80022856:	02810913          	addi	s2,sp,40
quickjs-nuttx/quickjs.c:49719
    for(i = 0; i < n; i++) {
    8002285a:	4481                	li	s1,0
    8002285c:	8aca                	mv	s5,s2
quickjs-nuttx/quickjs.c:49722
        if (!isfinite(a))
    8002285e:	00071797          	auipc	a5,0x71
    80022862:	3227b407          	fld	fs0,802(a5) # 80093b80 <_erodata+0xe>
quickjs-nuttx/quickjs.c:49725
        if (i == 0 && fields[0] >= 0 && fields[0] < 100)
    80022866:	00071797          	auipc	a5,0x71
    8002286a:	3a27b907          	fld	fs2,930(a5) # 80093c08 <_erodata+0x96>
quickjs-nuttx/quickjs.c:49726
            fields[0] += 1900;
    8002286e:	00071797          	auipc	a5,0x71
    80022872:	3a27b987          	fld	fs3,930(a5) # 80093c10 <_erodata+0x9e>
quickjs-nuttx/quickjs.c:49719 (discriminator 1)
    for(i = 0; i < n; i++) {
    80022876:	00048b1b          	sext.w	s6,s1
    8002287a:	028b4663          	blt	s6,s0,800228a6 <js_Date_UTC+0xb0>
quickjs-nuttx/quickjs.c:49728
    return JS_NewFloat64(ctx, set_date_fields(fields, 0));
    8002287e:	4581                	li	a1,0
    80022880:	8556                	mv	a0,s5
    80022882:	f17e70ef          	jal	ra,8000a798 <set_date_fields>
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022886:	c2051653          	fcvt.w.d	a2,fa0,rtz
js_Date_UTC():
quickjs-nuttx/quickjs.c:49728
    8002288a:	e20507d3          	fmv.x.d	a5,fa0
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8002288e:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022892:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022896:	e2078653          	fmv.x.d	a2,fa5
    8002289a:	08c79463          	bne	a5,a2,80022922 <js_Date_UTC+0x12c>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8002289e:	ce02                	sw	zero,28(sp)
    800228a0:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    800228a2:	cc3a                	sw	a4,24(sp)
    800228a4:	a829                	j	800228be <js_Date_UTC+0xc8>
js_Date_UTC():
quickjs-nuttx/quickjs.c:49720
        if (JS_ToFloat64(ctx, &a, argv[i]))
    800228a6:	00449793          	slli	a5,s1,0x4
    800228aa:	97d2                	add	a5,a5,s4
    800228ac:	6390                	ld	a2,0(a5)
    800228ae:	6794                	ld	a3,8(a5)
    800228b0:	080c                	addi	a1,sp,16
    800228b2:	854e                	mv	a0,s3
    800228b4:	e89ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    800228b8:	c505                	beqz	a0,800228e0 <js_Date_UTC+0xea>
quickjs-nuttx/quickjs.c:49721
            return JS_EXCEPTION;
    800228ba:	ec02                	sd	zero,24(sp)
    800228bc:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49729
}
    800228be:	70ea                	ld	ra,184(sp)
    800228c0:	744a                	ld	s0,176(sp)
    800228c2:	f03e                	sd	a5,32(sp)
    800228c4:	6562                	ld	a0,24(sp)
    800228c6:	7582                	ld	a1,32(sp)
    800228c8:	74aa                	ld	s1,168(sp)
    800228ca:	790a                	ld	s2,160(sp)
    800228cc:	69ea                	ld	s3,152(sp)
    800228ce:	6a4a                	ld	s4,144(sp)
    800228d0:	6aaa                	ld	s5,136(sp)
    800228d2:	6b0a                	ld	s6,128(sp)
    800228d4:	3466                	fld	fs0,120(sp)
    800228d6:	34c6                	fld	fs1,112(sp)
    800228d8:	3926                	fld	fs2,104(sp)
    800228da:	3986                	fld	fs3,96(sp)
    800228dc:	6129                	addi	sp,sp,192
    800228de:	8082                	ret
quickjs-nuttx/quickjs.c:49722
        if (!isfinite(a))
    800228e0:	128477d3          	fmul.d	fa5,fs0,fs0
    800228e4:	2542                	fld	fa0,16(sp)
    800228e6:	a2f527d3          	feq.d	a5,fa0,fa5
    800228ea:	f7a9                	bnez	a5,80022834 <js_Date_UTC+0x3e>
quickjs-nuttx/quickjs.c:49722 (discriminator 1)
    800228ec:	22f79753          	fneg.d	fa4,fa5
    800228f0:	a2e527d3          	feq.d	a5,fa0,fa4
    800228f4:	f3a1                	bnez	a5,80022834 <js_Date_UTC+0x3e>
quickjs-nuttx/quickjs.c:49722 (discriminator 2)
    800228f6:	a2a527d3          	feq.d	a5,fa0,fa0
    800228fa:	df8d                	beqz	a5,80022834 <js_Date_UTC+0x3e>
quickjs-nuttx/quickjs.c:49724
        fields[i] = trunc(a);
    800228fc:	c16de0ef          	jal	ra,80000d12 <trunc>
    80022900:	00a93027          	fsd	fa0,0(s2)
quickjs-nuttx/quickjs.c:49725
        if (i == 0 && fields[0] >= 0 && fields[0] < 100)
    80022904:	000b1c63          	bnez	s6,8002291c <js_Date_UTC+0x126>
quickjs-nuttx/quickjs.c:49725 (discriminator 1)
    80022908:	37a2                	fld	fa5,40(sp)
    8002290a:	a2f487d3          	fle.d	a5,fs1,fa5
    8002290e:	c799                	beqz	a5,8002291c <js_Date_UTC+0x126>
quickjs-nuttx/quickjs.c:49725 (discriminator 2)
    80022910:	a32797d3          	flt.d	a5,fa5,fs2
    80022914:	c781                	beqz	a5,8002291c <js_Date_UTC+0x126>
quickjs-nuttx/quickjs.c:49726
            fields[0] += 1900;
    80022916:	0337f7d3          	fadd.d	fa5,fa5,fs3
    8002291a:	b43e                	fsd	fa5,40(sp)
quickjs-nuttx/quickjs.c:49719 (discriminator 2)
    for(i = 0; i < n; i++) {
    8002291c:	0485                	addi	s1,s1,1
    8002291e:	0921                	addi	s2,s2,8
    80022920:	bf99                	j	80022876 <js_Date_UTC+0x80>
quickjs-nuttx/quickjs.h:230
    return v;
    80022922:	0007871b          	sext.w	a4,a5
    80022926:	ac2a                	fsd	fa0,24(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022928:	479d                	li	a5,7
    8002292a:	bfa5                	j	800228a2 <js_Date_UTC+0xac>

000000008002292c <JS_ThisTimeValue>:
JS_ThisTimeValue():
quickjs-nuttx/quickjs.c:49308
{
    8002292c:	1101                	addi	sp,sp,-32
    8002292e:	e436                	sd	a3,8(sp)
    80022930:	ec06                	sd	ra,24(sp)
    80022932:	e032                	sd	a2,0(sp)
quickjs-nuttx/quickjs.c:49309
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    80022934:	2681                	sext.w	a3,a3
    80022936:	57fd                	li	a5,-1
    80022938:	02f69363          	bne	a3,a5,8002295e <JS_ThisTimeValue+0x32>
quickjs-nuttx/quickjs.c:49311
        if (p->class_id == JS_CLASS_DATE && JS_IsNumber(p->u.object_data))
    8002293c:	00665683          	lhu	a3,6(a2) # 10006 <asinh-0x7ffefffa>
    80022940:	4729                	li	a4,10
quickjs-nuttx/quickjs.c:49310
        JSObject *p = JS_VALUE_GET_OBJ(this_val);
    80022942:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:49311
        if (p->class_id == JS_CLASS_DATE && JS_IsNumber(p->u.object_data))
    80022944:	00e69d63          	bne	a3,a4,8002295e <JS_ThisTimeValue+0x32>
JS_IsNumber():
quickjs-nuttx/quickjs.h:571 (discriminator 1)
    int tag = JS_VALUE_GET_TAG(v);
    80022948:	5e18                	lw	a4,56(a2)
quickjs-nuttx/quickjs.h:572 (discriminator 1)
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    8002294a:	c701                	beqz	a4,80022952 <JS_ThisTimeValue+0x26>
quickjs-nuttx/quickjs.h:572
    8002294c:	469d                	li	a3,7
    8002294e:	00d71863          	bne	a4,a3,8002295e <JS_ThisTimeValue+0x32>
JS_ThisTimeValue():
quickjs-nuttx/quickjs.c:49316
}
    80022952:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:49312
            return JS_ToFloat64(ctx, valp, p->u.object_data);
    80022954:	7b90                	ld	a2,48(a5)
    80022956:	7f94                	ld	a3,56(a5)
quickjs-nuttx/quickjs.c:49316
}
    80022958:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:49312
            return JS_ToFloat64(ctx, valp, p->u.object_data);
    8002295a:	de3ff06f          	j	8002273c <JS_ToFloat64>
quickjs-nuttx/quickjs.c:49314
    JS_ThrowTypeError(ctx, "not a Date object");
    8002295e:	00048597          	auipc	a1,0x48
    80022962:	aa258593          	addi	a1,a1,-1374 # 8006a400 <qjsc_repl+0x4e50>
    80022966:	d07f50ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:49316
}
    8002296a:	60e2                	ld	ra,24(sp)
    8002296c:	557d                	li	a0,-1
    8002296e:	6105                	addi	sp,sp,32
    80022970:	8082                	ret

0000000080022972 <get_date_fields>:
get_date_fields():
quickjs-nuttx/quickjs.c:49369
{
    80022972:	7119                	addi	sp,sp,-128
    80022974:	8832                	mv	a6,a2
    80022976:	e0da                	sd	s6,64(sp)
quickjs-nuttx/quickjs.c:49373
    if (JS_ThisTimeValue(ctx, &dval, obj))
    80022978:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:49369
{
    8002297a:	8b36                	mv	s6,a3
quickjs-nuttx/quickjs.c:49373
    if (JS_ThisTimeValue(ctx, &dval, obj))
    8002297c:	082c                	addi	a1,sp,24
    8002297e:	86c2                	mv	a3,a6
quickjs-nuttx/quickjs.c:49369
{
    80022980:	f8a2                	sd	s0,112(sp)
    80022982:	f4a6                	sd	s1,104(sp)
    80022984:	fc86                	sd	ra,120(sp)
    80022986:	f0ca                	sd	s2,96(sp)
    80022988:	ecce                	sd	s3,88(sp)
    8002298a:	e8d2                	sd	s4,80(sp)
    8002298c:	e4d6                	sd	s5,72(sp)
    8002298e:	fc5e                	sd	s7,56(sp)
    80022990:	f862                	sd	s8,48(sp)
    80022992:	f466                	sd	s9,40(sp)
    80022994:	84ba                	mv	s1,a4
    80022996:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:49373
    if (JS_ThisTimeValue(ctx, &dval, obj))
    80022998:	f95ff0ef          	jal	ra,8002292c <JS_ThisTimeValue>
    8002299c:	16051663          	bnez	a0,80022b08 <get_date_fields+0x196>
quickjs-nuttx/quickjs.c:49376
    if (isnan(dval)) {
    800229a0:	27e2                	fld	fa5,24(sp)
    800229a2:	a2f7a7d3          	feq.d	a5,fa5,fa5
    800229a6:	e3cd                	bnez	a5,80022a48 <get_date_fields+0xd6>
quickjs-nuttx/quickjs.c:49377
        if (!force)
    800229a8:	14040263          	beqz	s0,80022aec <get_date_fields+0x17a>
quickjs-nuttx/quickjs.c:49371
    int64_t d, days, wd, y, i, md, h, m, s, ms, tz = 0;
    800229ac:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:49379
        d = 0;        /* initialize all fields to 0 */
    800229ae:	4401                	li	s0,0
math_mod():
quickjs-nuttx/quickjs.c:49294
    int64_t m = a % b;
    800229b0:	05266cb7          	lui	s9,0x5266
    800229b4:	c00c8c93          	addi	s9,s9,-1024 # 5265c00 <asinh-0x7ad9a400>
    800229b8:	03946733          	rem	a4,s0,s9
get_date_fields():
quickjs-nuttx/quickjs.c:49393
    s = h % 60;
    800229bc:	03c00493          	li	s1,60
math_mod():
quickjs-nuttx/quickjs.c:49295
    return m + (m < 0) * b;
    800229c0:	43f75793          	srai	a5,a4,0x3f
    800229c4:	0197f7b3          	and	a5,a5,s9
    800229c8:	97ba                	add	a5,a5,a4
get_date_fields():
quickjs-nuttx/quickjs.c:49391
    ms = h % 1000;
    800229ca:	3e800713          	li	a4,1000
    800229ce:	02e7e933          	rem	s2,a5,a4
quickjs-nuttx/quickjs.c:49390
    days = (d - h) / 86400000;
    800229d2:	8c1d                	sub	s0,s0,a5
quickjs-nuttx/quickjs.c:49392
    h = (h - ms) / 1000;
    800229d4:	412787b3          	sub	a5,a5,s2
    800229d8:	02e7c7b3          	div	a5,a5,a4
quickjs-nuttx/quickjs.c:49393
    s = h % 60;
    800229dc:	0297e9b3          	rem	s3,a5,s1
quickjs-nuttx/quickjs.c:49394
    h = (h - s) / 60;
    800229e0:	413787b3          	sub	a5,a5,s3
    800229e4:	0297c7b3          	div	a5,a5,s1
quickjs-nuttx/quickjs.c:49395
    m = h % 60;
    800229e8:	0297ea33          	rem	s4,a5,s1
quickjs-nuttx/quickjs.c:49390
    days = (d - h) / 86400000;
    800229ec:	03944cb3          	div	s9,s0,s9
quickjs-nuttx/quickjs.c:49396
    h = (h - m) / 60;
    800229f0:	414787b3          	sub	a5,a5,s4
quickjs-nuttx/quickjs.c:49397
    wd = math_mod(days + 4, 7); /* week day */
    800229f4:	004c8a93          	addi	s5,s9,4
quickjs-nuttx/quickjs.c:49396
    h = (h - m) / 60;
    800229f8:	0297c4b3          	div	s1,a5,s1
math_mod():
quickjs-nuttx/quickjs.c:49294
    int64_t m = a % b;
    800229fc:	479d                	li	a5,7
    800229fe:	02fae7b3          	rem	a5,s5,a5
quickjs-nuttx/quickjs.c:49295
    return m + (m < 0) * b;
    80022a02:	4a81                	li	s5,0
    80022a04:	0007d363          	bgez	a5,80022a0a <get_date_fields+0x98>
    80022a08:	4a9d                	li	s5,7
    80022a0a:	9abe                	add	s5,s5,a5
year_from_days():
quickjs-nuttx/quickjs.c:49343
    y = floor_div(d * 10000, 3652425) + 1970;
    80022a0c:	6789                	lui	a5,0x2
    80022a0e:	71078793          	addi	a5,a5,1808 # 2710 <asinh-0x7fffd8f0>
    80022a12:	02fc87b3          	mul	a5,s9,a5
floor_div():
quickjs-nuttx/quickjs.c:49300
    int64_t m = a % b;
    80022a16:	0037c437          	lui	s0,0x37c
    80022a1a:	b4940693          	addi	a3,s0,-1207 # 37bb49 <asinh-0x7fc844b7>
    80022a1e:	02d7e733          	rem	a4,a5,a3
quickjs-nuttx/quickjs.c:49301
    return (a - (m + (m < 0) * b)) / b;
    80022a22:	43f75413          	srai	s0,a4,0x3f
    80022a26:	8f99                	sub	a5,a5,a4
    80022a28:	8c75                	and	s0,s0,a3
    80022a2a:	40878433          	sub	s0,a5,s0
    80022a2e:	02d44433          	div	s0,s0,a3
year_from_days():
quickjs-nuttx/quickjs.c:49343
    y = floor_div(d * 10000, 3652425) + 1970;
    80022a32:	7b240413          	addi	s0,s0,1970
quickjs-nuttx/quickjs.c:49347
        d1 = d - days_from_year(y);
    80022a36:	8522                	mv	a0,s0
    80022a38:	cdfe70ef          	jal	ra,8000a716 <days_from_year>
    80022a3c:	40ac8bb3          	sub	s7,s9,a0
quickjs-nuttx/quickjs.c:49348
        if (d1 < 0) {
    80022a40:	020bd463          	bgez	s7,80022a68 <get_date_fields+0xf6>
quickjs-nuttx/quickjs.c:49349
            y--;
    80022a44:	147d                	addi	s0,s0,-1
quickjs-nuttx/quickjs.c:49350
            d1 += days_in_year(y);
    80022a46:	bfc5                	j	80022a36 <get_date_fields+0xc4>
get_date_fields():
quickjs-nuttx/quickjs.c:49381
        d = dval;
    80022a48:	c2279453          	fcvt.l.d	s0,fa5,rtz
quickjs-nuttx/quickjs.c:49371
    int64_t d, days, wd, y, i, md, h, m, s, ms, tz = 0;
    80022a4c:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:49382
        if (is_local) {
    80022a4e:	d0ad                	beqz	s1,800229b0 <get_date_fields+0x3e>
quickjs-nuttx/quickjs.c:49383
            tz = -getTimezoneOffset(d);
    80022a50:	8522                	mv	a0,s0
    80022a52:	91fe60ef          	jal	ra,80009370 <getTimezoneOffset>
quickjs-nuttx/quickjs.c:49384
            d += tz * 60000;
    80022a56:	67bd                	lui	a5,0xf
quickjs-nuttx/quickjs.c:49383
            tz = -getTimezoneOffset(d);
    80022a58:	40a00c3b          	negw	s8,a0
quickjs-nuttx/quickjs.c:49384
            d += tz * 60000;
    80022a5c:	a6078793          	addi	a5,a5,-1440 # ea60 <asinh-0x7fff15a0>
    80022a60:	02fc07b3          	mul	a5,s8,a5
    80022a64:	943e                	add	s0,s0,a5
    80022a66:	b7a9                	j	800229b0 <get_date_fields+0x3e>
year_from_days():
quickjs-nuttx/quickjs.c:49352
            nd = days_in_year(y);
    80022a68:	8522                	mv	a0,s0
    80022a6a:	971e50ef          	jal	ra,800083da <days_in_year>
quickjs-nuttx/quickjs.c:49353
            if (d1 < nd)
    80022a6e:	00abc463          	blt	s7,a0,80022a76 <get_date_fields+0x104>
quickjs-nuttx/quickjs.c:49356
            y++;
    80022a72:	0405                	addi	s0,s0,1
    80022a74:	b7c9                	j	80022a36 <get_date_fields+0xc4>
    80022a76:	00052697          	auipc	a3,0x52
    80022a7a:	25268693          	addi	a3,a3,594 # 80074cc8 <month_days>
get_date_fields():
quickjs-nuttx/quickjs.c:49400
    for(i = 0; i < 11; i++) {
    80022a7e:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:49402
        if (i == 1)
    80022a80:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:49403
            md += days_in_year(y) - 365;
    80022a82:	e9350513          	addi	a0,a0,-365
quickjs-nuttx/quickjs.c:49400
    for(i = 0; i < 11; i++) {
    80022a86:	462d                	li	a2,11
quickjs-nuttx/quickjs.c:49401
        md = month_days[i];
    80022a88:	4298                	lw	a4,0(a3)
quickjs-nuttx/quickjs.c:49402
        if (i == 1)
    80022a8a:	00b79363          	bne	a5,a1,80022a90 <get_date_fields+0x11e>
quickjs-nuttx/quickjs.c:49403
            md += days_in_year(y) - 365;
    80022a8e:	972a                	add	a4,a4,a0
quickjs-nuttx/quickjs.c:49404
        if (days < md)
    80022a90:	00ebc863          	blt	s7,a4,80022aa0 <get_date_fields+0x12e>
quickjs-nuttx/quickjs.c:49400 (discriminator 2)
    for(i = 0; i < 11; i++) {
    80022a94:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:49406 (discriminator 2)
        days -= md;
    80022a96:	40eb8bb3          	sub	s7,s7,a4
quickjs-nuttx/quickjs.c:49400 (discriminator 2)
    for(i = 0; i < 11; i++) {
    80022a9a:	0691                	addi	a3,a3,4
    80022a9c:	fec796e3          	bne	a5,a2,80022a88 <get_date_fields+0x116>
quickjs-nuttx/quickjs.c:49408
    fields[0] = y;
    80022aa0:	d22477d3          	fcvt.d.l	fa5,s0
quickjs-nuttx/quickjs.c:49410
    fields[2] = days + 1;
    80022aa4:	0b85                	addi	s7,s7,1
quickjs-nuttx/quickjs.c:49417
    return TRUE;
    80022aa6:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:49408
    fields[0] = y;
    80022aa8:	00fb3027          	fsd	fa5,0(s6) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:49409
    fields[1] = i;
    80022aac:	d227f7d3          	fcvt.d.l	fa5,a5
    80022ab0:	00fb3427          	fsd	fa5,8(s6)
quickjs-nuttx/quickjs.c:49410
    fields[2] = days + 1;
    80022ab4:	d22bf7d3          	fcvt.d.l	fa5,s7
    80022ab8:	00fb3827          	fsd	fa5,16(s6)
quickjs-nuttx/quickjs.c:49411
    fields[3] = h;
    80022abc:	d224f7d3          	fcvt.d.l	fa5,s1
    80022ac0:	00fb3c27          	fsd	fa5,24(s6)
quickjs-nuttx/quickjs.c:49412
    fields[4] = m;
    80022ac4:	d22a77d3          	fcvt.d.l	fa5,s4
    80022ac8:	02fb3027          	fsd	fa5,32(s6)
quickjs-nuttx/quickjs.c:49413
    fields[5] = s;
    80022acc:	d229f7d3          	fcvt.d.l	fa5,s3
    80022ad0:	02fb3427          	fsd	fa5,40(s6)
quickjs-nuttx/quickjs.c:49414
    fields[6] = ms;
    80022ad4:	d22977d3          	fcvt.d.l	fa5,s2
    80022ad8:	02fb3827          	fsd	fa5,48(s6)
quickjs-nuttx/quickjs.c:49415
    fields[7] = wd;
    80022adc:	d22af7d3          	fcvt.d.l	fa5,s5
    80022ae0:	02fb3c27          	fsd	fa5,56(s6)
quickjs-nuttx/quickjs.c:49416
    fields[8] = tz;
    80022ae4:	d22c77d3          	fcvt.d.l	fa5,s8
    80022ae8:	04fb3027          	fsd	fa5,64(s6)
quickjs-nuttx/quickjs.c:49418
}
    80022aec:	70e6                	ld	ra,120(sp)
    80022aee:	8522                	mv	a0,s0
    80022af0:	7446                	ld	s0,112(sp)
    80022af2:	74a6                	ld	s1,104(sp)
    80022af4:	7906                	ld	s2,96(sp)
    80022af6:	69e6                	ld	s3,88(sp)
    80022af8:	6a46                	ld	s4,80(sp)
    80022afa:	6aa6                	ld	s5,72(sp)
    80022afc:	6b06                	ld	s6,64(sp)
    80022afe:	7be2                	ld	s7,56(sp)
    80022b00:	7c42                	ld	s8,48(sp)
    80022b02:	7ca2                	ld	s9,40(sp)
    80022b04:	6109                	addi	sp,sp,128
    80022b06:	8082                	ret
quickjs-nuttx/quickjs.c:49374
        return -1;
    80022b08:	547d                	li	s0,-1
    80022b0a:	b7cd                	j	80022aec <get_date_fields+0x17a>

0000000080022b0c <get_date_field>:
get_date_field():
quickjs-nuttx/quickjs.c:49458
{
    80022b0c:	7119                	addi	sp,sp,-128
    80022b0e:	f8a2                	sd	s0,112(sp)
    80022b10:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:49465
    res = get_date_fields(ctx, this_val, fields, is_local, 0);
    80022b12:	00f47713          	andi	a4,s0,15
    80022b16:	4781                	li	a5,0
    80022b18:	1034                	addi	a3,sp,40
quickjs-nuttx/quickjs.c:49458
{
    80022b1a:	fc86                	sd	ra,120(sp)
    80022b1c:	e02e                	sd	a1,0(sp)
    80022b1e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:49465
    res = get_date_fields(ctx, this_val, fields, is_local, 0);
    80022b20:	e53ff0ef          	jal	ra,80022972 <get_date_fields>
quickjs-nuttx/quickjs.c:49466
    if (res < 0)
    80022b24:	00055b63          	bgez	a0,80022b3a <get_date_field+0x2e>
quickjs-nuttx/quickjs.c:49467
        return JS_EXCEPTION;
    80022b28:	ec02                	sd	zero,24(sp)
    80022b2a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49475
}
    80022b2c:	70e6                	ld	ra,120(sp)
    80022b2e:	7446                	ld	s0,112(sp)
    80022b30:	f03e                	sd	a5,32(sp)
    80022b32:	6562                	ld	a0,24(sp)
    80022b34:	7582                	ld	a1,32(sp)
    80022b36:	6109                	addi	sp,sp,128
    80022b38:	8082                	ret
quickjs-nuttx/quickjs.c:49468
    if (!res)
    80022b3a:	ed11                	bnez	a0,80022b56 <get_date_field+0x4a>
quickjs-nuttx/quickjs.c:49469
        return JS_NAN;
    80022b3c:	00071797          	auipc	a5,0x71
    80022b40:	0447b787          	fld	fa5,68(a5) # 80093b80 <_erodata+0xe>
    80022b44:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80022b48:	f2000753          	fmv.d.x	fa4,zero
    80022b4c:	479d                	li	a5,7
    80022b4e:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    80022b52:	ac3e                	fsd	fa5,24(sp)
    80022b54:	bfe1                	j	80022b2c <get_date_field+0x20>
quickjs-nuttx/quickjs.c:49471
    if (magic & 0x100) {    // getYear
    80022b56:	10047793          	andi	a5,s0,256
    80022b5a:	cb89                	beqz	a5,80022b6c <get_date_field+0x60>
quickjs-nuttx/quickjs.c:49472
        fields[0] -= 1900;
    80022b5c:	37a2                	fld	fa5,40(sp)
    80022b5e:	00071797          	auipc	a5,0x71
    80022b62:	0b27b707          	fld	fa4,178(a5) # 80093c10 <_erodata+0x9e>
    80022b66:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80022b6a:	b43e                	fsd	fa5,40(sp)
quickjs-nuttx/quickjs.c:49474
    return JS_NewFloat64(ctx, fields[n]);
    80022b6c:	8005                	srli	s0,s0,0x1
    80022b6e:	189c                	addi	a5,sp,112
    80022b70:	07847413          	andi	s0,s0,120
    80022b74:	943e                	add	s0,s0,a5
    80022b76:	fb843783          	ld	a5,-72(s0)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022b7a:	f20787d3          	fmv.d.x	fa5,a5
    80022b7e:	c2079653          	fcvt.w.d	a2,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022b82:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022b86:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022b8a:	e2078653          	fmv.x.d	a2,fa5
    80022b8e:	00c79663          	bne	a5,a2,80022b9a <get_date_field+0x8e>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    80022b92:	ce02                	sw	zero,28(sp)
    80022b94:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    80022b96:	cc3a                	sw	a4,24(sp)
    80022b98:	bf51                	j	80022b2c <get_date_field+0x20>
get_date_field():
quickjs-nuttx/quickjs.h:230
    return v;
    80022b9a:	ec3e                	sd	a5,24(sp)
    80022b9c:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022ba0:	479d                	li	a5,7
    80022ba2:	bfd5                	j	80022b96 <get_date_field+0x8a>

0000000080022ba4 <js_date_getTimezoneOffset>:
js_date_getTimezoneOffset():
quickjs-nuttx/quickjs.c:50065
{
    80022ba4:	711d                	addi	sp,sp,-96
    80022ba6:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:50069
    if (JS_ThisTimeValue(ctx, &v, this_val))
    80022ba8:	862e                	mv	a2,a1
    80022baa:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:50065
{
    80022bac:	ec86                	sd	ra,88(sp)
quickjs-nuttx/quickjs.c:50069
    if (JS_ThisTimeValue(ctx, &v, this_val))
    80022bae:	d7fff0ef          	jal	ra,8002292c <JS_ThisTimeValue>
    80022bb2:	c909                	beqz	a0,80022bc4 <js_date_getTimezoneOffset+0x20>
quickjs-nuttx/quickjs.c:50070
        return JS_EXCEPTION;
    80022bb4:	f002                	sd	zero,32(sp)
    80022bb6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:50072
        return JS_NAN;
    80022bb8:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:50075 (discriminator 1)
}
    80022bba:	60e6                	ld	ra,88(sp)
    80022bbc:	7502                	ld	a0,32(sp)
    80022bbe:	75a2                	ld	a1,40(sp)
    80022bc0:	6125                	addi	sp,sp,96
    80022bc2:	8082                	ret
quickjs-nuttx/quickjs.c:50071
    if (isnan(v))
    80022bc4:	27e2                	fld	fa5,24(sp)
    80022bc6:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80022bca:	ef91                	bnez	a5,80022be6 <js_date_getTimezoneOffset+0x42>
quickjs-nuttx/quickjs.c:50072
        return JS_NAN;
    80022bcc:	00071797          	auipc	a5,0x71
    80022bd0:	fb47b787          	fld	fa5,-76(a5) # 80093b80 <_erodata+0xe>
    80022bd4:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80022bd8:	f2000753          	fmv.d.x	fa4,zero
    80022bdc:	479d                	li	a5,7
    80022bde:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    80022be2:	b03e                	fsd	fa5,32(sp)
    80022be4:	bfd1                	j	80022bb8 <js_date_getTimezoneOffset+0x14>
quickjs-nuttx/quickjs.c:50074
        return JS_NewInt64(ctx, getTimezoneOffset((int64_t)trunc(v)));
    80022be6:	c2279553          	fcvt.l.d	a0,fa5,rtz
    80022bea:	f86e60ef          	jal	ra,80009370 <getTimezoneOffset>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80022bee:	d82a                	sw	a0,48(sp)
    80022bf0:	da02                	sw	zero,52(sp)
    80022bf2:	77c2                	ld	a5,48(sp)
    80022bf4:	f402                	sd	zero,40(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80022bf6:	f03e                	sd	a5,32(sp)
js_date_getTimezoneOffset():
quickjs-nuttx/quickjs.c:50074
    80022bf8:	b7c9                	j	80022bba <js_date_getTimezoneOffset+0x16>

0000000080022bfa <js_date_getTime>:
js_date_getTime():
quickjs-nuttx/quickjs.c:50079
{
    80022bfa:	7139                	addi	sp,sp,-64
    80022bfc:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:50083
    if (JS_ThisTimeValue(ctx, &v, this_val))
    80022bfe:	862e                	mv	a2,a1
    80022c00:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:50079
{
    80022c02:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:50083
    if (JS_ThisTimeValue(ctx, &v, this_val))
    80022c04:	d29ff0ef          	jal	ra,8002292c <JS_ThisTimeValue>
    80022c08:	c909                	beqz	a0,80022c1a <js_date_getTime+0x20>
quickjs-nuttx/quickjs.c:50084
        return JS_EXCEPTION;
    80022c0a:	f002                	sd	zero,32(sp)
    80022c0c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:50086
}
    80022c0e:	70e2                	ld	ra,56(sp)
    80022c10:	f43e                	sd	a5,40(sp)
    80022c12:	7502                	ld	a0,32(sp)
    80022c14:	75a2                	ld	a1,40(sp)
    80022c16:	6121                	addi	sp,sp,64
    80022c18:	8082                	ret
quickjs-nuttx/quickjs.c:50085
    return JS_NewFloat64(ctx, v);
    80022c1a:	67e2                	ld	a5,24(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022c1c:	f20787d3          	fmv.d.x	fa5,a5
    80022c20:	c2079653          	fcvt.w.d	a2,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022c24:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022c28:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022c2c:	e2078653          	fmv.x.d	a2,fa5
    80022c30:	00c79663          	bne	a5,a2,80022c3c <js_date_getTime+0x42>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    80022c34:	d202                	sw	zero,36(sp)
    80022c36:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    80022c38:	d03a                	sw	a4,32(sp)
    80022c3a:	bfd1                	j	80022c0e <js_date_getTime+0x14>
js_date_getTime():
quickjs-nuttx/quickjs.h:230
    return v;
    80022c3c:	f03e                	sd	a5,32(sp)
    80022c3e:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022c42:	479d                	li	a5,7
    80022c44:	bfd5                	j	80022c38 <js_date_getTime+0x3e>

0000000080022c46 <set_date_field>:
set_date_field():
quickjs-nuttx/quickjs.c:49479
{
    80022c46:	7115                	addi	sp,sp,-224
    80022c48:	e9a2                	sd	s0,208(sp)
    80022c4a:	a126                	fsd	fs1,128(sp)
    80022c4c:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:49485
    d = NAN;
    80022c4e:	00071797          	auipc	a5,0x71
    80022c52:	f327b487          	fld	fs1,-206(a5) # 80093b80 <_erodata+0xe>
    80022c56:	1294f4d3          	fmul.d	fs1,fs1,fs1
quickjs-nuttx/quickjs.c:49479
{
    80022c5a:	f556                	sd	s5,168(sp)
    80022c5c:	a522                	fsd	fs0,136(sp)
quickjs-nuttx/quickjs.c:49486
    first_field = (magic >> 8) & 0x0F;
    80022c5e:	40845a9b          	sraiw	s5,s0,0x8
quickjs-nuttx/quickjs.c:49485
    d = NAN;
    80022c62:	f2000453          	fmv.d.x	fs0,zero
quickjs-nuttx/quickjs.c:49479
{
    80022c66:	f15a                	sd	s6,160(sp)
quickjs-nuttx/quickjs.c:49486
    first_field = (magic >> 8) & 0x0F;
    80022c68:	00fafa93          	andi	s5,s5,15
quickjs-nuttx/quickjs.c:49488
    is_local = magic & 0x0F;
    80022c6c:	00f47b13          	andi	s6,s0,15
quickjs-nuttx/quickjs.c:49479
{
    80022c70:	e1ca                	sd	s2,192(sp)
    80022c72:	f952                	sd	s4,176(sp)
    80022c74:	8936                	mv	s2,a3
    80022c76:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs.c:49490
    res = get_date_fields(ctx, this_val, fields, is_local, first_field == 0);
    80022c78:	001ab793          	seqz	a5,s5
    80022c7c:	875a                	mv	a4,s6
    80022c7e:	1034                	addi	a3,sp,40
quickjs-nuttx/quickjs.c:49479
{
    80022c80:	fd4e                	sd	s3,184(sp)
    80022c82:	ed86                	sd	ra,216(sp)
    80022c84:	e5a6                	sd	s1,200(sp)
    80022c86:	ed5e                	sd	s7,152(sp)
    80022c88:	e962                	sd	s8,144(sp)
    80022c8a:	bcca                	fsd	fs2,120(sp)
quickjs-nuttx/quickjs.c:49485
    d = NAN;
    80022c8c:	1284f453          	fmul.d	fs0,fs1,fs0
quickjs-nuttx/quickjs.c:49479
{
    80022c90:	89aa                	mv	s3,a0
    80022c92:	e02e                	sd	a1,0(sp)
    80022c94:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:49490
    res = get_date_fields(ctx, this_val, fields, is_local, first_field == 0);
    80022c96:	cddff0ef          	jal	ra,80022972 <get_date_fields>
quickjs-nuttx/quickjs.c:49491
    if (res < 0)
    80022c9a:	02055663          	bgez	a0,80022cc6 <set_date_field+0x80>
quickjs-nuttx/quickjs.c:49492
        return JS_EXCEPTION;
    80022c9e:	4799                	li	a5,6
    80022ca0:	ec02                	sd	zero,24(sp)
    80022ca2:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:49507 (discriminator 1)
}
    80022ca4:	60ee                	ld	ra,216(sp)
    80022ca6:	644e                	ld	s0,208(sp)
    80022ca8:	6562                	ld	a0,24(sp)
    80022caa:	7582                	ld	a1,32(sp)
    80022cac:	64ae                	ld	s1,200(sp)
    80022cae:	690e                	ld	s2,192(sp)
    80022cb0:	79ea                	ld	s3,184(sp)
    80022cb2:	7a4a                	ld	s4,176(sp)
    80022cb4:	7aaa                	ld	s5,168(sp)
    80022cb6:	7b0a                	ld	s6,160(sp)
    80022cb8:	6bea                	ld	s7,152(sp)
    80022cba:	6c4a                	ld	s8,144(sp)
    80022cbc:	242a                	fld	fs0,136(sp)
    80022cbe:	248a                	fld	fs1,128(sp)
    80022cc0:	3966                	fld	fs2,120(sp)
    80022cc2:	612d                	addi	sp,sp,224
    80022cc4:	8082                	ret
quickjs-nuttx/quickjs.c:49487
    end_field = (magic >> 4) & 0x0F;
    80022cc6:	4044541b          	sraiw	s0,s0,0x4
    80022cca:	883d                	andi	s0,s0,15
quickjs-nuttx/quickjs.c:49495
    n = min_int(argc, end_field - first_field);
    80022ccc:	415407bb          	subw	a5,s0,s5
    80022cd0:	84aa                	mv	s1,a0
    80022cd2:	843e                	mv	s0,a5
    80022cd4:	00f95463          	bge	s2,a5,80022cdc <set_date_field+0x96>
    80022cd8:	0009041b          	sext.w	s0,s2
quickjs-nuttx/quickjs.c:49499
        if (!isfinite(a))
    80022cdc:	22949953          	fneg.d	fs2,fs1
quickjs-nuttx/quickjs.c:49496
    for(i = 0; i < n; i++) {
    80022ce0:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:49496 (discriminator 1)
    80022ce2:	000b879b          	sext.w	a5,s7
    80022ce6:	0287c563          	blt	a5,s0,80022d10 <set_date_field+0xca>
quickjs-nuttx/quickjs.c:49503
    if (res && argc > 0) {
    80022cea:	c889                	beqz	s1,80022cfc <set_date_field+0xb6>
quickjs-nuttx/quickjs.c:49503 (discriminator 1)
    80022cec:	01205863          	blez	s2,80022cfc <set_date_field+0xb6>
quickjs-nuttx/quickjs.c:49504
        d = set_date_fields(fields, is_local);
    80022cf0:	85da                	mv	a1,s6
    80022cf2:	1028                	addi	a0,sp,40
    80022cf4:	aa5e70ef          	jal	ra,8000a798 <set_date_fields>
    80022cf8:	22a50453          	fmv.d	fs0,fa0
quickjs-nuttx/quickjs.c:49506
    return JS_SetThisTimeValue(ctx, this_val, d);
    80022cfc:	22840553          	fmv.d	fa0,fs0
    80022d00:	6582                	ld	a1,0(sp)
    80022d02:	6622                	ld	a2,8(sp)
    80022d04:	854e                	mv	a0,s3
    80022d06:	c14f60ef          	jal	ra,8001911a <JS_SetThisTimeValue>
    80022d0a:	ec2a                	sd	a0,24(sp)
    80022d0c:	f02e                	sd	a1,32(sp)
    80022d0e:	bf59                	j	80022ca4 <set_date_field+0x5e>
quickjs-nuttx/quickjs.c:49497
        if (JS_ToFloat64(ctx, &a, argv[i]))
    80022d10:	004b9793          	slli	a5,s7,0x4
    80022d14:	97d2                	add	a5,a5,s4
    80022d16:	6390                	ld	a2,0(a5)
    80022d18:	6794                	ld	a3,8(a5)
    80022d1a:	080c                	addi	a1,sp,16
    80022d1c:	854e                	mv	a0,s3
    80022d1e:	a1fff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80022d22:	8c2a                	mv	s8,a0
    80022d24:	fd2d                	bnez	a0,80022c9e <set_date_field+0x58>
quickjs-nuttx/quickjs.c:49499
        if (!isfinite(a))
    80022d26:	2542                	fld	fa0,16(sp)
    80022d28:	a2a4a7d3          	feq.d	a5,fs1,fa0
    80022d2c:	eb81                	bnez	a5,80022d3c <set_date_field+0xf6>
quickjs-nuttx/quickjs.c:49499 (discriminator 1)
    80022d2e:	a32527d3          	feq.d	a5,fa0,fs2
    80022d32:	e789                	bnez	a5,80022d3c <set_date_field+0xf6>
quickjs-nuttx/quickjs.c:49499 (discriminator 2)
    80022d34:	a2a527d3          	feq.d	a5,fa0,fa0
    80022d38:	c391                	beqz	a5,80022d3c <set_date_field+0xf6>
quickjs-nuttx/quickjs.c:49499
    80022d3a:	8c26                	mv	s8,s1
quickjs-nuttx/quickjs.c:49501 (discriminator 2)
        fields[first_field + i] = trunc(a);
    80022d3c:	fd7dd0ef          	jal	ra,80000d12 <trunc>
    80022d40:	017a87bb          	addw	a5,s5,s7
    80022d44:	078e                	slli	a5,a5,0x3
    80022d46:	1898                	addi	a4,sp,112
    80022d48:	97ba                	add	a5,a5,a4
    80022d4a:	faa7bc27          	fsd	fa0,-72(a5)
quickjs-nuttx/quickjs.c:49496 (discriminator 2)
    for(i = 0; i < n; i++) {
    80022d4e:	0b85                	addi	s7,s7,1
quickjs-nuttx/quickjs.c:49501 (discriminator 2)
        fields[first_field + i] = trunc(a);
    80022d50:	84e2                	mv	s1,s8
    80022d52:	bf41                	j	80022ce2 <set_date_field+0x9c>

0000000080022d54 <js_date_setYear>:
js_date_setYear():
quickjs-nuttx/quickjs.c:50101
{
    80022d54:	711d                	addi	sp,sp,-96
    80022d56:	e02e                	sd	a1,0(sp)
    80022d58:	86b2                	mv	a3,a2
    80022d5a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:50106
    if (JS_ThisTimeValue(ctx, &y, this_val) || JS_ToFloat64(ctx, &y, argv[0]))
    80022d5c:	862e                	mv	a2,a1
    80022d5e:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:50101
{
    80022d60:	e8a2                	sd	s0,80(sp)
    80022d62:	e4a6                	sd	s1,72(sp)
    80022d64:	ec86                	sd	ra,88(sp)
    80022d66:	842a                	mv	s0,a0
    80022d68:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:50106
    if (JS_ThisTimeValue(ctx, &y, this_val) || JS_ToFloat64(ctx, &y, argv[0]))
    80022d6a:	bc3ff0ef          	jal	ra,8002292c <JS_ThisTimeValue>
    80022d6e:	c919                	beqz	a0,80022d84 <js_date_setYear+0x30>
quickjs-nuttx/quickjs.c:50107
        return JS_EXCEPTION;
    80022d70:	4799                	li	a5,6
    80022d72:	f802                	sd	zero,48(sp)
    80022d74:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:50116 (discriminator 1)
}
    80022d76:	60e6                	ld	ra,88(sp)
    80022d78:	6446                	ld	s0,80(sp)
    80022d7a:	7542                	ld	a0,48(sp)
    80022d7c:	75e2                	ld	a1,56(sp)
    80022d7e:	64a6                	ld	s1,72(sp)
    80022d80:	6125                	addi	sp,sp,96
    80022d82:	8082                	ret
quickjs-nuttx/quickjs.c:50106 (discriminator 1)
    if (JS_ThisTimeValue(ctx, &y, this_val) || JS_ToFloat64(ctx, &y, argv[0]))
    80022d84:	6090                	ld	a2,0(s1)
    80022d86:	6494                	ld	a3,8(s1)
    80022d88:	082c                	addi	a1,sp,24
    80022d8a:	8522                	mv	a0,s0
    80022d8c:	9b1ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80022d90:	f165                	bnez	a0,80022d70 <js_date_setYear+0x1c>
quickjs-nuttx/quickjs.c:50109
    if (isfinite(y)) {
    80022d92:	00071797          	auipc	a5,0x71
    80022d96:	dee7b787          	fld	fa5,-530(a5) # 80093b80 <_erodata+0xe>
    80022d9a:	12f7f7d3          	fmul.d	fa5,fa5,fa5
quickjs-nuttx/quickjs.c:50108
    y = +y;
    80022d9e:	2562                	fld	fa0,24(sp)
quickjs-nuttx/quickjs.c:50109
    if (isfinite(y)) {
    80022da0:	a2f527d3          	feq.d	a5,fa0,fa5
    80022da4:	ef9d                	bnez	a5,80022de2 <js_date_setYear+0x8e>
quickjs-nuttx/quickjs.c:50109 (discriminator 1)
    80022da6:	22f797d3          	fneg.d	fa5,fa5
    80022daa:	a2f527d3          	feq.d	a5,fa0,fa5
    80022dae:	eb95                	bnez	a5,80022de2 <js_date_setYear+0x8e>
quickjs-nuttx/quickjs.c:50109 (discriminator 2)
    80022db0:	a2a527d3          	feq.d	a5,fa0,fa0
    80022db4:	c79d                	beqz	a5,80022de2 <js_date_setYear+0x8e>
quickjs-nuttx/quickjs.c:50110
        y = trunc(y);
    80022db6:	f5ddd0ef          	jal	ra,80000d12 <trunc>
quickjs-nuttx/quickjs.c:50111
        if (y >= 0 && y < 100)
    80022dba:	f20007d3          	fmv.d.x	fa5,zero
quickjs-nuttx/quickjs.c:50110
        y = trunc(y);
    80022dbe:	ac2a                	fsd	fa0,24(sp)
quickjs-nuttx/quickjs.c:50111
        if (y >= 0 && y < 100)
    80022dc0:	a2a787d3          	fle.d	a5,fa5,fa0
    80022dc4:	cf99                	beqz	a5,80022de2 <js_date_setYear+0x8e>
quickjs-nuttx/quickjs.c:50111 (discriminator 1)
    80022dc6:	00071797          	auipc	a5,0x71
    80022dca:	e427b787          	fld	fa5,-446(a5) # 80093c08 <_erodata+0x96>
    80022dce:	a2f517d3          	flt.d	a5,fa0,fa5
    80022dd2:	cb81                	beqz	a5,80022de2 <js_date_setYear+0x8e>
quickjs-nuttx/quickjs.c:50112
            y += 1900;
    80022dd4:	00071797          	auipc	a5,0x71
    80022dd8:	e3c7b787          	fld	fa5,-452(a5) # 80093c10 <_erodata+0x9e>
    80022ddc:	02f57553          	fadd.d	fa0,fa0,fa5
    80022de0:	ac2a                	fsd	fa0,24(sp)
quickjs-nuttx/quickjs.c:50114
    args[0] = JS_NewFloat64(ctx, y);
    80022de2:	67e2                	ld	a5,24(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022de4:	f20787d3          	fmv.d.x	fa5,a5
    80022de8:	c2079653          	fcvt.w.d	a2,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022dec:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022df0:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022df4:	e2078653          	fmv.x.d	a2,fa5
    80022df8:	02c79363          	bne	a5,a2,80022e1e <js_date_setYear+0xca>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    80022dfc:	da02                	sw	zero,52(sp)
    80022dfe:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    80022e00:	d83a                	sw	a4,48(sp)
    80022e02:	37c2                	fld	fa5,48(sp)
js_date_setYear():
quickjs-nuttx/quickjs.c:50115
    return set_date_field(ctx, this_val, 1, args, 0x011);
    80022e04:	6582                	ld	a1,0(sp)
    80022e06:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:50114
    args[0] = JS_NewFloat64(ctx, y);
    80022e08:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:50115
    return set_date_field(ctx, this_val, 1, args, 0x011);
    80022e0a:	1018                	addi	a4,sp,32
    80022e0c:	47c5                	li	a5,17
    80022e0e:	4685                	li	a3,1
    80022e10:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50114
    args[0] = JS_NewFloat64(ctx, y);
    80022e12:	b03e                	fsd	fa5,32(sp)
quickjs-nuttx/quickjs.c:50115
    return set_date_field(ctx, this_val, 1, args, 0x011);
    80022e14:	e33ff0ef          	jal	ra,80022c46 <set_date_field>
    80022e18:	f82a                	sd	a0,48(sp)
    80022e1a:	fc2e                	sd	a1,56(sp)
    80022e1c:	bfa9                	j	80022d76 <js_date_setYear+0x22>
quickjs-nuttx/quickjs.h:230
    return v;
    80022e1e:	f83e                	sd	a5,48(sp)
    80022e20:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022e24:	479d                	li	a5,7
    80022e26:	bfe9                	j	80022e00 <js_date_setYear+0xac>

0000000080022e28 <js_date_setTime>:
js_date_setTime():
quickjs-nuttx/quickjs.c:50090
{
    80022e28:	715d                	addi	sp,sp,-80
    80022e2a:	e02e                	sd	a1,0(sp)
    80022e2c:	86b2                	mv	a3,a2
    80022e2e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:50094
    if (JS_ThisTimeValue(ctx, &v, this_val) || JS_ToFloat64(ctx, &v, argv[0]))
    80022e30:	862e                	mv	a2,a1
    80022e32:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:50090
{
    80022e34:	e0a2                	sd	s0,64(sp)
    80022e36:	fc26                	sd	s1,56(sp)
    80022e38:	e486                	sd	ra,72(sp)
    80022e3a:	842a                	mv	s0,a0
    80022e3c:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:50094
    if (JS_ThisTimeValue(ctx, &v, this_val) || JS_ToFloat64(ctx, &v, argv[0]))
    80022e3e:	aefff0ef          	jal	ra,8002292c <JS_ThisTimeValue>
    80022e42:	c919                	beqz	a0,80022e58 <js_date_setTime+0x30>
quickjs-nuttx/quickjs.c:50095
        return JS_EXCEPTION;
    80022e44:	4799                	li	a5,6
    80022e46:	f002                	sd	zero,32(sp)
    80022e48:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:50097 (discriminator 1)
}
    80022e4a:	60a6                	ld	ra,72(sp)
    80022e4c:	6406                	ld	s0,64(sp)
    80022e4e:	7502                	ld	a0,32(sp)
    80022e50:	75a2                	ld	a1,40(sp)
    80022e52:	74e2                	ld	s1,56(sp)
    80022e54:	6161                	addi	sp,sp,80
    80022e56:	8082                	ret
quickjs-nuttx/quickjs.c:50094 (discriminator 1)
    if (JS_ThisTimeValue(ctx, &v, this_val) || JS_ToFloat64(ctx, &v, argv[0]))
    80022e58:	6090                	ld	a2,0(s1)
    80022e5a:	6494                	ld	a3,8(s1)
    80022e5c:	082c                	addi	a1,sp,24
    80022e5e:	8522                	mv	a0,s0
    80022e60:	8ddff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80022e64:	f165                	bnez	a0,80022e44 <js_date_setTime+0x1c>
quickjs-nuttx/quickjs.c:50096
    return JS_SetThisTimeValue(ctx, this_val, time_clip(v));
    80022e66:	2562                	fld	fa0,24(sp)
    80022e68:	a55e60ef          	jal	ra,800098bc <time_clip>
    80022e6c:	6582                	ld	a1,0(sp)
    80022e6e:	6622                	ld	a2,8(sp)
    80022e70:	8522                	mv	a0,s0
    80022e72:	aa8f60ef          	jal	ra,8001911a <JS_SetThisTimeValue>
    80022e76:	f02a                	sd	a0,32(sp)
    80022e78:	f42e                	sd	a1,40(sp)
    80022e7a:	bfc1                	j	80022e4a <js_date_setTime+0x22>

0000000080022e7c <js_math_hypot>:
js_math_hypot():
quickjs-nuttx/quickjs.c:43046
{
    80022e7c:	711d                	addi	sp,sp,-96
    80022e7e:	ec86                	sd	ra,88(sp)
    80022e80:	e8a2                	sd	s0,80(sp)
    80022e82:	e4a6                	sd	s1,72(sp)
    80022e84:	e0ca                	sd	s2,64(sp)
    80022e86:	fc4e                	sd	s3,56(sp)
    80022e88:	e02e                	sd	a1,0(sp)
    80022e8a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:43050
    r = 0;
    80022e8c:	e802                	sd	zero,16(sp)
quickjs-nuttx/quickjs.c:43051
    if (argc > 0) {
    80022e8e:	02d05e63          	blez	a3,80022eca <js_math_hypot+0x4e>
    80022e92:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:43052
        if (JS_ToFloat64(ctx, &r, argv[0]))
    80022e94:	6310                	ld	a2,0(a4)
    80022e96:	6714                	ld	a3,8(a4)
    80022e98:	080c                	addi	a1,sp,16
    80022e9a:	89aa                	mv	s3,a0
    80022e9c:	843a                	mv	s0,a4
    80022e9e:	89fff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80022ea2:	cd09                	beqz	a0,80022ebc <js_math_hypot+0x40>
quickjs-nuttx/quickjs.c:43053
            return JS_EXCEPTION;
    80022ea4:	f002                	sd	zero,32(sp)
    80022ea6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:43066
}
    80022ea8:	60e6                	ld	ra,88(sp)
    80022eaa:	6446                	ld	s0,80(sp)
    80022eac:	f43e                	sd	a5,40(sp)
    80022eae:	7502                	ld	a0,32(sp)
    80022eb0:	75a2                	ld	a1,40(sp)
    80022eb2:	64a6                	ld	s1,72(sp)
    80022eb4:	6906                	ld	s2,64(sp)
    80022eb6:	79e2                	ld	s3,56(sp)
    80022eb8:	6125                	addi	sp,sp,96
    80022eba:	8082                	ret
quickjs-nuttx/quickjs.c:43054
        if (argc == 1) {
    80022ebc:	4785                	li	a5,1
    80022ebe:	02f49763          	bne	s1,a5,80022eec <js_math_hypot+0x70>
quickjs-nuttx/quickjs.c:43055
            r = fabs(r);
    80022ec2:	27c2                	fld	fa5,16(sp)
    80022ec4:	22f7a7d3          	fabs.d	fa5,fa5
    80022ec8:	a83e                	fsd	fa5,16(sp)
quickjs-nuttx/quickjs.c:43065
    return JS_NewFloat64(ctx, r);
    80022eca:	67c2                	ld	a5,16(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022ecc:	f20787d3          	fmv.d.x	fa5,a5
    80022ed0:	c2079653          	fcvt.w.d	a2,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022ed4:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022ed8:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022edc:	e2078653          	fmv.x.d	a2,fa5
    80022ee0:	02c79963          	bne	a5,a2,80022f12 <js_math_hypot+0x96>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    80022ee4:	d202                	sw	zero,36(sp)
    80022ee6:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    80022ee8:	d03a                	sw	a4,32(sp)
    80022eea:	bf7d                	j	80022ea8 <js_math_hypot+0x2c>
    80022eec:	0441                	addi	s0,s0,16
js_math_hypot():
quickjs-nuttx/quickjs.c:43058
            for (i = 1; i < argc; i++) {
    80022eee:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:43059
                if (JS_ToFloat64(ctx, &a, argv[i]))
    80022ef0:	6010                	ld	a2,0(s0)
    80022ef2:	6414                	ld	a3,8(s0)
    80022ef4:	082c                	addi	a1,sp,24
    80022ef6:	854e                	mv	a0,s3
    80022ef8:	845ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80022efc:	f545                	bnez	a0,80022ea4 <js_math_hypot+0x28>
quickjs-nuttx/quickjs.c:43061 (discriminator 2)
                r = hypot(r, a);
    80022efe:	25e2                	fld	fa1,24(sp)
    80022f00:	2542                	fld	fa0,16(sp)
quickjs-nuttx/quickjs.c:43058 (discriminator 2)
            for (i = 1; i < argc; i++) {
    80022f02:	2905                	addiw	s2,s2,1
    80022f04:	0441                	addi	s0,s0,16
quickjs-nuttx/quickjs.c:43061 (discriminator 2)
                r = hypot(r, a);
    80022f06:	4f53c0ef          	jal	ra,8005fbfa <hypot>
    80022f0a:	a82a                	fsd	fa0,16(sp)
quickjs-nuttx/quickjs.c:43058 (discriminator 2)
            for (i = 1; i < argc; i++) {
    80022f0c:	fe9942e3          	blt	s2,s1,80022ef0 <js_math_hypot+0x74>
    80022f10:	bf6d                	j	80022eca <js_math_hypot+0x4e>
quickjs-nuttx/quickjs.h:230
    return v;
    80022f12:	f03e                	sd	a5,32(sp)
    80022f14:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022f18:	479d                	li	a5,7
    80022f1a:	b7f9                	j	80022ee8 <js_math_hypot+0x6c>

0000000080022f1c <js_math_min_max>:
js_math_min_max():
quickjs-nuttx/quickjs.c:42955
{
    80022f1c:	7119                	addi	sp,sp,-128
    80022f1e:	ecce                	sd	s3,88(sp)
    80022f20:	fc86                	sd	ra,120(sp)
    80022f22:	f8a2                	sd	s0,112(sp)
    80022f24:	f4a6                	sd	s1,104(sp)
    80022f26:	f0ca                	sd	s2,96(sp)
    80022f28:	e8d2                	sd	s4,80(sp)
    80022f2a:	a4a2                	fsd	fs0,72(sp)
    80022f2c:	e02e                	sd	a1,0(sp)
    80022f2e:	e432                	sd	a2,8(sp)
    80022f30:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:42961
    if (unlikely(argc == 0)) {
    80022f32:	e29d                	bnez	a3,80022f58 <js_math_min_max+0x3c>
quickjs-nuttx/quickjs.c:42962
        return __JS_NewFloat64(ctx, is_max ? -1.0 / 0.0 : 1.0 / 0.0);
    80022f34:	cf89                	beqz	a5,80022f4e <js_math_min_max+0x32>
quickjs-nuttx/quickjs.c:42962 (discriminator 1)
    80022f36:	00071797          	auipc	a5,0x71
    80022f3a:	c527b787          	fld	fa5,-942(a5) # 80093b88 <_erodata+0x16>
quickjs-nuttx/quickjs.c:42962 (discriminator 2)
    80022f3e:	f2000753          	fmv.d.x	fa4,zero
    80022f42:	479d                	li	a5,7
    80022f44:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
quickjs-nuttx/quickjs.h:230 (discriminator 2)
    return v;
    80022f48:	b03e                	fsd	fa5,32(sp)
    80022f4a:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:43002
        return JS_NewFloat64(ctx, r);
    80022f4c:	a805                	j	80022f7c <js_math_min_max+0x60>
quickjs-nuttx/quickjs.c:42962 (discriminator 2)
        return __JS_NewFloat64(ctx, is_max ? -1.0 / 0.0 : 1.0 / 0.0);
    80022f4e:	00071797          	auipc	a5,0x71
    80022f52:	c427b787          	fld	fa5,-958(a5) # 80093b90 <_erodata+0x1e>
    80022f56:	b7e5                	j	80022f3e <js_math_min_max+0x22>
    80022f58:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:42965
    tag = JS_VALUE_GET_TAG(argv[0]);
    80022f5a:	6714                	ld	a3,8(a4)
    80022f5c:	8a2a                	mv	s4,a0
    80022f5e:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:42966
    if (tag == JS_TAG_INT) {
    80022f60:	0006879b          	sext.w	a5,a3
    80022f64:	e7c9                	bnez	a5,80022fee <js_math_min_max+0xd2>
quickjs-nuttx/quickjs.c:42967
        int a1, r1 = JS_VALUE_GET_INT(argv[0]);
    80022f66:	4310                	lw	a2,0(a4)
quickjs-nuttx/quickjs.c:42968
        for(i = 1; i < argc; i++) {
    80022f68:	01070793          	addi	a5,a4,16 # 110010 <asinh-0x7feefff0>
    80022f6c:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:42968 (discriminator 1)
    80022f6e:	03244263          	blt	s0,s2,80022f92 <js_math_min_max+0x76>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80022f72:	da02                	sw	zero,52(sp)
    80022f74:	d832                	sw	a2,48(sp)
    80022f76:	77c2                	ld	a5,48(sp)
    80022f78:	f402                	sd	zero,40(sp)
    80022f7a:	f03e                	sd	a5,32(sp)
js_math_min_max():
quickjs-nuttx/quickjs.c:43004 (discriminator 1)
}
    80022f7c:	70e6                	ld	ra,120(sp)
    80022f7e:	7446                	ld	s0,112(sp)
    80022f80:	7502                	ld	a0,32(sp)
    80022f82:	75a2                	ld	a1,40(sp)
    80022f84:	74a6                	ld	s1,104(sp)
    80022f86:	7906                	ld	s2,96(sp)
    80022f88:	69e6                	ld	s3,88(sp)
    80022f8a:	6a46                	ld	s4,80(sp)
    80022f8c:	2426                	fld	fs0,72(sp)
    80022f8e:	6109                	addi	sp,sp,128
    80022f90:	8082                	ret
quickjs-nuttx/quickjs.c:42970
            if (tag != JS_TAG_INT) {
    80022f92:	4798                	lw	a4,8(a5)
    80022f94:	cf15                	beqz	a4,80022fd0 <js_math_min_max+0xb4>
quickjs-nuttx/quickjs.c:42971
                r = r1;
    80022f96:	d20607d3          	fcvt.d.w	fa5,a2
    80022f9a:	a83e                	fsd	fa5,16(sp)
js_fmin():
quickjs-nuttx/quickjs.c:42928
    if (a == 0 && b == 0) {
    80022f9c:	f2000453          	fmv.d.x	fs0,zero
    80022fa0:	00441713          	slli	a4,s0,0x4
    80022fa4:	94ba                	add	s1,s1,a4
js_math_min_max():
quickjs-nuttx/quickjs.c:42987
        while (i < argc) {
    80022fa6:	05244d63          	blt	s0,s2,80023000 <js_math_min_max+0xe4>
quickjs-nuttx/quickjs.c:43002
        return JS_NewFloat64(ctx, r);
    80022faa:	67c2                	ld	a5,16(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022fac:	f20787d3          	fmv.d.x	fa5,a5
    80022fb0:	c20796d3          	fcvt.w.d	a3,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022fb4:	d20687d3          	fcvt.d.w	fa5,a3
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80022fb8:	0006871b          	sext.w	a4,a3
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80022fbc:	e2078653          	fmv.x.d	a2,fa5
    80022fc0:	0af61e63          	bne	a2,a5,8002307c <js_math_min_max+0x160>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    80022fc4:	da02                	sw	zero,52(sp)
    80022fc6:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    80022fc8:	d83a                	sw	a4,48(sp)
    80022fca:	37c2                	fld	fa5,48(sp)
    80022fcc:	b03e                	fsd	fa5,32(sp)
    80022fce:	bfb5                	j	80022f4a <js_math_min_max+0x2e>
js_math_min_max():
quickjs-nuttx/quickjs.c:42974
            a1 = JS_VALUE_GET_INT(argv[i]);
    80022fd0:	4398                	lw	a4,0(a5)
quickjs-nuttx/quickjs.c:42975
            if (is_max)
    80022fd2:	86b2                	mv	a3,a2
    80022fd4:	00098663          	beqz	s3,80022fe0 <js_math_min_max+0xc4>
max_int():
quickjs-nuttx/cutils.h:71
    if (a > b)
    80022fd8:	00e65663          	bge	a2,a4,80022fe4 <js_math_min_max+0xc8>
    80022fdc:	86ba                	mv	a3,a4
    80022fde:	a019                	j	80022fe4 <js_math_min_max+0xc8>
min_int():
quickjs-nuttx/cutils.h:79
    if (a < b)
    80022fe0:	fec74ee3          	blt	a4,a2,80022fdc <js_math_min_max+0xc0>
    80022fe4:	0006861b          	sext.w	a2,a3
js_math_min_max():
quickjs-nuttx/quickjs.c:42968
        for(i = 1; i < argc; i++) {
    80022fe8:	2405                	addiw	s0,s0,1
    80022fea:	07c1                	addi	a5,a5,16
    80022fec:	b749                	j	80022f6e <js_math_min_max+0x52>
quickjs-nuttx/quickjs.c:42983
        if (JS_ToFloat64(ctx, &r, argv[0]))
    80022fee:	6310                	ld	a2,0(a4)
    80022ff0:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs.c:42985
        i = 1;
    80022ff2:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:42983
        if (JS_ToFloat64(ctx, &r, argv[0]))
    80022ff4:	f48ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80022ff8:	d155                	beqz	a0,80022f9c <js_math_min_max+0x80>
quickjs-nuttx/quickjs.c:42984
            return JS_EXCEPTION;
    80022ffa:	f002                	sd	zero,32(sp)
    80022ffc:	4799                	li	a5,6
    80022ffe:	b7b1                	j	80022f4a <js_math_min_max+0x2e>
quickjs-nuttx/quickjs.c:42988
            if (JS_ToFloat64(ctx, &a, argv[i]))
