    80027000:	bf35                	j	80026f3c <js_unary_arith_bigint+0x40>
quickjs-nuttx/quickjs.c:12872
        ret = bf_set(r, a);
    80027002:	85aa                	mv	a1,a0
    80027004:	8556                	mv	a0,s5
    80027006:	01c310ef          	jal	ra,80058022 <bf_set>
    8002700a:	b7f1                	j	80026fd6 <js_unary_arith_bigint+0xda>
quickjs-nuttx/quickjs.c:12875
        ret = bf_set(r, a);
    8002700c:	85aa                	mv	a1,a0
    8002700e:	8556                	mv	a0,s5
    80027010:	012310ef          	jal	ra,80058022 <bf_set>
bf_neg():
quickjs-nuttx/libbf.h:231
    r->sign ^= 1;
    80027014:	0109a783          	lw	a5,16(s3)
js_unary_arith_bigint():
quickjs-nuttx/quickjs.c:12879
        ret = bf_add_si(r, a, 1, BF_PREC_INF, BF_RNDZ);
    80027018:	842a                	mv	s0,a0
bf_neg():
quickjs-nuttx/libbf.h:231
    8002701a:	0017c793          	xori	a5,a5,1
    8002701e:	00f9a823          	sw	a5,16(s3)
quickjs-nuttx/libbf.h:232
}
    80027022:	bf5d                	j	80026fd8 <js_unary_arith_bigint+0xdc>
js_unary_arith_bigint():
quickjs-nuttx/quickjs.c:12892
    res = JS_CompactBigInt(ctx, res);
    80027024:	e2be50ef          	jal	ra,8000ce4e <JS_CompactBigInt>
quickjs-nuttx/quickjs.c:12893
    *pres = res;
    80027028:	00aa3023          	sd	a0,0(s4)
    8002702c:	00ba3423          	sd	a1,8(s4)
quickjs-nuttx/quickjs.c:12894
    return 0;
    80027030:	b739                	j	80026f3e <js_unary_arith_bigint+0x42>

0000000080027032 <js_bigint_op1>:
js_bigint_op1():
quickjs-nuttx/quickjs.c:50769
{
    80027032:	7159                	addi	sp,sp,-112
    80027034:	eca6                	sd	s1,88(sp)
    80027036:	e8ca                	sd	s2,80(sp)
    80027038:	f486                	sd	ra,104(sp)
    8002703a:	f0a2                	sd	s0,96(sp)
    8002703c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:50773
    a = JS_ToBigInt(ctx, &a_s, argv[0]);
    8002703e:	6714                	ld	a3,8(a4)
    80027040:	6310                	ld	a2,0(a4)
quickjs-nuttx/quickjs.c:50769
{
    80027042:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:50773
    a = JS_ToBigInt(ctx, &a_s, argv[0]);
    80027044:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs.c:50769
{
    80027046:	892a                	mv	s2,a0
    80027048:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:50773
    a = JS_ToBigInt(ctx, &a_s, argv[0]);
    8002704a:	aefff0ef          	jal	ra,80026b38 <JS_ToBigInt>
quickjs-nuttx/quickjs.c:50774
    if (!a)
    8002704e:	ed01                	bnez	a0,80027066 <js_bigint_op1+0x34>
quickjs-nuttx/quickjs.c:50775
        return JS_EXCEPTION;
    80027050:	4799                	li	a5,6
    80027052:	ec02                	sd	zero,24(sp)
    80027054:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:50796 (discriminator 1)
}
    80027056:	70a6                	ld	ra,104(sp)
    80027058:	7406                	ld	s0,96(sp)
    8002705a:	6562                	ld	a0,24(sp)
    8002705c:	7582                	ld	a1,32(sp)
    8002705e:	64e6                	ld	s1,88(sp)
    80027060:	6946                	ld	s2,80(sp)
    80027062:	6165                	addi	sp,sp,112
    80027064:	8082                	ret
    80027066:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:50776
    switch(magic) {
    80027068:	c491                	beqz	s1,80027074 <js_bigint_op1+0x42>
    8002706a:	4785                	li	a5,1
    8002706c:	02f48863          	beq	s1,a5,8002709c <js_bigint_op1+0x6a>
quickjs-nuttx/quickjs.c:50792
        abort();
    80027070:	3133b0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:50778
        if (a->sign || a->expn <= 0) {
    80027074:	451c                	lw	a5,8(a0)
quickjs-nuttx/quickjs.c:50779
            res = -1;
    80027076:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:50778
        if (a->sign || a->expn <= 0) {
    80027078:	e791                	bnez	a5,80027084 <js_bigint_op1+0x52>
quickjs-nuttx/quickjs.c:50778 (discriminator 1)
    8002707a:	691c                	ld	a5,16(a0)
    8002707c:	00f05463          	blez	a5,80027084 <js_bigint_op1+0x52>
quickjs-nuttx/quickjs.c:50781
            res = a->expn - 1;
    80027080:	fff78493          	addi	s1,a5,-1
quickjs-nuttx/quickjs.c:50794
    JS_FreeBigInt(ctx, a, &a_s);
    80027084:	1030                	addi	a2,sp,40
    80027086:	85a2                	mv	a1,s0
    80027088:	854a                	mv	a0,s2
    8002708a:	b9de40ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:50795
    return JS_NewBigInt64(ctx, res);
    8002708e:	85a6                	mv	a1,s1
    80027090:	854a                	mv	a0,s2
    80027092:	818f70ef          	jal	ra,8001e0aa <JS_NewBigInt64>
    80027096:	ec2a                	sd	a0,24(sp)
    80027098:	f02e                	sd	a1,32(sp)
    8002709a:	bf75                	j	80027056 <js_bigint_op1+0x24>
quickjs-nuttx/quickjs.c:50785
        if (bf_is_zero(a)) {
    8002709c:	6918                	ld	a4,16(a0)
    8002709e:	57fd                	li	a5,-1
    800270a0:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/quickjs.c:50779
            res = -1;
    800270a2:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:50785
        if (bf_is_zero(a)) {
    800270a4:	fef700e3          	beq	a4,a5,80027084 <js_bigint_op1+0x52>
quickjs-nuttx/quickjs.c:50788
            res = bf_get_exp_min(a);
    800270a8:	219310ef          	jal	ra,80058ac0 <bf_get_exp_min>
    800270ac:	84aa                	mv	s1,a0
    800270ae:	bfd9                	j	80027084 <js_bigint_op1+0x52>

00000000800270b0 <js_atomics_store>:
js_atomics_store():
quickjs-nuttx/quickjs.c:55253
{
    800270b0:	716d                	addi	sp,sp,-272
    800270b2:	e222                	sd	s0,256(sp)
    800270b4:	fda6                	sd	s1,248(sp)
    800270b6:	e606                	sd	ra,264(sp)
    800270b8:	f9ca                	sd	s2,240(sp)
    800270ba:	f5ce                	sd	s3,232(sp)
    800270bc:	f1d2                	sd	s4,224(sp)
    800270be:	edd6                	sd	s5,216(sp)
    800270c0:	e9da                	sd	s6,208(sp)
quickjs-nuttx/quickjs.c:55259
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, NULL,
    800270c2:	e002                	sd	zero,0(sp)
quickjs-nuttx/quickjs.c:55253
{
    800270c4:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:55259
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, NULL,
    800270c6:	01073803          	ld	a6,16(a4)
    800270ca:	01873883          	ld	a7,24(a4)
    800270ce:	641c                	ld	a5,8(s0)
    800270d0:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:55253
{
    800270d2:	f02e                	sd	a1,32(sp)
    800270d4:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:55259
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, NULL,
    800270d6:	4681                	li	a3,0
    800270d8:	1870                	addi	a2,sp,60
    800270da:	008c                	addi	a1,sp,64
quickjs-nuttx/quickjs.c:55253
{
    800270dc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:55259
    ptr = js_atomics_get_ptr(ctx, &abuf, &size_log2, NULL,
    800270de:	b64fd0ef          	jal	ra,80024442 <js_atomics_get_ptr>
quickjs-nuttx/quickjs.c:55261
    if (!ptr)
    800270e2:	e105                	bnez	a0,80027102 <js_atomics_store+0x52>
quickjs-nuttx/quickjs.c:55262
        return JS_EXCEPTION;
    800270e4:	4799                	li	a5,6
    800270e6:	fc82                	sd	zero,120(sp)
    800270e8:	e13e                	sd	a5,128(sp)
quickjs-nuttx/quickjs.c:55302 (discriminator 1)
}
    800270ea:	60b2                	ld	ra,264(sp)
    800270ec:	6412                	ld	s0,256(sp)
    800270ee:	7566                	ld	a0,120(sp)
    800270f0:	658a                	ld	a1,128(sp)
    800270f2:	74ee                	ld	s1,248(sp)
    800270f4:	794e                	ld	s2,240(sp)
    800270f6:	79ae                	ld	s3,232(sp)
    800270f8:	7a0e                	ld	s4,224(sp)
    800270fa:	6aee                	ld	s5,216(sp)
    800270fc:	6b4e                	ld	s6,208(sp)
    800270fe:	6151                	addi	sp,sp,272
    80027100:	8082                	ret
quickjs-nuttx/quickjs.c:55263
    if (size_log2 == 3) {
    80027102:	56f2                	lw	a3,60(sp)
    80027104:	470d                	li	a4,3
    80027106:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:55265
        ret = JS_ToBigIntValueFree(ctx, JS_DupValue(ctx, argv[2]));
    80027108:	02040793          	addi	a5,s0,32
    8002710c:	7008                	ld	a0,32(s0)
    8002710e:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:55263
    if (size_log2 == 3) {
    80027110:	0ce69f63          	bne	a3,a4,800271ee <js_atomics_store+0x13e>
quickjs-nuttx/quickjs.c:55265
        ret = JS_ToBigIntValueFree(ctx, JS_DupValue(ctx, argv[2]));
    80027114:	b06e30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80027118:	ecaa                	sd	a0,88(sp)
    8002711a:	f0ae                	sd	a1,96(sp)
    8002711c:	fcaa                	sd	a0,120(sp)
    8002711e:	e12e                	sd	a1,128(sp)
JS_ToBigIntValueFree():
quickjs-nuttx/quickjs.c:12195
    if (JS_VALUE_GET_TAG(val) == JS_TAG_BIG_INT) {
    80027120:	0005871b          	sext.w	a4,a1
    80027124:	57d9                	li	a5,-10
    80027126:	842e                	mv	s0,a1
    80027128:	00f71f63          	bne	a4,a5,80027146 <js_atomics_store+0x96>
quickjs-nuttx/quickjs.c:12196
        return val;
    8002712c:	e52a                	sd	a0,136(sp)
    8002712e:	662a                	ld	a2,136(sp)
    80027130:	e922                	sd	s0,144(sp)
    80027132:	e8a2                	sd	s0,80(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80027134:	e4b2                	sd	a2,72(sp)
js_atomics_store():
quickjs-nuttx/quickjs.c:55266
        if (JS_IsException(ret))
    80027136:	0004079b          	sext.w	a5,s0
    8002713a:	4919                	li	s2,6
    8002713c:	07279963          	bne	a5,s2,800271ae <js_atomics_store+0xfe>
quickjs-nuttx/quickjs.c:55280
            return ret;
    80027140:	fcb2                	sd	a2,120(sp)
quickjs-nuttx/quickjs.c:55301
    return ret;
    80027142:	e122                	sd	s0,128(sp)
    80027144:	b75d                	j	800270ea <js_atomics_store+0x3a>
JS_ToBigIntValueFree():
quickjs-nuttx/quickjs.c:12202
        res = JS_NewBigInt(ctx);
    80027146:	8526                	mv	a0,s1
    80027148:	a63f30ef          	jal	ra,8001abaa <JS_NewBigInt>
    8002714c:	f12e                	sd	a1,160(sp)
    8002714e:	ed2a                	sd	a0,152(sp)
quickjs-nuttx/quickjs.c:12203
        if (JS_IsException(res))
    80027150:	2581                	sext.w	a1,a1
    80027152:	4799                	li	a5,6
    80027154:	00f59563          	bne	a1,a5,8002715e <js_atomics_store+0xae>
quickjs-nuttx/quickjs.c:12208
            return JS_EXCEPTION;
    80027158:	e502                	sd	zero,136(sp)
    8002715a:	4419                	li	s0,6
    8002715c:	bfc9                	j	8002712e <js_atomics_store+0x7e>
quickjs-nuttx/quickjs.c:12205
        a = JS_ToBigIntFree(ctx, &a_s, val);
    8002715e:	7666                	ld	a2,120(sp)
    80027160:	668a                	ld	a3,128(sp)
    80027162:	112c                	addi	a1,sp,168
    80027164:	8526                	mv	a0,s1
    80027166:	e29fe0ef          	jal	ra,80025f8e <JS_ToBigIntFree>
    8002716a:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:12206
        if (!a) {
    8002716c:	e519                	bnez	a0,8002717a <js_atomics_store+0xca>
quickjs-nuttx/quickjs.c:12207
            JS_FreeValue(ctx, res);
    8002716e:	65ea                	ld	a1,152(sp)
    80027170:	760a                	ld	a2,160(sp)
    80027172:	8526                	mv	a0,s1
    80027174:	e2ae40ef          	jal	ra,8000b79e <JS_FreeValue>
    80027178:	b7c5                	j	80027158 <js_atomics_store+0xa8>
quickjs-nuttx/quickjs.c:12211
        ret = bf_set(r, a);
    8002717a:	ec2a                	sd	a0,24(sp)
    8002717c:	656a                	ld	a0,152(sp)
    8002717e:	0521                	addi	a0,a0,8
    80027180:	6a3300ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:12212
        JS_FreeBigInt(ctx, a, &a_s);
    80027184:	65e2                	ld	a1,24(sp)
    80027186:	1130                	addi	a2,sp,168
quickjs-nuttx/quickjs.c:12211
        ret = bf_set(r, a);
    80027188:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12212
        JS_FreeBigInt(ctx, a, &a_s);
    8002718a:	8526                	mv	a0,s1
    8002718c:	a9be40ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:12214
            JS_FreeValue(ctx, res);
    80027190:	65ea                	ld	a1,152(sp)
    80027192:	760a                	ld	a2,160(sp)
    80027194:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:12213
        if (ret) {
    80027196:	c809                	beqz	s0,800271a8 <js_atomics_store+0xf8>
quickjs-nuttx/quickjs.c:12214
            JS_FreeValue(ctx, res);
    80027198:	e06e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12215
            return JS_ThrowOutOfMemory(ctx);
    8002719c:	8526                	mv	a0,s1
    8002719e:	f37f20ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:12217
        return JS_CompactBigInt(ctx, res);
    800271a2:	e52a                	sd	a0,136(sp)
    800271a4:	842e                	mv	s0,a1
    800271a6:	b761                	j	8002712e <js_atomics_store+0x7e>
    800271a8:	ca7e50ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    800271ac:	bfdd                	j	800271a2 <js_atomics_store+0xf2>
js_atomics_store():
quickjs-nuttx/quickjs.c:55268
        if (JS_ToBigInt64(ctx, &v64, ret)) {
    800271ae:	86a2                	mv	a3,s0
    800271b0:	112c                	addi	a1,sp,168
    800271b2:	8526                	mv	a0,s1
    800271b4:	f6bfe0ef          	jal	ra,8002611e <JS_ToBigInt64>
    800271b8:	c909                	beqz	a0,800271ca <js_atomics_store+0x11a>
quickjs-nuttx/quickjs.c:55282
            JS_FreeValue(ctx, ret);
    800271ba:	65a6                	ld	a1,72(sp)
    800271bc:	6646                	ld	a2,80(sp)
    800271be:	8526                	mv	a0,s1
    800271c0:	ddee40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:55283
            return JS_EXCEPTION;
    800271c4:	fc82                	sd	zero,120(sp)
    800271c6:	e14a                	sd	s2,128(sp)
    800271c8:	b70d                	j	800270ea <js_atomics_store+0x3a>
quickjs-nuttx/quickjs.c:55272
        if (abuf->detached)
    800271ca:	6786                	ld	a5,64(sp)
    800271cc:	0047c783          	lbu	a5,4(a5)
    800271d0:	c799                	beqz	a5,800271de <js_atomics_store+0x12e>
quickjs-nuttx/quickjs.c:55286
            return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800271d2:	8526                	mv	a0,s1
    800271d4:	db1f10ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
    800271d8:	fcaa                	sd	a0,120(sp)
    800271da:	e12e                	sd	a1,128(sp)
    800271dc:	b739                	j	800270ea <js_atomics_store+0x3a>
quickjs-nuttx/quickjs.c:55274
        atomic_store((_Atomic(uint64_t) *)ptr, v64);
    800271de:	77aa                	ld	a5,168(sp)
    800271e0:	0f50000f          	fence	iorw,ow
    800271e4:	0cf9b02f          	amoswap.d.aq	zero,a5,(s3)
quickjs-nuttx/quickjs.c:55301 (discriminator 4)
    return ret;
    800271e8:	67a6                	ld	a5,72(sp)
    800271ea:	fcbe                	sd	a5,120(sp)
    800271ec:	bf99                	j	80027142 <js_atomics_store+0x92>
quickjs-nuttx/quickjs.c:55278
        ret = JS_ToIntegerFree(ctx, JS_DupValue(ctx, argv[2]));
    800271ee:	a2ce30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800271f2:	f4aa                	sd	a0,104(sp)
    800271f4:	f8ae                	sd	a1,112(sp)
    800271f6:	fcaa                	sd	a0,120(sp)
    800271f8:	e12e                	sd	a1,128(sp)
    800271fa:	842e                	mv	s0,a1
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10614
    switch(tag) {
    800271fc:	491d                	li	s2,7
    800271fe:	5add                	li	s5,-9
    80027200:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:10667
        if (JS_IsException(val))
    80027202:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:10613
    tag = JS_VALUE_GET_NORM_TAG(val);
    80027204:	0004079b          	sext.w	a5,s0
quickjs-nuttx/quickjs.c:10614
    switch(tag) {
    80027208:	0b278a63          	beq	a5,s2,800272bc <js_atomics_store+0x20c>
    8002720c:	02f96363          	bltu	s2,a5,80027232 <js_atomics_store+0x182>
    80027210:	08fb7b63          	bgeu	s6,a5,800272a6 <js_atomics_store+0x1f6>
quickjs-nuttx/quickjs.c:10666
        val = JS_ToNumberFree(ctx, val);
    80027214:	75e6                	ld	a1,120(sp)
    80027216:	8622                	mv	a2,s0
    80027218:	8526                	mv	a0,s1
    8002721a:	e122                	sd	s0,128(sp)
    8002721c:	86efb0ef          	jal	ra,8002228a <JS_ToNumberFree>
    80027220:	fcaa                	sd	a0,120(sp)
    80027222:	e12e                	sd	a1,128(sp)
quickjs-nuttx/quickjs.c:10667
        if (JS_IsException(val))
    80027224:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:10666
        val = JS_ToNumberFree(ctx, val);
    80027228:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10667
        if (JS_IsException(val))
    8002722a:	fd479de3          	bne	a5,s4,80027204 <js_atomics_store+0x154>
quickjs-nuttx/quickjs.c:10668
            return val;
    8002722e:	ed2a                	sd	a0,152(sp)
    80027230:	a02d                	j	8002725a <js_atomics_store+0x1aa>
quickjs-nuttx/quickjs.c:10614
    switch(tag) {
    80027232:	ff5791e3          	bne	a5,s5,80027214 <js_atomics_store+0x164>
quickjs-nuttx/quickjs.c:10639
            a = JS_ToBigFloat(ctx, &a_s, val);
    80027236:	7666                	ld	a2,120(sp)
    80027238:	0a810a93          	addi	s5,sp,168
    8002723c:	86a2                	mv	a3,s0
    8002723e:	85d6                	mv	a1,s5
    80027240:	8526                	mv	a0,s1
    80027242:	e122                	sd	s0,128(sp)
    80027244:	a24e30ef          	jal	ra,8000a468 <JS_ToBigFloat>
    80027248:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:10640
            if (!a) {
    8002724a:	ed55                	bnez	a0,80027306 <js_atomics_store+0x256>
quickjs-nuttx/quickjs.c:10641
                JS_FreeValue(ctx, val);
    8002724c:	75e6                	ld	a1,120(sp)
    8002724e:	660a                	ld	a2,128(sp)
    80027250:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:10642
                return JS_EXCEPTION;
    80027252:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:10641
                JS_FreeValue(ctx, val);
    80027254:	d4ae40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10642
                return JS_EXCEPTION;
    80027258:	ed02                	sd	zero,152(sp)
    8002725a:	666a                	ld	a2,152(sp)
    8002725c:	f122                	sd	s0,160(sp)
    8002725e:	e8a2                	sd	s0,80(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80027260:	e4b2                	sd	a2,72(sp)
js_atomics_store():
quickjs-nuttx/quickjs.c:55279
        if (JS_IsException(ret))
    80027262:	0004079b          	sext.w	a5,s0
    80027266:	4919                	li	s2,6
    80027268:	ed278ce3          	beq	a5,s2,80027140 <js_atomics_store+0x90>
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    8002726c:	86a2                	mv	a3,s0
    8002726e:	08ac                	addi	a1,sp,88
    80027270:	8526                	mv	a0,s1
    80027272:	e532                	sd	a2,136(sp)
    80027274:	e922                	sd	s0,144(sp)
    80027276:	944fb0ef          	jal	ra,800223ba <JS_ToInt32>
js_atomics_store():
quickjs-nuttx/quickjs.c:55281
        if (JS_ToUint32(ctx, &v, ret)) {
    8002727a:	f121                	bnez	a0,800271ba <js_atomics_store+0x10a>
quickjs-nuttx/quickjs.c:55285
        if (abuf->detached)
    8002727c:	6786                	ld	a5,64(sp)
    8002727e:	0047c783          	lbu	a5,4(a5)
    80027282:	fba1                	bnez	a5,800271d2 <js_atomics_store+0x122>
quickjs-nuttx/quickjs.c:55287
        switch(size_log2) {
    80027284:	57f2                	lw	a5,60(sp)
    80027286:	4705                	li	a4,1
    80027288:	0ee78d63          	beq	a5,a4,80027382 <js_atomics_store+0x2d2>
    8002728c:	4709                	li	a4,2
    8002728e:	10e78063          	beq	a5,a4,8002738e <js_atomics_store+0x2de>
    80027292:	10079463          	bnez	a5,8002739a <js_atomics_store+0x2ea>
quickjs-nuttx/quickjs.c:55289
            atomic_store((_Atomic(uint8_t) *)ptr, v);
    80027296:	47e6                	lw	a5,88(sp)
    80027298:	0ff0000f          	fence
    8002729c:	00f98023          	sb	a5,0(s3)
quickjs-nuttx/quickjs.c:55292 (discriminator 4)
            atomic_store((_Atomic(uint16_t) *)ptr, v);
    800272a0:	0ff0000f          	fence
    800272a4:	b791                	j	800271e8 <js_atomics_store+0x138>
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10619
        ret = JS_NewInt32(ctx, JS_VALUE_GET_INT(val));
    800272a6:	5966                	lw	s2,120(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800272a8:	d702                	sw	zero,172(sp)
    800272aa:	f902                	sd	zero,176(sp)
    800272ac:	d54a                	sw	s2,168(sp)
    800272ae:	77aa                	ld	a5,168(sp)
    800272b0:	4401                	li	s0,0
    800272b2:	e53e                	sd	a5,136(sp)
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10671
    return ret;
    800272b4:	c54a                	sw	s2,136(sp)
    800272b6:	67aa                	ld	a5,136(sp)
    800272b8:	ed3e                	sd	a5,152(sp)
    800272ba:	b745                	j	8002725a <js_atomics_store+0x1aa>
quickjs-nuttx/quickjs.c:10623
            double d = JS_VALUE_GET_FLOAT64(val);
    800272bc:	3566                	fld	fa0,120(sp)
quickjs-nuttx/quickjs.c:10624
            if (isnan(d)) {
    800272be:	a2a527d3          	feq.d	a5,fa0,fa0
    800272c2:	e789                	bnez	a5,800272cc <js_atomics_store+0x21c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800272c4:	e502                	sd	zero,136(sp)
    800272c6:	4401                	li	s0,0
    800272c8:	4901                	li	s2,0
    800272ca:	b7ed                	j	800272b4 <js_atomics_store+0x204>
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10628
                d = trunc(d) + 0.0;
    800272cc:	a47d90ef          	jal	ra,80000d12 <trunc>
    800272d0:	f20007d3          	fmv.d.x	fa5,zero
    800272d4:	02f577d3          	fadd.d	fa5,fa0,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    800272d8:	c20796d3          	fcvt.w.d	a3,fa5,rtz
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10628
    800272dc:	e20787d3          	fmv.x.d	a5,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    800272e0:	d20687d3          	fcvt.d.w	fa5,a3
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    800272e4:	0006891b          	sext.w	s2,a3
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    800272e8:	e20786d3          	fmv.x.d	a3,fa5
    800272ec:	00d79863          	bne	a5,a3,800272fc <js_atomics_store+0x24c>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    800272f0:	d702                	sw	zero,172(sp)
    800272f2:	4401                	li	s0,0
quickjs-nuttx/quickjs.h:566
    return v;
    800272f4:	d54a                	sw	s2,168(sp)
    800272f6:	37aa                	fld	fa5,168(sp)
    800272f8:	a53e                	fsd	fa5,136(sp)
    800272fa:	bf6d                	j	800272b4 <js_atomics_store+0x204>
js_atomics_store():
quickjs-nuttx/quickjs.h:230
    return v;
    800272fc:	f53e                	sd	a5,168(sp)
    800272fe:	0007891b          	sext.w	s2,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80027302:	441d                	li	s0,7
    80027304:	bfc5                	j	800272f4 <js_atomics_store+0x244>
bf_is_finite():
quickjs-nuttx/libbf.h:236
    return (a->expn < BF_EXP_INF);
    80027306:	6918                	ld	a4,16(a0)
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10644
            if (!bf_is_finite(a)) {
    80027308:	57ed                	li	a5,-5
    8002730a:	8385                	srli	a5,a5,0x1
    8002730c:	02e7de63          	bge	a5,a4,80027348 <js_atomics_store+0x298>
quickjs-nuttx/quickjs.c:10646
                if (is_nan)
    80027310:	57fd                	li	a5,-1
    80027312:	8385                	srli	a5,a5,0x1
    80027314:	02f71063          	bne	a4,a5,80027334 <js_atomics_store+0x284>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80027318:	e502                	sd	zero,136(sp)
    8002731a:	4401                	li	s0,0
    8002731c:	4901                	li	s2,0
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10659
            if (a == &a_s)
    8002731e:	015a1563          	bne	s4,s5,80027328 <js_atomics_store+0x278>
quickjs-nuttx/quickjs.c:10660
                bf_delete(a);
    80027322:	8552                	mv	a0,s4
    80027324:	932e30ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:10661
            JS_FreeValue(ctx, val);
    80027328:	75e6                	ld	a1,120(sp)
    8002732a:	660a                	ld	a2,128(sp)
    8002732c:	8526                	mv	a0,s1
    8002732e:	c70e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10663
        break;
    80027332:	b749                	j	800272b4 <js_atomics_store+0x204>
quickjs-nuttx/quickjs.c:10649
                    ret = JS_DupValue(ctx, val);
    80027334:	7566                	ld	a0,120(sp)
    80027336:	658a                	ld	a1,128(sp)
    80027338:	8e2e30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:10656
                    ret = JS_CompactBigInt(ctx, ret);
    8002733c:	e52a                	sd	a0,136(sp)
    8002733e:	e92e                	sd	a1,144(sp)
    80027340:	842e                	mv	s0,a1
    80027342:	0005091b          	sext.w	s2,a0
    80027346:	bfe1                	j	8002731e <js_atomics_store+0x26e>
quickjs-nuttx/quickjs.c:10651
                ret = JS_NewBigInt(ctx);
    80027348:	8526                	mv	a0,s1
    8002734a:	861f30ef          	jal	ra,8001abaa <JS_NewBigInt>
    8002734e:	e52a                	sd	a0,136(sp)
    80027350:	e92e                	sd	a1,144(sp)
quickjs-nuttx/quickjs.c:10652
                if (!JS_IsException(ret)) {
    80027352:	0005871b          	sext.w	a4,a1
    80027356:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:10651
                ret = JS_NewBigInt(ctx);
    80027358:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10652
                if (!JS_IsException(ret)) {
    8002735a:	00f71463          	bne	a4,a5,80027362 <js_atomics_store+0x2b2>
quickjs-nuttx/quickjs.c:10651
                ret = JS_NewBigInt(ctx);
    8002735e:	492a                	lw	s2,136(sp)
    80027360:	bf7d                	j	8002731e <js_atomics_store+0x26e>
JS_GetBigInt():
quickjs-nuttx/quickjs.c:1143
    return &p->num;
    80027362:	00850413          	addi	s0,a0,8
JS_ToIntegerFree():
quickjs-nuttx/quickjs.c:10654
                    bf_set(r, a);
    80027366:	85d2                	mv	a1,s4
    80027368:	8522                	mv	a0,s0
    8002736a:	4b9300ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:10655
                    bf_rint(r, BF_RNDZ);
    8002736e:	4585                	li	a1,1
    80027370:	8522                	mv	a0,s0
    80027372:	2c7310ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/quickjs.c:10656
                    ret = JS_CompactBigInt(ctx, ret);
    80027376:	65aa                	ld	a1,136(sp)
    80027378:	664a                	ld	a2,144(sp)
    8002737a:	8526                	mv	a0,s1
    8002737c:	ad3e50ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80027380:	bf75                	j	8002733c <js_atomics_store+0x28c>
js_atomics_store():
quickjs-nuttx/quickjs.c:55292 (discriminator 4)
            atomic_store((_Atomic(uint16_t) *)ptr, v);
    80027382:	47e6                	lw	a5,88(sp)
    80027384:	0ff0000f          	fence
    80027388:	00f99023          	sh	a5,0(s3)
    8002738c:	bf11                	j	800272a0 <js_atomics_store+0x1f0>
quickjs-nuttx/quickjs.c:55295 (discriminator 5)
            atomic_store((_Atomic(uint32_t) *)ptr, v);
    8002738e:	47e6                	lw	a5,88(sp)
    80027390:	0f50000f          	fence	iorw,ow
    80027394:	0cf9a02f          	amoswap.w.aq	zero,a5,(s3)
    80027398:	bd81                	j	800271e8 <js_atomics_store+0x138>
quickjs-nuttx/quickjs.c:55298
            abort();
    8002739a:	7e83b0ef          	jal	ra,80062b82 <abort>

000000008002739e <js_bigint_constructor>:
js_bigint_constructor():
quickjs-nuttx/quickjs.c:50616
{
    8002739e:	7131                	addi	sp,sp,-192
    800273a0:	e432                	sd	a2,8(sp)
    800273a2:	fd06                	sd	ra,184(sp)
    800273a4:	f922                	sd	s0,176(sp)
    800273a6:	f526                	sd	s1,168(sp)
    800273a8:	f14a                	sd	s2,160(sp)
    800273aa:	ed4e                	sd	s3,152(sp)
    800273ac:	e952                	sd	s4,144(sp)
    800273ae:	e556                	sd	s5,136(sp)
    800273b0:	e15a                	sd	s6,128(sp)
    800273b2:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:50617
    if (!JS_IsUndefined(new_target))
    800273b4:	2601                	sext.w	a2,a2
    800273b6:	478d                	li	a5,3
    800273b8:	02f60163          	beq	a2,a5,800273da <js_bigint_constructor+0x3c>
quickjs-nuttx/quickjs.c:50620
}
    800273bc:	744a                	ld	s0,176(sp)
    800273be:	70ea                	ld	ra,184(sp)
    800273c0:	74aa                	ld	s1,168(sp)
    800273c2:	790a                	ld	s2,160(sp)
    800273c4:	69ea                	ld	s3,152(sp)
    800273c6:	6a4a                	ld	s4,144(sp)
    800273c8:	6aaa                	ld	s5,136(sp)
    800273ca:	6b0a                	ld	s6,128(sp)
quickjs-nuttx/quickjs.c:50618
        return JS_ThrowTypeError(ctx, "not a constructor");
    800273cc:	00043597          	auipc	a1,0x43
    800273d0:	fcc58593          	addi	a1,a1,-52 # 8006a398 <qjsc_repl+0x4de8>
quickjs-nuttx/quickjs.c:50620
}
    800273d4:	6129                	addi	sp,sp,192
quickjs-nuttx/quickjs.c:50618
        return JS_ThrowTypeError(ctx, "not a constructor");
    800273d6:	a96f106f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:50619
    return JS_ToBigIntCtorFree(ctx, JS_DupValue(ctx, argv[0]));
    800273da:	670c                	ld	a1,8(a4)
    800273dc:	892a                	mv	s2,a0
    800273de:	6308                	ld	a0,0(a4)
JS_ToBigIntCtorFree():
quickjs-nuttx/quickjs.c:50541
    switch(tag) {
    800273e0:	5ad1                	li	s5,-12
    800273e2:	4b29                	li	s6,10
js_bigint_constructor():
quickjs-nuttx/quickjs.c:50619
    return JS_ToBigIntCtorFree(ctx, JS_DupValue(ctx, argv[0]));
    800273e4:	836e30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800273e8:	ec2a                	sd	a0,24(sp)
    800273ea:	f02e                	sd	a1,32(sp)
    800273ec:	f42a                	sd	a0,40(sp)
    800273ee:	0005041b          	sext.w	s0,a0
    800273f2:	84ae                	mv	s1,a1
    800273f4:	00044a17          	auipc	s4,0x44
    800273f8:	c38a0a13          	addi	s4,s4,-968 # 8006b02c <qjsc_repl+0x5a7c>
JS_ToBigIntCtorFree():
quickjs-nuttx/quickjs.c:50601
        if (JS_IsException(val))
    800273fc:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:50540
    tag = JS_VALUE_GET_NORM_TAG(val);
    800273fe:	0004879b          	sext.w	a5,s1
quickjs-nuttx/quickjs.c:50541
    switch(tag) {
    80027402:	02fae863          	bltu	s5,a5,80027432 <js_bigint_constructor+0x94>
    80027406:	4705                	li	a4,1
    80027408:	04f77263          	bgeu	a4,a5,8002744c <js_bigint_constructor+0xae>
    8002740c:	471d                	li	a4,7
    8002740e:	04e78863          	beq	a5,a4,8002745e <js_bigint_constructor+0xc0>
quickjs-nuttx/quickjs.c:50607
        JS_FreeValue(ctx, val);
    80027412:	d422                	sw	s0,40(sp)
    80027414:	75a2                	ld	a1,40(sp)
    80027416:	8626                	mv	a2,s1
    80027418:	854a                	mv	a0,s2
    8002741a:	b84e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50608
        return JS_ThrowTypeError(ctx, "cannot convert to bigint");
    8002741e:	00044597          	auipc	a1,0x44
    80027422:	a8a58593          	addi	a1,a1,-1398 # 8006aea8 <qjsc_repl+0x58f8>
    80027426:	854a                	mv	a0,s2
    80027428:	a44f10ef          	jal	ra,8001866c <JS_ThrowTypeError>
    8002742c:	e4aa                	sd	a0,72(sp)
    8002742e:	84ae                	mv	s1,a1
    80027430:	a891                	j	80027484 <js_bigint_constructor+0xe6>
    80027432:	27ad                	addiw	a5,a5,11
    80027434:	0007871b          	sext.w	a4,a5
    80027438:	fceb6de3          	bltu	s6,a4,80027412 <js_bigint_constructor+0x74>
    8002743c:	02079713          	slli	a4,a5,0x20
    80027440:	01e75793          	srli	a5,a4,0x1e
    80027444:	97d2                	add	a5,a5,s4
    80027446:	439c                	lw	a5,0(a5)
    80027448:	97d2                	add	a5,a5,s4
    8002744a:	8782                	jr	a5
quickjs-nuttx/quickjs.c:50544
        val = JS_NewBigInt64(ctx, JS_VALUE_GET_INT(val));
    8002744c:	85a2                	mv	a1,s0
    8002744e:	854a                	mv	a0,s2
    80027450:	c5bf60ef          	jal	ra,8001e0aa <JS_NewBigInt64>
quickjs-nuttx/quickjs.c:50597
        val = JS_StringToBigIntErr(ctx, val);
    80027454:	f42a                	sd	a0,40(sp)
    80027456:	0005041b          	sext.w	s0,a0
    8002745a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:50598
        break;
    8002745c:	a0c9                	j	8002751e <js_bigint_constructor+0x180>
quickjs-nuttx/quickjs.c:50555
            a = JS_ToBigFloat(ctx, &a_s, val);
    8002745e:	d422                	sw	s0,40(sp)
    80027460:	7622                	ld	a2,40(sp)
    80027462:	05810a13          	addi	s4,sp,88
    80027466:	86a6                	mv	a3,s1
    80027468:	85d2                	mv	a1,s4
    8002746a:	854a                	mv	a0,s2
    8002746c:	f826                	sd	s1,48(sp)
    8002746e:	ffbe20ef          	jal	ra,8000a468 <JS_ToBigFloat>
    80027472:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:50556
            if (!a) {
    80027474:	e505                	bnez	a0,8002749c <js_bigint_constructor+0xfe>
quickjs-nuttx/quickjs.c:50568
                    JS_FreeValue(ctx, val);
    80027476:	75a2                	ld	a1,40(sp)
    80027478:	7642                	ld	a2,48(sp)
    8002747a:	854a                	mv	a0,s2
    8002747c:	4499                	li	s1,6
    8002747e:	b20e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50569
                    return JS_EXCEPTION;
    80027482:	e482                	sd	zero,72(sp)
js_bigint_constructor():
quickjs-nuttx/quickjs.c:50620
}
    80027484:	70ea                	ld	ra,184(sp)
    80027486:	744a                	ld	s0,176(sp)
    80027488:	6526                	ld	a0,72(sp)
    8002748a:	790a                	ld	s2,160(sp)
    8002748c:	69ea                	ld	s3,152(sp)
    8002748e:	6a4a                	ld	s4,144(sp)
    80027490:	6aaa                	ld	s5,136(sp)
    80027492:	6b0a                	ld	s6,128(sp)
    80027494:	85a6                	mv	a1,s1
    80027496:	74aa                	ld	s1,168(sp)
    80027498:	6129                	addi	sp,sp,192
    8002749a:	8082                	ret
JS_ToBigIntCtorFree():
quickjs-nuttx/quickjs.c:50560
            if (!bf_is_finite(a)) {
    8002749c:	6918                	ld	a4,16(a0)
    8002749e:	57ed                	li	a5,-5
    800274a0:	8385                	srli	a5,a5,0x1
    800274a2:	00e7df63          	bge	a5,a4,800274c0 <js_bigint_constructor+0x122>
quickjs-nuttx/quickjs.c:50561
                JS_FreeValue(ctx, val);
    800274a6:	75a2                	ld	a1,40(sp)
    800274a8:	7642                	ld	a2,48(sp)
    800274aa:	854a                	mv	a0,s2
    800274ac:	af2e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50562
                val = JS_ThrowRangeError(ctx, "cannot convert NaN or Infinity to bigint");
    800274b0:	00044597          	auipc	a1,0x44
    800274b4:	b2058593          	addi	a1,a1,-1248 # 8006afd0 <qjsc_repl+0x5a20>
quickjs-nuttx/quickjs.c:50580
                    val = JS_ThrowRangeError(ctx, "cannot convert to bigint: not an integer");
    800274b8:	854a                	mv	a0,s2
    800274ba:	c14f20ef          	jal	ra,800198ce <JS_ThrowRangeError>
    800274be:	a0b9                	j	8002750c <js_bigint_constructor+0x16e>
quickjs-nuttx/quickjs.c:50564
                JSValue val1 = JS_NewBigInt(ctx);
    800274c0:	854a                	mv	a0,s2
    800274c2:	ee8f30ef          	jal	ra,8001abaa <JS_NewBigInt>
    800274c6:	e0ae                	sd	a1,64(sp)
    800274c8:	fc2a                	sd	a0,56(sp)
quickjs-nuttx/quickjs.c:50567
                if (JS_IsException(val1)) {
    800274ca:	2581                	sext.w	a1,a1
    800274cc:	4799                	li	a5,6
    800274ce:	faf584e3          	beq	a1,a5,80027476 <js_bigint_constructor+0xd8>
JS_GetBigInt():
quickjs-nuttx/quickjs.c:1143
    return &p->num;
    800274d2:	00850493          	addi	s1,a0,8
JS_ToBigIntCtorFree():
quickjs-nuttx/quickjs.c:50572
                ret = bf_set(r, a);
    800274d6:	85ce                	mv	a1,s3
    800274d8:	8526                	mv	a0,s1
    800274da:	349300ef          	jal	ra,80058022 <bf_set>
    800274de:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:50573
                ret |= bf_rint(r, BF_RNDZ);
    800274e0:	4585                	li	a1,1
    800274e2:	8526                	mv	a0,s1
    800274e4:	155310ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/quickjs.c:50574
                JS_FreeValue(ctx, val);
    800274e8:	75a2                	ld	a1,40(sp)
    800274ea:	7642                	ld	a2,48(sp)
quickjs-nuttx/quickjs.c:50573
                ret |= bf_rint(r, BF_RNDZ);
    800274ec:	8c49                	or	s0,s0,a0
quickjs-nuttx/quickjs.c:50574
                JS_FreeValue(ctx, val);
    800274ee:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:50573
                ret |= bf_rint(r, BF_RNDZ);
    800274f0:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:50574
                JS_FreeValue(ctx, val);
    800274f2:	aace40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50575
                if (ret & BF_ST_MEM_ERROR) {
    800274f6:	02047793          	andi	a5,s0,32
    800274fa:	c795                	beqz	a5,80027526 <js_bigint_constructor+0x188>
quickjs-nuttx/quickjs.c:50576
                    JS_FreeValue(ctx, val1);
    800274fc:	75e2                	ld	a1,56(sp)
    800274fe:	6606                	ld	a2,64(sp)
    80027500:	854a                	mv	a0,s2
    80027502:	a9ce40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50577
                    val = JS_ThrowOutOfMemory(ctx);
    80027506:	854a                	mv	a0,s2
    80027508:	bcdf20ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:50582
                    val = JS_CompactBigInt(ctx, val1);
    8002750c:	f42a                	sd	a0,40(sp)
    8002750e:	0005041b          	sext.w	s0,a0
    80027512:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:50585
            if (a == &a_s)
    80027514:	01499563          	bne	s3,s4,8002751e <js_bigint_constructor+0x180>
quickjs-nuttx/quickjs.c:50586
                bf_delete(a);
    80027518:	854e                	mv	a0,s3
    8002751a:	f3de20ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:50610
    return val;
    8002751e:	d422                	sw	s0,40(sp)
    80027520:	77a2                	ld	a5,40(sp)
    80027522:	e4be                	sd	a5,72(sp)
    80027524:	b785                	j	80027484 <js_bigint_constructor+0xe6>
quickjs-nuttx/quickjs.c:50578
                } else if (ret & BF_ST_INEXACT) {
    80027526:	8841                	andi	s0,s0,16
quickjs-nuttx/quickjs.c:50579
                    JS_FreeValue(ctx, val1);
    80027528:	75e2                	ld	a1,56(sp)
    8002752a:	6606                	ld	a2,64(sp)
    8002752c:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:50578
                } else if (ret & BF_ST_INEXACT) {
    8002752e:	c801                	beqz	s0,8002753e <js_bigint_constructor+0x1a0>
quickjs-nuttx/quickjs.c:50579
                    JS_FreeValue(ctx, val1);
    80027530:	a6ee40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50580
                    val = JS_ThrowRangeError(ctx, "cannot convert to bigint: not an integer");
    80027534:	00044597          	auipc	a1,0x44
    80027538:	acc58593          	addi	a1,a1,-1332 # 8006b000 <qjsc_repl+0x5a50>
    8002753c:	bfb5                	j	800274b8 <js_bigint_constructor+0x11a>
quickjs-nuttx/quickjs.c:50582
                    val = JS_CompactBigInt(ctx, val1);
    8002753e:	911e50ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80027542:	b7e9                	j	8002750c <js_bigint_constructor+0x16e>
quickjs-nuttx/quickjs.c:50591
        val = JS_ToStringFree(ctx, val);
    80027544:	d422                	sw	s0,40(sp)
    80027546:	75a2                	ld	a1,40(sp)
    80027548:	8626                	mv	a2,s1
    8002754a:	854a                	mv	a0,s2
    8002754c:	a3af90ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:50600
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027550:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:50601
        if (JS_IsException(val))
    80027552:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:50600
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027556:	0005041b          	sext.w	s0,a0
    8002755a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:50601
        if (JS_IsException(val))
    8002755c:	eb3791e3          	bne	a5,s3,800273fe <js_bigint_constructor+0x60>
    80027560:	bf7d                	j	8002751e <js_bigint_constructor+0x180>
quickjs-nuttx/quickjs.c:50597
        val = JS_StringToBigIntErr(ctx, val);
    80027562:	d422                	sw	s0,40(sp)
    80027564:	75a2                	ld	a1,40(sp)
    80027566:	8626                	mv	a2,s1
    80027568:	854a                	mv	a0,s2
    8002756a:	9e3fe0ef          	jal	ra,80025f4c <JS_StringToBigIntErr>
    8002756e:	b5dd                	j	80027454 <js_bigint_constructor+0xb6>
quickjs-nuttx/quickjs.c:50600
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027570:	d422                	sw	s0,40(sp)
    80027572:	75a2                	ld	a1,40(sp)
    80027574:	4685                	li	a3,1
    80027576:	8626                	mv	a2,s1
    80027578:	854a                	mv	a0,s2
    8002757a:	d62f80ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    8002757e:	bfc9                	j	80027550 <js_bigint_constructor+0x1b2>

0000000080027580 <JS_ToBigDecimalFree>:
JS_ToBigDecimalFree():
quickjs-nuttx/quickjs.c:51811
{
    80027580:	7175                	addi	sp,sp,-144
    80027582:	e122                	sd	s0,128(sp)
    80027584:	f8ca                	sd	s2,112(sp)
    80027586:	f4ce                	sd	s3,104(sp)
    80027588:	f0d2                	sd	s4,96(sp)
    8002758a:	ecd6                	sd	s5,88(sp)
    8002758c:	e8da                	sd	s6,80(sp)
    8002758e:	e4de                	sd	s7,72(sp)
    80027590:	e506                	sd	ra,136(sp)
    80027592:	fca6                	sd	s1,120(sp)
    80027594:	892a                	mv	s2,a0
    80027596:	e02e                	sd	a1,0(sp)
    80027598:	8a36                	mv	s4,a3
    8002759a:	8432                	mv	s0,a2
    8002759c:	0005899b          	sext.w	s3,a1
    800275a0:	4bc9                	li	s7,18
    800275a2:	00044b17          	auipc	s6,0x44
    800275a6:	af6b0b13          	addi	s6,s6,-1290 # 8006b098 <qjsc_repl+0x5ae8>
quickjs-nuttx/quickjs.c:51882
        if (JS_IsException(val))
    800275aa:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:51813
    switch(JS_VALUE_GET_NORM_TAG(val)) {
    800275ac:	00b4079b          	addiw	a5,s0,11
    800275b0:	0007871b          	sext.w	a4,a5
    800275b4:	1aebe363          	bltu	s7,a4,8002775a <JS_ToBigDecimalFree+0x1da>
    800275b8:	02079713          	slli	a4,a5,0x20
    800275bc:	01e75793          	srli	a5,a4,0x1e
    800275c0:	97da                	add	a5,a5,s6
    800275c2:	439c                	lw	a5,0(a5)
    800275c4:	97da                	add	a5,a5,s6
    800275c6:	8782                	jr	a5
quickjs-nuttx/quickjs.c:51817
        if (!allow_null_or_undefined)
    800275c8:	180a0963          	beqz	s4,8002775a <JS_ToBigDecimalFree+0x1da>
quickjs-nuttx/quickjs.c:51826
            val = JS_NewBigDecimal(ctx);
    800275cc:	854a                	mv	a0,s2
    800275ce:	ea8f30ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
    800275d2:	e02a                	sd	a0,0(sp)
    800275d4:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:51827
            if (JS_IsException(val))
    800275d6:	0005871b          	sext.w	a4,a1
    800275da:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51826
            val = JS_NewBigDecimal(ctx);
    800275dc:	842e                	mv	s0,a1
    800275de:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:51827
            if (JS_IsException(val))
    800275e2:	00f70f63          	beq	a4,a5,80027600 <JS_ToBigDecimalFree+0x80>
quickjs-nuttx/quickjs.c:51830
            if (bfdec_set_si(r, v)) {
    800275e6:	85ce                	mv	a1,s3
    800275e8:	0521                	addi	a0,a0,8
    800275ea:	0d5330ef          	jal	ra,8005aebe <bfdec_set_si>
    800275ee:	c909                	beqz	a0,80027600 <JS_ToBigDecimalFree+0x80>
quickjs-nuttx/quickjs.c:51831
                JS_FreeValue(ctx, val);
    800275f0:	6582                	ld	a1,0(sp)
    800275f2:	6622                	ld	a2,8(sp)
    800275f4:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:51832
                val = JS_EXCEPTION;
    800275f6:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:51831
                JS_FreeValue(ctx, val);
    800275f8:	9a6e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51832
                val = JS_EXCEPTION;
    800275fc:	4481                	li	s1,0
    800275fe:	c202                	sw	zero,4(sp)
quickjs-nuttx/quickjs.c:51902
    return val;
    80027600:	c026                	sw	s1,0(sp)
    80027602:	6782                	ld	a5,0(sp)
    80027604:	f422                	sd	s0,40(sp)
    80027606:	f03e                	sd	a5,32(sp)
    80027608:	a0b9                	j	80027656 <JS_ToBigDecimalFree+0xd6>
quickjs-nuttx/quickjs.c:51840
        val = JS_ToStringFree(ctx, val);
    8002760a:	c04e                	sw	s3,0(sp)
    8002760c:	6582                	ld	a1,0(sp)
    8002760e:	8622                	mv	a2,s0
    80027610:	854a                	mv	a0,s2
    80027612:	974f90ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:51881
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027616:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:51882
        if (JS_IsException(val))
    80027618:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:51881
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    8002761c:	842e                	mv	s0,a1
    8002761e:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:51882
        if (JS_IsException(val))
    80027622:	fd578fe3          	beq	a5,s5,80027600 <JS_ToBigDecimalFree+0x80>
quickjs-nuttx/quickjs.c:51811
{
    80027626:	89a6                	mv	s3,s1
    80027628:	b751                	j	800275ac <JS_ToBigDecimalFree+0x2c>
quickjs-nuttx/quickjs.c:51850
            str = JS_ToCStringLen(ctx, &len, val);
    8002762a:	c04e                	sw	s3,0(sp)
    8002762c:	6602                	ld	a2,0(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    8002762e:	082c                	addi	a1,sp,24
    80027630:	4701                	li	a4,0
    80027632:	86a2                	mv	a3,s0
    80027634:	854a                	mv	a0,s2
    80027636:	f832                	sd	a2,48(sp)
    80027638:	e422                	sd	s0,8(sp)
    8002763a:	fc22                	sd	s0,56(sp)
    8002763c:	841fa0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
JS_ToBigDecimalFree():
quickjs-nuttx/quickjs.c:51851
            JS_FreeValue(ctx, val);
    80027640:	6582                	ld	a1,0(sp)
    80027642:	6622                	ld	a2,8(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80027644:	8a2a                	mv	s4,a0
JS_ToBigDecimalFree():
quickjs-nuttx/quickjs.c:51851
    80027646:	854a                	mv	a0,s2
    80027648:	956e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51852
            if (!str)
    8002764c:	020a1263          	bnez	s4,80027670 <JS_ToBigDecimalFree+0xf0>
quickjs-nuttx/quickjs.c:51853
                return JS_EXCEPTION;
    80027650:	4799                	li	a5,6
    80027652:	f002                	sd	zero,32(sp)
    80027654:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:51903 (discriminator 4)
}
    80027656:	60aa                	ld	ra,136(sp)
    80027658:	640a                	ld	s0,128(sp)
    8002765a:	7502                	ld	a0,32(sp)
    8002765c:	75a2                	ld	a1,40(sp)
    8002765e:	74e6                	ld	s1,120(sp)
    80027660:	7946                	ld	s2,112(sp)
    80027662:	79a6                	ld	s3,104(sp)
    80027664:	7a06                	ld	s4,96(sp)
    80027666:	6ae6                	ld	s5,88(sp)
    80027668:	6b46                	ld	s6,80(sp)
    8002766a:	6ba6                	ld	s7,72(sp)
    8002766c:	6149                	addi	sp,sp,144
    8002766e:	8082                	ret
quickjs-nuttx/quickjs.c:51855
            p += skip_spaces(p);
    80027670:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:51854
            p = str;
    80027672:	e852                	sd	s4,16(sp)
quickjs-nuttx/quickjs.c:51855
            p += skip_spaces(p);
    80027674:	daae10ef          	jal	ra,80008c1e <skip_spaces>
    80027678:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:51856
            if ((p - str) == len) {
    8002767a:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:51855
            p += skip_spaces(p);
    8002767c:	95aa                	add	a1,a1,a0
    8002767e:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:51856
            if ((p - str) == len) {
    80027680:	41458733          	sub	a4,a1,s4
    80027684:	04f71963          	bne	a4,a5,800276d6 <JS_ToBigDecimalFree+0x156>
quickjs-nuttx/quickjs.c:51858
                val = JS_NewBigDecimal(ctx);
    80027688:	854a                	mv	a0,s2
    8002768a:	decf30ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
    8002768e:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:51859
                if (JS_IsException(val))
    80027690:	0005871b          	sext.w	a4,a1
    80027694:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51858
                val = JS_NewBigDecimal(ctx);
    80027696:	842e                	mv	s0,a1
    80027698:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:51859
                if (JS_IsException(val))
    8002769c:	f6f702e3          	beq	a4,a5,80027600 <JS_ToBigDecimalFree+0x80>
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    800276a0:	4581                	li	a1,0
    800276a2:	0521                	addi	a0,a0,8
    800276a4:	5bc300ef          	jal	ra,80057c60 <bf_set_zero>
JS_ToBigDecimalFree():
quickjs-nuttx/quickjs.c:51863
                err = 0;
    800276a8:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:51873
            JS_FreeCString(ctx, str);
    800276aa:	85d2                	mv	a1,s4
    800276ac:	854a                	mv	a0,s2
    800276ae:	c90e50ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:51874
            if (err) {
    800276b2:	f40987e3          	beqz	s3,80027600 <JS_ToBigDecimalFree+0x80>
quickjs-nuttx/quickjs.c:51875
                JS_FreeValue(ctx, val);
    800276b6:	c026                	sw	s1,0(sp)
    800276b8:	6582                	ld	a1,0(sp)
    800276ba:	8622                	mv	a2,s0
    800276bc:	854a                	mv	a0,s2
    800276be:	8e0e40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51876
                return JS_ThrowSyntaxError(ctx, "invalid bigdecimal literal");
    800276c2:	00044597          	auipc	a1,0x44
    800276c6:	99658593          	addi	a1,a1,-1642 # 8006b058 <qjsc_repl+0x5aa8>
    800276ca:	854a                	mv	a0,s2
    800276cc:	cb7f00ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
    800276d0:	f02a                	sd	a0,32(sp)
    800276d2:	f42e                	sd	a1,40(sp)
    800276d4:	b749                	j	80027656 <JS_ToBigDecimalFree+0xd6>
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    800276d6:	4781                	li	a5,0
    800276d8:	18000713          	li	a4,384
    800276dc:	4681                	li	a3,0
    800276de:	0810                	addi	a2,sp,16
    800276e0:	854a                	mv	a0,s2
    800276e2:	9b6f60ef          	jal	ra,8001d898 <js_atof2>
    800276e6:	f82a                	sd	a0,48(sp)
    800276e8:	fc2e                	sd	a1,56(sp)
    800276ea:	e02a                	sd	a0,0(sp)
JS_ToBigDecimalFree():
quickjs-nuttx/quickjs.c:51866
                if (JS_IsException(val)) {
    800276ec:	0005899b          	sext.w	s3,a1
    800276f0:	4799                	li	a5,6
    800276f2:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51865
                val = js_atof(ctx, p, &p, 0, ATOD_TYPE_BIG_DECIMAL);
    800276f4:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:51866
                if (JS_IsException(val)) {
    800276f8:	00f99963          	bne	s3,a5,8002770a <JS_ToBigDecimalFree+0x18a>
quickjs-nuttx/quickjs.c:51867
                    JS_FreeCString(ctx, str);
    800276fc:	85d2                	mv	a1,s4
    800276fe:	854a                	mv	a0,s2
    80027700:	c3ee50ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:51868
                    return JS_EXCEPTION;
    80027704:	f002                	sd	zero,32(sp)
    80027706:	f44e                	sd	s3,40(sp)
    80027708:	b7b9                	j	80027656 <JS_ToBigDecimalFree+0xd6>
quickjs-nuttx/quickjs.c:51870
                p += skip_spaces(p);
    8002770a:	6542                	ld	a0,16(sp)
    8002770c:	d12e10ef          	jal	ra,80008c1e <skip_spaces>
    80027710:	69c2                	ld	s3,16(sp)
    80027712:	99aa                	add	s3,s3,a0
quickjs-nuttx/quickjs.c:51871
                err = ((p - str) != len);
    80027714:	6562                	ld	a0,24(sp)
quickjs-nuttx/quickjs.c:51870
                p += skip_spaces(p);
    80027716:	e84e                	sd	s3,16(sp)
quickjs-nuttx/quickjs.c:51871
                err = ((p - str) != len);
    80027718:	414989b3          	sub	s3,s3,s4
    8002771c:	40a989b3          	sub	s3,s3,a0
    80027720:	013039b3          	snez	s3,s3
    80027724:	b759                	j	800276aa <JS_ToBigDecimalFree+0x12a>
quickjs-nuttx/quickjs.c:51881
        val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027726:	c04e                	sw	s3,0(sp)
    80027728:	6582                	ld	a1,0(sp)
    8002772a:	4685                	li	a3,1
    8002772c:	8622                	mv	a2,s0
    8002772e:	854a                	mv	a0,s2
    80027730:	bacf80ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    80027734:	b5cd                	j	80027616 <JS_ToBigDecimalFree+0x96>
quickjs-nuttx/quickjs.c:51888
            if (!allow_null_or_undefined)
    80027736:	020a0263          	beqz	s4,8002775a <JS_ToBigDecimalFree+0x1da>
quickjs-nuttx/quickjs.c:51890
            val = JS_NewBigDecimal(ctx);
    8002773a:	854a                	mv	a0,s2
    8002773c:	d3af30ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
    80027740:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:51891
            if (JS_IsException(val))
    80027742:	0005871b          	sext.w	a4,a1
    80027746:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51890
            val = JS_NewBigDecimal(ctx);
    80027748:	842e                	mv	s0,a1
    8002774a:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:51891
            if (JS_IsException(val))
    8002774e:	eaf709e3          	beq	a4,a5,80027600 <JS_ToBigDecimalFree+0x80>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    80027752:	0521                	addi	a0,a0,8
    80027754:	46a300ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.h:458
}
    80027758:	b565                	j	80027600 <JS_ToBigDecimalFree+0x80>
JS_ToBigDecimalFree():
quickjs-nuttx/quickjs.c:51899
        JS_FreeValue(ctx, val);
    8002775a:	c04e                	sw	s3,0(sp)
    8002775c:	6582                	ld	a1,0(sp)
    8002775e:	854a                	mv	a0,s2
    80027760:	8622                	mv	a2,s0
    80027762:	83ce40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51903
}
    80027766:	640a                	ld	s0,128(sp)
    80027768:	60aa                	ld	ra,136(sp)
    8002776a:	74e6                	ld	s1,120(sp)
    8002776c:	79a6                	ld	s3,104(sp)
    8002776e:	7a06                	ld	s4,96(sp)
    80027770:	6ae6                	ld	s5,88(sp)
    80027772:	6b46                	ld	s6,80(sp)
    80027774:	6ba6                	ld	s7,72(sp)
quickjs-nuttx/quickjs.c:51900
        return JS_ThrowTypeError(ctx, "cannot convert to bigdecimal");
    80027776:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:51903
}
    80027778:	7946                	ld	s2,112(sp)
quickjs-nuttx/quickjs.c:51900
        return JS_ThrowTypeError(ctx, "cannot convert to bigdecimal");
    8002777a:	00044597          	auipc	a1,0x44
    8002777e:	8fe58593          	addi	a1,a1,-1794 # 8006b078 <qjsc_repl+0x5ac8>
quickjs-nuttx/quickjs.c:51903
}
    80027782:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:51900
        return JS_ThrowTypeError(ctx, "cannot convert to bigdecimal");
    80027784:	ee9f006f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:51813
    switch(JS_VALUE_GET_NORM_TAG(val)) {
    80027788:	84ce                	mv	s1,s3
    8002778a:	bd9d                	j	80027600 <JS_ToBigDecimalFree+0x80>

000000008002778c <js_bigdecimal_constructor>:
js_bigdecimal_constructor():
quickjs-nuttx/quickjs.c:51910
    if (!JS_IsUndefined(new_target))
    8002778c:	2601                	sext.w	a2,a2
    8002778e:	478d                	li	a5,3
    80027790:	00f60863          	beq	a2,a5,800277a0 <js_bigdecimal_constructor+0x14>
quickjs-nuttx/quickjs.c:51911
        return JS_ThrowTypeError(ctx, "not a constructor");
    80027794:	00043597          	auipc	a1,0x43
    80027798:	c0458593          	addi	a1,a1,-1020 # 8006a398 <qjsc_repl+0x4de8>
    8002779c:	ed1f006f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:51908
{
    800277a0:	711d                	addi	sp,sp,-96
    800277a2:	ec86                	sd	ra,88(sp)
    800277a4:	e8a2                	sd	s0,80(sp)
    800277a6:	e4a6                	sd	s1,72(sp)
quickjs-nuttx/quickjs.c:51912
    if (argc == 0) {
    800277a8:	e695                	bnez	a3,800277d4 <js_bigdecimal_constructor+0x48>
quickjs-nuttx/quickjs.c:51914
        val = JS_NewBigDecimal(ctx);
    800277aa:	cccf30ef          	jal	ra,8001ac76 <JS_NewBigDecimal>
quickjs-nuttx/quickjs.c:51915
        if (JS_IsException(val))
    800277ae:	0005871b          	sext.w	a4,a1
    800277b2:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51914
        val = JS_NewBigDecimal(ctx);
    800277b4:	84aa                	mv	s1,a0
    800277b6:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51915
        if (JS_IsException(val))
    800277b8:	00f70763          	beq	a4,a5,800277c6 <js_bigdecimal_constructor+0x3a>
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    800277bc:	4581                	li	a1,0
    800277be:	00848513          	addi	a0,s1,8
    800277c2:	49e300ef          	jal	ra,80057c60 <bf_set_zero>
js_bigdecimal_constructor():
quickjs-nuttx/quickjs.c:51923
}
    800277c6:	60e6                	ld	ra,88(sp)
    800277c8:	85a2                	mv	a1,s0
    800277ca:	6446                	ld	s0,80(sp)
    800277cc:	8526                	mv	a0,s1
    800277ce:	64a6                	ld	s1,72(sp)
    800277d0:	6125                	addi	sp,sp,96
    800277d2:	8082                	ret
    800277d4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:51920
        val = JS_ToBigDecimalFree(ctx, JS_DupValue(ctx, argv[0]), FALSE);
    800277d6:	670c                	ld	a1,8(a4)
    800277d8:	6308                	ld	a0,0(a4)
    800277da:	c41e20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800277de:	862e                	mv	a2,a1
    800277e0:	4681                	li	a3,0
    800277e2:	85aa                	mv	a1,a0
    800277e4:	8522                	mv	a0,s0
    800277e6:	d9bff0ef          	jal	ra,80027580 <JS_ToBigDecimalFree>
    800277ea:	84aa                	mv	s1,a0
    800277ec:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51922
    return val;
    800277ee:	bfe1                	j	800277c6 <js_bigdecimal_constructor+0x3a>

00000000800277f0 <js_compare_bigdecimal>:
js_compare_bigdecimal():
quickjs-nuttx/quickjs.c:13813
{
    800277f0:	715d                	addi	sp,sp,-80
    800277f2:	8836                	mv	a6,a3
    800277f4:	f84a                	sd	s2,48(sp)
quickjs-nuttx/quickjs.c:13820
    op1 = JS_ToBigDecimalFree(ctx, op1, TRUE);
    800277f6:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:13813
{
    800277f8:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:13820
    op1 = JS_ToBigDecimalFree(ctx, op1, TRUE);
    800277fa:	85b2                	mv	a1,a2
    800277fc:	8642                	mv	a2,a6
quickjs-nuttx/quickjs.c:13813
{
    800277fe:	e0a2                	sd	s0,64(sp)
    80027800:	fc26                	sd	s1,56(sp)
    80027802:	f052                	sd	s4,32(sp)
    80027804:	e486                	sd	ra,72(sp)
    80027806:	f44e                	sd	s3,40(sp)
    80027808:	84aa                	mv	s1,a0
    8002780a:	e03a                	sd	a4,0(sp)
    8002780c:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:13820
    op1 = JS_ToBigDecimalFree(ctx, op1, TRUE);
    8002780e:	d73ff0ef          	jal	ra,80027580 <JS_ToBigDecimalFree>
    80027812:	e82a                	sd	a0,16(sp)
    80027814:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:13821
    if (JS_IsException(op1)) {
    80027816:	0005841b          	sext.w	s0,a1
    8002781a:	4a19                	li	s4,6
    8002781c:	03441163          	bne	s0,s4,8002783e <js_compare_bigdecimal+0x4e>
quickjs-nuttx/quickjs.c:13822
        JS_FreeValue(ctx, op2);
    80027820:	6582                	ld	a1,0(sp)
    80027822:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:13827
        JS_FreeValue(ctx, op1);
    80027824:	8526                	mv	a0,s1
    80027826:	f79e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13828
        return -1;
    8002782a:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:13855
}
    8002782c:	60a6                	ld	ra,72(sp)
    8002782e:	8522                	mv	a0,s0
    80027830:	6406                	ld	s0,64(sp)
    80027832:	74e2                	ld	s1,56(sp)
    80027834:	7942                	ld	s2,48(sp)
    80027836:	79a2                	ld	s3,40(sp)
    80027838:	7a02                	ld	s4,32(sp)
    8002783a:	6161                	addi	sp,sp,80
    8002783c:	8082                	ret
quickjs-nuttx/quickjs.c:13825
    op2 = JS_ToBigDecimalFree(ctx, op2, TRUE);
    8002783e:	6582                	ld	a1,0(sp)
    80027840:	6622                	ld	a2,8(sp)
    80027842:	4685                	li	a3,1
    80027844:	8526                	mv	a0,s1
    80027846:	d3bff0ef          	jal	ra,80027580 <JS_ToBigDecimalFree>
    8002784a:	e02a                	sd	a0,0(sp)
    8002784c:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:13826
    if (JS_IsException(op2)) {
    8002784e:	0005899b          	sext.w	s3,a1
    80027852:	01499563          	bne	s3,s4,8002785c <js_compare_bigdecimal+0x6c>
quickjs-nuttx/quickjs.c:13827
        JS_FreeValue(ctx, op1);
    80027856:	65c2                	ld	a1,16(sp)
    80027858:	6662                	ld	a2,24(sp)
    8002785a:	b7e9                	j	80027824 <js_compare_bigdecimal+0x34>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12374
    switch(tag) {
    8002785c:	57d5                	li	a5,-11
    8002785e:	02f41d63          	bne	s0,a5,80027898 <js_compare_bigdecimal+0xa8>
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    80027862:	6442                	ld	s0,16(sp)
    80027864:	0421                	addi	s0,s0,8
quickjs-nuttx/quickjs.c:12374
    switch(tag) {
    80027866:	57d5                	li	a5,-11
    80027868:	04f99163          	bne	s3,a5,800278aa <js_compare_bigdecimal+0xba>
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    8002786c:	6782                	ld	a5,0(sp)
    8002786e:	00878513          	addi	a0,a5,8
js_compare_bigdecimal():
quickjs-nuttx/quickjs.c:13833
    switch(op) {
    80027872:	f5c9059b          	addiw	a1,s2,-164
    80027876:	0005871b          	sext.w	a4,a1
    8002787a:	4799                	li	a5,6
    8002787c:	08e7e363          	bltu	a5,a4,80027902 <js_compare_bigdecimal+0x112>
    80027880:	02059793          	slli	a5,a1,0x20
    80027884:	01e7d593          	srli	a1,a5,0x1e
    80027888:	00044717          	auipc	a4,0x44
    8002788c:	85c70713          	addi	a4,a4,-1956 # 8006b0e4 <qjsc_repl+0x5b34>
    80027890:	95ba                	add	a1,a1,a4
    80027892:	419c                	lw	a5,0(a1)
    80027894:	97ba                	add	a5,a5,a4
    80027896:	8782                	jr	a5
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12380
        JS_ThrowTypeError(ctx, "bigdecimal expected");
    80027898:	00043597          	auipc	a1,0x43
    8002789c:	fa858593          	addi	a1,a1,-88 # 8006a840 <qjsc_repl+0x5290>
    800278a0:	8526                	mv	a0,s1
    800278a2:	dcbf00ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:12381
        r = NULL;
    800278a6:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:12382
        break;
    800278a8:	bf7d                	j	80027866 <js_compare_bigdecimal+0x76>
quickjs-nuttx/quickjs.c:12380
        JS_ThrowTypeError(ctx, "bigdecimal expected");
    800278aa:	00043597          	auipc	a1,0x43
    800278ae:	f9658593          	addi	a1,a1,-106 # 8006a840 <qjsc_repl+0x5290>
    800278b2:	8526                	mv	a0,s1
    800278b4:	db9f00ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:12381
        r = NULL;
    800278b8:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:12382
        break;
    800278ba:	bf65                	j	80027872 <js_compare_bigdecimal+0x82>
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    return bf_cmp(a, b) < 0;
    800278bc:	85aa                	mv	a1,a0
    800278be:	8522                	mv	a0,s0
    800278c0:	0ac310ef          	jal	ra,8005896c <bf_cmp>
    800278c4:	01f5541b          	srliw	s0,a0,0x1f
js_compare_bigdecimal():
quickjs-nuttx/quickjs.c:13852
    JS_FreeValue(ctx, op1);
    800278c8:	65c2                	ld	a1,16(sp)
    800278ca:	6662                	ld	a2,24(sp)
    800278cc:	8526                	mv	a0,s1
    800278ce:	ed1e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13853
    JS_FreeValue(ctx, op2);
    800278d2:	6582                	ld	a1,0(sp)
    800278d4:	6622                	ld	a2,8(sp)
    800278d6:	8526                	mv	a0,s1
    800278d8:	ec7e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13854
    return res;
    800278dc:	bf81                	j	8002782c <js_compare_bigdecimal+0x3c>
bf_cmp_le():
quickjs-nuttx/libbf.h:274
    return bf_cmp(a, b) <= 0;
    800278de:	85aa                	mv	a1,a0
    800278e0:	8522                	mv	a0,s0
    800278e2:	08a310ef          	jal	ra,8005896c <bf_cmp>
    800278e6:	00152413          	slti	s0,a0,1
js_compare_bigdecimal():
quickjs-nuttx/quickjs.c:13845
        break;
    800278ea:	bff9                	j	800278c8 <js_compare_bigdecimal+0xd8>
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    return bf_cmp(a, b) < 0;
    800278ec:	85a2                	mv	a1,s0
    800278ee:	bfc9                	j	800278c0 <js_compare_bigdecimal+0xd0>
bf_cmp_le():
quickjs-nuttx/libbf.h:274
    return bf_cmp(a, b) <= 0;
    800278f0:	85a2                	mv	a1,s0
    800278f2:	bfc5                	j	800278e2 <js_compare_bigdecimal+0xf2>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    return bf_cmp(a, b) == 0;
    800278f4:	85aa                	mv	a1,a0
    800278f6:	8522                	mv	a0,s0
    800278f8:	074310ef          	jal	ra,8005896c <bf_cmp>
    800278fc:	00153413          	seqz	s0,a0
js_compare_bigdecimal():
quickjs-nuttx/quickjs.c:13848
        break;
    80027900:	b7e1                	j	800278c8 <js_compare_bigdecimal+0xd8>
quickjs-nuttx/quickjs.c:13850
        abort();
    80027902:	2803b0ef          	jal	ra,80062b82 <abort>

0000000080027906 <js_bigdecimal_get_rnd_mode>:
js_bigdecimal_get_rnd_mode():
quickjs-nuttx/quickjs.c:51958
{
    80027906:	715d                	addi	sp,sp,-80
    80027908:	86b2                	mv	a3,a2
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    8002790a:	4701                	li	a4,0
    8002790c:	862e                	mv	a2,a1
    8002790e:	082c                	addi	a1,sp,24
js_bigdecimal_get_rnd_mode():
quickjs-nuttx/quickjs.c:51958
    80027910:	f84a                	sd	s2,48(sp)
    80027912:	e486                	sd	ra,72(sp)
    80027914:	e0a2                	sd	s0,64(sp)
    80027916:	fc26                	sd	s1,56(sp)
    80027918:	892a                	mv	s2,a0
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    8002791a:	d62fa0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
js_bigdecimal_get_rnd_mode():
quickjs-nuttx/quickjs.c:51964
    if (!str)
    8002791e:	c541                	beqz	a0,800279a6 <js_bigdecimal_get_rnd_mode+0xa0>
    80027920:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:51966
    if (strlen(str) != size)
    80027922:	4603c0ef          	jal	ra,80063d82 <strlen>
    80027926:	67e2                	ld	a5,24(sp)
    80027928:	06f51463          	bne	a0,a5,80027990 <js_bigdecimal_get_rnd_mode+0x8a>
quickjs-nuttx/quickjs.c:51968
    if (!strcmp(str, "floor")) {
    8002792c:	00043597          	auipc	a1,0x43
    80027930:	7d458593          	addi	a1,a1,2004 # 8006b100 <qjsc_repl+0x5b50>
    80027934:	8526                	mv	a0,s1
    80027936:	3ea3c0ef          	jal	ra,80063d20 <strcmp>
    8002793a:	c925                	beqz	a0,800279aa <js_bigdecimal_get_rnd_mode+0xa4>
quickjs-nuttx/quickjs.c:51970
    } else if (!strcmp(str, "ceiling")) {
    8002793c:	00043597          	auipc	a1,0x43
    80027940:	7cc58593          	addi	a1,a1,1996 # 8006b108 <qjsc_repl+0x5b58>
    80027944:	8526                	mv	a0,s1
    80027946:	3da3c0ef          	jal	ra,80063d20 <strcmp>
    8002794a:	cd25                	beqz	a0,800279c2 <js_bigdecimal_get_rnd_mode+0xbc>
quickjs-nuttx/quickjs.c:51972
    } else if (!strcmp(str, "down")) {
    8002794c:	0006b597          	auipc	a1,0x6b
    80027950:	5e458593          	addi	a1,a1,1508 # 80092f30 <g_dtoa_scale_up+0xdf8>
    80027954:	8526                	mv	a0,s1
    80027956:	3ca3c0ef          	jal	ra,80063d20 <strcmp>
    8002795a:	c535                	beqz	a0,800279c6 <js_bigdecimal_get_rnd_mode+0xc0>
quickjs-nuttx/quickjs.c:51974
    } else if (!strcmp(str, "up")) {
    8002795c:	00043597          	auipc	a1,0x43
    80027960:	7b458593          	addi	a1,a1,1972 # 8006b110 <qjsc_repl+0x5b60>
    80027964:	8526                	mv	a0,s1
    80027966:	3ba3c0ef          	jal	ra,80063d20 <strcmp>
    8002796a:	c125                	beqz	a0,800279ca <js_bigdecimal_get_rnd_mode+0xc4>
quickjs-nuttx/quickjs.c:51976
    } else if (!strcmp(str, "half-even")) {
    8002796c:	00043597          	auipc	a1,0x43
    80027970:	7ac58593          	addi	a1,a1,1964 # 8006b118 <qjsc_repl+0x5b68>
    80027974:	8526                	mv	a0,s1
    80027976:	3aa3c0ef          	jal	ra,80063d20 <strcmp>
    8002797a:	842a                	mv	s0,a0
    8002797c:	c905                	beqz	a0,800279ac <js_bigdecimal_get_rnd_mode+0xa6>
quickjs-nuttx/quickjs.c:51978
    } else if (!strcmp(str, "half-up")) {
    8002797e:	00043597          	auipc	a1,0x43
    80027982:	7aa58593          	addi	a1,a1,1962 # 8006b128 <qjsc_repl+0x5b78>
    80027986:	8526                	mv	a0,s1
    80027988:	3983c0ef          	jal	ra,80063d20 <strcmp>
quickjs-nuttx/quickjs.c:51979
        rnd_mode = BF_RNDNA;
    8002798c:	4411                	li	s0,4
quickjs-nuttx/quickjs.c:51978
    } else if (!strcmp(str, "half-up")) {
    8002798e:	cd19                	beqz	a0,800279ac <js_bigdecimal_get_rnd_mode+0xa6>
quickjs-nuttx/quickjs.c:51982
        JS_FreeCString(ctx, str);
    80027990:	85a6                	mv	a1,s1
    80027992:	854a                	mv	a0,s2
    80027994:	9aae50ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:51983
        JS_ThrowTypeError(ctx, "invalid rounding mode");
    80027998:	00043597          	auipc	a1,0x43
    8002799c:	22058593          	addi	a1,a1,544 # 8006abb8 <qjsc_repl+0x5608>
    800279a0:	854a                	mv	a0,s2
    800279a2:	ccbf00ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:51965
        return -1;
    800279a6:	547d                	li	s0,-1
    800279a8:	a031                	j	800279b4 <js_bigdecimal_get_rnd_mode+0xae>
quickjs-nuttx/quickjs.c:51969
        rnd_mode = BF_RNDD;
    800279aa:	4409                	li	s0,2
quickjs-nuttx/quickjs.c:51986
    JS_FreeCString(ctx, str);
    800279ac:	85a6                	mv	a1,s1
    800279ae:	854a                	mv	a0,s2
    800279b0:	98ee50ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:51988
}
    800279b4:	60a6                	ld	ra,72(sp)
    800279b6:	8522                	mv	a0,s0
    800279b8:	6406                	ld	s0,64(sp)
    800279ba:	74e2                	ld	s1,56(sp)
    800279bc:	7942                	ld	s2,48(sp)
    800279be:	6161                	addi	sp,sp,80
    800279c0:	8082                	ret
quickjs-nuttx/quickjs.c:51971
        rnd_mode = BF_RNDU;
    800279c2:	440d                	li	s0,3
    800279c4:	b7e5                	j	800279ac <js_bigdecimal_get_rnd_mode+0xa6>
quickjs-nuttx/quickjs.c:51973
        rnd_mode = BF_RNDZ;
    800279c6:	4405                	li	s0,1
    800279c8:	b7d5                	j	800279ac <js_bigdecimal_get_rnd_mode+0xa6>
quickjs-nuttx/quickjs.c:51975
        rnd_mode = BF_RNDA;
    800279ca:	4415                	li	s0,5
    800279cc:	b7c5                	j	800279ac <js_bigdecimal_get_rnd_mode+0xa6>

00000000800279ce <js_bigfloat_constructor.part.0>:
js_bigfloat_constructor():
quickjs-nuttx/quickjs.c:51100
static JSValue js_bigfloat_constructor(JSContext *ctx,
    800279ce:	7119                	addi	sp,sp,-128
    800279d0:	fc86                	sd	ra,120(sp)
    800279d2:	f8a2                	sd	s0,112(sp)
    800279d4:	f4a6                	sd	s1,104(sp)
    800279d6:	f0ca                	sd	s2,96(sp)
    800279d8:	ecce                	sd	s3,88(sp)
    800279da:	e8d2                	sd	s4,80(sp)
quickjs-nuttx/quickjs.c:51107
    if (argc == 0) {
    800279dc:	e58d                	bnez	a1,80027a06 <js_bigfloat_constructor.part.0+0x38>
quickjs-nuttx/quickjs.c:51109
        val = JS_NewBigFloat(ctx);
    800279de:	fa2f20ef          	jal	ra,8001a180 <JS_NewBigFloat>
    800279e2:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:51110
        if (JS_IsException(val))
    800279e4:	0005871b          	sext.w	a4,a1
    800279e8:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51109
        val = JS_NewBigFloat(ctx);
    800279ea:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51110
        if (JS_IsException(val))
    800279ec:	00f71563          	bne	a4,a5,800279f6 <js_bigfloat_constructor.part.0+0x28>
quickjs-nuttx/quickjs.c:51190
                    return JS_ThrowSyntaxError(ctx, "invalid bigfloat literal");
    800279f0:	f82a                	sd	a0,48(sp)
    800279f2:	fc2e                	sd	a1,56(sp)
    800279f4:	a2a5                	j	80027b5c <js_bigfloat_constructor.part.0+0x18e>
quickjs-nuttx/quickjs.c:51113
        bf_set_zero(r, 0);
    800279f6:	4581                	li	a1,0
    800279f8:	0521                	addi	a0,a0,8
    800279fa:	266300ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/quickjs.c:51206
    return val;
    800279fe:	7782                	ld	a5,32(sp)
    80027a00:	fc22                	sd	s0,56(sp)
    80027a02:	f83e                	sd	a5,48(sp)
    80027a04:	aaa1                	j	80027b5c <js_bigfloat_constructor.part.0+0x18e>
quickjs-nuttx/quickjs.c:51115
        val = JS_DupValue(ctx, argv[0]);
    80027a06:	660c                	ld	a1,8(a2)
    80027a08:	84aa                	mv	s1,a0
    80027a0a:	6208                	ld	a0,0(a2)
    80027a0c:	4a49                	li	s4,18
    80027a0e:	00043997          	auipc	s3,0x43
    80027a12:	75e98993          	addi	s3,s3,1886 # 8006b16c <qjsc_repl+0x5bbc>
    80027a16:	a05e20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80027a1a:	f02a                	sd	a0,32(sp)
    80027a1c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51196
            if (JS_IsException(val))
    80027a1e:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:51117
        switch(JS_VALUE_GET_NORM_TAG(val)) {
    80027a20:	00b4079b          	addiw	a5,s0,11
    80027a24:	0007871b          	sext.w	a4,a5
    80027a28:	16ea6963          	bltu	s4,a4,80027b9a <js_bigfloat_constructor.part.0+0x1cc>
    80027a2c:	02079713          	slli	a4,a5,0x20
    80027a30:	01e75793          	srli	a5,a4,0x1e
    80027a34:	97ce                	add	a5,a5,s3
    80027a36:	439c                	lw	a5,0(a5)
    80027a38:	97ce                	add	a5,a5,s3
    80027a3a:	8782                	jr	a5
    80027a3c:	545d                	li	s0,-9
    80027a3e:	b7c1                	j	800279fe <js_bigfloat_constructor.part.0+0x30>
quickjs-nuttx/quickjs.c:51123
                double d = JS_VALUE_GET_FLOAT64(val);
    80027a40:	3502                	fld	fa0,32(sp)
quickjs-nuttx/quickjs.c:51124
                val = JS_NewBigFloat(ctx);
    80027a42:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:51123
                double d = JS_VALUE_GET_FLOAT64(val);
    80027a44:	a42a                	fsd	fa0,8(sp)
quickjs-nuttx/quickjs.c:51124
                val = JS_NewBigFloat(ctx);
    80027a46:	f3af20ef          	jal	ra,8001a180 <JS_NewBigFloat>
    80027a4a:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:51125
                if (JS_IsException(val))
    80027a4c:	0005871b          	sext.w	a4,a1
    80027a50:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51124
                val = JS_NewBigFloat(ctx);
    80027a52:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51125
                if (JS_IsException(val))
    80027a54:	faf705e3          	beq	a4,a5,800279fe <js_bigfloat_constructor.part.0+0x30>
quickjs-nuttx/quickjs.c:51128
                if (bf_set_float64(r, d))
    80027a58:	2522                	fld	fa0,8(sp)
    80027a5a:	0521                	addi	a0,a0,8
    80027a5c:	4ae310ef          	jal	ra,80058f0a <bf_set_float64>
quickjs-nuttx/quickjs.c:51140
                if (bf_set_si(r, v))
    80027a60:	dd59                	beqz	a0,800279fe <js_bigfloat_constructor.part.0+0x30>
quickjs-nuttx/quickjs.c:51208
    JS_FreeValue(ctx, val);
    80027a62:	7582                	ld	a1,32(sp)
    80027a64:	8622                	mv	a2,s0
    80027a66:	8526                	mv	a0,s1
    80027a68:	d37e30ef          	jal	ra,8000b79e <JS_FreeValue>
    80027a6c:	a8b9                	j	80027aca <js_bigfloat_constructor.part.0+0xfc>
quickjs-nuttx/quickjs.c:51136
                val = JS_NewBigFloat(ctx);
    80027a6e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:51135
                int32_t v = JS_VALUE_GET_INT(val);
    80027a70:	5902                	lw	s2,32(sp)
quickjs-nuttx/quickjs.c:51136
                val = JS_NewBigFloat(ctx);
    80027a72:	f0ef20ef          	jal	ra,8001a180 <JS_NewBigFloat>
    80027a76:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:51137
                if (JS_IsException(val))
    80027a78:	0005871b          	sext.w	a4,a1
    80027a7c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51136
                val = JS_NewBigFloat(ctx);
    80027a7e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51137
                if (JS_IsException(val))
    80027a80:	f6f70fe3          	beq	a4,a5,800279fe <js_bigfloat_constructor.part.0+0x30>
quickjs-nuttx/quickjs.c:51140
                if (bf_set_si(r, v))
    80027a84:	85ca                	mv	a1,s2
    80027a86:	0521                	addi	a0,a0,8
    80027a88:	1b4300ef          	jal	ra,80057c3c <bf_set_si>
    80027a8c:	bfd1                	j	80027a60 <js_bigfloat_constructor.part.0+0x92>
quickjs-nuttx/quickjs.c:51152
            val = JS_ToStringFree(ctx, val);
    80027a8e:	7582                	ld	a1,32(sp)
    80027a90:	8622                	mv	a2,s0
    80027a92:	8526                	mv	a0,s1
    80027a94:	cf3f80ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:51195
            val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027a98:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:51196
            if (JS_IsException(val))
    80027a9a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:51195
            val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027a9e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51196
            if (JS_IsException(val))
    80027aa0:	f92790e3          	bne	a5,s2,80027a20 <js_bigfloat_constructor.part.0+0x52>
    80027aa4:	bfa9                	j	800279fe <js_bigfloat_constructor.part.0+0x30>
quickjs-nuttx/quickjs.c:51162
                str = JS_ToCStringLen(ctx, &len, val);
    80027aa6:	7602                	ld	a2,32(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80027aa8:	082c                	addi	a1,sp,24
    80027aaa:	4701                	li	a4,0
    80027aac:	86a2                	mv	a3,s0
    80027aae:	8526                	mv	a0,s1
    80027ab0:	e0b2                	sd	a2,64(sp)
    80027ab2:	f422                	sd	s0,40(sp)
    80027ab4:	e4a2                	sd	s0,72(sp)
    80027ab6:	bc6fa0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
js_bigfloat_constructor():
quickjs-nuttx/quickjs.c:51163
                JS_FreeValue(ctx, val);
    80027aba:	7582                	ld	a1,32(sp)
    80027abc:	7622                	ld	a2,40(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80027abe:	89aa                	mv	s3,a0
js_bigfloat_constructor():
quickjs-nuttx/quickjs.c:51163
    80027ac0:	8526                	mv	a0,s1
    80027ac2:	cdde30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51164
                if (!str)
    80027ac6:	00099663          	bnez	s3,80027ad2 <js_bigfloat_constructor.part.0+0x104>
quickjs-nuttx/quickjs.c:51209
    return JS_EXCEPTION;
    80027aca:	4799                	li	a5,6
    80027acc:	f802                	sd	zero,48(sp)
    80027ace:	fc3e                	sd	a5,56(sp)
    80027ad0:	a071                	j	80027b5c <js_bigfloat_constructor.part.0+0x18e>
quickjs-nuttx/quickjs.c:51167
                p += skip_spaces(p);
    80027ad2:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:51166
                p = str;
    80027ad4:	e84e                	sd	s3,16(sp)
quickjs-nuttx/quickjs.c:51167
                p += skip_spaces(p);
    80027ad6:	948e10ef          	jal	ra,80008c1e <skip_spaces>
    80027ada:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:51168
                if ((p - str) == len) {
    80027adc:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:51167
                p += skip_spaces(p);
    80027ade:	95aa                	add	a1,a1,a0
    80027ae0:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:51168
                if ((p - str) == len) {
    80027ae2:	41358733          	sub	a4,a1,s3
    80027ae6:	04f71463          	bne	a4,a5,80027b2e <js_bigfloat_constructor.part.0+0x160>
quickjs-nuttx/quickjs.c:51170
                    val = JS_NewBigFloat(ctx);
    80027aea:	8526                	mv	a0,s1
    80027aec:	e94f20ef          	jal	ra,8001a180 <JS_NewBigFloat>
    80027af0:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:51171
                    if (JS_IsException(val))
    80027af2:	0005871b          	sext.w	a4,a1
    80027af6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51170
                    val = JS_NewBigFloat(ctx);
    80027af8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:51171
                    if (JS_IsException(val))
    80027afa:	f0f702e3          	beq	a4,a5,800279fe <js_bigfloat_constructor.part.0+0x30>
quickjs-nuttx/quickjs.c:51174
                    bf_set_zero(r, 0);
    80027afe:	4581                	li	a1,0
    80027b00:	0521                	addi	a0,a0,8
    80027b02:	15e300ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/quickjs.c:51175
                    err = 0;
    80027b06:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:51187
                JS_FreeCString(ctx, str);
    80027b08:	85ce                	mv	a1,s3
    80027b0a:	8526                	mv	a0,s1
    80027b0c:	832e50ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:51188
                if (err) {
    80027b10:	ee0907e3          	beqz	s2,800279fe <js_bigfloat_constructor.part.0+0x30>
quickjs-nuttx/quickjs.c:51189
                    JS_FreeValue(ctx, val);
    80027b14:	7582                	ld	a1,32(sp)
    80027b16:	8526                	mv	a0,s1
    80027b18:	8622                	mv	a2,s0
    80027b1a:	c85e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51190
                    return JS_ThrowSyntaxError(ctx, "invalid bigfloat literal");
    80027b1e:	8526                	mv	a0,s1
    80027b20:	00043597          	auipc	a1,0x43
    80027b24:	61058593          	addi	a1,a1,1552 # 8006b130 <qjsc_repl+0x5b80>
    80027b28:	85bf00ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
    80027b2c:	b5d1                	j	800279f0 <js_bigfloat_constructor.part.0+0x22>
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    80027b2e:	4781                	li	a5,0
    80027b30:	50400713          	li	a4,1284
    80027b34:	4681                	li	a3,0
    80027b36:	0810                	addi	a2,sp,16
    80027b38:	8526                	mv	a0,s1
    80027b3a:	d5ff50ef          	jal	ra,8001d898 <js_atof2>
    80027b3e:	e0aa                	sd	a0,64(sp)
    80027b40:	e4ae                	sd	a1,72(sp)
    80027b42:	f02a                	sd	a0,32(sp)
js_bigfloat_constructor():
quickjs-nuttx/quickjs.c:51180
                    if (JS_IsException(val)) {
    80027b44:	0005891b          	sext.w	s2,a1
    80027b48:	4799                	li	a5,6
    80027b4a:	842e                	mv	s0,a1
    80027b4c:	02f91263          	bne	s2,a5,80027b70 <js_bigfloat_constructor.part.0+0x1a2>
quickjs-nuttx/quickjs.c:51181
                        JS_FreeCString(ctx, str);
    80027b50:	85ce                	mv	a1,s3
    80027b52:	8526                	mv	a0,s1
    80027b54:	febe40ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:51182
                        return JS_EXCEPTION;
    80027b58:	f802                	sd	zero,48(sp)
    80027b5a:	fc4a                	sd	s2,56(sp)
quickjs-nuttx/quickjs.c:51210
}
    80027b5c:	70e6                	ld	ra,120(sp)
    80027b5e:	7446                	ld	s0,112(sp)
    80027b60:	7542                	ld	a0,48(sp)
    80027b62:	75e2                	ld	a1,56(sp)
    80027b64:	74a6                	ld	s1,104(sp)
    80027b66:	7906                	ld	s2,96(sp)
    80027b68:	69e6                	ld	s3,88(sp)
    80027b6a:	6a46                	ld	s4,80(sp)
    80027b6c:	6109                	addi	sp,sp,128
    80027b6e:	8082                	ret
quickjs-nuttx/quickjs.c:51184
                    p += skip_spaces(p);
    80027b70:	6542                	ld	a0,16(sp)
    80027b72:	8ace10ef          	jal	ra,80008c1e <skip_spaces>
    80027b76:	6942                	ld	s2,16(sp)
    80027b78:	992a                	add	s2,s2,a0
quickjs-nuttx/quickjs.c:51185
                    err = ((p - str) != len);
    80027b7a:	6562                	ld	a0,24(sp)
quickjs-nuttx/quickjs.c:51184
                    p += skip_spaces(p);
    80027b7c:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:51185
                    err = ((p - str) != len);
    80027b7e:	41390933          	sub	s2,s2,s3
    80027b82:	40a90933          	sub	s2,s2,a0
    80027b86:	01203933          	snez	s2,s2
    80027b8a:	bfbd                	j	80027b08 <js_bigfloat_constructor.part.0+0x13a>
quickjs-nuttx/quickjs.c:51195
            val = JS_ToPrimitiveFree(ctx, val, HINT_NUMBER);
    80027b8c:	7582                	ld	a1,32(sp)
    80027b8e:	4685                	li	a3,1
    80027b90:	8622                	mv	a2,s0
    80027b92:	8526                	mv	a0,s1
    80027b94:	f49f70ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    80027b98:	b701                	j	80027a98 <js_bigfloat_constructor.part.0+0xca>
quickjs-nuttx/quickjs.c:51202
            JS_FreeValue(ctx, val);
    80027b9a:	7582                	ld	a1,32(sp)
    80027b9c:	8526                	mv	a0,s1
    80027b9e:	8622                	mv	a2,s0
    80027ba0:	bffe30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51210
}
    80027ba4:	7446                	ld	s0,112(sp)
    80027ba6:	70e6                	ld	ra,120(sp)
    80027ba8:	7906                	ld	s2,96(sp)
    80027baa:	69e6                	ld	s3,88(sp)
    80027bac:	6a46                	ld	s4,80(sp)
quickjs-nuttx/quickjs.c:51203
            return JS_ThrowTypeError(ctx, "cannot convert to bigfloat");
    80027bae:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:51210
}
    80027bb0:	74a6                	ld	s1,104(sp)
quickjs-nuttx/quickjs.c:51203
            return JS_ThrowTypeError(ctx, "cannot convert to bigfloat");
    80027bb2:	00043597          	auipc	a1,0x43
    80027bb6:	59e58593          	addi	a1,a1,1438 # 8006b150 <qjsc_repl+0x5ba0>
quickjs-nuttx/quickjs.c:51210
}
    80027bba:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:51203
            return JS_ThrowTypeError(ctx, "cannot convert to bigfloat");
    80027bbc:	ab1f006f          	j	8001866c <JS_ThrowTypeError>

0000000080027bc0 <js_bigfloat_constructor>:
quickjs-nuttx/quickjs.c:51105
    if (!JS_IsUndefined(new_target))
    80027bc0:	2601                	sext.w	a2,a2
    80027bc2:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:51103
{
    80027bc4:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:51105
    if (!JS_IsUndefined(new_target))
    80027bc6:	00f60963          	beq	a2,a5,80027bd8 <js_bigfloat_constructor+0x18>
quickjs-nuttx/quickjs.c:51106
        return JS_ThrowTypeError(ctx, "not a constructor");
    80027bca:	00042597          	auipc	a1,0x42
    80027bce:	7ce58593          	addi	a1,a1,1998 # 8006a398 <qjsc_repl+0x4de8>
quickjs-nuttx/quickjs.c:51210
}
    80027bd2:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:51106
        return JS_ThrowTypeError(ctx, "not a constructor");
    80027bd4:	a99f006f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:51210
}
    80027bd8:	85b6                	mv	a1,a3
    80027bda:	863a                	mv	a2,a4
    80027bdc:	6105                	addi	sp,sp,32
    80027bde:	df1ff06f          	j	800279ce <js_bigfloat_constructor.part.0>

0000000080027be2 <js_atom_concat_str>:
js_atom_concat_str():
quickjs-nuttx/quickjs.c:3334
{
    80027be2:	711d                	addi	sp,sp,-96
    80027be4:	e8a2                	sd	s0,80(sp)
    80027be6:	f852                	sd	s4,48(sp)
    80027be8:	ec86                	sd	ra,88(sp)
    80027bea:	e4a6                	sd	s1,72(sp)
    80027bec:	e0ca                	sd	s2,64(sp)
    80027bee:	fc4e                	sd	s3,56(sp)
    80027bf0:	842a                	mv	s0,a0
    80027bf2:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:3341
    str = JS_AtomToString(ctx, name);
    80027bf4:	edff70ef          	jal	ra,8001fad2 <JS_AtomToString>
    80027bf8:	e82a                	sd	a0,16(sp)
    80027bfa:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:3342
    if (JS_IsException(str))
    80027bfc:	0005871b          	sext.w	a4,a1
    80027c00:	4799                	li	a5,6
    80027c02:	08f70e63          	beq	a4,a5,80027c9e <js_atom_concat_str+0xbc>
    80027c06:	862a                	mv	a2,a0
    80027c08:	86ae                	mv	a3,a1
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80027c0a:	4701                	li	a4,0
    80027c0c:	002c                	addi	a1,sp,8
    80027c0e:	8522                	mv	a0,s0
    80027c10:	a6cfa0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    80027c14:	892a                	mv	s2,a0
js_atom_concat_str():
quickjs-nuttx/quickjs.c:3345
    if (!cstr)
    80027c16:	c93d                	beqz	a0,80027c8c <js_atom_concat_str+0xaa>
quickjs-nuttx/quickjs.c:3347
    len1 = strlen(str1);
    80027c18:	8552                	mv	a0,s4
    80027c1a:	1683c0ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/quickjs.c:3348
    cstr2 = js_malloc(ctx, len + len1 + 1);
    80027c1e:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:3347
    len1 = strlen(str1);
    80027c20:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:3348
    cstr2 = js_malloc(ctx, len + len1 + 1);
    80027c22:	0585                	addi	a1,a1,1
    80027c24:	95aa                	add	a1,a1,a0
    80027c26:	8522                	mv	a0,s0
    80027c28:	cdcf20ef          	jal	ra,8001a104 <js_malloc>
    80027c2c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3349
    if (!cstr2)
    80027c2e:	cd39                	beqz	a0,80027c8c <js_atom_concat_str+0xaa>
quickjs-nuttx/quickjs.c:3351
    memcpy(cstr2, cstr, len);
    80027c30:	6622                	ld	a2,8(sp)
    80027c32:	85ca                	mv	a1,s2
    80027c34:	1783c0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:3352
    memcpy(cstr2 + len, str1, len1);
    80027c38:	6522                	ld	a0,8(sp)
    80027c3a:	864e                	mv	a2,s3
    80027c3c:	85d2                	mv	a1,s4
    80027c3e:	9526                	add	a0,a0,s1
    80027c40:	16c3c0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:3353
    cstr2[len + len1] = '\0';
    80027c44:	6722                	ld	a4,8(sp)
    80027c46:	013487b3          	add	a5,s1,s3
quickjs-nuttx/quickjs.c:3354
    atom = JS_NewAtomLen(ctx, cstr2, len + len1);
    80027c4a:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:3353
    cstr2[len + len1] = '\0';
    80027c4c:	97ba                	add	a5,a5,a4
    80027c4e:	00078023          	sb	zero,0(a5)
quickjs-nuttx/quickjs.c:3354
    atom = JS_NewAtomLen(ctx, cstr2, len + len1);
    80027c52:	6622                	ld	a2,8(sp)
    80027c54:	8522                	mv	a0,s0
    80027c56:	964e                	add	a2,a2,s3
    80027c58:	b10f70ef          	jal	ra,8001ef68 <JS_NewAtomLen>
quickjs-nuttx/quickjs.c:3355
    js_free(ctx, cstr2);
    80027c5c:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:3354
    atom = JS_NewAtomLen(ctx, cstr2, len + len1);
    80027c5e:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:3355
    js_free(ctx, cstr2);
    80027c62:	8522                	mv	a0,s0
    80027c64:	b92e30ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:3356
    JS_FreeCString(ctx, cstr);
    80027c68:	85ca                	mv	a1,s2
    80027c6a:	8522                	mv	a0,s0
    80027c6c:	ed3e40ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:3357
    JS_FreeValue(ctx, str);
    80027c70:	65c2                	ld	a1,16(sp)
    80027c72:	6662                	ld	a2,24(sp)
    80027c74:	8522                	mv	a0,s0
    80027c76:	b29e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3363
}
    80027c7a:	60e6                	ld	ra,88(sp)
    80027c7c:	6446                	ld	s0,80(sp)
    80027c7e:	64a6                	ld	s1,72(sp)
    80027c80:	6906                	ld	s2,64(sp)
    80027c82:	7a42                	ld	s4,48(sp)
    80027c84:	854e                	mv	a0,s3
    80027c86:	79e2                	ld	s3,56(sp)
    80027c88:	6125                	addi	sp,sp,96
    80027c8a:	8082                	ret
quickjs-nuttx/quickjs.c:3360
    JS_FreeCString(ctx, cstr);
    80027c8c:	85ca                	mv	a1,s2
    80027c8e:	8522                	mv	a0,s0
    80027c90:	eafe40ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:3361
    JS_FreeValue(ctx, str);
    80027c94:	65c2                	ld	a1,16(sp)
    80027c96:	6662                	ld	a2,24(sp)
    80027c98:	8522                	mv	a0,s0
    80027c9a:	b05e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3343
        return JS_ATOM_NULL;
    80027c9e:	4981                	li	s3,0
    80027ca0:	bfe9                	j	80027c7a <js_atom_concat_str+0x98>

0000000080027ca2 <js_string_normalize>:
js_string_normalize():
quickjs-nuttx/quickjs.c:42553
{
    80027ca2:	7175                	addi	sp,sp,-144
    80027ca4:	e122                	sd	s0,128(sp)
    80027ca6:	fca6                	sd	s1,120(sp)
    80027ca8:	f8ca                	sd	s2,112(sp)
    80027caa:	e506                	sd	ra,136(sp)
    80027cac:	893a                	mv	s2,a4
    80027cae:	f4ce                	sd	s3,104(sp)
    80027cb0:	842a                	mv	s0,a0
    80027cb2:	e02e                	sd	a1,0(sp)
    80027cb4:	e432                	sd	a2,8(sp)
    80027cb6:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:42561
    val = JS_ToStringCheckObject(ctx, this_val);
    80027cb8:	9c8f90ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    80027cbc:	f02a                	sd	a0,32(sp)
    80027cbe:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:42562
    if (JS_IsException(val))
    80027cc0:	0005871b          	sext.w	a4,a1
    80027cc4:	4799                	li	a5,6
    80027cc6:	00f71d63          	bne	a4,a5,80027ce0 <js_string_normalize+0x3e>
quickjs-nuttx/quickjs.c:42563
        return val;
    80027cca:	e0aa                	sd	a0,64(sp)
    80027ccc:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:42602 (discriminator 1)
}
    80027cce:	60aa                	ld	ra,136(sp)
    80027cd0:	640a                	ld	s0,128(sp)
    80027cd2:	6506                	ld	a0,64(sp)
    80027cd4:	65a6                	ld	a1,72(sp)
    80027cd6:	74e6                	ld	s1,120(sp)
    80027cd8:	7946                	ld	s2,112(sp)
    80027cda:	79a6                	ld	s3,104(sp)
    80027cdc:	6149                	addi	sp,sp,144
    80027cde:	8082                	ret
quickjs-nuttx/quickjs.c:42565
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80027ce0:	0e048b63          	beqz	s1,80027dd6 <js_string_normalize+0x134>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80027ce4:	00893683          	ld	a3,8(s2)
js_string_normalize():
quickjs-nuttx/quickjs.c:42565 (discriminator 1)
    80027ce8:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:42566 (discriminator 1)
        n_type = UNICODE_NFC;
    80027cea:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:42565 (discriminator 1)
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80027cec:	0006871b          	sext.w	a4,a3
    80027cf0:	08f70f63          	beq	a4,a5,80027d8e <js_string_normalize+0xec>
quickjs-nuttx/quickjs.c:42568
        form = JS_ToCStringLen(ctx, &form_len, argv[0]);
    80027cf4:	00093603          	ld	a2,0(s2)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    80027cf8:	080c                	addi	a1,sp,16
    80027cfa:	4701                	li	a4,0
    80027cfc:	8522                	mv	a0,s0
    80027cfe:	e0b2                	sd	a2,64(sp)
    80027d00:	e4b6                	sd	a3,72(sp)
    80027d02:	97afa0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    80027d06:	85aa                	mv	a1,a0
js_string_normalize():
quickjs-nuttx/quickjs.c:42569
        if (!form)
    80027d08:	cd31                	beqz	a0,80027d64 <js_string_normalize+0xc2>
quickjs-nuttx/quickjs.c:42572
        if (p[0] != 'N' || p[1] != 'F')
    80027d0a:	00054703          	lbu	a4,0(a0)
    80027d0e:	04e00793          	li	a5,78
    80027d12:	02f71f63          	bne	a4,a5,80027d50 <js_string_normalize+0xae>
quickjs-nuttx/quickjs.c:42572 (discriminator 1)
    80027d16:	00154703          	lbu	a4,1(a0)
    80027d1a:	04600793          	li	a5,70
    80027d1e:	02f71963          	bne	a4,a5,80027d50 <js_string_normalize+0xae>
quickjs-nuttx/quickjs.c:42576
        if (*p == 'K') {
    80027d22:	00254703          	lbu	a4,2(a0)
    80027d26:	04b00793          	li	a5,75
    80027d2a:	04f70663          	beq	a4,a5,80027d76 <js_string_normalize+0xd4>
quickjs-nuttx/quickjs.c:42574
        p += 2;
    80027d2e:	00250793          	addi	a5,a0,2
quickjs-nuttx/quickjs.c:42575
        is_compat = FALSE;
    80027d32:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:42580
        if (*p == 'C' || *p == 'D') {
    80027d34:	0007c603          	lbu	a2,0(a5)
    80027d38:	4505                	li	a0,1
    80027d3a:	fbd6069b          	addiw	a3,a2,-67
    80027d3e:	0ff6f693          	zext.b	a3,a3
    80027d42:	00d56763          	bltu	a0,a3,80027d50 <js_string_normalize+0xae>
quickjs-nuttx/quickjs.c:42582
            if ((p + 1 - form) != form_len)
    80027d46:	66c2                	ld	a3,16(sp)
    80027d48:	0785                	addi	a5,a5,1
    80027d4a:	8f8d                	sub	a5,a5,a1
    80027d4c:	02d78963          	beq	a5,a3,80027d7e <js_string_normalize+0xdc>
quickjs-nuttx/quickjs.c:42586
            JS_FreeCString(ctx, form);
    80027d50:	8522                	mv	a0,s0
    80027d52:	dede40ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:42587
            JS_ThrowRangeError(ctx, "bad normalization form");
    80027d56:	00043597          	auipc	a1,0x43
    80027d5a:	46258593          	addi	a1,a1,1122 # 8006b1b8 <qjsc_repl+0x5c08>
    80027d5e:	8522                	mv	a0,s0
    80027d60:	b6ff10ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:42589
            JS_FreeValue(ctx, val);
    80027d64:	7582                	ld	a1,32(sp)
    80027d66:	7622                	ld	a2,40(sp)
    80027d68:	8522                	mv	a0,s0
    80027d6a:	a35e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42598
        return JS_EXCEPTION;
    80027d6e:	e082                	sd	zero,64(sp)
    80027d70:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42601
    return val;
    80027d72:	e4be                	sd	a5,72(sp)
    80027d74:	bfa9                	j	80027cce <js_string_normalize+0x2c>
quickjs-nuttx/quickjs.c:42578
            p++;
    80027d76:	00350793          	addi	a5,a0,3
quickjs-nuttx/quickjs.c:42577
            is_compat = TRUE;
    80027d7a:	4705                	li	a4,1
    80027d7c:	bf65                	j	80027d34 <js_string_normalize+0x92>
quickjs-nuttx/quickjs.c:42581
            n_type = UNICODE_NFC + is_compat * 2 + (*p - 'C');
    80027d7e:	0017149b          	slliw	s1,a4,0x1
    80027d82:	fbd4849b          	addiw	s1,s1,-67
quickjs-nuttx/quickjs.c:42592
        JS_FreeCString(ctx, form);
    80027d86:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:42581
            n_type = UNICODE_NFC + is_compat * 2 + (*p - 'C');
    80027d88:	9cb1                	addw	s1,s1,a2
quickjs-nuttx/quickjs.c:42592
        JS_FreeCString(ctx, form);
    80027d8a:	db5e40ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:42595
    out_len = js_string_normalize1(ctx, &out_buf, val, n_type);
    80027d8e:	7602                	ld	a2,32(sp)
    80027d90:	76a2                	ld	a3,40(sp)
    80027d92:	8726                	mv	a4,s1
    80027d94:	082c                	addi	a1,sp,24
    80027d96:	8522                	mv	a0,s0
    80027d98:	845f90ef          	jal	ra,800215dc <js_string_normalize1>
quickjs-nuttx/quickjs.c:42596
    JS_FreeValue(ctx, val);
    80027d9c:	7582                	ld	a1,32(sp)
    80027d9e:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:42595
    out_len = js_string_normalize1(ctx, &out_buf, val, n_type);
    80027da0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:42596
    JS_FreeValue(ctx, val);
    80027da2:	8522                	mv	a0,s0
    80027da4:	9fbe30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42597
    if (out_len < 0)
    80027da8:	fc04c3e3          	bltz	s1,80027d6e <js_string_normalize+0xcc>
JS_NewUTF32String():
quickjs-nuttx/quickjs.c:42520
    if (string_buffer_init(ctx, b, len))
    80027dac:	8626                	mv	a2,s1
    80027dae:	008c                	addi	a1,sp,64
    80027db0:	8522                	mv	a0,s0
js_string_normalize():
quickjs-nuttx/quickjs.c:42599
    val = JS_NewUTF32String(ctx, out_buf, out_len);
    80027db2:	69e2                	ld	s3,24(sp)
JS_NewUTF32String():
quickjs-nuttx/quickjs.c:42520
    if (string_buffer_init(ctx, b, len))
    80027db4:	9c8f60ef          	jal	ra,8001df7c <string_buffer_init>
    80027db8:	4901                	li	s2,0
    80027dba:	cd0d                	beqz	a0,80027df4 <js_string_normalize+0x152>
quickjs-nuttx/quickjs.c:42529
    return JS_EXCEPTION;
    80027dbc:	f802                	sd	zero,48(sp)
    80027dbe:	4599                	li	a1,6
    80027dc0:	77c2                	ld	a5,48(sp)
    80027dc2:	f42e                	sd	a1,40(sp)
js_string_normalize():
quickjs-nuttx/quickjs.c:42600
    js_free(ctx, out_buf);
    80027dc4:	65e2                	ld	a1,24(sp)
    80027dc6:	8522                	mv	a0,s0
    80027dc8:	f03e                	sd	a5,32(sp)
    80027dca:	a2ce30ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:42601
    return val;
    80027dce:	7782                	ld	a5,32(sp)
    80027dd0:	e0be                	sd	a5,64(sp)
    80027dd2:	77a2                	ld	a5,40(sp)
    80027dd4:	bf79                	j	80027d72 <js_string_normalize+0xd0>
quickjs-nuttx/quickjs.c:42566
        n_type = UNICODE_NFC;
    80027dd6:	4481                	li	s1,0
    80027dd8:	bf5d                	j	80027d8e <js_string_normalize+0xec>
JS_NewUTF32String():
quickjs-nuttx/quickjs.c:42523
        if (string_buffer_putc(b, buf[i]))
    80027dda:	00291793          	slli	a5,s2,0x2
    80027dde:	97ce                	add	a5,a5,s3
    80027de0:	438c                	lw	a1,0(a5)
    80027de2:	0088                	addi	a0,sp,64
    80027de4:	0905                	addi	s2,s2,1
    80027de6:	f8bf60ef          	jal	ra,8001ed70 <string_buffer_putc>
    80027dea:	c509                	beqz	a0,80027df4 <js_string_normalize+0x152>
quickjs-nuttx/quickjs.c:42528
    string_buffer_free(b);
    80027dec:	0088                	addi	a0,sp,64
    80027dee:	a34e30ef          	jal	ra,8000b022 <string_buffer_free>
    80027df2:	b7e9                	j	80027dbc <js_string_normalize+0x11a>
quickjs-nuttx/quickjs.c:42522
    for(i = 0; i < len; i++) {
    80027df4:	0009079b          	sext.w	a5,s2
    80027df8:	fe97c1e3          	blt	a5,s1,80027dda <js_string_normalize+0x138>
quickjs-nuttx/quickjs.c:42526
    return string_buffer_end(b);
    80027dfc:	0088                	addi	a0,sp,64
    80027dfe:	ea3f70ef          	jal	ra,8001fca0 <string_buffer_end>
    80027e02:	f82a                	sd	a0,48(sp)
    80027e04:	bf75                	j	80027dc0 <js_string_normalize+0x11e>

0000000080027e06 <JS_EvalObject>:
JS_EvalObject():
quickjs-nuttx/quickjs.c:34391
{
    80027e06:	7135                	addi	sp,sp,-160
    80027e08:	e14a                	sd	s2,128(sp)
    80027e0a:	f02e                	sd	a1,32(sp)
    80027e0c:	893e                	mv	s2,a5
JS_IsString():
quickjs-nuttx/quickjs.h:620
    return JS_VALUE_GET_TAG(v) == JS_TAG_STRING;
    80027e0e:	85ba                	mv	a1,a4
JS_EvalObject():
quickjs-nuttx/quickjs.c:34391
    80027e10:	ed06                	sd	ra,152(sp)
    80027e12:	e922                	sd	s0,144(sp)
    80027e14:	e526                	sd	s1,136(sp)
    80027e16:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:34396
    if (!JS_IsString(val))
    80027e18:	2701                	sext.w	a4,a4
    80027e1a:	57e5                	li	a5,-7
    80027e1c:	00f70a63          	beq	a4,a5,80027e30 <JS_EvalObject+0x2a>
quickjs-nuttx/quickjs.c:34405
}
    80027e20:	644a                	ld	s0,144(sp)
    80027e22:	60ea                	ld	ra,152(sp)
    80027e24:	64aa                	ld	s1,136(sp)
    80027e26:	690a                	ld	s2,128(sp)
quickjs-nuttx/quickjs.c:34397
        return JS_DupValue(ctx, val);
    80027e28:	8536                	mv	a0,a3
quickjs-nuttx/quickjs.c:34405
}
    80027e2a:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:34397
        return JS_DupValue(ctx, val);
    80027e2c:	deee206f          	j	8000a41a <JS_DupValue.constprop.0>
    80027e30:	8636                	mv	a2,a3
    80027e32:	f8b6                	sd	a3,112(sp)
    80027e34:	fcae                	sd	a1,120(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    80027e36:	86ae                	mv	a3,a1
    80027e38:	4701                	li	a4,0
    80027e3a:	182c                	addi	a1,sp,56
    80027e3c:	842a                	mv	s0,a0
    80027e3e:	e442                	sd	a6,8(sp)
    80027e40:	83cfa0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
JS_EvalObject():
quickjs-nuttx/quickjs.c:34399
    if (!str)
    80027e44:	68a2                	ld	a7,8(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80027e46:	84aa                	mv	s1,a0
JS_EvalObject():
quickjs-nuttx/quickjs.c:34399
    80027e48:	ed01                	bnez	a0,80027e60 <JS_EvalObject+0x5a>
quickjs-nuttx/quickjs.c:34400
        return JS_EXCEPTION;
    80027e4a:	e882                	sd	zero,80(sp)
    80027e4c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:34405
}
    80027e4e:	60ea                	ld	ra,152(sp)
    80027e50:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:34403
    return ret;
    80027e52:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:34405
}
    80027e54:	6546                	ld	a0,80(sp)
    80027e56:	65e6                	ld	a1,88(sp)
    80027e58:	64aa                	ld	s1,136(sp)
    80027e5a:	690a                	ld	s2,128(sp)
    80027e5c:	610d                	addi	sp,sp,160
    80027e5e:	8082                	ret
quickjs-nuttx/quickjs.c:34401
    ret = JS_EvalInternal(ctx, this_obj, str, len, "<input>", flags, scope_idx);
    80027e60:	7582                	ld	a1,32(sp)
    80027e62:	7622                	ld	a2,40(sp)
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34382
    if (unlikely(!ctx->eval_internal)) {
    80027e64:	1c843303          	ld	t1,456(s0)
    80027e68:	e8ae                	sd	a1,80(sp)
    80027e6a:	ecb2                	sd	a2,88(sp)
JS_EvalObject():
quickjs-nuttx/quickjs.c:34401
    ret = JS_EvalInternal(ctx, this_obj, str, len, "<input>", flags, scope_idx);
    80027e6c:	7762                	ld	a4,56(sp)
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34382
    if (unlikely(!ctx->eval_internal)) {
    80027e6e:	02031763          	bnez	t1,80027e9c <JS_EvalObject+0x96>
quickjs-nuttx/quickjs.c:34383
        return JS_ThrowTypeError(ctx, "eval is not supported");
    80027e72:	00042597          	auipc	a1,0x42
    80027e76:	4ce58593          	addi	a1,a1,1230 # 8006a340 <qjsc_repl+0x4d90>
    80027e7a:	8522                	mv	a0,s0
    80027e7c:	ff0f00ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80027e80:	f8aa                	sd	a0,112(sp)
    80027e82:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:34385
    return ctx->eval_internal(ctx, this_obj, input, input_len, filename,
    80027e84:	f0aa                	sd	a0,96(sp)
    80027e86:	7786                	ld	a5,96(sp)
    80027e88:	e4ae                	sd	a1,72(sp)
JS_EvalObject():
quickjs-nuttx/quickjs.c:34402
    JS_FreeCString(ctx, str);
    80027e8a:	8522                	mv	a0,s0
    80027e8c:	85a6                	mv	a1,s1
    80027e8e:	e0be                	sd	a5,64(sp)
    80027e90:	cafe40ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:34403
    return ret;
    80027e94:	6786                	ld	a5,64(sp)
    80027e96:	e8be                	sd	a5,80(sp)
    80027e98:	67a6                	ld	a5,72(sp)
    80027e9a:	bf55                	j	80027e4e <JS_EvalObject+0x48>
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34385
    return ctx->eval_internal(ctx, this_obj, input, input_len, filename,
    80027e9c:	86aa                	mv	a3,a0
    80027e9e:	884a                	mv	a6,s2
    80027ea0:	0003d797          	auipc	a5,0x3d
    80027ea4:	63878793          	addi	a5,a5,1592 # 800654d8 <__clz_tab+0x690>
    80027ea8:	8522                	mv	a0,s0
    80027eaa:	9302                	jalr	t1
    80027eac:	bfe1                	j	80027e84 <JS_EvalObject+0x7e>

0000000080027eae <js_function_constructor>:
js_function_constructor():
quickjs-nuttx/quickjs.c:38211
{
    80027eae:	7131                	addi	sp,sp,-192
    80027eb0:	e556                	sd	s5,136(sp)
    80027eb2:	e02e                	sd	a1,0(sp)
    80027eb4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:38217
    string_buffer_init(ctx, b, 0);
    80027eb6:	108c                	addi	a1,sp,96
    80027eb8:	8ab2                	mv	s5,a2
    80027eba:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:38211
{
    80027ebc:	fd06                	sd	ra,184(sp)
    80027ebe:	f922                	sd	s0,176(sp)
    80027ec0:	f526                	sd	s1,168(sp)
    80027ec2:	f14a                	sd	s2,160(sp)
    80027ec4:	ed4e                	sd	s3,152(sp)
    80027ec6:	893a                	mv	s2,a4
    80027ec8:	89be                	mv	s3,a5
    80027eca:	e952                	sd	s4,144(sp)
    80027ecc:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:38212
    JSFunctionKindEnum func_kind = magic;
    80027ece:	00078a1b          	sext.w	s4,a5
quickjs-nuttx/quickjs.c:38211
{
    80027ed2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:38214
    JSValue s, proto, obj = JS_UNDEFINED;
    80027ed4:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:38217
    string_buffer_init(ctx, b, 0);
    80027ed6:	8a6f60ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:38218
    string_buffer_putc8(b, '(');
    80027eda:	02800593          	li	a1,40
    80027ede:	1088                	addi	a0,sp,96
    80027ee0:	d81f60ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:38220
    if (func_kind == JS_FUNC_ASYNC || func_kind == JS_FUNC_ASYNC_GENERATOR) {
    80027ee4:	ffea071b          	addiw	a4,s4,-2
    80027ee8:	4785                	li	a5,1
    80027eea:	00e7e963          	bltu	a5,a4,80027efc <js_function_constructor+0x4e>
quickjs-nuttx/quickjs.c:38221
        string_buffer_puts8(b, "async ");
    80027eee:	00043597          	auipc	a1,0x43
    80027ef2:	2e258593          	addi	a1,a1,738 # 8006b1d0 <qjsc_repl+0x5c20>
    80027ef6:	1088                	addi	a0,sp,96
    80027ef8:	ccff60ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:38223
    string_buffer_puts8(b, "function");
    80027efc:	00045597          	auipc	a1,0x45
    80027f00:	a5c58593          	addi	a1,a1,-1444 # 8006c958 <qjsc_repl+0x73a8>
    80027f04:	1088                	addi	a0,sp,96
    80027f06:	cc1f60ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:38225
    if (func_kind == JS_FUNC_GENERATOR || func_kind == JS_FUNC_ASYNC_GENERATOR) {
    80027f0a:	ffd9f993          	andi	s3,s3,-3
    80027f0e:	4785                	li	a5,1
    80027f10:	00f99763          	bne	s3,a5,80027f1e <js_function_constructor+0x70>
quickjs-nuttx/quickjs.c:38226
        string_buffer_putc8(b, '*');
    80027f14:	02a00593          	li	a1,42
    80027f18:	1088                	addi	a0,sp,96
    80027f1a:	d47f60ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:38228
    string_buffer_puts8(b, " anonymous(");
    80027f1e:	00043597          	auipc	a1,0x43
    80027f22:	2ba58593          	addi	a1,a1,698 # 8006b1d8 <qjsc_repl+0x5c28>
    80027f26:	1088                	addi	a0,sp,96
    80027f28:	c9ff60ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:38230
    n = argc - 1;
    80027f2c:	34fd                	addiw	s1,s1,-1
quickjs-nuttx/quickjs.c:38231
    for(i = 0; i < n; i++) {
    80027f2e:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:38231 (discriminator 1)
    80027f30:	0009879b          	sext.w	a5,s3
    80027f34:	0497c063          	blt	a5,s1,80027f74 <js_function_constructor+0xc6>
quickjs-nuttx/quickjs.c:38238
    string_buffer_puts8(b, "\n) {\n");
    80027f38:	00043597          	auipc	a1,0x43
    80027f3c:	2b058593          	addi	a1,a1,688 # 8006b1e8 <qjsc_repl+0x5c38>
    80027f40:	1088                	addi	a0,sp,96
    80027f42:	c85f60ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:38239
    if (n >= 0) {
    80027f46:	0404db63          	bgez	s1,80027f9c <js_function_constructor+0xee>
quickjs-nuttx/quickjs.c:38243
    string_buffer_puts8(b, "\n})");
    80027f4a:	00043597          	auipc	a1,0x43
    80027f4e:	2a658593          	addi	a1,a1,678 # 8006b1f0 <qjsc_repl+0x5c40>
    80027f52:	1088                	addi	a0,sp,96
    80027f54:	c73f60ef          	jal	ra,8001ebc6 <string_buffer_puts8>
quickjs-nuttx/quickjs.c:38244
    s = string_buffer_end(b);
    80027f58:	1088                	addi	a0,sp,96
    80027f5a:	d47f70ef          	jal	ra,8001fca0 <string_buffer_end>
    80027f5e:	e82a                	sd	a0,16(sp)
    80027f60:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:38245
    if (JS_IsException(s))
    80027f62:	0005879b          	sext.w	a5,a1
    80027f66:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:38244
    s = string_buffer_end(b);
    80027f68:	86aa                	mv	a3,a0
    80027f6a:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:38245
    if (JS_IsException(s))
    80027f6c:	05279163          	bne	a5,s2,80027fae <js_function_constructor+0x100>
quickjs-nuttx/quickjs.c:38214
    JSValue s, proto, obj = JS_UNDEFINED;
    80027f70:	448d                	li	s1,3
    80027f72:	aa29                	j	8002808c <js_function_constructor+0x1de>
quickjs-nuttx/quickjs.c:38232
        if (i != 0) {
    80027f74:	c791                	beqz	a5,80027f80 <js_function_constructor+0xd2>
quickjs-nuttx/quickjs.c:38233
            string_buffer_putc8(b, ',');
    80027f76:	02c00593          	li	a1,44
    80027f7a:	1088                	addi	a0,sp,96
    80027f7c:	ce5f60ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:38235
        if (string_buffer_concat_value(b, argv[i]))
    80027f80:	00499793          	slli	a5,s3,0x4
    80027f84:	97ca                	add	a5,a5,s2
    80027f86:	638c                	ld	a1,0(a5)
    80027f88:	6790                	ld	a2,8(a5)
    80027f8a:	1088                	addi	a0,sp,96
    80027f8c:	0985                	addi	s3,s3,1
    80027f8e:	f1ef90ef          	jal	ra,800216ac <string_buffer_concat_value>
    80027f92:	dd59                	beqz	a0,80027f30 <js_function_constructor+0x82>
quickjs-nuttx/quickjs.c:38273
    string_buffer_free(b);
    80027f94:	1088                	addi	a0,sp,96
    80027f96:	88ce30ef          	jal	ra,8000b022 <string_buffer_free>
    80027f9a:	bfd9                	j	80027f70 <js_function_constructor+0xc2>
quickjs-nuttx/quickjs.c:38240
        if (string_buffer_concat_value(b, argv[n]))
    80027f9c:	0492                	slli	s1,s1,0x4
    80027f9e:	94ca                	add	s1,s1,s2
    80027fa0:	608c                	ld	a1,0(s1)
    80027fa2:	6490                	ld	a2,8(s1)
    80027fa4:	1088                	addi	a0,sp,96
    80027fa6:	f06f90ef          	jal	ra,800216ac <string_buffer_concat_value>
    80027faa:	d145                	beqz	a0,80027f4a <js_function_constructor+0x9c>
    80027fac:	b7e5                	j	80027f94 <js_function_constructor+0xe6>
quickjs-nuttx/quickjs.c:38248
    obj = JS_EvalObject(ctx, ctx->global_obj, s, JS_EVAL_TYPE_INDIRECT, -1);
    80027fae:	17043603          	ld	a2,368(s0)
    80027fb2:	16843583          	ld	a1,360(s0)
    80027fb6:	478d                	li	a5,3
    80027fb8:	587d                	li	a6,-1
    80027fba:	8522                	mv	a0,s0
    80027fbc:	e4bff0ef          	jal	ra,80027e06 <JS_EvalObject>
    80027fc0:	84ae                	mv	s1,a1
    80027fc2:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:38249
    JS_FreeValue(ctx, s);
    80027fc4:	6662                	ld	a2,24(sp)
    80027fc6:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:38248
    obj = JS_EvalObject(ctx, ctx->global_obj, s, JS_EVAL_TYPE_INDIRECT, -1);
    80027fc8:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:38249
    JS_FreeValue(ctx, s);
    80027fca:	8522                	mv	a0,s0
    80027fcc:	fd2e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38250
    if (JS_IsException(obj))
    80027fd0:	0004879b          	sext.w	a5,s1
    80027fd4:	0b278c63          	beq	a5,s2,8002808c <js_function_constructor+0x1de>
quickjs-nuttx/quickjs.c:38252
    if (!JS_IsUndefined(new_target)) {
    80027fd8:	2a81                	sext.w	s5,s5
    80027fda:	478d                	li	a5,3
    80027fdc:	02fa9163          	bne	s5,a5,80027ffe <js_function_constructor+0x150>
quickjs-nuttx/quickjs.c:38270
    return obj;
    80027fe0:	77c2                	ld	a5,48(sp)
    80027fe2:	e0be                	sd	a5,64(sp)
    80027fe4:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:38277
}
    80027fe6:	70ea                	ld	ra,184(sp)
    80027fe8:	744a                	ld	s0,176(sp)
quickjs-nuttx/quickjs.c:38276
    return JS_EXCEPTION;
    80027fea:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:38277
}
    80027fec:	6506                	ld	a0,64(sp)
    80027fee:	65a6                	ld	a1,72(sp)
    80027ff0:	74aa                	ld	s1,168(sp)
    80027ff2:	790a                	ld	s2,160(sp)
    80027ff4:	69ea                	ld	s3,152(sp)
    80027ff6:	6a4a                	ld	s4,144(sp)
    80027ff8:	6aaa                	ld	s5,136(sp)
    80027ffa:	6129                	addi	sp,sp,192
    80027ffc:	8082                	ret
quickjs-nuttx/quickjs.c:38254
        proto = JS_GetProperty(ctx, new_target, JS_ATOM_prototype);
    80027ffe:	6702                	ld	a4,0(sp)
