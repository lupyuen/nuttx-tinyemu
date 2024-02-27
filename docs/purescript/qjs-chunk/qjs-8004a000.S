    80049000:	e432                	sd	a2,8(sp)
    80049002:	8ab6                	mv	s5,a3
    80049004:	893a                	mv	s2,a4
    80049006:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:53571
    val = JS_UNDEFINED;
    80049008:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:53572
    len = js_typed_array_get_length_internal(ctx, this_val);
    8004900a:	c6ad00ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
quickjs-nuttx/quickjs.c:53573
    if (len < 0)
    8004900e:	10054b63          	bltz	a0,80049124 <js_typed_array_find+0x13c>
quickjs-nuttx/quickjs.c:53576
    func = argv[0];
    80049012:	00093583          	ld	a1,0(s2)
    80049016:	00893603          	ld	a2,8(s2)
    8004901a:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:53577
    if (check_function(ctx, func))
    8004901c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:53576
    func = argv[0];
    8004901e:	e82e                	sd	a1,16(sp)
    80049020:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:53577
    if (check_function(ctx, func))
    80049022:	efccf0ef          	jal	ra,8001871e <check_function>
    80049026:	89aa                	mv	s3,a0
    80049028:	0e051e63          	bnez	a0,80049124 <js_typed_array_find+0x13c>
quickjs-nuttx/quickjs.c:53580
    this_arg = JS_UNDEFINED;
    8004902c:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:53581
    if (argc > 1)
    8004902e:	4785                	li	a5,1
    80049030:	0157cf63          	blt	a5,s5,8004904e <js_typed_array_find+0x66>
quickjs-nuttx/quickjs.c:53580
    this_arg = JS_UNDEFINED;
    80049034:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:53582
        this_arg = argv[1];
    80049036:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:53590
        dir = 1;
    80049038:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:53584
    if (mode == special_findLast || mode == special_findLastIndex) {
    8004903a:	ffe4879b          	addiw	a5,s1,-2
    8004903e:	00f96663          	bltu	s2,a5,8004904a <js_typed_array_find+0x62>
quickjs-nuttx/quickjs.c:53585
        k = len - 1;
    80049042:	fffa099b          	addiw	s3,s4,-1
quickjs-nuttx/quickjs.c:53586
        dir = -1;
    80049046:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:53587
        end = -1;
    80049048:	5a7d                	li	s4,-1
quickjs-nuttx/quickjs.c:53597 (discriminator 1)
        if (JS_IsException(val))
    8004904a:	4a99                	li	s5,6
    8004904c:	a055                	j	800490f0 <js_typed_array_find+0x108>
quickjs-nuttx/quickjs.c:53582
        this_arg = argv[1];
    8004904e:	01093783          	ld	a5,16(s2)
    80049052:	f03e                	sd	a5,32(sp)
    80049054:	01893783          	ld	a5,24(s2)
    80049058:	bff9                	j	80049036 <js_typed_array_find+0x4e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004905a:	da82                	sw	zero,116(sp)
    8004905c:	d8ce                	sw	s3,112(sp)
    8004905e:	76c6                	ld	a3,112(sp)
js_typed_array_find():
quickjs-nuttx/quickjs.c:53596
        val = JS_GetPropertyValue(ctx, this_val, index_val);
    80049060:	6582                	ld	a1,0(sp)
    80049062:	6622                	ld	a2,8(sp)
    80049064:	4701                	li	a4,0
    80049066:	8522                	mv	a0,s0
    80049068:	e0b6                	sd	a3,64(sp)
    8004906a:	e482                	sd	zero,72(sp)
    8004906c:	ea5cd0ef          	jal	ra,80016f10 <JS_GetPropertyValue>
    80049070:	f82a                	sd	a0,48(sp)
    80049072:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:53597
        if (JS_IsException(val))
    80049074:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:53596
        val = JS_GetPropertyValue(ctx, this_val, index_val);
    80049078:	00050b9b          	sext.w	s7,a0
    8004907c:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:53597
        if (JS_IsException(val))
    8004907e:	0b578563          	beq	a5,s5,80049128 <js_typed_array_find+0x140>
quickjs-nuttx/quickjs.c:53600
        args[1] = index_val;
    80049082:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:53602
        res = JS_Call(ctx, func, this_arg, 3, args);
    80049084:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:53599
        args[0] = val;
    80049086:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:53600
        args[1] = index_val;
    80049088:	f13e                	sd	a5,160(sp)
    8004908a:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:53602
        res = JS_Call(ctx, func, this_arg, 3, args);
    8004908c:	7682                	ld	a3,32(sp)
    8004908e:	7722                	ld	a4,40(sp)
quickjs-nuttx/quickjs.c:53600
        args[1] = index_val;
    80049090:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:53601
        args[2] = this_val;
    80049092:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:53602
        res = JS_Call(ctx, func, this_arg, 3, args);
    80049094:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:53599
        args[0] = val;
    80049096:	e92a                	sd	a0,144(sp)
quickjs-nuttx/quickjs.c:53601
        args[2] = this_val;
    80049098:	f93e                	sd	a5,176(sp)
    8004909a:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:53602
        res = JS_Call(ctx, func, this_arg, 3, args);
    8004909c:	09010813          	addi	a6,sp,144
    800490a0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:53601
        args[2] = this_val;
    800490a2:	fd3e                	sd	a5,184(sp)
quickjs-nuttx/quickjs.c:53602
        res = JS_Call(ctx, func, this_arg, 3, args);
    800490a4:	478d                	li	a5,3
    800490a6:	d5ff90ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:53603
        if (JS_IsException(res))
    800490aa:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:53602
        res = JS_Call(ctx, func, this_arg, 3, args);
    800490ae:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:53603
        if (JS_IsException(res))
    800490b0:	07578c63          	beq	a5,s5,80049128 <js_typed_array_find+0x140>
quickjs-nuttx/quickjs.c:53605
        if (JS_ToBoolFree(ctx, res)) {
    800490b4:	85aa                	mv	a1,a0
    800490b6:	8522                	mv	a0,s0
    800490b8:	a5dc20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    800490bc:	c11d                	beqz	a0,800490e2 <js_typed_array_find+0xfa>
quickjs-nuttx/quickjs.c:53606
            if (mode == special_findIndex || mode == special_findLastIndex) {
    800490be:	98f5                	andi	s1,s1,-3
    800490c0:	4705                	li	a4,1
    800490c2:	00e49c63          	bne	s1,a4,800490da <js_typed_array_find+0xf2>
quickjs-nuttx/quickjs.c:53607
                JS_FreeValue(ctx, val);
    800490c6:	75c2                	ld	a1,48(sp)
    800490c8:	7662                	ld	a2,56(sp)
    800490ca:	8522                	mv	a0,s0
    800490cc:	ed2c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53608
                return index_val;
    800490d0:	6786                	ld	a5,64(sp)
    800490d2:	f0be                	sd	a5,96(sp)
    800490d4:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:53622
    return JS_EXCEPTION;
    800490d6:	f4be                	sd	a5,104(sp)
    800490d8:	a035                	j	80049104 <js_typed_array_find+0x11c>
quickjs-nuttx/quickjs.c:53610
                return val;
    800490da:	77c2                	ld	a5,48(sp)
    800490dc:	f0be                	sd	a5,96(sp)
    800490de:	77e2                	ld	a5,56(sp)
    800490e0:	bfdd                	j	800490d6 <js_typed_array_find+0xee>
quickjs-nuttx/quickjs.c:53613
        JS_FreeValue(ctx, val);
    800490e2:	75c2                	ld	a1,48(sp)
    800490e4:	7662                	ld	a2,56(sp)
    800490e6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:53594
    for(; k != end; k += dir) {
    800490e8:	012989bb          	addw	s3,s3,s2
quickjs-nuttx/quickjs.c:53613
        JS_FreeValue(ctx, val);
    800490ec:	eb2c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53594 (discriminator 1)
    for(; k != end; k += dir) {
    800490f0:	f74995e3          	bne	s3,s4,8004905a <js_typed_array_find+0x72>
quickjs-nuttx/quickjs.c:53615
    if (mode == special_findIndex || mode == special_findLastIndex)
    800490f4:	98f5                	andi	s1,s1,-3
    800490f6:	4785                	li	a5,1
    800490f8:	02f49363          	bne	s1,a5,8004911e <js_typed_array_find+0x136>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800490fc:	57fd                	li	a5,-1
    800490fe:	9381                	srli	a5,a5,0x20
    80049100:	f0be                	sd	a5,96(sp)
    80049102:	f482                	sd	zero,104(sp)
js_typed_array_find():
quickjs-nuttx/quickjs.c:53623 (discriminator 1)
}
    80049104:	60b2                	ld	ra,264(sp)
    80049106:	6412                	ld	s0,256(sp)
    80049108:	7506                	ld	a0,96(sp)
    8004910a:	75a6                	ld	a1,104(sp)
    8004910c:	74ee                	ld	s1,248(sp)
    8004910e:	794e                	ld	s2,240(sp)
    80049110:	79ae                	ld	s3,232(sp)
    80049112:	7a0e                	ld	s4,224(sp)
    80049114:	6aee                	ld	s5,216(sp)
    80049116:	6b4e                	ld	s6,208(sp)
    80049118:	6bae                	ld	s7,200(sp)
    8004911a:	6151                	addi	sp,sp,272
    8004911c:	8082                	ret
quickjs-nuttx/quickjs.c:53618
        return JS_UNDEFINED;
    8004911e:	f082                	sd	zero,96(sp)
    80049120:	478d                	li	a5,3
    80049122:	bf55                	j	800490d6 <js_typed_array_find+0xee>
quickjs-nuttx/quickjs.c:53571
    val = JS_UNDEFINED;
    80049124:	4b0d                	li	s6,3
    80049126:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:53621
    JS_FreeValue(ctx, val);
    80049128:	d85e                	sw	s7,48(sp)
    8004912a:	75c2                	ld	a1,48(sp)
    8004912c:	865a                	mv	a2,s6
    8004912e:	8522                	mv	a0,s0
    80049130:	e6ec20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53622
    return JS_EXCEPTION;
    80049134:	4799                	li	a5,6
    80049136:	f082                	sd	zero,96(sp)
    80049138:	bf79                	j	800490d6 <js_typed_array_find+0xee>

000000008004913a <js_async_generator_resolve_or_reject.isra.0>:
js_async_generator_resolve_or_reject():
quickjs-nuttx/quickjs.c:19334
static void js_async_generator_resolve_or_reject(JSContext *ctx,
    8004913a:	715d                	addi	sp,sp,-80
    8004913c:	f84a                	sd	s2,48(sp)
    8004913e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:19343
    list_del(&next->link);
    80049140:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:19334
static void js_async_generator_resolve_or_reject(JSContext *ctx,
    80049142:	e486                	sd	ra,72(sp)
    80049144:	e0a2                	sd	s0,64(sp)
    80049146:	fc26                	sd	s1,56(sp)
    80049148:	842e                	mv	s0,a1
    8004914a:	84ba                	mv	s1,a4
    8004914c:	e032                	sd	a2,0(sp)
    8004914e:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:19343
    list_del(&next->link);
    80049150:	9f5be0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:19344
    ret = JS_Call(ctx, next->resolving_funcs[is_reject], JS_UNDEFINED, 1,
    80049154:	00348613          	addi	a2,s1,3
    80049158:	0612                	slli	a2,a2,0x4
    8004915a:	9622                	add	a2,a2,s0
    8004915c:	660c                	ld	a1,8(a2)
    8004915e:	6a10                	ld	a2,16(a2)
    80049160:	880a                	mv	a6,sp
    80049162:	4785                	li	a5,1
    80049164:	4681                	li	a3,0
    80049166:	470d                	li	a4,3
    80049168:	854a                	mv	a0,s2
    8004916a:	c9bf90ef          	jal	ra,80042e04 <JS_Call>
    8004916e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:19346
    JS_FreeValue(ctx, ret);
    80049170:	85aa                	mv	a1,a0
    80049172:	854a                	mv	a0,s2
    80049174:	e2ac20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19347
    JS_FreeValue(ctx, next->result);
    80049178:	6c0c                	ld	a1,24(s0)
    8004917a:	7010                	ld	a2,32(s0)
    8004917c:	854a                	mv	a0,s2
    8004917e:	e20c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19348
    JS_FreeValue(ctx, next->promise);
    80049182:	740c                	ld	a1,40(s0)
    80049184:	7810                	ld	a2,48(s0)
    80049186:	854a                	mv	a0,s2
    80049188:	e16c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19349
    JS_FreeValue(ctx, next->resolving_funcs[0]);
    8004918c:	7c0c                	ld	a1,56(s0)
    8004918e:	6030                	ld	a2,64(s0)
    80049190:	854a                	mv	a0,s2
    80049192:	e0cc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19350
    JS_FreeValue(ctx, next->resolving_funcs[1]);
    80049196:	642c                	ld	a1,72(s0)
    80049198:	6830                	ld	a2,80(s0)
    8004919a:	854a                	mv	a0,s2
    8004919c:	e02c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19351
    js_free(ctx, next);
    800491a0:	85a2                	mv	a1,s0
    800491a2:	854a                	mv	a0,s2
    800491a4:	e53c10ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:19352
}
    800491a8:	60a6                	ld	ra,72(sp)
    800491aa:	6406                	ld	s0,64(sp)
    800491ac:	74e2                	ld	s1,56(sp)
    800491ae:	7942                	ld	s2,48(sp)
    800491b0:	6161                	addi	sp,sp,80
    800491b2:	8082                	ret

00000000800491b4 <js_async_generator_resolve>:
js_async_generator_resolve():
quickjs-nuttx/quickjs.c:19358
{
    800491b4:	715d                	addi	sp,sp,-80
    800491b6:	e0a2                	sd	s0,64(sp)
    800491b8:	fc26                	sd	s1,56(sp)
    800491ba:	842a                	mv	s0,a0
    800491bc:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:19360
    result = js_create_iterator_result(ctx, JS_DupValue(ctx, value), done);
    800491be:	8532                	mv	a0,a2
    800491c0:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:19358
{
    800491c2:	e486                	sd	ra,72(sp)
    800491c4:	f84a                	sd	s2,48(sp)
    800491c6:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:19360
    result = js_create_iterator_result(ctx, JS_DupValue(ctx, value), done);
    800491c8:	a52c10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800491cc:	862e                	mv	a2,a1
    800491ce:	86ca                	mv	a3,s2
    800491d0:	85aa                	mv	a1,a0
    800491d2:	8522                	mv	a0,s0
    800491d4:	bc8e70ef          	jal	ra,8003059c <js_create_iterator_result>
    800491d8:	ec2e                	sd	a1,24(sp)
    800491da:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:19362
    js_async_generator_resolve_or_reject(ctx, s, result, 0);
    800491dc:	708c                	ld	a1,32(s1)
quickjs-nuttx/quickjs.c:19360
    result = js_create_iterator_result(ctx, JS_DupValue(ctx, value), done);
    800491de:	862a                	mv	a2,a0
    800491e0:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:19362
    js_async_generator_resolve_or_reject(ctx, s, result, 0);
    800491e2:	4701                	li	a4,0
    800491e4:	8522                	mv	a0,s0
    800491e6:	f55ff0ef          	jal	ra,8004913a <js_async_generator_resolve_or_reject.isra.0>
quickjs-nuttx/quickjs.c:19363
    JS_FreeValue(ctx, result);
    800491ea:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19364
 }
    800491ec:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:19363
    JS_FreeValue(ctx, result);
    800491ee:	65c2                	ld	a1,16(sp)
    800491f0:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:19364
 }
    800491f2:	60a6                	ld	ra,72(sp)
    800491f4:	74e2                	ld	s1,56(sp)
    800491f6:	7942                	ld	s2,48(sp)
    800491f8:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:19363
    JS_FreeValue(ctx, result);
    800491fa:	da4c206f          	j	8000b79e <JS_FreeValue>

00000000800491fe <js_async_generator_resume_next>:
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19423
{
    800491fe:	7115                	addi	sp,sp,-224
    80049200:	e9a2                	sd	s0,208(sp)
    80049202:	e5a6                	sd	s1,200(sp)
    80049204:	f556                	sd	s5,168(sp)
    80049206:	f15a                	sd	s6,160(sp)
    80049208:	ed86                	sd	ra,216(sp)
    8004920a:	e1ca                	sd	s2,192(sp)
    8004920c:	fd4e                	sd	s3,184(sp)
    8004920e:	f952                	sd	s4,176(sp)
    80049210:	ed5e                	sd	s7,152(sp)
    80049212:	842a                	mv	s0,a0
    80049214:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:19428
        if (list_empty(&s->queue))
    80049216:	01858b13          	addi	s6,a1,24
    8004921a:	00024a97          	auipc	s5,0x24
    8004921e:	50aa8a93          	addi	s5,s5,1290 # 8006d724 <qjsc_repl+0x8174>
list_empty():
quickjs-nuttx/list.h:82
    return el->next == el;
    80049222:	0204b903          	ld	s2,32(s1)
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19428
    80049226:	0f690263          	beq	s2,s6,8004930a <js_async_generator_resume_next+0x10c>
quickjs-nuttx/quickjs.c:19431
        switch(s->state) {
    8004922a:	4498                	lw	a4,8(s1)
    8004922c:	4795                	li	a5,5
    8004922e:	30e7ec63          	bltu	a5,a4,80049546 <js_async_generator_resume_next+0x348>
    80049232:	0084e783          	lwu	a5,8(s1)
    80049236:	078a                	slli	a5,a5,0x2
    80049238:	97d6                	add	a5,a5,s5
    8004923a:	439c                	lw	a5,0(a5)
    8004923c:	97d6                	add	a5,a5,s5
    8004923e:	8782                	jr	a5
quickjs-nuttx/quickjs.c:19438
            if (next->completion_type == GEN_MAGIC_NEXT) {
    80049240:	01092783          	lw	a5,16(s2)
    80049244:	1e078863          	beqz	a5,80049434 <js_async_generator_resume_next+0x236>
quickjs-nuttx/quickjs.c:19441
                js_async_generator_complete(ctx, s);
    80049248:	85a6                	mv	a1,s1
    8004924a:	8522                	mv	a0,s0
    8004924c:	830c30ef          	jal	ra,8000c27c <js_async_generator_complete>
quickjs-nuttx/quickjs.c:19443
            break;
    80049250:	bfc9                	j	80049222 <js_async_generator_resume_next+0x24>
quickjs-nuttx/quickjs.c:19445
            if (next->completion_type == GEN_MAGIC_NEXT) {
    80049252:	01092783          	lw	a5,16(s2)
    80049256:	e78d                	bnez	a5,80049280 <js_async_generator_resume_next+0x82>
quickjs-nuttx/quickjs.c:19446
                js_async_generator_resolve(ctx, s, JS_UNDEFINED, TRUE);
    80049258:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19521
}
    8004925a:	644e                	ld	s0,208(sp)
    8004925c:	60ee                	ld	ra,216(sp)
    8004925e:	690e                	ld	s2,192(sp)
    80049260:	79ea                	ld	s3,184(sp)
    80049262:	7a4a                	ld	s4,176(sp)
    80049264:	7aaa                	ld	s5,168(sp)
    80049266:	7b0a                	ld	s6,160(sp)
    80049268:	6bea                	ld	s7,152(sp)
quickjs-nuttx/quickjs.c:19446
                js_async_generator_resolve(ctx, s, JS_UNDEFINED, TRUE);
    8004926a:	478d                	li	a5,3
    8004926c:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:19521
}
    8004926e:	64ae                	ld	s1,200(sp)
quickjs-nuttx/quickjs.c:19446
                js_async_generator_resolve(ctx, s, JS_UNDEFINED, TRUE);
    80049270:	f882                	sd	zero,112(sp)
    80049272:	fcbe                	sd	a5,120(sp)
    80049274:	4705                	li	a4,1
    80049276:	4601                	li	a2,0
    80049278:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:19521
}
    8004927a:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:19446
                js_async_generator_resolve(ctx, s, JS_UNDEFINED, TRUE);
    8004927c:	f39ff06f          	j	800491b4 <js_async_generator_resolve>
quickjs-nuttx/quickjs.c:19447
            } else if (next->completion_type == GEN_MAGIC_RETURN) {
    80049280:	4705                	li	a4,1
    80049282:	0ce79963          	bne	a5,a4,80049354 <js_async_generator_resume_next+0x156>
quickjs-nuttx/quickjs.c:19448
                s->state = JS_ASYNC_GENERATOR_STATE_AWAITING_RETURN;
    80049286:	4791                	li	a5,4
    80049288:	c49c                	sw	a5,8(s1)
quickjs-nuttx/quickjs.c:19449
                js_async_generator_completed_return(ctx, s, next->result);
    8004928a:	01893783          	ld	a5,24(s2)
js_async_generator_completed_return():
quickjs-nuttx/quickjs.c:19391
    promise = js_promise_resolve(ctx, ctx->promise_ctor, 1, &value,
    8004928e:	644c                	ld	a1,136(s0)
    80049290:	6850                	ld	a2,144(s0)
    80049292:	f83e                	sd	a5,48(sp)
    80049294:	02093783          	ld	a5,32(s2)
    80049298:	1818                	addi	a4,sp,48
    8004929a:	4685                	li	a3,1
    8004929c:	fc3e                	sd	a5,56(sp)
    8004929e:	8522                	mv	a0,s0
    800492a0:	4781                	li	a5,0
    800492a2:	adafc0ef          	jal	ra,8004557c <js_promise_resolve>
    800492a6:	e0aa                	sd	a0,64(sp)
    800492a8:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:19395
    if (JS_IsException(promise)) {
    800492aa:	0005899b          	sext.w	s3,a1
    800492ae:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:19391
    promise = js_promise_resolve(ctx, ctx->promise_ctor, 1, &value,
    800492b0:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:19395
    if (JS_IsException(promise)) {
    800492b2:	02f99b63          	bne	s3,a5,800492e8 <js_async_generator_resume_next+0xea>
quickjs-nuttx/quickjs.c:19396
        JSValue err = JS_GetException(ctx);
    800492b6:	8522                	mv	a0,s0
    800492b8:	9d6c50ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:19397
        promise = js_promise_resolve(ctx, ctx->promise_ctor, 1, (JSValueConst *)&err,
    800492bc:	6850                	ld	a2,144(s0)
quickjs-nuttx/quickjs.c:19396
        JSValue err = JS_GetException(ctx);
    800492be:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:19397
        promise = js_promise_resolve(ctx, ctx->promise_ctor, 1, (JSValueConst *)&err,
    800492c0:	644c                	ld	a1,136(s0)
    800492c2:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:19396
        JSValue err = JS_GetException(ctx);
    800492c4:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:19397
        promise = js_promise_resolve(ctx, ctx->promise_ctor, 1, (JSValueConst *)&err,
    800492c6:	1898                	addi	a4,sp,112
    800492c8:	4685                	li	a3,1
    800492ca:	8522                	mv	a0,s0
    800492cc:	ab0fc0ef          	jal	ra,8004557c <js_promise_resolve>
    800492d0:	892e                	mv	s2,a1
    800492d2:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:19399
        JS_FreeValue(ctx, err);
    800492d4:	7666                	ld	a2,120(sp)
    800492d6:	75c6                	ld	a1,112(sp)
quickjs-nuttx/quickjs.c:19397
        promise = js_promise_resolve(ctx, ctx->promise_ctor, 1, (JSValueConst *)&err,
    800492d8:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:19399
        JS_FreeValue(ctx, err);
    800492da:	8522                	mv	a0,s0
    800492dc:	cc2c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19400
        if (JS_IsException(promise))
    800492e0:	0009079b          	sext.w	a5,s2
    800492e4:	03378363          	beq	a5,s3,8004930a <js_async_generator_resume_next+0x10c>
quickjs-nuttx/quickjs.c:19404
                                                   JS_MKPTR(JS_TAG_OBJECT, s->generator),
    800492e8:	608c                	ld	a1,0(s1)
    800492ea:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:19403
    if (js_async_generator_resolve_function_create(ctx,
    800492ec:	4705                	li	a4,1
    800492ee:	1894                	addi	a3,sp,112
    800492f0:	567d                	li	a2,-1
    800492f2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19404
                                                   JS_MKPTR(JS_TAG_OBJECT, s->generator),
    800492f4:	e8ae                	sd	a1,80(sp)
    800492f6:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:19403
    if (js_async_generator_resolve_function_create(ctx,
    800492f8:	8f3e70ef          	jal	ra,80030bea <js_async_generator_resolve_function_create.constprop.0>
    800492fc:	c115                	beqz	a0,80049320 <js_async_generator_resume_next+0x122>
quickjs-nuttx/quickjs.c:19407
        JS_FreeValue(ctx, promise);
    800492fe:	6586                	ld	a1,64(sp)
    80049300:	e4ca                	sd	s2,72(sp)
    80049302:	864a                	mv	a2,s2
quickjs-nuttx/quickjs.c:19417
    JS_FreeValue(ctx, promise);
    80049304:	8522                	mv	a0,s0
    80049306:	c98c20ef          	jal	ra,8000b79e <JS_FreeValue>
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19521
}
    8004930a:	60ee                	ld	ra,216(sp)
    8004930c:	644e                	ld	s0,208(sp)
    8004930e:	64ae                	ld	s1,200(sp)
    80049310:	690e                	ld	s2,192(sp)
    80049312:	79ea                	ld	s3,184(sp)
    80049314:	7a4a                	ld	s4,176(sp)
    80049316:	7aaa                	ld	s5,168(sp)
    80049318:	7b0a                	ld	s6,160(sp)
    8004931a:	6bea                	ld	s7,152(sp)
    8004931c:	612d                	addi	sp,sp,224
    8004931e:	8082                	ret
js_async_generator_completed_return():
quickjs-nuttx/quickjs.c:19412
    res = perform_promise_then(ctx, promise,
    80049320:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:19410
    resolving_funcs[0] = JS_UNDEFINED;
    80049322:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:19412
    res = perform_promise_then(ctx, promise,
    80049324:	0898                	addi	a4,sp,80
    80049326:	1894                	addi	a3,sp,112
    80049328:	864a                	mv	a2,s2
    8004932a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19410
    resolving_funcs[0] = JS_UNDEFINED;
    8004932c:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:19411
    resolving_funcs[1] = JS_UNDEFINED;
    8004932e:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:19410
    resolving_funcs[0] = JS_UNDEFINED;
    80049330:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:19411
    resolving_funcs[1] = JS_UNDEFINED;
    80049332:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:19412
    res = perform_promise_then(ctx, promise,
    80049334:	e4ca                	sd	s2,72(sp)
    80049336:	828d20ef          	jal	ra,8001b35e <perform_promise_then>
quickjs-nuttx/quickjs.c:19415
    JS_FreeValue(ctx, resolving_funcs1[0]);
    8004933a:	75c6                	ld	a1,112(sp)
    8004933c:	7666                	ld	a2,120(sp)
    8004933e:	8522                	mv	a0,s0
    80049340:	c5ec20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19416
    JS_FreeValue(ctx, resolving_funcs1[1]);
    80049344:	658a                	ld	a1,128(sp)
    80049346:	662a                	ld	a2,136(sp)
    80049348:	8522                	mv	a0,s0
    8004934a:	c54c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19417
    JS_FreeValue(ctx, promise);
    8004934e:	6586                	ld	a1,64(sp)
    80049350:	6626                	ld	a2,72(sp)
    80049352:	bf4d                	j	80049304 <js_async_generator_resume_next+0x106>
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19451
                js_async_generator_reject(ctx, s, next->result);
    80049354:	01893603          	ld	a2,24(s2)
    80049358:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19521
}
    8004935a:	644e                	ld	s0,208(sp)
    8004935c:	f8b2                	sd	a2,112(sp)
    8004935e:	02093683          	ld	a3,32(s2)
    80049362:	60ee                	ld	ra,216(sp)
    80049364:	64ae                	ld	s1,200(sp)
    80049366:	79ea                	ld	s3,184(sp)
    80049368:	7a4a                	ld	s4,176(sp)
    8004936a:	7aaa                	ld	s5,168(sp)
    8004936c:	7b0a                	ld	s6,160(sp)
    8004936e:	6bea                	ld	s7,152(sp)
    80049370:	85ca                	mv	a1,s2
    80049372:	690e                	ld	s2,192(sp)
    80049374:	fcb6                	sd	a3,120(sp)
    80049376:	4705                	li	a4,1
    80049378:	612d                	addi	sp,sp,224
    8004937a:	dc1ff06f          	j	8004913a <js_async_generator_resolve_or_reject.isra.0>
quickjs-nuttx/quickjs.c:19456
            value = JS_DupValue(ctx, next->result);
    8004937e:	01893503          	ld	a0,24(s2)
    80049382:	02093583          	ld	a1,32(s2)
    80049386:	894c10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:19457
            if (next->completion_type == GEN_MAGIC_THROW &&
    8004938a:	01092703          	lw	a4,16(s2)
quickjs-nuttx/quickjs.c:19456
            value = JS_DupValue(ctx, next->result);
    8004938e:	e82a                	sd	a0,16(sp)
    80049390:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:19457
            if (next->completion_type == GEN_MAGIC_THROW &&
    80049392:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:19456
            value = JS_DupValue(ctx, next->result);
    80049394:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:19457
            if (next->completion_type == GEN_MAGIC_THROW &&
    80049396:	06f71663          	bne	a4,a5,80049402 <js_async_generator_resume_next+0x204>
quickjs-nuttx/quickjs.c:19457 (discriminator 1)
    8004939a:	0084a983          	lw	s3,8(s1)
    8004939e:	4785                	li	a5,1
    800493a0:	06f99163          	bne	s3,a5,80049402 <js_async_generator_resume_next+0x204>
quickjs-nuttx/quickjs.c:19459
                JS_Throw(ctx, value);
    800493a4:	85aa                	mv	a1,a0
    800493a6:	8522                	mv	a0,s0
    800493a8:	89ac50ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:19460
                s->func_state->throw_flag = TRUE;
    800493ac:	689c                	ld	a5,16(s1)
    800493ae:	0337a623          	sw	s3,44(a5)
quickjs-nuttx/quickjs.c:19471
            s->state = JS_ASYNC_GENERATOR_STATE_EXECUTING;
    800493b2:	478d                	li	a5,3
    800493b4:	c49c                	sw	a5,8(s1)
quickjs-nuttx/quickjs.c:19491
                s->func_state->frame.cur_sp[-1] = JS_UNDEFINED;
    800493b6:	498d                	li	s3,3
js_async_generator_await():
quickjs-nuttx/quickjs.c:19308
    if (JS_IsException(promise))
    800493b8:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:19331
    return -1;
    800493ba:	5a7d                	li	s4,-1
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19473
            func_ret = async_func_resume(ctx, s->func_state);
    800493bc:	688c                	ld	a1,16(s1)
    800493be:	8522                	mv	a0,s0
    800493c0:	9f4f80ef          	jal	ra,800415b4 <async_func_resume>
quickjs-nuttx/quickjs.c:19474
            if (s->func_state->is_completed) {
    800493c4:	689c                	ld	a5,16(s1)
quickjs-nuttx/quickjs.c:19473
            func_ret = async_func_resume(ctx, s->func_state);
    800493c6:	e02a                	sd	a0,0(sp)
    800493c8:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:19474
            if (s->func_state->is_completed) {
    800493ca:	5b98                	lw	a4,48(a5)
quickjs-nuttx/quickjs.c:19473
            func_ret = async_func_resume(ctx, s->func_state);
    800493cc:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:19474
            if (s->func_state->is_completed) {
    800493ce:	2581                	sext.w	a1,a1
    800493d0:	c759                	beqz	a4,8004945e <js_async_generator_resume_next+0x260>
quickjs-nuttx/quickjs.c:19475
                if (JS_IsException(func_ret)) {
    800493d2:	4799                	li	a5,6
    800493d4:	06f59463          	bne	a1,a5,8004943c <js_async_generator_resume_next+0x23e>
quickjs-nuttx/quickjs.c:19476
                    value = JS_GetException(ctx);
    800493d8:	8522                	mv	a0,s0
    800493da:	8b4c50ef          	jal	ra,8000e48e <JS_GetException>
    800493de:	e82a                	sd	a0,16(sp)
    800493e0:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:19477
                    js_async_generator_complete(ctx, s);
    800493e2:	8522                	mv	a0,s0
    800493e4:	85a6                	mv	a1,s1
    800493e6:	e97c20ef          	jal	ra,8000c27c <js_async_generator_complete>
quickjs-nuttx/quickjs.c:19478
                    js_async_generator_reject(ctx, s, value);
    800493ea:	6642                	ld	a2,16(sp)
    800493ec:	66e2                	ld	a3,24(sp)
    800493ee:	708c                	ld	a1,32(s1)
    800493f0:	4705                	li	a4,1
    800493f2:	8522                	mv	a0,s0
    800493f4:	f8b2                	sd	a2,112(sp)
    800493f6:	fcb6                	sd	a3,120(sp)
quickjs-nuttx/quickjs.c:19370
    js_async_generator_resolve_or_reject(ctx, s, exception, 1);
    800493f8:	d43ff0ef          	jal	ra,8004913a <js_async_generator_resolve_or_reject.isra.0>
quickjs-nuttx/quickjs.c:19500
                    JS_FreeValue(ctx, value);
    800493fc:	65c2                	ld	a1,16(sp)
    800493fe:	6662                	ld	a2,24(sp)
    80049400:	a899                	j	80049456 <js_async_generator_resume_next+0x258>
quickjs-nuttx/quickjs.c:19464
                s->func_state->frame.cur_sp[-1] = value;
    80049402:	689c                	ld	a5,16(s1)
    80049404:	6742                	ld	a4,16(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80049406:	f002                	sd	zero,32(sp)
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19464
    80049408:	73dc                	ld	a5,160(a5)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8004940a:	f402                	sd	zero,40(sp)
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19464
    8004940c:	fee7b823          	sd	a4,-16(a5)
    80049410:	6762                	ld	a4,24(sp)
    80049412:	fee7bc23          	sd	a4,-8(a5)
quickjs-nuttx/quickjs.c:19466
                    JS_NewInt32(ctx, next->completion_type);
    80049416:	01092703          	lw	a4,16(s2)
quickjs-nuttx/quickjs.c:19465
                s->func_state->frame.cur_sp[0] =
    8004941a:	689c                	ld	a5,16(s1)
    8004941c:	d03a                	sw	a4,32(sp)
    8004941e:	7702                	ld	a4,32(sp)
    80049420:	73dc                	ld	a5,160(a5)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80049422:	fc82                	sd	zero,120(sp)
    80049424:	f8ba                	sd	a4,112(sp)
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19466
                    JS_NewInt32(ctx, next->completion_type);
    80049426:	e398                	sd	a4,0(a5)
    80049428:	7766                	ld	a4,120(sp)
    8004942a:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:19467
                s->func_state->frame.cur_sp++;
    8004942c:	6898                	ld	a4,16(s1)
    8004942e:	735c                	ld	a5,160(a4)
    80049430:	07c1                	addi	a5,a5,16
    80049432:	f35c                	sd	a5,160(a4)
quickjs-nuttx/quickjs.c:19469
                s->func_state->throw_flag = FALSE;
    80049434:	689c                	ld	a5,16(s1)
    80049436:	0207a623          	sw	zero,44(a5)
    8004943a:	bfa5                	j	800493b2 <js_async_generator_resume_next+0x1b4>
quickjs-nuttx/quickjs.c:19482
                    js_async_generator_complete(ctx, s);
    8004943c:	85a6                	mv	a1,s1
    8004943e:	8522                	mv	a0,s0
    80049440:	e3dc20ef          	jal	ra,8000c27c <js_async_generator_complete>
quickjs-nuttx/quickjs.c:19483
                    js_async_generator_resolve(ctx, s, func_ret, TRUE);
    80049444:	6602                	ld	a2,0(sp)
    80049446:	66a2                	ld	a3,8(sp)
    80049448:	85a6                	mv	a1,s1
    8004944a:	4705                	li	a4,1
    8004944c:	8522                	mv	a0,s0
    8004944e:	d67ff0ef          	jal	ra,800491b4 <js_async_generator_resolve>
quickjs-nuttx/quickjs.c:19484
                    JS_FreeValue(ctx, func_ret);
    80049452:	6582                	ld	a1,0(sp)
    80049454:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:19500
                    JS_FreeValue(ctx, value);
    80049456:	8522                	mv	a0,s0
    80049458:	b46c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19501
                    break;
    8004945c:	b3d9                	j	80049222 <js_async_generator_resume_next+0x24>
quickjs-nuttx/quickjs.c:19488
                assert(JS_VALUE_GET_TAG(func_ret) == JS_TAG_INT);
    8004945e:	c999                	beqz	a1,80049474 <js_async_generator_resume_next+0x276>
quickjs-nuttx/quickjs.c:19488 (discriminator 1)
    80049460:	6595                	lui	a1,0x5
    80049462:	4601                	li	a2,0
    80049464:	c2058593          	addi	a1,a1,-992 # 4c20 <asinh-0x7fffb3e0>
    80049468:	00020517          	auipc	a0,0x20
    8004946c:	13050513          	addi	a0,a0,304 # 80069598 <qjsc_repl+0x3fe8>
    80049470:	4ec170ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:19490 (discriminator 2)
                value = s->func_state->frame.cur_sp[-1];
    80049474:	73dc                	ld	a5,160(a5)
    80049476:	ff07b683          	ld	a3,-16(a5)
    8004947a:	ff87b703          	ld	a4,-8(a5)
quickjs-nuttx/quickjs.c:19491 (discriminator 2)
                s->func_state->frame.cur_sp[-1] = JS_UNDEFINED;
    8004947e:	fe07b823          	sd	zero,-16(a5)
quickjs-nuttx/quickjs.c:19490 (discriminator 2)
                value = s->func_state->frame.cur_sp[-1];
    80049482:	e836                	sd	a3,16(sp)
    80049484:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:19491 (discriminator 2)
                s->func_state->frame.cur_sp[-1] = JS_UNDEFINED;
    80049486:	ff37bc23          	sd	s3,-8(a5)
quickjs-nuttx/quickjs.c:19492 (discriminator 2)
                switch(func_ret_code) {
    8004948a:	c505                	beqz	a0,800494b2 <js_async_generator_resume_next+0x2b4>
    8004948c:	fff5079b          	addiw	a5,a0,-1
    80049490:	4705                	li	a4,1
    80049492:	0af76a63          	bltu	a4,a5,80049546 <js_async_generator_resume_next+0x348>
quickjs-nuttx/quickjs.c:19495
                    if (func_ret_code == FUNC_RET_YIELD_STAR)
    80049496:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:19496
                        s->state = JS_ASYNC_GENERATOR_STATE_SUSPENDED_YIELD_STAR;
    80049498:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:19495
                    if (func_ret_code == FUNC_RET_YIELD_STAR)
    8004949a:	00e50363          	beq	a0,a4,800494a0 <js_async_generator_resume_next+0x2a2>
quickjs-nuttx/quickjs.c:19498
                        s->state = JS_ASYNC_GENERATOR_STATE_SUSPENDED_YIELD;
    8004949e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:19499
                    js_async_generator_resolve(ctx, s, value, FALSE);
    800494a0:	6642                	ld	a2,16(sp)
    800494a2:	66e2                	ld	a3,24(sp)
    800494a4:	c49c                	sw	a5,8(s1)
    800494a6:	4701                	li	a4,0
    800494a8:	85a6                	mv	a1,s1
    800494aa:	8522                	mv	a0,s0
    800494ac:	d09ff0ef          	jal	ra,800491b4 <js_async_generator_resolve>
    800494b0:	b7b1                	j	800493fc <js_async_generator_resume_next+0x1fe>
js_async_generator_await():
quickjs-nuttx/quickjs.c:19306
    promise = js_promise_resolve(ctx, ctx->promise_ctor,
    800494b2:	644c                	ld	a1,136(s0)
    800494b4:	6850                	ld	a2,144(s0)
    800494b6:	f836                	sd	a3,48(sp)
    800494b8:	fc3a                	sd	a4,56(sp)
    800494ba:	4781                	li	a5,0
    800494bc:	1818                	addi	a4,sp,48
    800494be:	4685                	li	a3,1
    800494c0:	8522                	mv	a0,s0
    800494c2:	8bafc0ef          	jal	ra,8004557c <js_promise_resolve>
    800494c6:	e4ae                	sd	a1,72(sp)
    800494c8:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:19308
    if (JS_IsException(promise))
    800494ca:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:19331
    return -1;
    800494cc:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:19308
    if (JS_IsException(promise))
    800494ce:	03758163          	beq	a1,s7,800494f0 <js_async_generator_resume_next+0x2f2>
quickjs-nuttx/quickjs.c:19311
    if (js_async_generator_resolve_function_create(ctx, JS_MKPTR(JS_TAG_OBJECT, s->generator),
    800494d2:	608c                	ld	a1,0(s1)
    800494d4:	4701                	li	a4,0
    800494d6:	0894                	addi	a3,sp,80
    800494d8:	567d                	li	a2,-1
    800494da:	8522                	mv	a0,s0
    800494dc:	f8ae                	sd	a1,112(sp)
    800494de:	fcd2                	sd	s4,120(sp)
    800494e0:	f0ae70ef          	jal	ra,80030bea <js_async_generator_resolve_function_create.constprop.0>
    800494e4:	c10d                	beqz	a0,80049506 <js_async_generator_resume_next+0x308>
quickjs-nuttx/quickjs.c:19313
        JS_FreeValue(ctx, promise);
    800494e6:	6586                	ld	a1,64(sp)
    800494e8:	6626                	ld	a2,72(sp)
    800494ea:	8522                	mv	a0,s0
    800494ec:	ab2c20ef          	jal	ra,8000b79e <JS_FreeValue>
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19504
                    JS_FreeValue(ctx, value);
    800494f0:	65c2                	ld	a1,16(sp)
    800494f2:	6662                	ld	a2,24(sp)
    800494f4:	8522                	mv	a0,s0
    800494f6:	aa8c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19505
                    if (ret < 0) {
    800494fa:	e14918e3          	bne	s2,s4,8004930a <js_async_generator_resume_next+0x10c>
quickjs-nuttx/quickjs.c:19507
                        s->func_state->throw_flag = TRUE;
    800494fe:	689c                	ld	a5,16(s1)
    80049500:	4705                	li	a4,1
    80049502:	d7d8                	sw	a4,44(a5)
quickjs-nuttx/quickjs.c:19508
                        goto resume_exec;
    80049504:	bd65                	j	800493bc <js_async_generator_resume_next+0x1be>
js_async_generator_await():
quickjs-nuttx/quickjs.c:19321
    res = perform_promise_then(ctx, promise,
    80049506:	6586                	ld	a1,64(sp)
    80049508:	6626                	ld	a2,72(sp)
    8004950a:	1898                	addi	a4,sp,112
    8004950c:	0894                	addi	a3,sp,80
    8004950e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19320
        resolving_funcs1[i] = JS_UNDEFINED;
    80049510:	f882                	sd	zero,112(sp)
    80049512:	fcce                	sd	s3,120(sp)
    80049514:	e102                	sd	zero,128(sp)
    80049516:	e54e                	sd	s3,136(sp)
quickjs-nuttx/quickjs.c:19321
    res = perform_promise_then(ctx, promise,
    80049518:	e47d10ef          	jal	ra,8001b35e <perform_promise_then>
quickjs-nuttx/quickjs.c:19324
    JS_FreeValue(ctx, promise);
    8004951c:	6586                	ld	a1,64(sp)
    8004951e:	6626                	ld	a2,72(sp)
quickjs-nuttx/quickjs.c:19321
    res = perform_promise_then(ctx, promise,
    80049520:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:19324
    JS_FreeValue(ctx, promise);
    80049522:	8522                	mv	a0,s0
    80049524:	a7ac20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19326
        JS_FreeValue(ctx, resolving_funcs[i]);
    80049528:	65c6                	ld	a1,80(sp)
    8004952a:	6666                	ld	a2,88(sp)
    8004952c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19327
    if (res)
    8004952e:	01203933          	snez	s2,s2
quickjs-nuttx/quickjs.c:19326
        JS_FreeValue(ctx, resolving_funcs[i]);
    80049532:	a6cc20ef          	jal	ra,8000b79e <JS_FreeValue>
    80049536:	7586                	ld	a1,96(sp)
    80049538:	7626                	ld	a2,104(sp)
    8004953a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19327
    if (res)
    8004953c:	41200933          	neg	s2,s2
quickjs-nuttx/quickjs.c:19326
        JS_FreeValue(ctx, resolving_funcs[i]);
    80049540:	a5ec20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19327
    if (res)
    80049544:	b775                	j	800494f0 <js_async_generator_resume_next+0x2f2>
js_async_generator_resume_next():
quickjs-nuttx/quickjs.c:19512
                    abort();
    80049546:	63c190ef          	jal	ra,80062b82 <abort>

000000008004954a <js_async_generator_resolve_function>:
js_async_generator_resolve_function():
quickjs-nuttx/quickjs.c:19527
{
    8004954a:	7159                	addi	sp,sp,-112
    8004954c:	eca6                	sd	s1,88(sp)
    8004954e:	e02e                	sd	a1,0(sp)
    80049550:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:19529
    JSAsyncGeneratorData *s = JS_GetOpaque(func_data[0], JS_CLASS_ASYNC_GENERATOR);
    80049552:	00883583          	ld	a1,8(a6)
    80049556:	00083503          	ld	a0,0(a6)
quickjs-nuttx/quickjs.c:19527
{
    8004955a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:19529
    JSAsyncGeneratorData *s = JS_GetOpaque(func_data[0], JS_CLASS_ASYNC_GENERATOR);
    8004955c:	03900613          	li	a2,57
quickjs-nuttx/quickjs.c:19527
{
    80049560:	f0a2                	sd	s0,96(sp)
    80049562:	e8ca                	sd	s2,80(sp)
    80049564:	e4ce                	sd	s3,72(sp)
    80049566:	e0d2                	sd	s4,64(sp)
    80049568:	89ba                	mv	s3,a4
    8004956a:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:19528
    BOOL is_reject = magic & 1;
    8004956c:	0017fa13          	andi	s4,a5,1
quickjs-nuttx/quickjs.c:19527
{
    80049570:	f486                	sd	ra,104(sp)
quickjs-nuttx/quickjs.c:19529
    JSAsyncGeneratorData *s = JS_GetOpaque(func_data[0], JS_CLASS_ASYNC_GENERATOR);
    80049572:	922c50ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:19530
    JSValueConst arg = argv[0];
    80049576:	0009b603          	ld	a2,0(s3)
    8004957a:	0089b683          	ld	a3,8(s3)
quickjs-nuttx/quickjs.c:19534
    if (magic >= 2) {
    8004957e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:19530
    JSValueConst arg = argv[0];
    80049580:	e832                	sd	a2,16(sp)
    80049582:	ec36                	sd	a3,24(sp)
quickjs-nuttx/quickjs.c:19536
        assert(s->state == JS_ASYNC_GENERATOR_STATE_AWAITING_RETURN ||
    80049584:	4518                	lw	a4,8(a0)
quickjs-nuttx/quickjs.c:19529
    JSAsyncGeneratorData *s = JS_GetOpaque(func_data[0], JS_CLASS_ASYNC_GENERATOR);
    80049586:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19534
    if (magic >= 2) {
    80049588:	0527da63          	bge	a5,s2,800495dc <js_async_generator_resolve_function+0x92>
quickjs-nuttx/quickjs.c:19536
        assert(s->state == JS_ASYNC_GENERATOR_STATE_AWAITING_RETURN ||
    8004958c:	3771                	addiw	a4,a4,-4
    8004958e:	00e7fc63          	bgeu	a5,a4,800495a6 <js_async_generator_resolve_function+0x5c>
quickjs-nuttx/quickjs.c:19536 (discriminator 1)
    80049592:	6595                	lui	a1,0x5
    80049594:	4601                	li	a2,0
    80049596:	c5058593          	addi	a1,a1,-944 # 4c50 <asinh-0x7fffb3b0>
quickjs-nuttx/quickjs.c:19546 (discriminator 1)
        assert(s->state == JS_ASYNC_GENERATOR_STATE_EXECUTING);
    8004959a:	00020517          	auipc	a0,0x20
    8004959e:	ffe50513          	addi	a0,a0,-2 # 80069598 <qjsc_repl+0x3fe8>
    800495a2:	3ba170ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:19538 (discriminator 2)
        s->state = JS_ASYNC_GENERATOR_STATE_COMPLETED;
    800495a6:	4795                	li	a5,5
    800495a8:	c51c                	sw	a5,8(a0)
quickjs-nuttx/quickjs.c:19539 (discriminator 2)
        if (is_reject) {
    800495aa:	020a0363          	beqz	s4,800495d0 <js_async_generator_resolve_function+0x86>
quickjs-nuttx/quickjs.c:19540
            js_async_generator_reject(ctx, s, arg);
    800495ae:	710c                	ld	a1,32(a0)
    800495b0:	4705                	li	a4,1
    800495b2:	8526                	mv	a0,s1
    800495b4:	f832                	sd	a2,48(sp)
    800495b6:	fc36                	sd	a3,56(sp)
quickjs-nuttx/quickjs.c:19370
    js_async_generator_resolve_or_reject(ctx, s, exception, 1);
    800495b8:	b83ff0ef          	jal	ra,8004913a <js_async_generator_resolve_or_reject.isra.0>
quickjs-nuttx/quickjs.c:19557
}
    800495bc:	70a6                	ld	ra,104(sp)
    800495be:	7406                	ld	s0,96(sp)
    800495c0:	64e6                	ld	s1,88(sp)
    800495c2:	6946                	ld	s2,80(sp)
    800495c4:	69a6                	ld	s3,72(sp)
    800495c6:	6a06                	ld	s4,64(sp)
    800495c8:	4501                	li	a0,0
    800495ca:	458d                	li	a1,3
    800495cc:	6165                	addi	sp,sp,112
    800495ce:	8082                	ret
quickjs-nuttx/quickjs.c:19542
            js_async_generator_resolve(ctx, s, arg, TRUE);
    800495d0:	85aa                	mv	a1,a0
    800495d2:	4705                	li	a4,1
    800495d4:	8526                	mv	a0,s1
    800495d6:	bdfff0ef          	jal	ra,800491b4 <js_async_generator_resolve>
    800495da:	b7cd                	j	800495bc <js_async_generator_resolve_function+0x72>
quickjs-nuttx/quickjs.c:19546
        assert(s->state == JS_ASYNC_GENERATOR_STATE_EXECUTING);
    800495dc:	478d                	li	a5,3
    800495de:	00f70763          	beq	a4,a5,800495ec <js_async_generator_resolve_function+0xa2>
quickjs-nuttx/quickjs.c:19546 (discriminator 1)
    800495e2:	6595                	lui	a1,0x5
    800495e4:	4601                	li	a2,0
    800495e6:	c5a58593          	addi	a1,a1,-934 # 4c5a <asinh-0x7fffb3a6>
    800495ea:	bf45                	j	8004959a <js_async_generator_resolve_function+0x50>
quickjs-nuttx/quickjs.c:19547 (discriminator 2)
        s->func_state->throw_flag = is_reject;
    800495ec:	691c                	ld	a5,16(a0)
quickjs-nuttx/quickjs.c:19549 (discriminator 2)
            JS_Throw(ctx, JS_DupValue(ctx, arg));
    800495ee:	85b6                	mv	a1,a3
    800495f0:	8532                	mv	a0,a2
quickjs-nuttx/quickjs.c:19547 (discriminator 2)
        s->func_state->throw_flag = is_reject;
    800495f2:	0347a623          	sw	s4,44(a5)
quickjs-nuttx/quickjs.c:19548 (discriminator 2)
        if (is_reject) {
    800495f6:	000a0e63          	beqz	s4,80049612 <js_async_generator_resolve_function+0xc8>
quickjs-nuttx/quickjs.c:19549
            JS_Throw(ctx, JS_DupValue(ctx, arg));
    800495fa:	e21c00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800495fe:	862e                	mv	a2,a1
    80049600:	85aa                	mv	a1,a0
    80049602:	8526                	mv	a0,s1
    80049604:	e3fc40ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:19554
        js_async_generator_resume_next(ctx, s);
    80049608:	85a2                	mv	a1,s0
    8004960a:	8526                	mv	a0,s1
    8004960c:	bf3ff0ef          	jal	ra,800491fe <js_async_generator_resume_next>
    80049610:	b775                	j	800495bc <js_async_generator_resolve_function+0x72>
quickjs-nuttx/quickjs.c:19552
            s->func_state->frame.cur_sp[-1] = JS_DupValue(ctx, arg);
    80049612:	e09c00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80049616:	681c                	ld	a5,16(s0)
    80049618:	73dc                	ld	a5,160(a5)
    8004961a:	fea7b823          	sd	a0,-16(a5)
    8004961e:	feb7bc23          	sd	a1,-8(a5)
    80049622:	b7dd                	j	80049608 <js_async_generator_resolve_function+0xbe>

0000000080049624 <js_async_function_call>:
js_async_function_call():
quickjs-nuttx/quickjs.c:19175
{
    80049624:	711d                	addi	sp,sp,-96
    80049626:	e0ca                	sd	s2,64(sp)
    80049628:	ec86                	sd	ra,88(sp)
    8004962a:	e8a2                	sd	s0,80(sp)
    8004962c:	e4a6                	sd	s1,72(sp)
    8004962e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:19179
    s = async_func_init(ctx, func_obj, this_obj, argc, argv);
    80049630:	b2fd10ef          	jal	ra,8001b15e <async_func_init>
quickjs-nuttx/quickjs.c:19180
    if (!s)
    80049634:	e509                	bnez	a0,8004963e <js_async_function_call+0x1a>
quickjs-nuttx/quickjs.c:19181
        return JS_EXCEPTION;
    80049636:	f802                	sd	zero,48(sp)
    80049638:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:19193
    return promise;
    8004963a:	fc3e                	sd	a5,56(sp)
    8004963c:	a02d                	j	80049666 <js_async_function_call+0x42>
    8004963e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19183
    promise = JS_NewPromiseCapability(ctx, s->resolving_funcs);
    80049640:	03850593          	addi	a1,a0,56
    80049644:	854a                	mv	a0,s2
    80049646:	91dc50ef          	jal	ra,8000ef62 <JS_NewPromiseCapability>
    8004964a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:19184
    if (JS_IsException(promise)) {
    8004964c:	0005849b          	sext.w	s1,a1
quickjs-nuttx/quickjs.c:19183
    promise = JS_NewPromiseCapability(ctx, s->resolving_funcs);
    80049650:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:19184
    if (JS_IsException(promise)) {
    80049652:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:19185
        async_func_free(ctx->rt, s);
    80049654:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:19184
    if (JS_IsException(promise)) {
    80049656:	02f49063          	bne	s1,a5,80049676 <js_async_function_call+0x52>
quickjs-nuttx/quickjs.c:19185
        async_func_free(ctx->rt, s);
    8004965a:	01893503          	ld	a0,24(s2)
    8004965e:	b13c20ef          	jal	ra,8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:19186
        return JS_EXCEPTION;
    80049662:	f802                	sd	zero,48(sp)
    80049664:	fc26                	sd	s1,56(sp)
quickjs-nuttx/quickjs.c:19194 (discriminator 1)
}
    80049666:	60e6                	ld	ra,88(sp)
    80049668:	6446                	ld	s0,80(sp)
    8004966a:	7542                	ld	a0,48(sp)
    8004966c:	75e2                	ld	a1,56(sp)
    8004966e:	64a6                	ld	s1,72(sp)
    80049670:	6906                	ld	s2,64(sp)
    80049672:	6125                	addi	sp,sp,96
    80049674:	8082                	ret
quickjs-nuttx/quickjs.c:19189
    js_async_function_resume(ctx, s);
    80049676:	854a                	mv	a0,s2
    80049678:	844fc0ef          	jal	ra,800456bc <js_async_function_resume>
quickjs-nuttx/quickjs.c:19191
    async_func_free(ctx->rt, s);
    8004967c:	01893503          	ld	a0,24(s2)
    80049680:	85a2                	mv	a1,s0
    80049682:	aefc20ef          	jal	ra,8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:19193
    return promise;
    80049686:	7782                	ld	a5,32(sp)
    80049688:	f83e                	sd	a5,48(sp)
    8004968a:	77a2                	ld	a5,40(sp)
    8004968c:	b77d                	j	8004963a <js_async_function_call+0x16>

000000008004968e <js_execute_sync_module>:
js_execute_sync_module():
quickjs-nuttx/quickjs.c:28737
{
    8004968e:	715d                	addi	sp,sp,-80
    80049690:	e0a2                	sd	s0,64(sp)
    80049692:	fc26                	sd	s1,56(sp)
    80049694:	e486                	sd	ra,72(sp)
    80049696:	f84a                	sd	s2,48(sp)
quickjs-nuttx/quickjs.c:28738
    if (m->init_func) {
    80049698:	7dbc                	ld	a5,120(a1)
quickjs-nuttx/quickjs.c:28737
{
    8004969a:	842a                	mv	s0,a0
    8004969c:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:28738
    if (m->init_func) {
    8004969e:	cb91                	beqz	a5,800496b2 <js_execute_sync_module+0x24>
quickjs-nuttx/quickjs.c:28740
        if (m->init_func(ctx, m) < 0)
    800496a0:	9782                	jalr	a5
    800496a2:	04055a63          	bgez	a0,800496f6 <js_execute_sync_module+0x68>
quickjs-nuttx/quickjs.c:28760
            *pvalue = JS_GetException(ctx);
    800496a6:	8522                	mv	a0,s0
    800496a8:	de7c40ef          	jal	ra,8000e48e <JS_GetException>
    800496ac:	e088                	sd	a0,0(s1)
    800496ae:	e48c                	sd	a1,8(s1)
quickjs-nuttx/quickjs.c:28761
            return -1;
    800496b0:	a0bd                	j	8004971e <js_execute_sync_module+0x90>
    800496b2:	832e                	mv	t1,a1
quickjs-nuttx/quickjs.c:28746
        promise = js_async_function_call(ctx, m->func_obj, JS_UNDEFINED, 0, NULL, 0);
    800496b4:	07033603          	ld	a2,112(t1)
    800496b8:	75ac                	ld	a1,104(a1)
    800496ba:	4781                	li	a5,0
    800496bc:	470d                	li	a4,3
    800496be:	4881                	li	a7,0
    800496c0:	4801                	li	a6,0
    800496c2:	4681                	li	a3,0
    800496c4:	f61ff0ef          	jal	ra,80049624 <js_async_function_call>
    800496c8:	e82a                	sd	a0,16(sp)
    800496ca:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:28747
        if (JS_IsException(promise))
    800496cc:	0005871b          	sext.w	a4,a1
    800496d0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:28746
        promise = js_async_function_call(ctx, m->func_obj, JS_UNDEFINED, 0, NULL, 0);
    800496d2:	892a                	mv	s2,a0
    800496d4:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28747
        if (JS_IsException(promise))
    800496d6:	fcf708e3          	beq	a4,a5,800496a6 <js_execute_sync_module+0x18>
quickjs-nuttx/quickjs.c:28749
        state = JS_PromiseState(ctx, promise);
    800496da:	85aa                	mv	a1,a0
    800496dc:	8522                	mv	a0,s0
    800496de:	e432                	sd	a2,8(sp)
    800496e0:	827c50ef          	jal	ra,8000ef06 <JS_PromiseState>
    800496e4:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:28750
        if (state == JS_PROMISE_FULFILLED) {
    800496e6:	4785                	li	a5,1
    800496e8:	6622                	ld	a2,8(sp)
    800496ea:	00f51c63          	bne	a0,a5,80049702 <js_execute_sync_module+0x74>
quickjs-nuttx/quickjs.c:28751
            JS_FreeValue(ctx, promise);
    800496ee:	85ca                	mv	a1,s2
    800496f0:	8522                	mv	a0,s0
    800496f2:	8acc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28764
    *pvalue = JS_UNDEFINED;
    800496f6:	478d                	li	a5,3
    800496f8:	0004b023          	sd	zero,0(s1)
    800496fc:	e49c                	sd	a5,8(s1)
quickjs-nuttx/quickjs.c:28765
    return 0;
    800496fe:	4501                	li	a0,0
    80049700:	a005                	j	80049720 <js_execute_sync_module+0x92>
quickjs-nuttx/quickjs.c:28752
        } else if (state == JS_PROMISE_REJECTED) {
    80049702:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:28753
            *pvalue = JS_PromiseResult(ctx, promise);
    80049704:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:28752
        } else if (state == JS_PROMISE_REJECTED) {
    80049706:	02f51363          	bne	a0,a5,8004972c <js_execute_sync_module+0x9e>
quickjs-nuttx/quickjs.c:28753
            *pvalue = JS_PromiseResult(ctx, promise);
    8004970a:	8522                	mv	a0,s0
    8004970c:	81fc50ef          	jal	ra,8000ef2a <JS_PromiseResult>
    80049710:	e48c                	sd	a1,8(s1)
quickjs-nuttx/quickjs.c:28754
            JS_FreeValue(ctx, promise);
    80049712:	6662                	ld	a2,24(sp)
    80049714:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:28753
            *pvalue = JS_PromiseResult(ctx, promise);
    80049716:	e088                	sd	a0,0(s1)
quickjs-nuttx/quickjs.c:28754
            JS_FreeValue(ctx, promise);
    80049718:	8522                	mv	a0,s0
    8004971a:	884c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28755 (discriminator 1)
            return -1;
    8004971e:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:28766
}
    80049720:	60a6                	ld	ra,72(sp)
    80049722:	6406                	ld	s0,64(sp)
    80049724:	74e2                	ld	s1,56(sp)
    80049726:	7942                	ld	s2,48(sp)
    80049728:	6161                	addi	sp,sp,80
    8004972a:	8082                	ret
quickjs-nuttx/quickjs.c:28757
            JS_FreeValue(ctx, promise);
    8004972c:	8522                	mv	a0,s0
    8004972e:	870c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28758
            JS_ThrowTypeError(ctx, "promise is pending");
    80049732:	8522                	mv	a0,s0
    80049734:	00024597          	auipc	a1,0x24
    80049738:	00c58593          	addi	a1,a1,12 # 8006d740 <qjsc_repl+0x8190>
    8004973c:	f31ce0ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80049740:	b79d                	j	800496a6 <js_execute_sync_module+0x18>

0000000080049742 <js_execute_async_module.isra.0>:
js_execute_async_module():
quickjs-nuttx/quickjs.c:28715
static int js_execute_async_module(JSContext *ctx, JSModuleDef *m)
    80049742:	7119                	addi	sp,sp,-128
    80049744:	f8a2                	sd	s0,112(sp)
    80049746:	f4a6                	sd	s1,104(sp)
    80049748:	fc86                	sd	ra,120(sp)
    8004974a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:28719
    promise = js_async_function_call(ctx, m->func_obj, JS_UNDEFINED, 0, NULL, 0);
    8004974c:	78b0                	ld	a2,112(s1)
    8004974e:	75ac                	ld	a1,104(a1)
    80049750:	4781                	li	a5,0
    80049752:	470d                	li	a4,3
    80049754:	4881                	li	a7,0
    80049756:	4801                	li	a6,0
    80049758:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:28715
static int js_execute_async_module(JSContext *ctx, JSModuleDef *m)
    8004975a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:28719
    promise = js_async_function_call(ctx, m->func_obj, JS_UNDEFINED, 0, NULL, 0);
    8004975c:	ec9ff0ef          	jal	ra,80049624 <js_async_function_call>
    80049760:	e02a                	sd	a0,0(sp)
    80049762:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:28720
    if (JS_IsException(promise))
    80049764:	0005879b          	sext.w	a5,a1
    80049768:	4719                	li	a4,6
    8004976a:	08e78263          	beq	a5,a4,800497ee <js_execute_async_module.isra.0+0xac>
quickjs-nuttx/quickjs.c:28722
    m_obj = JS_NewModuleValue(ctx, m);
    8004976e:	85a6                	mv	a1,s1
    80049770:	8522                	mv	a0,s0
    80049772:	dddc00ef          	jal	ra,8000a54e <JS_NewModuleValue>
    80049776:	e82a                	sd	a0,16(sp)
    80049778:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:28723
    resolve_funcs[0] = JS_NewCFunctionData(ctx, js_async_module_execution_fulfilled, 0, 0, 1, (JSValueConst *)&m_obj);
    8004977a:	081c                	addi	a5,sp,16
    8004977c:	4705                	li	a4,1
    8004977e:	4681                	li	a3,0
    80049780:	4601                	li	a2,0
    80049782:	00000597          	auipc	a1,0x0
    80049786:	07658593          	addi	a1,a1,118 # 800497f8 <js_async_module_execution_fulfilled>
    8004978a:	8522                	mv	a0,s0
    8004978c:	b86e70ef          	jal	ra,80030b12 <JS_NewCFunctionData>
quickjs-nuttx/quickjs.c:28724
    resolve_funcs[1] = JS_NewCFunctionData(ctx, js_async_module_execution_rejected, 0, 0, 1, (JSValueConst *)&m_obj);
    80049790:	081c                	addi	a5,sp,16
quickjs-nuttx/quickjs.c:28723
    resolve_funcs[0] = JS_NewCFunctionData(ctx, js_async_module_execution_fulfilled, 0, 0, 1, (JSValueConst *)&m_obj);
    80049792:	e0aa                	sd	a0,64(sp)
    80049794:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:28724
    resolve_funcs[1] = JS_NewCFunctionData(ctx, js_async_module_execution_rejected, 0, 0, 1, (JSValueConst *)&m_obj);
    80049796:	4705                	li	a4,1
    80049798:	4681                	li	a3,0
    8004979a:	4601                	li	a2,0
    8004979c:	ffffc597          	auipc	a1,0xffffc
    800497a0:	c1a58593          	addi	a1,a1,-998 # 800453b6 <js_async_module_execution_rejected>
    800497a4:	8522                	mv	a0,s0
    800497a6:	b6ce70ef          	jal	ra,80030b12 <JS_NewCFunctionData>
quickjs-nuttx/quickjs.c:28725
    ret_val = js_promise_then(ctx, promise, 2, (JSValueConst *)resolve_funcs);
    800497aa:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:28724
    resolve_funcs[1] = JS_NewCFunctionData(ctx, js_async_module_execution_rejected, 0, 0, 1, (JSValueConst *)&m_obj);
    800497ac:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:28725
    ret_val = js_promise_then(ctx, promise, 2, (JSValueConst *)resolve_funcs);
    800497ae:	6582                	ld	a1,0(sp)
    800497b0:	0098                	addi	a4,sp,64
    800497b2:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:28724
    resolve_funcs[1] = JS_NewCFunctionData(ctx, js_async_module_execution_rejected, 0, 0, 1, (JSValueConst *)&m_obj);
    800497b4:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:28725
    ret_val = js_promise_then(ctx, promise, 2, (JSValueConst *)resolve_funcs);
    800497b6:	8522                	mv	a0,s0
    800497b8:	d62fa0ef          	jal	ra,80043d1a <js_promise_then>
    800497bc:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28726
    JS_FreeValue(ctx, ret_val);
    800497be:	85aa                	mv	a1,a0
    800497c0:	8522                	mv	a0,s0
    800497c2:	fddc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28727
    JS_FreeValue(ctx, m_obj);
    800497c6:	65c2                	ld	a1,16(sp)
    800497c8:	6662                	ld	a2,24(sp)
    800497ca:	8522                	mv	a0,s0
    800497cc:	fd3c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28728
    JS_FreeValue(ctx, resolve_funcs[0]);
    800497d0:	6586                	ld	a1,64(sp)
    800497d2:	6626                	ld	a2,72(sp)
    800497d4:	8522                	mv	a0,s0
    800497d6:	fc9c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28729
    JS_FreeValue(ctx, resolve_funcs[1]);
    800497da:	65c6                	ld	a1,80(sp)
    800497dc:	6666                	ld	a2,88(sp)
    800497de:	8522                	mv	a0,s0
    800497e0:	fbfc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28730
    JS_FreeValue(ctx, promise);
    800497e4:	6582                	ld	a1,0(sp)
    800497e6:	6622                	ld	a2,8(sp)
    800497e8:	8522                	mv	a0,s0
    800497ea:	fb5c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28732
}
    800497ee:	70e6                	ld	ra,120(sp)
    800497f0:	7446                	ld	s0,112(sp)
    800497f2:	74a6                	ld	s1,104(sp)
    800497f4:	6109                	addi	sp,sp,128
    800497f6:	8082                	ret

00000000800497f8 <js_async_module_execution_fulfilled>:
js_async_module_execution_fulfilled():
quickjs-nuttx/quickjs.c:28663
{
    800497f8:	7175                	addi	sp,sp,-144
    800497fa:	e506                	sd	ra,136(sp)
    800497fc:	e122                	sd	s0,128(sp)
    800497fe:	fca6                	sd	s1,120(sp)
    80049800:	f8ca                	sd	s2,112(sp)
    80049802:	f4ce                	sd	s3,104(sp)
    80049804:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:28664
    JSModuleDef *module = JS_VALUE_GET_PTR(func_data[0]);
    80049806:	00083583          	ld	a1,0(a6)
quickjs-nuttx/quickjs.c:28663
{
    8004980a:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:28668
    if (module->status == JS_MODULE_STATUS_EVALUATED) {
    8004980c:	4715                	li	a4,5
    8004980e:	0835c783          	lbu	a5,131(a1)
    80049812:	00e79e63          	bne	a5,a4,8004982e <js_async_module_execution_fulfilled+0x36>
quickjs-nuttx/quickjs.c:28669
        assert(module->eval_has_exception);
    80049816:	0f05c783          	lbu	a5,240(a1)
    8004981a:	e3d5                	bnez	a5,800498be <js_async_module_execution_fulfilled+0xc6>
quickjs-nuttx/quickjs.c:28669 (discriminator 1)
    8004981c:	659d                	lui	a1,0x7
    8004981e:	4601                	li	a2,0
    80049820:	15f5                	addi	a1,a1,-3
quickjs-nuttx/quickjs.c:28672 (discriminator 1)
    assert(module->status == JS_MODULE_STATUS_EVALUATING_ASYNC);
    80049822:	00020517          	auipc	a0,0x20
    80049826:	d7650513          	addi	a0,a0,-650 # 80069598 <qjsc_repl+0x3fe8>
    8004982a:	132170ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:28672
    8004982e:	4711                	li	a4,4
    80049830:	00e78563          	beq	a5,a4,8004983a <js_async_module_execution_fulfilled+0x42>
quickjs-nuttx/quickjs.c:28672 (discriminator 1)
    80049834:	4601                	li	a2,0
    80049836:	659d                	lui	a1,0x7
    80049838:	b7ed                	j	80049822 <js_async_module_execution_fulfilled+0x2a>
quickjs-nuttx/quickjs.c:28673 (discriminator 2)
    assert(!module->eval_has_exception);
    8004983a:	0f05c783          	lbu	a5,240(a1) # 70f0 <asinh-0x7fff8f10>
    8004983e:	c789                	beqz	a5,80049848 <js_async_module_execution_fulfilled+0x50>
quickjs-nuttx/quickjs.c:28673 (discriminator 1)
    80049840:	659d                	lui	a1,0x7
    80049842:	4601                	li	a2,0
    80049844:	0585                	addi	a1,a1,1
    80049846:	bff1                	j	80049822 <js_async_module_execution_fulfilled+0x2a>
quickjs-nuttx/quickjs.c:28674 (discriminator 2)
    assert(module->async_evaluation);
    80049848:	0ac5a783          	lw	a5,172(a1) # 70ac <asinh-0x7fff8f54>
    8004984c:	e789                	bnez	a5,80049856 <js_async_module_execution_fulfilled+0x5e>
quickjs-nuttx/quickjs.c:28674 (discriminator 1)
    8004984e:	659d                	lui	a1,0x7
    80049850:	4601                	li	a2,0
    80049852:	0589                	addi	a1,a1,2
    80049854:	b7f9                	j	80049822 <js_async_module_execution_fulfilled+0x2a>
quickjs-nuttx/quickjs.c:28675 (discriminator 2)
    module->async_evaluation = FALSE;
    80049856:	0a05a623          	sw	zero,172(a1) # 70ac <asinh-0x7fff8f54>
    8004985a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:28676 (discriminator 2)
    js_set_module_evaluated(ctx, module);
    8004985c:	e42e                	sd	a1,8(sp)
    8004985e:	cc1fb0ef          	jal	ra,8004551e <js_set_module_evaluated>
quickjs-nuttx/quickjs.c:28682 (discriminator 2)
    if (gather_available_ancestors(ctx, module, exec_list) < 0) {
    80049862:	65a2                	ld	a1,8(sp)
    80049864:	1010                	addi	a2,sp,32
    80049866:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:28678 (discriminator 2)
    exec_list->tab = NULL;
    80049868:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:28679 (discriminator 2)
    exec_list->count = 0;
    8004986a:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:28682 (discriminator 2)
    if (gather_available_ancestors(ctx, module, exec_list) < 0) {
    8004986c:	c32d30ef          	jal	ra,8001cc9e <gather_available_ancestors>
    80049870:	7782                	ld	a5,32(sp)
    80049872:	02055263          	bgez	a0,80049896 <js_async_module_execution_fulfilled+0x9e>
quickjs-nuttx/quickjs.c:28683
        js_free(ctx, exec_list->tab);
    80049876:	85be                	mv	a1,a5
    80049878:	8522                	mv	a0,s0
    8004987a:	f7cc10ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:28684
        return JS_EXCEPTION;
    8004987e:	4799                	li	a5,6
    80049880:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:28713
}
    80049882:	60aa                	ld	ra,136(sp)
    80049884:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:28712
    return JS_UNDEFINED;
    80049886:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:28713
}
    80049888:	6546                	ld	a0,80(sp)
    8004988a:	65e6                	ld	a1,88(sp)
    8004988c:	74e6                	ld	s1,120(sp)
    8004988e:	7946                	ld	s2,112(sp)
    80049890:	79a6                	ld	s3,104(sp)
    80049892:	6149                	addi	sp,sp,144
    80049894:	8082                	ret
quickjs-nuttx/quickjs.c:28688
    rqsort(exec_list->tab, exec_list->count, sizeof(exec_list->tab[0]),
    80049896:	55a2                	lw	a1,40(sp)
    80049898:	4701                	li	a4,0
    8004989a:	fffbe697          	auipc	a3,0xfffbe
    8004989e:	73c68693          	addi	a3,a3,1852 # 80007fd6 <exec_module_list_cmp>
    800498a2:	4621                	li	a2,8
    800498a4:	853e                	mv	a0,a5
    800498a6:	4aa080ef          	jal	ra,80051d50 <rqsort>
quickjs-nuttx/quickjs.c:28691
    for(i = 0; i < exec_list->count; i++) {
    800498aa:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:28693
        if (m->status == JS_MODULE_STATUS_EVALUATED) {
    800498ac:	4915                	li	s2,5
quickjs-nuttx/quickjs.c:28701
                js_async_module_execution_rejected(ctx, JS_UNDEFINED,
    800498ae:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:28691 (discriminator 1)
    for(i = 0; i < exec_list->count; i++) {
    800498b0:	57a2                	lw	a5,40(sp)
quickjs-nuttx/quickjs.c:28692 (discriminator 1)
        JSModuleDef *m = exec_list->tab[i];
    800498b2:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:28691 (discriminator 1)
    for(i = 0; i < exec_list->count; i++) {
    800498b4:	00f4c863          	blt	s1,a5,800498c4 <js_async_module_execution_fulfilled+0xcc>
quickjs-nuttx/quickjs.c:28711
    js_free(ctx, exec_list->tab);
    800498b8:	8522                	mv	a0,s0
    800498ba:	f3cc10ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:28712
    return JS_UNDEFINED;
    800498be:	e882                	sd	zero,80(sp)
    800498c0:	478d                	li	a5,3
    800498c2:	b7c1                	j	80049882 <js_async_module_execution_fulfilled+0x8a>
quickjs-nuttx/quickjs.c:28692
        JSModuleDef *m = exec_list->tab[i];
    800498c4:	00349793          	slli	a5,s1,0x3
    800498c8:	95be                	add	a1,a1,a5
    800498ca:	618c                	ld	a1,0(a1)
quickjs-nuttx/quickjs.c:28693
        if (m->status == JS_MODULE_STATUS_EVALUATED) {
    800498cc:	0835c783          	lbu	a5,131(a1)
    800498d0:	01279963          	bne	a5,s2,800498e2 <js_async_module_execution_fulfilled+0xea>
quickjs-nuttx/quickjs.c:28694
            assert(m->eval_has_exception);
    800498d4:	0f05c783          	lbu	a5,240(a1)
    800498d8:	eb99                	bnez	a5,800498ee <js_async_module_execution_fulfilled+0xf6>
quickjs-nuttx/quickjs.c:28694 (discriminator 1)
    800498da:	659d                	lui	a1,0x7
    800498dc:	4601                	li	a2,0
    800498de:	05d9                	addi	a1,a1,22
    800498e0:	b789                	j	80049822 <js_async_module_execution_fulfilled+0x2a>
quickjs-nuttx/quickjs.c:28695
        } else if (m->has_tla) {
    800498e2:	0805c783          	lbu	a5,128(a1) # 7080 <asinh-0x7fff8f80>
    800498e6:	c791                	beqz	a5,800498f2 <js_async_module_execution_fulfilled+0xfa>
quickjs-nuttx/quickjs.c:28696
            js_execute_async_module(ctx, m);
    800498e8:	8522                	mv	a0,s0
    800498ea:	e59ff0ef          	jal	ra,80049742 <js_execute_async_module.isra.0>
quickjs-nuttx/quickjs.c:28691 (discriminator 2)
    for(i = 0; i < exec_list->count; i++) {
    800498ee:	2485                	addiw	s1,s1,1
    800498f0:	b7c1                	j	800498b0 <js_async_module_execution_fulfilled+0xb8>
quickjs-nuttx/quickjs.c:28699
            if (js_execute_sync_module(ctx, m, &error) < 0) {
    800498f2:	1810                	addi	a2,sp,48
    800498f4:	8522                	mv	a0,s0
    800498f6:	e42e                	sd	a1,8(sp)
    800498f8:	d97ff0ef          	jal	ra,8004968e <js_execute_sync_module>
    800498fc:	65a2                	ld	a1,8(sp)
    800498fe:	02055e63          	bgez	a0,8004993a <js_async_module_execution_fulfilled+0x142>
quickjs-nuttx/quickjs.c:28700
                JSValue m_obj = JS_NewModuleValue(ctx, m);
    80049902:	8522                	mv	a0,s0
    80049904:	c4bc00ef          	jal	ra,8000a54e <JS_NewModuleValue>
    80049908:	e0aa                	sd	a0,64(sp)
    8004990a:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:28701
                js_async_module_execution_rejected(ctx, JS_UNDEFINED,
    8004990c:	04010813          	addi	a6,sp,64
    80049910:	4781                	li	a5,0
    80049912:	1818                	addi	a4,sp,48
    80049914:	4685                	li	a3,1
    80049916:	460d                	li	a2,3
    80049918:	8522                	mv	a0,s0
    8004991a:	4581                	li	a1,0
    8004991c:	e882                	sd	zero,80(sp)
    8004991e:	ecce                	sd	s3,88(sp)
    80049920:	a97fb0ef          	jal	ra,800453b6 <js_async_module_execution_rejected>
quickjs-nuttx/quickjs.c:28704
                JS_FreeValue(ctx, m_obj);
    80049924:	6586                	ld	a1,64(sp)
    80049926:	6626                	ld	a2,72(sp)
    80049928:	8522                	mv	a0,s0
    8004992a:	e75c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28705
                JS_FreeValue(ctx, error);
    8004992e:	75c2                	ld	a1,48(sp)
    80049930:	7662                	ld	a2,56(sp)
    80049932:	8522                	mv	a0,s0
    80049934:	e6bc10ef          	jal	ra,8000b79e <JS_FreeValue>
    80049938:	bf5d                	j	800498ee <js_async_module_execution_fulfilled+0xf6>
quickjs-nuttx/quickjs.c:28707
                js_set_module_evaluated(ctx, m);
    8004993a:	8522                	mv	a0,s0
    8004993c:	be3fb0ef          	jal	ra,8004551e <js_set_module_evaluated>
    80049940:	b77d                	j	800498ee <js_async_module_execution_fulfilled+0xf6>

0000000080049942 <js_inner_module_evaluation>:
js_inner_module_evaluation():
quickjs-nuttx/quickjs.c:28773
{
    80049942:	711d                	addi	sp,sp,-96
    80049944:	e8a2                	sd	s0,80(sp)
    80049946:	e0ca                	sd	s2,64(sp)
    80049948:	f456                	sd	s5,40(sp)
    8004994a:	ec86                	sd	ra,88(sp)
    8004994c:	e4a6                	sd	s1,72(sp)
    8004994e:	fc4e                	sd	s3,56(sp)
    80049950:	f852                	sd	s4,48(sp)
    80049952:	f05a                	sd	s6,32(sp)
    80049954:	ec5e                	sd	s7,24(sp)
    80049956:	e862                	sd	s8,16(sp)
    80049958:	e466                	sd	s9,8(sp)
    8004995a:	e06a                	sd	s10,0(sp)
    8004995c:	1080                	addi	s0,sp,96
quickjs-nuttx/quickjs.c:28777
    if (js_check_stack_overflow(ctx->rt, 0)) {
    8004995e:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:28773
{
    80049960:	8aaa                	mv	s5,a0
    80049962:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:28777
    if (js_check_stack_overflow(ctx->rt, 0)) {
    80049964:	6ffc                	ld	a5,216(a5)
    80049966:	00f47863          	bgeu	s0,a5,80049976 <js_inner_module_evaluation+0x34>
quickjs-nuttx/quickjs.c:28778
        JS_ThrowStackOverflow(ctx);
    8004996a:	fb9cf0ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:28839
                *pvalue = JS_GetException(ctx);
    8004996e:	8556                	mv	a0,s5
    80049970:	b1fc40ef          	jal	ra,8000e48e <JS_GetException>
    80049974:	a035                	j	800499a0 <js_inner_module_evaluation+0x5e>
quickjs-nuttx/quickjs.c:28790
    if (m->status == JS_MODULE_STATUS_EVALUATING_ASYNC ||
    80049976:	0835c783          	lbu	a5,131(a1)
    8004997a:	8b36                	mv	s6,a3
    8004997c:	4685                	li	a3,1
    8004997e:	ffc7871b          	addiw	a4,a5,-4
    80049982:	0ff77713          	zext.b	a4,a4
    80049986:	84ae                	mv	s1,a1
    80049988:	89b2                	mv	s3,a2
    8004998a:	02e6e063          	bltu	a3,a4,800499aa <js_inner_module_evaluation+0x68>
quickjs-nuttx/quickjs.c:28792
        if (m->eval_has_exception) {
    8004998e:	0f05c783          	lbu	a5,240(a1)
    80049992:	20078363          	beqz	a5,80049b98 <js_inner_module_evaluation+0x256>
quickjs-nuttx/quickjs.c:28793
            *pvalue = JS_DupValue(ctx, m->eval_exception);
    80049996:	7de8                	ld	a0,248(a1)
    80049998:	1005b583          	ld	a1,256(a1)
quickjs-nuttx/quickjs.c:28832
                *pvalue = JS_DupValue(ctx, m1->eval_exception);
    8004999c:	a7fc00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:28839
                *pvalue = JS_GetException(ctx);
    800499a0:	00a93023          	sd	a0,0(s2)
    800499a4:	00b93423          	sd	a1,8(s2)
    800499a8:	a841                	j	80049a38 <js_inner_module_evaluation+0xf6>
quickjs-nuttx/quickjs.c:28800
    if (m->status == JS_MODULE_STATUS_EVALUATING) {
    800499aa:	470d                	li	a4,3
    800499ac:	00e79763          	bne	a5,a4,800499ba <js_inner_module_evaluation+0x78>
quickjs-nuttx/quickjs.c:28801
        *pvalue = JS_UNDEFINED;
    800499b0:	00093023          	sd	zero,0(s2)
quickjs-nuttx/quickjs.c:28879
    *pvalue = JS_UNDEFINED;
    800499b4:	00f93423          	sd	a5,8(s2)
quickjs-nuttx/quickjs.c:28880
    return index;
    800499b8:	a049                	j	80049a3a <js_inner_module_evaluation+0xf8>
quickjs-nuttx/quickjs.c:28804
    assert(m->status == JS_MODULE_STATUS_LINKED);
    800499ba:	4689                	li	a3,2
    800499bc:	00d78c63          	beq	a5,a3,800499d4 <js_inner_module_evaluation+0x92>
quickjs-nuttx/quickjs.c:28804 (discriminator 1)
    800499c0:	659d                	lui	a1,0x7
    800499c2:	4601                	li	a2,0
    800499c4:	08458593          	addi	a1,a1,132 # 7084 <asinh-0x7fff8f7c>
quickjs-nuttx/quickjs.c:28821 (discriminator 1)
        assert(m1->status == JS_MODULE_STATUS_EVALUATING ||
    800499c8:	00020517          	auipc	a0,0x20
    800499cc:	bd050513          	addi	a0,a0,-1072 # 80069598 <qjsc_repl+0x3fe8>
    800499d0:	78d160ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:28806 (discriminator 2)
    m->status = JS_MODULE_STATUS_EVALUATING;
    800499d4:	08e581a3          	sb	a4,131(a1)
quickjs-nuttx/quickjs.c:28807 (discriminator 2)
    m->dfs_index = index;
    800499d8:	08c4a223          	sw	a2,132(s1)
quickjs-nuttx/quickjs.c:28808 (discriminator 2)
    m->dfs_ancestor_index = index;
    800499dc:	08c4a423          	sw	a2,136(s1)
quickjs-nuttx/quickjs.c:28809 (discriminator 2)
    m->pending_async_dependencies = 0;
    800499e0:	0a05a423          	sw	zero,168(a1)
quickjs-nuttx/quickjs.c:28812 (discriminator 2)
    m->stack_prev = *pstack_top;
    800499e4:	000b3783          	ld	a5,0(s6) # 4000 <asinh-0x7fffc000>
quickjs-nuttx/quickjs.c:28810 (discriminator 2)
    index++;
    800499e8:	0016099b          	addiw	s3,a2,1
quickjs-nuttx/quickjs.c:28815 (discriminator 2)
    for(i = 0; i < m->req_module_entries_count; i++) {
    800499ec:	4d01                	li	s10,0
quickjs-nuttx/quickjs.c:28812 (discriminator 2)
    m->stack_prev = *pstack_top;
    800499ee:	e9dc                	sd	a5,144(a1)
quickjs-nuttx/quickjs.c:28813 (discriminator 2)
    *pstack_top = m;
    800499f0:	00bb3023          	sd	a1,0(s6)
quickjs-nuttx/quickjs.c:28821 (discriminator 2)
        assert(m1->status == JS_MODULE_STATUS_EVALUATING ||
    800499f4:	4b89                	li	s7,2
quickjs-nuttx/quickjs.c:28824 (discriminator 2)
        if (m1->status == JS_MODULE_STATUS_EVALUATING) {
    800499f6:	4c0d                	li	s8,3
quickjs-nuttx/quickjs.c:28829 (discriminator 2)
            assert(m1->status == JS_MODULE_STATUS_EVALUATING_ASYNC ||
    800499f8:	4c85                	li	s9,1
quickjs-nuttx/quickjs.c:28815 (discriminator 1)
    for(i = 0; i < m->req_module_entries_count; i++) {
    800499fa:	509c                	lw	a5,32(s1)
    800499fc:	00fd4e63          	blt	s10,a5,80049a18 <js_inner_module_evaluation+0xd6>
quickjs-nuttx/quickjs.c:28846
    if (m->pending_async_dependencies > 0) {
    80049a00:	0a84a783          	lw	a5,168(s1)
    80049a04:	12f05563          	blez	a5,80049b2e <js_inner_module_evaluation+0x1ec>
quickjs-nuttx/quickjs.c:28847
        assert(!m->async_evaluation);
    80049a08:	0ac4a783          	lw	a5,172(s1)
    80049a0c:	cbf5                	beqz	a5,80049b00 <js_inner_module_evaluation+0x1be>
quickjs-nuttx/quickjs.c:28847 (discriminator 1)
    80049a0e:	659d                	lui	a1,0x7
    80049a10:	4601                	li	a2,0
    80049a12:	0af58593          	addi	a1,a1,175 # 70af <asinh-0x7fff8f51>
    80049a16:	bf4d                	j	800499c8 <js_inner_module_evaluation+0x86>
quickjs-nuttx/quickjs.c:28817
        m1 = rme->module;
    80049a18:	6c9c                	ld	a5,24(s1)
    80049a1a:	004d1713          	slli	a4,s10,0x4
quickjs-nuttx/quickjs.c:28818
        index = js_inner_module_evaluation(ctx, m1, index, pstack_top, pvalue);
    80049a1e:	864e                	mv	a2,s3
quickjs-nuttx/quickjs.c:28817
        m1 = rme->module;
    80049a20:	97ba                	add	a5,a5,a4
    80049a22:	0087ba03          	ld	s4,8(a5)
quickjs-nuttx/quickjs.c:28818
        index = js_inner_module_evaluation(ctx, m1, index, pstack_top, pvalue);
    80049a26:	874a                	mv	a4,s2
    80049a28:	86da                	mv	a3,s6
    80049a2a:	85d2                	mv	a1,s4
    80049a2c:	8556                	mv	a0,s5
    80049a2e:	f15ff0ef          	jal	ra,80049942 <js_inner_module_evaluation>
    80049a32:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:28819
        if (index < 0) 
    80049a34:	02055263          	bgez	a0,80049a58 <js_inner_module_evaluation+0x116>
quickjs-nuttx/quickjs.c:28840
                return -1;
    80049a38:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:28881 (discriminator 1)
}
    80049a3a:	60e6                	ld	ra,88(sp)
    80049a3c:	6446                	ld	s0,80(sp)
    80049a3e:	64a6                	ld	s1,72(sp)
    80049a40:	6906                	ld	s2,64(sp)
    80049a42:	7a42                	ld	s4,48(sp)
    80049a44:	7aa2                	ld	s5,40(sp)
    80049a46:	7b02                	ld	s6,32(sp)
    80049a48:	6be2                	ld	s7,24(sp)
    80049a4a:	6c42                	ld	s8,16(sp)
    80049a4c:	6ca2                	ld	s9,8(sp)
    80049a4e:	6d02                	ld	s10,0(sp)
    80049a50:	854e                	mv	a0,s3
    80049a52:	79e2                	ld	s3,56(sp)
    80049a54:	6125                	addi	sp,sp,96
    80049a56:	8082                	ret
quickjs-nuttx/quickjs.c:28821
        assert(m1->status == JS_MODULE_STATUS_EVALUATING ||
    80049a58:	083a4703          	lbu	a4,131(s4)
    80049a5c:	ffd7079b          	addiw	a5,a4,-3
    80049a60:	0ff7f793          	zext.b	a5,a5
    80049a64:	00fbf763          	bgeu	s7,a5,80049a72 <js_inner_module_evaluation+0x130>
quickjs-nuttx/quickjs.c:28821 (discriminator 1)
    80049a68:	659d                	lui	a1,0x7
    80049a6a:	4601                	li	a2,0
    80049a6c:	09558593          	addi	a1,a1,149 # 7095 <asinh-0x7fff8f6b>
    80049a70:	bfa1                	j	800499c8 <js_inner_module_evaluation+0x86>
quickjs-nuttx/quickjs.c:28824 (discriminator 2)
        if (m1->status == JS_MODULE_STATUS_EVALUATING) {
    80049a72:	07871163          	bne	a4,s8,80049ad4 <js_inner_module_evaluation+0x192>
quickjs-nuttx/quickjs.c:28825
            m->dfs_ancestor_index = min_int(m->dfs_ancestor_index,
    80049a76:	088a2703          	lw	a4,136(s4)
    80049a7a:	0884a783          	lw	a5,136(s1)
    80049a7e:	0007069b          	sext.w	a3,a4
    80049a82:	0007861b          	sext.w	a2,a5
    80049a86:	00c6d363          	bge	a3,a2,80049a8c <js_inner_module_evaluation+0x14a>
    80049a8a:	87ba                	mv	a5,a4
    80049a8c:	08f4a423          	sw	a5,136(s1)
quickjs-nuttx/quickjs.c:28836
        if (m1->async_evaluation) {
    80049a90:	0aca2783          	lw	a5,172(s4)
    80049a94:	cf95                	beqz	a5,80049ad0 <js_inner_module_evaluation+0x18e>
quickjs-nuttx/quickjs.c:28837
            m->pending_async_dependencies++;
    80049a96:	0a84a783          	lw	a5,168(s1)
quickjs-nuttx/quickjs.c:28838
            if (js_resize_array(ctx, (void **)&m1->async_parent_modules, sizeof(m1->async_parent_modules[0]), &m1->async_parent_modules_size, m1->async_parent_modules_count + 1)) {
    80049a9a:	0a4a0693          	addi	a3,s4,164
    80049a9e:	4621                	li	a2,8
quickjs-nuttx/quickjs.c:28837
            m->pending_async_dependencies++;
    80049aa0:	2785                	addiw	a5,a5,1
    80049aa2:	0af4a423          	sw	a5,168(s1)
quickjs-nuttx/quickjs.c:28838
            if (js_resize_array(ctx, (void **)&m1->async_parent_modules, sizeof(m1->async_parent_modules[0]), &m1->async_parent_modules_size, m1->async_parent_modules_count + 1)) {
    80049aa6:	0a0a2703          	lw	a4,160(s4)
    80049aaa:	098a0593          	addi	a1,s4,152
    80049aae:	8556                	mv	a0,s5
    80049ab0:	2705                	addiw	a4,a4,1
    80049ab2:	efbd20ef          	jal	ra,8001c9ac <js_resize_array>
    80049ab6:	ea051ce3          	bnez	a0,8004996e <js_inner_module_evaluation+0x2c>
quickjs-nuttx/quickjs.c:28842
            m1->async_parent_modules[m1->async_parent_modules_count++] = m;
    80049aba:	0a0a2783          	lw	a5,160(s4)
    80049abe:	098a3703          	ld	a4,152(s4)
    80049ac2:	0017869b          	addiw	a3,a5,1
    80049ac6:	078e                	slli	a5,a5,0x3
    80049ac8:	0ada2023          	sw	a3,160(s4)
    80049acc:	97ba                	add	a5,a5,a4
    80049ace:	e384                	sd	s1,0(a5)
quickjs-nuttx/quickjs.c:28815 (discriminator 2)
    for(i = 0; i < m->req_module_entries_count; i++) {
    80049ad0:	2d05                	addiw	s10,s10,1
    80049ad2:	b725                	j	800499fa <js_inner_module_evaluation+0xb8>
quickjs-nuttx/quickjs.c:28828
            m1 = m1->cycle_root;
    80049ad4:	0b8a3a03          	ld	s4,184(s4)
quickjs-nuttx/quickjs.c:28829
            assert(m1->status == JS_MODULE_STATUS_EVALUATING_ASYNC ||
    80049ad8:	083a4783          	lbu	a5,131(s4)
    80049adc:	37f1                	addiw	a5,a5,-4
    80049ade:	0ff7f793          	zext.b	a5,a5
    80049ae2:	00fcf763          	bgeu	s9,a5,80049af0 <js_inner_module_evaluation+0x1ae>
quickjs-nuttx/quickjs.c:28829 (discriminator 1)
    80049ae6:	659d                	lui	a1,0x7
    80049ae8:	4601                	li	a2,0
    80049aea:	09d58593          	addi	a1,a1,157 # 709d <asinh-0x7fff8f63>
    80049aee:	bde9                	j	800499c8 <js_inner_module_evaluation+0x86>
quickjs-nuttx/quickjs.c:28831 (discriminator 2)
            if (m1->eval_has_exception) {
    80049af0:	0f0a4783          	lbu	a5,240(s4)
    80049af4:	dfd1                	beqz	a5,80049a90 <js_inner_module_evaluation+0x14e>
quickjs-nuttx/quickjs.c:28832
                *pvalue = JS_DupValue(ctx, m1->eval_exception);
    80049af6:	0f8a3503          	ld	a0,248(s4)
    80049afa:	100a3583          	ld	a1,256(s4)
    80049afe:	bd79                	j	8004999c <js_inner_module_evaluation+0x5a>
quickjs-nuttx/quickjs.c:28848 (discriminator 2)
        m->async_evaluation = TRUE;
    80049b00:	4785                	li	a5,1
    80049b02:	0af4a623          	sw	a5,172(s1)
quickjs-nuttx/quickjs.c:28850 (discriminator 2)
            ctx->rt->module_async_evaluation_next_timestamp++;
    80049b06:	018ab703          	ld	a4,24(s5)
    80049b0a:	14873783          	ld	a5,328(a4)
    80049b0e:	00178693          	addi	a3,a5,1
    80049b12:	14d73423          	sd	a3,328(a4)
quickjs-nuttx/quickjs.c:28849 (discriminator 2)
        m->async_evaluation_timestamp =
    80049b16:	f8dc                	sd	a5,176(s1)
quickjs-nuttx/quickjs.c:28862
    assert(m->dfs_ancestor_index <= m->dfs_index);
    80049b18:	0884a703          	lw	a4,136(s1)
    80049b1c:	0844a783          	lw	a5,132(s1)
    80049b20:	04e7db63          	bge	a5,a4,80049b76 <js_inner_module_evaluation+0x234>
quickjs-nuttx/quickjs.c:28862 (discriminator 1)
    80049b24:	659d                	lui	a1,0x7
    80049b26:	4601                	li	a2,0
    80049b28:	0be58593          	addi	a1,a1,190 # 70be <asinh-0x7fff8f42>
    80049b2c:	bd71                	j	800499c8 <js_inner_module_evaluation+0x86>
quickjs-nuttx/quickjs.c:28851
    } else if (m->has_tla) {
    80049b2e:	0804c783          	lbu	a5,128(s1)
    80049b32:	cb95                	beqz	a5,80049b66 <js_inner_module_evaluation+0x224>
quickjs-nuttx/quickjs.c:28852
        assert(!m->async_evaluation);
    80049b34:	0ac4a783          	lw	a5,172(s1)
    80049b38:	c791                	beqz	a5,80049b44 <js_inner_module_evaluation+0x202>
quickjs-nuttx/quickjs.c:28852 (discriminator 1)
    80049b3a:	659d                	lui	a1,0x7
    80049b3c:	4601                	li	a2,0
    80049b3e:	0b458593          	addi	a1,a1,180 # 70b4 <asinh-0x7fff8f4c>
    80049b42:	b559                	j	800499c8 <js_inner_module_evaluation+0x86>
quickjs-nuttx/quickjs.c:28853 (discriminator 2)
        m->async_evaluation = TRUE;
    80049b44:	4785                	li	a5,1
    80049b46:	0af4a623          	sw	a5,172(s1)
quickjs-nuttx/quickjs.c:28855 (discriminator 2)
            ctx->rt->module_async_evaluation_next_timestamp++;
    80049b4a:	018ab703          	ld	a4,24(s5)
quickjs-nuttx/quickjs.c:28856 (discriminator 2)
        js_execute_async_module(ctx, m);
    80049b4e:	85a6                	mv	a1,s1
    80049b50:	8556                	mv	a0,s5
quickjs-nuttx/quickjs.c:28855 (discriminator 2)
            ctx->rt->module_async_evaluation_next_timestamp++;
    80049b52:	14873783          	ld	a5,328(a4)
    80049b56:	00178693          	addi	a3,a5,1
    80049b5a:	14d73423          	sd	a3,328(a4)
quickjs-nuttx/quickjs.c:28854 (discriminator 2)
        m->async_evaluation_timestamp =
    80049b5e:	f8dc                	sd	a5,176(s1)
quickjs-nuttx/quickjs.c:28856 (discriminator 2)
        js_execute_async_module(ctx, m);
    80049b60:	be3ff0ef          	jal	ra,80049742 <js_execute_async_module.isra.0>
    80049b64:	bf55                	j	80049b18 <js_inner_module_evaluation+0x1d6>
quickjs-nuttx/quickjs.c:28858
        if (js_execute_sync_module(ctx, m, pvalue) < 0)
    80049b66:	864a                	mv	a2,s2
    80049b68:	85a6                	mv	a1,s1
    80049b6a:	8556                	mv	a0,s5
    80049b6c:	b23ff0ef          	jal	ra,8004968e <js_execute_sync_module>
    80049b70:	fa0554e3          	bgez	a0,80049b18 <js_inner_module_evaluation+0x1d6>
    80049b74:	b5d1                	j	80049a38 <js_inner_module_evaluation+0xf6>
quickjs-nuttx/quickjs.c:28863 (discriminator 2)
    if (m->dfs_index == m->dfs_ancestor_index) {
    80049b76:	02f71163          	bne	a4,a5,80049b98 <js_inner_module_evaluation+0x256>
quickjs-nuttx/quickjs.c:28866
            m1 = *pstack_top;
    80049b7a:	000b3783          	ld	a5,0(s6)
quickjs-nuttx/quickjs.c:28867
            *pstack_top = m1->stack_prev;
    80049b7e:	6bd8                	ld	a4,144(a5)
    80049b80:	00eb3023          	sd	a4,0(s6)
quickjs-nuttx/quickjs.c:28868
            if (!m1->async_evaluation) {
    80049b84:	0ac7a703          	lw	a4,172(a5)
quickjs-nuttx/quickjs.c:28874
            m1->cycle_root = m;
    80049b88:	ffc4                	sd	s1,184(a5)
quickjs-nuttx/quickjs.c:28871
                m1->status = JS_MODULE_STATUS_EVALUATING_ASYNC;
    80049b8a:	00173713          	seqz	a4,a4
    80049b8e:	0711                	addi	a4,a4,4
    80049b90:	08e781a3          	sb	a4,131(a5)
quickjs-nuttx/quickjs.c:28875
            if (m1 == m)
    80049b94:	fef493e3          	bne	s1,a5,80049b7a <js_inner_module_evaluation+0x238>
quickjs-nuttx/quickjs.c:28879
    *pvalue = JS_UNDEFINED;
    80049b98:	00093023          	sd	zero,0(s2)
    80049b9c:	478d                	li	a5,3
    80049b9e:	bd19                	j	800499b4 <js_inner_module_evaluation+0x72>

0000000080049ba0 <JS_EvalFunctionInternal>:
JS_EvalFunctionInternal():
quickjs-nuttx/quickjs.c:34225
{
    80049ba0:	7171                	addi	sp,sp,-176
    80049ba2:	ed26                	sd	s1,152(sp)
    80049ba4:	e036                	sd	a3,0(sp)
    80049ba6:	f506                	sd	ra,168(sp)
    80049ba8:	86be                	mv	a3,a5
    80049baa:	f122                	sd	s0,160(sp)
    80049bac:	e94a                	sd	s2,144(sp)
    80049bae:	e54e                	sd	s3,136(sp)
    80049bb0:	e152                	sd	s4,128(sp)
    80049bb2:	fcd6                	sd	s5,120(sp)
    80049bb4:	e82e                	sd	a1,16(sp)
    80049bb6:	ec32                	sd	a2,24(sp)
    80049bb8:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:34229
    tag = JS_VALUE_GET_TAG(fun_obj);
    80049bba:	0006089b          	sext.w	a7,a2
quickjs-nuttx/quickjs.c:34230
    if (tag == JS_TAG_FUNCTION_BYTECODE) {
    80049bbe:	57f9                	li	a5,-2
quickjs-nuttx/quickjs.c:34225
{
    80049bc0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:34230
    if (tag == JS_TAG_FUNCTION_BYTECODE) {
    80049bc2:	02f89063          	bne	a7,a5,80049be2 <JS_EvalFunctionInternal+0x42>
    80049bc6:	8742                	mv	a4,a6
quickjs-nuttx/quickjs.c:34231
        fun_obj = js_closure(ctx, fun_obj, var_refs, sf);
    80049bc8:	8a4e70ef          	jal	ra,80030c6c <js_closure>
quickjs-nuttx/quickjs.c:34232
        ret_val = JS_CallFree(ctx, fun_obj, this_obj, 0, NULL);
    80049bcc:	6682                	ld	a3,0(sp)
    80049bce:	6722                	ld	a4,8(sp)
quickjs-nuttx/quickjs.c:34231
        fun_obj = js_closure(ctx, fun_obj, var_refs, sf);
    80049bd0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:34232
        ret_val = JS_CallFree(ctx, fun_obj, this_obj, 0, NULL);
    80049bd2:	4801                	li	a6,0
    80049bd4:	85aa                	mv	a1,a0
    80049bd6:	4781                	li	a5,0
    80049bd8:	8526                	mv	a0,s1
    80049bda:	e9bcc0ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:34249
        ret_val = JS_ThrowTypeError(ctx, "bytecode function expected");
    80049bde:	e0aa                	sd	a0,64(sp)
    80049be0:	a0fd                	j	80049cce <JS_EvalFunctionInternal+0x12e>
quickjs-nuttx/quickjs.c:34233
    } else if (tag == JS_TAG_MODULE) {
    80049be2:	57f5                	li	a5,-3
    80049be4:	20f89f63          	bne	a7,a5,80049e02 <JS_EvalFunctionInternal+0x262>
quickjs-nuttx/quickjs.c:34235
        m = JS_VALUE_GET_PTR(fun_obj);
    80049be8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:34237
        JS_FreeValue(ctx, fun_obj);
    80049bea:	bb5c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:34238
        if (js_create_module_function(ctx, m) < 0)
    80049bee:	85a2                	mv	a1,s0
    80049bf0:	8526                	mv	a0,s1
    80049bf2:	c42d20ef          	jal	ra,8001c034 <js_create_module_function>
    80049bf6:	04054463          	bltz	a0,80049c3e <JS_EvalFunctionInternal+0x9e>
js_link_module():
quickjs-nuttx/quickjs.c:28269
    assert(m->status == JS_MODULE_STATUS_UNLINKED ||
    80049bfa:	08344783          	lbu	a5,131(s0)
    80049bfe:	0fd7f713          	andi	a4,a5,253
    80049c02:	c30d                	beqz	a4,80049c24 <JS_EvalFunctionInternal+0x84>
    80049c04:	37f1                	addiw	a5,a5,-4
    80049c06:	0ff7f793          	zext.b	a5,a5
    80049c0a:	4705                	li	a4,1
    80049c0c:	00f77c63          	bgeu	a4,a5,80049c24 <JS_EvalFunctionInternal+0x84>
    80049c10:	659d                	lui	a1,0x7
    80049c12:	4601                	li	a2,0
    80049c14:	e6d58593          	addi	a1,a1,-403 # 6e6d <asinh-0x7fff9193>
quickjs-nuttx/quickjs.c:28277
            assert(m1->status == JS_MODULE_STATUS_LINKING);
    80049c18:	00020517          	auipc	a0,0x20
    80049c1c:	98050513          	addi	a0,a0,-1664 # 80069598 <qjsc_repl+0x3fe8>
    80049c20:	53d160ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:28274
    if (js_inner_module_linking(ctx, m, &stack_top, 0) < 0) {
    80049c24:	4681                	li	a3,0
    80049c26:	1090                	addi	a2,sp,96
    80049c28:	85a2                	mv	a1,s0
    80049c2a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:28273
    stack_top = NULL;
    80049c2c:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:28274
    if (js_inner_module_linking(ctx, m, &stack_top, 0) < 0) {
    80049c2e:	c82fb0ef          	jal	ra,800450b0 <js_inner_module_linking>
    80049c32:	7786                	ld	a5,96(sp)
    80049c34:	04055363          	bgez	a0,80049c7a <JS_EvalFunctionInternal+0xda>
    80049c38:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:28277
            assert(m1->status == JS_MODULE_STATUS_LINKING);
    80049c3a:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:28275
        while (stack_top != NULL) {
    80049c3c:	ef99                	bnez	a5,80049c5a <JS_EvalFunctionInternal+0xba>
JS_EvalFunctionInternal():
quickjs-nuttx/quickjs.c:34245
            return JS_EXCEPTION;
    80049c3e:	4799                	li	a5,6
    80049c40:	e882                	sd	zero,80(sp)
    80049c42:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:34252 (discriminator 1)
}
    80049c44:	70aa                	ld	ra,168(sp)
    80049c46:	740a                	ld	s0,160(sp)
    80049c48:	6546                	ld	a0,80(sp)
    80049c4a:	65e6                	ld	a1,88(sp)
    80049c4c:	64ea                	ld	s1,152(sp)
    80049c4e:	694a                	ld	s2,144(sp)
    80049c50:	69aa                	ld	s3,136(sp)
    80049c52:	6a0a                	ld	s4,128(sp)
    80049c54:	7ae6                	ld	s5,120(sp)
    80049c56:	614d                	addi	sp,sp,176
    80049c58:	8082                	ret
js_link_module():
quickjs-nuttx/quickjs.c:28277
            assert(m1->status == JS_MODULE_STATUS_LINKING);
    80049c5a:	0837c603          	lbu	a2,131(a5)
    80049c5e:	00d60963          	beq	a2,a3,80049c70 <JS_EvalFunctionInternal+0xd0>
    80049c62:	c311                	beqz	a4,80049c66 <JS_EvalFunctionInternal+0xc6>
    80049c64:	f0be                	sd	a5,96(sp)
    80049c66:	659d                	lui	a1,0x7
    80049c68:	4601                	li	a2,0
    80049c6a:	e7558593          	addi	a1,a1,-395 # 6e75 <asinh-0x7fff918b>
    80049c6e:	b76d                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28278
            m1->status = JS_MODULE_STATUS_UNLINKED;
    80049c70:	080781a3          	sb	zero,131(a5)
quickjs-nuttx/quickjs.c:28279
            stack_top = m1->stack_prev;
    80049c74:	4705                	li	a4,1
    80049c76:	6bdc                	ld	a5,144(a5)
    80049c78:	b7d1                	j	80049c3c <JS_EvalFunctionInternal+0x9c>
quickjs-nuttx/quickjs.c:28283
    assert(stack_top == NULL);
    80049c7a:	c791                	beqz	a5,80049c86 <JS_EvalFunctionInternal+0xe6>
    80049c7c:	659d                	lui	a1,0x7
    80049c7e:	4601                	li	a2,0
    80049c80:	e7b58593          	addi	a1,a1,-389 # 6e7b <asinh-0x7fff9185>
    80049c84:	bf51                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28284
    assert(m->status == JS_MODULE_STATUS_LINKED ||
    80049c86:	08344783          	lbu	a5,131(s0)
    80049c8a:	4709                	li	a4,2
    80049c8c:	18e78663          	beq	a5,a4,80049e18 <JS_EvalFunctionInternal+0x278>
    80049c90:	37f1                	addiw	a5,a5,-4
    80049c92:	0ff7f793          	zext.b	a5,a5
    80049c96:	4705                	li	a4,1
    80049c98:	16f77f63          	bgeu	a4,a5,80049e16 <JS_EvalFunctionInternal+0x276>
    80049c9c:	659d                	lui	a1,0x7
    80049c9e:	4601                	li	a2,0
    80049ca0:	e7c58593          	addi	a1,a1,-388 # 6e7c <asinh-0x7fff9184>
    80049ca4:	bf95                	j	80049c18 <JS_EvalFunctionInternal+0x78>
js_evaluate_module():
quickjs-nuttx/quickjs.c:28900
    m->promise = JS_NewPromiseCapability(ctx, m->resolving_funcs);
    80049ca6:	0d040593          	addi	a1,s0,208
    80049caa:	8526                	mv	a0,s1
    80049cac:	ab6c50ef          	jal	ra,8000ef62 <JS_NewPromiseCapability>
    80049cb0:	e46c                	sd	a1,200(s0)
    80049cb2:	e068                	sd	a0,192(s0)
quickjs-nuttx/quickjs.c:28901
    if (JS_IsException(m->promise))
    80049cb4:	2581                	sext.w	a1,a1
    80049cb6:	4799                	li	a5,6
    80049cb8:	00f59f63          	bne	a1,a5,80049cd6 <JS_EvalFunctionInternal+0x136>
quickjs-nuttx/quickjs.c:28902
        return JS_EXCEPTION;
    80049cbc:	f082                	sd	zero,96(sp)
    80049cbe:	4599                	li	a1,6
    80049cc0:	7786                	ld	a5,96(sp)
JS_EvalFunctionInternal():
quickjs-nuttx/quickjs.c:34243
        if (JS_IsException(ret_val)) {
    80049cc2:	4719                	li	a4,6
    80049cc4:	e0be                	sd	a5,64(sp)
    80049cc6:	0005879b          	sext.w	a5,a1
    80049cca:	f6e78ae3          	beq	a5,a4,80049c3e <JS_EvalFunctionInternal+0x9e>
quickjs-nuttx/quickjs.c:34251
    return ret_val;
    80049cce:	6786                	ld	a5,64(sp)
    80049cd0:	ecae                	sd	a1,88(sp)
    80049cd2:	e8be                	sd	a5,80(sp)
    80049cd4:	bf85                	j	80049c44 <JS_EvalFunctionInternal+0xa4>
js_evaluate_module():
quickjs-nuttx/quickjs.c:28905
    if (js_inner_module_evaluation(ctx, m, 0, &stack_top, &result) < 0) {
    80049cd6:	0098                	addi	a4,sp,64
    80049cd8:	1034                	addi	a3,sp,40
    80049cda:	4601                	li	a2,0
    80049cdc:	85a2                	mv	a1,s0
    80049cde:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:28904
    stack_top = NULL;
    80049ce0:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:28905
    if (js_inner_module_evaluation(ctx, m, 0, &stack_top, &result) < 0) {
    80049ce2:	c61ff0ef          	jal	ra,80049942 <js_inner_module_evaluation>
    80049ce6:	0a055163          	bgez	a0,80049d88 <JS_EvalFunctionInternal+0x1e8>
quickjs-nuttx/quickjs.c:28908
            assert(m1->status == JS_MODULE_STATUS_EVALUATING);
    80049cea:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:28909
            m1->status = JS_MODULE_STATUS_EVALUATED;
    80049cec:	4a15                	li	s4,5
quickjs-nuttx/quickjs.c:28910
            m1->eval_has_exception = TRUE;
    80049cee:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:28906
        while (stack_top != NULL) {
    80049cf0:	7922                	ld	s2,40(sp)
    80049cf2:	02091163          	bnez	s2,80049d14 <JS_EvalFunctionInternal+0x174>
quickjs-nuttx/quickjs.c:28915
        JS_FreeValue(ctx, result);
    80049cf6:	6586                	ld	a1,64(sp)
    80049cf8:	6626                	ld	a2,72(sp)
    80049cfa:	8526                	mv	a0,s1
    80049cfc:	aa3c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28916
        assert(m->status == JS_MODULE_STATUS_EVALUATED);
    80049d00:	08344703          	lbu	a4,131(s0)
    80049d04:	4795                	li	a5,5
    80049d06:	04f70263          	beq	a4,a5,80049d4a <JS_EvalFunctionInternal+0x1aa>
    80049d0a:	659d                	lui	a1,0x7
    80049d0c:	4601                	li	a2,0
    80049d0e:	0f458593          	addi	a1,a1,244 # 70f4 <asinh-0x7fff8f0c>
    80049d12:	b719                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28908
            assert(m1->status == JS_MODULE_STATUS_EVALUATING);
    80049d14:	08394783          	lbu	a5,131(s2)
    80049d18:	01378763          	beq	a5,s3,80049d26 <JS_EvalFunctionInternal+0x186>
    80049d1c:	659d                	lui	a1,0x7
    80049d1e:	4601                	li	a2,0
    80049d20:	0ec58593          	addi	a1,a1,236 # 70ec <asinh-0x7fff8f14>
    80049d24:	bdd5                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28909
            m1->status = JS_MODULE_STATUS_EVALUATED;
    80049d26:	094901a3          	sb	s4,131(s2)
quickjs-nuttx/quickjs.c:28910
            m1->eval_has_exception = TRUE;
    80049d2a:	0f590823          	sb	s5,240(s2)
quickjs-nuttx/quickjs.c:28911
            m1->eval_exception = JS_DupValue(ctx, result);
    80049d2e:	6506                	ld	a0,64(sp)
    80049d30:	65a6                	ld	a1,72(sp)
    80049d32:	ee8c00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:28913
            stack_top = m1->stack_prev;
    80049d36:	09093783          	ld	a5,144(s2)
quickjs-nuttx/quickjs.c:28911
            m1->eval_exception = JS_DupValue(ctx, result);
    80049d3a:	0ea93c23          	sd	a0,248(s2)
    80049d3e:	10b93023          	sd	a1,256(s2)
quickjs-nuttx/quickjs.c:28912
            m1->cycle_root = m; /* spec bug: should be present */
    80049d42:	0a893c23          	sd	s0,184(s2)
quickjs-nuttx/quickjs.c:28913
            stack_top = m1->stack_prev;
    80049d46:	f43e                	sd	a5,40(sp)
    80049d48:	b765                	j	80049cf0 <JS_EvalFunctionInternal+0x150>
quickjs-nuttx/quickjs.c:28917
        assert(m->eval_has_exception);
    80049d4a:	0f044783          	lbu	a5,240(s0)
    80049d4e:	e791                	bnez	a5,80049d5a <JS_EvalFunctionInternal+0x1ba>
    80049d50:	659d                	lui	a1,0x7
    80049d52:	4601                	li	a2,0
    80049d54:	0f558593          	addi	a1,a1,245 # 70f5 <asinh-0x7fff8f0b>
    80049d58:	b5c1                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28918
        ret_val = JS_Call(ctx, m->resolving_funcs[1], JS_UNDEFINED,
    80049d5a:	478d                	li	a5,3
    80049d5c:	f4be                	sd	a5,104(sp)
    80049d5e:	f082                	sd	zero,96(sp)
    80049d60:	7470                	ld	a2,232(s0)
    80049d62:	706c                	ld	a1,224(s0)
    80049d64:	0f840813          	addi	a6,s0,248
    80049d68:	4785                	li	a5,1
    80049d6a:	4681                	li	a3,0
    80049d6c:	470d                	li	a4,3
    80049d6e:	8526                	mv	a0,s1
    80049d70:	894f90ef          	jal	ra,80042e04 <JS_Call>
    80049d74:	862e                	mv	a2,a1
    80049d76:	f82a                	sd	a0,48(sp)
    80049d78:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:28920
        JS_FreeValue(ctx, ret_val);
    80049d7a:	85aa                	mv	a1,a0
    80049d7c:	8526                	mv	a0,s1
    80049d7e:	a21c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28935
    return JS_DupValue(ctx, m->promise);
    80049d82:	6068                	ld	a0,192(s0)
    80049d84:	646c                	ld	a1,200(s0)
    80049d86:	a045                	j	80049e26 <JS_EvalFunctionInternal+0x286>
quickjs-nuttx/quickjs.c:28922
        assert(m->status == JS_MODULE_STATUS_EVALUATING_ASYNC ||
    80049d88:	08344703          	lbu	a4,131(s0)
    80049d8c:	4685                	li	a3,1
    80049d8e:	ffc7079b          	addiw	a5,a4,-4
    80049d92:	0ff7f793          	zext.b	a5,a5
    80049d96:	00f6f763          	bgeu	a3,a5,80049da4 <JS_EvalFunctionInternal+0x204>
    80049d9a:	659d                	lui	a1,0x7
    80049d9c:	4601                	li	a2,0
    80049d9e:	0fa58593          	addi	a1,a1,250 # 70fa <asinh-0x7fff8f06>
    80049da2:	bd9d                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28924
        assert(!m->eval_has_exception);
    80049da4:	0f044783          	lbu	a5,240(s0)
    80049da8:	c791                	beqz	a5,80049db4 <JS_EvalFunctionInternal+0x214>
    80049daa:	659d                	lui	a1,0x7
    80049dac:	4601                	li	a2,0
    80049dae:	0fc58593          	addi	a1,a1,252 # 70fc <asinh-0x7fff8f04>
    80049db2:	b59d                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28925
        if (!m->async_evaluation) {
    80049db4:	0ac42783          	lw	a5,172(s0)
    80049db8:	ef95                	bnez	a5,80049df4 <JS_EvalFunctionInternal+0x254>
quickjs-nuttx/quickjs.c:28927
            assert(m->status == JS_MODULE_STATUS_EVALUATED);
    80049dba:	4795                	li	a5,5
    80049dbc:	00f70763          	beq	a4,a5,80049dca <JS_EvalFunctionInternal+0x22a>
    80049dc0:	659d                	lui	a1,0x7
    80049dc2:	4601                	li	a2,0
    80049dc4:	0ff58593          	addi	a1,a1,255 # 70ff <asinh-0x7fff8f01>
    80049dc8:	bd81                	j	80049c18 <JS_EvalFunctionInternal+0x78>
quickjs-nuttx/quickjs.c:28928
            value = JS_UNDEFINED;
    80049dca:	e882                	sd	zero,80(sp)
    80049dcc:	ecca                	sd	s2,88(sp)
quickjs-nuttx/quickjs.c:28929
            ret_val = JS_Call(ctx, m->resolving_funcs[0], JS_UNDEFINED,
    80049dce:	f082                	sd	zero,96(sp)
    80049dd0:	f4ca                	sd	s2,104(sp)
    80049dd2:	6c70                	ld	a2,216(s0)
    80049dd4:	686c                	ld	a1,208(s0)
    80049dd6:	05010813          	addi	a6,sp,80
    80049dda:	4785                	li	a5,1
    80049ddc:	4681                	li	a3,0
    80049dde:	470d                	li	a4,3
    80049de0:	8526                	mv	a0,s1
    80049de2:	822f90ef          	jal	ra,80042e04 <JS_Call>
    80049de6:	862e                	mv	a2,a1
    80049de8:	f82a                	sd	a0,48(sp)
    80049dea:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:28931
            JS_FreeValue(ctx, ret_val);
    80049dec:	85aa                	mv	a1,a0
    80049dee:	8526                	mv	a0,s1
    80049df0:	9afc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28933
        assert(stack_top == NULL);
    80049df4:	77a2                	ld	a5,40(sp)
    80049df6:	d7d1                	beqz	a5,80049d82 <JS_EvalFunctionInternal+0x1e2>
    80049df8:	659d                	lui	a1,0x7
    80049dfa:	4601                	li	a2,0
    80049dfc:	10558593          	addi	a1,a1,261 # 7105 <asinh-0x7fff8efb>
    80049e00:	bd21                	j	80049c18 <JS_EvalFunctionInternal+0x78>
JS_EvalFunctionInternal():
quickjs-nuttx/quickjs.c:34248
        JS_FreeValue(ctx, fun_obj);
    80049e02:	99dc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:34249
        ret_val = JS_ThrowTypeError(ctx, "bytecode function expected");
    80049e06:	8526                	mv	a0,s1
    80049e08:	00024597          	auipc	a1,0x24
    80049e0c:	95058593          	addi	a1,a1,-1712 # 8006d758 <qjsc_repl+0x81a8>
    80049e10:	85dce0ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80049e14:	b3e9                	j	80049bde <JS_EvalFunctionInternal+0x3e>
js_evaluate_module():
quickjs-nuttx/quickjs.c:28895
        m = m->cycle_root;
    80049e16:	7c40                	ld	s0,184(s0)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80049e18:	646c                	ld	a1,200(s0)
js_evaluate_module():
quickjs-nuttx/quickjs.c:28898
    if (!JS_IsUndefined(m->promise))
    80049e1a:	478d                	li	a5,3
    80049e1c:	0005891b          	sext.w	s2,a1
    80049e20:	e8f903e3          	beq	s2,a5,80049ca6 <JS_EvalFunctionInternal+0x106>
quickjs-nuttx/quickjs.c:28899
        return JS_DupValue(ctx, m->promise);
    80049e24:	6068                	ld	a0,192(s0)
quickjs-nuttx/quickjs.c:28935
    return JS_DupValue(ctx, m->promise);
    80049e26:	df4c00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80049e2a:	f0aa                	sd	a0,96(sp)
    80049e2c:	bd51                	j	80049cc0 <JS_EvalFunctionInternal+0x120>

0000000080049e2e <JS_EvalFunction>:
JS_EvalFunction():
quickjs-nuttx/quickjs.c:34256
    return JS_EvalFunctionInternal(ctx, fun_obj, ctx->global_obj, NULL, NULL);
    80049e2e:	16853683          	ld	a3,360(a0)
    80049e32:	17053703          	ld	a4,368(a0)
quickjs-nuttx/quickjs.c:34255
{
    80049e36:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:34256
    return JS_EvalFunctionInternal(ctx, fun_obj, ctx->global_obj, NULL, NULL);
    80049e38:	4801                	li	a6,0
    80049e3a:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:34257
}
    80049e3c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:34256
    return JS_EvalFunctionInternal(ctx, fun_obj, ctx->global_obj, NULL, NULL);
    80049e3e:	d63ff06f          	j	80049ba0 <JS_EvalFunctionInternal>

0000000080049e42 <JS_LoadModuleInternal>:
JS_LoadModuleInternal():
quickjs-nuttx/quickjs.c:28414
{
    80049e42:	7135                	addi	sp,sp,-160
    80049e44:	e922                	sd	s0,144(sp)
    80049e46:	e526                	sd	s1,136(sp)
    80049e48:	ed06                	sd	ra,152(sp)
    80049e4a:	e14a                	sd	s2,128(sp)
    80049e4c:	842a                	mv	s0,a0
    80049e4e:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:28420
    m = js_host_resolve_imported_module(ctx, basename, filename);
    80049e50:	98ad50ef          	jal	ra,8001efda <js_host_resolve_imported_module>
quickjs-nuttx/quickjs.c:28421
    if (!m)
    80049e54:	cd01                	beqz	a0,80049e6c <JS_LoadModuleInternal+0x2a>
    80049e56:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:28424
    if (js_resolve_module(ctx, m) < 0) {
    80049e58:	85aa                	mv	a1,a0
    80049e5a:	8522                	mv	a0,s0
    80049e5c:	c17db0ef          	jal	ra,80025a72 <js_resolve_module>
    80049e60:	04055863          	bgez	a0,80049eb0 <JS_LoadModuleInternal+0x6e>
quickjs-nuttx/quickjs.c:28425
        js_free_modules(ctx, JS_FREE_MODULE_NOT_RESOLVED);
    80049e64:	4585                	li	a1,1
    80049e66:	8522                	mv	a0,s0
    80049e68:	f8ec20ef          	jal	ra,8000c5f6 <js_free_modules>
quickjs-nuttx/quickjs.c:28434
        err = JS_GetException(ctx);
    80049e6c:	8522                	mv	a0,s0
    80049e6e:	e20c40ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:28435
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    80049e72:	6c90                	ld	a2,24(s1)
quickjs-nuttx/quickjs.c:28434
        err = JS_GetException(ctx);
    80049e74:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:28435
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    80049e76:	688c                	ld	a1,16(s1)
    80049e78:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:28434
        err = JS_GetException(ctx);
    80049e7a:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:28435
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    80049e7c:	ecbe                	sd	a5,88(sp)
    80049e7e:	03010813          	addi	a6,sp,48
    80049e82:	4785                	li	a5,1
    80049e84:	4681                	li	a3,0
    80049e86:	470d                	li	a4,3
    80049e88:	8522                	mv	a0,s0
    80049e8a:	e882                	sd	zero,80(sp)
    80049e8c:	f79f80ef          	jal	ra,80042e04 <JS_Call>
    80049e90:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28437
        JS_FreeValue(ctx, ret); /* XXX: what to do if exception ? */
    80049e92:	85aa                	mv	a1,a0
    80049e94:	8522                	mv	a0,s0
    80049e96:	909c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28438
        JS_FreeValue(ctx, err);
    80049e9a:	75c2                	ld	a1,48(sp)
    80049e9c:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:28453
    JS_FreeValue(ctx, evaluate_promise);
    80049e9e:	8522                	mv	a0,s0
    80049ea0:	8ffc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28454
}
    80049ea4:	60ea                	ld	ra,152(sp)
    80049ea6:	644a                	ld	s0,144(sp)
    80049ea8:	64aa                	ld	s1,136(sp)
    80049eaa:	690a                	ld	s2,128(sp)
    80049eac:	610d                	addi	sp,sp,160
    80049eae:	8082                	ret
quickjs-nuttx/quickjs.c:28430
    func_obj = JS_NewModuleValue(ctx, m);
    80049eb0:	85ca                	mv	a1,s2
    80049eb2:	8522                	mv	a0,s0
    80049eb4:	e9ac00ef          	jal	ra,8000a54e <JS_NewModuleValue>
    80049eb8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28431
    evaluate_promise = JS_EvalFunction(ctx, func_obj);
    80049eba:	85aa                	mv	a1,a0
    80049ebc:	8522                	mv	a0,s0
    80049ebe:	f71ff0ef          	jal	ra,80049e2e <JS_EvalFunction>
    80049ec2:	e42e                	sd	a1,8(sp)
    80049ec4:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:28432
    if (JS_IsException(evaluate_promise)) {
    80049ec6:	2581                	sext.w	a1,a1
    80049ec8:	4799                	li	a5,6
    80049eca:	faf581e3          	beq	a1,a5,80049e6c <JS_LoadModuleInternal+0x2a>
quickjs-nuttx/quickjs.c:28442
    func_obj = JS_NewModuleValue(ctx, m);
    80049ece:	85ca                	mv	a1,s2
    80049ed0:	8522                	mv	a0,s0
    80049ed2:	e7cc00ef          	jal	ra,8000a54e <JS_NewModuleValue>
quickjs-nuttx/quickjs.c:28443
    func_data[0] = resolving_funcs[0];
    80049ed6:	609c                	ld	a5,0(s1)
quickjs-nuttx/quickjs.c:28442
    func_obj = JS_NewModuleValue(ctx, m);
    80049ed8:	f02a                	sd	a0,32(sp)
    80049eda:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:28443
    func_data[0] = resolving_funcs[0];
    80049edc:	e8be                	sd	a5,80(sp)
    80049ede:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:28445
    func_data[2] = func_obj;
    80049ee0:	f8aa                	sd	a0,112(sp)
    80049ee2:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:28443
    func_data[0] = resolving_funcs[0];
    80049ee4:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:28444
    func_data[1] = resolving_funcs[1];
    80049ee6:	689c                	ld	a5,16(s1)
quickjs-nuttx/quickjs.c:28446
    evaluate_resolving_funcs[0] = JS_NewCFunctionData(ctx, js_load_module_fulfilled, 0, 0, 3, func_data);
    80049ee8:	470d                	li	a4,3
    80049eea:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:28444
    func_data[1] = resolving_funcs[1];
    80049eec:	f0be                	sd	a5,96(sp)
    80049eee:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:28446
    evaluate_resolving_funcs[0] = JS_NewCFunctionData(ctx, js_load_module_fulfilled, 0, 0, 3, func_data);
    80049ef0:	4601                	li	a2,0
    80049ef2:	ffffa597          	auipc	a1,0xffffa
    80049ef6:	b6058593          	addi	a1,a1,-1184 # 80043a52 <js_load_module_fulfilled>
quickjs-nuttx/quickjs.c:28444
    func_data[1] = resolving_funcs[1];
    80049efa:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:28446
    evaluate_resolving_funcs[0] = JS_NewCFunctionData(ctx, js_load_module_fulfilled, 0, 0, 3, func_data);
    80049efc:	8522                	mv	a0,s0
    80049efe:	089c                	addi	a5,sp,80
    80049f00:	c13e60ef          	jal	ra,80030b12 <JS_NewCFunctionData>
quickjs-nuttx/quickjs.c:28447
    evaluate_resolving_funcs[1] = JS_NewCFunctionData(ctx, js_load_module_rejected, 0, 0, 3, func_data);
    80049f04:	089c                	addi	a5,sp,80
    80049f06:	470d                	li	a4,3
    80049f08:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:28446
    evaluate_resolving_funcs[0] = JS_NewCFunctionData(ctx, js_load_module_fulfilled, 0, 0, 3, func_data);
    80049f0a:	f82a                	sd	a0,48(sp)
    80049f0c:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:28447
    evaluate_resolving_funcs[1] = JS_NewCFunctionData(ctx, js_load_module_rejected, 0, 0, 3, func_data);
    80049f0e:	4601                	li	a2,0
    80049f10:	ffffa597          	auipc	a1,0xffffa
    80049f14:	afc58593          	addi	a1,a1,-1284 # 80043a0c <js_load_module_rejected>
    80049f18:	8522                	mv	a0,s0
    80049f1a:	bf9e60ef          	jal	ra,80030b12 <JS_NewCFunctionData>
quickjs-nuttx/quickjs.c:28448
    JS_FreeValue(ctx, func_obj);
    80049f1e:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:28447
    evaluate_resolving_funcs[1] = JS_NewCFunctionData(ctx, js_load_module_rejected, 0, 0, 3, func_data);
    80049f20:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:28448
    JS_FreeValue(ctx, func_obj);
    80049f22:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:28447
    evaluate_resolving_funcs[1] = JS_NewCFunctionData(ctx, js_load_module_rejected, 0, 0, 3, func_data);
    80049f24:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:28448
    JS_FreeValue(ctx, func_obj);
    80049f26:	8522                	mv	a0,s0
    80049f28:	877c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28449
    ret = js_promise_then(ctx, evaluate_promise, 2, (JSValueConst *)evaluate_resolving_funcs);
    80049f2c:	6622                	ld	a2,8(sp)
    80049f2e:	6582                	ld	a1,0(sp)
    80049f30:	1818                	addi	a4,sp,48
    80049f32:	4689                	li	a3,2
    80049f34:	8522                	mv	a0,s0
    80049f36:	de5f90ef          	jal	ra,80043d1a <js_promise_then>
    80049f3a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28450
    JS_FreeValue(ctx, ret);
    80049f3c:	85aa                	mv	a1,a0
    80049f3e:	8522                	mv	a0,s0
    80049f40:	85fc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28451
    JS_FreeValue(ctx, evaluate_resolving_funcs[0]);
    80049f44:	75c2                	ld	a1,48(sp)
    80049f46:	7662                	ld	a2,56(sp)
    80049f48:	8522                	mv	a0,s0
    80049f4a:	855c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28452
    JS_FreeValue(ctx, evaluate_resolving_funcs[1]);
    80049f4e:	6586                	ld	a1,64(sp)
    80049f50:	6626                	ld	a2,72(sp)
    80049f52:	8522                	mv	a0,s0
    80049f54:	84bc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28453
    JS_FreeValue(ctx, evaluate_promise);
    80049f58:	6582                	ld	a1,0(sp)
    80049f5a:	6622                	ld	a2,8(sp)
    80049f5c:	b789                	j	80049e9e <JS_LoadModuleInternal+0x5c>

0000000080049f5e <js_dynamic_import_job>:
js_dynamic_import_job():
quickjs-nuttx/quickjs.c:28475
{
    80049f5e:	7175                	addi	sp,sp,-144
    80049f60:	fca6                	sd	s1,120(sp)
    80049f62:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:28478
    JSValueConst specifier = argv[3];
    80049f64:	789c                	ld	a5,48(s1)
quickjs-nuttx/quickjs.c:28475
{
    80049f66:	e122                	sd	s0,128(sp)
    80049f68:	e506                	sd	ra,136(sp)
    80049f6a:	f8ca                	sd	s2,112(sp)
    80049f6c:	f4ce                	sd	s3,104(sp)
quickjs-nuttx/quickjs.c:28477
    JSValueConst basename_val = argv[2];
    80049f6e:	720c                	ld	a1,32(a2)
quickjs-nuttx/quickjs.c:28478
    JSValueConst specifier = argv[3];
    80049f70:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:28477
    JSValueConst basename_val = argv[2];
    80049f72:	7610                	ld	a2,40(a2)
quickjs-nuttx/quickjs.c:28478
    JSValueConst specifier = argv[3];
    80049f74:	7c9c                	ld	a5,56(s1)
quickjs-nuttx/quickjs.c:28475
{
    80049f76:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:28482
    if (!JS_IsString(basename_val)) {
    80049f78:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.c:28478
    JSValueConst specifier = argv[3];
    80049f7c:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:28482
    if (!JS_IsString(basename_val)) {
    80049f7e:	57e5                	li	a5,-7
    80049f80:	04f70363          	beq	a4,a5,80049fc6 <js_dynamic_import_job+0x68>
quickjs-nuttx/quickjs.c:28483
        JS_ThrowTypeError(ctx, "no function filename for import()");
    80049f84:	00023597          	auipc	a1,0x23
    80049f88:	7f458593          	addi	a1,a1,2036 # 8006d778 <qjsc_repl+0x81c8>
    80049f8c:	ee0ce0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:28479
    const char *basename = NULL, *filename;
    80049f90:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:28500
    err = JS_GetException(ctx);
    80049f92:	8522                	mv	a0,s0
    80049f94:	cfac40ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:28501
    ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    80049f98:	6c90                	ld	a2,24(s1)
quickjs-nuttx/quickjs.c:28500
    err = JS_GetException(ctx);
    80049f9a:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:28501
    ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    80049f9c:	688c                	ld	a1,16(s1)
quickjs-nuttx/quickjs.c:28500
    err = JS_GetException(ctx);
    80049f9e:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:28501
    ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    80049fa0:	03010813          	addi	a6,sp,48
    80049fa4:	4785                	li	a5,1
    80049fa6:	4681                	li	a3,0
    80049fa8:	470d                	li	a4,3
    80049faa:	8522                	mv	a0,s0
    80049fac:	e59f80ef          	jal	ra,80042e04 <JS_Call>
    80049fb0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28503
    JS_FreeValue(ctx, ret); /* XXX: what to do if exception ? */
    80049fb2:	85aa                	mv	a1,a0
    80049fb4:	8522                	mv	a0,s0
    80049fb6:	fe8c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28504
    JS_FreeValue(ctx, err);
    80049fba:	75c2                	ld	a1,48(sp)
    80049fbc:	7662                	ld	a2,56(sp)
    80049fbe:	8522                	mv	a0,s0
    80049fc0:	fdec10ef          	jal	ra,8000b79e <JS_FreeValue>
    80049fc4:	a035                	j	80049ff0 <js_dynamic_import_job+0x92>
quickjs-nuttx/quickjs.c:28486
    basename = JS_ToCString(ctx, basename_val);
    80049fc6:	f6adb0ef          	jal	ra,80025730 <JS_ToCString>
    80049fca:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:28487
    if (!basename)
    80049fcc:	d179                	beqz	a0,80049f92 <js_dynamic_import_job+0x34>
quickjs-nuttx/quickjs.c:28490
    filename = JS_ToCString(ctx, specifier);
    80049fce:	65c2                	ld	a1,16(sp)
    80049fd0:	6662                	ld	a2,24(sp)
    80049fd2:	8522                	mv	a0,s0
    80049fd4:	f5cdb0ef          	jal	ra,80025730 <JS_ToCString>
    80049fd8:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:28491
    if (!filename)
    80049fda:	dd45                	beqz	a0,80049f92 <js_dynamic_import_job+0x34>
quickjs-nuttx/quickjs.c:28494
    JS_LoadModuleInternal(ctx, basename, filename,
    80049fdc:	862a                	mv	a2,a0
    80049fde:	85ca                	mv	a1,s2
    80049fe0:	8522                	mv	a0,s0
    80049fe2:	86a6                	mv	a3,s1
    80049fe4:	e5fff0ef          	jal	ra,80049e42 <JS_LoadModuleInternal>
quickjs-nuttx/quickjs.c:28496
    JS_FreeCString(ctx, filename);
    80049fe8:	85ce                	mv	a1,s3
    80049fea:	8522                	mv	a0,s0
    80049fec:	b53c20ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:28505
    JS_FreeCString(ctx, basename);
    80049ff0:	85ca                	mv	a1,s2
    80049ff2:	8522                	mv	a0,s0
    80049ff4:	b4bc20ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:28507
}
    80049ff8:	60aa                	ld	ra,136(sp)
    80049ffa:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:28506
    return JS_UNDEFINED;
    80049ffc:	478d                	li	a5,3
    80049ffe:	e882                	sd	zero,80(sp)
