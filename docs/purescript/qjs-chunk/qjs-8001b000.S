    8001a000:	e43a                	sd	a4,8(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    8001a002:	87ba                	mv	a5,a4
    8001a004:	0007041b          	sext.w	s0,a4
JS_IsInstanceOf():
quickjs-nuttx/quickjs.c:7056
    8001a008:	f486                	sd	ra,104(sp)
    8001a00a:	e82e                	sd	a1,16(sp)
    8001a00c:	ec32                	sd	a2,24(sp)
    8001a00e:	e036                	sd	a3,0(sp)
quickjs-nuttx/quickjs.c:7059
    if (!JS_IsObject(obj))
    8001a010:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:7056
{
    8001a012:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:7059
    if (!JS_IsObject(obj))
    8001a014:	02e40063          	beq	s0,a4,8001a034 <JS_IsInstanceOf+0x3a>
quickjs-nuttx/quickjs.c:7073
        JS_ThrowTypeError(ctx, "invalid 'instanceof' right operand");
    8001a018:	00050597          	auipc	a1,0x50
    8001a01c:	61858593          	addi	a1,a1,1560 # 8006a630 <qjsc_repl+0x5080>
    8001a020:	8526                	mv	a0,s1
    8001a022:	e4afe0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:7074
        return -1;
    8001a026:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:7077 (discriminator 1)
}
    8001a028:	70a6                	ld	ra,104(sp)
    8001a02a:	8522                	mv	a0,s0
    8001a02c:	7406                	ld	s0,96(sp)
    8001a02e:	64e6                	ld	s1,88(sp)
    8001a030:	6165                	addi	sp,sp,112
    8001a032:	8082                	ret
quickjs-nuttx/quickjs.c:7061
    method = JS_GetProperty(ctx, obj, JS_ATOM_Symbol_hasInstance);
    8001a034:	8736                	mv	a4,a3
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001a036:	863e                	mv	a2,a5
    8001a038:	f836                	sd	a3,48(sp)
    8001a03a:	85ba                	mv	a1,a4
    8001a03c:	4801                	li	a6,0
    8001a03e:	0de00693          	li	a3,222
    8001a042:	fc3e                	sd	a5,56(sp)
    8001a044:	a67fc0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_IsInstanceOf():
quickjs-nuttx/quickjs.c:7062
    if (JS_IsException(method))
    8001a048:	0005871b          	sext.w	a4,a1
    8001a04c:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001a04e:	862e                	mv	a2,a1
JS_IsInstanceOf():
quickjs-nuttx/quickjs.c:7062
    8001a050:	fcf70ce3          	beq	a4,a5,8001a028 <JS_IsInstanceOf+0x2e>
quickjs-nuttx/quickjs.c:7064
    if (!JS_IsNull(method) && !JS_IsUndefined(method)) {
    8001a054:	ffe5879b          	addiw	a5,a1,-2
    8001a058:	4705                	li	a4,1
    8001a05a:	02f77463          	bgeu	a4,a5,8001a082 <JS_IsInstanceOf+0x88>
quickjs-nuttx/quickjs.c:7066
        ret = JS_CallFree(ctx, method, obj, 1, &val);
    8001a05e:	6682                	ld	a3,0(sp)
    8001a060:	6722                	ld	a4,8(sp)
    8001a062:	85aa                	mv	a1,a0
    8001a064:	01010813          	addi	a6,sp,16
    8001a068:	4785                	li	a5,1
    8001a06a:	8526                	mv	a0,s1
    8001a06c:	a09fc0ef          	jal	ra,80016a74 <JS_CallFree>
    8001a070:	862e                	mv	a2,a1
    8001a072:	f82a                	sd	a0,48(sp)
    8001a074:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:7067
        return JS_ToBoolFree(ctx, ret);
    8001a076:	85aa                	mv	a1,a0
    8001a078:	8526                	mv	a0,s1
    8001a07a:	a9bf10ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:7076
    return JS_OrdinaryIsInstanceOf(ctx, val, obj);
    8001a07e:	842a                	mv	s0,a0
    8001a080:	b765                	j	8001a028 <JS_IsInstanceOf+0x2e>
quickjs-nuttx/quickjs.c:7071
    if (!JS_IsFunction(ctx, obj)) {
    8001a082:	6582                	ld	a1,0(sp)
    8001a084:	6622                	ld	a2,8(sp)
    8001a086:	8526                	mv	a0,s1
    8001a088:	c1af40ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8001a08c:	d551                	beqz	a0,8001a018 <JS_IsInstanceOf+0x1e>
quickjs-nuttx/quickjs.c:7076
    return JS_OrdinaryIsInstanceOf(ctx, val, obj);
    8001a08e:	6682                	ld	a3,0(sp)
    8001a090:	6722                	ld	a4,8(sp)
    8001a092:	65c2                	ld	a1,16(sp)
    8001a094:	6662                	ld	a2,24(sp)
    8001a096:	8526                	mv	a0,s1
    8001a098:	e33ff0ef          	jal	ra,80019eca <JS_OrdinaryIsInstanceOf>
    8001a09c:	b7cd                	j	8001a07e <JS_IsInstanceOf+0x84>

000000008001a09e <js_function_hasInstance>:
js_function_hasInstance():
quickjs-nuttx/quickjs.c:38525
{
    8001a09e:	7139                	addi	sp,sp,-64
    8001a0a0:	fc06                	sd	ra,56(sp)
    8001a0a2:	87ba                	mv	a5,a4
quickjs-nuttx/quickjs.c:38527
    ret = JS_OrdinaryIsInstanceOf(ctx, argv[0], this_val);
    8001a0a4:	86ae                	mv	a3,a1
    8001a0a6:	8732                	mv	a4,a2
    8001a0a8:	638c                	ld	a1,0(a5)
    8001a0aa:	6790                	ld	a2,8(a5)
    8001a0ac:	e1fff0ef          	jal	ra,80019eca <JS_OrdinaryIsInstanceOf>
quickjs-nuttx/quickjs.c:38528
    if (ret < 0)
    8001a0b0:	00055a63          	bgez	a0,8001a0c4 <js_function_hasInstance+0x26>
quickjs-nuttx/quickjs.c:38529
        return JS_EXCEPTION;
    8001a0b4:	e802                	sd	zero,16(sp)
    8001a0b6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38532
}
    8001a0b8:	70e2                	ld	ra,56(sp)
    8001a0ba:	ec3e                	sd	a5,24(sp)
    8001a0bc:	6542                	ld	a0,16(sp)
    8001a0be:	65e2                	ld	a1,24(sp)
    8001a0c0:	6121                	addi	sp,sp,64
    8001a0c2:	8082                	ret
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8001a0c4:	00a03533          	snez	a0,a0
    8001a0c8:	d202                	sw	zero,36(sp)
    8001a0ca:	d02a                	sw	a0,32(sp)
    8001a0cc:	7782                	ld	a5,32(sp)
    8001a0ce:	e83e                	sd	a5,16(sp)
    8001a0d0:	4785                	li	a5,1
    8001a0d2:	b7dd                	j	8001a0b8 <js_function_hasInstance+0x1a>

000000008001a0d4 <JS_ThrowOutOfMemory>:
JS_ThrowOutOfMemory():
quickjs-nuttx/quickjs.c:6748
{
    8001a0d4:	1101                	addi	sp,sp,-32
    8001a0d6:	ec06                	sd	ra,24(sp)
    8001a0d8:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:6749
    JSRuntime *rt = ctx->rt;
    8001a0da:	6d00                	ld	s0,24(a0)
quickjs-nuttx/quickjs.c:6750
    if (!rt->in_out_of_memory) {
    8001a0dc:	0f044783          	lbu	a5,240(s0)
    8001a0e0:	ef81                	bnez	a5,8001a0f8 <JS_ThrowOutOfMemory+0x24>
quickjs-nuttx/quickjs.c:6751
        rt->in_out_of_memory = TRUE;
    8001a0e2:	4785                	li	a5,1
    8001a0e4:	0ef40823          	sb	a5,240(s0)
quickjs-nuttx/quickjs.c:6752
        JS_ThrowInternalError(ctx, "out of memory");
    8001a0e8:	00050597          	auipc	a1,0x50
    8001a0ec:	57058593          	addi	a1,a1,1392 # 8006a658 <qjsc_repl+0x50a8>
    8001a0f0:	809ff0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:6753
        rt->in_out_of_memory = FALSE;
    8001a0f4:	0e040823          	sb	zero,240(s0)
quickjs-nuttx/quickjs.c:6756
}
    8001a0f8:	60e2                	ld	ra,24(sp)
    8001a0fa:	6442                	ld	s0,16(sp)
    8001a0fc:	4501                	li	a0,0
    8001a0fe:	4599                	li	a1,6
    8001a100:	6105                	addi	sp,sp,32
    8001a102:	8082                	ret

000000008001a104 <js_malloc>:
js_malloc():
quickjs-nuttx/quickjs.c:1349
{
    8001a104:	1101                	addi	sp,sp,-32
    8001a106:	e822                	sd	s0,16(sp)
    8001a108:	e426                	sd	s1,8(sp)
    8001a10a:	ec06                	sd	ra,24(sp)
    8001a10c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1351
    ptr = js_malloc_rt(ctx->rt, size);
    8001a10e:	6d08                	ld	a0,24(a0)
    8001a110:	88df00ef          	jal	ra,8000a99c <js_malloc_rt>
    8001a114:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1352
    if (unlikely(!ptr)) {
    8001a116:	e501                	bnez	a0,8001a11e <js_malloc+0x1a>
quickjs-nuttx/quickjs.c:1353
        JS_ThrowOutOfMemory(ctx);
    8001a118:	8526                	mv	a0,s1
    8001a11a:	fbbff0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:1357
}
    8001a11e:	60e2                	ld	ra,24(sp)
    8001a120:	8522                	mv	a0,s0
    8001a122:	6442                	ld	s0,16(sp)
    8001a124:	64a2                	ld	s1,8(sp)
    8001a126:	6105                	addi	sp,sp,32
    8001a128:	8082                	ret

000000008001a12a <js_strndup>:
js_strndup():
quickjs-nuttx/quickjs.c:1411
{
    8001a12a:	1101                	addi	sp,sp,-32
    8001a12c:	e04a                	sd	s2,0(sp)
    8001a12e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:1413
    ptr = js_malloc(ctx, n + 1);
    8001a130:	00160593          	addi	a1,a2,1
quickjs-nuttx/quickjs.c:1411
{
    8001a134:	e822                	sd	s0,16(sp)
    8001a136:	e426                	sd	s1,8(sp)
    8001a138:	ec06                	sd	ra,24(sp)
    8001a13a:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:1413
    ptr = js_malloc(ctx, n + 1);
    8001a13c:	fc9ff0ef          	jal	ra,8001a104 <js_malloc>
    8001a140:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1414
    if (ptr) {
    8001a142:	c901                	beqz	a0,8001a152 <js_strndup+0x28>
quickjs-nuttx/quickjs.c:1415
        memcpy(ptr, s, n);
    8001a144:	8622                	mv	a2,s0
    8001a146:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:1416
        ptr[n] = '\0';
    8001a148:	9426                	add	s0,s0,s1
quickjs-nuttx/quickjs.c:1415
        memcpy(ptr, s, n);
    8001a14a:	463490ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:1416
        ptr[n] = '\0';
    8001a14e:	00040023          	sb	zero,0(s0)
quickjs-nuttx/quickjs.c:1419
}
    8001a152:	60e2                	ld	ra,24(sp)
    8001a154:	6442                	ld	s0,16(sp)
    8001a156:	6902                	ld	s2,0(sp)
    8001a158:	8526                	mv	a0,s1
    8001a15a:	64a2                	ld	s1,8(sp)
    8001a15c:	6105                	addi	sp,sp,32
    8001a15e:	8082                	ret

000000008001a160 <js_strdup>:
js_strdup():
quickjs-nuttx/quickjs.c:1422
{
    8001a160:	1101                	addi	sp,sp,-32
    8001a162:	e822                	sd	s0,16(sp)
    8001a164:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1423
    return js_strndup(ctx, str, strlen(str));
    8001a166:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:1422
{
    8001a168:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:1423
    return js_strndup(ctx, str, strlen(str));
    8001a16a:	e42e                	sd	a1,8(sp)
    8001a16c:	417490ef          	jal	ra,80063d82 <strlen>
    8001a170:	862a                	mv	a2,a0
    8001a172:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:1424
}
    8001a174:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:1423
    return js_strndup(ctx, str, strlen(str));
    8001a176:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:1424
}
    8001a178:	60e2                	ld	ra,24(sp)
    8001a17a:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:1423
    return js_strndup(ctx, str, strlen(str));
    8001a17c:	fafff06f          	j	8001a12a <js_strndup>

000000008001a180 <JS_NewBigFloat>:
JS_NewBigFloat():
quickjs-nuttx/quickjs.c:12388
{
    8001a180:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:12390
    p = js_malloc(ctx, sizeof(*p));
    8001a182:	03000593          	li	a1,48
quickjs-nuttx/quickjs.c:12388
{
    8001a186:	ec26                	sd	s1,24(sp)
    8001a188:	f406                	sd	ra,40(sp)
    8001a18a:	f022                	sd	s0,32(sp)
    8001a18c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:12390
    p = js_malloc(ctx, sizeof(*p));
    8001a18e:	f77ff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:12391
    if (!p)
    8001a192:	e919                	bnez	a0,8001a1a8 <JS_NewBigFloat+0x28>
quickjs-nuttx/quickjs.c:12392
        return JS_EXCEPTION;
    8001a194:	e002                	sd	zero,0(sp)
    8001a196:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12396
}
    8001a198:	70a2                	ld	ra,40(sp)
    8001a19a:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:12395
    return JS_MKPTR(JS_TAG_BIG_FLOAT, p);
    8001a19c:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:12396
}
    8001a19e:	6502                	ld	a0,0(sp)
    8001a1a0:	65a2                	ld	a1,8(sp)
    8001a1a2:	64e2                	ld	s1,24(sp)
    8001a1a4:	6145                	addi	sp,sp,48
    8001a1a6:	8082                	ret
quickjs-nuttx/quickjs.c:12393
    p->header.ref_count = 1;
    8001a1a8:	4785                	li	a5,1
    8001a1aa:	c11c                	sw	a5,0(a0)
    8001a1ac:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12394
    bf_init(ctx->bf_ctx, &p->num);
    8001a1ae:	00850593          	addi	a1,a0,8
    8001a1b2:	1904b503          	ld	a0,400(s1)
    8001a1b6:	1b93d0ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12395
    return JS_MKPTR(JS_TAG_BIG_FLOAT, p);
    8001a1ba:	57dd                	li	a5,-9
    8001a1bc:	e022                	sd	s0,0(sp)
    8001a1be:	bfe9                	j	8001a198 <JS_NewBigFloat+0x18>

000000008001a1c0 <js_bigfloat_get_const>:
js_bigfloat_get_const():
quickjs-nuttx/quickjs.c:51214
{
    8001a1c0:	7159                	addi	sp,sp,-112
    8001a1c2:	f0a2                	sd	s0,96(sp)
    8001a1c4:	eca6                	sd	s1,88(sp)
    8001a1c6:	e0d2                	sd	s4,64(sp)
    8001a1c8:	fc56                	sd	s5,56(sp)
    8001a1ca:	f486                	sd	ra,104(sp)
    8001a1cc:	e8ca                	sd	s2,80(sp)
    8001a1ce:	e4ce                	sd	s3,72(sp)
    8001a1d0:	f85a                	sd	s6,48(sp)
    8001a1d2:	842a                	mv	s0,a0
    8001a1d4:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:51217
    val = JS_NewBigFloat(ctx);
    8001a1d6:	fabff0ef          	jal	ra,8001a180 <JS_NewBigFloat>
quickjs-nuttx/quickjs.c:51218
    if (JS_IsException(val))
    8001a1da:	0005871b          	sext.w	a4,a1
    8001a1de:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51217
    val = JS_NewBigFloat(ctx);
    8001a1e0:	8aaa                	mv	s5,a0
    8001a1e2:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:51218
    if (JS_IsException(val))
    8001a1e4:	02f71063          	bne	a4,a5,8001a204 <js_bigfloat_get_const+0x44>
quickjs-nuttx/quickjs.c:51257
}
    8001a1e8:	70a6                	ld	ra,104(sp)
    8001a1ea:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:51256
    return val;
    8001a1ec:	f056                	sd	s5,32(sp)
    8001a1ee:	f452                	sd	s4,40(sp)
quickjs-nuttx/quickjs.c:51257
}
    8001a1f0:	7502                	ld	a0,32(sp)
    8001a1f2:	75a2                	ld	a1,40(sp)
    8001a1f4:	64e6                	ld	s1,88(sp)
    8001a1f6:	6946                	ld	s2,80(sp)
    8001a1f8:	69a6                	ld	s3,72(sp)
    8001a1fa:	6a06                	ld	s4,64(sp)
    8001a1fc:	7ae2                	ld	s5,56(sp)
    8001a1fe:	7b42                	ld	s6,48(sp)
    8001a200:	6165                	addi	sp,sp,112
    8001a202:	8082                	ret
quickjs-nuttx/quickjs.c:51221
    switch(magic) {
    8001a204:	478d                	li	a5,3
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    8001a206:	00850913          	addi	s2,a0,8
js_bigfloat_get_const():
quickjs-nuttx/quickjs.c:51221
    switch(magic) {
    8001a20a:	0097ca63          	blt	a5,s1,8001a21e <js_bigfloat_get_const+0x5e>
    8001a20e:	4785                	li	a5,1
    8001a210:	0497c563          	blt	a5,s1,8001a25a <js_bigfloat_get_const+0x9a>
    8001a214:	c09d                	beqz	s1,8001a23a <js_bigfloat_get_const+0x7a>
    8001a216:	02f48a63          	beq	s1,a5,8001a24a <js_bigfloat_get_const+0x8a>
quickjs-nuttx/quickjs.c:51254
        abort();
    8001a21a:	169480ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:51221
    switch(magic) {
    8001a21e:	4791                	li	a5,4
    8001a220:	fef49de3          	bne	s1,a5,8001a21a <js_bigfloat_get_const+0x5a>
quickjs-nuttx/quickjs.c:51249
        bf_set_ui(r, 1);
    8001a224:	4585                	li	a1,1
    8001a226:	854a                	mv	a0,s2
    8001a228:	1b73d0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/quickjs.c:51250
        bf_mul_2exp(r, 1 - ctx->fp_env.prec,
    8001a22c:	19843603          	ld	a2,408(s0)
    8001a230:	4585                	li	a1,1
    8001a232:	1a042683          	lw	a3,416(s0)
    8001a236:	8d91                	sub	a1,a1,a2
    8001a238:	a885                	j	8001a2a8 <js_bigfloat_get_const+0xe8>
quickjs-nuttx/quickjs.c:51223
        bf_const_pi(r, ctx->fp_env.prec, ctx->fp_env.flags);
    8001a23a:	1a042603          	lw	a2,416(s0)
    8001a23e:	19843583          	ld	a1,408(s0)
    8001a242:	854a                	mv	a0,s2
    8001a244:	00e3f0ef          	jal	ra,80059252 <bf_const_pi>
quickjs-nuttx/quickjs.c:51224
        break;
    8001a248:	b745                	j	8001a1e8 <js_bigfloat_get_const+0x28>
quickjs-nuttx/quickjs.c:51226
        bf_const_log2(r, ctx->fp_env.prec, ctx->fp_env.flags);
    8001a24a:	1a042603          	lw	a2,416(s0)
    8001a24e:	19843583          	ld	a1,408(s0)
    8001a252:	854a                	mv	a0,s2
    8001a254:	7ed3e0ef          	jal	ra,80059240 <bf_const_log2>
quickjs-nuttx/quickjs.c:51227
        break;
    8001a258:	bf41                	j	8001a1e8 <js_bigfloat_get_const+0x28>
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    8001a25a:	1a042783          	lw	a5,416(s0)
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    8001a25e:	03f00713          	li	a4,63
quickjs-nuttx/libbf.h:157
        return BF_EXP_BITS_MAX + 1;
    8001a262:	03e00993          	li	s3,62
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    8001a266:	0057d79b          	srliw	a5,a5,0x5
    8001a26a:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    8001a26e:	00e78663          	beq	a5,a4,8001a27a <js_bigfloat_get_const+0xba>
quickjs-nuttx/libbf.h:159
        return BF_EXP_BITS_MAX - e;
    8001a272:	03d00993          	li	s3,61
    8001a276:	40f989bb          	subw	s3,s3,a5
js_bigfloat_get_const():
quickjs-nuttx/quickjs.c:51233
            bf_set_ui(r, 1);
    8001a27a:	4585                	li	a1,1
    8001a27c:	854a                	mv	a0,s2
    8001a27e:	1613d0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/quickjs.c:51232
            e_range = (limb_t)1 << (bf_get_exp_bits(ctx->fp_env.flags) - 1);
    8001a282:	39fd                	addiw	s3,s3,-1
    8001a284:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:51234
            if (magic == 2) {
    8001a286:	4789                	li	a5,2
    8001a288:	1a042683          	lw	a3,416(s0)
    8001a28c:	19843603          	ld	a2,408(s0)
quickjs-nuttx/quickjs.c:51232
            e_range = (limb_t)1 << (bf_get_exp_bits(ctx->fp_env.flags) - 1);
    8001a290:	013b19b3          	sll	s3,s6,s3
quickjs-nuttx/quickjs.c:51234
            if (magic == 2) {
    8001a294:	00f49e63          	bne	s1,a5,8001a2b0 <js_bigfloat_get_const+0xf0>
quickjs-nuttx/quickjs.c:51236
                if (ctx->fp_env.flags & BF_FLAG_SUBNORMAL)
    8001a298:	0086f793          	andi	a5,a3,8
quickjs-nuttx/quickjs.c:51235
                e = -e_range + 2;
    8001a29c:	413485b3          	sub	a1,s1,s3
quickjs-nuttx/quickjs.c:51236
                if (ctx->fp_env.flags & BF_FLAG_SUBNORMAL)
    8001a2a0:	c781                	beqz	a5,8001a2a8 <js_bigfloat_get_const+0xe8>
quickjs-nuttx/quickjs.c:51237
                    e -= ctx->fp_env.prec - 1;
    8001a2a2:	40cb0b33          	sub	s6,s6,a2
    8001a2a6:	95da                	add	a1,a1,s6
quickjs-nuttx/quickjs.c:51243
                bf_mul_2exp(r, e_range - ctx->fp_env.prec, ctx->fp_env.prec,
    8001a2a8:	854a                	mv	a0,s2
    8001a2aa:	7dc3e0ef          	jal	ra,80058a86 <bf_mul_2exp>
    8001a2ae:	bf2d                	j	8001a1e8 <js_bigfloat_get_const+0x28>
quickjs-nuttx/quickjs.c:51240
                bf_mul_2exp(r, ctx->fp_env.prec, ctx->fp_env.prec,
    8001a2b0:	85b2                	mv	a1,a2
    8001a2b2:	854a                	mv	a0,s2
    8001a2b4:	7d23e0ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/quickjs.c:51242
                bf_add_si(r, r, -1, ctx->fp_env.prec, ctx->fp_env.flags);
    8001a2b8:	19843683          	ld	a3,408(s0)
    8001a2bc:	1a042703          	lw	a4,416(s0)
    8001a2c0:	567d                	li	a2,-1
    8001a2c2:	85ca                	mv	a1,s2
    8001a2c4:	854a                	mv	a0,s2
    8001a2c6:	0f73e0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/quickjs.c:51243
                bf_mul_2exp(r, e_range - ctx->fp_env.prec, ctx->fp_env.prec,
    8001a2ca:	19843603          	ld	a2,408(s0)
    8001a2ce:	1a042683          	lw	a3,416(s0)
    8001a2d2:	40c985b3          	sub	a1,s3,a2
    8001a2d6:	bfc9                	j	8001a2a8 <js_bigfloat_get_const+0xe8>

000000008001a2d8 <get_var_ref>:
get_var_ref():
quickjs-nuttx/quickjs.c:15539
{
    8001a2d8:	7179                	addi	sp,sp,-48
    8001a2da:	f022                	sd	s0,32(sp)
    8001a2dc:	ec26                	sd	s1,24(sp)
    8001a2de:	e84a                	sd	s2,16(sp)
    8001a2e0:	e44e                	sd	s3,8(sp)
    8001a2e2:	e052                	sd	s4,0(sp)
    8001a2e4:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:15543
    list_for_each(el, &sf->var_ref_list) {
    8001a2e6:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:15539
{
    8001a2e8:	89aa                	mv	s3,a0
    8001a2ea:	842e                	mv	s0,a1
    8001a2ec:	84b2                	mv	s1,a2
    8001a2ee:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:15543
    list_for_each(el, &sf->var_ref_list) {
    8001a2f0:	02858a13          	addi	s4,a1,40
quickjs-nuttx/quickjs.c:15543 (discriminator 1)
    8001a2f4:	06fa1d63          	bne	s4,a5,8001a36e <get_var_ref+0x96>
quickjs-nuttx/quickjs.c:15551
    var_ref = js_malloc(ctx, sizeof(JSVarRef));
    8001a2f8:	03800593          	li	a1,56
    8001a2fc:	854e                	mv	a0,s3
    8001a2fe:	e07ff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:15552
    if (!var_ref)
    8001a302:	c559                	beqz	a0,8001a390 <get_var_ref+0xb8>
quickjs-nuttx/quickjs.c:15554
    var_ref->header.ref_count = 1;
    8001a304:	4785                	li	a5,1
    8001a306:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:15555
    add_gc_object(ctx->rt, &var_ref->header, JS_GC_OBJ_TYPE_VAR_REF);
    8001a308:	0189b703          	ld	a4,24(s3)
add_gc_object():
quickjs-nuttx/quickjs.c:5584
    h->gc_obj_type = type;
    8001a30c:	478d                	li	a5,3
    8001a30e:	00f50223          	sb	a5,4(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001a312:	6754                	ld	a3,136(a4)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001a314:	00850793          	addi	a5,a0,8
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001a318:	e69c                	sd	a5,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001a31a:	e514                	sd	a3,8(a0)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    8001a31c:	08870693          	addi	a3,a4,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001a320:	e914                	sd	a3,16(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001a322:	e75c                	sd	a5,136(a4)
get_var_ref():
quickjs-nuttx/quickjs.c:15556
    var_ref->is_detached = FALSE;
    8001a324:	00554783          	lbu	a5,5(a0)
    8001a328:	0019171b          	slliw	a4,s2,0x1
    8001a32c:	8b0d                	andi	a4,a4,3
    8001a32e:	9bf1                	andi	a5,a5,-4
    8001a330:	8fd9                	or	a5,a5,a4
    8001a332:	00f502a3          	sb	a5,5(a0)
quickjs-nuttx/quickjs.c:15558
    var_ref->var_idx = var_idx;
    8001a336:	00951323          	sh	s1,6(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001a33a:	7418                	ld	a4,40(s0)
get_var_ref():
quickjs-nuttx/quickjs.c:15559
    list_add_tail(&var_ref->var_ref_link, &sf->var_ref_list);
    8001a33c:	02050793          	addi	a5,a0,32
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001a340:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001a342:	f118                	sd	a4,32(a0)
quickjs-nuttx/list.h:53
    el->next = next;
    8001a344:	03453423          	sd	s4,40(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001a348:	f41c                	sd	a5,40(s0)
get_var_ref():
quickjs-nuttx/quickjs.c:15560
    if (sf->js_mode & JS_MODE_ASYNC) {
    8001a34a:	407c                	lw	a5,68(s0)
    8001a34c:	8ba1                	andi	a5,a5,8
    8001a34e:	cbb9                	beqz	a5,8001a3a4 <get_var_ref+0xcc>
quickjs-nuttx/quickjs.c:15569
        var_ref->async_func = container_of(sf, JSAsyncFunctionState, frame);
    8001a350:	fa840793          	addi	a5,s0,-88
    8001a354:	f91c                	sd	a5,48(a0)
quickjs-nuttx/quickjs.c:15570
        var_ref->async_func->header.ref_count++;
    8001a356:	fa842783          	lw	a5,-88(s0)
    8001a35a:	2785                	addiw	a5,a5,1
    8001a35c:	faf42423          	sw	a5,-88(s0)
quickjs-nuttx/quickjs.c:15575
        var_ref->pvalue = &sf->arg_buf[var_idx];
    8001a360:	0492                	slli	s1,s1,0x4
quickjs-nuttx/quickjs.c:15574
    if (is_arg)
    8001a362:	04090463          	beqz	s2,8001a3aa <get_var_ref+0xd2>
quickjs-nuttx/quickjs.c:15575
        var_ref->pvalue = &sf->arg_buf[var_idx];
    8001a366:	6c10                	ld	a2,24(s0)
quickjs-nuttx/quickjs.c:15577
        var_ref->pvalue = &sf->var_buf[var_idx];
    8001a368:	94b2                	add	s1,s1,a2
    8001a36a:	ed04                	sd	s1,24(a0)
    8001a36c:	a015                	j	8001a390 <get_var_ref+0xb8>
quickjs-nuttx/quickjs.c:15545
        if (var_ref->var_idx == var_idx && var_ref->is_arg == is_arg) {
    8001a36e:	fe67d703          	lhu	a4,-26(a5)
    8001a372:	02971763          	bne	a4,s1,8001a3a0 <get_var_ref+0xc8>
quickjs-nuttx/quickjs.c:15545 (discriminator 1)
    8001a376:	fe07b703          	ld	a4,-32(a5)
    8001a37a:	9325                	srli	a4,a4,0x29
    8001a37c:	8b05                	andi	a4,a4,1
    8001a37e:	03271163          	bne	a4,s2,8001a3a0 <get_var_ref+0xc8>
quickjs-nuttx/quickjs.c:15546
            var_ref->header.ref_count++;
    8001a382:	fe07a703          	lw	a4,-32(a5)
quickjs-nuttx/quickjs.c:15544
        var_ref = list_entry(el, JSVarRef, var_ref_link);
    8001a386:	fe078513          	addi	a0,a5,-32
quickjs-nuttx/quickjs.c:15546
            var_ref->header.ref_count++;
    8001a38a:	2705                	addiw	a4,a4,1
    8001a38c:	fee7a023          	sw	a4,-32(a5)
quickjs-nuttx/quickjs.c:15579
}
    8001a390:	70a2                	ld	ra,40(sp)
    8001a392:	7402                	ld	s0,32(sp)
    8001a394:	64e2                	ld	s1,24(sp)
    8001a396:	6942                	ld	s2,16(sp)
    8001a398:	69a2                	ld	s3,8(sp)
    8001a39a:	6a02                	ld	s4,0(sp)
    8001a39c:	6145                	addi	sp,sp,48
    8001a39e:	8082                	ret
quickjs-nuttx/quickjs.c:15543 (discriminator 2)
    list_for_each(el, &sf->var_ref_list) {
    8001a3a0:	679c                	ld	a5,8(a5)
    8001a3a2:	bf89                	j	8001a2f4 <get_var_ref+0x1c>
quickjs-nuttx/quickjs.c:15572
        var_ref->async_func = NULL;
    8001a3a4:	02053823          	sd	zero,48(a0)
    8001a3a8:	bf65                	j	8001a360 <get_var_ref+0x88>
quickjs-nuttx/quickjs.c:15577
        var_ref->pvalue = &sf->var_buf[var_idx];
    8001a3aa:	7010                	ld	a2,32(s0)
    8001a3ac:	bf75                	j	8001a368 <get_var_ref+0x90>

000000008001a3ae <js_clone_shape>:
js_clone_shape():
quickjs-nuttx/quickjs.c:4397
{
    8001a3ae:	715d                	addi	sp,sp,-80
    8001a3b0:	e0a2                	sd	s0,64(sp)
    8001a3b2:	f84a                	sd	s2,48(sp)
    8001a3b4:	f44e                	sd	s3,40(sp)
    8001a3b6:	e486                	sd	ra,72(sp)
    8001a3b8:	fc26                	sd	s1,56(sp)
quickjs-nuttx/quickjs.c:4404
    hash_size = sh1->prop_hash_mask + 1;
    8001a3ba:	5184                	lw	s1,32(a1)
quickjs-nuttx/quickjs.c:4405
    size = get_shape_size(hash_size, sh1->prop_size);
    8001a3bc:	51d0                	lw	a2,36(a1)
quickjs-nuttx/quickjs.c:4397
{
    8001a3be:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:4404
    hash_size = sh1->prop_hash_mask + 1;
    8001a3c0:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:4405
    size = get_shape_size(hash_size, sh1->prop_size);
    8001a3c2:	1482                	slli	s1,s1,0x20
    8001a3c4:	9081                	srli	s1,s1,0x20
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8001a3c6:	0606                	slli	a2,a2,0x1
    8001a3c8:	9626                	add	a2,a2,s1
    8001a3ca:	0641                	addi	a2,a2,16
    8001a3cc:	060a                	slli	a2,a2,0x2
js_clone_shape():
quickjs-nuttx/quickjs.c:4406
    sh_alloc = js_malloc(ctx, size);
    8001a3ce:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:4397
{
    8001a3d0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:4406
    sh_alloc = js_malloc(ctx, size);
    8001a3d2:	e432                	sd	a2,8(sp)
    8001a3d4:	d31ff0ef          	jal	ra,8001a104 <js_malloc>
    8001a3d8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:4407
    if (!sh_alloc)
    8001a3da:	cd21                	beqz	a0,8001a432 <js_clone_shape+0x84>
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8001a3dc:	02096583          	lwu	a1,32(s2)
js_clone_shape():
quickjs-nuttx/quickjs.c:4410
    memcpy(sh_alloc, sh_alloc1, size);
    8001a3e0:	6622                	ld	a2,8(sp)
get_shape_from_alloc():
quickjs-nuttx/quickjs.c:4252
    return (JSShape *)(void *)((uint32_t *)sh_alloc + hash_size);
    8001a3e2:	048a                	slli	s1,s1,0x2
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8001a3e4:	058a                	slli	a1,a1,0x2
    8001a3e6:	40b905b3          	sub	a1,s2,a1
js_clone_shape():
quickjs-nuttx/quickjs.c:4410
    memcpy(sh_alloc, sh_alloc1, size);
    8001a3ea:	15f1                	addi	a1,a1,-4
    8001a3ec:	1c1490ef          	jal	ra,80063dac <memcpy>
get_shape_from_alloc():
quickjs-nuttx/quickjs.c:4252
    return (JSShape *)(void *)((uint32_t *)sh_alloc + hash_size);
    8001a3f0:	9426                	add	s0,s0,s1
js_clone_shape():
quickjs-nuttx/quickjs.c:4412
    sh->header.ref_count = 1;
    8001a3f2:	4785                	li	a5,1
    8001a3f4:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:4413
    add_gc_object(ctx->rt, &sh->header, JS_GC_OBJ_TYPE_SHAPE);
    8001a3f6:	0189b783          	ld	a5,24(s3)
add_gc_object():
quickjs-nuttx/quickjs.c:5584
    h->gc_obj_type = type;
    8001a3fa:	4709                	li	a4,2
    8001a3fc:	00e40223          	sb	a4,4(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001a400:	67d4                	ld	a3,136(a5)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001a402:	00840713          	addi	a4,s0,8
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001a406:	e698                	sd	a4,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001a408:	e414                	sd	a3,8(s0)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    8001a40a:	08878693          	addi	a3,a5,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001a40e:	e814                	sd	a3,16(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001a410:	e7d8                	sd	a4,136(a5)
js_clone_shape():
quickjs-nuttx/quickjs.c:4415
    if (sh->proto) {
    8001a412:	7c08                	ld	a0,56(s0)
quickjs-nuttx/quickjs.c:4414
    sh->is_hashed = FALSE;
    8001a414:	00040c23          	sb	zero,24(s0)
quickjs-nuttx/quickjs.c:4415
    if (sh->proto) {
    8001a418:	c519                	beqz	a0,8001a426 <js_clone_shape+0x78>
quickjs-nuttx/quickjs.c:4416
        JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, sh->proto));
    8001a41a:	57fd                	li	a5,-1
    8001a41c:	55fd                	li	a1,-1
    8001a41e:	e82a                	sd	a0,16(sp)
    8001a420:	ec3e                	sd	a5,24(sp)
    8001a422:	ff9ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001a426:	04040913          	addi	s2,s0,64
js_clone_shape():
quickjs-nuttx/quickjs.c:4418
    for(i = 0, pr = get_shape_prop(sh); i < sh->prop_count; i++, pr++) {
    8001a42a:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:4418 (discriminator 1)
    8001a42c:	541c                	lw	a5,40(s0)
    8001a42e:	00f4ea63          	bltu	s1,a5,8001a442 <js_clone_shape+0x94>
quickjs-nuttx/quickjs.c:4422
}
    8001a432:	60a6                	ld	ra,72(sp)
    8001a434:	8522                	mv	a0,s0
    8001a436:	6406                	ld	s0,64(sp)
    8001a438:	74e2                	ld	s1,56(sp)
    8001a43a:	7942                	ld	s2,48(sp)
    8001a43c:	79a2                	ld	s3,40(sp)
    8001a43e:	6161                	addi	sp,sp,80
    8001a440:	8082                	ret
quickjs-nuttx/quickjs.c:4419 (discriminator 3)
        JS_DupAtom(ctx, pr->atom);
    8001a442:	00492583          	lw	a1,4(s2)
    8001a446:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:4418 (discriminator 3)
    for(i = 0, pr = get_shape_prop(sh); i < sh->prop_count; i++, pr++) {
    8001a448:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:4419 (discriminator 3)
        JS_DupAtom(ctx, pr->atom);
    8001a44a:	cbdf00ef          	jal	ra,8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:4418 (discriminator 3)
    for(i = 0, pr = get_shape_prop(sh); i < sh->prop_count; i++, pr++) {
    8001a44e:	0921                	addi	s2,s2,8
    8001a450:	bff1                	j	8001a42c <js_clone_shape+0x7e>

000000008001a452 <js_shape_prepare_update>:
js_shape_prepare_update():
quickjs-nuttx/quickjs.c:8988
{
    8001a452:	7139                	addi	sp,sp,-64
    8001a454:	e852                	sd	s4,16(sp)
    8001a456:	fc06                	sd	ra,56(sp)
    8001a458:	f822                	sd	s0,48(sp)
    8001a45a:	f426                	sd	s1,40(sp)
    8001a45c:	f04a                	sd	s2,32(sp)
    8001a45e:	ec4e                	sd	s3,24(sp)
    8001a460:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:8992
    sh = p->shape;
    8001a462:	6d8c                	ld	a1,24(a1)
quickjs-nuttx/quickjs.c:8993
    if (sh->is_hashed) {
    8001a464:	0185c783          	lbu	a5,24(a1)
    8001a468:	eb91                	bnez	a5,8001a47c <js_shape_prepare_update+0x2a>
quickjs-nuttx/quickjs.c:9010
    return 0;
    8001a46a:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:9011
}
    8001a46c:	70e2                	ld	ra,56(sp)
    8001a46e:	7442                	ld	s0,48(sp)
    8001a470:	74a2                	ld	s1,40(sp)
    8001a472:	7902                	ld	s2,32(sp)
    8001a474:	69e2                	ld	s3,24(sp)
    8001a476:	6a42                	ld	s4,16(sp)
    8001a478:	6121                	addi	sp,sp,64
    8001a47a:	8082                	ret
quickjs-nuttx/quickjs.c:8994
        if (sh->header.ref_count != 1) {
    8001a47c:	4198                	lw	a4,0(a1)
    8001a47e:	4785                	li	a5,1
    8001a480:	89aa                	mv	s3,a0
    8001a482:	04f70663          	beq	a4,a5,8001a4ce <js_shape_prepare_update+0x7c>
    8001a486:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:8990
    uint32_t idx = 0;    /* prevent warning */
    8001a488:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:8995
            if (pprs)
    8001a48a:	ca01                	beqz	a2,8001a49a <js_shape_prepare_update+0x48>
quickjs-nuttx/quickjs.c:8996
                idx = *pprs - get_shape_prop(sh);
    8001a48c:	621c                	ld	a5,0(a2)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001a48e:	04058413          	addi	s0,a1,64
js_shape_prepare_update():
quickjs-nuttx/quickjs.c:8996
                idx = *pprs - get_shape_prop(sh);
    8001a492:	40878433          	sub	s0,a5,s0
    8001a496:	840d                	srai	s0,s0,0x3
    8001a498:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:8998
            sh = js_clone_shape(ctx, sh);
    8001a49a:	854e                	mv	a0,s3
    8001a49c:	f13ff0ef          	jal	ra,8001a3ae <js_clone_shape>
    8001a4a0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:9000
                return -1;
    8001a4a2:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:8999
            if (!sh)
    8001a4a4:	d4e1                	beqz	s1,8001a46c <js_shape_prepare_update+0x1a>
quickjs-nuttx/quickjs.c:9001
            js_free_shape(ctx->rt, p->shape);
    8001a4a6:	018a3583          	ld	a1,24(s4)
    8001a4aa:	0189b503          	ld	a0,24(s3)
    8001a4ae:	f27f10ef          	jal	ra,8000c3d4 <js_free_shape>
quickjs-nuttx/quickjs.c:9002
            p->shape = sh;
    8001a4b2:	009a3c23          	sd	s1,24(s4)
quickjs-nuttx/quickjs.c:9003
            if (pprs)
    8001a4b6:	fa090ae3          	beqz	s2,8001a46a <js_shape_prepare_update+0x18>
quickjs-nuttx/quickjs.c:9004
                *pprs = get_shape_prop(sh) + idx;
    8001a4ba:	02041793          	slli	a5,s0,0x20
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001a4be:	04048493          	addi	s1,s1,64
js_shape_prepare_update():
quickjs-nuttx/quickjs.c:9004
                *pprs = get_shape_prop(sh) + idx;
    8001a4c2:	01d7d413          	srli	s0,a5,0x1d
    8001a4c6:	9426                	add	s0,s0,s1
    8001a4c8:	00893023          	sd	s0,0(s2)
    8001a4cc:	bf79                	j	8001a46a <js_shape_prepare_update+0x18>
quickjs-nuttx/quickjs.c:9006
            js_shape_hash_unlink(ctx->rt, sh);
    8001a4ce:	6d08                	ld	a0,24(a0)
    8001a4d0:	e42e                	sd	a1,8(sp)
    8001a4d2:	865ed0ef          	jal	ra,80007d36 <js_shape_hash_unlink>
quickjs-nuttx/quickjs.c:9007
            sh->is_hashed = FALSE;
    8001a4d6:	65a2                	ld	a1,8(sp)
    8001a4d8:	00058c23          	sb	zero,24(a1)
    8001a4dc:	b779                	j	8001a46a <js_shape_prepare_update+0x18>

000000008001a4de <JS_AutoInitProperty>:
JS_AutoInitProperty():
quickjs-nuttx/quickjs.c:7091
{
    8001a4de:	715d                	addi	sp,sp,-80
    8001a4e0:	f44e                	sd	s3,40(sp)
    8001a4e2:	89b2                	mv	s3,a2
quickjs-nuttx/quickjs.c:7096
    if (js_shape_prepare_update(ctx, p, &prs))
    8001a4e4:	0030                	addi	a2,sp,8
quickjs-nuttx/quickjs.c:7091
{
    8001a4e6:	e0a2                	sd	s0,64(sp)
    8001a4e8:	f84a                	sd	s2,48(sp)
    8001a4ea:	e486                	sd	ra,72(sp)
    8001a4ec:	fc26                	sd	s1,56(sp)
    8001a4ee:	892e                	mv	s2,a1
    8001a4f0:	8436                	mv	s0,a3
    8001a4f2:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:7096
    if (js_shape_prepare_update(ctx, p, &prs))
    8001a4f4:	f5fff0ef          	jal	ra,8001a452 <js_shape_prepare_update>
    8001a4f8:	c911                	beqz	a0,8001a50c <JS_AutoInitProperty+0x2e>
quickjs-nuttx/quickjs.c:7097
        return -1;
    8001a4fa:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:7110
}
    8001a4fc:	60a6                	ld	ra,72(sp)
    8001a4fe:	6406                	ld	s0,64(sp)
    8001a500:	7942                	ld	s2,48(sp)
    8001a502:	79a2                	ld	s3,40(sp)
    8001a504:	8526                	mv	a0,s1
    8001a506:	74e2                	ld	s1,56(sp)
    8001a508:	6161                	addi	sp,sp,80
    8001a50a:	8082                	ret
    8001a50c:	84aa                	mv	s1,a0
js_autoinit_get_realm():
quickjs-nuttx/quickjs.c:5156
    return (JSContext *)(pr->u.init.realm_and_id & ~3);
    8001a50e:	6008                	ld	a0,0(s0)
JS_AutoInitProperty():
quickjs-nuttx/quickjs.c:7102
    val = func(realm, p, prop, pr->u.init.opaque);
    8001a510:	6414                	ld	a3,8(s0)
    8001a512:	864e                	mv	a2,s3
quickjs-nuttx/quickjs.c:7100
    func = js_autoinit_func_table[js_autoinit_get_id(pr)];
    8001a514:	00357793          	andi	a5,a0,3
    8001a518:	00379713          	slli	a4,a5,0x3
    8001a51c:	00056797          	auipc	a5,0x56
    8001a520:	3ec78793          	addi	a5,a5,1004 # 80070908 <js_autoinit_func_table>
    8001a524:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:7102
    val = func(realm, p, prop, pr->u.init.opaque);
    8001a526:	639c                	ld	a5,0(a5)
    8001a528:	85ca                	mv	a1,s2
    8001a52a:	9971                	andi	a0,a0,-4
    8001a52c:	9782                	jalr	a5
    8001a52e:	e82a                	sd	a0,16(sp)
js_autoinit_get_realm():
quickjs-nuttx/quickjs.c:5156
    return (JSContext *)(pr->u.init.realm_and_id & ~3);
    8001a530:	6008                	ld	a0,0(s0)
JS_AutoInitProperty():
quickjs-nuttx/quickjs.c:7102
    val = func(realm, p, prop, pr->u.init.opaque);
    8001a532:	ec2e                	sd	a1,24(sp)
js_autoinit_free():
quickjs-nuttx/quickjs.c:5166
    JS_FreeContext(js_autoinit_get_realm(pr));
    8001a534:	9971                	andi	a0,a0,-4
    8001a536:	fdef10ef          	jal	ra,8000bd14 <JS_FreeContext>
JS_AutoInitProperty():
quickjs-nuttx/quickjs.c:7104
    prs->flags &= ~JS_PROP_TMASK;
    8001a53a:	66a2                	ld	a3,8(sp)
    8001a53c:	3c000737          	lui	a4,0x3c000
    8001a540:	429c                	lw	a5,0(a3)
    8001a542:	8f7d                	and	a4,a4,a5
    8001a544:	179a                	slli	a5,a5,0x26
    8001a546:	9399                	srli	a5,a5,0x26
    8001a548:	8fd9                	or	a5,a5,a4
    8001a54a:	c29c                	sw	a5,0(a3)
quickjs-nuttx/quickjs.c:7105
    pr->u.value = JS_UNDEFINED;
    8001a54c:	478d                	li	a5,3
    8001a54e:	e41c                	sd	a5,8(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001a550:	67e2                	ld	a5,24(sp)
JS_AutoInitProperty():
quickjs-nuttx/quickjs.c:7105
    8001a552:	00043023          	sd	zero,0(s0)
quickjs-nuttx/quickjs.c:7106
    if (JS_IsException(val))
    8001a556:	4719                	li	a4,6
    8001a558:	0007869b          	sext.w	a3,a5
    8001a55c:	f8e68fe3          	beq	a3,a4,8001a4fa <JS_AutoInitProperty+0x1c>
quickjs-nuttx/quickjs.c:7108
    pr->u.value = val;
    8001a560:	6742                	ld	a4,16(sp)
    8001a562:	e41c                	sd	a5,8(s0)
    8001a564:	e018                	sd	a4,0(s0)
quickjs-nuttx/quickjs.c:7109
    return 0;
    8001a566:	bf59                	j	8001a4fc <JS_AutoInitProperty+0x1e>

000000008001a568 <JS_SetPrototypeInternal>:
JS_SetPrototypeInternal():
quickjs-nuttx/quickjs.c:6839
{
    8001a568:	7131                	addi	sp,sp,-192
    8001a56a:	f922                	sd	s0,176(sp)
    8001a56c:	f526                	sd	s1,168(sp)
    8001a56e:	ed4e                	sd	s3,152(sp)
    8001a570:	e952                	sd	s4,144(sp)
    8001a572:	843e                	mv	s0,a5
    8001a574:	fd06                	sd	ra,184(sp)
    8001a576:	f14a                	sd	s2,160(sp)
    8001a578:	e556                	sd	s5,136(sp)
    8001a57a:	e82e                	sd	a1,16(sp)
    8001a57c:	ec32                	sd	a2,24(sp)
    8001a57e:	e036                	sd	a3,0(sp)
    8001a580:	e43a                	sd	a4,8(sp)
    8001a582:	84aa                	mv	s1,a0
    8001a584:	87b2                	mv	a5,a2
    8001a586:	89b6                	mv	s3,a3
    8001a588:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs.c:6843
    if (throw_flag) {
    8001a58a:	c819                	beqz	s0,8001a5a0 <JS_SetPrototypeInternal+0x38>
quickjs-nuttx/quickjs.c:6844
        if (JS_VALUE_GET_TAG(obj) == JS_TAG_NULL ||
    8001a58c:	ffe6071b          	addiw	a4,a2,-2
    8001a590:	4685                	li	a3,1
    8001a592:	00e6ec63          	bltu	a3,a4,8001a5aa <JS_SetPrototypeInternal+0x42>
quickjs-nuttx/quickjs.c:6855
            JS_ThrowTypeErrorNotAnObject(ctx);
    8001a596:	8526                	mv	a0,s1
    8001a598:	e92fe0ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:6874
            return -1;
    8001a59c:	547d                	li	s0,-1
    8001a59e:	a88d                	j	8001a610 <JS_SetPrototypeInternal+0xa8>
quickjs-nuttx/quickjs.c:6848
        if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8001a5a0:	0006071b          	sext.w	a4,a2
    8001a5a4:	56fd                	li	a3,-1
    8001a5a6:	fed718e3          	bne	a4,a3,8001a596 <JS_SetPrototypeInternal+0x2e>
quickjs-nuttx/quickjs.c:6852
    if (JS_VALUE_GET_TAG(proto_val) != JS_TAG_OBJECT) {
    8001a5aa:	000a071b          	sext.w	a4,s4
    8001a5ae:	56fd                	li	a3,-1
    8001a5b0:	06d70a63          	beq	a4,a3,8001a624 <JS_SetPrototypeInternal+0xbc>
quickjs-nuttx/quickjs.c:6853
        if (JS_VALUE_GET_TAG(proto_val) != JS_TAG_NULL) {
    8001a5b4:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:6858
        proto = NULL;
    8001a5b6:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:6853
        if (JS_VALUE_GET_TAG(proto_val) != JS_TAG_NULL) {
    8001a5b8:	fcd71fe3          	bne	a4,a3,8001a596 <JS_SetPrototypeInternal+0x2e>
quickjs-nuttx/quickjs.c:6863
    if (throw_flag && JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8001a5bc:	c411                	beqz	s0,8001a5c8 <JS_SetPrototypeInternal+0x60>
quickjs-nuttx/quickjs.c:6863 (discriminator 1)
    8001a5be:	0007871b          	sext.w	a4,a5
    8001a5c2:	56fd                	li	a3,-1
    8001a5c4:	04d71663          	bne	a4,a3,8001a610 <JS_SetPrototypeInternal+0xa8>
    8001a5c8:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:6866
    if (unlikely(p->class_id == JS_CLASS_PROXY))
    8001a5ca:	03000713          	li	a4,48
    8001a5ce:	00695683          	lhu	a3,6(s2)
    8001a5d2:	0ee69763          	bne	a3,a4,8001a6c0 <JS_SetPrototypeInternal+0x158>
js_proxy_setPrototypeOf():
quickjs-nuttx/quickjs.c:45805
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_setPrototypeOf);
    8001a5d6:	864a                	mv	a2,s2
    8001a5d8:	06100713          	li	a4,97
    8001a5dc:	86be                	mv	a3,a5
    8001a5de:	180c                	addi	a1,sp,48
    8001a5e0:	8526                	mv	a0,s1
    8001a5e2:	f04a                	sd	s2,32(sp)
    8001a5e4:	f43e                	sd	a5,40(sp)
    8001a5e6:	b4cff0ef          	jal	ra,80019932 <get_proxy_method>
    8001a5ea:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:45806
    if (!s)
    8001a5ec:	d945                	beqz	a0,8001a59c <JS_SetPrototypeInternal+0x34>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8001a5ee:	7662                	ld	a2,56(sp)
js_proxy_setPrototypeOf():
quickjs-nuttx/quickjs.c:45808
    if (JS_IsUndefined(method))
    8001a5f0:	478d                	li	a5,3
    8001a5f2:	0006071b          	sext.w	a4,a2
    8001a5f6:	02f71963          	bne	a4,a5,8001a628 <JS_SetPrototypeInternal+0xc0>
quickjs-nuttx/quickjs.c:45809
        return JS_SetPrototypeInternal(ctx, s->target, proto_val, throw_flag);
    8001a5fa:	f0ce                	sd	s3,96(sp)
    8001a5fc:	f4d2                	sd	s4,104(sp)
    8001a5fe:	610c                	ld	a1,0(a0)
    8001a600:	6510                	ld	a2,8(a0)
    8001a602:	87a2                	mv	a5,s0
    8001a604:	86ce                	mv	a3,s3
    8001a606:	8752                	mv	a4,s4
    8001a608:	8526                	mv	a0,s1
    8001a60a:	f5fff0ef          	jal	ra,8001a568 <JS_SetPrototypeInternal>
    8001a60e:	842a                	mv	s0,a0
JS_SetPrototypeInternal():
quickjs-nuttx/quickjs.c:6904
}
    8001a610:	70ea                	ld	ra,184(sp)
    8001a612:	8522                	mv	a0,s0
    8001a614:	744a                	ld	s0,176(sp)
    8001a616:	74aa                	ld	s1,168(sp)
    8001a618:	790a                	ld	s2,160(sp)
    8001a61a:	69ea                	ld	s3,152(sp)
    8001a61c:	6a4a                	ld	s4,144(sp)
    8001a61e:	6aaa                	ld	s5,136(sp)
    8001a620:	6129                	addi	sp,sp,192
    8001a622:	8082                	ret
quickjs-nuttx/quickjs.c:6860
        proto = JS_VALUE_GET_OBJ(proto_val);
    8001a624:	8ace                	mv	s5,s3
    8001a626:	bf59                	j	8001a5bc <JS_SetPrototypeInternal+0x54>
js_proxy_setPrototypeOf():
quickjs-nuttx/quickjs.c:45810
    args[0] = s->target;
    8001a628:	611c                	ld	a5,0(a0)
quickjs-nuttx/quickjs.c:45812
    ret = JS_CallFree(ctx, method, s->handler, 2, args);
    8001a62a:	75c2                	ld	a1,48(sp)
    8001a62c:	06010813          	addi	a6,sp,96
quickjs-nuttx/quickjs.c:45810
    args[0] = s->target;
    8001a630:	f0be                	sd	a5,96(sp)
    8001a632:	651c                	ld	a5,8(a0)
quickjs-nuttx/quickjs.c:45811
    args[1] = proto_val;
    8001a634:	fcd2                	sd	s4,120(sp)
    8001a636:	f8ce                	sd	s3,112(sp)
quickjs-nuttx/quickjs.c:45810
    args[0] = s->target;
    8001a638:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:45812
    ret = JS_CallFree(ctx, method, s->handler, 2, args);
    8001a63a:	6914                	ld	a3,16(a0)
    8001a63c:	6d18                	ld	a4,24(a0)
    8001a63e:	4789                	li	a5,2
    8001a640:	8526                	mv	a0,s1
    8001a642:	c32fc0ef          	jal	ra,80016a74 <JS_CallFree>
    8001a646:	e0aa                	sd	a0,64(sp)
    8001a648:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:45813
    if (JS_IsException(ret))
    8001a64a:	0005879b          	sext.w	a5,a1
    8001a64e:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:45812
    ret = JS_CallFree(ctx, method, s->handler, 2, args);
    8001a650:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45813
    if (JS_IsException(ret))
    8001a652:	f54785e3          	beq	a5,s4,8001a59c <JS_SetPrototypeInternal+0x34>
quickjs-nuttx/quickjs.c:45815
    res = JS_ToBoolFree(ctx, ret);
    8001a656:	85aa                	mv	a1,a0
    8001a658:	8526                	mv	a0,s1
    8001a65a:	cbaf10ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:45816
    if (!res) {
    8001a65e:	e911                	bnez	a0,8001a672 <JS_SetPrototypeInternal+0x10a>
quickjs-nuttx/quickjs.c:45818
            JS_ThrowTypeError(ctx, "proxy: bad prototype");
    8001a660:	00050597          	auipc	a1,0x50
    8001a664:	00858593          	addi	a1,a1,8 # 8006a668 <qjsc_repl+0x50b8>
quickjs-nuttx/quickjs.c:45817
        if (throw_flag) {
    8001a668:	d445                	beqz	s0,8001a610 <JS_SetPrototypeInternal+0xa8>
JS_SetPrototypeInternal():
quickjs-nuttx/quickjs.c:6873
            JS_ThrowTypeError(ctx, "object is not extensible");
    8001a66a:	8526                	mv	a0,s1
    8001a66c:	800fe0ef          	jal	ra,8001866c <JS_ThrowTypeError>
    8001a670:	b735                	j	8001a59c <JS_SetPrototypeInternal+0x34>
js_proxy_setPrototypeOf():
quickjs-nuttx/quickjs.c:45824
    res2 = JS_IsExtensible(ctx, s->target);
    8001a672:	00093583          	ld	a1,0(s2)
    8001a676:	00893603          	ld	a2,8(s2)
    8001a67a:	8526                	mv	a0,s1
    8001a67c:	b52ff0ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:45825
    if (res2 < 0)
    8001a680:	f0054ee3          	bltz	a0,8001a59c <JS_SetPrototypeInternal+0x34>
quickjs-nuttx/quickjs.c:45838
    return TRUE;
    8001a684:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:45827
    if (!res2) {
    8001a686:	f549                	bnez	a0,8001a610 <JS_SetPrototypeInternal+0xa8>
quickjs-nuttx/quickjs.c:45828
        proto1 = JS_GetPrototype(ctx, s->target);
    8001a688:	00893603          	ld	a2,8(s2)
    8001a68c:	00093583          	ld	a1,0(s2)
    8001a690:	8526                	mv	a0,s1
    8001a692:	c40ff0ef          	jal	ra,80019ad2 <JS_GetPrototype>
quickjs-nuttx/quickjs.c:45829
        if (JS_IsException(proto1))
    8001a696:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45828
        proto1 = JS_GetPrototype(ctx, s->target);
    8001a69a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45829
        if (JS_IsException(proto1))
    8001a69c:	f14780e3          	beq	a5,s4,8001a59c <JS_SetPrototypeInternal+0x34>
quickjs-nuttx/quickjs.c:45831
        if (JS_VALUE_GET_OBJ(proto_val) != JS_VALUE_GET_OBJ(proto1)) {
    8001a6a0:	00a98b63          	beq	s3,a0,8001a6b6 <JS_SetPrototypeInternal+0x14e>
quickjs-nuttx/quickjs.c:45832
            JS_FreeValue(ctx, proto1);
    8001a6a4:	85aa                	mv	a1,a0
    8001a6a6:	8526                	mv	a0,s1
    8001a6a8:	8f6f10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45833
            JS_ThrowTypeError(ctx, "proxy: inconsistent prototype");
    8001a6ac:	00050597          	auipc	a1,0x50
    8001a6b0:	ecc58593          	addi	a1,a1,-308 # 8006a578 <qjsc_repl+0x4fc8>
    8001a6b4:	bf5d                	j	8001a66a <JS_SetPrototypeInternal+0x102>
quickjs-nuttx/quickjs.c:45836
        JS_FreeValue(ctx, proto1);
    8001a6b6:	85ce                	mv	a1,s3
    8001a6b8:	8526                	mv	a0,s1
    8001a6ba:	8e4f10ef          	jal	ra,8000b79e <JS_FreeValue>
    8001a6be:	bf89                	j	8001a610 <JS_SetPrototypeInternal+0xa8>
JS_SetPrototypeInternal():
quickjs-nuttx/quickjs.c:6869
    if (sh->proto == proto)
    8001a6c0:	01893783          	ld	a5,24(s2)
    8001a6c4:	7f9c                	ld	a5,56(a5)
    8001a6c6:	07578363          	beq	a5,s5,8001a72c <JS_SetPrototypeInternal+0x1c4>
quickjs-nuttx/quickjs.c:6871
    if (!p->extensible) {
    8001a6ca:	00594783          	lbu	a5,5(s2)
    8001a6ce:	8b85                	andi	a5,a5,1
    8001a6d0:	e799                	bnez	a5,8001a6de <JS_SetPrototypeInternal+0x176>
quickjs-nuttx/quickjs.c:6872
        if (throw_flag) {
    8001a6d2:	dc1d                	beqz	s0,8001a610 <JS_SetPrototypeInternal+0xa8>
quickjs-nuttx/quickjs.c:6873
            JS_ThrowTypeError(ctx, "object is not extensible");
    8001a6d4:	00050597          	auipc	a1,0x50
    8001a6d8:	9c458593          	addi	a1,a1,-1596 # 8006a098 <qjsc_repl+0x4ae8>
    8001a6dc:	b779                	j	8001a66a <JS_SetPrototypeInternal+0x102>
quickjs-nuttx/quickjs.c:6879
    if (proto) {
    8001a6de:	020a8263          	beqz	s5,8001a702 <JS_SetPrototypeInternal+0x19a>
    8001a6e2:	87d6                	mv	a5,s5
quickjs-nuttx/quickjs.c:6883
            if (p1 == p) {
    8001a6e4:	00f91863          	bne	s2,a5,8001a6f4 <JS_SetPrototypeInternal+0x18c>
quickjs-nuttx/quickjs.c:6885
                    JS_ThrowTypeError(ctx, "circular prototype chain");
    8001a6e8:	00050597          	auipc	a1,0x50
    8001a6ec:	f9858593          	addi	a1,a1,-104 # 8006a680 <qjsc_repl+0x50d0>
quickjs-nuttx/quickjs.c:6884
                if (throw_flag) {
    8001a6f0:	d005                	beqz	s0,8001a610 <JS_SetPrototypeInternal+0xa8>
    8001a6f2:	bfa5                	j	8001a66a <JS_SetPrototypeInternal+0x102>
quickjs-nuttx/quickjs.c:6892
            p1 = p1->shape->proto;
    8001a6f4:	6f9c                	ld	a5,24(a5)
    8001a6f6:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:6893
        } while (p1 != NULL);
    8001a6f8:	f7f5                	bnez	a5,8001a6e4 <JS_SetPrototypeInternal+0x17c>
quickjs-nuttx/quickjs.c:6894
        JS_DupValue(ctx, proto_val);
    8001a6fa:	6502                	ld	a0,0(sp)
    8001a6fc:	65a2                	ld	a1,8(sp)
    8001a6fe:	d1def0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:6897
    if (js_shape_prepare_update(ctx, p, NULL))
    8001a702:	4601                	li	a2,0
    8001a704:	85ca                	mv	a1,s2
    8001a706:	8526                	mv	a0,s1
    8001a708:	d4bff0ef          	jal	ra,8001a452 <js_shape_prepare_update>
quickjs-nuttx/quickjs.c:6898
        return -1;
    8001a70c:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:6897
    if (js_shape_prepare_update(ctx, p, NULL))
    8001a70e:	f00511e3          	bnez	a0,8001a610 <JS_SetPrototypeInternal+0xa8>
quickjs-nuttx/quickjs.c:6899
    sh = p->shape;
    8001a712:	01893403          	ld	s0,24(s2)
quickjs-nuttx/quickjs.c:6900
    if (sh->proto)
    8001a716:	7c0c                	ld	a1,56(s0)
    8001a718:	c981                	beqz	a1,8001a728 <JS_SetPrototypeInternal+0x1c0>
quickjs-nuttx/quickjs.c:6901
        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, sh->proto));
    8001a71a:	57fd                	li	a5,-1
    8001a71c:	567d                	li	a2,-1
    8001a71e:	8526                	mv	a0,s1
    8001a720:	f0ae                	sd	a1,96(sp)
    8001a722:	f4be                	sd	a5,104(sp)
    8001a724:	87af10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:6902
    sh->proto = proto;
    8001a728:	03543c23          	sd	s5,56(s0)
quickjs-nuttx/quickjs.c:6864
        return TRUE;
    8001a72c:	4405                	li	s0,1
    8001a72e:	b5cd                	j	8001a610 <JS_SetPrototypeInternal+0xa8>

000000008001a730 <JS_SetPrototype>:
JS_SetPrototype():
quickjs-nuttx/quickjs.c:6908
{
    8001a730:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:6909
    return JS_SetPrototypeInternal(ctx, obj, proto_val, TRUE);
    8001a732:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:6910
}
    8001a734:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:6909
    return JS_SetPrototypeInternal(ctx, obj, proto_val, TRUE);
    8001a736:	e33ff06f          	j	8001a568 <JS_SetPrototypeInternal>

000000008001a73a <js_reflect_setPrototypeOf>:
js_reflect_setPrototypeOf():
quickjs-nuttx/quickjs.c:45662
{
    8001a73a:	7139                	addi	sp,sp,-64
    8001a73c:	fc06                	sd	ra,56(sp)
    8001a73e:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:45664
    ret = JS_SetPrototypeInternal(ctx, argv[0], argv[1], FALSE);
    8001a740:	6b14                	ld	a3,16(a4)
    8001a742:	620c                	ld	a1,0(a2)
    8001a744:	6f18                	ld	a4,24(a4)
    8001a746:	6610                	ld	a2,8(a2)
    8001a748:	4781                	li	a5,0
    8001a74a:	e1fff0ef          	jal	ra,8001a568 <JS_SetPrototypeInternal>
quickjs-nuttx/quickjs.c:45665
    if (ret < 0)
    8001a74e:	00055a63          	bgez	a0,8001a762 <js_reflect_setPrototypeOf+0x28>
quickjs-nuttx/quickjs.c:45666
        return JS_EXCEPTION;
    8001a752:	e802                	sd	zero,16(sp)
    8001a754:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45669
}
    8001a756:	70e2                	ld	ra,56(sp)
    8001a758:	ec3e                	sd	a5,24(sp)
    8001a75a:	6542                	ld	a0,16(sp)
    8001a75c:	65e2                	ld	a1,24(sp)
    8001a75e:	6121                	addi	sp,sp,64
    8001a760:	8082                	ret
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8001a762:	00a03533          	snez	a0,a0
    8001a766:	d202                	sw	zero,36(sp)
    8001a768:	d02a                	sw	a0,32(sp)
    8001a76a:	7782                	ld	a5,32(sp)
    8001a76c:	e83e                	sd	a5,16(sp)
    8001a76e:	4785                	li	a5,1
    8001a770:	b7dd                	j	8001a756 <js_reflect_setPrototypeOf+0x1c>

000000008001a772 <js_object_set___proto__>:
js_object_set___proto__():
quickjs-nuttx/quickjs.c:38022
{
    8001a772:	7139                	addi	sp,sp,-64
    8001a774:	ec32                	sd	a2,24(sp)
    8001a776:	fc06                	sd	ra,56(sp)
    8001a778:	e82e                	sd	a1,16(sp)
    8001a77a:	e036                	sd	a3,0(sp)
    8001a77c:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:38023
    if (JS_IsUndefined(this_val) || JS_IsNull(this_val))
    8001a77e:	3679                	addiw	a2,a2,-2
    8001a780:	4785                	li	a5,1
    8001a782:	00c7e663          	bltu	a5,a2,8001a78e <js_object_set___proto__+0x1c>
quickjs-nuttx/quickjs.c:38031
}
    8001a786:	70e2                	ld	ra,56(sp)
    8001a788:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:38024
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8001a78a:	ca0fe06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    8001a78e:	2701                	sext.w	a4,a4
js_object_set___proto__():
quickjs-nuttx/quickjs.c:38025
    if (!JS_IsObject(proto) && !JS_IsNull(proto))
    8001a790:	57fd                	li	a5,-1
    8001a792:	882a                	mv	a6,a0
    8001a794:	00f70d63          	beq	a4,a5,8001a7ae <js_object_set___proto__+0x3c>
quickjs-nuttx/quickjs.c:38025 (discriminator 1)
    8001a798:	4789                	li	a5,2
    8001a79a:	00f70a63          	beq	a4,a5,8001a7ae <js_object_set___proto__+0x3c>
quickjs-nuttx/quickjs.c:38026
        return JS_UNDEFINED;
    8001a79e:	f002                	sd	zero,32(sp)
    8001a7a0:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:38031
}
    8001a7a2:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:38028
        return JS_EXCEPTION;
    8001a7a4:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:38031
}
    8001a7a6:	7502                	ld	a0,32(sp)
    8001a7a8:	75a2                	ld	a1,40(sp)
    8001a7aa:	6121                	addi	sp,sp,64
    8001a7ac:	8082                	ret
quickjs-nuttx/quickjs.c:38027
    if (JS_SetPrototypeInternal(ctx, this_val, proto, TRUE) < 0)
    8001a7ae:	6682                	ld	a3,0(sp)
    8001a7b0:	6722                	ld	a4,8(sp)
    8001a7b2:	65c2                	ld	a1,16(sp)
    8001a7b4:	6662                	ld	a2,24(sp)
    8001a7b6:	4785                	li	a5,1
    8001a7b8:	8542                	mv	a0,a6
    8001a7ba:	dafff0ef          	jal	ra,8001a568 <JS_SetPrototypeInternal>
    8001a7be:	fe0550e3          	bgez	a0,8001a79e <js_object_set___proto__+0x2c>
quickjs-nuttx/quickjs.c:38028
        return JS_EXCEPTION;
    8001a7c2:	f002                	sd	zero,32(sp)
    8001a7c4:	4799                	li	a5,6
    8001a7c6:	bff1                	j	8001a7a2 <js_object_set___proto__+0x30>

000000008001a7c8 <js_object_setPrototypeOf>:
js_object_setPrototypeOf():
quickjs-nuttx/quickjs.c:37200
{
    8001a7c8:	7139                	addi	sp,sp,-64
    8001a7ca:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:37202
    obj = argv[0];
    8001a7cc:	630c                	ld	a1,0(a4)
    8001a7ce:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37203
    if (JS_SetPrototypeInternal(ctx, obj, argv[1], TRUE) < 0)
    8001a7d0:	6b14                	ld	a3,16(a4)
    8001a7d2:	6f18                	ld	a4,24(a4)
    8001a7d4:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:37202
    obj = argv[0];
    8001a7d6:	e82e                	sd	a1,16(sp)
    8001a7d8:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:37203
    if (JS_SetPrototypeInternal(ctx, obj, argv[1], TRUE) < 0)
    8001a7da:	d8fff0ef          	jal	ra,8001a568 <JS_SetPrototypeInternal>
    8001a7de:	00054863          	bltz	a0,8001a7ee <js_object_setPrototypeOf+0x26>
quickjs-nuttx/quickjs.c:37205
    return JS_DupValue(ctx, obj);
    8001a7e2:	6542                	ld	a0,16(sp)
    8001a7e4:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:37206
}
    8001a7e6:	70e2                	ld	ra,56(sp)
    8001a7e8:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:37205
    return JS_DupValue(ctx, obj);
    8001a7ea:	c31ef06f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:37206 (discriminator 1)
}
    8001a7ee:	70e2                	ld	ra,56(sp)
    8001a7f0:	4501                	li	a0,0
    8001a7f2:	4599                	li	a1,6
    8001a7f4:	6121                	addi	sp,sp,64
    8001a7f6:	8082                	ret

000000008001a7f8 <js_update_property_flags>:
js_update_property_flags():
quickjs-nuttx/quickjs.c:9016
    if (flags != (*pprs)->flags) {
    8001a7f8:	621c                	ld	a5,0(a2)
    8001a7fa:	439c                	lw	a5,0(a5)
    8001a7fc:	01a7d79b          	srliw	a5,a5,0x1a
    8001a800:	02d78863          	beq	a5,a3,8001a830 <js_update_property_flags+0x38>
quickjs-nuttx/quickjs.c:9015
{
    8001a804:	1101                	addi	sp,sp,-32
    8001a806:	e822                	sd	s0,16(sp)
    8001a808:	e426                	sd	s1,8(sp)
    8001a80a:	ec06                	sd	ra,24(sp)
    8001a80c:	84b2                	mv	s1,a2
    8001a80e:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:9017
        if (js_shape_prepare_update(ctx, p, pprs))
    8001a810:	c43ff0ef          	jal	ra,8001a452 <js_shape_prepare_update>
    8001a814:	e105                	bnez	a0,8001a834 <js_update_property_flags+0x3c>
quickjs-nuttx/quickjs.c:9019
        (*pprs)->flags = flags;
    8001a816:	609c                	ld	a5,0(s1)
    8001a818:	01a4141b          	slliw	s0,s0,0x1a
    8001a81c:	4394                	lw	a3,0(a5)
    8001a81e:	169a                	slli	a3,a3,0x26
    8001a820:	9299                	srli	a3,a3,0x26
    8001a822:	8ec1                	or	a3,a3,s0
    8001a824:	c394                	sw	a3,0(a5)
quickjs-nuttx/quickjs.c:9022
}
    8001a826:	60e2                	ld	ra,24(sp)
    8001a828:	6442                	ld	s0,16(sp)
    8001a82a:	64a2                	ld	s1,8(sp)
    8001a82c:	6105                	addi	sp,sp,32
    8001a82e:	8082                	ret
quickjs-nuttx/quickjs.c:9021
    return 0;
    8001a830:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:9022
}
    8001a832:	8082                	ret
quickjs-nuttx/quickjs.c:9018
            return -1;
    8001a834:	557d                	li	a0,-1
    8001a836:	bfc5                	j	8001a826 <js_update_property_flags+0x2e>

000000008001a838 <seal_template_obj>:
seal_template_obj():
quickjs-nuttx/quickjs.c:22074
{
    8001a838:	7179                	addi	sp,sp,-48
    8001a83a:	f022                	sd	s0,32(sp)
    8001a83c:	f406                	sd	ra,40(sp)
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    8001a83e:	6d98                	ld	a4,24(a1)
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    8001a840:	56f1                	li	a3,-4
seal_template_obj():
quickjs-nuttx/quickjs.c:22074
{
    8001a842:	e432                	sd	a2,8(sp)
find_own_property1():
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001a844:	531c                	lw	a5,32(a4)
seal_template_obj():
quickjs-nuttx/quickjs.c:22074
{
    8001a846:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:22078
    p = JS_VALUE_GET_OBJ(obj);
    8001a848:	842e                	mv	s0,a1
find_own_property1():
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001a84a:	0307f793          	andi	a5,a5,48
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    8001a84e:	0785                	addi	a5,a5,1
    8001a850:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    8001a854:	040006b7          	lui	a3,0x4000
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    8001a858:	03000613          	li	a2,48
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    8001a85c:	16fd                	addi	a3,a3,-1
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    8001a85e:	97ba                	add	a5,a5,a4
    8001a860:	0007e783          	lwu	a5,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001a864:	04070713          	addi	a4,a4,64 # 3c000040 <asinh-0x43ffffc0>
find_own_property1():
quickjs-nuttx/quickjs.c:5203
    while (h) {
    8001a868:	ef89                	bnez	a5,8001a882 <seal_template_obj+0x4a>
seal_template_obj():
quickjs-nuttx/quickjs.c:22079
    prs = find_own_property1(p, JS_ATOM_length);
    8001a86a:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:22080
    if (prs) {
    8001a86c:	e795                	bnez	a5,8001a898 <seal_template_obj+0x60>
quickjs-nuttx/quickjs.c:22085
    p->extensible = FALSE;
    8001a86e:	00544783          	lbu	a5,5(s0)
quickjs-nuttx/quickjs.c:22086
    return 0;
    8001a872:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:22085
    p->extensible = FALSE;
    8001a874:	9bf9                	andi	a5,a5,-2
    8001a876:	00f402a3          	sb	a5,5(s0)
quickjs-nuttx/quickjs.c:22087
}
    8001a87a:	70a2                	ld	ra,40(sp)
    8001a87c:	7402                	ld	s0,32(sp)
    8001a87e:	6145                	addi	sp,sp,48
    8001a880:	8082                	ret
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    8001a882:	078e                	slli	a5,a5,0x3
    8001a884:	17e1                	addi	a5,a5,-8
    8001a886:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    8001a888:	43cc                	lw	a1,4(a5)
    8001a88a:	fec580e3          	beq	a1,a2,8001a86a <seal_template_obj+0x32>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    8001a88e:	439c                	lw	a5,0(a5)
    8001a890:	8ff5                	and	a5,a5,a3
    8001a892:	1782                	slli	a5,a5,0x20
    8001a894:	9381                	srli	a5,a5,0x20
    8001a896:	bfc9                	j	8001a868 <seal_template_obj+0x30>
seal_template_obj():
quickjs-nuttx/quickjs.c:22082
                                     prs->flags & ~(JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)))
    8001a898:	4394                	lw	a3,0(a5)
quickjs-nuttx/quickjs.c:22081
        if (js_update_property_flags(ctx, p, &prs,
    8001a89a:	0830                	addi	a2,sp,24
    8001a89c:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:22082
                                     prs->flags & ~(JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)))
    8001a89e:	01a6d69b          	srliw	a3,a3,0x1a
quickjs-nuttx/quickjs.c:22081
        if (js_update_property_flags(ctx, p, &prs,
    8001a8a2:	03c6f693          	andi	a3,a3,60
    8001a8a6:	f53ff0ef          	jal	ra,8001a7f8 <js_update_property_flags>
    8001a8aa:	d171                	beqz	a0,8001a86e <seal_template_obj+0x36>
quickjs-nuttx/quickjs.c:22083
            return -1;
    8001a8ac:	557d                	li	a0,-1
    8001a8ae:	b7f1                	j	8001a87a <seal_template_obj+0x42>

000000008001a8b0 <JS_EnqueueJob>:
JS_EnqueueJob():
quickjs-nuttx/quickjs.c:1815
{
    8001a8b0:	7139                	addi	sp,sp,-64
    8001a8b2:	ec4e                	sd	s3,24(sp)
    8001a8b4:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:1820
    e = js_malloc(ctx, sizeof(*e) + argc * sizeof(JSValue));
    8001a8b6:	00461593          	slli	a1,a2,0x4
quickjs-nuttx/quickjs.c:1815
{
    8001a8ba:	f426                	sd	s1,40(sp)
    8001a8bc:	f04a                	sd	s2,32(sp)
    8001a8be:	e852                	sd	s4,16(sp)
    8001a8c0:	fc06                	sd	ra,56(sp)
    8001a8c2:	f822                	sd	s0,48(sp)
    8001a8c4:	e456                	sd	s5,8(sp)
quickjs-nuttx/quickjs.c:1820
    e = js_malloc(ctx, sizeof(*e) + argc * sizeof(JSValue));
    8001a8c6:	02858593          	addi	a1,a1,40
quickjs-nuttx/quickjs.c:1816
    JSRuntime *rt = ctx->rt;
    8001a8ca:	01853a83          	ld	s5,24(a0)
quickjs-nuttx/quickjs.c:1815
{
    8001a8ce:	84aa                	mv	s1,a0
    8001a8d0:	8932                	mv	s2,a2
    8001a8d2:	8a36                	mv	s4,a3
quickjs-nuttx/quickjs.c:1820
    e = js_malloc(ctx, sizeof(*e) + argc * sizeof(JSValue));
    8001a8d4:	831ff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:1821
    if (!e)
    8001a8d8:	cd29                	beqz	a0,8001a932 <JS_EnqueueJob+0x82>
quickjs-nuttx/quickjs.c:1824
    e->job_func = job_func;
    8001a8da:	01353c23          	sd	s3,24(a0)
    8001a8de:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1823
    e->ctx = ctx;
    8001a8e0:	e904                	sd	s1,16(a0)
quickjs-nuttx/quickjs.c:1825
    e->argc = argc;
    8001a8e2:	03252023          	sw	s2,32(a0)
quickjs-nuttx/quickjs.c:1826
    for(i = 0; i < argc; i++) {
    8001a8e6:	4981                	li	s3,0
    8001a8e8:	0009849b          	sext.w	s1,s3
quickjs-nuttx/quickjs.c:1826 (discriminator 1)
    8001a8ec:	0324c563          	blt	s1,s2,8001a916 <JS_EnqueueJob+0x66>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001a8f0:	120ab783          	ld	a5,288(s5)
JS_EnqueueJob():
quickjs-nuttx/quickjs.c:1830
    return 0;
    8001a8f4:	4501                	li	a0,0
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001a8f6:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001a8f8:	e01c                	sd	a5,0(s0)
JS_EnqueueJob():
quickjs-nuttx/quickjs.c:1829
    list_add_tail(&e->link, &rt->job_list);
    8001a8fa:	120a8793          	addi	a5,s5,288
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001a8fe:	e41c                	sd	a5,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001a900:	128ab023          	sd	s0,288(s5)
JS_EnqueueJob():
quickjs-nuttx/quickjs.c:1831
}
    8001a904:	70e2                	ld	ra,56(sp)
    8001a906:	7442                	ld	s0,48(sp)
    8001a908:	74a2                	ld	s1,40(sp)
    8001a90a:	7902                	ld	s2,32(sp)
    8001a90c:	69e2                	ld	s3,24(sp)
    8001a90e:	6a42                	ld	s4,16(sp)
    8001a910:	6aa2                	ld	s5,8(sp)
    8001a912:	6121                	addi	sp,sp,64
    8001a914:	8082                	ret
quickjs-nuttx/quickjs.c:1827 (discriminator 3)
        e->argv[i] = JS_DupValue(ctx, argv[i]);
    8001a916:	00499793          	slli	a5,s3,0x4
    8001a91a:	97d2                	add	a5,a5,s4
    8001a91c:	6388                	ld	a0,0(a5)
    8001a91e:	678c                	ld	a1,8(a5)
    8001a920:	0489                	addi	s1,s1,2
    8001a922:	0492                	slli	s1,s1,0x4
    8001a924:	94a2                	add	s1,s1,s0
    8001a926:	af5ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001a92a:	e488                	sd	a0,8(s1)
    8001a92c:	e88c                	sd	a1,16(s1)
quickjs-nuttx/quickjs.c:1826 (discriminator 3)
    for(i = 0; i < argc; i++) {
    8001a92e:	0985                	addi	s3,s3,1
    8001a930:	bf65                	j	8001a8e8 <JS_EnqueueJob+0x38>
quickjs-nuttx/quickjs.c:1822
        return -1;
    8001a932:	557d                	li	a0,-1
    8001a934:	bfc1                	j	8001a904 <JS_EnqueueJob+0x54>

000000008001a936 <fulfill_or_reject_promise>:
fulfill_or_reject_promise():
quickjs-nuttx/quickjs.c:47785
{
    8001a936:	7111                	addi	sp,sp,-256
    8001a938:	8832                	mv	a6,a2
    8001a93a:	f1ca                	sd	s2,224(sp)
    8001a93c:	f02e                	sd	a1,32(sp)
    8001a93e:	892a                	mv	s2,a0
    8001a940:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:47786
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8001a942:	852e                	mv	a0,a1
    8001a944:	03100613          	li	a2,49
    8001a948:	85c2                	mv	a1,a6
quickjs-nuttx/quickjs.c:47785
{
    8001a94a:	edce                	sd	s3,216(sp)
    8001a94c:	fd86                	sd	ra,248(sp)
    8001a94e:	f9a2                	sd	s0,240(sp)
    8001a950:	f5a6                	sd	s1,232(sp)
    8001a952:	e9d2                	sd	s4,208(sp)
    8001a954:	e5d6                	sd	s5,200(sp)
    8001a956:	e1da                	sd	s6,192(sp)
    8001a958:	fd5e                	sd	s7,184(sp)
    8001a95a:	f962                	sd	s8,176(sp)
    8001a95c:	e836                	sd	a3,16(sp)
    8001a95e:	ec3a                	sd	a4,24(sp)
    8001a960:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:47786
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8001a962:	d33f30ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:47791
    if (!s || s->promise_state != JS_PROMISE_PENDING)
    8001a966:	c559                	beqz	a0,8001a9f4 <fulfill_or_reject_promise+0xbe>
quickjs-nuttx/quickjs.c:47791 (discriminator 1)
    8001a968:	411c                	lw	a5,0(a0)
    8001a96a:	842a                	mv	s0,a0
    8001a96c:	e7c1                	bnez	a5,8001a9f4 <fulfill_or_reject_promise+0xbe>
quickjs-nuttx/quickjs.c:47793
    set_value(ctx, &s->promise_result, JS_DupValue(ctx, value));
    8001a96e:	6542                	ld	a0,16(sp)
    8001a970:	65e2                	ld	a1,24(sp)
    8001a972:	aa9ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001a976:	862a                	mv	a2,a0
    8001a978:	86ae                	mv	a3,a1
    8001a97a:	f82a                	sd	a0,48(sp)
    8001a97c:	fc2e                	sd	a1,56(sp)
    8001a97e:	854a                	mv	a0,s2
    8001a980:	03040593          	addi	a1,s0,48
    8001a984:	abaf10ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:47794
    s->promise_state = JS_PROMISE_FULFILLED + is_reject;
    8001a988:	0019871b          	addiw	a4,s3,1
    8001a98c:	c018                	sw	a4,0(s0)
quickjs-nuttx/quickjs.c:47798
    if (s->promise_state == JS_PROMISE_REJECTED && !s->is_handled) {
    8001a98e:	4789                	li	a5,2
    8001a990:	02f71363          	bne	a4,a5,8001a9b6 <fulfill_or_reject_promise+0x80>
quickjs-nuttx/quickjs.c:47798 (discriminator 1)
    8001a994:	541c                	lw	a5,40(s0)
    8001a996:	e385                	bnez	a5,8001a9b6 <fulfill_or_reject_promise+0x80>
quickjs-nuttx/quickjs.c:47799
        JSRuntime *rt = ctx->rt;
    8001a998:	01893783          	ld	a5,24(s2)
quickjs-nuttx/quickjs.c:47800
        if (rt->host_promise_rejection_tracker) {
    8001a99c:	1107b883          	ld	a7,272(a5)
    8001a9a0:	00088b63          	beqz	a7,8001a9b6 <fulfill_or_reject_promise+0x80>
quickjs-nuttx/quickjs.c:47801
            rt->host_promise_rejection_tracker(ctx, promise, value, FALSE,
    8001a9a4:	1187b803          	ld	a6,280(a5)
    8001a9a8:	66c2                	ld	a3,16(sp)
    8001a9aa:	6762                	ld	a4,24(sp)
    8001a9ac:	7582                	ld	a1,32(sp)
    8001a9ae:	7622                	ld	a2,40(sp)
    8001a9b0:	4781                	li	a5,0
    8001a9b2:	854a                	mv	a0,s2
    8001a9b4:	9882                	jalr	a7
quickjs-nuttx/quickjs.c:47806
    list_for_each_safe(el, el1, &s->promise_reactions[is_reject]) {
    8001a9b6:	00499793          	slli	a5,s3,0x4
    8001a9ba:	00f40733          	add	a4,s0,a5
    8001a9be:	6b04                	ld	s1,16(a4)
    8001a9c0:	07a1                	addi	a5,a5,8
    8001a9c2:	00f40a33          	add	s4,s0,a5
    8001a9c6:	0084ba83          	ld	s5,8(s1)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8001a9ca:	01303bb3          	snez	s7,s3
    8001a9ce:	4b05                	li	s6,1
fulfill_or_reject_promise():
quickjs-nuttx/quickjs.c:47813
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001a9d0:	00029c17          	auipc	s8,0x29
    8001a9d4:	4c4c0c13          	addi	s8,s8,1220 # 80043e94 <promise_reaction_job>
quickjs-nuttx/quickjs.c:47806 (discriminator 1)
    list_for_each_safe(el, el1, &s->promise_reactions[is_reject]) {
    8001a9d8:	029a1a63          	bne	s4,s1,8001aa0c <fulfill_or_reject_promise+0xd6>
quickjs-nuttx/quickjs.c:47818
    list_for_each_safe(el, el1, &s->promise_reactions[1 - is_reject]) {
    8001a9dc:	4705                	li	a4,1
    8001a9de:	413707bb          	subw	a5,a4,s3
    8001a9e2:	0792                	slli	a5,a5,0x4
    8001a9e4:	00f40733          	add	a4,s0,a5
    8001a9e8:	6b0c                	ld	a1,16(a4)
    8001a9ea:	07a1                	addi	a5,a5,8
    8001a9ec:	943e                	add	s0,s0,a5
    8001a9ee:	6584                	ld	s1,8(a1)
quickjs-nuttx/quickjs.c:47818 (discriminator 1)
    8001a9f0:	06b41863          	bne	s0,a1,8001aa60 <fulfill_or_reject_promise+0x12a>
quickjs-nuttx/quickjs.c:47823
}
    8001a9f4:	70ee                	ld	ra,248(sp)
    8001a9f6:	744e                	ld	s0,240(sp)
    8001a9f8:	74ae                	ld	s1,232(sp)
    8001a9fa:	790e                	ld	s2,224(sp)
    8001a9fc:	69ee                	ld	s3,216(sp)
    8001a9fe:	6a4e                	ld	s4,208(sp)
    8001aa00:	6aae                	ld	s5,200(sp)
    8001aa02:	6b0e                	ld	s6,192(sp)
    8001aa04:	7bea                	ld	s7,184(sp)
    8001aa06:	7c4a                	ld	s8,176(sp)
    8001aa08:	6111                	addi	sp,sp,256
    8001aa0a:	8082                	ret
quickjs-nuttx/quickjs.c:47808 (discriminator 3)
        args[0] = rd->resolving_funcs[0];
    8001aa0c:	689c                	ld	a5,16(s1)
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 3)
    8001aa0e:	ca82                	sw	zero,84(sp)
    8001aa10:	c8de                	sw	s7,80(sp)
fulfill_or_reject_promise():
quickjs-nuttx/quickjs.c:47808 (discriminator 3)
    8001aa12:	f0be                	sd	a5,96(sp)
    8001aa14:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:47813 (discriminator 3)
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001aa16:	1094                	addi	a3,sp,96
    8001aa18:	4615                	li	a2,5
quickjs-nuttx/quickjs.c:47808 (discriminator 3)
        args[0] = rd->resolving_funcs[0];
    8001aa1a:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:47809 (discriminator 3)
        args[1] = rd->resolving_funcs[1];
    8001aa1c:	709c                	ld	a5,32(s1)
quickjs-nuttx/quickjs.c:47813 (discriminator 3)
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001aa1e:	85e2                	mv	a1,s8
    8001aa20:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:47809 (discriminator 3)
        args[1] = rd->resolving_funcs[1];
    8001aa22:	f8be                	sd	a5,112(sp)
    8001aa24:	749c                	ld	a5,40(s1)
    8001aa26:	ecda                	sd	s6,88(sp)
    8001aa28:	e4da                	sd	s6,72(sp)
    8001aa2a:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:47810 (discriminator 3)
        args[2] = rd->handler;
    8001aa2c:	789c                	ld	a5,48(s1)
    8001aa2e:	e13e                	sd	a5,128(sp)
    8001aa30:	7c9c                	ld	a5,56(s1)
quickjs-nuttx/quickjs.c:47811 (discriminator 3)
        args[3] = JS_NewBool(ctx, is_reject);
    8001aa32:	ed5a                	sd	s6,152(sp)
quickjs-nuttx/quickjs.c:47810 (discriminator 3)
        args[2] = rd->handler;
    8001aa34:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs.c:47812 (discriminator 3)
        args[4] = value;
    8001aa36:	67c6                	ld	a5,80(sp)
    8001aa38:	e0be                	sd	a5,64(sp)
quickjs-nuttx/quickjs.c:47811 (discriminator 3)
        args[3] = JS_NewBool(ctx, is_reject);
    8001aa3a:	e93e                	sd	a5,144(sp)
quickjs-nuttx/quickjs.c:47812 (discriminator 3)
        args[4] = value;
    8001aa3c:	67c2                	ld	a5,16(sp)
    8001aa3e:	f13e                	sd	a5,160(sp)
    8001aa40:	67e2                	ld	a5,24(sp)
    8001aa42:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:47813 (discriminator 3)
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001aa44:	e6dff0ef          	jal	ra,8001a8b0 <JS_EnqueueJob>
quickjs-nuttx/quickjs.c:47814 (discriminator 3)
        list_del(&rd->link);
    8001aa48:	8526                	mv	a0,s1
    8001aa4a:	8faed0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:47815 (discriminator 3)
        promise_reaction_data_free(ctx->rt, rd);
    8001aa4e:	01893503          	ld	a0,24(s2)
    8001aa52:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:47806 (discriminator 3)
    list_for_each_safe(el, el1, &s->promise_reactions[is_reject]) {
    8001aa54:	84d6                	mv	s1,s5
quickjs-nuttx/quickjs.c:47815 (discriminator 3)
        promise_reaction_data_free(ctx->rt, rd);
    8001aa56:	947f10ef          	jal	ra,8000c39c <promise_reaction_data_free>
quickjs-nuttx/quickjs.c:47806 (discriminator 3)
    list_for_each_safe(el, el1, &s->promise_reactions[is_reject]) {
    8001aa5a:	008aba83          	ld	s5,8(s5)
    8001aa5e:	bfad                	j	8001a9d8 <fulfill_or_reject_promise+0xa2>
quickjs-nuttx/quickjs.c:47820 (discriminator 3)
        list_del(&rd->link);
    8001aa60:	852e                	mv	a0,a1
    8001aa62:	e42e                	sd	a1,8(sp)
    8001aa64:	8e0ed0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:47821 (discriminator 3)
        promise_reaction_data_free(ctx->rt, rd);
    8001aa68:	65a2                	ld	a1,8(sp)
    8001aa6a:	01893503          	ld	a0,24(s2)
    8001aa6e:	92ff10ef          	jal	ra,8000c39c <promise_reaction_data_free>
quickjs-nuttx/quickjs.c:47818 (discriminator 3)
    list_for_each_safe(el, el1, &s->promise_reactions[1 - is_reject]) {
    8001aa72:	85a6                	mv	a1,s1
    8001aa74:	6484                	ld	s1,8(s1)
    8001aa76:	bfad                	j	8001a9f0 <fulfill_or_reject_promise+0xba>

000000008001aa78 <js_promise_resolve_function_call>:
js_promise_resolve_function_call():
quickjs-nuttx/quickjs.c:47931
{
    8001aa78:	7115                	addi	sp,sp,-224
    8001aa7a:	ed86                	sd	ra,216(sp)
    8001aa7c:	e9a2                	sd	s0,208(sp)
    8001aa7e:	e5a6                	sd	s1,200(sp)
    8001aa80:	e1ca                	sd	s2,192(sp)
    8001aa82:	fd4e                	sd	s3,184(sp)
    8001aa84:	f952                	sd	s4,176(sp)
quickjs-nuttx/quickjs.c:47938
    s = p->u.promise_function_data;
    8001aa86:	7984                	ld	s1,48(a1)
quickjs-nuttx/quickjs.c:47931
{
    8001aa88:	f02e                	sd	a1,32(sp)
    8001aa8a:	f432                	sd	a2,40(sp)
    8001aa8c:	e836                	sd	a3,16(sp)
    8001aa8e:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:47939
    if (!s || s->presolved->already_resolved)
    8001aa90:	cc9d                	beqz	s1,8001aace <js_promise_resolve_function_call+0x56>
quickjs-nuttx/quickjs.c:47939 (discriminator 1)
    8001aa92:	6898                	ld	a4,16(s1)
    8001aa94:	4354                	lw	a3,4(a4)
    8001aa96:	ee85                	bnez	a3,8001aace <js_promise_resolve_function_call+0x56>
quickjs-nuttx/quickjs.c:47941
    s->presolved->already_resolved = TRUE;
    8001aa98:	4685                	li	a3,1
    8001aa9a:	c354                	sw	a3,4(a4)
quickjs-nuttx/quickjs.c:47942
    is_reject = p->class_id - JS_CLASS_PROMISE_RESOLVE_FUNCTION;
    8001aa9c:	0065d983          	lhu	s3,6(a1)
    8001aaa0:	842a                	mv	s0,a0
    8001aaa2:	fce9899b          	addiw	s3,s3,-50
quickjs-nuttx/quickjs.c:47943
    if (argc > 0)
    8001aaa6:	02f05e63          	blez	a5,8001aae2 <js_promise_resolve_function_call+0x6a>
quickjs-nuttx/quickjs.c:47944
        resolution = argv[0];
    8001aaaa:	00883603          	ld	a2,8(a6)
    8001aaae:	00083583          	ld	a1,0(a6)
    8001aab2:	fc32                	sd	a2,56(sp)
    8001aab4:	f82e                	sd	a1,48(sp)
    8001aab6:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:47952
    if (is_reject || !JS_IsObject(resolution)) {
    8001aab8:	02098863          	beqz	s3,8001aae8 <js_promise_resolve_function_call+0x70>
quickjs-nuttx/quickjs.c:47968
        fulfill_or_reject_promise(ctx, s->promise, resolution, is_reject);
    8001aabc:	76c2                	ld	a3,48(sp)
    8001aabe:	608c                	ld	a1,0(s1)
    8001aac0:	6490                	ld	a2,8(s1)
    8001aac2:	87ce                	mv	a5,s3
    8001aac4:	8752                	mv	a4,s4
    8001aac6:	8522                	mv	a0,s0
    8001aac8:	fc52                	sd	s4,56(sp)
    8001aaca:	e6dff0ef          	jal	ra,8001a936 <fulfill_or_reject_promise>
quickjs-nuttx/quickjs.c:47977
}
    8001aace:	60ee                	ld	ra,216(sp)
    8001aad0:	644e                	ld	s0,208(sp)
    8001aad2:	64ae                	ld	s1,200(sp)
    8001aad4:	690e                	ld	s2,192(sp)
    8001aad6:	79ea                	ld	s3,184(sp)
    8001aad8:	7a4a                	ld	s4,176(sp)
    8001aada:	4501                	li	a0,0
    8001aadc:	458d                	li	a1,3
    8001aade:	612d                	addi	sp,sp,224
    8001aae0:	8082                	ret
quickjs-nuttx/quickjs.c:47946
        resolution = JS_UNDEFINED;
    8001aae2:	f802                	sd	zero,48(sp)
    8001aae4:	4a0d                	li	s4,3
    8001aae6:	bfd9                	j	8001aabc <js_promise_resolve_function_call+0x44>
quickjs-nuttx/quickjs.c:47952 (discriminator 1)
    if (is_reject || !JS_IsObject(resolution)) {
    8001aae8:	0006079b          	sext.w	a5,a2
    8001aaec:	577d                	li	a4,-1
    8001aaee:	fce797e3          	bne	a5,a4,8001aabc <js_promise_resolve_function_call+0x44>
quickjs-nuttx/quickjs.c:47954
    } else if (js_same_value(ctx, resolution, s->promise)) {
    8001aaf2:	6094                	ld	a3,0(s1)
    8001aaf4:	6498                	ld	a4,8(s1)
    8001aaf6:	e7df00ef          	jal	ra,8000b972 <js_same_value>
    8001aafa:	cd1d                	beqz	a0,8001ab38 <js_promise_resolve_function_call+0xc0>
quickjs-nuttx/quickjs.c:47955
        JS_ThrowTypeError(ctx, "promise self resolution");
    8001aafc:	00050597          	auipc	a1,0x50
    8001ab00:	ba458593          	addi	a1,a1,-1116 # 8006a6a0 <qjsc_repl+0x50f0>
    8001ab04:	8522                	mv	a0,s0
    8001ab06:	b67fd0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:47962
        error = JS_GetException(ctx);
    8001ab0a:	8522                	mv	a0,s0
    8001ab0c:	983f30ef          	jal	ra,8000e48e <JS_GetException>
    8001ab10:	6490                	ld	a2,8(s1)
    8001ab12:	872e                	mv	a4,a1
    8001ab14:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:47963
        reject_promise(ctx, s->promise, error);
    8001ab16:	608c                	ld	a1,0(s1)
quickjs-nuttx/quickjs.c:47962
        error = JS_GetException(ctx);
    8001ab18:	86aa                	mv	a3,a0
    8001ab1a:	e8aa                	sd	a0,80(sp)
reject_promise():
quickjs-nuttx/quickjs.c:47828
    fulfill_or_reject_promise(ctx, promise, value, TRUE);
    8001ab1c:	4785                	li	a5,1
    8001ab1e:	8522                	mv	a0,s0
    8001ab20:	f8ae                	sd	a1,112(sp)
    8001ab22:	fcb2                	sd	a2,120(sp)
    8001ab24:	e136                	sd	a3,128(sp)
    8001ab26:	e53a                	sd	a4,136(sp)
    8001ab28:	e0fff0ef          	jal	ra,8001a936 <fulfill_or_reject_promise>
js_promise_resolve_function_call():
quickjs-nuttx/quickjs.c:47964
        JS_FreeValue(ctx, error);
    8001ab2c:	65c6                	ld	a1,80(sp)
    8001ab2e:	6666                	ld	a2,88(sp)
quickjs-nuttx/quickjs.c:47974
        JS_FreeValue(ctx, then);
    8001ab30:	8522                	mv	a0,s0
    8001ab32:	c6df00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47940
        return JS_UNDEFINED;
    8001ab36:	bf61                	j	8001aace <js_promise_resolve_function_call+0x56>
quickjs-nuttx/quickjs.c:47958
    then = JS_GetProperty(ctx, resolution, JS_ATOM_then);
    8001ab38:	7742                	ld	a4,48(sp)
    8001ab3a:	77e2                	ld	a5,56(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001ab3c:	4801                	li	a6,0
    8001ab3e:	85ba                	mv	a1,a4
    8001ab40:	863e                	mv	a2,a5
    8001ab42:	08000693          	li	a3,128
    8001ab46:	8522                	mv	a0,s0
    8001ab48:	e13a                	sd	a4,128(sp)
    8001ab4a:	e53e                	sd	a5,136(sp)
    8001ab4c:	f5ffb0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001ab50:	f0aa                	sd	a0,96(sp)
    8001ab52:	f4ae                	sd	a1,104(sp)
    8001ab54:	e0aa                	sd	a0,64(sp)
    8001ab56:	e4ae                	sd	a1,72(sp)
js_promise_resolve_function_call():
quickjs-nuttx/quickjs.c:47959
    if (JS_IsException(then)) {
    8001ab58:	0005871b          	sext.w	a4,a1
    8001ab5c:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001ab5e:	892a                	mv	s2,a0
    8001ab60:	862e                	mv	a2,a1
js_promise_resolve_function_call():
quickjs-nuttx/quickjs.c:47959
    8001ab62:	faf704e3          	beq	a4,a5,8001ab0a <js_promise_resolve_function_call+0x92>
quickjs-nuttx/quickjs.c:47965
    } else if (!JS_IsFunction(ctx, then)) {
    8001ab66:	85aa                	mv	a1,a0
    8001ab68:	8522                	mv	a0,s0
    8001ab6a:	e432                	sd	a2,8(sp)
    8001ab6c:	937f30ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8001ab70:	6622                	ld	a2,8(sp)
    8001ab72:	e511                	bnez	a0,8001ab7e <js_promise_resolve_function_call+0x106>
quickjs-nuttx/quickjs.c:47966
        JS_FreeValue(ctx, then);
    8001ab74:	85ca                	mv	a1,s2
    8001ab76:	8522                	mv	a0,s0
    8001ab78:	c27f00ef          	jal	ra,8000b79e <JS_FreeValue>
    8001ab7c:	b781                	j	8001aabc <js_promise_resolve_function_call+0x44>
quickjs-nuttx/quickjs.c:47970
        args[0] = s->promise;
    8001ab7e:	609c                	ld	a5,0(s1)
quickjs-nuttx/quickjs.c:47973
        JS_EnqueueJob(ctx, js_promise_resolve_thenable_job, 3, args);
    8001ab80:	0002d597          	auipc	a1,0x2d
    8001ab84:	d0058593          	addi	a1,a1,-768 # 80047880 <js_promise_resolve_thenable_job>
    8001ab88:	0114                	addi	a3,sp,128
quickjs-nuttx/quickjs.c:47970
        args[0] = s->promise;
    8001ab8a:	e13e                	sd	a5,128(sp)
    8001ab8c:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:47973
        JS_EnqueueJob(ctx, js_promise_resolve_thenable_job, 3, args);
    8001ab8e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:47972
        args[2] = then;
    8001ab90:	f532                	sd	a2,168(sp)
quickjs-nuttx/quickjs.c:47970
        args[0] = s->promise;
    8001ab92:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs.c:47971
        args[1] = resolution;
    8001ab94:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:47973
        JS_EnqueueJob(ctx, js_promise_resolve_thenable_job, 3, args);
    8001ab96:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:47972
        args[2] = then;
    8001ab98:	f14a                	sd	s2,160(sp)
quickjs-nuttx/quickjs.c:47971
        args[1] = resolution;
    8001ab9a:	e93e                	sd	a5,144(sp)
    8001ab9c:	77e2                	ld	a5,56(sp)
    8001ab9e:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:47973
        JS_EnqueueJob(ctx, js_promise_resolve_thenable_job, 3, args);
    8001aba0:	d11ff0ef          	jal	ra,8001a8b0 <JS_EnqueueJob>
quickjs-nuttx/quickjs.c:47974
        JS_FreeValue(ctx, then);
    8001aba4:	6586                	ld	a1,64(sp)
    8001aba6:	6626                	ld	a2,72(sp)
    8001aba8:	b761                	j	8001ab30 <js_promise_resolve_function_call+0xb8>

000000008001abaa <JS_NewBigInt>:
JS_NewBigInt():
quickjs-nuttx/quickjs.c:12265
{
    8001abaa:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:12267
    p = js_malloc(ctx, sizeof(*p));
    8001abac:	03000593          	li	a1,48
quickjs-nuttx/quickjs.c:12265
{
    8001abb0:	ec26                	sd	s1,24(sp)
    8001abb2:	f406                	sd	ra,40(sp)
    8001abb4:	f022                	sd	s0,32(sp)
    8001abb6:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:12267
    p = js_malloc(ctx, sizeof(*p));
    8001abb8:	d4cff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:12268
    if (!p)
    8001abbc:	e919                	bnez	a0,8001abd2 <JS_NewBigInt+0x28>
quickjs-nuttx/quickjs.c:12269
        return JS_EXCEPTION;
    8001abbe:	e002                	sd	zero,0(sp)
    8001abc0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12273
}
    8001abc2:	70a2                	ld	ra,40(sp)
    8001abc4:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:12272
    return JS_MKPTR(JS_TAG_BIG_INT, p);
    8001abc6:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:12273
}
    8001abc8:	6502                	ld	a0,0(sp)
    8001abca:	65a2                	ld	a1,8(sp)
    8001abcc:	64e2                	ld	s1,24(sp)
    8001abce:	6145                	addi	sp,sp,48
    8001abd0:	8082                	ret
quickjs-nuttx/quickjs.c:12270
    p->header.ref_count = 1;
    8001abd2:	4785                	li	a5,1
    8001abd4:	c11c                	sw	a5,0(a0)
    8001abd6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12271
    bf_init(ctx->bf_ctx, &p->num);
    8001abd8:	00850593          	addi	a1,a0,8
    8001abdc:	1904b503          	ld	a0,400(s1)
    8001abe0:	78f3c0ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12272
    return JS_MKPTR(JS_TAG_BIG_INT, p);
    8001abe4:	57d9                	li	a5,-10
    8001abe6:	e022                	sd	s0,0(sp)
    8001abe8:	bfe9                	j	8001abc2 <JS_NewBigInt+0x18>

000000008001abea <js_create_module_var>:
js_create_module_var():
quickjs-nuttx/quickjs.c:27949
{
    8001abea:	1101                	addi	sp,sp,-32
    8001abec:	e426                	sd	s1,8(sp)
    8001abee:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:27951
    var_ref = js_malloc(ctx, sizeof(JSVarRef));
    8001abf0:	03800593          	li	a1,56
quickjs-nuttx/quickjs.c:27949
{
    8001abf4:	e822                	sd	s0,16(sp)
    8001abf6:	ec06                	sd	ra,24(sp)
    8001abf8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:27951
    var_ref = js_malloc(ctx, sizeof(JSVarRef));
    8001abfa:	d0aff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:27952
    if (!var_ref)
    8001abfe:	cd1d                	beqz	a0,8001ac3c <js_create_module_var+0x52>
quickjs-nuttx/quickjs.c:27954
    var_ref->header.ref_count = 1;
    8001ac00:	4785                	li	a5,1
    8001ac02:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:27956
        var_ref->value = JS_UNINITIALIZED;
    8001ac04:	02053023          	sd	zero,32(a0)
    8001ac08:	4791                	li	a5,4
quickjs-nuttx/quickjs.c:27955
    if (is_lexical)
    8001ac0a:	e091                	bnez	s1,8001ac0e <js_create_module_var+0x24>
quickjs-nuttx/quickjs.c:27958
        var_ref->value = JS_UNDEFINED;
    8001ac0c:	478d                	li	a5,3
    8001ac0e:	f51c                	sd	a5,40(a0)
quickjs-nuttx/quickjs.c:27959
    var_ref->pvalue = &var_ref->value;
    8001ac10:	02050793          	addi	a5,a0,32
    8001ac14:	ed1c                	sd	a5,24(a0)
quickjs-nuttx/quickjs.c:27960
    var_ref->is_detached = TRUE;
    8001ac16:	00554783          	lbu	a5,5(a0)
    8001ac1a:	0017e793          	ori	a5,a5,1
    8001ac1e:	00f502a3          	sb	a5,5(a0)
quickjs-nuttx/quickjs.c:27961
    add_gc_object(ctx->rt, &var_ref->header, JS_GC_OBJ_TYPE_VAR_REF);
    8001ac22:	6c18                	ld	a4,24(s0)
add_gc_object():
quickjs-nuttx/quickjs.c:5584
    h->gc_obj_type = type;
    8001ac24:	478d                	li	a5,3
    8001ac26:	00f50223          	sb	a5,4(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001ac2a:	6754                	ld	a3,136(a4)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001ac2c:	00850793          	addi	a5,a0,8
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001ac30:	e69c                	sd	a5,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001ac32:	e514                	sd	a3,8(a0)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    8001ac34:	08870693          	addi	a3,a4,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001ac38:	e914                	sd	a3,16(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001ac3a:	e75c                	sd	a5,136(a4)
js_create_module_var():
quickjs-nuttx/quickjs.c:27963
}
    8001ac3c:	60e2                	ld	ra,24(sp)
    8001ac3e:	6442                	ld	s0,16(sp)
    8001ac40:	64a2                	ld	s1,8(sp)
    8001ac42:	6105                	addi	sp,sp,32
    8001ac44:	8082                	ret

000000008001ac46 <add_reloc>:
add_reloc():
quickjs-nuttx/quickjs.c:31802
{
    8001ac46:	1101                	addi	sp,sp,-32
    8001ac48:	e822                	sd	s0,16(sp)
    8001ac4a:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:31804
    re = js_malloc(ctx, sizeof(*re));
    8001ac4c:	45c1                	li	a1,16
quickjs-nuttx/quickjs.c:31802
{
    8001ac4e:	e426                	sd	s1,8(sp)
    8001ac50:	e04a                	sd	s2,0(sp)
    8001ac52:	ec06                	sd	ra,24(sp)
    8001ac54:	8932                	mv	s2,a2
    8001ac56:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:31804
    re = js_malloc(ctx, sizeof(*re));
    8001ac58:	cacff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:31805
    if (!re)
    8001ac5c:	c519                	beqz	a0,8001ac6a <add_reloc+0x24>
quickjs-nuttx/quickjs.c:31807
    re->addr = addr;
    8001ac5e:	01252423          	sw	s2,8(a0)
quickjs-nuttx/quickjs.c:31808
    re->size = size;
    8001ac62:	c544                	sw	s1,12(a0)
quickjs-nuttx/quickjs.c:31809
    re->next = ls->first_reloc;
    8001ac64:	681c                	ld	a5,16(s0)
    8001ac66:	e11c                	sd	a5,0(a0)
quickjs-nuttx/quickjs.c:31810
    ls->first_reloc = re;
    8001ac68:	e808                	sd	a0,16(s0)
quickjs-nuttx/quickjs.c:31812
}
    8001ac6a:	60e2                	ld	ra,24(sp)
    8001ac6c:	6442                	ld	s0,16(sp)
    8001ac6e:	64a2                	ld	s1,8(sp)
    8001ac70:	6902                	ld	s2,0(sp)
    8001ac72:	6105                	addi	sp,sp,32
    8001ac74:	8082                	ret

000000008001ac76 <JS_NewBigDecimal>:
JS_NewBigDecimal():
quickjs-nuttx/quickjs.c:12399
{
    8001ac76:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:12401
    p = js_malloc(ctx, sizeof(*p));
    8001ac78:	03000593          	li	a1,48
quickjs-nuttx/quickjs.c:12399
{
    8001ac7c:	ec26                	sd	s1,24(sp)
    8001ac7e:	f406                	sd	ra,40(sp)
    8001ac80:	f022                	sd	s0,32(sp)
    8001ac82:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:12401
    p = js_malloc(ctx, sizeof(*p));
    8001ac84:	c80ff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:12402
    if (!p)
    8001ac88:	e919                	bnez	a0,8001ac9e <JS_NewBigDecimal+0x28>
quickjs-nuttx/quickjs.c:12403
        return JS_EXCEPTION;
    8001ac8a:	e002                	sd	zero,0(sp)
    8001ac8c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:12407
}
    8001ac8e:	70a2                	ld	ra,40(sp)
    8001ac90:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:12406
    return JS_MKPTR(JS_TAG_BIG_DECIMAL, p);
    8001ac92:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:12407
}
    8001ac94:	6502                	ld	a0,0(sp)
    8001ac96:	65a2                	ld	a1,8(sp)
    8001ac98:	64e2                	ld	s1,24(sp)
    8001ac9a:	6145                	addi	sp,sp,48
    8001ac9c:	8082                	ret
quickjs-nuttx/quickjs.c:12404
    p->header.ref_count = 1;
    8001ac9e:	4785                	li	a5,1
    8001aca0:	c11c                	sw	a5,0(a0)
    8001aca2:	842a                	mv	s0,a0
bfdec_init():
quickjs-nuttx/libbf.h:420
    bf_init(s, (bf_t *)r);
    8001aca4:	00850593          	addi	a1,a0,8
    8001aca8:	1904b503          	ld	a0,400(s1)
    8001acac:	6c33c0ef          	jal	ra,80057b6e <bf_init>
JS_NewBigDecimal():
quickjs-nuttx/quickjs.c:12406
    return JS_MKPTR(JS_TAG_BIG_DECIMAL, p);
    8001acb0:	57d5                	li	a5,-11
    8001acb2:	e022                	sd	s0,0(sp)
    8001acb4:	bfe9                	j	8001ac8e <JS_NewBigDecimal+0x18>

000000008001acb6 <js_typed_array_sort>:
js_typed_array_sort():
quickjs-nuttx/quickjs.c:54273
{
    8001acb6:	7131                	addi	sp,sp,-192
    8001acb8:	f14a                	sd	s2,160(sp)
    8001acba:	fd06                	sd	ra,184(sp)
    8001acbc:	f922                	sd	s0,176(sp)
    8001acbe:	f526                	sd	s1,168(sp)
    8001acc0:	ed4e                	sd	s3,152(sp)
    8001acc2:	e952                	sd	s4,144(sp)
    8001acc4:	e556                	sd	s5,136(sp)
    8001acc6:	e15a                	sd	s6,128(sp)
    8001acc8:	e82e                	sd	a1,16(sp)
    8001acca:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:54283
    tsc.arr = this_val;
    8001accc:	e4ae                	sd	a1,72(sp)
    8001acce:	e8b2                	sd	a2,80(sp)
quickjs-nuttx/quickjs.c:54284
    tsc.cmp = argv[0];
    8001acd0:	630c                	ld	a1,0(a4)
    8001acd2:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:54281
    tsc.ctx = ctx;
    8001acd4:	fc2a                	sd	a0,56(sp)
quickjs-nuttx/quickjs.c:54282
    tsc.exception = 0;
    8001acd6:	c082                	sw	zero,64(sp)
quickjs-nuttx/quickjs.c:54284
    tsc.cmp = argv[0];
    8001acd8:	ecae                	sd	a1,88(sp)
    8001acda:	f0b2                	sd	a2,96(sp)
quickjs-nuttx/quickjs.c:54286
    if (!JS_IsUndefined(tsc.cmp) && check_function(ctx, tsc.cmp))
    8001acdc:	0006071b          	sext.w	a4,a2
    8001ace0:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:54273
{
    8001ace2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:54286
    if (!JS_IsUndefined(tsc.cmp) && check_function(ctx, tsc.cmp))
    8001ace4:	02f70463          	beq	a4,a5,8001ad0c <js_typed_array_sort+0x56>
quickjs-nuttx/quickjs.c:54286 (discriminator 1)
    8001ace8:	a37fd0ef          	jal	ra,8001871e <check_function>
    8001acec:	c105                	beqz	a0,8001ad0c <js_typed_array_sort+0x56>
quickjs-nuttx/quickjs.c:54365
                    return JS_EXCEPTION;
    8001acee:	4799                	li	a5,6
    8001acf0:	f402                	sd	zero,40(sp)
    8001acf2:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:54406 (discriminator 1)
}
    8001acf4:	70ea                	ld	ra,184(sp)
    8001acf6:	744a                	ld	s0,176(sp)
    8001acf8:	7522                	ld	a0,40(sp)
    8001acfa:	75c2                	ld	a1,48(sp)
    8001acfc:	74aa                	ld	s1,168(sp)
    8001acfe:	790a                	ld	s2,160(sp)
    8001ad00:	69ea                	ld	s3,152(sp)
    8001ad02:	6a4a                	ld	s4,144(sp)
    8001ad04:	6aaa                	ld	s5,136(sp)
    8001ad06:	6b0a                	ld	s6,128(sp)
    8001ad08:	6129                	addi	sp,sp,192
    8001ad0a:	8082                	ret
quickjs-nuttx/quickjs.c:54288
    len = js_typed_array_get_length_internal(ctx, this_val);
    8001ad0c:	65c2                	ld	a1,16(sp)
    8001ad0e:	6662                	ld	a2,24(sp)
    8001ad10:	854a                	mv	a0,s2
    8001ad12:	f62fe0ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
    8001ad16:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:54289
    if (len < 0)
    8001ad18:	fc054be3          	bltz	a0,8001acee <js_typed_array_sort+0x38>
quickjs-nuttx/quickjs.c:54292
    if (len > 1) {
    8001ad1c:	4785                	li	a5,1
    8001ad1e:	1ea7d963          	bge	a5,a0,8001af10 <js_typed_array_sort+0x25a>
quickjs-nuttx/quickjs.c:54293
        p = JS_VALUE_GET_OBJ(this_val);
    8001ad22:	6642                	ld	a2,16(sp)
quickjs-nuttx/quickjs.c:54294
        switch (p->class_id) {
    8001ad24:	46a9                	li	a3,10
    8001ad26:	00665783          	lhu	a5,6(a2)
    8001ad2a:	0007871b          	sext.w	a4,a5
    8001ad2e:	37ad                	addiw	a5,a5,-21
    8001ad30:	03079593          	slli	a1,a5,0x30
    8001ad34:	91c1                	srli	a1,a1,0x30
    8001ad36:	16b6ef63          	bltu	a3,a1,8001aeb4 <js_typed_array_sort+0x1fe>
    8001ad3a:	00050697          	auipc	a3,0x50
    8001ad3e:	97e68693          	addi	a3,a3,-1666 # 8006a6b8 <qjsc_repl+0x5108>
    8001ad42:	00259793          	slli	a5,a1,0x2
    8001ad46:	97b6                	add	a5,a5,a3
    8001ad48:	439c                	lw	a5,0(a5)
    8001ad4a:	97b6                	add	a5,a5,a3
    8001ad4c:	8782                	jr	a5
quickjs-nuttx/quickjs.c:54296
            tsc.getfun = js_TA_get_int8;
    8001ad4e:	fffee797          	auipc	a5,0xfffee
    8001ad52:	95e78793          	addi	a5,a5,-1698 # 800086ac <js_TA_get_int8>
    8001ad56:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54297
            cmpfun = js_TA_cmp_int8;
    8001ad58:	fffee697          	auipc	a3,0xfffee
    8001ad5c:	8e468693          	addi	a3,a3,-1820 # 8000863c <js_TA_cmp_int8>
quickjs-nuttx/quickjs.c:54340
        elt_size = 1 << typed_array_size_log2(p->class_id);
    8001ad60:	372d                	addiw	a4,a4,-21
    8001ad62:	0005a797          	auipc	a5,0x5a
    8001ad66:	47e78793          	addi	a5,a5,1150 # 800751e0 <typed_array_size_log2>
    8001ad6a:	97ba                	add	a5,a5,a4
    8001ad6c:	0007ca83          	lbu	s5,0(a5)
quickjs-nuttx/quickjs.c:54341
        if (!JS_IsUndefined(tsc.cmp)) {
    8001ad70:	5706                	lw	a4,96(sp)
quickjs-nuttx/quickjs.c:54340
        elt_size = 1 << typed_array_size_log2(p->class_id);
    8001ad72:	4985                	li	s3,1
    8001ad74:	01599b3b          	sllw	s6,s3,s5
quickjs-nuttx/quickjs.c:54341
        if (!JS_IsUndefined(tsc.cmp)) {
    8001ad78:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:54339
        array_ptr = p->u.array.u.ptr;
    8001ad7a:	03863a03          	ld	s4,56(a2)
quickjs-nuttx/quickjs.c:54340
        elt_size = 1 << typed_array_size_log2(p->class_id);
    8001ad7e:	89da                	mv	s3,s6
quickjs-nuttx/quickjs.c:54341
        if (!JS_IsUndefined(tsc.cmp)) {
    8001ad80:	1ef70163          	beq	a4,a5,8001af62 <js_typed_array_sort+0x2ac>
quickjs-nuttx/quickjs.c:54347
            array_idx = js_malloc(ctx, len * sizeof(array_idx[0]));
    8001ad84:	00241593          	slli	a1,s0,0x2
    8001ad88:	854a                	mv	a0,s2
    8001ad8a:	b7aff0ef          	jal	ra,8001a104 <js_malloc>
    8001ad8e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:54348
            if (!array_idx)
    8001ad90:	dd39                	beqz	a0,8001acee <js_typed_array_sort+0x38>
quickjs-nuttx/quickjs.c:54350
            for(i = 0; i < len; i++)
    8001ad92:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:54351 (discriminator 3)
                array_idx[i] = i;
    8001ad94:	00279713          	slli	a4,a5,0x2
    8001ad98:	9726                	add	a4,a4,s1
    8001ad9a:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:54350 (discriminator 3)
            for(i = 0; i < len; i++)
    8001ad9c:	0785                	addi	a5,a5,1
    8001ad9e:	fe87ebe3          	bltu	a5,s0,8001ad94 <js_typed_array_sort+0xde>
quickjs-nuttx/quickjs.c:54354
            rqsort(array_idx, len, sizeof(array_idx[0]),
    8001ada2:	1838                	addi	a4,sp,56
    8001ada4:	0002e697          	auipc	a3,0x2e
    8001ada8:	14c68693          	addi	a3,a3,332 # 80048ef0 <js_TA_cmp_generic>
    8001adac:	4611                	li	a2,4
    8001adae:	85a2                	mv	a1,s0
    8001adb0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:54352
            tsc.array_ptr = array_ptr;
    8001adb2:	f8d2                	sd	s4,112(sp)
quickjs-nuttx/quickjs.c:54353
            tsc.elt_size = elt_size;
    8001adb4:	dcce                	sw	s3,120(sp)
quickjs-nuttx/quickjs.c:54354
            rqsort(array_idx, len, sizeof(array_idx[0]),
    8001adb6:	79b360ef          	jal	ra,80051d50 <rqsort>
quickjs-nuttx/quickjs.c:54356
            if (tsc.exception) {
    8001adba:	4786                	lw	a5,64(sp)
    8001adbc:	c3f9                	beqz	a5,8001ae82 <js_typed_array_sort+0x1cc>
quickjs-nuttx/quickjs.c:54357
                if (tsc.exception == 1)
    8001adbe:	4705                	li	a4,1
    8001adc0:	14e79463          	bne	a5,a4,8001af08 <js_typed_array_sort+0x252>
quickjs-nuttx/quickjs.c:54364
                    js_free(ctx, array_idx);
    8001adc4:	85a6                	mv	a1,s1
    8001adc6:	854a                	mv	a0,s2
    8001adc8:	a2ef00ef          	jal	ra,8000aff6 <js_free>
    8001adcc:	b70d                	j	8001acee <js_typed_array_sort+0x38>
quickjs-nuttx/quickjs.c:54301
            tsc.getfun = js_TA_get_uint8;
    8001adce:	fffee797          	auipc	a5,0xfffee
    8001add2:	8f078793          	addi	a5,a5,-1808 # 800086be <js_TA_get_uint8>
    8001add6:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54302
            cmpfun = js_TA_cmp_uint8;
    8001add8:	fffee697          	auipc	a3,0xfffee
    8001addc:	87068693          	addi	a3,a3,-1936 # 80008648 <js_TA_cmp_uint8>
quickjs-nuttx/quickjs.c:54303
            break;
    8001ade0:	b741                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54305
            tsc.getfun = js_TA_get_int16;
    8001ade2:	fffee797          	auipc	a5,0xfffee
    8001ade6:	8ee78793          	addi	a5,a5,-1810 # 800086d0 <js_TA_get_int16>
    8001adea:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54306
            cmpfun = js_TA_cmp_int16;
    8001adec:	fffee697          	auipc	a3,0xfffee
    8001adf0:	86868693          	addi	a3,a3,-1944 # 80008654 <js_TA_cmp_int16>
quickjs-nuttx/quickjs.c:54307
            break;
    8001adf4:	b7b5                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54309
            tsc.getfun = js_TA_get_uint16;
    8001adf6:	fffee797          	auipc	a5,0xfffee
    8001adfa:	8ec78793          	addi	a5,a5,-1812 # 800086e2 <js_TA_get_uint16>
    8001adfe:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54310
            cmpfun = js_TA_cmp_uint16;
    8001ae00:	fffee697          	auipc	a3,0xfffee
    8001ae04:	86068693          	addi	a3,a3,-1952 # 80008660 <js_TA_cmp_uint16>
quickjs-nuttx/quickjs.c:54311
            break;
    8001ae08:	bfa1                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54313
            tsc.getfun = js_TA_get_int32;
    8001ae0a:	fffee797          	auipc	a5,0xfffee
    8001ae0e:	8ea78793          	addi	a5,a5,-1814 # 800086f4 <js_TA_get_int32>
    8001ae12:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54314
            cmpfun = js_TA_cmp_int32;
    8001ae14:	fffee697          	auipc	a3,0xfffee
    8001ae18:	85868693          	addi	a3,a3,-1960 # 8000866c <js_TA_cmp_int32>
quickjs-nuttx/quickjs.c:54315
            break;
    8001ae1c:	b791                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54317
            tsc.getfun = js_TA_get_uint32;
    8001ae1e:	fffee797          	auipc	a5,0xfffee
    8001ae22:	8e678793          	addi	a5,a5,-1818 # 80008704 <js_TA_get_uint32>
    8001ae26:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54318
            cmpfun = js_TA_cmp_uint32;
    8001ae28:	fffee697          	auipc	a3,0xfffee
    8001ae2c:	85468693          	addi	a3,a3,-1964 # 8000867c <js_TA_cmp_uint32>
quickjs-nuttx/quickjs.c:54319
            break;
    8001ae30:	bf05                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54321
            tsc.getfun = js_TA_get_int64;
    8001ae32:	00003797          	auipc	a5,0x3
    8001ae36:	2d478793          	addi	a5,a5,724 # 8001e106 <js_TA_get_int64>
    8001ae3a:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54322
            cmpfun = js_TA_cmp_int64;
    8001ae3c:	fffee697          	auipc	a3,0xfffee
    8001ae40:	85068693          	addi	a3,a3,-1968 # 8000868c <js_TA_cmp_int64>
quickjs-nuttx/quickjs.c:54323
            break;
    8001ae44:	bf31                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54325
            tsc.getfun = js_TA_get_uint64;
    8001ae46:	00003797          	auipc	a5,0x3
    8001ae4a:	37078793          	addi	a5,a5,880 # 8001e1b6 <js_TA_get_uint64>
    8001ae4e:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54326
            cmpfun = js_TA_cmp_uint64;
    8001ae50:	fffee697          	auipc	a3,0xfffee
    8001ae54:	84c68693          	addi	a3,a3,-1972 # 8000869c <js_TA_cmp_uint64>
quickjs-nuttx/quickjs.c:54327
            break;
    8001ae58:	b721                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54329
            tsc.getfun = js_TA_get_float32;
    8001ae5a:	fffee797          	auipc	a5,0xfffee
    8001ae5e:	8d878793          	addi	a5,a5,-1832 # 80008732 <js_TA_get_float32>
    8001ae62:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54330
            cmpfun = js_TA_cmp_float32;
    8001ae64:	fffef697          	auipc	a3,0xfffef
    8001ae68:	f3c68693          	addi	a3,a3,-196 # 80009da0 <js_TA_cmp_float32>
quickjs-nuttx/quickjs.c:54331
            break;
    8001ae6c:	bdd5                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54333
            tsc.getfun = js_TA_get_float64;
    8001ae6e:	fffee797          	auipc	a5,0xfffee
    8001ae72:	8d878793          	addi	a5,a5,-1832 # 80008746 <js_TA_get_float64>
    8001ae76:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54334
            cmpfun = js_TA_cmp_float64;
    8001ae78:	fffef697          	auipc	a3,0xfffef
    8001ae7c:	f2268693          	addi	a3,a3,-222 # 80009d9a <js_TA_cmp_float64>
quickjs-nuttx/quickjs.c:54335
            break;
    8001ae80:	b5c5                	j	8001ad60 <js_typed_array_sort+0xaa>
quickjs-nuttx/quickjs.c:54361
                array_tmp = js_malloc(ctx, len * elt_size);
    8001ae82:	028b0633          	mul	a2,s6,s0
    8001ae86:	854a                	mv	a0,s2
    8001ae88:	85b2                	mv	a1,a2
    8001ae8a:	e432                	sd	a2,8(sp)
    8001ae8c:	a78ff0ef          	jal	ra,8001a104 <js_malloc>
    8001ae90:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:54362
                if (!array_tmp) {
    8001ae92:	d90d                	beqz	a0,8001adc4 <js_typed_array_sort+0x10e>
quickjs-nuttx/quickjs.c:54367
                memcpy(array_tmp, array_ptr, len * elt_size);
    8001ae94:	6622                	ld	a2,8(sp)
    8001ae96:	85d2                	mv	a1,s4
    8001ae98:	715480ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:54368
                switch(elt_size) {
    8001ae9c:	4789                	li	a5,2
    8001ae9e:	0afa8263          	beq	s5,a5,8001af42 <js_typed_array_sort+0x28c>
    8001aea2:	4791                	li	a5,4
    8001aea4:	0167ca63          	blt	a5,s6,8001aeb8 <js_typed_array_sort+0x202>
    8001aea8:	020a8c63          	beqz	s5,8001aee0 <js_typed_array_sort+0x22a>
    8001aeac:	4705                	li	a4,1
    8001aeae:	4781                	li	a5,0
    8001aeb0:	06ea8763          	beq	s5,a4,8001af1e <js_typed_array_sort+0x268>
quickjs-nuttx/quickjs.c:54337
            abort();
    8001aeb4:	4cf470ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:54368
                switch(elt_size) {
    8001aeb8:	470d                	li	a4,3
    8001aeba:	4781                	li	a5,0
    8001aebc:	feea9ce3          	bne	s5,a4,8001aeb4 <js_typed_array_sort+0x1fe>
quickjs-nuttx/quickjs.c:54389 (discriminator 3)
                        j = array_idx[i];
    8001aec0:	00279713          	slli	a4,a5,0x2
    8001aec4:	9726                	add	a4,a4,s1
    8001aec6:	00076703          	lwu	a4,0(a4)
quickjs-nuttx/quickjs.c:54390 (discriminator 3)
                        ((uint64_t *)array_ptr)[i] = ((uint64_t *)array_tmp)[j];
    8001aeca:	070e                	slli	a4,a4,0x3
    8001aecc:	974e                	add	a4,a4,s3
    8001aece:	6314                	ld	a3,0(a4)
    8001aed0:	00379713          	slli	a4,a5,0x3
    8001aed4:	9752                	add	a4,a4,s4
    8001aed6:	e314                	sd	a3,0(a4)
quickjs-nuttx/quickjs.c:54388 (discriminator 3)
                    for(i = 0; i < len; i++) {
    8001aed8:	0785                	addi	a5,a5,1
    8001aeda:	fe87e3e3          	bltu	a5,s0,8001aec0 <js_typed_array_sort+0x20a>
    8001aede:	a00d                	j	8001af00 <js_typed_array_sort+0x24a>
quickjs-nuttx/quickjs.c:54368
                switch(elt_size) {
    8001aee0:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:54371 (discriminator 3)
                        j = array_idx[i];
    8001aee2:	00279713          	slli	a4,a5,0x2
    8001aee6:	9726                	add	a4,a4,s1
    8001aee8:	00076703          	lwu	a4,0(a4)
quickjs-nuttx/quickjs.c:54372 (discriminator 3)
                        ((uint8_t *)array_ptr)[i] = ((uint8_t *)array_tmp)[j];
    8001aeec:	974e                	add	a4,a4,s3
    8001aeee:	00074683          	lbu	a3,0(a4)
    8001aef2:	00fa0733          	add	a4,s4,a5
quickjs-nuttx/quickjs.c:54370 (discriminator 3)
                    for(i = 0; i < len; i++) {
    8001aef6:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:54372 (discriminator 3)
                        ((uint8_t *)array_ptr)[i] = ((uint8_t *)array_tmp)[j];
    8001aef8:	00d70023          	sb	a3,0(a4)
quickjs-nuttx/quickjs.c:54370 (discriminator 3)
                    for(i = 0; i < len; i++) {
    8001aefc:	fe87e3e3          	bltu	a5,s0,8001aee2 <js_typed_array_sort+0x22c>
quickjs-nuttx/quickjs.c:54396
                js_free(ctx, array_tmp);
    8001af00:	85ce                	mv	a1,s3
    8001af02:	854a                	mv	a0,s2
    8001af04:	8f2f00ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:54398
            js_free(ctx, array_idx);
    8001af08:	85a6                	mv	a1,s1
    8001af0a:	854a                	mv	a0,s2
    8001af0c:	8eaf00ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:54405
    return JS_DupValue(ctx, this_val);
    8001af10:	6542                	ld	a0,16(sp)
    8001af12:	65e2                	ld	a1,24(sp)
    8001af14:	d06ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001af18:	f42a                	sd	a0,40(sp)
    8001af1a:	f82e                	sd	a1,48(sp)
    8001af1c:	bbe1                	j	8001acf4 <js_typed_array_sort+0x3e>
quickjs-nuttx/quickjs.c:54377 (discriminator 3)
                        j = array_idx[i];
    8001af1e:	00279713          	slli	a4,a5,0x2
    8001af22:	9726                	add	a4,a4,s1
    8001af24:	00076703          	lwu	a4,0(a4)
quickjs-nuttx/quickjs.c:54378 (discriminator 3)
                        ((uint16_t *)array_ptr)[i] = ((uint16_t *)array_tmp)[j];
    8001af28:	0706                	slli	a4,a4,0x1
    8001af2a:	974e                	add	a4,a4,s3
    8001af2c:	00075683          	lhu	a3,0(a4)
    8001af30:	00179713          	slli	a4,a5,0x1
    8001af34:	9752                	add	a4,a4,s4
    8001af36:	00d71023          	sh	a3,0(a4)
quickjs-nuttx/quickjs.c:54376 (discriminator 3)
                    for(i = 0; i < len; i++) {
    8001af3a:	0785                	addi	a5,a5,1
    8001af3c:	fe87e1e3          	bltu	a5,s0,8001af1e <js_typed_array_sort+0x268>
    8001af40:	b7c1                	j	8001af00 <js_typed_array_sort+0x24a>
quickjs-nuttx/quickjs.c:54368
                switch(elt_size) {
    8001af42:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:54383 (discriminator 3)
                        j = array_idx[i];
    8001af44:	00271693          	slli	a3,a4,0x2
    8001af48:	00d487b3          	add	a5,s1,a3
    8001af4c:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:54384 (discriminator 3)
                        ((uint32_t *)array_ptr)[i] = ((uint32_t *)array_tmp)[j];
    8001af50:	96d2                	add	a3,a3,s4
quickjs-nuttx/quickjs.c:54382 (discriminator 3)
                    for(i = 0; i < len; i++) {
    8001af52:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:54384 (discriminator 3)
                        ((uint32_t *)array_ptr)[i] = ((uint32_t *)array_tmp)[j];
    8001af54:	078a                	slli	a5,a5,0x2
    8001af56:	97ce                	add	a5,a5,s3
    8001af58:	439c                	lw	a5,0(a5)
    8001af5a:	c29c                	sw	a5,0(a3)
quickjs-nuttx/quickjs.c:54382 (discriminator 3)
                    for(i = 0; i < len; i++) {
    8001af5c:	fe8764e3          	bltu	a4,s0,8001af44 <js_typed_array_sort+0x28e>
    8001af60:	b745                	j	8001af00 <js_typed_array_sort+0x24a>
quickjs-nuttx/quickjs.c:54400
            rqsort(array_ptr, len, elt_size, cmpfun, &tsc);
    8001af62:	1838                	addi	a4,sp,56
    8001af64:	865a                	mv	a2,s6
    8001af66:	85a2                	mv	a1,s0
    8001af68:	8552                	mv	a0,s4
    8001af6a:	5e7360ef          	jal	ra,80051d50 <rqsort>
quickjs-nuttx/quickjs.c:54401
            if (tsc.exception)
    8001af6e:	4786                	lw	a5,64(sp)
    8001af70:	d3c5                	beqz	a5,8001af10 <js_typed_array_sort+0x25a>
    8001af72:	bbb5                	j	8001acee <js_typed_array_sort+0x38>

000000008001af74 <js_new_shape2.constprop.0>:
js_new_shape2():
quickjs-nuttx/quickjs.c:4352
static no_inline JSShape *js_new_shape2(JSContext *ctx, JSObject *proto,
    8001af74:	711d                	addi	sp,sp,-96
    8001af76:	e0ca                	sd	s2,64(sp)
    8001af78:	fc4e                	sd	s3,56(sp)
    8001af7a:	f852                	sd	s4,48(sp)
    8001af7c:	ec86                	sd	ra,88(sp)
    8001af7e:	e8a2                	sd	s0,80(sp)
    8001af80:	e4a6                	sd	s1,72(sp)
    8001af82:	f456                	sd	s5,40(sp)
    8001af84:	f05a                	sd	s6,32(sp)
    8001af86:	ec5e                	sd	s7,24(sp)
quickjs-nuttx/quickjs.c:4355
    JSRuntime *rt = ctx->rt;
    8001af88:	6d04                	ld	s1,24(a0)
quickjs-nuttx/quickjs.c:4352
static no_inline JSShape *js_new_shape2(JSContext *ctx, JSObject *proto,
    8001af8a:	89aa                	mv	s3,a0
    8001af8c:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:4360
    if (2 * (rt->shape_hash_count + 1) > rt->shape_hash_size) {
    8001af8e:	1804a783          	lw	a5,384(s1)
    8001af92:	17c4a703          	lw	a4,380(s1)
quickjs-nuttx/quickjs.c:4352
static no_inline JSShape *js_new_shape2(JSContext *ctx, JSObject *proto,
    8001af96:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:4360
    if (2 * (rt->shape_hash_count + 1) > rt->shape_hash_size) {
    8001af98:	2785                	addiw	a5,a5,1
    8001af9a:	0017979b          	slliw	a5,a5,0x1
    8001af9e:	04f75563          	bge	a4,a5,8001afe8 <js_new_shape2.constprop.0+0x74>
quickjs-nuttx/quickjs.c:4361
        resize_shape_hash(rt, rt->shape_hash_bits + 1);
    8001afa2:	1784ab03          	lw	s6,376(s1)
resize_shape_hash():
quickjs-nuttx/quickjs.c:4309
    new_shape_hash_size = 1 << new_shape_hash_bits;
    8001afa6:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:4310
    new_shape_hash = js_mallocz_rt(rt, sizeof(rt->shape_hash[0]) *
    8001afa8:	8526                	mv	a0,s1
js_new_shape2():
quickjs-nuttx/quickjs.c:4361
        resize_shape_hash(rt, rt->shape_hash_bits + 1);
    8001afaa:	001b0b9b          	addiw	s7,s6,1
resize_shape_hash():
quickjs-nuttx/quickjs.c:4309
    new_shape_hash_size = 1 << new_shape_hash_bits;
    8001afae:	017a95bb          	sllw	a1,s5,s7
    8001afb2:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:4310
    new_shape_hash = js_mallocz_rt(rt, sizeof(rt->shape_hash[0]) *
    8001afb4:	058e                	slli	a1,a1,0x3
    8001afb6:	bf5ef0ef          	jal	ra,8000abaa <js_mallocz_rt>
js_new_shape2():
quickjs-nuttx/quickjs.c:4361
        resize_shape_hash(rt, rt->shape_hash_bits + 1);
    8001afba:	8b5e                	mv	s6,s7
resize_shape_hash():
quickjs-nuttx/quickjs.c:4310
    new_shape_hash = js_mallocz_rt(rt, sizeof(rt->shape_hash[0]) *
    8001afbc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:4312
    if (!new_shape_hash)
    8001afbe:	c50d                	beqz	a0,8001afe8 <js_new_shape2.constprop.0+0x74>
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001afc0:	02000613          	li	a2,32
resize_shape_hash():
quickjs-nuttx/quickjs.c:4314
    for(i = 0; i < rt->shape_hash_size; i++) {
    8001afc4:	4681                	li	a3,0
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001afc6:	4176063b          	subw	a2,a2,s7
resize_shape_hash():
quickjs-nuttx/quickjs.c:4314
    for(i = 0; i < rt->shape_hash_size; i++) {
    8001afca:	17c4a783          	lw	a5,380(s1)
quickjs-nuttx/quickjs.c:4315
        for(sh = rt->shape_hash[i]; sh != NULL; sh = sh_next) {
    8001afce:	1884b583          	ld	a1,392(s1)
quickjs-nuttx/quickjs.c:4314
    for(i = 0; i < rt->shape_hash_size; i++) {
    8001afd2:	0af6cb63          	blt	a3,a5,8001b088 <js_new_shape2.constprop.0+0x114>
quickjs-nuttx/quickjs.c:4322
    js_free_rt(rt, rt->shape_hash);
    8001afd6:	8526                	mv	a0,s1
    8001afd8:	a09ef0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:4323
    rt->shape_hash_bits = new_shape_hash_bits;
    8001afdc:	1764ac23          	sw	s6,376(s1)
quickjs-nuttx/quickjs.c:4324
    rt->shape_hash_size = new_shape_hash_size;
    8001afe0:	1754ae23          	sw	s5,380(s1)
quickjs-nuttx/quickjs.c:4325
    rt->shape_hash = new_shape_hash;
    8001afe4:	1884b423          	sd	s0,392(s1)
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8001afe8:	003a1593          	slli	a1,s4,0x3
js_new_shape2():
quickjs-nuttx/quickjs.c:4364
    sh_alloc = js_malloc(ctx, get_shape_size(hash_size, prop_size));
    8001afec:	05058593          	addi	a1,a1,80
    8001aff0:	854e                	mv	a0,s3
    8001aff2:	912ff0ef          	jal	ra,8001a104 <js_malloc>
    8001aff6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:4365
    if (!sh_alloc)
    8001aff8:	cd25                	beqz	a0,8001b070 <js_new_shape2.constprop.0+0xfc>
quickjs-nuttx/quickjs.c:4368
    sh->header.ref_count = 1;
    8001affa:	4785                	li	a5,1
    8001affc:	c91c                	sw	a5,16(a0)
add_gc_object():
quickjs-nuttx/quickjs.c:5584
    h->gc_obj_type = type;
    8001affe:	4789                	li	a5,2
