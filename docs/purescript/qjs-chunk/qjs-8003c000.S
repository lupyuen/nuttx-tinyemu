    8003b000:	9a4a                	add	s4,s4,s2
quickjs-nuttx/quickjs.c:40496 (discriminator 1)
            JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, array[n].str));
    8003b002:	5b65                	li	s6,-7
    8003b004:	a8a9                	j	8003b05e <js_array_sort+0x1ee>
quickjs-nuttx/quickjs.c:40483
        if (JS_SetPropertyInt64(ctx, obj, i, JS_UNDEFINED) < 0)
    8003b006:	75c2                	ld	a1,48(sp)
    8003b008:	4701                	li	a4,0
    8003b00a:	478d                	li	a5,3
    8003b00c:	86a2                	mv	a3,s0
    8003b00e:	8652                	mv	a2,s4
    8003b010:	854e                	mv	a0,s3
    8003b012:	e082                	sd	zero,64(sp)
    8003b014:	e4a6                	sd	s1,72(sp)
    8003b016:	e5ffc0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    8003b01a:	04054863          	bltz	a0,8003b06a <js_array_sort+0x1fa>
quickjs-nuttx/quickjs.c:40482
    for (i = n; undefined_count-- > 0; i++) {
    8003b01e:	0405                	addi	s0,s0,1
    8003b020:	bde5                	j	8003af18 <js_array_sort+0xa8>
quickjs-nuttx/quickjs.c:40487
        if (JS_DeletePropertyInt64(ctx, obj, i, JS_PROP_THROW) < 0)
    8003b022:	75c2                	ld	a1,48(sp)
    8003b024:	6711                	lui	a4,0x4
    8003b026:	86a2                	mv	a3,s0
    8003b028:	8652                	mv	a2,s4
    8003b02a:	854e                	mv	a0,s3
    8003b02c:	b3ef50ef          	jal	ra,8003036a <JS_DeletePropertyInt64>
    8003b030:	02054d63          	bltz	a0,8003b06a <js_array_sort+0x1fa>
quickjs-nuttx/quickjs.c:40486
    for (; i < len; i++) {
    8003b034:	0405                	addi	s0,s0,1
    8003b036:	b5ed                	j	8003af20 <js_array_sort+0xb0>
quickjs-nuttx/quickjs.c:40494
        JS_FreeValue(ctx, array[n].val);
    8003b038:	000a3583          	ld	a1,0(s4)
    8003b03c:	008a3603          	ld	a2,8(s4)
    8003b040:	854e                	mv	a0,s3
    8003b042:	f5cd00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40495
        if (array[n].str)
    8003b046:	010a3583          	ld	a1,16(s4)
    8003b04a:	c599                	beqz	a1,8003b058 <js_array_sort+0x1e8>
quickjs-nuttx/quickjs.c:40496
            JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, array[n].str));
    8003b04c:	5665                	li	a2,-7
    8003b04e:	854e                	mv	a0,s3
    8003b050:	e0ae                	sd	a1,64(sp)
    8003b052:	e4da                	sd	s6,72(sp)
    8003b054:	f4ad00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40493
    for (; n < pos; n++) {
    8003b058:	0485                	addi	s1,s1,1
    8003b05a:	020a0a13          	addi	s4,s4,32
quickjs-nuttx/quickjs.c:40493 (discriminator 1)
    8003b05e:	fc84ede3          	bltu	s1,s0,8003b038 <js_array_sort+0x1c8>
quickjs-nuttx/quickjs.c:40498
    js_free(ctx, array);
    8003b062:	85ca                	mv	a1,s2
    8003b064:	854e                	mv	a0,s3
    8003b066:	f91cf0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:40500
    JS_FreeValue(ctx, obj);
    8003b06a:	75c2                	ld	a1,48(sp)
    8003b06c:	8656                	mv	a2,s5
    8003b06e:	854e                	mv	a0,s3
    8003b070:	f2ed00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40501
    return JS_EXCEPTION;
    8003b074:	4799                	li	a5,6
    8003b076:	e082                	sd	zero,64(sp)
    8003b078:	e4be                	sd	a5,72(sp)
    8003b07a:	bd4d                	j	8003af2c <js_array_sort+0xbc>
quickjs-nuttx/quickjs.c:40422
    JSValue obj = JS_UNDEFINED;
    8003b07c:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:40424
    size_t array_size = 0, pos = 0, n = 0;
    8003b07e:	4481                	li	s1,0
    8003b080:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:40423
    ValueSlot *array = NULL;
    8003b082:	4901                	li	s2,0
    8003b084:	bfa5                	j	8003affc <js_array_sort+0x18c>

000000008003b086 <js_array_toSorted>:
js_array_toSorted():
quickjs-nuttx/quickjs.c:40510
{
    8003b086:	7151                	addi	sp,sp,-240
    8003b088:	eda6                	sd	s1,216(sp)
    8003b08a:	f55e                	sd	s7,168(sp)
    8003b08c:	f162                	sd	s8,160(sp)
    8003b08e:	f586                	sd	ra,232(sp)
    8003b090:	f1a2                	sd	s0,224(sp)
    8003b092:	e9ca                	sd	s2,208(sp)
    8003b094:	e5ce                	sd	s3,200(sp)
    8003b096:	e1d2                	sd	s4,192(sp)
    8003b098:	fd56                	sd	s5,184(sp)
    8003b09a:	f95a                	sd	s6,176(sp)
    8003b09c:	ed66                	sd	s9,152(sp)
    8003b09e:	e96a                	sd	s10,144(sp)
    8003b0a0:	e432                	sd	a2,8(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8003b0a2:	6710                	ld	a2,8(a4)
js_array_toSorted():
quickjs-nuttx/quickjs.c:40510
    8003b0a4:	8bba                	mv	s7,a4
    8003b0a6:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:40517
    ok = JS_IsUndefined(argv[0]) || JS_IsFunction(ctx, argv[0]);
    8003b0a8:	0006071b          	sext.w	a4,a2
    8003b0ac:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:40510
{
    8003b0ae:	84aa                	mv	s1,a0
    8003b0b0:	8c36                	mv	s8,a3
quickjs-nuttx/quickjs.c:40517
    ok = JS_IsUndefined(argv[0]) || JS_IsFunction(ctx, argv[0]);
    8003b0b2:	00f70763          	beq	a4,a5,8003b0c0 <js_array_toSorted+0x3a>
quickjs-nuttx/quickjs.c:40517 (discriminator 2)
    8003b0b6:	000bb583          	ld	a1,0(s7)
    8003b0ba:	be8d30ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8003b0be:	c951                	beqz	a0,8003b152 <js_array_toSorted+0xcc>
quickjs-nuttx/quickjs.c:40523 (discriminator 3)
    obj = JS_ToObject(ctx, this_val);
    8003b0c0:	6622                	ld	a2,8(sp)
    8003b0c2:	6582                	ld	a1,0(sp)
    8003b0c4:	8526                	mv	a0,s1
    8003b0c6:	ff5f40ef          	jal	ra,800300ba <JS_ToObject>
    8003b0ca:	862a                	mv	a2,a0
    8003b0cc:	86ae                	mv	a3,a1
    8003b0ce:	e0aa                	sd	a0,64(sp)
    8003b0d0:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:40524 (discriminator 3)
    if (js_get_length64(ctx, &len, obj))
    8003b0d2:	8526                	mv	a0,s1
    8003b0d4:	102c                	addi	a1,sp,40
    8003b0d6:	cfbe90ef          	jal	ra,80024dd0 <js_get_length64>
    8003b0da:	16051b63          	bnez	a0,8003b250 <js_array_toSorted+0x1ca>
quickjs-nuttx/quickjs.c:40527
    arr = js_allocate_fast_array(ctx, len);
    8003b0de:	75a2                	ld	a1,40(sp)
    8003b0e0:	8526                	mv	a0,s1
    8003b0e2:	ff6e10ef          	jal	ra,8001c8d8 <js_allocate_fast_array>
    8003b0e6:	f82a                	sd	a0,48(sp)
    8003b0e8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:40528
    if (JS_IsException(arr))
    8003b0ea:	0005871b          	sext.w	a4,a1
    8003b0ee:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40527
    arr = js_allocate_fast_array(ctx, len);
    8003b0f0:	842a                	mv	s0,a0
    8003b0f2:	8b2e                	mv	s6,a1
    8003b0f4:	8aaa                	mv	s5,a0
    8003b0f6:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:40528
    if (JS_IsException(arr))
    8003b0f8:	12f70663          	beq	a4,a5,8003b224 <js_array_toSorted+0x19e>
quickjs-nuttx/quickjs.c:40531
    if (len > 0) {
    8003b0fc:	77a2                	ld	a5,40(sp)
    8003b0fe:	06f04e63          	bgtz	a5,8003b17a <js_array_toSorted+0xf4>
quickjs-nuttx/quickjs.c:40552
    ret = js_array_sort(ctx, arr, argc, argv);
    8003b102:	75c2                	ld	a1,48(sp)
    8003b104:	7662                	ld	a2,56(sp)
    8003b106:	875e                	mv	a4,s7
    8003b108:	86e2                	mv	a3,s8
    8003b10a:	8526                	mv	a0,s1
    8003b10c:	d65ff0ef          	jal	ra,8003ae70 <js_array_sort>
quickjs-nuttx/quickjs.c:40553
    if (JS_IsException(ret))
    8003b110:	0005871b          	sext.w	a4,a1
    8003b114:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40552
    ret = js_array_sort(ctx, arr, argc, argv);
    8003b116:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:40553
    if (JS_IsException(ret))
    8003b118:	12f71363          	bne	a4,a5,8003b23e <js_array_toSorted+0x1b8>
quickjs-nuttx/quickjs.c:40552
    ret = js_array_sort(ctx, arr, argc, argv);
    8003b11c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:40561
    JS_FreeValue(ctx, arr);
    8003b11e:	85d6                	mv	a1,s5
    8003b120:	8652                	mv	a2,s4
    8003b122:	8526                	mv	a0,s1
    8003b124:	e7ad00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40562
    JS_FreeValue(ctx, obj);
    8003b128:	6586                	ld	a1,64(sp)
    8003b12a:	6626                	ld	a2,72(sp)
    8003b12c:	8526                	mv	a0,s1
    8003b12e:	e70d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40564
}
    8003b132:	70ae                	ld	ra,232(sp)
    8003b134:	8522                	mv	a0,s0
    8003b136:	740e                	ld	s0,224(sp)
    8003b138:	64ee                	ld	s1,216(sp)
    8003b13a:	69ae                	ld	s3,200(sp)
    8003b13c:	6a0e                	ld	s4,192(sp)
    8003b13e:	7aea                	ld	s5,184(sp)
    8003b140:	7b4a                	ld	s6,176(sp)
    8003b142:	7baa                	ld	s7,168(sp)
    8003b144:	7c0a                	ld	s8,160(sp)
    8003b146:	6cea                	ld	s9,152(sp)
    8003b148:	6d4a                	ld	s10,144(sp)
    8003b14a:	85ca                	mv	a1,s2
    8003b14c:	694e                	ld	s2,208(sp)
    8003b14e:	616d                	addi	sp,sp,240
    8003b150:	8082                	ret
    8003b152:	740e                	ld	s0,224(sp)
    8003b154:	70ae                	ld	ra,232(sp)
    8003b156:	694e                	ld	s2,208(sp)
    8003b158:	69ae                	ld	s3,200(sp)
    8003b15a:	6a0e                	ld	s4,192(sp)
    8003b15c:	7aea                	ld	s5,184(sp)
    8003b15e:	7b4a                	ld	s6,176(sp)
    8003b160:	7baa                	ld	s7,168(sp)
    8003b162:	7c0a                	ld	s8,160(sp)
    8003b164:	6cea                	ld	s9,152(sp)
    8003b166:	6d4a                	ld	s10,144(sp)
quickjs-nuttx/quickjs.c:40519
        return JS_ThrowTypeError(ctx, "not a function");
    8003b168:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:40564
}
    8003b16a:	64ee                	ld	s1,216(sp)
quickjs-nuttx/quickjs.c:40519
        return JS_ThrowTypeError(ctx, "not a function");
    8003b16c:	0002f597          	auipc	a1,0x2f
    8003b170:	a8458593          	addi	a1,a1,-1404 # 80069bf0 <qjsc_repl+0x4640>
quickjs-nuttx/quickjs.c:40564
}
    8003b174:	616d                	addi	sp,sp,240
quickjs-nuttx/quickjs.c:40519
        return JS_ThrowTypeError(ctx, "not a function");
    8003b176:	cf6dd06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:40534
        pval = p->u.array.u.values;
    8003b17a:	03853c83          	ld	s9,56(a0)
quickjs-nuttx/quickjs.c:40535
        if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003b17e:	65a6                	ld	a1,72(sp)
    8003b180:	6506                	ld	a0,64(sp)
    8003b182:	0874                	addi	a3,sp,28
    8003b184:	1010                	addi	a2,sp,32
    8003b186:	fd9ce0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    8003b18a:	c145                	beqz	a0,8003b22a <js_array_toSorted+0x1a4>
quickjs-nuttx/quickjs.c:40535 (discriminator 1)
    8003b18c:	01c16703          	lwu	a4,28(sp)
    8003b190:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:40533 (discriminator 1)
        i = 0;
    8003b192:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:40535 (discriminator 1)
        if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003b194:	00f70f63          	beq	a4,a5,8003b1b2 <js_array_toSorted+0x12c>
quickjs-nuttx/quickjs.c:40540 (discriminator 1)
                if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval)) {
    8003b198:	5d7d                	li	s10,-1
    8003b19a:	a095                	j	8003b1fe <js_array_toSorted+0x178>
quickjs-nuttx/quickjs.c:40537 (discriminator 2)
                *pval = JS_DupValue(ctx, arrp[i]);
    8003b19c:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:40536 (discriminator 2)
            for (; i < len; i++, pval++)
    8003b19e:	0905                	addi	s2,s2,1
quickjs-nuttx/quickjs.c:40537 (discriminator 2)
                *pval = JS_DupValue(ctx, arrp[i]);
    8003b1a0:	97ba                	add	a5,a5,a4
    8003b1a2:	6388                	ld	a0,0(a5)
    8003b1a4:	678c                	ld	a1,8(a5)
    8003b1a6:	a74cf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003b1aa:	00a9b023          	sd	a0,0(s3)
    8003b1ae:	00b9b423          	sd	a1,8(s3)
quickjs-nuttx/quickjs.c:40536 (discriminator 1)
            for (; i < len; i++, pval++)
    8003b1b2:	77a2                	ld	a5,40(sp)
    8003b1b4:	00491713          	slli	a4,s2,0x4
    8003b1b8:	00ec89b3          	add	s3,s9,a4
    8003b1bc:	fef940e3          	blt	s2,a5,8003b19c <js_array_toSorted+0x116>
quickjs-nuttx/quickjs.c:40548
        if (JS_SetProperty(ctx, arr, JS_ATOM_length, JS_NewInt64(ctx, len)) < 0)
    8003b1c0:	77a2                	ld	a5,40(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003b1c2:	0007861b          	sext.w	a2,a5
    8003b1c6:	06c79463          	bne	a5,a2,8003b22e <js_array_toSorted+0x1a8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003b1ca:	c302                	sw	zero,132(sp)
    8003b1cc:	c132                	sw	a2,128(sp)
    8003b1ce:	678a                	ld	a5,128(sp)
    8003b1d0:	f8be                	sd	a5,112(sp)
    8003b1d2:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003b1d4:	d8b2                	sw	a2,112(sp)
js_array_toSorted():
quickjs-nuttx/quickjs.c:40548
    8003b1d6:	7746                	ld	a4,112(sp)
    8003b1d8:	75c2                	ld	a1,48(sp)
    8003b1da:	7662                	ld	a2,56(sp)
    8003b1dc:	03000693          	li	a3,48
    8003b1e0:	8526                	mv	a0,s1
    8003b1e2:	fcbe                	sd	a5,120(sp)
    8003b1e4:	a29fc0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003b1e8:	f0055de3          	bgez	a0,8003b102 <js_array_toSorted+0x7c>
    8003b1ec:	a825                	j	8003b224 <js_array_toSorted+0x19e>
quickjs-nuttx/quickjs.c:40542 (discriminator 2)
                        *pval = JS_UNDEFINED;
    8003b1ee:	0009b023          	sd	zero,0(s3)
    8003b1f2:	00e9b423          	sd	a4,8(s3)
quickjs-nuttx/quickjs.c:40541 (discriminator 2)
                    for (; i < len; i++, pval++)
    8003b1f6:	0905                	addi	s2,s2,1
    8003b1f8:	09c1                	addi	s3,s3,16
    8003b1fa:	a015                	j	8003b21e <js_array_toSorted+0x198>
quickjs-nuttx/quickjs.c:40539
            for (; i < len; i++, pval++) {
    8003b1fc:	0905                	addi	s2,s2,1
quickjs-nuttx/quickjs.c:40539 (discriminator 1)
    8003b1fe:	77a2                	ld	a5,40(sp)
    8003b200:	00491993          	slli	s3,s2,0x4
    8003b204:	99e6                	add	s3,s3,s9
    8003b206:	faf95de3          	bge	s2,a5,8003b1c0 <js_array_toSorted+0x13a>
quickjs-nuttx/quickjs.c:40540
                if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval)) {
    8003b20a:	6586                	ld	a1,64(sp)
    8003b20c:	6626                	ld	a2,72(sp)
    8003b20e:	874e                	mv	a4,s3
    8003b210:	86ca                	mv	a3,s2
    8003b212:	8526                	mv	a0,s1
    8003b214:	dddfe0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
    8003b218:	ffa512e3          	bne	a0,s10,8003b1fc <js_array_toSorted+0x176>
quickjs-nuttx/quickjs.c:40542
                        *pval = JS_UNDEFINED;
    8003b21c:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:40541 (discriminator 1)
                    for (; i < len; i++, pval++)
    8003b21e:	77a2                	ld	a5,40(sp)
    8003b220:	fcf947e3          	blt	s2,a5,8003b1ee <js_array_toSorted+0x168>
quickjs-nuttx/quickjs.c:40521
    ret = JS_EXCEPTION;
    8003b224:	4919                	li	s2,6
    8003b226:	4401                	li	s0,0
    8003b228:	bddd                	j	8003b11e <js_array_toSorted+0x98>
    8003b22a:	4901                	li	s2,0
    8003b22c:	b7b5                	j	8003b198 <js_array_toSorted+0x112>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003b22e:	d227f7d3          	fcvt.d.l	fa5,a5
    8003b232:	479d                	li	a5,7
    8003b234:	e2078653          	fmv.x.d	a2,fa5
js_array_toSorted():
quickjs-nuttx/quickjs.h:230
    return v;
    8003b238:	b8be                	fsd	fa5,112(sp)
    8003b23a:	2601                	sext.w	a2,a2
    8003b23c:	bf61                	j	8003b1d4 <js_array_toSorted+0x14e>
quickjs-nuttx/quickjs.c:40555
    JS_FreeValue(ctx, ret);
    8003b23e:	85aa                	mv	a1,a0
    8003b240:	864a                	mv	a2,s2
    8003b242:	8526                	mv	a0,s1
    8003b244:	d5ad00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40557
    ret = arr;
    8003b248:	895a                	mv	s2,s6
quickjs-nuttx/quickjs.c:40522
    arr = JS_UNDEFINED;
    8003b24a:	4a0d                	li	s4,3
    8003b24c:	4a81                	li	s5,0
    8003b24e:	bdc1                	j	8003b11e <js_array_toSorted+0x98>
quickjs-nuttx/quickjs.c:40521
    ret = JS_EXCEPTION;
    8003b250:	4919                	li	s2,6
    8003b252:	4401                	li	s0,0
    8003b254:	bfdd                	j	8003b24a <js_array_toSorted+0x1c4>

000000008003b256 <js_array_reverse>:
js_array_reverse():
quickjs-nuttx/quickjs.c:39886
{
    8003b256:	7135                	addi	sp,sp,-160
quickjs-nuttx/quickjs.c:39893
    lval = JS_UNDEFINED;
    8003b258:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:39886
{
    8003b25a:	e922                	sd	s0,144(sp)
    8003b25c:	ed06                	sd	ra,152(sp)
    8003b25e:	e526                	sd	s1,136(sp)
    8003b260:	e14a                	sd	s2,128(sp)
    8003b262:	fcce                	sd	s3,120(sp)
    8003b264:	f8d2                	sd	s4,112(sp)
    8003b266:	842a                	mv	s0,a0
    8003b268:	e432                	sd	a2,8(sp)
    8003b26a:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:39893
    lval = JS_UNDEFINED;
    8003b26c:	e082                	sd	zero,64(sp)
    8003b26e:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:39894
    obj = JS_ToObject(ctx, this_val);
    8003b270:	e4bf40ef          	jal	ra,800300ba <JS_ToObject>
    8003b274:	862a                	mv	a2,a0
    8003b276:	86ae                	mv	a3,a1
    8003b278:	f82a                	sd	a0,48(sp)
    8003b27a:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39895
    if (js_get_length64(ctx, &len, obj))
    8003b27c:	8522                	mv	a0,s0
    8003b27e:	102c                	addi	a1,sp,40
    8003b280:	b51e90ef          	jal	ra,80024dd0 <js_get_length64>
    8003b284:	e16d                	bnez	a0,8003b366 <js_array_reverse+0x110>
quickjs-nuttx/quickjs.c:39899
    if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003b286:	7542                	ld	a0,48(sp)
    8003b288:	75e2                	ld	a1,56(sp)
    8003b28a:	0874                	addi	a3,sp,28
    8003b28c:	1010                	addi	a2,sp,32
    8003b28e:	ed1ce0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    8003b292:	74a2                	ld	s1,40(sp)
    8003b294:	c53d                	beqz	a0,8003b302 <js_array_reverse+0xac>
quickjs-nuttx/quickjs.c:39899 (discriminator 1)
    8003b296:	47f2                	lw	a5,28(sp)
    8003b298:	02079713          	slli	a4,a5,0x20
    8003b29c:	9301                	srli	a4,a4,0x20
    8003b29e:	06971263          	bne	a4,s1,8003b302 <js_array_reverse+0xac>
quickjs-nuttx/quickjs.c:39902
        if (count32 > 1) {
    8003b2a2:	4705                	li	a4,1
    8003b2a4:	04f77163          	bgeu	a4,a5,8003b2e6 <js_array_reverse+0x90>
quickjs-nuttx/quickjs.c:39903
            for (ll = 0, hh = count32 - 1; ll < hh; ll++, hh--) {
    8003b2a8:	37fd                	addiw	a5,a5,-1
    8003b2aa:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:39904 (discriminator 3)
                lval = arrp[ll];
    8003b2ac:	7682                	ld	a3,32(sp)
    8003b2ae:	00461713          	slli	a4,a2,0x4
quickjs-nuttx/quickjs.c:39905 (discriminator 3)
                arrp[ll] = arrp[hh];
    8003b2b2:	02079513          	slli	a0,a5,0x20
quickjs-nuttx/quickjs.c:39904 (discriminator 3)
                lval = arrp[ll];
    8003b2b6:	9736                	add	a4,a4,a3
    8003b2b8:	630c                	ld	a1,0(a4)
quickjs-nuttx/quickjs.c:39903 (discriminator 3)
            for (ll = 0, hh = count32 - 1; ll < hh; ll++, hh--) {
    8003b2ba:	0605                	addi	a2,a2,1
    8003b2bc:	37fd                	addiw	a5,a5,-1
quickjs-nuttx/quickjs.c:39904 (discriminator 3)
                lval = arrp[ll];
    8003b2be:	e0ae                	sd	a1,64(sp)
    8003b2c0:	670c                	ld	a1,8(a4)
    8003b2c2:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39905 (discriminator 3)
                arrp[ll] = arrp[hh];
    8003b2c4:	01c55593          	srli	a1,a0,0x1c
    8003b2c8:	96ae                	add	a3,a3,a1
    8003b2ca:	6288                	ld	a0,0(a3)
    8003b2cc:	e308                	sd	a0,0(a4)
    8003b2ce:	6694                	ld	a3,8(a3)
    8003b2d0:	e714                	sd	a3,8(a4)
quickjs-nuttx/quickjs.c:39906 (discriminator 3)
                arrp[hh] = lval;
    8003b2d2:	7702                	ld	a4,32(sp)
    8003b2d4:	6686                	ld	a3,64(sp)
    8003b2d6:	972e                	add	a4,a4,a1
    8003b2d8:	e314                	sd	a3,0(a4)
    8003b2da:	66a6                	ld	a3,72(sp)
    8003b2dc:	e714                	sd	a3,8(a4)
quickjs-nuttx/quickjs.c:39903 (discriminator 3)
            for (ll = 0, hh = count32 - 1; ll < hh; ll++, hh--) {
    8003b2de:	0006071b          	sext.w	a4,a2
    8003b2e2:	fcf765e3          	bltu	a4,a5,8003b2ac <js_array_reverse+0x56>
quickjs-nuttx/quickjs.c:39909
        return obj;
    8003b2e6:	77c2                	ld	a5,48(sp)
    8003b2e8:	f0be                	sd	a5,96(sp)
    8003b2ea:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:39951
}
    8003b2ec:	60ea                	ld	ra,152(sp)
    8003b2ee:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:39950
    return JS_EXCEPTION;
    8003b2f0:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:39951
}
    8003b2f2:	7506                	ld	a0,96(sp)
    8003b2f4:	75a6                	ld	a1,104(sp)
    8003b2f6:	64aa                	ld	s1,136(sp)
    8003b2f8:	690a                	ld	s2,128(sp)
    8003b2fa:	79e6                	ld	s3,120(sp)
    8003b2fc:	7a46                	ld	s4,112(sp)
    8003b2fe:	610d                	addi	sp,sp,160
    8003b300:	8082                	ret
quickjs-nuttx/quickjs.c:39912
    for (l = 0, h = len - 1; l < h; l++, h--) {
    8003b302:	14fd                	addi	s1,s1,-1
    8003b304:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:39928
                lval = JS_UNDEFINED;
    8003b306:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:39912 (discriminator 1)
    for (l = 0, h = len - 1; l < h; l++, h--) {
    8003b308:	fc99dfe3          	bge	s3,s1,8003b2e6 <js_array_reverse+0x90>
quickjs-nuttx/quickjs.c:39913
        l_present = JS_TryGetPropertyInt64(ctx, obj, l, &lval);
    8003b30c:	75c2                	ld	a1,48(sp)
    8003b30e:	7662                	ld	a2,56(sp)
    8003b310:	0098                	addi	a4,sp,64
    8003b312:	86ce                	mv	a3,s3
    8003b314:	8522                	mv	a0,s0
    8003b316:	cdbfe0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
    8003b31a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:39914
        if (l_present < 0)
    8003b31c:	04054563          	bltz	a0,8003b366 <js_array_reverse+0x110>
quickjs-nuttx/quickjs.c:39916
        h_present = JS_TryGetPropertyInt64(ctx, obj, h, &hval);
    8003b320:	75c2                	ld	a1,48(sp)
    8003b322:	7662                	ld	a2,56(sp)
    8003b324:	0898                	addi	a4,sp,80
    8003b326:	86a6                	mv	a3,s1
    8003b328:	8522                	mv	a0,s0
    8003b32a:	cc7fe0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39917
        if (h_present < 0)
    8003b32e:	02054c63          	bltz	a0,8003b366 <js_array_reverse+0x110>
quickjs-nuttx/quickjs.c:39919
        if (h_present) {
    8003b332:	c52d                	beqz	a0,8003b39c <js_array_reverse+0x146>
quickjs-nuttx/quickjs.c:39920
            if (JS_SetPropertyInt64(ctx, obj, l, hval) < 0)
    8003b334:	6746                	ld	a4,80(sp)
    8003b336:	67e6                	ld	a5,88(sp)
    8003b338:	75c2                	ld	a1,48(sp)
    8003b33a:	7662                	ld	a2,56(sp)
    8003b33c:	86ce                	mv	a3,s3
    8003b33e:	8522                	mv	a0,s0
    8003b340:	b35fc0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    8003b344:	02054163          	bltz	a0,8003b366 <js_array_reverse+0x110>
quickjs-nuttx/quickjs.c:39923
            if (l_present) {
    8003b348:	04090063          	beqz	s2,8003b388 <js_array_reverse+0x132>
quickjs-nuttx/quickjs.c:39924
                if (JS_SetPropertyInt64(ctx, obj, h, lval) < 0) {
    8003b34c:	6706                	ld	a4,64(sp)
    8003b34e:	67a6                	ld	a5,72(sp)
    8003b350:	75c2                	ld	a1,48(sp)
    8003b352:	7662                	ld	a2,56(sp)
    8003b354:	86a6                	mv	a3,s1
    8003b356:	8522                	mv	a0,s0
    8003b358:	b1dfc0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
quickjs-nuttx/quickjs.c:39925
                    lval = JS_UNDEFINED;
    8003b35c:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:39924
                if (JS_SetPropertyInt64(ctx, obj, h, lval) < 0) {
    8003b35e:	02055163          	bgez	a0,8003b380 <js_array_reverse+0x12a>
quickjs-nuttx/quickjs.c:39925
                    lval = JS_UNDEFINED;
    8003b362:	478d                	li	a5,3
    8003b364:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:39948
    JS_FreeValue(ctx, lval);
    8003b366:	6586                	ld	a1,64(sp)
    8003b368:	6626                	ld	a2,72(sp)
    8003b36a:	8522                	mv	a0,s0
    8003b36c:	c32d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39949
    JS_FreeValue(ctx, obj);
    8003b370:	75c2                	ld	a1,48(sp)
    8003b372:	7662                	ld	a2,56(sp)
    8003b374:	8522                	mv	a0,s0
    8003b376:	c28d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39950
    return JS_EXCEPTION;
    8003b37a:	4799                	li	a5,6
    8003b37c:	f082                	sd	zero,96(sp)
    8003b37e:	b7bd                	j	8003b2ec <js_array_reverse+0x96>
quickjs-nuttx/quickjs.c:39928
                lval = JS_UNDEFINED;
    8003b380:	e4d2                	sd	s4,72(sp)
quickjs-nuttx/quickjs.c:39912 (discriminator 2)
    for (l = 0, h = len - 1; l < h; l++, h--) {
    8003b382:	0985                	addi	s3,s3,1
    8003b384:	14fd                	addi	s1,s1,-1
    8003b386:	b749                	j	8003b308 <js_array_reverse+0xb2>
quickjs-nuttx/quickjs.c:39930
                if (JS_DeletePropertyInt64(ctx, obj, h, JS_PROP_THROW) < 0)
    8003b388:	75c2                	ld	a1,48(sp)
    8003b38a:	7662                	ld	a2,56(sp)
    8003b38c:	6711                	lui	a4,0x4
    8003b38e:	86a6                	mv	a3,s1
    8003b390:	8522                	mv	a0,s0
    8003b392:	fd9f40ef          	jal	ra,8003036a <JS_DeletePropertyInt64>
    8003b396:	fe0556e3          	bgez	a0,8003b382 <js_array_reverse+0x12c>
    8003b39a:	b7f1                	j	8003b366 <js_array_reverse+0x110>
quickjs-nuttx/quickjs.c:39934
            if (l_present) {
    8003b39c:	fe0903e3          	beqz	s2,8003b382 <js_array_reverse+0x12c>
quickjs-nuttx/quickjs.c:39935
                if (JS_DeletePropertyInt64(ctx, obj, l, JS_PROP_THROW) < 0)
    8003b3a0:	75c2                	ld	a1,48(sp)
    8003b3a2:	7662                	ld	a2,56(sp)
    8003b3a4:	6711                	lui	a4,0x4
    8003b3a6:	86ce                	mv	a3,s3
    8003b3a8:	8522                	mv	a0,s0
    8003b3aa:	fc1f40ef          	jal	ra,8003036a <JS_DeletePropertyInt64>
    8003b3ae:	f8055fe3          	bgez	a0,8003b34c <js_array_reverse+0xf6>
    8003b3b2:	bf55                	j	8003b366 <js_array_reverse+0x110>

000000008003b3b4 <js_object_toString>:
js_object_toString():
quickjs-nuttx/quickjs.c:37618
{
    8003b3b4:	7175                	addi	sp,sp,-144
    8003b3b6:	e122                	sd	s0,128(sp)
    8003b3b8:	e506                	sd	ra,136(sp)
    8003b3ba:	fca6                	sd	s1,120(sp)
    8003b3bc:	f8ca                	sd	s2,112(sp)
    8003b3be:	f4ce                	sd	s3,104(sp)
    8003b3c0:	e82e                	sd	a1,16(sp)
    8003b3c2:	ec32                	sd	a2,24(sp)
JS_IsNull():
quickjs-nuttx/quickjs.h:600
    return JS_VALUE_GET_TAG(v) == JS_TAG_NULL;
    8003b3c4:	0006079b          	sext.w	a5,a2
js_object_toString():
quickjs-nuttx/quickjs.c:37624
    if (JS_IsNull(this_val)) {
    8003b3c8:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:37618
{
    8003b3ca:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37624
    if (JS_IsNull(this_val)) {
    8003b3cc:	02e79c63          	bne	a5,a4,8003b404 <js_object_toString+0x50>
quickjs-nuttx/quickjs.c:37625
        tag = JS_NewString(ctx, "Null");
    8003b3d0:	00032597          	auipc	a1,0x32
    8003b3d4:	a1858593          	addi	a1,a1,-1512 # 8006cde8 <qjsc_repl+0x7838>
quickjs-nuttx/quickjs.c:37627
        tag = JS_NewString(ctx, "Undefined");
    8003b3d8:	de0e40ef          	jal	ra,8001f9b8 <JS_NewString>
quickjs-nuttx/quickjs.c:37665
            tag = JS_AtomToString(ctx, atom);
    8003b3dc:	f82a                	sd	a0,48(sp)
    8003b3de:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:37668
    return JS_ConcatString3(ctx, "[object ", tag, "]");
    8003b3e0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:37669
}
    8003b3e2:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:37668
    return JS_ConcatString3(ctx, "[object ", tag, "]");
    8003b3e4:	7642                	ld	a2,48(sp)
quickjs-nuttx/quickjs.c:37669
}
    8003b3e6:	60aa                	ld	ra,136(sp)
    8003b3e8:	74e6                	ld	s1,120(sp)
    8003b3ea:	7946                	ld	s2,112(sp)
    8003b3ec:	79a6                	ld	s3,104(sp)
quickjs-nuttx/quickjs.c:37668
    return JS_ConcatString3(ctx, "[object ", tag, "]");
    8003b3ee:	00033717          	auipc	a4,0x33
    8003b3f2:	36270713          	addi	a4,a4,866 # 8006e750 <qjsc_repl+0x91a0>
    8003b3f6:	00032597          	auipc	a1,0x32
    8003b3fa:	a0a58593          	addi	a1,a1,-1526 # 8006ce00 <qjsc_repl+0x7850>
quickjs-nuttx/quickjs.c:37669
}
    8003b3fe:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:37668
    return JS_ConcatString3(ctx, "[object ", tag, "]");
    8003b400:	bb0e506f          	j	800207b0 <JS_ConcatString3>
quickjs-nuttx/quickjs.c:37626
    } else if (JS_IsUndefined(this_val)) {
    8003b404:	470d                	li	a4,3
    8003b406:	00e79763          	bne	a5,a4,8003b414 <js_object_toString+0x60>
quickjs-nuttx/quickjs.c:37627
        tag = JS_NewString(ctx, "Undefined");
    8003b40a:	00032597          	auipc	a1,0x32
    8003b40e:	9e658593          	addi	a1,a1,-1562 # 8006cdf0 <qjsc_repl+0x7840>
    8003b412:	b7d9                	j	8003b3d8 <js_object_toString+0x24>
quickjs-nuttx/quickjs.c:37629
        obj = JS_ToObject(ctx, this_val);
    8003b414:	ca7f40ef          	jal	ra,800300ba <JS_ToObject>
    8003b418:	f02a                	sd	a0,32(sp)
    8003b41a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:37630
        if (JS_IsException(obj))
    8003b41c:	0005879b          	sext.w	a5,a1
    8003b420:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:37629
        obj = JS_ToObject(ctx, this_val);
    8003b422:	892a                	mv	s2,a0
    8003b424:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:37630
        if (JS_IsException(obj))
    8003b426:	01379d63          	bne	a5,s3,8003b440 <js_object_toString+0x8c>
quickjs-nuttx/quickjs.c:37631
            return obj;
    8003b42a:	e0aa                	sd	a0,64(sp)
    8003b42c:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:37669 (discriminator 1)
}
    8003b42e:	60aa                	ld	ra,136(sp)
    8003b430:	640a                	ld	s0,128(sp)
    8003b432:	6506                	ld	a0,64(sp)
    8003b434:	65a6                	ld	a1,72(sp)
    8003b436:	74e6                	ld	s1,120(sp)
    8003b438:	7946                	ld	s2,112(sp)
    8003b43a:	79a6                	ld	s3,104(sp)
    8003b43c:	6149                	addi	sp,sp,144
    8003b43e:	8082                	ret
quickjs-nuttx/quickjs.c:37632
        is_array = JS_IsArray(ctx, obj);
    8003b440:	85aa                	mv	a1,a0
    8003b442:	8626                	mv	a2,s1
    8003b444:	8522                	mv	a0,s0
    8003b446:	965de0ef          	jal	ra,80019daa <JS_IsArray>
quickjs-nuttx/quickjs.c:37633
        if (is_array < 0) {
    8003b44a:	00055a63          	bgez	a0,8003b45e <js_object_toString+0xaa>
quickjs-nuttx/quickjs.c:37634
            JS_FreeValue(ctx, obj);
    8003b44e:	7582                	ld	a1,32(sp)
    8003b450:	7622                	ld	a2,40(sp)
    8003b452:	8522                	mv	a0,s0
    8003b454:	b4ad00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37635
            return JS_EXCEPTION;
    8003b458:	e082                	sd	zero,64(sp)
    8003b45a:	e4ce                	sd	s3,72(sp)
    8003b45c:	bfc9                	j	8003b42e <js_object_toString+0x7a>
quickjs-nuttx/quickjs.c:37638
            atom = JS_ATOM_Array;
    8003b45e:	09800993          	li	s3,152
quickjs-nuttx/quickjs.c:37637
        if (is_array) {
    8003b462:	e131                	bnez	a0,8003b4a6 <js_object_toString+0xf2>
quickjs-nuttx/quickjs.c:37639
        } else if (JS_IsFunction(ctx, obj)) {
    8003b464:	7582                	ld	a1,32(sp)
    8003b466:	7622                	ld	a2,40(sp)
    8003b468:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:37640
            atom = JS_ATOM_Function;
    8003b46a:	0a200993          	li	s3,162
quickjs-nuttx/quickjs.c:37639
        } else if (JS_IsFunction(ctx, obj)) {
    8003b46e:	834d30ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8003b472:	e915                	bnez	a0,8003b4a6 <js_object_toString+0xf2>
quickjs-nuttx/quickjs.c:37643
            switch(p->class_id) {
    8003b474:	00695783          	lhu	a5,6(s2)
    8003b478:	4749                	li	a4,18
    8003b47a:	09700993          	li	s3,151
    8003b47e:	02f76463          	bltu	a4,a5,8003b4a6 <js_object_toString+0xf2>
    8003b482:	4705                	li	a4,1
    8003b484:	000406b7          	lui	a3,0x40
    8003b488:	00f71733          	sll	a4,a4,a5
    8003b48c:	77868693          	addi	a3,a3,1912 # 40778 <asinh-0x7ffbf888>
    8003b490:	8f75                	and	a4,a4,a3
    8003b492:	cb11                	beqz	a4,8003b4a6 <js_object_toString+0xf2>
quickjs-nuttx/quickjs.c:37652
                atom = ctx->rt->class_array[p->class_id].class_name;
    8003b494:	02800693          	li	a3,40
    8003b498:	02d787b3          	mul	a5,a5,a3
    8003b49c:	6c18                	ld	a4,24(s0)
    8003b49e:	7b38                	ld	a4,112(a4)
    8003b4a0:	97ba                	add	a5,a5,a4
    8003b4a2:	0047a983          	lw	s3,4(a5)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003b4a6:	874a                	mv	a4,s2
    8003b4a8:	87a6                	mv	a5,s1
    8003b4aa:	0dc00693          	li	a3,220
    8003b4ae:	4801                	li	a6,0
    8003b4b0:	8626                	mv	a2,s1
    8003b4b2:	85ca                	mv	a1,s2
    8003b4b4:	8522                	mv	a0,s0
    8003b4b6:	e0ca                	sd	s2,64(sp)
    8003b4b8:	e4a6                	sd	s1,72(sp)
    8003b4ba:	df0db0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003b4be:	fc2e                	sd	a1,56(sp)
    8003b4c0:	e42e                	sd	a1,8(sp)
js_object_toString():
quickjs-nuttx/quickjs.c:37660
        JS_FreeValue(ctx, obj);
    8003b4c2:	7622                	ld	a2,40(sp)
    8003b4c4:	7582                	ld	a1,32(sp)
    8003b4c6:	f82a                	sd	a0,48(sp)
    8003b4c8:	8522                	mv	a0,s0
    8003b4ca:	ad4d00ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003b4ce:	66a2                	ld	a3,8(sp)
js_object_toString():
quickjs-nuttx/quickjs.c:37661
        if (JS_IsException(tag))
    8003b4d0:	4719                	li	a4,6
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8003b4d2:	0006879b          	sext.w	a5,a3
js_object_toString():
quickjs-nuttx/quickjs.c:37661
    8003b4d6:	00e79563          	bne	a5,a4,8003b4e0 <js_object_toString+0x12c>
quickjs-nuttx/quickjs.c:37662
            return JS_EXCEPTION;
    8003b4da:	e082                	sd	zero,64(sp)
    8003b4dc:	e4be                	sd	a5,72(sp)
    8003b4de:	bf81                	j	8003b42e <js_object_toString+0x7a>
quickjs-nuttx/quickjs.c:37663
        if (!JS_IsString(tag)) {
    8003b4e0:	5765                	li	a4,-7
    8003b4e2:	eee78fe3          	beq	a5,a4,8003b3e0 <js_object_toString+0x2c>
quickjs-nuttx/quickjs.c:37664
            JS_FreeValue(ctx, tag);
    8003b4e6:	75c2                	ld	a1,48(sp)
    8003b4e8:	7662                	ld	a2,56(sp)
    8003b4ea:	8522                	mv	a0,s0
    8003b4ec:	ab2d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37665
            tag = JS_AtomToString(ctx, atom);
    8003b4f0:	85ce                	mv	a1,s3
    8003b4f2:	8522                	mv	a0,s0
    8003b4f4:	ddee40ef          	jal	ra,8001fad2 <JS_AtomToString>
    8003b4f8:	b5d5                	j	8003b3dc <js_object_toString+0x28>

000000008003b4fa <js_regexp_get_flags>:
js_regexp_get_flags():
quickjs-nuttx/quickjs.c:43654
{
    8003b4fa:	7115                	addi	sp,sp,-224
    8003b4fc:	ed86                	sd	ra,216(sp)
    8003b4fe:	e9a2                	sd	s0,208(sp)
    8003b500:	e5a6                	sd	s1,200(sp)
    8003b502:	e02e                	sd	a1,0(sp)
    8003b504:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:43658
    if (JS_VALUE_GET_TAG(this_val) != JS_TAG_OBJECT)
    8003b506:	0006079b          	sext.w	a5,a2
    8003b50a:	577d                	li	a4,-1
    8003b50c:	00e78863          	beq	a5,a4,8003b51c <js_regexp_get_flags+0x22>
quickjs-nuttx/quickjs.c:43700
}
    8003b510:	644e                	ld	s0,208(sp)
    8003b512:	60ee                	ld	ra,216(sp)
    8003b514:	64ae                	ld	s1,200(sp)
    8003b516:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:43659
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8003b518:	f12dd06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:43661
    res = JS_ToBoolFree(ctx, JS_GetPropertyStr(ctx, this_val, "hasIndices"));
    8003b51c:	00032697          	auipc	a3,0x32
    8003b520:	8f468693          	addi	a3,a3,-1804 # 8006ce10 <qjsc_repl+0x7860>
    8003b524:	84aa                	mv	s1,a0
    8003b526:	c59e30ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8003b52a:	862e                	mv	a2,a1
    8003b52c:	85aa                	mv	a1,a0
    8003b52e:	8526                	mv	a0,s1
    8003b530:	de4d00ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:43662
    if (res < 0)
    8003b534:	14054763          	bltz	a0,8003b682 <js_regexp_get_flags+0x188>
quickjs-nuttx/quickjs.c:43655
    char str[8], *p = str;
    8003b538:	0820                	addi	s0,sp,24
quickjs-nuttx/quickjs.c:43664
    if (res)
    8003b53a:	c519                	beqz	a0,8003b548 <js_regexp_get_flags+0x4e>
quickjs-nuttx/quickjs.c:43665
        *p++ = 'd';
    8003b53c:	06400793          	li	a5,100
    8003b540:	00f10c23          	sb	a5,24(sp)
    8003b544:	01910413          	addi	s0,sp,25
quickjs-nuttx/quickjs.c:43666
    res = JS_ToBoolFree(ctx, JS_GetProperty(ctx, this_val, JS_ATOM_global));
    8003b548:	6702                	ld	a4,0(sp)
    8003b54a:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003b54c:	4801                	li	a6,0
    8003b54e:	06f00693          	li	a3,111
    8003b552:	863e                	mv	a2,a5
    8003b554:	85ba                	mv	a1,a4
    8003b556:	8526                	mv	a0,s1
    8003b558:	f93a                	sd	a4,176(sp)
    8003b55a:	fd3e                	sd	a5,184(sp)
    8003b55c:	d4edb0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003b560:	862e                	mv	a2,a1
js_regexp_get_flags():
quickjs-nuttx/quickjs.c:43666
    8003b562:	85aa                	mv	a1,a0
    8003b564:	8526                	mv	a0,s1
    8003b566:	daed00ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:43667
    if (res < 0)
    8003b56a:	10054c63          	bltz	a0,8003b682 <js_regexp_get_flags+0x188>
quickjs-nuttx/quickjs.c:43669
    if (res)
    8003b56e:	c511                	beqz	a0,8003b57a <js_regexp_get_flags+0x80>
quickjs-nuttx/quickjs.c:43670
        *p++ = 'g';
    8003b570:	06700793          	li	a5,103
    8003b574:	00f40023          	sb	a5,0(s0)
    8003b578:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:43671
    res = JS_ToBoolFree(ctx, JS_GetPropertyStr(ctx, this_val, "ignoreCase"));
    8003b57a:	6622                	ld	a2,8(sp)
    8003b57c:	6582                	ld	a1,0(sp)
    8003b57e:	00032697          	auipc	a3,0x32
    8003b582:	8a268693          	addi	a3,a3,-1886 # 8006ce20 <qjsc_repl+0x7870>
    8003b586:	8526                	mv	a0,s1
    8003b588:	bf7e30ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8003b58c:	862e                	mv	a2,a1
    8003b58e:	85aa                	mv	a1,a0
    8003b590:	8526                	mv	a0,s1
    8003b592:	d82d00ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:43672
    if (res < 0)
    8003b596:	0e054663          	bltz	a0,8003b682 <js_regexp_get_flags+0x188>
quickjs-nuttx/quickjs.c:43674
    if (res)
    8003b59a:	c511                	beqz	a0,8003b5a6 <js_regexp_get_flags+0xac>
quickjs-nuttx/quickjs.c:43675
        *p++ = 'i';
    8003b59c:	06900793          	li	a5,105
    8003b5a0:	00f40023          	sb	a5,0(s0)
    8003b5a4:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:43676
    res = JS_ToBoolFree(ctx, JS_GetPropertyStr(ctx, this_val, "multiline"));
    8003b5a6:	6622                	ld	a2,8(sp)
    8003b5a8:	6582                	ld	a1,0(sp)
    8003b5aa:	00032697          	auipc	a3,0x32
    8003b5ae:	88668693          	addi	a3,a3,-1914 # 8006ce30 <qjsc_repl+0x7880>
    8003b5b2:	8526                	mv	a0,s1
    8003b5b4:	bcbe30ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8003b5b8:	862e                	mv	a2,a1
    8003b5ba:	85aa                	mv	a1,a0
    8003b5bc:	8526                	mv	a0,s1
    8003b5be:	d56d00ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:43677
    if (res < 0)
    8003b5c2:	0c054063          	bltz	a0,8003b682 <js_regexp_get_flags+0x188>
quickjs-nuttx/quickjs.c:43679
    if (res)
    8003b5c6:	c511                	beqz	a0,8003b5d2 <js_regexp_get_flags+0xd8>
quickjs-nuttx/quickjs.c:43680
        *p++ = 'm';
    8003b5c8:	06d00793          	li	a5,109
    8003b5cc:	00f40023          	sb	a5,0(s0)
    8003b5d0:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:43681
    res = JS_ToBoolFree(ctx, JS_GetPropertyStr(ctx, this_val, "dotAll"));
    8003b5d2:	6622                	ld	a2,8(sp)
    8003b5d4:	6582                	ld	a1,0(sp)
    8003b5d6:	00032697          	auipc	a3,0x32
    8003b5da:	86a68693          	addi	a3,a3,-1942 # 8006ce40 <qjsc_repl+0x7890>
    8003b5de:	8526                	mv	a0,s1
    8003b5e0:	b9fe30ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8003b5e4:	862e                	mv	a2,a1
    8003b5e6:	85aa                	mv	a1,a0
    8003b5e8:	8526                	mv	a0,s1
    8003b5ea:	d2ad00ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:43682
    if (res < 0)
    8003b5ee:	08054a63          	bltz	a0,8003b682 <js_regexp_get_flags+0x188>
quickjs-nuttx/quickjs.c:43684
    if (res)
    8003b5f2:	c511                	beqz	a0,8003b5fe <js_regexp_get_flags+0x104>
quickjs-nuttx/quickjs.c:43685
        *p++ = 's';
    8003b5f4:	07300793          	li	a5,115
    8003b5f8:	00f40023          	sb	a5,0(s0)
    8003b5fc:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:43686
    res = JS_ToBoolFree(ctx, JS_GetProperty(ctx, this_val, JS_ATOM_unicode));
    8003b5fe:	6702                	ld	a4,0(sp)
    8003b600:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003b602:	4801                	li	a6,0
    8003b604:	07000693          	li	a3,112
    8003b608:	863e                	mv	a2,a5
    8003b60a:	85ba                	mv	a1,a4
    8003b60c:	8526                	mv	a0,s1
    8003b60e:	f13a                	sd	a4,160(sp)
    8003b610:	f53e                	sd	a5,168(sp)
    8003b612:	c98db0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003b616:	862e                	mv	a2,a1
    8003b618:	f92a                	sd	a0,176(sp)
    8003b61a:	fd2e                	sd	a1,184(sp)
js_regexp_get_flags():
quickjs-nuttx/quickjs.c:43686
    8003b61c:	85aa                	mv	a1,a0
    8003b61e:	8526                	mv	a0,s1
    8003b620:	cf4d00ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:43687
    if (res < 0)
    8003b624:	04054f63          	bltz	a0,8003b682 <js_regexp_get_flags+0x188>
quickjs-nuttx/quickjs.c:43689
    if (res)
    8003b628:	c511                	beqz	a0,8003b634 <js_regexp_get_flags+0x13a>
quickjs-nuttx/quickjs.c:43690
        *p++ = 'u';
    8003b62a:	07500793          	li	a5,117
    8003b62e:	00f40023          	sb	a5,0(s0)
    8003b632:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:43691
    res = JS_ToBoolFree(ctx, JS_GetPropertyStr(ctx, this_val, "sticky"));
    8003b634:	6622                	ld	a2,8(sp)
    8003b636:	6582                	ld	a1,0(sp)
    8003b638:	00032697          	auipc	a3,0x32
    8003b63c:	81068693          	addi	a3,a3,-2032 # 8006ce48 <qjsc_repl+0x7898>
    8003b640:	8526                	mv	a0,s1
    8003b642:	b3de30ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8003b646:	862e                	mv	a2,a1
    8003b648:	f12a                	sd	a0,160(sp)
    8003b64a:	f52e                	sd	a1,168(sp)
    8003b64c:	85aa                	mv	a1,a0
    8003b64e:	8526                	mv	a0,s1
    8003b650:	cc4d00ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:43692
    if (res < 0)
    8003b654:	02054763          	bltz	a0,8003b682 <js_regexp_get_flags+0x188>
quickjs-nuttx/quickjs.c:43694
    if (res)
    8003b658:	c511                	beqz	a0,8003b664 <js_regexp_get_flags+0x16a>
quickjs-nuttx/quickjs.c:43695
        *p++ = 'y';
    8003b65a:	07900793          	li	a5,121
    8003b65e:	00f40023          	sb	a5,0(s0)
    8003b662:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:43696
    return JS_NewStringLen(ctx, str, p - str);
    8003b664:	082c                	addi	a1,sp,24
    8003b666:	40b40633          	sub	a2,s0,a1
    8003b66a:	8526                	mv	a0,s1
    8003b66c:	f9ee30ef          	jal	ra,8001ee0a <JS_NewStringLen>
    8003b670:	f02a                	sd	a0,32(sp)
    8003b672:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:43700
}
    8003b674:	60ee                	ld	ra,216(sp)
    8003b676:	644e                	ld	s0,208(sp)
    8003b678:	7502                	ld	a0,32(sp)
    8003b67a:	75a2                	ld	a1,40(sp)
    8003b67c:	64ae                	ld	s1,200(sp)
    8003b67e:	612d                	addi	sp,sp,224
    8003b680:	8082                	ret
quickjs-nuttx/quickjs.c:43699
    return JS_EXCEPTION;
    8003b682:	4799                	li	a5,6
    8003b684:	f002                	sd	zero,32(sp)
    8003b686:	f43e                	sd	a5,40(sp)
    8003b688:	b7f5                	j	8003b674 <js_regexp_get_flags+0x17a>

000000008003b68a <js_function_toString>:
js_function_toString():
quickjs-nuttx/quickjs.c:38481
{
    8003b68a:	711d                	addi	sp,sp,-96
    8003b68c:	e8a2                	sd	s0,80(sp)
    8003b68e:	e4a6                	sd	s1,72(sp)
    8003b690:	ec86                	sd	ra,88(sp)
    8003b692:	842a                	mv	s0,a0
    8003b694:	e02e                	sd	a1,0(sp)
    8003b696:	e432                	sd	a2,8(sp)
    8003b698:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:38485
    if (check_function(ctx, this_val))
    8003b69a:	884dd0ef          	jal	ra,8001871e <check_function>
    8003b69e:	e945                	bnez	a0,8003b74e <js_function_toString+0xc4>
quickjs-nuttx/quickjs.c:38489
    if (js_class_has_bytecode(p->class_id)) {
    8003b6a0:	0064d503          	lhu	a0,6(s1)
    8003b6a4:	d6dcd0ef          	jal	ra,80009410 <js_class_has_bytecode>
    8003b6a8:	cd51                	beqz	a0,8003b744 <js_function_toString+0xba>
quickjs-nuttx/quickjs.c:38490
        JSFunctionBytecode *b = p->u.func.function_bytecode;
    8003b6aa:	789c                	ld	a5,48(s1)
quickjs-nuttx/quickjs.c:38491
        if (b->has_debug && b->debug.source) {
    8003b6ac:	01a7c703          	lbu	a4,26(a5)
    8003b6b0:	8b11                	andi	a4,a4,4
    8003b6b2:	cb19                	beqz	a4,8003b6c8 <js_function_toString+0x3e>
quickjs-nuttx/quickjs.c:38491 (discriminator 1)
    8003b6b4:	7fac                	ld	a1,120(a5)
    8003b6b6:	c989                	beqz	a1,8003b6c8 <js_function_toString+0x3e>
quickjs-nuttx/quickjs.c:38492
            return JS_NewStringLen(ctx, b->debug.source, b->debug.source_len);
    8003b6b8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:38521
}
    8003b6ba:	6446                	ld	s0,80(sp)
    8003b6bc:	60e6                	ld	ra,88(sp)
    8003b6be:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:38492
            return JS_NewStringLen(ctx, b->debug.source, b->debug.source_len);
    8003b6c0:	57b0                	lw	a2,104(a5)
quickjs-nuttx/quickjs.c:38521
}
    8003b6c2:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:38492
            return JS_NewStringLen(ctx, b->debug.source, b->debug.source_len);
    8003b6c4:	f46e306f          	j	8001ee0a <JS_NewStringLen>
quickjs-nuttx/quickjs.c:38494
        func_kind = b->func_kind;
    8003b6c8:	6f9c                	ld	a5,24(a5)
    8003b6ca:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:38503
            pref = "function ";
    8003b6cc:	00031497          	auipc	s1,0x31
    8003b6d0:	78448493          	addi	s1,s1,1924 # 8006ce50 <qjsc_repl+0x78a0>
quickjs-nuttx/quickjs.c:38494
        func_kind = b->func_kind;
    8003b6d4:	83b1                	srli	a5,a5,0xc
    8003b6d6:	8b8d                	andi	a5,a5,3
    8003b6d8:	37fd                	addiw	a5,a5,-1
    8003b6da:	0007869b          	sext.w	a3,a5
    8003b6de:	00d76c63          	bltu	a4,a3,8003b6f6 <js_function_toString+0x6c>
    8003b6e2:	02079713          	slli	a4,a5,0x20
    8003b6e6:	01d75793          	srli	a5,a4,0x1d
    8003b6ea:	00033717          	auipc	a4,0x33
    8003b6ee:	61670713          	addi	a4,a4,1558 # 8006ed00 <CSWTCH.5357>
    8003b6f2:	97ba                	add	a5,a5,a4
    8003b6f4:	6384                	ld	s1,0(a5)
quickjs-nuttx/quickjs.c:38516
        name = JS_GetProperty(ctx, this_val, JS_ATOM_name);
    8003b6f6:	6702                	ld	a4,0(sp)
    8003b6f8:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003b6fa:	03700693          	li	a3,55
    8003b6fe:	85ba                	mv	a1,a4
    8003b700:	863e                	mv	a2,a5
    8003b702:	4801                	li	a6,0
    8003b704:	8522                	mv	a0,s0
    8003b706:	f03a                	sd	a4,32(sp)
    8003b708:	f43e                	sd	a5,40(sp)
    8003b70a:	ba0db0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003b70e:	e82a                	sd	a0,16(sp)
js_function_toString():
quickjs-nuttx/quickjs.c:38517
        if (JS_IsUndefined(name))
    8003b710:	0005871b          	sext.w	a4,a1
    8003b714:	478d                	li	a5,3
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003b716:	86ae                	mv	a3,a1
js_function_toString():
quickjs-nuttx/quickjs.c:38517
    8003b718:	00f71963          	bne	a4,a5,8003b72a <js_function_toString+0xa0>
quickjs-nuttx/quickjs.c:38518
            name = JS_AtomToString(ctx, JS_ATOM_empty_string);
    8003b71c:	02f00593          	li	a1,47
    8003b720:	8522                	mv	a0,s0
    8003b722:	bb0e40ef          	jal	ra,8001fad2 <JS_AtomToString>
    8003b726:	e82a                	sd	a0,16(sp)
    8003b728:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:38519
        return JS_ConcatString3(ctx, pref, name, suff);
    8003b72a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:38521
}
    8003b72c:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:38519
        return JS_ConcatString3(ctx, pref, name, suff);
    8003b72e:	6642                	ld	a2,16(sp)
quickjs-nuttx/quickjs.c:38521
}
    8003b730:	60e6                	ld	ra,88(sp)
quickjs-nuttx/quickjs.c:38519
        return JS_ConcatString3(ctx, pref, name, suff);
    8003b732:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:38521
}
    8003b734:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:38519
        return JS_ConcatString3(ctx, pref, name, suff);
    8003b736:	00031717          	auipc	a4,0x31
    8003b73a:	72a70713          	addi	a4,a4,1834 # 8006ce60 <qjsc_repl+0x78b0>
quickjs-nuttx/quickjs.c:38521
}
    8003b73e:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:38519
        return JS_ConcatString3(ctx, pref, name, suff);
    8003b740:	870e506f          	j	800207b0 <JS_ConcatString3>
quickjs-nuttx/quickjs.c:38503
            pref = "function ";
    8003b744:	00031497          	auipc	s1,0x31
    8003b748:	70c48493          	addi	s1,s1,1804 # 8006ce50 <qjsc_repl+0x78a0>
    8003b74c:	b76d                	j	8003b6f6 <js_function_toString+0x6c>
quickjs-nuttx/quickjs.c:38521 (discriminator 1)
}
    8003b74e:	60e6                	ld	ra,88(sp)
    8003b750:	6446                	ld	s0,80(sp)
    8003b752:	64a6                	ld	s1,72(sp)
    8003b754:	4501                	li	a0,0
    8003b756:	4599                	li	a1,6
    8003b758:	6125                	addi	sp,sp,96
    8003b75a:	8082                	ret

000000008003b75c <JS_WriteObjectRec>:
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35246
{
    8003b75c:	7115                	addi	sp,sp,-224
    8003b75e:	e9a2                	sd	s0,208(sp)
    8003b760:	ed86                	sd	ra,216(sp)
    8003b762:	e5a6                	sd	s1,200(sp)
    8003b764:	e1ca                	sd	s2,192(sp)
    8003b766:	fd4e                	sd	s3,184(sp)
    8003b768:	f952                	sd	s4,176(sp)
    8003b76a:	f556                	sd	s5,168(sp)
    8003b76c:	f15a                	sd	s6,160(sp)
    8003b76e:	ed5e                	sd	s7,152(sp)
    8003b770:	e962                	sd	s8,144(sp)
    8003b772:	e566                	sd	s9,136(sp)
    8003b774:	e16a                	sd	s10,128(sp)
    8003b776:	fcee                	sd	s11,120(sp)
    8003b778:	1180                	addi	s0,sp,224
quickjs-nuttx/quickjs.c:35249
    if (js_check_stack_overflow(s->ctx->rt, 0)) {
    8003b77a:	00053b03          	ld	s6,0(a0)
quickjs-nuttx/quickjs.c:35246
{
    8003b77e:	f2b43823          	sd	a1,-208(s0)
    8003b782:	f2c43c23          	sd	a2,-200(s0)
quickjs-nuttx/quickjs.c:35249
    if (js_check_stack_overflow(s->ctx->rt, 0)) {
    8003b786:	018b3783          	ld	a5,24(s6)
    8003b78a:	6ffc                	ld	a5,216(a5)
    8003b78c:	00f47863          	bgeu	s0,a5,8003b79c <JS_WriteObjectRec+0x40>
quickjs-nuttx/quickjs.c:35250
        JS_ThrowStackOverflow(s->ctx);
    8003b790:	855a                	mv	a0,s6
    8003b792:	990de0ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:35379
    return -1;
    8003b796:	557d                	li	a0,-1
    8003b798:	5490006f          	j	8003c4e0 <JS_WriteObjectRec+0xd84>
quickjs-nuttx/quickjs.c:35254
    tag = JS_VALUE_GET_NORM_TAG(obj);
    8003b79c:	00060a9b          	sext.w	s5,a2
quickjs-nuttx/quickjs.c:35255
    switch(tag) {
    8003b7a0:	479d                	li	a5,7
    8003b7a2:	84aa                	mv	s1,a0
    8003b7a4:	8a32                	mv	s4,a2
    8003b7a6:	0357ef63          	bltu	a5,s5,8003b7e4 <JS_WriteObjectRec+0x88>
    8003b7aa:	00031697          	auipc	a3,0x31
    8003b7ae:	78668693          	addi	a3,a3,1926 # 8006cf30 <qjsc_repl+0x7980>
    8003b7b2:	002a9713          	slli	a4,s5,0x2
    8003b7b6:	9736                	add	a4,a4,a3
    8003b7b8:	431c                	lw	a5,0(a4)
    8003b7ba:	97b6                	add	a5,a5,a3
    8003b7bc:	8782                	jr	a5
    8003b7be:	00ba879b          	addiw	a5,s5,11
    8003b7c2:	0007869b          	sext.w	a3,a5
    8003b7c6:	4729                	li	a4,10
    8003b7c8:	02d76163          	bltu	a4,a3,8003b7ea <JS_WriteObjectRec+0x8e>
    8003b7cc:	02079713          	slli	a4,a5,0x20
    8003b7d0:	01e75693          	srli	a3,a4,0x1e
    8003b7d4:	00031617          	auipc	a2,0x31
    8003b7d8:	77c60613          	addi	a2,a2,1916 # 8006cf50 <qjsc_repl+0x79a0>
    8003b7dc:	96b2                	add	a3,a3,a2
    8003b7de:	4298                	lw	a4,0(a3)
    8003b7e0:	9732                	add	a4,a4,a2
    8003b7e2:	8702                	jr	a4
    8003b7e4:	57d1                	li	a5,-12
    8003b7e6:	fd57ece3          	bltu	a5,s5,8003b7be <JS_WriteObjectRec+0x62>
quickjs-nuttx/quickjs.c:35373
        JS_ThrowInternalError(s->ctx, "unsupported tag (%d)", tag);
    8003b7ea:	6088                	ld	a0,0(s1)
    8003b7ec:	8656                	mv	a2,s5
    8003b7ee:	00031597          	auipc	a1,0x31
    8003b7f2:	72a58593          	addi	a1,a1,1834 # 8006cf18 <qjsc_repl+0x7968>
    8003b7f6:	902de0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:35374
        goto fail;
    8003b7fa:	bf71                	j	8003b796 <JS_WriteObjectRec+0x3a>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003b7fc:	4585                	li	a1,1
    8003b7fe:	00848513          	addi	a0,s1,8
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34975
                dbuf_putc(&s->dbuf, v8);
    8003b802:	2e0160ef          	jal	ra,80051ae2 <dbuf_putc>
    8003b806:	a095                	j	8003b86a <JS_WriteObjectRec+0x10e>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003b808:	4589                	li	a1,2
    8003b80a:	bfd5                	j	8003b7fe <JS_WriteObjectRec+0xa2>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35263
        bc_put_u8(s, BC_TAG_BOOL_FALSE + JS_VALUE_GET_INT(obj));
    8003b80c:	f3042583          	lw	a1,-208(s0)
    8003b810:	258d                	addiw	a1,a1,3
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003b812:	0ff5f593          	zext.b	a1,a1
    8003b816:	b7e5                	j	8003b7fe <JS_WriteObjectRec+0xa2>
    8003b818:	00850493          	addi	s1,a0,8
    8003b81c:	4595                	li	a1,5
    8003b81e:	8526                	mv	a0,s1
    8003b820:	2c2160ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35267
        bc_put_sleb128(s, JS_VALUE_GET_INT(obj));
    8003b824:	f3042583          	lw	a1,-208(s0)
dbuf_put_sleb128():
quickjs-nuttx/quickjs.c:6400
    dbuf_put_leb128(s, (2 * v) ^ -(v >> 31));
    8003b828:	0015979b          	slliw	a5,a1,0x1
    8003b82c:	41f5d59b          	sraiw	a1,a1,0x1f
    8003b830:	8dbd                	xor	a1,a1,a5
    8003b832:	2581                	sext.w	a1,a1
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003b834:	8526                	mv	a0,s1
    8003b836:	c9acd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003b83a:	a805                	j	8003b86a <JS_WriteObjectRec+0x10e>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003b83c:	00850913          	addi	s2,a0,8
    8003b840:	4599                	li	a1,6
    8003b842:	854a                	mv	a0,s2
    8003b844:	29e160ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35273
            u.d = JS_VALUE_GET_FLOAT64(obj);
    8003b848:	f3043503          	ld	a0,-208(s0)
bc_put_u64():
quickjs-nuttx/quickjs.c:34651
    if (s->byte_swap)
    8003b84c:	0384c783          	lbu	a5,56(s1)
    8003b850:	f8a43023          	sd	a0,-128(s0)
    8003b854:	c789                	beqz	a5,8003b85e <JS_WriteObjectRec+0x102>
quickjs-nuttx/quickjs.c:34652
        v = bswap64(v);
    8003b856:	a98cc0ef          	jal	ra,80007aee <bswap64>
    8003b85a:	f8a43023          	sd	a0,-128(s0)
quickjs-nuttx/quickjs.c:34653
    dbuf_put(&s->dbuf, (uint8_t *)&v, sizeof(v));
    8003b85e:	4621                	li	a2,8
    8003b860:	f8040593          	addi	a1,s0,-128
    8003b864:	854a                	mv	a0,s2
    8003b866:	1ea160ef          	jal	ra,80051a50 <dbuf_put>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35376
    return 0;
    8003b86a:	4501                	li	a0,0
    8003b86c:	4750006f          	j	8003c4e0 <JS_WriteObjectRec+0xd84>
quickjs-nuttx/quickjs.c:35279
            JSString *p = JS_VALUE_GET_STRING(obj);
    8003b870:	f3043903          	ld	s2,-208(s0)
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003b874:	459d                	li	a1,7
    8003b876:	00848513          	addi	a0,s1,8
    8003b87a:	268160ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35281
            JS_WriteString(s, p);
    8003b87e:	85ca                	mv	a1,s2
    8003b880:	8526                	mv	a0,s1
    8003b882:	bfece0ef          	jal	ra,80009c80 <JS_WriteString>
quickjs-nuttx/quickjs.c:35283
        break;
    8003b886:	b7d5                	j	8003b86a <JS_WriteObjectRec+0x10e>
quickjs-nuttx/quickjs.c:35285
        if (!s->allow_bytecode)
    8003b888:	0394c783          	lbu	a5,57(s1)
    8003b88c:	dfb9                	beqz	a5,8003b7ea <JS_WriteObjectRec+0x8e>
quickjs-nuttx/quickjs.c:35287
        if (JS_WriteFunctionTag(s, obj))
    8003b88e:	f3043903          	ld	s2,-208(s0)
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003b892:	00848993          	addi	s3,s1,8
    8003b896:	45b9                	li	a1,14
    8003b898:	854e                	mv	a0,s3
    8003b89a:	248160ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:34992
    bc_set_flags(&flags, &idx, b->has_prototype, 1);
    8003b89e:	01893603          	ld	a2,24(s2)
quickjs-nuttx/quickjs.c:34993
    bc_set_flags(&flags, &idx, b->has_simple_parameter_list, 1);
    8003b8a2:	4685                	li	a3,1
    8003b8a4:	f7040593          	addi	a1,s0,-144
quickjs-nuttx/quickjs.c:34992
    bc_set_flags(&flags, &idx, b->has_prototype, 1);
    8003b8a8:	00865793          	srli	a5,a2,0x8
    8003b8ac:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:34993
    bc_set_flags(&flags, &idx, b->has_simple_parameter_list, 1);
    8003b8ae:	8225                	srli	a2,a2,0x9
quickjs-nuttx/quickjs.c:34992
    bc_set_flags(&flags, &idx, b->has_prototype, 1);
    8003b8b0:	f6f42023          	sw	a5,-160(s0)
quickjs-nuttx/quickjs.c:34993
    bc_set_flags(&flags, &idx, b->has_simple_parameter_list, 1);
    8003b8b4:	8a05                	andi	a2,a2,1
bc_set_flags():
quickjs-nuttx/quickjs.c:34669
    *pidx += n;
    8003b8b6:	4785                	li	a5,1
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:34993
    bc_set_flags(&flags, &idx, b->has_simple_parameter_list, 1);
    8003b8b8:	f6040513          	addi	a0,s0,-160
bc_set_flags():
quickjs-nuttx/quickjs.c:34669
    *pidx += n;
    8003b8bc:	f6f42823          	sw	a5,-144(s0)
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:34993
    bc_set_flags(&flags, &idx, b->has_simple_parameter_list, 1);
    8003b8c0:	831cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:34994
    bc_set_flags(&flags, &idx, b->is_derived_class_constructor, 1);
    8003b8c4:	01893603          	ld	a2,24(s2)
    8003b8c8:	4685                	li	a3,1
    8003b8ca:	f7040593          	addi	a1,s0,-144
    8003b8ce:	8229                	srli	a2,a2,0xa
    8003b8d0:	8a05                	andi	a2,a2,1
    8003b8d2:	f6040513          	addi	a0,s0,-160
    8003b8d6:	81bcc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:34995
    bc_set_flags(&flags, &idx, b->need_home_object, 1);
    8003b8da:	01893603          	ld	a2,24(s2)
    8003b8de:	4685                	li	a3,1
    8003b8e0:	f7040593          	addi	a1,s0,-144
    8003b8e4:	822d                	srli	a2,a2,0xb
    8003b8e6:	8a05                	andi	a2,a2,1
    8003b8e8:	f6040513          	addi	a0,s0,-160
    8003b8ec:	805cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:34996
    bc_set_flags(&flags, &idx, b->func_kind, 2);
    8003b8f0:	01893603          	ld	a2,24(s2)
    8003b8f4:	4689                	li	a3,2
    8003b8f6:	f7040593          	addi	a1,s0,-144
    8003b8fa:	8231                	srli	a2,a2,0xc
    8003b8fc:	8a0d                	andi	a2,a2,3
    8003b8fe:	f6040513          	addi	a0,s0,-160
    8003b902:	feecc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:34997
    bc_set_flags(&flags, &idx, b->new_target_allowed, 1);
    8003b906:	01893603          	ld	a2,24(s2)
    8003b90a:	4685                	li	a3,1
    8003b90c:	f7040593          	addi	a1,s0,-144
    8003b910:	8239                	srli	a2,a2,0xe
    8003b912:	8a05                	andi	a2,a2,1
    8003b914:	f6040513          	addi	a0,s0,-160
    8003b918:	fd8cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:34998
    bc_set_flags(&flags, &idx, b->super_call_allowed, 1);
    8003b91c:	01893603          	ld	a2,24(s2)
    8003b920:	4685                	li	a3,1
    8003b922:	f7040593          	addi	a1,s0,-144
    8003b926:	823d                	srli	a2,a2,0xf
    8003b928:	8a05                	andi	a2,a2,1
    8003b92a:	f6040513          	addi	a0,s0,-160
    8003b92e:	fc2cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:34999
    bc_set_flags(&flags, &idx, b->super_allowed, 1);
    8003b932:	01a95603          	lhu	a2,26(s2)
    8003b936:	4685                	li	a3,1
    8003b938:	f7040593          	addi	a1,s0,-144
    8003b93c:	8a05                	andi	a2,a2,1
    8003b93e:	f6040513          	addi	a0,s0,-160
    8003b942:	faecc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35000
    bc_set_flags(&flags, &idx, b->arguments_allowed, 1);
    8003b946:	01893603          	ld	a2,24(s2)
    8003b94a:	4685                	li	a3,1
    8003b94c:	f7040593          	addi	a1,s0,-144
    8003b950:	8245                	srli	a2,a2,0x11
    8003b952:	8a05                	andi	a2,a2,1
    8003b954:	f6040513          	addi	a0,s0,-160
    8003b958:	f98cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35001
    bc_set_flags(&flags, &idx, b->has_debug, 1);
    8003b95c:	01893603          	ld	a2,24(s2)
    8003b960:	4685                	li	a3,1
    8003b962:	f7040593          	addi	a1,s0,-144
    8003b966:	8249                	srli	a2,a2,0x12
    8003b968:	8a05                	andi	a2,a2,1
    8003b96a:	f6040513          	addi	a0,s0,-160
    8003b96e:	f82cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35002
    bc_set_flags(&flags, &idx, b->backtrace_barrier, 1);
    8003b972:	01893603          	ld	a2,24(s2)
    8003b976:	4685                	li	a3,1
    8003b978:	f7040593          	addi	a1,s0,-144
    8003b97c:	824d                	srli	a2,a2,0x13
    8003b97e:	8a05                	andi	a2,a2,1
    8003b980:	f6040513          	addi	a0,s0,-160
    8003b984:	f6ccc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35003
    bc_set_flags(&flags, &idx, b->is_direct_or_indirect_eval, 1);
    8003b988:	01893603          	ld	a2,24(s2)
    8003b98c:	4685                	li	a3,1
    8003b98e:	f7040593          	addi	a1,s0,-144
    8003b992:	8255                	srli	a2,a2,0x15
    8003b994:	8a05                	andi	a2,a2,1
    8003b996:	f6040513          	addi	a0,s0,-160
    8003b99a:	f56cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35004
    assert(idx <= 16);
    8003b99e:	f7042703          	lw	a4,-144(s0)
    8003b9a2:	47c1                	li	a5,16
    8003b9a4:	00e7dc63          	bge	a5,a4,8003b9bc <JS_WriteObjectRec+0x260>
    8003b9a8:	65a5                	lui	a1,0x9
    8003b9aa:	4601                	li	a2,0
    8003b9ac:	8bc58593          	addi	a1,a1,-1860 # 88bc <asinh-0x7fff7744>
quickjs-nuttx/quickjs.c:35029
            assert(idx <= 8);
    8003b9b0:	0002e517          	auipc	a0,0x2e
    8003b9b4:	be850513          	addi	a0,a0,-1048 # 80069598 <qjsc_repl+0x3fe8>
    8003b9b8:	7a5240ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:35005
    bc_put_u16(s, flags);
    8003b9bc:	f6045783          	lhu	a5,-160(s0)
bc_put_u16():
quickjs-nuttx/quickjs.c:34637
    if (s->byte_swap)
    8003b9c0:	0384c703          	lbu	a4,56(s1)
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35005
    bc_put_u16(s, flags);
    8003b9c4:	85be                	mv	a1,a5
bc_put_u16():
quickjs-nuttx/quickjs.c:34637
    if (s->byte_swap)
    8003b9c6:	cb01                	beqz	a4,8003b9d6 <JS_WriteObjectRec+0x27a>
    8003b9c8:	0087959b          	slliw	a1,a5,0x8
    8003b9cc:	0087d79b          	srliw	a5,a5,0x8
    8003b9d0:	8ddd                	or	a1,a1,a5
    8003b9d2:	15c2                	slli	a1,a1,0x30
    8003b9d4:	91c1                	srli	a1,a1,0x30
quickjs-nuttx/quickjs.c:34639
    dbuf_put_u16(&s->dbuf, v);
    8003b9d6:	854e                	mv	a0,s3
    8003b9d8:	dd4cd0ef          	jal	ra,80008fac <dbuf_put_u16>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003b9dc:	01894583          	lbu	a1,24(s2)
    8003b9e0:	854e                	mv	a0,s3
    8003b9e2:	100160ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35007
    bc_put_atom(s, b->func_name);
    8003b9e6:	02c92583          	lw	a1,44(s2)
    8003b9ea:	8526                	mv	a0,s1
    8003b9ec:	ca0e10ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003b9f0:	04095583          	lhu	a1,64(s2)
    8003b9f4:	854e                	mv	a0,s3
    8003b9f6:	adacd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003b9fa:	04295583          	lhu	a1,66(s2)
    8003b9fe:	854e                	mv	a0,s3
    8003ba00:	ad0cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003ba04:	04495583          	lhu	a1,68(s2)
    8003ba08:	854e                	mv	a0,s3
    8003ba0a:	ac6cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003ba0e:	04695583          	lhu	a1,70(s2)
    8003ba12:	854e                	mv	a0,s3
    8003ba14:	abccd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003ba18:	05c92583          	lw	a1,92(s2)
    8003ba1c:	854e                	mv	a0,s3
    8003ba1e:	ab2cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003ba22:	05892583          	lw	a1,88(s2)
    8003ba26:	854e                	mv	a0,s3
    8003ba28:	aa8cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003ba2c:	02892583          	lw	a1,40(s2)
    8003ba30:	854e                	mv	a0,s3
    8003ba32:	a9ecd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35016
    if (b->vardefs) {
    8003ba36:	03093783          	ld	a5,48(s2)
    8003ba3a:	cbe9                	beqz	a5,8003bb0c <JS_WriteObjectRec+0x3b0>
quickjs-nuttx/quickjs.c:35018
        bc_put_leb128(s, b->arg_count + b->var_count);
    8003ba3c:	04095583          	lhu	a1,64(s2)
    8003ba40:	04295783          	lhu	a5,66(s2)
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003ba44:	854e                	mv	a0,s3
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35019
        for(i = 0; i < b->arg_count + b->var_count; i++) {
    8003ba46:	4a81                	li	s5,0
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003ba48:	9dbd                	addw	a1,a1,a5
    8003ba4a:	a86cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
bc_set_flags():
quickjs-nuttx/quickjs.c:34669
    *pidx += n;
    8003ba4e:	4b11                	li	s6,4
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35029
            assert(idx <= 8);
    8003ba50:	4ba1                	li	s7,8
quickjs-nuttx/quickjs.c:35019
        for(i = 0; i < b->arg_count + b->var_count; i++) {
    8003ba52:	04295703          	lhu	a4,66(s2)
    8003ba56:	04095783          	lhu	a5,64(s2)
    8003ba5a:	9fb9                	addw	a5,a5,a4
    8003ba5c:	000a871b          	sext.w	a4,s5
    8003ba60:	00f74663          	blt	a4,a5,8003ba6c <JS_WriteObjectRec+0x310>
    8003ba64:	4a81                	li	s5,0
bc_set_flags():
quickjs-nuttx/quickjs.c:34669
    *pidx += n;
    8003ba66:	4b05                	li	s6,1
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35046
        assert(idx <= 8);
    8003ba68:	4ba1                	li	s7,8
    8003ba6a:	aab9                	j	8003bbc8 <JS_WriteObjectRec+0x46c>
quickjs-nuttx/quickjs.c:35020
            JSVarDef *vd = &b->vardefs[i];
    8003ba6c:	03093a03          	ld	s4,48(s2)
    8003ba70:	004a9793          	slli	a5,s5,0x4
quickjs-nuttx/quickjs.c:35021
            bc_put_atom(s, vd->var_name);
    8003ba74:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:35020
            JSVarDef *vd = &b->vardefs[i];
    8003ba76:	9a3e                	add	s4,s4,a5
quickjs-nuttx/quickjs.c:35021
            bc_put_atom(s, vd->var_name);
    8003ba78:	000a2583          	lw	a1,0(s4)
quickjs-nuttx/quickjs.c:35029
            assert(idx <= 8);
    8003ba7c:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:35021
            bc_put_atom(s, vd->var_name);
    8003ba7e:	c0ee10ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003ba82:	004a2583          	lw	a1,4(s4)
    8003ba86:	854e                	mv	a0,s3
    8003ba88:	a48cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35023
            bc_put_leb128(s, vd->scope_next + 1);
    8003ba8c:	008a2583          	lw	a1,8(s4)
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003ba90:	854e                	mv	a0,s3
    8003ba92:	2585                	addiw	a1,a1,1
    8003ba94:	a3ccd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35025
            bc_set_flags(&flags, &idx, vd->var_kind, 4);
    8003ba98:	00ca2783          	lw	a5,12(s4)
bc_set_flags():
quickjs-nuttx/quickjs.c:34669
    *pidx += n;
    8003ba9c:	f7642823          	sw	s6,-144(s0)
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35026
            bc_set_flags(&flags, &idx, vd->is_const, 1);
    8003baa0:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:35025
            bc_set_flags(&flags, &idx, vd->var_kind, 4);
    8003baa2:	0047d79b          	srliw	a5,a5,0x4
    8003baa6:	8bbd                	andi	a5,a5,15
    8003baa8:	f6f42023          	sw	a5,-160(s0)
quickjs-nuttx/quickjs.c:35026
            bc_set_flags(&flags, &idx, vd->is_const, 1);
    8003baac:	00ca2603          	lw	a2,12(s4)
    8003bab0:	f7040593          	addi	a1,s0,-144
    8003bab4:	f6040513          	addi	a0,s0,-160
    8003bab8:	8a05                	andi	a2,a2,1
    8003baba:	e36cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35027
            bc_set_flags(&flags, &idx, vd->is_lexical, 1);
    8003babe:	00ca2603          	lw	a2,12(s4)
    8003bac2:	4685                	li	a3,1
    8003bac4:	f7040593          	addi	a1,s0,-144
    8003bac8:	0016561b          	srliw	a2,a2,0x1
    8003bacc:	8a05                	andi	a2,a2,1
    8003bace:	f6040513          	addi	a0,s0,-160
    8003bad2:	e1ecc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35028
            bc_set_flags(&flags, &idx, vd->is_captured, 1);
    8003bad6:	00ca2603          	lw	a2,12(s4)
    8003bada:	4685                	li	a3,1
    8003badc:	f7040593          	addi	a1,s0,-144
    8003bae0:	0026561b          	srliw	a2,a2,0x2
    8003bae4:	8a05                	andi	a2,a2,1
    8003bae6:	f6040513          	addi	a0,s0,-160
    8003baea:	e06cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35029
            assert(idx <= 8);
    8003baee:	f7042783          	lw	a5,-144(s0)
    8003baf2:	00fbd763          	bge	s7,a5,8003bb00 <JS_WriteObjectRec+0x3a4>
    8003baf6:	65a5                	lui	a1,0x9
    8003baf8:	4601                	li	a2,0
    8003bafa:	8d558593          	addi	a1,a1,-1835 # 88d5 <asinh-0x7fff772b>
    8003bafe:	bd4d                	j	8003b9b0 <JS_WriteObjectRec+0x254>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003bb00:	f6044583          	lbu	a1,-160(s0)
    8003bb04:	854e                	mv	a0,s3
    8003bb06:	7dd150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35019
        for(i = 0; i < b->arg_count + b->var_count; i++) {
    8003bb0a:	b7a1                	j	8003ba52 <JS_WriteObjectRec+0x2f6>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bb0c:	4581                	li	a1,0
    8003bb0e:	854e                	mv	a0,s3
    8003bb10:	9c0cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
quickjs-nuttx/quickjs.c:34659
}
    8003bb14:	bf81                	j	8003ba64 <JS_WriteObjectRec+0x308>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35037
        JSClosureVar *cv = &b->closure_var[i];
    8003bb16:	03893783          	ld	a5,56(s2)
    8003bb1a:	003a9a13          	slli	s4,s5,0x3
quickjs-nuttx/quickjs.c:35038
        bc_put_atom(s, cv->var_name);
    8003bb1e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:35037
        JSClosureVar *cv = &b->closure_var[i];
    8003bb20:	9a3e                	add	s4,s4,a5
quickjs-nuttx/quickjs.c:35038
        bc_put_atom(s, cv->var_name);
    8003bb22:	004a2583          	lw	a1,4(s4)
    8003bb26:	b66e10ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bb2a:	002a5583          	lhu	a1,2(s4)
    8003bb2e:	854e                	mv	a0,s3
    8003bb30:	9a0cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35040
        flags = idx = 0;
    8003bb34:	f6042823          	sw	zero,-144(s0)
    8003bb38:	f6042023          	sw	zero,-160(s0)
quickjs-nuttx/quickjs.c:35041
        bc_set_flags(&flags, &idx, cv->is_local, 1);
    8003bb3c:	000a2783          	lw	a5,0(s4)
bc_set_flags():
quickjs-nuttx/quickjs.c:34669
    *pidx += n;
    8003bb40:	f7642823          	sw	s6,-144(s0)
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35042
        bc_set_flags(&flags, &idx, cv->is_arg, 1);
    8003bb44:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:35041
        bc_set_flags(&flags, &idx, cv->is_local, 1);
    8003bb46:	8b85                	andi	a5,a5,1
    8003bb48:	f6f42023          	sw	a5,-160(s0)
quickjs-nuttx/quickjs.c:35042
        bc_set_flags(&flags, &idx, cv->is_arg, 1);
    8003bb4c:	000a2603          	lw	a2,0(s4)
    8003bb50:	f7040593          	addi	a1,s0,-144
    8003bb54:	f6040513          	addi	a0,s0,-160
    8003bb58:	0016561b          	srliw	a2,a2,0x1
    8003bb5c:	8a05                	andi	a2,a2,1
    8003bb5e:	d92cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35043
        bc_set_flags(&flags, &idx, cv->is_const, 1);
    8003bb62:	000a2603          	lw	a2,0(s4)
    8003bb66:	4685                	li	a3,1
    8003bb68:	f7040593          	addi	a1,s0,-144
    8003bb6c:	0026561b          	srliw	a2,a2,0x2
    8003bb70:	8a05                	andi	a2,a2,1
    8003bb72:	f6040513          	addi	a0,s0,-160
    8003bb76:	d7acc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35044
        bc_set_flags(&flags, &idx, cv->is_lexical, 1);
    8003bb7a:	000a2603          	lw	a2,0(s4)
    8003bb7e:	4685                	li	a3,1
    8003bb80:	f7040593          	addi	a1,s0,-144
    8003bb84:	0036561b          	srliw	a2,a2,0x3
    8003bb88:	8a05                	andi	a2,a2,1
    8003bb8a:	f6040513          	addi	a0,s0,-160
    8003bb8e:	d62cc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35045
        bc_set_flags(&flags, &idx, cv->var_kind, 4);
    8003bb92:	000a2603          	lw	a2,0(s4)
    8003bb96:	4691                	li	a3,4
    8003bb98:	f7040593          	addi	a1,s0,-144
    8003bb9c:	0046561b          	srliw	a2,a2,0x4
    8003bba0:	8a3d                	andi	a2,a2,15
    8003bba2:	f6040513          	addi	a0,s0,-160
    8003bba6:	d4acc0ef          	jal	ra,800080f0 <bc_set_flags>
quickjs-nuttx/quickjs.c:35046
        assert(idx <= 8);
    8003bbaa:	f7042783          	lw	a5,-144(s0)
    8003bbae:	00fbd763          	bge	s7,a5,8003bbbc <JS_WriteObjectRec+0x460>
    8003bbb2:	65a5                	lui	a1,0x9
    8003bbb4:	4601                	li	a2,0
    8003bbb6:	8e658593          	addi	a1,a1,-1818 # 88e6 <asinh-0x7fff771a>
    8003bbba:	bbdd                	j	8003b9b0 <JS_WriteObjectRec+0x254>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003bbbc:	f6044583          	lbu	a1,-160(s0)
    8003bbc0:	854e                	mv	a0,s3
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35036
    for(i = 0; i < b->closure_var_count; i++) {
    8003bbc2:	2a85                	addiw	s5,s5,1
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003bbc4:	71f150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35036
    for(i = 0; i < b->closure_var_count; i++) {
    8003bbc8:	05c92783          	lw	a5,92(s2)
    8003bbcc:	f4fac5e3          	blt	s5,a5,8003bb16 <JS_WriteObjectRec+0x3ba>
quickjs-nuttx/quickjs.c:35050
    if (JS_WriteFunctionBytecode(s, b->byte_code_buf, b->byte_code_len))
    8003bbd0:	02892a83          	lw	s5,40(s2)
JS_WriteFunctionBytecode():
quickjs-nuttx/quickjs.c:34795
    bc_buf = js_malloc(s->ctx, bc_len);
    8003bbd4:	6088                	ld	a0,0(s1)
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35050
    if (JS_WriteFunctionBytecode(s, b->byte_code_buf, b->byte_code_len))
    8003bbd6:	02093b03          	ld	s6,32(s2)
JS_WriteFunctionBytecode():
quickjs-nuttx/quickjs.c:34795
    bc_buf = js_malloc(s->ctx, bc_len);
    8003bbda:	85d6                	mv	a1,s5
    8003bbdc:	d28de0ef          	jal	ra,8001a104 <js_malloc>
    8003bbe0:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:34796
    if (!bc_buf)
    8003bbe2:	ba050ae3          	beqz	a0,8003b796 <JS_WriteObjectRec+0x3a>
quickjs-nuttx/quickjs.c:34798
    memcpy(bc_buf, bc_buf1, bc_len);
    8003bbe6:	8656                	mv	a2,s5
    8003bbe8:	85da                	mv	a1,s6
    8003bbea:	1c2280ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:34800
    pos = 0;
    8003bbee:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:34803
        len = short_opcode_info(op).size;
    8003bbf0:	0b500c13          	li	s8,181
    8003bbf4:	00039c97          	auipc	s9,0x39
    8003bbf8:	1bcc8c93          	addi	s9,s9,444 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:34804
        switch(short_opcode_info(op).fmt) {
    8003bbfc:	4d11                	li	s10,4
quickjs-nuttx/quickjs.c:34801
    while (pos < bc_len) {
    8003bbfe:	055bcb63          	blt	s7,s5,8003bc54 <JS_WriteObjectRec+0x4f8>
quickjs-nuttx/quickjs.c:34821
    if (s->byte_swap)
    8003bc02:	0384c783          	lbu	a5,56(s1)
    8003bc06:	28079363          	bnez	a5,8003be8c <JS_WriteObjectRec+0x730>
quickjs-nuttx/quickjs.c:34824
    dbuf_put(&s->dbuf, bc_buf, bc_len);
    8003bc0a:	8656                	mv	a2,s5
    8003bc0c:	85d2                	mv	a1,s4
    8003bc0e:	854e                	mv	a0,s3
    8003bc10:	641150ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:34826
    js_free(s->ctx, bc_buf);
    8003bc14:	6088                	ld	a0,0(s1)
    8003bc16:	85d2                	mv	a1,s4
    8003bc18:	bdecf0ef          	jal	ra,8000aff6 <js_free>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35053
    if (b->has_debug) {
    8003bc1c:	01a94783          	lbu	a5,26(s2)
    8003bc20:	8b91                	andi	a5,a5,4
    8003bc22:	c79d                	beqz	a5,8003bc50 <JS_WriteObjectRec+0x4f4>
quickjs-nuttx/quickjs.c:35054
        bc_put_atom(s, b->debug.filename);
    8003bc24:	06092583          	lw	a1,96(s2)
    8003bc28:	8526                	mv	a0,s1
    8003bc2a:	a62e10ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bc2e:	06492583          	lw	a1,100(s2)
    8003bc32:	854e                	mv	a0,s3
    8003bc34:	89ccd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003bc38:	06c92583          	lw	a1,108(s2)
    8003bc3c:	854e                	mv	a0,s3
    8003bc3e:	892cd0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35057
        dbuf_put(&s->dbuf, b->debug.pc2line_buf, b->debug.pc2line_len);
    8003bc42:	06c92603          	lw	a2,108(s2)
    8003bc46:	07093583          	ld	a1,112(s2)
    8003bc4a:	854e                	mv	a0,s3
    8003bc4c:	605150ef          	jal	ra,80051a50 <dbuf_put>
bc_byte_swap():
quickjs-nuttx/quickjs.c:34731
    pos = 0;
    8003bc50:	4981                	li	s3,0
    8003bc52:	a4b5                	j	8003bebe <JS_WriteObjectRec+0x762>
JS_WriteFunctionBytecode():
quickjs-nuttx/quickjs.c:34802
        op = bc_buf[pos];
    8003bc54:	017a07b3          	add	a5,s4,s7
    8003bc58:	0007c783          	lbu	a5,0(a5)
quickjs-nuttx/quickjs.c:34803
        len = short_opcode_info(op).size;
    8003bc5c:	00fc5363          	bge	s8,a5,8003bc62 <JS_WriteObjectRec+0x506>
    8003bc60:	27cd                	addiw	a5,a5,19
    8003bc62:	078a                	slli	a5,a5,0x2
    8003bc64:	97e6                	add	a5,a5,s9
    8003bc66:	0007cd83          	lbu	s11,0(a5)
quickjs-nuttx/quickjs.c:34804
        switch(short_opcode_info(op).fmt) {
    8003bc6a:	0037c783          	lbu	a5,3(a5)
    8003bc6e:	37a5                	addiw	a5,a5,-23
    8003bc70:	04fd6f63          	bltu	s10,a5,8003bcce <JS_WriteObjectRec+0x572>
quickjs-nuttx/quickjs.c:34810
            atom = get_u32(bc_buf + pos + 1);
    8003bc74:	001b8b13          	addi	s6,s7,1
    8003bc78:	9b52                	add	s6,s6,s4
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8003bc7a:	001b4783          	lbu	a5,1(s6)
    8003bc7e:	000b4603          	lbu	a2,0(s6)
JS_WriteFunctionBytecode():
quickjs-nuttx/quickjs.c:34811
            if (bc_atom_to_idx(s, &val, atom))
    8003bc82:	f8040593          	addi	a1,s0,-128
get_u32():
quickjs-nuttx/cutils.h:170
    8003bc86:	07a2                	slli	a5,a5,0x8
    8003bc88:	8fd1                	or	a5,a5,a2
    8003bc8a:	002b4603          	lbu	a2,2(s6)
JS_WriteFunctionBytecode():
quickjs-nuttx/quickjs.c:34811
    8003bc8e:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    8003bc90:	0642                	slli	a2,a2,0x10
    8003bc92:	8fd1                	or	a5,a5,a2
    8003bc94:	003b4603          	lbu	a2,3(s6)
    8003bc98:	0662                	slli	a2,a2,0x18
    8003bc9a:	8e5d                	or	a2,a2,a5
JS_WriteFunctionBytecode():
quickjs-nuttx/quickjs.c:34811
    8003bc9c:	2601                	sext.w	a2,a2
    8003bc9e:	91ce10ef          	jal	ra,8001cdba <bc_atom_to_idx>
    8003bca2:	c511                	beqz	a0,8003bcae <JS_WriteObjectRec+0x552>
quickjs-nuttx/quickjs.c:34829
    js_free(s->ctx, bc_buf);
    8003bca4:	6088                	ld	a0,0(s1)
    8003bca6:	85d2                	mv	a1,s4
    8003bca8:	b4ecf0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:34830
    return -1;
    8003bcac:	b4ed                	j	8003b796 <JS_WriteObjectRec+0x3a>
quickjs-nuttx/quickjs.c:34813
            put_u32(bc_buf + pos + 1, val);
    8003bcae:	f8042783          	lw	a5,-128(s0)
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8003bcb2:	0087d71b          	srliw	a4,a5,0x8
    8003bcb6:	00fb0023          	sb	a5,0(s6)
    8003bcba:	00eb00a3          	sb	a4,1(s6)
    8003bcbe:	0107d71b          	srliw	a4,a5,0x10
    8003bcc2:	0187d79b          	srliw	a5,a5,0x18
    8003bcc6:	00eb0123          	sb	a4,2(s6)
    8003bcca:	00fb01a3          	sb	a5,3(s6)
JS_WriteFunctionBytecode():
quickjs-nuttx/quickjs.c:34818
        pos += len;
    8003bcce:	017d8bbb          	addw	s7,s11,s7
    8003bcd2:	b735                	j	8003bbfe <JS_WriteObjectRec+0x4a2>
bc_byte_swap():
quickjs-nuttx/quickjs.c:34744
            put_u16(bc_buf + pos + 1,
    8003bcd4:	001b8713          	addi	a4,s7,1
quickjs-nuttx/quickjs.c:34777
            put_u16(bc_buf + pos + 1 + 2,
    8003bcd8:	9752                	add	a4,a4,s4
put_u16():
quickjs-nuttx/cutils.h:195
    ((struct packed_u16 *)tab)->v = val;
    8003bcda:	00074683          	lbu	a3,0(a4)
    8003bcde:	00174603          	lbu	a2,1(a4)
    8003bce2:	00d700a3          	sb	a3,1(a4)
    8003bce6:	00c70023          	sb	a2,0(a4)
quickjs-nuttx/cutils.h:196
}
    8003bcea:	a0b9                	j	8003bd38 <JS_WriteObjectRec+0x5dc>
bc_byte_swap():
quickjs-nuttx/quickjs.c:34753
            put_u32(bc_buf + pos + 1,
    8003bcec:	001b8713          	addi	a4,s7,1
    8003bcf0:	9752                	add	a4,a4,s4
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8003bcf2:	00174683          	lbu	a3,1(a4)
    8003bcf6:	00074503          	lbu	a0,0(a4)
    8003bcfa:	f2e43423          	sd	a4,-216(s0)
    8003bcfe:	06a2                	slli	a3,a3,0x8
    8003bd00:	8ec9                	or	a3,a3,a0
    8003bd02:	00274503          	lbu	a0,2(a4)
    8003bd06:	0542                	slli	a0,a0,0x10
    8003bd08:	8ec9                	or	a3,a3,a0
    8003bd0a:	00374503          	lbu	a0,3(a4)
    8003bd0e:	0562                	slli	a0,a0,0x18
    8003bd10:	8d55                	or	a0,a0,a3
bc_byte_swap():
quickjs-nuttx/quickjs.c:34753
    8003bd12:	2501                	sext.w	a0,a0
    8003bd14:	db3cb0ef          	jal	ra,80007ac6 <bswap32>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8003bd18:	f2843703          	ld	a4,-216(s0)
    8003bd1c:	0085569b          	srliw	a3,a0,0x8
    8003bd20:	00a70023          	sb	a0,0(a4)
    8003bd24:	00d700a3          	sb	a3,1(a4)
    8003bd28:	0105569b          	srliw	a3,a0,0x10
    8003bd2c:	0185551b          	srliw	a0,a0,0x18
    8003bd30:	00d70123          	sb	a3,2(a4)
    8003bd34:	00a701a3          	sb	a0,3(a4)
bc_byte_swap():
quickjs-nuttx/quickjs.c:34783
        pos += len;
    8003bd38:	017d8bbb          	addw	s7,s11,s7
quickjs-nuttx/quickjs.c:34732
    while (pos < bc_len) {
    8003bd3c:	ed5bd7e3          	bge	s7,s5,8003bc0a <JS_WriteObjectRec+0x4ae>
quickjs-nuttx/quickjs.c:34733
        op = bc_buf[pos];
    8003bd40:	017a0733          	add	a4,s4,s7
    8003bd44:	00074703          	lbu	a4,0(a4)
quickjs-nuttx/quickjs.c:34734
        len = short_opcode_info(op).size;
    8003bd48:	0b500793          	li	a5,181
    8003bd4c:	00e7d363          	bge	a5,a4,8003bd52 <JS_WriteObjectRec+0x5f6>
    8003bd50:	274d                	addiw	a4,a4,19
    8003bd52:	070a                	slli	a4,a4,0x2
    8003bd54:	9762                	add	a4,a4,s8
quickjs-nuttx/quickjs.c:34735
        fmt = short_opcode_info(op).fmt;
    8003bd56:	00374683          	lbu	a3,3(a4)
quickjs-nuttx/quickjs.c:34734
        len = short_opcode_info(op).size;
    8003bd5a:	00074d83          	lbu	s11,0(a4)
quickjs-nuttx/quickjs.c:34736
        switch(fmt) {
    8003bd5e:	ff66871b          	addiw	a4,a3,-10
    8003bd62:	0ff77713          	zext.b	a4,a4
    8003bd66:	fcece9e3          	bltu	s9,a4,8003bd38 <JS_WriteObjectRec+0x5dc>
    8003bd6a:	070a                	slli	a4,a4,0x2
    8003bd6c:	975a                	add	a4,a4,s6
    8003bd6e:	4318                	lw	a4,0(a4)
    8003bd70:	975a                	add	a4,a4,s6
    8003bd72:	8702                	jr	a4
quickjs-nuttx/quickjs.c:34758
            put_u32(bc_buf + pos + 1,
    8003bd74:	001b8713          	addi	a4,s7,1
    8003bd78:	9752                	add	a4,a4,s4
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8003bd7a:	00174683          	lbu	a3,1(a4)
    8003bd7e:	00074503          	lbu	a0,0(a4)
    8003bd82:	f2e43423          	sd	a4,-216(s0)
    8003bd86:	06a2                	slli	a3,a3,0x8
    8003bd88:	8ec9                	or	a3,a3,a0
    8003bd8a:	00274503          	lbu	a0,2(a4)
    8003bd8e:	0542                	slli	a0,a0,0x10
    8003bd90:	8ec9                	or	a3,a3,a0
    8003bd92:	00374503          	lbu	a0,3(a4)
    8003bd96:	0562                	slli	a0,a0,0x18
    8003bd98:	8d55                	or	a0,a0,a3
bc_byte_swap():
quickjs-nuttx/quickjs.c:34758
    8003bd9a:	2501                	sext.w	a0,a0
    8003bd9c:	d2bcb0ef          	jal	ra,80007ac6 <bswap32>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8003bda0:	f2843703          	ld	a4,-216(s0)
    8003bda4:	0085569b          	srliw	a3,a0,0x8
    8003bda8:	00a70023          	sb	a0,0(a4)
    8003bdac:	00d700a3          	sb	a3,1(a4)
    8003bdb0:	0105569b          	srliw	a3,a0,0x10
    8003bdb4:	0185551b          	srliw	a0,a0,0x18
    8003bdb8:	00d70123          	sb	a3,2(a4)
    8003bdbc:	00a701a3          	sb	a0,3(a4)
bc_byte_swap():
quickjs-nuttx/quickjs.c:34760
            put_u16(bc_buf + pos + 1 + 4,
    8003bdc0:	005b8713          	addi	a4,s7,5
    8003bdc4:	bf11                	j	8003bcd8 <JS_WriteObjectRec+0x57c>
quickjs-nuttx/quickjs.c:34765
            put_u32(bc_buf + pos + 1,
    8003bdc6:	001b8713          	addi	a4,s7,1
    8003bdca:	9752                	add	a4,a4,s4
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8003bdcc:	00174603          	lbu	a2,1(a4)
    8003bdd0:	00074503          	lbu	a0,0(a4)
    8003bdd4:	f2d43023          	sd	a3,-224(s0)
    8003bdd8:	0622                	slli	a2,a2,0x8
    8003bdda:	8e49                	or	a2,a2,a0
    8003bddc:	00274503          	lbu	a0,2(a4)
    8003bde0:	f2e43423          	sd	a4,-216(s0)
    8003bde4:	0542                	slli	a0,a0,0x10
    8003bde6:	8e49                	or	a2,a2,a0
    8003bde8:	00374503          	lbu	a0,3(a4)
    8003bdec:	0562                	slli	a0,a0,0x18
    8003bdee:	8d51                	or	a0,a0,a2
bc_byte_swap():
quickjs-nuttx/quickjs.c:34765
    8003bdf0:	2501                	sext.w	a0,a0
    8003bdf2:	cd5cb0ef          	jal	ra,80007ac6 <bswap32>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8003bdf6:	f2843703          	ld	a4,-216(s0)
    8003bdfa:	0085561b          	srliw	a2,a0,0x8
    8003bdfe:	00a70023          	sb	a0,0(a4)
    8003be02:	00c700a3          	sb	a2,1(a4)
    8003be06:	0105561b          	srliw	a2,a0,0x10
    8003be0a:	0185551b          	srliw	a0,a0,0x18
    8003be0e:	00c70123          	sb	a2,2(a4)
    8003be12:	00a701a3          	sb	a0,3(a4)
bc_byte_swap():
quickjs-nuttx/quickjs.c:34767
            put_u32(bc_buf + pos + 1 + 4,
    8003be16:	005b8713          	addi	a4,s7,5
    8003be1a:	9752                	add	a4,a4,s4
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8003be1c:	00174603          	lbu	a2,1(a4)
    8003be20:	00074503          	lbu	a0,0(a4)
    8003be24:	f2e43423          	sd	a4,-216(s0)
    8003be28:	0622                	slli	a2,a2,0x8
    8003be2a:	8e49                	or	a2,a2,a0
    8003be2c:	00274503          	lbu	a0,2(a4)
    8003be30:	0542                	slli	a0,a0,0x10
    8003be32:	8e49                	or	a2,a2,a0
    8003be34:	00374503          	lbu	a0,3(a4)
    8003be38:	0562                	slli	a0,a0,0x18
    8003be3a:	8d51                	or	a0,a0,a2
bc_byte_swap():
quickjs-nuttx/quickjs.c:34767
    8003be3c:	2501                	sext.w	a0,a0
    8003be3e:	c89cb0ef          	jal	ra,80007ac6 <bswap32>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8003be42:	f2843703          	ld	a4,-216(s0)
    8003be46:	0085561b          	srliw	a2,a0,0x8
bc_byte_swap():
quickjs-nuttx/quickjs.c:34769
            if (fmt == OP_FMT_atom_label_u16) {
    8003be4a:	f2043683          	ld	a3,-224(s0)
put_u32():
quickjs-nuttx/cutils.h:180
    8003be4e:	00a70023          	sb	a0,0(a4)
    8003be52:	00c700a3          	sb	a2,1(a4)
    8003be56:	0105561b          	srliw	a2,a0,0x10
    8003be5a:	0185551b          	srliw	a0,a0,0x18
    8003be5e:	00c70123          	sb	a2,2(a4)
    8003be62:	00a701a3          	sb	a0,3(a4)
bc_byte_swap():
quickjs-nuttx/quickjs.c:34770
                put_u16(bc_buf + pos + 1 + 4 + 4,
    8003be66:	009b8713          	addi	a4,s7,9
quickjs-nuttx/quickjs.c:34769
            if (fmt == OP_FMT_atom_label_u16) {
    8003be6a:	eda697e3          	bne	a3,s10,8003bd38 <JS_WriteObjectRec+0x5dc>
    8003be6e:	b5ad                	j	8003bcd8 <JS_WriteObjectRec+0x57c>
quickjs-nuttx/quickjs.c:34775
            put_u16(bc_buf + pos + 1,
    8003be70:	001b8713          	addi	a4,s7,1
    8003be74:	9752                	add	a4,a4,s4
put_u16():
quickjs-nuttx/cutils.h:195
    ((struct packed_u16 *)tab)->v = val;
    8003be76:	00074683          	lbu	a3,0(a4)
    8003be7a:	00174603          	lbu	a2,1(a4)
    8003be7e:	00d700a3          	sb	a3,1(a4)
    8003be82:	00c70023          	sb	a2,0(a4)
bc_byte_swap():
quickjs-nuttx/quickjs.c:34777
            put_u16(bc_buf + pos + 1 + 2,
    8003be86:	003b8713          	addi	a4,s7,3
    8003be8a:	b5b9                	j	8003bcd8 <JS_WriteObjectRec+0x57c>
quickjs-nuttx/quickjs.c:34731
    pos = 0;
    8003be8c:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:34734
        len = short_opcode_info(op).size;
    8003be8e:	00039c17          	auipc	s8,0x39
    8003be92:	f22c0c13          	addi	s8,s8,-222 # 80074db0 <opcode_info>
    8003be96:	4cc9                	li	s9,18
    8003be98:	00031b17          	auipc	s6,0x31
    8003be9c:	0e4b0b13          	addi	s6,s6,228 # 8006cf7c <qjsc_repl+0x79cc>
quickjs-nuttx/quickjs.c:34769
            if (fmt == OP_FMT_atom_label_u16) {
    8003bea0:	4d6d                	li	s10,27
    8003bea2:	bd69                	j	8003bd3c <JS_WriteObjectRec+0x5e0>
JS_WriteFunctionTag():
quickjs-nuttx/quickjs.c:35061
        if (JS_WriteObjectRec(s, b->cpool[i]))
    8003bea4:	05093783          	ld	a5,80(s2)
    8003bea8:	00499713          	slli	a4,s3,0x4
    8003beac:	8526                	mv	a0,s1
    8003beae:	97ba                	add	a5,a5,a4
    8003beb0:	638c                	ld	a1,0(a5)
    8003beb2:	6790                	ld	a2,8(a5)
    8003beb4:	8a9ff0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003beb8:	8c051fe3          	bnez	a0,8003b796 <JS_WriteObjectRec+0x3a>
quickjs-nuttx/quickjs.c:35060
    for(i = 0; i < b->cpool_count; i++) {
    8003bebc:	2985                	addiw	s3,s3,1
    8003bebe:	05892783          	lw	a5,88(s2)
    8003bec2:	fef9c1e3          	blt	s3,a5,8003bea4 <JS_WriteObjectRec+0x748>
    8003bec6:	b255                	j	8003b86a <JS_WriteObjectRec+0x10e>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35291
        if (!s->allow_bytecode)
    8003bec8:	0394c783          	lbu	a5,57(s1)
    8003becc:	90078fe3          	beqz	a5,8003b7ea <JS_WriteObjectRec+0x8e>
quickjs-nuttx/quickjs.c:35293
        if (JS_WriteModule(s, obj))
    8003bed0:	f3043903          	ld	s2,-208(s0)
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003bed4:	00848993          	addi	s3,s1,8
    8003bed8:	45bd                	li	a1,15
    8003beda:	854e                	mv	a0,s3
    8003bedc:	407150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35075
    bc_put_atom(s, m->module_name);
    8003bee0:	00492583          	lw	a1,4(s2)
    8003bee4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:35078
    for(i = 0; i < m->req_module_entries_count; i++) {
    8003bee6:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:35075
    bc_put_atom(s, m->module_name);
    8003bee8:	fa5e00ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003beec:	02092583          	lw	a1,32(s2)
    8003bef0:	854e                	mv	a0,s3
    8003bef2:	ddfcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35078
    for(i = 0; i < m->req_module_entries_count; i++) {
    8003bef6:	02092783          	lw	a5,32(s2)
    8003befa:	06fa4263          	blt	s4,a5,8003bf5e <JS_WriteObjectRec+0x802>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003befe:	03092583          	lw	a1,48(s2)
    8003bf02:	854e                	mv	a0,s3
JS_WriteModule():
quickjs-nuttx/quickjs.c:35084
    for(i = 0; i < m->export_entries_count; i++) {
    8003bf04:	4a81                	li	s5,0
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bf06:	dcbcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35084
    for(i = 0; i < m->export_entries_count; i++) {
    8003bf0a:	03092783          	lw	a5,48(s2)
    8003bf0e:	06fac363          	blt	s5,a5,8003bf74 <JS_WriteObjectRec+0x818>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bf12:	04092583          	lw	a1,64(s2)
    8003bf16:	854e                	mv	a0,s3
JS_WriteModule():
quickjs-nuttx/quickjs.c:35097
    for(i = 0; i < m->star_export_entries_count; i++) {
    8003bf18:	4a01                	li	s4,0
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bf1a:	db7cc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35097
    for(i = 0; i < m->star_export_entries_count; i++) {
    8003bf1e:	04092783          	lw	a5,64(s2)
    8003bf22:	08fa4a63          	blt	s4,a5,8003bfb6 <JS_WriteObjectRec+0x85a>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bf26:	05092583          	lw	a1,80(s2)
    8003bf2a:	854e                	mv	a0,s3
JS_WriteModule():
quickjs-nuttx/quickjs.c:35103
    for(i = 0; i < m->import_entries_count; i++) {
    8003bf2c:	4a81                	li	s5,0
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bf2e:	da3cc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35104
        JSImportEntry *mi = &m->import_entries[i];
    8003bf32:	4b31                	li	s6,12
quickjs-nuttx/quickjs.c:35103
    for(i = 0; i < m->import_entries_count; i++) {
    8003bf34:	05092783          	lw	a5,80(s2)
    8003bf38:	08faca63          	blt	s5,a5,8003bfcc <JS_WriteObjectRec+0x870>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003bf3c:	08094583          	lbu	a1,128(s2)
    8003bf40:	854e                	mv	a0,s3
    8003bf42:	3a1150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35112
    if (JS_WriteObjectRec(s, m->func_obj))
    8003bf46:	06893583          	ld	a1,104(s2)
    8003bf4a:	07093603          	ld	a2,112(s2)
    8003bf4e:	8526                	mv	a0,s1
    8003bf50:	80dff0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003bf54:	00a03533          	snez	a0,a0
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35359
            if (ret)
    8003bf58:	40a00533          	neg	a0,a0
    8003bf5c:	a351                	j	8003c4e0 <JS_WriteObjectRec+0xd84>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35080
        bc_put_atom(s, rme->module_name);
    8003bf5e:	01893783          	ld	a5,24(s2)
    8003bf62:	004a1713          	slli	a4,s4,0x4
    8003bf66:	8526                	mv	a0,s1
    8003bf68:	97ba                	add	a5,a5,a4
    8003bf6a:	438c                	lw	a1,0(a5)
quickjs-nuttx/quickjs.c:35078
    for(i = 0; i < m->req_module_entries_count; i++) {
    8003bf6c:	2a05                	addiw	s4,s4,1
quickjs-nuttx/quickjs.c:35080
        bc_put_atom(s, rme->module_name);
    8003bf6e:	f1fe00ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
quickjs-nuttx/quickjs.c:35078
    for(i = 0; i < m->req_module_entries_count; i++) {
    8003bf72:	b751                	j	8003bef6 <JS_WriteObjectRec+0x79a>
quickjs-nuttx/quickjs.c:35085
        JSExportEntry *me = &m->export_entries[i];
    8003bf74:	02893783          	ld	a5,40(s2)
    8003bf78:	005a9a13          	slli	s4,s5,0x5
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003bf7c:	854e                	mv	a0,s3
JS_WriteModule():
quickjs-nuttx/quickjs.c:35085
        JSExportEntry *me = &m->export_entries[i];
    8003bf7e:	9a3e                	add	s4,s4,a5
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003bf80:	010a4583          	lbu	a1,16(s4)
    8003bf84:	35f150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35087
        if (me->export_type == JS_EXPORT_TYPE_LOCAL) {
    8003bf88:	010a2783          	lw	a5,16(s4)
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bf8c:	000a2583          	lw	a1,0(s4)
    8003bf90:	854e                	mv	a0,s3
JS_WriteModule():
quickjs-nuttx/quickjs.c:35087
        if (me->export_type == JS_EXPORT_TYPE_LOCAL) {
    8003bf92:	eb91                	bnez	a5,8003bfa6 <JS_WriteObjectRec+0x84a>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bf94:	d3dcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35093
        bc_put_atom(s, me->export_name);
    8003bf98:	018a2583          	lw	a1,24(s4)
    8003bf9c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:35084
    for(i = 0; i < m->export_entries_count; i++) {
    8003bf9e:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:35093
        bc_put_atom(s, me->export_name);
    8003bfa0:	eede00ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
quickjs-nuttx/quickjs.c:35084
    for(i = 0; i < m->export_entries_count; i++) {
    8003bfa4:	b79d                	j	8003bf0a <JS_WriteObjectRec+0x7ae>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bfa6:	d2bcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35091
            bc_put_atom(s, me->local_name);
    8003bfaa:	014a2583          	lw	a1,20(s4)
    8003bfae:	8526                	mv	a0,s1
    8003bfb0:	edde00ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
    8003bfb4:	b7d5                	j	8003bf98 <JS_WriteObjectRec+0x83c>
quickjs-nuttx/quickjs.c:35099
        bc_put_leb128(s, se->req_module_idx);
    8003bfb6:	03893783          	ld	a5,56(s2)
    8003bfba:	002a1713          	slli	a4,s4,0x2
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bfbe:	854e                	mv	a0,s3
JS_WriteModule():
quickjs-nuttx/quickjs.c:35099
        bc_put_leb128(s, se->req_module_idx);
    8003bfc0:	97ba                	add	a5,a5,a4
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bfc2:	438c                	lw	a1,0(a5)
JS_WriteModule():
quickjs-nuttx/quickjs.c:35097
    for(i = 0; i < m->star_export_entries_count; i++) {
    8003bfc4:	2a05                	addiw	s4,s4,1
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bfc6:	d0bcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35097
    for(i = 0; i < m->star_export_entries_count; i++) {
    8003bfca:	bf91                	j	8003bf1e <JS_WriteObjectRec+0x7c2>
quickjs-nuttx/quickjs.c:35104
        JSImportEntry *mi = &m->import_entries[i];
    8003bfcc:	036a87b3          	mul	a5,s5,s6
    8003bfd0:	04893a03          	ld	s4,72(s2)
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bfd4:	854e                	mv	a0,s3
JS_WriteModule():
quickjs-nuttx/quickjs.c:35103
    for(i = 0; i < m->import_entries_count; i++) {
    8003bfd6:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:35104
        JSImportEntry *mi = &m->import_entries[i];
    8003bfd8:	9a3e                	add	s4,s4,a5
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bfda:	000a2583          	lw	a1,0(s4)
    8003bfde:	cf3cc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35106
        bc_put_atom(s, mi->import_name);
    8003bfe2:	004a2583          	lw	a1,4(s4)
    8003bfe6:	8526                	mv	a0,s1
    8003bfe8:	ea5e00ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003bfec:	008a2583          	lw	a1,8(s4)
    8003bff0:	854e                	mv	a0,s3
    8003bff2:	cdfcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteModule():
quickjs-nuttx/quickjs.c:35103
    for(i = 0; i < m->import_entries_count; i++) {
    8003bff6:	bf3d                	j	8003bf34 <JS_WriteObjectRec+0x7d8>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35301
            if (s->allow_reference) {
    8003bff8:	03b4c783          	lbu	a5,59(s1)
quickjs-nuttx/quickjs.c:35298
            JSObject *p = JS_VALUE_GET_OBJ(obj);
    8003bffc:	f3043983          	ld	s3,-208(s0)
quickjs-nuttx/quickjs.c:35301
            if (s->allow_reference) {
