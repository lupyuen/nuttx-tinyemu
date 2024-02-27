    8001e000:	74a2                	ld	s1,40(sp)
    8001e002:	6121                	addi	sp,sp,64
    8001e004:	8082                	ret
quickjs-nuttx/quickjs.c:35681
    size = (size_t)len << is_wide_char;
    8001e006:	00c16903          	lwu	s2,12(sp)
quickjs-nuttx/quickjs.c:35682
    if ((s->buf_end - s->ptr) < size) {
    8001e00a:	680c                	ld	a1,16(s0)
    8001e00c:	6c1c                	ld	a5,24(s0)
quickjs-nuttx/quickjs.c:35681
    size = (size_t)len << is_wide_char;
    8001e00e:	01391933          	sll	s2,s2,s3
quickjs-nuttx/quickjs.c:35682
    if ((s->buf_end - s->ptr) < size) {
    8001e012:	8f8d                	sub	a5,a5,a1
    8001e014:	0127fc63          	bgeu	a5,s2,8001e02c <JS_ReadString+0x68>
quickjs-nuttx/quickjs.c:35683
        bc_read_error_end(s);
    8001e018:	8522                	mv	a0,s0
    8001e01a:	c5afa0ef          	jal	ra,80018474 <bc_read_error_end>
quickjs-nuttx/quickjs.c:35684
        js_free_string(s->ctx->rt, p);
    8001e01e:	601c                	ld	a5,0(s0)
    8001e020:	85a6                	mv	a1,s1
    8001e022:	6f88                	ld	a0,24(a5)
    8001e024:	a97ec0ef          	jal	ra,8000aaba <js_free_string>
quickjs-nuttx/quickjs.c:35673
        return NULL;
    8001e028:	4481                	li	s1,0
    8001e02a:	b7f1                	j	8001dff6 <JS_ReadString+0x32>
quickjs-nuttx/quickjs.c:35687
    memcpy(p->u.str8, s->ptr, size);
    8001e02c:	864a                	mv	a2,s2
    8001e02e:	0541                	addi	a0,a0,16
    8001e030:	57d450ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:35688
    s->ptr += size;
    8001e034:	681c                	ld	a5,16(s0)
    8001e036:	97ca                	add	a5,a5,s2
    8001e038:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:35689
    if (!is_wide_char) {
    8001e03a:	fa099ee3          	bnez	s3,8001dff6 <JS_ReadString+0x32>
quickjs-nuttx/quickjs.c:35690
        p->u.str8[size] = '\0'; /* add the trailing zero for 8 bit strings */
    8001e03e:	9926                	add	s2,s2,s1
    8001e040:	00090823          	sb	zero,16(s2)
    8001e044:	bf4d                	j	8001dff6 <JS_ReadString+0x32>

000000008001e046 <JS_NewBigInt64_1>:
JS_NewBigInt64_1():
quickjs-nuttx/quickjs.c:12031
{
    8001e046:	715d                	addi	sp,sp,-80
    8001e048:	e0a2                	sd	s0,64(sp)
    8001e04a:	fc26                	sd	s1,56(sp)
    8001e04c:	f84a                	sd	s2,48(sp)
    8001e04e:	f44e                	sd	s3,40(sp)
    8001e050:	e486                	sd	ra,72(sp)
    8001e052:	892a                	mv	s2,a0
    8001e054:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:12034
    val = JS_NewBigInt(ctx);
    8001e056:	b55fc0ef          	jal	ra,8001abaa <JS_NewBigInt>
    8001e05a:	e02a                	sd	a0,0(sp)
    8001e05c:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:12035
    if (JS_IsException(val))
    8001e05e:	0005871b          	sext.w	a4,a1
    8001e062:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12034
    val = JS_NewBigInt(ctx);
    8001e064:	84aa                	mv	s1,a0
    8001e066:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:12035
    if (JS_IsException(val))
    8001e068:	00f71d63          	bne	a4,a5,8001e082 <JS_NewBigInt64_1+0x3c>
quickjs-nuttx/quickjs.c:12042
    return val;
    8001e06c:	ec22                	sd	s0,24(sp)
quickjs-nuttx/quickjs.c:12043
}
    8001e06e:	60a6                	ld	ra,72(sp)
    8001e070:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:12042
    return val;
    8001e072:	e826                	sd	s1,16(sp)
quickjs-nuttx/quickjs.c:12043
}
    8001e074:	6542                	ld	a0,16(sp)
    8001e076:	65e2                	ld	a1,24(sp)
    8001e078:	74e2                	ld	s1,56(sp)
    8001e07a:	7942                	ld	s2,48(sp)
    8001e07c:	79a2                	ld	s3,40(sp)
    8001e07e:	6161                	addi	sp,sp,80
    8001e080:	8082                	ret
quickjs-nuttx/quickjs.c:12038
    if (bf_set_si(a, v)) {
    8001e082:	85ce                	mv	a1,s3
    8001e084:	00848513          	addi	a0,s1,8
    8001e088:	3b5390ef          	jal	ra,80057c3c <bf_set_si>
    8001e08c:	d165                	beqz	a0,8001e06c <JS_NewBigInt64_1+0x26>
quickjs-nuttx/quickjs.c:12039
        JS_FreeValue(ctx, val);
    8001e08e:	6582                	ld	a1,0(sp)
    8001e090:	6622                	ld	a2,8(sp)
    8001e092:	854a                	mv	a0,s2
    8001e094:	f0aed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12043
}
    8001e098:	6406                	ld	s0,64(sp)
    8001e09a:	60a6                	ld	ra,72(sp)
    8001e09c:	74e2                	ld	s1,56(sp)
    8001e09e:	79a2                	ld	s3,40(sp)
quickjs-nuttx/quickjs.c:12040
        return JS_ThrowOutOfMemory(ctx);
    8001e0a0:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:12043
}
    8001e0a2:	7942                	ld	s2,48(sp)
    8001e0a4:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:12040
        return JS_ThrowOutOfMemory(ctx);
    8001e0a6:	82efc06f          	j	8001a0d4 <JS_ThrowOutOfMemory>

000000008001e0aa <JS_NewBigInt64>:
JS_NewBigInt64():
quickjs-nuttx/quickjs.c:12046
{
    8001e0aa:	7139                	addi	sp,sp,-64
    8001e0ac:	f822                	sd	s0,48(sp)
    8001e0ae:	e42e                	sd	a1,8(sp)
    8001e0b0:	fc06                	sd	ra,56(sp)
    8001e0b2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12047
    if (is_math_mode(ctx) &&
    8001e0b4:	ae1e90ef          	jal	ra,80007b94 <is_math_mode>
    8001e0b8:	65a2                	ld	a1,8(sp)
    8001e0ba:	c121                	beqz	a0,8001e0fa <JS_NewBigInt64+0x50>
quickjs-nuttx/quickjs.c:12048
        v >= -MAX_SAFE_INTEGER && v <= MAX_SAFE_INTEGER) {
    8001e0bc:	57fd                	li	a5,-1
    8001e0be:	83ad                	srli	a5,a5,0xb
    8001e0c0:	bff00713          	li	a4,-1025
    8001e0c4:	97ae                	add	a5,a5,a1
    8001e0c6:	8329                	srli	a4,a4,0xa
    8001e0c8:	02f76963          	bltu	a4,a5,8001e0fa <JS_NewBigInt64+0x50>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8001e0cc:	0005879b          	sext.w	a5,a1
    8001e0d0:	00f59d63          	bne	a1,a5,8001e0ea <JS_NewBigInt64+0x40>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8001e0d4:	d202                	sw	zero,36(sp)
    8001e0d6:	d03e                	sw	a5,32(sp)
    8001e0d8:	7702                	ld	a4,32(sp)
    8001e0da:	4581                	li	a1,0
    8001e0dc:	e83a                	sd	a4,16(sp)
JS_NewBigInt64():
quickjs-nuttx/quickjs.c:12053
}
    8001e0de:	70e2                	ld	ra,56(sp)
    8001e0e0:	7442                	ld	s0,48(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8001e0e2:	c83e                	sw	a5,16(sp)
JS_NewBigInt64():
quickjs-nuttx/quickjs.c:12053
    8001e0e4:	6542                	ld	a0,16(sp)
    8001e0e6:	6121                	addi	sp,sp,64
    8001e0e8:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8001e0ea:	d225f7d3          	fcvt.d.l	fa5,a1
    8001e0ee:	459d                	li	a1,7
    8001e0f0:	e20787d3          	fmv.x.d	a5,fa5
JS_NewBigInt64():
quickjs-nuttx/quickjs.h:230
    return v;
    8001e0f4:	a83e                	fsd	fa5,16(sp)
    8001e0f6:	2781                	sext.w	a5,a5
    8001e0f8:	b7dd                	j	8001e0de <JS_NewBigInt64+0x34>
quickjs-nuttx/quickjs.c:12051
        return JS_NewBigInt64_1(ctx, v);
    8001e0fa:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:12053
}
    8001e0fc:	7442                	ld	s0,48(sp)
    8001e0fe:	70e2                	ld	ra,56(sp)
    8001e100:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:12051
        return JS_NewBigInt64_1(ctx, v);
    8001e102:	f45ff06f          	j	8001e046 <JS_NewBigInt64_1>

000000008001e106 <js_TA_get_int64>:
js_TA_get_int64():
quickjs-nuttx/quickjs.c:54196
    return JS_NewBigInt64(ctx, *(int64_t *)a);
    8001e106:	618c                	ld	a1,0(a1)
quickjs-nuttx/quickjs.c:54195
static JSValue js_TA_get_int64(JSContext *ctx, const void *a) {
    8001e108:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:54197
}
    8001e10a:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:54196
    return JS_NewBigInt64(ctx, *(int64_t *)a);
    8001e10c:	f9fff06f          	j	8001e0aa <JS_NewBigInt64>

000000008001e110 <JS_NewBigUint64>:
JS_NewBigUint64():
quickjs-nuttx/quickjs.c:12056
{
    8001e110:	711d                	addi	sp,sp,-96
    8001e112:	e4a6                	sd	s1,72(sp)
    8001e114:	e0ca                	sd	s2,64(sp)
    8001e116:	ec86                	sd	ra,88(sp)
    8001e118:	e8a2                	sd	s0,80(sp)
    8001e11a:	fc4e                	sd	s3,56(sp)
    8001e11c:	892a                	mv	s2,a0
    8001e11e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:12058
    if (is_math_mode(ctx) && v <= MAX_SAFE_INTEGER) {
    8001e120:	a75e90ef          	jal	ra,80007b94 <is_math_mode>
    8001e124:	cd15                	beqz	a0,8001e160 <JS_NewBigUint64+0x50>
quickjs-nuttx/quickjs.c:12058 (discriminator 1)
    8001e126:	57fd                	li	a5,-1
    8001e128:	83ad                	srli	a5,a5,0xb
    8001e12a:	0297eb63          	bltu	a5,s1,8001e160 <JS_NewBigUint64+0x50>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8001e12e:	0004841b          	sext.w	s0,s1
    8001e132:	00849f63          	bne	s1,s0,8001e150 <JS_NewBigUint64+0x40>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8001e136:	d202                	sw	zero,36(sp)
    8001e138:	d022                	sw	s0,32(sp)
    8001e13a:	7782                	ld	a5,32(sp)
    8001e13c:	4981                	li	s3,0
    8001e13e:	e83e                	sd	a5,16(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8001e140:	c822                	sw	s0,16(sp)
    8001e142:	27c2                	fld	fa5,16(sp)
    8001e144:	a03e                	fsd	fa5,0(sp)
JS_NewBigUint64():
quickjs-nuttx/quickjs.c:12071
    return val;
    8001e146:	c022                	sw	s0,0(sp)
    8001e148:	6782                	ld	a5,0(sp)
    8001e14a:	ec4e                	sd	s3,24(sp)
    8001e14c:	e83e                	sd	a5,16(sp)
    8001e14e:	a805                	j	8001e17e <JS_NewBigUint64+0x6e>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8001e150:	d224f7d3          	fcvt.d.l	fa5,s1
    8001e154:	499d                	li	s3,7
    8001e156:	e2078453          	fmv.x.d	s0,fa5
JS_NewBigUint64():
quickjs-nuttx/quickjs.h:230
    return v;
    8001e15a:	a83e                	fsd	fa5,16(sp)
    8001e15c:	2401                	sext.w	s0,s0
    8001e15e:	b7cd                	j	8001e140 <JS_NewBigUint64+0x30>
quickjs-nuttx/quickjs.c:12062
        val = JS_NewBigInt(ctx);
    8001e160:	854a                	mv	a0,s2
    8001e162:	a49fc0ef          	jal	ra,8001abaa <JS_NewBigInt>
    8001e166:	e02a                	sd	a0,0(sp)
    8001e168:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:12063
        if (JS_IsException(val))
    8001e16a:	0005871b          	sext.w	a4,a1
    8001e16e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12062
        val = JS_NewBigInt(ctx);
    8001e170:	89ae                	mv	s3,a1
    8001e172:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:12063
        if (JS_IsException(val))
    8001e176:	00f71d63          	bne	a4,a5,8001e190 <JS_NewBigUint64+0x80>
quickjs-nuttx/quickjs.c:12064
            return val;
    8001e17a:	e82a                	sd	a0,16(sp)
    8001e17c:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:12072
}
    8001e17e:	60e6                	ld	ra,88(sp)
    8001e180:	6446                	ld	s0,80(sp)
    8001e182:	6542                	ld	a0,16(sp)
    8001e184:	65e2                	ld	a1,24(sp)
    8001e186:	64a6                	ld	s1,72(sp)
    8001e188:	6906                	ld	s2,64(sp)
    8001e18a:	79e2                	ld	s3,56(sp)
    8001e18c:	6125                	addi	sp,sp,96
    8001e18e:	8082                	ret
quickjs-nuttx/quickjs.c:12066
        if (bf_set_ui(a, v)) {
    8001e190:	85a6                	mv	a1,s1
    8001e192:	0521                	addi	a0,a0,8
    8001e194:	24b390ef          	jal	ra,80057bde <bf_set_ui>
    8001e198:	d55d                	beqz	a0,8001e146 <JS_NewBigUint64+0x36>
quickjs-nuttx/quickjs.c:12067
            JS_FreeValue(ctx, val);
    8001e19a:	6582                	ld	a1,0(sp)
    8001e19c:	6622                	ld	a2,8(sp)
    8001e19e:	854a                	mv	a0,s2
    8001e1a0:	dfeed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12072
}
    8001e1a4:	6446                	ld	s0,80(sp)
    8001e1a6:	60e6                	ld	ra,88(sp)
    8001e1a8:	64a6                	ld	s1,72(sp)
    8001e1aa:	79e2                	ld	s3,56(sp)
quickjs-nuttx/quickjs.c:12068
            return JS_ThrowOutOfMemory(ctx);
    8001e1ac:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:12072
}
    8001e1ae:	6906                	ld	s2,64(sp)
    8001e1b0:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:12068
            return JS_ThrowOutOfMemory(ctx);
    8001e1b2:	f23fb06f          	j	8001a0d4 <JS_ThrowOutOfMemory>

000000008001e1b6 <js_TA_get_uint64>:
js_TA_get_uint64():
quickjs-nuttx/quickjs.c:54200
    return JS_NewBigUint64(ctx, *(uint64_t *)a);
    8001e1b6:	618c                	ld	a1,0(a1)
quickjs-nuttx/quickjs.c:54199
static JSValue js_TA_get_uint64(JSContext *ctx, const void *a) {
    8001e1b8:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:54201
}
    8001e1ba:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:54200
    return JS_NewBigUint64(ctx, *(uint64_t *)a);
    8001e1bc:	f55ff06f          	j	8001e110 <JS_NewBigUint64>

000000008001e1c0 <js_string_to_bigint>:
js_string_to_bigint():
quickjs-nuttx/quickjs.c:10115
{
    8001e1c0:	715d                	addi	sp,sp,-80
    8001e1c2:	e0a2                	sd	s0,64(sp)
    8001e1c4:	fc26                	sd	s1,56(sp)
    8001e1c6:	f84a                	sd	s2,48(sp)
    8001e1c8:	f44e                	sd	s3,40(sp)
    8001e1ca:	e486                	sd	ra,72(sp)
    8001e1cc:	842a                	mv	s0,a0
    8001e1ce:	892e                	mv	s2,a1
    8001e1d0:	89b2                	mv	s3,a2
    8001e1d2:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:10119
    val = JS_NewBigInt(ctx);
    8001e1d4:	9d7fc0ef          	jal	ra,8001abaa <JS_NewBigInt>
    8001e1d8:	e02a                	sd	a0,0(sp)
    8001e1da:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:10120
    if (JS_IsException(val))
    8001e1dc:	0005871b          	sext.w	a4,a1
    8001e1e0:	4799                	li	a5,6
    8001e1e2:	00f71d63          	bne	a4,a5,8001e1fc <js_string_to_bigint+0x3c>
quickjs-nuttx/quickjs.c:10134
}
    8001e1e6:	60a6                	ld	ra,72(sp)
    8001e1e8:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:10133
    return val;
    8001e1ea:	e82a                	sd	a0,16(sp)
    8001e1ec:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:10134
}
    8001e1ee:	6542                	ld	a0,16(sp)
    8001e1f0:	65e2                	ld	a1,24(sp)
    8001e1f2:	74e2                	ld	s1,56(sp)
    8001e1f4:	7942                	ld	s2,48(sp)
    8001e1f6:	79a2                	ld	s3,40(sp)
    8001e1f8:	6161                	addi	sp,sp,80
    8001e1fa:	8082                	ret
quickjs-nuttx/quickjs.c:10123
    ret = bf_atof(a, buf, NULL, radix, BF_PREC_INF, BF_RNDZ);
    8001e1fc:	577d                	li	a4,-1
    8001e1fe:	4785                	li	a5,1
    8001e200:	8309                	srli	a4,a4,0x2
    8001e202:	86ce                	mv	a3,s3
    8001e204:	4601                	li	a2,0
    8001e206:	85ca                	mv	a1,s2
    8001e208:	0521                	addi	a0,a0,8
    8001e20a:	4063f0ef          	jal	ra,8005d610 <bf_atof>
quickjs-nuttx/quickjs.c:10124
    if (ret & BF_ST_MEM_ERROR) {
    8001e20e:	02057513          	andi	a0,a0,32
    8001e212:	cd19                	beqz	a0,8001e230 <js_string_to_bigint+0x70>
quickjs-nuttx/quickjs.c:10125
        JS_FreeValue(ctx, val);
    8001e214:	6582                	ld	a1,0(sp)
    8001e216:	6622                	ld	a2,8(sp)
    8001e218:	8522                	mv	a0,s0
    8001e21a:	d84ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10126
        return JS_ThrowOutOfMemory(ctx);
    8001e21e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:10134
}
    8001e220:	6406                	ld	s0,64(sp)
    8001e222:	60a6                	ld	ra,72(sp)
    8001e224:	74e2                	ld	s1,56(sp)
    8001e226:	7942                	ld	s2,48(sp)
    8001e228:	79a2                	ld	s3,40(sp)
    8001e22a:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:10126
        return JS_ThrowOutOfMemory(ctx);
    8001e22c:	ea9fb06f          	j	8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:10129
    val = JS_CompactBigInt1(ctx, val, (flags & ATOD_MODE_BIGINT) != 0);
    8001e230:	6582                	ld	a1,0(sp)
    8001e232:	6622                	ld	a2,8(sp)
    8001e234:	4094d69b          	sraiw	a3,s1,0x9
    8001e238:	8a85                	andi	a3,a3,1
    8001e23a:	8522                	mv	a0,s0
    8001e23c:	b5fee0ef          	jal	ra,8000cd9a <JS_CompactBigInt1>
    8001e240:	b75d                	j	8001e1e6 <js_string_to_bigint+0x26>

000000008001e242 <js_mul_pow10_to_float64>:
js_mul_pow10_to_float64():
quickjs-nuttx/quickjs.c:14237
{
    8001e242:	7159                	addi	sp,sp,-112
    8001e244:	f486                	sd	ra,104(sp)
    8001e246:	f0a2                	sd	s0,96(sp)
    8001e248:	eca6                	sd	s1,88(sp)
    8001e24a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:14243
    bf_init(ctx->bf_ctx, r);
    8001e24c:	19053503          	ld	a0,400(a0)
quickjs-nuttx/quickjs.c:14237
{
    8001e250:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:14243
    bf_init(ctx->bf_ctx, r);
    8001e252:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs.c:14237
{
    8001e254:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:14243
    bf_init(ctx->bf_ctx, r);
    8001e256:	119390ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:14244
    ret = bf_mul_pow_radix(r, a, 10, exponent,
    8001e25a:	66a2                	ld	a3,8(sp)
    8001e25c:	64800793          	li	a5,1608
    8001e260:	03500713          	li	a4,53
    8001e264:	85a2                	mv	a1,s0
    8001e266:	4629                	li	a2,10
    8001e268:	1028                	addi	a0,sp,40
    8001e26a:	3d13e0ef          	jal	ra,8005ce3a <bf_mul_pow_radix>
    8001e26e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:14247
    bf_get_float64(r, &d, BF_RNDN);
    8001e270:	4601                	li	a2,0
    8001e272:	080c                	addi	a1,sp,16
    8001e274:	1028                	addi	a0,sp,40
    8001e276:	3df3a0ef          	jal	ra,80058e54 <bf_get_float64>
quickjs-nuttx/quickjs.c:14248
    bf_delete(r);
    8001e27a:	1028                	addi	a0,sp,40
quickjs-nuttx/quickjs.c:14249
    if (ret & BF_ST_MEM_ERROR)
    8001e27c:	02047413          	andi	s0,s0,32
quickjs-nuttx/quickjs.c:14248
    bf_delete(r);
    8001e280:	9d6ec0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:14249
    if (ret & BF_ST_MEM_ERROR)
    8001e284:	cc09                	beqz	s0,8001e29e <js_mul_pow10_to_float64+0x5c>
quickjs-nuttx/quickjs.c:14250
        return JS_ThrowOutOfMemory(ctx);
    8001e286:	8526                	mv	a0,s1
    8001e288:	e4dfb0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
    8001e28c:	ec2a                	sd	a0,24(sp)
    8001e28e:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:14253
}
    8001e290:	70a6                	ld	ra,104(sp)
    8001e292:	7406                	ld	s0,96(sp)
    8001e294:	6562                	ld	a0,24(sp)
    8001e296:	7582                	ld	a1,32(sp)
    8001e298:	64e6                	ld	s1,88(sp)
    8001e29a:	6165                	addi	sp,sp,112
    8001e29c:	8082                	ret
quickjs-nuttx/quickjs.h:230
    8001e29e:	27c2                	fld	fa5,16(sp)
    8001e2a0:	479d                	li	a5,7
    8001e2a2:	f03e                	sd	a5,32(sp)
    8001e2a4:	ac3e                	fsd	fa5,24(sp)
quickjs-nuttx/quickjs.c:14252
        return __JS_NewFloat64(ctx, d);
    8001e2a6:	b7ed                	j	8001e290 <js_mul_pow10_to_float64+0x4e>

000000008001e2a8 <js_string_to_bigfloat>:
js_string_to_bigfloat():
quickjs-nuttx/quickjs.c:10139
{
    8001e2a8:	711d                	addi	sp,sp,-96
    8001e2aa:	e8a2                	sd	s0,80(sp)
    8001e2ac:	e4a6                	sd	s1,72(sp)
    8001e2ae:	e0ca                	sd	s2,64(sp)
    8001e2b0:	fc4e                	sd	s3,56(sp)
    8001e2b2:	f852                	sd	s4,48(sp)
    8001e2b4:	f456                	sd	s5,40(sp)
    8001e2b6:	f05a                	sd	s6,32(sp)
    8001e2b8:	ec86                	sd	ra,88(sp)
    8001e2ba:	8b3a                	mv	s6,a4
    8001e2bc:	892a                	mv	s2,a0
    8001e2be:	8a2e                	mv	s4,a1
    8001e2c0:	8ab2                	mv	s5,a2
    8001e2c2:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:10144
    val = JS_NewBigFloat(ctx);
    8001e2c4:	ebdfb0ef          	jal	ra,8001a180 <JS_NewBigFloat>
    8001e2c8:	e02a                	sd	a0,0(sp)
    8001e2ca:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:10145
    if (JS_IsException(val))
    8001e2cc:	0005871b          	sext.w	a4,a1
    8001e2d0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:10144
    val = JS_NewBigFloat(ctx);
    8001e2d2:	84aa                	mv	s1,a0
    8001e2d4:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10145
    if (JS_IsException(val))
    8001e2d6:	02f71063          	bne	a4,a5,8001e2f6 <js_string_to_bigfloat+0x4e>
quickjs-nuttx/quickjs.c:10160
    return val;
    8001e2da:	ec22                	sd	s0,24(sp)
quickjs-nuttx/quickjs.c:10161
}
    8001e2dc:	60e6                	ld	ra,88(sp)
    8001e2de:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:10160
    return val;
    8001e2e0:	e826                	sd	s1,16(sp)
quickjs-nuttx/quickjs.c:10161
}
    8001e2e2:	6542                	ld	a0,16(sp)
    8001e2e4:	65e2                	ld	a1,24(sp)
    8001e2e6:	64a6                	ld	s1,72(sp)
    8001e2e8:	6906                	ld	s2,64(sp)
    8001e2ea:	79e2                	ld	s3,56(sp)
    8001e2ec:	7a42                	ld	s4,48(sp)
    8001e2ee:	7aa2                	ld	s5,40(sp)
    8001e2f0:	7b02                	ld	s6,32(sp)
    8001e2f2:	6125                	addi	sp,sp,96
    8001e2f4:	8082                	ret
quickjs-nuttx/quickjs.c:10148
    if (flags & ATOD_ACCEPT_SUFFIX) {
    8001e2f6:	0409f993          	andi	s3,s3,64
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    8001e2fa:	0521                	addi	a0,a0,8
js_string_to_bigfloat():
quickjs-nuttx/quickjs.c:10148
    if (flags & ATOD_ACCEPT_SUFFIX) {
    8001e2fc:	04098163          	beqz	s3,8001e33e <js_string_to_bigfloat+0x96>
quickjs-nuttx/quickjs.c:10150
        ret = bf_atof2(a, pexponent, buf, NULL, radix, BF_PREC_INF,
    8001e300:	00080837          	lui	a6,0x80
    8001e304:	57fd                	li	a5,-1
    8001e306:	0805                	addi	a6,a6,1
    8001e308:	8389                	srli	a5,a5,0x2
    8001e30a:	8756                	mv	a4,s5
    8001e30c:	4681                	li	a3,0
    8001e30e:	8652                	mv	a2,s4
    8001e310:	85da                	mv	a1,s6
    8001e312:	2f83f0ef          	jal	ra,8005d60a <bf_atof2>
quickjs-nuttx/quickjs.c:10156
    if (ret & BF_ST_MEM_ERROR) {
    8001e316:	02057793          	andi	a5,a0,32
    8001e31a:	d3e1                	beqz	a5,8001e2da <js_string_to_bigfloat+0x32>
quickjs-nuttx/quickjs.c:10157
        JS_FreeValue(ctx, val);
    8001e31c:	6582                	ld	a1,0(sp)
    8001e31e:	6622                	ld	a2,8(sp)
    8001e320:	854a                	mv	a0,s2
    8001e322:	c7ced0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10161
}
    8001e326:	6446                	ld	s0,80(sp)
    8001e328:	60e6                	ld	ra,88(sp)
    8001e32a:	64a6                	ld	s1,72(sp)
    8001e32c:	79e2                	ld	s3,56(sp)
    8001e32e:	7a42                	ld	s4,48(sp)
    8001e330:	7aa2                	ld	s5,40(sp)
    8001e332:	7b02                	ld	s6,32(sp)
quickjs-nuttx/quickjs.c:10158
        return JS_ThrowOutOfMemory(ctx);
    8001e334:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:10161
}
    8001e336:	6906                	ld	s2,64(sp)
    8001e338:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:10158
        return JS_ThrowOutOfMemory(ctx);
    8001e33a:	d9bfb06f          	j	8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:10153
        ret = bf_atof(a, buf, NULL, radix, ctx->fp_env.prec,
    8001e33e:	1a092783          	lw	a5,416(s2)
    8001e342:	19893703          	ld	a4,408(s2)
    8001e346:	86d6                	mv	a3,s5
    8001e348:	4601                	li	a2,0
    8001e34a:	85d2                	mv	a1,s4
    8001e34c:	2c43f0ef          	jal	ra,8005d610 <bf_atof>
    8001e350:	b7d9                	j	8001e316 <js_string_to_bigfloat+0x6e>

000000008001e352 <js_string_to_bigdecimal>:
js_string_to_bigdecimal():
quickjs-nuttx/quickjs.c:10165
{
    8001e352:	715d                	addi	sp,sp,-80
    8001e354:	e0a2                	sd	s0,64(sp)
    8001e356:	fc26                	sd	s1,56(sp)
    8001e358:	f84a                	sd	s2,48(sp)
    8001e35a:	f44e                	sd	s3,40(sp)
    8001e35c:	e486                	sd	ra,72(sp)
    8001e35e:	892a                	mv	s2,a0
    8001e360:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:10170
    val = JS_NewBigDecimal(ctx);
    8001e362:	915fc0ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
    8001e366:	e02a                	sd	a0,0(sp)
    8001e368:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:10171
    if (JS_IsException(val))
    8001e36a:	0005871b          	sext.w	a4,a1
    8001e36e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:10170
    val = JS_NewBigDecimal(ctx);
    8001e370:	84aa                	mv	s1,a0
    8001e372:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10171
    if (JS_IsException(val))
    8001e374:	00f71d63          	bne	a4,a5,8001e38e <js_string_to_bigdecimal+0x3c>
quickjs-nuttx/quickjs.c:10180
    return val;
    8001e378:	ec22                	sd	s0,24(sp)
quickjs-nuttx/quickjs.c:10181
}
    8001e37a:	60a6                	ld	ra,72(sp)
    8001e37c:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:10180
    return val;
    8001e37e:	e826                	sd	s1,16(sp)
quickjs-nuttx/quickjs.c:10181
}
    8001e380:	6542                	ld	a0,16(sp)
    8001e382:	65e2                	ld	a1,24(sp)
    8001e384:	74e2                	ld	s1,56(sp)
    8001e386:	7942                	ld	s2,48(sp)
    8001e388:	79a2                	ld	s3,40(sp)
    8001e38a:	6161                	addi	sp,sp,80
    8001e38c:	8082                	ret
quickjs-nuttx/quickjs.c:10174
    ret = bfdec_atof(a, buf, NULL, BF_PREC_INF,
    8001e38e:	00040737          	lui	a4,0x40
    8001e392:	56fd                	li	a3,-1
    8001e394:	0705                	addi	a4,a4,1
    8001e396:	8289                	srli	a3,a3,0x2
    8001e398:	4601                	li	a2,0
    8001e39a:	85ce                	mv	a1,s3
    8001e39c:	00848513          	addi	a0,s1,8
    8001e3a0:	28c3f0ef          	jal	ra,8005d62c <bfdec_atof>
quickjs-nuttx/quickjs.c:10176
    if (ret & BF_ST_MEM_ERROR) {
    8001e3a4:	02057513          	andi	a0,a0,32
    8001e3a8:	d961                	beqz	a0,8001e378 <js_string_to_bigdecimal+0x26>
quickjs-nuttx/quickjs.c:10177
        JS_FreeValue(ctx, val);
    8001e3aa:	6582                	ld	a1,0(sp)
    8001e3ac:	6622                	ld	a2,8(sp)
    8001e3ae:	854a                	mv	a0,s2
    8001e3b0:	beeed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10181
}
    8001e3b4:	6406                	ld	s0,64(sp)
    8001e3b6:	60a6                	ld	ra,72(sp)
    8001e3b8:	74e2                	ld	s1,56(sp)
    8001e3ba:	79a2                	ld	s3,40(sp)
quickjs-nuttx/quickjs.c:10178
        return JS_ThrowOutOfMemory(ctx);
    8001e3bc:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:10181
}
    8001e3be:	7942                	ld	s2,48(sp)
    8001e3c0:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:10178
        return JS_ThrowOutOfMemory(ctx);
    8001e3c2:	d13fb06f          	j	8001a0d4 <JS_ThrowOutOfMemory>

000000008001e3c6 <throw_bf_exception>:
throw_bf_exception():
quickjs-nuttx/quickjs.c:12308
    if (status & BF_ST_MEM_ERROR)
    8001e3c6:	0205f713          	andi	a4,a1,32
quickjs-nuttx/quickjs.c:12306
{
    8001e3ca:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:12308
    if (status & BF_ST_MEM_ERROR)
    8001e3cc:	c701                	beqz	a4,8001e3d4 <throw_bf_exception+0xe>
quickjs-nuttx/quickjs.c:12318
}
    8001e3ce:	6105                	addi	sp,sp,32
JS_NewSymbol():
quickjs-nuttx/quickjs.c:3018
        return JS_ThrowOutOfMemory(ctx);
    8001e3d0:	d05fb06f          	j	8001a0d4 <JS_ThrowOutOfMemory>
throw_bf_exception():
quickjs-nuttx/quickjs.c:12310
    if (status & BF_ST_DIVIDE_ZERO) {
    8001e3d4:	0025f713          	andi	a4,a1,2
    8001e3d8:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:12311
        str = "division by zero";
    8001e3da:	0004c617          	auipc	a2,0x4c
    8001e3de:	3e660613          	addi	a2,a2,998 # 8006a7c0 <qjsc_repl+0x5210>
quickjs-nuttx/quickjs.c:12310
    if (status & BF_ST_DIVIDE_ZERO) {
    8001e3e2:	eb19                	bnez	a4,8001e3f8 <throw_bf_exception+0x32>
quickjs-nuttx/quickjs.c:12312
    } else if (status & BF_ST_INVALID_OP) {
    8001e3e4:	8985                	andi	a1,a1,1
quickjs-nuttx/quickjs.c:12313
        str = "invalid operation";
    8001e3e6:	0004c617          	auipc	a2,0x4c
    8001e3ea:	3f260613          	addi	a2,a2,1010 # 8006a7d8 <qjsc_repl+0x5228>
quickjs-nuttx/quickjs.c:12312
    } else if (status & BF_ST_INVALID_OP) {
    8001e3ee:	e589                	bnez	a1,8001e3f8 <throw_bf_exception+0x32>
quickjs-nuttx/quickjs.c:12315
        str = "integer overflow";
    8001e3f0:	0004c617          	auipc	a2,0x4c
    8001e3f4:	40060613          	addi	a2,a2,1024 # 8006a7f0 <qjsc_repl+0x5240>
quickjs-nuttx/quickjs.c:12317
    return JS_ThrowRangeError(ctx, "%s", str);
    8001e3f8:	0004c597          	auipc	a1,0x4c
    8001e3fc:	41058593          	addi	a1,a1,1040 # 8006a808 <qjsc_repl+0x5258>
    8001e400:	853e                	mv	a0,a5
quickjs-nuttx/quickjs.c:12318
}
    8001e402:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:12317
    return JS_ThrowRangeError(ctx, "%s", str);
    8001e404:	ccafb06f          	j	800198ce <JS_ThrowRangeError>

000000008001e408 <js_binary_arith_bigfloat>:
js_binary_arith_bigfloat():
quickjs-nuttx/quickjs.c:13216
{
    8001e408:	7155                	addi	sp,sp,-208
    8001e40a:	fd26                	sd	s1,184(sp)
    8001e40c:	f54e                	sd	s3,168(sp)
    8001e40e:	e55e                	sd	s7,136(sp)
    8001e410:	ec3a                	sd	a4,24(sp)
    8001e412:	e03e                	sd	a5,0(sp)
    8001e414:	e586                	sd	ra,200(sp)
    8001e416:	e1a2                	sd	s0,192(sp)
    8001e418:	f94a                	sd	s2,176(sp)
    8001e41a:	f152                	sd	s4,160(sp)
    8001e41c:	ed56                	sd	s5,152(sp)
    8001e41e:	e95a                	sd	s6,144(sp)
    8001e420:	84aa                	mv	s1,a0
    8001e422:	8bae                	mv	s7,a1
    8001e424:	89b2                	mv	s3,a2
    8001e426:	e836                	sd	a3,16(sp)
    8001e428:	e442                	sd	a6,8(sp)
quickjs-nuttx/quickjs.c:13221
    res = JS_NewBigFloat(ctx);
    8001e42a:	d57fb0ef          	jal	ra,8001a180 <JS_NewBigFloat>
    8001e42e:	f02a                	sd	a0,32(sp)
    8001e430:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13222
    if (JS_IsException(res))
    8001e432:	0005879b          	sext.w	a5,a1
    8001e436:	4719                	li	a4,6
    8001e438:	02e78363          	beq	a5,a4,8001e45e <js_binary_arith_bigfloat+0x56>
quickjs-nuttx/quickjs.c:13225
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8001e43c:	6642                	ld	a2,16(sp)
    8001e43e:	66e2                	ld	a3,24(sp)
    8001e440:	03010a13          	addi	s4,sp,48
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    8001e444:	00850413          	addi	s0,a0,8
js_binary_arith_bigfloat():
quickjs-nuttx/quickjs.c:13225
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8001e448:	85d2                	mv	a1,s4
    8001e44a:	8526                	mv	a0,s1
    8001e44c:	81cec0ef          	jal	ra,8000a468 <JS_ToBigFloat>
    8001e450:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:13226
    if (!a) {
    8001e452:	e10d                	bnez	a0,8001e474 <js_binary_arith_bigfloat+0x6c>
quickjs-nuttx/quickjs.c:13227
        JS_FreeValue(ctx, res);
    8001e454:	7582                	ld	a1,32(sp)
    8001e456:	7622                	ld	a2,40(sp)
    8001e458:	8526                	mv	a0,s1
    8001e45a:	b44ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13281
    JS_FreeValue(ctx, op1);
    8001e45e:	65c2                	ld	a1,16(sp)
    8001e460:	6662                	ld	a2,24(sp)
    8001e462:	8526                	mv	a0,s1
    8001e464:	b3aed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13282
    JS_FreeValue(ctx, op2);
    8001e468:	6582                	ld	a1,0(sp)
    8001e46a:	6622                	ld	a2,8(sp)
    8001e46c:	8526                	mv	a0,s1
    8001e46e:	b30ed0ef          	jal	ra,8000b79e <JS_FreeValue>
    8001e472:	a0c9                	j	8001e534 <js_binary_arith_bigfloat+0x12c>
quickjs-nuttx/quickjs.c:13230
    b = JS_ToBigFloat(ctx, &b_s, op2);
    8001e474:	6602                	ld	a2,0(sp)
    8001e476:	66a2                	ld	a3,8(sp)
    8001e478:	05810a93          	addi	s5,sp,88
    8001e47c:	85d6                	mv	a1,s5
    8001e47e:	8526                	mv	a0,s1
    8001e480:	fe9eb0ef          	jal	ra,8000a468 <JS_ToBigFloat>
    8001e484:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:13231
    if (!b) {
    8001e486:	e519                	bnez	a0,8001e494 <js_binary_arith_bigfloat+0x8c>
quickjs-nuttx/quickjs.c:13232
        if (a == &a_s)
    8001e488:	fd4916e3          	bne	s2,s4,8001e454 <js_binary_arith_bigfloat+0x4c>
quickjs-nuttx/quickjs.c:13233
            bf_delete(a);
    8001e48c:	854a                	mv	a0,s2
    8001e48e:	fc9eb0ef          	jal	ra,8000a456 <bf_delete>
    8001e492:	b7c9                	j	8001e454 <js_binary_arith_bigfloat+0x4c>
quickjs-nuttx/quickjs.c:13237
    bf_init(ctx->bf_ctx, r);
    8001e494:	1904b503          	ld	a0,400(s1)
    8001e498:	85a2                	mv	a1,s0
    8001e49a:	6d4390ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:13238
    switch(op) {
    8001e49e:	0a000793          	li	a5,160
    8001e4a2:	0377eb63          	bltu	a5,s7,8001e4d8 <js_binary_arith_bigfloat+0xd0>
    8001e4a6:	09a00793          	li	a5,154
    8001e4aa:	0377fb63          	bgeu	a5,s7,8001e4e0 <js_binary_arith_bigfloat+0xd8>
    8001e4ae:	f64b859b          	addiw	a1,s7,-156
    8001e4b2:	0005871b          	sext.w	a4,a1
    8001e4b6:	4791                	li	a5,4
    8001e4b8:	1984b683          	ld	a3,408(s1)
    8001e4bc:	08e7e663          	bltu	a5,a4,8001e548 <js_binary_arith_bigfloat+0x140>
    8001e4c0:	02059793          	slli	a5,a1,0x20
    8001e4c4:	01e7d593          	srli	a1,a5,0x1e
    8001e4c8:	0004c717          	auipc	a4,0x4c
    8001e4cc:	34470713          	addi	a4,a4,836 # 8006a80c <qjsc_repl+0x525c>
    8001e4d0:	95ba                	add	a1,a1,a4
    8001e4d2:	419c                	lw	a5,0(a1)
    8001e4d4:	97ba                	add	a5,a5,a4
    8001e4d6:	8782                	jr	a5
    8001e4d8:	0b400793          	li	a5,180
    8001e4dc:	08fb8663          	beq	s7,a5,8001e568 <js_binary_arith_bigfloat+0x160>
quickjs-nuttx/quickjs.c:13265
        abort();
    8001e4e0:	6a2440ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:13240
        ret = bf_add(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags);
    8001e4e4:	1a04a703          	lw	a4,416(s1)
    8001e4e8:	865a                	mv	a2,s6
    8001e4ea:	85ca                	mv	a1,s2
    8001e4ec:	8522                	mv	a0,s0
    8001e4ee:	64e3a0ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/quickjs.c:13261
        ret = bf_pow(r, a, b, ctx->fp_env.prec,
    8001e4f2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13267
    if (a == &a_s)
    8001e4f4:	01491563          	bne	s2,s4,8001e4fe <js_binary_arith_bigfloat+0xf6>
quickjs-nuttx/quickjs.c:13268
        bf_delete(a);
    8001e4f8:	854a                	mv	a0,s2
    8001e4fa:	f5deb0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:13269
    if (b == &b_s)
    8001e4fe:	015b1563          	bne	s6,s5,8001e508 <js_binary_arith_bigfloat+0x100>
quickjs-nuttx/quickjs.c:13270
        bf_delete(b);
    8001e502:	855a                	mv	a0,s6
    8001e504:	f53eb0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:13271
    JS_FreeValue(ctx, op1);
    8001e508:	65c2                	ld	a1,16(sp)
    8001e50a:	6662                	ld	a2,24(sp)
    8001e50c:	8526                	mv	a0,s1
    8001e50e:	a90ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13272
    JS_FreeValue(ctx, op2);
    8001e512:	6582                	ld	a1,0(sp)
    8001e514:	6622                	ld	a2,8(sp)
    8001e516:	8526                	mv	a0,s1
    8001e518:	a86ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13273
    if (unlikely(ret & BF_ST_MEM_ERROR)) {
    8001e51c:	02047513          	andi	a0,s0,32
    8001e520:	cd35                	beqz	a0,8001e59c <js_binary_arith_bigfloat+0x194>
quickjs-nuttx/quickjs.c:13274
        JS_FreeValue(ctx, res);
    8001e522:	7582                	ld	a1,32(sp)
    8001e524:	7622                	ld	a2,40(sp)
    8001e526:	8526                	mv	a0,s1
    8001e528:	a76ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13275
        throw_bf_exception(ctx, ret);
    8001e52c:	85a2                	mv	a1,s0
    8001e52e:	8526                	mv	a0,s1
    8001e530:	e97ff0ef          	jal	ra,8001e3c6 <throw_bf_exception>
quickjs-nuttx/quickjs.c:13283
    return -1;
    8001e534:	557d                	li	a0,-1
    8001e536:	a88d                	j	8001e5a8 <js_binary_arith_bigfloat+0x1a0>
quickjs-nuttx/quickjs.c:13243
        ret = bf_sub(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags);
    8001e538:	1a04a703          	lw	a4,416(s1)
    8001e53c:	865a                	mv	a2,s6
    8001e53e:	85ca                	mv	a1,s2
    8001e540:	8522                	mv	a0,s0
    8001e542:	6623a0ef          	jal	ra,80058ba4 <bf_sub>
    8001e546:	b775                	j	8001e4f2 <js_binary_arith_bigfloat+0xea>
quickjs-nuttx/quickjs.c:13246
        ret = bf_mul(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags);
    8001e548:	1a04a703          	lw	a4,416(s1)
    8001e54c:	865a                	mv	a2,s6
    8001e54e:	85ca                	mv	a1,s2
    8001e550:	8522                	mv	a0,s0
    8001e552:	1de3e0ef          	jal	ra,8005c730 <bf_mul>
    8001e556:	bf71                	j	8001e4f2 <js_binary_arith_bigfloat+0xea>
quickjs-nuttx/quickjs.c:13249
        ret = bf_div(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags);
    8001e558:	1a04a703          	lw	a4,416(s1)
    8001e55c:	865a                	mv	a2,s6
    8001e55e:	85ca                	mv	a1,s2
    8001e560:	8522                	mv	a0,s0
    8001e562:	64e3a0ef          	jal	ra,80058bb0 <bf_div>
    8001e566:	b771                	j	8001e4f2 <js_binary_arith_bigfloat+0xea>
quickjs-nuttx/quickjs.c:13253
        ret = bf_rem(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags,
    8001e568:	1a04a703          	lw	a4,416(s1)
    8001e56c:	1984b683          	ld	a3,408(s1)
    8001e570:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:13257
        ret = bf_rem(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags,
    8001e572:	865a                	mv	a2,s6
    8001e574:	85ca                	mv	a1,s2
    8001e576:	8522                	mv	a0,s0
    8001e578:	759400ef          	jal	ra,8005f4d0 <bf_rem>
    8001e57c:	bf9d                	j	8001e4f2 <js_binary_arith_bigfloat+0xea>
    8001e57e:	1a04a703          	lw	a4,416(s1)
    8001e582:	4785                	li	a5,1
    8001e584:	b7fd                	j	8001e572 <js_binary_arith_bigfloat+0x16a>
quickjs-nuttx/quickjs.c:13261
        ret = bf_pow(r, a, b, ctx->fp_env.prec,
    8001e586:	1a04a703          	lw	a4,416(s1)
    8001e58a:	67c1                	lui	a5,0x10
    8001e58c:	865a                	mv	a2,s6
    8001e58e:	8f5d                	or	a4,a4,a5
    8001e590:	2701                	sext.w	a4,a4
    8001e592:	85ca                	mv	a1,s2
    8001e594:	8522                	mv	a0,s0
    8001e596:	13c400ef          	jal	ra,8005e6d2 <bf_pow>
    8001e59a:	bfa1                	j	8001e4f2 <js_binary_arith_bigfloat+0xea>
quickjs-nuttx/quickjs.c:13278
    *pres = res;
    8001e59c:	7782                	ld	a5,32(sp)
    8001e59e:	00f9b023          	sd	a5,0(s3)
    8001e5a2:	77a2                	ld	a5,40(sp)
    8001e5a4:	00f9b423          	sd	a5,8(s3)
quickjs-nuttx/quickjs.c:13284
}
    8001e5a8:	60ae                	ld	ra,200(sp)
    8001e5aa:	640e                	ld	s0,192(sp)
    8001e5ac:	74ea                	ld	s1,184(sp)
    8001e5ae:	794a                	ld	s2,176(sp)
    8001e5b0:	79aa                	ld	s3,168(sp)
    8001e5b2:	7a0a                	ld	s4,160(sp)
    8001e5b4:	6aea                	ld	s5,152(sp)
    8001e5b6:	6b4a                	ld	s6,144(sp)
    8001e5b8:	6baa                	ld	s7,136(sp)
    8001e5ba:	6169                	addi	sp,sp,208
    8001e5bc:	8082                	ret

000000008001e5be <js_unary_arith_bigfloat>:
js_unary_arith_bigfloat():
quickjs-nuttx/quickjs.c:12734
{
    8001e5be:	7175                	addi	sp,sp,-144
    8001e5c0:	e122                	sd	s0,128(sp)
    8001e5c2:	fca6                	sd	s1,120(sp)
    8001e5c4:	f4ce                	sd	s3,104(sp)
    8001e5c6:	e506                	sd	ra,136(sp)
    8001e5c8:	f8ca                	sd	s2,112(sp)
    8001e5ca:	f0d2                	sd	s4,96(sp)
    8001e5cc:	ecd6                	sd	s5,88(sp)
    8001e5ce:	e8da                	sd	s6,80(sp)
    8001e5d0:	e036                	sd	a3,0(sp)
    8001e5d2:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:12739
    if (op == OP_plus && !is_math_mode(ctx)) {
    8001e5d4:	08e00793          	li	a5,142
quickjs-nuttx/quickjs.c:12734
{
    8001e5d8:	842a                	mv	s0,a0
    8001e5da:	89ae                	mv	s3,a1
    8001e5dc:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:12739
    if (op == OP_plus && !is_math_mode(ctx)) {
    8001e5de:	02f61c63          	bne	a2,a5,8001e616 <js_unary_arith_bigfloat+0x58>
quickjs-nuttx/quickjs.c:12739 (discriminator 1)
    8001e5e2:	db2e90ef          	jal	ra,80007b94 <is_math_mode>
    8001e5e6:	e905                	bnez	a0,8001e616 <js_unary_arith_bigfloat+0x58>
quickjs-nuttx/quickjs.c:12740
        JS_ThrowTypeError(ctx, "bigfloat argument with unary +");
    8001e5e8:	0004c597          	auipc	a1,0x4c
    8001e5ec:	23858593          	addi	a1,a1,568 # 8006a820 <qjsc_repl+0x5270>
    8001e5f0:	8522                	mv	a0,s0
    8001e5f2:	87afa0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:12754
        JS_FreeValue(ctx, op1);
    8001e5f6:	6582                	ld	a1,0(sp)
    8001e5f8:	6622                	ld	a2,8(sp)
    8001e5fa:	8522                	mv	a0,s0
    8001e5fc:	9a2ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12780
        return -1;
    8001e600:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:12784
}
    8001e602:	60aa                	ld	ra,136(sp)
    8001e604:	640a                	ld	s0,128(sp)
    8001e606:	74e6                	ld	s1,120(sp)
    8001e608:	7946                	ld	s2,112(sp)
    8001e60a:	79a6                	ld	s3,104(sp)
    8001e60c:	7a06                	ld	s4,96(sp)
    8001e60e:	6ae6                	ld	s5,88(sp)
    8001e610:	6b46                	ld	s6,80(sp)
    8001e612:	6149                	addi	sp,sp,144
    8001e614:	8082                	ret
quickjs-nuttx/quickjs.c:12745
    res = JS_NewBigFloat(ctx);
    8001e616:	8522                	mv	a0,s0
    8001e618:	b69fb0ef          	jal	ra,8001a180 <JS_NewBigFloat>
    8001e61c:	f02e                	sd	a1,32(sp)
    8001e61e:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:12746
    if (JS_IsException(res)) {
    8001e620:	2581                	sext.w	a1,a1
    8001e622:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12745
    res = JS_NewBigFloat(ctx);
    8001e624:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:12746
    if (JS_IsException(res)) {
    8001e626:	fcf588e3          	beq	a1,a5,8001e5f6 <js_unary_arith_bigfloat+0x38>
quickjs-nuttx/quickjs.c:12751
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8001e62a:	6602                	ld	a2,0(sp)
    8001e62c:	66a2                	ld	a3,8(sp)
    8001e62e:	02810a13          	addi	s4,sp,40
    8001e632:	85d2                	mv	a1,s4
    8001e634:	8522                	mv	a0,s0
    8001e636:	e33eb0ef          	jal	ra,8000a468 <JS_ToBigFloat>
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    8001e63a:	008a8b13          	addi	s6,s5,8
js_unary_arith_bigfloat():
quickjs-nuttx/quickjs.c:12751
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8001e63e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:12752
    if (!a) {
    8001e640:	e519                	bnez	a0,8001e64e <js_unary_arith_bigfloat+0x90>
quickjs-nuttx/quickjs.c:12753
        JS_FreeValue(ctx, res);
    8001e642:	65e2                	ld	a1,24(sp)
    8001e644:	7602                	ld	a2,32(sp)
    8001e646:	8522                	mv	a0,s0
    8001e648:	956ed0ef          	jal	ra,8000b79e <JS_FreeValue>
    8001e64c:	b76d                	j	8001e5f6 <js_unary_arith_bigfloat+0x38>
quickjs-nuttx/quickjs.c:12758
    switch(op) {
    8001e64e:	08e00793          	li	a5,142
    8001e652:	06f48363          	beq	s1,a5,8001e6b8 <js_unary_arith_bigfloat+0xfa>
    8001e656:	0097e863          	bltu	a5,s1,8001e666 <js_unary_arith_bigfloat+0xa8>
    8001e65a:	08d00793          	li	a5,141
    8001e65e:	06f48263          	beq	s1,a5,8001e6c2 <js_unary_arith_bigfloat+0x104>
quickjs-nuttx/quickjs.c:12772
        abort();
    8001e662:	520440ef          	jal	ra,80062b82 <abort>
    8001e666:	f714871b          	addiw	a4,s1,-143
quickjs-nuttx/quickjs.c:12758
    switch(op) {
    8001e66a:	4785                	li	a5,1
    8001e66c:	fee7ebe3          	bltu	a5,a4,8001e662 <js_unary_arith_bigfloat+0xa4>
quickjs-nuttx/quickjs.c:12761
        v = 2 * (op - OP_dec) - 1;
    8001e670:	0017149b          	slliw	s1,a4,0x1
quickjs-nuttx/quickjs.c:12762
        ret = bf_add_si(r, a, v, ctx->fp_env.prec, ctx->fp_env.flags);
    8001e674:	19843683          	ld	a3,408(s0)
    8001e678:	1a042703          	lw	a4,416(s0)
    8001e67c:	85aa                	mv	a1,a0
    8001e67e:	fff4861b          	addiw	a2,s1,-1
    8001e682:	855a                	mv	a0,s6
    8001e684:	5383a0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/quickjs.c:12765
        ret = bf_set(r, a);
    8001e688:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:12774
    if (a == &a_s)
    8001e68a:	01491563          	bne	s2,s4,8001e694 <js_unary_arith_bigfloat+0xd6>
quickjs-nuttx/quickjs.c:12775
        bf_delete(a);
    8001e68e:	854a                	mv	a0,s2
    8001e690:	dc7eb0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:12776
    JS_FreeValue(ctx, op1);
    8001e694:	6582                	ld	a1,0(sp)
    8001e696:	6622                	ld	a2,8(sp)
    8001e698:	8522                	mv	a0,s0
    8001e69a:	904ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12777
    if (unlikely(ret & BF_ST_MEM_ERROR)) {
    8001e69e:	0204f513          	andi	a0,s1,32
    8001e6a2:	cd05                	beqz	a0,8001e6da <js_unary_arith_bigfloat+0x11c>
quickjs-nuttx/quickjs.c:12778
        JS_FreeValue(ctx, res);
    8001e6a4:	65e2                	ld	a1,24(sp)
    8001e6a6:	7602                	ld	a2,32(sp)
    8001e6a8:	8522                	mv	a0,s0
    8001e6aa:	8f4ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12779
        throw_bf_exception(ctx, ret);
    8001e6ae:	85a6                	mv	a1,s1
    8001e6b0:	8522                	mv	a0,s0
    8001e6b2:	d15ff0ef          	jal	ra,8001e3c6 <throw_bf_exception>
    8001e6b6:	b7a9                	j	8001e600 <js_unary_arith_bigfloat+0x42>
quickjs-nuttx/quickjs.c:12765
        ret = bf_set(r, a);
    8001e6b8:	85aa                	mv	a1,a0
    8001e6ba:	855a                	mv	a0,s6
    8001e6bc:	167390ef          	jal	ra,80058022 <bf_set>
    8001e6c0:	b7e1                	j	8001e688 <js_unary_arith_bigfloat+0xca>
quickjs-nuttx/quickjs.c:12768
        ret = bf_set(r, a);
    8001e6c2:	85aa                	mv	a1,a0
    8001e6c4:	855a                	mv	a0,s6
    8001e6c6:	15d390ef          	jal	ra,80058022 <bf_set>
bf_neg():
quickjs-nuttx/libbf.h:231
    r->sign ^= 1;
    8001e6ca:	010aa783          	lw	a5,16(s5)
js_unary_arith_bigfloat():
quickjs-nuttx/quickjs.c:12768
    8001e6ce:	84aa                	mv	s1,a0
bf_neg():
quickjs-nuttx/libbf.h:231
    8001e6d0:	0017c793          	xori	a5,a5,1
    8001e6d4:	00faa823          	sw	a5,16(s5)
quickjs-nuttx/libbf.h:232
}
    8001e6d8:	bf4d                	j	8001e68a <js_unary_arith_bigfloat+0xcc>
js_unary_arith_bigfloat():
quickjs-nuttx/quickjs.c:12782
    *pres = res;
    8001e6da:	67e2                	ld	a5,24(sp)
    8001e6dc:	00f9b023          	sd	a5,0(s3)
    8001e6e0:	7782                	ld	a5,32(sp)
    8001e6e2:	00f9b423          	sd	a5,8(s3)
quickjs-nuttx/quickjs.c:12783
    return 0;
    8001e6e6:	bf31                	j	8001e602 <js_unary_arith_bigfloat+0x44>

000000008001e6e8 <js_binary_arith_bigdecimal>:
js_binary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:13315
{
    8001e6e8:	7135                	addi	sp,sp,-160
    8001e6ea:	e922                	sd	s0,144(sp)
    8001e6ec:	e526                	sd	s1,136(sp)
    8001e6ee:	e14a                	sd	s2,128(sp)
    8001e6f0:	e83e                	sd	a5,16(sp)
    8001e6f2:	ed06                	sd	ra,152(sp)
    8001e6f4:	fcce                	sd	s3,120(sp)
    8001e6f6:	f8d2                	sd	s4,112(sp)
    8001e6f8:	84aa                	mv	s1,a0
    8001e6fa:	842e                	mv	s0,a1
    8001e6fc:	8932                	mv	s2,a2
    8001e6fe:	f036                	sd	a3,32(sp)
    8001e700:	f43a                	sd	a4,40(sp)
    8001e702:	ec42                	sd	a6,24(sp)
quickjs-nuttx/quickjs.c:13320
    res = JS_NewBigDecimal(ctx);
    8001e704:	d72fc0ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
    8001e708:	e0ae                	sd	a1,64(sp)
    8001e70a:	fc2a                	sd	a0,56(sp)
quickjs-nuttx/quickjs.c:13321
    if (JS_IsException(res))
    8001e70c:	2581                	sext.w	a1,a1
    8001e70e:	4799                	li	a5,6
    8001e710:	02f58063          	beq	a1,a5,8001e730 <js_binary_arith_bigdecimal+0x48>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12374
    switch(tag) {
    8001e714:	57a2                	lw	a5,40(sp)
    8001e716:	5755                	li	a4,-11
    8001e718:	00e79563          	bne	a5,a4,8001e722 <js_binary_arith_bigdecimal+0x3a>
    8001e71c:	4762                	lw	a4,24(sp)
    8001e71e:	02f70963          	beq	a4,a5,8001e750 <js_binary_arith_bigdecimal+0x68>
quickjs-nuttx/quickjs.c:12380
        JS_ThrowTypeError(ctx, "bigdecimal expected");
    8001e722:	0004c597          	auipc	a1,0x4c
    8001e726:	11e58593          	addi	a1,a1,286 # 8006a840 <qjsc_repl+0x5290>
    8001e72a:	8526                	mv	a0,s1
    8001e72c:	f41f90ef          	jal	ra,8001866c <JS_ThrowTypeError>
js_binary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:13367
    JS_FreeValue(ctx, res);
    8001e730:	75e2                	ld	a1,56(sp)
    8001e732:	6606                	ld	a2,64(sp)
    8001e734:	8526                	mv	a0,s1
    8001e736:	868ed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13368
    JS_FreeValue(ctx, op1);
    8001e73a:	7582                	ld	a1,32(sp)
    8001e73c:	7622                	ld	a2,40(sp)
    8001e73e:	8526                	mv	a0,s1
    8001e740:	85eed0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13369
    JS_FreeValue(ctx, op2);
    8001e744:	65c2                	ld	a1,16(sp)
    8001e746:	6662                	ld	a2,24(sp)
    8001e748:	8526                	mv	a0,s1
    8001e74a:	854ed0ef          	jal	ra,8000b79e <JS_FreeValue>
    8001e74e:	a069                	j	8001e7d8 <js_binary_arith_bigdecimal+0xf0>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    8001e750:	7a02                	ld	s4,32(sp)
    8001e752:	6742                	ld	a4,16(sp)
js_binary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:13331
    switch(op) {
    8001e754:	0a000793          	li	a5,160
JS_GetBigDecimal():
quickjs-nuttx/quickjs.c:1163
    return &p->num;
    8001e758:	00850993          	addi	s3,a0,8
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    8001e75c:	0a21                	addi	s4,s4,8
    8001e75e:	00870613          	addi	a2,a4,8
js_binary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:13331
    switch(op) {
    8001e762:	0287e963          	bltu	a5,s0,8001e794 <js_binary_arith_bigdecimal+0xac>
    8001e766:	09a00793          	li	a5,154
    8001e76a:	0287f963          	bgeu	a5,s0,8001e79c <js_binary_arith_bigdecimal+0xb4>
    8001e76e:	f644041b          	addiw	s0,s0,-156
    8001e772:	0004069b          	sext.w	a3,s0
    8001e776:	4791                	li	a5,4
    8001e778:	06d7ea63          	bltu	a5,a3,8001e7ec <js_binary_arith_bigdecimal+0x104>
    8001e77c:	02041793          	slli	a5,s0,0x20
    8001e780:	01e7d413          	srli	s0,a5,0x1e
    8001e784:	0004c697          	auipc	a3,0x4c
    8001e788:	0d068693          	addi	a3,a3,208 # 8006a854 <qjsc_repl+0x52a4>
    8001e78c:	9436                	add	s0,s0,a3
    8001e78e:	401c                	lw	a5,0(s0)
    8001e790:	97b6                	add	a5,a5,a3
    8001e792:	8782                	jr	a5
    8001e794:	0b400793          	li	a5,180
    8001e798:	06f40a63          	beq	s0,a5,8001e80c <js_binary_arith_bigdecimal+0x124>
quickjs-nuttx/quickjs.c:13355
        abort();
    8001e79c:	3e6440ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:13333
        ret = bfdec_add(r, a, b, BF_PREC_INF, BF_RNDZ);
    8001e7a0:	56fd                	li	a3,-1
    8001e7a2:	4705                	li	a4,1
    8001e7a4:	8289                	srli	a3,a3,0x2
    8001e7a6:	85d2                	mv	a1,s4
    8001e7a8:	854e                	mv	a0,s3
    8001e7aa:	7383c0ef          	jal	ra,8005aee2 <bfdec_add>
quickjs-nuttx/quickjs.c:13336
        ret = bfdec_sub(r, a, b, BF_PREC_INF, BF_RNDZ);
    8001e7ae:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13357
    JS_FreeValue(ctx, op1);
    8001e7b0:	7582                	ld	a1,32(sp)
    8001e7b2:	7622                	ld	a2,40(sp)
    8001e7b4:	8526                	mv	a0,s1
    8001e7b6:	fe9ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13358
    JS_FreeValue(ctx, op2);
    8001e7ba:	65c2                	ld	a1,16(sp)
    8001e7bc:	6662                	ld	a2,24(sp)
    8001e7be:	8526                	mv	a0,s1
    8001e7c0:	fdfec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13359
    if (unlikely(ret)) {
    8001e7c4:	c85d                	beqz	s0,8001e87a <js_binary_arith_bigdecimal+0x192>
quickjs-nuttx/quickjs.c:13360
        JS_FreeValue(ctx, res);
    8001e7c6:	75e2                	ld	a1,56(sp)
    8001e7c8:	6606                	ld	a2,64(sp)
    8001e7ca:	8526                	mv	a0,s1
    8001e7cc:	fd3ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13361
        throw_bf_exception(ctx, ret);
    8001e7d0:	85a2                	mv	a1,s0
    8001e7d2:	8526                	mv	a0,s1
    8001e7d4:	bf3ff0ef          	jal	ra,8001e3c6 <throw_bf_exception>
quickjs-nuttx/quickjs.c:13370
    return -1;
    8001e7d8:	547d                	li	s0,-1
    8001e7da:	a075                	j	8001e886 <js_binary_arith_bigdecimal+0x19e>
quickjs-nuttx/quickjs.c:13336
        ret = bfdec_sub(r, a, b, BF_PREC_INF, BF_RNDZ);
    8001e7dc:	56fd                	li	a3,-1
    8001e7de:	4705                	li	a4,1
    8001e7e0:	8289                	srli	a3,a3,0x2
    8001e7e2:	85d2                	mv	a1,s4
    8001e7e4:	854e                	mv	a0,s3
    8001e7e6:	7083c0ef          	jal	ra,8005aeee <bfdec_sub>
    8001e7ea:	b7d1                	j	8001e7ae <js_binary_arith_bigdecimal+0xc6>
quickjs-nuttx/quickjs.c:13339
        ret = bfdec_mul(r, a, b, BF_PREC_INF, BF_RNDZ);
    8001e7ec:	56fd                	li	a3,-1
    8001e7ee:	4705                	li	a4,1
    8001e7f0:	8289                	srli	a3,a3,0x2
    8001e7f2:	85d2                	mv	a1,s4
    8001e7f4:	854e                	mv	a0,s3
    8001e7f6:	7043c0ef          	jal	ra,8005aefa <bfdec_mul>
    8001e7fa:	bf55                	j	8001e7ae <js_binary_arith_bigdecimal+0xc6>
quickjs-nuttx/quickjs.c:13342
        ret = bfdec_div(r, a, b, BF_PREC_INF, BF_RNDZ);
    8001e7fc:	56fd                	li	a3,-1
    8001e7fe:	4705                	li	a4,1
    8001e800:	8289                	srli	a3,a3,0x2
    8001e802:	85d2                	mv	a1,s4
    8001e804:	854e                	mv	a0,s3
    8001e806:	0c13c0ef          	jal	ra,8005b0c6 <bfdec_div>
    8001e80a:	b755                	j	8001e7ae <js_binary_arith_bigdecimal+0xc6>
quickjs-nuttx/quickjs.c:13346
        ret = bfdec_rem(r, a, b, BF_PREC_INF, BF_RNDZ, BF_DIVREM_EUCLIDIAN);
    8001e80c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:13349
        ret = bfdec_rem(r, a, b, BF_PREC_INF, BF_RNDZ, BF_RNDZ);
    8001e80e:	56fd                	li	a3,-1
    8001e810:	4705                	li	a4,1
    8001e812:	8289                	srli	a3,a3,0x2
    8001e814:	85d2                	mv	a1,s4
    8001e816:	854e                	mv	a0,s3
    8001e818:	3533c0ef          	jal	ra,8005b36a <bfdec_rem>
    8001e81c:	bf49                	j	8001e7ae <js_binary_arith_bigdecimal+0xc6>
    8001e81e:	4785                	li	a5,1
    8001e820:	b7fd                	j	8001e80e <js_binary_arith_bigdecimal+0x126>
bfdec_init():
quickjs-nuttx/libbf.h:420
    bf_init(s, (bf_t *)r);
    8001e822:	6708                	ld	a0,8(a4)
    8001e824:	00ac                	addi	a1,sp,72
    8001e826:	e432                	sd	a2,8(sp)
    8001e828:	346390ef          	jal	ra,80057b6e <bf_init>
bfdec_set():
quickjs-nuttx/libbf.h:469
{
    bf_set_inf((bf_t *)r, is_neg);
}
static inline int bfdec_set(bfdec_t *r, const bfdec_t *a)
{
    return bf_set((bf_t *)r, (bf_t *)a);
    8001e82c:	6622                	ld	a2,8(sp)
    8001e82e:	00a8                	addi	a0,sp,72
    8001e830:	85b2                	mv	a1,a2
    8001e832:	7f0390ef          	jal	ra,80058022 <bf_set>
    8001e836:	842a                	mv	s0,a0
js_bfdec_pow():
quickjs-nuttx/quickjs.c:13295
    if (ret) {
    8001e838:	c509                	beqz	a0,8001e842 <js_binary_arith_bigdecimal+0x15a>
bfdec_delete():
quickjs-nuttx/libbf.h:424
    bf_delete((bf_t *)r);
    8001e83a:	00a8                	addi	a0,sp,72
    8001e83c:	c1beb0ef          	jal	ra,8000a456 <bf_delete>
js_bfdec_pow():
quickjs-nuttx/quickjs.c:13297
        return ret;
    8001e840:	bf85                	j	8001e7b0 <js_binary_arith_bigdecimal+0xc8>
quickjs-nuttx/quickjs.c:13299
    ret = bfdec_rint(&b1, BF_RNDZ);
    8001e842:	4585                	li	a1,1
    8001e844:	00a8                	addi	a0,sp,72
    8001e846:	3613c0ef          	jal	ra,8005b3a6 <bfdec_rint>
quickjs-nuttx/quickjs.c:13300
    if (ret) {
    8001e84a:	c511                	beqz	a0,8001e856 <js_binary_arith_bigdecimal+0x16e>
bfdec_delete():
quickjs-nuttx/libbf.h:424
    8001e84c:	00a8                	addi	a0,sp,72
    8001e84e:	c09eb0ef          	jal	ra,8000a456 <bf_delete>
js_bfdec_pow():
quickjs-nuttx/quickjs.c:13302
        return BF_ST_INVALID_OP; /* must be an integer */
    8001e852:	4405                	li	s0,1
    8001e854:	bfb1                	j	8001e7b0 <js_binary_arith_bigdecimal+0xc8>
quickjs-nuttx/quickjs.c:13304
    ret = bfdec_get_int32(&b2, &b1);
    8001e856:	00ac                	addi	a1,sp,72
    8001e858:	1848                	addi	a0,sp,52
    8001e85a:	5773c0ef          	jal	ra,8005b5d0 <bfdec_get_int32>
    8001e85e:	842a                	mv	s0,a0
bfdec_delete():
quickjs-nuttx/libbf.h:424
    8001e860:	00a8                	addi	a0,sp,72
    8001e862:	bf5eb0ef          	jal	ra,8000a456 <bf_delete>
js_bfdec_pow():
quickjs-nuttx/quickjs.c:13306
    if (ret)
    8001e866:	f429                	bnez	s0,8001e7b0 <js_binary_arith_bigdecimal+0xc8>
quickjs-nuttx/quickjs.c:13308
    if (b2 < 0)
    8001e868:	5652                	lw	a2,52(sp)
quickjs-nuttx/quickjs.c:13309
        return BF_ST_INVALID_OP; /* must be positive */
    8001e86a:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:13308
    if (b2 < 0)
    8001e86c:	f40642e3          	bltz	a2,8001e7b0 <js_binary_arith_bigdecimal+0xc8>
quickjs-nuttx/quickjs.c:13310
    return bfdec_pow_ui(r, a, b2);
    8001e870:	85d2                	mv	a1,s4
    8001e872:	854e                	mv	a0,s3
    8001e874:	62f3c0ef          	jal	ra,8005b6a2 <bfdec_pow_ui>
    8001e878:	bf1d                	j	8001e7ae <js_binary_arith_bigdecimal+0xc6>
js_binary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:13364
    *pres = res;
    8001e87a:	77e2                	ld	a5,56(sp)
    8001e87c:	00f93023          	sd	a5,0(s2)
    8001e880:	6786                	ld	a5,64(sp)
    8001e882:	00f93423          	sd	a5,8(s2)
quickjs-nuttx/quickjs.c:13371
}
    8001e886:	60ea                	ld	ra,152(sp)
    8001e888:	8522                	mv	a0,s0
    8001e88a:	644a                	ld	s0,144(sp)
    8001e88c:	64aa                	ld	s1,136(sp)
    8001e88e:	690a                	ld	s2,128(sp)
    8001e890:	79e6                	ld	s3,120(sp)
    8001e892:	7a46                	ld	s4,112(sp)
    8001e894:	610d                	addi	sp,sp,160
    8001e896:	8082                	ret

000000008001e898 <js_unary_arith_bigdecimal>:
js_unary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:12788
{
    8001e898:	715d                	addi	sp,sp,-80
    8001e89a:	e0a2                	sd	s0,64(sp)
    8001e89c:	fc26                	sd	s1,56(sp)
    8001e89e:	f44e                	sd	s3,40(sp)
    8001e8a0:	e486                	sd	ra,72(sp)
    8001e8a2:	f84a                	sd	s2,48(sp)
    8001e8a4:	e036                	sd	a3,0(sp)
    8001e8a6:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:12793
    if (op == OP_plus && !is_math_mode(ctx)) {
    8001e8a8:	08e00793          	li	a5,142
quickjs-nuttx/quickjs.c:12788
{
    8001e8ac:	84aa                	mv	s1,a0
    8001e8ae:	89ae                	mv	s3,a1
    8001e8b0:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:12793
    if (op == OP_plus && !is_math_mode(ctx)) {
    8001e8b2:	02f61a63          	bne	a2,a5,8001e8e6 <js_unary_arith_bigdecimal+0x4e>
quickjs-nuttx/quickjs.c:12793 (discriminator 1)
    8001e8b6:	adee90ef          	jal	ra,80007b94 <is_math_mode>
    8001e8ba:	e515                	bnez	a0,8001e8e6 <js_unary_arith_bigdecimal+0x4e>
quickjs-nuttx/quickjs.c:12794
        JS_ThrowTypeError(ctx, "bigdecimal argument with unary +");
    8001e8bc:	0004c597          	auipc	a1,0x4c
    8001e8c0:	fac58593          	addi	a1,a1,-84 # 8006a868 <qjsc_repl+0x52b8>
    8001e8c4:	8526                	mv	a0,s1
    8001e8c6:	da7f90ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:12808
        JS_FreeValue(ctx, op1);
    8001e8ca:	6582                	ld	a1,0(sp)
    8001e8cc:	6622                	ld	a2,8(sp)
    8001e8ce:	8526                	mv	a0,s1
    8001e8d0:	ecfec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12832
        return -1;
    8001e8d4:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:12836
}
    8001e8d6:	60a6                	ld	ra,72(sp)
    8001e8d8:	8522                	mv	a0,s0
    8001e8da:	6406                	ld	s0,64(sp)
    8001e8dc:	74e2                	ld	s1,56(sp)
    8001e8de:	7942                	ld	s2,48(sp)
    8001e8e0:	79a2                	ld	s3,40(sp)
    8001e8e2:	6161                	addi	sp,sp,80
    8001e8e4:	8082                	ret
quickjs-nuttx/quickjs.c:12799
    res = JS_NewBigDecimal(ctx);
    8001e8e6:	8526                	mv	a0,s1
    8001e8e8:	b8efc0ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
    8001e8ec:	ec2e                	sd	a1,24(sp)
    8001e8ee:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:12800
    if (JS_IsException(res)) {
    8001e8f0:	2581                	sext.w	a1,a1
    8001e8f2:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12799
    res = JS_NewBigDecimal(ctx);
    8001e8f4:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:12800
    if (JS_IsException(res)) {
    8001e8f6:	fcf58ae3          	beq	a1,a5,8001e8ca <js_unary_arith_bigdecimal+0x32>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12374
    switch(tag) {
    8001e8fa:	4722                	lw	a4,8(sp)
    8001e8fc:	57d5                	li	a5,-11
    8001e8fe:	06f71163          	bne	a4,a5,8001e960 <js_unary_arith_bigdecimal+0xc8>
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    8001e902:	6582                	ld	a1,0(sp)
js_unary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:12812
    switch(op) {
    8001e904:	08e00793          	li	a5,142
JS_GetBigDecimal():
quickjs-nuttx/quickjs.c:1163
    return &p->num;
    8001e908:	00890513          	addi	a0,s2,8
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    8001e90c:	05a1                	addi	a1,a1,8
js_unary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:12812
    switch(op) {
    8001e90e:	06f40663          	beq	s0,a5,8001e97a <js_unary_arith_bigdecimal+0xe2>
    8001e912:	0087e863          	bltu	a5,s0,8001e922 <js_unary_arith_bigdecimal+0x8a>
    8001e916:	08d00793          	li	a5,141
    8001e91a:	06f40363          	beq	s0,a5,8001e980 <js_unary_arith_bigdecimal+0xe8>
quickjs-nuttx/quickjs.c:12826
        abort();
    8001e91e:	264440ef          	jal	ra,80062b82 <abort>
    8001e922:	f714071b          	addiw	a4,s0,-143
quickjs-nuttx/quickjs.c:12812
    switch(op) {
    8001e926:	4785                	li	a5,1
    8001e928:	fee7ebe3          	bltu	a5,a4,8001e91e <js_unary_arith_bigdecimal+0x86>
quickjs-nuttx/quickjs.c:12815
        v = 2 * (op - OP_dec) - 1;
    8001e92c:	0017141b          	slliw	s0,a4,0x1
quickjs-nuttx/quickjs.c:12816
        ret = bfdec_add_si(r, a, v, BF_PREC_INF, BF_RNDZ);
    8001e930:	56fd                	li	a3,-1
    8001e932:	4705                	li	a4,1
    8001e934:	8289                	srli	a3,a3,0x2
    8001e936:	fff4061b          	addiw	a2,s0,-1
    8001e93a:	73a3c0ef          	jal	ra,8005b074 <bfdec_add_si>
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8001e93e:	842a                	mv	s0,a0
js_unary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:12828
    JS_FreeValue(ctx, op1);
    8001e940:	6582                	ld	a1,0(sp)
    8001e942:	6622                	ld	a2,8(sp)
    8001e944:	8526                	mv	a0,s1
    8001e946:	e59ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12829
    if (unlikely(ret)) {
    8001e94a:	c429                	beqz	s0,8001e994 <js_unary_arith_bigdecimal+0xfc>
quickjs-nuttx/quickjs.c:12830
        JS_FreeValue(ctx, res);
    8001e94c:	65c2                	ld	a1,16(sp)
    8001e94e:	6662                	ld	a2,24(sp)
    8001e950:	8526                	mv	a0,s1
    8001e952:	e4dec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12831
        throw_bf_exception(ctx, ret);
    8001e956:	85a2                	mv	a1,s0
    8001e958:	8526                	mv	a0,s1
    8001e95a:	a6dff0ef          	jal	ra,8001e3c6 <throw_bf_exception>
    8001e95e:	bf9d                	j	8001e8d4 <js_unary_arith_bigdecimal+0x3c>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12380
        JS_ThrowTypeError(ctx, "bigdecimal expected");
    8001e960:	8526                	mv	a0,s1
    8001e962:	0004c597          	auipc	a1,0x4c
    8001e966:	ede58593          	addi	a1,a1,-290 # 8006a840 <qjsc_repl+0x5290>
    8001e96a:	d03f90ef          	jal	ra,8001866c <JS_ThrowTypeError>
js_unary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:12807
        JS_FreeValue(ctx, res);
    8001e96e:	65c2                	ld	a1,16(sp)
    8001e970:	6662                	ld	a2,24(sp)
    8001e972:	8526                	mv	a0,s1
    8001e974:	e2bec0ef          	jal	ra,8000b79e <JS_FreeValue>
    8001e978:	bf89                	j	8001e8ca <js_unary_arith_bigdecimal+0x32>
bfdec_set():
quickjs-nuttx/libbf.h:469
    8001e97a:	6a8390ef          	jal	ra,80058022 <bf_set>
    8001e97e:	b7c1                	j	8001e93e <js_unary_arith_bigdecimal+0xa6>
    8001e980:	6a2390ef          	jal	ra,80058022 <bf_set>
bfdec_neg():
quickjs-nuttx/libbf.h:429
    r->sign ^= 1;
    8001e984:	01092783          	lw	a5,16(s2)
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8001e988:	842a                	mv	s0,a0
bfdec_neg():
quickjs-nuttx/libbf.h:429
    r->sign ^= 1;
    8001e98a:	0017c793          	xori	a5,a5,1
    8001e98e:	00f92823          	sw	a5,16(s2)
quickjs-nuttx/libbf.h:430
}
    8001e992:	b77d                	j	8001e940 <js_unary_arith_bigdecimal+0xa8>
js_unary_arith_bigdecimal():
quickjs-nuttx/quickjs.c:12834
    *pres = res;
    8001e994:	67c2                	ld	a5,16(sp)
    8001e996:	00f9b023          	sd	a5,0(s3)
    8001e99a:	67e2                	ld	a5,24(sp)
    8001e99c:	00f9b423          	sd	a5,8(s3)
quickjs-nuttx/quickjs.c:12835
    return 0;
    8001e9a0:	bf1d                	j	8001e8d6 <js_unary_arith_bigdecimal+0x3e>

000000008001e9a2 <string_buffer_realloc>:
string_buffer_realloc():
quickjs-nuttx/quickjs.c:3616
{
    8001e9a2:	7179                	addi	sp,sp,-48
    8001e9a4:	f406                	sd	ra,40(sp)
    8001e9a6:	f022                	sd	s0,32(sp)
    8001e9a8:	ec26                	sd	s1,24(sp)
    8001e9aa:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:3621
    if (s->error_status)
    8001e9ac:	01c52903          	lw	s2,28(a0)
    8001e9b0:	0a091663          	bnez	s2,8001ea5c <string_buffer_realloc+0xba>
quickjs-nuttx/quickjs.c:3624
    if (new_len > JS_STRING_LEN_MAX) {
    8001e9b4:	400007b7          	lui	a5,0x40000
    8001e9b8:	842a                	mv	s0,a0
    8001e9ba:	02f5c163          	blt	a1,a5,8001e9dc <string_buffer_realloc+0x3a>
quickjs-nuttx/quickjs.c:3625
        JS_ThrowInternalError(s->ctx, "string too long");
    8001e9be:	6108                	ld	a0,0(a0)
    8001e9c0:	0004c597          	auipc	a1,0x4c
    8001e9c4:	ed058593          	addi	a1,a1,-304 # 8006a890 <qjsc_repl+0x52e0>
    8001e9c8:	f31fa0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:3626
        return string_buffer_set_error(s);
    8001e9cc:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:3640
}
    8001e9ce:	7402                	ld	s0,32(sp)
    8001e9d0:	70a2                	ld	ra,40(sp)
    8001e9d2:	64e2                	ld	s1,24(sp)
    8001e9d4:	6942                	ld	s2,16(sp)
    8001e9d6:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:3626
        return string_buffer_set_error(s);
    8001e9d8:	e24ec06f          	j	8000affc <string_buffer_set_error>
quickjs-nuttx/quickjs.c:3628
    new_size = min_int(max_int(new_len, s->size * 3 / 2), JS_STRING_LEN_MAX);
    8001e9dc:	495c                	lw	a5,20(a0)
    8001e9de:	448d                	li	s1,3
    8001e9e0:	02f484bb          	mulw	s1,s1,a5
    8001e9e4:	4789                	li	a5,2
    8001e9e6:	02f4c7bb          	divw	a5,s1,a5
    8001e9ea:	84be                	mv	s1,a5
    8001e9ec:	00b7d463          	bge	a5,a1,8001e9f4 <string_buffer_realloc+0x52>
    8001e9f0:	0005849b          	sext.w	s1,a1
quickjs-nuttx/quickjs.c:3629
    if (!s->is_wide_char && c >= 0x100) {
    8001e9f4:	4c1c                	lw	a5,24(s0)
    8001e9f6:	ef91                	bnez	a5,8001ea12 <string_buffer_realloc+0x70>
quickjs-nuttx/quickjs.c:3629 (discriminator 1)
    8001e9f8:	0ff00713          	li	a4,255
    8001e9fc:	00c75b63          	bge	a4,a2,8001ea12 <string_buffer_realloc+0x70>
quickjs-nuttx/quickjs.c:3630
        return string_buffer_widen(s, new_size);
    8001ea00:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:3640
}
    8001ea02:	7402                	ld	s0,32(sp)
    8001ea04:	70a2                	ld	ra,40(sp)
    8001ea06:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:3630
        return string_buffer_widen(s, new_size);
    8001ea08:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:3640
}
    8001ea0a:	64e2                	ld	s1,24(sp)
    8001ea0c:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:3630
        return string_buffer_widen(s, new_size);
    8001ea0e:	d55fd06f          	j	8001c762 <string_buffer_widen>
quickjs-nuttx/quickjs.c:3632
    new_size_bytes = sizeof(JSString) + (new_size << s->is_wide_char) + 1 - s->is_wide_char;
    8001ea12:	00f4963b          	sllw	a2,s1,a5
quickjs-nuttx/quickjs.c:3633
    new_str = js_realloc2(s->ctx, s->str, new_size_bytes, &slack);
    8001ea16:	640c                	ld	a1,8(s0)
    8001ea18:	6008                	ld	a0,0(s0)
quickjs-nuttx/quickjs.c:3632
    new_size_bytes = sizeof(JSString) + (new_size << s->is_wide_char) + 1 - s->is_wide_char;
    8001ea1a:	8e1d                	sub	a2,a2,a5
quickjs-nuttx/quickjs.c:3633
    new_str = js_realloc2(s->ctx, s->str, new_size_bytes, &slack);
    8001ea1c:	0034                	addi	a3,sp,8
    8001ea1e:	0645                	addi	a2,a2,17
    8001ea20:	cf1fd0ef          	jal	ra,8001c710 <js_realloc2>
quickjs-nuttx/quickjs.c:3634
    if (!new_str)
    8001ea24:	ed01                	bnez	a0,8001ea3c <string_buffer_realloc+0x9a>
quickjs-nuttx/quickjs.c:3635
        return string_buffer_set_error(s);
    8001ea26:	8522                	mv	a0,s0
    8001ea28:	dd4ec0ef          	jal	ra,8000affc <string_buffer_set_error>
    8001ea2c:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:3640
}
    8001ea2e:	70a2                	ld	ra,40(sp)
    8001ea30:	7402                	ld	s0,32(sp)
    8001ea32:	64e2                	ld	s1,24(sp)
    8001ea34:	854a                	mv	a0,s2
    8001ea36:	6942                	ld	s2,16(sp)
    8001ea38:	6145                	addi	sp,sp,48
    8001ea3a:	8082                	ret
quickjs-nuttx/quickjs.c:3636
    new_size = min_int(new_size + (slack >> s->is_wide_char), JS_STRING_LEN_MAX);
    8001ea3c:	4c18                	lw	a4,24(s0)
    8001ea3e:	67a2                	ld	a5,8(sp)
    8001ea40:	00e7d7b3          	srl	a5,a5,a4
    8001ea44:	9cbd                	addw	s1,s1,a5
min_int():
quickjs-nuttx/cutils.h:79
    if (a < b)
    8001ea46:	400007b7          	lui	a5,0x40000
    8001ea4a:	ffe78713          	addi	a4,a5,-2 # 3ffffffe <asinh-0x40000002>
    8001ea4e:	00975463          	bge	a4,s1,8001ea56 <string_buffer_realloc+0xb4>
quickjs-nuttx/cutils.h:82
        return b;
    8001ea52:	fff78493          	addi	s1,a5,-1
string_buffer_realloc():
quickjs-nuttx/quickjs.c:3637
    s->size = new_size;
    8001ea56:	c844                	sw	s1,20(s0)
quickjs-nuttx/quickjs.c:3638
    s->str = new_str;
    8001ea58:	e408                	sd	a0,8(s0)
quickjs-nuttx/quickjs.c:3639
    return 0;
    8001ea5a:	bfd1                	j	8001ea2e <string_buffer_realloc+0x8c>
quickjs-nuttx/quickjs.c:3622
        return -1;
    8001ea5c:	597d                	li	s2,-1
    8001ea5e:	bfc1                	j	8001ea2e <string_buffer_realloc+0x8c>

000000008001ea60 <string_buffer_write8>:
string_buffer_write8():
quickjs-nuttx/quickjs.c:3728
{
    8001ea60:	7179                	addi	sp,sp,-48
    8001ea62:	f022                	sd	s0,32(sp)
    8001ea64:	ec26                	sd	s1,24(sp)
    8001ea66:	e44e                	sd	s3,8(sp)
    8001ea68:	f406                	sd	ra,40(sp)
    8001ea6a:	e84a                	sd	s2,16(sp)
    8001ea6c:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:3731
    if (s->len + len > s->size) {
    8001ea6e:	490c                	lw	a1,16(a0)
    8001ea70:	495c                	lw	a5,20(a0)
quickjs-nuttx/quickjs.c:3728
{
    8001ea72:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3731
    if (s->len + len > s->size) {
    8001ea74:	9db1                	addw	a1,a1,a2
quickjs-nuttx/quickjs.c:3728
{
    8001ea76:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:3731
    if (s->len + len > s->size) {
    8001ea78:	02b7c363          	blt	a5,a1,8001ea9e <string_buffer_write8+0x3e>
quickjs-nuttx/quickjs.c:3735
    if (s->is_wide_char) {
    8001ea7c:	01842903          	lw	s2,24(s0)
    8001ea80:	4701                	li	a4,0
    8001ea82:	04091763          	bnez	s2,8001ead0 <string_buffer_write8+0x70>
quickjs-nuttx/quickjs.c:3741
        memcpy(&s->str->u.str8[s->len], p, len);
    8001ea86:	481c                	lw	a5,16(s0)
    8001ea88:	6408                	ld	a0,8(s0)
    8001ea8a:	8626                	mv	a2,s1
    8001ea8c:	07c1                	addi	a5,a5,16
    8001ea8e:	85ce                	mv	a1,s3
    8001ea90:	953e                	add	a0,a0,a5
    8001ea92:	31a450ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:3742
        s->len += len;
    8001ea96:	4810                	lw	a2,16(s0)
    8001ea98:	9cb1                	addw	s1,s1,a2
    8001ea9a:	c804                	sw	s1,16(s0)
    8001ea9c:	a031                	j	8001eaa8 <string_buffer_write8+0x48>
quickjs-nuttx/quickjs.c:3732
        if (string_buffer_realloc(s, s->len + len, 0))
    8001ea9e:	4601                	li	a2,0
    8001eaa0:	f03ff0ef          	jal	ra,8001e9a2 <string_buffer_realloc>
quickjs-nuttx/quickjs.c:3733
            return -1;
    8001eaa4:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:3732
        if (string_buffer_realloc(s, s->len + len, 0))
    8001eaa6:	d979                	beqz	a0,8001ea7c <string_buffer_write8+0x1c>
quickjs-nuttx/quickjs.c:3745
}
    8001eaa8:	70a2                	ld	ra,40(sp)
    8001eaaa:	7402                	ld	s0,32(sp)
    8001eaac:	64e2                	ld	s1,24(sp)
    8001eaae:	69a2                	ld	s3,8(sp)
    8001eab0:	854a                	mv	a0,s2
    8001eab2:	6942                	ld	s2,16(sp)
    8001eab4:	6145                	addi	sp,sp,48
    8001eab6:	8082                	ret
quickjs-nuttx/quickjs.c:3737 (discriminator 3)
            s->str->u.str16[s->len + i] = p[i];
    8001eab8:	6414                	ld	a3,8(s0)
    8001eaba:	9fb1                	addw	a5,a5,a2
    8001eabc:	07a1                	addi	a5,a5,8
    8001eabe:	0786                	slli	a5,a5,0x1
    8001eac0:	97b6                	add	a5,a5,a3
    8001eac2:	00e986b3          	add	a3,s3,a4
    8001eac6:	0006c683          	lbu	a3,0(a3)
    8001eaca:	0705                	addi	a4,a4,1
    8001eacc:	00d79023          	sh	a3,0(a5)
quickjs-nuttx/quickjs.c:3736 (discriminator 3)
        for (i = 0; i < len; i++) {
    8001ead0:	0007079b          	sext.w	a5,a4
quickjs-nuttx/quickjs.c:3737 (discriminator 1)
            s->str->u.str16[s->len + i] = p[i];
    8001ead4:	4810                	lw	a2,16(s0)
quickjs-nuttx/quickjs.c:3736 (discriminator 1)
        for (i = 0; i < len; i++) {
    8001ead6:	fe97c1e3          	blt	a5,s1,8001eab8 <string_buffer_write8+0x58>
quickjs-nuttx/quickjs.c:3739
        s->len += len;
    8001eada:	9cb1                	addw	s1,s1,a2
    8001eadc:	c804                	sw	s1,16(s0)
quickjs-nuttx/quickjs.c:3744
    return 0;
    8001eade:	4901                	li	s2,0
    8001eae0:	b7e1                	j	8001eaa8 <string_buffer_write8+0x48>

000000008001eae2 <string_buffer_concat>:
string_buffer_concat():
quickjs-nuttx/quickjs.c:3782
    if (to <= from)
    8001eae2:	0ed67063          	bgeu	a2,a3,8001ebc2 <string_buffer_concat+0xe0>
quickjs-nuttx/quickjs.c:3781
{
    8001eae6:	7179                	addi	sp,sp,-48
    8001eae8:	ec26                	sd	s1,24(sp)
    8001eaea:	e84a                	sd	s2,16(sp)
    8001eaec:	e44e                	sd	s3,8(sp)
    8001eaee:	f406                	sd	ra,40(sp)
    8001eaf0:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:3784
    if (p->is_wide_char)
    8001eaf2:	41d8                	lw	a4,4(a1)
quickjs-nuttx/quickjs.c:3785
        return string_buffer_write16(s, p->u.str16 + from, to - from);
    8001eaf4:	02061793          	slli	a5,a2,0x20
    8001eaf8:	40c689bb          	subw	s3,a3,a2
    8001eafc:	01058913          	addi	s2,a1,16
    8001eb00:	9381                	srli	a5,a5,0x20
    8001eb02:	84ce                	mv	s1,s3
quickjs-nuttx/quickjs.c:3784
    if (p->is_wide_char)
    8001eb04:	0a075463          	bgez	a4,8001ebac <string_buffer_concat+0xca>
quickjs-nuttx/quickjs.c:3785
        return string_buffer_write16(s, p->u.str16 + from, to - from);
    8001eb08:	0786                	slli	a5,a5,0x1
    8001eb0a:	993e                	add	s2,s2,a5
    8001eb0c:	842a                	mv	s0,a0
string_buffer_write16():
quickjs-nuttx/quickjs.c:3751
    for (i = 0; i < len; i++) {
    8001eb0e:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:3749
    int c = 0, i;
    8001eb10:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:3751
    for (i = 0; i < len; i++) {
    8001eb12:	0007871b          	sext.w	a4,a5
    8001eb16:	03374d63          	blt	a4,s3,8001eb50 <string_buffer_concat+0x6e>
quickjs-nuttx/quickjs.c:3754
    if (s->len + len > s->size) {
    8001eb1a:	481c                	lw	a5,16(s0)
    8001eb1c:	484c                	lw	a1,20(s0)
    8001eb1e:	9fa5                	addw	a5,a5,s1
    8001eb20:	04f5d863          	bge	a1,a5,8001eb70 <string_buffer_concat+0x8e>
quickjs-nuttx/quickjs.c:3755
        if (string_buffer_realloc(s, s->len + len, c))
    8001eb24:	85be                	mv	a1,a5
    8001eb26:	8522                	mv	a0,s0
    8001eb28:	e7bff0ef          	jal	ra,8001e9a2 <string_buffer_realloc>
    8001eb2c:	e915                	bnez	a0,8001eb60 <string_buffer_concat+0x7e>
quickjs-nuttx/quickjs.c:3761
    if (s->is_wide_char) {
    8001eb2e:	4c1c                	lw	a5,24(s0)
    8001eb30:	cfa5                	beqz	a5,8001eba8 <string_buffer_concat+0xc6>
quickjs-nuttx/quickjs.c:3762
        memcpy(&s->str->u.str16[s->len], p, len << 1);
    8001eb32:	481c                	lw	a5,16(s0)
    8001eb34:	6408                	ld	a0,8(s0)
    8001eb36:	0014961b          	slliw	a2,s1,0x1
    8001eb3a:	07a1                	addi	a5,a5,8
    8001eb3c:	0786                	slli	a5,a5,0x1
    8001eb3e:	85ca                	mv	a1,s2
    8001eb40:	953e                	add	a0,a0,a5
    8001eb42:	26a450ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:3763
        s->len += len;
    8001eb46:	4814                	lw	a3,16(s0)
    8001eb48:	9cb5                	addw	s1,s1,a3
quickjs-nuttx/quickjs.c:3768
        s->len += len;
    8001eb4a:	c804                	sw	s1,16(s0)
quickjs-nuttx/quickjs.c:3770
    return 0;
    8001eb4c:	4501                	li	a0,0
    8001eb4e:	a811                	j	8001eb62 <string_buffer_concat+0x80>
quickjs-nuttx/quickjs.c:3752
        c |= p[i];
    8001eb50:	00179713          	slli	a4,a5,0x1
    8001eb54:	974a                	add	a4,a4,s2
    8001eb56:	00075703          	lhu	a4,0(a4)
    8001eb5a:	0785                	addi	a5,a5,1
    8001eb5c:	8e59                	or	a2,a2,a4
quickjs-nuttx/quickjs.c:3751
    for (i = 0; i < len; i++) {
    8001eb5e:	bf55                	j	8001eb12 <string_buffer_concat+0x30>
quickjs-nuttx/quickjs.c:3756
            return -1;
    8001eb60:	557d                	li	a0,-1
string_buffer_concat():
quickjs-nuttx/quickjs.c:3788
}
    8001eb62:	70a2                	ld	ra,40(sp)
    8001eb64:	7402                	ld	s0,32(sp)
    8001eb66:	64e2                	ld	s1,24(sp)
    8001eb68:	6942                	ld	s2,16(sp)
    8001eb6a:	69a2                	ld	s3,8(sp)
    8001eb6c:	6145                	addi	sp,sp,48
    8001eb6e:	8082                	ret
string_buffer_write16():
quickjs-nuttx/quickjs.c:3757
    } else if (!s->is_wide_char && c >= 0x100) {
    8001eb70:	4c1c                	lw	a5,24(s0)
    8001eb72:	f3e1                	bnez	a5,8001eb32 <string_buffer_concat+0x50>
    8001eb74:	0ff00793          	li	a5,255
    8001eb78:	02c7d863          	bge	a5,a2,8001eba8 <string_buffer_concat+0xc6>
quickjs-nuttx/quickjs.c:3758
        if (string_buffer_widen(s, s->size))
    8001eb7c:	8522                	mv	a0,s0
    8001eb7e:	be5fd0ef          	jal	ra,8001c762 <string_buffer_widen>
    8001eb82:	b76d                	j	8001eb2c <string_buffer_concat+0x4a>
quickjs-nuttx/quickjs.c:3766
            s->str->u.str8[s->len + i] = p[i];
    8001eb84:	6414                	ld	a3,8(s0)
    8001eb86:	9fb1                	addw	a5,a5,a2
    8001eb88:	97b6                	add	a5,a5,a3
    8001eb8a:	00171693          	slli	a3,a4,0x1
    8001eb8e:	96ca                	add	a3,a3,s2
    8001eb90:	0006d683          	lhu	a3,0(a3)
    8001eb94:	0705                	addi	a4,a4,1
    8001eb96:	00d78823          	sb	a3,16(a5)
quickjs-nuttx/quickjs.c:3765
        for (i = 0; i < len; i++) {
    8001eb9a:	0007079b          	sext.w	a5,a4
quickjs-nuttx/quickjs.c:3766
            s->str->u.str8[s->len + i] = p[i];
    8001eb9e:	4810                	lw	a2,16(s0)
quickjs-nuttx/quickjs.c:3765
        for (i = 0; i < len; i++) {
    8001eba0:	ff37c2e3          	blt	a5,s3,8001eb84 <string_buffer_concat+0xa2>
quickjs-nuttx/quickjs.c:3768
        s->len += len;
    8001eba4:	9cb1                	addw	s1,s1,a2
    8001eba6:	b755                	j	8001eb4a <string_buffer_concat+0x68>
quickjs-nuttx/quickjs.c:3749
    int c = 0, i;
    8001eba8:	4701                	li	a4,0
    8001ebaa:	bfc5                	j	8001eb9a <string_buffer_concat+0xb8>
string_buffer_concat():
quickjs-nuttx/quickjs.c:3788
}
    8001ebac:	7402                	ld	s0,32(sp)
    8001ebae:	70a2                	ld	ra,40(sp)
    8001ebb0:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:3787
        return string_buffer_write8(s, p->u.str8 + from, to - from);
    8001ebb2:	864e                	mv	a2,s3
    8001ebb4:	00f905b3          	add	a1,s2,a5
quickjs-nuttx/quickjs.c:3788
}
    8001ebb8:	69a2                	ld	s3,8(sp)
    8001ebba:	6942                	ld	s2,16(sp)
    8001ebbc:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:3787
        return string_buffer_write8(s, p->u.str8 + from, to - from);
    8001ebbe:	ea3ff06f          	j	8001ea60 <string_buffer_write8>
quickjs-nuttx/quickjs.c:3783
        return 0;
    8001ebc2:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:3788
}
    8001ebc4:	8082                	ret

000000008001ebc6 <string_buffer_puts8>:
string_buffer_puts8():
quickjs-nuttx/quickjs.c:3775
{
    8001ebc6:	1101                	addi	sp,sp,-32
    8001ebc8:	e822                	sd	s0,16(sp)
    8001ebca:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3776
    return string_buffer_write8(s, (const uint8_t *)str, strlen(str));
    8001ebcc:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:3775
{
    8001ebce:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:3776
    return string_buffer_write8(s, (const uint8_t *)str, strlen(str));
    8001ebd0:	e42e                	sd	a1,8(sp)
    8001ebd2:	1b0450ef          	jal	ra,80063d82 <strlen>
    8001ebd6:	0005061b          	sext.w	a2,a0
    8001ebda:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:3777
}
    8001ebdc:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:3776
    return string_buffer_write8(s, (const uint8_t *)str, strlen(str));
    8001ebde:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:3777
}
    8001ebe0:	60e2                	ld	ra,24(sp)
    8001ebe2:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:3776
    return string_buffer_write8(s, (const uint8_t *)str, strlen(str));
    8001ebe4:	e7dff06f          	j	8001ea60 <string_buffer_write8>

000000008001ebe8 <encodeURI_hex.isra.0>:
encodeURI_hex():
quickjs-nuttx/quickjs.c:49129
static int encodeURI_hex(StringBuffer *b, int c) {
    8001ebe8:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:49134
    buf[n++] = '%';
    8001ebea:	02500793          	li	a5,37
    8001ebee:	00f10423          	sb	a5,8(sp)
quickjs-nuttx/quickjs.c:49129
static int encodeURI_hex(StringBuffer *b, int c) {
    8001ebf2:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:49135
    if (c >= 256) {
    8001ebf4:	0ff00713          	li	a4,255
    8001ebf8:	0004c797          	auipc	a5,0x4c
    8001ebfc:	ca878793          	addi	a5,a5,-856 # 8006a8a0 <qjsc_repl+0x52f0>
    8001ec00:	4605                	li	a2,1
    8001ec02:	02b75763          	bge	a4,a1,8001ec30 <encodeURI_hex.isra.0+0x48>
quickjs-nuttx/quickjs.c:49136
        buf[n++] = 'u';
    8001ec06:	07500713          	li	a4,117
    8001ec0a:	00e104a3          	sb	a4,9(sp)
quickjs-nuttx/quickjs.c:49137
        buf[n++] = hex[(c >> 12) & 15];
    8001ec0e:	40c5d71b          	sraiw	a4,a1,0xc
    8001ec12:	8b3d                	andi	a4,a4,15
    8001ec14:	973e                	add	a4,a4,a5
    8001ec16:	00074703          	lbu	a4,0(a4)
quickjs-nuttx/quickjs.c:49138
        buf[n++] = hex[(c >>  8) & 15];
    8001ec1a:	4611                	li	a2,4
quickjs-nuttx/quickjs.c:49137
        buf[n++] = hex[(c >> 12) & 15];
    8001ec1c:	00e10523          	sb	a4,10(sp)
quickjs-nuttx/quickjs.c:49138
        buf[n++] = hex[(c >>  8) & 15];
    8001ec20:	4085d71b          	sraiw	a4,a1,0x8
    8001ec24:	8b3d                	andi	a4,a4,15
    8001ec26:	973e                	add	a4,a4,a5
    8001ec28:	00074703          	lbu	a4,0(a4)
    8001ec2c:	00e105a3          	sb	a4,11(sp)
quickjs-nuttx/quickjs.c:49140
    buf[n++] = hex[(c >> 4) & 15];
    8001ec30:	0818                	addi	a4,sp,16
    8001ec32:	00c706b3          	add	a3,a4,a2
    8001ec36:	4045d71b          	sraiw	a4,a1,0x4
    8001ec3a:	8b3d                	andi	a4,a4,15
quickjs-nuttx/quickjs.c:49141
    buf[n++] = hex[(c >> 0) & 15];
    8001ec3c:	89bd                	andi	a1,a1,15
quickjs-nuttx/quickjs.c:49140
    buf[n++] = hex[(c >> 4) & 15];
    8001ec3e:	973e                	add	a4,a4,a5
quickjs-nuttx/quickjs.c:49141
    buf[n++] = hex[(c >> 0) & 15];
    8001ec40:	95be                	add	a1,a1,a5
    8001ec42:	0005c783          	lbu	a5,0(a1)
quickjs-nuttx/quickjs.c:49140
    buf[n++] = hex[(c >> 4) & 15];
    8001ec46:	00074703          	lbu	a4,0(a4)
quickjs-nuttx/quickjs.c:49142
    return string_buffer_write8(b, buf, n);
    8001ec4a:	002c                	addi	a1,sp,8
quickjs-nuttx/quickjs.c:49141
    buf[n++] = hex[(c >> 0) & 15];
    8001ec4c:	fef68ca3          	sb	a5,-7(a3)
quickjs-nuttx/quickjs.c:49140
    buf[n++] = hex[(c >> 4) & 15];
    8001ec50:	fee68c23          	sb	a4,-8(a3)
quickjs-nuttx/quickjs.c:49142
    return string_buffer_write8(b, buf, n);
    8001ec54:	0609                	addi	a2,a2,2
    8001ec56:	e0bff0ef          	jal	ra,8001ea60 <string_buffer_write8>
quickjs-nuttx/quickjs.c:49143
}
    8001ec5a:	60e2                	ld	ra,24(sp)
    8001ec5c:	6105                	addi	sp,sp,32
    8001ec5e:	8082                	ret

000000008001ec60 <string_buffer_putc8>:
string_buffer_putc8():
quickjs-nuttx/quickjs.c:3662
{
    8001ec60:	1101                	addi	sp,sp,-32
    8001ec62:	e822                	sd	s0,16(sp)
    8001ec64:	e426                	sd	s1,8(sp)
    8001ec66:	ec06                	sd	ra,24(sp)
    8001ec68:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:3663
    if (unlikely(s->len >= s->size)) {
    8001ec6a:	495c                	lw	a5,20(a0)
    8001ec6c:	490c                	lw	a1,16(a0)
quickjs-nuttx/quickjs.c:3662
{
    8001ec6e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3663
    if (unlikely(s->len >= s->size)) {
    8001ec70:	00f5dd63          	bge	a1,a5,8001ec8a <string_buffer_putc8+0x2a>
quickjs-nuttx/quickjs.c:3668
        s->str->u.str16[s->len++] = c;
    8001ec74:	481c                	lw	a5,16(s0)
quickjs-nuttx/quickjs.c:3667
    if (s->is_wide_char) {
    8001ec76:	4c14                	lw	a3,24(s0)
quickjs-nuttx/quickjs.c:3668
        s->str->u.str16[s->len++] = c;
    8001ec78:	6418                	ld	a4,8(s0)
    8001ec7a:	0017861b          	addiw	a2,a5,1
quickjs-nuttx/quickjs.c:3667
    if (s->is_wide_char) {
    8001ec7e:	e295                	bnez	a3,8001eca2 <string_buffer_putc8+0x42>
quickjs-nuttx/quickjs.c:3670
        s->str->u.str8[s->len++] = c;
    8001ec80:	c810                	sw	a2,16(s0)
    8001ec82:	97ba                	add	a5,a5,a4
    8001ec84:	00978823          	sb	s1,16(a5)
    8001ec88:	a039                	j	8001ec96 <string_buffer_putc8+0x36>
quickjs-nuttx/quickjs.c:3664
        if (string_buffer_realloc(s, s->len + 1, c))
    8001ec8a:	8626                	mv	a2,s1
    8001ec8c:	2585                	addiw	a1,a1,1
    8001ec8e:	d15ff0ef          	jal	ra,8001e9a2 <string_buffer_realloc>
quickjs-nuttx/quickjs.c:3665
            return -1;
    8001ec92:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:3664
        if (string_buffer_realloc(s, s->len + 1, c))
    8001ec94:	d165                	beqz	a0,8001ec74 <string_buffer_putc8+0x14>
quickjs-nuttx/quickjs.c:3673
}
    8001ec96:	60e2                	ld	ra,24(sp)
    8001ec98:	6442                	ld	s0,16(sp)
    8001ec9a:	64a2                	ld	s1,8(sp)
    8001ec9c:	8536                	mv	a0,a3
    8001ec9e:	6105                	addi	sp,sp,32
    8001eca0:	8082                	ret
quickjs-nuttx/quickjs.c:3668
        s->str->u.str16[s->len++] = c;
    8001eca2:	07a1                	addi	a5,a5,8
    8001eca4:	0786                	slli	a5,a5,0x1
    8001eca6:	c810                	sw	a2,16(s0)
    8001eca8:	97ba                	add	a5,a5,a4
    8001ecaa:	00979023          	sh	s1,0(a5)
quickjs-nuttx/quickjs.c:3672
    return 0;
    8001ecae:	4681                	li	a3,0
    8001ecb0:	b7dd                	j	8001ec96 <string_buffer_putc8+0x36>

000000008001ecb2 <string_buffer_putc_slow>:
string_buffer_putc_slow():
quickjs-nuttx/quickjs.c:3643
{
    8001ecb2:	1101                	addi	sp,sp,-32
    8001ecb4:	e822                	sd	s0,16(sp)
    8001ecb6:	e426                	sd	s1,8(sp)
    8001ecb8:	ec06                	sd	ra,24(sp)
    8001ecba:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:3644
    if (unlikely(s->len >= s->size)) {
    8001ecbc:	495c                	lw	a5,20(a0)
    8001ecbe:	490c                	lw	a1,16(a0)
quickjs-nuttx/quickjs.c:3643
{
    8001ecc0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3644
    if (unlikely(s->len >= s->size)) {
    8001ecc2:	02f5d163          	bge	a1,a5,8001ece4 <string_buffer_putc_slow+0x32>
quickjs-nuttx/quickjs.c:3648
    if (s->is_wide_char) {
    8001ecc6:	4c08                	lw	a0,24(s0)
    8001ecc8:	e90d                	bnez	a0,8001ecfa <string_buffer_putc_slow+0x48>
quickjs-nuttx/quickjs.c:3650
    } else if (c < 0x100) {
    8001ecca:	0ff00793          	li	a5,255
    8001ecce:	0497e263          	bltu	a5,s1,8001ed12 <string_buffer_putc_slow+0x60>
quickjs-nuttx/quickjs.c:3651
        s->str->u.str8[s->len++] = c;
    8001ecd2:	4818                	lw	a4,16(s0)
    8001ecd4:	641c                	ld	a5,8(s0)
    8001ecd6:	0017069b          	addiw	a3,a4,1
    8001ecda:	c814                	sw	a3,16(s0)
    8001ecdc:	97ba                	add	a5,a5,a4
    8001ecde:	00978823          	sb	s1,16(a5)
    8001ece2:	a039                	j	8001ecf0 <string_buffer_putc_slow+0x3e>
quickjs-nuttx/quickjs.c:3645
        if (string_buffer_realloc(s, s->len + 1, c))
    8001ece4:	8626                	mv	a2,s1
    8001ece6:	2585                	addiw	a1,a1,1
    8001ece8:	cbbff0ef          	jal	ra,8001e9a2 <string_buffer_realloc>
    8001ecec:	dd69                	beqz	a0,8001ecc6 <string_buffer_putc_slow+0x14>
quickjs-nuttx/quickjs.c:3646
            return -1;
    8001ecee:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:3658
}
    8001ecf0:	60e2                	ld	ra,24(sp)
    8001ecf2:	6442                	ld	s0,16(sp)
    8001ecf4:	64a2                	ld	s1,8(sp)
    8001ecf6:	6105                	addi	sp,sp,32
    8001ecf8:	8082                	ret
quickjs-nuttx/quickjs.c:3649
        s->str->u.str16[s->len++] = c;
    8001ecfa:	481c                	lw	a5,16(s0)
    8001ecfc:	6418                	ld	a4,8(s0)
quickjs-nuttx/quickjs.c:3657
    return 0;
    8001ecfe:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:3649
        s->str->u.str16[s->len++] = c;
    8001ed00:	0017869b          	addiw	a3,a5,1
    8001ed04:	07a1                	addi	a5,a5,8
    8001ed06:	0786                	slli	a5,a5,0x1
    8001ed08:	c814                	sw	a3,16(s0)
    8001ed0a:	97ba                	add	a5,a5,a4
    8001ed0c:	00979023          	sh	s1,0(a5)
    8001ed10:	b7c5                	j	8001ecf0 <string_buffer_putc_slow+0x3e>
quickjs-nuttx/quickjs.c:3653
        if (string_buffer_widen(s, s->size))
    8001ed12:	484c                	lw	a1,20(s0)
    8001ed14:	8522                	mv	a0,s0
    8001ed16:	a4dfd0ef          	jal	ra,8001c762 <string_buffer_widen>
    8001ed1a:	f971                	bnez	a0,8001ecee <string_buffer_putc_slow+0x3c>
quickjs-nuttx/quickjs.c:3655
        s->str->u.str16[s->len++] = c;
    8001ed1c:	481c                	lw	a5,16(s0)
    8001ed1e:	6418                	ld	a4,8(s0)
    8001ed20:	0017869b          	addiw	a3,a5,1
    8001ed24:	07a1                	addi	a5,a5,8
    8001ed26:	0786                	slli	a5,a5,0x1
    8001ed28:	c814                	sw	a3,16(s0)
    8001ed2a:	97ba                	add	a5,a5,a4
    8001ed2c:	00979023          	sh	s1,0(a5)
    8001ed30:	b7c1                	j	8001ecf0 <string_buffer_putc_slow+0x3e>

000000008001ed32 <string_buffer_putc16>:
string_buffer_putc16():
quickjs-nuttx/quickjs.c:3678
    if (likely(s->len < s->size)) {
    8001ed32:	491c                	lw	a5,16(a0)
    8001ed34:	4958                	lw	a4,20(a0)
    8001ed36:	02e7db63          	bge	a5,a4,8001ed6c <string_buffer_putc16+0x3a>
quickjs-nuttx/quickjs.c:3679
        if (s->is_wide_char) {
    8001ed3a:	4d18                	lw	a4,24(a0)
    8001ed3c:	cf01                	beqz	a4,8001ed54 <string_buffer_putc16+0x22>
quickjs-nuttx/quickjs.c:3680
            s->str->u.str16[s->len++] = c;
    8001ed3e:	6518                	ld	a4,8(a0)
    8001ed40:	0017869b          	addiw	a3,a5,1
    8001ed44:	07a1                	addi	a5,a5,8
    8001ed46:	0786                	slli	a5,a5,0x1
    8001ed48:	c914                	sw	a3,16(a0)
    8001ed4a:	97ba                	add	a5,a5,a4
    8001ed4c:	00b79023          	sh	a1,0(a5)
quickjs-nuttx/quickjs.c:3688
}
    8001ed50:	4501                	li	a0,0
    8001ed52:	8082                	ret
quickjs-nuttx/quickjs.c:3682
        } else if (c < 0x100) {
    8001ed54:	0ff00713          	li	a4,255
    8001ed58:	00b76a63          	bltu	a4,a1,8001ed6c <string_buffer_putc16+0x3a>
quickjs-nuttx/quickjs.c:3683
            s->str->u.str8[s->len++] = c;
    8001ed5c:	6518                	ld	a4,8(a0)
    8001ed5e:	0017869b          	addiw	a3,a5,1
    8001ed62:	c914                	sw	a3,16(a0)
    8001ed64:	97ba                	add	a5,a5,a4
    8001ed66:	00b78823          	sb	a1,16(a5)
quickjs-nuttx/quickjs.c:3684
            return 0;
    8001ed6a:	b7dd                	j	8001ed50 <string_buffer_putc16+0x1e>
quickjs-nuttx/quickjs.c:3687
    return string_buffer_putc_slow(s, c);
    8001ed6c:	f47ff06f          	j	8001ecb2 <string_buffer_putc_slow>

000000008001ed70 <string_buffer_putc>:
string_buffer_putc():
quickjs-nuttx/quickjs.c:3692
{
    8001ed70:	1101                	addi	sp,sp,-32
    8001ed72:	e04a                	sd	s2,0(sp)
    8001ed74:	ec06                	sd	ra,24(sp)
    8001ed76:	e822                	sd	s0,16(sp)
    8001ed78:	e426                	sd	s1,8(sp)
quickjs-nuttx/quickjs.c:3693
    if (unlikely(c >= 0x10000)) {
    8001ed7a:	67c1                	lui	a5,0x10
quickjs-nuttx/quickjs.c:3692
{
    8001ed7c:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:3693
    if (unlikely(c >= 0x10000)) {
    8001ed7e:	02f5e263          	bltu	a1,a5,8001eda2 <string_buffer_putc+0x32>
quickjs-nuttx/quickjs.c:3695
        c -= 0x10000;
    8001ed82:	74c1                	lui	s1,0xffff0
    8001ed84:	9cad                	addw	s1,s1,a1
quickjs-nuttx/quickjs.c:3696
        if (string_buffer_putc16(s, (c >> 10) + 0xd800))
    8001ed86:	6439                	lui	s0,0xe
    8001ed88:	00a4d59b          	srliw	a1,s1,0xa
    8001ed8c:	8004079b          	addiw	a5,s0,-2048
    8001ed90:	9dbd                	addw	a1,a1,a5
    8001ed92:	fa1ff0ef          	jal	ra,8001ed32 <string_buffer_putc16>
    8001ed96:	ed11                	bnez	a0,8001edb2 <string_buffer_putc+0x42>
quickjs-nuttx/quickjs.c:3698
        c = (c & 0x3ff) + 0xdc00;
    8001ed98:	3ff4f493          	andi	s1,s1,1023
    8001ed9c:	c004059b          	addiw	a1,s0,-1024
    8001eda0:	9da5                	addw	a1,a1,s1
quickjs-nuttx/quickjs.c:3701
}
    8001eda2:	6442                	ld	s0,16(sp)
    8001eda4:	60e2                	ld	ra,24(sp)
    8001eda6:	64a2                	ld	s1,8(sp)
quickjs-nuttx/quickjs.c:3700
    return string_buffer_putc16(s, c);
    8001eda8:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:3701
}
    8001edaa:	6902                	ld	s2,0(sp)
    8001edac:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:3700
    return string_buffer_putc16(s, c);
    8001edae:	f85ff06f          	j	8001ed32 <string_buffer_putc16>
quickjs-nuttx/quickjs.c:3701
}
    8001edb2:	60e2                	ld	ra,24(sp)
    8001edb4:	6442                	ld	s0,16(sp)
    8001edb6:	64a2                	ld	s1,8(sp)
    8001edb8:	6902                	ld	s2,0(sp)
    8001edba:	557d                	li	a0,-1
    8001edbc:	6105                	addi	sp,sp,32
    8001edbe:	8082                	ret

000000008001edc0 <string_buffer_fill>:
string_buffer_fill():
quickjs-nuttx/quickjs.c:3835
{
    8001edc0:	1101                	addi	sp,sp,-32
    8001edc2:	e822                	sd	s0,16(sp)
    8001edc4:	e426                	sd	s1,8(sp)
    8001edc6:	e04a                	sd	s2,0(sp)
    8001edc8:	ec06                	sd	ra,24(sp)
    8001edca:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:3837
    if (s->len + count > s->size) {
    8001edcc:	490c                	lw	a1,16(a0)
    8001edce:	495c                	lw	a5,20(a0)
quickjs-nuttx/quickjs.c:3835
{
    8001edd0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:3837
    if (s->len + count > s->size) {
    8001edd2:	9db1                	addw	a1,a1,a2
quickjs-nuttx/quickjs.c:3835
{
    8001edd4:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:3837
    if (s->len + count > s->size) {
    8001edd6:	02b7d763          	bge	a5,a1,8001ee04 <string_buffer_fill+0x44>
quickjs-nuttx/quickjs.c:3838
        if (string_buffer_realloc(s, s->len + count, c))
    8001edda:	8626                	mv	a2,s1
    8001eddc:	bc7ff0ef          	jal	ra,8001e9a2 <string_buffer_realloc>
    8001ede0:	c115                	beqz	a0,8001ee04 <string_buffer_fill+0x44>
quickjs-nuttx/quickjs.c:3839
            return -1;
    8001ede2:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:3846
}
    8001ede4:	60e2                	ld	ra,24(sp)
    8001ede6:	6442                	ld	s0,16(sp)
    8001ede8:	64a2                	ld	s1,8(sp)
    8001edea:	6902                	ld	s2,0(sp)
    8001edec:	6105                	addi	sp,sp,32
    8001edee:	8082                	ret
quickjs-nuttx/quickjs.c:3842
        if (string_buffer_putc16(s, c))
    8001edf0:	85a6                	mv	a1,s1
    8001edf2:	854a                	mv	a0,s2
    8001edf4:	f3fff0ef          	jal	ra,8001ed32 <string_buffer_putc16>
    8001edf8:	347d                	addiw	s0,s0,-1
    8001edfa:	f565                	bnez	a0,8001ede2 <string_buffer_fill+0x22>
quickjs-nuttx/quickjs.c:3841
    while (count-- > 0) {
    8001edfc:	fe804ae3          	bgtz	s0,8001edf0 <string_buffer_fill+0x30>
quickjs-nuttx/quickjs.c:3845
    return 0;
    8001ee00:	4501                	li	a0,0
    8001ee02:	b7cd                	j	8001ede4 <string_buffer_fill+0x24>
    8001ee04:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:3842
        if (string_buffer_putc16(s, c))
    8001ee06:	2481                	sext.w	s1,s1
    8001ee08:	bfd5                	j	8001edfc <string_buffer_fill+0x3c>

000000008001ee0a <JS_NewStringLen>:
JS_NewStringLen():
quickjs-nuttx/quickjs.c:3882
{
    8001ee0a:	7175                	addi	sp,sp,-144
    8001ee0c:	e122                	sd	s0,128(sp)
    8001ee0e:	fca6                	sd	s1,120(sp)
    8001ee10:	f8ca                	sd	s2,112(sp)
    8001ee12:	e506                	sd	ra,136(sp)
    8001ee14:	f4ce                	sd	s3,104(sp)
    8001ee16:	f0d2                	sd	s4,96(sp)
    8001ee18:	ecd6                	sd	s5,88(sp)
    8001ee1a:	e8da                	sd	s6,80(sp)
    8001ee1c:	e4de                	sd	s7,72(sp)
    8001ee1e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:3889
    p_end = p_start + buf_len;
    8001ee20:	00c58933          	add	s2,a1,a2
quickjs-nuttx/quickjs.c:3890
    p = p_start;
    8001ee24:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:3891
    while (p < p_end && *p < 128)
    8001ee26:	01247663          	bgeu	s0,s2,8001ee32 <JS_NewStringLen+0x28>
quickjs-nuttx/quickjs.c:3891 (discriminator 1)
    8001ee2a:	00040783          	lb	a5,0(s0) # e000 <asinh-0x7fff2000>
    8001ee2e:	0207d863          	bgez	a5,8001ee5e <JS_NewStringLen+0x54>
quickjs-nuttx/quickjs.c:3893
    len1 = p - p_start;
    8001ee32:	409409b3          	sub	s3,s0,s1
quickjs-nuttx/quickjs.c:3894
    if (len1 > JS_STRING_LEN_MAX)
    8001ee36:	400007b7          	lui	a5,0x40000
    8001ee3a:	02f9e463          	bltu	s3,a5,8001ee62 <JS_NewStringLen+0x58>
quickjs-nuttx/quickjs.c:3939
}
    8001ee3e:	640a                	ld	s0,128(sp)
    8001ee40:	60aa                	ld	ra,136(sp)
    8001ee42:	74e6                	ld	s1,120(sp)
    8001ee44:	7946                	ld	s2,112(sp)
    8001ee46:	79a6                	ld	s3,104(sp)
    8001ee48:	7a06                	ld	s4,96(sp)
    8001ee4a:	6ae6                	ld	s5,88(sp)
    8001ee4c:	6b46                	ld	s6,80(sp)
    8001ee4e:	6ba6                	ld	s7,72(sp)
quickjs-nuttx/quickjs.c:3895
        return JS_ThrowInternalError(ctx, "string too long");
    8001ee50:	0004c597          	auipc	a1,0x4c
    8001ee54:	a4058593          	addi	a1,a1,-1472 # 8006a890 <qjsc_repl+0x52e0>
quickjs-nuttx/quickjs.c:3939
}
    8001ee58:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:3895
        return JS_ThrowInternalError(ctx, "string too long");
    8001ee5a:	a9ffa06f          	j	800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:3892
        p++;
    8001ee5e:	0405                	addi	s0,s0,1
    8001ee60:	b7d9                	j	8001ee26 <JS_NewStringLen+0x1c>
quickjs-nuttx/quickjs.c:3898
        return js_new_string8(ctx, (const uint8_t *)buf, buf_len);
    8001ee62:	2601                	sext.w	a2,a2
quickjs-nuttx/quickjs.c:3896
    if (p == p_end) {
    8001ee64:	01241f63          	bne	s0,s2,8001ee82 <JS_NewStringLen+0x78>
quickjs-nuttx/quickjs.c:3939
}
    8001ee68:	640a                	ld	s0,128(sp)
    8001ee6a:	60aa                	ld	ra,136(sp)
    8001ee6c:	7946                	ld	s2,112(sp)
    8001ee6e:	79a6                	ld	s3,104(sp)
    8001ee70:	7a06                	ld	s4,96(sp)
    8001ee72:	6ae6                	ld	s5,88(sp)
    8001ee74:	6b46                	ld	s6,80(sp)
    8001ee76:	6ba6                	ld	s7,72(sp)
quickjs-nuttx/quickjs.c:3898
        return js_new_string8(ctx, (const uint8_t *)buf, buf_len);
    8001ee78:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:3939
}
    8001ee7a:	74e6                	ld	s1,120(sp)
    8001ee7c:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:3898
        return js_new_string8(ctx, (const uint8_t *)buf, buf_len);
    8001ee7e:	0ca0106f          	j	8001ff48 <js_new_string8>
quickjs-nuttx/quickjs.c:3900
        if (string_buffer_init(ctx, b, buf_len))
    8001ee82:	100c                	addi	a1,sp,32
    8001ee84:	8f8ff0ef          	jal	ra,8001df7c <string_buffer_init>
    8001ee88:	c505                	beqz	a0,8001eeb0 <JS_NewStringLen+0xa6>
quickjs-nuttx/quickjs.c:3937
    string_buffer_free(b);
    8001ee8a:	1008                	addi	a0,sp,32
    8001ee8c:	996ec0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:3938
    return JS_EXCEPTION;
    8001ee90:	4799                	li	a5,6
    8001ee92:	e802                	sd	zero,16(sp)
    8001ee94:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:3939
}
    8001ee96:	60aa                	ld	ra,136(sp)
    8001ee98:	640a                	ld	s0,128(sp)
    8001ee9a:	6542                	ld	a0,16(sp)
    8001ee9c:	65e2                	ld	a1,24(sp)
    8001ee9e:	74e6                	ld	s1,120(sp)
    8001eea0:	7946                	ld	s2,112(sp)
    8001eea2:	79a6                	ld	s3,104(sp)
    8001eea4:	7a06                	ld	s4,96(sp)
    8001eea6:	6ae6                	ld	s5,88(sp)
    8001eea8:	6b46                	ld	s6,80(sp)
    8001eeaa:	6ba6                	ld	s7,72(sp)
    8001eeac:	6149                	addi	sp,sp,144
    8001eeae:	8082                	ret
quickjs-nuttx/quickjs.c:3902
        string_buffer_write8(b, p_start, len1);
    8001eeb0:	0009861b          	sext.w	a2,s3
    8001eeb4:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:3915
                    string_buffer_putc16(b, (c >> 10) + 0xd800);
    8001eeb6:	69b9                	lui	s3,0xe
quickjs-nuttx/quickjs.c:3902
        string_buffer_write8(b, p_start, len1);
    8001eeb8:	1008                	addi	a0,sp,32
quickjs-nuttx/quickjs.c:3909
                if (c < 0x10000) {
    8001eeba:	6ac1                	lui	s5,0x10
quickjs-nuttx/quickjs.c:3915
                    string_buffer_putc16(b, (c >> 10) + 0xd800);
    8001eebc:	80098b9b          	addiw	s7,s3,-2048
quickjs-nuttx/quickjs.c:3902
        string_buffer_write8(b, p_start, len1);
    8001eec0:	ba1ff0ef          	jal	ra,8001ea60 <string_buffer_write8>
quickjs-nuttx/quickjs.c:3922
                    while (p < p_end && (*p >= 0x80 && *p < 0xc0))
    8001eec4:	03f00b13          	li	s6,63
quickjs-nuttx/quickjs.c:3919
                    c = 0xfffd;
    8001eec8:	ffda8a13          	addi	s4,s5,-3 # fffd <asinh-0x7fff0003>
quickjs-nuttx/quickjs.c:3916
                    c = (c & 0x3ff) + 0xdc00;
    8001eecc:	c009899b          	addiw	s3,s3,-1024
quickjs-nuttx/quickjs.c:3903
        while (p < p_end) {
    8001eed0:	01246863          	bltu	s0,s2,8001eee0 <JS_NewStringLen+0xd6>
quickjs-nuttx/quickjs.c:3934
    return string_buffer_end(b);
    8001eed4:	1008                	addi	a0,sp,32
    8001eed6:	5cb000ef          	jal	ra,8001fca0 <string_buffer_end>
    8001eeda:	e82a                	sd	a0,16(sp)
    8001eedc:	ec2e                	sd	a1,24(sp)
    8001eede:	bf65                	j	8001ee96 <JS_NewStringLen+0x8c>
quickjs-nuttx/quickjs.c:3904
            if (*p < 128) {
    8001eee0:	00044583          	lbu	a1,0(s0)
    8001eee4:	0185979b          	slliw	a5,a1,0x18
    8001eee8:	4187d79b          	sraiw	a5,a5,0x18
    8001eeec:	0007c763          	bltz	a5,8001eefa <JS_NewStringLen+0xf0>
quickjs-nuttx/quickjs.c:3905
                string_buffer_putc8(b, *p++);
    8001eef0:	1008                	addi	a0,sp,32
    8001eef2:	0405                	addi	s0,s0,1
    8001eef4:	d6dff0ef          	jal	ra,8001ec60 <string_buffer_putc8>
    8001eef8:	bfe1                	j	8001eed0 <JS_NewStringLen+0xc6>
quickjs-nuttx/quickjs.c:3908
                c = unicode_from_utf8(p, p_end - p, &p_next);
    8001eefa:	408905bb          	subw	a1,s2,s0
    8001eefe:	0030                	addi	a2,sp,8
    8001ef00:	8522                	mv	a0,s0
    8001ef02:	5b9320ef          	jal	ra,80051cba <unicode_from_utf8>
    8001ef06:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:3909
                if (c < 0x10000) {
    8001ef0a:	0155f763          	bgeu	a1,s5,8001ef18 <JS_NewStringLen+0x10e>
quickjs-nuttx/quickjs.c:3910
                    p = p_next;
    8001ef0e:	6422                	ld	s0,8(sp)
quickjs-nuttx/quickjs.c:3930
                string_buffer_putc16(b, c);
    8001ef10:	1008                	addi	a0,sp,32
    8001ef12:	e21ff0ef          	jal	ra,8001ed32 <string_buffer_putc16>
    8001ef16:	bf6d                	j	8001eed0 <JS_NewStringLen+0xc6>
quickjs-nuttx/quickjs.c:3911
                } else if (c <= 0x10FFFF) {
    8001ef18:	001107b7          	lui	a5,0x110
    8001ef1c:	02f5f363          	bgeu	a1,a5,8001ef42 <JS_NewStringLen+0x138>
quickjs-nuttx/quickjs.c:3914
                    c -= 0x10000;
    8001ef20:	74c1                	lui	s1,0xffff0
    8001ef22:	9cad                	addw	s1,s1,a1
quickjs-nuttx/quickjs.c:3915
                    string_buffer_putc16(b, (c >> 10) + 0xd800);
    8001ef24:	00a4d59b          	srliw	a1,s1,0xa
    8001ef28:	017585bb          	addw	a1,a1,s7
    8001ef2c:	1008                	addi	a0,sp,32
quickjs-nuttx/quickjs.c:3912
                    p = p_next;
    8001ef2e:	6422                	ld	s0,8(sp)
quickjs-nuttx/quickjs.c:3915
                    string_buffer_putc16(b, (c >> 10) + 0xd800);
    8001ef30:	e03ff0ef          	jal	ra,8001ed32 <string_buffer_putc16>
quickjs-nuttx/quickjs.c:3916
                    c = (c & 0x3ff) + 0xdc00;
    8001ef34:	3ff4f593          	andi	a1,s1,1023
    8001ef38:	00b985bb          	addw	a1,s3,a1
    8001ef3c:	bfd1                	j	8001ef10 <JS_NewStringLen+0x106>
quickjs-nuttx/quickjs.c:3922
                    while (p < p_end && (*p >= 0x80 && *p < 0xc0))
    8001ef3e:	02890163          	beq	s2,s0,8001ef60 <JS_NewStringLen+0x156>
quickjs-nuttx/quickjs.c:3922 (discriminator 1)
    8001ef42:	00044783          	lbu	a5,0(s0)
quickjs-nuttx/quickjs.c:3923 (discriminator 1)
                        p++;
    8001ef46:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:3922 (discriminator 1)
                    while (p < p_end && (*p >= 0x80 && *p < 0xc0))
    8001ef48:	0807c793          	xori	a5,a5,128
    8001ef4c:	fefb79e3          	bgeu	s6,a5,8001ef3e <JS_NewStringLen+0x134>
quickjs-nuttx/quickjs.c:3926
                        while (p < p_end && (*p >= 0x80 && *p < 0xc0))
    8001ef50:	01247863          	bgeu	s0,s2,8001ef60 <JS_NewStringLen+0x156>
quickjs-nuttx/quickjs.c:3926 (discriminator 1)
    8001ef54:	00044783          	lbu	a5,0(s0)
    8001ef58:	0807c793          	xori	a5,a5,128
    8001ef5c:	00fb7463          	bgeu	s6,a5,8001ef64 <JS_NewStringLen+0x15a>
quickjs-nuttx/quickjs.c:3919
                    c = 0xfffd;
    8001ef60:	85d2                	mv	a1,s4
    8001ef62:	b77d                	j	8001ef10 <JS_NewStringLen+0x106>
quickjs-nuttx/quickjs.c:3927
                            p++;
    8001ef64:	0405                	addi	s0,s0,1
    8001ef66:	b7ed                	j	8001ef50 <JS_NewStringLen+0x146>

000000008001ef68 <JS_NewAtomLen>:
JS_NewAtomLen():
quickjs-nuttx/quickjs.c:2960
{
    8001ef68:	7179                	addi	sp,sp,-48
    8001ef6a:	f022                	sd	s0,32(sp)
    8001ef6c:	f406                	sd	ra,40(sp)
    8001ef6e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:2963
    if (len == 0 || !is_digit(*str)) {
    8001ef70:	c20d                	beqz	a2,8001ef92 <JS_NewAtomLen+0x2a>
is_digit():
quickjs-nuttx/quickjs.c:1459 (discriminator 1)
    return c >= '0' && c <= '9';
    8001ef72:	0005c783          	lbu	a5,0(a1)
JS_NewAtomLen():
quickjs-nuttx/quickjs.c:2963 (discriminator 1)
    if (len == 0 || !is_digit(*str)) {
    8001ef76:	4725                	li	a4,9
    8001ef78:	fd07879b          	addiw	a5,a5,-48
    8001ef7c:	00f76b63          	bltu	a4,a5,8001ef92 <JS_NewAtomLen+0x2a>
quickjs-nuttx/quickjs.c:2968
    val = JS_NewStringLen(ctx, str, len);
    8001ef80:	8522                	mv	a0,s0
    8001ef82:	e89ff0ef          	jal	ra,8001ee0a <JS_NewStringLen>
quickjs-nuttx/quickjs.c:2969
    if (JS_IsException(val))
    8001ef86:	2581                	sext.w	a1,a1
    8001ef88:	4799                	li	a5,6
    8001ef8a:	02f59163          	bne	a1,a5,8001efac <JS_NewAtomLen+0x44>
quickjs-nuttx/quickjs.c:2970
        return JS_ATOM_NULL;
    8001ef8e:	4501                	li	a0,0
    8001ef90:	a811                	j	8001efa4 <JS_NewAtomLen+0x3c>
quickjs-nuttx/quickjs.c:2964
        JSAtom atom = __JS_FindAtom(ctx->rt, str, len, JS_ATOM_TYPE_STRING);
    8001ef92:	6c08                	ld	a0,24(s0)
    8001ef94:	e432                	sd	a2,8(sp)
    8001ef96:	e02e                	sd	a1,0(sp)
    8001ef98:	8deeb0ef          	jal	ra,8000a076 <__JS_FindAtom.constprop.0>
    8001ef9c:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:2965
        if (atom)
    8001ef9e:	6582                	ld	a1,0(sp)
    8001efa0:	6622                	ld	a2,8(sp)
    8001efa2:	dd79                	beqz	a0,8001ef80 <JS_NewAtomLen+0x18>
quickjs-nuttx/quickjs.c:2972
}
    8001efa4:	70a2                	ld	ra,40(sp)
    8001efa6:	7402                	ld	s0,32(sp)
    8001efa8:	6145                	addi	sp,sp,48
    8001efaa:	8082                	ret
quickjs-nuttx/quickjs.c:2971
    return JS_NewAtomStr(ctx, JS_VALUE_GET_STRING(val));
    8001efac:	85aa                	mv	a1,a0
    8001efae:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:2972
}
    8001efb0:	7402                	ld	s0,32(sp)
    8001efb2:	70a2                	ld	ra,40(sp)
    8001efb4:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:2971
    return JS_NewAtomStr(ctx, JS_VALUE_GET_STRING(val));
    8001efb6:	fffeb06f          	j	8000afb4 <JS_NewAtomStr>

000000008001efba <JS_NewAtom>:
JS_NewAtom():
quickjs-nuttx/quickjs.c:2975
{
    8001efba:	1101                	addi	sp,sp,-32
    8001efbc:	e822                	sd	s0,16(sp)
    8001efbe:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:2976
    return JS_NewAtomLen(ctx, str, strlen(str));
    8001efc0:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:2975
{
    8001efc2:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:2976
    return JS_NewAtomLen(ctx, str, strlen(str));
    8001efc4:	e42e                	sd	a1,8(sp)
    8001efc6:	5bd440ef          	jal	ra,80063d82 <strlen>
    8001efca:	862a                	mv	a2,a0
    8001efcc:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:2977
}
    8001efce:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:2976
    return JS_NewAtomLen(ctx, str, strlen(str));
    8001efd0:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:2977
}
    8001efd2:	60e2                	ld	ra,24(sp)
    8001efd4:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:2976
    return JS_NewAtomLen(ctx, str, strlen(str));
    8001efd6:	f93ff06f          	j	8001ef68 <JS_NewAtomLen>

000000008001efda <js_host_resolve_imported_module>:
js_host_resolve_imported_module():
quickjs-nuttx/quickjs.c:27436
{
    8001efda:	715d                	addi	sp,sp,-80
    8001efdc:	fc26                	sd	s1,56(sp)
    8001efde:	e486                	sd	ra,72(sp)
    8001efe0:	e0a2                	sd	s0,64(sp)
    8001efe2:	f84a                	sd	s2,48(sp)
    8001efe4:	f44e                	sd	s3,40(sp)
    8001efe6:	f052                	sd	s4,32(sp)
    8001efe8:	ec56                	sd	s5,24(sp)
    8001efea:	e85a                	sd	s6,16(sp)
    8001efec:	e45e                	sd	s7,8(sp)
    8001efee:	e062                	sd	s8,0(sp)
quickjs-nuttx/quickjs.c:27437
    JSRuntime *rt = ctx->rt;
    8001eff0:	01853a83          	ld	s5,24(a0)
quickjs-nuttx/quickjs.c:27436
{
    8001eff4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:27442
    if (!rt->module_normalize_func) {
    8001eff6:	130ab783          	ld	a5,304(s5)
    8001effa:	10079c63          	bnez	a5,8001f112 <js_host_resolve_imported_module+0x138>
js_default_module_normalize_name():
quickjs-nuttx/quickjs.c:27369
    if (name[0] != '.') {
    8001effe:	00064703          	lbu	a4,0(a2)
