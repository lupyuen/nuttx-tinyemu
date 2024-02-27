    80042000:	e11c                	sd	a5,0(a0)
    80042002:	77a6                	ld	a5,104(sp)
    80042004:	e51c                	sd	a5,8(a0)
quickjs-nuttx/quickjs.c:44300
    it->iterated_string = S;
    80042006:	77c2                	ld	a5,48(sp)
    80042008:	e91c                	sd	a5,16(a0)
    8004200a:	77e2                	ld	a5,56(sp)
    8004200c:	ed1c                	sd	a5,24(a0)
quickjs-nuttx/quickjs.c:44302
    it->global = string_indexof_char(strp, 'g', 0) >= 0;
    8004200e:	855a                	mv	a0,s6
    80042010:	994c60ef          	jal	ra,800081a4 <string_indexof_char>
    80042014:	fff54513          	not	a0,a0
    80042018:	01f5551b          	srliw	a0,a0,0x1f
    8004201c:	d088                	sw	a0,32(s1)
quickjs-nuttx/quickjs.c:44303
    it->unicode = string_indexof_char(strp, 'u', 0) >= 0;
    8004201e:	4601                	li	a2,0
    80042020:	07500593          	li	a1,117
    80042024:	855a                	mv	a0,s6
    80042026:	97ec60ef          	jal	ra,800081a4 <string_indexof_char>
    8004202a:	fff54513          	not	a0,a0
    8004202e:	01f5551b          	srliw	a0,a0,0x1f
    80042032:	d0c8                	sw	a0,36(s1)
quickjs-nuttx/quickjs.c:44304
    it->done = FALSE;
    80042034:	0204a423          	sw	zero,40(s1)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80042038:	57fd                	li	a5,-1
    8004203a:	00fd1463          	bne	s10,a5,80042042 <js_regexp_Symbol_matchAll+0x1a4>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    8004203e:	029cb823          	sd	s1,48(s9)
js_regexp_Symbol_matchAll():
quickjs-nuttx/quickjs.c:44307
    JS_FreeValue(ctx, C);
    80042042:	6586                	ld	a1,64(sp)
    80042044:	6626                	ld	a2,72(sp)
    80042046:	8522                	mv	a0,s0
    80042048:	f56c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44308
    JS_FreeValue(ctx, flags);
    8004204c:	65c6                	ld	a1,80(sp)
    8004204e:	6666                	ld	a2,88(sp)
    80042050:	8522                	mv	a0,s0
    80042052:	f4cc90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44309
    return iter;
    80042056:	e166                	sd	s9,128(sp)
    80042058:	e562                	sd	s8,136(sp)
quickjs-nuttx/quickjs.c:44317
}
    8004205a:	70f6                	ld	ra,376(sp)
    8004205c:	7456                	ld	s0,368(sp)
    8004205e:	650a                	ld	a0,128(sp)
    80042060:	65aa                	ld	a1,136(sp)
    80042062:	74b6                	ld	s1,360(sp)
    80042064:	7916                	ld	s2,352(sp)
    80042066:	69f6                	ld	s3,344(sp)
    80042068:	6a56                	ld	s4,336(sp)
    8004206a:	6ab6                	ld	s5,328(sp)
    8004206c:	6b16                	ld	s6,320(sp)
    8004206e:	7bf2                	ld	s7,312(sp)
    80042070:	7c52                	ld	s8,304(sp)
    80042072:	7cb2                	ld	s9,296(sp)
    80042074:	7d12                	ld	s10,288(sp)
    80042076:	6df2                	ld	s11,280(sp)
    80042078:	6119                	addi	sp,sp,384
    8004207a:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8004207c:	d227f7d3          	fcvt.d.l	fa5,a5
    80042080:	479d                	li	a5,7
    80042082:	e2078753          	fmv.x.d	a4,fa5
js_regexp_Symbol_matchAll():
quickjs-nuttx/quickjs.h:230
    return v;
    80042086:	a9be                	fsd	fa5,208(sp)
    80042088:	2701                	sext.w	a4,a4
    8004208a:	b735                	j	80041fb6 <js_regexp_Symbol_matchAll+0x118>
quickjs-nuttx/quickjs.c:44270
    iter = JS_UNDEFINED;
    8004208c:	4a8d                	li	s5,3
    8004208e:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:44269
    matcher = JS_UNDEFINED;
    80042090:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44268
    flags = JS_UNDEFINED;
    80042092:	498d                	li	s3,3
    80042094:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:44267
    C = JS_UNDEFINED;
    80042096:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:44311
    JS_FreeValue(ctx, S);
    80042098:	75c2                	ld	a1,48(sp)
    8004209a:	7662                	ld	a2,56(sp)
    8004209c:	8522                	mv	a0,s0
    8004209e:	f00c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44312
    JS_FreeValue(ctx, C);
    800420a2:	6586                	ld	a1,64(sp)
    800420a4:	8652                	mv	a2,s4
    800420a6:	8522                	mv	a0,s0
    800420a8:	ef6c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44313
    JS_FreeValue(ctx, flags);
    800420ac:	85de                	mv	a1,s7
    800420ae:	864e                	mv	a2,s3
    800420b0:	8522                	mv	a0,s0
    800420b2:	eecc90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44314
    JS_FreeValue(ctx, matcher);
    800420b6:	7586                	ld	a1,96(sp)
    800420b8:	864a                	mv	a2,s2
    800420ba:	8522                	mv	a0,s0
    800420bc:	ee2c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44315
    JS_FreeValue(ctx, iter);
    800420c0:	85ee                	mv	a1,s11
    800420c2:	8656                	mv	a2,s5
    800420c4:	8522                	mv	a0,s0
    800420c6:	ed8c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44316
    return JS_EXCEPTION;
    800420ca:	4799                	li	a5,6
    800420cc:	e102                	sd	zero,128(sp)
    800420ce:	e53e                	sd	a5,136(sp)
    800420d0:	b769                	j	8004205a <js_regexp_Symbol_matchAll+0x1bc>
quickjs-nuttx/quickjs.c:44270
    iter = JS_UNDEFINED;
    800420d2:	4a8d                	li	s5,3
    800420d4:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:44269
    matcher = JS_UNDEFINED;
    800420d6:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44268
    flags = JS_UNDEFINED;
    800420d8:	498d                	li	s3,3
    800420da:	4b81                	li	s7,0
    800420dc:	bf75                	j	80042098 <js_regexp_Symbol_matchAll+0x1fa>
quickjs-nuttx/quickjs.c:44270
    iter = JS_UNDEFINED;
    800420de:	4a8d                	li	s5,3
    800420e0:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:44269
    matcher = JS_UNDEFINED;
    800420e2:	490d                	li	s2,3
    800420e4:	bf55                	j	80042098 <js_regexp_Symbol_matchAll+0x1fa>
quickjs-nuttx/quickjs.c:44270
    iter = JS_UNDEFINED;
    800420e6:	4a8d                	li	s5,3
    800420e8:	4d81                	li	s11,0
    800420ea:	b77d                	j	80042098 <js_regexp_Symbol_matchAll+0x1fa>

00000000800420ec <js_array_of>:
js_array_of():
quickjs-nuttx/quickjs.c:38925
{
    800420ec:	7171                	addi	sp,sp,-176
    800420ee:	f122                	sd	s0,160(sp)
    800420f0:	e54e                	sd	s3,136(sp)
    800420f2:	e152                	sd	s4,128(sp)
    800420f4:	f506                	sd	ra,168(sp)
    800420f6:	8a3a                	mv	s4,a4
    800420f8:	ed26                	sd	s1,152(sp)
    800420fa:	e94a                	sd	s2,144(sp)
    800420fc:	e02e                	sd	a1,0(sp)
    800420fe:	e432                	sd	a2,8(sp)
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80042100:	0006079b          	sext.w	a5,a2
    80042104:	577d                	li	a4,-1
js_array_of():
quickjs-nuttx/quickjs.c:38925
{
    80042106:	89aa                	mv	s3,a0
    80042108:	8436                	mv	s0,a3
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8004210a:	04e79563          	bne	a5,a4,80042154 <js_array_of+0x68>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    8004210e:	619c                	ld	a5,0(a1)
    80042110:	93b1                	srli	a5,a5,0x2c
js_array_of():
quickjs-nuttx/quickjs.c:38929
    if (JS_IsConstructor(ctx, this_val)) {
    80042112:	8b85                	andi	a5,a5,1
    80042114:	c3a1                	beqz	a5,80042154 <js_array_of+0x68>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80042116:	e882                	sd	zero,80(sp)
    80042118:	c8b6                	sw	a3,80(sp)
    8004211a:	67c6                	ld	a5,80(sp)
js_array_of():
quickjs-nuttx/quickjs.c:38931
        obj = JS_CallConstructor(ctx, this_val, 1, (JSValueConst *)args);
    8004211c:	1018                	addi	a4,sp,32
    8004211e:	4685                	li	a3,1
    80042120:	f8be                	sd	a5,112(sp)
    80042122:	fc82                	sd	zero,120(sp)
quickjs-nuttx/quickjs.c:38930
        args[0] = JS_NewInt32(ctx, argc);
    80042124:	f03e                	sd	a5,32(sp)
    80042126:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:38931
        obj = JS_CallConstructor(ctx, this_val, 1, (JSValueConst *)args);
    80042128:	a7dff0ef          	jal	ra,80041ba4 <JS_CallConstructor>
quickjs-nuttx/quickjs.c:38933
        obj = JS_NewArray(ctx);
    8004212c:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:38935
    if (JS_IsException(obj))
    8004212e:	0005879b          	sext.w	a5,a1
    80042132:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:38933
        obj = JS_NewArray(ctx);
    80042134:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80042136:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:38935
    if (JS_IsException(obj))
    80042138:	04e79d63          	bne	a5,a4,80042192 <js_array_of+0xa6>
quickjs-nuttx/quickjs.c:38936
        return JS_EXCEPTION;
    8004213c:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:38949
}
    8004213e:	70aa                	ld	ra,168(sp)
    80042140:	740a                	ld	s0,160(sp)
quickjs-nuttx/quickjs.c:38948
    return obj;
    80042142:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:38949
}
    80042144:	7542                	ld	a0,48(sp)
    80042146:	75e2                	ld	a1,56(sp)
    80042148:	64ea                	ld	s1,152(sp)
    8004214a:	694a                	ld	s2,144(sp)
    8004214c:	69aa                	ld	s3,136(sp)
    8004214e:	6a0a                	ld	s4,128(sp)
    80042150:	614d                	addi	sp,sp,176
    80042152:	8082                	ret
quickjs-nuttx/quickjs.c:38933
        obj = JS_NewArray(ctx);
    80042154:	854e                	mv	a0,s3
    80042156:	904da0ef          	jal	ra,8001c25a <JS_NewArray>
    8004215a:	bfc9                	j	8004212c <js_array_of+0x40>
quickjs-nuttx/quickjs.c:38938
        if (JS_CreateDataPropertyUint32(ctx, obj, i, JS_DupValue(ctx, argv[i]),
    8004215c:	00491793          	slli	a5,s2,0x4
    80042160:	97d2                	add	a5,a5,s4
    80042162:	6388                	ld	a0,0(a5)
    80042164:	678c                	ld	a1,8(a5)
    80042166:	ab4c80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004216a:	87ae                	mv	a5,a1
    8004216c:	65c2                	ld	a1,16(sp)
    8004216e:	872a                	mv	a4,a0
    80042170:	86ca                	mv	a3,s2
    80042172:	6811                	lui	a6,0x4
    80042174:	8626                	mv	a2,s1
    80042176:	854e                	mv	a0,s3
    80042178:	c8bee0ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    8004217c:	0905                	addi	s2,s2,1
    8004217e:	00055a63          	bgez	a0,80042192 <js_array_of+0xa6>
quickjs-nuttx/quickjs.c:38945
        JS_FreeValue(ctx, obj);
    80042182:	65c2                	ld	a1,16(sp)
    80042184:	8626                	mv	a2,s1
    80042186:	854e                	mv	a0,s3
    80042188:	e16c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38946
        return JS_EXCEPTION;
    8004218c:	4799                	li	a5,6
    8004218e:	f802                	sd	zero,48(sp)
    80042190:	b77d                	j	8004213e <js_array_of+0x52>
quickjs-nuttx/quickjs.c:38937 (discriminator 1)
    for(i = 0; i < argc; i++) {
    80042192:	0009079b          	sext.w	a5,s2
    80042196:	fc87c3e3          	blt	a5,s0,8004215c <js_array_of+0x70>
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    8004219a:	02044963          	bltz	s0,800421cc <js_array_of+0xe0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004219e:	da82                	sw	zero,116(sp)
    800421a0:	d8a2                	sw	s0,112(sp)
    800421a2:	77c6                	ld	a5,112(sp)
    800421a4:	fc82                	sd	zero,120(sp)
    800421a6:	f0be                	sd	a5,96(sp)
    800421a8:	4781                	li	a5,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    800421aa:	d0a2                	sw	s0,96(sp)
js_array_of():
quickjs-nuttx/quickjs.c:38943
    if (JS_SetProperty(ctx, obj, JS_ATOM_length, JS_NewUint32(ctx, argc)) < 0) {
    800421ac:	7706                	ld	a4,96(sp)
    800421ae:	65c2                	ld	a1,16(sp)
    800421b0:	03000693          	li	a3,48
    800421b4:	8626                	mv	a2,s1
    800421b6:	854e                	mv	a0,s3
    800421b8:	f4be                	sd	a5,104(sp)
    800421ba:	ec26                	sd	s1,24(sp)
    800421bc:	a51f50ef          	jal	ra,80037c0c <JS_SetProperty>
    800421c0:	fc0541e3          	bltz	a0,80042182 <js_array_of+0x96>
quickjs-nuttx/quickjs.c:38948
    return obj;
    800421c4:	67c2                	ld	a5,16(sp)
    800421c6:	f83e                	sd	a5,48(sp)
    800421c8:	67e2                	ld	a5,24(sp)
    800421ca:	bf95                	j	8004213e <js_array_of+0x52>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    800421cc:	d21407d3          	fcvt.d.wu	fa5,s0
    800421d0:	479d                	li	a5,7
    800421d2:	e2078453          	fmv.x.d	s0,fa5
js_array_of():
quickjs-nuttx/quickjs.h:230
    return v;
    800421d6:	b0be                	fsd	fa5,96(sp)
    800421d8:	2401                	sext.w	s0,s0
    800421da:	bfc1                	j	800421aa <js_array_of+0xbe>

00000000800421dc <JS_ArraySpeciesCreate>:
JS_ArraySpeciesCreate():
quickjs-nuttx/quickjs.c:38970
{
    800421dc:	7135                	addi	sp,sp,-160
    800421de:	e922                	sd	s0,144(sp)
    800421e0:	ed06                	sd	ra,152(sp)
    800421e2:	e526                	sd	s1,136(sp)
    800421e4:	e14a                	sd	s2,128(sp)
    800421e6:	fcce                	sd	s3,120(sp)
    800421e8:	f8d2                	sd	s4,112(sp)
    800421ea:	842a                	mv	s0,a0
    800421ec:	e82e                	sd	a1,16(sp)
    800421ee:	ec32                	sd	a2,24(sp)
    800421f0:	e036                	sd	a3,0(sp)
    800421f2:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:38975
    res = JS_IsArray(ctx, obj);
    800421f4:	bb7d70ef          	jal	ra,80019daa <JS_IsArray>
quickjs-nuttx/quickjs.c:38976
    if (res < 0)
    800421f8:	00055663          	bgez	a0,80042204 <JS_ArraySpeciesCreate+0x28>
quickjs-nuttx/quickjs.c:38977
        return JS_EXCEPTION;
    800421fc:	e882                	sd	zero,80(sp)
    800421fe:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:39010
        return ret;
    80042200:	ecbe                	sd	a5,88(sp)
    80042202:	a889                	j	80042254 <JS_ArraySpeciesCreate+0x78>
quickjs-nuttx/quickjs.c:38978
    if (!res)
    80042204:	ed11                	bnez	a0,80042220 <JS_ArraySpeciesCreate+0x44>
quickjs-nuttx/quickjs.c:38979
        return js_array_constructor(ctx, JS_UNDEFINED, 1, &len_val);
    80042206:	478d                	li	a5,3
    80042208:	f082                	sd	zero,96(sp)
    8004220a:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:39006
        return js_array_constructor(ctx, JS_UNDEFINED, 1, &len_val);
    8004220c:	870a                	mv	a4,sp
    8004220e:	4685                	li	a3,1
    80042210:	4581                	li	a1,0
    80042212:	460d                	li	a2,3
    80042214:	8522                	mv	a0,s0
    80042216:	b67f50ef          	jal	ra,80037d7c <js_array_constructor>
    8004221a:	e8aa                	sd	a0,80(sp)
    8004221c:	ecae                	sd	a1,88(sp)
    8004221e:	a81d                	j	80042254 <JS_ArraySpeciesCreate+0x78>
quickjs-nuttx/quickjs.c:38980
    ctor = JS_GetProperty(ctx, obj, JS_ATOM_constructor);
    80042220:	67e2                	ld	a5,24(sp)
    80042222:	6742                	ld	a4,16(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80042224:	4801                	li	a6,0
    80042226:	863e                	mv	a2,a5
    80042228:	03d00693          	li	a3,61
    8004222c:	85ba                	mv	a1,a4
    8004222e:	8522                	mv	a0,s0
    80042230:	f4be                	sd	a5,104(sp)
    80042232:	f0ba                	sd	a4,96(sp)
    80042234:	877d40ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80042238:	e0aa                	sd	a0,64(sp)
    8004223a:	e4ae                	sd	a1,72(sp)
    8004223c:	f02a                	sd	a0,32(sp)
    8004223e:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80042240:	0005879b          	sext.w	a5,a1
JS_ArraySpeciesCreate():
quickjs-nuttx/quickjs.c:38981
    if (JS_IsException(ctor))
    80042244:	4999                	li	s3,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80042246:	862e                	mv	a2,a1
    80042248:	892a                	mv	s2,a0
    8004224a:	84ae                	mv	s1,a1
JS_ArraySpeciesCreate():
quickjs-nuttx/quickjs.c:38981
    8004224c:	01379e63          	bne	a5,s3,80042268 <JS_ArraySpeciesCreate+0x8c>
quickjs-nuttx/quickjs.c:38982
        return ctor;
    80042250:	e8aa                	sd	a0,80(sp)
    80042252:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:39012 (discriminator 1)
}
    80042254:	60ea                	ld	ra,152(sp)
    80042256:	644a                	ld	s0,144(sp)
    80042258:	6546                	ld	a0,80(sp)
    8004225a:	65e6                	ld	a1,88(sp)
    8004225c:	64aa                	ld	s1,136(sp)
    8004225e:	690a                	ld	s2,128(sp)
    80042260:	79e6                	ld	s3,120(sp)
    80042262:	7a46                	ld	s4,112(sp)
    80042264:	610d                	addi	sp,sp,160
    80042266:	8082                	ret
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80042268:	577d                	li	a4,-1
    8004226a:	04e79463          	bne	a5,a4,800422b2 <JS_ArraySpeciesCreate+0xd6>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    8004226e:	611c                	ld	a5,0(a0)
    80042270:	93b1                	srli	a5,a5,0x2c
JS_ArraySpeciesCreate():
quickjs-nuttx/quickjs.c:38983
    if (JS_IsConstructor(ctx, ctor)) {
    80042272:	8b85                	andi	a5,a5,1
    80042274:	cf9d                	beqz	a5,800422b2 <JS_ArraySpeciesCreate+0xd6>
quickjs-nuttx/quickjs.c:38985
        realm = JS_GetFunctionRealm(ctx, ctor);
    80042276:	85aa                	mv	a1,a0
    80042278:	8522                	mv	a0,s0
    8004227a:	cb2d70ef          	jal	ra,8001972c <JS_GetFunctionRealm>
quickjs-nuttx/quickjs.c:38986
        if (!realm) {
    8004227e:	e909                	bnez	a0,80042290 <JS_ArraySpeciesCreate+0xb4>
quickjs-nuttx/quickjs.c:38987
            JS_FreeValue(ctx, ctor);
    80042280:	7582                	ld	a1,32(sp)
    80042282:	7622                	ld	a2,40(sp)
    80042284:	8522                	mv	a0,s0
    80042286:	d18c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38988
            return JS_EXCEPTION;
    8004228a:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:39000
            return species;
    8004228c:	ecce                	sd	s3,88(sp)
    8004228e:	b7d9                	j	80042254 <JS_ArraySpeciesCreate+0x78>
quickjs-nuttx/quickjs.c:38990
        if (realm != ctx &&
    80042290:	02a40163          	beq	s0,a0,800422b2 <JS_ArraySpeciesCreate+0xd6>
quickjs-nuttx/quickjs.c:38991 (discriminator 1)
            js_same_value(ctx, ctor, realm->array_ctor)) {
    80042294:	7534                	ld	a3,104(a0)
    80042296:	7938                	ld	a4,112(a0)
    80042298:	7582                	ld	a1,32(sp)
    8004229a:	7622                	ld	a2,40(sp)
    8004229c:	8522                	mv	a0,s0
    8004229e:	ed4c90ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:38990 (discriminator 1)
        if (realm != ctx &&
    800422a2:	c901                	beqz	a0,800422b2 <JS_ArraySpeciesCreate+0xd6>
quickjs-nuttx/quickjs.c:38992
            JS_FreeValue(ctx, ctor);
    800422a4:	7582                	ld	a1,32(sp)
    800422a6:	7622                	ld	a2,40(sp)
    800422a8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:38993
            ctor = JS_UNDEFINED;
    800422aa:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:38992
            JS_FreeValue(ctx, ctor);
    800422ac:	cf2c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38993
            ctor = JS_UNDEFINED;
    800422b0:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:38996
    if (JS_IsObject(ctor)) {
    800422b2:	0004879b          	sext.w	a5,s1
    800422b6:	577d                	li	a4,-1
    800422b8:	04e79363          	bne	a5,a4,800422fe <JS_ArraySpeciesCreate+0x122>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800422bc:	874a                	mv	a4,s2
    800422be:	87a6                	mv	a5,s1
    800422c0:	4801                	li	a6,0
    800422c2:	0df00693          	li	a3,223
    800422c6:	8626                	mv	a2,s1
    800422c8:	85ca                	mv	a1,s2
    800422ca:	8522                	mv	a0,s0
    800422cc:	e8ca                	sd	s2,80(sp)
    800422ce:	eca6                	sd	s1,88(sp)
    800422d0:	fdad40ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800422d4:	89ae                	mv	s3,a1
    800422d6:	f0aa                	sd	a0,96(sp)
    800422d8:	f4ae                	sd	a1,104(sp)
    800422da:	8a2a                	mv	s4,a0
JS_ArraySpeciesCreate():
quickjs-nuttx/quickjs.c:38998
        JS_FreeValue(ctx, ctor);
    800422dc:	85ca                	mv	a1,s2
    800422de:	8626                	mv	a2,s1
    800422e0:	8522                	mv	a0,s0
    800422e2:	cbcc90ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800422e6:	0009879b          	sext.w	a5,s3
JS_ArraySpeciesCreate():
quickjs-nuttx/quickjs.c:38999
        if (JS_IsException(species))
    800422ea:	4719                	li	a4,6
    800422ec:	00e79463          	bne	a5,a4,800422f4 <JS_ArraySpeciesCreate+0x118>
quickjs-nuttx/quickjs.c:39000
            return species;
    800422f0:	e8d2                	sd	s4,80(sp)
    800422f2:	bf69                	j	8004228c <JS_ArraySpeciesCreate+0xb0>
quickjs-nuttx/quickjs.c:39002
        if (JS_IsNull(ctor))
    800422f4:	4709                	li	a4,2
    800422f6:	00e79c63          	bne	a5,a4,8004230e <JS_ArraySpeciesCreate+0x132>
quickjs-nuttx/quickjs.c:39003
            ctor = JS_UNDEFINED;
    800422fa:	448d                	li	s1,3
    800422fc:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:39005
    if (JS_IsUndefined(ctor)) {
    800422fe:	0004879b          	sext.w	a5,s1
    80042302:	470d                	li	a4,3
    80042304:	00e79863          	bne	a5,a4,80042314 <JS_ArraySpeciesCreate+0x138>
quickjs-nuttx/quickjs.c:39006
        return js_array_constructor(ctx, JS_UNDEFINED, 1, &len_val);
    80042308:	f802                	sd	zero,48(sp)
    8004230a:	fc3e                	sd	a5,56(sp)
    8004230c:	b701                	j	8004220c <JS_ArraySpeciesCreate+0x30>
quickjs-nuttx/quickjs.c:39001
        ctor = species;
    8004230e:	84ce                	mv	s1,s3
    80042310:	8952                	mv	s2,s4
    80042312:	b7f5                	j	800422fe <JS_ArraySpeciesCreate+0x122>
quickjs-nuttx/quickjs.c:39008
        ret = JS_CallConstructor(ctx, ctor, 1, &len_val);
    80042314:	870a                	mv	a4,sp
    80042316:	4685                	li	a3,1
    80042318:	8626                	mv	a2,s1
    8004231a:	85ca                	mv	a1,s2
    8004231c:	8522                	mv	a0,s0
    8004231e:	f04a                	sd	s2,32(sp)
    80042320:	f426                	sd	s1,40(sp)
    80042322:	883ff0ef          	jal	ra,80041ba4 <JS_CallConstructor>
    80042326:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39009
        JS_FreeValue(ctx, ctor);
    80042328:	7622                	ld	a2,40(sp)
    8004232a:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:39008
        ret = JS_CallConstructor(ctx, ctor, 1, &len_val);
    8004232c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:39009
        JS_FreeValue(ctx, ctor);
    8004232e:	8522                	mv	a0,s0
    80042330:	c6ec90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39010
        return ret;
    80042334:	77c2                	ld	a5,48(sp)
    80042336:	e8be                	sd	a5,80(sp)
    80042338:	77e2                	ld	a5,56(sp)
    8004233a:	b5d9                	j	80042200 <JS_ArraySpeciesCreate+0x24>

000000008004233c <js_array_slice>:
js_array_slice():
quickjs-nuttx/quickjs.c:40010
{
    8004233c:	710d                	addi	sp,sp,-352
    8004233e:	eaa2                	sd	s0,336(sp)
    80042340:	e6a6                	sd	s1,328(sp)
    80042342:	fe4e                	sd	s3,312(sp)
    80042344:	ee5e                	sd	s7,280(sp)
    80042346:	ee86                	sd	ra,344(sp)
    80042348:	e2ca                	sd	s2,320(sp)
    8004234a:	fa52                	sd	s4,304(sp)
    8004234c:	f656                	sd	s5,296(sp)
    8004234e:	f25a                	sd	s6,288(sp)
    80042350:	ea62                	sd	s8,272(sp)
    80042352:	842a                	mv	s0,a0
    80042354:	ec32                	sd	a2,24(sp)
    80042356:	89b6                	mv	s3,a3
    80042358:	e82e                	sd	a1,16(sp)
    8004235a:	84ba                	mv	s1,a4
    8004235c:	8bbe                	mv	s7,a5
quickjs-nuttx/quickjs.c:40017
    arr = JS_UNDEFINED;
    8004235e:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:40018
    obj = JS_ToObject(ctx, this_val);
    80042360:	d5bed0ef          	jal	ra,800300ba <JS_ToObject>
    80042364:	862a                	mv	a2,a0
    80042366:	86ae                	mv	a3,a1
    80042368:	e8aa                	sd	a0,80(sp)
    8004236a:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:40019
    if (js_get_length64(ctx, &len, obj))
    8004236c:	8522                	mv	a0,s0
    8004236e:	102c                	addi	a1,sp,40
    80042370:	a61e20ef          	jal	ra,80024dd0 <js_get_length64>
    80042374:	e521                	bnez	a0,800423bc <js_array_slice+0x80>
quickjs-nuttx/quickjs.c:40022
    if (JS_ToInt64Clamp(ctx, &start, argv[0], 0, len, len))
    80042376:	7822                	ld	a6,40(sp)
    80042378:	6090                	ld	a2,0(s1)
    8004237a:	6494                	ld	a3,8(s1)
    8004237c:	87c2                	mv	a5,a6
    8004237e:	4701                	li	a4,0
    80042380:	180c                	addi	a1,sp,48
    80042382:	8522                	mv	a0,s0
    80042384:	9bde20ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    80042388:	e915                	bnez	a0,800423bc <js_array_slice+0x80>
quickjs-nuttx/quickjs.c:40032
            del_count = len - start;
    8004238a:	7822                	ld	a6,40(sp)
quickjs-nuttx/quickjs.c:40025
    if (splice) {
    8004238c:	040b8e63          	beqz	s7,800423e8 <js_array_slice+0xac>
quickjs-nuttx/quickjs.c:40026
        if (argc == 0) {
    80042390:	02099863          	bnez	s3,800423c0 <js_array_slice+0x84>
quickjs-nuttx/quickjs.c:40028
            del_count = 0;
    80042394:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:40038
        if (len + item_count - del_count > MAX_SAFE_INTEGER) {
    80042396:	6906                	ld	s2,64(sp)
    80042398:	77a2                	ld	a5,40(sp)
    8004239a:	02099713          	slli	a4,s3,0x20
    8004239e:	9301                	srli	a4,a4,0x20
    800423a0:	412787b3          	sub	a5,a5,s2
    800423a4:	97ba                	add	a5,a5,a4
    800423a6:	577d                	li	a4,-1
    800423a8:	832d                	srli	a4,a4,0xb
    800423aa:	04f75e63          	bge	a4,a5,80042406 <js_array_slice+0xca>
quickjs-nuttx/quickjs.c:40039
            JS_ThrowTypeError(ctx, "Array loo long");
    800423ae:	0002b597          	auipc	a1,0x2b
    800423b2:	a2a58593          	addi	a1,a1,-1494 # 8006cdd8 <qjsc_repl+0x7828>
    800423b6:	8522                	mv	a0,s0
    800423b8:	ab4d60ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:40017
    arr = JS_UNDEFINED;
    800423bc:	4b0d                	li	s6,3
    800423be:	aae1                	j	80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40032
            del_count = len - start;
    800423c0:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:40030
        if (argc == 1) {
    800423c2:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:40032
            del_count = len - start;
    800423c4:	40f807b3          	sub	a5,a6,a5
quickjs-nuttx/quickjs.c:40030
        if (argc == 1) {
    800423c8:	00e99563          	bne	s3,a4,800423d2 <js_array_slice+0x96>
quickjs-nuttx/quickjs.c:40032
            del_count = len - start;
    800423cc:	e0be                	sd	a5,64(sp)
quickjs-nuttx/quickjs.c:40031
            item_count = 0;
    800423ce:	4981                	li	s3,0
    800423d0:	b7d9                	j	80042396 <js_array_slice+0x5a>
quickjs-nuttx/quickjs.c:40035
            if (JS_ToInt64Clamp(ctx, &del_count, argv[1], 0, len - start, 0))
    800423d2:	6890                	ld	a2,16(s1)
    800423d4:	6c94                	ld	a3,24(s1)
    800423d6:	4801                	li	a6,0
    800423d8:	4701                	li	a4,0
    800423da:	008c                	addi	a1,sp,64
    800423dc:	8522                	mv	a0,s0
    800423de:	963e20ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    800423e2:	fd69                	bnez	a0,800423bc <js_array_slice+0x80>
quickjs-nuttx/quickjs.c:40034
            item_count = argc - 2;
    800423e4:	39f9                	addiw	s3,s3,-2
    800423e6:	bf45                	j	80042396 <js_array_slice+0x5a>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    800423e8:	6c94                	ld	a3,24(s1)
js_array_slice():
quickjs-nuttx/quickjs.c:40045
        final = len;
    800423ea:	fc42                	sd	a6,56(sp)
quickjs-nuttx/quickjs.c:40046
        if (!JS_IsUndefined(argv[1])) {
    800423ec:	478d                	li	a5,3
    800423ee:	0006871b          	sext.w	a4,a3
    800423f2:	0ef71a63          	bne	a4,a5,800424e6 <js_array_slice+0x1aa>
quickjs-nuttx/quickjs.c:40050
        count = max_int64(final - start, 0);
    800423f6:	7962                	ld	s2,56(sp)
    800423f8:	77c2                	ld	a5,48(sp)
    800423fa:	40f90933          	sub	s2,s2,a5
    800423fe:	00095363          	bgez	s2,80042404 <js_array_slice+0xc8>
    80042402:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:40044
        item_count = 0; /* avoid warning */
    80042404:	4981                	li	s3,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80042406:	0009079b          	sext.w	a5,s2
    8004240a:	0ef91863          	bne	s2,a5,800424fa <js_array_slice+0x1be>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004240e:	cb82                	sw	zero,212(sp)
    80042410:	c9ca                	sw	s2,208(sp)
    80042412:	674e                	ld	a4,208(sp)
    80042414:	ed82                	sd	zero,216(sp)
    80042416:	e602                	sd	zero,264(sp)
    80042418:	e23a                	sd	a4,256(sp)
    8004241a:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8004241c:	10f12023          	sw	a5,256(sp)
    80042420:	2792                	fld	fa5,256(sp)
js_array_slice():
quickjs-nuttx/quickjs.c:40053
    arr = JS_ArraySpeciesCreate(ctx, obj, len_val);
    80042422:	6692                	ld	a3,256(sp)
    80042424:	6666                	ld	a2,88(sp)
    80042426:	65c6                	ld	a1,80(sp)
    80042428:	8522                	mv	a0,s0
    8004242a:	a13e                	fsd	fa5,128(sp)
    8004242c:	e53a                	sd	a4,136(sp)
    8004242e:	dafff0ef          	jal	ra,800421dc <JS_ArraySpeciesCreate>
    80042432:	8aae                	mv	s5,a1
    80042434:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:40054
    JS_FreeValue(ctx, len_val);
    80042436:	662a                	ld	a2,136(sp)
quickjs-nuttx/quickjs.c:40053
    arr = JS_ArraySpeciesCreate(ctx, obj, len_val);
    80042438:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:40054
    JS_FreeValue(ctx, len_val);
    8004243a:	658a                	ld	a1,128(sp)
quickjs-nuttx/quickjs.c:40053
    arr = JS_ArraySpeciesCreate(ctx, obj, len_val);
    8004243c:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:40054
    JS_FreeValue(ctx, len_val);
    8004243e:	8522                	mv	a0,s0
    80042440:	b5ec90ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80042444:	000a8c1b          	sext.w	s8,s5
js_array_slice():
quickjs-nuttx/quickjs.c:40055
    if (JS_IsException(arr))
    80042448:	4799                	li	a5,6
    8004244a:	14fc0663          	beq	s8,a5,80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40058
    k = start;
    8004244e:	7a42                	ld	s4,48(sp)
quickjs-nuttx/quickjs.c:40065
    if (js_get_fast_array(ctx, obj, &arrp, &count32) &&
    80042450:	6546                	ld	a0,80(sp)
    80042452:	65e6                	ld	a1,88(sp)
quickjs-nuttx/quickjs.c:40059
    final = start + count;
    80042454:	01490733          	add	a4,s2,s4
quickjs-nuttx/quickjs.c:40065
    if (js_get_fast_array(ctx, obj, &arrp, &count32) &&
    80042458:	1054                	addi	a3,sp,36
    8004245a:	00b0                	addi	a2,sp,72
quickjs-nuttx/quickjs.c:40059
    final = start + count;
    8004245c:	fc3a                	sd	a4,56(sp)
quickjs-nuttx/quickjs.c:40065
    if (js_get_fast_array(ctx, obj, &arrp, &count32) &&
    8004245e:	d01c70ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    80042462:	c501                	beqz	a0,8004246a <js_array_slice+0x12e>
js_is_fast_array():
quickjs-nuttx/quickjs.c:15351 (discriminator 1)
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80042464:	57fd                	li	a5,-1
    80042466:	0afc0263          	beq	s8,a5,8004250a <js_array_slice+0x1ce>
js_array_slice():
quickjs-nuttx/quickjs.c:40060
    n = 0;
    8004246a:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:40058 (discriminator 1)
    k = start;
    8004246c:	8952                	mv	s2,s4
    8004246e:	414c0c33          	sub	s8,s8,s4
quickjs-nuttx/quickjs.c:40074 (discriminator 1)
    for (; k < final; k++, n++) {
    80042472:	77e2                	ld	a5,56(sp)
    80042474:	012c0a33          	add	s4,s8,s2
    80042478:	0ef94863          	blt	s2,a5,80042568 <js_array_slice+0x22c>
    8004247c:	8c52                	mv	s8,s4
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8004247e:	000c071b          	sext.w	a4,s8
    80042482:	13871763          	bne	a4,s8,800425b0 <js_array_slice+0x274>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80042486:	d382                	sw	zero,228(sp)
    80042488:	d1e2                	sw	s8,224(sp)
    8004248a:	778e                	ld	a5,224(sp)
    8004248c:	f582                	sd	zero,232(sp)
    8004248e:	e602                	sd	zero,264(sp)
    80042490:	e23e                	sd	a5,256(sp)
    80042492:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80042494:	10e12023          	sw	a4,256(sp)
    80042498:	2792                	fld	fa5,256(sp)
js_array_slice():
quickjs-nuttx/quickjs.c:40083
    if (JS_SetProperty(ctx, arr, JS_ATOM_length, JS_NewInt64(ctx, n)) < 0)
    8004249a:	6712                	ld	a4,256(sp)
    8004249c:	7586                	ld	a1,96(sp)
    8004249e:	03000693          	li	a3,48
    800424a2:	8656                	mv	a2,s5
    800424a4:	8522                	mv	a0,s0
    800424a6:	b13e                	fsd	fa5,160(sp)
    800424a8:	f53e                	sd	a5,168(sp)
    800424aa:	f4d6                	sd	s5,104(sp)
    800424ac:	f60f50ef          	jal	ra,80037c0c <JS_SetProperty>
    800424b0:	0e054363          	bltz	a0,80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40086
    if (splice) {
    800424b4:	100b9663          	bnez	s7,800425c0 <js_array_slice+0x284>
quickjs-nuttx/quickjs.c:40106
    JS_FreeValue(ctx, obj);
    800424b8:	65c6                	ld	a1,80(sp)
    800424ba:	6666                	ld	a2,88(sp)
    800424bc:	8522                	mv	a0,s0
    800424be:	ae0c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40107
    return arr;
    800424c2:	7786                	ld	a5,96(sp)
    800424c4:	f9be                	sd	a5,240(sp)
    800424c6:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:40113
}
    800424c8:	60f6                	ld	ra,344(sp)
    800424ca:	6456                	ld	s0,336(sp)
quickjs-nuttx/quickjs.c:40112
    return JS_EXCEPTION;
    800424cc:	fdbe                	sd	a5,248(sp)
quickjs-nuttx/quickjs.c:40113
}
    800424ce:	754e                	ld	a0,240(sp)
    800424d0:	75ee                	ld	a1,248(sp)
    800424d2:	64b6                	ld	s1,328(sp)
    800424d4:	6916                	ld	s2,320(sp)
    800424d6:	79f2                	ld	s3,312(sp)
    800424d8:	7a52                	ld	s4,304(sp)
    800424da:	7ab2                	ld	s5,296(sp)
    800424dc:	7b12                	ld	s6,288(sp)
    800424de:	6bf2                	ld	s7,280(sp)
    800424e0:	6c52                	ld	s8,272(sp)
    800424e2:	6135                	addi	sp,sp,352
    800424e4:	8082                	ret
quickjs-nuttx/quickjs.c:40047
            if (JS_ToInt64Clamp(ctx, &final, argv[1], 0, len, len))
    800424e6:	6890                	ld	a2,16(s1)
    800424e8:	87c2                	mv	a5,a6
    800424ea:	4701                	li	a4,0
    800424ec:	182c                	addi	a1,sp,56
    800424ee:	8522                	mv	a0,s0
    800424f0:	851e20ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    800424f4:	f00501e3          	beqz	a0,800423f6 <js_array_slice+0xba>
    800424f8:	b5d1                	j	800423bc <js_array_slice+0x80>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800424fa:	d22977d3          	fcvt.d.l	fa5,s2
    800424fe:	471d                	li	a4,7
    80042500:	e20787d3          	fmv.x.d	a5,fa5
js_array_slice():
quickjs-nuttx/quickjs.h:230
    return v;
    80042504:	a23e                	fsd	fa5,256(sp)
    80042506:	2781                	sext.w	a5,a5
    80042508:	bf11                	j	8004241c <js_array_slice+0xe0>
js_is_fast_array():
quickjs-nuttx/quickjs.c:15353
        if (p->class_id == JS_CLASS_ARRAY && p->fast_array) {
    8004250a:	7786                	ld	a5,96(sp)
js_array_slice():
quickjs-nuttx/quickjs.c:40060
    n = 0;
    8004250c:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:40058
    k = start;
    8004250e:	8952                	mv	s2,s4
js_is_fast_array():
quickjs-nuttx/quickjs.c:15353
        if (p->class_id == JS_CLASS_ARRAY && p->fast_array) {
    80042510:	6398                	ld	a4,0(a5)
    80042512:	5785                	li	a5,-31
    80042514:	17ae                	slli	a5,a5,0x2b
    80042516:	8f7d                	and	a4,a4,a5
    80042518:	04100793          	li	a5,65
    8004251c:	17ae                	slli	a5,a5,0x2b
    8004251e:	f4f717e3          	bne	a4,a5,8004246c <js_array_slice+0x130>
js_array_slice():
quickjs-nuttx/quickjs.c:40068 (discriminator 1)
        for (; k < final && k < count32; k++, n++) {
    80042522:	77e2                	ld	a5,56(sp)
    80042524:	41490c33          	sub	s8,s2,s4
    80042528:	f4f95be3          	bge	s2,a5,8004247e <js_array_slice+0x142>
quickjs-nuttx/quickjs.c:40068 (discriminator 2)
    8004252c:	02416783          	lwu	a5,36(sp)
    80042530:	00f94463          	blt	s2,a5,80042538 <js_array_slice+0x1fc>
    80042534:	8a4a                	mv	s4,s2
    80042536:	bf1d                	j	8004246c <js_array_slice+0x130>
quickjs-nuttx/quickjs.c:40069
            if (JS_CreateDataPropertyUint32(ctx, arr, n, JS_DupValue(ctx, arrp[k]), JS_PROP_THROW) < 0)
    80042538:	6726                	ld	a4,72(sp)
    8004253a:	00491793          	slli	a5,s2,0x4
    8004253e:	97ba                	add	a5,a5,a4
    80042540:	6388                	ld	a0,0(a5)
    80042542:	678c                	ld	a1,8(a5)
    80042544:	ed7c70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80042548:	87ae                	mv	a5,a1
    8004254a:	ed2e                	sd	a1,152(sp)
    8004254c:	7586                	ld	a1,96(sp)
    8004254e:	872a                	mv	a4,a0
    80042550:	e92a                	sd	a0,144(sp)
    80042552:	6811                	lui	a6,0x4
    80042554:	86e2                	mv	a3,s8
    80042556:	8656                	mv	a2,s5
    80042558:	8522                	mv	a0,s0
    8004255a:	f4d6                	sd	s5,104(sp)
    8004255c:	8a7ee0ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    80042560:	02054b63          	bltz	a0,80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40068
        for (; k < final && k < count32; k++, n++) {
    80042564:	0905                	addi	s2,s2,1
    80042566:	bf75                	j	80042522 <js_array_slice+0x1e6>
quickjs-nuttx/quickjs.c:40075
        kPresent = JS_TryGetPropertyInt64(ctx, obj, k, &val);
    80042568:	65c6                	ld	a1,80(sp)
    8004256a:	6666                	ld	a2,88(sp)
    8004256c:	1898                	addi	a4,sp,112
    8004256e:	86ca                	mv	a3,s2
    80042570:	8522                	mv	a0,s0
    80042572:	a7ff70ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:40076
        if (kPresent < 0)
    80042576:	02054063          	bltz	a0,80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40078
        if (kPresent) {
    8004257a:	e119                	bnez	a0,80042580 <js_array_slice+0x244>
quickjs-nuttx/quickjs.c:40074
    for (; k < final; k++, n++) {
    8004257c:	0905                	addi	s2,s2,1
    8004257e:	bdd5                	j	80042472 <js_array_slice+0x136>
quickjs-nuttx/quickjs.c:40079
            if (JS_CreateDataPropertyUint32(ctx, arr, n, val, JS_PROP_THROW) < 0)
    80042580:	7746                	ld	a4,112(sp)
    80042582:	77e6                	ld	a5,120(sp)
    80042584:	7586                	ld	a1,96(sp)
    80042586:	6811                	lui	a6,0x4
    80042588:	86d2                	mv	a3,s4
    8004258a:	8656                	mv	a2,s5
    8004258c:	8522                	mv	a0,s0
    8004258e:	875ee0ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    80042592:	fe0555e3          	bgez	a0,8004257c <js_array_slice+0x240>
quickjs-nuttx/quickjs.c:40110
    JS_FreeValue(ctx, obj);
    80042596:	65c6                	ld	a1,80(sp)
    80042598:	6666                	ld	a2,88(sp)
    8004259a:	8522                	mv	a0,s0
    8004259c:	a02c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40111
    JS_FreeValue(ctx, arr);
    800425a0:	7586                	ld	a1,96(sp)
    800425a2:	865a                	mv	a2,s6
    800425a4:	8522                	mv	a0,s0
    800425a6:	9f8c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40112
    return JS_EXCEPTION;
    800425aa:	4799                	li	a5,6
    800425ac:	f982                	sd	zero,240(sp)
    800425ae:	bf29                	j	800424c8 <js_array_slice+0x18c>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800425b0:	d22c77d3          	fcvt.d.l	fa5,s8
    800425b4:	479d                	li	a5,7
    800425b6:	e2078753          	fmv.x.d	a4,fa5
js_array_slice():
quickjs-nuttx/quickjs.h:230
    return v;
    800425ba:	a23e                	fsd	fa5,256(sp)
    800425bc:	2701                	sext.w	a4,a4
    800425be:	bdd9                	j	80042494 <js_array_slice+0x158>
quickjs-nuttx/quickjs.c:40087
        new_len = len + item_count - del_count;
    800425c0:	77a2                	ld	a5,40(sp)
    800425c2:	6606                	ld	a2,64(sp)
    800425c4:	02099593          	slli	a1,s3,0x20
    800425c8:	9181                	srli	a1,a1,0x20
    800425ca:	40c78933          	sub	s2,a5,a2
    800425ce:	992e                	add	s2,s2,a1
quickjs-nuttx/quickjs.c:40088
        if (item_count != del_count) {
    800425d0:	04c59263          	bne	a1,a2,80042614 <js_array_slice+0x2d8>
    800425d4:	02048493          	addi	s1,s1,32
quickjs-nuttx/quickjs.c:40089
            if (JS_CopySubArray(ctx, obj, start + item_count,
    800425d8:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:40099 (discriminator 1)
        for (i = 0; i < item_count; i++) {
    800425da:	000a079b          	sext.w	a5,s4
    800425de:	0737ea63          	bltu	a5,s3,80042652 <js_array_slice+0x316>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800425e2:	0009071b          	sext.w	a4,s2
    800425e6:	08e91c63          	bne	s2,a4,8004267e <js_array_slice+0x342>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800425ea:	10012223          	sw	zero,260(sp)
    800425ee:	10e12023          	sw	a4,256(sp)
    800425f2:	6792                	ld	a5,256(sp)
    800425f4:	e602                	sd	zero,264(sp)
    800425f6:	fd82                	sd	zero,248(sp)
    800425f8:	f9be                	sd	a5,240(sp)
    800425fa:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800425fc:	d9ba                	sw	a4,240(sp)
js_array_slice():
quickjs-nuttx/quickjs.c:40103
        if (JS_SetProperty(ctx, obj, JS_ATOM_length, JS_NewInt64(ctx, new_len)) < 0)
    800425fe:	774e                	ld	a4,240(sp)
    80042600:	65c6                	ld	a1,80(sp)
    80042602:	6666                	ld	a2,88(sp)
    80042604:	03000693          	li	a3,48
    80042608:	8522                	mv	a0,s0
    8004260a:	e02f50ef          	jal	ra,80037c0c <JS_SetProperty>
    8004260e:	ea0555e3          	bgez	a0,800424b8 <js_array_slice+0x17c>
    80042612:	b751                	j	80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40089
            if (JS_CopySubArray(ctx, obj, start + item_count,
    80042614:	7742                	ld	a4,48(sp)
    80042616:	4805                	li	a6,1
    80042618:	00e586b3          	add	a3,a1,a4
    8004261c:	9732                	add	a4,a4,a2
    8004261e:	8f99                	sub	a5,a5,a4
    80042620:	00b65363          	bge	a2,a1,80042626 <js_array_slice+0x2ea>
    80042624:	587d                	li	a6,-1
quickjs-nuttx/quickjs.c:40089 (discriminator 4)
    80042626:	65c6                	ld	a1,80(sp)
    80042628:	6666                	ld	a2,88(sp)
    8004262a:	8522                	mv	a0,s0
    8004262c:	b4af80ef          	jal	ra,8003a976 <JS_CopySubArray>
    80042630:	f60543e3          	bltz	a0,80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40094
            for (k = len; k-- > new_len; ) {
    80042634:	7a22                	ld	s4,40(sp)
quickjs-nuttx/quickjs.c:40094 (discriminator 1)
    80042636:	87d2                	mv	a5,s4
    80042638:	1a7d                	addi	s4,s4,-1
    8004263a:	f8f95de3          	bge	s2,a5,800425d4 <js_array_slice+0x298>
quickjs-nuttx/quickjs.c:40095
                if (JS_DeletePropertyInt64(ctx, obj, k, JS_PROP_THROW) < 0)
    8004263e:	65c6                	ld	a1,80(sp)
    80042640:	6666                	ld	a2,88(sp)
    80042642:	6711                	lui	a4,0x4
    80042644:	86d2                	mv	a3,s4
    80042646:	8522                	mv	a0,s0
    80042648:	d23ed0ef          	jal	ra,8003036a <JS_DeletePropertyInt64>
    8004264c:	fe0555e3          	bgez	a0,80042636 <js_array_slice+0x2fa>
    80042650:	b799                	j	80042596 <js_array_slice+0x25a>
quickjs-nuttx/quickjs.c:40100
            if (JS_SetPropertyInt64(ctx, obj, start + i, JS_DupValue(ctx, argv[i + 2])) < 0)
    80042652:	76c2                	ld	a3,48(sp)
    80042654:	6088                	ld	a0,0(s1)
    80042656:	648c                	ld	a1,8(s1)
    80042658:	96d2                	add	a3,a3,s4
    8004265a:	e436                	sd	a3,8(sp)
    8004265c:	dbfc70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80042660:	87ae                	mv	a5,a1
    80042662:	fd2e                	sd	a1,184(sp)
    80042664:	66a2                	ld	a3,8(sp)
    80042666:	65c6                	ld	a1,80(sp)
    80042668:	6666                	ld	a2,88(sp)
    8004266a:	872a                	mv	a4,a0
    8004266c:	f92a                	sd	a0,176(sp)
    8004266e:	8522                	mv	a0,s0
    80042670:	805f50ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    80042674:	0a05                	addi	s4,s4,1
    80042676:	04c1                	addi	s1,s1,16
    80042678:	f60551e3          	bgez	a0,800425da <js_array_slice+0x29e>
    8004267c:	bf29                	j	80042596 <js_array_slice+0x25a>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8004267e:	d22977d3          	fcvt.d.l	fa5,s2
    80042682:	479d                	li	a5,7
    80042684:	e2078753          	fmv.x.d	a4,fa5
js_array_slice():
quickjs-nuttx/quickjs.h:230
    return v;
    80042688:	b9be                	fsd	fa5,240(sp)
    8004268a:	2701                	sext.w	a4,a4
    8004268c:	bf85                	j	800425fc <js_array_slice+0x2c0>

000000008004268e <js_array_concat>:
js_array_concat():
quickjs-nuttx/quickjs.c:39137
{
    8004268e:	7129                	addi	sp,sp,-320
    80042690:	fa22                	sd	s0,304(sp)
    80042692:	f24a                	sd	s2,288(sp)
    80042694:	ee4e                	sd	s3,280(sp)
    80042696:	e656                	sd	s5,264(sp)
    80042698:	fe06                	sd	ra,312(sp)
    8004269a:	f626                	sd	s1,296(sp)
    8004269c:	ea52                	sd	s4,272(sp)
    8004269e:	e25a                	sd	s6,256(sp)
    800426a0:	fdde                	sd	s7,248(sp)
    800426a2:	f9e2                	sd	s8,240(sp)
    800426a4:	f5e6                	sd	s9,232(sp)
    800426a6:	f1ea                	sd	s10,224(sp)
    800426a8:	edee                	sd	s11,216(sp)
    800426aa:	842a                	mv	s0,a0
    800426ac:	e82e                	sd	a1,16(sp)
    800426ae:	ec32                	sd	a2,24(sp)
    800426b0:	e036                	sd	a3,0(sp)
    800426b2:	8aba                	mv	s5,a4
quickjs-nuttx/quickjs.c:39143
    arr = JS_UNDEFINED;
    800426b4:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:39144
    obj = JS_ToObject(ctx, this_val);
    800426b6:	a05ed0ef          	jal	ra,800300ba <JS_ToObject>
    800426ba:	f82a                	sd	a0,48(sp)
    800426bc:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39145
    if (JS_IsException(obj))
    800426be:	0005879b          	sext.w	a5,a1
    800426c2:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:39144
    obj = JS_ToObject(ctx, this_val);
    800426c4:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:39145
    if (JS_IsException(obj))
    800426c6:	1f378263          	beq	a5,s3,800428aa <js_array_concat+0x21c>
quickjs-nuttx/quickjs.c:39148
    arr = JS_ArraySpeciesCreate(ctx, obj, JS_NewInt32(ctx, 0));
    800426ca:	85aa                	mv	a1,a0
    800426cc:	4681                	li	a3,0
    800426ce:	4701                	li	a4,0
    800426d0:	864a                	mv	a2,s2
    800426d2:	8522                	mv	a0,s0
    800426d4:	f882                	sd	zero,112(sp)
    800426d6:	fc82                	sd	zero,120(sp)
    800426d8:	b05ff0ef          	jal	ra,800421dc <JS_ArraySpeciesCreate>
    800426dc:	e0aa                	sd	a0,64(sp)
    800426de:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39149
    if (JS_IsException(arr))
    800426e0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:39148
    arr = JS_ArraySpeciesCreate(ctx, obj, JS_NewInt32(ctx, 0));
    800426e4:	84ae                	mv	s1,a1
    800426e6:	8cae                	mv	s9,a1
quickjs-nuttx/quickjs.c:39149
    if (JS_IsException(arr))
    800426e8:	17378363          	beq	a5,s3,8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39179
            if (n >= MAX_SAFE_INTEGER) {
    800426ec:	7c7d                	lui	s8,0xfffff
quickjs-nuttx/quickjs.c:39183
            if (JS_DefinePropertyValueInt64(ctx, arr, n, JS_DupValue(ctx, e),
    800426ee:	6b91                	lui	s7,0x4
    800426f0:	1ac1                	addi	s5,s5,-16
quickjs-nuttx/quickjs.c:39152
    for (i = -1; i < argc; i++) {
    800426f2:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:39151
    n = 0;
    800426f4:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:39153
        if (i < 0)
    800426f6:	5d7d                	li	s10,-1
quickjs-nuttx/quickjs.c:39179
            if (n >= MAX_SAFE_INTEGER) {
    800426f8:	00bc5c13          	srli	s8,s8,0xb
quickjs-nuttx/quickjs.c:39183
            if (JS_DefinePropertyValueInt64(ctx, arr, n, JS_DupValue(ctx, e),
    800426fc:	0b9d                	addi	s7,s7,7
quickjs-nuttx/quickjs.c:39152 (discriminator 1)
    for (i = -1; i < argc; i++) {
    800426fe:	6782                	ld	a5,0(sp)
    80042700:	06fb4663          	blt	s6,a5,8004276c <js_array_concat+0xde>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80042704:	0009871b          	sext.w	a4,s3
    80042708:	18e99963          	bne	s3,a4,8004289a <js_array_concat+0x20c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004270c:	db02                	sw	zero,180(sp)
    8004270e:	d93a                	sw	a4,176(sp)
    80042710:	77ca                	ld	a5,176(sp)
    80042712:	fd02                	sd	zero,184(sp)
    80042714:	f502                	sd	zero,168(sp)
    80042716:	f13e                	sd	a5,160(sp)
    80042718:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8004271a:	d13a                	sw	a4,160(sp)
    8004271c:	378a                	fld	fa5,160(sp)
js_array_concat():
quickjs-nuttx/quickjs.c:39189
    if (JS_SetProperty(ctx, arr, JS_ATOM_length, JS_NewInt64(ctx, n)) < 0)
    8004271e:	770a                	ld	a4,160(sp)
    80042720:	6586                	ld	a1,64(sp)
    80042722:	03000693          	li	a3,48
    80042726:	8626                	mv	a2,s1
    80042728:	8522                	mv	a0,s0
    8004272a:	a93e                	fsd	fa5,144(sp)
    8004272c:	ed3e                	sd	a5,152(sp)
    8004272e:	e4a6                	sd	s1,72(sp)
    80042730:	cdcf50ef          	jal	ra,80037c0c <JS_SetProperty>
    80042734:	10054d63          	bltz	a0,8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39192
    JS_FreeValue(ctx, obj);
    80042738:	75c2                	ld	a1,48(sp)
    8004273a:	864a                	mv	a2,s2
    8004273c:	8522                	mv	a0,s0
    8004273e:	860c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39193
    return arr;
    80042742:	6786                	ld	a5,64(sp)
    80042744:	f13e                	sd	a5,160(sp)
    80042746:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:39199
}
    80042748:	70f2                	ld	ra,312(sp)
    8004274a:	7452                	ld	s0,304(sp)
quickjs-nuttx/quickjs.c:39198
    return JS_EXCEPTION;
    8004274c:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:39199
}
    8004274e:	750a                	ld	a0,160(sp)
    80042750:	75aa                	ld	a1,168(sp)
    80042752:	74b2                	ld	s1,296(sp)
    80042754:	7912                	ld	s2,288(sp)
    80042756:	69f2                	ld	s3,280(sp)
    80042758:	6a52                	ld	s4,272(sp)
    8004275a:	6ab2                	ld	s5,264(sp)
    8004275c:	6b12                	ld	s6,256(sp)
    8004275e:	7bee                	ld	s7,248(sp)
    80042760:	7c4e                	ld	s8,240(sp)
    80042762:	7cae                	ld	s9,232(sp)
    80042764:	7d0e                	ld	s10,224(sp)
    80042766:	6dee                	ld	s11,216(sp)
    80042768:	6131                	addi	sp,sp,320
    8004276a:	8082                	ret
quickjs-nuttx/quickjs.c:39153
        if (i < 0)
    8004276c:	09ab1263          	bne	s6,s10,800427f0 <js_array_concat+0x162>
quickjs-nuttx/quickjs.c:39154
            e = obj;
    80042770:	77c2                	ld	a5,48(sp)
    80042772:	fc4a                	sd	s2,56(sp)
    80042774:	8a4a                	mv	s4,s2
    80042776:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:39158
        res = JS_isConcatSpreadable(ctx, e);
    80042778:	7706                	ld	a4,96(sp)
    8004277a:	f4d2                	sd	s4,104(sp)
    8004277c:	ed52                	sd	s4,152(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    8004277e:	e93a                	sd	a4,144(sp)
JS_isConcatSpreadable():
quickjs-nuttx/quickjs.c:39025
    if (!JS_IsObject(obj))
    80042780:	000a079b          	sext.w	a5,s4
    80042784:	0fa79463          	bne	a5,s10,8004286c <js_array_concat+0x1de>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80042788:	87d2                	mv	a5,s4
    8004278a:	85ba                	mv	a1,a4
    8004278c:	8652                	mv	a2,s4
    8004278e:	4801                	li	a6,0
    80042790:	0dd00693          	li	a3,221
    80042794:	8522                	mv	a0,s0
    80042796:	f93a                	sd	a4,176(sp)
    80042798:	fd52                	sd	s4,184(sp)
    8004279a:	b10d40ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8004279e:	e1aa                	sd	a0,192(sp)
    800427a0:	e5ae                	sd	a1,200(sp)
    800427a2:	f12a                	sd	a0,160(sp)
    800427a4:	f52e                	sd	a1,168(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800427a6:	0005879b          	sext.w	a5,a1
JS_isConcatSpreadable():
quickjs-nuttx/quickjs.c:39028
    if (JS_IsException(val))
    800427aa:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800427ac:	862e                	mv	a2,a1
JS_isConcatSpreadable():
quickjs-nuttx/quickjs.c:39028
    800427ae:	0ae78063          	beq	a5,a4,8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39030
    if (!JS_IsUndefined(val))
    800427b2:	470d                	li	a4,3
    800427b4:	04e78463          	beq	a5,a4,800427fc <js_array_concat+0x16e>
quickjs-nuttx/quickjs.c:39031
        return JS_ToBoolFree(ctx, val);
    800427b8:	85aa                	mv	a1,a0
    800427ba:	8522                	mv	a0,s0
    800427bc:	b58c90ef          	jal	ra,8000bb14 <JS_ToBoolFree>
js_array_concat():
quickjs-nuttx/quickjs.c:39159
        if (res < 0)
    800427c0:	08054763          	bltz	a0,8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39161
        if (res) {
    800427c4:	c545                	beqz	a0,8004286c <js_array_concat+0x1de>
quickjs-nuttx/quickjs.c:39162
            if (js_get_length64(ctx, &len, e))
    800427c6:	7606                	ld	a2,96(sp)
    800427c8:	76a6                	ld	a3,104(sp)
    800427ca:	102c                	addi	a1,sp,40
    800427cc:	8522                	mv	a0,s0
    800427ce:	e02e20ef          	jal	ra,80024dd0 <js_get_length64>
    800427d2:	ed35                	bnez	a0,8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39164
            if (n + len > MAX_SAFE_INTEGER) {
    800427d4:	77a2                	ld	a5,40(sp)
    800427d6:	577d                	li	a4,-1
    800427d8:	832d                	srli	a4,a4,0xb
    800427da:	97ce                	add	a5,a5,s3
    800427dc:	08f75663          	bge	a4,a5,80042868 <js_array_concat+0x1da>
quickjs-nuttx/quickjs.c:39180
                JS_ThrowTypeError(ctx, "Array loo long");
    800427e0:	8522                	mv	a0,s0
    800427e2:	0002a597          	auipc	a1,0x2a
    800427e6:	5f658593          	addi	a1,a1,1526 # 8006cdd8 <qjsc_repl+0x7828>
    800427ea:	e83d50ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:39181
                goto exception;
    800427ee:	a085                	j	8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39156
            e = argv[i];
    800427f0:	000ab783          	ld	a5,0(s5)
    800427f4:	008aba03          	ld	s4,8(s5)
    800427f8:	f0be                	sd	a5,96(sp)
    800427fa:	bfbd                	j	80042778 <js_array_concat+0xea>
JS_isConcatSpreadable():
quickjs-nuttx/quickjs.c:39032
    return JS_IsArray(ctx, obj);
    800427fc:	65ca                	ld	a1,144(sp)
    800427fe:	666a                	ld	a2,152(sp)
    80042800:	8522                	mv	a0,s0
    80042802:	da8d70ef          	jal	ra,80019daa <JS_IsArray>
    80042806:	bf6d                	j	800427c0 <js_array_concat+0x132>
js_array_concat():
quickjs-nuttx/quickjs.c:39169
                res = JS_TryGetPropertyInt64(ctx, e, k, &val);
    80042808:	7586                	ld	a1,96(sp)
    8004280a:	0898                	addi	a4,sp,80
    8004280c:	86ee                	mv	a3,s11
    8004280e:	8652                	mv	a2,s4
    80042810:	8522                	mv	a0,s0
    80042812:	e41a                	sd	t1,8(sp)
    80042814:	f4d2                	sd	s4,104(sp)
    80042816:	fdaf70ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39170
                if (res < 0)
    8004281a:	02054a63          	bltz	a0,8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39172
                if (res) {
    8004281e:	6322                	ld	t1,8(sp)
    80042820:	e919                	bnez	a0,80042836 <js_array_concat+0x1a8>
quickjs-nuttx/quickjs.c:39168
            for (k = 0; k < len; k++, n++) {
    80042822:	0d85                	addi	s11,s11,1
quickjs-nuttx/quickjs.c:39168 (discriminator 1)
    80042824:	77a2                	ld	a5,40(sp)
    80042826:	013d8333          	add	t1,s11,s3
    8004282a:	fcfdcfe3          	blt	s11,a5,80042808 <js_array_concat+0x17a>
quickjs-nuttx/quickjs.c:39152 (discriminator 2)
    for (i = -1; i < argc; i++) {
    8004282e:	2b05                	addiw	s6,s6,1
    80042830:	0ac1                	addi	s5,s5,16
    80042832:	899a                	mv	s3,t1
    80042834:	b5e9                	j	800426fe <js_array_concat+0x70>
quickjs-nuttx/quickjs.c:39173
                    if (JS_DefinePropertyValueInt64(ctx, arr, n, val,
    80042836:	6746                	ld	a4,80(sp)
    80042838:	67e6                	ld	a5,88(sp)
    8004283a:	6586                	ld	a1,64(sp)
    8004283c:	885e                	mv	a6,s7
    8004283e:	869a                	mv	a3,t1
    80042840:	8626                	mv	a2,s1
    80042842:	8522                	mv	a0,s0
    80042844:	e4a6                	sd	s1,72(sp)
    80042846:	fecee0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    8004284a:	fc055ce3          	bgez	a0,80042822 <js_array_concat+0x194>
quickjs-nuttx/quickjs.c:39196
    JS_FreeValue(ctx, arr);
    8004284e:	6586                	ld	a1,64(sp)
    80042850:	8666                	mv	a2,s9
    80042852:	8522                	mv	a0,s0
    80042854:	f4bc80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39197
    JS_FreeValue(ctx, obj);
    80042858:	75c2                	ld	a1,48(sp)
    8004285a:	864a                	mv	a2,s2
    8004285c:	8522                	mv	a0,s0
    8004285e:	f41c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39198
    return JS_EXCEPTION;
    80042862:	4799                	li	a5,6
    80042864:	f102                	sd	zero,160(sp)
    80042866:	b5cd                	j	80042748 <js_array_concat+0xba>
quickjs-nuttx/quickjs.c:39168
            for (k = 0; k < len; k++, n++) {
    80042868:	4d81                	li	s11,0
    8004286a:	bf6d                	j	80042824 <js_array_concat+0x196>
quickjs-nuttx/quickjs.c:39179
            if (n >= MAX_SAFE_INTEGER) {
    8004286c:	f73c4ae3          	blt	s8,s3,800427e0 <js_array_concat+0x152>
quickjs-nuttx/quickjs.c:39183
            if (JS_DefinePropertyValueInt64(ctx, arr, n, JS_DupValue(ctx, e),
    80042870:	7506                	ld	a0,96(sp)
    80042872:	75a6                	ld	a1,104(sp)
    80042874:	ba7c70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80042878:	87ae                	mv	a5,a1
    8004287a:	e52e                	sd	a1,136(sp)
    8004287c:	6586                	ld	a1,64(sp)
    8004287e:	872a                	mv	a4,a0
    80042880:	e12a                	sd	a0,128(sp)
    80042882:	885e                	mv	a6,s7
    80042884:	86ce                	mv	a3,s3
    80042886:	8626                	mv	a2,s1
    80042888:	8522                	mv	a0,s0
    8004288a:	e4a6                	sd	s1,72(sp)
    8004288c:	fa6ee0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80042890:	fa054fe3          	bltz	a0,8004284e <js_array_concat+0x1c0>
quickjs-nuttx/quickjs.c:39186
            n++;
    80042894:	00198313          	addi	t1,s3,1
    80042898:	bf59                	j	8004282e <js_array_concat+0x1a0>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8004289a:	d229f7d3          	fcvt.d.l	fa5,s3
    8004289e:	479d                	li	a5,7
    800428a0:	e2078753          	fmv.x.d	a4,fa5
js_array_concat():
quickjs-nuttx/quickjs.h:230
    return v;
    800428a4:	b13e                	fsd	fa5,160(sp)
    800428a6:	2701                	sext.w	a4,a4
    800428a8:	bd8d                	j	8004271a <js_array_concat+0x8c>
quickjs-nuttx/quickjs.c:39143
    arr = JS_UNDEFINED;
    800428aa:	4c8d                	li	s9,3
    800428ac:	b74d                	j	8004284e <js_array_concat+0x1c0>

00000000800428ae <js_regexp_Symbol_split>:
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44654
{
    800428ae:	7101                	addi	sp,sp,-512
    800428b0:	e4b2                	sd	a2,72(sp)
quickjs-nuttx/quickjs.c:44656
    JSValueConst rx = this_val;
    800428b2:	fcb2                	sd	a2,120(sp)
quickjs-nuttx/quickjs.c:44654
{
    800428b4:	ff86                	sd	ra,504(sp)
    800428b6:	fba2                	sd	s0,496(sp)
    800428b8:	f7a6                	sd	s1,488(sp)
    800428ba:	f3ca                	sd	s2,480(sp)
    800428bc:	efce                	sd	s3,472(sp)
    800428be:	ebd2                	sd	s4,464(sp)
    800428c0:	e7d6                	sd	s5,456(sp)
    800428c2:	e3da                	sd	s6,448(sp)
    800428c4:	ff5e                	sd	s7,440(sp)
    800428c6:	fb62                	sd	s8,432(sp)
    800428c8:	f766                	sd	s9,424(sp)
    800428ca:	f36a                	sd	s10,416(sp)
    800428cc:	ef6e                	sd	s11,408(sp)
    800428ce:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:44656
    JSValueConst rx = this_val;
    800428d0:	f8ae                	sd	a1,112(sp)
quickjs-nuttx/quickjs.c:44664
    if (!JS_IsObject(rx))
    800428d2:	2601                	sext.w	a2,a2
    800428d4:	57fd                	li	a5,-1
    800428d6:	02f60363          	beq	a2,a5,800428fc <js_regexp_Symbol_split+0x4e>
quickjs-nuttx/quickjs.c:44776
}
    800428da:	745e                	ld	s0,496(sp)
    800428dc:	70fe                	ld	ra,504(sp)
    800428de:	74be                	ld	s1,488(sp)
    800428e0:	791e                	ld	s2,480(sp)
    800428e2:	69fe                	ld	s3,472(sp)
    800428e4:	6a5e                	ld	s4,464(sp)
    800428e6:	6abe                	ld	s5,456(sp)
    800428e8:	6b1e                	ld	s6,448(sp)
    800428ea:	7bfa                	ld	s7,440(sp)
    800428ec:	7c5a                	ld	s8,432(sp)
    800428ee:	7cba                	ld	s9,424(sp)
    800428f0:	7d1a                	ld	s10,416(sp)
    800428f2:	6dfa                	ld	s11,408(sp)
    800428f4:	20010113          	addi	sp,sp,512
quickjs-nuttx/quickjs.c:44665
        return JS_ThrowTypeErrorNotAnObject(ctx);
    800428f8:	b32d606f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:44672
    str = JS_ToString(ctx, argv[0]);
    800428fc:	630c                	ld	a1,0(a4)
    800428fe:	6710                	ld	a2,8(a4)
    80042900:	842a                	mv	s0,a0
    80042902:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:44667
    ctor = JS_UNDEFINED;
    80042904:	e902                	sd	zero,144(sp)
quickjs-nuttx/quickjs.c:44668
    splitter = JS_UNDEFINED;
    80042906:	f102                	sd	zero,160(sp)
quickjs-nuttx/quickjs.c:44669
    A = JS_UNDEFINED;
    80042908:	f902                	sd	zero,176(sp)
quickjs-nuttx/quickjs.c:44671
    z = JS_UNDEFINED;
    8004290a:	e982                	sd	zero,208(sp)
    8004290c:	ed82                	sd	zero,216(sp)
quickjs-nuttx/quickjs.c:44672
    str = JS_ToString(ctx, argv[0]);
    8004290e:	e6fdd0ef          	jal	ra,8002077c <JS_ToString>
    80042912:	e52e                	sd	a1,136(sp)
    80042914:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:44673
    if (JS_IsException(str))
    80042916:	2581                	sext.w	a1,a1
    80042918:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:44672
    str = JS_ToString(ctx, argv[0]);
    8004291a:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:44673
    if (JS_IsException(str))
    8004291c:	37658063          	beq	a1,s6,80042c7c <js_regexp_Symbol_split+0x3ce>
quickjs-nuttx/quickjs.c:44675
    ctor = JS_SpeciesConstructor(ctx, rx, ctx->regexp_ctor);
    80042920:	7c34                	ld	a3,120(s0)
    80042922:	6058                	ld	a4,128(s0)
    80042924:	75c6                	ld	a1,112(sp)
    80042926:	7666                	ld	a2,120(sp)
    80042928:	8522                	mv	a0,s0
    8004292a:	d42d60ef          	jal	ra,80018e6c <JS_SpeciesConstructor>
    8004292e:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:44676
    if (JS_IsException(ctor))
    80042930:	47a2                	lw	a5,8(sp)
quickjs-nuttx/quickjs.c:44675
    ctor = JS_SpeciesConstructor(ctx, rx, ctx->regexp_ctor);
    80042932:	e92a                	sd	a0,144(sp)
    80042934:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:44676
    if (JS_IsException(ctor))
    80042936:	35678b63          	beq	a5,s6,80042c8c <js_regexp_Symbol_split+0x3de>
quickjs-nuttx/quickjs.c:44678
    flags = JS_ToStringFree(ctx, JS_GetProperty(ctx, rx, JS_ATOM_flags));
    8004293a:	77e6                	ld	a5,120(sp)
    8004293c:	7746                	ld	a4,112(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8004293e:	4801                	li	a6,0
    80042940:	863e                	mv	a2,a5
    80042942:	06e00693          	li	a3,110
    80042946:	85ba                	mv	a1,a4
    80042948:	8522                	mv	a0,s0
    8004294a:	febe                	sd	a5,376(sp)
    8004294c:	faba                	sd	a4,368(sp)
    8004294e:	95cd40ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80042952:	862e                	mv	a2,a1
    80042954:	fa2a                	sd	a0,304(sp)
    80042956:	fe2e                	sd	a1,312(sp)
    80042958:	f9aa                	sd	a0,240(sp)
    8004295a:	fdae                	sd	a1,248(sp)
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44678
    8004295c:	85aa                	mv	a1,a0
    8004295e:	8522                	mv	a0,s0
    80042960:	e27dd0ef          	jal	ra,80020786 <JS_ToStringFree>
    80042964:	e1aa                	sd	a0,192(sp)
    80042966:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:44679
    if (JS_IsException(flags))
    80042968:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44678
    flags = JS_ToStringFree(ctx, JS_GetProperty(ctx, rx, JS_ATOM_flags));
    8004296c:	892a                	mv	s2,a0
    8004296e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:44679
    if (JS_IsException(flags))
    80042970:	33678463          	beq	a5,s6,80042c98 <js_regexp_Symbol_split+0x3ea>
quickjs-nuttx/quickjs.c:44682
    unicodeMatching = string_indexof_char(strp, 'u', 0) >= 0;
    80042974:	4601                	li	a2,0
    80042976:	07500593          	li	a1,117
    8004297a:	82bc50ef          	jal	ra,800081a4 <string_indexof_char>
    8004297e:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:44683
    if (string_indexof_char(strp, 'y', 0) < 0) {
    80042980:	4601                	li	a2,0
    80042982:	07900593          	li	a1,121
    80042986:	854a                	mv	a0,s2
    80042988:	81dc50ef          	jal	ra,800081a4 <string_indexof_char>
    8004298c:	02055763          	bgez	a0,800429ba <js_regexp_Symbol_split+0x10c>
quickjs-nuttx/quickjs.c:44684
        flags = JS_ConcatString3(ctx, "", flags, "y");
    80042990:	864a                	mv	a2,s2
    80042992:	86a6                	mv	a3,s1
    80042994:	0002c717          	auipc	a4,0x2c
    80042998:	99470713          	addi	a4,a4,-1644 # 8006e328 <qjsc_repl+0x8d78>
    8004299c:	00027597          	auipc	a1,0x27
    800429a0:	1ec58593          	addi	a1,a1,492 # 80069b88 <qjsc_repl+0x45d8>
    800429a4:	8522                	mv	a0,s0
    800429a6:	e0bdd0ef          	jal	ra,800207b0 <JS_ConcatString3>
    800429aa:	e1aa                	sd	a0,192(sp)
    800429ac:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:44685
        if (JS_IsException(flags))
    800429ae:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44684
        flags = JS_ConcatString3(ctx, "", flags, "y");
    800429b2:	892a                	mv	s2,a0
    800429b4:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:44685
        if (JS_IsException(flags))
    800429b6:	2f678163          	beq	a5,s6,80042c98 <js_regexp_Symbol_split+0x3ea>
quickjs-nuttx/quickjs.c:44688
    args[0] = rx;
    800429ba:	77c6                	ld	a5,112(sp)
quickjs-nuttx/quickjs.c:44690
    splitter = JS_CallConstructor(ctx, ctor, 2, args);
    800429bc:	65ca                	ld	a1,144(sp)
    800429be:	666a                	ld	a2,152(sp)
quickjs-nuttx/quickjs.c:44688
    args[0] = rx;
    800429c0:	fabe                	sd	a5,368(sp)
    800429c2:	77e6                	ld	a5,120(sp)
quickjs-nuttx/quickjs.c:44690
    splitter = JS_CallConstructor(ctx, ctor, 2, args);
    800429c4:	1a98                	addi	a4,sp,368
    800429c6:	4689                	li	a3,2
    800429c8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44688
    args[0] = rx;
    800429ca:	febe                	sd	a5,376(sp)
quickjs-nuttx/quickjs.c:44689
    args[1] = flags;
    800429cc:	e34a                	sd	s2,384(sp)
    800429ce:	e726                	sd	s1,392(sp)
quickjs-nuttx/quickjs.c:44690
    splitter = JS_CallConstructor(ctx, ctor, 2, args);
    800429d0:	9d4ff0ef          	jal	ra,80041ba4 <JS_CallConstructor>
    800429d4:	f12a                	sd	a0,160(sp)
    800429d6:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:44691
    if (JS_IsException(splitter))
    800429d8:	0005879b          	sext.w	a5,a1
    800429dc:	4d19                	li	s10,6
quickjs-nuttx/quickjs.c:44690
    splitter = JS_CallConstructor(ctx, ctor, 2, args);
    800429de:	8c2e                	mv	s8,a1
    800429e0:	8cae                	mv	s9,a1
quickjs-nuttx/quickjs.c:44691
    if (JS_IsException(splitter))
    800429e2:	2ba78d63          	beq	a5,s10,80042c9c <js_regexp_Symbol_split+0x3ee>
quickjs-nuttx/quickjs.c:44693
    A = JS_NewArray(ctx);
    800429e6:	8522                	mv	a0,s0
    800429e8:	873d90ef          	jal	ra,8001c25a <JS_NewArray>
    800429ec:	f92a                	sd	a0,176(sp)
    800429ee:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:44694
    if (JS_IsException(A))
    800429f0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44693
    A = JS_NewArray(ctx);
    800429f4:	8bae                	mv	s7,a1
    800429f6:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:44694
    if (JS_IsException(A))
    800429f8:	2ba78563          	beq	a5,s10,80042ca2 <js_regexp_Symbol_split+0x3f4>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    800429fc:	0189b683          	ld	a3,24(s3)
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44697
    if (JS_IsUndefined(argv[1])) {
    80042a00:	478d                	li	a5,3
    80042a02:	0006871b          	sext.w	a4,a3
    80042a06:	02f71e63          	bne	a4,a5,80042a42 <js_regexp_Symbol_split+0x194>
quickjs-nuttx/quickjs.c:44698
        lim = 0xffffffff;
    80042a0a:	57fd                	li	a5,-1
    80042a0c:	cebe                	sw	a5,92(sp)
quickjs-nuttx/quickjs.c:44707
    size = strp->len;
    80042a0e:	004a2783          	lw	a5,4(s4)
    80042a12:	1786                	slli	a5,a5,0x21
    80042a14:	0217dd93          	srli	s11,a5,0x21
quickjs-nuttx/quickjs.c:44708
    if (size == 0) {
    80042a18:	efc9                	bnez	a5,80042ab2 <js_regexp_Symbol_split+0x204>
quickjs-nuttx/quickjs.c:44709
        z = JS_RegExpExec(ctx, splitter, str);
    80042a1a:	672a                	ld	a4,136(sp)
    80042a1c:	668a                	ld	a3,128(sp)
    80042a1e:	758a                	ld	a1,160(sp)
    80042a20:	762a                	ld	a2,168(sp)
    80042a22:	8522                	mv	a0,s0
    80042a24:	82afd0ef          	jal	ra,8003fa4e <JS_RegExpExec>
    80042a28:	e9aa                	sd	a0,208(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80042a2a:	0005879b          	sext.w	a5,a1
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44710
        if (JS_IsException(z))
    80042a2e:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:44709
        z = JS_RegExpExec(ctx, splitter, str);
    80042a30:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:44710
        if (JS_IsException(z))
    80042a32:	14e78463          	beq	a5,a4,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44712
        if (JS_IsNull(z))
    80042a36:	4709                	li	a4,2
    80042a38:	02e79263          	bne	a5,a4,80042a5c <js_regexp_Symbol_split+0x1ae>
quickjs-nuttx/quickjs.c:44706
    p = q = 0;
    80042a3c:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:44696
    lengthA = 0;
    80042a3e:	4d01                	li	s10,0
    80042a40:	a201                	j	80042b40 <js_regexp_Symbol_split+0x292>
quickjs-nuttx/quickjs.c:44700
        if (JS_ToUint32(ctx, &lim, argv[1]) < 0)
    80042a42:	0109b603          	ld	a2,16(s3)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    80042a46:	08ec                	addi	a1,sp,92
    80042a48:	8522                	mv	a0,s0
    80042a4a:	f2b2                	sd	a2,352(sp)
    80042a4c:	f6b6                	sd	a3,360(sp)
    80042a4e:	96ddf0ef          	jal	ra,800223ba <JS_ToInt32>
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44700
    80042a52:	24054863          	bltz	a0,80042ca2 <js_regexp_Symbol_split+0x3f4>
quickjs-nuttx/quickjs.c:44702
        if (lim == 0)
    80042a56:	47f6                	lw	a5,92(sp)
quickjs-nuttx/quickjs.c:44671
    z = JS_UNDEFINED;
    80042a58:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:44702
        if (lim == 0)
    80042a5a:	fbd5                	bnez	a5,80042a0e <js_regexp_Symbol_split+0x160>
quickjs-nuttx/quickjs.c:44770
    JS_FreeValue(ctx, str);
    80042a5c:	662a                	ld	a2,136(sp)
    80042a5e:	85d2                	mv	a1,s4
    80042a60:	8522                	mv	a0,s0
    80042a62:	d3dc80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44771
    JS_FreeValue(ctx, ctor);
    80042a66:	65ca                	ld	a1,144(sp)
    80042a68:	6622                	ld	a2,8(sp)
    80042a6a:	8522                	mv	a0,s0
    80042a6c:	d33c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44772
    JS_FreeValue(ctx, splitter);
    80042a70:	758a                	ld	a1,160(sp)
    80042a72:	8666                	mv	a2,s9
    80042a74:	8522                	mv	a0,s0
    80042a76:	d29c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44773
    JS_FreeValue(ctx, flags);
    80042a7a:	85ca                	mv	a1,s2
    80042a7c:	8626                	mv	a2,s1
    80042a7e:	8522                	mv	a0,s0
    80042a80:	d1fc80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44774
    JS_FreeValue(ctx, z);    
    80042a84:	65ce                	ld	a1,208(sp)
    80042a86:	8522                	mv	a0,s0
    80042a88:	864e                	mv	a2,s3
    80042a8a:	d15c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44776
}
    80042a8e:	70fe                	ld	ra,504(sp)
    80042a90:	745e                	ld	s0,496(sp)
    80042a92:	754a                	ld	a0,176(sp)
    80042a94:	74be                	ld	s1,488(sp)
    80042a96:	791e                	ld	s2,480(sp)
    80042a98:	69fe                	ld	s3,472(sp)
    80042a9a:	6a5e                	ld	s4,464(sp)
    80042a9c:	6abe                	ld	s5,456(sp)
    80042a9e:	7bfa                	ld	s7,440(sp)
    80042aa0:	7c5a                	ld	s8,432(sp)
    80042aa2:	7cba                	ld	s9,424(sp)
    80042aa4:	7d1a                	ld	s10,416(sp)
    80042aa6:	6dfa                	ld	s11,408(sp)
    80042aa8:	85da                	mv	a1,s6
    80042aaa:	6b1e                	ld	s6,448(sp)
    80042aac:	20010113          	addi	sp,sp,512
    80042ab0:	8082                	ret
quickjs-nuttx/quickjs.c:44682
    unicodeMatching = string_indexof_char(strp, 'u', 0) >= 0;
    80042ab2:	fffaca93          	not	s5,s5
    80042ab6:	01fad79b          	srliw	a5,s5,0x1f
    80042aba:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:44728
            if (e > size)
    80042abc:	020d9793          	slli	a5,s11,0x20
    80042ac0:	9381                	srli	a5,a5,0x20
    80042ac2:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:44736
                if (JS_DefinePropertyValueInt64(ctx, A, lengthA++, sub,
    80042ac4:	6791                	lui	a5,0x4
    80042ac6:	079d                	addi	a5,a5,7
quickjs-nuttx/quickjs.c:44696
    lengthA = 0;
    80042ac8:	4d01                	li	s10,0
quickjs-nuttx/quickjs.c:44706
    p = q = 0;
    80042aca:	4881                	li	a7,0
    80042acc:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:44671
    z = JS_UNDEFINED;
    80042ace:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:44736
                if (JS_DefinePropertyValueInt64(ctx, A, lengthA++, sub,
    80042ad0:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:44717
        if (JS_SetProperty(ctx, splitter, JS_ATOM_lastIndex, JS_NewInt32(ctx, q)) < 0)
    80042ad2:	0008879b          	sext.w	a5,a7
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80042ad6:	e282                	sd	zero,320(sp)
    80042ad8:	14f12023          	sw	a5,320(sp)
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44717
    80042adc:	6716                	ld	a4,320(sp)
    80042ade:	758a                	ld	a1,160(sp)
    80042ae0:	ec3e                	sd	a5,24(sp)
    80042ae2:	05600693          	li	a3,86
    80042ae6:	4781                	li	a5,0
    80042ae8:	8662                	mv	a2,s8
    80042aea:	8522                	mv	a0,s0
    80042aec:	fc46                	sd	a7,56(sp)
    80042aee:	f562                	sd	s8,168(sp)
    80042af0:	91cf50ef          	jal	ra,80037c0c <JS_SetProperty>
    80042af4:	08054363          	bltz	a0,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44719
        JS_FreeValue(ctx, z);    
    80042af8:	65ce                	ld	a1,208(sp)
    80042afa:	864e                	mv	a2,s3
    80042afc:	8522                	mv	a0,s0
    80042afe:	ca1c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44720
        z = JS_RegExpExec(ctx, splitter, str);
    80042b02:	672a                	ld	a4,136(sp)
    80042b04:	758a                	ld	a1,160(sp)
    80042b06:	762a                	ld	a2,168(sp)
    80042b08:	86d2                	mv	a3,s4
    80042b0a:	8522                	mv	a0,s0
    80042b0c:	f43fc0ef          	jal	ra,8003fa4e <JS_RegExpExec>
    80042b10:	e82e                	sd	a1,16(sp)
    80042b12:	e9aa                	sd	a0,208(sp)
    80042b14:	edae                	sd	a1,216(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80042b16:	0005879b          	sext.w	a5,a1
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44721
        if (JS_IsException(z))
    80042b1a:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:44720
        z = JS_RegExpExec(ctx, splitter, str);
    80042b1c:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:44721
        if (JS_IsException(z))
    80042b1e:	04e78e63          	beq	a5,a4,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44723
        if (JS_IsNull(z)) {
    80042b22:	4709                	li	a4,2
    80042b24:	78e2                	ld	a7,56(sp)
    80042b26:	06e79263          	bne	a5,a4,80042b8a <js_regexp_Symbol_split+0x2dc>
quickjs-nuttx/quickjs.c:44731
                q = string_advance_index(strp, q, unicodeMatching);
    80042b2a:	7602                	ld	a2,32(sp)
    80042b2c:	02089593          	slli	a1,a7,0x20
    80042b30:	9181                	srli	a1,a1,0x20
    80042b32:	8552                	mv	a0,s4
    80042b34:	ac7c60ef          	jal	ra,800095fa <string_advance_index>
    80042b38:	0005089b          	sext.w	a7,a0
quickjs-nuttx/quickjs.c:44716
    while (q < size) {
    80042b3c:	f9b8ebe3          	bltu	a7,s11,80042ad2 <js_regexp_Symbol_split+0x224>
quickjs-nuttx/quickjs.c:44760
    sub = js_sub_string(ctx, strp, p, size);
    80042b40:	000d869b          	sext.w	a3,s11
    80042b44:	000a861b          	sext.w	a2,s5
    80042b48:	015df463          	bgeu	s11,s5,80042b50 <js_regexp_Symbol_split+0x2a2>
    80042b4c:	000d861b          	sext.w	a2,s11
    80042b50:	85d2                	mv	a1,s4
    80042b52:	8522                	mv	a0,s0
    80042b54:	dbadd0ef          	jal	ra,8002010e <js_sub_string>
quickjs-nuttx/quickjs.c:44761
    if (JS_IsException(sub))
    80042b58:	0005861b          	sext.w	a2,a1
    80042b5c:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:44760
    sub = js_sub_string(ctx, strp, p, size);
    80042b5e:	872a                	mv	a4,a0
    80042b60:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:44761
    if (JS_IsException(sub))
    80042b62:	00d60c63          	beq	a2,a3,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44763
    if (JS_DefinePropertyValueInt64(ctx, A, lengthA++, sub, JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    80042b66:	75ca                	ld	a1,176(sp)
    80042b68:	6811                	lui	a6,0x4
    80042b6a:	081d                	addi	a6,a6,7
    80042b6c:	86ea                	mv	a3,s10
    80042b6e:	865e                	mv	a2,s7
    80042b70:	8522                	mv	a0,s0
    80042b72:	cc0ee0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80042b76:	ee0553e3          	bgez	a0,80042a5c <js_regexp_Symbol_split+0x1ae>
quickjs-nuttx/quickjs.c:44767
    JS_FreeValue(ctx, A);
    80042b7a:	75ca                	ld	a1,176(sp)
    80042b7c:	865a                	mv	a2,s6
    80042b7e:	8522                	mv	a0,s0
    80042b80:	c1fc80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44768
    A = JS_EXCEPTION;
    80042b84:	4b19                	li	s6,6
    80042b86:	f902                	sd	zero,176(sp)
    80042b88:	bdd1                	j	80042a5c <js_regexp_Symbol_split+0x1ae>
    80042b8a:	770a                	ld	a4,160(sp)
    80042b8c:	77aa                	ld	a5,168(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80042b8e:	05600693          	li	a3,86
    80042b92:	4801                	li	a6,0
    80042b94:	863e                	mv	a2,a5
    80042b96:	85ba                	mv	a1,a4
    80042b98:	8522                	mv	a0,s0
    80042b9a:	fc46                	sd	a7,56(sp)
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44726
            if (JS_ToLengthFree(ctx, &e, JS_GetProperty(ctx, splitter, JS_ATOM_lastIndex)))
    80042b9c:	eaba                	sd	a4,336(sp)
    80042b9e:	eebe                	sd	a5,344(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80042ba0:	f0bd30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80042ba4:	862a                	mv	a2,a0
    80042ba6:	86ae                	mv	a3,a1
    80042ba8:	f2aa                	sd	a0,352(sp)
    80042baa:	f6ae                	sd	a1,360(sp)
js_regexp_Symbol_split():
quickjs-nuttx/quickjs.c:44726
    80042bac:	8522                	mv	a0,s0
    80042bae:	108c                	addi	a1,sp,96
    80042bb0:	9eee20ef          	jal	ra,80024d9e <JS_ToLengthFree>
    80042bb4:	f179                	bnez	a0,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44728
            if (e > size)
    80042bb6:	7786                	ld	a5,96(sp)
    80042bb8:	7722                	ld	a4,40(sp)
    80042bba:	78e2                	ld	a7,56(sp)
    80042bbc:	00f75363          	bge	a4,a5,80042bc2 <js_regexp_Symbol_split+0x314>
quickjs-nuttx/quickjs.c:44729
                e = size;
    80042bc0:	f0ba                	sd	a4,96(sp)
quickjs-nuttx/quickjs.c:44730
            if (e == p) {
    80042bc2:	7706                	ld	a4,96(sp)
    80042bc4:	020a9793          	slli	a5,s5,0x20
    80042bc8:	9381                	srli	a5,a5,0x20
    80042bca:	f6e780e3          	beq	a5,a4,80042b2a <js_regexp_Symbol_split+0x27c>
quickjs-nuttx/quickjs.c:44733
                sub = js_sub_string(ctx, strp, p, q);
    80042bce:	66e2                	ld	a3,24(sp)
    80042bd0:	8656                	mv	a2,s5
    80042bd2:	85d2                	mv	a1,s4
    80042bd4:	8522                	mv	a0,s0
    80042bd6:	d38dd0ef          	jal	ra,8002010e <js_sub_string>
quickjs-nuttx/quickjs.c:44734
                if (JS_IsException(sub))
    80042bda:	0005869b          	sext.w	a3,a1
    80042bde:	4619                	li	a2,6
quickjs-nuttx/quickjs.c:44733
                sub = js_sub_string(ctx, strp, p, q);
    80042be0:	872a                	mv	a4,a0
    80042be2:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:44734
                if (JS_IsException(sub))
    80042be4:	f8c68be3          	beq	a3,a2,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44736
                if (JS_DefinePropertyValueInt64(ctx, A, lengthA++, sub,
    80042be8:	7842                	ld	a6,48(sp)
    80042bea:	75ca                	ld	a1,176(sp)
    80042bec:	001d0893          	addi	a7,s10,1
    80042bf0:	86ea                	mv	a3,s10
    80042bf2:	865e                	mv	a2,s7
    80042bf4:	8522                	mv	a0,s0
    80042bf6:	ec46                	sd	a7,24(sp)
    80042bf8:	c3aee0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80042bfc:	f6054fe3          	bltz	a0,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44739
                if (lengthA == lim)
    80042c00:	05c16783          	lwu	a5,92(sp)
    80042c04:	68e2                	ld	a7,24(sp)
    80042c06:	e5178be3          	beq	a5,a7,80042a5c <js_regexp_Symbol_split+0x1ae>
quickjs-nuttx/quickjs.c:44742
                if (js_get_length64(ctx, &numberOfCaptures, z))
    80042c0a:	664e                	ld	a2,208(sp)
    80042c0c:	66ee                	ld	a3,216(sp)
    80042c0e:	10ac                	addi	a1,sp,104
    80042c10:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44741
                p = e;
    80042c12:	7a86                	ld	s5,96(sp)
quickjs-nuttx/quickjs.c:44742
                if (js_get_length64(ctx, &numberOfCaptures, z))
    80042c14:	9bce20ef          	jal	ra,80024dd0 <js_get_length64>
    80042c18:	f12d                	bnez	a0,80042b7a <js_regexp_Symbol_split+0x2cc>
    80042c1a:	68e2                	ld	a7,24(sp)
quickjs-nuttx/quickjs.c:44744
                for(i = 1; i < numberOfCaptures; i++) {
    80042c1c:	4d05                	li	s10,1
quickjs-nuttx/quickjs.c:44744 (discriminator 1)
    80042c1e:	77a6                	ld	a5,104(sp)
    80042c20:	00fd4663          	blt	s10,a5,80042c2c <js_regexp_Symbol_split+0x37e>
quickjs-nuttx/quickjs.c:44741
                p = e;
    80042c24:	2a81                	sext.w	s5,s5
    80042c26:	8d46                	mv	s10,a7
quickjs-nuttx/quickjs.c:44753
                q = p;
    80042c28:	88d6                	mv	a7,s5
    80042c2a:	bf09                	j	80042b3c <js_regexp_Symbol_split+0x28e>
quickjs-nuttx/quickjs.c:44745
                    sub = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, z, i));
    80042c2c:	6642                	ld	a2,16(sp)
    80042c2e:	65ce                	ld	a1,208(sp)
    80042c30:	86ea                	mv	a3,s10
    80042c32:	8522                	mv	a0,s0
    80042c34:	ec46                	sd	a7,24(sp)
    80042c36:	dadf60ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80042c3a:	862e                	mv	a2,a1
    80042c3c:	85aa                	mv	a1,a0
    80042c3e:	8522                	mv	a0,s0
    80042c40:	b47dd0ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:44746
                    if (JS_IsException(sub))
    80042c44:	0005869b          	sext.w	a3,a1
    80042c48:	4619                	li	a2,6
quickjs-nuttx/quickjs.c:44745
                    sub = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, z, i));
    80042c4a:	872a                	mv	a4,a0
    80042c4c:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:44746
                    if (JS_IsException(sub))
    80042c4e:	f2c686e3          	beq	a3,a2,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44748
                    if (JS_DefinePropertyValueInt64(ctx, A, lengthA++, sub, JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    80042c52:	68e2                	ld	a7,24(sp)
    80042c54:	7842                	ld	a6,48(sp)
    80042c56:	75ca                	ld	a1,176(sp)
    80042c58:	00188313          	addi	t1,a7,1
    80042c5c:	86c6                	mv	a3,a7
    80042c5e:	865e                	mv	a2,s7
    80042c60:	8522                	mv	a0,s0
    80042c62:	ec1a                	sd	t1,24(sp)
    80042c64:	bceee0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80042c68:	f00549e3          	bltz	a0,80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44750
                    if (lengthA == lim)
    80042c6c:	05c16783          	lwu	a5,92(sp)
    80042c70:	6362                	ld	t1,24(sp)
    80042c72:	de6785e3          	beq	a5,t1,80042a5c <js_regexp_Symbol_split+0x1ae>
quickjs-nuttx/quickjs.c:44744 (discriminator 2)
                for(i = 1; i < numberOfCaptures; i++) {
    80042c76:	0d05                	addi	s10,s10,1
    80042c78:	889a                	mv	a7,t1
    80042c7a:	b755                	j	80042c1e <js_regexp_Symbol_split+0x370>
quickjs-nuttx/quickjs.c:44667
    ctor = JS_UNDEFINED;
    80042c7c:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:44671
    z = JS_UNDEFINED;
    80042c7e:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:44670
    flags = JS_UNDEFINED;
    80042c80:	448d                	li	s1,3
    80042c82:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:44669
    A = JS_UNDEFINED;
    80042c84:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:44668
    splitter = JS_UNDEFINED;
    80042c86:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:44667
    ctor = JS_UNDEFINED;
    80042c88:	e43e                	sd	a5,8(sp)
    80042c8a:	bdc5                	j	80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44671
    z = JS_UNDEFINED;
    80042c8c:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:44670
    flags = JS_UNDEFINED;
    80042c8e:	448d                	li	s1,3
    80042c90:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:44669
    A = JS_UNDEFINED;
    80042c92:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:44668
    splitter = JS_UNDEFINED;
    80042c94:	4c8d                	li	s9,3
    80042c96:	b5d5                	j	80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44671
    z = JS_UNDEFINED;
    80042c98:	498d                	li	s3,3
    80042c9a:	bfe5                	j	80042c92 <js_regexp_Symbol_split+0x3e4>
    80042c9c:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:44669
    A = JS_UNDEFINED;
    80042c9e:	4b0d                	li	s6,3
    80042ca0:	bde9                	j	80042b7a <js_regexp_Symbol_split+0x2cc>
quickjs-nuttx/quickjs.c:44671
    z = JS_UNDEFINED;
    80042ca2:	498d                	li	s3,3
    80042ca4:	bdd9                	j	80042b7a <js_regexp_Symbol_split+0x2cc>

0000000080042ca6 <js_string_match>:
js_string_match():
quickjs-nuttx/quickjs.c:41798
{
    80042ca6:	7151                	addi	sp,sp,-240
    80042ca8:	e9ca                	sd	s2,208(sp)
    80042caa:	86ba                	mv	a3,a4
    80042cac:	f586                	sd	ra,232(sp)
    80042cae:	f1a2                	sd	s0,224(sp)
    80042cb0:	eda6                	sd	s1,216(sp)
    80042cb2:	e5ce                	sd	s3,200(sp)
quickjs-nuttx/quickjs.c:41801
    JSValueConst O = this_val, regexp = argv[0], args[2];
    80042cb4:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:41798
{
    80042cb6:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:41801
    JSValueConst O = this_val, regexp = argv[0], args[2];
    80042cb8:	669c                	ld	a5,8(a3)
    80042cba:	ec32                	sd	a2,24(sp)
    80042cbc:	e82e                	sd	a1,16(sp)
    80042cbe:	f03a                	sd	a4,32(sp)
    80042cc0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:41805
    if (JS_IsUndefined(O) || JS_IsNull(O))
    80042cc2:	3679                	addiw	a2,a2,-2
    80042cc4:	4685                	li	a3,1
    80042cc6:	00c6eb63          	bltu	a3,a2,80042cdc <js_string_match+0x36>
quickjs-nuttx/quickjs.c:41806
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    80042cca:	00028597          	auipc	a1,0x28
    80042cce:	d4658593          	addi	a1,a1,-698 # 8006aa10 <qjsc_repl+0x5460>
    80042cd2:	99bd50ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:41819
            return JS_CallFree(ctx, matcher, regexp, 1, &O);
    80042cd6:	e12a                	sd	a0,128(sp)
    80042cd8:	e52e                	sd	a1,136(sp)
    80042cda:	a8a1                	j	80042d32 <js_string_match+0x8c>
quickjs-nuttx/quickjs.c:41808
    if (!JS_IsUndefined(regexp) && !JS_IsNull(regexp)) {
    80042cdc:	ffe7861b          	addiw	a2,a5,-2
    80042ce0:	842a                	mv	s0,a0
    80042ce2:	06c6ff63          	bgeu	a3,a2,80042d60 <js_string_match+0xba>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80042ce6:	863e                	mv	a2,a5
    80042ce8:	4801                	li	a6,0
    80042cea:	86ca                	mv	a3,s2
    80042cec:	85ba                	mv	a1,a4
    80042cee:	f53e                	sd	a5,168(sp)
    80042cf0:	f13a                	sd	a4,160(sp)
    80042cf2:	db9d30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80042cf6:	f82a                	sd	a0,48(sp)
    80042cf8:	fc2e                	sd	a1,56(sp)
js_string_match():
quickjs-nuttx/quickjs.c:41810
        if (JS_IsException(matcher))
    80042cfa:	0005879b          	sext.w	a5,a1
    80042cfe:	4999                	li	s3,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80042d00:	84ae                	mv	s1,a1
js_string_match():
quickjs-nuttx/quickjs.c:41810
    80042d02:	01379663          	bne	a5,s3,80042d0e <js_string_match+0x68>
quickjs-nuttx/quickjs.c:41839
        return JS_EXCEPTION;
    80042d06:	e102                	sd	zero,128(sp)
    80042d08:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:41843
    return result;
    80042d0a:	e53e                	sd	a5,136(sp)
    80042d0c:	a01d                	j	80042d32 <js_string_match+0x8c>
quickjs-nuttx/quickjs.c:41812
        if (atom == JS_ATOM_Symbol_matchAll) {
    80042d0e:	0d800793          	li	a5,216
    80042d12:	02f91963          	bne	s2,a5,80042d44 <js_string_match+0x9e>
quickjs-nuttx/quickjs.c:41813
            if (check_regexp_g_flag(ctx, regexp) < 0) {
    80042d16:	7582                	ld	a1,32(sp)
    80042d18:	7622                	ld	a2,40(sp)
    80042d1a:	8522                	mv	a0,s0
    80042d1c:	8c4de0ef          	jal	ra,80020de0 <check_regexp_g_flag>
    80042d20:	02055263          	bgez	a0,80042d44 <js_string_match+0x9e>
quickjs-nuttx/quickjs.c:41814
                JS_FreeValue(ctx, matcher);
    80042d24:	75c2                	ld	a1,48(sp)
    80042d26:	7662                	ld	a2,56(sp)
    80042d28:	8522                	mv	a0,s0
    80042d2a:	a75c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41815
                return JS_EXCEPTION;
    80042d2e:	e102                	sd	zero,128(sp)
    80042d30:	e54e                	sd	s3,136(sp)
quickjs-nuttx/quickjs.c:41844 (discriminator 1)
}
    80042d32:	70ae                	ld	ra,232(sp)
    80042d34:	740e                	ld	s0,224(sp)
    80042d36:	650a                	ld	a0,128(sp)
    80042d38:	65aa                	ld	a1,136(sp)
    80042d3a:	64ee                	ld	s1,216(sp)
    80042d3c:	694e                	ld	s2,208(sp)
    80042d3e:	69ae                	ld	s3,200(sp)
    80042d40:	616d                	addi	sp,sp,240
    80042d42:	8082                	ret
quickjs-nuttx/quickjs.c:41818
        if (!JS_IsUndefined(matcher) && !JS_IsNull(matcher)) {
    80042d44:	34f9                	addiw	s1,s1,-2
    80042d46:	4785                	li	a5,1
    80042d48:	0097fc63          	bgeu	a5,s1,80042d60 <js_string_match+0xba>
quickjs-nuttx/quickjs.c:41819
            return JS_CallFree(ctx, matcher, regexp, 1, &O);
    80042d4c:	7682                	ld	a3,32(sp)
    80042d4e:	7722                	ld	a4,40(sp)
    80042d50:	75c2                	ld	a1,48(sp)
    80042d52:	7662                	ld	a2,56(sp)
    80042d54:	01010813          	addi	a6,sp,16
    80042d58:	8522                	mv	a0,s0
    80042d5a:	d1bd30ef          	jal	ra,80016a74 <JS_CallFree>
    80042d5e:	bfa5                	j	80042cd6 <js_string_match+0x30>
quickjs-nuttx/quickjs.c:41822
    S = JS_ToString(ctx, O);
    80042d60:	65c2                	ld	a1,16(sp)
    80042d62:	6662                	ld	a2,24(sp)
    80042d64:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:41823
    if (JS_IsException(S))
    80042d66:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:41822
    S = JS_ToString(ctx, O);
    80042d68:	a15dd0ef          	jal	ra,8002077c <JS_ToString>
    80042d6c:	e4ae                	sd	a1,72(sp)
    80042d6e:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:41823
    if (JS_IsException(S))
    80042d70:	2581                	sext.w	a1,a1
    80042d72:	f9358ae3          	beq	a1,s3,80042d06 <js_string_match+0x60>
quickjs-nuttx/quickjs.c:41826
    args[0] = regexp;
    80042d76:	7782                	ld	a5,32(sp)
    80042d78:	f13e                	sd	a5,160(sp)
    80042d7a:	77a2                	ld	a5,40(sp)
    80042d7c:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:41828
    if (atom == JS_ATOM_Symbol_matchAll) {
    80042d7e:	0d800793          	li	a5,216
    80042d82:	04f90a63          	beq	s2,a5,80042dd6 <js_string_match+0x130>
quickjs-nuttx/quickjs.c:41827
    str = JS_UNDEFINED;
    80042d86:	f882                	sd	zero,112(sp)
    80042d88:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:41825
    args_len = 1;
    80042d8a:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:41834
    rx = JS_CallConstructor(ctx, ctx->regexp_ctor, args_len, args);
    80042d8c:	6050                	ld	a2,128(s0)
    80042d8e:	7c2c                	ld	a1,120(s0)
    80042d90:	1118                	addi	a4,sp,160
    80042d92:	8522                	mv	a0,s0
    80042d94:	e11fe0ef          	jal	ra,80041ba4 <JS_CallConstructor>
    80042d98:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:41835
    JS_FreeValue(ctx, str);
    80042d9a:	75c6                	ld	a1,112(sp)
quickjs-nuttx/quickjs.c:41834
    rx = JS_CallConstructor(ctx, ctx->regexp_ctor, args_len, args);
    80042d9c:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:41835
    JS_FreeValue(ctx, str);
    80042d9e:	8626                	mv	a2,s1
    80042da0:	8522                	mv	a0,s0
    80042da2:	9fdc80ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80042da6:	6666                	ld	a2,88(sp)
js_string_match():
quickjs-nuttx/quickjs.c:41836
    if (JS_IsException(rx)) {
    80042da8:	4799                	li	a5,6
    80042daa:	0006071b          	sext.w	a4,a2
    80042dae:	04f70163          	beq	a4,a5,80042df0 <js_string_match+0x14a>
quickjs-nuttx/quickjs.c:41841
    result = JS_InvokeFree(ctx, rx, atom, 1, (JSValueConst *)&S);
    80042db2:	65c6                	ld	a1,80(sp)
    80042db4:	009c                	addi	a5,sp,64
    80042db6:	4705                	li	a4,1
    80042db8:	86ca                	mv	a3,s2
    80042dba:	8522                	mv	a0,s0
    80042dbc:	845fc0ef          	jal	ra,8003f600 <JS_InvokeFree>
    80042dc0:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:41842
    JS_FreeValue(ctx, S);
    80042dc2:	6626                	ld	a2,72(sp)
    80042dc4:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:41841
    result = JS_InvokeFree(ctx, rx, atom, 1, (JSValueConst *)&S);
    80042dc6:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:41842
    JS_FreeValue(ctx, S);
    80042dc8:	8522                	mv	a0,s0
    80042dca:	9d5c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41843
    return result;
    80042dce:	7786                	ld	a5,96(sp)
    80042dd0:	e13e                	sd	a5,128(sp)
    80042dd2:	77a6                	ld	a5,104(sp)
    80042dd4:	bf1d                	j	80042d0a <js_string_match+0x64>
quickjs-nuttx/quickjs.c:41829
        str = JS_NewString(ctx, "g");
    80042dd6:	0002c597          	auipc	a1,0x2c
    80042dda:	b2258593          	addi	a1,a1,-1246 # 8006e8f8 <qjsc_repl+0x9348>
    80042dde:	8522                	mv	a0,s0
    80042de0:	bd9dc0ef          	jal	ra,8001f9b8 <JS_NewString>
    80042de4:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:41830
        if (JS_IsException(str))
    80042de6:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:41829
        str = JS_NewString(ctx, "g");
    80042dea:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:41830
        if (JS_IsException(str))
    80042dec:	01379863          	bne	a5,s3,80042dfc <js_string_match+0x156>
quickjs-nuttx/quickjs.c:41838
        JS_FreeValue(ctx, S);
    80042df0:	6586                	ld	a1,64(sp)
    80042df2:	6626                	ld	a2,72(sp)
    80042df4:	8522                	mv	a0,s0
    80042df6:	9a9c80ef          	jal	ra,8000b79e <JS_FreeValue>
    80042dfa:	b731                	j	80042d06 <js_string_match+0x60>
quickjs-nuttx/quickjs.c:41832
        args[args_len++] = (JSValueConst)str;
    80042dfc:	f92a                	sd	a0,176(sp)
    80042dfe:	fd2e                	sd	a1,184(sp)
    80042e00:	4689                	li	a3,2
    80042e02:	b769                	j	80042d8c <js_string_match+0xe6>

0000000080042e04 <JS_Call>:
JS_Call():
quickjs-nuttx/quickjs.c:18573
{
    80042e04:	711d                	addi	sp,sp,-96
quickjs-nuttx/quickjs.c:18574
    return JS_CallInternal(ctx, func_obj, this_obj, JS_UNDEFINED,
    80042e06:	4889                	li	a7,2
    80042e08:	e446                	sd	a7,8(sp)
    80042e0a:	e042                	sd	a6,0(sp)
    80042e0c:	88be                	mv	a7,a5
    80042e0e:	480d                	li	a6,3
    80042e10:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:18573
{
    80042e12:	ec86                	sd	ra,88(sp)
quickjs-nuttx/quickjs.c:18574
    return JS_CallInternal(ctx, func_obj, this_obj, JS_UNDEFINED,
    80042e14:	95acc0ef          	jal	ra,8000ef6e <JS_CallInternal>
quickjs-nuttx/quickjs.c:18576
}
    80042e18:	60e6                	ld	ra,88(sp)
    80042e1a:	6125                	addi	sp,sp,96
    80042e1c:	8082                	ret

0000000080042e1e <js_function_apply>:
js_function_apply():
quickjs-nuttx/quickjs.c:38359
{
    80042e1e:	7119                	addi	sp,sp,-128
    80042e20:	f8a2                	sd	s0,112(sp)
    80042e22:	f4a6                	sd	s1,104(sp)
    80042e24:	f0ca                	sd	s2,96(sp)
    80042e26:	fc86                	sd	ra,120(sp)
    80042e28:	842a                	mv	s0,a0
    80042e2a:	e02e                	sd	a1,0(sp)
    80042e2c:	e432                	sd	a2,8(sp)
    80042e2e:	84ba                	mv	s1,a4
    80042e30:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:38364
    if (check_function(ctx, this_val))
    80042e32:	8edd50ef          	jal	ra,8001871e <check_function>
    80042e36:	cd01                	beqz	a0,80042e4e <js_function_apply+0x30>
quickjs-nuttx/quickjs.c:38365
        return JS_EXCEPTION;
    80042e38:	e882                	sd	zero,80(sp)
    80042e3a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38382
}
    80042e3c:	70e6                	ld	ra,120(sp)
    80042e3e:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:38381
    return ret;
    80042e40:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:38382
}
    80042e42:	6546                	ld	a0,80(sp)
    80042e44:	65e6                	ld	a1,88(sp)
    80042e46:	74a6                	ld	s1,104(sp)
    80042e48:	7906                	ld	s2,96(sp)
    80042e4a:	6109                	addi	sp,sp,128
    80042e4c:	8082                	ret
quickjs-nuttx/quickjs.c:38367
    array_arg = argv[1];
    80042e4e:	689c                	ld	a5,16(s1)
quickjs-nuttx/quickjs.c:38366
    this_arg = argv[0];
    80042e50:	6094                	ld	a3,0(s1)
    80042e52:	6498                	ld	a4,8(s1)
quickjs-nuttx/quickjs.c:38367
    array_arg = argv[1];
    80042e54:	f83e                	sd	a5,48(sp)
    80042e56:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:38366
    this_arg = argv[0];
    80042e58:	f036                	sd	a3,32(sp)
    80042e5a:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:38367
    array_arg = argv[1];
    80042e5c:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:38368
    if ((JS_VALUE_GET_TAG(array_arg) == JS_TAG_UNDEFINED ||
    80042e5e:	4605                	li	a2,1
    80042e60:	37f9                	addiw	a5,a5,-2
    80042e62:	02f66163          	bltu	a2,a5,80042e84 <js_function_apply+0x66>
quickjs-nuttx/quickjs.c:38369
         JS_VALUE_GET_TAG(array_arg) == JS_TAG_NULL) && magic != 2) {
    80042e66:	4789                	li	a5,2
    80042e68:	00f90e63          	beq	s2,a5,80042e84 <js_function_apply+0x66>
quickjs-nuttx/quickjs.c:38370
        return JS_Call(ctx, this_val, this_arg, 0, NULL);
    80042e6c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:38382
}
    80042e6e:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:38370
        return JS_Call(ctx, this_val, this_arg, 0, NULL);
    80042e70:	6582                	ld	a1,0(sp)
    80042e72:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:38382
}
    80042e74:	70e6                	ld	ra,120(sp)
    80042e76:	74a6                	ld	s1,104(sp)
    80042e78:	7906                	ld	s2,96(sp)
quickjs-nuttx/quickjs.c:38370
        return JS_Call(ctx, this_val, this_arg, 0, NULL);
    80042e7a:	4801                	li	a6,0
    80042e7c:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:38382
}
    80042e7e:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:38370
        return JS_Call(ctx, this_val, this_arg, 0, NULL);
    80042e80:	f85ff06f          	j	80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:38372
    tab = build_arg_list(ctx, &len, array_arg);
    80042e84:	7642                	ld	a2,48(sp)
    80042e86:	76e2                	ld	a3,56(sp)
    80042e88:	086c                	addi	a1,sp,28
    80042e8a:	8522                	mv	a0,s0
    80042e8c:	d36f60ef          	jal	ra,800393c2 <build_arg_list>
    80042e90:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:38373
    if (!tab)
    80042e92:	d15d                	beqz	a0,80042e38 <js_function_apply+0x1a>
quickjs-nuttx/quickjs.c:38375
    if (magic & 1) {
    80042e94:	00197913          	andi	s2,s2,1
quickjs-nuttx/quickjs.c:38376
        ret = JS_CallConstructor2(ctx, this_val, this_arg, len, (JSValueConst *)tab);
    80042e98:	882a                	mv	a6,a0
    80042e9a:	47f2                	lw	a5,28(sp)
    80042e9c:	7682                	ld	a3,32(sp)
    80042e9e:	7722                	ld	a4,40(sp)
    80042ea0:	6582                	ld	a1,0(sp)
    80042ea2:	6622                	ld	a2,8(sp)
    80042ea4:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:38375
    if (magic & 1) {
    80042ea6:	00090f63          	beqz	s2,80042ec4 <js_function_apply+0xa6>
quickjs-nuttx/quickjs.c:38376
        ret = JS_CallConstructor2(ctx, this_val, this_arg, len, (JSValueConst *)tab);
    80042eaa:	c45fe0ef          	jal	ra,80041aee <JS_CallConstructor2>
quickjs-nuttx/quickjs.c:38380
    free_arg_list(ctx, tab, len);
    80042eae:	4672                	lw	a2,28(sp)
quickjs-nuttx/quickjs.c:38378
        ret = JS_Call(ctx, this_val, this_arg, len, (JSValueConst *)tab);
    80042eb0:	e0aa                	sd	a0,64(sp)
    80042eb2:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:38380
    free_arg_list(ctx, tab, len);
    80042eb4:	8522                	mv	a0,s0
    80042eb6:	85a6                	mv	a1,s1
    80042eb8:	befc80ef          	jal	ra,8000baa6 <free_arg_list>
quickjs-nuttx/quickjs.c:38381
    return ret;
    80042ebc:	6786                	ld	a5,64(sp)
    80042ebe:	e8be                	sd	a5,80(sp)
    80042ec0:	67a6                	ld	a5,72(sp)
    80042ec2:	bfad                	j	80042e3c <js_function_apply+0x1e>
quickjs-nuttx/quickjs.c:38378
        ret = JS_Call(ctx, this_val, this_arg, len, (JSValueConst *)tab);
    80042ec4:	f41ff0ef          	jal	ra,80042e04 <JS_Call>
    80042ec8:	b7dd                	j	80042eae <js_function_apply+0x90>

0000000080042eca <js_regexp_Symbol_replace>:
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44403
{
    80042eca:	bc010113          	addi	sp,sp,-1088
    80042ece:	41313c23          	sd	s3,1048(sp)
    80042ed2:	42113c23          	sd	ra,1080(sp)
    80042ed6:	42813823          	sd	s0,1072(sp)
    80042eda:	42913423          	sd	s1,1064(sp)
    80042ede:	43213023          	sd	s2,1056(sp)
    80042ee2:	41413823          	sd	s4,1040(sp)
    80042ee6:	41513423          	sd	s5,1032(sp)
    80042eea:	41613023          	sd	s6,1024(sp)
    80042eee:	3f713c23          	sd	s7,1016(sp)
    80042ef2:	3f813823          	sd	s8,1008(sp)
    80042ef6:	3f913423          	sd	s9,1000(sp)
    80042efa:	3fa13023          	sd	s10,992(sp)
    80042efe:	3db13c23          	sd	s11,984(sp)
quickjs-nuttx/quickjs.c:44405
    JSValueConst rx = this_val, rep = argv[1];
    80042f02:	6b1c                	ld	a5,16(a4)
quickjs-nuttx/quickjs.c:44403
{
    80042f04:	89ba                	mv	s3,a4
    80042f06:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:44405
    JSValueConst rx = this_val, rep = argv[1];
    80042f08:	e93e                	sd	a5,144(sp)
    80042f0a:	6f1c                	ld	a5,24(a4)
quickjs-nuttx/quickjs.c:44403
{
    80042f0c:	f4b2                	sd	a2,104(sp)
quickjs-nuttx/quickjs.c:44405
    JSValueConst rx = this_val, rep = argv[1];
    80042f0e:	e12e                	sd	a1,128(sp)
    80042f10:	ed3e                	sd	a5,152(sp)
    80042f12:	e532                	sd	a2,136(sp)
quickjs-nuttx/quickjs.c:44415
    if (!JS_IsObject(rx))
    80042f14:	0006071b          	sext.w	a4,a2
    80042f18:	57fd                	li	a5,-1
    80042f1a:	04f70063          	beq	a4,a5,80042f5a <js_regexp_Symbol_replace+0x90>
quickjs-nuttx/quickjs.c:44592
}
    80042f1e:	43013403          	ld	s0,1072(sp)
    80042f22:	43813083          	ld	ra,1080(sp)
    80042f26:	42813483          	ld	s1,1064(sp)
    80042f2a:	42013903          	ld	s2,1056(sp)
    80042f2e:	41813983          	ld	s3,1048(sp)
    80042f32:	41013a03          	ld	s4,1040(sp)
    80042f36:	40813a83          	ld	s5,1032(sp)
    80042f3a:	40013b03          	ld	s6,1024(sp)
    80042f3e:	3f813b83          	ld	s7,1016(sp)
    80042f42:	3f013c03          	ld	s8,1008(sp)
    80042f46:	3e813c83          	ld	s9,1000(sp)
    80042f4a:	3e013d03          	ld	s10,992(sp)
    80042f4e:	3d813d83          	ld	s11,984(sp)
    80042f52:	44010113          	addi	sp,sp,1088
quickjs-nuttx/quickjs.c:44416
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80042f56:	cd5d506f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    80042f5a:	8932                	mv	s2,a2
    80042f5c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:44418
    string_buffer_init(ctx, b, 0);
    80042f5e:	4601                	li	a2,0
    80042f60:	1d8c                	addi	a1,sp,752
    80042f62:	842a                	mv	s0,a0
    80042f64:	818db0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:44428
    str = JS_ToString(ctx, argv[0]);
    80042f68:	0009b583          	ld	a1,0(s3)
    80042f6c:	0089b603          	ld	a2,8(s3)
value_buffer_init():
quickjs-nuttx/quickjs.c:44331
    b->len = 0;
    80042f70:	4785                	li	a5,1
    80042f72:	178a                	slli	a5,a5,0x22
quickjs-nuttx/quickjs.c:44334
    b->arr = b->def;
    80042f74:	38010c13          	addi	s8,sp,896
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44428
    str = JS_ToString(ctx, argv[0]);
    80042f78:	8522                	mv	a0,s0
value_buffer_init():
quickjs-nuttx/quickjs.c:44331
    b->len = 0;
    80042f7a:	3cf13023          	sd	a5,960(sp)
quickjs-nuttx/quickjs.c:44330
    b->ctx = ctx;
    80042f7e:	36813823          	sd	s0,880(sp)
quickjs-nuttx/quickjs.c:44333
    b->error_status = 0;
    80042f82:	3c012423          	sw	zero,968(sp)
quickjs-nuttx/quickjs.c:44334
    b->arr = b->def;
    80042f86:	37813c23          	sd	s8,888(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44423
    tab = JS_UNDEFINED;
    80042f8a:	f182                	sd	zero,224(sp)
    80042f8c:	f582                	sd	zero,232(sp)
quickjs-nuttx/quickjs.c:44425
    rep_str = JS_UNDEFINED;
    80042f8e:	f982                	sd	zero,240(sp)
    80042f90:	fd82                	sd	zero,248(sp)
quickjs-nuttx/quickjs.c:44426
    namedCaptures = JS_UNDEFINED;
    80042f92:	e202                	sd	zero,256(sp)
    80042f94:	e602                	sd	zero,264(sp)
quickjs-nuttx/quickjs.c:44428
    str = JS_ToString(ctx, argv[0]);
    80042f96:	fe6dd0ef          	jal	ra,8002077c <JS_ToString>
    80042f9a:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:44429
    if (JS_IsException(str))
    80042f9c:	47a2                	lw	a5,8(sp)
quickjs-nuttx/quickjs.c:44428
    str = JS_ToString(ctx, argv[0]);
    80042f9e:	f92a                	sd	a0,176(sp)
    80042fa0:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:44429
    if (JS_IsException(str))
    80042fa2:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:44428
    str = JS_ToString(ctx, argv[0]);
    80042fa4:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs.c:44429
    if (JS_IsException(str))
    80042fa6:	21378ee3          	beq	a5,s3,800439c2 <js_regexp_Symbol_replace+0xaf8>
quickjs-nuttx/quickjs.c:44434
    functionalReplace = JS_IsFunction(ctx, rep);
    80042faa:	65ca                	ld	a1,144(sp)
    80042fac:	666a                	ld	a2,152(sp)
    80042fae:	8522                	mv	a0,s0
    80042fb0:	cf2cb0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80042fb4:	e4aa                	sd	a0,72(sp)
quickjs-nuttx/quickjs.c:44435
    if (!functionalReplace) {
    80042fb6:	e50d                	bnez	a0,80042fe0 <js_regexp_Symbol_replace+0x116>
quickjs-nuttx/quickjs.c:44436
        rep_val = JS_ToString(ctx, rep);
    80042fb8:	65ca                	ld	a1,144(sp)
    80042fba:	666a                	ld	a2,152(sp)
    80042fbc:	8522                	mv	a0,s0
    80042fbe:	fbedd0ef          	jal	ra,8002077c <JS_ToString>
    80042fc2:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:44437
        if (JS_IsException(rep_val))
    80042fc4:	5782                	lw	a5,32(sp)
quickjs-nuttx/quickjs.c:44436
        rep_val = JS_ToString(ctx, rep);
    80042fc6:	e1aa                	sd	a0,192(sp)
    80042fc8:	e5ae                	sd	a1,200(sp)
    80042fca:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:44437
        if (JS_IsException(rep_val))
    80042fcc:	01379d63          	bne	a5,s3,80042fe6 <js_regexp_Symbol_replace+0x11c>
quickjs-nuttx/quickjs.c:44426
    namedCaptures = JS_UNDEFINED;
    80042fd0:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44425
    rep_str = JS_UNDEFINED;
    80042fd2:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:44423
    tab = JS_UNDEFINED;
    80042fd4:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:44422
    matched = JS_UNDEFINED;
    80042fd6:	498d                	li	s3,3
    80042fd8:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:44424
    flags = JS_UNDEFINED;
    80042fda:	478d                	li	a5,3
    80042fdc:	1f70006f          	j	800439d2 <js_regexp_Symbol_replace+0xb08>
quickjs-nuttx/quickjs.c:44421
    rep_val = JS_UNDEFINED;
    80042fe0:	478d                	li	a5,3
    80042fe2:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:44433
    rp = NULL;
    80042fe4:	ec02                	sd	zero,24(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80042fe6:	87ca                	mv	a5,s2
    80042fe8:	4801                	li	a6,0
    80042fea:	8726                	mv	a4,s1
    80042fec:	06e00693          	li	a3,110
    80042ff0:	85a6                	mv	a1,s1
    80042ff2:	864a                	mv	a2,s2
    80042ff4:	8522                	mv	a0,s0
    80042ff6:	30913823          	sd	s1,784(sp)
    80042ffa:	31213c23          	sd	s2,792(sp)
    80042ffe:	aadd30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
