    80048000:	e12a                	sd	a0,128(sp)
    80048002:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:38890
            if (JS_IsException(v))
    80048004:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:38889
            v = JS_GetPropertyInt64(ctx, arrayLike, k);
    80048008:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:38890
            if (JS_IsException(v))
    8004800a:	07770663          	beq	a4,s7,80048076 <js_array_from+0x36a>
quickjs-nuttx/quickjs.c:38892
            if (mapping) {
    8004800e:	020a9063          	bnez	s5,8004802e <js_array_from+0x322>
quickjs-nuttx/quickjs.c:38889
            v = JS_GetPropertyInt64(ctx, arrayLike, k);
    80048012:	4c8a                	lw	s9,128(sp)
quickjs-nuttx/quickjs.c:38901
            if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80048014:	c166                	sw	s9,128(sp)
    80048016:	670a                	ld	a4,128(sp)
    80048018:	75c6                	ld	a1,112(sp)
    8004801a:	885a                	mv	a6,s6
    8004801c:	86e2                	mv	a3,s8
    8004801e:	8626                	mv	a2,s1
    80048020:	8522                	mv	a0,s0
    80048022:	810e90ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80048026:	04054863          	bltz	a0,80048076 <js_array_from+0x36a>
quickjs-nuttx/quickjs.c:38888 (discriminator 2)
        for(k = 0; k < len; k++) {
    8004802a:	0c05                	addi	s8,s8,1
    8004802c:	b73d                	j	80047f5a <js_array_from+0x24e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004802e:	f982                	sd	zero,240(sp)
js_array_from():
quickjs-nuttx/quickjs.c:38894
                args[1] = JS_NewInt32(ctx, k);
    80048030:	d9e2                	sw	s8,240(sp)
    80048032:	77ce                	ld	a5,240(sp)
quickjs-nuttx/quickjs.c:38895
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048034:	6766                	ld	a4,88(sp)
    80048036:	66c6                	ld	a3,80(sp)
quickjs-nuttx/quickjs.c:38893
                args[0] = v;
    80048038:	f62e                	sd	a1,296(sp)
quickjs-nuttx/quickjs.c:38895
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    8004803a:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:38893
                args[0] = v;
    8004803c:	f22a                	sd	a0,288(sp)
    8004803e:	ea3e                	sd	a5,272(sp)
quickjs-nuttx/quickjs.c:38894
                args[1] = JS_NewInt32(ctx, k);
    80048040:	fa3e                	sd	a5,304(sp)
quickjs-nuttx/quickjs.c:38895
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048042:	12010813          	addi	a6,sp,288
    80048046:	4789                	li	a5,2
    80048048:	864a                	mv	a2,s2
    8004804a:	8522                	mv	a0,s0
    8004804c:	ee02                	sd	zero,280(sp)
quickjs-nuttx/quickjs.c:38894
                args[1] = JS_NewInt32(ctx, k);
    8004804e:	fe02                	sd	zero,312(sp)
quickjs-nuttx/quickjs.c:38895
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048050:	db5fa0ef          	jal	ra,80042e04 <JS_Call>
    80048054:	ed2e                	sd	a1,152(sp)
    80048056:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:38896
                JS_FreeValue(ctx, v);
    80048058:	662a                	ld	a2,136(sp)
    8004805a:	658a                	ld	a1,128(sp)
quickjs-nuttx/quickjs.c:38895
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    8004805c:	e92a                	sd	a0,144(sp)
    8004805e:	00050c9b          	sext.w	s9,a0
quickjs-nuttx/quickjs.c:38896
                JS_FreeValue(ctx, v);
    80048062:	8522                	mv	a0,s0
    80048064:	f3ac30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38897
                v = v2;
    80048068:	674a                	ld	a4,144(sp)
quickjs-nuttx/quickjs.c:38898
                if (JS_IsException(v))
    8004806a:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:38897
                v = v2;
    8004806c:	e13a                	sd	a4,128(sp)
quickjs-nuttx/quickjs.c:38898
                if (JS_IsException(v))
    8004806e:	0007871b          	sext.w	a4,a5
    80048072:	fb7711e3          	bne	a4,s7,80048014 <js_array_from+0x308>
quickjs-nuttx/quickjs.c:38914
    JS_FreeValue(ctx, r);
    80048076:	75c6                	ld	a1,112(sp)
    80048078:	8626                	mv	a2,s1
    8004807a:	8522                	mv	a0,s0
    8004807c:	f22c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38915
    r = JS_EXCEPTION;
    80048080:	4499                	li	s1,6
    80048082:	f882                	sd	zero,112(sp)
    80048084:	b739                	j	80047f92 <js_array_from+0x286>
quickjs-nuttx/quickjs.c:38825
    arrayLike = JS_UNDEFINED;
    80048086:	498d                	li	s3,3
    80048088:	bde1                	j	80047f60 <js_array_from+0x254>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    8004808a:	d21c07d3          	fcvt.d.wu	fa5,s8
    8004808e:	479d                	li	a5,7
    80048090:	e2078753          	fmv.x.d	a4,fa5
js_array_from():
quickjs-nuttx/quickjs.h:230
    return v;
    80048094:	a23e                	fsd	fa5,256(sp)
    80048096:	2701                	sext.w	a4,a4
    80048098:	b5cd                	j	80047f7a <js_array_from+0x26e>
quickjs-nuttx/quickjs.c:38825
    8004809a:	498d                	li	s3,3
    8004809c:	bfe9                	j	80048076 <js_array_from+0x36a>

000000008004809e <JS_FlattenIntoArray>:
JS_FlattenIntoArray():
quickjs-nuttx/quickjs.c:40241
{
    8004809e:	7111                	addi	sp,sp,-256
    800480a0:	f9a2                	sd	s0,240(sp)
    800480a2:	e5d6                	sd	s5,200(sp)
    800480a4:	0200                	addi	s0,sp,256
    800480a6:	fd86                	sd	ra,248(sp)
    800480a8:	f5a6                	sd	s1,232(sp)
    800480aa:	f1ca                	sd	s2,224(sp)
    800480ac:	edce                	sd	s3,216(sp)
    800480ae:	e9d2                	sd	s4,208(sp)
    800480b0:	e1da                	sd	s6,192(sp)
    800480b2:	fd5e                	sd	s7,184(sp)
    800480b4:	f962                	sd	s8,176(sp)
    800480b6:	8abe                	mv	s5,a5
quickjs-nuttx/quickjs.c:40246
    if (js_check_stack_overflow(ctx->rt, 0)) {
    800480b8:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:40241
{
    800480ba:	f2b43823          	sd	a1,-208(s0)
    800480be:	f2c43c23          	sd	a2,-200(s0)
quickjs-nuttx/quickjs.c:40246
    if (js_check_stack_overflow(ctx->rt, 0)) {
    800480c2:	6ffc                	ld	a5,216(a5)
quickjs-nuttx/quickjs.c:40241
{
    800480c4:	f2d43023          	sd	a3,-224(s0)
    800480c8:	f2e43423          	sd	a4,-216(s0)
quickjs-nuttx/quickjs.c:40246
    if (js_check_stack_overflow(ctx->rt, 0)) {
    800480cc:	02f46c63          	bltu	s0,a5,80048104 <JS_FlattenIntoArray+0x66>
quickjs-nuttx/quickjs.c:40282
        if (targetIndex >= MAX_SAFE_INTEGER) {
    800480d0:	7b7d                	lui	s6,0xfffff
quickjs-nuttx/quickjs.c:40286
        if (JS_DefinePropertyValueInt64(ctx, target, targetIndex, element,
    800480d2:	6b91                	lui	s7,0x4
    800480d4:	892a                	mv	s2,a0
    800480d6:	84c2                	mv	s1,a6
    800480d8:	8a46                	mv	s4,a7
    800480da:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:40282
        if (targetIndex >= MAX_SAFE_INTEGER) {
    800480dc:	00bb5b13          	srli	s6,s6,0xb
quickjs-nuttx/quickjs.c:40286
        if (JS_DefinePropertyValueInt64(ctx, target, targetIndex, element,
    800480e0:	0b9d                	addi	s7,s7,7
quickjs-nuttx/quickjs.c:40272
                targetIndex = JS_FlattenIntoArray(ctx, target, element,
    800480e2:	fff88c1b          	addiw	s8,a7,-1
quickjs-nuttx/quickjs.c:40251 (discriminator 1)
    for (sourceIndex = 0; sourceIndex < sourceLen; sourceIndex++) {
    800480e6:	0359c363          	blt	s3,s5,8004810c <JS_FlattenIntoArray+0x6e>
quickjs-nuttx/quickjs.c:40296
}
    800480ea:	70ee                	ld	ra,248(sp)
    800480ec:	744e                	ld	s0,240(sp)
    800480ee:	790e                	ld	s2,224(sp)
    800480f0:	69ee                	ld	s3,216(sp)
    800480f2:	6a4e                	ld	s4,208(sp)
    800480f4:	6aae                	ld	s5,200(sp)
    800480f6:	6b0e                	ld	s6,192(sp)
    800480f8:	7bea                	ld	s7,184(sp)
    800480fa:	7c4a                	ld	s8,176(sp)
    800480fc:	8526                	mv	a0,s1
    800480fe:	74ae                	ld	s1,232(sp)
    80048100:	6111                	addi	sp,sp,256
    80048102:	8082                	ret
quickjs-nuttx/quickjs.c:40247
        JS_ThrowStackOverflow(ctx);
    80048104:	81fd10ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:40295
    return -1;
    80048108:	54fd                	li	s1,-1
    8004810a:	b7c5                	j	800480ea <JS_FlattenIntoArray+0x4c>
quickjs-nuttx/quickjs.c:40252
        present = JS_TryGetPropertyInt64(ctx, source, sourceIndex, &element);
    8004810c:	f2043583          	ld	a1,-224(s0)
    80048110:	f2843603          	ld	a2,-216(s0)
    80048114:	f5040713          	addi	a4,s0,-176
    80048118:	86ce                	mv	a3,s3
    8004811a:	854a                	mv	a0,s2
    8004811c:	ed5f10ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:40253
        if (present < 0)
    80048120:	fe0544e3          	bltz	a0,80048108 <JS_FlattenIntoArray+0x6a>
quickjs-nuttx/quickjs.c:40255
        if (!present)
    80048124:	10050b63          	beqz	a0,8004823a <JS_FlattenIntoArray+0x19c>
quickjs-nuttx/quickjs.c:40257
        if (!JS_IsUndefined(mapperFunction)) {
    80048128:	4418                	lw	a4,8(s0)
    8004812a:	478d                	li	a5,3
    8004812c:	08f70a63          	beq	a4,a5,800481c0 <JS_FlattenIntoArray+0x122>
quickjs-nuttx/quickjs.c:40258
            JSValueConst args[3] = { element, JS_NewInt64(ctx, sourceIndex), source };
    80048130:	f5043783          	ld	a5,-176(s0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80048134:	0009871b          	sext.w	a4,s3
JS_FlattenIntoArray():
quickjs-nuttx/quickjs.c:40258
    80048138:	f8f43023          	sd	a5,-128(s0)
    8004813c:	f5843783          	ld	a5,-168(s0)
    80048140:	f8f43423          	sd	a5,-120(s0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    80048144:	0ee99d63          	bne	s3,a4,8004823e <JS_FlattenIntoArray+0x1a0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048148:	f6042a23          	sw	zero,-140(s0)
    8004814c:	f7342823          	sw	s3,-144(s0)
    80048150:	f7043783          	ld	a5,-144(s0)
    80048154:	f6043423          	sd	zero,-152(s0)
    80048158:	f6f43023          	sd	a5,-160(s0)
    8004815c:	4781                	li	a5,0
JS_FlattenIntoArray():
quickjs-nuttx/quickjs.c:40258
    8004815e:	f8f43c23          	sd	a5,-104(s0)
    80048162:	f2043783          	ld	a5,-224(s0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80048166:	f6e42023          	sw	a4,-160(s0)
    8004816a:	f6043787          	fld	fa5,-160(s0)
JS_FlattenIntoArray():
quickjs-nuttx/quickjs.c:40258
    8004816e:	faf43023          	sd	a5,-96(s0)
    80048172:	f2843783          	ld	a5,-216(s0)
quickjs-nuttx/quickjs.c:40259
            element = JS_Call(ctx, mapperFunction, thisArg, 3, args);
    80048176:	6c18                	ld	a4,24(s0)
    80048178:	6814                	ld	a3,16(s0)
    8004817a:	6410                	ld	a2,8(s0)
    8004817c:	600c                	ld	a1,0(s0)
    8004817e:	f8040813          	addi	a6,s0,-128
quickjs-nuttx/quickjs.c:40258
            JSValueConst args[3] = { element, JS_NewInt64(ctx, sourceIndex), source };
    80048182:	faf43423          	sd	a5,-88(s0)
quickjs-nuttx/quickjs.c:40259
            element = JS_Call(ctx, mapperFunction, thisArg, 3, args);
    80048186:	854a                	mv	a0,s2
    80048188:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:40258
            JSValueConst args[3] = { element, JS_NewInt64(ctx, sourceIndex), source };
    8004818a:	f8f43827          	fsd	fa5,-112(s0)
quickjs-nuttx/quickjs.c:40259
            element = JS_Call(ctx, mapperFunction, thisArg, 3, args);
    8004818e:	c77fa0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:40260
            JS_FreeValue(ctx, (JSValue)args[0]);
    80048192:	f8843603          	ld	a2,-120(s0)
quickjs-nuttx/quickjs.c:40259
            element = JS_Call(ctx, mapperFunction, thisArg, 3, args);
    80048196:	f4b43c23          	sd	a1,-168(s0)
quickjs-nuttx/quickjs.c:40260
            JS_FreeValue(ctx, (JSValue)args[0]);
    8004819a:	f8043583          	ld	a1,-128(s0)
quickjs-nuttx/quickjs.c:40259
            element = JS_Call(ctx, mapperFunction, thisArg, 3, args);
    8004819e:	f4a43823          	sd	a0,-176(s0)
quickjs-nuttx/quickjs.c:40260
            JS_FreeValue(ctx, (JSValue)args[0]);
    800481a2:	854a                	mv	a0,s2
    800481a4:	dfac30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40261
            JS_FreeValue(ctx, (JSValue)args[1]);
    800481a8:	f9043583          	ld	a1,-112(s0)
    800481ac:	f9843603          	ld	a2,-104(s0)
    800481b0:	854a                	mv	a0,s2
    800481b2:	decc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40262
            if (JS_IsException(element))
    800481b6:	f5842703          	lw	a4,-168(s0)
    800481ba:	4799                	li	a5,6
    800481bc:	f4f706e3          	beq	a4,a5,80048108 <JS_FlattenIntoArray+0x6a>
quickjs-nuttx/quickjs.c:40265
        if (depth > 0) {
    800481c0:	09405863          	blez	s4,80048250 <JS_FlattenIntoArray+0x1b2>
quickjs-nuttx/quickjs.c:40266
            is_array = JS_IsArray(ctx, element);
    800481c4:	f5043583          	ld	a1,-176(s0)
    800481c8:	f5843603          	ld	a2,-168(s0)
    800481cc:	854a                	mv	a0,s2
    800481ce:	bddd10ef          	jal	ra,80019daa <JS_IsArray>
quickjs-nuttx/quickjs.c:40267
            if (is_array < 0)
    800481d2:	08054863          	bltz	a0,80048262 <JS_FlattenIntoArray+0x1c4>
quickjs-nuttx/quickjs.c:40269
            if (is_array) {
    800481d6:	cd2d                	beqz	a0,80048250 <JS_FlattenIntoArray+0x1b2>
quickjs-nuttx/quickjs.c:40270
                if (js_get_length64(ctx, &elementLen, element) < 0)
    800481d8:	f5043603          	ld	a2,-176(s0)
    800481dc:	f5843683          	ld	a3,-168(s0)
    800481e0:	f4840593          	addi	a1,s0,-184
    800481e4:	854a                	mv	a0,s2
    800481e6:	bebdc0ef          	jal	ra,80024dd0 <js_get_length64>
    800481ea:	06054c63          	bltz	a0,80048262 <JS_FlattenIntoArray+0x1c4>
quickjs-nuttx/quickjs.c:40275
                                                  JS_UNDEFINED, JS_UNDEFINED);
    800481ee:	478d                	li	a5,3
    800481f0:	f6f43423          	sd	a5,-152(s0)
    800481f4:	f8f43423          	sd	a5,-120(s0)
quickjs-nuttx/quickjs.c:40272
                targetIndex = JS_FlattenIntoArray(ctx, target, element,
    800481f8:	ec3e                	sd	a5,24(sp)
    800481fa:	e43e                	sd	a5,8(sp)
    800481fc:	f5043683          	ld	a3,-176(s0)
    80048200:	f4843783          	ld	a5,-184(s0)
    80048204:	f5843703          	ld	a4,-168(s0)
    80048208:	f3043583          	ld	a1,-208(s0)
    8004820c:	f3843603          	ld	a2,-200(s0)
    80048210:	8826                	mv	a6,s1
    80048212:	e802                	sd	zero,16(sp)
    80048214:	e002                	sd	zero,0(sp)
    80048216:	88e2                	mv	a7,s8
    80048218:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:40275
                                                  JS_UNDEFINED, JS_UNDEFINED);
    8004821a:	f6043023          	sd	zero,-160(s0)
    8004821e:	f8043023          	sd	zero,-128(s0)
quickjs-nuttx/quickjs.c:40272
                targetIndex = JS_FlattenIntoArray(ctx, target, element,
    80048222:	e7dff0ef          	jal	ra,8004809e <JS_FlattenIntoArray>
    80048226:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:40276
                if (targetIndex < 0)
    80048228:	02054d63          	bltz	a0,80048262 <JS_FlattenIntoArray+0x1c4>
quickjs-nuttx/quickjs.c:40278
                JS_FreeValue(ctx, element);
    8004822c:	f5043583          	ld	a1,-176(s0)
    80048230:	f5843603          	ld	a2,-168(s0)
    80048234:	854a                	mv	a0,s2
    80048236:	d68c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40251 (discriminator 2)
    for (sourceIndex = 0; sourceIndex < sourceLen; sourceIndex++) {
    8004823a:	0985                	addi	s3,s3,1
    8004823c:	b56d                	j	800480e6 <JS_FlattenIntoArray+0x48>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8004823e:	d229f7d3          	fcvt.d.l	fa5,s3
    80048242:	479d                	li	a5,7
    80048244:	e2078753          	fmv.x.d	a4,fa5
JS_FlattenIntoArray():
quickjs-nuttx/quickjs.h:230
    return v;
    80048248:	f6f43027          	fsd	fa5,-160(s0)
    8004824c:	2701                	sext.w	a4,a4
    8004824e:	bf01                	j	8004815e <JS_FlattenIntoArray+0xc0>
quickjs-nuttx/quickjs.c:40282
        if (targetIndex >= MAX_SAFE_INTEGER) {
    80048250:	029b5163          	bge	s6,s1,80048272 <JS_FlattenIntoArray+0x1d4>
quickjs-nuttx/quickjs.c:40283
            JS_ThrowTypeError(ctx, "Array too long");
    80048254:	00025597          	auipc	a1,0x25
    80048258:	44c58593          	addi	a1,a1,1100 # 8006d6a0 <qjsc_repl+0x80f0>
    8004825c:	854a                	mv	a0,s2
    8004825e:	c0ed00ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:40294
    JS_FreeValue(ctx, element);
    80048262:	f5043583          	ld	a1,-176(s0)
    80048266:	f5843603          	ld	a2,-168(s0)
    8004826a:	854a                	mv	a0,s2
    8004826c:	d32c30ef          	jal	ra,8000b79e <JS_FreeValue>
    80048270:	bd61                	j	80048108 <JS_FlattenIntoArray+0x6a>
quickjs-nuttx/quickjs.c:40286
        if (JS_DefinePropertyValueInt64(ctx, target, targetIndex, element,
    80048272:	f5043703          	ld	a4,-176(s0)
    80048276:	f5843783          	ld	a5,-168(s0)
    8004827a:	f3043583          	ld	a1,-208(s0)
    8004827e:	f3843603          	ld	a2,-200(s0)
    80048282:	885e                	mv	a6,s7
    80048284:	86a6                	mv	a3,s1
    80048286:	854a                	mv	a0,s2
    80048288:	dabe80ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    8004828c:	e6054ee3          	bltz	a0,80048108 <JS_FlattenIntoArray+0x6a>
quickjs-nuttx/quickjs.c:40289
        targetIndex++;
    80048290:	0485                	addi	s1,s1,1
    80048292:	b765                	j	8004823a <JS_FlattenIntoArray+0x19c>

0000000080048294 <js_array_flatten>:
js_array_flatten():
quickjs-nuttx/quickjs.c:40300
{
    80048294:	7155                	addi	sp,sp,-208
    80048296:	e1a2                	sd	s0,192(sp)
    80048298:	fd26                	sd	s1,184(sp)
    8004829a:	f94a                	sd	s2,176(sp)
    8004829c:	f54e                	sd	s3,168(sp)
    8004829e:	e586                	sd	ra,200(sp)
    800482a0:	842a                	mv	s0,a0
    800482a2:	8936                	mv	s2,a3
    800482a4:	84ba                	mv	s1,a4
    800482a6:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:40306
    arr = JS_UNDEFINED;
    800482a8:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:40307
    obj = JS_ToObject(ctx, this_val);
    800482aa:	e11e70ef          	jal	ra,800300ba <JS_ToObject>
    800482ae:	862a                	mv	a2,a0
    800482b0:	86ae                	mv	a3,a1
    800482b2:	e0aa                	sd	a0,64(sp)
    800482b4:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:40308
    if (js_get_length64(ctx, &sourceLen, obj))
    800482b6:	8522                	mv	a0,s0
    800482b8:	182c                	addi	a1,sp,56
    800482ba:	b17dc0ef          	jal	ra,80024dd0 <js_get_length64>
    800482be:	e549                	bnez	a0,80048348 <js_array_flatten+0xb4>
quickjs-nuttx/quickjs.c:40312
    mapperFunction = JS_UNDEFINED;
    800482c0:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:40311
    depthNum = 1;
    800482c2:	4785                	li	a5,1
    800482c4:	da3e                	sw	a5,52(sp)
quickjs-nuttx/quickjs.c:40312
    mapperFunction = JS_UNDEFINED;
    800482c6:	f082                	sd	zero,96(sp)
    800482c8:	f4ba                	sd	a4,104(sp)
quickjs-nuttx/quickjs.c:40313
    thisArg = JS_UNDEFINED;
    800482ca:	f882                	sd	zero,112(sp)
    800482cc:	fcba                	sd	a4,120(sp)
quickjs-nuttx/quickjs.c:40314
    if (map) {
    800482ce:	04098f63          	beqz	s3,8004832c <js_array_flatten+0x98>
quickjs-nuttx/quickjs.c:40315
        mapperFunction = argv[0];
    800482d2:	6098                	ld	a4,0(s1)
    800482d4:	f0ba                	sd	a4,96(sp)
    800482d6:	6498                	ld	a4,8(s1)
    800482d8:	f4ba                	sd	a4,104(sp)
quickjs-nuttx/quickjs.c:40316
        if (argc > 1) {
    800482da:	0127d663          	bge	a5,s2,800482e6 <js_array_flatten+0x52>
quickjs-nuttx/quickjs.c:40317
            thisArg = argv[1];
    800482de:	689c                	ld	a5,16(s1)
    800482e0:	f8be                	sd	a5,112(sp)
    800482e2:	6c9c                	ld	a5,24(s1)
    800482e4:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:40319
        if (check_function(ctx, mapperFunction))
    800482e6:	7586                	ld	a1,96(sp)
    800482e8:	7626                	ld	a2,104(sp)
    800482ea:	8522                	mv	a0,s0
    800482ec:	c32d00ef          	jal	ra,8001871e <check_function>
    800482f0:	ed21                	bnez	a0,80048348 <js_array_flatten+0xb4>
quickjs-nuttx/quickjs.c:40327
    arr = JS_ArraySpeciesCreate(ctx, obj, JS_NewInt32(ctx, 0));
    800482f2:	6626                	ld	a2,72(sp)
    800482f4:	6586                	ld	a1,64(sp)
    800482f6:	4701                	li	a4,0
    800482f8:	4681                	li	a3,0
    800482fa:	8522                	mv	a0,s0
    800482fc:	ee1f90ef          	jal	ra,800421dc <JS_ArraySpeciesCreate>
    80048300:	e8aa                	sd	a0,80(sp)
    80048302:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:40328
    if (JS_IsException(arr))
    80048304:	0005871b          	sext.w	a4,a1
    80048308:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40327
    arr = JS_ArraySpeciesCreate(ctx, obj, JS_NewInt32(ctx, 0));
    8004830a:	862e                	mv	a2,a1
    8004830c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:40328
    if (JS_IsException(arr))
    8004830e:	02f71f63          	bne	a4,a5,8004834c <js_array_flatten+0xb8>
quickjs-nuttx/quickjs.c:40337
    JS_FreeValue(ctx, obj);
    80048312:	6586                	ld	a1,64(sp)
    80048314:	6626                	ld	a2,72(sp)
    80048316:	8522                	mv	a0,s0
    80048318:	c86c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40338
    JS_FreeValue(ctx, arr);
    8004831c:	65c6                	ld	a1,80(sp)
    8004831e:	8626                	mv	a2,s1
    80048320:	8522                	mv	a0,s0
    80048322:	c7cc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40339
    return JS_EXCEPTION;
    80048326:	4799                	li	a5,6
    80048328:	e902                	sd	zero,144(sp)
    8004832a:	a8a1                	j	80048382 <js_array_flatten+0xee>
quickjs-nuttx/quickjs.c:40322
        if (argc > 0 && !JS_IsUndefined(argv[0])) {
    8004832c:	fd2053e3          	blez	s2,800482f2 <js_array_flatten+0x5e>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80048330:	6494                	ld	a3,8(s1)
js_array_flatten():
quickjs-nuttx/quickjs.c:40322 (discriminator 1)
    80048332:	0006879b          	sext.w	a5,a3
    80048336:	fae78ee3          	beq	a5,a4,800482f2 <js_array_flatten+0x5e>
quickjs-nuttx/quickjs.c:40323
            if (JS_ToInt32Sat(ctx, &depthNum, argv[0]) < 0)
    8004833a:	6090                	ld	a2,0(s1)
    8004833c:	184c                	addi	a1,sp,52
    8004833e:	8522                	mv	a0,s0
    80048340:	aeadb0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80048344:	fa0557e3          	bgez	a0,800482f2 <js_array_flatten+0x5e>
quickjs-nuttx/quickjs.c:40306
    arr = JS_UNDEFINED;
    80048348:	448d                	li	s1,3
    8004834a:	b7e1                	j	80048312 <js_array_flatten+0x7e>
quickjs-nuttx/quickjs.c:40330
    if (JS_FlattenIntoArray(ctx, arr, obj, sourceLen, 0, depthNum,
    8004834c:	77c6                	ld	a5,112(sp)
    8004834e:	58d2                	lw	a7,52(sp)
    80048350:	6686                	ld	a3,64(sp)
    80048352:	e83e                	sd	a5,16(sp)
    80048354:	77e6                	ld	a5,120(sp)
    80048356:	6726                	ld	a4,72(sp)
    80048358:	85aa                	mv	a1,a0
    8004835a:	ec3e                	sd	a5,24(sp)
    8004835c:	7786                	ld	a5,96(sp)
    8004835e:	4801                	li	a6,0
    80048360:	8522                	mv	a0,s0
    80048362:	e03e                	sd	a5,0(sp)
    80048364:	77a6                	ld	a5,104(sp)
    80048366:	e43e                	sd	a5,8(sp)
    80048368:	77e2                	ld	a5,56(sp)
    8004836a:	d35ff0ef          	jal	ra,8004809e <JS_FlattenIntoArray>
    8004836e:	fa0542e3          	bltz	a0,80048312 <js_array_flatten+0x7e>
quickjs-nuttx/quickjs.c:40333
    JS_FreeValue(ctx, obj);
    80048372:	6586                	ld	a1,64(sp)
    80048374:	6626                	ld	a2,72(sp)
    80048376:	8522                	mv	a0,s0
    80048378:	c26c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40334
    return arr;
    8004837c:	67c6                	ld	a5,80(sp)
    8004837e:	e93e                	sd	a5,144(sp)
    80048380:	67e6                	ld	a5,88(sp)
quickjs-nuttx/quickjs.c:40340
}
    80048382:	60ae                	ld	ra,200(sp)
    80048384:	640e                	ld	s0,192(sp)
quickjs-nuttx/quickjs.c:40339
    return JS_EXCEPTION;
    80048386:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:40340
}
    80048388:	654a                	ld	a0,144(sp)
    8004838a:	65ea                	ld	a1,152(sp)
    8004838c:	74ea                	ld	s1,184(sp)
    8004838e:	794a                	ld	s2,176(sp)
    80048390:	79aa                	ld	s3,168(sp)
    80048392:	6169                	addi	sp,sp,208
    80048394:	8082                	ret

0000000080048396 <js_array_cmp_generic>:
js_array_cmp_generic():
quickjs-nuttx/quickjs.c:40357
static int js_array_cmp_generic(const void *a, const void *b, void *opaque) {
    80048396:	7119                	addi	sp,sp,-128
    80048398:	fc86                	sd	ra,120(sp)
    8004839a:	f8a2                	sd	s0,112(sp)
    8004839c:	f4a6                	sd	s1,104(sp)
    8004839e:	f0ca                	sd	s2,96(sp)
    800483a0:	ecce                	sd	s3,88(sp)
    800483a2:	e8d2                	sd	s4,80(sp)
quickjs-nuttx/quickjs.c:40366
    if (psc->exception)
    800483a4:	4600                	lw	s0,8(a2)
    800483a6:	0e041c63          	bnez	s0,8004849e <js_array_cmp_generic+0x108>
quickjs-nuttx/quickjs.c:40369
    if (psc->has_method) {
    800483aa:	465c                	lw	a5,12(a2)
quickjs-nuttx/quickjs.c:40359
    JSContext *ctx = psc->ctx;
    800483ac:	00063a03          	ld	s4,0(a2)
quickjs-nuttx/quickjs.c:40369
    if (psc->has_method) {
    800483b0:	892a                	mv	s2,a0
    800483b2:	84ae                	mv	s1,a1
    800483b4:	89b2                	mv	s3,a2
    800483b6:	cfc1                	beqz	a5,8004844e <js_array_cmp_generic+0xb8>
quickjs-nuttx/quickjs.c:40373
        if (!memcmp(&ap->val, &bp->val, sizeof(ap->val)))
    800483b8:	4641                	li	a2,16
    800483ba:	01b1b0ef          	jal	ra,80063bd4 <memcmp>
    800483be:	c539                	beqz	a0,8004840c <js_array_cmp_generic+0x76>
quickjs-nuttx/quickjs.c:40375
        argv[0] = ap->val;
    800483c0:	00093783          	ld	a5,0(s2)
quickjs-nuttx/quickjs.c:40377
        res = JS_Call(ctx, psc->method, JS_UNDEFINED, 2, argv);
    800483c4:	0189b603          	ld	a2,24(s3) # 4018 <asinh-0x7fffbfe8>
    800483c8:	0109b583          	ld	a1,16(s3)
quickjs-nuttx/quickjs.c:40375
        argv[0] = ap->val;
    800483cc:	f83e                	sd	a5,48(sp)
    800483ce:	00893783          	ld	a5,8(s2)
quickjs-nuttx/quickjs.c:40377
        res = JS_Call(ctx, psc->method, JS_UNDEFINED, 2, argv);
    800483d2:	4681                	li	a3,0
    800483d4:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:40375
        argv[0] = ap->val;
    800483d6:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:40376
        argv[1] = bp->val;
    800483d8:	609c                	ld	a5,0(s1)
quickjs-nuttx/quickjs.c:40377
        res = JS_Call(ctx, psc->method, JS_UNDEFINED, 2, argv);
    800483da:	03010813          	addi	a6,sp,48
    800483de:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:40376
        argv[1] = bp->val;
    800483e0:	e0be                	sd	a5,64(sp)
    800483e2:	649c                	ld	a5,8(s1)
    800483e4:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:40377
        res = JS_Call(ctx, psc->method, JS_UNDEFINED, 2, argv);
    800483e6:	4789                	li	a5,2
    800483e8:	a1dfa0ef          	jal	ra,80042e04 <JS_Call>
    800483ec:	e82a                	sd	a0,16(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800483ee:	0005879b          	sext.w	a5,a1
js_array_cmp_generic():
quickjs-nuttx/quickjs.c:40378
        if (JS_IsException(res))
    800483f2:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:40377
        res = JS_Call(ctx, psc->method, JS_UNDEFINED, 2, argv);
    800483f4:	862a                	mv	a2,a0
    800483f6:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:40378
        if (JS_IsException(res))
    800483f8:	08e78f63          	beq	a5,a4,80048496 <js_array_cmp_generic+0x100>
quickjs-nuttx/quickjs.c:40380
        if (JS_VALUE_GET_TAG(res) == JS_TAG_INT) {
    800483fc:	eb95                	bnez	a5,80048430 <js_array_cmp_generic+0x9a>
quickjs-nuttx/quickjs.c:40377
        res = JS_Call(ctx, psc->method, JS_UNDEFINED, 2, argv);
    800483fe:	47c2                	lw	a5,16(sp)
quickjs-nuttx/quickjs.c:40382
            cmp = (val > 0) - (val < 0);
    80048400:	00f02433          	sgtz	s0,a5
    80048404:	01f7d79b          	srliw	a5,a5,0x1f
    80048408:	9c1d                	subw	s0,s0,a5
quickjs-nuttx/quickjs.c:40407
    if (cmp != 0)
    8004840a:	e811                	bnez	s0,8004841e <js_array_cmp_generic+0x88>
quickjs-nuttx/quickjs.c:40411
    return (ap->pos > bp->pos) - (ap->pos < bp->pos);
    8004840c:	6c80                	ld	s0,24(s1)
    8004840e:	01893783          	ld	a5,24(s2)
    80048412:	00f42533          	slt	a0,s0,a5
    80048416:	0087a7b3          	slt	a5,a5,s0
    8004841a:	40f5043b          	subw	s0,a0,a5
quickjs-nuttx/quickjs.c:40416
}
    8004841e:	70e6                	ld	ra,120(sp)
    80048420:	8522                	mv	a0,s0
    80048422:	7446                	ld	s0,112(sp)
    80048424:	74a6                	ld	s1,104(sp)
    80048426:	7906                	ld	s2,96(sp)
    80048428:	69e6                	ld	s3,88(sp)
    8004842a:	6a46                	ld	s4,80(sp)
    8004842c:	6109                	addi	sp,sp,128
    8004842e:	8082                	ret
quickjs-nuttx/quickjs.c:40385
            if (JS_ToFloat64Free(ctx, &val, res) < 0)
    80048430:	002c                	addi	a1,sp,8
    80048432:	8552                	mv	a0,s4
    80048434:	a62da0ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80048438:	04054f63          	bltz	a0,80048496 <js_array_cmp_generic+0x100>
quickjs-nuttx/quickjs.c:40387
            cmp = (val > 0) - (val < 0);
    8004843c:	2722                	fld	fa4,8(sp)
    8004843e:	f20007d3          	fmv.d.x	fa5,zero
    80048442:	a2e79453          	flt.d	s0,fa5,fa4
    80048446:	a2f71553          	flt.d	a0,fa4,fa5
    8004844a:	9c09                	subw	s0,s0,a0
    8004844c:	bf7d                	j	8004840a <js_array_cmp_generic+0x74>
quickjs-nuttx/quickjs.c:40393
        if (!ap->str) {
    8004844e:	691c                	ld	a5,16(a0)
    80048450:	ef91                	bnez	a5,8004846c <js_array_cmp_generic+0xd6>
quickjs-nuttx/quickjs.c:40394
            JSValue str = JS_ToString(ctx, ap->val);
    80048452:	610c                	ld	a1,0(a0)
    80048454:	6510                	ld	a2,8(a0)
    80048456:	8552                	mv	a0,s4
    80048458:	b24d80ef          	jal	ra,8002077c <JS_ToString>
    8004845c:	fc2e                	sd	a1,56(sp)
    8004845e:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:40395
            if (JS_IsException(str))
    80048460:	2581                	sext.w	a1,a1
    80048462:	4799                	li	a5,6
    80048464:	02f58963          	beq	a1,a5,80048496 <js_array_cmp_generic+0x100>
quickjs-nuttx/quickjs.c:40397
            ap->str = JS_VALUE_GET_STRING(str);
    80048468:	00a93823          	sd	a0,16(s2)
quickjs-nuttx/quickjs.c:40399
        if (!bp->str) {
    8004846c:	689c                	ld	a5,16(s1)
    8004846e:	ef89                	bnez	a5,80048488 <js_array_cmp_generic+0xf2>
quickjs-nuttx/quickjs.c:40400
            JSValue str = JS_ToString(ctx, bp->val);
    80048470:	608c                	ld	a1,0(s1)
    80048472:	6490                	ld	a2,8(s1)
    80048474:	8552                	mv	a0,s4
    80048476:	b06d80ef          	jal	ra,8002077c <JS_ToString>
    8004847a:	fc2e                	sd	a1,56(sp)
    8004847c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:40401
            if (JS_IsException(str))
    8004847e:	2581                	sext.w	a1,a1
    80048480:	4799                	li	a5,6
    80048482:	00f58a63          	beq	a1,a5,80048496 <js_array_cmp_generic+0x100>
quickjs-nuttx/quickjs.c:40403
            bp->str = JS_VALUE_GET_STRING(str);
    80048486:	e888                	sd	a0,16(s1)
quickjs-nuttx/quickjs.c:40405
        cmp = js_string_compare(ctx, ap->str, bp->str);
    80048488:	688c                	ld	a1,16(s1)
    8004848a:	01093503          	ld	a0,16(s2)
    8004848e:	cb6c20ef          	jal	ra,8000a944 <js_string_compare.constprop.0>
    80048492:	842a                	mv	s0,a0
    80048494:	bf9d                	j	8004840a <js_array_cmp_generic+0x74>
quickjs-nuttx/quickjs.c:40414
    psc->exception = 1;
    80048496:	4785                	li	a5,1
    80048498:	00f9a423          	sw	a5,8(s3)
quickjs-nuttx/quickjs.c:40415
    return 0;
    8004849c:	b749                	j	8004841e <js_array_cmp_generic+0x88>
quickjs-nuttx/quickjs.c:40367
        return 0;
    8004849e:	4401                	li	s0,0
    800484a0:	bfbd                	j	8004841e <js_array_cmp_generic+0x88>

00000000800484a2 <js_array_find>:
js_array_find():
quickjs-nuttx/quickjs.c:39642
{
    800484a2:	7129                	addi	sp,sp,-320
    800484a4:	fa22                	sd	s0,304(sp)
    800484a6:	f626                	sd	s1,296(sp)
    800484a8:	f24a                	sd	s2,288(sp)
    800484aa:	ee4e                	sd	s3,280(sp)
    800484ac:	fe06                	sd	ra,312(sp)
    800484ae:	ea52                	sd	s4,272(sp)
    800484b0:	e656                	sd	s5,264(sp)
    800484b2:	e25a                	sd	s6,256(sp)
    800484b4:	fdde                	sd	s7,248(sp)
    800484b6:	f9e2                	sd	s8,240(sp)
    800484b8:	f5e6                	sd	s9,232(sp)
    800484ba:	842a                	mv	s0,a0
    800484bc:	e432                	sd	a2,8(sp)
    800484be:	8936                	mv	s2,a3
    800484c0:	e02e                	sd	a1,0(sp)
    800484c2:	84ba                	mv	s1,a4
    800484c4:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:39649
    index_val = JS_UNDEFINED;
    800484c6:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:39650
    val = JS_UNDEFINED;
    800484c8:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:39651
    obj = JS_ToObject(ctx, this_val);
    800484ca:	bf1e70ef          	jal	ra,800300ba <JS_ToObject>
    800484ce:	862a                	mv	a2,a0
    800484d0:	86ae                	mv	a3,a1
    800484d2:	e0aa                	sd	a0,64(sp)
    800484d4:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39652
    if (js_get_length64(ctx, &len, obj))
    800484d6:	8522                	mv	a0,s0
    800484d8:	082c                	addi	a1,sp,24
    800484da:	8f7dc0ef          	jal	ra,80024dd0 <js_get_length64>
    800484de:	16051b63          	bnez	a0,80048654 <js_array_find+0x1b2>
quickjs-nuttx/quickjs.c:39655
    func = argv[0];
    800484e2:	608c                	ld	a1,0(s1)
    800484e4:	6490                	ld	a2,8(s1)
quickjs-nuttx/quickjs.c:39656
    if (check_function(ctx, func))
    800484e6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:39655
    func = argv[0];
    800484e8:	f02e                	sd	a1,32(sp)
    800484ea:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:39656
    if (check_function(ctx, func))
    800484ec:	a32d00ef          	jal	ra,8001871e <check_function>
    800484f0:	8a2a                	mv	s4,a0
    800484f2:	16051163          	bnez	a0,80048654 <js_array_find+0x1b2>
quickjs-nuttx/quickjs.c:39659
    this_arg = JS_UNDEFINED;
    800484f6:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:39660
    if (argc > 1)
    800484f8:	4785                	li	a5,1
    800484fa:	0327c163          	blt	a5,s2,8004851c <js_array_find+0x7a>
quickjs-nuttx/quickjs.c:39659
    this_arg = JS_UNDEFINED;
    800484fe:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:39661
        this_arg = argv[1];
    80048500:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:39663
    if (mode == special_findLast || mode == special_findLastIndex) {
    80048502:	4705                	li	a4,1
    80048504:	ffe9879b          	addiw	a5,s3,-2
quickjs-nuttx/quickjs.c:39664
        k = len - 1;
    80048508:	6b62                	ld	s6,24(sp)
quickjs-nuttx/quickjs.c:39663
    if (mode == special_findLast || mode == special_findLastIndex) {
    8004850a:	12f76f63          	bltu	a4,a5,80048648 <js_array_find+0x1a6>
quickjs-nuttx/quickjs.c:39664
        k = len - 1;
    8004850e:	fffb0c93          	addi	s9,s6,-1 # ffffffffffffefff <_ebss+0xffffffff7fefde99>
quickjs-nuttx/quickjs.c:39665
        dir = -1;
    80048512:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:39666
        end = -1;
    80048514:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:39650 (discriminator 1)
    val = JS_UNDEFINED;
    80048516:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:39676 (discriminator 1)
        if (JS_IsException(index_val))
    80048518:	4b99                	li	s7,6
    8004851a:	a8c5                	j	8004860a <js_array_find+0x168>
quickjs-nuttx/quickjs.c:39661
        this_arg = argv[1];
    8004851c:	689c                	ld	a5,16(s1)
    8004851e:	f83e                	sd	a5,48(sp)
    80048520:	6c9c                	ld	a5,24(s1)
    80048522:	bff9                	j	80048500 <js_array_find+0x5e>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80048524:	000c891b          	sext.w	s2,s9
    80048528:	0b2c9063          	bne	s9,s2,800485c8 <js_array_find+0x126>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004852c:	cb02                	sw	zero,148(sp)
    8004852e:	c966                	sw	s9,144(sp)
    80048530:	67ca                	ld	a5,144(sp)
    80048532:	f502                	sd	zero,168(sp)
    80048534:	4a81                	li	s5,0
    80048536:	f13e                	sd	a5,160(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80048538:	d14a                	sw	s2,160(sp)
    8004853a:	378a                	fld	fa5,160(sp)
    8004853c:	f4d6                	sd	s5,104(sp)
js_array_find():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004853e:	b0be                	fsd	fa5,96(sp)
quickjs-nuttx/quickjs.c:39676
        if (JS_IsException(index_val))
    80048540:	117a8e63          	beq	s5,s7,8004865c <js_array_find+0x1ba>
quickjs-nuttx/quickjs.c:39678
        val = JS_GetPropertyValue(ctx, obj, index_val);
    80048544:	7686                	ld	a3,96(sp)
    80048546:	6586                	ld	a1,64(sp)
    80048548:	6626                	ld	a2,72(sp)
    8004854a:	8756                	mv	a4,s5
    8004854c:	8522                	mv	a0,s0
    8004854e:	9c3ce0ef          	jal	ra,80016f10 <JS_GetPropertyValue>
    80048552:	e8aa                	sd	a0,80(sp)
    80048554:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:39679
        if (JS_IsException(val))
    80048556:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:39678
        val = JS_GetPropertyValue(ctx, obj, index_val);
    8004855a:	84ae                	mv	s1,a1
    8004855c:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:39679
        if (JS_IsException(val))
    80048560:	0f778e63          	beq	a5,s7,8004865c <js_array_find+0x1ba>
quickjs-nuttx/quickjs.c:39682
        args[1] = index_val;
    80048564:	7786                	ld	a5,96(sp)
quickjs-nuttx/quickjs.c:39684
        res = JS_Call(ctx, func, this_arg, 3, args);
    80048566:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:39681
        args[0] = val;
    80048568:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:39682
        args[1] = index_val;
    8004856a:	e1be                	sd	a5,192(sp)
    8004856c:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:39684
        res = JS_Call(ctx, func, this_arg, 3, args);
    8004856e:	76c2                	ld	a3,48(sp)
    80048570:	7762                	ld	a4,56(sp)
quickjs-nuttx/quickjs.c:39682
        args[1] = index_val;
    80048572:	e5be                	sd	a5,200(sp)
quickjs-nuttx/quickjs.c:39683
        args[2] = this_val;
    80048574:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:39684
        res = JS_Call(ctx, func, this_arg, 3, args);
    80048576:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:39681
        args[0] = val;
    80048578:	f92a                	sd	a0,176(sp)
quickjs-nuttx/quickjs.c:39683
        args[2] = this_val;
    8004857a:	e9be                	sd	a5,208(sp)
    8004857c:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:39684
        res = JS_Call(ctx, func, this_arg, 3, args);
    8004857e:	0b010813          	addi	a6,sp,176
    80048582:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:39683
        args[2] = this_val;
    80048584:	edbe                	sd	a5,216(sp)
quickjs-nuttx/quickjs.c:39684
        res = JS_Call(ctx, func, this_arg, 3, args);
    80048586:	478d                	li	a5,3
    80048588:	87dfa0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:39685
        if (JS_IsException(res))
    8004858c:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:39684
        res = JS_Call(ctx, func, this_arg, 3, args);
    80048590:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:39685
        if (JS_IsException(res))
    80048592:	0d778563          	beq	a5,s7,8004865c <js_array_find+0x1ba>
quickjs-nuttx/quickjs.c:39687
        if (JS_ToBoolFree(ctx, res)) {
    80048596:	85aa                	mv	a1,a0
    80048598:	8522                	mv	a0,s0
    8004859a:	d7ac30ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    8004859e:	c939                	beqz	a0,800485f4 <js_array_find+0x152>
quickjs-nuttx/quickjs.c:39688
            if (mode == special_findIndex || mode == special_findLastIndex) {
    800485a0:	ffd9f993          	andi	s3,s3,-3
    800485a4:	4705                	li	a4,1
    800485a6:	02e99963          	bne	s3,a4,800485d8 <js_array_find+0x136>
quickjs-nuttx/quickjs.c:39689
                JS_FreeValue(ctx, val);
    800485aa:	65c6                	ld	a1,80(sp)
    800485ac:	6666                	ld	a2,88(sp)
    800485ae:	8522                	mv	a0,s0
    800485b0:	9eec30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39690
                JS_FreeValue(ctx, obj);
    800485b4:	6586                	ld	a1,64(sp)
    800485b6:	6626                	ld	a2,72(sp)
    800485b8:	8522                	mv	a0,s0
    800485ba:	9e4c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39691
                return index_val;
    800485be:	7786                	ld	a5,96(sp)
    800485c0:	e13e                	sd	a5,128(sp)
    800485c2:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:39711
    return JS_EXCEPTION;
    800485c4:	e53e                	sd	a5,136(sp)
    800485c6:	a095                	j	8004862a <js_array_find+0x188>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800485c8:	d22cf7d3          	fcvt.d.l	fa5,s9
    800485cc:	4a9d                	li	s5,7
    800485ce:	e2078953          	fmv.x.d	s2,fa5
js_array_find():
quickjs-nuttx/quickjs.h:230
    return v;
    800485d2:	b13e                	fsd	fa5,160(sp)
    800485d4:	2901                	sext.w	s2,s2
    800485d6:	b78d                	j	80048538 <js_array_find+0x96>
quickjs-nuttx/quickjs.c:39693
                JS_FreeValue(ctx, index_val);
    800485d8:	7586                	ld	a1,96(sp)
    800485da:	7626                	ld	a2,104(sp)
    800485dc:	8522                	mv	a0,s0
    800485de:	9c0c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39694
                JS_FreeValue(ctx, obj);
    800485e2:	6586                	ld	a1,64(sp)
    800485e4:	6626                	ld	a2,72(sp)
    800485e6:	8522                	mv	a0,s0
    800485e8:	9b6c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39695
                return val;
    800485ec:	67c6                	ld	a5,80(sp)
    800485ee:	e13e                	sd	a5,128(sp)
    800485f0:	67e6                	ld	a5,88(sp)
    800485f2:	bfc9                	j	800485c4 <js_array_find+0x122>
quickjs-nuttx/quickjs.c:39698
        JS_FreeValue(ctx, val);
    800485f4:	65c6                	ld	a1,80(sp)
    800485f6:	6666                	ld	a2,88(sp)
    800485f8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:39674
    for(; k != end; k += dir) {
    800485fa:	9ce2                	add	s9,s9,s8
quickjs-nuttx/quickjs.c:39698
        JS_FreeValue(ctx, val);
    800485fc:	9a2c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39699
        JS_FreeValue(ctx, index_val);
    80048600:	7586                	ld	a1,96(sp)
    80048602:	7626                	ld	a2,104(sp)
    80048604:	8522                	mv	a0,s0
    80048606:	998c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39674 (discriminator 1)
    for(; k != end; k += dir) {
    8004860a:	f16c9de3          	bne	s9,s6,80048524 <js_array_find+0x82>
quickjs-nuttx/quickjs.c:39701
    JS_FreeValue(ctx, obj);
    8004860e:	6586                	ld	a1,64(sp)
    80048610:	6626                	ld	a2,72(sp)
    80048612:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:39702
    if (mode == special_findIndex || mode == special_findLastIndex)
    80048614:	ffd9f993          	andi	s3,s3,-3
quickjs-nuttx/quickjs.c:39701
    JS_FreeValue(ctx, obj);
    80048618:	986c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39702
    if (mode == special_findIndex || mode == special_findLastIndex)
    8004861c:	4785                	li	a5,1
    8004861e:	02f99863          	bne	s3,a5,8004864e <js_array_find+0x1ac>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048622:	57fd                	li	a5,-1
    80048624:	9381                	srli	a5,a5,0x20
    80048626:	e13e                	sd	a5,128(sp)
    80048628:	e502                	sd	zero,136(sp)
js_array_find():
quickjs-nuttx/quickjs.c:39712 (discriminator 1)
}
    8004862a:	70f2                	ld	ra,312(sp)
    8004862c:	7452                	ld	s0,304(sp)
    8004862e:	650a                	ld	a0,128(sp)
    80048630:	65aa                	ld	a1,136(sp)
    80048632:	74b2                	ld	s1,296(sp)
    80048634:	7912                	ld	s2,288(sp)
    80048636:	69f2                	ld	s3,280(sp)
    80048638:	6a52                	ld	s4,272(sp)
    8004863a:	6ab2                	ld	s5,264(sp)
    8004863c:	6b12                	ld	s6,256(sp)
    8004863e:	7bee                	ld	s7,248(sp)
    80048640:	7c4e                	ld	s8,240(sp)
    80048642:	7cae                	ld	s9,232(sp)
    80048644:	6131                	addi	sp,sp,320
    80048646:	8082                	ret
quickjs-nuttx/quickjs.c:39669
        dir = 1;
    80048648:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:39668
        k = 0;
    8004864a:	4c81                	li	s9,0
    8004864c:	b5e9                	j	80048516 <js_array_find+0x74>
quickjs-nuttx/quickjs.c:39705
        return JS_UNDEFINED;
    8004864e:	e102                	sd	zero,128(sp)
    80048650:	478d                	li	a5,3
    80048652:	bf8d                	j	800485c4 <js_array_find+0x122>
quickjs-nuttx/quickjs.c:39649
    index_val = JS_UNDEFINED;
    80048654:	4a8d                	li	s5,3
    80048656:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:39650
    val = JS_UNDEFINED;
    80048658:	448d                	li	s1,3
    8004865a:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:39708
    JS_FreeValue(ctx, index_val);
    8004865c:	d0ca                	sw	s2,96(sp)
    8004865e:	7586                	ld	a1,96(sp)
    80048660:	8656                	mv	a2,s5
    80048662:	8522                	mv	a0,s0
    80048664:	93ac30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39709
    JS_FreeValue(ctx, val);
    80048668:	c8d2                	sw	s4,80(sp)
    8004866a:	65c6                	ld	a1,80(sp)
    8004866c:	8626                	mv	a2,s1
    8004866e:	8522                	mv	a0,s0
    80048670:	92ec30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39710
    JS_FreeValue(ctx, obj);
    80048674:	6586                	ld	a1,64(sp)
    80048676:	6626                	ld	a2,72(sp)
    80048678:	8522                	mv	a0,s0
    8004867a:	924c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39711
    return JS_EXCEPTION;
    8004867e:	4799                	li	a5,6
    80048680:	e102                	sd	zero,128(sp)
    80048682:	b789                	j	800485c4 <js_array_find+0x122>

0000000080048684 <js_array_reduce>:
js_array_reduce():
quickjs-nuttx/quickjs.c:39371
{
    80048684:	7169                	addi	sp,sp,-304
    80048686:	ea4a                	sd	s2,272(sp)
    80048688:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:39378
    acc = JS_UNDEFINED;
    8004868a:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:39371
{
    8004868c:	f222                	sd	s0,288(sp)
    8004868e:	e64e                	sd	s3,264(sp)
    80048690:	e252                	sd	s4,256(sp)
    80048692:	fdd6                	sd	s5,248(sp)
    80048694:	f606                	sd	ra,296(sp)
    80048696:	ee26                	sd	s1,280(sp)
    80048698:	f9da                	sd	s6,240(sp)
    8004869a:	f5de                	sd	s7,232(sp)
quickjs-nuttx/quickjs.c:39378
    acc = JS_UNDEFINED;
    8004869c:	e882                	sd	zero,80(sp)
    8004869e:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:39379
    val = JS_UNDEFINED;
    800486a0:	f802                	sd	zero,48(sp)
    800486a2:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:39380
    if (special & special_TA) {
    800486a4:	00897a13          	andi	s4,s2,8
quickjs-nuttx/quickjs.c:39371
{
    800486a8:	842a                	mv	s0,a0
    800486aa:	8ab6                	mv	s5,a3
    800486ac:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:39380
    if (special & special_TA) {
    800486ae:	040a0c63          	beqz	s4,80048706 <js_array_reduce+0x82>
quickjs-nuttx/quickjs.c:39381
        obj = JS_DupValue(ctx, this_val);
    800486b2:	852e                	mv	a0,a1
    800486b4:	85b2                	mv	a1,a2
    800486b6:	d65c10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800486ba:	862e                	mv	a2,a1
    800486bc:	f02a                	sd	a0,32(sp)
    800486be:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:39382
        len = js_typed_array_get_length_internal(ctx, obj);
    800486c0:	85aa                	mv	a1,a0
    800486c2:	8522                	mv	a0,s0
    800486c4:	db1d00ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
    800486c8:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:39383
        if (len < 0)
    800486ca:	00054c63          	bltz	a0,800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39390
    func = argv[0];
    800486ce:	0009b583          	ld	a1,0(s3)
    800486d2:	0089b603          	ld	a2,8(s3)
quickjs-nuttx/quickjs.c:39392
    if (check_function(ctx, func))
    800486d6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:39390
    func = argv[0];
    800486d8:	f8ae                	sd	a1,112(sp)
    800486da:	fcb2                	sd	a2,120(sp)
quickjs-nuttx/quickjs.c:39392
    if (check_function(ctx, func))
    800486dc:	842d00ef          	jal	ra,8001871e <check_function>
    800486e0:	cd1d                	beqz	a0,8004871e <js_array_reduce+0x9a>
quickjs-nuttx/quickjs.c:39454
    JS_FreeValue(ctx, acc);
    800486e2:	65c6                	ld	a1,80(sp)
    800486e4:	6666                	ld	a2,88(sp)
    800486e6:	8522                	mv	a0,s0
    800486e8:	8b6c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39455
    JS_FreeValue(ctx, val);
    800486ec:	75c2                	ld	a1,48(sp)
    800486ee:	7662                	ld	a2,56(sp)
    800486f0:	8522                	mv	a0,s0
    800486f2:	8acc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39456
    JS_FreeValue(ctx, obj);
    800486f6:	7582                	ld	a1,32(sp)
    800486f8:	7622                	ld	a2,40(sp)
    800486fa:	8522                	mv	a0,s0
    800486fc:	8a2c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39457
    return JS_EXCEPTION;
    80048700:	4799                	li	a5,6
    80048702:	e102                	sd	zero,128(sp)
    80048704:	a0ad                	j	8004876e <js_array_reduce+0xea>
quickjs-nuttx/quickjs.c:39386
        obj = JS_ToObject(ctx, this_val);
    80048706:	9b5e70ef          	jal	ra,800300ba <JS_ToObject>
    8004870a:	862a                	mv	a2,a0
    8004870c:	86ae                	mv	a3,a1
    8004870e:	f02a                	sd	a0,32(sp)
    80048710:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:39387
        if (js_get_length64(ctx, &len, obj))
    80048712:	8522                	mv	a0,s0
    80048714:	082c                	addi	a1,sp,24
    80048716:	ebadc0ef          	jal	ra,80024dd0 <js_get_length64>
    8004871a:	d955                	beqz	a0,800486ce <js_array_reduce+0x4a>
    8004871c:	b7d9                	j	800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39396
    if (argc > 1) {
    8004871e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:39395
    k = 0;
    80048720:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:39396
    if (argc > 1) {
    80048722:	0157cf63          	blt	a5,s5,80048740 <js_array_reduce+0xbc>
quickjs-nuttx/quickjs.c:39404
            k1 = (special & special_reduceRight) ? len - k - 1 : k;
    80048726:	00197993          	andi	s3,s2,1
quickjs-nuttx/quickjs.c:39400
            if (k >= len) {
    8004872a:	67e2                	ld	a5,24(sp)
    8004872c:	04f4cf63          	blt	s1,a5,8004878a <js_array_reduce+0x106>
quickjs-nuttx/quickjs.c:39401
                JS_ThrowTypeError(ctx, "empty array");
    80048730:	8522                	mv	a0,s0
    80048732:	00025597          	auipc	a1,0x25
    80048736:	f7e58593          	addi	a1,a1,-130 # 8006d6b0 <qjsc_repl+0x8100>
    8004873a:	f33cf0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:39402
                goto exception;
    8004873e:	b755                	j	800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39397
        acc = JS_DupValue(ctx, argv[1]);
    80048740:	0109b503          	ld	a0,16(s3)
    80048744:	0189b583          	ld	a1,24(s3)
    80048748:	cd3c10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004874c:	e8aa                	sd	a0,80(sp)
    8004874e:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:39421 (discriminator 1)
        k1 = (special & special_reduceRight) ? len - k - 1 : k;
    80048750:	00197913          	andi	s2,s2,1
quickjs-nuttx/quickjs.c:39434 (discriminator 1)
            if (JS_IsException(index_val))
    80048754:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:39440 (discriminator 1)
            acc1 = JS_Call(ctx, func, JS_UNDEFINED, 4, args);
    80048756:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:39420 (discriminator 1)
    for (; k < len; k++) {
    80048758:	67e2                	ld	a5,24(sp)
    8004875a:	06f4c763          	blt	s1,a5,800487c8 <js_array_reduce+0x144>
quickjs-nuttx/quickjs.c:39450
    JS_FreeValue(ctx, obj);
    8004875e:	7582                	ld	a1,32(sp)
    80048760:	7622                	ld	a2,40(sp)
    80048762:	8522                	mv	a0,s0
    80048764:	83ac30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39451
    return acc;
    80048768:	67c6                	ld	a5,80(sp)
    8004876a:	e13e                	sd	a5,128(sp)
    8004876c:	67e6                	ld	a5,88(sp)
quickjs-nuttx/quickjs.c:39458
}
    8004876e:	70b2                	ld	ra,296(sp)
    80048770:	7412                	ld	s0,288(sp)
quickjs-nuttx/quickjs.c:39457
    return JS_EXCEPTION;
    80048772:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs.c:39458
}
    80048774:	650a                	ld	a0,128(sp)
    80048776:	65aa                	ld	a1,136(sp)
    80048778:	64f2                	ld	s1,280(sp)
    8004877a:	6952                	ld	s2,272(sp)
    8004877c:	69b2                	ld	s3,264(sp)
    8004877e:	6a12                	ld	s4,256(sp)
    80048780:	7aee                	ld	s5,248(sp)
    80048782:	7b4e                	ld	s6,240(sp)
    80048784:	7bae                	ld	s7,232(sp)
    80048786:	6155                	addi	sp,sp,304
    80048788:	8082                	ret
quickjs-nuttx/quickjs.c:39404
            k1 = (special & special_reduceRight) ? len - k - 1 : k;
    8004878a:	86a6                	mv	a3,s1
    8004878c:	00098563          	beqz	s3,80048796 <js_array_reduce+0x112>
quickjs-nuttx/quickjs.c:39404 (discriminator 1)
    80048790:	17fd                	addi	a5,a5,-1
    80048792:	409786b3          	sub	a3,a5,s1
quickjs-nuttx/quickjs.c:39405 (discriminator 4)
            k++;
    80048796:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs.c:39406 (discriminator 4)
            if (special & special_TA) {
    80048798:	000a0e63          	beqz	s4,800487b4 <js_array_reduce+0x130>
quickjs-nuttx/quickjs.c:39407
                acc = JS_GetPropertyInt64(ctx, obj, k1);
    8004879c:	7582                	ld	a1,32(sp)
    8004879e:	7622                	ld	a2,40(sp)
    800487a0:	8522                	mv	a0,s0
    800487a2:	a40f10ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    800487a6:	ecae                	sd	a1,88(sp)
    800487a8:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:39408
                if (JS_IsException(acc))
    800487aa:	2581                	sext.w	a1,a1
    800487ac:	4799                	li	a5,6
    800487ae:	faf591e3          	bne	a1,a5,80048750 <js_array_reduce+0xcc>
    800487b2:	bf05                	j	800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39412
                present = JS_TryGetPropertyInt64(ctx, obj, k1, &acc);
    800487b4:	7582                	ld	a1,32(sp)
    800487b6:	7622                	ld	a2,40(sp)
    800487b8:	0898                	addi	a4,sp,80
    800487ba:	8522                	mv	a0,s0
    800487bc:	835f10ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39413
                if (present < 0)
    800487c0:	f20541e3          	bltz	a0,800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39415
                if (present)
    800487c4:	d13d                	beqz	a0,8004872a <js_array_reduce+0xa6>
    800487c6:	b769                	j	80048750 <js_array_reduce+0xcc>
quickjs-nuttx/quickjs.c:39421
        k1 = (special & special_reduceRight) ? len - k - 1 : k;
    800487c8:	89a6                	mv	s3,s1
    800487ca:	00090563          	beqz	s2,800487d4 <js_array_reduce+0x150>
quickjs-nuttx/quickjs.c:39421 (discriminator 1)
    800487ce:	17fd                	addi	a5,a5,-1
    800487d0:	409789b3          	sub	s3,a5,s1
quickjs-nuttx/quickjs.c:39422 (discriminator 4)
        if (special & special_TA) {
    800487d4:	0a0a0063          	beqz	s4,80048874 <js_array_reduce+0x1f0>
quickjs-nuttx/quickjs.c:39423
            val = JS_GetPropertyInt64(ctx, obj, k1);
    800487d8:	7582                	ld	a1,32(sp)
    800487da:	7622                	ld	a2,40(sp)
    800487dc:	86ce                	mv	a3,s3
    800487de:	8522                	mv	a0,s0
    800487e0:	a02f10ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    800487e4:	fc2e                	sd	a1,56(sp)
    800487e6:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:39424
            if (JS_IsException(val))
    800487e8:	2581                	sext.w	a1,a1
    800487ea:	ef558ce3          	beq	a1,s5,800486e2 <js_array_reduce+0x5e>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800487ee:	0009879b          	sext.w	a5,s3
    800487f2:	08f99d63          	bne	s3,a5,8004888c <js_array_reduce+0x208>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800487f6:	cb02                	sw	zero,148(sp)
    800487f8:	c93e                	sw	a5,144(sp)
    800487fa:	674a                	ld	a4,144(sp)
    800487fc:	e502                	sd	zero,136(sp)
    800487fe:	4981                	li	s3,0
    80048800:	e13a                	sd	a4,128(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80048802:	c13e                	sw	a5,128(sp)
    80048804:	6b8a                	ld	s7,128(sp)
js_array_reduce():
quickjs-nuttx/quickjs.c:39434
            if (JS_IsException(index_val))
    80048806:	ed598ee3          	beq	s3,s5,800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39436
            args[0] = acc;
    8004880a:	67c6                	ld	a5,80(sp)
quickjs-nuttx/quickjs.c:39440
            acc1 = JS_Call(ctx, func, JS_UNDEFINED, 4, args);
    8004880c:	7666                	ld	a2,120(sp)
    8004880e:	75c6                	ld	a1,112(sp)
quickjs-nuttx/quickjs.c:39436
            args[0] = acc;
    80048810:	f13e                	sd	a5,160(sp)
    80048812:	67e6                	ld	a5,88(sp)
quickjs-nuttx/quickjs.c:39440
            acc1 = JS_Call(ctx, func, JS_UNDEFINED, 4, args);
    80048814:	0a010813          	addi	a6,sp,160
    80048818:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:39436
            args[0] = acc;
    8004881a:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:39437
            args[1] = val;
    8004881c:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:39440
            acc1 = JS_Call(ctx, func, JS_UNDEFINED, 4, args);
    8004881e:	470d                	li	a4,3
    80048820:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:39437
            args[1] = val;
    80048822:	f93e                	sd	a5,176(sp)
    80048824:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:39438
            args[2] = index_val;
    80048826:	e1de                	sd	s7,192(sp)
    80048828:	e5ce                	sd	s3,200(sp)
quickjs-nuttx/quickjs.c:39437
            args[1] = val;
    8004882a:	fd3e                	sd	a5,184(sp)
quickjs-nuttx/quickjs.c:39439
            args[3] = obj;
    8004882c:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:39440
            acc1 = JS_Call(ctx, func, JS_UNDEFINED, 4, args);
    8004882e:	e102                	sd	zero,128(sp)
    80048830:	e55a                	sd	s6,136(sp)
quickjs-nuttx/quickjs.c:39439
            args[3] = obj;
    80048832:	e9be                	sd	a5,208(sp)
    80048834:	77a2                	ld	a5,40(sp)
    80048836:	edbe                	sd	a5,216(sp)
quickjs-nuttx/quickjs.c:39440
            acc1 = JS_Call(ctx, func, JS_UNDEFINED, 4, args);
    80048838:	4791                	li	a5,4
    8004883a:	dcafa0ef          	jal	ra,80042e04 <JS_Call>
    8004883e:	f0aa                	sd	a0,96(sp)
    80048840:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:39441
            JS_FreeValue(ctx, index_val);
    80048842:	864e                	mv	a2,s3
    80048844:	85de                	mv	a1,s7
    80048846:	8522                	mv	a0,s0
    80048848:	f57c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39442
            JS_FreeValue(ctx, val);
    8004884c:	75c2                	ld	a1,48(sp)
    8004884e:	7662                	ld	a2,56(sp)
    80048850:	8522                	mv	a0,s0
    80048852:	f4dc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39444
            if (JS_IsException(acc1))
    80048856:	57a6                	lw	a5,104(sp)
quickjs-nuttx/quickjs.c:39443
            val = JS_UNDEFINED;
    80048858:	f802                	sd	zero,48(sp)
    8004885a:	fc5a                	sd	s6,56(sp)
quickjs-nuttx/quickjs.c:39444
            if (JS_IsException(acc1))
    8004885c:	e95783e3          	beq	a5,s5,800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39446
            JS_FreeValue(ctx, acc);
    80048860:	65c6                	ld	a1,80(sp)
    80048862:	6666                	ld	a2,88(sp)
    80048864:	8522                	mv	a0,s0
    80048866:	f39c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39447
            acc = acc1;
    8004886a:	7786                	ld	a5,96(sp)
    8004886c:	e8be                	sd	a5,80(sp)
    8004886e:	77a6                	ld	a5,104(sp)
    80048870:	ecbe                	sd	a5,88(sp)
    80048872:	a819                	j	80048888 <js_array_reduce+0x204>
quickjs-nuttx/quickjs.c:39428
            present = JS_TryGetPropertyInt64(ctx, obj, k1, &val);
    80048874:	7582                	ld	a1,32(sp)
    80048876:	7622                	ld	a2,40(sp)
    80048878:	1818                	addi	a4,sp,48
    8004887a:	86ce                	mv	a3,s3
    8004887c:	8522                	mv	a0,s0
    8004887e:	f72f10ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39429
            if (present < 0)
    80048882:	e60540e3          	bltz	a0,800486e2 <js_array_reduce+0x5e>
quickjs-nuttx/quickjs.c:39432
        if (present) {
    80048886:	f525                	bnez	a0,800487ee <js_array_reduce+0x16a>
quickjs-nuttx/quickjs.c:39420
    for (; k < len; k++) {
    80048888:	0485                	addi	s1,s1,1
    8004888a:	b5f9                	j	80048758 <js_array_reduce+0xd4>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8004888c:	d229f7d3          	fcvt.d.l	fa5,s3
    80048890:	499d                	li	s3,7
    80048892:	e20787d3          	fmv.x.d	a5,fa5
js_array_reduce():
quickjs-nuttx/quickjs.h:230
    return v;
    80048896:	a13e                	fsd	fa5,128(sp)
    80048898:	2781                	sext.w	a5,a5
    8004889a:	b7a5                	j	80048802 <js_array_reduce+0x17e>

000000008004889c <js_array_every>:
js_array_every():
quickjs-nuttx/quickjs.c:39216
{
    8004889c:	7101                	addi	sp,sp,-512
    8004889e:	ebd2                	sd	s4,464(sp)
    800488a0:	8a3e                	mv	s4,a5
quickjs-nuttx/quickjs.c:39224
    val = JS_UNDEFINED;
    800488a2:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:39216
{
    800488a4:	fba2                	sd	s0,496(sp)
    800488a6:	f7a6                	sd	s1,488(sp)
    800488a8:	f3ca                	sd	s2,480(sp)
    800488aa:	ff5e                	sd	s7,440(sp)
    800488ac:	ff86                	sd	ra,504(sp)
    800488ae:	efce                	sd	s3,472(sp)
    800488b0:	e7d6                	sd	s5,456(sp)
    800488b2:	e3da                	sd	s6,448(sp)
    800488b4:	fb62                	sd	s8,432(sp)
    800488b6:	f766                	sd	s9,424(sp)
    800488b8:	f36a                	sd	s10,416(sp)
    800488ba:	ef6e                	sd	s11,408(sp)
quickjs-nuttx/quickjs.c:39223
    ret = JS_UNDEFINED;
    800488bc:	e102                	sd	zero,128(sp)
quickjs-nuttx/quickjs.c:39224
    val = JS_UNDEFINED;
    800488be:	e882                	sd	zero,80(sp)
    800488c0:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:39225
    if (special & special_TA) {
    800488c2:	008a7b93          	andi	s7,s4,8
quickjs-nuttx/quickjs.c:39216
{
    800488c6:	84aa                	mv	s1,a0
    800488c8:	8936                	mv	s2,a3
    800488ca:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:39225
    if (special & special_TA) {
    800488cc:	040b8e63          	beqz	s7,80048928 <js_array_every+0x8c>
quickjs-nuttx/quickjs.c:39226
        obj = JS_DupValue(ctx, this_val);
    800488d0:	852e                	mv	a0,a1
    800488d2:	85b2                	mv	a1,a2
    800488d4:	b47c10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800488d8:	862e                	mv	a2,a1
    800488da:	e0aa                	sd	a0,64(sp)
    800488dc:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39227
        len = js_typed_array_get_length_internal(ctx, obj);
    800488de:	85aa                	mv	a1,a0
    800488e0:	8526                	mv	a0,s1
    800488e2:	b93d00ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
    800488e6:	fc2a                	sd	a0,56(sp)
quickjs-nuttx/quickjs.c:39228
        if (len < 0)
    800488e8:	04054b63          	bltz	a0,8004893e <js_array_every+0xa2>
quickjs-nuttx/quickjs.c:39235
    func = argv[0];
    800488ec:	601c                	ld	a5,0(s0)
quickjs-nuttx/quickjs.c:39236
    this_arg = JS_UNDEFINED;
    800488ee:	f102                	sd	zero,160(sp)
quickjs-nuttx/quickjs.c:39235
    func = argv[0];
    800488f0:	e93e                	sd	a5,144(sp)
    800488f2:	641c                	ld	a5,8(s0)
    800488f4:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:39237
    if (argc > 1)
    800488f6:	4785                	li	a5,1
    800488f8:	0527c663          	blt	a5,s2,80048944 <js_array_every+0xa8>
quickjs-nuttx/quickjs.c:39236
    this_arg = JS_UNDEFINED;
    800488fc:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:39240
    if (check_function(ctx, func))
    800488fe:	65ca                	ld	a1,144(sp)
    80048900:	666a                	ld	a2,152(sp)
    80048902:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:39238
        this_arg = argv[1];
    80048904:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:39240
    if (check_function(ctx, func))
    80048906:	e19cf0ef          	jal	ra,8001871e <check_function>
    8004890a:	842a                	mv	s0,a0
    8004890c:	e90d                	bnez	a0,8004893e <js_array_every+0xa2>
quickjs-nuttx/quickjs.c:39243
    switch (special) {
    8004890e:	47b1                	li	a5,12
    80048910:	1947e863          	bltu	a5,s4,80048aa0 <js_array_every+0x204>
    80048914:	00025697          	auipc	a3,0x25
    80048918:	da868693          	addi	a3,a3,-600 # 8006d6bc <qjsc_repl+0x810c>
    8004891c:	002a1713          	slli	a4,s4,0x2
    80048920:	9736                	add	a4,a4,a3
    80048922:	431c                	lw	a5,0(a4)
    80048924:	97b6                	add	a5,a5,a3
    80048926:	8782                	jr	a5
quickjs-nuttx/quickjs.c:39231
        obj = JS_ToObject(ctx, this_val);
    80048928:	f92e70ef          	jal	ra,800300ba <JS_ToObject>
    8004892c:	862a                	mv	a2,a0
    8004892e:	86ae                	mv	a3,a1
    80048930:	e0aa                	sd	a0,64(sp)
    80048932:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39232
        if (js_get_length64(ctx, &len, obj))
    80048934:	8526                	mv	a0,s1
    80048936:	182c                	addi	a1,sp,56
    80048938:	c98dc0ef          	jal	ra,80024dd0 <js_get_length64>
    8004893c:	d945                	beqz	a0,800488ec <js_array_every+0x50>
quickjs-nuttx/quickjs.c:39223
    ret = JS_UNDEFINED;
    8004893e:	490d                	li	s2,3
    80048940:	4401                	li	s0,0
    80048942:	a8cd                	j	80048a34 <js_array_every+0x198>
quickjs-nuttx/quickjs.c:39238
        this_arg = argv[1];
    80048944:	681c                	ld	a5,16(s0)
    80048946:	f13e                	sd	a5,160(sp)
    80048948:	6c1c                	ld	a5,24(s0)
    8004894a:	bf55                	j	800488fe <js_array_every+0x62>
quickjs-nuttx/quickjs.c:39246
        ret = JS_TRUE;
    8004894c:	e102                	sd	zero,128(sp)
    8004894e:	4905                	li	s2,1
    80048950:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:39278
    for(k = 0; k < len; k++) {
    80048952:	002a1a93          	slli	s5,s4,0x2
    80048956:	00025d17          	auipc	s10,0x25
    8004895a:	d9ad0d13          	addi	s10,s10,-614 # 8006d6f0 <qjsc_repl+0x8140>
quickjs-nuttx/quickjs.c:39327
                    if (JS_DefinePropertyValueInt64(ctx, ret, n++, JS_DupValue(ctx, val),
    8004895e:	6c11                	lui	s8,0x4
quickjs-nuttx/quickjs.c:39276
    n = 0;
    80048960:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:39278
    for(k = 0; k < len; k++) {
    80048962:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:39291
            if (JS_IsException(index_val))
    80048964:	4c99                	li	s9,6
    80048966:	9aea                	add	s5,s5,s10
quickjs-nuttx/quickjs.c:39327
                    if (JS_DefinePropertyValueInt64(ctx, ret, n++, JS_DupValue(ctx, val),
    80048968:	0c1d                	addi	s8,s8,7
quickjs-nuttx/quickjs.c:39278 (discriminator 1)
    for(k = 0; k < len; k++) {
    8004896a:	77e2                	ld	a5,56(sp)
    8004896c:	12f9cc63          	blt	s3,a5,80048aa4 <js_array_every+0x208>
quickjs-nuttx/quickjs.c:39341
    if (special == (special_filter | special_TA)) {
    80048970:	47b1                	li	a5,12
    80048972:	1efa1f63          	bne	s4,a5,80048b70 <js_array_every+0x2d4>
quickjs-nuttx/quickjs.c:39343
        args[0] = obj;
    80048976:	6786                	ld	a5,64(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048978:	e282                	sd	zero,320(sp)
js_array_every():
quickjs-nuttx/quickjs.c:39344
        args[1] = JS_NewInt32(ctx, n);
    8004897a:	15612023          	sw	s6,320(sp)
quickjs-nuttx/quickjs.c:39343
        args[0] = obj;
    8004897e:	f2be                	sd	a5,352(sp)
    80048980:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:39345
        arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80048982:	1290                	addi	a2,sp,352
    80048984:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:39343
        args[0] = obj;
    80048986:	f6be                	sd	a5,360(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80048988:	6796                	ld	a5,320(sp)
js_array_every():
quickjs-nuttx/quickjs.c:39345
        arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    8004898a:	8526                	mv	a0,s1
    8004898c:	ee82                	sd	zero,344(sp)
    8004898e:	eabe                	sd	a5,336(sp)
quickjs-nuttx/quickjs.c:39344
        args[1] = JS_NewInt32(ctx, n);
    80048990:	fabe                	sd	a5,368(sp)
    80048992:	fe82                	sd	zero,376(sp)
quickjs-nuttx/quickjs.c:39345
        arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80048994:	a66fc0ef          	jal	ra,80044bfa <js_typed_array___speciesCreate.constprop.0>
    80048998:	f92a                	sd	a0,176(sp)
    8004899a:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:39346
        if (JS_IsException(arr))
    8004899c:	0005879b          	sext.w	a5,a1
    800489a0:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:39345
        arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    800489a2:	8a2e                	mv	s4,a1
    800489a4:	00050b1b          	sext.w	s6,a0
quickjs-nuttx/quickjs.c:39346
        if (JS_IsException(arr))
    800489a8:	09578663          	beq	a5,s5,80048a34 <js_array_every+0x198>
quickjs-nuttx/quickjs.c:39348
        args[0] = ret;
    800489ac:	c122                	sw	s0,128(sp)
    800489ae:	678a                	ld	a5,128(sp)
quickjs-nuttx/quickjs.c:39349
        res = JS_Invoke(ctx, arr, JS_ATOM_set, 1, args);
    800489b0:	4705                	li	a4,1
    800489b2:	04300693          	li	a3,67
quickjs-nuttx/quickjs.c:39348
        args[0] = ret;
    800489b6:	f2be                	sd	a5,352(sp)
quickjs-nuttx/quickjs.c:39349
        res = JS_Invoke(ctx, arr, JS_ATOM_set, 1, args);
    800489b8:	85aa                	mv	a1,a0
    800489ba:	129c                	addi	a5,sp,352
    800489bc:	8652                	mv	a2,s4
    800489be:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:39348
        args[0] = ret;
    800489c0:	e54a                	sd	s2,136(sp)
    800489c2:	f6ca                	sd	s2,360(sp)
quickjs-nuttx/quickjs.c:39349
        res = JS_Invoke(ctx, arr, JS_ATOM_set, 1, args);
    800489c4:	be9f60ef          	jal	ra,8003f5ac <JS_Invoke>
    800489c8:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:39350
        if (check_exception_free(ctx, res))
    800489ca:	eaaa                	sd	a0,336(sp)
    800489cc:	eeae                	sd	a1,344(sp)
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    800489ce:	864e                	mv	a2,s3
    800489d0:	85aa                	mv	a1,a0
js_array_every():
quickjs-nuttx/quickjs.c:39350
        if (check_exception_free(ctx, res))
    800489d2:	2981                	sext.w	s3,s3
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    800489d4:	8526                	mv	a0,s1
    800489d6:	dc9c20ef          	jal	ra,8000b79e <JS_FreeValue>
js_array_every():
quickjs-nuttx/quickjs.c:39350
        if (check_exception_free(ctx, res))
    800489da:	05598d63          	beq	s3,s5,80048a34 <js_array_every+0x198>
quickjs-nuttx/quickjs.c:39352
        JS_FreeValue(ctx, ret);
    800489de:	658a                	ld	a1,128(sp)
    800489e0:	662a                	ld	a2,136(sp)
    800489e2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:39353
        ret = arr;
    800489e4:	8952                	mv	s2,s4
quickjs-nuttx/quickjs.c:39352
        JS_FreeValue(ctx, ret);
    800489e6:	db9c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39353
        ret = arr;
    800489ea:	77ca                	ld	a5,176(sp)
    800489ec:	845a                	mv	s0,s6
    800489ee:	e13e                	sd	a5,128(sp)
    800489f0:	a241                	j	80048b70 <js_array_every+0x2d4>
quickjs-nuttx/quickjs.c:39250
        ret = JS_FALSE;
    800489f2:	e102                	sd	zero,128(sp)
    800489f4:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:39251
        break;
    800489f6:	bfb1                	j	80048952 <js_array_every+0xb6>
quickjs-nuttx/quickjs.c:39254
        ret = JS_ArraySpeciesCreate(ctx, obj, JS_NewInt64(ctx, len));
    800489f8:	77e2                	ld	a5,56(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800489fa:	0007869b          	sext.w	a3,a5
    800489fe:	04d79f63          	bne	a5,a3,80048a5c <js_array_every+0x1c0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048a02:	10012223          	sw	zero,260(sp)
    80048a06:	10d12023          	sw	a3,256(sp)
    80048a0a:	6792                	ld	a5,256(sp)
    80048a0c:	f682                	sd	zero,360(sp)
    80048a0e:	4701                	li	a4,0
    80048a10:	f2be                	sd	a5,352(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80048a12:	16d12023          	sw	a3,352(sp)
js_array_every():
quickjs-nuttx/quickjs.c:39254
    80048a16:	7696                	ld	a3,352(sp)
quickjs-nuttx/quickjs.c:39259
        ret = JS_ArraySpeciesCreate(ctx, obj, JS_NewInt32(ctx, 0));
    80048a18:	6586                	ld	a1,64(sp)
    80048a1a:	6626                	ld	a2,72(sp)
    80048a1c:	8526                	mv	a0,s1
    80048a1e:	fbef90ef          	jal	ra,800421dc <JS_ArraySpeciesCreate>
quickjs-nuttx/quickjs.c:39271
        ret = JS_NewArray(ctx);
    80048a22:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:39272
        if (JS_IsException(ret))
    80048a24:	0005871b          	sext.w	a4,a1
    80048a28:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:39271
        ret = JS_NewArray(ctx);
    80048a2a:	0005041b          	sext.w	s0,a0
    80048a2e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:39272
        if (JS_IsException(ret))
    80048a30:	f2f711e3          	bne	a4,a5,80048952 <js_array_every+0xb6>
quickjs-nuttx/quickjs.c:39360
    JS_FreeValue(ctx, ret);
    80048a34:	c122                	sw	s0,128(sp)
    80048a36:	658a                	ld	a1,128(sp)
    80048a38:	864a                	mv	a2,s2
    80048a3a:	8526                	mv	a0,s1
    80048a3c:	d63c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39361
    JS_FreeValue(ctx, val);
    80048a40:	65c6                	ld	a1,80(sp)
    80048a42:	6666                	ld	a2,88(sp)
    80048a44:	8526                	mv	a0,s1
    80048a46:	d59c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39362
    JS_FreeValue(ctx, obj);
    80048a4a:	6586                	ld	a1,64(sp)
    80048a4c:	6626                	ld	a2,72(sp)
    80048a4e:	8526                	mv	a0,s1
    80048a50:	d4fc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39363
    return JS_EXCEPTION;
    80048a54:	4799                	li	a5,6
    80048a56:	ea82                	sd	zero,336(sp)
    80048a58:	eebe                	sd	a5,344(sp)
    80048a5a:	aa0d                	j	80048b8c <js_array_every+0x2f0>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80048a5c:	d227f7d3          	fcvt.d.l	fa5,a5
    80048a60:	471d                	li	a4,7
    80048a62:	e20786d3          	fmv.x.d	a3,fa5
js_array_every():
quickjs-nuttx/quickjs.h:230
    return v;
    80048a66:	b2be                	fsd	fa5,352(sp)
    80048a68:	2681                	sext.w	a3,a3
    80048a6a:	b765                	j	80048a12 <js_array_every+0x176>
quickjs-nuttx/quickjs.c:39259
        ret = JS_ArraySpeciesCreate(ctx, obj, JS_NewInt32(ctx, 0));
    80048a6c:	4681                	li	a3,0
    80048a6e:	4701                	li	a4,0
    80048a70:	b765                	j	80048a18 <js_array_every+0x17c>
quickjs-nuttx/quickjs.c:39264
        args[0] = obj;
    80048a72:	6786                	ld	a5,64(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048a74:	ea02                	sd	zero,272(sp)
js_array_every():
quickjs-nuttx/quickjs.c:39266
        ret = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80048a76:	1290                	addi	a2,sp,352
quickjs-nuttx/quickjs.c:39264
        args[0] = obj;
    80048a78:	f2be                	sd	a5,352(sp)
    80048a7a:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:39266
        ret = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80048a7c:	8526                	mv	a0,s1
    80048a7e:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:39264
        args[0] = obj;
    80048a80:	f6be                	sd	a5,360(sp)
quickjs-nuttx/quickjs.c:39265
        args[1] = JS_NewInt32(ctx, len);
    80048a82:	57e2                	lw	a5,56(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80048a84:	ee82                	sd	zero,344(sp)
js_array_every():
quickjs-nuttx/quickjs.c:39265
    80048a86:	fe82                	sd	zero,376(sp)
quickjs-nuttx/quickjs.c:39266
        ret = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80048a88:	10f12823          	sw	a5,272(sp)
    80048a8c:	67d2                	ld	a5,272(sp)
    80048a8e:	eabe                	sd	a5,336(sp)
quickjs-nuttx/quickjs.c:39265
        args[1] = JS_NewInt32(ctx, len);
    80048a90:	fabe                	sd	a5,368(sp)
quickjs-nuttx/quickjs.c:39266
        ret = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80048a92:	968fc0ef          	jal	ra,80044bfa <js_typed_array___speciesCreate.constprop.0>
    80048a96:	b771                	j	80048a22 <js_array_every+0x186>
quickjs-nuttx/quickjs.c:39271
        ret = JS_NewArray(ctx);
    80048a98:	8526                	mv	a0,s1
    80048a9a:	fc0d30ef          	jal	ra,8001c25a <JS_NewArray>
    80048a9e:	b751                	j	80048a22 <js_array_every+0x186>
quickjs-nuttx/quickjs.c:39240
    if (check_function(ctx, func))
    80048aa0:	490d                	li	s2,3
    80048aa2:	bd45                	j	80048952 <js_array_every+0xb6>
quickjs-nuttx/quickjs.c:39279
        if (special & special_TA) {
    80048aa4:	080b8963          	beqz	s7,80048b36 <js_array_every+0x29a>
quickjs-nuttx/quickjs.c:39280
            val = JS_GetPropertyInt64(ctx, obj, k);
    80048aa8:	6586                	ld	a1,64(sp)
    80048aaa:	6626                	ld	a2,72(sp)
    80048aac:	86ce                	mv	a3,s3
    80048aae:	8526                	mv	a0,s1
    80048ab0:	f33f00ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80048ab4:	ecae                	sd	a1,88(sp)
    80048ab6:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:39281
            if (JS_IsException(val))
    80048ab8:	2581                	sext.w	a1,a1
    80048aba:	f7958de3          	beq	a1,s9,80048a34 <js_array_every+0x198>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80048abe:	00098d9b          	sext.w	s11,s3
    80048ac2:	09b99663          	bne	s3,s11,80048b4e <js_array_every+0x2b2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048ac6:	12012223          	sw	zero,292(sp)
    80048aca:	13312023          	sw	s3,288(sp)
    80048ace:	7792                	ld	a5,288(sp)
    80048ad0:	ee82                	sd	zero,344(sp)
    80048ad2:	4881                	li	a7,0
    80048ad4:	eabe                	sd	a5,336(sp)
    80048ad6:	87ce                	mv	a5,s3
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80048ad8:	14f12823          	sw	a5,336(sp)
    80048adc:	27d6                	fld	fa5,336(sp)
    80048ade:	a43e                	fsd	fa5,8(sp)
js_array_every():
quickjs-nuttx/quickjs.c:39291
            if (JS_IsException(index_val))
    80048ae0:	f5988ae3          	beq	a7,s9,80048a34 <js_array_every+0x198>
quickjs-nuttx/quickjs.c:39293
            args[0] = val;
    80048ae4:	67c6                	ld	a5,80(sp)
quickjs-nuttx/quickjs.c:39296
            res = JS_Call(ctx, func, this_arg, 3, args);
    80048ae6:	768a                	ld	a3,160(sp)
    80048ae8:	772a                	ld	a4,168(sp)
quickjs-nuttx/quickjs.c:39293
            args[0] = val;
    80048aea:	f2be                	sd	a5,352(sp)
    80048aec:	67e6                	ld	a5,88(sp)
quickjs-nuttx/quickjs.c:39296
            res = JS_Call(ctx, func, this_arg, 3, args);
    80048aee:	666a                	ld	a2,152(sp)
    80048af0:	65ca                	ld	a1,144(sp)
quickjs-nuttx/quickjs.c:39293
            args[0] = val;
    80048af2:	f6be                	sd	a5,360(sp)
quickjs-nuttx/quickjs.c:39295
            args[2] = obj;
    80048af4:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:39296
            res = JS_Call(ctx, func, this_arg, 3, args);
    80048af6:	16010813          	addi	a6,sp,352
    80048afa:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:39295
            args[2] = obj;
    80048afc:	e33e                	sd	a5,384(sp)
    80048afe:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:39294
            args[1] = index_val;
    80048b00:	babe                	fsd	fa5,368(sp)
    80048b02:	fec6                	sd	a7,376(sp)
quickjs-nuttx/quickjs.c:39295
            args[2] = obj;
    80048b04:	e73e                	sd	a5,392(sp)
quickjs-nuttx/quickjs.c:39296
            res = JS_Call(ctx, func, this_arg, 3, args);
    80048b06:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:39294
            args[1] = index_val;
    80048b08:	ec46                	sd	a7,24(sp)
quickjs-nuttx/quickjs.c:39296
            res = JS_Call(ctx, func, this_arg, 3, args);
    80048b0a:	afafa0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:39297
            JS_FreeValue(ctx, index_val);
    80048b0e:	68e2                	ld	a7,24(sp)
quickjs-nuttx/quickjs.c:39296
            res = JS_Call(ctx, func, this_arg, 3, args);
    80048b10:	fcae                	sd	a1,120(sp)
    80048b12:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:39297
            JS_FreeValue(ctx, index_val);
    80048b14:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:39296
            res = JS_Call(ctx, func, this_arg, 3, args);
    80048b16:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:39297
            JS_FreeValue(ctx, index_val);
    80048b18:	8646                	mv	a2,a7
    80048b1a:	8526                	mv	a0,s1
    80048b1c:	c83c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39298
            if (JS_IsException(res))
    80048b20:	67c2                	ld	a5,16(sp)
    80048b22:	2781                	sext.w	a5,a5
    80048b24:	f19788e3          	beq	a5,s9,80048a34 <js_array_every+0x198>
quickjs-nuttx/quickjs.c:39300
            switch (special) {
    80048b28:	47b1                	li	a5,12
    80048b2a:	1147eb63          	bltu	a5,s4,80048c40 <js_array_every+0x3a4>
    80048b2e:	000aa783          	lw	a5,0(s5)
    80048b32:	97ea                	add	a5,a5,s10
    80048b34:	8782                	jr	a5
quickjs-nuttx/quickjs.c:39285
            present = JS_TryGetPropertyInt64(ctx, obj, k, &val);
    80048b36:	6586                	ld	a1,64(sp)
    80048b38:	6626                	ld	a2,72(sp)
    80048b3a:	0898                	addi	a4,sp,80
    80048b3c:	86ce                	mv	a3,s3
    80048b3e:	8526                	mv	a0,s1
    80048b40:	cb0f10ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39286
            if (present < 0)
    80048b44:	ee0548e3          	bltz	a0,80048a34 <js_array_every+0x198>
quickjs-nuttx/quickjs.c:39289
        if (present) {
    80048b48:	f93d                	bnez	a0,80048abe <js_array_every+0x222>
quickjs-nuttx/quickjs.c:39278 (discriminator 2)
    for(k = 0; k < len; k++) {
    80048b4a:	0985                	addi	s3,s3,1
    80048b4c:	bd39                	j	8004896a <js_array_every+0xce>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80048b4e:	d229f7d3          	fcvt.d.l	fa5,s3
    80048b52:	489d                	li	a7,7
    80048b54:	e20787d3          	fmv.x.d	a5,fa5
js_array_every():
quickjs-nuttx/quickjs.h:230
    return v;
    80048b58:	aabe                	fsd	fa5,336(sp)
    80048b5a:	2781                	sext.w	a5,a5
    80048b5c:	bfb5                	j	80048ad8 <js_array_every+0x23c>
quickjs-nuttx/quickjs.c:39303
                if (!JS_ToBoolFree(ctx, res)) {
    80048b5e:	75c6                	ld	a1,112(sp)
    80048b60:	7666                	ld	a2,120(sp)
    80048b62:	8526                	mv	a0,s1
    80048b64:	fb1c20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80048b68:	e935                	bnez	a0,80048bdc <js_array_every+0x340>
quickjs-nuttx/quickjs.c:39304
                    ret = JS_FALSE;
    80048b6a:	c302                	sw	zero,132(sp)
    80048b6c:	4401                	li	s0,0
    80048b6e:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:39355
    JS_FreeValue(ctx, val);
    80048b70:	65c6                	ld	a1,80(sp)
    80048b72:	6666                	ld	a2,88(sp)
    80048b74:	8526                	mv	a0,s1
    80048b76:	c29c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39356
    JS_FreeValue(ctx, obj);
    80048b7a:	6586                	ld	a1,64(sp)
    80048b7c:	6626                	ld	a2,72(sp)
    80048b7e:	8526                	mv	a0,s1
    80048b80:	c1fc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39357
    return ret;
    80048b84:	c122                	sw	s0,128(sp)
    80048b86:	678a                	ld	a5,128(sp)
    80048b88:	eeca                	sd	s2,344(sp)
    80048b8a:	eabe                	sd	a5,336(sp)
quickjs-nuttx/quickjs.c:39364
}
    80048b8c:	70fe                	ld	ra,504(sp)
    80048b8e:	745e                	ld	s0,496(sp)
    80048b90:	6556                	ld	a0,336(sp)
    80048b92:	65f6                	ld	a1,344(sp)
    80048b94:	74be                	ld	s1,488(sp)
    80048b96:	791e                	ld	s2,480(sp)
    80048b98:	69fe                	ld	s3,472(sp)
    80048b9a:	6a5e                	ld	s4,464(sp)
    80048b9c:	6abe                	ld	s5,456(sp)
    80048b9e:	6b1e                	ld	s6,448(sp)
    80048ba0:	7bfa                	ld	s7,440(sp)
    80048ba2:	7c5a                	ld	s8,432(sp)
    80048ba4:	7cba                	ld	s9,424(sp)
    80048ba6:	7d1a                	ld	s10,416(sp)
    80048ba8:	6dfa                	ld	s11,408(sp)
    80048baa:	20010113          	addi	sp,sp,512
    80048bae:	8082                	ret
quickjs-nuttx/quickjs.c:39310
                if (JS_ToBoolFree(ctx, res)) {
    80048bb0:	75c6                	ld	a1,112(sp)
    80048bb2:	7666                	ld	a2,120(sp)
    80048bb4:	8526                	mv	a0,s1
    80048bb6:	f5fc20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80048bba:	c10d                	beqz	a0,80048bdc <js_array_every+0x340>
quickjs-nuttx/quickjs.c:39311
                    ret = JS_TRUE;
    80048bbc:	c302                	sw	zero,132(sp)
    80048bbe:	4905                	li	s2,1
    80048bc0:	4405                	li	s0,1
    80048bc2:	b77d                	j	80048b70 <js_array_every+0x2d4>
quickjs-nuttx/quickjs.c:39316
                if (JS_DefinePropertyValueInt64(ctx, ret, k, res,
    80048bc4:	c122                	sw	s0,128(sp)
    80048bc6:	7746                	ld	a4,112(sp)
    80048bc8:	77e6                	ld	a5,120(sp)
    80048bca:	658a                	ld	a1,128(sp)
    80048bcc:	8862                	mv	a6,s8
    80048bce:	86ce                	mv	a3,s3
    80048bd0:	864a                	mv	a2,s2
    80048bd2:	8526                	mv	a0,s1
    80048bd4:	c5ee80ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
quickjs-nuttx/quickjs.c:39321
                if (JS_SetPropertyValue(ctx, ret, JS_NewInt32(ctx, k), res, JS_PROP_THROW) < 0)
    80048bd8:	e4054ee3          	bltz	a0,80048a34 <js_array_every+0x198>
quickjs-nuttx/quickjs.c:39336 (discriminator 2)
            JS_FreeValue(ctx, val);
    80048bdc:	65c6                	ld	a1,80(sp)
    80048bde:	6666                	ld	a2,88(sp)
    80048be0:	8526                	mv	a0,s1
    80048be2:	bbdc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39337 (discriminator 2)
            val = JS_UNDEFINED;
    80048be6:	478d                	li	a5,3
    80048be8:	e882                	sd	zero,80(sp)
    80048bea:	ecbe                	sd	a5,88(sp)
    80048bec:	bfb9                	j	80048b4a <js_array_every+0x2ae>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048bee:	fa02                	sd	zero,304(sp)
    80048bf0:	13b12823          	sw	s11,304(sp)
js_array_every():
quickjs-nuttx/quickjs.c:39321
                if (JS_SetPropertyValue(ctx, ret, JS_NewInt32(ctx, k), res, JS_PROP_THROW) < 0)
    80048bf4:	c122                	sw	s0,128(sp)
    80048bf6:	77c6                	ld	a5,112(sp)
    80048bf8:	7866                	ld	a6,120(sp)
    80048bfa:	76d2                	ld	a3,304(sp)
    80048bfc:	658a                	ld	a1,128(sp)
    80048bfe:	6891                	lui	a7,0x4
    80048c00:	4701                	li	a4,0
    80048c02:	864a                	mv	a2,s2
    80048c04:	8526                	mv	a0,s1
    80048c06:	cefce0ef          	jal	ra,800178f4 <JS_SetPropertyValue>
    80048c0a:	b7f9                	j	80048bd8 <js_array_every+0x33c>
quickjs-nuttx/quickjs.c:39326
                if (JS_ToBoolFree(ctx, res)) {
    80048c0c:	75c6                	ld	a1,112(sp)
    80048c0e:	7666                	ld	a2,120(sp)
    80048c10:	8526                	mv	a0,s1
    80048c12:	f03c20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80048c16:	d179                	beqz	a0,80048bdc <js_array_every+0x340>
quickjs-nuttx/quickjs.c:39327
                    if (JS_DefinePropertyValueInt64(ctx, ret, n++, JS_DupValue(ctx, val),
    80048c18:	6546                	ld	a0,80(sp)
    80048c1a:	65e6                	ld	a1,88(sp)
    80048c1c:	001b0d93          	addi	s11,s6,1
    80048c20:	ffac10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80048c24:	c122                	sw	s0,128(sp)
    80048c26:	87ae                	mv	a5,a1
    80048c28:	658a                	ld	a1,128(sp)
    80048c2a:	872a                	mv	a4,a0
    80048c2c:	8862                	mv	a6,s8
    80048c2e:	86da                	mv	a3,s6
    80048c30:	864a                	mv	a2,s2
    80048c32:	8526                	mv	a0,s1
    80048c34:	bfee80ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80048c38:	de054ee3          	bltz	a0,80048a34 <js_array_every+0x198>
    80048c3c:	8b6e                	mv	s6,s11
    80048c3e:	bf79                	j	80048bdc <js_array_every+0x340>
quickjs-nuttx/quickjs.c:39333
                JS_FreeValue(ctx, res);
    80048c40:	75c6                	ld	a1,112(sp)
    80048c42:	7666                	ld	a2,120(sp)
    80048c44:	8526                	mv	a0,s1
    80048c46:	b59c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39334
                break;
    80048c4a:	bf49                	j	80048bdc <js_array_every+0x340>

0000000080048c4c <js_function_call>:
js_function_call():
quickjs-nuttx/quickjs.c:38386
{
    80048c4c:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:38387
    if (argc <= 0) {
    80048c4e:	00d04963          	bgtz	a3,80048c60 <js_function_call+0x14>
quickjs-nuttx/quickjs.c:38388
        return JS_Call(ctx, this_val, JS_UNDEFINED, 0, NULL);
    80048c52:	4801                	li	a6,0
    80048c54:	4781                	li	a5,0
    80048c56:	4681                	li	a3,0
    80048c58:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:38392
}
    80048c5a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:38390
        return JS_Call(ctx, this_val, argv[0], argc - 1, argv + 1);
    80048c5c:	9a8fa06f          	j	80042e04 <JS_Call>
    80048c60:	01070813          	addi	a6,a4,16
    80048c64:	fff6879b          	addiw	a5,a3,-1
    80048c68:	6314                	ld	a3,0(a4)
    80048c6a:	6718                	ld	a4,8(a4)
    80048c6c:	b7fd                	j	80048c5a <js_function_call+0xe>

0000000080048c6e <js_typed_array_from>:
js_typed_array_from():
quickjs-nuttx/quickjs.c:53329
{
    80048c6e:	7109                	addi	sp,sp,-384
    80048c70:	faa2                	sd	s0,368(sp)
    80048c72:	f6a6                	sd	s1,360(sp)
    80048c74:	fe86                	sd	ra,376(sp)
    80048c76:	f2ca                	sd	s2,352(sp)
    80048c78:	eece                	sd	s3,344(sp)
    80048c7a:	ead2                	sd	s4,336(sp)
    80048c7c:	e6d6                	sd	s5,328(sp)
    80048c7e:	e2da                	sd	s6,320(sp)
    80048c80:	fe5e                	sd	s7,312(sp)
    80048c82:	fa62                	sd	s8,304(sp)
quickjs-nuttx/quickjs.c:53331
    JSValueConst items = argv[0], mapfn, this_arg;
    80048c84:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:53329
{
    80048c86:	84ba                	mv	s1,a4
    80048c88:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:53331
    JSValueConst items = argv[0], mapfn, this_arg;
    80048c8a:	f83e                	sd	a5,48(sp)
    80048c8c:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:53329
{
    80048c8e:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:53339
    mapfn = JS_UNDEFINED;
    80048c90:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:53331
    JSValueConst items = argv[0], mapfn, this_arg;
    80048c92:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:53340
    this_arg = JS_UNDEFINED;
    80048c94:	478d                	li	a5,3
    80048c96:	e882                	sd	zero,80(sp)
    80048c98:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:53341
    r = JS_UNDEFINED;
    80048c9a:	e102                	sd	zero,128(sp)
quickjs-nuttx/quickjs.c:53342
    arr = JS_UNDEFINED;
    80048c9c:	f882                	sd	zero,112(sp)
quickjs-nuttx/quickjs.c:53343
    stack[0] = JS_UNDEFINED;
    80048c9e:	ea02                	sd	zero,272(sp)
    80048ca0:	ee3e                	sd	a5,280(sp)
quickjs-nuttx/quickjs.c:53344
    stack[1] = JS_UNDEFINED;
    80048ca2:	f202                	sd	zero,288(sp)
    80048ca4:	f63e                	sd	a5,296(sp)
quickjs-nuttx/quickjs.c:53346
    if (argc > 1) {
    80048ca6:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:53329
{
    80048ca8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:53346
    if (argc > 1) {
    80048caa:	0ed75163          	bge	a4,a3,80048d8c <js_typed_array_from+0x11e>
quickjs-nuttx/quickjs.c:53347
        mapfn = argv[1];
    80048cae:	688c                	ld	a1,16(s1)
    80048cb0:	0184ba03          	ld	s4,24(s1)
quickjs-nuttx/quickjs.c:53338
    mapping = FALSE;
    80048cb4:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:53347
        mapfn = argv[1];
    80048cb6:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:53348
        if (!JS_IsUndefined(mapfn)) {
    80048cb8:	000a071b          	sext.w	a4,s4
    80048cbc:	02f70963          	beq	a4,a5,80048cee <js_typed_array_from+0x80>
quickjs-nuttx/quickjs.c:53349
            if (check_function(ctx, mapfn))
    80048cc0:	8652                	mv	a2,s4
    80048cc2:	8936                	mv	s2,a3
    80048cc4:	a5bcf0ef          	jal	ra,8001871e <check_function>
    80048cc8:	c919                	beqz	a0,80048cde <js_typed_array_from+0x70>
quickjs-nuttx/quickjs.c:53341
    r = JS_UNDEFINED;
    80048cca:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:53342
    arr = JS_UNDEFINED;
    80048ccc:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:53411
    JS_FreeValue(ctx, r);
    80048cce:	658a                	ld	a1,128(sp)
    80048cd0:	8626                	mv	a2,s1
    80048cd2:	8522                	mv	a0,s0
    80048cd4:	acbc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53412
    r = JS_EXCEPTION;
    80048cd8:	4499                	li	s1,6
    80048cda:	e102                	sd	zero,128(sp)
    80048cdc:	a235                	j	80048e08 <js_typed_array_from+0x19a>
quickjs-nuttx/quickjs.c:53352
            if (argc > 2)
    80048cde:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:53351
            mapping = 1;
    80048ce0:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:53352
            if (argc > 2)
    80048ce2:	00f90663          	beq	s2,a5,80048cee <js_typed_array_from+0x80>
quickjs-nuttx/quickjs.c:53353
                this_arg = argv[2];
    80048ce6:	709c                	ld	a5,32(s1)
    80048ce8:	e8be                	sd	a5,80(sp)
    80048cea:	749c                	ld	a5,40(s1)
    80048cec:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:53356
    iter = JS_GetProperty(ctx, items, JS_ATOM_Symbol_iterator);
    80048cee:	77e2                	ld	a5,56(sp)
    80048cf0:	7742                	ld	a4,48(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80048cf2:	4801                	li	a6,0
    80048cf4:	863e                	mv	a2,a5
    80048cf6:	0d600693          	li	a3,214
    80048cfa:	85ba                	mv	a1,a4
    80048cfc:	8522                	mv	a0,s0
    80048cfe:	fdbe                	sd	a5,248(sp)
    80048d00:	f9ba                	sd	a4,240(sp)
    80048d02:	da9cd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80048d06:	0005879b          	sext.w	a5,a1
js_typed_array_from():
quickjs-nuttx/quickjs.c:53357
    if (JS_IsException(iter))
    80048d0a:	4a99                	li	s5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80048d0c:	862e                	mv	a2,a1
js_typed_array_from():
quickjs-nuttx/quickjs.c:53357
    80048d0e:	fb578ee3          	beq	a5,s5,80048cca <js_typed_array_from+0x5c>
quickjs-nuttx/quickjs.c:53359
    if (!JS_IsUndefined(iter)) {
    80048d12:	470d                	li	a4,3
    80048d14:	06e78f63          	beq	a5,a4,80048d92 <js_typed_array_from+0x124>
quickjs-nuttx/quickjs.c:53360
        JS_FreeValue(ctx, iter);
    80048d18:	85aa                	mv	a1,a0
    80048d1a:	8522                	mv	a0,s0
    80048d1c:	a83c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53361
        arr = JS_NewArray(ctx);
    80048d20:	8522                	mv	a0,s0
    80048d22:	d38d30ef          	jal	ra,8001c25a <JS_NewArray>
    80048d26:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:53362
        if (JS_IsException(arr))
    80048d28:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:53361
        arr = JS_NewArray(ctx);
    80048d2c:	84ae                	mv	s1,a1
    80048d2e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:53362
        if (JS_IsException(arr))
    80048d30:	1b578e63          	beq	a5,s5,80048eec <js_typed_array_from+0x27e>
quickjs-nuttx/quickjs.c:53364
        stack[0] = JS_DupValue(ctx, items);
    80048d34:	7542                	ld	a0,48(sp)
    80048d36:	75e2                	ld	a1,56(sp)
    80048d38:	ee2c10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80048d3c:	ea2a                	sd	a0,272(sp)
    80048d3e:	ee2e                	sd	a1,280(sp)
quickjs-nuttx/quickjs.c:53365
        if (js_for_of_start(ctx, &stack[1], FALSE))
    80048d40:	4601                	li	a2,0
    80048d42:	120c                	addi	a1,sp,288
    80048d44:	8522                	mv	a0,s0
    80048d46:	dbefb0ef          	jal	ra,80044304 <js_for_of_start>
    80048d4a:	1a051163          	bnez	a0,80048eec <js_typed_array_from+0x27e>
quickjs-nuttx/quickjs.c:53373
            if (JS_DefinePropertyValueInt64(ctx, arr, k, v, JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    80048d4e:	6b11                	lui	s6,0x4
quickjs-nuttx/quickjs.c:53367
        for (k = 0;; k++) {
    80048d50:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:53369
            if (JS_IsException(v))
    80048d52:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:53373
            if (JS_DefinePropertyValueInt64(ctx, arr, k, v, JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    80048d54:	0b1d                	addi	s6,s6,7
quickjs-nuttx/quickjs.c:53368
            v = JS_IteratorNext(ctx, stack[0], stack[1], 0, NULL, &done);
    80048d56:	7692                	ld	a3,288(sp)
    80048d58:	7732                	ld	a4,296(sp)
    80048d5a:	65d2                	ld	a1,272(sp)
    80048d5c:	6672                	ld	a2,280(sp)
    80048d5e:	105c                	addi	a5,sp,36
    80048d60:	8522                	mv	a0,s0
    80048d62:	acefb0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
quickjs-nuttx/quickjs.c:53369
            if (JS_IsException(v))
    80048d66:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:53368
            v = JS_IteratorNext(ctx, stack[0], stack[1], 0, NULL, &done);
    80048d6a:	872a                	mv	a4,a0
    80048d6c:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:53369
            if (JS_IsException(v))
    80048d6e:	17768363          	beq	a3,s7,80048ed4 <js_typed_array_from+0x266>
quickjs-nuttx/quickjs.c:53371
            if (done)
    80048d72:	5692                	lw	a3,36(sp)
    80048d74:	ea95                	bnez	a3,80048da8 <js_typed_array_from+0x13a>
quickjs-nuttx/quickjs.c:53373
            if (JS_DefinePropertyValueInt64(ctx, arr, k, v, JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    80048d76:	75c6                	ld	a1,112(sp)
    80048d78:	885a                	mv	a6,s6
    80048d7a:	86d6                	mv	a3,s5
    80048d7c:	8626                	mv	a2,s1
    80048d7e:	8522                	mv	a0,s0
    80048d80:	ab2e80ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80048d84:	14054863          	bltz	a0,80048ed4 <js_typed_array_from+0x266>
quickjs-nuttx/quickjs.c:53367
        for (k = 0;; k++) {
    80048d88:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:53368
            v = JS_IteratorNext(ctx, stack[0], stack[1], 0, NULL, &done);
    80048d8a:	b7f1                	j	80048d56 <js_typed_array_from+0xe8>
quickjs-nuttx/quickjs.c:53339
    mapfn = JS_UNDEFINED;
    80048d8c:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:53338
    mapping = FALSE;
    80048d8e:	4981                	li	s3,0
    80048d90:	bfb9                	j	80048cee <js_typed_array_from+0x80>
quickjs-nuttx/quickjs.c:53377
        arr = JS_ToObject(ctx, items);
    80048d92:	75c2                	ld	a1,48(sp)
    80048d94:	7662                	ld	a2,56(sp)
    80048d96:	8522                	mv	a0,s0
    80048d98:	b22e70ef          	jal	ra,800300ba <JS_ToObject>
    80048d9c:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:53378
        if (JS_IsException(arr))
    80048d9e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:53377
        arr = JS_ToObject(ctx, items);
    80048da2:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:53378
        if (JS_IsException(arr))
    80048da4:	15578463          	beq	a5,s5,80048eec <js_typed_array_from+0x27e>
quickjs-nuttx/quickjs.c:53381
    if (js_get_length64(ctx, &len, arr) < 0)
    80048da8:	7646                	ld	a2,112(sp)
    80048daa:	86ca                	mv	a3,s2
    80048dac:	102c                	addi	a1,sp,40
    80048dae:	8522                	mv	a0,s0
    80048db0:	820dc0ef          	jal	ra,80024dd0 <js_get_length64>
    80048db4:	12054c63          	bltz	a0,80048eec <js_typed_array_from+0x27e>
quickjs-nuttx/quickjs.c:53383
    v = JS_NewInt64(ctx, len);
    80048db8:	7722                	ld	a4,40(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80048dba:	0007079b          	sext.w	a5,a4
    80048dbe:	08f71263          	bne	a4,a5,80048e42 <js_typed_array_from+0x1d4>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048dc2:	c382                	sw	zero,196(sp)
    80048dc4:	c1be                	sw	a5,192(sp)
    80048dc6:	670e                	ld	a4,192(sp)
    80048dc8:	f9ba                	sd	a4,240(sp)
    80048dca:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80048dcc:	d9be                	sw	a5,240(sp)
    80048dce:	37ce                	fld	fa5,240(sp)
js_typed_array_from():
quickjs-nuttx/quickjs.c:53385
    r = js_typed_array_create(ctx, this_val, 1, args);
    80048dd0:	6662                	ld	a2,24(sp)
    80048dd2:	65c2                	ld	a1,16(sp)
    80048dd4:	ed3a                	sd	a4,152(sp)
quickjs-nuttx/quickjs.c:53384
    args[0] = v;
    80048dd6:	fdba                	sd	a4,248(sp)
quickjs-nuttx/quickjs.c:53385
    r = js_typed_array_create(ctx, this_val, 1, args);
    80048dd8:	4685                	li	a3,1
    80048dda:	1998                	addi	a4,sp,240
    80048ddc:	8522                	mv	a0,s0
    80048dde:	a93e                	fsd	fa5,144(sp)
    80048de0:	dd7f80ef          	jal	ra,80041bb6 <js_typed_array_create>
    80048de4:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:53386
    JS_FreeValue(ctx, v);
    80048de6:	666a                	ld	a2,152(sp)
quickjs-nuttx/quickjs.c:53385
    r = js_typed_array_create(ctx, this_val, 1, args);
    80048de8:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:53386
    JS_FreeValue(ctx, v);
    80048dea:	65ca                	ld	a1,144(sp)
quickjs-nuttx/quickjs.c:53385
    r = js_typed_array_create(ctx, this_val, 1, args);
    80048dec:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:53386
    JS_FreeValue(ctx, v);
    80048dee:	8522                	mv	a0,s0
    80048df0:	9afc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53387
    if (JS_IsException(r))
    80048df4:	000a871b          	sext.w	a4,s5
    80048df8:	4799                	li	a5,6
    80048dfa:	ecf70ae3          	beq	a4,a5,80048cce <js_typed_array_from+0x60>
quickjs-nuttx/quickjs.c:53389
    for(k = 0; k < len; k++) {
    80048dfe:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:53391
        if (JS_IsException(v))
    80048e00:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:53389 (discriminator 1)
    for(k = 0; k < len; k++) {
    80048e02:	77a2                	ld	a5,40(sp)
    80048e04:	04fc4763          	blt	s8,a5,80048e52 <js_typed_array_from+0x1e4>
quickjs-nuttx/quickjs.c:53414
    JS_FreeValue(ctx, arr);
    80048e08:	75c6                	ld	a1,112(sp)
    80048e0a:	864a                	mv	a2,s2
    80048e0c:	8522                	mv	a0,s0
    80048e0e:	991c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53415
    JS_FreeValue(ctx, stack[0]);
    80048e12:	65d2                	ld	a1,272(sp)
    80048e14:	6672                	ld	a2,280(sp)
    80048e16:	8522                	mv	a0,s0
    80048e18:	987c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53416
    JS_FreeValue(ctx, stack[1]);
    80048e1c:	7592                	ld	a1,288(sp)
    80048e1e:	7632                	ld	a2,296(sp)
    80048e20:	8522                	mv	a0,s0
    80048e22:	97dc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53418
}
    80048e26:	70f6                	ld	ra,376(sp)
    80048e28:	7456                	ld	s0,368(sp)
    80048e2a:	650a                	ld	a0,128(sp)
    80048e2c:	7916                	ld	s2,352(sp)
    80048e2e:	69f6                	ld	s3,344(sp)
    80048e30:	6a56                	ld	s4,336(sp)
    80048e32:	6ab6                	ld	s5,328(sp)
    80048e34:	6b16                	ld	s6,320(sp)
    80048e36:	7bf2                	ld	s7,312(sp)
    80048e38:	7c52                	ld	s8,304(sp)
    80048e3a:	85a6                	mv	a1,s1
    80048e3c:	74b6                	ld	s1,360(sp)
    80048e3e:	6119                	addi	sp,sp,384
    80048e40:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80048e42:	d22777d3          	fcvt.d.l	fa5,a4
    80048e46:	471d                	li	a4,7
    80048e48:	e20787d3          	fmv.x.d	a5,fa5
js_typed_array_from():
quickjs-nuttx/quickjs.h:230
    return v;
    80048e4c:	b9be                	fsd	fa5,240(sp)
    80048e4e:	2781                	sext.w	a5,a5
    80048e50:	bfb5                	j	80048dcc <js_typed_array_from+0x15e>
quickjs-nuttx/quickjs.c:53390
        v = JS_GetPropertyInt64(ctx, arr, k);
    80048e52:	75c6                	ld	a1,112(sp)
    80048e54:	86e2                	mv	a3,s8
    80048e56:	864a                	mv	a2,s2
    80048e58:	8522                	mv	a0,s0
    80048e5a:	b89f00ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80048e5e:	e92a                	sd	a0,144(sp)
    80048e60:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:53391
        if (JS_IsException(v))
    80048e62:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:53390
        v = JS_GetPropertyInt64(ctx, arr, k);
    80048e66:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:53391
        if (JS_IsException(v))
    80048e68:	e76703e3          	beq	a4,s6,80048cce <js_typed_array_from+0x60>
quickjs-nuttx/quickjs.c:53393
        if (mapping) {
    80048e6c:	00099f63          	bnez	s3,80048e8a <js_typed_array_from+0x21c>
quickjs-nuttx/quickjs.c:53390
        v = JS_GetPropertyInt64(ctx, arr, k);
    80048e70:	4bca                	lw	s7,144(sp)
quickjs-nuttx/quickjs.c:53402
        if (JS_SetPropertyInt64(ctx, r, k, v) < 0)
    80048e72:	c95e                	sw	s7,144(sp)
    80048e74:	674a                	ld	a4,144(sp)
    80048e76:	658a                	ld	a1,128(sp)
    80048e78:	86e2                	mv	a3,s8
    80048e7a:	8656                	mv	a2,s5
    80048e7c:	8522                	mv	a0,s0
    80048e7e:	ff7ee0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    80048e82:	e40546e3          	bltz	a0,80048cce <js_typed_array_from+0x60>
quickjs-nuttx/quickjs.c:53389 (discriminator 2)
    for(k = 0; k < len; k++) {
    80048e86:	0c05                	addi	s8,s8,1
    80048e88:	bfad                	j	80048e02 <js_typed_array_from+0x194>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80048e8a:	f182                	sd	zero,224(sp)
js_typed_array_from():
quickjs-nuttx/quickjs.c:53395
            args[1] = JS_NewInt32(ctx, k);
    80048e8c:	d1e2                	sw	s8,224(sp)
    80048e8e:	778e                	ld	a5,224(sp)
quickjs-nuttx/quickjs.c:53396
            v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048e90:	6766                	ld	a4,88(sp)
    80048e92:	66c6                	ld	a3,80(sp)
quickjs-nuttx/quickjs.c:53394
            args[0] = v;
    80048e94:	fdae                	sd	a1,248(sp)
quickjs-nuttx/quickjs.c:53396
            v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048e96:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:53394
            args[0] = v;
    80048e98:	f9aa                	sd	a0,240(sp)
    80048e9a:	e9be                	sd	a5,208(sp)
quickjs-nuttx/quickjs.c:53395
            args[1] = JS_NewInt32(ctx, k);
    80048e9c:	e23e                	sd	a5,256(sp)
quickjs-nuttx/quickjs.c:53396
            v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048e9e:	0f010813          	addi	a6,sp,240
    80048ea2:	4789                	li	a5,2
    80048ea4:	8652                	mv	a2,s4
    80048ea6:	8522                	mv	a0,s0
    80048ea8:	ed82                	sd	zero,216(sp)
quickjs-nuttx/quickjs.c:53395
            args[1] = JS_NewInt32(ctx, k);
    80048eaa:	e602                	sd	zero,264(sp)
quickjs-nuttx/quickjs.c:53396
            v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048eac:	f59f90ef          	jal	ra,80042e04 <JS_Call>
    80048eb0:	f52e                	sd	a1,168(sp)
    80048eb2:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:53397
            JS_FreeValue(ctx, v);
    80048eb4:	666a                	ld	a2,152(sp)
    80048eb6:	65ca                	ld	a1,144(sp)
quickjs-nuttx/quickjs.c:53396
            v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80048eb8:	f12a                	sd	a0,160(sp)
    80048eba:	00050b9b          	sext.w	s7,a0
quickjs-nuttx/quickjs.c:53397
            JS_FreeValue(ctx, v);
    80048ebe:	8522                	mv	a0,s0
    80048ec0:	8dfc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53398
            v = v2;
    80048ec4:	770a                	ld	a4,160(sp)
quickjs-nuttx/quickjs.c:53399
            if (JS_IsException(v))
    80048ec6:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:53398
            v = v2;
    80048ec8:	e93a                	sd	a4,144(sp)
quickjs-nuttx/quickjs.c:53399
            if (JS_IsException(v))
    80048eca:	0007871b          	sext.w	a4,a5
    80048ece:	fb6712e3          	bne	a4,s6,80048e72 <js_typed_array_from+0x204>
    80048ed2:	bbf5                	j	80048cce <js_typed_array_from+0x60>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80048ed4:	6672                	ld	a2,280(sp)
js_typed_array_from():
quickjs-nuttx/quickjs.c:53341
    r = JS_UNDEFINED;
    80048ed6:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:53408
    if (!JS_IsUndefined(stack[0]))
    80048ed8:	0006079b          	sext.w	a5,a2
    80048edc:	de9789e3          	beq	a5,s1,80048cce <js_typed_array_from+0x60>
quickjs-nuttx/quickjs.c:53409
        JS_IteratorClose(ctx, stack[0], TRUE);
    80048ee0:	65d2                	ld	a1,272(sp)
    80048ee2:	4685                	li	a3,1
    80048ee4:	8522                	mv	a0,s0
    80048ee6:	d55cf0ef          	jal	ra,80018c3a <JS_IteratorClose>
    80048eea:	b3d5                	j	80048cce <js_typed_array_from+0x60>
quickjs-nuttx/quickjs.c:53341
    r = JS_UNDEFINED;
    80048eec:	448d                	li	s1,3
    80048eee:	b3c5                	j	80048cce <js_typed_array_from+0x60>

0000000080048ef0 <js_TA_cmp_generic>:
js_TA_cmp_generic():
quickjs-nuttx/quickjs.c:54221
static int js_TA_cmp_generic(const void *a, const void *b, void *opaque) {
    80048ef0:	7119                	addi	sp,sp,-128
    80048ef2:	fc86                	sd	ra,120(sp)
    80048ef4:	f8a2                	sd	s0,112(sp)
    80048ef6:	f4a6                	sd	s1,104(sp)
    80048ef8:	f0ca                	sd	s2,96(sp)
    80048efa:	ecce                	sd	s3,88(sp)
    80048efc:	e8d2                	sd	s4,80(sp)
quickjs-nuttx/quickjs.c:54230
    if (!psc->exception) {
    80048efe:	4604                	lw	s1,8(a2)
    80048f00:	e0f5                	bnez	s1,80048fe4 <js_TA_cmp_generic+0xf4>
quickjs-nuttx/quickjs.c:54233
        a_idx = *(uint32_t *)a;
    80048f02:	00052983          	lw	s3,0(a0)
quickjs-nuttx/quickjs.c:54236
                              a_idx * (size_t)psc->elt_size);
    80048f06:	423c                	lw	a5,64(a2)
quickjs-nuttx/quickjs.c:54234
        b_idx = *(uint32_t *)b;
    80048f08:	0005aa03          	lw	s4,0(a1)
quickjs-nuttx/quickjs.c:54236
                              a_idx * (size_t)psc->elt_size);
    80048f0c:	02099593          	slli	a1,s3,0x20
    80048f10:	9181                	srli	a1,a1,0x20
    80048f12:	02b787b3          	mul	a5,a5,a1
quickjs-nuttx/quickjs.c:54223
    JSContext *ctx = psc->ctx;
    80048f16:	00063903          	ld	s2,0(a2)
quickjs-nuttx/quickjs.c:54235
        argv[0] = psc->getfun(ctx, psc->array_ptr +
    80048f1a:	7e0c                	ld	a1,56(a2)
    80048f1c:	7a18                	ld	a4,48(a2)
    80048f1e:	854a                	mv	a0,s2
    80048f20:	8432                	mv	s0,a2
    80048f22:	95be                	add	a1,a1,a5
    80048f24:	9702                	jalr	a4
quickjs-nuttx/quickjs.c:54238
                              b_idx * (size_t)(psc->elt_size));
    80048f26:	403c                	lw	a5,64(s0)
quickjs-nuttx/quickjs.c:54235
        argv[0] = psc->getfun(ctx, psc->array_ptr +
    80048f28:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:54238
                              b_idx * (size_t)(psc->elt_size));
    80048f2a:	020a1593          	slli	a1,s4,0x20
    80048f2e:	9181                	srli	a1,a1,0x20
    80048f30:	02b787b3          	mul	a5,a5,a1
quickjs-nuttx/quickjs.c:54237
        argv[1] = psc->getfun(ctx, psc->array_ptr +
    80048f34:	7c0c                	ld	a1,56(s0)
    80048f36:	7818                	ld	a4,48(s0)
quickjs-nuttx/quickjs.c:54235
        argv[0] = psc->getfun(ctx, psc->array_ptr +
    80048f38:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:54237
        argv[1] = psc->getfun(ctx, psc->array_ptr +
    80048f3a:	854a                	mv	a0,s2
    80048f3c:	95be                	add	a1,a1,a5
    80048f3e:	9702                	jalr	a4
quickjs-nuttx/quickjs.c:54239
        res = JS_Call(ctx, psc->cmp, JS_UNDEFINED, 2, argv);
    80048f40:	7410                	ld	a2,40(s0)
quickjs-nuttx/quickjs.c:54237
        argv[1] = psc->getfun(ctx, psc->array_ptr +
    80048f42:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:54239
        res = JS_Call(ctx, psc->cmp, JS_UNDEFINED, 2, argv);
    80048f44:	700c                	ld	a1,32(s0)
    80048f46:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:54237
        argv[1] = psc->getfun(ctx, psc->array_ptr +
    80048f48:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:54239
        res = JS_Call(ctx, psc->cmp, JS_UNDEFINED, 2, argv);
    80048f4a:	f43e                	sd	a5,40(sp)
    80048f4c:	4681                	li	a3,0
    80048f4e:	4789                	li	a5,2
    80048f50:	470d                	li	a4,3
    80048f52:	03010813          	addi	a6,sp,48
    80048f56:	854a                	mv	a0,s2
    80048f58:	f002                	sd	zero,32(sp)
    80048f5a:	eabf90ef          	jal	ra,80042e04 <JS_Call>
    80048f5e:	e82a                	sd	a0,16(sp)
    80048f60:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80048f62:	0005879b          	sext.w	a5,a1
js_TA_cmp_generic():
quickjs-nuttx/quickjs.c:54240
        if (JS_IsException(res)) {
    80048f66:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:54239
        res = JS_Call(ctx, psc->cmp, JS_UNDEFINED, 2, argv);
    80048f68:	862a                	mv	a2,a0
    80048f6a:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:54240
        if (JS_IsException(res)) {
    80048f6c:	02e79763          	bne	a5,a4,80048f9a <js_TA_cmp_generic+0xaa>
quickjs-nuttx/quickjs.c:54250
                psc->exception = 1;
    80048f70:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:54262
            psc->exception = 2;
    80048f72:	c41c                	sw	a5,8(s0)
quickjs-nuttx/quickjs.c:54265
        JS_FreeValue(ctx, (JSValue)argv[0]);
    80048f74:	75c2                	ld	a1,48(sp)
    80048f76:	7662                	ld	a2,56(sp)
    80048f78:	854a                	mv	a0,s2
    80048f7a:	825c20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54266
        JS_FreeValue(ctx, (JSValue)argv[1]);
    80048f7e:	6586                	ld	a1,64(sp)
    80048f80:	6626                	ld	a2,72(sp)
    80048f82:	854a                	mv	a0,s2
    80048f84:	81bc20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54269
}
    80048f88:	70e6                	ld	ra,120(sp)
    80048f8a:	7446                	ld	s0,112(sp)
    80048f8c:	7906                	ld	s2,96(sp)
    80048f8e:	69e6                	ld	s3,88(sp)
    80048f90:	6a46                	ld	s4,80(sp)
    80048f92:	8526                	mv	a0,s1
    80048f94:	74a6                	ld	s1,104(sp)
    80048f96:	6109                	addi	sp,sp,128
    80048f98:	8082                	ret
quickjs-nuttx/quickjs.c:54244
        if (JS_VALUE_GET_TAG(res) == JS_TAG_INT) {
    80048f9a:	e79d                	bnez	a5,80048fc8 <js_TA_cmp_generic+0xd8>
quickjs-nuttx/quickjs.c:54239
        res = JS_Call(ctx, psc->cmp, JS_UNDEFINED, 2, argv);
    80048f9c:	47c2                	lw	a5,16(sp)
quickjs-nuttx/quickjs.c:54246
            cmp = (val > 0) - (val < 0);
    80048f9e:	00f024b3          	sgtz	s1,a5
    80048fa2:	01f7d79b          	srliw	a5,a5,0x1f
quickjs-nuttx/quickjs.c:54253
                cmp = (val > 0) - (val < 0);
    80048fa6:	9c9d                	subw	s1,s1,a5
quickjs-nuttx/quickjs.c:54256
        if (cmp == 0) {
    80048fa8:	e499                	bnez	s1,80048fb6 <js_TA_cmp_generic+0xc6>
quickjs-nuttx/quickjs.c:54258
            cmp = (a_idx > b_idx) - (a_idx < b_idx);
    80048faa:	013a34b3          	sltu	s1,s4,s3
    80048fae:	0149b9b3          	sltu	s3,s3,s4
    80048fb2:	413484bb          	subw	s1,s1,s3
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52938
    JSTypedArray *ta = p->u.typed_array;
    80048fb6:	681c                	ld	a5,16(s0)
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80048fb8:	7b9c                	ld	a5,48(a5)
    80048fba:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    80048fbc:	7b9c                	ld	a5,48(a5)
js_TA_cmp_generic():
quickjs-nuttx/quickjs.c:54260
        if (unlikely(typed_array_is_detached(ctx,
    80048fbe:	0047c783          	lbu	a5,4(a5)
    80048fc2:	dbcd                	beqz	a5,80048f74 <js_TA_cmp_generic+0x84>
quickjs-nuttx/quickjs.c:54262
            psc->exception = 2;
    80048fc4:	4789                	li	a5,2
    80048fc6:	b775                	j	80048f72 <js_TA_cmp_generic+0x82>
quickjs-nuttx/quickjs.c:54249
            if (JS_ToFloat64Free(ctx, &val, res) < 0) {
    80048fc8:	002c                	addi	a1,sp,8
    80048fca:	854a                	mv	a0,s2
    80048fcc:	ecad90ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80048fd0:	fa0540e3          	bltz	a0,80048f70 <js_TA_cmp_generic+0x80>
quickjs-nuttx/quickjs.c:54253
                cmp = (val > 0) - (val < 0);
    80048fd4:	2722                	fld	fa4,8(sp)
    80048fd6:	f20007d3          	fmv.d.x	fa5,zero
    80048fda:	a2e794d3          	flt.d	s1,fa5,fa4
    80048fde:	a2f717d3          	flt.d	a5,fa4,fa5
    80048fe2:	b7d1                	j	80048fa6 <js_TA_cmp_generic+0xb6>
quickjs-nuttx/quickjs.c:54229
    cmp = 0;
    80048fe4:	4481                	li	s1,0
    80048fe6:	b74d                	j	80048f88 <js_TA_cmp_generic+0x98>

0000000080048fe8 <js_typed_array_find>:
js_typed_array_find():
quickjs-nuttx/quickjs.c:53564
{
    80048fe8:	716d                	addi	sp,sp,-272
    80048fea:	e222                	sd	s0,256(sp)
    80048fec:	fda6                	sd	s1,248(sp)
    80048fee:	f9ca                	sd	s2,240(sp)
    80048ff0:	edd6                	sd	s5,216(sp)
    80048ff2:	e606                	sd	ra,264(sp)
    80048ff4:	f5ce                	sd	s3,232(sp)
    80048ff6:	f1d2                	sd	s4,224(sp)
    80048ff8:	e9da                	sd	s6,208(sp)
    80048ffa:	e5de                	sd	s7,200(sp)
    80048ffc:	842a                	mv	s0,a0
    80048ffe:	e02e                	sd	a1,0(sp)
