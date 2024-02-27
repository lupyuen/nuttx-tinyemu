    80026000:	65c2                	ld	a1,16(sp)
    80026002:	8526                	mv	a0,s1
    80026004:	f9ae50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12182
        JS_ThrowTypeError(ctx, "cannot convert to bigint");
    80026008:	8526                	mv	a0,s1
    8002600a:	00045597          	auipc	a1,0x45
    8002600e:	e9e58593          	addi	a1,a1,-354 # 8006aea8 <qjsc_repl+0x58f8>
    80026012:	e5af20ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80026016:	a86d                	j	800260d0 <JS_ToBigIntFree+0x142>
quickjs-nuttx/quickjs.c:12126
    switch(tag) {
    80026018:	0b478163          	beq	a5,s4,800260ba <JS_ToBigIntFree+0x12c>
    8002601c:	0b578c63          	beq	a5,s5,800260d4 <JS_ToBigIntFree+0x146>
    80026020:	575d                	li	a4,-9
    80026022:	fce79fe3          	bne	a5,a4,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12157
        if (!is_math_mode(ctx))
    80026026:	8526                	mv	a0,s1
    80026028:	e032                	sd	a2,0(sp)
    8002602a:	b6be10ef          	jal	ra,80007b94 <is_math_mode>
    8002602e:	6602                	ld	a2,0(sp)
    80026030:	d961                	beqz	a0,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12159
        p = JS_VALUE_GET_PTR(val);
    80026032:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:12160
        if (!bf_is_finite(&p->num))
    80026034:	57ed                	li	a5,-5
    80026036:	8385                	srli	a5,a5,0x1
    80026038:	01893703          	ld	a4,24(s2)
    8002603c:	fce7c2e3          	blt	a5,a4,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12163
        bf_init(ctx->bf_ctx, r);
    80026040:	1904b503          	ld	a0,400(s1)
    80026044:	85a2                	mv	a1,s0
    80026046:	329310ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12164
        bf_set(r, &p->num);
    8002604a:	00890593          	addi	a1,s2,8
    8002604e:	8522                	mv	a0,s0
    80026050:	7d3310ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:12165
        bf_rint(r, BF_RNDZ);
    80026054:	4585                	li	a1,1
    80026056:	8522                	mv	a0,s0
    80026058:	5e1320ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/quickjs.c:12166
        JS_FreeValue(ctx, val);
    8002605c:	65c2                	ld	a1,16(sp)
    8002605e:	6602                	ld	a2,0(sp)
    80026060:	8526                	mv	a0,s1
    80026062:	f3ce50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12167
        break;
    80026066:	b741                	j	80025fe6 <JS_ToBigIntFree+0x58>
quickjs-nuttx/quickjs.c:12140
            double d = JS_VALUE_GET_FLOAT64(val);
    80026068:	2542                	fld	fa0,16(sp)
quickjs-nuttx/quickjs.c:12141
            if (!is_math_mode(ctx))
    8002606a:	8526                	mv	a0,s1
    8002606c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:12140
            double d = JS_VALUE_GET_FLOAT64(val);
    8002606e:	a02a                	fsd	fa0,0(sp)
quickjs-nuttx/quickjs.c:12141
            if (!is_math_mode(ctx))
    80026070:	b25e10ef          	jal	ra,80007b94 <is_math_mode>
    80026074:	6622                	ld	a2,8(sp)
    80026076:	d549                	beqz	a0,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12143
            if (!isfinite(d))
    80026078:	0006e797          	auipc	a5,0x6e
    8002607c:	b087b787          	fld	fa5,-1272(a5) # 80093b80 <_erodata+0xe>
    80026080:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80026084:	2502                	fld	fa0,0(sp)
    80026086:	a2a7a7d3          	feq.d	a5,fa5,fa0
    8002608a:	fbbd                	bnez	a5,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12143 (discriminator 1)
    8002608c:	22f797d3          	fneg.d	fa5,fa5
    80026090:	a2a7a7d3          	feq.d	a5,fa5,fa0
    80026094:	f7b5                	bnez	a5,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12143 (discriminator 2)
    80026096:	a2a527d3          	feq.d	a5,fa0,fa0
    8002609a:	d3bd                	beqz	a5,80026000 <JS_ToBigIntFree+0x72>
quickjs-nuttx/quickjs.c:12146
            bf_init(ctx->bf_ctx, r);
    8002609c:	1904b503          	ld	a0,400(s1)
    800260a0:	85a2                	mv	a1,s0
    800260a2:	2cd310ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12147
            d = trunc(d);
    800260a6:	2502                	fld	fa0,0(sp)
    800260a8:	c6bda0ef          	jal	ra,80000d12 <trunc>
quickjs-nuttx/quickjs.c:12148
            bf_set_float64(r, d);
    800260ac:	8522                	mv	a0,s0
    800260ae:	65d320ef          	jal	ra,80058f0a <bf_set_float64>
quickjs-nuttx/quickjs.c:12150
        break;
    800260b2:	bf15                	j	80025fe6 <JS_ToBigIntFree+0x58>
quickjs-nuttx/quickjs.c:12153
        r = &p->num;
    800260b4:	6442                	ld	s0,16(sp)
    800260b6:	0421                	addi	s0,s0,8
quickjs-nuttx/quickjs.c:12154
        break;
    800260b8:	b73d                	j	80025fe6 <JS_ToBigIntFree+0x58>
quickjs-nuttx/quickjs.c:12170
        val = JS_StringToBigIntErr(ctx, val);
    800260ba:	65c2                	ld	a1,16(sp)
    800260bc:	8526                	mv	a0,s1
    800260be:	e8fff0ef          	jal	ra,80025f4c <JS_StringToBigIntErr>
    800260c2:	e82a                	sd	a0,16(sp)
    800260c4:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:12171
        if (JS_IsException(val))
    800260c6:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:12170
        val = JS_StringToBigIntErr(ctx, val);
    800260ca:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:12171
        if (JS_IsException(val))
    800260cc:	ef2792e3          	bne	a5,s2,80025fb0 <JS_ToBigIntFree+0x22>
quickjs-nuttx/quickjs.c:12183
        return NULL;
    800260d0:	4401                	li	s0,0
    800260d2:	bf11                	j	80025fe6 <JS_ToBigIntFree+0x58>
quickjs-nuttx/quickjs.c:12175
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    800260d4:	65c2                	ld	a1,16(sp)
    800260d6:	4685                	li	a3,1
    800260d8:	8526                	mv	a0,s1
    800260da:	a03f90ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    800260de:	b7d5                	j	800260c2 <JS_ToBigIntFree+0x134>

00000000800260e0 <JS_ToBigInt64Free>:
JS_ToBigInt64Free():
quickjs-nuttx/quickjs.c:12235
{
    800260e0:	7159                	addi	sp,sp,-112
    800260e2:	f0a2                	sd	s0,96(sp)
    800260e4:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:12238
    a = JS_ToBigIntFree(ctx, &a_s, val);
    800260e6:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs.c:12235
{
    800260e8:	eca6                	sd	s1,88(sp)
    800260ea:	f486                	sd	ra,104(sp)
    800260ec:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:12238
    a = JS_ToBigIntFree(ctx, &a_s, val);
    800260ee:	ea1ff0ef          	jal	ra,80025f8e <JS_ToBigIntFree>
quickjs-nuttx/quickjs.c:12239
    if (!a) {
    800260f2:	e909                	bnez	a0,80026104 <JS_ToBigInt64Free+0x24>
quickjs-nuttx/quickjs.c:12240
        *pres = 0;
    800260f4:	00043023          	sd	zero,0(s0)
quickjs-nuttx/quickjs.c:12241
        return -1;
    800260f8:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:12246
}
    800260fa:	70a6                	ld	ra,104(sp)
    800260fc:	7406                	ld	s0,96(sp)
    800260fe:	64e6                	ld	s1,88(sp)
    80026100:	6165                	addi	sp,sp,112
    80026102:	8082                	ret
    80026104:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:12243
    bf_get_int64(pres, a, BF_GET_INT_MOD);
    80026106:	4605                	li	a2,1
    80026108:	e42a                	sd	a0,8(sp)
    8002610a:	8522                	mv	a0,s0
    8002610c:	763320ef          	jal	ra,8005906e <bf_get_int64>
quickjs-nuttx/quickjs.c:12244
    JS_FreeBigInt(ctx, a, &a_s);
    80026110:	65a2                	ld	a1,8(sp)
    80026112:	8526                	mv	a0,s1
    80026114:	1030                	addi	a2,sp,40
    80026116:	b11e50ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:12245
    return 0;
    8002611a:	4501                	li	a0,0
    8002611c:	bff9                	j	800260fa <JS_ToBigInt64Free+0x1a>

000000008002611e <JS_ToBigInt64>:
JS_ToBigInt64():
quickjs-nuttx/quickjs.c:12249
{
    8002611e:	7139                	addi	sp,sp,-64
    80026120:	f822                	sd	s0,48(sp)
    80026122:	f426                	sd	s1,40(sp)
    80026124:	842a                	mv	s0,a0
    80026126:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:12250
    return JS_ToBigInt64Free(ctx, pres, JS_DupValue(ctx, val));
    80026128:	8532                	mv	a0,a2
    8002612a:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:12249
{
    8002612c:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:12250
    return JS_ToBigInt64Free(ctx, pres, JS_DupValue(ctx, val));
    8002612e:	aece40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80026132:	862a                	mv	a2,a0
    80026134:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:12251
}
    80026136:	7442                	ld	s0,48(sp)
    80026138:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:12250
    return JS_ToBigInt64Free(ctx, pres, JS_DupValue(ctx, val));
    8002613a:	86ae                	mv	a3,a1
    8002613c:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:12251
}
    8002613e:	74a2                	ld	s1,40(sp)
    80026140:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:12250
    return JS_ToBigInt64Free(ctx, pres, JS_DupValue(ctx, val));
    80026142:	f9fff06f          	j	800260e0 <JS_ToBigInt64Free>

0000000080026146 <JS_ToInt64Ext>:
JS_ToInt64Ext():
quickjs-nuttx/quickjs.c:10889
    if (JS_IsBigInt(ctx, val))
    80026146:	0006879b          	sext.w	a5,a3
    8002614a:	5759                	li	a4,-10
quickjs-nuttx/quickjs.c:10888
{
    8002614c:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:10889
    if (JS_IsBigInt(ctx, val))
    8002614e:	00e79563          	bne	a5,a4,80026158 <JS_ToInt64Ext+0x12>
quickjs-nuttx/quickjs.c:10893
}
    80026152:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:10890
        return JS_ToBigInt64(ctx, pres, val);
    80026154:	fcbff06f          	j	8002611e <JS_ToBigInt64>
quickjs-nuttx/quickjs.c:10893
}
    80026158:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:10892
        return JS_ToInt64(ctx, pres, val);
    8002615a:	cc3fe06f          	j	80024e1c <JS_ToInt64>

000000008002615e <js_mul_pow10>:
js_mul_pow10():
quickjs-nuttx/quickjs.c:14256
{
    8002615e:	7135                	addi	sp,sp,-160
    80026160:	e922                	sd	s0,144(sp)
    80026162:	e14a                	sd	s2,128(sp)
    80026164:	ed06                	sd	ra,152(sp)
    80026166:	e526                	sd	s1,136(sp)
    80026168:	fcce                	sd	s3,120(sp)
    8002616a:	f8d2                	sd	s4,112(sp)
    8002616c:	f4d6                	sd	s5,104(sp)
    8002616e:	842a                	mv	s0,a0
    80026170:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:14262
    res = JS_NewBigFloat(ctx);
    80026172:	80ef40ef          	jal	ra,8001a180 <JS_NewBigFloat>
    80026176:	f82e                	sd	a1,48(sp)
    80026178:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:14263
    if (JS_IsException(res))
    8002617a:	2581                	sext.w	a1,a1
    8002617c:	4799                	li	a5,6
    8002617e:	02f58d63          	beq	a1,a5,800261b8 <js_mul_pow10+0x5a>
quickjs-nuttx/quickjs.c:14266
    op1 = sp[-2];
    80026182:	fe093603          	ld	a2,-32(s2)
    80026186:	fe893683          	ld	a3,-24(s2)
quickjs-nuttx/quickjs.c:14267
    op2 = sp[-1];
    8002618a:	ff093783          	ld	a5,-16(s2)
    8002618e:	ff893483          	ld	s1,-8(s2)
quickjs-nuttx/quickjs.c:14268
    a = JS_ToBigFloat(ctx, &a_s, op1);
    80026192:	03810a93          	addi	s5,sp,56
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    80026196:	00850a13          	addi	s4,a0,8
js_mul_pow10():
quickjs-nuttx/quickjs.c:14268
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8002619a:	85d6                	mv	a1,s5
    8002619c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:14266
    op1 = sp[-2];
    8002619e:	e432                	sd	a2,8(sp)
    800261a0:	e836                	sd	a3,16(sp)
quickjs-nuttx/quickjs.c:14267
    op2 = sp[-1];
    800261a2:	ec3e                	sd	a5,24(sp)
    800261a4:	f026                	sd	s1,32(sp)
quickjs-nuttx/quickjs.c:14268
    a = JS_ToBigFloat(ctx, &a_s, op1);
    800261a6:	ac2e40ef          	jal	ra,8000a468 <JS_ToBigFloat>
    800261aa:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:14269
    if (!a) {
    800261ac:	e901                	bnez	a0,800261bc <js_mul_pow10+0x5e>
quickjs-nuttx/quickjs.c:14270
        JS_FreeValue(ctx, res);
    800261ae:	75a2                	ld	a1,40(sp)
    800261b0:	7642                	ld	a2,48(sp)
    800261b2:	8522                	mv	a0,s0
    800261b4:	deae50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14264
        return -1;
    800261b8:	54fd                	li	s1,-1
    800261ba:	a0ad                	j	80026224 <js_mul_pow10+0xc6>
quickjs-nuttx/quickjs.c:14273
    if (JS_IsBigInt(ctx, op2)) {
    800261bc:	2481                	sext.w	s1,s1
    800261be:	57d9                	li	a5,-10
quickjs-nuttx/quickjs.c:14274
        ret = JS_ToBigInt64(ctx, &e, op2);
    800261c0:	6662                	ld	a2,24(sp)
    800261c2:	7682                	ld	a3,32(sp)
    800261c4:	858a                	mv	a1,sp
    800261c6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:14273
    if (JS_IsBigInt(ctx, op2)) {
    800261c8:	00f49c63          	bne	s1,a5,800261e0 <js_mul_pow10+0x82>
quickjs-nuttx/quickjs.c:14274
        ret = JS_ToBigInt64(ctx, &e, op2);
    800261cc:	f53ff0ef          	jal	ra,8002611e <JS_ToBigInt64>
quickjs-nuttx/quickjs.c:14276
        ret = JS_ToInt64(ctx, &e, op2);
    800261d0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:14278
    if (ret) {
    800261d2:	c911                	beqz	a0,800261e6 <js_mul_pow10+0x88>
quickjs-nuttx/quickjs.c:14279
        if (a == &a_s)
    800261d4:	fd599de3          	bne	s3,s5,800261ae <js_mul_pow10+0x50>
quickjs-nuttx/quickjs.c:14280
            bf_delete(a);
    800261d8:	854e                	mv	a0,s3
    800261da:	a7ce40ef          	jal	ra,8000a456 <bf_delete>
    800261de:	bfc1                	j	800261ae <js_mul_pow10+0x50>
quickjs-nuttx/quickjs.c:14276
        ret = JS_ToInt64(ctx, &e, op2);
    800261e0:	c3dfe0ef          	jal	ra,80024e1c <JS_ToInt64>
    800261e4:	b7f5                	j	800261d0 <js_mul_pow10+0x72>
quickjs-nuttx/quickjs.c:14285
    bf_mul_pow_radix(r, a, 10, e, ctx->fp_env.prec, ctx->fp_env.flags);
    800261e6:	1a042783          	lw	a5,416(s0)
    800261ea:	19843703          	ld	a4,408(s0)
    800261ee:	6682                	ld	a3,0(sp)
    800261f0:	4629                	li	a2,10
    800261f2:	85ce                	mv	a1,s3
    800261f4:	8552                	mv	a0,s4
    800261f6:	445360ef          	jal	ra,8005ce3a <bf_mul_pow_radix>
quickjs-nuttx/quickjs.c:14286
    if (a == &a_s)
    800261fa:	01599563          	bne	s3,s5,80026204 <js_mul_pow10+0xa6>
quickjs-nuttx/quickjs.c:14287
        bf_delete(a);
    800261fe:	854e                	mv	a0,s3
    80026200:	a56e40ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:14288
    JS_FreeValue(ctx, op1);
    80026204:	65a2                	ld	a1,8(sp)
    80026206:	6642                	ld	a2,16(sp)
    80026208:	8522                	mv	a0,s0
    8002620a:	d94e50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14289
    JS_FreeValue(ctx, op2);
    8002620e:	65e2                	ld	a1,24(sp)
    80026210:	7602                	ld	a2,32(sp)
    80026212:	8522                	mv	a0,s0
    80026214:	d8ae50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14290
    sp[-2] = res;
    80026218:	77a2                	ld	a5,40(sp)
    8002621a:	fef93023          	sd	a5,-32(s2)
    8002621e:	77c2                	ld	a5,48(sp)
    80026220:	fef93423          	sd	a5,-24(s2)
quickjs-nuttx/quickjs.c:14292
}
    80026224:	60ea                	ld	ra,152(sp)
    80026226:	644a                	ld	s0,144(sp)
    80026228:	690a                	ld	s2,128(sp)
    8002622a:	79e6                	ld	s3,120(sp)
    8002622c:	7a46                	ld	s4,112(sp)
    8002622e:	7aa6                	ld	s5,104(sp)
    80026230:	8526                	mv	a0,s1
    80026232:	64aa                	ld	s1,136(sp)
    80026234:	610d                	addi	sp,sp,160
    80026236:	8082                	ret

0000000080026238 <js_atomics_wait>:
js_atomics_wait():
quickjs-nuttx/quickjs.c:55329
{
    80026238:	7155                	addi	sp,sp,-208
quickjs-nuttx/quickjs.c:55339
    ptr = js_atomics_get_ptr(ctx, NULL, &size_log2, NULL,
    8002623a:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:55329
{
    8002623c:	e1a2                	sd	s0,192(sp)
    8002623e:	f94a                	sd	s2,176(sp)
    80026240:	e586                	sd	ra,200(sp)
    80026242:	fd26                	sd	s1,184(sp)
    80026244:	f54e                	sd	s3,168(sp)
quickjs-nuttx/quickjs.c:55339
    ptr = js_atomics_get_ptr(ctx, NULL, &size_log2, NULL,
    80026246:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:55329
{
    80026248:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:55339
    ptr = js_atomics_get_ptr(ctx, NULL, &size_log2, NULL,
    8002624a:	01073803          	ld	a6,16(a4)
    8002624e:	01873883          	ld	a7,24(a4)
    80026252:	641c                	ld	a5,8(s0)
    80026254:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:55329
{
    80026256:	e82e                	sd	a1,16(sp)
    80026258:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:55339
    ptr = js_atomics_get_ptr(ctx, NULL, &size_log2, NULL,
    8002625a:	4681                	li	a3,0
    8002625c:	1070                	addi	a2,sp,44
    8002625e:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:55329
{
    80026260:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:55339
    ptr = js_atomics_get_ptr(ctx, NULL, &size_log2, NULL,
    80026262:	9e0fe0ef          	jal	ra,80024442 <js_atomics_get_ptr>
quickjs-nuttx/quickjs.c:55341
    if (!ptr)
    80026266:	ed09                	bnez	a0,80026280 <js_atomics_wait+0x48>
quickjs-nuttx/quickjs.c:55342
        return JS_EXCEPTION;
    80026268:	4799                	li	a5,6
    8002626a:	e882                	sd	zero,80(sp)
    8002626c:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:55407 (discriminator 1)
}
    8002626e:	60ae                	ld	ra,200(sp)
    80026270:	640e                	ld	s0,192(sp)
    80026272:	6546                	ld	a0,80(sp)
    80026274:	65e6                	ld	a1,88(sp)
    80026276:	74ea                	ld	s1,184(sp)
    80026278:	794a                	ld	s2,176(sp)
    8002627a:	79aa                	ld	s3,168(sp)
    8002627c:	6169                	addi	sp,sp,208
    8002627e:	8082                	ret
quickjs-nuttx/quickjs.c:55343
    if (size_log2 == 3) {
    80026280:	56b2                	lw	a3,44(sp)
    80026282:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:55344
        if (JS_ToBigInt64(ctx, &v, argv[2]))
    80026284:	7010                	ld	a2,32(s0)
    80026286:	89aa                	mv	s3,a0
    80026288:	02040793          	addi	a5,s0,32
quickjs-nuttx/quickjs.c:55343
    if (size_log2 == 3) {
    8002628c:	06e69163          	bne	a3,a4,800262ee <js_atomics_wait+0xb6>
quickjs-nuttx/quickjs.c:55344
        if (JS_ToBigInt64(ctx, &v, argv[2]))
    80026290:	6794                	ld	a3,8(a5)
    80026292:	180c                	addi	a1,sp,48
    80026294:	854a                	mv	a0,s2
    80026296:	e89ff0ef          	jal	ra,8002611e <JS_ToBigInt64>
    8002629a:	f579                	bnez	a0,80026268 <js_atomics_wait+0x30>
quickjs-nuttx/quickjs.c:55351
    if (JS_ToFloat64(ctx, &d, argv[3]))
    8002629c:	7810                	ld	a2,48(s0)
    8002629e:	7c14                	ld	a3,56(s0)
    800262a0:	182c                	addi	a1,sp,56
    800262a2:	854a                	mv	a0,s2
    800262a4:	c98fc0ef          	jal	ra,8002273c <JS_ToFloat64>
    800262a8:	f161                	bnez	a0,80026268 <js_atomics_wait+0x30>
quickjs-nuttx/quickjs.c:55354
    if (isnan(d) || d >= 0x1p63)
    800262aa:	37e2                	fld	fa5,56(sp)
    800262ac:	a2f7a7d3          	feq.d	a5,fa5,fa5
    800262b0:	cba1                	beqz	a5,80026300 <js_atomics_wait+0xc8>
quickjs-nuttx/quickjs.c:55354 (discriminator 1)
    800262b2:	0006e797          	auipc	a5,0x6e
    800262b6:	98e7b707          	fld	fa4,-1650(a5) # 80093c40 <_erodata+0xce>
    800262ba:	a2f707d3          	fle.d	a5,fa4,fa5
    800262be:	e3a9                	bnez	a5,80026300 <js_atomics_wait+0xc8>
quickjs-nuttx/quickjs.c:55356
    else if (d < 0)
    800262c0:	f2000753          	fmv.d.x	fa4,zero
quickjs-nuttx/quickjs.c:55357
        timeout = 0;
    800262c4:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:55356
    else if (d < 0)
    800262c6:	a2e797d3          	flt.d	a5,fa5,fa4
    800262ca:	e399                	bnez	a5,800262d0 <js_atomics_wait+0x98>
quickjs-nuttx/quickjs.c:55359
        timeout = (int64_t)d;
    800262cc:	c2279453          	fcvt.l.d	s0,fa5,rtz
quickjs-nuttx/quickjs.c:55360
    if (!ctx->rt->can_block)
    800262d0:	01893783          	ld	a5,24(s2)
    800262d4:	1507c783          	lbu	a5,336(a5)
    800262d8:	e79d                	bnez	a5,80026306 <js_atomics_wait+0xce>
quickjs-nuttx/quickjs.c:55361
        return JS_ThrowTypeError(ctx, "cannot block in this thread");
    800262da:	00045597          	auipc	a1,0x45
    800262de:	bee58593          	addi	a1,a1,-1042 # 8006aec8 <qjsc_repl+0x5918>
    800262e2:	854a                	mv	a0,s2
    800262e4:	b88f20ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:55405
        return JS_AtomToString(ctx, JS_ATOM_ok);
    800262e8:	e8aa                	sd	a0,80(sp)
    800262ea:	ecae                	sd	a1,88(sp)
    800262ec:	b749                	j	8002626e <js_atomics_wait+0x36>
quickjs-nuttx/quickjs.c:55347
        if (JS_ToInt32(ctx, &v32, argv[2]))
    800262ee:	6794                	ld	a3,8(a5)
    800262f0:	102c                	addi	a1,sp,40
    800262f2:	854a                	mv	a0,s2
    800262f4:	8c6fc0ef          	jal	ra,800223ba <JS_ToInt32>
    800262f8:	f925                	bnez	a0,80026268 <js_atomics_wait+0x30>
quickjs-nuttx/quickjs.c:55349
        v = v32;
    800262fa:	57a2                	lw	a5,40(sp)
    800262fc:	f83e                	sd	a5,48(sp)
    800262fe:	bf79                	j	8002629c <js_atomics_wait+0x64>
quickjs-nuttx/quickjs.c:55355
        timeout = INT64_MAX;
    80026300:	547d                	li	s0,-1
    80026302:	8005                	srli	s0,s0,0x1
    80026304:	b7f1                	j	800262d0 <js_atomics_wait+0x98>
quickjs-nuttx/quickjs.c:55366
    pthread_mutex_lock(&js_atomics_mutex);
    80026306:	000db517          	auipc	a0,0xdb
    8002630a:	cfa50513          	addi	a0,a0,-774 # 80101000 <js_atomics_mutex>
    8002630e:	4153a0ef          	jal	ra,80060f22 <pthread_mutex_lock>
quickjs-nuttx/quickjs.c:55367
    if (size_log2 == 3) {
    80026312:	5732                	lw	a4,44(sp)
    80026314:	478d                	li	a5,3
    80026316:	7542                	ld	a0,48(sp)
    80026318:	02f71463          	bne	a4,a5,80026340 <js_atomics_wait+0x108>
quickjs-nuttx/quickjs.c:55368
        res = *(int64_t *)ptr != v;
    8002631c:	0009b483          	ld	s1,0(s3)
quickjs-nuttx/quickjs.c:55370
        res = *(int32_t *)ptr != v;
    80026320:	8c89                	sub	s1,s1,a0
    80026322:	009034b3          	snez	s1,s1
quickjs-nuttx/quickjs.c:55372
    if (res) {
    80026326:	c085                	beqz	s1,80026346 <js_atomics_wait+0x10e>
quickjs-nuttx/quickjs.c:55373
        pthread_mutex_unlock(&js_atomics_mutex);
    80026328:	000db517          	auipc	a0,0xdb
    8002632c:	cd850513          	addi	a0,a0,-808 # 80101000 <js_atomics_mutex>
    80026330:	5a23e0ef          	jal	ra,800648d2 <pthread_mutex_unlock>
quickjs-nuttx/quickjs.c:55374
        return JS_AtomToString(ctx, JS_ATOM_not_equal);
    80026334:	09300593          	li	a1,147
quickjs-nuttx/quickjs.c:55405
        return JS_AtomToString(ctx, JS_ATOM_ok);
    80026338:	854a                	mv	a0,s2
    8002633a:	f98f90ef          	jal	ra,8001fad2 <JS_AtomToString>
    8002633e:	b76d                	j	800262e8 <js_atomics_wait+0xb0>
quickjs-nuttx/quickjs.c:55370
        res = *(int32_t *)ptr != v;
    80026340:	0009a483          	lw	s1,0(s3)
    80026344:	bff1                	j	80026320 <js_atomics_wait+0xe8>
quickjs-nuttx/quickjs.c:55379
    pthread_cond_init(&waiter->cond, NULL);
    80026346:	4581                	li	a1,0
    80026348:	18a8                	addi	a0,sp,120
quickjs-nuttx/quickjs.c:55378
    waiter->ptr = ptr;
    8002634a:	ed4e                	sd	s3,152(sp)
quickjs-nuttx/quickjs.c:55379
    pthread_cond_init(&waiter->cond, NULL);
    8002634c:	3013a0ef          	jal	ra,80060e4c <pthread_cond_init>
quickjs-nuttx/quickjs.c:55380
    waiter->linked = TRUE;
    80026350:	4785                	li	a5,1
    80026352:	d8be                	sw	a5,112(sp)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80026354:	000db797          	auipc	a5,0xdb
    80026358:	cd478793          	addi	a5,a5,-812 # 80101028 <js_atomics_waiter_list>
    8002635c:	6398                	ld	a4,0(a5)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8002635e:	1094                	addi	a3,sp,96
quickjs-nuttx/list.h:54
    next->prev = el;
    80026360:	e394                	sd	a3,0(a5)
quickjs-nuttx/list.h:51
    prev->next = el;
    80026362:	e714                	sd	a3,8(a4)
quickjs-nuttx/list.h:53
    el->next = next;
    80026364:	f4be                	sd	a5,104(sp)
js_atomics_wait():
quickjs-nuttx/quickjs.c:55383
    if (timeout == INT64_MAX) {
    80026366:	57fd                	li	a5,-1
__list_add():
quickjs-nuttx/list.h:52
    el->prev = prev;
    80026368:	f0ba                	sd	a4,96(sp)
js_atomics_wait():
quickjs-nuttx/quickjs.c:55383
    8002636a:	8385                	srli	a5,a5,0x1
    8002636c:	04f41063          	bne	s0,a5,800263ac <js_atomics_wait+0x174>
quickjs-nuttx/quickjs.c:55384
        pthread_cond_wait(&waiter->cond, &js_atomics_mutex);
    80026370:	000db597          	auipc	a1,0xdb
    80026374:	c9058593          	addi	a1,a1,-880 # 80101000 <js_atomics_mutex>
    80026378:	18a8                	addi	a0,sp,120
    8002637a:	50c3e0ef          	jal	ra,80064886 <pthread_cond_wait>
quickjs-nuttx/quickjs.c:55398
    if (waiter->linked)
    8002637e:	57c6                	lw	a5,112(sp)
    80026380:	c781                	beqz	a5,80026388 <js_atomics_wait+0x150>
quickjs-nuttx/quickjs.c:55399
        list_del(&waiter->link);
    80026382:	1088                	addi	a0,sp,96
    80026384:	fc0e10ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:55400
    pthread_mutex_unlock(&js_atomics_mutex);
    80026388:	000db517          	auipc	a0,0xdb
    8002638c:	c7850513          	addi	a0,a0,-904 # 80101000 <js_atomics_mutex>
    80026390:	5423e0ef          	jal	ra,800648d2 <pthread_mutex_unlock>
quickjs-nuttx/quickjs.c:55401
    pthread_cond_destroy(&waiter->cond);
    80026394:	18a8                	addi	a0,sp,120
    80026396:	2ed3a0ef          	jal	ra,80060e82 <pthread_cond_destroy>
quickjs-nuttx/quickjs.c:55402
    if (ret == ETIMEDOUT) {
    8002639a:	06e00793          	li	a5,110
quickjs-nuttx/quickjs.c:55403
        return JS_AtomToString(ctx, JS_ATOM_timed_out);
    8002639e:	09400593          	li	a1,148
quickjs-nuttx/quickjs.c:55402
    if (ret == ETIMEDOUT) {
    800263a2:	f8f48be3          	beq	s1,a5,80026338 <js_atomics_wait+0x100>
quickjs-nuttx/quickjs.c:55405
        return JS_AtomToString(ctx, JS_ATOM_ok);
    800263a6:	09500593          	li	a1,149
    800263aa:	b779                	j	80026338 <js_atomics_wait+0x100>
quickjs-nuttx/quickjs.c:55388
        clock_gettime(CLOCK_REALTIME, &ts);
    800263ac:	008c                	addi	a1,sp,64
    800263ae:	4501                	li	a0,0
    800263b0:	2843e0ef          	jal	ra,80064634 <clock_gettime>
quickjs-nuttx/quickjs.c:55389
        ts.tv_sec += timeout / 1000;
    800263b4:	3e800713          	li	a4,1000
    800263b8:	02e446b3          	div	a3,s0,a4
    800263bc:	4786                	lw	a5,64(sp)
quickjs-nuttx/quickjs.c:55390
        ts.tv_nsec += (timeout % 1000) * 1000000;
    800263be:	02e46433          	rem	s0,s0,a4
    800263c2:	000f4737          	lui	a4,0xf4
    800263c6:	24070713          	addi	a4,a4,576 # f4240 <asinh-0x7ff0bdc0>
quickjs-nuttx/quickjs.c:55389
        ts.tv_sec += timeout / 1000;
    800263ca:	9fb5                	addw	a5,a5,a3
    800263cc:	c0be                	sw	a5,64(sp)
quickjs-nuttx/quickjs.c:55390
        ts.tv_nsec += (timeout % 1000) * 1000000;
    800263ce:	02e40433          	mul	s0,s0,a4
    800263d2:	6726                	ld	a4,72(sp)
    800263d4:	943a                	add	s0,s0,a4
quickjs-nuttx/quickjs.c:55391
        if (ts.tv_nsec >= 1000000000) {
    800263d6:	3b9ad737          	lui	a4,0x3b9ad
    800263da:	9ff70713          	addi	a4,a4,-1537 # 3b9ac9ff <asinh-0x44653601>
    800263de:	00874d63          	blt	a4,s0,800263f8 <js_atomics_wait+0x1c0>
quickjs-nuttx/quickjs.c:55390
        ts.tv_nsec += (timeout % 1000) * 1000000;
    800263e2:	e4a2                	sd	s0,72(sp)
quickjs-nuttx/quickjs.c:55395
        ret = pthread_cond_timedwait(&waiter->cond, &js_atomics_mutex,
    800263e4:	0090                	addi	a2,sp,64
    800263e6:	000db597          	auipc	a1,0xdb
    800263ea:	c1a58593          	addi	a1,a1,-998 # 80101000 <js_atomics_mutex>
    800263ee:	18a8                	addi	a0,sp,120
    800263f0:	2d93a0ef          	jal	ra,80060ec8 <pthread_cond_timedwait>
    800263f4:	84aa                	mv	s1,a0
    800263f6:	b761                	j	8002637e <js_atomics_wait+0x146>
quickjs-nuttx/quickjs.c:55392
            ts.tv_nsec -= 1000000000;
    800263f8:	c4653737          	lui	a4,0xc4653
    800263fc:	60070713          	addi	a4,a4,1536 # ffffffffc4653600 <_ebss+0xffffffff4455249a>
    80026400:	943a                	add	s0,s0,a4
quickjs-nuttx/quickjs.c:55393
            ts.tv_sec++;
    80026402:	2785                	addiw	a5,a5,1
quickjs-nuttx/quickjs.c:55392
            ts.tv_nsec -= 1000000000;
    80026404:	e4a2                	sd	s0,72(sp)
quickjs-nuttx/quickjs.c:55393
            ts.tv_sec++;
    80026406:	c0be                	sw	a5,64(sp)
    80026408:	bff1                	j	800263e4 <js_atomics_wait+0x1ac>

000000008002640a <js_dataview_setValue>:
js_dataview_setValue():
quickjs-nuttx/quickjs.c:54919
{
    8002640a:	7175                	addi	sp,sp,-144
    8002640c:	ecd6                	sd	s5,88(sp)
    8002640e:	8ab6                	mv	s5,a3
quickjs-nuttx/quickjs.c:54929
    ta = JS_GetOpaque2(ctx, this_obj, JS_CLASS_DATAVIEW);
    80026410:	02000693          	li	a3,32
quickjs-nuttx/quickjs.c:54919
{
    80026414:	e122                	sd	s0,128(sp)
    80026416:	fca6                	sd	s1,120(sp)
    80026418:	f4ce                	sd	s3,104(sp)
    8002641a:	e506                	sd	ra,136(sp)
    8002641c:	f8ca                	sd	s2,112(sp)
    8002641e:	f0d2                	sd	s4,96(sp)
    80026420:	e8da                	sd	s6,80(sp)
    80026422:	89aa                	mv	s3,a0
    80026424:	e02e                	sd	a1,0(sp)
    80026426:	e432                	sd	a2,8(sp)
    80026428:	843a                	mv	s0,a4
    8002642a:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:54929
    ta = JS_GetOpaque2(ctx, this_obj, JS_CLASS_DATAVIEW);
    8002642c:	bc2f20ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:54930
    if (!ta)
    80026430:	e509                	bnez	a0,8002643a <js_dataview_setValue+0x30>
quickjs-nuttx/quickjs.c:54947
            return JS_EXCEPTION;
    80026432:	e082                	sd	zero,64(sp)
    80026434:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:55002
    return JS_UNDEFINED;
    80026436:	e4be                	sd	a5,72(sp)
    80026438:	a0bd                	j	800264a6 <js_dataview_setValue+0x9c>
quickjs-nuttx/quickjs.c:54933
    if (JS_ToIndex(ctx, &pos, argv[0]))
    8002643a:	6010                	ld	a2,0(s0)
    8002643c:	6414                	ld	a3,8(s0)
quickjs-nuttx/quickjs.c:54932
    size = 1 << typed_array_size_log2(class_id);
    8002643e:	feb4871b          	addiw	a4,s1,-21
    80026442:	0004f797          	auipc	a5,0x4f
    80026446:	d9e78793          	addi	a5,a5,-610 # 800751e0 <typed_array_size_log2>
    8002644a:	97ba                	add	a5,a5,a4
    8002644c:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:54933
    if (JS_ToIndex(ctx, &pos, argv[0]))
    8002644e:	100c                	addi	a1,sp,32
    80026450:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:54932
    size = 1 << typed_array_size_log2(class_id);
    80026452:	0007cb03          	lbu	s6,0(a5)
quickjs-nuttx/quickjs.c:54933
    if (JS_ToIndex(ctx, &pos, argv[0]))
    80026456:	fadfd0ef          	jal	ra,80024402 <JS_ToIndex>
    8002645a:	892a                	mv	s2,a0
    8002645c:	f979                	bnez	a0,80026432 <js_dataview_setValue+0x28>
quickjs-nuttx/quickjs.c:54935
    val = argv[1];
    8002645e:	6810                	ld	a2,16(s0)
    80026460:	6c14                	ld	a3,24(s0)
quickjs-nuttx/quickjs.c:54936
    v = 0; /* avoid warning */
    80026462:	ca02                	sw	zero,20(sp)
quickjs-nuttx/quickjs.c:54935
    val = argv[1];
    80026464:	f832                	sd	a2,48(sp)
    80026466:	fc36                	sd	a3,56(sp)
quickjs-nuttx/quickjs.c:54937
    v64 = 0; /* avoid warning */
    80026468:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs.c:54938
    if (class_id <= JS_CLASS_UINT32_ARRAY) {
    8002646a:	47ed                	li	a5,27
    8002646c:	0497c963          	blt	a5,s1,800264be <js_dataview_setValue+0xb4>
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    80026470:	084c                	addi	a1,sp,20
    80026472:	854e                	mv	a0,s3
    80026474:	e0b2                	sd	a2,64(sp)
    80026476:	e4b6                	sd	a3,72(sp)
    80026478:	f43fb0ef          	jal	ra,800223ba <JS_ToInt32>
js_dataview_setValue():
quickjs-nuttx/quickjs.c:54942
        if (JS_ToBigInt64(ctx, (int64_t *)&v64, val))
    8002647c:	f95d                	bnez	a0,80026432 <js_dataview_setValue+0x28>
quickjs-nuttx/quickjs.c:54962
    if (argc > 2)
    8002647e:	4789                	li	a5,2
    80026480:	0157d863          	bge	a5,s5,80026490 <js_dataview_setValue+0x86>
quickjs-nuttx/quickjs.c:54963
        is_swap = JS_ToBool(ctx, argv[2]);
    80026484:	700c                	ld	a1,32(s0)
    80026486:	7410                	ld	a2,40(s0)
    80026488:	854e                	mv	a0,s3
    8002648a:	95de80ef          	jal	ra,8000ede6 <JS_ToBool>
    8002648e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:54967
    abuf = ta->buffer->u.array_buffer;
    80026490:	018a3783          	ld	a5,24(s4)
    80026494:	7b98                	ld	a4,48(a5)
quickjs-nuttx/quickjs.c:54968
    if (abuf->detached)
    80026496:	00474783          	lbu	a5,4(a4)
    8002649a:	cfa9                	beqz	a5,800264f4 <js_dataview_setValue+0xea>
quickjs-nuttx/quickjs.c:54969
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    8002649c:	854e                	mv	a0,s3
    8002649e:	ae7f20ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:54971
        return JS_ThrowRangeError(ctx, "out of bound");
    800264a2:	e0aa                	sd	a0,64(sp)
    800264a4:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:55003 (discriminator 8)
}
    800264a6:	60aa                	ld	ra,136(sp)
    800264a8:	640a                	ld	s0,128(sp)
    800264aa:	6506                	ld	a0,64(sp)
    800264ac:	65a6                	ld	a1,72(sp)
    800264ae:	74e6                	ld	s1,120(sp)
    800264b0:	7946                	ld	s2,112(sp)
    800264b2:	79a6                	ld	s3,104(sp)
    800264b4:	7a06                	ld	s4,96(sp)
    800264b6:	6ae6                	ld	s5,88(sp)
    800264b8:	6b46                	ld	s6,80(sp)
    800264ba:	6149                	addi	sp,sp,144
    800264bc:	8082                	ret
quickjs-nuttx/quickjs.c:54941
    } else if (class_id <= JS_CLASS_BIG_UINT64_ARRAY) {
    800264be:	47f5                	li	a5,29
    800264c0:	0097c763          	blt	a5,s1,800264ce <js_dataview_setValue+0xc4>
quickjs-nuttx/quickjs.c:54942
        if (JS_ToBigInt64(ctx, (int64_t *)&v64, val))
    800264c4:	082c                	addi	a1,sp,24
    800264c6:	854e                	mv	a0,s3
    800264c8:	c57ff0ef          	jal	ra,8002611e <JS_ToBigInt64>
    800264cc:	bf45                	j	8002647c <js_dataview_setValue+0x72>
quickjs-nuttx/quickjs.c:54946
        if (JS_ToFloat64(ctx, &d, val))
    800264ce:	102c                	addi	a1,sp,40
    800264d0:	854e                	mv	a0,s3
    800264d2:	a6afc0ef          	jal	ra,8002273c <JS_ToFloat64>
    800264d6:	fd31                	bnez	a0,80026432 <js_dataview_setValue+0x28>
quickjs-nuttx/quickjs.c:54948
        if (class_id == JS_CLASS_FLOAT32_ARRAY) {
    800264d8:	4779                	li	a4,30
quickjs-nuttx/quickjs.c:54953
            u.f = d;
    800264da:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:54948
        if (class_id == JS_CLASS_FLOAT32_ARRAY) {
    800264dc:	00e49a63          	bne	s1,a4,800264f0 <js_dataview_setValue+0xe6>
quickjs-nuttx/quickjs.c:54953
            u.f = d;
    800264e0:	f20787d3          	fmv.d.x	fa5,a5
    800264e4:	4017f7d3          	fcvt.s.d	fa5,fa5
    800264e8:	e00787d3          	fmv.x.w	a5,fa5
quickjs-nuttx/quickjs.c:54954
            v = u.i;
    800264ec:	ca3e                	sw	a5,20(sp)
    800264ee:	bf41                	j	8002647e <js_dataview_setValue+0x74>
quickjs-nuttx/quickjs.c:54958 (discriminator 7)
            v64 = u.u64;
    800264f0:	ec3e                	sd	a5,24(sp)
    800264f2:	b771                	j	8002647e <js_dataview_setValue+0x74>
quickjs-nuttx/quickjs.c:54970
    if ((pos + size) > ta->length)
    800264f4:	7682                	ld	a3,32(sp)
    800264f6:	4785                	li	a5,1
    800264f8:	024a6603          	lwu	a2,36(s4)
    800264fc:	016797bb          	sllw	a5,a5,s6
    80026500:	97b6                	add	a5,a5,a3
    80026502:	00f67a63          	bgeu	a2,a5,80026516 <js_dataview_setValue+0x10c>
quickjs-nuttx/quickjs.c:54971
        return JS_ThrowRangeError(ctx, "out of bound");
    80026506:	854e                	mv	a0,s3
    80026508:	00044597          	auipc	a1,0x44
    8002650c:	7b858593          	addi	a1,a1,1976 # 8006acc0 <qjsc_repl+0x5710>
    80026510:	bbef30ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80026514:	b779                	j	800264a2 <js_dataview_setValue+0x98>
quickjs-nuttx/quickjs.c:54972
    ptr = abuf->data + ta->offset + pos;
    80026516:	020a6403          	lwu	s0,32(s4)
    8002651a:	34a9                	addiw	s1,s1,-22
    8002651c:	00d407b3          	add	a5,s0,a3
    80026520:	6700                	ld	s0,8(a4)
    80026522:	0004871b          	sext.w	a4,s1
    80026526:	943e                	add	s0,s0,a5
quickjs-nuttx/quickjs.c:54974
    switch(class_id) {
    80026528:	47a5                	li	a5,9
    8002652a:	0ce7eb63          	bltu	a5,a4,80026600 <js_dataview_setValue+0x1f6>
    8002652e:	02049793          	slli	a5,s1,0x20
    80026532:	01e7d493          	srli	s1,a5,0x1e
    80026536:	00045717          	auipc	a4,0x45
    8002653a:	9ae70713          	addi	a4,a4,-1618 # 8006aee4 <qjsc_repl+0x5934>
    8002653e:	94ba                	add	s1,s1,a4
    80026540:	409c                	lw	a5,0(s1)
    80026542:	97ba                	add	a5,a5,a4
    80026544:	8782                	jr	a5
quickjs-nuttx/quickjs.c:54977
        *ptr = v;
    80026546:	47d2                	lw	a5,20(sp)
    80026548:	00f40023          	sb	a5,0(s0)
quickjs-nuttx/quickjs.c:55002
    return JS_UNDEFINED;
    8002654c:	e082                	sd	zero,64(sp)
    8002654e:	478d                	li	a5,3
    80026550:	b5dd                	j	80026436 <js_dataview_setValue+0x2c>
quickjs-nuttx/quickjs.c:54981
        if (is_swap)
    80026552:	4785                	li	a5,1
    80026554:	02f90263          	beq	s2,a5,80026578 <js_dataview_setValue+0x16e>
quickjs-nuttx/quickjs.c:54982
            v = bswap16(v);
    80026558:	01415783          	lhu	a5,20(sp)
    8002655c:	0087971b          	slliw	a4,a5,0x8
    80026560:	0107979b          	slliw	a5,a5,0x10
    80026564:	0107d79b          	srliw	a5,a5,0x10
    80026568:	0087d79b          	srliw	a5,a5,0x8
    8002656c:	8fd9                	or	a5,a5,a4
    8002656e:	0107979b          	slliw	a5,a5,0x10
    80026572:	0107d79b          	srliw	a5,a5,0x10
    80026576:	ca3e                	sw	a5,20(sp)
quickjs-nuttx/quickjs.c:54983
        put_u16(ptr, v);
    80026578:	47d2                	lw	a5,20(sp)
put_u16():
quickjs-nuttx/cutils.h:195
    ((struct packed_u16 *)tab)->v = val;
    8002657a:	00f40023          	sb	a5,0(s0)
    8002657e:	83a1                	srli	a5,a5,0x8
    80026580:	00f400a3          	sb	a5,1(s0)
quickjs-nuttx/cutils.h:196
}
    80026584:	b7e1                	j	8002654c <js_dataview_setValue+0x142>
js_dataview_setValue():
quickjs-nuttx/quickjs.c:54988
        if (is_swap)
    80026586:	4785                	li	a5,1
    80026588:	00f90663          	beq	s2,a5,80026594 <js_dataview_setValue+0x18a>
quickjs-nuttx/quickjs.c:54989
            v = bswap32(v);
    8002658c:	4552                	lw	a0,20(sp)
    8002658e:	d38e10ef          	jal	ra,80007ac6 <bswap32>
    80026592:	ca2a                	sw	a0,20(sp)
quickjs-nuttx/quickjs.c:54990
        put_u32(ptr, v);
    80026594:	47d2                	lw	a5,20(sp)
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    80026596:	0087d71b          	srliw	a4,a5,0x8
    8002659a:	00f40023          	sb	a5,0(s0)
    8002659e:	00e400a3          	sb	a4,1(s0)
    800265a2:	0107d71b          	srliw	a4,a5,0x10
    800265a6:	0187d79b          	srliw	a5,a5,0x18
    800265aa:	00e40123          	sb	a4,2(s0)
    800265ae:	00f401a3          	sb	a5,3(s0)
quickjs-nuttx/cutils.h:181
}
    800265b2:	bf69                	j	8002654c <js_dataview_setValue+0x142>
js_dataview_setValue():
quickjs-nuttx/quickjs.c:54995
        if (is_swap)
    800265b4:	4785                	li	a5,1
    800265b6:	00f90663          	beq	s2,a5,800265c2 <js_dataview_setValue+0x1b8>
quickjs-nuttx/quickjs.c:54996
            v64 = bswap64(v64);
    800265ba:	6562                	ld	a0,24(sp)
    800265bc:	d32e10ef          	jal	ra,80007aee <bswap64>
    800265c0:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:54997
        put_u64(ptr, v64);
    800265c2:	67e2                	ld	a5,24(sp)
put_u64():
quickjs-nuttx/cutils.h:165
    ((struct packed_u64 *)tab)->v = val;
    800265c4:	0087d713          	srli	a4,a5,0x8
    800265c8:	00e400a3          	sb	a4,1(s0)
    800265cc:	0107d713          	srli	a4,a5,0x10
    800265d0:	00e40123          	sb	a4,2(s0)
    800265d4:	0187d71b          	srliw	a4,a5,0x18
    800265d8:	00e401a3          	sb	a4,3(s0)
    800265dc:	0207d713          	srli	a4,a5,0x20
    800265e0:	00e40223          	sb	a4,4(s0)
    800265e4:	0287d713          	srli	a4,a5,0x28
    800265e8:	00f40023          	sb	a5,0(s0)
    800265ec:	00e402a3          	sb	a4,5(s0)
    800265f0:	0307d713          	srli	a4,a5,0x30
    800265f4:	93e1                	srli	a5,a5,0x38
    800265f6:	00e40323          	sb	a4,6(s0)
    800265fa:	00f403a3          	sb	a5,7(s0)
quickjs-nuttx/cutils.h:166
}
    800265fe:	b7b9                	j	8002654c <js_dataview_setValue+0x142>
js_dataview_setValue():
quickjs-nuttx/quickjs.c:55000
        abort();
    80026600:	5823c0ef          	jal	ra,80062b82 <abort>

0000000080026604 <js_typed_array_fill>:
js_typed_array_fill():
quickjs-nuttx/quickjs.c:53478
{
    80026604:	7159                	addi	sp,sp,-112
    80026606:	f0a2                	sd	s0,96(sp)
    80026608:	eca6                	sd	s1,88(sp)
    8002660a:	e0d2                	sd	s4,64(sp)
    8002660c:	f486                	sd	ra,104(sp)
    8002660e:	e8ca                	sd	s2,80(sp)
    80026610:	e4ce                	sd	s3,72(sp)
    80026612:	84aa                	mv	s1,a0
    80026614:	e02e                	sd	a1,0(sp)
    80026616:	e432                	sd	a2,8(sp)
    80026618:	8a36                	mv	s4,a3
    8002661a:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:53483
    len = js_typed_array_get_length_internal(ctx, this_val);
    8002661c:	e59f20ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
quickjs-nuttx/quickjs.c:53484
    if (len < 0)
    80026620:	00055f63          	bgez	a0,8002663e <js_typed_array_fill+0x3a>
quickjs-nuttx/quickjs.c:53504
            return JS_EXCEPTION;
    80026624:	4799                	li	a5,6
    80026626:	f002                	sd	zero,32(sp)
    80026628:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:53560 (discriminator 12)
}
    8002662a:	70a6                	ld	ra,104(sp)
    8002662c:	7406                	ld	s0,96(sp)
    8002662e:	7502                	ld	a0,32(sp)
    80026630:	75a2                	ld	a1,40(sp)
    80026632:	64e6                	ld	s1,88(sp)
    80026634:	6946                	ld	s2,80(sp)
    80026636:	69a6                	ld	s3,72(sp)
    80026638:	6a06                	ld	s4,64(sp)
    8002663a:	6165                	addi	sp,sp,112
    8002663c:	8082                	ret
quickjs-nuttx/quickjs.c:53486
    p = JS_VALUE_GET_OBJ(this_val);
    8002663e:	6902                	ld	s2,0(sp)
quickjs-nuttx/quickjs.c:53488
    if (p->class_id == JS_CLASS_UINT8C_ARRAY) {
    80026640:	4755                	li	a4,21
    80026642:	89aa                	mv	s3,a0
    80026644:	00695783          	lhu	a5,6(s2)
    80026648:	06e79f63          	bne	a5,a4,800266c6 <js_typed_array_fill+0xc2>
quickjs-nuttx/quickjs.c:53490
        if (JS_ToUint8ClampFree(ctx, &v, JS_DupValue(ctx, argv[0])))
    8002664c:	6008                	ld	a0,0(s0)
    8002664e:	640c                	ld	a1,8(s0)
    80026650:	dcbe30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80026654:	862a                	mv	a2,a0
    80026656:	86ae                	mv	a3,a1
    80026658:	f82a                	sd	a0,48(sp)
    8002665a:	fc2e                	sd	a1,56(sp)
    8002665c:	8526                	mv	a0,s1
    8002665e:	084c                	addi	a1,sp,20
    80026660:	f39fb0ef          	jal	ra,80022598 <JS_ToUint8ClampFree>
    80026664:	f161                	bnez	a0,80026624 <js_typed_array_fill+0x20>
quickjs-nuttx/quickjs.c:53492
        v64 = v;
    80026666:	47d2                	lw	a5,20(sp)
quickjs-nuttx/quickjs.c:53497
        v64 = v;
    80026668:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:53519
    k = 0;
    8002666a:	c802                	sw	zero,16(sp)
quickjs-nuttx/quickjs.c:53520
    if (argc > 1) {
    8002666c:	4785                	li	a5,1
    8002666e:	0147dc63          	bge	a5,s4,80026686 <js_typed_array_fill+0x82>
quickjs-nuttx/quickjs.c:53521
        if (JS_ToInt32Clamp(ctx, &k, argv[1], 0, len, len))
    80026672:	6810                	ld	a2,16(s0)
    80026674:	6c14                	ld	a3,24(s0)
    80026676:	884e                	mv	a6,s3
    80026678:	87ce                	mv	a5,s3
    8002667a:	4701                	li	a4,0
    8002667c:	080c                	addi	a1,sp,16
    8002667e:	8526                	mv	a0,s1
    80026680:	d66fd0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80026684:	f145                	bnez	a0,80026624 <js_typed_array_fill+0x20>
quickjs-nuttx/quickjs.c:53525
    final = len;
    80026686:	ca4e                	sw	s3,20(sp)
quickjs-nuttx/quickjs.c:53526
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    80026688:	4789                	li	a5,2
    8002668a:	0347d163          	bge	a5,s4,800266ac <js_typed_array_fill+0xa8>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8002668e:	7414                	ld	a3,40(s0)
js_typed_array_fill():
quickjs-nuttx/quickjs.c:53526 (discriminator 1)
    80026690:	478d                	li	a5,3
    80026692:	0006871b          	sext.w	a4,a3
    80026696:	00f70b63          	beq	a4,a5,800266ac <js_typed_array_fill+0xa8>
quickjs-nuttx/quickjs.c:53527
        if (JS_ToInt32Clamp(ctx, &final, argv[2], 0, len, len))
    8002669a:	7010                	ld	a2,32(s0)
    8002669c:	884e                	mv	a6,s3
    8002669e:	87ce                	mv	a5,s3
    800266a0:	4701                	li	a4,0
    800266a2:	084c                	addi	a1,sp,20
    800266a4:	8526                	mv	a0,s1
    800266a6:	d40fd0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    800266aa:	fd2d                	bnez	a0,80026624 <js_typed_array_fill+0x20>
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    800266ac:	03093783          	ld	a5,48(s2)
    800266b0:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    800266b2:	7b9c                	ld	a5,48(a5)
js_typed_array_fill():
quickjs-nuttx/quickjs.c:53531
    if (typed_array_is_detached(ctx, p))
    800266b4:	0047c783          	lbu	a5,4(a5)
    800266b8:	cba5                	beqz	a5,80026728 <js_typed_array_fill+0x124>
quickjs-nuttx/quickjs.c:53532
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800266ba:	8526                	mv	a0,s1
    800266bc:	8c9f20ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:53559
    return JS_DupValue(ctx, this_val);
    800266c0:	f02a                	sd	a0,32(sp)
    800266c2:	f42e                	sd	a1,40(sp)
    800266c4:	b79d                	j	8002662a <js_typed_array_fill+0x26>
quickjs-nuttx/quickjs.c:53493
    } else if (p->class_id <= JS_CLASS_UINT32_ARRAY) {
    800266c6:	476d                	li	a4,27
    800266c8:	00f76e63          	bltu	a4,a5,800266e4 <js_typed_array_fill+0xe0>
quickjs-nuttx/quickjs.c:53495
        if (JS_ToUint32(ctx, &v, argv[0]))
    800266cc:	6010                	ld	a2,0(s0)
    800266ce:	6414                	ld	a3,8(s0)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    800266d0:	084c                	addi	a1,sp,20
    800266d2:	8526                	mv	a0,s1
    800266d4:	f832                	sd	a2,48(sp)
    800266d6:	fc36                	sd	a3,56(sp)
    800266d8:	ce3fb0ef          	jal	ra,800223ba <JS_ToInt32>
js_typed_array_fill():
quickjs-nuttx/quickjs.c:53495
    800266dc:	f521                	bnez	a0,80026624 <js_typed_array_fill+0x20>
quickjs-nuttx/quickjs.c:53497
        v64 = v;
    800266de:	01416783          	lwu	a5,20(sp)
    800266e2:	b759                	j	80026668 <js_typed_array_fill+0x64>
quickjs-nuttx/quickjs.c:53498
    } else if (p->class_id <= JS_CLASS_BIG_UINT64_ARRAY) {
    800266e4:	4775                	li	a4,29
quickjs-nuttx/quickjs.c:53499
        if (JS_ToBigInt64(ctx, (int64_t *)&v64, argv[0]))
    800266e6:	6010                	ld	a2,0(s0)
    800266e8:	6414                	ld	a3,8(s0)
quickjs-nuttx/quickjs.c:53498
    } else if (p->class_id <= JS_CLASS_BIG_UINT64_ARRAY) {
    800266ea:	00f76863          	bltu	a4,a5,800266fa <js_typed_array_fill+0xf6>
quickjs-nuttx/quickjs.c:53499
        if (JS_ToBigInt64(ctx, (int64_t *)&v64, argv[0]))
    800266ee:	082c                	addi	a1,sp,24
    800266f0:	8526                	mv	a0,s1
    800266f2:	a2dff0ef          	jal	ra,8002611e <JS_ToBigInt64>
    800266f6:	d935                	beqz	a0,8002666a <js_typed_array_fill+0x66>
    800266f8:	b735                	j	80026624 <js_typed_array_fill+0x20>
quickjs-nuttx/quickjs.c:53503
        if (JS_ToFloat64(ctx, &d, argv[0]))
    800266fa:	180c                	addi	a1,sp,48
    800266fc:	8526                	mv	a0,s1
    800266fe:	83efc0ef          	jal	ra,8002273c <JS_ToFloat64>
    80026702:	f10d                	bnez	a0,80026624 <js_typed_array_fill+0x20>
quickjs-nuttx/quickjs.c:53510
            u.f = d;
    80026704:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:53505
        if (p->class_id == JS_CLASS_FLOAT32_ARRAY) {
    80026706:	00695603          	lhu	a2,6(s2)
    8002670a:	46f9                	li	a3,30
quickjs-nuttx/quickjs.c:53514
            u.d = d;
    8002670c:	873e                	mv	a4,a5
quickjs-nuttx/quickjs.c:53505
        if (p->class_id == JS_CLASS_FLOAT32_ARRAY) {
    8002670e:	00d61b63          	bne	a2,a3,80026724 <js_typed_array_fill+0x120>
quickjs-nuttx/quickjs.c:53510
            u.f = d;
    80026712:	f20787d3          	fmv.d.x	fa5,a5
    80026716:	4017f7d3          	fcvt.s.d	fa5,fa5
    8002671a:	e00787d3          	fmv.x.w	a5,fa5
quickjs-nuttx/quickjs.c:53511
            v64 = u.u32;
    8002671e:	02079713          	slli	a4,a5,0x20
    80026722:	9301                	srli	a4,a4,0x20
    80026724:	ec3a                	sd	a4,24(sp)
    80026726:	b791                	j	8002666a <js_typed_array_fill+0x66>
quickjs-nuttx/quickjs.c:53534
    shift = typed_array_size_log2(p->class_id);
    80026728:	00695783          	lhu	a5,6(s2)
    8002672c:	feb7871b          	addiw	a4,a5,-21
    80026730:	0004f797          	auipc	a5,0x4f
    80026734:	ab078793          	addi	a5,a5,-1360 # 800751e0 <typed_array_size_log2>
    80026738:	97ba                	add	a5,a5,a4
    8002673a:	0007c783          	lbu	a5,0(a5)
quickjs-nuttx/quickjs.c:53535
    switch(shift) {
    8002673e:	4709                	li	a4,2
    80026740:	06e78263          	beq	a5,a4,800267a4 <js_typed_array_fill+0x1a0>
    80026744:	02f76263          	bltu	a4,a5,80026768 <js_typed_array_fill+0x164>
    80026748:	c78d                	beqz	a5,80026772 <js_typed_array_fill+0x16e>
quickjs-nuttx/quickjs.c:53542 (discriminator 1)
        for(; k < final; k++) {
    8002674a:	47c2                	lw	a5,16(sp)
    8002674c:	4752                	lw	a4,20(sp)
    8002674e:	02e7dd63          	bge	a5,a4,80026788 <js_typed_array_fill+0x184>
quickjs-nuttx/quickjs.c:53543 (discriminator 2)
            p->u.array.u.uint16_ptr[k] = v64;
    80026752:	03893703          	ld	a4,56(s2)
    80026756:	0786                	slli	a5,a5,0x1
    80026758:	97ba                	add	a5,a5,a4
    8002675a:	6762                	ld	a4,24(sp)
    8002675c:	00e79023          	sh	a4,0(a5)
quickjs-nuttx/quickjs.c:53542 (discriminator 2)
        for(; k < final; k++) {
    80026760:	47c2                	lw	a5,16(sp)
    80026762:	2785                	addiw	a5,a5,1
    80026764:	c83e                	sw	a5,16(sp)
    80026766:	b7d5                	j	8002674a <js_typed_array_fill+0x146>
quickjs-nuttx/quickjs.c:53535
    switch(shift) {
    80026768:	470d                	li	a4,3
    8002676a:	04e78b63          	beq	a5,a4,800267c0 <js_typed_array_fill+0x1bc>
quickjs-nuttx/quickjs.c:53557
        abort();
    8002676e:	4143c0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:53537
        if (k < final) {
    80026772:	47c2                	lw	a5,16(sp)
    80026774:	4652                	lw	a2,20(sp)
    80026776:	00c7d963          	bge	a5,a2,80026788 <js_typed_array_fill+0x184>
quickjs-nuttx/quickjs.c:53538
            memset(p->u.array.u.uint8_ptr + k, v64, final - k);
    8002677a:	03893503          	ld	a0,56(s2)
    8002677e:	45e2                	lw	a1,24(sp)
    80026780:	9e1d                	subw	a2,a2,a5
    80026782:	953e                	add	a0,a0,a5
    80026784:	4be3d0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:53559
    return JS_DupValue(ctx, this_val);
    80026788:	6502                	ld	a0,0(sp)
    8002678a:	65a2                	ld	a1,8(sp)
    8002678c:	c8fe30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80026790:	bf05                	j	800266c0 <js_typed_array_fill+0xbc>
quickjs-nuttx/quickjs.c:53548 (discriminator 2)
            p->u.array.u.uint32_ptr[k] = v64;
    80026792:	03893703          	ld	a4,56(s2)
    80026796:	078a                	slli	a5,a5,0x2
    80026798:	97ba                	add	a5,a5,a4
    8002679a:	6762                	ld	a4,24(sp)
    8002679c:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.c:53547 (discriminator 2)
        for(; k < final; k++) {
    8002679e:	47c2                	lw	a5,16(sp)
    800267a0:	2785                	addiw	a5,a5,1
    800267a2:	c83e                	sw	a5,16(sp)
quickjs-nuttx/quickjs.c:53547 (discriminator 1)
    800267a4:	47c2                	lw	a5,16(sp)
    800267a6:	4752                	lw	a4,20(sp)
    800267a8:	fee7c5e3          	blt	a5,a4,80026792 <js_typed_array_fill+0x18e>
    800267ac:	bff1                	j	80026788 <js_typed_array_fill+0x184>
quickjs-nuttx/quickjs.c:53553 (discriminator 2)
            p->u.array.u.uint64_ptr[k] = v64;
    800267ae:	03893703          	ld	a4,56(s2)
    800267b2:	078e                	slli	a5,a5,0x3
    800267b4:	97ba                	add	a5,a5,a4
    800267b6:	6762                	ld	a4,24(sp)
    800267b8:	e398                	sd	a4,0(a5)
quickjs-nuttx/quickjs.c:53552 (discriminator 2)
        for(; k < final; k++) {
    800267ba:	47c2                	lw	a5,16(sp)
    800267bc:	2785                	addiw	a5,a5,1
    800267be:	c83e                	sw	a5,16(sp)
quickjs-nuttx/quickjs.c:53552 (discriminator 1)
    800267c0:	47c2                	lw	a5,16(sp)
    800267c2:	4752                	lw	a4,20(sp)
    800267c4:	fee7c5e3          	blt	a5,a4,800267ae <js_typed_array_fill+0x1aa>
    800267c8:	b7c1                	j	80026788 <js_typed_array_fill+0x184>

00000000800267ca <js_atomics_op>:
js_atomics_op():
quickjs-nuttx/quickjs.c:55108
{
    800267ca:	7135                	addi	sp,sp,-160
    800267cc:	e922                	sd	s0,144(sp)
    800267ce:	fcce                	sd	s3,120(sp)
    800267d0:	f8d2                	sd	s4,112(sp)
    800267d2:	ed06                	sd	ra,152(sp)
    800267d4:	e526                	sd	s1,136(sp)
    800267d6:	e14a                	sd	s2,128(sp)
quickjs-nuttx/quickjs.c:55116
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, &class_id,
    800267d8:	e002                	sd	zero,0(sp)
quickjs-nuttx/quickjs.c:55108
{
    800267da:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:55116
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, &class_id,
    800267dc:	01073803          	ld	a6,16(a4)
    800267e0:	01873883          	ld	a7,24(a4)
quickjs-nuttx/quickjs.c:55108
{
    800267e4:	8a3e                	mv	s4,a5
quickjs-nuttx/quickjs.c:55116
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, &class_id,
    800267e6:	6318                	ld	a4,0(a4)
    800267e8:	0089b783          	ld	a5,8(s3)
quickjs-nuttx/quickjs.c:55108
{
    800267ec:	e82e                	sd	a1,16(sp)
    800267ee:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:55116
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, &class_id,
    800267f0:	1054                	addi	a3,sp,36
    800267f2:	1010                	addi	a2,sp,32
    800267f4:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs.c:55108
{
    800267f6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:55116
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, &class_id,
    800267f8:	c4bfd0ef          	jal	ra,80024442 <js_atomics_get_ptr>
quickjs-nuttx/quickjs.c:55118
    if (!ptr)
    800267fc:	ed11                	bnez	a0,80026818 <js_atomics_op+0x4e>
quickjs-nuttx/quickjs.c:55137
                    return JS_EXCEPTION;
    800267fe:	4799                	li	a5,6
    80026800:	e082                	sd	zero,64(sp)
    80026802:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:55248 (discriminator 8)
}
    80026804:	60ea                	ld	ra,152(sp)
    80026806:	644a                	ld	s0,144(sp)
    80026808:	6506                	ld	a0,64(sp)
    8002680a:	65a6                	ld	a1,72(sp)
    8002680c:	64aa                	ld	s1,136(sp)
    8002680e:	690a                	ld	s2,128(sp)
    80026810:	79e6                	ld	s3,120(sp)
    80026812:	7a46                	ld	s4,112(sp)
    80026814:	610d                	addi	sp,sp,160
    80026816:	8082                	ret
quickjs-nuttx/quickjs.c:55121
    if (op == ATOMICS_OP_LOAD) {
    80026818:	479d                	li	a5,7
    8002681a:	84aa                	mv	s1,a0
    8002681c:	08fa0563          	beq	s4,a5,800268a6 <js_atomics_op+0xdc>
quickjs-nuttx/quickjs.c:55124
        if (size_log2 == 3) {
    80026820:	5702                	lw	a4,32(sp)
    80026822:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:55126
            if (JS_ToBigInt64(ctx, &v64, argv[2]))
    80026824:	0209b603          	ld	a2,32(s3)
quickjs-nuttx/quickjs.c:55124
        if (size_log2 == 3) {
    80026828:	04f71263          	bne	a4,a5,8002686c <js_atomics_op+0xa2>
quickjs-nuttx/quickjs.c:55126
            if (JS_ToBigInt64(ctx, &v64, argv[2]))
    8002682c:	0289b683          	ld	a3,40(s3)
    80026830:	108c                	addi	a1,sp,96
    80026832:	8522                	mv	a0,s0
    80026834:	8ebff0ef          	jal	ra,8002611e <JS_ToBigInt64>
    80026838:	f179                	bnez	a0,800267fe <js_atomics_op+0x34>
quickjs-nuttx/quickjs.c:55129
            if (op == ATOMICS_OP_COMPARE_EXCHANGE) {
    8002683a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:55128
            v = v64;
    8002683c:	7906                	ld	s2,96(sp)
quickjs-nuttx/quickjs.c:55120
    rep_val = 0;
    8002683e:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:55129
            if (op == ATOMICS_OP_COMPARE_EXCHANGE) {
    80026840:	00fa1c63          	bne	s4,a5,80026858 <js_atomics_op+0x8e>
quickjs-nuttx/quickjs.c:55130
                if (JS_ToBigInt64(ctx, &v64, argv[3]))
    80026844:	0309b603          	ld	a2,48(s3)
    80026848:	0389b683          	ld	a3,56(s3)
    8002684c:	108c                	addi	a1,sp,96
    8002684e:	8522                	mv	a0,s0
    80026850:	8cfff0ef          	jal	ra,8002611e <JS_ToBigInt64>
    80026854:	f54d                	bnez	a0,800267fe <js_atomics_op+0x34>
quickjs-nuttx/quickjs.c:55132
                rep_val = v64;
    80026856:	7606                	ld	a2,96(sp)
quickjs-nuttx/quickjs.c:55145
        if (abuf->detached)
    80026858:	77a2                	ld	a5,40(sp)
    8002685a:	0047c783          	lbu	a5,4(a5)
    8002685e:	c7b1                	beqz	a5,800268aa <js_atomics_op+0xe0>
quickjs-nuttx/quickjs.c:55146
            return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80026860:	8522                	mv	a0,s0
    80026862:	f22f20ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
    80026866:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:55247
    return ret;
    80026868:	e4ae                	sd	a1,72(sp)
    8002686a:	bf69                	j	80026804 <js_atomics_op+0x3a>
quickjs-nuttx/quickjs.c:55136
                if (JS_ToUint32(ctx, &v32, argv[2]))
    8002686c:	0289b683          	ld	a3,40(s3)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    80026870:	088c                	addi	a1,sp,80
    80026872:	8522                	mv	a0,s0
    80026874:	f0b2                	sd	a2,96(sp)
    80026876:	f4b6                	sd	a3,104(sp)
    80026878:	b43fb0ef          	jal	ra,800223ba <JS_ToInt32>
js_atomics_op():
quickjs-nuttx/quickjs.c:55136
    8002687c:	f149                	bnez	a0,800267fe <js_atomics_op+0x34>
quickjs-nuttx/quickjs.c:55139
                if (op == ATOMICS_OP_COMPARE_EXCHANGE) {
    8002687e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:55138
                v = v32;
    80026880:	05016903          	lwu	s2,80(sp)
quickjs-nuttx/quickjs.c:55120
    rep_val = 0;
    80026884:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:55139
                if (op == ATOMICS_OP_COMPARE_EXCHANGE) {
    80026886:	fcfa19e3          	bne	s4,a5,80026858 <js_atomics_op+0x8e>
quickjs-nuttx/quickjs.c:55140
                    if (JS_ToUint32(ctx, &v32, argv[3]))
    8002688a:	0309b603          	ld	a2,48(s3)
    8002688e:	0389b683          	ld	a3,56(s3)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    80026892:	088c                	addi	a1,sp,80
    80026894:	8522                	mv	a0,s0
    80026896:	f0b2                	sd	a2,96(sp)
    80026898:	f4b6                	sd	a3,104(sp)
    8002689a:	b21fb0ef          	jal	ra,800223ba <JS_ToInt32>
js_atomics_op():
quickjs-nuttx/quickjs.c:55140
    8002689e:	f125                	bnez	a0,800267fe <js_atomics_op+0x34>
quickjs-nuttx/quickjs.c:55142
                    rep_val = v32;
    800268a0:	05016603          	lwu	a2,80(sp)
    800268a4:	bf55                	j	80026858 <js_atomics_op+0x8e>
quickjs-nuttx/quickjs.c:55120
    rep_val = 0;
    800268a6:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:55122
        v = 0;
    800268a8:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:55149
   switch(op | (size_log2 << 3)) {
    800268aa:	5782                	lw	a5,32(sp)
    800268ac:	0037979b          	slliw	a5,a5,0x3
    800268b0:	00fa6a33          	or	s4,s4,a5
    800268b4:	000a071b          	sext.w	a4,s4
    800268b8:	47fd                	li	a5,31
    800268ba:	20e7e163          	bltu	a5,a4,80026abc <js_atomics_op+0x2f2>
    800268be:	020a1793          	slli	a5,s4,0x20
    800268c2:	01e7da13          	srli	s4,a5,0x1e
    800268c6:	00044717          	auipc	a4,0x44
    800268ca:	64670713          	addi	a4,a4,1606 # 8006af0c <qjsc_repl+0x595c>
    800268ce:	9a3a                	add	s4,s4,a4
    800268d0:	000a2783          	lw	a5,0(s4)
    800268d4:	97ba                	add	a5,a5,a4
    800268d6:	8782                	jr	a5
quickjs-nuttx/quickjs.c:55165
        OP(ADD, atomic_fetch_add)
    800268d8:	4615                	li	a2,5
    800268da:	0ff97593          	zext.b	a1,s2
    800268de:	8526                	mv	a0,s1
    800268e0:	7f1380ef          	jal	ra,8005f8d0 <__atomic_fetch_add_1>
quickjs-nuttx/quickjs.c:55218
    switch(class_id) {
    800268e4:	5792                	lw	a5,36(sp)
    800268e6:	471d                	li	a4,7
    800268e8:	37a9                	addiw	a5,a5,-22
    800268ea:	0007869b          	sext.w	a3,a5
    800268ee:	1cd76763          	bltu	a4,a3,80026abc <js_atomics_op+0x2f2>
    800268f2:	02079713          	slli	a4,a5,0x20
    800268f6:	01e75793          	srli	a5,a4,0x1e
    800268fa:	00044717          	auipc	a4,0x44
    800268fe:	69270713          	addi	a4,a4,1682 # 8006af8c <qjsc_repl+0x59dc>
    80026902:	97ba                	add	a5,a5,a4
    80026904:	439c                	lw	a5,0(a5)
    80026906:	97ba                	add	a5,a5,a4
    80026908:	8782                	jr	a5
quickjs-nuttx/quickjs.c:55165
        OP(ADD, atomic_fetch_add)
    8002690a:	03091593          	slli	a1,s2,0x30
    8002690e:	4615                	li	a2,5
    80026910:	91c1                	srli	a1,a1,0x30
    80026912:	8526                	mv	a0,s1
    80026914:	7cb380ef          	jal	ra,8005f8de <__atomic_fetch_add_2>
    80026918:	b7f1                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55166
        OP(AND, atomic_fetch_and)
    8002691a:	4615                	li	a2,5
    8002691c:	0ff97593          	zext.b	a1,s2
    80026920:	8526                	mv	a0,s1
    80026922:	016390ef          	jal	ra,8005f938 <__atomic_fetch_and_1>
    80026926:	bf7d                	j	800268e4 <js_atomics_op+0x11a>
    80026928:	03091593          	slli	a1,s2,0x30
    8002692c:	4615                	li	a2,5
    8002692e:	91c1                	srli	a1,a1,0x30
    80026930:	8526                	mv	a0,s1
    80026932:	014390ef          	jal	ra,8005f946 <__atomic_fetch_and_2>
    80026936:	b77d                	j	800268e4 <js_atomics_op+0x11a>
    80026938:	0f50000f          	fence	iorw,ow
    8002693c:	6524a52f          	amoand.w.aq	a0,s2,(s1)
quickjs-nuttx/quickjs.c:55204
            a = v1;
    80026940:	1502                	slli	a0,a0,0x20
    80026942:	9101                	srli	a0,a0,0x20
quickjs-nuttx/quickjs.c:55206
        break;
    80026944:	b745                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55166
        OP(AND, atomic_fetch_and)
    80026946:	0f50000f          	fence	iorw,ow
    8002694a:	6524b52f          	amoand.d.aq	a0,s2,(s1)
    8002694e:	bf59                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55167
        OP(OR, atomic_fetch_or)
    80026950:	4615                	li	a2,5
    80026952:	0ff97593          	zext.b	a1,s2
    80026956:	8526                	mv	a0,s1
    80026958:	010390ef          	jal	ra,8005f968 <__atomic_fetch_or_1>
    8002695c:	b761                	j	800268e4 <js_atomics_op+0x11a>
    8002695e:	03091593          	slli	a1,s2,0x30
    80026962:	4615                	li	a2,5
    80026964:	91c1                	srli	a1,a1,0x30
    80026966:	8526                	mv	a0,s1
    80026968:	00e390ef          	jal	ra,8005f976 <__atomic_fetch_or_2>
    8002696c:	bfa5                	j	800268e4 <js_atomics_op+0x11a>
    8002696e:	0f50000f          	fence	iorw,ow
    80026972:	4524a52f          	amoor.w.aq	a0,s2,(s1)
    80026976:	b7e9                	j	80026940 <js_atomics_op+0x176>
    80026978:	0f50000f          	fence	iorw,ow
    8002697c:	4524b52f          	amoor.d.aq	a0,s2,(s1)
    80026980:	b795                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55168
        OP(SUB, atomic_fetch_sub)
    80026982:	4615                	li	a2,5
    80026984:	0ff97593          	zext.b	a1,s2
    80026988:	8526                	mv	a0,s1
    8002698a:	777380ef          	jal	ra,8005f900 <__atomic_fetch_sub_1>
    8002698e:	bf99                	j	800268e4 <js_atomics_op+0x11a>
    80026990:	03091593          	slli	a1,s2,0x30
    80026994:	4615                	li	a2,5
    80026996:	91c1                	srli	a1,a1,0x30
    80026998:	8526                	mv	a0,s1
    8002699a:	777380ef          	jal	ra,8005f910 <__atomic_fetch_sub_2>
    8002699e:	b799                	j	800268e4 <js_atomics_op+0x11a>
    800269a0:	4120093b          	negw	s2,s2
    800269a4:	0f50000f          	fence	iorw,ow
    800269a8:	0524a52f          	amoadd.w.aq	a0,s2,(s1)
    800269ac:	bf51                	j	80026940 <js_atomics_op+0x176>
    800269ae:	41200933          	neg	s2,s2
    800269b2:	0f50000f          	fence	iorw,ow
    800269b6:	0524b52f          	amoadd.d.aq	a0,s2,(s1)
    800269ba:	b72d                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55169
        OP(XOR, atomic_fetch_xor)
    800269bc:	4615                	li	a2,5
    800269be:	0ff97593          	zext.b	a1,s2
    800269c2:	8526                	mv	a0,s1
    800269c4:	7d5380ef          	jal	ra,8005f998 <__atomic_fetch_xor_1>
    800269c8:	bf31                	j	800268e4 <js_atomics_op+0x11a>
    800269ca:	03091593          	slli	a1,s2,0x30
    800269ce:	4615                	li	a2,5
    800269d0:	91c1                	srli	a1,a1,0x30
    800269d2:	8526                	mv	a0,s1
    800269d4:	7d3380ef          	jal	ra,8005f9a6 <__atomic_fetch_xor_2>
    800269d8:	b731                	j	800268e4 <js_atomics_op+0x11a>
    800269da:	0f50000f          	fence	iorw,ow
    800269de:	2524a52f          	amoxor.w.aq	a0,s2,(s1)
    800269e2:	bfb9                	j	80026940 <js_atomics_op+0x176>
    800269e4:	0f50000f          	fence	iorw,ow
    800269e8:	2524b52f          	amoxor.d.aq	a0,s2,(s1)
    800269ec:	bde5                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55170
        OP(EXCHANGE, atomic_exchange)
    800269ee:	4615                	li	a2,5
    800269f0:	0ff97593          	zext.b	a1,s2
    800269f4:	8526                	mv	a0,s1
    800269f6:	653380ef          	jal	ra,8005f848 <__atomic_exchange_1>
    800269fa:	b5ed                	j	800268e4 <js_atomics_op+0x11a>
    800269fc:	03091593          	slli	a1,s2,0x30
    80026a00:	4615                	li	a2,5
    80026a02:	91c1                	srli	a1,a1,0x30
    80026a04:	8526                	mv	a0,s1
    80026a06:	64f380ef          	jal	ra,8005f854 <__atomic_exchange_2>
    80026a0a:	bde9                	j	800268e4 <js_atomics_op+0x11a>
    80026a0c:	854a                	mv	a0,s2
    80026a0e:	0f50000f          	fence	iorw,ow
    80026a12:	0ca4a52f          	amoswap.w.aq	a0,a0,(s1)
    80026a16:	b72d                	j	80026940 <js_atomics_op+0x176>
    80026a18:	854a                	mv	a0,s2
    80026a1a:	0f50000f          	fence	iorw,ow
    80026a1e:	0ca4b52f          	amoswap.d.aq	a0,a0,(s1)
    80026a22:	b5c9                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55174
        a = atomic_load((_Atomic(uint8_t) *)ptr);
    80026a24:	0ff0000f          	fence
    80026a28:	0004c503          	lbu	a0,0(s1)
    80026a2c:	0ff0000f          	fence
    80026a30:	0ff57513          	zext.b	a0,a0
quickjs-nuttx/quickjs.c:55175
        break;
    80026a34:	bd45                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55177
        a = atomic_load((_Atomic(uint16_t) *)ptr);
    80026a36:	0ff0000f          	fence
    80026a3a:	0004d503          	lhu	a0,0(s1)
    80026a3e:	0ff0000f          	fence
    80026a42:	1542                	slli	a0,a0,0x30
    80026a44:	9141                	srli	a0,a0,0x30
quickjs-nuttx/quickjs.c:55178
        break;
    80026a46:	bd79                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55180
        a = atomic_load((_Atomic(uint32_t) *)ptr);
    80026a48:	0ff0000f          	fence
    80026a4c:	4088                	lw	a0,0(s1)
    80026a4e:	0ff0000f          	fence
    80026a52:	b5fd                	j	80026940 <js_atomics_op+0x176>
quickjs-nuttx/quickjs.c:55183
        a = atomic_load((_Atomic(uint64_t) *)ptr);
    80026a54:	0ff0000f          	fence
    80026a58:	6088                	ld	a0,0(s1)
    80026a5a:	0ff0000f          	fence
quickjs-nuttx/quickjs.c:55184
        break;
    80026a5e:	b559                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55189
            atomic_compare_exchange_strong((_Atomic(uint8_t) *)ptr, &v1, rep_val);
    80026a60:	4715                	li	a4,5
    80026a62:	4695                	li	a3,5
    80026a64:	0ff67613          	zext.b	a2,a2
    80026a68:	108c                	addi	a1,sp,96
    80026a6a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:55188
            uint8_t v1 = v;
    80026a6c:	07210023          	sb	s2,96(sp)
quickjs-nuttx/quickjs.c:55189
            atomic_compare_exchange_strong((_Atomic(uint8_t) *)ptr, &v1, rep_val);
    80026a70:	601380ef          	jal	ra,8005f870 <__atomic_compare_exchange_1>
quickjs-nuttx/quickjs.c:55190
            a = v1;
    80026a74:	06014503          	lbu	a0,96(sp)
quickjs-nuttx/quickjs.c:55192
        break;
    80026a78:	b5b5                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55196
            atomic_compare_exchange_strong((_Atomic(uint16_t) *)ptr, &v1, rep_val);
    80026a7a:	1642                	slli	a2,a2,0x30
    80026a7c:	4715                	li	a4,5
    80026a7e:	4695                	li	a3,5
    80026a80:	9241                	srli	a2,a2,0x30
    80026a82:	108c                	addi	a1,sp,96
    80026a84:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:55195
            uint16_t v1 = v;
    80026a86:	07211023          	sh	s2,96(sp)
quickjs-nuttx/quickjs.c:55196
            atomic_compare_exchange_strong((_Atomic(uint16_t) *)ptr, &v1, rep_val);
    80026a8a:	603380ef          	jal	ra,8005f88c <__atomic_compare_exchange_2>
quickjs-nuttx/quickjs.c:55197
            a = v1;
    80026a8e:	06015503          	lhu	a0,96(sp)
quickjs-nuttx/quickjs.c:55199
        break;
    80026a92:	bd89                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55203
            atomic_compare_exchange_strong((_Atomic(uint32_t) *)ptr, &v1, rep_val);
    80026a94:	0f50000f          	fence	iorw,ow
    80026a98:	1404a52f          	lr.w.aq	a0,(s1)
    80026a9c:	01251563          	bne	a0,s2,80026aa6 <js_atomics_op+0x2dc>
    80026aa0:	1cc4a7af          	sc.w.aq	a5,a2,(s1)
    80026aa4:	fbf5                	bnez	a5,80026a98 <js_atomics_op+0x2ce>
    80026aa6:	bd69                	j	80026940 <js_atomics_op+0x176>
quickjs-nuttx/quickjs.c:55210
            atomic_compare_exchange_strong((_Atomic(uint64_t) *)ptr, &v1, rep_val);
    80026aa8:	0f50000f          	fence	iorw,ow
    80026aac:	1404b52f          	lr.d.aq	a0,(s1)
    80026ab0:	01251563          	bne	a0,s2,80026aba <js_atomics_op+0x2f0>
    80026ab4:	1cc4b7af          	sc.d.aq	a5,a2,(s1)
    80026ab8:	fbf5                	bnez	a5,80026aac <js_atomics_op+0x2e2>
quickjs-nuttx/quickjs.c:55213
        break;
    80026aba:	b52d                	j	800268e4 <js_atomics_op+0x11a>
quickjs-nuttx/quickjs.c:55215
        abort();
    80026abc:	0c63c0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:55220
        a = (int8_t)a;
    80026ac0:	0185151b          	slliw	a0,a0,0x18
    80026ac4:	4185551b          	sraiw	a0,a0,0x18
quickjs-nuttx/quickjs.c:55233
        ret = JS_NewInt32(ctx, a);
    80026ac8:	0005079b          	sext.w	a5,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80026acc:	ca82                	sw	zero,84(sp)
    80026ace:	c8be                	sw	a5,80(sp)
    80026ad0:	6746                	ld	a4,80(sp)
    80026ad2:	4581                	li	a1,0
    80026ad4:	f83a                	sd	a4,48(sp)
js_atomics_op():
quickjs-nuttx/quickjs.c:55247
    return ret;
    80026ad6:	d83e                	sw	a5,48(sp)
    80026ad8:	77c2                	ld	a5,48(sp)
    80026ada:	e0be                	sd	a5,64(sp)
    80026adc:	b371                	j	80026868 <js_atomics_op+0x9e>
quickjs-nuttx/quickjs.c:55223
        a = (uint8_t)a;
    80026ade:	0ff57513          	zext.b	a0,a0
quickjs-nuttx/quickjs.c:55224
        goto done;
    80026ae2:	b7dd                	j	80026ac8 <js_atomics_op+0x2fe>
quickjs-nuttx/quickjs.c:55226
        a = (int16_t)a;
    80026ae4:	0105151b          	slliw	a0,a0,0x10
    80026ae8:	4105551b          	sraiw	a0,a0,0x10
quickjs-nuttx/quickjs.c:55227
        goto done;
    80026aec:	bff1                	j	80026ac8 <js_atomics_op+0x2fe>
quickjs-nuttx/quickjs.c:55229
        a = (uint16_t)a;
    80026aee:	1542                	slli	a0,a0,0x30
    80026af0:	9141                	srli	a0,a0,0x30
quickjs-nuttx/quickjs.c:55230
        goto done;
    80026af2:	bfd9                	j	80026ac8 <js_atomics_op+0x2fe>
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80026af4:	0005079b          	sext.w	a5,a0
    80026af8:	0007cb63          	bltz	a5,80026b0e <js_atomics_op+0x344>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80026afc:	d282                	sw	zero,100(sp)
    80026afe:	d0be                	sw	a5,96(sp)
    80026b00:	7706                	ld	a4,96(sp)
    80026b02:	4581                	li	a1,0
    80026b04:	e8ba                	sd	a4,80(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80026b06:	c8be                	sw	a5,80(sp)
    80026b08:	27c6                	fld	fa5,80(sp)
    80026b0a:	b83e                	fsd	fa5,48(sp)
    80026b0c:	b7e9                	j	80026ad6 <js_atomics_op+0x30c>
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80026b0e:	d21507d3          	fcvt.d.wu	fa5,a0
    80026b12:	459d                	li	a1,7
    80026b14:	e20787d3          	fmv.x.d	a5,fa5
js_atomics_op():
quickjs-nuttx/quickjs.h:230
    return v;
    80026b18:	a8be                	fsd	fa5,80(sp)
    80026b1a:	2781                	sext.w	a5,a5
    80026b1c:	b7ed                	j	80026b06 <js_atomics_op+0x33c>
quickjs-nuttx/quickjs.c:55239
        ret = JS_NewBigInt64(ctx, a);
    80026b1e:	85aa                	mv	a1,a0
    80026b20:	8522                	mv	a0,s0
    80026b22:	d88f70ef          	jal	ra,8001e0aa <JS_NewBigInt64>
quickjs-nuttx/quickjs.c:55242
        ret = JS_NewBigUint64(ctx, a);
    80026b26:	f82a                	sd	a0,48(sp)
    80026b28:	0005079b          	sext.w	a5,a0
quickjs-nuttx/quickjs.c:55243
        break;
    80026b2c:	b76d                	j	80026ad6 <js_atomics_op+0x30c>
quickjs-nuttx/quickjs.c:55242
        ret = JS_NewBigUint64(ctx, a);
    80026b2e:	85aa                	mv	a1,a0
    80026b30:	8522                	mv	a0,s0
    80026b32:	ddef70ef          	jal	ra,8001e110 <JS_NewBigUint64>
    80026b36:	bfc5                	j	80026b26 <js_atomics_op+0x35c>

0000000080026b38 <JS_ToBigInt>:
JS_ToBigInt():
quickjs-nuttx/quickjs.c:12189
{
    80026b38:	7139                	addi	sp,sp,-64
    80026b3a:	f822                	sd	s0,48(sp)
    80026b3c:	f426                	sd	s1,40(sp)
    80026b3e:	842a                	mv	s0,a0
    80026b40:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:12190
    return JS_ToBigIntFree(ctx, buf, JS_DupValue(ctx, val));
    80026b42:	8532                	mv	a0,a2
    80026b44:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:12189
{
    80026b46:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:12190
    return JS_ToBigIntFree(ctx, buf, JS_DupValue(ctx, val));
    80026b48:	8d3e30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80026b4c:	862a                	mv	a2,a0
    80026b4e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:12191
}
    80026b50:	7442                	ld	s0,48(sp)
    80026b52:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:12190
    return JS_ToBigIntFree(ctx, buf, JS_DupValue(ctx, val));
    80026b54:	86ae                	mv	a3,a1
    80026b56:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:12191
}
    80026b58:	74a2                	ld	s1,40(sp)
    80026b5a:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:12190
    return JS_ToBigIntFree(ctx, buf, JS_DupValue(ctx, val));
    80026b5c:	c32ff06f          	j	80025f8e <JS_ToBigIntFree>

0000000080026b60 <js_bigint_sqrt>:
js_bigint_sqrt():
quickjs-nuttx/quickjs.c:50723
{
    80026b60:	7155                	addi	sp,sp,-208
    80026b62:	e1a2                	sd	s0,192(sp)
    80026b64:	f54e                	sd	s3,168(sp)
    80026b66:	ed56                	sd	s5,152(sp)
    80026b68:	e95a                	sd	s6,144(sp)
    80026b6a:	e586                	sd	ra,200(sp)
    80026b6c:	8b3e                	mv	s6,a5
    80026b6e:	fd26                	sd	s1,184(sp)
    80026b70:	f94a                	sd	s2,176(sp)
    80026b72:	f152                	sd	s4,160(sp)
    80026b74:	842a                	mv	s0,a0
    80026b76:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:50728
    r_val = JS_NewBigInt(ctx);
    80026b78:	832f40ef          	jal	ra,8001abaa <JS_NewBigInt>
    80026b7c:	ec2a                	sd	a0,24(sp)
    80026b7e:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:50729
    if (JS_IsException(r_val))
    80026b80:	0005879b          	sext.w	a5,a1
    80026b84:	4a99                	li	s5,6
    80026b86:	01579563          	bne	a5,s5,80026b90 <js_bigint_sqrt+0x30>
quickjs-nuttx/quickjs.c:50762
    return JS_EXCEPTION;
    80026b8a:	e482                	sd	zero,72(sp)
    80026b8c:	4799                	li	a5,6
    80026b8e:	a0e1                	j	80026c56 <js_bigint_sqrt+0xf6>
    80026b90:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:50731
    rem_val = JS_NewBigInt(ctx);
    80026b92:	8522                	mv	a0,s0
    80026b94:	84ae                	mv	s1,a1
    80026b96:	814f40ef          	jal	ra,8001abaa <JS_NewBigInt>
    80026b9a:	f82e                	sd	a1,48(sp)
    80026b9c:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:50732
    if (JS_IsException(rem_val))
    80026b9e:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:50731
    rem_val = JS_NewBigInt(ctx);
    80026ba0:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:50732
    if (JS_IsException(rem_val))
    80026ba2:	ff5584e3          	beq	a1,s5,80026b8a <js_bigint_sqrt+0x2a>
quickjs-nuttx/quickjs.c:50737
    a = JS_ToBigInt(ctx, &a_s, argv[0]);
    80026ba6:	0009b603          	ld	a2,0(s3)
    80026baa:	0089b683          	ld	a3,8(s3)
    80026bae:	10ac                	addi	a1,sp,104
    80026bb0:	8522                	mv	a0,s0
    80026bb2:	f87ff0ef          	jal	ra,80026b38 <JS_ToBigInt>
    80026bb6:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:50738
    if (!a)
    80026bb8:	c515                	beqz	a0,80026be4 <js_bigint_sqrt+0x84>
quickjs-nuttx/quickjs.c:50740
    status = bf_sqrtrem(r, rem, a);
    80026bba:	862a                	mv	a2,a0
    80026bbc:	008a0593          	addi	a1,s4,8
    80026bc0:	00890513          	addi	a0,s2,8
    80026bc4:	4f9350ef          	jal	ra,8005c8bc <bf_sqrtrem>
    80026bc8:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:50741
    JS_FreeBigInt(ctx, a, &a_s);
    80026bca:	10b0                	addi	a2,sp,104
    80026bcc:	85ce                	mv	a1,s3
    80026bce:	8522                	mv	a0,s0
    80026bd0:	856e50ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:50742
    if (unlikely(status & ~BF_ST_INEXACT)) {
    80026bd4:	fefa7793          	andi	a5,s4,-17
    80026bd8:	2781                	sext.w	a5,a5
    80026bda:	c385                	beqz	a5,80026bfa <js_bigint_sqrt+0x9a>
quickjs-nuttx/quickjs.c:50743
        throw_bf_exception(ctx, status);
    80026bdc:	85d2                	mv	a1,s4
    80026bde:	8522                	mv	a0,s0
    80026be0:	fe6f70ef          	jal	ra,8001e3c6 <throw_bf_exception>
quickjs-nuttx/quickjs.c:50760
    JS_FreeValue(ctx, r_val);
    80026be4:	85ca                	mv	a1,s2
    80026be6:	8626                	mv	a2,s1
    80026be8:	8522                	mv	a0,s0
    80026bea:	bb5e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50761
    JS_FreeValue(ctx, rem_val);
    80026bee:	75a2                	ld	a1,40(sp)
    80026bf0:	7642                	ld	a2,48(sp)
    80026bf2:	8522                	mv	a0,s0
    80026bf4:	babe40ef          	jal	ra,8000b79e <JS_FreeValue>
    80026bf8:	bf49                	j	80026b8a <js_bigint_sqrt+0x2a>
quickjs-nuttx/quickjs.c:50746
    r_val = JS_CompactBigInt(ctx, r_val);
    80026bfa:	65e2                	ld	a1,24(sp)
    80026bfc:	7602                	ld	a2,32(sp)
    80026bfe:	8522                	mv	a0,s0
    80026c00:	a4ee60ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80026c04:	ec2a                	sd	a0,24(sp)
    80026c06:	f02e                	sd	a1,32(sp)
    80026c08:	8a2a                	mv	s4,a0
    80026c0a:	89ae                	mv	s3,a1
    80026c0c:	892a                	mv	s2,a0
    80026c0e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:50747
    if (magic) {
    80026c10:	040b0563          	beqz	s6,80026c5a <js_bigint_sqrt+0xfa>
quickjs-nuttx/quickjs.c:50749
        ret = JS_NewArray(ctx);
    80026c14:	8522                	mv	a0,s0
    80026c16:	e44f50ef          	jal	ra,8001c25a <JS_NewArray>
    80026c1a:	fc2a                	sd	a0,56(sp)
    80026c1c:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:50750
        if (JS_IsException(ret))
    80026c1e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:50749
        ret = JS_NewArray(ctx);
    80026c22:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50750
        if (JS_IsException(ret))
    80026c24:	fd5780e3          	beq	a5,s5,80026be4 <js_bigint_sqrt+0x84>
quickjs-nuttx/quickjs.c:50752
        JS_SetPropertyUint32(ctx, ret, 0, r_val);
    80026c28:	6762                	ld	a4,24(sp)
    80026c2a:	7782                	ld	a5,32(sp)
    80026c2c:	4681                	li	a3,0
    80026c2e:	85aa                	mv	a1,a0
    80026c30:	8522                	mv	a0,s0
    80026c32:	edbf00ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
quickjs-nuttx/quickjs.c:50753
        JS_SetPropertyUint32(ctx, ret, 1, JS_CompactBigInt(ctx, rem_val));
    80026c36:	7642                	ld	a2,48(sp)
    80026c38:	75a2                	ld	a1,40(sp)
    80026c3a:	8522                	mv	a0,s0
    80026c3c:	a12e60ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80026c40:	87ae                	mv	a5,a1
    80026c42:	6606                	ld	a2,64(sp)
    80026c44:	75e2                	ld	a1,56(sp)
    80026c46:	872a                	mv	a4,a0
    80026c48:	4685                	li	a3,1
    80026c4a:	8522                	mv	a0,s0
    80026c4c:	ec1f00ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
quickjs-nuttx/quickjs.c:50754
        return ret;
    80026c50:	77e2                	ld	a5,56(sp)
    80026c52:	e4be                	sd	a5,72(sp)
    80026c54:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:50762
    return JS_EXCEPTION;
    80026c56:	e8be                	sd	a5,80(sp)
    80026c58:	a801                	j	80026c68 <js_bigint_sqrt+0x108>
quickjs-nuttx/quickjs.c:50756
        JS_FreeValue(ctx, rem_val);
    80026c5a:	75a2                	ld	a1,40(sp)
    80026c5c:	7642                	ld	a2,48(sp)
    80026c5e:	8522                	mv	a0,s0
    80026c60:	b3fe40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50757
        return r_val;
    80026c64:	e4d2                	sd	s4,72(sp)
    80026c66:	e8ce                	sd	s3,80(sp)
quickjs-nuttx/quickjs.c:50763 (discriminator 1)
}
    80026c68:	60ae                	ld	ra,200(sp)
    80026c6a:	640e                	ld	s0,192(sp)
    80026c6c:	6526                	ld	a0,72(sp)
    80026c6e:	65c6                	ld	a1,80(sp)
    80026c70:	74ea                	ld	s1,184(sp)
    80026c72:	794a                	ld	s2,176(sp)
    80026c74:	79aa                	ld	s3,168(sp)
    80026c76:	7a0a                	ld	s4,160(sp)
    80026c78:	6aea                	ld	s5,152(sp)
    80026c7a:	6b4a                	ld	s6,144(sp)
    80026c7c:	6169                	addi	sp,sp,208
    80026c7e:	8082                	ret

0000000080026c80 <js_bigint_div>:
js_bigint_div():
quickjs-nuttx/quickjs.c:50672
{
    80026c80:	7111                	addi	sp,sp,-256
    80026c82:	f9a2                	sd	s0,240(sp)
    80026c84:	edce                	sd	s3,216(sp)
    80026c86:	e5d6                	sd	s5,200(sp)
    80026c88:	e1da                	sd	s6,192(sp)
    80026c8a:	89be                	mv	s3,a5
    80026c8c:	fd86                	sd	ra,248(sp)
    80026c8e:	f5a6                	sd	s1,232(sp)
    80026c90:	f1ca                	sd	s2,224(sp)
    80026c92:	e9d2                	sd	s4,208(sp)
    80026c94:	fd5e                	sd	s7,184(sp)
    80026c96:	842a                	mv	s0,a0
    80026c98:	8aba                	mv	s5,a4
quickjs-nuttx/quickjs.c:50677
    q_val = JS_NewBigInt(ctx);
    80026c9a:	f11f30ef          	jal	ra,8001abaa <JS_NewBigInt>
    80026c9e:	e82a                	sd	a0,16(sp)
    80026ca0:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:50678
    if (JS_IsException(q_val))
    80026ca2:	0005879b          	sext.w	a5,a1
    80026ca6:	4b19                	li	s6,6
    80026ca8:	01679563          	bne	a5,s6,80026cb2 <js_bigint_div+0x32>
quickjs-nuttx/quickjs.c:50679
        return JS_EXCEPTION;
    80026cac:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:50717
    return JS_EXCEPTION;
    80026cae:	e4be                	sd	a5,72(sp)
    80026cb0:	aa01                	j	80026dc0 <js_bigint_div+0x140>
    80026cb2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:50680
    r_val = JS_NewBigInt(ctx);
    80026cb4:	8522                	mv	a0,s0
    80026cb6:	84ae                	mv	s1,a1
    80026cb8:	ef3f30ef          	jal	ra,8001abaa <JS_NewBigInt>
    80026cbc:	f42e                	sd	a1,40(sp)
    80026cbe:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:50681
    if (JS_IsException(r_val))
    80026cc0:	2581                	sext.w	a1,a1
    80026cc2:	03658b63          	beq	a1,s6,80026cf8 <js_bigint_div+0x78>
quickjs-nuttx/quickjs.c:50684
    a = JS_ToBigInt(ctx, &a_s, argv[0]);
    80026cc6:	000ab603          	ld	a2,0(s5)
    80026cca:	008ab683          	ld	a3,8(s5)
    80026cce:	108c                	addi	a1,sp,96
    80026cd0:	8522                	mv	a0,s0
    80026cd2:	e67ff0ef          	jal	ra,80026b38 <JS_ToBigInt>
    80026cd6:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:50685
    if (!a)
    80026cd8:	c105                	beqz	a0,80026cf8 <js_bigint_div+0x78>
quickjs-nuttx/quickjs.c:50687
    b = JS_ToBigInt(ctx, &b_s, argv[1]);
    80026cda:	010ab603          	ld	a2,16(s5)
    80026cde:	018ab683          	ld	a3,24(s5)
    80026ce2:	012c                	addi	a1,sp,136
    80026ce4:	8522                	mv	a0,s0
    80026ce6:	e53ff0ef          	jal	ra,80026b38 <JS_ToBigInt>
    80026cea:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:50688
    if (!b) {
    80026cec:	e11d                	bnez	a0,80026d12 <js_bigint_div+0x92>
quickjs-nuttx/quickjs.c:50689
        JS_FreeBigInt(ctx, a, &a_s);
    80026cee:	1090                	addi	a2,sp,96
    80026cf0:	85d2                	mv	a1,s4
    80026cf2:	8522                	mv	a0,s0
    80026cf4:	f33e40ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:50715
    JS_FreeValue(ctx, q_val);
    80026cf8:	85ca                	mv	a1,s2
    80026cfa:	8626                	mv	a2,s1
    80026cfc:	8522                	mv	a0,s0
    80026cfe:	aa1e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50716
    JS_FreeValue(ctx, r_val);
    80026d02:	7582                	ld	a1,32(sp)
    80026d04:	7622                	ld	a2,40(sp)
    80026d06:	8522                	mv	a0,s0
    80026d08:	a97e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50717
    return JS_EXCEPTION;
    80026d0c:	4799                	li	a5,6
    80026d0e:	e082                	sd	zero,64(sp)
    80026d10:	bf79                	j	80026cae <js_bigint_div+0x2e>
quickjs-nuttx/quickjs.c:50694
    status = bf_divrem(q, r, a, b, BF_PREC_INF, BF_RNDZ, magic & 0xf);
    80026d12:	7582                	ld	a1,32(sp)
    80026d14:	577d                	li	a4,-1
    80026d16:	86aa                	mv	a3,a0
    80026d18:	00f9f813          	andi	a6,s3,15
    80026d1c:	4785                	li	a5,1
    80026d1e:	8309                	srli	a4,a4,0x2
    80026d20:	8652                	mv	a2,s4
    80026d22:	05a1                	addi	a1,a1,8
    80026d24:	00890513          	addi	a0,s2,8
    80026d28:	53e380ef          	jal	ra,8005f266 <bf_divrem>
    80026d2c:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:50695
    JS_FreeBigInt(ctx, a, &a_s);
    80026d2e:	1090                	addi	a2,sp,96
    80026d30:	85d2                	mv	a1,s4
    80026d32:	8522                	mv	a0,s0
    80026d34:	ef3e40ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:50696
    JS_FreeBigInt(ctx, b, &b_s);
    80026d38:	0130                	addi	a2,sp,136
    80026d3a:	85d6                	mv	a1,s5
    80026d3c:	8522                	mv	a0,s0
    80026d3e:	ee9e40ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:50697
    if (unlikely(status)) {
    80026d42:	000b8763          	beqz	s7,80026d50 <js_bigint_div+0xd0>
quickjs-nuttx/quickjs.c:50698
        throw_bf_exception(ctx, status);
    80026d46:	85de                	mv	a1,s7
    80026d48:	8522                	mv	a0,s0
    80026d4a:	e7cf70ef          	jal	ra,8001e3c6 <throw_bf_exception>
quickjs-nuttx/quickjs.c:50699
        goto fail;
    80026d4e:	b76d                	j	80026cf8 <js_bigint_div+0x78>
quickjs-nuttx/quickjs.c:50701
    q_val = JS_CompactBigInt(ctx, q_val);
    80026d50:	65c2                	ld	a1,16(sp)
    80026d52:	6662                	ld	a2,24(sp)
    80026d54:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50702
    if (magic & 0x10) {
    80026d56:	0109f993          	andi	s3,s3,16
quickjs-nuttx/quickjs.c:50701
    q_val = JS_CompactBigInt(ctx, q_val);
    80026d5a:	8f4e60ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80026d5e:	e82a                	sd	a0,16(sp)
    80026d60:	ec2e                	sd	a1,24(sp)
    80026d62:	8aaa                	mv	s5,a0
    80026d64:	8a2e                	mv	s4,a1
    80026d66:	892a                	mv	s2,a0
    80026d68:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:50702
    if (magic & 0x10) {
    80026d6a:	04098463          	beqz	s3,80026db2 <js_bigint_div+0x132>
quickjs-nuttx/quickjs.c:50704
        ret = JS_NewArray(ctx);
    80026d6e:	8522                	mv	a0,s0
    80026d70:	ceaf50ef          	jal	ra,8001c25a <JS_NewArray>
    80026d74:	f82a                	sd	a0,48(sp)
    80026d76:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:50705
        if (JS_IsException(ret))
    80026d78:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:50704
        ret = JS_NewArray(ctx);
    80026d7c:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50705
        if (JS_IsException(ret))
    80026d7e:	f7678de3          	beq	a5,s6,80026cf8 <js_bigint_div+0x78>
quickjs-nuttx/quickjs.c:50707
        JS_SetPropertyUint32(ctx, ret, 0, q_val);
    80026d82:	6742                	ld	a4,16(sp)
    80026d84:	67e2                	ld	a5,24(sp)
    80026d86:	4681                	li	a3,0
    80026d88:	85aa                	mv	a1,a0
    80026d8a:	8522                	mv	a0,s0
    80026d8c:	d81f00ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
quickjs-nuttx/quickjs.c:50708
        JS_SetPropertyUint32(ctx, ret, 1, JS_CompactBigInt(ctx, r_val));
    80026d90:	7622                	ld	a2,40(sp)
    80026d92:	7582                	ld	a1,32(sp)
    80026d94:	8522                	mv	a0,s0
    80026d96:	8b8e60ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80026d9a:	87ae                	mv	a5,a1
    80026d9c:	7662                	ld	a2,56(sp)
    80026d9e:	75c2                	ld	a1,48(sp)
    80026da0:	872a                	mv	a4,a0
    80026da2:	4685                	li	a3,1
    80026da4:	8522                	mv	a0,s0
    80026da6:	d67f00ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
quickjs-nuttx/quickjs.c:50709
        return ret;
    80026daa:	77c2                	ld	a5,48(sp)
    80026dac:	e0be                	sd	a5,64(sp)
    80026dae:	77e2                	ld	a5,56(sp)
    80026db0:	bdfd                	j	80026cae <js_bigint_div+0x2e>
quickjs-nuttx/quickjs.c:50711
        JS_FreeValue(ctx, r_val);
    80026db2:	7582                	ld	a1,32(sp)
    80026db4:	7622                	ld	a2,40(sp)
    80026db6:	8522                	mv	a0,s0
    80026db8:	9e7e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50712
        return q_val;
    80026dbc:	e0d6                	sd	s5,64(sp)
    80026dbe:	e4d2                	sd	s4,72(sp)
quickjs-nuttx/quickjs.c:50718 (discriminator 1)
}
    80026dc0:	70ee                	ld	ra,248(sp)
    80026dc2:	744e                	ld	s0,240(sp)
    80026dc4:	6506                	ld	a0,64(sp)
    80026dc6:	65a6                	ld	a1,72(sp)
    80026dc8:	74ae                	ld	s1,232(sp)
    80026dca:	790e                	ld	s2,224(sp)
    80026dcc:	69ee                	ld	s3,216(sp)
    80026dce:	6a4e                	ld	s4,208(sp)
    80026dd0:	6aae                	ld	s5,200(sp)
    80026dd2:	6b0e                	ld	s6,192(sp)
    80026dd4:	7bea                	ld	s7,184(sp)
    80026dd6:	6111                	addi	sp,sp,256
    80026dd8:	8082                	ret

0000000080026dda <js_bigint_asUintN>:
js_bigint_asUintN():
quickjs-nuttx/quickjs.c:50802
{
    80026dda:	7131                	addi	sp,sp,-192
    80026ddc:	f922                	sd	s0,176(sp)
    80026dde:	f14a                	sd	s2,160(sp)
    80026de0:	e952                	sd	s4,144(sp)
    80026de2:	fd06                	sd	ra,184(sp)
    80026de4:	f526                	sd	s1,168(sp)
    80026de6:	ed4e                	sd	s3,152(sp)
quickjs-nuttx/quickjs.c:50807
    if (JS_ToIndex(ctx, &bits, argv[0]))
    80026de8:	6310                	ld	a2,0(a4)
    80026dea:	6714                	ld	a3,8(a4)
    80026dec:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:50802
{
    80026dee:	842a                	mv	s0,a0
    80026df0:	893a                	mv	s2,a4
    80026df2:	8a3e                	mv	s4,a5
quickjs-nuttx/quickjs.c:50807
    if (JS_ToIndex(ctx, &bits, argv[0]))
    80026df4:	e0efd0ef          	jal	ra,80024402 <JS_ToIndex>
    80026df8:	cd11                	beqz	a0,80026e14 <js_bigint_asUintN+0x3a>
quickjs-nuttx/quickjs.c:50808
        return JS_EXCEPTION;
    80026dfa:	4799                	li	a5,6
    80026dfc:	f802                	sd	zero,48(sp)
    80026dfe:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:50837 (discriminator 1)
}
    80026e00:	70ea                	ld	ra,184(sp)
    80026e02:	744a                	ld	s0,176(sp)
    80026e04:	7542                	ld	a0,48(sp)
    80026e06:	75e2                	ld	a1,56(sp)
    80026e08:	74aa                	ld	s1,168(sp)
    80026e0a:	790a                	ld	s2,160(sp)
    80026e0c:	69ea                	ld	s3,152(sp)
    80026e0e:	6a4a                	ld	s4,144(sp)
    80026e10:	6129                	addi	sp,sp,192
    80026e12:	8082                	ret
quickjs-nuttx/quickjs.c:50809
    res = JS_NewBigInt(ctx);
    80026e14:	8522                	mv	a0,s0
    80026e16:	d95f30ef          	jal	ra,8001abaa <JS_NewBigInt>
    80026e1a:	f42e                	sd	a1,40(sp)
    80026e1c:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:50810
    if (JS_IsException(res))
    80026e1e:	2581                	sext.w	a1,a1
    80026e20:	4999                	li	s3,6
    80026e22:	fd358ce3          	beq	a1,s3,80026dfa <js_bigint_asUintN+0x20>
quickjs-nuttx/quickjs.c:50813
    a = JS_ToBigInt(ctx, &a_s, argv[1]);
    80026e26:	01093603          	ld	a2,16(s2)
    80026e2a:	01893683          	ld	a3,24(s2)
JS_GetBigInt():
quickjs-nuttx/quickjs.c:1143
    return &p->num;
    80026e2e:	00850493          	addi	s1,a0,8
js_bigint_asUintN():
quickjs-nuttx/quickjs.c:50813
    a = JS_ToBigInt(ctx, &a_s, argv[1]);
    80026e32:	008c                	addi	a1,sp,64
    80026e34:	8522                	mv	a0,s0
    80026e36:	d03ff0ef          	jal	ra,80026b38 <JS_ToBigInt>
    80026e3a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:50814
    if (!a) {
    80026e3c:	e909                	bnez	a0,80026e4e <js_bigint_asUintN+0x74>
quickjs-nuttx/quickjs.c:50815
        JS_FreeValue(ctx, res);
    80026e3e:	7582                	ld	a1,32(sp)
    80026e40:	7622                	ld	a2,40(sp)
    80026e42:	8522                	mv	a0,s0
    80026e44:	95be40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50816
        return JS_EXCEPTION;
    80026e48:	f802                	sd	zero,48(sp)
    80026e4a:	fc4e                	sd	s3,56(sp)
    80026e4c:	bf55                	j	80026e00 <js_bigint_asUintN+0x26>
quickjs-nuttx/quickjs.c:50820
    bf_init(ctx->bf_ctx, mask);
    80026e4e:	19043503          	ld	a0,400(s0)
    80026e52:	10ac                	addi	a1,sp,104
quickjs-nuttx/quickjs.c:50822
    bf_mul_2exp(mask, bits, BF_PREC_INF, BF_RNDZ);
    80026e54:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:50820
    bf_init(ctx->bf_ctx, mask);
    80026e56:	519300ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:50821
    bf_set_ui(mask, 1);
    80026e5a:	4585                	li	a1,1
    80026e5c:	10a8                	addi	a0,sp,104
    80026e5e:	581300ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/quickjs.c:50822
    bf_mul_2exp(mask, bits, BF_PREC_INF, BF_RNDZ);
    80026e62:	65e2                	ld	a1,24(sp)
    80026e64:	4685                	li	a3,1
    80026e66:	0029d613          	srli	a2,s3,0x2
    80026e6a:	10a8                	addi	a0,sp,104
    80026e6c:	41b310ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/quickjs.c:50823
    bf_add_si(mask, mask, -1, BF_PREC_INF, BF_RNDZ);
    80026e70:	10ac                	addi	a1,sp,104
    80026e72:	567d                	li	a2,-1
    80026e74:	852e                	mv	a0,a1
    80026e76:	4705                	li	a4,1
    80026e78:	0029d693          	srli	a3,s3,0x2
    80026e7c:	541310ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/quickjs.c:50824
    bf_logic_and(r, a, mask);
    80026e80:	10b0                	addi	a2,sp,104
    80026e82:	85ca                	mv	a1,s2
    80026e84:	8526                	mv	a0,s1
    80026e86:	7c9310ef          	jal	ra,80058e4e <bf_logic_and>
quickjs-nuttx/quickjs.c:50825
    if (asIntN && bits != 0) {
    80026e8a:	040a0963          	beqz	s4,80026edc <js_bigint_asUintN+0x102>
quickjs-nuttx/quickjs.c:50825 (discriminator 1)
    80026e8e:	67e2                	ld	a5,24(sp)
    80026e90:	c7b1                	beqz	a5,80026edc <js_bigint_asUintN+0x102>
quickjs-nuttx/quickjs.c:50826
        bf_set_ui(mask, 1);
    80026e92:	4585                	li	a1,1
    80026e94:	10a8                	addi	a0,sp,104
    80026e96:	549300ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/quickjs.c:50827
        bf_mul_2exp(mask, bits - 1, BF_PREC_INF, BF_RNDZ);
    80026e9a:	65e2                	ld	a1,24(sp)
    80026e9c:	4685                	li	a3,1
    80026e9e:	0029d613          	srli	a2,s3,0x2
    80026ea2:	15fd                	addi	a1,a1,-1
    80026ea4:	10a8                	addi	a0,sp,104
    80026ea6:	3e1310ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/quickjs.c:50828
        if (bf_cmpu(r, mask) >= 0) {
    80026eaa:	10ac                	addi	a1,sp,104
    80026eac:	8526                	mv	a0,s1
    80026eae:	600310ef          	jal	ra,800584ae <bf_cmpu>
    80026eb2:	02054563          	bltz	a0,80026edc <js_bigint_asUintN+0x102>
quickjs-nuttx/quickjs.c:50829
            bf_set_ui(mask, 1);
    80026eb6:	4585                	li	a1,1
    80026eb8:	10a8                	addi	a0,sp,104
    80026eba:	525300ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/quickjs.c:50830
            bf_mul_2exp(mask, bits, BF_PREC_INF, BF_RNDZ);
    80026ebe:	65e2                	ld	a1,24(sp)
    80026ec0:	4685                	li	a3,1
    80026ec2:	0029d613          	srli	a2,s3,0x2
    80026ec6:	10a8                	addi	a0,sp,104
    80026ec8:	3bf310ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/quickjs.c:50831
            bf_sub(r, r, mask, BF_PREC_INF, BF_RNDZ);
    80026ecc:	4705                	li	a4,1
    80026ece:	0029d693          	srli	a3,s3,0x2
    80026ed2:	10b0                	addi	a2,sp,104
    80026ed4:	85a6                	mv	a1,s1
    80026ed6:	8526                	mv	a0,s1
    80026ed8:	4cd310ef          	jal	ra,80058ba4 <bf_sub>
quickjs-nuttx/quickjs.c:50834
    bf_delete(mask);
    80026edc:	10a8                	addi	a0,sp,104
    80026ede:	d78e30ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:50835
    JS_FreeBigInt(ctx, a, &a_s);
    80026ee2:	0090                	addi	a2,sp,64
    80026ee4:	85ca                	mv	a1,s2
    80026ee6:	8522                	mv	a0,s0
    80026ee8:	d3fe40ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:50836
    return JS_CompactBigInt(ctx, res);
    80026eec:	7582                	ld	a1,32(sp)
    80026eee:	7622                	ld	a2,40(sp)
    80026ef0:	8522                	mv	a0,s0
    80026ef2:	f5de50ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80026ef6:	f82a                	sd	a0,48(sp)
    80026ef8:	fc2e                	sd	a1,56(sp)
    80026efa:	b719                	j	80026e00 <js_bigint_asUintN+0x26>

0000000080026efc <js_unary_arith_bigint>:
js_unary_arith_bigint():
quickjs-nuttx/quickjs.c:12842
{
    80026efc:	7175                	addi	sp,sp,-144
    80026efe:	e122                	sd	s0,128(sp)
    80026f00:	fca6                	sd	s1,120(sp)
    80026f02:	f0d2                	sd	s4,96(sp)
    80026f04:	e506                	sd	ra,136(sp)
    80026f06:	f8ca                	sd	s2,112(sp)
    80026f08:	f4ce                	sd	s3,104(sp)
    80026f0a:	ecd6                	sd	s5,88(sp)
    80026f0c:	e036                	sd	a3,0(sp)
    80026f0e:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:12847
    if (op == OP_plus && !is_math_mode(ctx)) {
    80026f10:	08e00793          	li	a5,142
quickjs-nuttx/quickjs.c:12842
{
    80026f14:	84aa                	mv	s1,a0
    80026f16:	8a2e                	mv	s4,a1
    80026f18:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:12847
    if (op == OP_plus && !is_math_mode(ctx)) {
    80026f1a:	02f61c63          	bne	a2,a5,80026f52 <js_unary_arith_bigint+0x56>
quickjs-nuttx/quickjs.c:12847 (discriminator 1)
    80026f1e:	c77e00ef          	jal	ra,80007b94 <is_math_mode>
    80026f22:	e905                	bnez	a0,80026f52 <js_unary_arith_bigint+0x56>
quickjs-nuttx/quickjs.c:12848
        JS_ThrowTypeError(ctx, "bigint argument with unary +");
    80026f24:	00044597          	auipc	a1,0x44
    80026f28:	08c58593          	addi	a1,a1,140 # 8006afb0 <qjsc_repl+0x5a00>
    80026f2c:	8526                	mv	a0,s1
    80026f2e:	f3ef10ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:12861
        JS_FreeValue(ctx, op1);
    80026f32:	6582                	ld	a1,0(sp)
    80026f34:	6622                	ld	a2,8(sp)
    80026f36:	8526                	mv	a0,s1
    80026f38:	867e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12890
        return -1;
    80026f3c:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:12895
}
    80026f3e:	60aa                	ld	ra,136(sp)
    80026f40:	8522                	mv	a0,s0
    80026f42:	640a                	ld	s0,128(sp)
    80026f44:	74e6                	ld	s1,120(sp)
    80026f46:	7946                	ld	s2,112(sp)
    80026f48:	79a6                	ld	s3,104(sp)
    80026f4a:	7a06                	ld	s4,96(sp)
    80026f4c:	6ae6                	ld	s5,88(sp)
    80026f4e:	6149                	addi	sp,sp,144
    80026f50:	8082                	ret
quickjs-nuttx/quickjs.c:12852
    res = JS_NewBigInt(ctx);
    80026f52:	8526                	mv	a0,s1
    80026f54:	c57f30ef          	jal	ra,8001abaa <JS_NewBigInt>
    80026f58:	f02e                	sd	a1,32(sp)
    80026f5a:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:12853
    if (JS_IsException(res)) {
    80026f5c:	2581                	sext.w	a1,a1
    80026f5e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12852
    res = JS_NewBigInt(ctx);
    80026f60:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:12853
    if (JS_IsException(res)) {
    80026f62:	fcf588e3          	beq	a1,a5,80026f32 <js_unary_arith_bigint+0x36>
quickjs-nuttx/quickjs.c:12858
    a = JS_ToBigInt(ctx, &a_s, op1);
    80026f66:	6602                	ld	a2,0(sp)
    80026f68:	66a2                	ld	a3,8(sp)
    80026f6a:	102c                	addi	a1,sp,40
    80026f6c:	8526                	mv	a0,s1
    80026f6e:	bcbff0ef          	jal	ra,80026b38 <JS_ToBigInt>
JS_GetBigInt():
quickjs-nuttx/quickjs.c:1143
    return &p->num;
    80026f72:	00898a93          	addi	s5,s3,8
js_unary_arith_bigint():
quickjs-nuttx/quickjs.c:12858
    a = JS_ToBigInt(ctx, &a_s, op1);
    80026f76:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:12859
    if (!a) {
    80026f78:	e519                	bnez	a0,80026f86 <js_unary_arith_bigint+0x8a>
quickjs-nuttx/quickjs.c:12860
        JS_FreeValue(ctx, res);
    80026f7a:	65e2                	ld	a1,24(sp)
    80026f7c:	7602                	ld	a2,32(sp)
    80026f7e:	8526                	mv	a0,s1
    80026f80:	81fe40ef          	jal	ra,8000b79e <JS_FreeValue>
    80026f84:	b77d                	j	80026f32 <js_unary_arith_bigint+0x36>
quickjs-nuttx/quickjs.c:12865
    switch(op) {
    80026f86:	09000793          	li	a5,144
    80026f8a:	0087ee63          	bltu	a5,s0,80026fa6 <js_unary_arith_bigint+0xaa>
    80026f8e:	08e00793          	li	a5,142
    80026f92:	0287e763          	bltu	a5,s0,80026fc0 <js_unary_arith_bigint+0xc4>
    80026f96:	08d00713          	li	a4,141
    80026f9a:	06e40963          	beq	s0,a4,8002700c <js_unary_arith_bigint+0x110>
    80026f9e:	06f40263          	beq	s0,a5,80027002 <js_unary_arith_bigint+0x106>
quickjs-nuttx/quickjs.c:12883
        abort();
    80026fa2:	3e13b0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:12865
    switch(op) {
    80026fa6:	09600793          	li	a5,150
    80026faa:	fef41ce3          	bne	s0,a5,80026fa2 <js_unary_arith_bigint+0xa6>
quickjs-nuttx/quickjs.c:12879
        ret = bf_add_si(r, a, 1, BF_PREC_INF, BF_RNDZ);
    80026fae:	56fd                	li	a3,-1
    80026fb0:	85aa                	mv	a1,a0
    80026fb2:	4705                	li	a4,1
    80026fb4:	8289                	srli	a3,a3,0x2
    80026fb6:	4605                	li	a2,1
    80026fb8:	8556                	mv	a0,s5
    80026fba:	403310ef          	jal	ra,80058bbc <bf_add_si>
    80026fbe:	a899                	j	80027014 <js_unary_arith_bigint+0x118>
quickjs-nuttx/quickjs.c:12868
        v = 2 * (op - OP_dec) - 1;
    80026fc0:	0014161b          	slliw	a2,s0,0x1
quickjs-nuttx/quickjs.c:12869
        ret = bf_add_si(r, a, v, BF_PREC_INF, BF_RNDZ);
    80026fc4:	56fd                	li	a3,-1
    80026fc6:	85aa                	mv	a1,a0
    80026fc8:	4705                	li	a4,1
    80026fca:	8289                	srli	a3,a3,0x2
    80026fcc:	ee16061b          	addiw	a2,a2,-287
    80026fd0:	8556                	mv	a0,s5
    80026fd2:	3eb310ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/quickjs.c:12872
        ret = bf_set(r, a);
    80026fd6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12885
    JS_FreeBigInt(ctx, a, &a_s);
    80026fd8:	1030                	addi	a2,sp,40
    80026fda:	85ca                	mv	a1,s2
    80026fdc:	8526                	mv	a0,s1
    80026fde:	c49e40ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:12886
    JS_FreeValue(ctx, op1);
    80026fe2:	6582                	ld	a1,0(sp)
    80026fe4:	6622                	ld	a2,8(sp)
    80026fe6:	8526                	mv	a0,s1
    80026fe8:	fb6e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12888
        JS_FreeValue(ctx, res);
    80026fec:	65e2                	ld	a1,24(sp)
    80026fee:	7602                	ld	a2,32(sp)
    80026ff0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:12887
    if (unlikely(ret)) {
    80026ff2:	c80d                	beqz	s0,80027024 <js_unary_arith_bigint+0x128>
quickjs-nuttx/quickjs.c:12888
        JS_FreeValue(ctx, res);
    80026ff4:	faae40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12889
        throw_bf_exception(ctx, ret);
    80026ff8:	85a2                	mv	a1,s0
    80026ffa:	8526                	mv	a0,s1
    80026ffc:	bcaf70ef          	jal	ra,8001e3c6 <throw_bf_exception>
