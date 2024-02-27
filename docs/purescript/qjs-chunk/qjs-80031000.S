    80030002:	85d6                	mv	a1,s5
    80030004:	865a                	mv	a2,s6
    80030006:	854e                	mv	a0,s3
    80030008:	f156                	sd	s5,160(sp)
    8003000a:	f55a                	sd	s6,168(sp)
    8003000c:	a9fe60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80030010:	f92a                	sd	a0,176(sp)
    80030012:	fd2e                	sd	a1,184(sp)
    80030014:	f82a                	sd	a0,48(sp)
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43471
                if (JS_IsException(flags))
    80030016:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003001a:	892e                	mv	s2,a1
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43471
    8003001c:	03779963          	bne	a5,s7,8003004e <js_regexp_constructor+0x1f6>
quickjs-nuttx/quickjs.c:43497
    JS_FreeValue(ctx, pattern);
    80030020:	85a6                	mv	a1,s1
    80030022:	8622                	mv	a2,s0
    80030024:	854e                	mv	a0,s3
    80030026:	f78db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43498
    JS_FreeValue(ctx, flags);
    8003002a:	75c2                	ld	a1,48(sp)
    8003002c:	864a                	mv	a2,s2
    8003002e:	854e                	mv	a0,s3
    80030030:	f6edb0ef          	jal	ra,8000b79e <JS_FreeValue>
    80030034:	b58d                	j	8002fe96 <js_regexp_constructor+0x3e>
quickjs-nuttx/quickjs.c:43477
            pattern = JS_DupValue(ctx, pat);
    80030036:	7506                	ld	a0,96(sp)
    80030038:	75a6                	ld	a1,104(sp)
    8003003a:	be0da0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003003e:	84aa                	mv	s1,a0
    80030040:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:43478
            flags = JS_DupValue(ctx, flags1);
    80030042:	7546                	ld	a0,112(sp)
    80030044:	75e6                	ld	a1,120(sp)
    80030046:	bd4da0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003004a:	f82a                	sd	a0,48(sp)
    8003004c:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:43480
        if (JS_IsUndefined(pattern)) {
    8003004e:	0004079b          	sext.w	a5,s0
    80030052:	470d                	li	a4,3
    80030054:	02e79f63          	bne	a5,a4,80030092 <js_regexp_constructor+0x23a>
quickjs-nuttx/quickjs.c:43481
            pattern = JS_AtomToString(ctx, JS_ATOM_empty_string);
    80030058:	02f00593          	li	a1,47
    8003005c:	854e                	mv	a0,s3
    8003005e:	a75ef0ef          	jal	ra,8001fad2 <JS_AtomToString>
    80030062:	84aa                	mv	s1,a0
    80030064:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:43490
    bc = js_compile_regexp(ctx, pattern, flags);
    80030066:	76c2                	ld	a3,48(sp)
    80030068:	874a                	mv	a4,s2
    8003006a:	85a6                	mv	a1,s1
    8003006c:	8622                	mv	a2,s0
    8003006e:	854e                	mv	a0,s3
    80030070:	fc4a                	sd	s2,56(sp)
    80030072:	c9ff50ef          	jal	ra,80025d10 <js_compile_regexp>
    80030076:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:43491
    if (JS_IsException(bc))
    80030078:	0005871b          	sext.w	a4,a1
    8003007c:	e42e                	sd	a1,8(sp)
    8003007e:	4799                	li	a5,6
    80030080:	faf700e3          	beq	a4,a5,80030020 <js_regexp_constructor+0x1c8>
quickjs-nuttx/quickjs.c:43493
    JS_FreeValue(ctx, flags);
    80030084:	75c2                	ld	a1,48(sp)
    80030086:	7662                	ld	a2,56(sp)
    80030088:	854e                	mv	a0,s3
    8003008a:	f14db0ef          	jal	ra,8000b79e <JS_FreeValue>
    8003008e:	6822                	ld	a6,8(sp)
    80030090:	bdc5                	j	8002ff80 <js_regexp_constructor+0x128>
quickjs-nuttx/quickjs.c:43484
            pattern = JS_ToString(ctx, val);
    80030092:	8622                	mv	a2,s0
    80030094:	85a6                	mv	a1,s1
    80030096:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:43483
            val = pattern;
    80030098:	e8a6                	sd	s1,80(sp)
    8003009a:	eca2                	sd	s0,88(sp)
quickjs-nuttx/quickjs.c:43484
            pattern = JS_ToString(ctx, val);
    8003009c:	ee0f00ef          	jal	ra,8002077c <JS_ToString>
    800300a0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:43485
            JS_FreeValue(ctx, val);
    800300a2:	6666                	ld	a2,88(sp)
    800300a4:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:43484
            pattern = JS_ToString(ctx, val);
    800300a6:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:43485
            JS_FreeValue(ctx, val);
    800300a8:	854e                	mv	a0,s3
    800300aa:	ef4db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43486
            if (JS_IsException(pattern))
    800300ae:	0004071b          	sext.w	a4,s0
    800300b2:	4799                	li	a5,6
    800300b4:	b719                	j	8002ffba <js_regexp_constructor+0x162>
quickjs-nuttx/quickjs.c:43464
        flags = JS_UNDEFINED;
    800300b6:	490d                	li	s2,3
    800300b8:	b7a5                	j	80030020 <js_regexp_constructor+0x1c8>

00000000800300ba <JS_ToObject>:
JS_ToObject():
quickjs-nuttx/quickjs.c:36950
{
    800300ba:	7119                	addi	sp,sp,-128
    800300bc:	e432                	sd	a2,8(sp)
    800300be:	262d                	addiw	a2,a2,11
    800300c0:	f4a6                	sd	s1,104(sp)
    800300c2:	fc86                	sd	ra,120(sp)
    800300c4:	f8a2                	sd	s0,112(sp)
    800300c6:	f0ca                	sd	s2,96(sp)
    800300c8:	e02e                	sd	a1,0(sp)
    800300ca:	0006071b          	sext.w	a4,a2
    800300ce:	47c9                	li	a5,18
    800300d0:	84aa                	mv	s1,a0
    800300d2:	00e7ee63          	bltu	a5,a4,800300ee <JS_ToObject+0x34>
    800300d6:	02061793          	slli	a5,a2,0x20
    800300da:	01e7d613          	srli	a2,a5,0x1e
    800300de:	0003c717          	auipc	a4,0x3c
    800300e2:	fc670713          	addi	a4,a4,-58 # 8006c0a4 <qjsc_repl+0x6af4>
    800300e6:	963a                	add	a2,a2,a4
    800300e8:	421c                	lw	a5,0(a2)
    800300ea:	97ba                	add	a5,a5,a4
    800300ec:	8782                	jr	a5
quickjs-nuttx/quickjs.c:36995
}
    800300ee:	7446                	ld	s0,112(sp)
    800300f0:	70e6                	ld	ra,120(sp)
    800300f2:	7906                	ld	s2,96(sp)
quickjs-nuttx/quickjs.c:36958
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    800300f4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36995
}
    800300f6:	74a6                	ld	s1,104(sp)
quickjs-nuttx/quickjs.c:36958
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    800300f8:	0003b597          	auipc	a1,0x3b
    800300fc:	91858593          	addi	a1,a1,-1768 # 8006aa10 <qjsc_repl+0x5460>
quickjs-nuttx/quickjs.c:36995
}
    80030100:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:36958
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    80030102:	d6ae806f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:36995
}
    80030106:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:36961
        return JS_DupValue(ctx, val);
    80030108:	6502                	ld	a0,0(sp)
    8003010a:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:36995
}
    8003010c:	70e6                	ld	ra,120(sp)
    8003010e:	74a6                	ld	s1,104(sp)
    80030110:	7906                	ld	s2,96(sp)
    80030112:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:36961
        return JS_DupValue(ctx, val);
    80030114:	b06da06f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:36963
        obj = JS_NewObjectClass(ctx, JS_CLASS_BIG_INT);
    80030118:	02100593          	li	a1,33
quickjs-nuttx/quickjs.c:36989
        obj = JS_NewObjectClass(ctx, JS_CLASS_SYMBOL);
    8003011c:	8526                	mv	a0,s1
    8003011e:	defeb0ef          	jal	ra,8001bf0c <JS_NewObjectClass>
    80030122:	e82a                	sd	a0,16(sp)
    80030124:	842e                	mv	s0,a1
    80030126:	a081                	j	80030166 <JS_ToObject+0xac>
quickjs-nuttx/quickjs.c:36967
        obj = JS_NewObjectClass(ctx, JS_CLASS_BIG_FLOAT);
    80030128:	02200593          	li	a1,34
    8003012c:	bfc5                	j	8003011c <JS_ToObject+0x62>
quickjs-nuttx/quickjs.c:36970
        obj = JS_NewObjectClass(ctx, JS_CLASS_BIG_DECIMAL);
    8003012e:	02400593          	li	a1,36
    80030132:	b7ed                	j	8003011c <JS_ToObject+0x62>
quickjs-nuttx/quickjs.c:36975
        obj = JS_NewObjectClass(ctx, JS_CLASS_NUMBER);
    80030134:	4591                	li	a1,4
    80030136:	b7dd                	j	8003011c <JS_ToObject+0x62>
quickjs-nuttx/quickjs.c:36980
            JSString *p1 = JS_VALUE_GET_STRING(val);
    80030138:	6902                	ld	s2,0(sp)
quickjs-nuttx/quickjs.c:36981
            obj = JS_NewObjectClass(ctx, JS_CLASS_STRING);
    8003013a:	4595                	li	a1,5
    8003013c:	dd1eb0ef          	jal	ra,8001bf0c <JS_NewObjectClass>
quickjs-nuttx/quickjs.c:36982
            JS_DefinePropertyValue(ctx, obj, JS_ATOM_length, JS_NewInt32(ctx, p1->len), 0);
    80030140:	00492783          	lw	a5,4(s2)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80030144:	e882                	sd	zero,80(sp)
JS_ToObject():
quickjs-nuttx/quickjs.c:36981
            obj = JS_NewObjectClass(ctx, JS_CLASS_STRING);
    80030146:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:36982
            JS_DefinePropertyValue(ctx, obj, JS_ATOM_length, JS_NewInt32(ctx, p1->len), 0);
    80030148:	1786                	slli	a5,a5,0x21
    8003014a:	9385                	srli	a5,a5,0x21
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003014c:	c8be                	sw	a5,80(sp)
JS_ToObject():
quickjs-nuttx/quickjs.c:36982
    8003014e:	6746                	ld	a4,80(sp)
quickjs-nuttx/quickjs.c:36981
            obj = JS_NewObjectClass(ctx, JS_CLASS_STRING);
    80030150:	e82a                	sd	a0,16(sp)
    80030152:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:36982
            JS_DefinePropertyValue(ctx, obj, JS_ATOM_length, JS_NewInt32(ctx, p1->len), 0);
    80030154:	4801                	li	a6,0
    80030156:	85aa                	mv	a1,a0
    80030158:	4781                	li	a5,0
    8003015a:	03000693          	li	a3,48
    8003015e:	8622                	mv	a2,s0
    80030160:	8526                	mv	a0,s1
    80030162:	8cae80ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:36991
        if (!JS_IsException(obj))
    80030166:	0004079b          	sext.w	a5,s0
    8003016a:	4719                	li	a4,6
    8003016c:	00e78d63          	beq	a5,a4,80030186 <JS_ToObject+0xcc>
quickjs-nuttx/quickjs.c:36992
            JS_SetObjectData(ctx, obj, JS_DupValue(ctx, val));
    80030170:	6502                	ld	a0,0(sp)
    80030172:	65a2                	ld	a1,8(sp)
    80030174:	aa6da0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80030178:	872e                	mv	a4,a1
    8003017a:	65c2                	ld	a1,16(sp)
    8003017c:	86aa                	mv	a3,a0
    8003017e:	8622                	mv	a2,s0
    80030180:	8526                	mv	a0,s1
    80030182:	e1ee90ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:36995
}
    80030186:	70e6                	ld	ra,120(sp)
    80030188:	85a2                	mv	a1,s0
    8003018a:	7446                	ld	s0,112(sp)
    8003018c:	6542                	ld	a0,16(sp)
    8003018e:	74a6                	ld	s1,104(sp)
    80030190:	7906                	ld	s2,96(sp)
    80030192:	6109                	addi	sp,sp,128
    80030194:	8082                	ret
quickjs-nuttx/quickjs.c:36986
        obj = JS_NewObjectClass(ctx, JS_CLASS_BOOLEAN);
    80030196:	4599                	li	a1,6
    80030198:	b751                	j	8003011c <JS_ToObject+0x62>
quickjs-nuttx/quickjs.c:36989
        obj = JS_NewObjectClass(ctx, JS_CLASS_SYMBOL);
    8003019a:	459d                	li	a1,7
    8003019c:	b741                	j	8003011c <JS_ToObject+0x62>

000000008003019e <js_object_get___proto__>:
js_object_get___proto__():
quickjs-nuttx/quickjs.c:38009
{
    8003019e:	715d                	addi	sp,sp,-80
    800301a0:	e0a2                	sd	s0,64(sp)
    800301a2:	e486                	sd	ra,72(sp)
    800301a4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:38012
    val = JS_ToObject(ctx, this_val);
    800301a6:	f15ff0ef          	jal	ra,800300ba <JS_ToObject>
    800301aa:	e82a                	sd	a0,16(sp)
    800301ac:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:38013
    if (JS_IsException(val))
    800301ae:	0005871b          	sext.w	a4,a1
    800301b2:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38012
    val = JS_ToObject(ctx, this_val);
    800301b4:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:38013
    if (JS_IsException(val))
    800301b6:	00f71a63          	bne	a4,a5,800301ca <js_object_get___proto__+0x2c>
quickjs-nuttx/quickjs.c:38014
        return val;
    800301ba:	f82a                	sd	a0,48(sp)
    800301bc:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:38018
}
    800301be:	60a6                	ld	ra,72(sp)
    800301c0:	6406                	ld	s0,64(sp)
    800301c2:	7542                	ld	a0,48(sp)
    800301c4:	75e2                	ld	a1,56(sp)
    800301c6:	6161                	addi	sp,sp,80
    800301c8:	8082                	ret
quickjs-nuttx/quickjs.c:38015
    ret = JS_GetPrototype(ctx, val);
    800301ca:	85aa                	mv	a1,a0
    800301cc:	8522                	mv	a0,s0
    800301ce:	905e90ef          	jal	ra,80019ad2 <JS_GetPrototype>
    800301d2:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:38016
    JS_FreeValue(ctx, val);
    800301d4:	6662                	ld	a2,24(sp)
    800301d6:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:38015
    ret = JS_GetPrototype(ctx, val);
    800301d8:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:38016
    JS_FreeValue(ctx, val);
    800301da:	8522                	mv	a0,s0
    800301dc:	dc2db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38017
    return ret;
    800301e0:	7782                	ld	a5,32(sp)
    800301e2:	f83e                	sd	a5,48(sp)
    800301e4:	77a2                	ld	a5,40(sp)
    800301e6:	fc3e                	sd	a5,56(sp)
    800301e8:	bfd9                	j	800301be <js_object_get___proto__+0x20>

00000000800301ea <js_object_isPrototypeOf>:
js_object_isPrototypeOf():
quickjs-nuttx/quickjs.c:38035
{
    800301ea:	7175                	addi	sp,sp,-144
    800301ec:	e506                	sd	ra,136(sp)
    800301ee:	e122                	sd	s0,128(sp)
    800301f0:	fca6                	sd	s1,120(sp)
    800301f2:	f8ca                	sd	s2,112(sp)
    800301f4:	f4ce                	sd	s3,104(sp)
    800301f6:	f0d2                	sd	s4,96(sp)
quickjs-nuttx/quickjs.c:38040
    v = argv[0];
    800301f8:	631c                	ld	a5,0(a4)
    800301fa:	f83e                	sd	a5,48(sp)
    800301fc:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:38041
    if (!JS_IsObject(v))
    800301fe:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:38040
    v = argv[0];
    80030200:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:38041
    if (!JS_IsObject(v))
    80030202:	2781                	sext.w	a5,a5
    80030204:	00e78663          	beq	a5,a4,80030210 <js_object_isPrototypeOf+0x26>
quickjs-nuttx/quickjs.c:38042
        return JS_FALSE;
    80030208:	e082                	sd	zero,64(sp)
    8003020a:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:38070
    return JS_EXCEPTION;
    8003020c:	e4be                	sd	a5,72(sp)
    8003020e:	a829                	j	80030228 <js_object_isPrototypeOf+0x3e>
    80030210:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:38043
    obj = JS_ToObject(ctx, this_val);
    80030212:	ea9ff0ef          	jal	ra,800300ba <JS_ToObject>
    80030216:	ec2e                	sd	a1,24(sp)
    80030218:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:38044
    if (JS_IsException(obj))
    8003021a:	2581                	sext.w	a1,a1
    8003021c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38043
    obj = JS_ToObject(ctx, this_val);
    8003021e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:38044
    if (JS_IsException(obj))
    80030220:	00f59e63          	bne	a1,a5,8003023c <js_object_isPrototypeOf+0x52>
quickjs-nuttx/quickjs.c:38045
        return JS_EXCEPTION;
    80030224:	e082                	sd	zero,64(sp)
    80030226:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:38071 (discriminator 1)
}
    80030228:	60aa                	ld	ra,136(sp)
    8003022a:	640a                	ld	s0,128(sp)
    8003022c:	6506                	ld	a0,64(sp)
    8003022e:	65a6                	ld	a1,72(sp)
    80030230:	74e6                	ld	s1,120(sp)
    80030232:	7946                	ld	s2,112(sp)
    80030234:	79a6                	ld	s3,104(sp)
    80030236:	7a06                	ld	s4,96(sp)
    80030238:	6149                	addi	sp,sp,144
    8003023a:	8082                	ret
quickjs-nuttx/quickjs.c:38046
    v1 = JS_DupValue(ctx, v);
    8003023c:	7542                	ld	a0,48(sp)
    8003023e:	75e2                	ld	a1,56(sp)
quickjs-nuttx/quickjs.c:38049
        if (JS_IsException(v1))
    80030240:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:38051
        if (JS_IsNull(v1)) {
    80030242:	4a09                	li	s4,2
quickjs-nuttx/quickjs.c:38046
    v1 = JS_DupValue(ctx, v);
    80030244:	9d6da0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80030248:	f42e                	sd	a1,40(sp)
    8003024a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:38048
        v1 = JS_GetPrototypeFree(ctx, v1);
    8003024c:	7622                	ld	a2,40(sp)
    8003024e:	85a2                	mv	a1,s0
    80030250:	8526                	mv	a0,s1
    80030252:	9bde90ef          	jal	ra,80019c0e <JS_GetPrototypeFree>
    80030256:	f42e                	sd	a1,40(sp)
    80030258:	f02a                	sd	a0,32(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003025a:	2581                	sext.w	a1,a1
js_object_isPrototypeOf():
quickjs-nuttx/quickjs.c:38048
    8003025c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:38049
        if (JS_IsException(v1))
    8003025e:	01358a63          	beq	a1,s3,80030272 <js_object_isPrototypeOf+0x88>
quickjs-nuttx/quickjs.c:38051
        if (JS_IsNull(v1)) {
    80030262:	03458563          	beq	a1,s4,8003028c <js_object_isPrototypeOf+0xa2>
quickjs-nuttx/quickjs.c:38055
        if (JS_VALUE_GET_OBJ(obj) == JS_VALUE_GET_OBJ(v1)) {
    80030266:	04890363          	beq	s2,s0,800302ac <js_object_isPrototypeOf+0xc2>
quickjs-nuttx/quickjs.c:38060
        if (js_poll_interrupts(ctx))
    8003026a:	8526                	mv	a0,s1
    8003026c:	c47e90ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80030270:	dd71                	beqz	a0,8003024c <js_object_isPrototypeOf+0x62>
quickjs-nuttx/quickjs.c:38068
    JS_FreeValue(ctx, v1);
    80030272:	7582                	ld	a1,32(sp)
    80030274:	7622                	ld	a2,40(sp)
    80030276:	8526                	mv	a0,s1
    80030278:	d26db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38069
    JS_FreeValue(ctx, obj);
    8003027c:	65c2                	ld	a1,16(sp)
    8003027e:	6662                	ld	a2,24(sp)
    80030280:	8526                	mv	a0,s1
    80030282:	d1cdb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38070
    return JS_EXCEPTION;
    80030286:	4799                	li	a5,6
    80030288:	e082                	sd	zero,64(sp)
    8003028a:	b749                	j	8003020c <js_object_isPrototypeOf+0x22>
quickjs-nuttx/quickjs.c:38052
            res = FALSE;
    8003028c:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:38063
    JS_FreeValue(ctx, v1);
    8003028e:	7582                	ld	a1,32(sp)
    80030290:	7622                	ld	a2,40(sp)
    80030292:	8526                	mv	a0,s1
    80030294:	d0adb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38064
    JS_FreeValue(ctx, obj);
    80030298:	65c2                	ld	a1,16(sp)
    8003029a:	6662                	ld	a2,24(sp)
    8003029c:	8526                	mv	a0,s1
    8003029e:	d00db0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800302a2:	ca82                	sw	zero,84(sp)
    800302a4:	c8a2                	sw	s0,80(sp)
    800302a6:	67c6                	ld	a5,80(sp)
    800302a8:	e0be                	sd	a5,64(sp)
    800302aa:	b785                	j	8003020a <js_object_isPrototypeOf+0x20>
js_object_isPrototypeOf():
quickjs-nuttx/quickjs.c:38056
            res = TRUE;
    800302ac:	4405                	li	s0,1
    800302ae:	b7c5                	j	8003028e <js_object_isPrototypeOf+0xa4>

00000000800302b0 <js_object_valueOf>:
js_object_valueOf():
quickjs-nuttx/quickjs.c:37612
{
    800302b0:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:37614
}
    800302b2:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:37613
    return JS_ToObject(ctx, this_val);
    800302b4:	e07ff06f          	j	800300ba <JS_ToObject>

00000000800302b8 <js_object_constructor>:
js_object_constructor():
quickjs-nuttx/quickjs.c:37139
{
    800302b8:	7179                	addi	sp,sp,-48
    800302ba:	e02e                	sd	a1,0(sp)
    800302bc:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:37141
    if (!JS_IsUndefined(new_target) &&
    800302be:	0006069b          	sext.w	a3,a2
    800302c2:	480d                	li	a6,3
quickjs-nuttx/quickjs.c:37139
{
    800302c4:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:37141
    if (!JS_IsUndefined(new_target) &&
    800302c6:	01068b63          	beq	a3,a6,800302dc <js_object_constructor+0x24>
JS_GetActiveFunction():
quickjs-nuttx/quickjs.c:15534 (discriminator 1)
    return ctx->rt->current_stack_frame->cur_func;
    800302ca:	6d14                	ld	a3,24(a0)
    800302cc:	7ef4                	ld	a3,248(a3)
js_object_constructor():
quickjs-nuttx/quickjs.c:37141 (discriminator 1)
    if (!JS_IsUndefined(new_target) &&
    800302ce:	6694                	ld	a3,8(a3)
    800302d0:	00b68663          	beq	a3,a1,800302dc <js_object_constructor+0x24>
quickjs-nuttx/quickjs.c:37144
        ret = js_create_from_ctor(ctx, new_target, JS_CLASS_OBJECT);
    800302d4:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:37158
}
    800302d6:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:37144
        ret = js_create_from_ctor(ctx, new_target, JS_CLASS_OBJECT);
    800302d8:	9a5eb06f          	j	8001bc7c <js_create_from_ctor>
quickjs-nuttx/quickjs.c:37147
        switch(tag) {
    800302dc:	6710                	ld	a2,8(a4)
    800302de:	4685                	li	a3,1
    800302e0:	ffe6059b          	addiw	a1,a2,-2
    800302e4:	00b6e663          	bltu	a3,a1,800302f0 <js_object_constructor+0x38>
quickjs-nuttx/quickjs.c:37150
            ret = JS_NewObject(ctx);
    800302e8:	853e                	mv	a0,a5
quickjs-nuttx/quickjs.c:37158
}
    800302ea:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:37150
            ret = JS_NewObject(ctx);
    800302ec:	d39eb06f          	j	8001c024 <JS_NewObject>
quickjs-nuttx/quickjs.c:37153
            ret = JS_ToObject(ctx, argv[0]);
    800302f0:	630c                	ld	a1,0(a4)
    800302f2:	853e                	mv	a0,a5
quickjs-nuttx/quickjs.c:37158
}
    800302f4:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:37153
            ret = JS_ToObject(ctx, argv[0]);
    800302f6:	dc5ff06f          	j	800300ba <JS_ToObject>

00000000800302fa <JS_DeleteProperty>:
JS_DeleteProperty():
quickjs-nuttx/quickjs.c:9687
{
    800302fa:	7139                	addi	sp,sp,-64
    800302fc:	f822                	sd	s0,48(sp)
    800302fe:	f426                	sd	s1,40(sp)
    80030300:	f04a                	sd	s2,32(sp)
    80030302:	fc06                	sd	ra,56(sp)
    80030304:	84aa                	mv	s1,a0
    80030306:	8436                	mv	s0,a3
    80030308:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:9692
    obj1 = JS_ToObject(ctx, obj);
    8003030a:	db1ff0ef          	jal	ra,800300ba <JS_ToObject>
    8003030e:	ec2e                	sd	a1,24(sp)
    80030310:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:9693
    if (JS_IsException(obj1))
    80030312:	2581                	sext.w	a1,a1
    80030314:	4799                	li	a5,6
    80030316:	04f58263          	beq	a1,a5,8003035a <JS_DeleteProperty+0x60>
quickjs-nuttx/quickjs.c:9696
    res = delete_property(ctx, p, prop);
    8003031a:	8622                	mv	a2,s0
    8003031c:	85aa                	mv	a1,a0
    8003031e:	8526                	mv	a0,s1
    80030320:	86aec0ef          	jal	ra,8001c38a <delete_property>
quickjs-nuttx/quickjs.c:9697
    JS_FreeValue(ctx, obj1);
    80030324:	65c2                	ld	a1,16(sp)
    80030326:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:9696
    res = delete_property(ctx, p, prop);
    80030328:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:9697
    JS_FreeValue(ctx, obj1);
    8003032a:	8526                	mv	a0,s1
    8003032c:	c72db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9698
    if (res != FALSE)
    80030330:	e415                	bnez	s0,8003035c <JS_DeleteProperty+0x62>
quickjs-nuttx/quickjs.c:9700
    if ((flags & JS_PROP_THROW) ||
    80030332:	00e95793          	srli	a5,s2,0xe
    80030336:	8b85                	andi	a5,a5,1
    80030338:	eb91                	bnez	a5,8003034c <JS_DeleteProperty+0x52>
quickjs-nuttx/quickjs.c:9701 (discriminator 1)
        ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    8003033a:	6421                	lui	s0,0x8
    8003033c:	00897433          	and	s0,s2,s0
quickjs-nuttx/quickjs.c:9700 (discriminator 1)
    if ((flags & JS_PROP_THROW) ||
    80030340:	cc11                	beqz	s0,8003035c <JS_DeleteProperty+0x62>
quickjs-nuttx/quickjs.c:9701
        ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    80030342:	8526                	mv	a0,s1
    80030344:	841d70ef          	jal	ra,80007b84 <is_strict_mode>
    80030348:	842a                	mv	s0,a0
    8003034a:	c909                	beqz	a0,8003035c <JS_DeleteProperty+0x62>
quickjs-nuttx/quickjs.c:9702
        JS_ThrowTypeError(ctx, "could not delete property");
    8003034c:	0003c597          	auipc	a1,0x3c
    80030350:	da458593          	addi	a1,a1,-604 # 8006c0f0 <qjsc_repl+0x6b40>
    80030354:	8526                	mv	a0,s1
    80030356:	b16e80ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:9694
        return -1;
    8003035a:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:9706
}
    8003035c:	70e2                	ld	ra,56(sp)
    8003035e:	8522                	mv	a0,s0
    80030360:	7442                	ld	s0,48(sp)
    80030362:	74a2                	ld	s1,40(sp)
    80030364:	7902                	ld	s2,32(sp)
    80030366:	6121                	addi	sp,sp,64
    80030368:	8082                	ret

000000008003036a <JS_DeletePropertyInt64>:
JS_DeletePropertyInt64():
quickjs-nuttx/quickjs.c:9709
{
    8003036a:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:9713
    if ((uint64_t)idx <= JS_ATOM_MAX_INT) {
    8003036c:	800007b7          	lui	a5,0x80000
quickjs-nuttx/quickjs.c:9709
{
    80030370:	fc06                	sd	ra,56(sp)
    80030372:	f822                	sd	s0,48(sp)
    80030374:	f426                	sd	s1,40(sp)
    80030376:	f04a                	sd	s2,32(sp)
    80030378:	ec4e                	sd	s3,24(sp)
    8003037a:	e02e                	sd	a1,0(sp)
    8003037c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:9713
    if ((uint64_t)idx <= JS_ATOM_MAX_INT) {
    8003037e:	fff7c793          	not	a5,a5
    80030382:	00d7ee63          	bltu	a5,a3,8003039e <JS_DeletePropertyInt64+0x34>
quickjs-nuttx/quickjs.c:9723
}
    80030386:	7442                	ld	s0,48(sp)
    80030388:	70e2                	ld	ra,56(sp)
    8003038a:	74a2                	ld	s1,40(sp)
    8003038c:	7902                	ld	s2,32(sp)
    8003038e:	69e2                	ld	s3,24(sp)
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    80030390:	800007b7          	lui	a5,0x80000
    80030394:	8edd                	or	a3,a3,a5
JS_DeletePropertyInt64():
quickjs-nuttx/quickjs.c:9715
        return JS_DeleteProperty(ctx, obj, __JS_AtomFromUInt32(idx), flags);
    80030396:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:9723
}
    80030398:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:9715
        return JS_DeleteProperty(ctx, obj, __JS_AtomFromUInt32(idx), flags);
    8003039a:	f61ff06f          	j	800302fa <JS_DeleteProperty>
quickjs-nuttx/quickjs.c:9717
    prop = JS_NewAtomInt64(ctx, idx);
    8003039e:	85b6                	mv	a1,a3
    800303a0:	892a                	mv	s2,a0
    800303a2:	89ba                	mv	s3,a4
    800303a4:	e3def0ef          	jal	ra,800201e0 <JS_NewAtomInt64>
    800303a8:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:9719
        return -1;
    800303ac:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:9718
    if (prop == JS_ATOM_NULL)
    800303ae:	cc09                	beqz	s0,800303c8 <JS_DeletePropertyInt64+0x5e>
quickjs-nuttx/quickjs.c:9720
    res = JS_DeleteProperty(ctx, obj, prop, flags);
    800303b0:	6582                	ld	a1,0(sp)
    800303b2:	6622                	ld	a2,8(sp)
    800303b4:	874e                	mv	a4,s3
    800303b6:	86a2                	mv	a3,s0
    800303b8:	854a                	mv	a0,s2
    800303ba:	f41ff0ef          	jal	ra,800302fa <JS_DeleteProperty>
    800303be:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:9721
    JS_FreeAtom(ctx, prop);
    800303c0:	85a2                	mv	a1,s0
    800303c2:	854a                	mv	a0,s2
    800303c4:	d85da0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:9723
}
    800303c8:	70e2                	ld	ra,56(sp)
    800303ca:	7442                	ld	s0,48(sp)
    800303cc:	7902                	ld	s2,32(sp)
    800303ce:	69e2                	ld	s3,24(sp)
    800303d0:	8526                	mv	a0,s1
    800303d2:	74a2                	ld	s1,40(sp)
    800303d4:	6121                	addi	sp,sp,64
    800303d6:	8082                	ret

00000000800303d8 <js_reflect_deleteProperty>:
js_reflect_deleteProperty():
quickjs-nuttx/quickjs.c:45568
{
    800303d8:	711d                	addi	sp,sp,-96
    800303da:	ec86                	sd	ra,88(sp)
    800303dc:	e8a2                	sd	s0,80(sp)
    800303de:	e4a6                	sd	s1,72(sp)
    800303e0:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/quickjs.c:45573
    obj = argv[0];
    800303e2:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:45574
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    800303e4:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:45573
    obj = argv[0];
    800303e6:	e83e                	sd	a5,16(sp)
    800303e8:	671c                	ld	a5,8(a4)
    800303ea:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:45574
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    800303ec:	2781                	sext.w	a5,a5
    800303ee:	00d78963          	beq	a5,a3,80030400 <js_reflect_deleteProperty+0x28>
quickjs-nuttx/quickjs.c:45585
}
    800303f2:	6446                	ld	s0,80(sp)
    800303f4:	60e6                	ld	ra,88(sp)
    800303f6:	64a6                	ld	s1,72(sp)
    800303f8:	6906                	ld	s2,64(sp)
    800303fa:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:45575
        return JS_ThrowTypeErrorNotAnObject(ctx);
    800303fc:	82fe806f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:45576
    atom = JS_ValueToAtom(ctx, argv[1]);
    80030400:	6b0c                	ld	a1,16(a4)
    80030402:	6f10                	ld	a2,24(a4)
    80030404:	892a                	mv	s2,a0
    80030406:	c0cf80ef          	jal	ra,80028812 <JS_ValueToAtom>
    8003040a:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:45577
    if (unlikely(atom == JS_ATOM_NULL))
    8003040e:	ec81                	bnez	s1,80030426 <js_reflect_deleteProperty+0x4e>
quickjs-nuttx/quickjs.c:45578
        return JS_EXCEPTION;
    80030410:	f002                	sd	zero,32(sp)
    80030412:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45585
}
    80030414:	60e6                	ld	ra,88(sp)
    80030416:	6446                	ld	s0,80(sp)
    80030418:	f43e                	sd	a5,40(sp)
    8003041a:	7502                	ld	a0,32(sp)
    8003041c:	75a2                	ld	a1,40(sp)
    8003041e:	64a6                	ld	s1,72(sp)
    80030420:	6906                	ld	s2,64(sp)
    80030422:	6125                	addi	sp,sp,96
    80030424:	8082                	ret
quickjs-nuttx/quickjs.c:45579
    ret = JS_DeleteProperty(ctx, obj, atom, 0);
    80030426:	65c2                	ld	a1,16(sp)
    80030428:	6662                	ld	a2,24(sp)
    8003042a:	4701                	li	a4,0
    8003042c:	86a6                	mv	a3,s1
    8003042e:	854a                	mv	a0,s2
    80030430:	ecbff0ef          	jal	ra,800302fa <JS_DeleteProperty>
    80030434:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:45580
    JS_FreeAtom(ctx, atom);
    80030436:	85a6                	mv	a1,s1
    80030438:	854a                	mv	a0,s2
    8003043a:	d0fda0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:45581
    if (ret < 0)
    8003043e:	fc0449e3          	bltz	s0,80030410 <js_reflect_deleteProperty+0x38>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80030442:	00803433          	snez	s0,s0
    80030446:	da02                	sw	zero,52(sp)
    80030448:	d822                	sw	s0,48(sp)
    8003044a:	77c2                	ld	a5,48(sp)
    8003044c:	f03e                	sd	a5,32(sp)
    8003044e:	4785                	li	a5,1
    80030450:	b7d1                	j	80030414 <js_reflect_deleteProperty+0x3c>

0000000080030452 <js_create_array_iterator>:
js_create_array_iterator():
quickjs-nuttx/quickjs.c:40611
{
    80030452:	7119                	addi	sp,sp,-128
    80030454:	f8a2                	sd	s0,112(sp)
    80030456:	f4a6                	sd	s1,104(sp)
    80030458:	fc86                	sd	ra,120(sp)
    8003045a:	84be                	mv	s1,a5
    8003045c:	f0ca                	sd	s2,96(sp)
    8003045e:	ecce                	sd	s3,88(sp)
    80030460:	e8d2                	sd	s4,80(sp)
    80030462:	e4d6                	sd	s5,72(sp)
quickjs-nuttx/quickjs.c:40618
    if (magic & 4) {
    80030464:	8b91                	andi	a5,a5,4
quickjs-nuttx/quickjs.c:40611
{
    80030466:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:40618
    if (magic & 4) {
    80030468:	cba9                	beqz	a5,800304ba <js_create_array_iterator+0x68>
quickjs-nuttx/quickjs.c:40620
        arr = JS_ToStringCheckObject(ctx, this_val);
    8003046a:	a17f00ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8003046e:	f42e                	sd	a1,40(sp)
    80030470:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:40621
        class_id = JS_CLASS_STRING_ITERATOR;
    80030472:	02d00593          	li	a1,45
quickjs-nuttx/quickjs.c:40626
    if (JS_IsException(arr))
    80030476:	57a2                	lw	a5,40(sp)
    80030478:	4a99                	li	s5,6
    8003047a:	03578763          	beq	a5,s5,800304a8 <js_create_array_iterator+0x56>
quickjs-nuttx/quickjs.c:40628
    enum_obj = JS_NewObjectClass(ctx, class_id);
    8003047e:	8522                	mv	a0,s0
    80030480:	a8deb0ef          	jal	ra,8001bf0c <JS_NewObjectClass>
    80030484:	e82a                	sd	a0,16(sp)
    80030486:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80030488:	00058a1b          	sext.w	s4,a1
js_create_array_iterator():
quickjs-nuttx/quickjs.c:40628
    8003048c:	89aa                	mv	s3,a0
    8003048e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:40629
    if (JS_IsException(enum_obj))
    80030490:	015a0c63          	beq	s4,s5,800304a8 <js_create_array_iterator+0x56>
quickjs-nuttx/quickjs.c:40631
    it = js_malloc(ctx, sizeof(*it));
    80030494:	45e1                	li	a1,24
    80030496:	8522                	mv	a0,s0
    80030498:	c6de90ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:40632
    if (!it)
    8003049c:	e515                	bnez	a0,800304c8 <js_create_array_iterator+0x76>
quickjs-nuttx/quickjs.c:40640
    JS_FreeValue(ctx, enum_obj);
    8003049e:	65c2                	ld	a1,16(sp)
    800304a0:	6662                	ld	a2,24(sp)
    800304a2:	8522                	mv	a0,s0
    800304a4:	afadb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40642
    JS_FreeValue(ctx, arr);
    800304a8:	7582                	ld	a1,32(sp)
    800304aa:	7622                	ld	a2,40(sp)
    800304ac:	8522                	mv	a0,s0
    800304ae:	af0db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40643
    return JS_EXCEPTION;
    800304b2:	4799                	li	a5,6
    800304b4:	f802                	sd	zero,48(sp)
    800304b6:	fc3e                	sd	a5,56(sp)
    800304b8:	a03d                	j	800304e6 <js_create_array_iterator+0x94>
quickjs-nuttx/quickjs.c:40623
        arr = JS_ToObject(ctx, this_val);
    800304ba:	c01ff0ef          	jal	ra,800300ba <JS_ToObject>
    800304be:	f42e                	sd	a1,40(sp)
    800304c0:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:40624
        class_id = JS_CLASS_ARRAY_ITERATOR;
    800304c2:	02c00593          	li	a1,44
    800304c6:	bf45                	j	80030476 <js_create_array_iterator+0x24>
quickjs-nuttx/quickjs.c:40634
    it->obj = arr;
    800304c8:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:40617
    kind = magic & 3;
    800304ca:	888d                	andi	s1,s1,3
quickjs-nuttx/quickjs.c:40635
    it->kind = kind;
    800304cc:	c904                	sw	s1,16(a0)
quickjs-nuttx/quickjs.c:40634
    it->obj = arr;
    800304ce:	e11c                	sd	a5,0(a0)
    800304d0:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:40636
    it->idx = 0;
    800304d2:	00052a23          	sw	zero,20(a0)
quickjs-nuttx/quickjs.c:40634
    it->obj = arr;
    800304d6:	e51c                	sd	a5,8(a0)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    800304d8:	57fd                	li	a5,-1
    800304da:	00fa1463          	bne	s4,a5,800304e2 <js_create_array_iterator+0x90>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    800304de:	02a9b823          	sd	a0,48(s3)
js_create_array_iterator():
quickjs-nuttx/quickjs.c:40638
    return enum_obj;
    800304e2:	f84e                	sd	s3,48(sp)
    800304e4:	fc4a                	sd	s2,56(sp)
quickjs-nuttx/quickjs.c:40644
}
    800304e6:	70e6                	ld	ra,120(sp)
    800304e8:	7446                	ld	s0,112(sp)
    800304ea:	7542                	ld	a0,48(sp)
    800304ec:	75e2                	ld	a1,56(sp)
    800304ee:	74a6                	ld	s1,104(sp)
    800304f0:	7906                	ld	s2,96(sp)
    800304f2:	69e6                	ld	s3,88(sp)
    800304f4:	6a46                	ld	s4,80(sp)
    800304f6:	6aa6                	ld	s5,72(sp)
    800304f8:	6109                	addi	sp,sp,128
    800304fa:	8082                	ret

00000000800304fc <js_create_typed_array_iterator>:
js_create_typed_array_iterator():
quickjs-nuttx/quickjs.c:53222
{
    800304fc:	715d                	addi	sp,sp,-80
    800304fe:	e0a2                	sd	s0,64(sp)
    80030500:	e486                	sd	ra,72(sp)
    80030502:	842a                	mv	s0,a0
    80030504:	f02e                	sd	a1,32(sp)
    80030506:	f432                	sd	a2,40(sp)
    80030508:	ec36                	sd	a3,24(sp)
    8003050a:	e83a                	sd	a4,16(sp)
    8003050c:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:53223
    if (validate_typed_array(ctx, this_val))
    8003050e:	948e90ef          	jal	ra,80019656 <validate_typed_array>
    80030512:	ed01                	bnez	a0,8003052a <js_create_typed_array_iterator+0x2e>
quickjs-nuttx/quickjs.c:53225
    return js_create_array_iterator(ctx, this_val, argc, argv, magic);
    80030514:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:53226
}
    80030516:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:53225
    return js_create_array_iterator(ctx, this_val, argc, argv, magic);
    80030518:	67a2                	ld	a5,8(sp)
    8003051a:	6742                	ld	a4,16(sp)
    8003051c:	66e2                	ld	a3,24(sp)
    8003051e:	7582                	ld	a1,32(sp)
    80030520:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:53226
}
    80030522:	60a6                	ld	ra,72(sp)
    80030524:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:53225
    return js_create_array_iterator(ctx, this_val, argc, argv, magic);
    80030526:	f2dff06f          	j	80030452 <js_create_array_iterator>
quickjs-nuttx/quickjs.c:53226 (discriminator 1)
}
    8003052a:	60a6                	ld	ra,72(sp)
    8003052c:	6406                	ld	s0,64(sp)
    8003052e:	4501                	li	a0,0
    80030530:	4599                	li	a1,6
    80030532:	6161                	addi	sp,sp,80
    80030534:	8082                	ret

0000000080030536 <js_instantiate_prototype>:
js_instantiate_prototype():
quickjs-nuttx/quickjs.c:15622
{
    80030536:	711d                	addi	sp,sp,-96
    80030538:	e8a2                	sd	s0,80(sp)
    8003053a:	e4a6                	sd	s1,72(sp)
    8003053c:	ec86                	sd	ra,88(sp)
    8003053e:	842a                	mv	s0,a0
    80030540:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:15627
    obj = JS_NewObject(ctx);
    80030542:	ae3eb0ef          	jal	ra,8001c024 <JS_NewObject>
    80030546:	e82a                	sd	a0,16(sp)
    80030548:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:15628
    if (JS_IsException(obj))
    8003054a:	0005879b          	sext.w	a5,a1
    8003054e:	4499                	li	s1,6
    80030550:	6722                	ld	a4,8(sp)
    80030552:	00979563          	bne	a5,s1,8003055c <js_instantiate_prototype+0x26>
quickjs-nuttx/quickjs.c:15629
        return JS_EXCEPTION;
    80030556:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:15639
    return obj;
    80030558:	f43e                	sd	a5,40(sp)
    8003055a:	a035                	j	80030586 <js_instantiate_prototype+0x50>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8003055c:	431c                	lw	a5,0(a4)
    8003055e:	862e                	mv	a2,a1
js_instantiate_prototype():
quickjs-nuttx/quickjs.c:15632
    ret = JS_DefinePropertyValue(ctx, obj, JS_ATOM_constructor,
    80030560:	480d                	li	a6,3
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80030562:	2785                	addiw	a5,a5,1
    80030564:	c31c                	sw	a5,0(a4)
js_instantiate_prototype():
quickjs-nuttx/quickjs.c:15632
    80030566:	85aa                	mv	a1,a0
    80030568:	57fd                	li	a5,-1
    8003056a:	03d00693          	li	a3,61
    8003056e:	8522                	mv	a0,s0
    80030570:	cbde70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:15635
    if (ret < 0) {
    80030574:	02055063          	bgez	a0,80030594 <js_instantiate_prototype+0x5e>
quickjs-nuttx/quickjs.c:15636
        JS_FreeValue(ctx, obj);
    80030578:	65c2                	ld	a1,16(sp)
    8003057a:	6662                	ld	a2,24(sp)
    8003057c:	8522                	mv	a0,s0
    8003057e:	a20db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15637
        return JS_EXCEPTION;
    80030582:	f002                	sd	zero,32(sp)
    80030584:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:15640 (discriminator 1)
}
    80030586:	60e6                	ld	ra,88(sp)
    80030588:	6446                	ld	s0,80(sp)
    8003058a:	7502                	ld	a0,32(sp)
    8003058c:	75a2                	ld	a1,40(sp)
    8003058e:	64a6                	ld	s1,72(sp)
    80030590:	6125                	addi	sp,sp,96
    80030592:	8082                	ret
quickjs-nuttx/quickjs.c:15639
    return obj;
    80030594:	67c2                	ld	a5,16(sp)
    80030596:	f03e                	sd	a5,32(sp)
    80030598:	67e2                	ld	a5,24(sp)
    8003059a:	bf7d                	j	80030558 <js_instantiate_prototype+0x22>

000000008003059c <js_create_iterator_result>:
js_create_iterator_result():
quickjs-nuttx/quickjs.c:15321
{
    8003059c:	7159                	addi	sp,sp,-112
    8003059e:	f0a2                	sd	s0,96(sp)
    800305a0:	eca6                	sd	s1,88(sp)
    800305a2:	f486                	sd	ra,104(sp)
    800305a4:	842a                	mv	s0,a0
    800305a6:	e02e                	sd	a1,0(sp)
    800305a8:	e432                	sd	a2,8(sp)
    800305aa:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:15323
    obj = JS_NewObject(ctx);
    800305ac:	a79eb0ef          	jal	ra,8001c024 <JS_NewObject>
    800305b0:	e82a                	sd	a0,16(sp)
    800305b2:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:15324
    if (JS_IsException(obj)) {
    800305b4:	0005871b          	sext.w	a4,a1
    800305b8:	4799                	li	a5,6
    800305ba:	00f71b63          	bne	a4,a5,800305d0 <js_create_iterator_result+0x34>
quickjs-nuttx/quickjs.c:15325
        JS_FreeValue(ctx, val);
    800305be:	6582                	ld	a1,0(sp)
    800305c0:	6622                	ld	a2,8(sp)
    800305c2:	8522                	mv	a0,s0
    800305c4:	9dadb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15338
    return obj;
    800305c8:	67c2                	ld	a5,16(sp)
    800305ca:	f03e                	sd	a5,32(sp)
    800305cc:	67e2                	ld	a5,24(sp)
    800305ce:	a025                	j	800305f6 <js_create_iterator_result+0x5a>
quickjs-nuttx/quickjs.c:15328
    if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_value,
    800305d0:	6702                	ld	a4,0(sp)
    800305d2:	67a2                	ld	a5,8(sp)
    800305d4:	862e                	mv	a2,a1
    800305d6:	481d                	li	a6,7
    800305d8:	85aa                	mv	a1,a0
    800305da:	04100693          	li	a3,65
    800305de:	8522                	mv	a0,s0
    800305e0:	c4de70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800305e4:	02055163          	bgez	a0,80030606 <js_create_iterator_result+0x6a>
quickjs-nuttx/quickjs.c:15335
        JS_FreeValue(ctx, obj);
    800305e8:	65c2                	ld	a1,16(sp)
    800305ea:	6662                	ld	a2,24(sp)
    800305ec:	8522                	mv	a0,s0
    800305ee:	9b0db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15336
        return JS_EXCEPTION;
    800305f2:	4799                	li	a5,6
    800305f4:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:15339
}
    800305f6:	70a6                	ld	ra,104(sp)
    800305f8:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:15338
    return obj;
    800305fa:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:15339
}
    800305fc:	7502                	ld	a0,32(sp)
    800305fe:	75a2                	ld	a1,40(sp)
    80030600:	64e6                	ld	s1,88(sp)
    80030602:	6165                	addi	sp,sp,112
    80030604:	8082                	ret
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80030606:	009034b3          	snez	s1,s1
    8003060a:	c282                	sw	zero,68(sp)
    8003060c:	c0a6                	sw	s1,64(sp)
js_create_iterator_result():
quickjs-nuttx/quickjs.c:15332
    if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_done,
    8003060e:	6706                	ld	a4,64(sp)
    80030610:	65c2                	ld	a1,16(sp)
    80030612:	6662                	ld	a2,24(sp)
    80030614:	481d                	li	a6,7
    80030616:	4785                	li	a5,1
    80030618:	06a00693          	li	a3,106
    8003061c:	8522                	mv	a0,s0
    8003061e:	c0fe70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80030622:	fa0553e3          	bgez	a0,800305c8 <js_create_iterator_result+0x2c>
quickjs-nuttx/quickjs.c:15334
    fail:
    80030626:	b7c9                	j	800305e8 <js_create_iterator_result+0x4c>

0000000080030628 <js_async_from_sync_iterator_unwrap>:
js_async_from_sync_iterator_unwrap():
quickjs-nuttx/quickjs.c:48697
{
    80030628:	715d                	addi	sp,sp,-80
    8003062a:	e0a2                	sd	s0,64(sp)
quickjs-nuttx/quickjs.c:48698
    return js_create_iterator_result(ctx, JS_DupValue(ctx, argv[0]),
    8003062c:	670c                	ld	a1,8(a4)
quickjs-nuttx/quickjs.c:48697
{
    8003062e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48698
    return js_create_iterator_result(ctx, JS_DupValue(ctx, argv[0]),
    80030630:	6308                	ld	a0,0(a4)
quickjs-nuttx/quickjs.c:48697
{
    80030632:	e486                	sd	ra,72(sp)
    80030634:	fc26                	sd	s1,56(sp)
    80030636:	84c2                	mv	s1,a6
quickjs-nuttx/quickjs.c:48698
    return js_create_iterator_result(ctx, JS_DupValue(ctx, argv[0]),
    80030638:	de3d90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003063c:	6490                	ld	a2,8(s1)
    8003063e:	f42e                	sd	a1,40(sp)
    80030640:	608c                	ld	a1,0(s1)
    80030642:	f02a                	sd	a0,32(sp)
    80030644:	8522                	mv	a0,s0
    80030646:	fa0de0ef          	jal	ra,8000ede6 <JS_ToBool>
    8003064a:	86aa                	mv	a3,a0
    8003064c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48700
}
    8003064e:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:48698
    return js_create_iterator_result(ctx, JS_DupValue(ctx, argv[0]),
    80030650:	7582                	ld	a1,32(sp)
    80030652:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:48700
}
    80030654:	60a6                	ld	ra,72(sp)
    80030656:	74e2                	ld	s1,56(sp)
    80030658:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:48698
    return js_create_iterator_result(ctx, JS_DupValue(ctx, argv[0]),
    8003065a:	f43ff06f          	j	8003059c <js_create_iterator_result>

000000008003065e <js_call_c_function>:
js_call_c_function():
quickjs-nuttx/quickjs.c:15849
{
    8003065e:	7111                	addi	sp,sp,-256
    80030660:	f9a2                	sd	s0,240(sp)
    80030662:	f1ca                	sd	s2,224(sp)
    80030664:	e5d6                	sd	s5,200(sp)
    80030666:	0200                	addi	s0,sp,256
    80030668:	fd86                	sd	ra,248(sp)
    8003066a:	f5a6                	sd	s1,232(sp)
    8003066c:	edce                	sd	s3,216(sp)
    8003066e:	e9d2                	sd	s4,208(sp)
    80030670:	e1da                	sd	s6,192(sp)
    80030672:	fd5e                	sd	s7,184(sp)
quickjs-nuttx/quickjs.c:15850
    JSRuntime *rt = ctx->rt;
    80030674:	6d04                	ld	s1,24(a0)
quickjs-nuttx/quickjs.c:15849
{
    80030676:	f2c43423          	sd	a2,-216(s0) # 7f28 <asinh-0x7fff80d8>
quickjs-nuttx/quickjs.c:15861
    arg_count = p->u.cfunc.length;
    8003067a:	0405c603          	lbu	a2,64(a1)
quickjs-nuttx/quickjs.c:15849
{
    8003067e:	f0d43823          	sd	a3,-240(s0)
    80030682:	86be                	mv	a3,a5
quickjs-nuttx/quickjs.c:15864
    if (js_check_stack_overflow(rt, sizeof(arg_buf[0]) * arg_count))
    80030684:	6cfc                	ld	a5,216(s1)
quickjs-nuttx/quickjs.c:15861
    arg_count = p->u.cfunc.length;
    80030686:	0006091b          	sext.w	s2,a2
quickjs-nuttx/quickjs.c:15864
    if (js_check_stack_overflow(rt, sizeof(arg_buf[0]) * arg_count))
    8003068a:	0612                	slli	a2,a2,0x4
quickjs-nuttx/quickjs.c:15860
    cproto = p->u.cfunc.cproto;
    8003068c:	0415c983          	lbu	s3,65(a1)
quickjs-nuttx/quickjs.c:15849
{
    80030690:	f2b43023          	sd	a1,-224(s0)
quickjs-nuttx/quickjs.c:15859
    p = JS_VALUE_GET_OBJ(func_obj);
    80030694:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:15849
{
    80030696:	f0e43c23          	sd	a4,-232(s0)
js_check_stack_overflow():
quickjs-nuttx/quickjs.c:1613
    sp = js_get_stack_pointer() - alloca_size;
    8003069a:	40c405b3          	sub	a1,s0,a2
js_call_c_function():
quickjs-nuttx/quickjs.c:15864
    if (js_check_stack_overflow(rt, sizeof(arg_buf[0]) * arg_count))
    8003069e:	02f5f963          	bgeu	a1,a5,800306d0 <js_call_c_function+0x72>
quickjs-nuttx/quickjs.c:15865
        return JS_ThrowStackOverflow(ctx);
    800306a2:	a80e90ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
    800306a6:	f4a43823          	sd	a0,-176(s0)
    800306aa:	f4b43c23          	sd	a1,-168(s0)
quickjs-nuttx/quickjs.c:15983
}
    800306ae:	f5043503          	ld	a0,-176(s0)
    800306b2:	f5843583          	ld	a1,-168(s0)
    800306b6:	f0040113          	addi	sp,s0,-256
    800306ba:	70ee                	ld	ra,248(sp)
    800306bc:	744e                	ld	s0,240(sp)
    800306be:	74ae                	ld	s1,232(sp)
    800306c0:	790e                	ld	s2,224(sp)
    800306c2:	69ee                	ld	s3,216(sp)
    800306c4:	6a4e                	ld	s4,208(sp)
    800306c6:	6aae                	ld	s5,200(sp)
    800306c8:	6b0e                	ld	s6,192(sp)
    800306ca:	7bea                	ld	s7,184(sp)
    800306cc:	6111                	addi	sp,sp,256
    800306ce:	8082                	ret
quickjs-nuttx/quickjs.c:15867
    prev_sf = rt->current_stack_frame;
    800306d0:	7cec                	ld	a1,248(s1)
quickjs-nuttx/quickjs.c:15869
    rt->current_stack_frame = sf;
    800306d2:	f6040793          	addi	a5,s0,-160
    800306d6:	fcfc                	sd	a5,248(s1)
quickjs-nuttx/quickjs.c:15868
    sf->prev_frame = prev_sf;
    800306d8:	f6b43023          	sd	a1,-160(s0)
quickjs-nuttx/quickjs.c:15870
    ctx = p->u.cfunc.realm; /* change the current realm */
    800306dc:	030aba03          	ld	s4,48(s5)
    800306e0:	8742                	mv	a4,a6
    800306e2:	8b46                	mv	s6,a7
    800306e4:	00098b9b          	sext.w	s7,s3
quickjs-nuttx/quickjs.c:15878
        sf->js_mode = 0;
    800306e8:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:15875
    if (prev_sf)
    800306ea:	c199                	beqz	a1,800306f0 <js_call_c_function+0x92>
quickjs-nuttx/quickjs.c:15876
        sf->js_mode = prev_sf->js_mode & JS_MODE_MATH;
    800306ec:	41fc                	lw	a5,68(a1)
    800306ee:	8b91                	andi	a5,a5,4
    800306f0:	faf42223          	sw	a5,-92(s0)
quickjs-nuttx/quickjs.c:15882
    sf->cur_func = (JSValue)func_obj;
    800306f4:	f2043783          	ld	a5,-224(s0)
quickjs-nuttx/quickjs.c:15883
    sf->arg_count = argc;
    800306f8:	fad42023          	sw	a3,-96(s0)
quickjs-nuttx/quickjs.c:15882
    sf->cur_func = (JSValue)func_obj;
    800306fc:	f6f43423          	sd	a5,-152(s0)
    80030700:	f2843783          	ld	a5,-216(s0)
    80030704:	f6f43823          	sd	a5,-144(s0)
quickjs-nuttx/quickjs.c:15886
    if (unlikely(argc < arg_count)) {
    80030708:	0526d363          	bge	a3,s2,8003074e <js_call_c_function+0xf0>
quickjs-nuttx/quickjs.c:15888
        arg_buf = alloca(sizeof(arg_buf[0]) * arg_count);
    8003070c:	40c10133          	sub	sp,sp,a2
    80030710:	878a                	mv	a5,sp
quickjs-nuttx/quickjs.c:15890
            arg_buf[i] = argv[i];
    80030712:	0006861b          	sext.w	a2,a3
    80030716:	0006d363          	bgez	a3,8003071c <js_call_c_function+0xbe>
    8003071a:	4601                	li	a2,0
    8003071c:	85ba                	mv	a1,a4
    8003071e:	0612                	slli	a2,a2,0x4
    80030720:	853e                	mv	a0,a5
    80030722:	f0d43423          	sd	a3,-248(s0)
    80030726:	686330ef          	jal	ra,80063dac <memcpy>
    8003072a:	f0843683          	ld	a3,-248(s0)
    8003072e:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:15892
            arg_buf[i] = JS_UNDEFINED;
    80030730:	458d                	li	a1,3
    80030732:	00469713          	slli	a4,a3,0x4
    80030736:	972a                	add	a4,a4,a0
quickjs-nuttx/quickjs.c:15890
            arg_buf[i] = argv[i];
    80030738:	8636                	mv	a2,a3
quickjs-nuttx/quickjs.c:15892 (discriminator 3)
            arg_buf[i] = JS_UNDEFINED;
    8003073a:	00073023          	sd	zero,0(a4)
    8003073e:	e70c                	sd	a1,8(a4)
quickjs-nuttx/quickjs.c:15891 (discriminator 3)
        for(i = argc; i < arg_count; i++)
    80030740:	2605                	addiw	a2,a2,1
    80030742:	0741                	addi	a4,a4,16
    80030744:	ff264be3          	blt	a2,s2,8003073a <js_call_c_function+0xdc>
quickjs-nuttx/quickjs.c:15893
        sf->arg_count = arg_count;
    80030748:	fb242023          	sw	s2,-96(s0)
    8003074c:	873e                	mv	a4,a5
quickjs-nuttx/quickjs.c:15895
    sf->arg_buf = (JSValue*)arg_buf;
    8003074e:	f6e43c23          	sd	a4,-136(s0)
quickjs-nuttx/quickjs.c:15897
    func = p->u.cfunc.c_function;
    80030752:	47b1                	li	a5,12
    80030754:	038ab903          	ld	s2,56(s5)
quickjs-nuttx/quickjs.c:15898
    switch(cproto) {
    80030758:	1b37e363          	bltu	a5,s3,800308fe <js_call_c_function+0x2a0>
    8003075c:	0003c617          	auipc	a2,0x3c
    80030760:	9cc60613          	addi	a2,a2,-1588 # 8006c128 <qjsc_repl+0x6b78>
    80030764:	098a                	slli	s3,s3,0x2
    80030766:	99b2                	add	s3,s3,a2
    80030768:	0009a783          	lw	a5,0(s3)
    8003076c:	97b2                	add	a5,a5,a2
    8003076e:	8782                	jr	a5
quickjs-nuttx/quickjs.c:15901
        if (!(flags & JS_CALL_FLAG_CONSTRUCTOR)) {
    80030770:	001b7893          	andi	a7,s6,1
    80030774:	04089263          	bnez	a7,800307b8 <js_call_c_function+0x15a>
quickjs-nuttx/quickjs.c:15902
            if (cproto == JS_CFUNC_constructor) {
    80030778:	4789                	li	a5,2
    8003077a:	02fb9a63          	bne	s7,a5,800307ae <js_call_c_function+0x150>
quickjs-nuttx/quickjs.c:15904
                ret_val = JS_ThrowTypeError(ctx, "must be called with new");
    8003077e:	0003c597          	auipc	a1,0x3c
    80030782:	99258593          	addi	a1,a1,-1646 # 8006c110 <qjsc_repl+0x6b60>
    80030786:	8552                	mv	a0,s4
    80030788:	ee5e70ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:15913
        ret_val = func.generic(ctx, this_obj, argc, arg_buf);
    8003078c:	f4a43023          	sd	a0,-192(s0)
    80030790:	0005079b          	sext.w	a5,a0
    80030794:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:15981
    rt->current_stack_frame = sf->prev_frame;
    80030796:	f6043703          	ld	a4,-160(s0)
quickjs-nuttx/quickjs.c:15982
    return ret_val;
    8003079a:	f4f42023          	sw	a5,-192(s0)
    8003079e:	f4043783          	ld	a5,-192(s0)
quickjs-nuttx/quickjs.c:15981
    rt->current_stack_frame = sf->prev_frame;
    800307a2:	fcf8                	sd	a4,248(s1)
quickjs-nuttx/quickjs.c:15982
    return ret_val;
    800307a4:	f4c43c23          	sd	a2,-168(s0)
    800307a8:	f4f43823          	sd	a5,-176(s0)
    800307ac:	b709                	j	800306ae <js_call_c_function+0x50>
quickjs-nuttx/quickjs.c:15907
                this_obj = JS_UNDEFINED;
    800307ae:	478d                	li	a5,3
    800307b0:	f0043823          	sd	zero,-240(s0)
    800307b4:	f0f43c23          	sd	a5,-232(s0)
quickjs-nuttx/quickjs.c:15913
        ret_val = func.generic(ctx, this_obj, argc, arg_buf);
    800307b8:	f1043583          	ld	a1,-240(s0)
    800307bc:	f1843603          	ld	a2,-232(s0)
    800307c0:	8552                	mv	a0,s4
    800307c2:	9902                	jalr	s2
    800307c4:	b7e1                	j	8003078c <js_call_c_function+0x12e>
quickjs-nuttx/quickjs.c:15917
        if (!(flags & JS_CALL_FLAG_CONSTRUCTOR)) {
    800307c6:	001b7893          	andi	a7,s6,1
    800307ca:	00089963          	bnez	a7,800307dc <js_call_c_function+0x17e>
quickjs-nuttx/quickjs.c:15918
            if (cproto == JS_CFUNC_constructor_magic) {
    800307ce:	478d                	li	a5,3
    800307d0:	fafb87e3          	beq	s7,a5,8003077e <js_call_c_function+0x120>
quickjs-nuttx/quickjs.c:15921
                this_obj = JS_UNDEFINED;
    800307d4:	f0043823          	sd	zero,-240(s0)
    800307d8:	f0f43c23          	sd	a5,-232(s0)
quickjs-nuttx/quickjs.c:15926
        ret_val = func.generic_magic(ctx, this_obj, argc, arg_buf,
    800307dc:	042a9783          	lh	a5,66(s5)
    800307e0:	f1043583          	ld	a1,-240(s0)
    800307e4:	f1843603          	ld	a2,-232(s0)
    800307e8:	8552                	mv	a0,s4
    800307ea:	9902                	jalr	s2
    800307ec:	b745                	j	8003078c <js_call_c_function+0x12e>
quickjs-nuttx/quickjs.c:15930
        ret_val = func.getter(ctx, this_obj);
    800307ee:	f1043583          	ld	a1,-240(s0)
    800307f2:	f1843603          	ld	a2,-232(s0)
    800307f6:	8552                	mv	a0,s4
    800307f8:	9902                	jalr	s2
    800307fa:	bf49                	j	8003078c <js_call_c_function+0x12e>
quickjs-nuttx/quickjs.c:15933
        ret_val = func.setter(ctx, this_obj, arg_buf[0]);
    800307fc:	6314                	ld	a3,0(a4)
    800307fe:	f1043583          	ld	a1,-240(s0)
    80030802:	6718                	ld	a4,8(a4)
    80030804:	f1843603          	ld	a2,-232(s0)
    80030808:	8552                	mv	a0,s4
    8003080a:	9902                	jalr	s2
    8003080c:	b741                	j	8003078c <js_call_c_function+0x12e>
quickjs-nuttx/quickjs.c:15936
        ret_val = func.getter_magic(ctx, this_obj, p->u.cfunc.magic);
    8003080e:	042a9683          	lh	a3,66(s5)
    80030812:	f1043583          	ld	a1,-240(s0)
    80030816:	f1843603          	ld	a2,-232(s0)
    8003081a:	8552                	mv	a0,s4
    8003081c:	9902                	jalr	s2
    8003081e:	b7bd                	j	8003078c <js_call_c_function+0x12e>
quickjs-nuttx/quickjs.c:15939
        ret_val = func.setter_magic(ctx, this_obj, arg_buf[0], p->u.cfunc.magic);
    80030820:	6314                	ld	a3,0(a4)
    80030822:	042a9783          	lh	a5,66(s5)
    80030826:	6718                	ld	a4,8(a4)
    80030828:	f1043583          	ld	a1,-240(s0)
    8003082c:	f1843603          	ld	a2,-232(s0)
    80030830:	8552                	mv	a0,s4
    80030832:	9902                	jalr	s2
    80030834:	bfa1                	j	8003078c <js_call_c_function+0x12e>
quickjs-nuttx/quickjs.c:15945
            if (unlikely(JS_ToFloat64(ctx, &d1, arg_buf[0]))) {
    80030836:	6310                	ld	a2,0(a4)
    80030838:	6714                	ld	a3,8(a4)
    8003083a:	f3840593          	addi	a1,s0,-200
    8003083e:	8552                	mv	a0,s4
    80030840:	efdf10ef          	jal	ra,8002273c <JS_ToFloat64>
    80030844:	c511                	beqz	a0,80030850 <js_call_c_function+0x1f2>
quickjs-nuttx/quickjs.c:15957
                ret_val = JS_EXCEPTION;
    80030846:	f4042223          	sw	zero,-188(s0)
quickjs-nuttx/quickjs.c:15958
                break;
    8003084a:	4619                	li	a2,6
    8003084c:	4781                	li	a5,0
    8003084e:	b7a1                	j	80030796 <js_call_c_function+0x138>
quickjs-nuttx/quickjs.c:15949
            ret_val = JS_NewFloat64(ctx, func.f_f(d1));
    80030850:	f3843507          	fld	fa0,-200(s0)
    80030854:	9902                	jalr	s2
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80030856:	c2051653          	fcvt.w.d	a2,fa0,rtz
js_call_c_function():
quickjs-nuttx/quickjs.c:15964
            ret_val = JS_NewFloat64(ctx, func.f_f_f(d1, d2));
    8003085a:	e2050753          	fmv.x.d	a4,fa0
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003085e:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80030862:	0006079b          	sext.w	a5,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80030866:	e2078653          	fmv.x.d	a2,fa5
    8003086a:	04c71663          	bne	a4,a2,800308b6 <js_call_c_function+0x258>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8003086e:	f4042a23          	sw	zero,-172(s0)
    80030872:	4601                	li	a2,0
quickjs-nuttx/quickjs.h:566
    return v;
    80030874:	f4f42823          	sw	a5,-176(s0)
    80030878:	f5043787          	fld	fa5,-176(s0)
    8003087c:	f4f43027          	fsd	fa5,-192(s0)
js_call_c_function():
quickjs-nuttx/quickjs.c:15966
        break;
    80030880:	bf19                	j	80030796 <js_call_c_function+0x138>
quickjs-nuttx/quickjs.c:15956
            if (unlikely(JS_ToFloat64(ctx, &d1, arg_buf[0]))) {
    80030882:	6310                	ld	a2,0(a4)
    80030884:	6714                	ld	a3,8(a4)
    80030886:	f3040593          	addi	a1,s0,-208
    8003088a:	8552                	mv	a0,s4
    8003088c:	f0e43423          	sd	a4,-248(s0)
    80030890:	eadf10ef          	jal	ra,8002273c <JS_ToFloat64>
    80030894:	f0843703          	ld	a4,-248(s0)
    80030898:	f55d                	bnez	a0,80030846 <js_call_c_function+0x1e8>
quickjs-nuttx/quickjs.c:15960
            if (unlikely(JS_ToFloat64(ctx, &d2, arg_buf[1]))) {
    8003089a:	6b10                	ld	a2,16(a4)
    8003089c:	6f14                	ld	a3,24(a4)
    8003089e:	f3840593          	addi	a1,s0,-200
    800308a2:	8552                	mv	a0,s4
    800308a4:	e99f10ef          	jal	ra,8002273c <JS_ToFloat64>
    800308a8:	fd59                	bnez	a0,80030846 <js_call_c_function+0x1e8>
quickjs-nuttx/quickjs.c:15964
            ret_val = JS_NewFloat64(ctx, func.f_f_f(d1, d2));
    800308aa:	f3843587          	fld	fa1,-200(s0)
    800308ae:	f3043507          	fld	fa0,-208(s0)
    800308b2:	9902                	jalr	s2
    800308b4:	b74d                	j	80030856 <js_call_c_function+0x1f8>
quickjs-nuttx/quickjs.h:230
    return v;
    800308b6:	f4a43827          	fsd	fa0,-176(s0)
    800308ba:	0007079b          	sext.w	a5,a4
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    800308be:	461d                	li	a2,7
    800308c0:	bf55                	j	80030874 <js_call_c_function+0x216>
js_call_c_function():
quickjs-nuttx/quickjs.c:15970
            ret_val = func.iterator_next(ctx, this_obj, argc, arg_buf,
    800308c2:	f1843603          	ld	a2,-232(s0)
    800308c6:	042a9803          	lh	a6,66(s5)
    800308ca:	f1043583          	ld	a1,-240(s0)
    800308ce:	f5040793          	addi	a5,s0,-176
    800308d2:	8552                	mv	a0,s4
    800308d4:	9902                	jalr	s2
    800308d6:	f4a43023          	sd	a0,-192(s0)
quickjs-nuttx/quickjs.c:15972
            if (!JS_IsException(ret_val) && done != 2) {
    800308da:	0005869b          	sext.w	a3,a1
    800308de:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:15970
            ret_val = func.iterator_next(ctx, this_obj, argc, arg_buf,
    800308e0:	0005079b          	sext.w	a5,a0
    800308e4:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:15972
            if (!JS_IsException(ret_val) && done != 2) {
    800308e6:	eae688e3          	beq	a3,a4,80030796 <js_call_c_function+0x138>
quickjs-nuttx/quickjs.c:15972 (discriminator 1)
    800308ea:	f5042683          	lw	a3,-176(s0)
    800308ee:	4709                	li	a4,2
    800308f0:	eae683e3          	beq	a3,a4,80030796 <js_call_c_function+0x138>
quickjs-nuttx/quickjs.c:15973
                ret_val = js_create_iterator_result(ctx, ret_val, done);
    800308f4:	85aa                	mv	a1,a0
    800308f6:	8552                	mv	a0,s4
    800308f8:	ca5ff0ef          	jal	ra,8003059c <js_create_iterator_result>
    800308fc:	bd41                	j	8003078c <js_call_c_function+0x12e>
quickjs-nuttx/quickjs.c:15978
        abort();
    800308fe:	284320ef          	jal	ra,80062b82 <abort>

0000000080030902 <js_function_set_properties>:
js_function_set_properties():
quickjs-nuttx/quickjs.c:4941
{
    80030902:	711d                	addi	sp,sp,-96
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80030904:	f802                	sd	zero,48(sp)
    80030906:	d83a                	sw	a4,48(sp)
js_function_set_properties():
quickjs-nuttx/quickjs.c:4943
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_length, JS_NewInt32(ctx, len),
    80030908:	7742                	ld	a4,48(sp)
quickjs-nuttx/quickjs.c:4941
{
    8003090a:	e4a6                	sd	s1,72(sp)
quickjs-nuttx/quickjs.c:4943
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_length, JS_NewInt32(ctx, len),
    8003090c:	4805                	li	a6,1
quickjs-nuttx/quickjs.c:4941
{
    8003090e:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:4943
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_length, JS_NewInt32(ctx, len),
    80030910:	4781                	li	a5,0
    80030912:	03000693          	li	a3,48
quickjs-nuttx/quickjs.c:4941
{
    80030916:	ec86                	sd	ra,88(sp)
    80030918:	e8a2                	sd	s0,80(sp)
    8003091a:	e432                	sd	a2,8(sp)
    8003091c:	842a                	mv	s0,a0
    8003091e:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:4943
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_length, JS_NewInt32(ctx, len),
    80030920:	90de70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:4945
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_name,
    80030924:	85a6                	mv	a1,s1
    80030926:	8522                	mv	a0,s0
    80030928:	9aaef0ef          	jal	ra,8001fad2 <JS_AtomToString>
    8003092c:	872a                	mv	a4,a0
    8003092e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:4947
}
    80030930:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:4945
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_name,
    80030932:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:4947
}
    80030934:	60e6                	ld	ra,88(sp)
    80030936:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:4945
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_name,
    80030938:	87ae                	mv	a5,a1
    8003093a:	6582                	ld	a1,0(sp)
    8003093c:	4805                	li	a6,1
    8003093e:	03700693          	li	a3,55
quickjs-nuttx/quickjs.c:4947
}
    80030942:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:4945
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_name,
    80030944:	8e9e706f          	j	8001822c <JS_DefinePropertyValue>

0000000080030948 <js_create_resolving_functions>:
js_create_resolving_functions():
quickjs-nuttx/quickjs.c:47869
{
    80030948:	7159                	addi	sp,sp,-112
    8003094a:	fc56                	sd	s5,56(sp)
    8003094c:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:47875
    sr = js_malloc(ctx, sizeof(*sr));
    8003094e:	45a1                	li	a1,8
quickjs-nuttx/quickjs.c:47869
{
    80030950:	eca6                	sd	s1,88(sp)
    80030952:	e8ca                	sd	s2,80(sp)
    80030954:	f486                	sd	ra,104(sp)
    80030956:	f0a2                	sd	s0,96(sp)
    80030958:	e4ce                	sd	s3,72(sp)
    8003095a:	e0d2                	sd	s4,64(sp)
    8003095c:	f85a                	sd	s6,48(sp)
    8003095e:	f45e                	sd	s7,40(sp)
    80030960:	f062                	sd	s8,32(sp)
    80030962:	84aa                	mv	s1,a0
    80030964:	e032                	sd	a2,0(sp)
    80030966:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:47875
    sr = js_malloc(ctx, sizeof(*sr));
    80030968:	f9ce90ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:47877
        return -1;
    8003096c:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:47876
    if (!sr)
    8003096e:	c535                	beqz	a0,800309da <js_create_resolving_functions+0x92>
quickjs-nuttx/quickjs.c:47878
    sr->ref_count = 1;
    80030970:	4785                	li	a5,1
    80030972:	842a                	mv	s0,a0
    80030974:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:47879
    sr->already_resolved = FALSE; /* must be shared between the two functions */
    80030976:	00052223          	sw	zero,4(a0)
    8003097a:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:47884
        if (JS_IsException(obj))
    8003097c:	4b19                	li	s6,6
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8003097e:	5bfd                	li	s7,-1
js_create_resolving_functions():
quickjs-nuttx/quickjs.c:47882
        obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    80030980:	64ac                	ld	a1,72(s1)
    80030982:	68b0                	ld	a2,80(s1)
    80030984:	032a0693          	addi	a3,s4,50 # 110032 <asinh-0x7feeffce>
    80030988:	8526                	mv	a0,s1
    8003098a:	a5aeb0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8003098e:	e82a                	sd	a0,16(sp)
    80030990:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80030992:	0005899b          	sext.w	s3,a1
    80030996:	000a0c1b          	sext.w	s8,s4
js_create_resolving_functions():
quickjs-nuttx/quickjs.c:47884
        if (JS_IsException(obj))
    8003099a:	01698d63          	beq	s3,s6,800309b4 <js_create_resolving_functions+0x6c>
quickjs-nuttx/quickjs.c:47886
        s = js_malloc(ctx, sizeof(*s));
    8003099e:	45e1                	li	a1,24
    800309a0:	8526                	mv	a0,s1
    800309a2:	f62e90ef          	jal	ra,8001a104 <js_malloc>
    800309a6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:47887
        if (!s) {
    800309a8:	e921                	bnez	a0,800309f8 <js_create_resolving_functions+0xb0>
quickjs-nuttx/quickjs.c:47888
            JS_FreeValue(ctx, obj);
    800309aa:	65c2                	ld	a1,16(sp)
    800309ac:	6662                	ld	a2,24(sp)
    800309ae:	8526                	mv	a0,s1
    800309b0:	defda0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47893
            ret = -1;
    800309b4:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:47891
            if (i != 0)
    800309b6:	000c0963          	beqz	s8,800309c8 <js_create_resolving_functions+0x80>
quickjs-nuttx/quickjs.c:47892
                JS_FreeValue(ctx, resolving_funcs[0]);
    800309ba:	000ab583          	ld	a1,0(s5)
    800309be:	008ab603          	ld	a2,8(s5)
    800309c2:	8526                	mv	a0,s1
    800309c4:	ddbda0ef          	jal	ra,8000b79e <JS_FreeValue>
js_promise_resolve_function_free_resolved():
quickjs-nuttx/quickjs.c:47860
    if (--sr->ref_count == 0) {
    800309c8:	401c                	lw	a5,0(s0)
js_create_resolving_functions():
quickjs-nuttx/quickjs.c:47903
    js_promise_resolve_function_free_resolved(ctx->rt, sr);
    800309ca:	6c88                	ld	a0,24(s1)
js_promise_resolve_function_free_resolved():
quickjs-nuttx/quickjs.c:47860
    if (--sr->ref_count == 0) {
    800309cc:	fff7871b          	addiw	a4,a5,-1
    800309d0:	c018                	sw	a4,0(s0)
    800309d2:	e701                	bnez	a4,800309da <js_create_resolving_functions+0x92>
quickjs-nuttx/quickjs.c:47861
        js_free_rt(rt, sr);
    800309d4:	85a2                	mv	a1,s0
    800309d6:	80ada0ef          	jal	ra,8000a9e0 <js_free_rt>
js_create_resolving_functions():
quickjs-nuttx/quickjs.c:47905
}
    800309da:	70a6                	ld	ra,104(sp)
    800309dc:	7406                	ld	s0,96(sp)
    800309de:	64e6                	ld	s1,88(sp)
    800309e0:	69a6                	ld	s3,72(sp)
    800309e2:	6a06                	ld	s4,64(sp)
    800309e4:	7ae2                	ld	s5,56(sp)
    800309e6:	7b42                	ld	s6,48(sp)
    800309e8:	7ba2                	ld	s7,40(sp)
    800309ea:	7c02                	ld	s8,32(sp)
    800309ec:	854a                	mv	a0,s2
    800309ee:	6946                	ld	s2,80(sp)
    800309f0:	6165                	addi	sp,sp,112
    800309f2:	8082                	ret
    800309f4:	4a05                	li	s4,1
    800309f6:	b769                	j	80030980 <js_create_resolving_functions+0x38>
quickjs-nuttx/quickjs.c:47896 (discriminator 2)
        sr->ref_count++;
    800309f8:	401c                	lw	a5,0(s0)
quickjs-nuttx/quickjs.c:47898 (discriminator 2)
        s->promise = JS_DupValue(ctx, promise);
    800309fa:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:47896 (discriminator 2)
        sr->ref_count++;
    800309fc:	2785                	addiw	a5,a5,1
    800309fe:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:47897 (discriminator 2)
        s->presolved = sr;
    80030a00:	e900                	sd	s0,16(a0)
quickjs-nuttx/quickjs.c:47898 (discriminator 2)
        s->promise = JS_DupValue(ctx, promise);
    80030a02:	6502                	ld	a0,0(sp)
    80030a04:	a17d90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80030a08:	00a93023          	sd	a0,0(s2)
    80030a0c:	00b93423          	sd	a1,8(s2)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809 (discriminator 2)
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80030a10:	01799563          	bne	s3,s7,80030a1a <js_create_resolving_functions+0xd2>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    80030a14:	67c2                	ld	a5,16(sp)
    80030a16:	0327b823          	sd	s2,48(a5) # ffffffff80000030 <_ebss+0xfffffffeffefeeca>
js_create_resolving_functions():
quickjs-nuttx/quickjs.c:47900
        js_function_set_properties(ctx, obj, JS_ATOM_empty_string, 1);
    80030a1a:	65c2                	ld	a1,16(sp)
    80030a1c:	6662                	ld	a2,24(sp)
    80030a1e:	4705                	li	a4,1
    80030a20:	02f00693          	li	a3,47
    80030a24:	8526                	mv	a0,s1
    80030a26:	eddff0ef          	jal	ra,80030902 <js_function_set_properties>
quickjs-nuttx/quickjs.c:47901
        resolving_funcs[i] = obj;
    80030a2a:	6742                	ld	a4,16(sp)
    80030a2c:	004a1793          	slli	a5,s4,0x4
    80030a30:	97d6                	add	a5,a5,s5
    80030a32:	e398                	sd	a4,0(a5)
    80030a34:	6762                	ld	a4,24(sp)
    80030a36:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:47881
    for(i = 0; i < 2; i++) {
    80030a38:	fa0a0ee3          	beqz	s4,800309f4 <js_create_resolving_functions+0xac>
quickjs-nuttx/quickjs.c:47880
    ret = 0;
    80030a3c:	4901                	li	s2,0
    80030a3e:	b769                	j	800309c8 <js_create_resolving_functions+0x80>

0000000080030a40 <JS_NewCFunction3>:
JS_NewCFunction3():
quickjs-nuttx/quickjs.c:5034
{
    80030a40:	7119                	addi	sp,sp,-128
    80030a42:	e8d2                	sd	s4,80(sp)
    80030a44:	e4d6                	sd	s5,72(sp)
    80030a46:	fc5e                	sd	s7,56(sp)
    80030a48:	8a32                	mv	s4,a2
    80030a4a:	8bae                	mv	s7,a1
    80030a4c:	8ab6                	mv	s5,a3
quickjs-nuttx/quickjs.c:5039
    func_obj = JS_NewObjectProtoClass(ctx, proto_val, JS_CLASS_C_FUNCTION);
    80030a4e:	85c2                	mv	a1,a6
    80030a50:	46b1                	li	a3,12
    80030a52:	8646                	mv	a2,a7
quickjs-nuttx/quickjs.c:5034
{
    80030a54:	f8a2                	sd	s0,112(sp)
    80030a56:	f4a6                	sd	s1,104(sp)
    80030a58:	f0ca                	sd	s2,96(sp)
    80030a5a:	ecce                	sd	s3,88(sp)
    80030a5c:	e0da                	sd	s6,64(sp)
    80030a5e:	84ba                	mv	s1,a4
    80030a60:	8b3e                	mv	s6,a5
    80030a62:	fc86                	sd	ra,120(sp)
    80030a64:	892a                	mv	s2,a0
    80030a66:	e042                	sd	a6,0(sp)
    80030a68:	e446                	sd	a7,8(sp)
quickjs-nuttx/quickjs.c:5039
    func_obj = JS_NewObjectProtoClass(ctx, proto_val, JS_CLASS_C_FUNCTION);
    80030a6a:	97aeb0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    80030a6e:	e82a                	sd	a0,16(sp)
    80030a70:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:5040
    if (JS_IsException(func_obj))
    80030a72:	0005871b          	sext.w	a4,a1
    80030a76:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:5039
    func_obj = JS_NewObjectProtoClass(ctx, proto_val, JS_CLASS_C_FUNCTION);
    80030a78:	842a                	mv	s0,a0
    80030a7a:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:5040
    if (JS_IsException(func_obj))
    80030a7c:	02f71163          	bne	a4,a5,80030a9e <JS_NewCFunction3+0x5e>
quickjs-nuttx/quickjs.c:5057
    return func_obj;
    80030a80:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:5058
}
    80030a82:	70e6                	ld	ra,120(sp)
    80030a84:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:5057
    return func_obj;
    80030a86:	f44e                	sd	s3,40(sp)
quickjs-nuttx/quickjs.c:5058
}
    80030a88:	7502                	ld	a0,32(sp)
    80030a8a:	75a2                	ld	a1,40(sp)
    80030a8c:	74a6                	ld	s1,104(sp)
    80030a8e:	7906                	ld	s2,96(sp)
    80030a90:	69e6                	ld	s3,88(sp)
    80030a92:	6a46                	ld	s4,80(sp)
    80030a94:	6aa6                	ld	s5,72(sp)
    80030a96:	6b06                	ld	s6,64(sp)
    80030a98:	7be2                	ld	s7,56(sp)
    80030a9a:	6109                	addi	sp,sp,128
    80030a9c:	8082                	ret
JS_DupContext():
quickjs-nuttx/quickjs.c:2232
    ctx->header.ref_count++;
    80030a9e:	00092783          	lw	a5,0(s2)
    80030aa2:	2785                	addiw	a5,a5,1
    80030aa4:	00f92023          	sw	a5,0(s2)
JS_NewCFunction3():
quickjs-nuttx/quickjs.c:5048
    p->is_constructor = (cproto == JS_CFUNC_constructor ||
    80030aa8:	00554783          	lbu	a5,5(a0)
quickjs-nuttx/quickjs.c:5046
    p->u.cfunc.cproto = cproto;
    80030aac:	049500a3          	sb	s1,65(a0)
quickjs-nuttx/quickjs.c:5050
                         cproto == JS_CFUNC_constructor_or_func ||
    80030ab0:	34f9                	addiw	s1,s1,-2
quickjs-nuttx/quickjs.c:5048
    p->is_constructor = (cproto == JS_CFUNC_constructor ||
    80030ab2:	0044b493          	sltiu	s1,s1,4
    80030ab6:	0044949b          	slliw	s1,s1,0x4
    80030aba:	9bbd                	andi	a5,a5,-17
    80030abc:	8cdd                	or	s1,s1,a5
quickjs-nuttx/quickjs.c:5043
    p->u.cfunc.realm = JS_DupContext(ctx);
    80030abe:	03253823          	sd	s2,48(a0)
quickjs-nuttx/quickjs.c:5044
    p->u.cfunc.c_function.generic = func;
    80030ac2:	03753c23          	sd	s7,56(a0)
quickjs-nuttx/quickjs.c:5045
    p->u.cfunc.length = length;
    80030ac6:	05550023          	sb	s5,64(a0)
quickjs-nuttx/quickjs.c:5047
    p->u.cfunc.magic = magic;
    80030aca:	05651123          	sh	s6,66(a0)
quickjs-nuttx/quickjs.c:5048
    p->is_constructor = (cproto == JS_CFUNC_constructor ||
    80030ace:	009502a3          	sb	s1,5(a0)
quickjs-nuttx/quickjs.c:5052
    if (!name)
    80030ad2:	000a1663          	bnez	s4,80030ade <JS_NewCFunction3+0x9e>
quickjs-nuttx/quickjs.c:5053
        name = "";
    80030ad6:	00039a17          	auipc	s4,0x39
    80030ada:	0b2a0a13          	addi	s4,s4,178 # 80069b88 <qjsc_repl+0x45d8>
quickjs-nuttx/quickjs.c:5054
    name_atom = JS_NewAtom(ctx, name);
    80030ade:	85d2                	mv	a1,s4
    80030ae0:	854a                	mv	a0,s2
    80030ae2:	cd8ee0ef          	jal	ra,8001efba <JS_NewAtom>
quickjs-nuttx/quickjs.c:5055
    js_function_set_properties(ctx, func_obj, name_atom, length);
    80030ae6:	65c2                	ld	a1,16(sp)
    80030ae8:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:5054
    name_atom = JS_NewAtom(ctx, name);
    80030aea:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:5055
    js_function_set_properties(ctx, func_obj, name_atom, length);
    80030aee:	8756                	mv	a4,s5
    80030af0:	854a                	mv	a0,s2
    80030af2:	86a6                	mv	a3,s1
    80030af4:	e0fff0ef          	jal	ra,80030902 <js_function_set_properties>
quickjs-nuttx/quickjs.c:5056
    JS_FreeAtom(ctx, name_atom);
    80030af8:	85a6                	mv	a1,s1
    80030afa:	854a                	mv	a0,s2
    80030afc:	e4cda0ef          	jal	ra,8000b148 <JS_FreeAtom>
    80030b00:	b741                	j	80030a80 <JS_NewCFunction3+0x40>

0000000080030b02 <JS_NewCFunction2>:
JS_NewCFunction2():
quickjs-nuttx/quickjs.c:5065
    return JS_NewCFunction3(ctx, func, name, length, cproto, magic,
    80030b02:	04853803          	ld	a6,72(a0)
    80030b06:	05053883          	ld	a7,80(a0)
quickjs-nuttx/quickjs.c:5064
{
    80030b0a:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:5067
}
    80030b0c:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5065
    return JS_NewCFunction3(ctx, func, name, length, cproto, magic,
    80030b0e:	f33ff06f          	j	80030a40 <JS_NewCFunction3>

0000000080030b12 <JS_NewCFunctionData>:
JS_NewCFunctionData():
quickjs-nuttx/quickjs.c:5128
{
    80030b12:	7119                	addi	sp,sp,-128
    80030b14:	f4a6                	sd	s1,104(sp)
    80030b16:	f0ca                	sd	s2,96(sp)
    80030b18:	ecce                	sd	s3,88(sp)
    80030b1a:	e8d2                	sd	s4,80(sp)
    80030b1c:	e4d6                	sd	s5,72(sp)
    80030b1e:	e0da                	sd	s6,64(sp)
    80030b20:	fc5e                	sd	s7,56(sp)
    80030b22:	f862                	sd	s8,48(sp)
    80030b24:	f466                	sd	s9,40(sp)
    80030b26:	f06a                	sd	s10,32(sp)
    80030b28:	fc86                	sd	ra,120(sp)
    80030b2a:	f8a2                	sd	s0,112(sp)
    80030b2c:	8cae                	mv	s9,a1
    80030b2e:	8ab2                	mv	s5,a2
quickjs-nuttx/quickjs.c:5133
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    80030b30:	652c                	ld	a1,72(a0)
    80030b32:	6930                	ld	a2,80(a0)
quickjs-nuttx/quickjs.c:5128
{
    80030b34:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:5133
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    80030b36:	46bd                	li	a3,15
quickjs-nuttx/quickjs.c:5128
{
    80030b38:	8c2a                	mv	s8,a0
    80030b3a:	8a3a                	mv	s4,a4
    80030b3c:	8b3e                	mv	s6,a5
quickjs-nuttx/quickjs.c:5133
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    80030b3e:	8a6eb0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    80030b42:	e02a                	sd	a0,0(sp)
    80030b44:	e42e                	sd	a1,8(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80030b46:	00058b9b          	sext.w	s7,a1
JS_NewCFunctionData():
quickjs-nuttx/quickjs.c:5135
    if (JS_IsException(func_obj))
    80030b4a:	4d19                	li	s10,6
quickjs-nuttx/quickjs.c:5133
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    80030b4c:	89aa                	mv	s3,a0
    80030b4e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:5135
    if (JS_IsException(func_obj))
    80030b50:	01ab9563          	bne	s7,s10,80030b5a <JS_NewCFunctionData+0x48>
quickjs-nuttx/quickjs.c:5151
    return func_obj;
    80030b54:	e84e                	sd	s3,16(sp)
    80030b56:	ec4a                	sd	s2,24(sp)
    80030b58:	a005                	j	80030b78 <JS_NewCFunctionData+0x66>
quickjs-nuttx/quickjs.c:5137
    s = js_malloc(ctx, sizeof(*s) + data_len * sizeof(JSValue));
    80030b5a:	001a0593          	addi	a1,s4,1
    80030b5e:	0592                	slli	a1,a1,0x4
    80030b60:	8562                	mv	a0,s8
    80030b62:	da2e90ef          	jal	ra,8001a104 <js_malloc>
    80030b66:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:5138
    if (!s) {
    80030b68:	e905                	bnez	a0,80030b98 <JS_NewCFunctionData+0x86>
quickjs-nuttx/quickjs.c:5139
        JS_FreeValue(ctx, func_obj);
    80030b6a:	6582                	ld	a1,0(sp)
    80030b6c:	6622                	ld	a2,8(sp)
    80030b6e:	8562                	mv	a0,s8
    80030b70:	c2fda0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:5140
        return JS_EXCEPTION;
    80030b74:	e802                	sd	zero,16(sp)
    80030b76:	ec6a                	sd	s10,24(sp)
quickjs-nuttx/quickjs.c:5152 (discriminator 1)
}
    80030b78:	70e6                	ld	ra,120(sp)
    80030b7a:	7446                	ld	s0,112(sp)
    80030b7c:	6542                	ld	a0,16(sp)
    80030b7e:	65e2                	ld	a1,24(sp)
    80030b80:	74a6                	ld	s1,104(sp)
    80030b82:	7906                	ld	s2,96(sp)
    80030b84:	69e6                	ld	s3,88(sp)
    80030b86:	6a46                	ld	s4,80(sp)
    80030b88:	6aa6                	ld	s5,72(sp)
    80030b8a:	6b06                	ld	s6,64(sp)
    80030b8c:	7be2                	ld	s7,56(sp)
    80030b8e:	7c42                	ld	s8,48(sp)
    80030b90:	7ca2                	ld	s9,40(sp)
    80030b92:	7d02                	ld	s10,32(sp)
    80030b94:	6109                	addi	sp,sp,128
    80030b96:	8082                	ret
quickjs-nuttx/quickjs.c:5142
    s->func = func;
    80030b98:	01953023          	sd	s9,0(a0)
quickjs-nuttx/quickjs.c:5143
    s->length = length;
    80030b9c:	01550423          	sb	s5,8(a0)
quickjs-nuttx/quickjs.c:5144
    s->data_len = data_len;
    80030ba0:	014504a3          	sb	s4,9(a0)
quickjs-nuttx/quickjs.c:5145
    s->magic = magic;
    80030ba4:	00951523          	sh	s1,10(a0)
quickjs-nuttx/quickjs.c:5146
    for(i = 0; i < data_len; i++)
    80030ba8:	4c81                	li	s9,0
    80030baa:	000c849b          	sext.w	s1,s9
quickjs-nuttx/quickjs.c:5146 (discriminator 1)
    80030bae:	0344c063          	blt	s1,s4,80030bce <JS_NewCFunctionData+0xbc>
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80030bb2:	57fd                	li	a5,-1
    80030bb4:	00fb9463          	bne	s7,a5,80030bbc <JS_NewCFunctionData+0xaa>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    80030bb8:	0289b823          	sd	s0,48(s3)
JS_NewCFunctionData():
quickjs-nuttx/quickjs.c:5149
    js_function_set_properties(ctx, func_obj,
    80030bbc:	6582                	ld	a1,0(sp)
    80030bbe:	6622                	ld	a2,8(sp)
    80030bc0:	8756                	mv	a4,s5
    80030bc2:	02f00693          	li	a3,47
    80030bc6:	8562                	mv	a0,s8
    80030bc8:	d3bff0ef          	jal	ra,80030902 <js_function_set_properties>
    80030bcc:	b761                	j	80030b54 <JS_NewCFunctionData+0x42>
quickjs-nuttx/quickjs.c:5147 (discriminator 3)
        s->data[i] = JS_DupValue(ctx, data[i]);
    80030bce:	004c9793          	slli	a5,s9,0x4
    80030bd2:	97da                	add	a5,a5,s6
    80030bd4:	6388                	ld	a0,0(a5)
    80030bd6:	678c                	ld	a1,8(a5)
    80030bd8:	0485                	addi	s1,s1,1
    80030bda:	0492                	slli	s1,s1,0x4
    80030bdc:	94a2                	add	s1,s1,s0
    80030bde:	83dd90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80030be2:	e088                	sd	a0,0(s1)
    80030be4:	e48c                	sd	a1,8(s1)
quickjs-nuttx/quickjs.c:5146 (discriminator 3)
    for(i = 0; i < data_len; i++)
    80030be6:	0c85                	addi	s9,s9,1
    80030be8:	b7c9                	j	80030baa <JS_NewCFunctionData+0x98>

0000000080030bea <js_async_generator_resolve_function_create.constprop.0>:
js_async_generator_resolve_function_create():
quickjs-nuttx/quickjs.c:19278
static int js_async_generator_resolve_function_create(JSContext *ctx,
    80030bea:	711d                	addi	sp,sp,-96
    80030bec:	e8a2                	sd	s0,80(sp)
    80030bee:	e4a6                	sd	s1,72(sp)
    80030bf0:	e0ca                	sd	s2,64(sp)
    80030bf2:	fc4e                	sd	s3,56(sp)
    80030bf4:	f852                	sd	s4,48(sp)
    80030bf6:	f456                	sd	s5,40(sp)
    80030bf8:	ec86                	sd	ra,88(sp)
    80030bfa:	f05a                	sd	s6,32(sp)
    80030bfc:	89aa                	mv	s3,a0
    80030bfe:	e02e                	sd	a1,0(sp)
    80030c00:	e432                	sd	a2,8(sp)
    80030c02:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:19288
                                   i + is_resume_next * 2, 1, &generator);
    80030c04:	0017191b          	slliw	s2,a4,0x1
    80030c08:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:19287
        func = JS_NewCFunctionData(ctx, js_async_generator_resolve_function, 1,
    80030c0a:	00019a97          	auipc	s5,0x19
    80030c0e:	940a8a93          	addi	s5,s5,-1728 # 8004954a <js_async_generator_resolve_function>
quickjs-nuttx/quickjs.c:19289
        if (JS_IsException(func)) {
    80030c12:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:19287
        func = JS_NewCFunctionData(ctx, js_async_generator_resolve_function, 1,
    80030c14:	878a                	mv	a5,sp
    80030c16:	4705                	li	a4,1
    80030c18:	012406bb          	addw	a3,s0,s2
    80030c1c:	4605                	li	a2,1
    80030c1e:	85d6                	mv	a1,s5
    80030c20:	854e                	mv	a0,s3
    80030c22:	ef1ff0ef          	jal	ra,80030b12 <JS_NewCFunctionData>
quickjs-nuttx/quickjs.c:19289
        if (JS_IsException(func)) {
    80030c26:	0005879b          	sext.w	a5,a1
    80030c2a:	00040b1b          	sext.w	s6,s0
    80030c2e:	03479763          	bne	a5,s4,80030c5c <js_async_generator_resolve_function_create.constprop.0+0x72>
quickjs-nuttx/quickjs.c:19292
            return -1;
    80030c32:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:19290
            if (i == 1)
    80030c34:	000b0763          	beqz	s6,80030c42 <js_async_generator_resolve_function_create.constprop.0+0x58>
quickjs-nuttx/quickjs.c:19291
                JS_FreeValue(ctx, resolving_funcs[0]);
    80030c38:	608c                	ld	a1,0(s1)
    80030c3a:	6490                	ld	a2,8(s1)
    80030c3c:	854e                	mv	a0,s3
    80030c3e:	b61da0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19297
}
    80030c42:	60e6                	ld	ra,88(sp)
    80030c44:	8522                	mv	a0,s0
    80030c46:	6446                	ld	s0,80(sp)
    80030c48:	64a6                	ld	s1,72(sp)
    80030c4a:	6906                	ld	s2,64(sp)
    80030c4c:	79e2                	ld	s3,56(sp)
    80030c4e:	7a42                	ld	s4,48(sp)
    80030c50:	7aa2                	ld	s5,40(sp)
    80030c52:	7b02                	ld	s6,32(sp)
    80030c54:	6125                	addi	sp,sp,96
    80030c56:	8082                	ret
    80030c58:	4405                	li	s0,1
    80030c5a:	bf6d                	j	80030c14 <js_async_generator_resolve_function_create.constprop.0+0x2a>
quickjs-nuttx/quickjs.c:19294
        resolving_funcs[i] = func;
    80030c5c:	00441793          	slli	a5,s0,0x4
    80030c60:	97a6                	add	a5,a5,s1
    80030c62:	e388                	sd	a0,0(a5)
    80030c64:	e78c                	sd	a1,8(a5)
quickjs-nuttx/quickjs.c:19286
    for(i = 0; i < 2; i++) {
    80030c66:	d86d                	beqz	s0,80030c58 <js_async_generator_resolve_function_create.constprop.0+0x6e>
quickjs-nuttx/quickjs.c:19296
    return 0;
    80030c68:	4401                	li	s0,0
    80030c6a:	bfe1                	j	80030c42 <js_async_generator_resolve_function_create.constprop.0+0x58>

0000000080030c6c <js_closure>:
js_closure():
quickjs-nuttx/quickjs.c:15652
{
    80030c6c:	7119                	addi	sp,sp,-128
    80030c6e:	f8a2                	sd	s0,112(sp)
    80030c70:	f4a6                	sd	s1,104(sp)
    80030c72:	f0ca                	sd	s2,96(sp)
    80030c74:	ecce                	sd	s3,88(sp)
    80030c76:	e4d6                	sd	s5,72(sp)
    80030c78:	fc86                	sd	ra,120(sp)
    80030c7a:	e8d2                	sd	s4,80(sp)
    80030c7c:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:15658
    func_obj = JS_NewObjectClass(ctx, func_kind_to_class_id[b->func_kind]);
    80030c7e:	6d90                	ld	a2,24(a1)
quickjs-nuttx/quickjs.c:15652
{
    80030c80:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:15658
    func_obj = JS_NewObjectClass(ctx, func_kind_to_class_id[b->func_kind]);
    80030c82:	00063717          	auipc	a4,0x63
    80030c86:	55e70713          	addi	a4,a4,1374 # 800941e0 <func_kind_to_class_id>
    80030c8a:	822d                	srli	a2,a2,0xb
    80030c8c:	8a19                	andi	a2,a2,6
    80030c8e:	963a                	add	a2,a2,a4
quickjs-nuttx/quickjs.c:15652
{
    80030c90:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:15657
    b = JS_VALUE_GET_PTR(bfunc);
    80030c92:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:15658
    func_obj = JS_NewObjectClass(ctx, func_kind_to_class_id[b->func_kind]);
    80030c94:	00065583          	lhu	a1,0(a2)
quickjs-nuttx/quickjs.c:15652
{
    80030c98:	842a                	mv	s0,a0
    80030c9a:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:15658
    func_obj = JS_NewObjectClass(ctx, func_kind_to_class_id[b->func_kind]);
    80030c9c:	a70eb0ef          	jal	ra,8001bf0c <JS_NewObjectClass>
quickjs-nuttx/quickjs.c:15659
    if (JS_IsException(func_obj)) {
    80030ca0:	0005899b          	sext.w	s3,a1
    80030ca4:	4a99                	li	s5,6
    80030ca6:	67a2                	ld	a5,8(sp)
    80030ca8:	03599463          	bne	s3,s5,80030cd0 <js_closure+0x64>
quickjs-nuttx/quickjs.c:15660
        JS_FreeValue(ctx, bfunc);
    80030cac:	65c2                	ld	a1,16(sp)
    80030cae:	6662                	ld	a2,24(sp)
    80030cb0:	8522                	mv	a0,s0
    80030cb2:	aedda0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15661
        return JS_EXCEPTION;
    80030cb6:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:15697
    return func_obj;
    80030cb8:	fc4e                	sd	s3,56(sp)
quickjs-nuttx/quickjs.c:15702 (discriminator 1)
}
    80030cba:	70e6                	ld	ra,120(sp)
    80030cbc:	7446                	ld	s0,112(sp)
    80030cbe:	7542                	ld	a0,48(sp)
    80030cc0:	75e2                	ld	a1,56(sp)
    80030cc2:	74a6                	ld	s1,104(sp)
    80030cc4:	7906                	ld	s2,96(sp)
    80030cc6:	69e6                	ld	s3,88(sp)
    80030cc8:	6a46                	ld	s4,80(sp)
    80030cca:	6aa6                	ld	s5,72(sp)
    80030ccc:	6109                	addi	sp,sp,128
    80030cce:	8082                	ret
    80030cd0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:15663
    func_obj = js_closure2(ctx, func_obj, b, cur_var_refs, sf);
    80030cd2:	874a                	mv	a4,s2
    80030cd4:	85aa                	mv	a1,a0
    80030cd6:	86a6                	mv	a3,s1
    80030cd8:	8522                	mv	a0,s0
    80030cda:	dd6ea0ef          	jal	ra,8001b2b0 <js_closure2>
    80030cde:	f02a                	sd	a0,32(sp)
    80030ce0:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80030ce2:	00058a1b          	sext.w	s4,a1
js_closure():
quickjs-nuttx/quickjs.c:15663
    80030ce6:	892a                	mv	s2,a0
    80030ce8:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:15664
    if (JS_IsException(func_obj)) {
    80030cea:	095a0e63          	beq	s4,s5,80030d86 <js_closure+0x11a>
quickjs-nuttx/quickjs.c:15668
    name_atom = b->func_name;
    80030cee:	54d4                	lw	a3,44(s1)
quickjs-nuttx/quickjs.c:15669
    if (name_atom == JS_ATOM_NULL)
    80030cf0:	e299                	bnez	a3,80030cf6 <js_closure+0x8a>
quickjs-nuttx/quickjs.c:15670
        name_atom = JS_ATOM_empty_string;
    80030cf2:	02f00693          	li	a3,47
quickjs-nuttx/quickjs.c:15671
    js_function_set_properties(ctx, func_obj, name_atom,
    80030cf6:	0444d703          	lhu	a4,68(s1)
    80030cfa:	7582                	ld	a1,32(sp)
    80030cfc:	7622                	ld	a2,40(sp)
    80030cfe:	8522                	mv	a0,s0
    80030d00:	c03ff0ef          	jal	ra,80030902 <js_function_set_properties>
quickjs-nuttx/quickjs.c:15674
    if (b->func_kind & JS_FUNC_GENERATOR) {
    80030d04:	6c98                	ld	a4,24(s1)
    80030d06:	0194c783          	lbu	a5,25(s1)
    80030d0a:	8331                	srli	a4,a4,0xc
    80030d0c:	8b05                	andi	a4,a4,1
    80030d0e:	c731                	beqz	a4,80030d5a <js_closure+0xee>
quickjs-nuttx/quickjs.c:15679
        if (b->func_kind == JS_FUNC_ASYNC_GENERATOR)
    80030d10:	0307f793          	andi	a5,a5,48
    80030d14:	03000693          	li	a3,48
quickjs-nuttx/quickjs.c:15680
            proto_class_id = JS_CLASS_ASYNC_GENERATOR;
    80030d18:	03900713          	li	a4,57
quickjs-nuttx/quickjs.c:15679
        if (b->func_kind == JS_FUNC_ASYNC_GENERATOR)
    80030d1c:	00d78463          	beq	a5,a3,80030d24 <js_closure+0xb8>
quickjs-nuttx/quickjs.c:15682
            proto_class_id = JS_CLASS_GENERATOR;
    80030d20:	02f00713          	li	a4,47
quickjs-nuttx/quickjs.c:15683
        proto = JS_NewObjectProto(ctx, ctx->class_proto[proto_class_id]);
    80030d24:	603c                	ld	a5,64(s0)
    80030d26:	0712                	slli	a4,a4,0x4
    80030d28:	8522                	mv	a0,s0
    80030d2a:	97ba                	add	a5,a5,a4
    80030d2c:	6790                	ld	a2,8(a5)
    80030d2e:	638c                	ld	a1,0(a5)
    80030d30:	a9aeb0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    80030d34:	f82a                	sd	a0,48(sp)
    80030d36:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:15684
        if (JS_IsException(proto))
    80030d38:	0005861b          	sext.w	a2,a1
    80030d3c:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:15683
        proto = JS_NewObjectProto(ctx, ctx->class_proto[proto_class_id]);
    80030d3e:	872a                	mv	a4,a0
    80030d40:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:15684
        if (JS_IsException(proto))
    80030d42:	04d60263          	beq	a2,a3,80030d86 <js_closure+0x11a>
quickjs-nuttx/quickjs.c:15686
        JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_prototype, proto,
    80030d46:	7582                	ld	a1,32(sp)
    80030d48:	7622                	ld	a2,40(sp)
    80030d4a:	4809                	li	a6,2
    80030d4c:	03c00693          	li	a3,60
    80030d50:	8522                	mv	a0,s0
    80030d52:	cdae70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:15697
    return func_obj;
    80030d56:	f84a                	sd	s2,48(sp)
    80030d58:	b785                	j	80030cb8 <js_closure+0x4c>
quickjs-nuttx/quickjs.c:15688
    } else if (b->has_prototype) {
    80030d5a:	8b85                	andi	a5,a5,1
    80030d5c:	dfed                	beqz	a5,80030d56 <js_closure+0xea>
JS_SetConstructorBit():
quickjs-nuttx/quickjs.c:9765
    if (JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)
    80030d5e:	57fd                	li	a5,-1
    80030d60:	00fa1863          	bne	s4,a5,80030d70 <js_closure+0x104>
quickjs-nuttx/quickjs.c:9768
    p->is_constructor = val;
    80030d64:	00594783          	lbu	a5,5(s2)
    80030d68:	0107e793          	ori	a5,a5,16
    80030d6c:	00f902a3          	sb	a5,5(s2)
js_closure():
quickjs-nuttx/quickjs.c:15693
        JS_DefineAutoInitProperty(ctx, func_obj, JS_ATOM_prototype,
    80030d70:	7582                	ld	a1,32(sp)
    80030d72:	7622                	ld	a2,40(sp)
    80030d74:	4809                	li	a6,2
    80030d76:	4781                	li	a5,0
    80030d78:	4701                	li	a4,0
    80030d7a:	03c00693          	li	a3,60
    80030d7e:	8522                	mv	a0,s0
    80030d80:	c3bea0ef          	jal	ra,8001b9ba <JS_DefineAutoInitProperty>
    80030d84:	bfc9                	j	80030d56 <js_closure+0xea>
quickjs-nuttx/quickjs.c:15700
    JS_FreeValue(ctx, func_obj);
    80030d86:	7582                	ld	a1,32(sp)
    80030d88:	7622                	ld	a2,40(sp)
    80030d8a:	8522                	mv	a0,s0
    80030d8c:	a13da0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15701
    return JS_EXCEPTION;
    80030d90:	4799                	li	a5,6
    80030d92:	f802                	sd	zero,48(sp)
    80030d94:	fc3e                	sd	a5,56(sp)
    80030d96:	b715                	j	80030cba <js_closure+0x4e>

0000000080030d98 <JS_DefinePropertyValueValue>:
JS_DefinePropertyValueValue():
quickjs-nuttx/quickjs.c:9349
{
    80030d98:	711d                	addi	sp,sp,-96
    80030d9a:	f82e                	sd	a1,48(sp)
    80030d9c:	fc32                	sd	a2,56(sp)
quickjs-nuttx/quickjs.c:9352
    atom = JS_ValueToAtom(ctx, prop);
    80030d9e:	85b6                	mv	a1,a3
    80030da0:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:9349
{
    80030da2:	ec42                	sd	a6,24(sp)
    80030da4:	ec86                	sd	ra,88(sp)
    80030da6:	e8a2                	sd	s0,80(sp)
    80030da8:	e4a6                	sd	s1,72(sp)
    80030daa:	842a                	mv	s0,a0
    80030dac:	f036                	sd	a3,32(sp)
    80030dae:	f43a                	sd	a4,40(sp)
    80030db0:	e83e                	sd	a5,16(sp)
    80030db2:	e446                	sd	a7,8(sp)
    80030db4:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/quickjs.c:9352
    atom = JS_ValueToAtom(ctx, prop);
    80030db6:	a5df70ef          	jal	ra,80028812 <JS_ValueToAtom>
quickjs-nuttx/quickjs.c:9353
    JS_FreeValue(ctx, prop);
    80030dba:	7582                	ld	a1,32(sp)
    80030dbc:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:9352
    atom = JS_ValueToAtom(ctx, prop);
    80030dbe:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:9353
    JS_FreeValue(ctx, prop);
    80030dc2:	8522                	mv	a0,s0
    80030dc4:	9dbda0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9354
    if (unlikely(atom == JS_ATOM_NULL)) {
    80030dc8:	6822                	ld	a6,8(sp)
    80030dca:	ec91                	bnez	s1,80030de6 <JS_DefinePropertyValueValue+0x4e>
quickjs-nuttx/quickjs.c:9355
        JS_FreeValue(ctx, val);
    80030dcc:	65c2                	ld	a1,16(sp)
    80030dce:	6662                	ld	a2,24(sp)
    80030dd0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:9356
        return -1;
    80030dd2:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:9355
        JS_FreeValue(ctx, val);
    80030dd4:	9cbda0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9361
}
    80030dd8:	60e6                	ld	ra,88(sp)
    80030dda:	6446                	ld	s0,80(sp)
    80030ddc:	64a6                	ld	s1,72(sp)
    80030dde:	854a                	mv	a0,s2
    80030de0:	6906                	ld	s2,64(sp)
    80030de2:	6125                	addi	sp,sp,96
    80030de4:	8082                	ret
quickjs-nuttx/quickjs.c:9358
    ret = JS_DefinePropertyValue(ctx, this_obj, atom, val, flags);
    80030de6:	75c2                	ld	a1,48(sp)
    80030de8:	6742                	ld	a4,16(sp)
    80030dea:	67e2                	ld	a5,24(sp)
    80030dec:	7662                	ld	a2,56(sp)
    80030dee:	86a6                	mv	a3,s1
    80030df0:	8522                	mv	a0,s0
    80030df2:	c3ae70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80030df6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:9359
    JS_FreeAtom(ctx, atom);
    80030df8:	85a6                	mv	a1,s1
    80030dfa:	8522                	mv	a0,s0
    80030dfc:	b4cda0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:9360
    return ret;
    80030e00:	bfe1                	j	80030dd8 <JS_DefinePropertyValueValue+0x40>

0000000080030e02 <JS_CreateDataPropertyUint32>:
JS_CreateDataPropertyUint32():
quickjs-nuttx/quickjs.c:9404
{
    80030e02:	7139                	addi	sp,sp,-64
    80030e04:	e43e                	sd	a5,8(sp)
    80030e06:	e82e                	sd	a1,16(sp)
    80030e08:	ec32                	sd	a2,24(sp)
    80030e0a:	e03a                	sd	a4,0(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80030e0c:	0006879b          	sext.w	a5,a3
    80030e10:	02f69363          	bne	a3,a5,80030e36 <JS_CreateDataPropertyUint32+0x34>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80030e14:	da02                	sw	zero,52(sp)
    80030e16:	d83e                	sw	a5,48(sp)
    80030e18:	7742                	ld	a4,48(sp)
    80030e1a:	f03a                	sd	a4,32(sp)
    80030e1c:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80030e1e:	d03e                	sw	a5,32(sp)
JS_CreateDataPropertyUint32():
quickjs-nuttx/quickjs.c:9405
    return JS_DefinePropertyValueValue(ctx, this_obj, JS_NewInt64(ctx, idx),
    80030e20:	7682                	ld	a3,32(sp)
    80030e22:	6782                	ld	a5,0(sp)
    80030e24:	65c2                	ld	a1,16(sp)
    80030e26:	6662                	ld	a2,24(sp)
    80030e28:	00786893          	ori	a7,a6,7
    80030e2c:	6822                	ld	a6,8(sp)
    80030e2e:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:9408
}
    80030e30:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:9405
    return JS_DefinePropertyValueValue(ctx, this_obj, JS_NewInt64(ctx, idx),
    80030e32:	f67ff06f          	j	80030d98 <JS_DefinePropertyValueValue>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80030e36:	d226f7d3          	fcvt.d.l	fa5,a3
    80030e3a:	471d                	li	a4,7
    80030e3c:	e20787d3          	fmv.x.d	a5,fa5
JS_CreateDataPropertyUint32():
quickjs-nuttx/quickjs.h:230
    return v;
    80030e40:	b03e                	fsd	fa5,32(sp)
    80030e42:	2781                	sext.w	a5,a5
    80030e44:	bfe9                	j	80030e1e <JS_CreateDataPropertyUint32+0x1c>

0000000080030e46 <js_create_array>:
js_create_array():
quickjs-nuttx/quickjs.c:40593
{
    80030e46:	711d                	addi	sp,sp,-96
    80030e48:	e0ca                	sd	s2,64(sp)
    80030e4a:	fc4e                	sd	s3,56(sp)
    80030e4c:	f852                	sd	s4,48(sp)
    80030e4e:	ec86                	sd	ra,88(sp)
    80030e50:	e8a2                	sd	s0,80(sp)
    80030e52:	e4a6                	sd	s1,72(sp)
    80030e54:	892a                	mv	s2,a0
    80030e56:	89ae                	mv	s3,a1
    80030e58:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:40597
    obj = JS_NewArray(ctx);
    80030e5a:	c00eb0ef          	jal	ra,8001c25a <JS_NewArray>
    80030e5e:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:40598
    if (JS_IsException(obj))
    80030e60:	0005879b          	sext.w	a5,a1
    80030e64:	4719                	li	a4,6
    80030e66:	04e79a63          	bne	a5,a4,80030eba <js_create_array+0x74>
quickjs-nuttx/quickjs.c:40599
        return JS_EXCEPTION;
    80030e6a:	e802                	sd	zero,16(sp)
quickjs-nuttx/quickjs.c:40603
            return JS_EXCEPTION;
    80030e6c:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:40607 (discriminator 1)
}
    80030e6e:	60e6                	ld	ra,88(sp)
    80030e70:	6446                	ld	s0,80(sp)
    80030e72:	6542                	ld	a0,16(sp)
    80030e74:	65e2                	ld	a1,24(sp)
    80030e76:	64a6                	ld	s1,72(sp)
    80030e78:	6906                	ld	s2,64(sp)
    80030e7a:	79e2                	ld	s3,56(sp)
    80030e7c:	7a42                	ld	s4,48(sp)
    80030e7e:	6125                	addi	sp,sp,96
    80030e80:	8082                	ret
quickjs-nuttx/quickjs.c:40601
        if (JS_CreateDataPropertyUint32(ctx, obj, i, JS_DupValue(ctx, tab[i]), 0) < 0) {
    80030e82:	00449793          	slli	a5,s1,0x4
    80030e86:	97d2                	add	a5,a5,s4
    80030e88:	6388                	ld	a0,0(a5)
    80030e8a:	678c                	ld	a1,8(a5)
    80030e8c:	d8ed90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80030e90:	87ae                	mv	a5,a1
    80030e92:	6582                	ld	a1,0(sp)
    80030e94:	872a                	mv	a4,a0
    80030e96:	86a6                	mv	a3,s1
    80030e98:	4801                	li	a6,0
    80030e9a:	8622                	mv	a2,s0
    80030e9c:	854a                	mv	a0,s2
    80030e9e:	e422                	sd	s0,8(sp)
    80030ea0:	f63ff0ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    80030ea4:	0485                	addi	s1,s1,1
    80030ea6:	00055c63          	bgez	a0,80030ebe <js_create_array+0x78>
quickjs-nuttx/quickjs.c:40602
            JS_FreeValue(ctx, obj);
    80030eaa:	6582                	ld	a1,0(sp)
    80030eac:	6622                	ld	a2,8(sp)
    80030eae:	854a                	mv	a0,s2
    80030eb0:	8efda0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40603
            return JS_EXCEPTION;
    80030eb4:	4799                	li	a5,6
    80030eb6:	e802                	sd	zero,16(sp)
    80030eb8:	bf55                	j	80030e6c <js_create_array+0x26>
    80030eba:	842e                	mv	s0,a1
    80030ebc:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:40600 (discriminator 1)
    for(i = 0; i < len; i++) {
    80030ebe:	0004879b          	sext.w	a5,s1
    80030ec2:	fd37c0e3          	blt	a5,s3,80030e82 <js_create_array+0x3c>
quickjs-nuttx/quickjs.c:40606
    return obj;
    80030ec6:	6782                	ld	a5,0(sp)
    80030ec8:	ec22                	sd	s0,24(sp)
    80030eca:	e83e                	sd	a5,16(sp)
    80030ecc:	b74d                	j	80030e6e <js_create_array+0x28>

0000000080030ece <js_map_iterator_next>:
js_map_iterator_next():
quickjs-nuttx/quickjs.c:47497
{
    80030ece:	7119                	addi	sp,sp,-128
quickjs-nuttx/quickjs.c:47503
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP_ITERATOR + magic);
    80030ed0:	02a8069b          	addiw	a3,a6,42
quickjs-nuttx/quickjs.c:47497
{
    80030ed4:	ecce                	sd	s3,88(sp)
    80030ed6:	e8d2                	sd	s4,80(sp)
    80030ed8:	e4d6                	sd	s5,72(sp)
    80030eda:	fc86                	sd	ra,120(sp)
    80030edc:	f8a2                	sd	s0,112(sp)
    80030ede:	f4a6                	sd	s1,104(sp)
    80030ee0:	f0ca                	sd	s2,96(sp)
    80030ee2:	89aa                	mv	s3,a0
    80030ee4:	e02e                	sd	a1,0(sp)
    80030ee6:	e432                	sd	a2,8(sp)
    80030ee8:	8abe                	mv	s5,a5
    80030eea:	8a42                	mv	s4,a6
quickjs-nuttx/quickjs.c:47503
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP_ITERATOR + magic);
    80030eec:	903e70ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47504
    if (!it) {
    80030ef0:	e10d                	bnez	a0,80030f12 <js_map_iterator_next+0x44>
quickjs-nuttx/quickjs.c:47505
        *pdone = FALSE;
    80030ef2:	000aa023          	sw	zero,0(s5)
quickjs-nuttx/quickjs.c:47506
        return JS_EXCEPTION;
    80030ef6:	e802                	sd	zero,16(sp)
    80030ef8:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47528
            return JS_UNDEFINED;
    80030efa:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:47557 (discriminator 1)
}
    80030efc:	70e6                	ld	ra,120(sp)
    80030efe:	7446                	ld	s0,112(sp)
    80030f00:	6542                	ld	a0,16(sp)
    80030f02:	65e2                	ld	a1,24(sp)
    80030f04:	74a6                	ld	s1,104(sp)
    80030f06:	7906                	ld	s2,96(sp)
    80030f08:	69e6                	ld	s3,88(sp)
    80030f0a:	6a46                	ld	s4,80(sp)
    80030f0c:	6aa6                	ld	s5,72(sp)
    80030f0e:	6109                	addi	sp,sp,128
    80030f10:	8082                	ret
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80030f12:	650c                	ld	a1,8(a0)
js_map_iterator_next():
quickjs-nuttx/quickjs.c:47508
    if (JS_IsUndefined(it->obj))
    80030f14:	478d                	li	a5,3
    80030f16:	842a                	mv	s0,a0
    80030f18:	0005871b          	sext.w	a4,a1
    80030f1c:	04f70463          	beq	a4,a5,80030f64 <js_map_iterator_next+0x96>
quickjs-nuttx/quickjs.c:47510
    s = JS_GetOpaque(it->obj, JS_CLASS_MAP + magic);
    80030f20:	6108                	ld	a0,0(a0)
    80030f22:	026a061b          	addiw	a2,s4,38
    80030f26:	f6edd0ef          	jal	ra,8000e694 <JS_GetOpaque>
    80030f2a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:47511
    assert(s != NULL);
    80030f2c:	e919                	bnez	a0,80030f42 <js_map_iterator_next+0x74>
quickjs-nuttx/quickjs.c:47511 (discriminator 1)
    80030f2e:	65b1                	lui	a1,0xc
    80030f30:	4601                	li	a2,0
    80030f32:	99758593          	addi	a1,a1,-1641 # b997 <asinh-0x7fff4669>
    80030f36:	00038517          	auipc	a0,0x38
    80030f3a:	66250513          	addi	a0,a0,1634 # 80069598 <qjsc_repl+0x3fe8>
    80030f3e:	21f2f0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:47512 (discriminator 2)
    if (!it->cur_record) {
    80030f42:	6c0c                	ld	a1,24(s0)
    80030f44:	e595                	bnez	a1,80030f70 <js_map_iterator_next+0xa2>
quickjs-nuttx/quickjs.c:47513
        el = s->records.next;
    80030f46:	6904                	ld	s1,16(a0)
quickjs-nuttx/quickjs.c:47520
        if (el == &s->records) {
    80030f48:	0921                	addi	s2,s2,8
    80030f4a:	03249963          	bne	s1,s2,80030f7c <js_map_iterator_next+0xae>
quickjs-nuttx/quickjs.c:47523
            JS_FreeValue(ctx, it->obj);
    80030f4e:	600c                	ld	a1,0(s0)
    80030f50:	6410                	ld	a2,8(s0)
quickjs-nuttx/quickjs.c:47522
            it->cur_record = NULL;
    80030f52:	00043c23          	sd	zero,24(s0)
quickjs-nuttx/quickjs.c:47523
            JS_FreeValue(ctx, it->obj);
    80030f56:	854e                	mv	a0,s3
    80030f58:	847da0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47524
            it->obj = JS_UNDEFINED;
    80030f5c:	478d                	li	a5,3
    80030f5e:	00043023          	sd	zero,0(s0)
    80030f62:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:47527
            *pdone = TRUE;
    80030f64:	4785                	li	a5,1
    80030f66:	00faa023          	sw	a5,0(s5)
quickjs-nuttx/quickjs.c:47528
            return JS_UNDEFINED;
    80030f6a:	e802                	sd	zero,16(sp)
    80030f6c:	478d                	li	a5,3
    80030f6e:	b771                	j	80030efa <js_map_iterator_next+0x2c>
quickjs-nuttx/quickjs.c:47517
        map_decref_record(ctx->rt, mr); /* the record can be freed here */
    80030f70:	0189b503          	ld	a0,24(s3)
quickjs-nuttx/quickjs.c:47516
        el = mr->link.next;
    80030f74:	7184                	ld	s1,32(a1)
quickjs-nuttx/quickjs.c:47517
        map_decref_record(ctx->rt, mr); /* the record can be freed here */
    80030f76:	b67d90ef          	jal	ra,8000aadc <map_decref_record>
    80030f7a:	b7f9                	j	80030f48 <js_map_iterator_next+0x7a>
quickjs-nuttx/quickjs.c:47531
        if (!mr->empty)
    80030f7c:	fec4a783          	lw	a5,-20(s1)
    80030f80:	c399                	beqz	a5,80030f86 <js_map_iterator_next+0xb8>
quickjs-nuttx/quickjs.c:47534
        el = mr->link.next;
    80030f82:	6484                	ld	s1,8(s1)
quickjs-nuttx/quickjs.c:47520
        if (el == &s->records) {
    80030f84:	b7d9                	j	80030f4a <js_map_iterator_next+0x7c>
quickjs-nuttx/quickjs.c:47538
    mr->ref_count++;
    80030f86:	fe84a703          	lw	a4,-24(s1)
quickjs-nuttx/quickjs.c:47530
        mr = list_entry(el, JSMapRecord, link);
    80030f8a:	fe848793          	addi	a5,s1,-24
quickjs-nuttx/quickjs.c:47538
    mr->ref_count++;
    80030f8e:	2705                	addiw	a4,a4,1
    80030f90:	fee4a423          	sw	a4,-24(s1)
quickjs-nuttx/quickjs.c:47539
    it->cur_record = mr;
    80030f94:	ec1c                	sd	a5,24(s0)
quickjs-nuttx/quickjs.c:47540
    *pdone = FALSE;
    80030f96:	000aa023          	sw	zero,0(s5)
quickjs-nuttx/quickjs.c:47542
    if (it->kind == JS_ITERATOR_KIND_KEY) {
    80030f9a:	4818                	lw	a4,16(s0)
    80030f9c:	ef09                	bnez	a4,80030fb6 <js_map_iterator_next+0xe8>
quickjs-nuttx/quickjs.c:47557
}
    80030f9e:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:47543
        return JS_DupValue(ctx, mr->key);
    80030fa0:	7088                	ld	a0,32(s1)
    80030fa2:	748c                	ld	a1,40(s1)
quickjs-nuttx/quickjs.c:47557
}
    80030fa4:	70e6                	ld	ra,120(sp)
    80030fa6:	74a6                	ld	s1,104(sp)
    80030fa8:	7906                	ld	s2,96(sp)
    80030faa:	69e6                	ld	s3,88(sp)
    80030fac:	6a46                	ld	s4,80(sp)
    80030fae:	6aa6                	ld	s5,72(sp)
    80030fb0:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:47543
        return JS_DupValue(ctx, mr->key);
    80030fb2:	c68d906f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:47546
        args[0] = mr->key;
    80030fb6:	7098                	ld	a4,32(s1)
    80030fb8:	749c                	ld	a5,40(s1)
    80030fba:	f03a                	sd	a4,32(sp)
    80030fbc:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:47547
        if (magic)
    80030fbe:	000a0f63          	beqz	s4,80030fdc <js_map_iterator_next+0x10e>
quickjs-nuttx/quickjs.c:47548
            args[1] = mr->key;
    80030fc2:	f83a                	sd	a4,48(sp)
quickjs-nuttx/quickjs.c:47550
            args[1] = mr->value;
    80030fc4:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:47551
        if (it->kind == JS_ITERATOR_KIND_VALUE) {
    80030fc6:	4818                	lw	a4,16(s0)
    80030fc8:	4785                	li	a5,1
    80030fca:	00f71d63          	bne	a4,a5,80030fe4 <js_map_iterator_next+0x116>
quickjs-nuttx/quickjs.c:47552
            return JS_DupValue(ctx, args[1]);
    80030fce:	7542                	ld	a0,48(sp)
    80030fd0:	75e2                	ld	a1,56(sp)
    80030fd2:	c48d90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:47554
            return js_create_array(ctx, 2, args);
    80030fd6:	e82a                	sd	a0,16(sp)
    80030fd8:	ec2e                	sd	a1,24(sp)
    80030fda:	b70d                	j	80030efc <js_map_iterator_next+0x2e>
quickjs-nuttx/quickjs.c:47550
            args[1] = mr->value;
    80030fdc:	789c                	ld	a5,48(s1)
    80030fde:	f83e                	sd	a5,48(sp)
    80030fe0:	7c9c                	ld	a5,56(s1)
    80030fe2:	b7cd                	j	80030fc4 <js_map_iterator_next+0xf6>
quickjs-nuttx/quickjs.c:47554
            return js_create_array(ctx, 2, args);
    80030fe4:	1010                	addi	a2,sp,32
    80030fe6:	854e                	mv	a0,s3
    80030fe8:	4589                	li	a1,2
    80030fea:	e5dff0ef          	jal	ra,80030e46 <js_create_array>
    80030fee:	b7e5                	j	80030fd6 <js_map_iterator_next+0x108>

0000000080030ff0 <JS_DefinePropertyValueUint32>:
JS_DefinePropertyValueUint32():
quickjs-nuttx/quickjs.c:9365
{
    80030ff0:	7139                	addi	sp,sp,-64
    80030ff2:	e82e                	sd	a1,16(sp)
    80030ff4:	ec32                	sd	a2,24(sp)
    80030ff6:	e03a                	sd	a4,0(sp)
    80030ff8:	e43e                	sd	a5,8(sp)
    80030ffa:	88c2                	mv	a7,a6
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80030ffc:	0206c363          	bltz	a3,80031022 <JS_DefinePropertyValueUint32+0x32>
