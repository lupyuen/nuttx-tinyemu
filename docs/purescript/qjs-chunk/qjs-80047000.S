    80046002:	ea2e                	sd	a1,272(sp)
quickjs-nuttx/quickjs.c:45395
    string_buffer_init(ctx, jsc->b, 0);
    80046004:	65f2                	ld	a1,280(sp)
quickjs-nuttx/quickjs.c:45391
    jsc->empty = JS_AtomToString(ctx, JS_ATOM_empty_string);
    80046006:	e62a                	sd	a0,264(sp)
quickjs-nuttx/quickjs.c:45395
    string_buffer_init(ctx, jsc->b, 0);
    80046008:	4601                	li	a2,0
    8004600a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:45392
    ret = JS_UNDEFINED;
    8004600c:	f482                	sd	zero,104(sp)
    8004600e:	f882                	sd	zero,112(sp)
quickjs-nuttx/quickjs.c:45393
    wrapper = JS_UNDEFINED;
    80046010:	fc82                	sd	zero,120(sp)
    80046012:	e102                	sd	zero,128(sp)
quickjs-nuttx/quickjs.c:45395
    string_buffer_init(ctx, jsc->b, 0);
    80046014:	f69d70ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:45396
    jsc->stack = JS_NewArray(ctx);
    80046018:	8522                	mv	a0,s0
    8004601a:	a40d60ef          	jal	ra,8001c25a <JS_NewArray>
    8004601e:	f1ae                	sd	a1,224(sp)
    80046020:	edaa                	sd	a0,216(sp)
quickjs-nuttx/quickjs.c:45397
    if (JS_IsException(jsc->stack))
    80046022:	2581                	sext.w	a1,a1
    80046024:	4499                	li	s1,6
    80046026:	0c958e63          	beq	a1,s1,80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45399
    if (JS_IsFunction(ctx, replacer)) {
    8004602a:	65c2                	ld	a1,16(sp)
    8004602c:	6662                	ld	a2,24(sp)
    8004602e:	8522                	mv	a0,s0
    80046030:	c72c80ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80046034:	c921                	beqz	a0,80046084 <JS_JSONStringify+0xc2>
quickjs-nuttx/quickjs.c:45400
        jsc->replacer_func = replacer;
    80046036:	67c2                	ld	a5,16(sp)
    80046038:	e5be                	sd	a5,200(sp)
    8004603a:	67e2                	ld	a5,24(sp)
    8004603c:	e9be                	sd	a5,208(sp)
quickjs-nuttx/quickjs.c:45450
    space = JS_DupValue(ctx, space0);
    8004603e:	6502                	ld	a0,0(sp)
    80046040:	65a2                	ld	a1,8(sp)
    80046042:	bd8c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80046046:	ecaa                	sd	a0,88(sp)
    80046048:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:45451
    if (JS_IsObject(space)) {
    8004604a:	0005871b          	sext.w	a4,a1
    8004604e:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:45450
    space = JS_DupValue(ctx, space0);
    80046050:	84ae                	mv	s1,a1
    80046052:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:45451
    if (JS_IsObject(space)) {
    80046054:	12f71563          	bne	a4,a5,8004617e <JS_JSONStringify+0x1bc>
quickjs-nuttx/quickjs.c:45453
        if (p->class_id == JS_CLASS_NUMBER) {
    80046058:	00655783          	lhu	a5,6(a0)
    8004605c:	4711                	li	a4,4
    8004605e:	10e79763          	bne	a5,a4,8004616c <JS_JSONStringify+0x1aa>
quickjs-nuttx/quickjs.c:45454
            space = JS_ToNumberFree(ctx, space);
    80046062:	85aa                	mv	a1,a0
    80046064:	8626                	mv	a2,s1
    80046066:	8522                	mv	a0,s0
    80046068:	a22dc0ef          	jal	ra,8002228a <JS_ToNumberFree>
quickjs-nuttx/quickjs.c:45456
            space = JS_ToStringFree(ctx, space);
    8004606c:	84ae                	mv	s1,a1
    8004606e:	ecaa                	sd	a0,88(sp)
    80046070:	f0ae                	sd	a1,96(sp)
    80046072:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:45458
        if (JS_IsException(space)) {
    80046074:	0004879b          	sext.w	a5,s1
    80046078:	4719                	li	a4,6
    8004607a:	10e79263          	bne	a5,a4,8004617e <JS_JSONStringify+0x1bc>
quickjs-nuttx/quickjs.c:45459
            JS_FreeValue(ctx, space);
    8004607e:	85ca                	mv	a1,s2
    80046080:	8626                	mv	a2,s1
    80046082:	a84d                	j	80046134 <JS_JSONStringify+0x172>
quickjs-nuttx/quickjs.c:45402
        res = JS_IsArray(ctx, replacer);
    80046084:	65c2                	ld	a1,16(sp)
    80046086:	6662                	ld	a2,24(sp)
    80046088:	8522                	mv	a0,s0
    8004608a:	d21d30ef          	jal	ra,80019daa <JS_IsArray>
quickjs-nuttx/quickjs.c:45403
        if (res < 0)
    8004608e:	06054a63          	bltz	a0,80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45405
        if (res) {
    80046092:	d555                	beqz	a0,8004603e <JS_JSONStringify+0x7c>
quickjs-nuttx/quickjs.c:45407
            jsc->property_list = JS_NewArray(ctx);
    80046094:	8522                	mv	a0,s0
    80046096:	9c4d60ef          	jal	ra,8001c25a <JS_NewArray>
    8004609a:	f9ae                	sd	a1,240(sp)
    8004609c:	f5aa                	sd	a0,232(sp)
quickjs-nuttx/quickjs.c:45408
            if (JS_IsException(jsc->property_list))
    8004609e:	2581                	sext.w	a1,a1
    800460a0:	06958163          	beq	a1,s1,80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45410
            if (js_get_length64(ctx, &n, replacer))
    800460a4:	6642                	ld	a2,16(sp)
    800460a6:	66e2                	ld	a3,24(sp)
    800460a8:	180c                	addi	a1,sp,48
    800460aa:	8522                	mv	a0,s0
    800460ac:	d25de0ef          	jal	ra,80024dd0 <js_get_length64>
    800460b0:	e929                	bnez	a0,80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45412
            for (i = j = 0; i < n; i++) {
    800460b2:	4901                	li	s2,0
    800460b4:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:45415
                if (JS_IsException(v))
    800460b6:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:45417
                if (JS_IsObject(v)) {
    800460b8:	5a7d                	li	s4,-1
JS_IsNumber():
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    800460ba:	4a9d                	li	s5,7
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45432
                } else if (!JS_IsString(v)) {
    800460bc:	5b65                	li	s6,-7
quickjs-nuttx/quickjs.c:45412 (discriminator 1)
            for (i = j = 0; i < n; i++) {
    800460be:	77c2                	ld	a5,48(sp)
    800460c0:	f6f4dfe3          	bge	s1,a5,8004603e <JS_JSONStringify+0x7c>
quickjs-nuttx/quickjs.c:45414
                v = JS_GetPropertyInt64(ctx, replacer, i);
    800460c4:	65c2                	ld	a1,16(sp)
    800460c6:	6662                	ld	a2,24(sp)
    800460c8:	86a6                	mv	a3,s1
    800460ca:	8522                	mv	a0,s0
    800460cc:	917f30ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    800460d0:	e8ae                	sd	a1,80(sp)
    800460d2:	e4aa                	sd	a0,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800460d4:	2581                	sext.w	a1,a1
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45415
                if (JS_IsException(v))
    800460d6:	03358663          	beq	a1,s3,80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45417
                if (JS_IsObject(v)) {
    800460da:	03459863          	bne	a1,s4,8004610a <JS_JSONStringify+0x148>
quickjs-nuttx/quickjs.c:45419
                    if (p->class_id == JS_CLASS_STRING ||
    800460de:	00655783          	lhu	a5,6(a0)
    800460e2:	4705                	li	a4,1
    800460e4:	37f1                	addiw	a5,a5,-4
    800460e6:	17c2                	slli	a5,a5,0x30
    800460e8:	93c1                	srli	a5,a5,0x30
    800460ea:	06f76b63          	bltu	a4,a5,80046160 <JS_JSONStringify+0x19e>
quickjs-nuttx/quickjs.c:45421
                        v = JS_ToStringFree(ctx, v);
    800460ee:	65a6                	ld	a1,72(sp)
    800460f0:	6646                	ld	a2,80(sp)
    800460f2:	8522                	mv	a0,s0
    800460f4:	e92da0ef          	jal	ra,80020786 <JS_ToStringFree>
    800460f8:	e8ae                	sd	a1,80(sp)
    800460fa:	e4aa                	sd	a0,72(sp)
quickjs-nuttx/quickjs.c:45422
                        if (JS_IsException(v))
    800460fc:	2581                	sext.w	a1,a1
    800460fe:	01359b63          	bne	a1,s3,80046114 <JS_JSONStringify+0x152>
quickjs-nuttx/quickjs.c:45393
    wrapper = JS_UNDEFINED;
    80046102:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:45499
    ret = JS_EXCEPTION;
    80046104:	f482                	sd	zero,104(sp)
    80046106:	4499                	li	s1,6
    80046108:	aa15                	j	8004623c <JS_JSONStringify+0x27a>
JS_IsNumber():
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    8004610a:	d1f5                	beqz	a1,800460ee <JS_JSONStringify+0x12c>
    8004610c:	ff5581e3          	beq	a1,s5,800460ee <JS_JSONStringify+0x12c>
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45432
                } else if (!JS_IsString(v)) {
    80046110:	05659863          	bne	a1,s6,80046160 <JS_JSONStringify+0x19e>
quickjs-nuttx/quickjs.c:45436
                present = js_array_includes(ctx, jsc->property_list,
    80046114:	764e                	ld	a2,240(sp)
    80046116:	75ae                	ld	a1,232(sp)
    80046118:	00b8                	addi	a4,sp,72
    8004611a:	4685                	li	a3,1
    8004611c:	8522                	mv	a0,s0
    8004611e:	943f30ef          	jal	ra,80039a60 <js_array_includes>
    80046122:	ed2a                	sd	a0,152(sp)
    80046124:	f12e                	sd	a1,160(sp)
quickjs-nuttx/quickjs.c:45438
                if (JS_IsException(present)) {
    80046126:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45436
                present = js_array_includes(ctx, jsc->property_list,
    8004612a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45438
                if (JS_IsException(present)) {
    8004612c:	01379863          	bne	a5,s3,8004613c <JS_JSONStringify+0x17a>
quickjs-nuttx/quickjs.c:45439
                    JS_FreeValue(ctx, v);
    80046130:	65a6                	ld	a1,72(sp)
    80046132:	6646                	ld	a2,80(sp)
quickjs-nuttx/quickjs.c:45459
            JS_FreeValue(ctx, space);
    80046134:	8522                	mv	a0,s0
    80046136:	e68c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45460
            goto exception;
    8004613a:	b7e1                	j	80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45442
                if (!JS_ToBoolFree(ctx, present)) {
    8004613c:	85aa                	mv	a1,a0
    8004613e:	8522                	mv	a0,s0
    80046140:	9d5c50ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80046144:	ed11                	bnez	a0,80046160 <JS_JSONStringify+0x19e>
quickjs-nuttx/quickjs.c:45443
                    JS_SetPropertyInt64(ctx, jsc->property_list, j++, v);
    80046146:	6726                	ld	a4,72(sp)
    80046148:	67c6                	ld	a5,80(sp)
    8004614a:	75ae                	ld	a1,232(sp)
    8004614c:	764e                	ld	a2,240(sp)
    8004614e:	86ca                	mv	a3,s2
    80046150:	00190b93          	addi	s7,s2,1
    80046154:	8522                	mv	a0,s0
    80046156:	d1ff10ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    8004615a:	895e                	mv	s2,s7
quickjs-nuttx/quickjs.c:45412 (discriminator 2)
            for (i = j = 0; i < n; i++) {
    8004615c:	0485                	addi	s1,s1,1
    8004615e:	b785                	j	800460be <JS_JSONStringify+0xfc>
quickjs-nuttx/quickjs.c:45445
                    JS_FreeValue(ctx, v);
    80046160:	65a6                	ld	a1,72(sp)
    80046162:	6646                	ld	a2,80(sp)
    80046164:	8522                	mv	a0,s0
    80046166:	e38c50ef          	jal	ra,8000b79e <JS_FreeValue>
    8004616a:	bfcd                	j	8004615c <JS_JSONStringify+0x19a>
quickjs-nuttx/quickjs.c:45455
        } else if (p->class_id == JS_CLASS_STRING) {
    8004616c:	4715                	li	a4,5
    8004616e:	f0e793e3          	bne	a5,a4,80046074 <JS_JSONStringify+0xb2>
quickjs-nuttx/quickjs.c:45456
            space = JS_ToStringFree(ctx, space);
    80046172:	85aa                	mv	a1,a0
    80046174:	8626                	mv	a2,s1
    80046176:	8522                	mv	a0,s0
    80046178:	e0eda0ef          	jal	ra,80020786 <JS_ToStringFree>
    8004617c:	bdc5                	j	8004606c <JS_JSONStringify+0xaa>
JS_IsNumber():
quickjs-nuttx/quickjs.h:571
    int tag = JS_VALUE_GET_TAG(v);
    8004617e:	0004879b          	sext.w	a5,s1
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    80046182:	cf81                	beqz	a5,8004619a <JS_JSONStringify+0x1d8>
    80046184:	471d                	li	a4,7
    80046186:	00e78a63          	beq	a5,a4,8004619a <JS_JSONStringify+0x1d8>
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45468
    } else if (JS_IsString(space)) {
    8004618a:	5765                	li	a4,-7
    8004618c:	0ae78c63          	beq	a5,a4,80046244 <JS_JSONStringify+0x282>
quickjs-nuttx/quickjs.c:45472
        jsc->gap = JS_DupValue(ctx, jsc->empty);
    80046190:	6532                	ld	a0,264(sp)
    80046192:	65d2                	ld	a1,272(sp)
    80046194:	a86c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80046198:	a01d                	j	800461be <JS_JSONStringify+0x1fc>
quickjs-nuttx/quickjs.c:45465
        if (JS_ToInt32Clamp(ctx, &n, space, 0, 10, 0))
    8004619a:	4801                	li	a6,0
    8004619c:	47a9                	li	a5,10
    8004619e:	4701                	li	a4,0
    800461a0:	864a                	mv	a2,s2
    800461a2:	86a6                	mv	a3,s1
    800461a4:	092c                	addi	a1,sp,152
    800461a6:	8522                	mv	a0,s0
    800461a8:	a3fdd0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    800461ac:	f939                	bnez	a0,80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45467
        jsc->gap = JS_NewStringLen(ctx, "          ", n);
    800461ae:	466a                	lw	a2,152(sp)
    800461b0:	00027597          	auipc	a1,0x27
    800461b4:	48858593          	addi	a1,a1,1160 # 8006d638 <qjsc_repl+0x8088>
    800461b8:	8522                	mv	a0,s0
    800461ba:	c51d80ef          	jal	ra,8001ee0a <JS_NewStringLen>
quickjs-nuttx/quickjs.c:45472
        jsc->gap = JS_DupValue(ctx, jsc->empty);
    800461be:	fdaa                	sd	a0,248(sp)
    800461c0:	e22e                	sd	a1,256(sp)
quickjs-nuttx/quickjs.c:45474
    JS_FreeValue(ctx, space);
    800461c2:	8626                	mv	a2,s1
    800461c4:	85ca                	mv	a1,s2
    800461c6:	8522                	mv	a0,s0
    800461c8:	dd6c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45475
    if (JS_IsException(jsc->gap))
    800461cc:	10012783          	lw	a5,256(sp)
    800461d0:	4499                	li	s1,6
    800461d2:	f29788e3          	beq	a5,s1,80046102 <JS_JSONStringify+0x140>
quickjs-nuttx/quickjs.c:45477
    wrapper = JS_NewObject(ctx);
    800461d6:	8522                	mv	a0,s0
    800461d8:	e4dd50ef          	jal	ra,8001c024 <JS_NewObject>
    800461dc:	fcaa                	sd	a0,120(sp)
    800461de:	e12e                	sd	a1,128(sp)
quickjs-nuttx/quickjs.c:45478
    if (JS_IsException(wrapper))
    800461e0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45477
    wrapper = JS_NewObject(ctx);
    800461e4:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:45478
    if (JS_IsException(wrapper))
    800461e6:	f0978fe3          	beq	a5,s1,80046104 <JS_JSONStringify+0x142>
quickjs-nuttx/quickjs.c:45480
    if (JS_DefinePropertyValue(ctx, wrapper, JS_ATOM_empty_string,
    800461ea:	7502                	ld	a0,32(sp)
    800461ec:	75a2                	ld	a1,40(sp)
    800461ee:	a2cc40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800461f2:	87ae                	mv	a5,a1
    800461f4:	660a                	ld	a2,128(sp)
    800461f6:	75e6                	ld	a1,120(sp)
    800461f8:	872a                	mv	a4,a0
    800461fa:	481d                	li	a6,7
    800461fc:	02f00693          	li	a3,47
    80046200:	8522                	mv	a0,s0
    80046202:	82ad20ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80046206:	ee054fe3          	bltz	a0,80046104 <JS_JSONStringify+0x142>
quickjs-nuttx/quickjs.c:45483
    val = JS_DupValue(ctx, obj);
    8004620a:	7502                	ld	a0,32(sp)
    8004620c:	75a2                	ld	a1,40(sp)
    8004620e:	a0cc40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:45485
    val = js_json_check(ctx, jsc, wrapper, val, jsc->empty);
    80046212:	7666                	ld	a2,120(sp)
    80046214:	668a                	ld	a3,128(sp)
    80046216:	6832                	ld	a6,264(sp)
    80046218:	68d2                	ld	a7,272(sp)
quickjs-nuttx/quickjs.c:45483
    val = JS_DupValue(ctx, obj);
    8004621a:	87ae                	mv	a5,a1
    8004621c:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:45485
    val = js_json_check(ctx, jsc, wrapper, val, jsc->empty);
    8004621e:	01ac                	addi	a1,sp,200
    80046220:	8522                	mv	a0,s0
    80046222:	e74ff0ef          	jal	ra,80045896 <js_json_check>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80046226:	0005879b          	sext.w	a5,a1
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45485
    8004622a:	862a                	mv	a2,a0
    8004622c:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:45486
    if (JS_IsException(val))
    8004622e:	ec978be3          	beq	a5,s1,80046104 <JS_JSONStringify+0x142>
quickjs-nuttx/quickjs.c:45488
    if (JS_IsUndefined(val)) {
    80046232:	470d                	li	a4,3
    80046234:	02e79663          	bne	a5,a4,80046260 <JS_JSONStringify+0x29e>
quickjs-nuttx/quickjs.c:45489
        ret = JS_UNDEFINED;
    80046238:	f482                	sd	zero,104(sp)
    8004623a:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:45501
    string_buffer_free(jsc->b);
    8004623c:	6572                	ld	a0,280(sp)
    8004623e:	de5c40ef          	jal	ra,8000b022 <string_buffer_free>
    80046242:	a825                	j	8004627a <JS_JSONStringify+0x2b8>
quickjs-nuttx/quickjs.c:45470
        jsc->gap = js_sub_string(ctx, p, 0, min_int(p->len, 10));
    80046244:	00492683          	lw	a3,4(s2)
min_int():
quickjs-nuttx/cutils.h:79
    if (a < b)
    80046248:	47a5                	li	a5,9
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45470
    8004624a:	1686                	slli	a3,a3,0x21
    8004624c:	9285                	srli	a3,a3,0x21
min_int():
quickjs-nuttx/cutils.h:79
    8004624e:	00d7d363          	bge	a5,a3,80046254 <JS_JSONStringify+0x292>
quickjs-nuttx/cutils.h:82
        return b;
    80046252:	46a9                	li	a3,10
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45470
    80046254:	4601                	li	a2,0
    80046256:	85ca                	mv	a1,s2
    80046258:	8522                	mv	a0,s0
    8004625a:	eb5d90ef          	jal	ra,8002010e <js_sub_string>
    8004625e:	b785                	j	800461be <JS_JSONStringify+0x1fc>
quickjs-nuttx/quickjs.c:45492
    if (js_json_to_str(ctx, jsc, wrapper, val, jsc->empty))
    80046260:	6732                	ld	a4,264(sp)
    80046262:	67d2                	ld	a5,272(sp)
    80046264:	01ac                	addi	a1,sp,200
    80046266:	8522                	mv	a0,s0
    80046268:	f88ff0ef          	jal	ra,800459f0 <js_json_to_str.constprop.0>
    8004626c:	e8051ce3          	bnez	a0,80046104 <JS_JSONStringify+0x142>
quickjs-nuttx/quickjs.c:45495
    ret = string_buffer_end(jsc->b);
    80046270:	6572                	ld	a0,280(sp)
    80046272:	a2fd90ef          	jal	ra,8001fca0 <string_buffer_end>
    80046276:	f4aa                	sd	a0,104(sp)
    80046278:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:45503
    JS_FreeValue(ctx, wrapper);
    8004627a:	75e6                	ld	a1,120(sp)
    8004627c:	864a                	mv	a2,s2
    8004627e:	8522                	mv	a0,s0
    80046280:	d1ec50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45504
    JS_FreeValue(ctx, jsc->empty);
    80046284:	65b2                	ld	a1,264(sp)
    80046286:	6652                	ld	a2,272(sp)
    80046288:	8522                	mv	a0,s0
    8004628a:	d14c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45505
    JS_FreeValue(ctx, jsc->gap);
    8004628e:	75ee                	ld	a1,248(sp)
    80046290:	6612                	ld	a2,256(sp)
    80046292:	8522                	mv	a0,s0
    80046294:	d0ac50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45506
    JS_FreeValue(ctx, jsc->property_list);
    80046298:	75ae                	ld	a1,232(sp)
    8004629a:	764e                	ld	a2,240(sp)
    8004629c:	8522                	mv	a0,s0
    8004629e:	d00c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45507
    JS_FreeValue(ctx, jsc->stack);
    800462a2:	65ee                	ld	a1,216(sp)
    800462a4:	760e                	ld	a2,224(sp)
    800462a6:	8522                	mv	a0,s0
    800462a8:	cf6c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45509
}
    800462ac:	70b6                	ld	ra,360(sp)
    800462ae:	7416                	ld	s0,352(sp)
    800462b0:	7526                	ld	a0,104(sp)
    800462b2:	6956                	ld	s2,336(sp)
    800462b4:	69b6                	ld	s3,328(sp)
    800462b6:	6a16                	ld	s4,320(sp)
    800462b8:	7af2                	ld	s5,312(sp)
    800462ba:	7b52                	ld	s6,304(sp)
    800462bc:	7bb2                	ld	s7,296(sp)
    800462be:	85a6                	mv	a1,s1
    800462c0:	64f6                	ld	s1,344(sp)
    800462c2:	6175                	addi	sp,sp,368
    800462c4:	8082                	ret

00000000800462c6 <js_json_stringify>:
js_json_stringify():
quickjs-nuttx/quickjs.c:45513
{
    800462c6:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:45515
    return JS_JSONStringify(ctx, argv[0], argv[1], argv[2]);
    800462c8:	731c                	ld	a5,32(a4)
    800462ca:	02873803          	ld	a6,40(a4)
    800462ce:	6b14                	ld	a3,16(a4)
    800462d0:	620c                	ld	a1,0(a2)
    800462d2:	6f18                	ld	a4,24(a4)
    800462d4:	6610                	ld	a2,8(a2)
quickjs-nuttx/quickjs.c:45513
{
    800462d6:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:45516
}
    800462d8:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:45515
    return JS_JSONStringify(ctx, argv[0], argv[1], argv[2]);
    800462da:	ce9ff06f          	j	80045fc2 <JS_JSONStringify>

00000000800462de <internalize_json_property>:
internalize_json_property():
quickjs-nuttx/quickjs.c:45008
{
    800462de:	716d                	addi	sp,sp,-272
    800462e0:	e222                	sd	s0,256(sp)
    800462e2:	e606                	sd	ra,264(sp)
    800462e4:	0a00                	addi	s0,sp,272
    800462e6:	fda6                	sd	s1,248(sp)
    800462e8:	f9ca                	sd	s2,240(sp)
    800462ea:	f5ce                	sd	s3,232(sp)
    800462ec:	f1d2                	sd	s4,224(sp)
    800462ee:	edd6                	sd	s5,216(sp)
    800462f0:	e9da                	sd	s6,208(sp)
    800462f2:	e5de                	sd	s7,200(sp)
    800462f4:	e1e2                	sd	s8,192(sp)
    800462f6:	fd66                	sd	s9,184(sp)
    800462f8:	f96a                	sd	s10,176(sp)
    800462fa:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:45016
    if (js_check_stack_overflow(ctx->rt, 0)) {
    800462fe:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:45008
{
    80046300:	f0b43023          	sd	a1,-256(s0)
    80046304:	f0c43423          	sd	a2,-248(s0)
quickjs-nuttx/quickjs.c:45016
    if (js_check_stack_overflow(ctx->rt, 0)) {
    80046308:	6ffc                	ld	a5,216(a5)
quickjs-nuttx/quickjs.c:45008
{
    8004630a:	eee43823          	sd	a4,-272(s0)
quickjs-nuttx/quickjs.c:45012
    uint32_t i, len = 0;
    8004630e:	f0042a23          	sw	zero,-236(s0)
quickjs-nuttx/quickjs.c:45014
    JSPropertyEnum *atoms = NULL;
    80046312:	f0043c23          	sd	zero,-232(s0)
quickjs-nuttx/quickjs.c:45016
    if (js_check_stack_overflow(ctx->rt, 0)) {
    80046316:	02f47a63          	bgeu	s0,a5,8004634a <internalize_json_property+0x6c>
quickjs-nuttx/quickjs.c:45017
        return JS_ThrowStackOverflow(ctx);
    8004631a:	e08d30ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
    8004631e:	f6a43023          	sd	a0,-160(s0)
    80046322:	f6b43423          	sd	a1,-152(s0)
quickjs-nuttx/quickjs.c:45073
}
    80046326:	f6043503          	ld	a0,-160(s0)
    8004632a:	f6843583          	ld	a1,-152(s0)
    8004632e:	60b2                	ld	ra,264(sp)
    80046330:	6412                	ld	s0,256(sp)
    80046332:	74ee                	ld	s1,248(sp)
    80046334:	794e                	ld	s2,240(sp)
    80046336:	79ae                	ld	s3,232(sp)
    80046338:	7a0e                	ld	s4,224(sp)
    8004633a:	6aee                	ld	s5,216(sp)
    8004633c:	6b4e                	ld	s6,208(sp)
    8004633e:	6bae                	ld	s7,200(sp)
    80046340:	6c0e                	ld	s8,192(sp)
    80046342:	7cea                	ld	s9,184(sp)
    80046344:	7d4a                	ld	s10,176(sp)
    80046346:	6151                	addi	sp,sp,272
    80046348:	8082                	ret
    8004634a:	872e                	mv	a4,a1
    8004634c:	87b2                	mv	a5,a2
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8004634e:	4801                	li	a6,0
    80046350:	84aa                	mv	s1,a0
    80046352:	8bb6                	mv	s7,a3
internalize_json_property():
quickjs-nuttx/quickjs.c:45020
    val = JS_GetProperty(ctx, holder, name);
    80046354:	f8b43023          	sd	a1,-128(s0)
    80046358:	f8c43423          	sd	a2,-120(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004635c:	f4ed00ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80046360:	f6a43823          	sd	a0,-144(s0)
    80046364:	f6b43c23          	sd	a1,-136(s0)
    80046368:	f2a43023          	sd	a0,-224(s0)
    8004636c:	f2b43423          	sd	a1,-216(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80046370:	0005879b          	sext.w	a5,a1
internalize_json_property():
quickjs-nuttx/quickjs.c:45021
    if (JS_IsException(val))
    80046374:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80046376:	89aa                	mv	s3,a0
    80046378:	892e                	mv	s2,a1
internalize_json_property():
quickjs-nuttx/quickjs.c:45021
    8004637a:	00e79763          	bne	a5,a4,80046388 <internalize_json_property+0xaa>
quickjs-nuttx/quickjs.c:45022
        return val;
    8004637e:	f6a43023          	sd	a0,-160(s0)
    80046382:	f6b43423          	sd	a1,-152(s0)
    80046386:	b745                	j	80046326 <internalize_json_property+0x48>
quickjs-nuttx/quickjs.c:45023
    if (JS_IsObject(val)) {
    80046388:	577d                	li	a4,-1
    8004638a:	04e78863          	beq	a5,a4,800463da <internalize_json_property+0xfc>
quickjs-nuttx/quickjs.c:45058
    js_free_prop_enum(ctx, atoms, len);
    8004638e:	f1442603          	lw	a2,-236(s0)
    80046392:	f1843583          	ld	a1,-232(s0)
    80046396:	8526                	mv	a0,s1
    80046398:	dc1c40ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:45060
    name_val = JS_AtomToValue(ctx, name);
    8004639c:	85de                	mv	a1,s7
    8004639e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:45059
    atoms = NULL;
    800463a0:	f0043c23          	sd	zero,-232(s0)
quickjs-nuttx/quickjs.c:45060
    name_val = JS_AtomToValue(ctx, name);
    800463a4:	f24d90ef          	jal	ra,8001fac8 <JS_AtomToValue>
    800463a8:	f4a43023          	sd	a0,-192(s0)
    800463ac:	f4b43423          	sd	a1,-184(s0)
quickjs-nuttx/quickjs.c:45061
    if (JS_IsException(name_val))
    800463b0:	0005871b          	sext.w	a4,a1
    800463b4:	4799                	li	a5,6
    800463b6:	10f71b63          	bne	a4,a5,800464cc <internalize_json_property+0x1ee>
quickjs-nuttx/quickjs.c:45070
    js_free_prop_enum(ctx, atoms, len);
    800463ba:	f1442603          	lw	a2,-236(s0)
    800463be:	f1843583          	ld	a1,-232(s0)
    800463c2:	8526                	mv	a0,s1
    800463c4:	d95c40ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:45071
    JS_FreeValue(ctx, val);
    800463c8:	85ce                	mv	a1,s3
    800463ca:	864a                	mv	a2,s2
    800463cc:	8526                	mv	a0,s1
    800463ce:	bd0c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45072
    return JS_EXCEPTION;
    800463d2:	4799                	li	a5,6
    800463d4:	f6043023          	sd	zero,-160(s0)
    800463d8:	a2b1                	j	80046524 <internalize_json_property+0x246>
quickjs-nuttx/quickjs.c:45024
        is_array = JS_IsArray(ctx, val);
    800463da:	85aa                	mv	a1,a0
    800463dc:	864a                	mv	a2,s2
    800463de:	8526                	mv	a0,s1
    800463e0:	9cbd30ef          	jal	ra,80019daa <JS_IsArray>
    800463e4:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:45025
        if (is_array < 0)
    800463e6:	fc054ae3          	bltz	a0,800463ba <internalize_json_property+0xdc>
quickjs-nuttx/quickjs.c:45027
        if (is_array) {
    800463ea:	c92d                	beqz	a0,8004645c <internalize_json_property+0x17e>
quickjs-nuttx/quickjs.c:45028
            if (js_get_length32(ctx, &len, val))
    800463ec:	f2043603          	ld	a2,-224(s0)
    800463f0:	f2843683          	ld	a3,-216(s0)
    800463f4:	f1440593          	addi	a1,s0,-236
    800463f8:	8526                	mv	a0,s1
    800463fa:	f6ddb0ef          	jal	ra,80022366 <js_get_length32>
    800463fe:	fd55                	bnez	a0,800463ba <internalize_json_property+0xdc>
quickjs-nuttx/quickjs.c:45008
{
    80046400:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:45044
            if (JS_IsException(new_el)) {
    80046402:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:45048
            if (JS_IsUndefined(new_el)) {
    80046404:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:45035 (discriminator 1)
        for(i = 0; i < len; i++) {
    80046406:	f1442783          	lw	a5,-236(s0)
    8004640a:	f8faf2e3          	bgeu	s5,a5,8004638e <internalize_json_property+0xb0>
quickjs-nuttx/quickjs.c:45036
            if (is_array) {
    8004640e:	060b0363          	beqz	s6,80046474 <internalize_json_property+0x196>
quickjs-nuttx/quickjs.c:45037
                prop = JS_NewAtomUInt32(ctx, i);
    80046412:	85d6                	mv	a1,s5
    80046414:	8526                	mv	a0,s1
    80046416:	dc2d90ef          	jal	ra,8001f9d8 <JS_NewAtomUInt32>
    8004641a:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:45038
                if (prop == JS_ATOM_NULL)
    8004641e:	f80a0ee3          	beqz	s4,800463ba <internalize_json_property+0xdc>
quickjs-nuttx/quickjs.c:45043
            new_el = internalize_json_property(ctx, val, prop, reviver);
    80046422:	ef043703          	ld	a4,-272(s0)
    80046426:	ef843783          	ld	a5,-264(s0)
    8004642a:	86d2                	mv	a3,s4
    8004642c:	85ce                	mv	a1,s3
    8004642e:	864a                	mv	a2,s2
    80046430:	8526                	mv	a0,s1
    80046432:	f3343023          	sd	s3,-224(s0)
    80046436:	f3243423          	sd	s2,-216(s0)
    8004643a:	ea5ff0ef          	jal	ra,800462de <internalize_json_property>
    8004643e:	f2a43823          	sd	a0,-208(s0)
    80046442:	f2b43c23          	sd	a1,-200(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80046446:	0005869b          	sext.w	a3,a1
internalize_json_property():
quickjs-nuttx/quickjs.c:45043
    8004644a:	872a                	mv	a4,a0
    8004644c:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:45044
            if (JS_IsException(new_el)) {
    8004644e:	05869163          	bne	a3,s8,80046490 <internalize_json_property+0x1b2>
quickjs-nuttx/quickjs.c:45045
                JS_FreeAtom(ctx, prop);
    80046452:	85d2                	mv	a1,s4
    80046454:	8526                	mv	a0,s1
    80046456:	cf3c40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:45046
                goto fail;
    8004645a:	b785                	j	800463ba <internalize_json_property+0xdc>
quickjs-nuttx/quickjs.c:45031
            ret = JS_GetOwnPropertyNamesInternal(ctx, &atoms, &len, JS_VALUE_GET_OBJ(val), JS_GPN_ENUM_ONLY | JS_GPN_STRING_MASK);
    8004645c:	4745                	li	a4,17
    8004645e:	86ce                	mv	a3,s3
    80046460:	f1440613          	addi	a2,s0,-236
    80046464:	f1840593          	addi	a1,s0,-232
    80046468:	8526                	mv	a0,s1
    8004646a:	c55f10ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
quickjs-nuttx/quickjs.c:45032
            if (ret < 0)
    8004646e:	f80559e3          	bgez	a0,80046400 <internalize_json_property+0x122>
    80046472:	b7a1                	j	800463ba <internalize_json_property+0xdc>
quickjs-nuttx/quickjs.c:45041
                prop = JS_DupAtom(ctx, atoms[i].atom);
    80046474:	020a9713          	slli	a4,s5,0x20
    80046478:	01d75793          	srli	a5,a4,0x1d
    8004647c:	f1843703          	ld	a4,-232(s0)
    80046480:	8526                	mv	a0,s1
    80046482:	97ba                	add	a5,a5,a4
    80046484:	43cc                	lw	a1,4(a5)
    80046486:	c81c40ef          	jal	ra,8000b106 <JS_DupAtom>
    8004648a:	00050a1b          	sext.w	s4,a0
    8004648e:	bf51                	j	80046422 <internalize_json_property+0x144>
quickjs-nuttx/quickjs.c:45048
            if (JS_IsUndefined(new_el)) {
    80046490:	03969463          	bne	a3,s9,800464b8 <internalize_json_property+0x1da>
quickjs-nuttx/quickjs.c:45049
                ret = JS_DeleteProperty(ctx, val, prop, 0);
    80046494:	f2043583          	ld	a1,-224(s0)
    80046498:	f2843603          	ld	a2,-216(s0)
    8004649c:	4701                	li	a4,0
    8004649e:	86d2                	mv	a3,s4
    800464a0:	8526                	mv	a0,s1
    800464a2:	e59e90ef          	jal	ra,800302fa <JS_DeleteProperty>
quickjs-nuttx/quickjs.c:45051
                ret = JS_DefinePropertyValue(ctx, val, prop, new_el, JS_PROP_C_W_E);
    800464a6:	8d2a                	mv	s10,a0
quickjs-nuttx/quickjs.c:45053
            JS_FreeAtom(ctx, prop);
    800464a8:	85d2                	mv	a1,s4
    800464aa:	8526                	mv	a0,s1
    800464ac:	c9dc40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:45054
            if (ret < 0)
    800464b0:	f00d45e3          	bltz	s10,800463ba <internalize_json_property+0xdc>
quickjs-nuttx/quickjs.c:45035 (discriminator 2)
        for(i = 0; i < len; i++) {
    800464b4:	2a85                	addiw	s5,s5,1
    800464b6:	bf81                	j	80046406 <internalize_json_property+0x128>
quickjs-nuttx/quickjs.c:45051
                ret = JS_DefinePropertyValue(ctx, val, prop, new_el, JS_PROP_C_W_E);
    800464b8:	f2043583          	ld	a1,-224(s0)
    800464bc:	f2843603          	ld	a2,-216(s0)
    800464c0:	481d                	li	a6,7
    800464c2:	86d2                	mv	a3,s4
    800464c4:	8526                	mv	a0,s1
    800464c6:	d67d10ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800464ca:	bff1                	j	800464a6 <internalize_json_property+0x1c8>
quickjs-nuttx/quickjs.c:45065
    res = JS_Call(ctx, reviver, holder, 2, args);
    800464cc:	f0043683          	ld	a3,-256(s0)
    800464d0:	f0843703          	ld	a4,-248(s0)
    800464d4:	ef843603          	ld	a2,-264(s0)
quickjs-nuttx/quickjs.c:45063
    args[0] = name_val;
    800464d8:	f8b43423          	sd	a1,-120(s0)
quickjs-nuttx/quickjs.c:45065
    res = JS_Call(ctx, reviver, holder, 2, args);
    800464dc:	ef043583          	ld	a1,-272(s0)
    800464e0:	4789                	li	a5,2
    800464e2:	f8040813          	addi	a6,s0,-128
quickjs-nuttx/quickjs.c:45063
    args[0] = name_val;
    800464e6:	f8a43023          	sd	a0,-128(s0)
quickjs-nuttx/quickjs.c:45065
    res = JS_Call(ctx, reviver, holder, 2, args);
    800464ea:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:45064
    args[1] = val;
    800464ec:	f9343823          	sd	s3,-112(s0)
    800464f0:	f9243c23          	sd	s2,-104(s0)
quickjs-nuttx/quickjs.c:45065
    res = JS_Call(ctx, reviver, holder, 2, args);
    800464f4:	911fc0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:45066
    JS_FreeValue(ctx, name_val);
    800464f8:	f4843603          	ld	a2,-184(s0)
quickjs-nuttx/quickjs.c:45065
    res = JS_Call(ctx, reviver, holder, 2, args);
    800464fc:	f4b43c23          	sd	a1,-168(s0)
quickjs-nuttx/quickjs.c:45066
    JS_FreeValue(ctx, name_val);
    80046500:	f4043583          	ld	a1,-192(s0)
quickjs-nuttx/quickjs.c:45065
    res = JS_Call(ctx, reviver, holder, 2, args);
    80046504:	f4a43823          	sd	a0,-176(s0)
quickjs-nuttx/quickjs.c:45066
    JS_FreeValue(ctx, name_val);
    80046508:	8526                	mv	a0,s1
    8004650a:	a94c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45067
    JS_FreeValue(ctx, val);
    8004650e:	85ce                	mv	a1,s3
    80046510:	864a                	mv	a2,s2
    80046512:	8526                	mv	a0,s1
    80046514:	a8ac50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45068
    return res;
    80046518:	f5043783          	ld	a5,-176(s0)
    8004651c:	f6f43023          	sd	a5,-160(s0)
    80046520:	f5843783          	ld	a5,-168(s0)
quickjs-nuttx/quickjs.c:45072
    return JS_EXCEPTION;
    80046524:	f6f43423          	sd	a5,-152(s0)
    80046528:	bbfd                	j	80046326 <internalize_json_property+0x48>

000000008004652a <js_json_parse>:
js_json_parse():
quickjs-nuttx/quickjs.c:45077
{
    8004652a:	7175                	addi	sp,sp,-144
    8004652c:	e122                	sd	s0,128(sp)
    8004652e:	f8ca                	sd	s2,112(sp)
    80046530:	f0d2                	sd	s4,96(sp)
    80046532:	e506                	sd	ra,136(sp)
    80046534:	fca6                	sd	s1,120(sp)
    80046536:	f4ce                	sd	s3,104(sp)
    80046538:	6310                	ld	a2,0(a4)
    8004653a:	8a36                	mv	s4,a3
    8004653c:	6714                	ld	a3,8(a4)
    8004653e:	893a                	mv	s2,a4
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    80046540:	082c                	addi	a1,sp,24
    80046542:	4701                	li	a4,0
js_json_parse():
quickjs-nuttx/quickjs.c:45077
    80046544:	842a                	mv	s0,a0
    80046546:	e8b2                	sd	a2,80(sp)
    80046548:	ecb6                	sd	a3,88(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    8004654a:	933db0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
js_json_parse():
quickjs-nuttx/quickjs.c:45084
    if (!str)
    8004654e:	ed11                	bnez	a0,8004656a <js_json_parse+0x40>
quickjs-nuttx/quickjs.c:45085
        return JS_EXCEPTION;
    80046550:	e882                	sd	zero,80(sp)
    80046552:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45089
        return obj;
    80046554:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:45107 (discriminator 1)
}
    80046556:	60aa                	ld	ra,136(sp)
    80046558:	640a                	ld	s0,128(sp)
    8004655a:	6546                	ld	a0,80(sp)
    8004655c:	65e6                	ld	a1,88(sp)
    8004655e:	74e6                	ld	s1,120(sp)
    80046560:	7946                	ld	s2,112(sp)
    80046562:	79a6                	ld	s3,104(sp)
    80046564:	7a06                	ld	s4,96(sp)
    80046566:	6149                	addi	sp,sp,144
    80046568:	8082                	ret
quickjs-nuttx/quickjs.c:45086
    obj = JS_ParseJSON(ctx, str, len, "<input>");
    8004656a:	6662                	ld	a2,24(sp)
    8004656c:	89aa                	mv	s3,a0
    8004656e:	0001f697          	auipc	a3,0x1f
    80046572:	f6a68693          	addi	a3,a3,-150 # 800654d8 <__clz_tab+0x690>
    80046576:	85aa                	mv	a1,a0
    80046578:	8522                	mv	a0,s0
    8004657a:	9d0eb0ef          	jal	ra,8003174a <JS_ParseJSON>
    8004657e:	84ae                	mv	s1,a1
    80046580:	f02a                	sd	a0,32(sp)
    80046582:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:45087
    JS_FreeCString(ctx, str);
    80046584:	8522                	mv	a0,s0
    80046586:	85ce                	mv	a1,s3
    80046588:	db6c60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs.c:45088
    if (JS_IsException(obj))
    8004658c:	0004879b          	sext.w	a5,s1
    80046590:	4999                	li	s3,6
    80046592:	01379663          	bne	a5,s3,8004659e <js_json_parse+0x74>
quickjs-nuttx/quickjs.c:45089
        return obj;
    80046596:	7782                	ld	a5,32(sp)
    80046598:	e8be                	sd	a5,80(sp)
    8004659a:	77a2                	ld	a5,40(sp)
    8004659c:	bf65                	j	80046554 <js_json_parse+0x2a>
quickjs-nuttx/quickjs.c:45090
    if (argc > 1 && JS_IsFunction(ctx, argv[1])) {
    8004659e:	4785                	li	a5,1
    800465a0:	0947d563          	bge	a5,s4,8004662a <js_json_parse+0x100>
quickjs-nuttx/quickjs.c:45090 (discriminator 1)
    800465a4:	01093583          	ld	a1,16(s2)
    800465a8:	01893603          	ld	a2,24(s2)
    800465ac:	8522                	mv	a0,s0
    800465ae:	ef5c70ef          	jal	ra,8000e4a2 <JS_IsFunction>
    800465b2:	cd25                	beqz	a0,8004662a <js_json_parse+0x100>
quickjs-nuttx/quickjs.c:45091
        reviver = argv[1];
    800465b4:	01093783          	ld	a5,16(s2)
quickjs-nuttx/quickjs.c:45092
        root = JS_NewObject(ctx);
    800465b8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:45091
        reviver = argv[1];
    800465ba:	e0be                	sd	a5,64(sp)
    800465bc:	01893783          	ld	a5,24(s2)
    800465c0:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:45092
        root = JS_NewObject(ctx);
    800465c2:	a63d50ef          	jal	ra,8001c024 <JS_NewObject>
    800465c6:	f82a                	sd	a0,48(sp)
    800465c8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:45093
        if (JS_IsException(root)) {
    800465ca:	0005849b          	sext.w	s1,a1
quickjs-nuttx/quickjs.c:45092
        root = JS_NewObject(ctx);
    800465ce:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45093
        if (JS_IsException(root)) {
    800465d0:	01349a63          	bne	s1,s3,800465e4 <js_json_parse+0xba>
quickjs-nuttx/quickjs.c:45094
            JS_FreeValue(ctx, obj);
    800465d4:	7582                	ld	a1,32(sp)
    800465d6:	7622                	ld	a2,40(sp)
    800465d8:	8522                	mv	a0,s0
    800465da:	9c4c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45095
            return JS_EXCEPTION;
    800465de:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:45106
    return obj;
    800465e0:	eca6                	sd	s1,88(sp)
    800465e2:	bf95                	j	80046556 <js_json_parse+0x2c>
quickjs-nuttx/quickjs.c:45097
        if (JS_DefinePropertyValue(ctx, root, JS_ATOM_empty_string, obj,
    800465e4:	7702                	ld	a4,32(sp)
    800465e6:	77a2                	ld	a5,40(sp)
    800465e8:	85aa                	mv	a1,a0
    800465ea:	481d                	li	a6,7
    800465ec:	02f00693          	li	a3,47
    800465f0:	8522                	mv	a0,s0
    800465f2:	c3bd10ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800465f6:	00055a63          	bgez	a0,8004660a <js_json_parse+0xe0>
quickjs-nuttx/quickjs.c:45099
            JS_FreeValue(ctx, root);
    800465fa:	75c2                	ld	a1,48(sp)
    800465fc:	7662                	ld	a2,56(sp)
    800465fe:	8522                	mv	a0,s0
    80046600:	99ec50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45100
            return JS_EXCEPTION;
    80046604:	e882                	sd	zero,80(sp)
    80046606:	ecce                	sd	s3,88(sp)
    80046608:	b7b9                	j	80046556 <js_json_parse+0x2c>
quickjs-nuttx/quickjs.c:45102
        obj = internalize_json_property(ctx, root, JS_ATOM_empty_string,
    8004660a:	7662                	ld	a2,56(sp)
    8004660c:	6706                	ld	a4,64(sp)
    8004660e:	67a6                	ld	a5,72(sp)
    80046610:	75c2                	ld	a1,48(sp)
    80046612:	02f00693          	li	a3,47
    80046616:	8522                	mv	a0,s0
    80046618:	cc7ff0ef          	jal	ra,800462de <internalize_json_property>
    8004661c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:45104
        JS_FreeValue(ctx, root);
    8004661e:	7662                	ld	a2,56(sp)
    80046620:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:45102
        obj = internalize_json_property(ctx, root, JS_ATOM_empty_string,
    80046622:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:45104
        JS_FreeValue(ctx, root);
    80046624:	8522                	mv	a0,s0
    80046626:	978c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45106
    return obj;
    8004662a:	7782                	ld	a5,32(sp)
    8004662c:	e8be                	sd	a5,80(sp)
    8004662e:	bf4d                	j	800465e0 <js_json_parse+0xb6>

0000000080046630 <js_proxy_call>:
js_proxy_call():
quickjs-nuttx/quickjs.c:46497
{
    80046630:	7151                	addi	sp,sp,-240
    80046632:	eda6                	sd	s1,216(sp)
    80046634:	f586                	sd	ra,232(sp)
    80046636:	f1a2                	sd	s0,224(sp)
    80046638:	e9ca                	sd	s2,208(sp)
    8004663a:	e5ce                	sd	s3,200(sp)
    8004663c:	f02e                	sd	a1,32(sp)
    8004663e:	f432                	sd	a2,40(sp)
    80046640:	e836                	sd	a3,16(sp)
    80046642:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:46502
    if (flags & JS_CALL_FLAG_CONSTRUCTOR)
    80046644:	0018f893          	andi	a7,a7,1
    80046648:	e442                	sd	a6,8(sp)
    8004664a:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:46497
{
    8004664c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:46502
    if (flags & JS_CALL_FLAG_CONSTRUCTOR)
    8004664e:	0e088b63          	beqz	a7,80046744 <js_proxy_call+0x114>
quickjs-nuttx/quickjs.c:46503
        return js_proxy_call_constructor(ctx, func_obj, this_obj, argc, argv);
    80046652:	88b2                	mv	a7,a2
    80046654:	f82e                	sd	a1,48(sp)
    80046656:	fc32                	sd	a2,56(sp)
    80046658:	e0b6                	sd	a3,64(sp)
    8004665a:	e4ba                	sd	a4,72(sp)
js_proxy_call_constructor():
quickjs-nuttx/quickjs.c:46468
    s = get_proxy_method(ctx, &method, func_obj, JS_ATOM_construct);
    8004665c:	862e                	mv	a2,a1
    8004665e:	05f00713          	li	a4,95
    80046662:	86c6                	mv	a3,a7
    80046664:	088c                	addi	a1,sp,80
    80046666:	accd30ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:46469
    if (!s)
    8004666a:	6782                	ld	a5,0(sp)
    8004666c:	6822                	ld	a6,8(sp)
quickjs-nuttx/quickjs.c:46468
    s = get_proxy_method(ctx, &method, func_obj, JS_ATOM_construct);
    8004666e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46469
    if (!s)
    80046670:	e519                	bnez	a0,8004667e <js_proxy_call+0x4e>
quickjs-nuttx/quickjs.c:46470
        return JS_EXCEPTION;
    80046672:	e102                	sd	zero,128(sp)
    80046674:	4419                	li	s0,6
js_proxy_call():
quickjs-nuttx/quickjs.c:46526
    return ret;
    80046676:	678a                	ld	a5,128(sp)
    80046678:	fca2                	sd	s0,120(sp)
    8004667a:	f8be                	sd	a5,112(sp)
    8004667c:	a0d5                	j	80046760 <js_proxy_call+0x130>
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8004667e:	6510                	ld	a2,8(a0)
    80046680:	577d                	li	a4,-1
    80046682:	0006091b          	sext.w	s2,a2
    80046686:	00e91763          	bne	s2,a4,80046694 <js_proxy_call+0x64>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    8004668a:	610c                	ld	a1,0(a0)
    8004668c:	6198                	ld	a4,0(a1)
    8004668e:	9331                	srli	a4,a4,0x2c
js_proxy_call_constructor():
quickjs-nuttx/quickjs.c:46471
    if (!JS_IsConstructor(ctx, s->target))
    80046690:	8b05                	andi	a4,a4,1
    80046692:	eb19                	bnez	a4,800466a8 <js_proxy_call+0x78>
quickjs-nuttx/quickjs.c:46472
        return JS_ThrowTypeError(ctx, "not a constructor");
    80046694:	00024597          	auipc	a1,0x24
    80046698:	d0458593          	addi	a1,a1,-764 # 8006a398 <qjsc_repl+0x4de8>
    8004669c:	8526                	mv	a0,s1
    8004669e:	fcfd10ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:46474
        return JS_CallConstructor2(ctx, s->target, new_target, argc, argv);
    800466a2:	e12a                	sd	a0,128(sp)
    800466a4:	842e                	mv	s0,a1
    800466a6:	bfc1                	j	80046676 <js_proxy_call+0x46>
quickjs-nuttx/quickjs.c:46473
    if (JS_IsUndefined(method))
    800466a8:	46e6                	lw	a3,88(sp)
    800466aa:	470d                	li	a4,3
    800466ac:	00e69863          	bne	a3,a4,800466bc <js_proxy_call+0x8c>
quickjs-nuttx/quickjs.c:46474
        return JS_CallConstructor2(ctx, s->target, new_target, argc, argv);
    800466b0:	6686                	ld	a3,64(sp)
    800466b2:	6726                	ld	a4,72(sp)
    800466b4:	8526                	mv	a0,s1
    800466b6:	c38fb0ef          	jal	ra,80041aee <JS_CallConstructor2>
    800466ba:	b7e5                	j	800466a2 <js_proxy_call+0x72>
quickjs-nuttx/quickjs.c:46475
    arg_array = js_create_array(ctx, argc, argv);
    800466bc:	85be                	mv	a1,a5
    800466be:	8642                	mv	a2,a6
    800466c0:	8526                	mv	a0,s1
    800466c2:	f84ea0ef          	jal	ra,80030e46 <js_create_array>
    800466c6:	f0aa                	sd	a0,96(sp)
    800466c8:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:46476
    if (JS_IsException(arg_array)) {
    800466ca:	0005879b          	sext.w	a5,a1
    800466ce:	4999                	li	s3,6
    800466d0:	03379163          	bne	a5,s3,800466f2 <js_proxy_call+0xc2>
quickjs-nuttx/quickjs.c:46477
        ret = JS_EXCEPTION;
    800466d4:	f882                	sd	zero,112(sp)
    800466d6:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:46489
    JS_FreeValue(ctx, method);
    800466d8:	65c6                	ld	a1,80(sp)
    800466da:	6666                	ld	a2,88(sp)
    800466dc:	8526                	mv	a0,s1
    800466de:	8c0c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46490
    JS_FreeValue(ctx, arg_array);
    800466e2:	7586                	ld	a1,96(sp)
    800466e4:	7626                	ld	a2,104(sp)
    800466e6:	8526                	mv	a0,s1
    800466e8:	8b6c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46491
    return ret;
    800466ec:	77c6                	ld	a5,112(sp)
    800466ee:	e13e                	sd	a5,128(sp)
    800466f0:	b759                	j	80046676 <js_proxy_call+0x46>
quickjs-nuttx/quickjs.c:46480
    args[0] = s->target;
    800466f2:	601c                	ld	a5,0(s0)
quickjs-nuttx/quickjs.c:46483
    ret = JS_Call(ctx, method, s->handler, 3, args);
    800466f4:	6666                	ld	a2,88(sp)
    800466f6:	09010813          	addi	a6,sp,144
quickjs-nuttx/quickjs.c:46480
    args[0] = s->target;
    800466fa:	e93e                	sd	a5,144(sp)
    800466fc:	641c                	ld	a5,8(s0)
quickjs-nuttx/quickjs.c:46481
    args[1] = arg_array;
    800466fe:	f12a                	sd	a0,160(sp)
    80046700:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:46480
    args[0] = s->target;
    80046702:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:46482
    args[2] = new_target;
    80046704:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:46483
    ret = JS_Call(ctx, method, s->handler, 3, args);
    80046706:	65c6                	ld	a1,80(sp)
    80046708:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:46482
    args[2] = new_target;
    8004670a:	f93e                	sd	a5,176(sp)
    8004670c:	67a6                	ld	a5,72(sp)
    8004670e:	fd3e                	sd	a5,184(sp)
quickjs-nuttx/quickjs.c:46483
    ret = JS_Call(ctx, method, s->handler, 3, args);
    80046710:	6814                	ld	a3,16(s0)
    80046712:	6c18                	ld	a4,24(s0)
    80046714:	478d                	li	a5,3
    80046716:	eeefc0ef          	jal	ra,80042e04 <JS_Call>
    8004671a:	f8aa                	sd	a0,112(sp)
    8004671c:	fcae                	sd	a1,120(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004671e:	0005879b          	sext.w	a5,a1
js_proxy_call_constructor():
quickjs-nuttx/quickjs.c:46483
    80046722:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:46484
    if (!JS_IsException(ret) && JS_VALUE_GET_TAG(ret) != JS_TAG_OBJECT) {
    80046724:	fb378ae3          	beq	a5,s3,800466d8 <js_proxy_call+0xa8>
    80046728:	fb2788e3          	beq	a5,s2,800466d8 <js_proxy_call+0xa8>
quickjs-nuttx/quickjs.c:46485
        JS_FreeValue(ctx, ret);
    8004672c:	85aa                	mv	a1,a0
    8004672e:	8622                	mv	a2,s0
    80046730:	8526                	mv	a0,s1
    80046732:	86cc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46486
        ret = JS_ThrowTypeErrorNotAnObject(ctx);
    80046736:	8526                	mv	a0,s1
    80046738:	cf2d20ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
    8004673c:	f8aa                	sd	a0,112(sp)
    8004673e:	fcae                	sd	a1,120(sp)
    80046740:	842e                	mv	s0,a1
    80046742:	bf59                	j	800466d8 <js_proxy_call+0xa8>
js_proxy_call():
quickjs-nuttx/quickjs.c:46505
    s = get_proxy_method(ctx, &method, func_obj, JS_ATOM_apply);
    80046744:	76a2                	ld	a3,40(sp)
    80046746:	862e                	mv	a2,a1
    80046748:	05b00713          	li	a4,91
    8004674c:	088c                	addi	a1,sp,80
    8004674e:	9e4d30ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:46506
    if (!s)
    80046752:	6782                	ld	a5,0(sp)
    80046754:	6822                	ld	a6,8(sp)
quickjs-nuttx/quickjs.c:46505
    s = get_proxy_method(ctx, &method, func_obj, JS_ATOM_apply);
    80046756:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46506
    if (!s)
    80046758:	ed09                	bnez	a0,80046772 <js_proxy_call+0x142>
quickjs-nuttx/quickjs.c:46507
        return JS_EXCEPTION;
    8004675a:	4799                	li	a5,6
    8004675c:	f882                	sd	zero,112(sp)
    8004675e:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:46527 (discriminator 1)
}
    80046760:	70ae                	ld	ra,232(sp)
    80046762:	740e                	ld	s0,224(sp)
    80046764:	7546                	ld	a0,112(sp)
    80046766:	75e6                	ld	a1,120(sp)
    80046768:	64ee                	ld	s1,216(sp)
    8004676a:	694e                	ld	s2,208(sp)
    8004676c:	69ae                	ld	s3,200(sp)
    8004676e:	616d                	addi	sp,sp,240
    80046770:	8082                	ret
quickjs-nuttx/quickjs.c:46508
    if (!s->is_func) {
    80046772:	02054703          	lbu	a4,32(a0)
    80046776:	e305                	bnez	a4,80046796 <js_proxy_call+0x166>
quickjs-nuttx/quickjs.c:46509
        JS_FreeValue(ctx, method);
    80046778:	65c6                	ld	a1,80(sp)
    8004677a:	6666                	ld	a2,88(sp)
    8004677c:	8526                	mv	a0,s1
    8004677e:	820c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46510
        return JS_ThrowTypeError(ctx, "not a function");
    80046782:	00023597          	auipc	a1,0x23
    80046786:	46e58593          	addi	a1,a1,1134 # 80069bf0 <qjsc_repl+0x4640>
    8004678a:	8526                	mv	a0,s1
    8004678c:	ee1d10ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:46513
        return JS_Call(ctx, s->target, this_obj, argc, argv);
    80046790:	f8aa                	sd	a0,112(sp)
    80046792:	fcae                	sd	a1,120(sp)
    80046794:	b7f1                	j	80046760 <js_proxy_call+0x130>
quickjs-nuttx/quickjs.c:46512
    if (JS_IsUndefined(method))
    80046796:	46e6                	lw	a3,88(sp)
    80046798:	470d                	li	a4,3
    8004679a:	00e69a63          	bne	a3,a4,800467ae <js_proxy_call+0x17e>
quickjs-nuttx/quickjs.c:46513
        return JS_Call(ctx, s->target, this_obj, argc, argv);
    8004679e:	6510                	ld	a2,8(a0)
    800467a0:	66c2                	ld	a3,16(sp)
    800467a2:	6762                	ld	a4,24(sp)
    800467a4:	610c                	ld	a1,0(a0)
    800467a6:	8526                	mv	a0,s1
    800467a8:	e5cfc0ef          	jal	ra,80042e04 <JS_Call>
    800467ac:	b7d5                	j	80046790 <js_proxy_call+0x160>
quickjs-nuttx/quickjs.c:46514
    arg_array = js_create_array(ctx, argc, argv);
    800467ae:	85be                	mv	a1,a5
    800467b0:	8642                	mv	a2,a6
    800467b2:	8526                	mv	a0,s1
    800467b4:	e92ea0ef          	jal	ra,80030e46 <js_create_array>
    800467b8:	f0aa                	sd	a0,96(sp)
    800467ba:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:46515
    if (JS_IsException(arg_array)) {
    800467bc:	0005871b          	sext.w	a4,a1
    800467c0:	4799                	li	a5,6
    800467c2:	00f71f63          	bne	a4,a5,800467e0 <js_proxy_call+0x1b0>
quickjs-nuttx/quickjs.c:46516
        ret = JS_EXCEPTION;
    800467c6:	e102                	sd	zero,128(sp)
    800467c8:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:46524
    JS_FreeValue(ctx, method);
    800467ca:	65c6                	ld	a1,80(sp)
    800467cc:	6666                	ld	a2,88(sp)
    800467ce:	8526                	mv	a0,s1
    800467d0:	fcfc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46525
    JS_FreeValue(ctx, arg_array);
    800467d4:	7586                	ld	a1,96(sp)
    800467d6:	7626                	ld	a2,104(sp)
    800467d8:	8526                	mv	a0,s1
    800467da:	fc5c40ef          	jal	ra,8000b79e <JS_FreeValue>
    800467de:	bd61                	j	80046676 <js_proxy_call+0x46>
quickjs-nuttx/quickjs.c:46519
    args[0] = s->target;
    800467e0:	601c                	ld	a5,0(s0)
quickjs-nuttx/quickjs.c:46522
    ret = JS_Call(ctx, method, s->handler, 3, args);
    800467e2:	6666                	ld	a2,88(sp)
    800467e4:	09010813          	addi	a6,sp,144
quickjs-nuttx/quickjs.c:46519
    args[0] = s->target;
    800467e8:	e93e                	sd	a5,144(sp)
    800467ea:	641c                	ld	a5,8(s0)
quickjs-nuttx/quickjs.c:46521
    args[2] = arg_array;
    800467ec:	f92a                	sd	a0,176(sp)
    800467ee:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:46519
    args[0] = s->target;
    800467f0:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:46520
    args[1] = this_obj;
    800467f2:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:46522
    ret = JS_Call(ctx, method, s->handler, 3, args);
    800467f4:	65c6                	ld	a1,80(sp)
    800467f6:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:46520
    args[1] = this_obj;
    800467f8:	f13e                	sd	a5,160(sp)
    800467fa:	67e2                	ld	a5,24(sp)
    800467fc:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:46522
    ret = JS_Call(ctx, method, s->handler, 3, args);
    800467fe:	6814                	ld	a3,16(s0)
    80046800:	6c18                	ld	a4,24(s0)
    80046802:	478d                	li	a5,3
    80046804:	e00fc0ef          	jal	ra,80042e04 <JS_Call>
    80046808:	842e                	mv	s0,a1
    8004680a:	e12a                	sd	a0,128(sp)
    8004680c:	e52e                	sd	a1,136(sp)
    8004680e:	bf75                	j	800467ca <js_proxy_call+0x19a>

0000000080046810 <js_map_constructor>:
js_map_constructor():
quickjs-nuttx/quickjs.c:46798
{
    80046810:	7149                	addi	sp,sp,-368
    80046812:	fa5a                	sd	s6,304(sp)
    80046814:	8b36                	mv	s6,a3
quickjs-nuttx/quickjs.c:46806
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_MAP + magic);
    80046816:	0267869b          	addiw	a3,a5,38
quickjs-nuttx/quickjs.c:46798
{
    8004681a:	f2a2                	sd	s0,352(sp)
    8004681c:	e2d2                	sd	s4,320(sp)
    8004681e:	fe56                	sd	s5,312(sp)
    80046820:	f65e                	sd	s7,296(sp)
    80046822:	8a3e                	mv	s4,a5
    80046824:	f686                	sd	ra,360(sp)
    80046826:	eea6                	sd	s1,344(sp)
    80046828:	eaca                	sd	s2,336(sp)
    8004682a:	e6ce                	sd	s3,328(sp)
    8004682c:	f262                	sd	s8,288(sp)
    8004682e:	ee66                	sd	s9,280(sp)
    80046830:	ea6a                	sd	s10,272(sp)
    80046832:	e66e                	sd	s11,264(sp)
    80046834:	842a                	mv	s0,a0
    80046836:	8aba                	mv	s5,a4
quickjs-nuttx/quickjs.c:46800
    JSValue obj, adder = JS_UNDEFINED, iter = JS_UNDEFINED, next_method = JS_UNDEFINED;
    80046838:	e082                	sd	zero,64(sp)
    8004683a:	e882                	sd	zero,80(sp)
    8004683c:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:46806
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_MAP + magic);
    8004683e:	c3ed50ef          	jal	ra,8001bc7c <js_create_from_ctor>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80046842:	00058b9b          	sext.w	s7,a1
js_map_constructor():
quickjs-nuttx/quickjs.c:46807
    if (JS_IsException(obj))
    80046846:	4799                	li	a5,6
    80046848:	02fb9563          	bne	s7,a5,80046872 <js_map_constructor+0x62>
quickjs-nuttx/quickjs.c:46808
        return JS_EXCEPTION;
    8004684c:	f182                	sd	zero,224(sp)
    8004684e:	f5de                	sd	s7,232(sp)
quickjs-nuttx/quickjs.c:46904 (discriminator 1)
}
    80046850:	70b6                	ld	ra,360(sp)
    80046852:	7416                	ld	s0,352(sp)
    80046854:	750e                	ld	a0,224(sp)
    80046856:	75ae                	ld	a1,232(sp)
    80046858:	64f6                	ld	s1,344(sp)
    8004685a:	6956                	ld	s2,336(sp)
    8004685c:	69b6                	ld	s3,328(sp)
    8004685e:	6a16                	ld	s4,320(sp)
    80046860:	7af2                	ld	s5,312(sp)
    80046862:	7b52                	ld	s6,304(sp)
    80046864:	7bb2                	ld	s7,296(sp)
    80046866:	7c12                	ld	s8,288(sp)
    80046868:	6cf2                	ld	s9,280(sp)
    8004686a:	6d52                	ld	s10,272(sp)
    8004686c:	6db2                	ld	s11,264(sp)
    8004686e:	6175                	addi	sp,sp,368
    80046870:	8082                	ret
    80046872:	892a                	mv	s2,a0
    80046874:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:46809
    s = js_mallocz(ctx, sizeof(*s));
    80046876:	8522                	mv	a0,s0
    80046878:	03000593          	li	a1,48
    8004687c:	8bdd40ef          	jal	ra,8001b138 <js_mallocz>
    80046880:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:46810
    if (!s)
    80046882:	26050c63          	beqz	a0,80046afa <js_map_constructor+0x2ea>
quickjs-nuttx/quickjs.c:46812
    init_list_head(&s->records);
    80046886:	00850793          	addi	a5,a0,8
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8004688a:	e51c                	sd	a5,8(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    8004688c:	e91c                	sd	a5,16(a0)
js_map_constructor():
quickjs-nuttx/quickjs.c:46805
    is_weak = ((magic & MAGIC_WEAK) != 0);
    8004688e:	401a579b          	sraiw	a5,s4,0x1
    80046892:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:46813
    s->is_weak = is_weak;
    80046894:	c11c                	sw	a5,0(a0)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80046896:	57fd                	li	a5,-1
    80046898:	00fb9463          	bne	s7,a5,800468a0 <js_map_constructor+0x90>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    8004689c:	02a93823          	sd	a0,48(s2)
js_map_constructor():
quickjs-nuttx/quickjs.c:46815
    s->hash_size = 1;
    800468a0:	4785                	li	a5,1
    800468a2:	02f9a423          	sw	a5,40(s3)
quickjs-nuttx/quickjs.c:46816
    s->hash_table = js_malloc(ctx, sizeof(s->hash_table[0]) * s->hash_size);
    800468a6:	45c1                	li	a1,16
    800468a8:	8522                	mv	a0,s0
    800468aa:	85bd30ef          	jal	ra,8001a104 <js_malloc>
    800468ae:	02a9b023          	sd	a0,32(s3)
quickjs-nuttx/quickjs.c:46817
    if (!s->hash_table)
    800468b2:	24050463          	beqz	a0,80046afa <js_map_constructor+0x2ea>
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    800468b6:	e108                	sd	a0,0(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    800468b8:	e508                	sd	a0,8(a0)
js_map_constructor():
quickjs-nuttx/quickjs.c:46820
    s->record_count_threshold = 4;
    800468ba:	4791                	li	a5,4
    800468bc:	02f9a623          	sw	a5,44(s3)
quickjs-nuttx/quickjs.c:46823
    if (argc > 0)
    800468c0:	07604363          	bgtz	s6,80046926 <js_map_constructor+0x116>
quickjs-nuttx/quickjs.c:46822
    arr = JS_UNDEFINED;
    800468c4:	f882                	sd	zero,112(sp)
    800468c6:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:46825
    if (!JS_IsUndefined(arr) && !JS_IsNull(arr)) {
    800468c8:	fcbe                	sd	a5,120(sp)
    800468ca:	4705                	li	a4,1
    800468cc:	37f9                	addiw	a5,a5,-2
    800468ce:	0ef77963          	bgeu	a4,a5,800469c0 <js_map_constructor+0x1b0>
quickjs-nuttx/quickjs.c:46804
    is_set = magic & MAGIC_SET;
    800468d2:	001a7793          	andi	a5,s4,1
    800468d6:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:46829
        adder = JS_GetProperty(ctx, obj, is_set ? JS_ATOM_add : JS_ATOM_set);
    800468d8:	06900693          	li	a3,105
    800468dc:	e399                	bnez	a5,800468e2 <js_map_constructor+0xd2>
    800468de:	04300693          	li	a3,67
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 4)
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800468e2:	87a6                	mv	a5,s1
    800468e4:	4801                	li	a6,0
    800468e6:	874a                	mv	a4,s2
    800468e8:	85ca                	mv	a1,s2
    800468ea:	8626                	mv	a2,s1
    800468ec:	8522                	mv	a0,s0
    800468ee:	f1ca                	sd	s2,224(sp)
    800468f0:	f5a6                	sd	s1,232(sp)
    800468f2:	9b8d00ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800468f6:	e0aa                	sd	a0,64(sp)
js_map_constructor():
quickjs-nuttx/quickjs.c:46830 (discriminator 4)
        if (JS_IsException(adder))
    800468f8:	0005879b          	sext.w	a5,a1
    800468fc:	4a99                	li	s5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 4)
    800468fe:	8bae                	mv	s7,a1
    80046900:	8dae                	mv	s11,a1
js_map_constructor():
quickjs-nuttx/quickjs.c:46830 (discriminator 4)
    80046902:	01578f63          	beq	a5,s5,80046920 <js_map_constructor+0x110>
quickjs-nuttx/quickjs.c:46832
        if (!JS_IsFunction(ctx, adder)) {
    80046906:	85aa                	mv	a1,a0
    80046908:	865e                	mv	a2,s7
    8004690a:	8522                	mv	a0,s0
    8004690c:	b97c70ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80046910:	e10d                	bnez	a0,80046932 <js_map_constructor+0x122>
quickjs-nuttx/quickjs.c:46833
            JS_ThrowTypeError(ctx, "set/add is not a function");
    80046912:	00027597          	auipc	a1,0x27
    80046916:	d3658593          	addi	a1,a1,-714 # 8006d648 <qjsc_repl+0x8098>
    8004691a:	8522                	mv	a0,s0
    8004691c:	d51d10ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:46800
    JSValue obj, adder = JS_UNDEFINED, iter = JS_UNDEFINED, next_method = JS_UNDEFINED;
    80046920:	4c8d                	li	s9,3
    80046922:	4b0d                	li	s6,3
    80046924:	a8c1                	j	800469f4 <js_map_constructor+0x1e4>
quickjs-nuttx/quickjs.c:46824
        arr = argv[0];
    80046926:	000ab783          	ld	a5,0(s5)
    8004692a:	f8be                	sd	a5,112(sp)
    8004692c:	008ab783          	ld	a5,8(s5)
    80046930:	bf61                	j	800468c8 <js_map_constructor+0xb8>
quickjs-nuttx/quickjs.c:46837
        iter = JS_GetIterator(ctx, arr, FALSE);
    80046932:	75c6                	ld	a1,112(sp)
    80046934:	7666                	ld	a2,120(sp)
    80046936:	4681                	li	a3,0
    80046938:	8522                	mv	a0,s0
    8004693a:	803fd0ef          	jal	ra,8004413c <JS_GetIterator>
    8004693e:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:46838
        if (JS_IsException(iter))
    80046940:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:46837
        iter = JS_GetIterator(ctx, arr, FALSE);
    80046944:	872a                	mv	a4,a0
    80046946:	89ae                	mv	s3,a1
    80046948:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:46838
        if (JS_IsException(iter))
    8004694a:	1b578663          	beq	a5,s5,80046af6 <js_map_constructor+0x2e6>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004694e:	87ae                	mv	a5,a1
    80046950:	f1aa                	sd	a0,224(sp)
    80046952:	f5ae                	sd	a1,232(sp)
    80046954:	4801                	li	a6,0
    80046956:	85aa                	mv	a1,a0
    80046958:	06b00693          	li	a3,107
    8004695c:	864e                	mv	a2,s3
    8004695e:	8522                	mv	a0,s0
    80046960:	94ad00ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80046964:	f0aa                	sd	a0,96(sp)
js_map_constructor():
quickjs-nuttx/quickjs.c:46841
        if (JS_IsException(next_method))
    80046966:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004696a:	8c2e                	mv	s8,a1
    8004696c:	8cae                	mv	s9,a1
js_map_constructor():
quickjs-nuttx/quickjs.c:46841
    8004696e:	09578363          	beq	a5,s5,800469f4 <js_map_constructor+0x1e4>
quickjs-nuttx/quickjs.c:46846
            if (JS_IsException(item))
    80046972:	4d19                	li	s10,6
quickjs-nuttx/quickjs.c:46845
            item = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80046974:	7686                	ld	a3,96(sp)
    80046976:	65c6                	ld	a1,80(sp)
    80046978:	107c                	addi	a5,sp,44
    8004697a:	864e                	mv	a2,s3
    8004697c:	8762                	mv	a4,s8
    8004697e:	8522                	mv	a0,s0
    80046980:	f4e2                	sd	s8,104(sp)
    80046982:	ecce                	sd	s3,88(sp)
    80046984:	eacfd0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    80046988:	e12a                	sd	a0,128(sp)
    8004698a:	e52e                	sd	a1,136(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004698c:	0005879b          	sext.w	a5,a1
js_map_constructor():
quickjs-nuttx/quickjs.c:46845
    80046990:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:46846
            if (JS_IsException(item))
    80046992:	07a78163          	beq	a5,s10,800469f4 <js_map_constructor+0x1e4>
quickjs-nuttx/quickjs.c:46848
            if (done) {
    80046996:	5732                	lw	a4,44(sp)
    80046998:	c71d                	beqz	a4,800469c6 <js_map_constructor+0x1b6>
quickjs-nuttx/quickjs.c:46849
                JS_FreeValue(ctx, item);
    8004699a:	85aa                	mv	a1,a0
    8004699c:	8522                	mv	a0,s0
    8004699e:	e01c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46889
        JS_FreeValue(ctx, next_method);
    800469a2:	7586                	ld	a1,96(sp)
    800469a4:	7626                	ld	a2,104(sp)
    800469a6:	8522                	mv	a0,s0
    800469a8:	df7c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46890
        JS_FreeValue(ctx, iter);
    800469ac:	65c6                	ld	a1,80(sp)
    800469ae:	6666                	ld	a2,88(sp)
    800469b0:	8522                	mv	a0,s0
    800469b2:	dedc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46891
        JS_FreeValue(ctx, adder);
    800469b6:	6586                	ld	a1,64(sp)
    800469b8:	865e                	mv	a2,s7
    800469ba:	8522                	mv	a0,s0
    800469bc:	de3c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46893
    return obj;
    800469c0:	f1ca                	sd	s2,224(sp)
    800469c2:	f5a6                	sd	s1,232(sp)
    800469c4:	b571                	j	80046850 <js_map_constructor+0x40>
quickjs-nuttx/quickjs.c:46852
            if (is_set) {
    800469c6:	6702                	ld	a4,0(sp)
    800469c8:	cb2d                	beqz	a4,80046a3a <js_map_constructor+0x22a>
quickjs-nuttx/quickjs.c:46853
                ret = JS_Call(ctx, adder, obj, 1, (JSValueConst *)&item);
    800469ca:	6586                	ld	a1,64(sp)
    800469cc:	4785                	li	a5,1
    800469ce:	8726                	mv	a4,s1
    800469d0:	08010813          	addi	a6,sp,128
    800469d4:	86ca                	mv	a3,s2
    800469d6:	865e                	mv	a2,s7
    800469d8:	8522                	mv	a0,s0
    800469da:	c2afc0ef          	jal	ra,80042e04 <JS_Call>
    800469de:	e92a                	sd	a0,144(sp)
quickjs-nuttx/quickjs.c:46854
                if (JS_IsException(ret)) {
    800469e0:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:46853
                ret = JS_Call(ctx, adder, obj, 1, (JSValueConst *)&item);
    800469e4:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:46854
                if (JS_IsException(ret)) {
    800469e6:	0fa71b63          	bne	a4,s10,80046adc <js_map_constructor+0x2cc>
quickjs-nuttx/quickjs.c:46855
                    JS_FreeValue(ctx, item);
    800469ea:	658a                	ld	a1,128(sp)
    800469ec:	662a                	ld	a2,136(sp)
quickjs-nuttx/quickjs.c:46880
                    JS_FreeValue(ctx, value);
    800469ee:	8522                	mv	a0,s0
    800469f0:	dafc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46895
    if (JS_IsObject(iter)) {
    800469f4:	000b079b          	sext.w	a5,s6
    800469f8:	577d                	li	a4,-1
    800469fa:	00e79863          	bne	a5,a4,80046a0a <js_map_constructor+0x1fa>
quickjs-nuttx/quickjs.c:46897
        JS_IteratorClose(ctx, iter, TRUE);
    800469fe:	65c6                	ld	a1,80(sp)
    80046a00:	4685                	li	a3,1
    80046a02:	865a                	mv	a2,s6
    80046a04:	8522                	mv	a0,s0
    80046a06:	a34d20ef          	jal	ra,80018c3a <JS_IteratorClose>
quickjs-nuttx/quickjs.c:46899
    JS_FreeValue(ctx, next_method);
    80046a0a:	7586                	ld	a1,96(sp)
    80046a0c:	8666                	mv	a2,s9
    80046a0e:	8522                	mv	a0,s0
    80046a10:	d8fc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46900
    JS_FreeValue(ctx, iter);
    80046a14:	65c6                	ld	a1,80(sp)
    80046a16:	865a                	mv	a2,s6
    80046a18:	8522                	mv	a0,s0
    80046a1a:	d85c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46901
    JS_FreeValue(ctx, adder);
    80046a1e:	6586                	ld	a1,64(sp)
    80046a20:	866e                	mv	a2,s11
    80046a22:	8522                	mv	a0,s0
    80046a24:	d7bc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46902
    JS_FreeValue(ctx, obj);
    80046a28:	85ca                	mv	a1,s2
    80046a2a:	8626                	mv	a2,s1
    80046a2c:	8522                	mv	a0,s0
    80046a2e:	d71c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46903
    return JS_EXCEPTION;
    80046a32:	4799                	li	a5,6
    80046a34:	f182                	sd	zero,224(sp)
    80046a36:	f5be                	sd	a5,232(sp)
    80046a38:	bd21                	j	80046850 <js_map_constructor+0x40>
quickjs-nuttx/quickjs.c:46861
                key = JS_UNDEFINED;
    80046a3a:	f102                	sd	zero,160(sp)
quickjs-nuttx/quickjs.c:46862
                value = JS_UNDEFINED;
    80046a3c:	f902                	sd	zero,176(sp)
quickjs-nuttx/quickjs.c:46863
                if (!JS_IsObject(item)) {
    80046a3e:	577d                	li	a4,-1
    80046a40:	02e78463          	beq	a5,a4,80046a68 <js_map_constructor+0x258>
quickjs-nuttx/quickjs.c:46864
                    JS_ThrowTypeErrorNotAnObject(ctx);
    80046a44:	8522                	mv	a0,s0
    80046a46:	9e4d20ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:46862
                value = JS_UNDEFINED;
    80046a4a:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:46861
                key = JS_UNDEFINED;
    80046a4c:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:46878
                    JS_FreeValue(ctx, item);
    80046a4e:	658a                	ld	a1,128(sp)
    80046a50:	662a                	ld	a2,136(sp)
    80046a52:	8522                	mv	a0,s0
    80046a54:	d4bc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46879
                    JS_FreeValue(ctx, key);
    80046a58:	758a                	ld	a1,160(sp)
    80046a5a:	8656                	mv	a2,s5
    80046a5c:	8522                	mv	a0,s0
    80046a5e:	d41c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46880
                    JS_FreeValue(ctx, value);
    80046a62:	75ca                	ld	a1,176(sp)
    80046a64:	8652                	mv	a2,s4
    80046a66:	b761                	j	800469ee <js_map_constructor+0x1de>
quickjs-nuttx/quickjs.c:46867
                key = JS_GetPropertyUint32(ctx, item, 0);
    80046a68:	85aa                	mv	a1,a0
    80046a6a:	4681                	li	a3,0
    80046a6c:	8522                	mv	a0,s0
    80046a6e:	ecad00ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    80046a72:	f12a                	sd	a0,160(sp)
    80046a74:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:46868
                if (JS_IsException(key))
    80046a76:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:46867
                key = JS_GetPropertyUint32(ctx, item, 0);
    80046a7a:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:46868
                if (JS_IsException(key))
    80046a7c:	07a78b63          	beq	a5,s10,80046af2 <js_map_constructor+0x2e2>
quickjs-nuttx/quickjs.c:46870
                value = JS_GetPropertyUint32(ctx, item, 1);
    80046a80:	658a                	ld	a1,128(sp)
    80046a82:	662a                	ld	a2,136(sp)
    80046a84:	4685                	li	a3,1
    80046a86:	8522                	mv	a0,s0
    80046a88:	eb0d00ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    80046a8c:	f92a                	sd	a0,176(sp)
    80046a8e:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:46871
                if (JS_IsException(value))
    80046a90:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:46870
                value = JS_GetPropertyUint32(ctx, item, 1);
    80046a94:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:46871
                if (JS_IsException(value))
    80046a96:	fba78ce3          	beq	a5,s10,80046a4e <js_map_constructor+0x23e>
quickjs-nuttx/quickjs.c:46873
                args[0] = key;
    80046a9a:	778a                	ld	a5,160(sp)
quickjs-nuttx/quickjs.c:46874
                args[1] = value;
    80046a9c:	fdae                	sd	a1,248(sp)
quickjs-nuttx/quickjs.c:46875
                ret = JS_Call(ctx, adder, obj, 2, args);
    80046a9e:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:46873
                args[0] = key;
    80046aa0:	f1be                	sd	a5,224(sp)
    80046aa2:	77aa                	ld	a5,168(sp)
quickjs-nuttx/quickjs.c:46874
                args[1] = value;
    80046aa4:	f9aa                	sd	a0,240(sp)
quickjs-nuttx/quickjs.c:46875
                ret = JS_Call(ctx, adder, obj, 2, args);
    80046aa6:	8726                	mv	a4,s1
quickjs-nuttx/quickjs.c:46873
                args[0] = key;
    80046aa8:	f5be                	sd	a5,232(sp)
quickjs-nuttx/quickjs.c:46875
                ret = JS_Call(ctx, adder, obj, 2, args);
    80046aaa:	0e010813          	addi	a6,sp,224
    80046aae:	4789                	li	a5,2
    80046ab0:	86ca                	mv	a3,s2
    80046ab2:	865e                	mv	a2,s7
    80046ab4:	8522                	mv	a0,s0
    80046ab6:	b4efc0ef          	jal	ra,80042e04 <JS_Call>
    80046aba:	e92a                	sd	a0,144(sp)
quickjs-nuttx/quickjs.c:46876
                if (JS_IsException(ret)) {
    80046abc:	0005871b          	sext.w	a4,a1
    80046ac0:	f9a707e3          	beq	a4,s10,80046a4e <js_map_constructor+0x23e>
quickjs-nuttx/quickjs.c:46883
                JS_FreeValue(ctx, key);
    80046ac4:	762a                	ld	a2,168(sp)
    80046ac6:	e42e                	sd	a1,8(sp)
    80046ac8:	758a                	ld	a1,160(sp)
    80046aca:	8522                	mv	a0,s0
    80046acc:	cd3c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46884
                JS_FreeValue(ctx, value);
    80046ad0:	75ca                	ld	a1,176(sp)
    80046ad2:	766a                	ld	a2,184(sp)
    80046ad4:	8522                	mv	a0,s0
    80046ad6:	cc9c40ef          	jal	ra,8000b79e <JS_FreeValue>
    80046ada:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:46886
            JS_FreeValue(ctx, ret);
    80046adc:	65ca                	ld	a1,144(sp)
    80046ade:	863e                	mv	a2,a5
    80046ae0:	8522                	mv	a0,s0
    80046ae2:	cbdc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46887
            JS_FreeValue(ctx, item);
    80046ae6:	658a                	ld	a1,128(sp)
    80046ae8:	662a                	ld	a2,136(sp)
    80046aea:	8522                	mv	a0,s0
    80046aec:	cb3c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46845
            item = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80046af0:	b551                	j	80046974 <js_map_constructor+0x164>
quickjs-nuttx/quickjs.c:46862
                value = JS_UNDEFINED;
    80046af2:	4a0d                	li	s4,3
    80046af4:	bfa9                	j	80046a4e <js_map_constructor+0x23e>
quickjs-nuttx/quickjs.c:46800
    JSValue obj, adder = JS_UNDEFINED, iter = JS_UNDEFINED, next_method = JS_UNDEFINED;
    80046af6:	4c8d                	li	s9,3
    80046af8:	bdf5                	j	800469f4 <js_map_constructor+0x1e4>
    80046afa:	4c8d                	li	s9,3
    80046afc:	4b0d                	li	s6,3
    80046afe:	4d8d                	li	s11,3
    80046b00:	bdd5                	j	800469f4 <js_map_constructor+0x1e4>

0000000080046b02 <js_object_groupBy>:
js_object_groupBy():
quickjs-nuttx/quickjs.c:47265
{
    80046b02:	710d                	addi	sp,sp,-352
    80046b04:	eaa2                	sd	s0,336(sp)
    80046b06:	e6a6                	sd	s1,328(sp)
    80046b08:	ea62                	sd	s8,272(sp)
    80046b0a:	ee86                	sd	ra,344(sp)
    80046b0c:	e2ca                	sd	s2,320(sp)
    80046b0e:	fe4e                	sd	s3,312(sp)
    80046b10:	fa52                	sd	s4,304(sp)
    80046b12:	f656                	sd	s5,296(sp)
    80046b14:	f25a                	sd	s6,288(sp)
    80046b16:	ee5e                	sd	s7,280(sp)
    80046b18:	e666                	sd	s9,264(sp)
quickjs-nuttx/quickjs.c:47273
    cb = argv[1];
    80046b1a:	6b0c                	ld	a1,16(a4)
    80046b1c:	6f10                	ld	a2,24(a4)
quickjs-nuttx/quickjs.c:47265
{
    80046b1e:	842a                	mv	s0,a0
    80046b20:	84ba                	mv	s1,a4
    80046b22:	8c3e                	mv	s8,a5
quickjs-nuttx/quickjs.c:47273
    cb = argv[1];
    80046b24:	f02e                	sd	a1,32(sp)
    80046b26:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:47274
    if (check_function(ctx, cb))
    80046b28:	bf7d10ef          	jal	ra,8001871e <check_function>
    80046b2c:	c509                	beqz	a0,80046b36 <js_object_groupBy+0x34>
quickjs-nuttx/quickjs.c:47377
    return JS_EXCEPTION;
    80046b2e:	4799                	li	a5,6
    80046b30:	e182                	sd	zero,192(sp)
    80046b32:	e5be                	sd	a5,200(sp)
    80046b34:	ac79                	j	80046dd2 <js_object_groupBy+0x2d0>
quickjs-nuttx/quickjs.c:47277
    iter = JS_GetIterator(ctx, argv[0], /*is_async*/FALSE);
    80046b36:	608c                	ld	a1,0(s1)
    80046b38:	6490                	ld	a2,8(s1)
    80046b3a:	4681                	li	a3,0
    80046b3c:	8522                	mv	a0,s0
    80046b3e:	dfefd0ef          	jal	ra,8004413c <JS_GetIterator>
    80046b42:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:47278
    if (JS_IsException(iter))
    80046b44:	0005879b          	sext.w	a5,a1
    80046b48:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:47277
    iter = JS_GetIterator(ctx, argv[0], /*is_async*/FALSE);
    80046b4a:	872a                	mv	a4,a0
    80046b4c:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:47278
    if (JS_IsException(iter))
    80046b4e:	ff2780e3          	beq	a5,s2,80046b2e <js_object_groupBy+0x2c>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80046b52:	87ae                	mv	a5,a1
js_object_groupBy():
quickjs-nuttx/quickjs.c:47281
    key = JS_UNDEFINED;
    80046b54:	448d                	li	s1,3
    80046b56:	f1aa                	sd	a0,224(sp)
    80046b58:	f5ae                	sd	a1,232(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80046b5a:	4801                	li	a6,0
    80046b5c:	85aa                	mv	a1,a0
    80046b5e:	06b00693          	li	a3,107
    80046b62:	8652                	mv	a2,s4
    80046b64:	8522                	mv	a0,s0
js_object_groupBy():
quickjs-nuttx/quickjs.c:47281
    80046b66:	f882                	sd	zero,112(sp)
    80046b68:	fca6                	sd	s1,120(sp)
quickjs-nuttx/quickjs.c:47283
    v = JS_UNDEFINED;
    80046b6a:	e102                	sd	zero,128(sp)
    80046b6c:	e526                	sd	s1,136(sp)
quickjs-nuttx/quickjs.c:47284
    prop = JS_UNDEFINED;
    80046b6e:	e902                	sd	zero,144(sp)
quickjs-nuttx/quickjs.c:47285
    groups = JS_UNDEFINED;
    80046b70:	f082                	sd	zero,96(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80046b72:	f39cf0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80046b76:	e8aa                	sd	a0,80(sp)
js_object_groupBy():
quickjs-nuttx/quickjs.c:47288
    if (JS_IsException(next))
    80046b78:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80046b7c:	8b2e                	mv	s6,a1
js_object_groupBy():
quickjs-nuttx/quickjs.c:47288
    80046b7e:	27278963          	beq	a5,s2,80046df0 <js_object_groupBy+0x2ee>
quickjs-nuttx/quickjs.c:47292
        groups = js_map_constructor(ctx, JS_UNDEFINED, 0, NULL, 0);
    80046b82:	f182                	sd	zero,224(sp)
quickjs-nuttx/quickjs.c:47291
    if (is_map) {
    80046b84:	160c0a63          	beqz	s8,80046cf8 <js_object_groupBy+0x1f6>
quickjs-nuttx/quickjs.c:47292
        groups = js_map_constructor(ctx, JS_UNDEFINED, 0, NULL, 0);
    80046b88:	4781                	li	a5,0
    80046b8a:	4701                	li	a4,0
    80046b8c:	4681                	li	a3,0
    80046b8e:	4581                	li	a1,0
    80046b90:	460d                	li	a2,3
    80046b92:	8522                	mv	a0,s0
    80046b94:	f5a6                	sd	s1,232(sp)
    80046b96:	c7bff0ef          	jal	ra,80046810 <js_map_constructor>
quickjs-nuttx/quickjs.c:47294
        groups = JS_NewObjectProto(ctx, JS_NULL);
    80046b9a:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:47296
    if (JS_IsException(groups))
    80046b9c:	0005879b          	sext.w	a5,a1
    80046ba0:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:47294
        groups = JS_NewObjectProto(ctx, JS_NULL);
    80046ba2:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:47296
    if (JS_IsException(groups))
    80046ba4:	14e78863          	beq	a5,a4,80046cf4 <js_object_groupBy+0x1f2>
quickjs-nuttx/quickjs.c:47300
        if (idx >= MAX_SAFE_INTEGER) {
    80046ba8:	5cfd                	li	s9,-1
quickjs-nuttx/quickjs.c:47299
    for (idx = 0; ; idx++) {
    80046baa:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:47305
        if (JS_IsException(v))
    80046bac:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:47300
        if (idx >= MAX_SAFE_INTEGER) {
    80046bae:	00bcdc93          	srli	s9,s9,0xb
quickjs-nuttx/quickjs.c:47304
        v = JS_IteratorNext(ctx, iter, next, 0, NULL, &done);
    80046bb2:	66c6                	ld	a3,80(sp)
    80046bb4:	6586                	ld	a1,64(sp)
    80046bb6:	087c                	addi	a5,sp,28
    80046bb8:	875a                	mv	a4,s6
    80046bba:	8652                	mv	a2,s4
    80046bbc:	8522                	mv	a0,s0
    80046bbe:	ecda                	sd	s6,88(sp)
    80046bc0:	e4d2                	sd	s4,72(sp)
    80046bc2:	c6efd0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    80046bc6:	e12a                	sd	a0,128(sp)
    80046bc8:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:47305
        if (JS_IsException(v))
    80046bca:	0005879b          	sext.w	a5,a1
    80046bce:	13778363          	beq	a5,s7,80046cf4 <js_object_groupBy+0x1f2>
quickjs-nuttx/quickjs.c:47307
        if (done)
    80046bd2:	47f2                	lw	a5,28(sp)
    80046bd4:	1e079263          	bnez	a5,80046db8 <js_object_groupBy+0x2b6>
quickjs-nuttx/quickjs.c:47310
        args[0] = v;
    80046bd8:	f1aa                	sd	a0,224(sp)
    80046bda:	f5ae                	sd	a1,232(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80046bdc:	000a869b          	sext.w	a3,s5
    80046be0:	12da9463          	bne	s5,a3,80046d08 <js_object_groupBy+0x206>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80046be4:	db02                	sw	zero,180(sp)
    80046be6:	d956                	sw	s5,176(sp)
    80046be8:	77ca                	ld	a5,176(sp)
    80046bea:	e582                	sd	zero,200(sp)
    80046bec:	e1be                	sd	a5,192(sp)
    80046bee:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80046bf0:	c1b6                	sw	a3,192(sp)
    80046bf2:	278e                	fld	fa5,192(sp)
js_object_groupBy():
quickjs-nuttx/quickjs.c:47312
        key = JS_Call(ctx, cb, ctx->global_obj, 2, args);
    80046bf4:	7622                	ld	a2,40(sp)
    80046bf6:	16843683          	ld	a3,360(s0)
    80046bfa:	17043703          	ld	a4,368(s0)
    80046bfe:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:47311
        args[1] = JS_NewInt64(ctx, idx);
    80046c00:	fdbe                	sd	a5,248(sp)
quickjs-nuttx/quickjs.c:47312
        key = JS_Call(ctx, cb, ctx->global_obj, 2, args);
    80046c02:	0e010813          	addi	a6,sp,224
    80046c06:	4789                	li	a5,2
    80046c08:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:47311
        args[1] = JS_NewInt64(ctx, idx);
    80046c0a:	b9be                	fsd	fa5,240(sp)
quickjs-nuttx/quickjs.c:47312
        key = JS_Call(ctx, cb, ctx->global_obj, 2, args);
    80046c0c:	9f8fc0ef          	jal	ra,80042e04 <JS_Call>
    80046c10:	f8aa                	sd	a0,112(sp)
    80046c12:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:47313
        if (JS_IsException(key))
    80046c14:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:47312
        key = JS_Call(ctx, cb, ctx->global_obj, 2, args);
    80046c18:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:47313
        if (JS_IsException(key))
    80046c1a:	0d778763          	beq	a5,s7,80046ce8 <js_object_groupBy+0x1e6>
quickjs-nuttx/quickjs.c:47316
        if (is_map) {
    80046c1e:	0e0c0d63          	beqz	s8,80046d18 <js_object_groupBy+0x216>
quickjs-nuttx/quickjs.c:47317
            prop = js_map_get(ctx, groups, 1, (JSValueConst *)&key, 0);
    80046c22:	7586                	ld	a1,96(sp)
    80046c24:	4781                	li	a5,0
    80046c26:	1898                	addi	a4,sp,112
    80046c28:	4685                	li	a3,1
    80046c2a:	864a                	mv	a2,s2
    80046c2c:	8522                	mv	a0,s0
    80046c2e:	bf5d10ef          	jal	ra,80018822 <js_map_get>
    80046c32:	e92a                	sd	a0,144(sp)
    80046c34:	84ae                	mv	s1,a1
    80046c36:	4981                	li	s3,0
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80046c38:	0004879b          	sext.w	a5,s1
js_object_groupBy():
quickjs-nuttx/quickjs.c:47326
        if (JS_IsException(prop))
    80046c3c:	13778b63          	beq	a5,s7,80046d72 <js_object_groupBy+0x270>
quickjs-nuttx/quickjs.c:47329
        if (JS_IsUndefined(prop)) {
    80046c40:	470d                	li	a4,3
    80046c42:	04e79463          	bne	a5,a4,80046c8a <js_object_groupBy+0x188>
quickjs-nuttx/quickjs.c:47330
            prop = JS_NewArray(ctx);
    80046c46:	8522                	mv	a0,s0
    80046c48:	e12d50ef          	jal	ra,8001c25a <JS_NewArray>
    80046c4c:	e92a                	sd	a0,144(sp)
quickjs-nuttx/quickjs.c:47331
            if (JS_IsException(prop))
    80046c4e:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:47330
            prop = JS_NewArray(ctx);
    80046c52:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:47331
            if (JS_IsException(prop))
    80046c54:	11770f63          	beq	a4,s7,80046d72 <js_object_groupBy+0x270>
quickjs-nuttx/quickjs.c:47333
            if (is_map) {
    80046c58:	0e0c0e63          	beqz	s8,80046d54 <js_object_groupBy+0x252>
quickjs-nuttx/quickjs.c:47334
                args[0] = key;
    80046c5c:	7746                	ld	a4,112(sp)
quickjs-nuttx/quickjs.c:47335
                args[1] = prop;
    80046c5e:	fdae                	sd	a1,248(sp)
quickjs-nuttx/quickjs.c:47336
                res = js_map_set(ctx, groups, 2, args, 0);
    80046c60:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:47334
                args[0] = key;
    80046c62:	f1ba                	sd	a4,224(sp)
    80046c64:	7766                	ld	a4,120(sp)
quickjs-nuttx/quickjs.c:47335
                args[1] = prop;
    80046c66:	f9aa                	sd	a0,240(sp)
quickjs-nuttx/quickjs.c:47336
                res = js_map_set(ctx, groups, 2, args, 0);
    80046c68:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:47334
                args[0] = key;
    80046c6a:	f5ba                	sd	a4,232(sp)
quickjs-nuttx/quickjs.c:47336
                res = js_map_set(ctx, groups, 2, args, 0);
    80046c6c:	864a                	mv	a2,s2
    80046c6e:	1198                	addi	a4,sp,224
    80046c70:	4689                	li	a3,2
    80046c72:	8522                	mv	a0,s0
    80046c74:	955d60ef          	jal	ra,8001d5c8 <js_map_set>
quickjs-nuttx/quickjs.c:47337
                if (JS_IsException(res))
    80046c78:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:47336
                res = js_map_set(ctx, groups, 2, args, 0);
    80046c7c:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:47337
                if (JS_IsException(res))
    80046c7e:	0f778a63          	beq	a5,s7,80046d72 <js_object_groupBy+0x270>
quickjs-nuttx/quickjs.c:47339
                JS_FreeValue(ctx, res);
    80046c82:	85aa                	mv	a1,a0
    80046c84:	8522                	mv	a0,s0
    80046c86:	b19c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47348
        res = js_array_push(ctx, prop, 1, (JSValueConst *)&v, /*unshift*/0);
    80046c8a:	65ca                	ld	a1,144(sp)
    80046c8c:	4781                	li	a5,0
    80046c8e:	0118                	addi	a4,sp,128
    80046c90:	4685                	li	a3,1
    80046c92:	8626                	mv	a2,s1
    80046c94:	8522                	mv	a0,s0
    80046c96:	ed26                	sd	s1,152(sp)
    80046c98:	8b6f40ef          	jal	ra,8003ad4e <js_array_push>
quickjs-nuttx/quickjs.c:47349
        if (JS_IsException(res))
    80046c9c:	2581                	sext.w	a1,a1
    80046c9e:	0d758a63          	beq	a1,s7,80046d72 <js_object_groupBy+0x270>
quickjs-nuttx/quickjs.c:47353
        JS_FreeValue(ctx, prop);
    80046ca2:	65ca                	ld	a1,144(sp)
    80046ca4:	666a                	ld	a2,152(sp)
    80046ca6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:47299
    for (idx = 0; ; idx++) {
    80046ca8:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:47353
        JS_FreeValue(ctx, prop);
    80046caa:	af5c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47354
        JS_FreeValue(ctx, key);
    80046cae:	7666                	ld	a2,120(sp)
    80046cb0:	75c6                	ld	a1,112(sp)
    80046cb2:	8522                	mv	a0,s0
    80046cb4:	aebc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47355
        JS_FreeAtom(ctx, key_atom);
    80046cb8:	85ce                	mv	a1,s3
    80046cba:	8522                	mv	a0,s0
    80046cbc:	c8cc40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:47356
        JS_FreeValue(ctx, v);
    80046cc0:	658a                	ld	a1,128(sp)
    80046cc2:	662a                	ld	a2,136(sp)
    80046cc4:	8522                	mv	a0,s0
    80046cc6:	ad9c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47358
        key = JS_UNDEFINED;
    80046cca:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:47357
        prop = JS_UNDEFINED;
    80046ccc:	e902                	sd	zero,144(sp)
quickjs-nuttx/quickjs.c:47358
        key = JS_UNDEFINED;
    80046cce:	f882                	sd	zero,112(sp)
    80046cd0:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:47360
        v = JS_UNDEFINED;
    80046cd2:	e102                	sd	zero,128(sp)
    80046cd4:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs.c:47300
        if (idx >= MAX_SAFE_INTEGER) {
    80046cd6:	ed9a9ee3          	bne	s5,s9,80046bb2 <js_object_groupBy+0xb0>
quickjs-nuttx/quickjs.c:47301
            JS_ThrowTypeError(ctx, "too many elements");
    80046cda:	00027597          	auipc	a1,0x27
    80046cde:	98e58593          	addi	a1,a1,-1650 # 8006d668 <qjsc_repl+0x80b8>
    80046ce2:	8522                	mv	a0,s0
    80046ce4:	989d10ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:47368 (discriminator 1)
    JS_IteratorClose(ctx, iter, TRUE);
    80046ce8:	6586                	ld	a1,64(sp)
    80046cea:	6626                	ld	a2,72(sp)
    80046cec:	4685                	li	a3,1
    80046cee:	8522                	mv	a0,s0
    80046cf0:	f4bd10ef          	jal	ra,80018c3a <JS_IteratorClose>
    80046cf4:	448d                	li	s1,3
    80046cf6:	a8fd                	j	80046df4 <js_object_groupBy+0x2f2>
quickjs-nuttx/quickjs.c:47294
        groups = JS_NewObjectProto(ctx, JS_NULL);
    80046cf8:	4789                	li	a5,2
    80046cfa:	4609                	li	a2,2
    80046cfc:	8522                	mv	a0,s0
    80046cfe:	4581                	li	a1,0
    80046d00:	f5be                	sd	a5,232(sp)
    80046d02:	ac8d50ef          	jal	ra,8001bfca <JS_NewObjectProto>
    80046d06:	bd51                	j	80046b9a <js_object_groupBy+0x98>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80046d08:	d22af7d3          	fcvt.d.l	fa5,s5
    80046d0c:	479d                	li	a5,7
    80046d0e:	e20786d3          	fmv.x.d	a3,fa5
js_object_groupBy():
quickjs-nuttx/quickjs.h:230
    return v;
    80046d12:	a1be                	fsd	fa5,192(sp)
    80046d14:	2681                	sext.w	a3,a3
    80046d16:	bde9                	j	80046bf0 <js_object_groupBy+0xee>
quickjs-nuttx/quickjs.c:47319
            key_atom = JS_ValueToAtom(ctx, key);
    80046d18:	85aa                	mv	a1,a0
    80046d1a:	8522                	mv	a0,s0
    80046d1c:	af7e10ef          	jal	ra,80028812 <JS_ValueToAtom>
quickjs-nuttx/quickjs.c:47320
            JS_FreeValue(ctx, key);
    80046d20:	75c6                	ld	a1,112(sp)
    80046d22:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:47319
            key_atom = JS_ValueToAtom(ctx, key);
    80046d24:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:47320
            JS_FreeValue(ctx, key);
    80046d28:	8522                	mv	a0,s0
    80046d2a:	a75c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47321
            key = JS_UNDEFINED;
    80046d2e:	478d                	li	a5,3
    80046d30:	f882                	sd	zero,112(sp)
    80046d32:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:47322
            if (key_atom == JS_ATOM_NULL)
    80046d34:	fa098ae3          	beqz	s3,80046ce8 <js_object_groupBy+0x1e6>
quickjs-nuttx/quickjs.c:47324
            prop = JS_GetProperty(ctx, groups, key_atom);
    80046d38:	7706                	ld	a4,96(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80046d3a:	4801                	li	a6,0
    80046d3c:	87ca                	mv	a5,s2
    80046d3e:	86ce                	mv	a3,s3
    80046d40:	85ba                	mv	a1,a4
    80046d42:	864a                	mv	a2,s2
    80046d44:	8522                	mv	a0,s0
    80046d46:	e1ba                	sd	a4,192(sp)
    80046d48:	e5ca                	sd	s2,200(sp)
    80046d4a:	d61cf0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80046d4e:	84ae                	mv	s1,a1
    80046d50:	e92a                	sd	a0,144(sp)
js_object_groupBy():
quickjs-nuttx/quickjs.h:732
    80046d52:	b5dd                	j	80046c38 <js_object_groupBy+0x136>
quickjs-nuttx/quickjs.c:47341
                prop = JS_DupValue(ctx, prop);
    80046d54:	ec6c30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80046d58:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:47342
                if (JS_DefinePropertyValue(ctx, groups, key_atom, prop,
    80046d5a:	87ae                	mv	a5,a1
    80046d5c:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:47341
                prop = JS_DupValue(ctx, prop);
    80046d5e:	872a                	mv	a4,a0
    80046d60:	e92a                	sd	a0,144(sp)
quickjs-nuttx/quickjs.c:47342
                if (JS_DefinePropertyValue(ctx, groups, key_atom, prop,
    80046d62:	481d                	li	a6,7
    80046d64:	86ce                	mv	a3,s3
    80046d66:	864a                	mv	a2,s2
    80046d68:	8522                	mv	a0,s0
    80046d6a:	cc2d10ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80046d6e:	f0055ee3          	bgez	a0,80046c8a <js_object_groupBy+0x188>
quickjs-nuttx/quickjs.c:47370
    JS_FreeAtom(ctx, key_atom);
    80046d72:	85ce                	mv	a1,s3
    80046d74:	8522                	mv	a0,s0
    80046d76:	bd2c40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:47371
    JS_FreeValue(ctx, prop);
    80046d7a:	65ca                	ld	a1,144(sp)
    80046d7c:	8626                	mv	a2,s1
    80046d7e:	8522                	mv	a0,s0
    80046d80:	a1fc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47372
    JS_FreeValue(ctx, key);
    80046d84:	75c6                	ld	a1,112(sp)
    80046d86:	7666                	ld	a2,120(sp)
    80046d88:	8522                	mv	a0,s0
    80046d8a:	a15c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47373
    JS_FreeValue(ctx, v);
    80046d8e:	658a                	ld	a1,128(sp)
    80046d90:	662a                	ld	a2,136(sp)
    80046d92:	8522                	mv	a0,s0
    80046d94:	a0bc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47374
    JS_FreeValue(ctx, groups);
    80046d98:	7586                	ld	a1,96(sp)
    80046d9a:	864a                	mv	a2,s2
    80046d9c:	8522                	mv	a0,s0
    80046d9e:	a01c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47375
    JS_FreeValue(ctx, iter);
    80046da2:	6586                	ld	a1,64(sp)
    80046da4:	8652                	mv	a2,s4
    80046da6:	8522                	mv	a0,s0
    80046da8:	9f7c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47376
    JS_FreeValue(ctx, next);
    80046dac:	65c6                	ld	a1,80(sp)
    80046dae:	865a                	mv	a2,s6
    80046db0:	8522                	mv	a0,s0
    80046db2:	9edc40ef          	jal	ra,8000b79e <JS_FreeValue>
    80046db6:	bba5                	j	80046b2e <js_object_groupBy+0x2c>
quickjs-nuttx/quickjs.c:47363
    JS_FreeValue(ctx, iter);
    80046db8:	6586                	ld	a1,64(sp)
    80046dba:	6626                	ld	a2,72(sp)
    80046dbc:	8522                	mv	a0,s0
    80046dbe:	9e1c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47364
    JS_FreeValue(ctx, next);
    80046dc2:	65c6                	ld	a1,80(sp)
    80046dc4:	6666                	ld	a2,88(sp)
    80046dc6:	8522                	mv	a0,s0
    80046dc8:	9d7c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47365
    return groups;
    80046dcc:	7786                	ld	a5,96(sp)
    80046dce:	e5ca                	sd	s2,200(sp)
    80046dd0:	e1be                	sd	a5,192(sp)
quickjs-nuttx/quickjs.c:47378 (discriminator 1)
}
    80046dd2:	60f6                	ld	ra,344(sp)
    80046dd4:	6456                	ld	s0,336(sp)
    80046dd6:	650e                	ld	a0,192(sp)
    80046dd8:	65ae                	ld	a1,200(sp)
    80046dda:	64b6                	ld	s1,328(sp)
    80046ddc:	6916                	ld	s2,320(sp)
    80046dde:	79f2                	ld	s3,312(sp)
    80046de0:	7a52                	ld	s4,304(sp)
    80046de2:	7ab2                	ld	s5,296(sp)
    80046de4:	7b12                	ld	s6,288(sp)
    80046de6:	6bf2                	ld	s7,280(sp)
    80046de8:	6c52                	ld	s8,272(sp)
    80046dea:	6cb2                	ld	s9,264(sp)
    80046dec:	6135                	addi	sp,sp,352
    80046dee:	8082                	ret
quickjs-nuttx/quickjs.c:47284
    prop = JS_UNDEFINED;
    80046df0:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:47285
    groups = JS_UNDEFINED;
    80046df2:	490d                	li	s2,3
    80046df4:	4981                	li	s3,0
    80046df6:	bfb5                	j	80046d72 <js_object_groupBy+0x270>

0000000080046df8 <js_map_forEach>:
js_map_forEach():
quickjs-nuttx/quickjs.c:47217
{
    80046df8:	7131                	addi	sp,sp,-192
    80046dfa:	ed4e                	sd	s3,152(sp)
    80046dfc:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:47218
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    80046dfe:	0267869b          	addiw	a3,a5,38
quickjs-nuttx/quickjs.c:47217
{
    80046e02:	f922                	sd	s0,176(sp)
    80046e04:	f526                	sd	s1,168(sp)
    80046e06:	e556                	sd	s5,136(sp)
    80046e08:	fd06                	sd	ra,184(sp)
    80046e0a:	f14a                	sd	s2,160(sp)
    80046e0c:	e952                	sd	s4,144(sp)
    80046e0e:	e15a                	sd	s6,128(sp)
    80046e10:	84aa                	mv	s1,a0
    80046e12:	e02e                	sd	a1,0(sp)
    80046e14:	e432                	sd	a2,8(sp)
    80046e16:	843a                	mv	s0,a4
    80046e18:	8abe                	mv	s5,a5
quickjs-nuttx/quickjs.c:47218
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    80046e1a:	9d5d10ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47224
    if (!s)
    80046e1e:	e105                	bnez	a0,80046e3e <js_map_forEach+0x46>
quickjs-nuttx/quickjs.c:47225
        return JS_EXCEPTION;
    80046e20:	e082                	sd	zero,64(sp)
    80046e22:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47261
}
    80046e24:	70ea                	ld	ra,184(sp)
    80046e26:	744a                	ld	s0,176(sp)
quickjs-nuttx/quickjs.c:47260
    return JS_UNDEFINED;
    80046e28:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:47261
}
    80046e2a:	6506                	ld	a0,64(sp)
    80046e2c:	65a6                	ld	a1,72(sp)
    80046e2e:	74aa                	ld	s1,168(sp)
    80046e30:	790a                	ld	s2,160(sp)
    80046e32:	69ea                	ld	s3,152(sp)
    80046e34:	6a4a                	ld	s4,144(sp)
    80046e36:	6aaa                	ld	s5,136(sp)
    80046e38:	6b0a                	ld	s6,128(sp)
    80046e3a:	6129                	addi	sp,sp,192
    80046e3c:	8082                	ret
quickjs-nuttx/quickjs.c:47226
    func = argv[0];
    80046e3e:	601c                	ld	a5,0(s0)
    80046e40:	8a2a                	mv	s4,a0
    80046e42:	e83e                	sd	a5,16(sp)
    80046e44:	641c                	ld	a5,8(s0)
    80046e46:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:47227
    if (argc > 1)
    80046e48:	4785                	li	a5,1
    80046e4a:	0337d563          	bge	a5,s3,80046e74 <js_map_forEach+0x7c>
quickjs-nuttx/quickjs.c:47228
        this_arg = argv[1];
    80046e4e:	681c                	ld	a5,16(s0)
    80046e50:	f03e                	sd	a5,32(sp)
    80046e52:	6c1c                	ld	a5,24(s0)
quickjs-nuttx/quickjs.c:47231
    if (check_function(ctx, func))
    80046e54:	65c2                	ld	a1,16(sp)
    80046e56:	6662                	ld	a2,24(sp)
    80046e58:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:47230
        this_arg = JS_UNDEFINED;
    80046e5a:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:47231
    if (check_function(ctx, func))
    80046e5c:	8c3d10ef          	jal	ra,8001871e <check_function>
    80046e60:	f161                	bnez	a0,80046e20 <js_map_forEach+0x28>
quickjs-nuttx/quickjs.c:47235
    el = s->records.next;
    80046e62:	010a3403          	ld	s0,16(s4)
quickjs-nuttx/quickjs.c:47253
            if (JS_IsException(ret))
    80046e66:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:47236
    while (el != &s->records) {
    80046e68:	0a21                	addi	s4,s4,8
    80046e6a:	01441863          	bne	s0,s4,80046e7a <js_map_forEach+0x82>
quickjs-nuttx/quickjs.c:47260
    return JS_UNDEFINED;
    80046e6e:	e082                	sd	zero,64(sp)
    80046e70:	478d                	li	a5,3
    80046e72:	bf4d                	j	80046e24 <js_map_forEach+0x2c>
quickjs-nuttx/quickjs.c:47230
        this_arg = JS_UNDEFINED;
    80046e74:	f002                	sd	zero,32(sp)
    80046e76:	478d                	li	a5,3
    80046e78:	bff1                	j	80046e54 <js_map_forEach+0x5c>
quickjs-nuttx/quickjs.c:47238
        if (!mr->empty) {
    80046e7a:	fec42783          	lw	a5,-20(s0)
    80046e7e:	ebd1                	bnez	a5,80046f12 <js_map_forEach+0x11a>
quickjs-nuttx/quickjs.c:47239
            mr->ref_count++;
    80046e80:	fe842783          	lw	a5,-24(s0)
quickjs-nuttx/quickjs.c:47237
        mr = list_entry(el, JSMapRecord, link);
    80046e84:	fe840993          	addi	s3,s0,-24
quickjs-nuttx/quickjs.c:47239
            mr->ref_count++;
    80046e88:	2785                	addiw	a5,a5,1
    80046e8a:	fef42423          	sw	a5,-24(s0)
quickjs-nuttx/quickjs.c:47241
            args[1] = JS_DupValue(ctx, mr->key);
    80046e8e:	0389b503          	ld	a0,56(s3)
    80046e92:	0409b583          	ld	a1,64(s3)
    80046e96:	d84c30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80046e9a:	f0aa                	sd	a0,96(sp)
    80046e9c:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:47242
            if (magic)
    80046e9e:	040a8d63          	beqz	s5,80046ef8 <js_map_forEach+0x100>
quickjs-nuttx/quickjs.c:47246
            args[2] = (JSValue)this_val;
    80046ea2:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:47247
            ret = JS_Call(ctx, func, this_arg, 3, (JSValueConst *)args);
    80046ea4:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:47245
                args[0] = JS_DupValue(ctx, mr->value);
    80046ea6:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:47246
            args[2] = (JSValue)this_val;
    80046ea8:	f8be                	sd	a5,112(sp)
    80046eaa:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:47247
            ret = JS_Call(ctx, func, this_arg, 3, (JSValueConst *)args);
    80046eac:	7682                	ld	a3,32(sp)
    80046eae:	7722                	ld	a4,40(sp)
    80046eb0:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:47245
                args[0] = JS_DupValue(ctx, mr->value);
    80046eb2:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:47246
            args[2] = (JSValue)this_val;
    80046eb4:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:47247
            ret = JS_Call(ctx, func, this_arg, 3, (JSValueConst *)args);
    80046eb6:	05010813          	addi	a6,sp,80
    80046eba:	478d                	li	a5,3
    80046ebc:	8526                	mv	a0,s1
    80046ebe:	f47fb0ef          	jal	ra,80042e04 <JS_Call>
    80046ec2:	892e                	mv	s2,a1
    80046ec4:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:47248
            JS_FreeValue(ctx, args[0]);
    80046ec6:	6666                	ld	a2,88(sp)
    80046ec8:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:47247
            ret = JS_Call(ctx, func, this_arg, 3, (JSValueConst *)args);
    80046eca:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:47248
            JS_FreeValue(ctx, args[0]);
    80046ecc:	8526                	mv	a0,s1
    80046ece:	8d1c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47249
            if (!magic)
    80046ed2:	000a9763          	bnez	s5,80046ee0 <js_map_forEach+0xe8>
quickjs-nuttx/quickjs.c:47250
                JS_FreeValue(ctx, args[1]);
    80046ed6:	7586                	ld	a1,96(sp)
    80046ed8:	7626                	ld	a2,104(sp)
    80046eda:	8526                	mv	a0,s1
    80046edc:	8c3c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47252
            map_decref_record(ctx->rt, mr);
    80046ee0:	6c88                	ld	a0,24(s1)
    80046ee2:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:47253
            if (JS_IsException(ret))
    80046ee4:	2901                	sext.w	s2,s2
quickjs-nuttx/quickjs.c:47251
            el = el->next;
    80046ee6:	6400                	ld	s0,8(s0)
quickjs-nuttx/quickjs.c:47252
            map_decref_record(ctx->rt, mr);
    80046ee8:	bf5c30ef          	jal	ra,8000aadc <map_decref_record>
quickjs-nuttx/quickjs.c:47253
            if (JS_IsException(ret))
    80046eec:	01691d63          	bne	s2,s6,80046f06 <js_map_forEach+0x10e>
quickjs-nuttx/quickjs.c:47254
                return ret;
    80046ef0:	77c2                	ld	a5,48(sp)
    80046ef2:	e0be                	sd	a5,64(sp)
    80046ef4:	77e2                	ld	a5,56(sp)
    80046ef6:	b73d                	j	80046e24 <js_map_forEach+0x2c>
quickjs-nuttx/quickjs.c:47245
                args[0] = JS_DupValue(ctx, mr->value);
    80046ef8:	0489b503          	ld	a0,72(s3)
    80046efc:	0509b583          	ld	a1,80(s3)
    80046f00:	d1ac30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80046f04:	bf79                	j	80046ea2 <js_map_forEach+0xaa>
quickjs-nuttx/quickjs.c:47255
            JS_FreeValue(ctx, ret);
    80046f06:	75c2                	ld	a1,48(sp)
    80046f08:	7662                	ld	a2,56(sp)
    80046f0a:	8526                	mv	a0,s1
    80046f0c:	893c40ef          	jal	ra,8000b79e <JS_FreeValue>
    80046f10:	bfa9                	j	80046e6a <js_map_forEach+0x72>
quickjs-nuttx/quickjs.c:47257
            el = el->next;
    80046f12:	6400                	ld	s0,8(s0)
    80046f14:	bf99                	j	80046e6a <js_map_forEach+0x72>

0000000080046f16 <js_promise_race>:
js_promise_race():
quickjs-nuttx/quickjs.c:48430
{
    80046f16:	714d                	addi	sp,sp,-336
    80046f18:	fe26                	sd	s1,312(sp)
    80046f1a:	e686                	sd	ra,328(sp)
    80046f1c:	84ba                	mv	s1,a4
    80046f1e:	e2a2                	sd	s0,320(sp)
    80046f20:	fa4a                	sd	s2,304(sp)
    80046f22:	f64e                	sd	s3,296(sp)
    80046f24:	f252                	sd	s4,288(sp)
    80046f26:	ee56                	sd	s5,280(sp)
    80046f28:	ea5a                	sd	s6,272(sp)
    80046f2a:	e65e                	sd	s7,264(sp)
    80046f2c:	e262                	sd	s8,256(sp)
    80046f2e:	fde6                	sd	s9,248(sp)
    80046f30:	e02e                	sd	a1,0(sp)
    80046f32:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:48432
    JSValue next_method = JS_UNDEFINED, iter = JS_UNDEFINED;
    80046f34:	f082                	sd	zero,96(sp)
    80046f36:	f882                	sd	zero,112(sp)
quickjs-nuttx/quickjs.c:48436
    if (!JS_IsObject(this_val))
    80046f38:	0006071b          	sext.w	a4,a2
    80046f3c:	57fd                	li	a5,-1
    80046f3e:	02f70063          	beq	a4,a5,80046f5e <js_promise_race+0x48>
quickjs-nuttx/quickjs.c:48495
}
    80046f42:	6416                	ld	s0,320(sp)
    80046f44:	60b6                	ld	ra,328(sp)
    80046f46:	74f2                	ld	s1,312(sp)
    80046f48:	7952                	ld	s2,304(sp)
    80046f4a:	79b2                	ld	s3,296(sp)
    80046f4c:	7a12                	ld	s4,288(sp)
    80046f4e:	6af2                	ld	s5,280(sp)
    80046f50:	6b52                	ld	s6,272(sp)
    80046f52:	6bb2                	ld	s7,264(sp)
    80046f54:	6c12                	ld	s8,256(sp)
    80046f56:	7cee                	ld	s9,248(sp)
    80046f58:	6171                	addi	sp,sp,336
quickjs-nuttx/quickjs.c:48437
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80046f5a:	cd1d106f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    80046f5e:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:48438
    result_promise = js_new_promise_capability(ctx, resolving_funcs, this_val);
    80046f60:	86d2                	mv	a3,s4
    80046f62:	862e                	mv	a2,a1
    80046f64:	098c                	addi	a1,sp,208
    80046f66:	842a                	mv	s0,a0
    80046f68:	cbdfc0ef          	jal	ra,80043c24 <js_new_promise_capability>
    80046f6c:	f02a                	sd	a0,32(sp)
    80046f6e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:48439
    if (JS_IsException(result_promise))
    80046f70:	0005879b          	sext.w	a5,a1
    80046f74:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:48438
    result_promise = js_new_promise_capability(ctx, resolving_funcs, this_val);
    80046f76:	8cae                	mv	s9,a1
quickjs-nuttx/quickjs.c:48439
    if (JS_IsException(result_promise))
    80046f78:	03279363          	bne	a5,s2,80046f9e <js_promise_race+0x88>
quickjs-nuttx/quickjs.c:48440
        return result_promise;
    80046f7c:	e1aa                	sd	a0,192(sp)
    80046f7e:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:48495
}
    80046f80:	60b6                	ld	ra,328(sp)
    80046f82:	6416                	ld	s0,320(sp)
    80046f84:	650e                	ld	a0,192(sp)
    80046f86:	65ae                	ld	a1,200(sp)
    80046f88:	74f2                	ld	s1,312(sp)
    80046f8a:	7952                	ld	s2,304(sp)
    80046f8c:	79b2                	ld	s3,296(sp)
    80046f8e:	7a12                	ld	s4,288(sp)
    80046f90:	6af2                	ld	s5,280(sp)
    80046f92:	6b52                	ld	s6,272(sp)
    80046f94:	6bb2                	ld	s7,264(sp)
    80046f96:	6c12                	ld	s8,256(sp)
    80046f98:	7cee                	ld	s9,248(sp)
    80046f9a:	6171                	addi	sp,sp,336
    80046f9c:	8082                	ret
quickjs-nuttx/quickjs.c:48441
    promise_resolve = JS_GetProperty(ctx, this_val, JS_ATOM_resolve);
    80046f9e:	67a2                	ld	a5,8(sp)
    80046fa0:	6702                	ld	a4,0(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80046fa2:	4801                	li	a6,0
    80046fa4:	863e                	mv	a2,a5
    80046fa6:	08100693          	li	a3,129
    80046faa:	85ba                	mv	a1,a4
    80046fac:	8522                	mv	a0,s0
    80046fae:	e5be                	sd	a5,200(sp)
    80046fb0:	e1ba                	sd	a4,192(sp)
    80046fb2:	af9cf0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80046fb6:	e12a                	sd	a0,128(sp)
js_promise_race():
quickjs-nuttx/quickjs.c:48442
    if (JS_IsException(promise_resolve) ||
    80046fb8:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80046fbc:	89ae                	mv	s3,a1
js_promise_race():
quickjs-nuttx/quickjs.c:48442
    80046fbe:	09279663          	bne	a5,s2,8004704a <js_promise_race+0x134>
quickjs-nuttx/quickjs.c:48432
    JSValue next_method = JS_UNDEFINED, iter = JS_UNDEFINED;
    80046fc2:	4b0d                	li	s6,3
    80046fc4:	4b8d                	li	s7,3
quickjs-nuttx/quickjs.c:48449
        error = JS_GetException(ctx);
    80046fc6:	8522                	mv	a0,s0
    80046fc8:	cc6c70ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:48450
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    80046fcc:	762e                	ld	a2,232(sp)
quickjs-nuttx/quickjs.c:48449
        error = JS_GetException(ctx);
    80046fce:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:48450
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    80046fd0:	758e                	ld	a1,224(sp)
    80046fd2:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48449
        error = JS_GetException(ctx);
    80046fd4:	e92a                	sd	a0,144(sp)
quickjs-nuttx/quickjs.c:48450
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    80046fd6:	e5be                	sd	a5,200(sp)
    80046fd8:	09010813          	addi	a6,sp,144
    80046fdc:	4785                	li	a5,1
    80046fde:	4681                	li	a3,0
    80046fe0:	470d                	li	a4,3
    80046fe2:	8522                	mv	a0,s0
    80046fe4:	e182                	sd	zero,192(sp)
    80046fe6:	e1ffb0ef          	jal	ra,80042e04 <JS_Call>
    80046fea:	84ae                	mv	s1,a1
    80046fec:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:48452
        JS_FreeValue(ctx, error);
    80046fee:	666a                	ld	a2,152(sp)
    80046ff0:	65ca                	ld	a1,144(sp)
quickjs-nuttx/quickjs.c:48450
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    80046ff2:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:48452
        JS_FreeValue(ctx, error);
    80046ff4:	8522                	mv	a0,s0
    80046ff6:	fa8c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48453
        if (JS_IsException(ret))
    80046ffa:	2481                	sext.w	s1,s1
    80046ffc:	4799                	li	a5,6
    80046ffe:	0ef49a63          	bne	s1,a5,800470f2 <js_promise_race+0x1dc>
quickjs-nuttx/quickjs.c:48492
    JS_FreeValue(ctx, result_promise);
