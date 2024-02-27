    80044000:	02e78363          	beq	a5,a4,80044026 <JS_IteratorNext2+0xae>
quickjs-nuttx/quickjs.c:15150
        JS_FreeValue(ctx, obj);
    80044004:	85aa                	mv	a1,a0
    80044006:	8522                	mv	a0,s0
    80044008:	f96c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15151
        JS_ThrowTypeError(ctx, "iterator must return an object");
    8004400c:	00026597          	auipc	a1,0x26
    80044010:	dac58593          	addi	a1,a1,-596 # 80069db8 <qjsc_repl+0x4808>
    80044014:	8522                	mv	a0,s0
    80044016:	e56d40ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:15158
    return JS_EXCEPTION;
    8004401a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:15157
    *pdone = FALSE;
    8004401c:	0004a023          	sw	zero,0(s1)
quickjs-nuttx/quickjs.c:15158
    return JS_EXCEPTION;
    80044020:	f802                	sd	zero,48(sp)
    80044022:	fc3e                	sd	a5,56(sp)
    80044024:	b76d                	j	80043fce <JS_IteratorNext2+0x56>
quickjs-nuttx/quickjs.c:15154
    *pdone = 2;
    80044026:	4789                	li	a5,2
    80044028:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:15155
    return obj;
    8004402a:	f82a                	sd	a0,48(sp)
    8004402c:	fc2e                	sd	a1,56(sp)
    8004402e:	b745                	j	80043fce <JS_IteratorNext2+0x56>

0000000080044030 <JS_IteratorNext.constprop.0>:
JS_IteratorNext():
quickjs-nuttx/quickjs.c:15161
static JSValue JS_IteratorNext(JSContext *ctx, JSValueConst enum_obj,
    80044030:	7171                	addi	sp,sp,-176
    80044032:	ed26                	sd	s1,152(sp)
quickjs-nuttx/quickjs.c:15168
    obj = JS_IteratorNext2(ctx, enum_obj, method, argc, argv, &done);
    80044034:	02c10893          	addi	a7,sp,44
quickjs-nuttx/quickjs.c:15161
static JSValue JS_IteratorNext(JSContext *ctx, JSValueConst enum_obj,
    80044038:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:15168
    obj = JS_IteratorNext2(ctx, enum_obj, method, argc, argv, &done);
    8004403a:	4801                	li	a6,0
    8004403c:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:15161
static JSValue JS_IteratorNext(JSContext *ctx, JSValueConst enum_obj,
    8004403e:	f122                	sd	s0,160(sp)
    80044040:	e94a                	sd	s2,144(sp)
    80044042:	f506                	sd	ra,168(sp)
    80044044:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:15168
    obj = JS_IteratorNext2(ctx, enum_obj, method, argc, argv, &done);
    80044046:	f33ff0ef          	jal	ra,80043f78 <JS_IteratorNext2>
    8004404a:	f82a                	sd	a0,48(sp)
    8004404c:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:15169
    if (JS_IsException(obj))
    8004404e:	0005869b          	sext.w	a3,a1
    80044052:	4919                	li	s2,6
    80044054:	09268163          	beq	a3,s2,800440d6 <JS_IteratorNext.constprop.0+0xa6>
quickjs-nuttx/quickjs.c:15171
    if (done != 2) {
    80044058:	56b2                	lw	a3,44(sp)
    8004405a:	4609                	li	a2,2
    8004405c:	872a                	mv	a4,a0
    8004405e:	87ae                	mv	a5,a1
    80044060:	00c68663          	beq	a3,a2,8004406c <JS_IteratorNext.constprop.0+0x3c>
quickjs-nuttx/quickjs.c:15172
        *pdone = done;
    80044064:	c094                	sw	a3,0(s1)
quickjs-nuttx/quickjs.c:15173
        return obj;
    80044066:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:15189
    return JS_EXCEPTION;
    80044068:	e53e                	sd	a5,136(sp)
    8004406a:	a8b1                	j	800440c6 <JS_IteratorNext.constprop.0+0x96>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8004406c:	863e                	mv	a2,a5
    8004406e:	e12a                	sd	a0,128(sp)
    80044070:	e52e                	sd	a1,136(sp)
    80044072:	4801                	li	a6,0
    80044074:	85aa                	mv	a1,a0
    80044076:	06a00693          	li	a3,106
    8004407a:	8522                	mv	a0,s0
    8004407c:	a2fd20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_IteratorNext():
quickjs-nuttx/quickjs.c:15176
        if (JS_IsException(done_val))
    80044080:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044084:	862e                	mv	a2,a1
JS_IteratorNext():
quickjs-nuttx/quickjs.c:15176
    80044086:	05278863          	beq	a5,s2,800440d6 <JS_IteratorNext.constprop.0+0xa6>
quickjs-nuttx/quickjs.c:15178
        *pdone = JS_ToBoolFree(ctx, done_val);
    8004408a:	85aa                	mv	a1,a0
    8004408c:	8522                	mv	a0,s0
    8004408e:	a87c70ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80044092:	c088                	sw	a0,0(s1)
quickjs-nuttx/quickjs.c:15179
        value = JS_UNDEFINED;
    80044094:	e082                	sd	zero,64(sp)
    80044096:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:15180
        if (!*pdone) {
    80044098:	ed19                	bnez	a0,800440b6 <JS_IteratorNext.constprop.0+0x86>
quickjs-nuttx/quickjs.c:15181
            value = JS_GetProperty(ctx, obj, JS_ATOM_value);
    8004409a:	7742                	ld	a4,48(sp)
    8004409c:	77e2                	ld	a5,56(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004409e:	4801                	li	a6,0
    800440a0:	04100693          	li	a3,65
    800440a4:	85ba                	mv	a1,a4
    800440a6:	863e                	mv	a2,a5
    800440a8:	8522                	mv	a0,s0
    800440aa:	e13a                	sd	a4,128(sp)
    800440ac:	e53e                	sd	a5,136(sp)
    800440ae:	9fdd20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800440b2:	84ae                	mv	s1,a1
    800440b4:	e0aa                	sd	a0,64(sp)
JS_IteratorNext():
quickjs-nuttx/quickjs.c:15183
        JS_FreeValue(ctx, obj);
    800440b6:	75c2                	ld	a1,48(sp)
    800440b8:	7662                	ld	a2,56(sp)
    800440ba:	8522                	mv	a0,s0
    800440bc:	ee2c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15184
        return value;
    800440c0:	6786                	ld	a5,64(sp)
    800440c2:	e526                	sd	s1,136(sp)
    800440c4:	e13e                	sd	a5,128(sp)
quickjs-nuttx/quickjs.c:15190
}
    800440c6:	70aa                	ld	ra,168(sp)
    800440c8:	740a                	ld	s0,160(sp)
    800440ca:	650a                	ld	a0,128(sp)
    800440cc:	65aa                	ld	a1,136(sp)
    800440ce:	64ea                	ld	s1,152(sp)
    800440d0:	694a                	ld	s2,144(sp)
    800440d2:	614d                	addi	sp,sp,176
    800440d4:	8082                	ret
quickjs-nuttx/quickjs.c:15187
    JS_FreeValue(ctx, obj);
    800440d6:	75c2                	ld	a1,48(sp)
    800440d8:	7662                	ld	a2,56(sp)
    800440da:	8522                	mv	a0,s0
    800440dc:	ec2c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15189
    return JS_EXCEPTION;
    800440e0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:15188
    *pdone = FALSE;
    800440e2:	0004a023          	sw	zero,0(s1)
quickjs-nuttx/quickjs.c:15189
    return JS_EXCEPTION;
    800440e6:	e102                	sd	zero,128(sp)
    800440e8:	b741                	j	80044068 <JS_IteratorNext.constprop.0+0x38>

00000000800440ea <JS_GetIterator2>:
JS_GetIterator2():
quickjs-nuttx/quickjs.c:15073
{
    800440ea:	8336                	mv	t1,a3
    800440ec:	88ba                	mv	a7,a4
    800440ee:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs.c:15076
    enum_obj = JS_Call(ctx, method, obj, 0, NULL);
    800440f0:	8732                	mv	a4,a2
    800440f2:	4781                	li	a5,0
    800440f4:	86ae                	mv	a3,a1
    800440f6:	4801                	li	a6,0
    800440f8:	859a                	mv	a1,t1
    800440fa:	8646                	mv	a2,a7
quickjs-nuttx/quickjs.c:15073
{
    800440fc:	e0a2                	sd	s0,64(sp)
    800440fe:	e486                	sd	ra,72(sp)
    80044100:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:15076
    enum_obj = JS_Call(ctx, method, obj, 0, NULL);
    80044102:	d03fe0ef          	jal	ra,80042e04 <JS_Call>
    80044106:	f02a                	sd	a0,32(sp)
    80044108:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004410a:	0005879b          	sext.w	a5,a1
JS_GetIterator2():
quickjs-nuttx/quickjs.c:15077
    if (JS_IsException(enum_obj))
    8004410e:	4719                	li	a4,6
    80044110:	02e78063          	beq	a5,a4,80044130 <JS_GetIterator2+0x46>
quickjs-nuttx/quickjs.c:15079
    if (!JS_IsObject(enum_obj)) {
    80044114:	577d                	li	a4,-1
    80044116:	00e78d63          	beq	a5,a4,80044130 <JS_GetIterator2+0x46>
    8004411a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:15080
        JS_FreeValue(ctx, enum_obj);
    8004411c:	85aa                	mv	a1,a0
    8004411e:	8522                	mv	a0,s0
    80044120:	e7ec70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15081
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80044124:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:15084
}
    80044126:	6406                	ld	s0,64(sp)
    80044128:	60a6                	ld	ra,72(sp)
    8004412a:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:15081
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8004412c:	affd406f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:15084
}
    80044130:	60a6                	ld	ra,72(sp)
    80044132:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:15078
        return enum_obj;
    80044134:	7502                	ld	a0,32(sp)
    80044136:	75a2                	ld	a1,40(sp)
quickjs-nuttx/quickjs.c:15084
}
    80044138:	6161                	addi	sp,sp,80
    8004413a:	8082                	ret

000000008004413c <JS_GetIterator>:
JS_GetIterator():
quickjs-nuttx/quickjs.c:15087
{
    8004413c:	7151                	addi	sp,sp,-240
    8004413e:	f1a2                	sd	s0,224(sp)
    80044140:	f586                	sd	ra,232(sp)
    80044142:	eda6                	sd	s1,216(sp)
    80044144:	e9ca                	sd	s2,208(sp)
    80044146:	e5ce                	sd	s3,200(sp)
    80044148:	e1d2                	sd	s4,192(sp)
    8004414a:	e82e                	sd	a1,16(sp)
    8004414c:	ec32                	sd	a2,24(sp)
    8004414e:	f92e                	sd	a1,176(sp)
    80044150:	fd32                	sd	a2,184(sp)
    80044152:	842a                	mv	s0,a0
    80044154:	872e                	mv	a4,a1
    80044156:	87b2                	mv	a5,a2
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80044158:	4801                	li	a6,0
JS_GetIterator():
quickjs-nuttx/quickjs.c:15090
    if (is_async) {
    8004415a:	14068163          	beqz	a3,8004429c <JS_GetIterator+0x160>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004415e:	0e100693          	li	a3,225
    80044162:	949d20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80044166:	f02a                	sd	a0,32(sp)
    80044168:	f42e                	sd	a1,40(sp)
JS_GetIterator():
quickjs-nuttx/quickjs.c:15092
        if (JS_IsException(method))
    8004416a:	0005879b          	sext.w	a5,a1
    8004416e:	4919                	li	s2,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044170:	862e                	mv	a2,a1
JS_GetIterator():
quickjs-nuttx/quickjs.c:15092
    80044172:	01279763          	bne	a5,s2,80044180 <JS_GetIterator+0x44>
quickjs-nuttx/quickjs.c:15093
            return method;
    80044176:	7782                	ld	a5,32(sp)
    80044178:	f8be                	sd	a5,112(sp)
    8004417a:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:15117
    return ret;
    8004417c:	fcbe                	sd	a5,120(sp)
    8004417e:	a8a9                	j	800441d8 <JS_GetIterator+0x9c>
quickjs-nuttx/quickjs.c:15094 (discriminator 1)
        if (JS_IsUndefined(method) || JS_IsNull(method)) {
    80044180:	35f9                	addiw	a1,a1,-2
    80044182:	4785                	li	a5,1
    80044184:	12b7ea63          	bltu	a5,a1,800442b8 <JS_GetIterator+0x17c>
quickjs-nuttx/quickjs.c:15095
            method = JS_GetProperty(ctx, obj, JS_ATOM_Symbol_iterator);
    80044188:	6742                	ld	a4,16(sp)
    8004418a:	67e2                	ld	a5,24(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004418c:	0d600693          	li	a3,214
    80044190:	85ba                	mv	a1,a4
    80044192:	863e                	mv	a2,a5
    80044194:	4801                	li	a6,0
    80044196:	8522                	mv	a0,s0
    80044198:	f93a                	sd	a4,176(sp)
    8004419a:	fd3e                	sd	a5,184(sp)
    8004419c:	90fd20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800441a0:	f02a                	sd	a0,32(sp)
    800441a2:	f42e                	sd	a1,40(sp)
JS_GetIterator():
quickjs-nuttx/quickjs.c:15096
            if (JS_IsException(method))
    800441a4:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800441a8:	86aa                	mv	a3,a0
    800441aa:	872e                	mv	a4,a1
JS_GetIterator():
quickjs-nuttx/quickjs.c:15096
    800441ac:	fd2785e3          	beq	a5,s2,80044176 <JS_GetIterator+0x3a>
quickjs-nuttx/quickjs.c:15098
            sync_iter = JS_GetIterator2(ctx, obj, method);
    800441b0:	6662                	ld	a2,24(sp)
    800441b2:	65c2                	ld	a1,16(sp)
    800441b4:	8522                	mv	a0,s0
    800441b6:	f35ff0ef          	jal	ra,800440ea <JS_GetIterator2>
    800441ba:	84ae                	mv	s1,a1
    800441bc:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:15099
            JS_FreeValue(ctx, method);
    800441be:	7622                	ld	a2,40(sp)
    800441c0:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:15098
            sync_iter = JS_GetIterator2(ctx, obj, method);
    800441c2:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:15099
            JS_FreeValue(ctx, method);
    800441c4:	8522                	mv	a0,s0
    800441c6:	dd8c70ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800441ca:	6706                	ld	a4,64(sp)
    800441cc:	67a6                	ld	a5,72(sp)
JS_GetIterator():
quickjs-nuttx/quickjs.c:15100
            if (JS_IsException(sync_iter))
    800441ce:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:15101
                return sync_iter;
    800441d0:	f8ba                	sd	a4,112(sp)
    800441d2:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:15100
            if (JS_IsException(sync_iter))
    800441d4:	01249c63          	bne	s1,s2,800441ec <JS_GetIterator+0xb0>
quickjs-nuttx/quickjs.c:15118
}
    800441d8:	70ae                	ld	ra,232(sp)
    800441da:	740e                	ld	s0,224(sp)
    800441dc:	7546                	ld	a0,112(sp)
    800441de:	75e6                	ld	a1,120(sp)
    800441e0:	64ee                	ld	s1,216(sp)
    800441e2:	694e                	ld	s2,208(sp)
    800441e4:	69ae                	ld	s3,200(sp)
    800441e6:	6a0e                	ld	s4,192(sp)
    800441e8:	616d                	addi	sp,sp,240
    800441ea:	8082                	ret
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800441ec:	4801                	li	a6,0
    800441ee:	06b00693          	li	a3,107
    800441f2:	85ba                	mv	a1,a4
    800441f4:	863e                	mv	a2,a5
    800441f6:	8522                	mv	a0,s0
    800441f8:	f93a                	sd	a4,176(sp)
    800441fa:	fd3e                	sd	a5,184(sp)
    800441fc:	8afd20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80044200:	ed2e                	sd	a1,152(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80044202:	e92a                	sd	a0,144(sp)
JS_CreateAsyncFromSyncIterator():
quickjs-nuttx/quickjs.c:48754
    if (JS_IsException(next_method))
    80044204:	2581                	sext.w	a1,a1
    80044206:	03259163          	bne	a1,s2,80044228 <JS_GetIterator+0xec>
quickjs-nuttx/quickjs.c:48765
        return JS_EXCEPTION;
    8004420a:	f902                	sd	zero,176(sp)
    8004420c:	4499                	li	s1,6
    8004420e:	77ca                	ld	a5,176(sp)
JS_GetIterator():
quickjs-nuttx/quickjs.c:15103
            JS_FreeValue(ctx, sync_iter);
    80044210:	6586                	ld	a1,64(sp)
    80044212:	6626                	ld	a2,72(sp)
    80044214:	fd26                	sd	s1,184(sp)
    80044216:	f83e                	sd	a5,48(sp)
    80044218:	fc26                	sd	s1,56(sp)
quickjs-nuttx/quickjs.c:15116
    JS_FreeValue(ctx, method);
    8004421a:	8522                	mv	a0,s0
    8004421c:	d82c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15117
    return ret;
    80044220:	77c2                	ld	a5,48(sp)
    80044222:	f8be                	sd	a5,112(sp)
    80044224:	77e2                	ld	a5,56(sp)
    80044226:	bf99                	j	8004417c <JS_GetIterator+0x40>
JS_CreateAsyncFromSyncIterator():
quickjs-nuttx/quickjs.c:48756
    async_iter = JS_NewObjectClass(ctx, JS_CLASS_ASYNC_FROM_SYNC_ITERATOR);
    80044228:	03700593          	li	a1,55
    8004422c:	8522                	mv	a0,s0
    8004422e:	cdfd70ef          	jal	ra,8001bf0c <JS_NewObjectClass>
    80044232:	e12a                	sd	a0,128(sp)
    80044234:	e52e                	sd	a1,136(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80044236:	00058a1b          	sext.w	s4,a1
JS_CreateAsyncFromSyncIterator():
quickjs-nuttx/quickjs.c:48756
    8004423a:	89aa                	mv	s3,a0
    8004423c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:48757
    if (JS_IsException(async_iter)) {
    8004423e:	012a1963          	bne	s4,s2,80044250 <JS_GetIterator+0x114>
quickjs-nuttx/quickjs.c:48758
        JS_FreeValue(ctx, next_method);
    80044242:	65ca                	ld	a1,144(sp)
    80044244:	666a                	ld	a2,152(sp)
    80044246:	8522                	mv	a0,s0
    80044248:	d56c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48770
    return async_iter;
    8004424c:	f94e                	sd	s3,176(sp)
    8004424e:	b7c1                	j	8004420e <JS_GetIterator+0xd2>
quickjs-nuttx/quickjs.c:48761
    s = js_mallocz(ctx, sizeof(*s));
    80044250:	02000593          	li	a1,32
    80044254:	8522                	mv	a0,s0
    80044256:	ee3d60ef          	jal	ra,8001b138 <js_mallocz>
    8004425a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:48762
    if (!s) {
    8004425c:	ed01                	bnez	a0,80044274 <JS_GetIterator+0x138>
quickjs-nuttx/quickjs.c:48763
        JS_FreeValue(ctx, async_iter);
    8004425e:	658a                	ld	a1,128(sp)
    80044260:	662a                	ld	a2,136(sp)
    80044262:	8522                	mv	a0,s0
    80044264:	d3ac70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48764
        JS_FreeValue(ctx, next_method);
    80044268:	65ca                	ld	a1,144(sp)
    8004426a:	666a                	ld	a2,152(sp)
    8004426c:	8522                	mv	a0,s0
    8004426e:	d30c70ef          	jal	ra,8000b79e <JS_FreeValue>
    80044272:	bf61                	j	8004420a <JS_GetIterator+0xce>
quickjs-nuttx/quickjs.c:48767
    s->sync_iter = JS_DupValue(ctx, sync_iter);
    80044274:	7546                	ld	a0,112(sp)
    80044276:	75e6                	ld	a1,120(sp)
    80044278:	9a2c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:48768
    s->next_method = next_method;
    8004427c:	67ca                	ld	a5,144(sp)
quickjs-nuttx/quickjs.c:48767
    s->sync_iter = JS_DupValue(ctx, sync_iter);
    8004427e:	00a93023          	sd	a0,0(s2)
    80044282:	00b93423          	sd	a1,8(s2)
quickjs-nuttx/quickjs.c:48768
    s->next_method = next_method;
    80044286:	00f93823          	sd	a5,16(s2)
    8004428a:	67ea                	ld	a5,152(sp)
    8004428c:	00f93c23          	sd	a5,24(s2)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80044290:	57fd                	li	a5,-1
    80044292:	fafa1de3          	bne	s4,a5,8004424c <JS_GetIterator+0x110>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    80044296:	0329b823          	sd	s2,48(s3)
    8004429a:	bf4d                	j	8004424c <JS_GetIterator+0x110>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8004429c:	0d600693          	li	a3,214
    800442a0:	80bd20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800442a4:	e92a                	sd	a0,144(sp)
    800442a6:	ed2e                	sd	a1,152(sp)
    800442a8:	f02a                	sd	a0,32(sp)
    800442aa:	f42e                	sd	a1,40(sp)
JS_GetIterator():
quickjs-nuttx/quickjs.c:15108
        if (JS_IsException(method))
    800442ac:	0005871b          	sext.w	a4,a1
    800442b0:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800442b2:	862e                	mv	a2,a1
JS_GetIterator():
quickjs-nuttx/quickjs.c:15108
    800442b4:	ecf701e3          	beq	a4,a5,80044176 <JS_GetIterator+0x3a>
quickjs-nuttx/quickjs.c:15111
    if (!JS_IsFunction(ctx, method)) {
    800442b8:	7582                	ld	a1,32(sp)
    800442ba:	8522                	mv	a0,s0
    800442bc:	f432                	sd	a2,40(sp)
    800442be:	e432                	sd	a2,8(sp)
    800442c0:	9e2ca0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    800442c4:	6622                	ld	a2,8(sp)
    800442c6:	e11d                	bnez	a0,800442ec <JS_GetIterator+0x1b0>
quickjs-nuttx/quickjs.c:15112
        JS_FreeValue(ctx, method);
    800442c8:	7582                	ld	a1,32(sp)
    800442ca:	8522                	mv	a0,s0
    800442cc:	cd2c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15113
        return JS_ThrowTypeError(ctx, "value is not iterable");
    800442d0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:15118
}
    800442d2:	740e                	ld	s0,224(sp)
    800442d4:	70ae                	ld	ra,232(sp)
    800442d6:	64ee                	ld	s1,216(sp)
    800442d8:	694e                	ld	s2,208(sp)
    800442da:	69ae                	ld	s3,200(sp)
    800442dc:	6a0e                	ld	s4,192(sp)
quickjs-nuttx/quickjs.c:15113
        return JS_ThrowTypeError(ctx, "value is not iterable");
    800442de:	00029597          	auipc	a1,0x29
    800442e2:	26a58593          	addi	a1,a1,618 # 8006d548 <qjsc_repl+0x7f98>
quickjs-nuttx/quickjs.c:15118
}
    800442e6:	616d                	addi	sp,sp,240
quickjs-nuttx/quickjs.c:15113
        return JS_ThrowTypeError(ctx, "value is not iterable");
    800442e8:	b84d406f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:15115
    ret = JS_GetIterator2(ctx, obj, method);
    800442ec:	8732                	mv	a4,a2
    800442ee:	7682                	ld	a3,32(sp)
    800442f0:	6662                	ld	a2,24(sp)
    800442f2:	65c2                	ld	a1,16(sp)
    800442f4:	8522                	mv	a0,s0
    800442f6:	df5ff0ef          	jal	ra,800440ea <JS_GetIterator2>
    800442fa:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:15116
    JS_FreeValue(ctx, method);
    800442fc:	7622                	ld	a2,40(sp)
    800442fe:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:15115
    ret = JS_GetIterator2(ctx, obj, method);
    80044300:	f82a                	sd	a0,48(sp)
    80044302:	bf21                	j	8004421a <JS_GetIterator+0xde>

0000000080044304 <js_for_of_start>:
js_for_of_start():
quickjs-nuttx/quickjs.c:15235
{
    80044304:	7159                	addi	sp,sp,-112
    80044306:	f0a2                	sd	s0,96(sp)
    80044308:	eca6                	sd	s1,88(sp)
    8004430a:	e8ca                	sd	s2,80(sp)
    8004430c:	f486                	sd	ra,104(sp)
    8004430e:	842e                	mv	s0,a1
    80044310:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:15237
    op1 = sp[-1];
    80044312:	ff05b583          	ld	a1,-16(a1)
    80044316:	ff843603          	ld	a2,-8(s0)
quickjs-nuttx/quickjs.c:15235
{
    8004431a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:15237
    op1 = sp[-1];
    8004431c:	e02e                	sd	a1,0(sp)
    8004431e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:15238
    obj = JS_GetIterator(ctx, op1, is_async);
    80044320:	e1dff0ef          	jal	ra,8004413c <JS_GetIterator>
    80044324:	ec2e                	sd	a1,24(sp)
    80044326:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:15239
    if (JS_IsException(obj))
    80044328:	2581                	sext.w	a1,a1
    8004432a:	4919                	li	s2,6
    8004432c:	01259963          	bne	a1,s2,8004433e <js_for_of_start+0x3a>
quickjs-nuttx/quickjs.c:15240
        return -1;
    80044330:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:15248
}
    80044332:	70a6                	ld	ra,104(sp)
    80044334:	7406                	ld	s0,96(sp)
    80044336:	64e6                	ld	s1,88(sp)
    80044338:	6946                	ld	s2,80(sp)
    8004433a:	6165                	addi	sp,sp,112
    8004433c:	8082                	ret
quickjs-nuttx/quickjs.c:15241
    JS_FreeValue(ctx, op1);
    8004433e:	6582                	ld	a1,0(sp)
    80044340:	6622                	ld	a2,8(sp)
    80044342:	8526                	mv	a0,s1
    80044344:	c5ac70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15242
    sp[-1] = obj;
    80044348:	67e2                	ld	a5,24(sp)
    8004434a:	6742                	ld	a4,16(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004434c:	4801                	li	a6,0
js_for_of_start():
quickjs-nuttx/quickjs.c:15242
    8004434e:	fef43c23          	sd	a5,-8(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044352:	863e                	mv	a2,a5
js_for_of_start():
quickjs-nuttx/quickjs.c:15242
    80044354:	fee43823          	sd	a4,-16(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044358:	06b00693          	li	a3,107
    8004435c:	85ba                	mv	a1,a4
    8004435e:	8526                	mv	a0,s1
    80044360:	f4ad20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
js_for_of_start():
quickjs-nuttx/quickjs.c:15244
    if (JS_IsException(method))
    80044364:	0005879b          	sext.w	a5,a1
    80044368:	fd2784e3          	beq	a5,s2,80044330 <js_for_of_start+0x2c>
quickjs-nuttx/quickjs.c:15246
    sp[0] = method;
    8004436c:	e008                	sd	a0,0(s0)
    8004436e:	e40c                	sd	a1,8(s0)
quickjs-nuttx/quickjs.c:15247
    return 0;
    80044370:	4501                	li	a0,0
    80044372:	b7c1                	j	80044332 <js_for_of_start+0x2e>

0000000080044374 <js_error_constructor>:
js_error_constructor():
quickjs-nuttx/quickjs.c:38586
{
    80044374:	710d                	addi	sp,sp,-352
    80044376:	eaa2                	sd	s0,336(sp)
    80044378:	e2ca                	sd	s2,320(sp)
    8004437a:	fe4e                	sd	s3,312(sp)
    8004437c:	fa52                	sd	s4,304(sp)
    8004437e:	893a                	mv	s2,a4
    80044380:	8a36                	mv	s4,a3
    80044382:	ee86                	sd	ra,344(sp)
    80044384:	e6a6                	sd	s1,328(sp)
    80044386:	f656                	sd	s5,296(sp)
    80044388:	f25a                	sd	s6,288(sp)
    8004438a:	ee5e                	sd	s7,280(sp)
    8004438c:	ea62                	sd	s8,272(sp)
    8004438e:	e02e                	sd	a1,0(sp)
    80044390:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:38591
    if (JS_IsUndefined(new_target))
    80044392:	0006069b          	sext.w	a3,a2
    80044396:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:38586
{
    80044398:	89be                	mv	s3,a5
    8004439a:	842a                	mv	s0,a0
    8004439c:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:38591
    if (JS_IsUndefined(new_target))
    8004439e:	00e69963          	bne	a3,a4,800443b0 <js_error_constructor+0x3c>
JS_GetActiveFunction():
quickjs-nuttx/quickjs.c:15534
    return ctx->rt->current_stack_frame->cur_func;
    800443a2:	6d1c                	ld	a5,24(a0)
    800443a4:	7ffc                	ld	a5,248(a5)
    800443a6:	6798                	ld	a4,8(a5)
    800443a8:	6b9c                	ld	a5,16(a5)
    800443aa:	e93a                	sd	a4,144(sp)
    800443ac:	ed3e                	sd	a5,152(sp)
    800443ae:	e03a                	sd	a4,0(sp)
js_error_constructor():
quickjs-nuttx/quickjs.c:38593
    proto = JS_GetProperty(ctx, new_target, JS_ATOM_prototype);
    800443b0:	6702                	ld	a4,0(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800443b2:	863e                	mv	a2,a5
    800443b4:	4801                	li	a6,0
    800443b6:	03c00693          	li	a3,60
    800443ba:	85ba                	mv	a1,a4
    800443bc:	8522                	mv	a0,s0
    800443be:	e43e                	sd	a5,8(sp)
    800443c0:	e63e                	sd	a5,264(sp)
    800443c2:	e23a                	sd	a4,256(sp)
    800443c4:	ee6d20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800443c8:	f8aa                	sd	a0,112(sp)
    800443ca:	fcae                	sd	a1,120(sp)
    800443cc:	e0aa                	sd	a0,64(sp)
    800443ce:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800443d0:	0005879b          	sext.w	a5,a1
js_error_constructor():
quickjs-nuttx/quickjs.c:38594
    if (JS_IsException(proto))
    800443d4:	4499                	li	s1,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800443d6:	862e                	mv	a2,a1
js_error_constructor():
quickjs-nuttx/quickjs.c:38594
    800443d8:	02979263          	bne	a5,s1,800443fc <js_error_constructor+0x88>
quickjs-nuttx/quickjs.c:38595
        return proto;
    800443dc:	f1aa                	sd	a0,224(sp)
    800443de:	f5ae                	sd	a1,232(sp)
quickjs-nuttx/quickjs.c:38656 (discriminator 2)
}
    800443e0:	60f6                	ld	ra,344(sp)
    800443e2:	6456                	ld	s0,336(sp)
    800443e4:	750e                	ld	a0,224(sp)
    800443e6:	75ae                	ld	a1,232(sp)
    800443e8:	64b6                	ld	s1,328(sp)
    800443ea:	6916                	ld	s2,320(sp)
    800443ec:	79f2                	ld	s3,312(sp)
    800443ee:	7a52                	ld	s4,304(sp)
    800443f0:	7ab2                	ld	s5,296(sp)
    800443f2:	7b12                	ld	s6,288(sp)
    800443f4:	6bf2                	ld	s7,280(sp)
    800443f6:	6c52                	ld	s8,272(sp)
    800443f8:	6135                	addi	sp,sp,352
    800443fa:	8082                	ret
quickjs-nuttx/quickjs.c:38596
    if (!JS_IsObject(proto)) {
    800443fc:	577d                	li	a4,-1
    800443fe:	02e78c63          	beq	a5,a4,80044436 <js_error_constructor+0xc2>
quickjs-nuttx/quickjs.c:38600
        JS_FreeValue(ctx, proto);
    80044402:	85aa                	mv	a1,a0
    80044404:	8522                	mv	a0,s0
    80044406:	b98c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38601
        realm = JS_GetFunctionRealm(ctx, new_target);
    8004440a:	6582                	ld	a1,0(sp)
    8004440c:	6622                	ld	a2,8(sp)
    8004440e:	8522                	mv	a0,s0
    80044410:	b1cd50ef          	jal	ra,8001972c <JS_GetFunctionRealm>
quickjs-nuttx/quickjs.c:38602
        if (!realm)
    80044414:	e501                	bnez	a0,8004441c <js_error_constructor+0xa8>
quickjs-nuttx/quickjs.c:38603
            return JS_EXCEPTION;
    80044416:	f182                	sd	zero,224(sp)
    80044418:	f5a6                	sd	s1,232(sp)
    8004441a:	b7d9                	j	800443e0 <js_error_constructor+0x6c>
quickjs-nuttx/quickjs.c:38604
        if (magic < 0) {
    8004441c:	0409d463          	bgez	s3,80044464 <js_error_constructor+0xf0>
quickjs-nuttx/quickjs.c:38605
            proto1 = realm->class_proto[JS_CLASS_ERROR];
    80044420:	613c                	ld	a5,64(a0)
    80044422:	7b98                	ld	a4,48(a5)
    80044424:	7f9c                	ld	a5,56(a5)
    80044426:	e23a                	sd	a4,256(sp)
quickjs-nuttx/quickjs.c:38607
            proto1 = realm->native_error_proto[magic];
    80044428:	e63e                	sd	a5,264(sp)
quickjs-nuttx/quickjs.c:38609
        proto = JS_DupValue(ctx, proto1);
    8004442a:	6512                	ld	a0,256(sp)
    8004442c:	65b2                	ld	a1,264(sp)
    8004442e:	fedc50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80044432:	e0aa                	sd	a0,64(sp)
    80044434:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:38611
    obj = JS_NewObjectProtoClass(ctx, proto, JS_CLASS_ERROR);
    80044436:	6586                	ld	a1,64(sp)
    80044438:	468d                	li	a3,3
    8004443a:	8522                	mv	a0,s0
    8004443c:	e4b2                	sd	a2,72(sp)
    8004443e:	fa6d70ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    80044442:	84ae                	mv	s1,a1
    80044444:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:38612
    JS_FreeValue(ctx, proto);
    80044446:	6626                	ld	a2,72(sp)
    80044448:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:38611
    obj = JS_NewObjectProtoClass(ctx, proto, JS_CLASS_ERROR);
    8004444a:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:38613
    if (JS_IsException(obj))
    8004444c:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:38612
    JS_FreeValue(ctx, proto);
    8004444e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:38613
    if (JS_IsException(obj))
    80044450:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:38612
    JS_FreeValue(ctx, proto);
    80044452:	b4cc70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38613
    if (JS_IsException(obj))
    80044456:	01549f63          	bne	s1,s5,80044474 <js_error_constructor+0x100>
quickjs-nuttx/quickjs.c:38652
    return obj;
    8004445a:	7782                	ld	a5,32(sp)
    8004445c:	f1be                	sd	a5,224(sp)
    8004445e:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:38655
    return JS_EXCEPTION;
    80044460:	f5be                	sd	a5,232(sp)
    80044462:	bfbd                	j	800443e0 <js_error_constructor+0x6c>
quickjs-nuttx/quickjs.c:38607
            proto1 = realm->native_error_proto[magic];
    80044464:	00998793          	addi	a5,s3,9
    80044468:	0792                	slli	a5,a5,0x4
    8004446a:	953e                	add	a0,a0,a5
    8004446c:	651c                	ld	a5,8(a0)
    8004446e:	e23e                	sd	a5,256(sp)
    80044470:	691c                	ld	a5,16(a0)
    80044472:	bf5d                	j	80044428 <js_error_constructor+0xb4>
quickjs-nuttx/quickjs.c:38615
    arg_index = (magic == JS_AGGREGATE_ERROR);
    80044474:	ff998493          	addi	s1,s3,-7
    80044478:	0014b793          	seqz	a5,s1
quickjs-nuttx/quickjs.c:38617
    message = argv[arg_index++];
    8004447c:	00178493          	addi	s1,a5,1
    80044480:	0792                	slli	a5,a5,0x4
    80044482:	97ca                	add	a5,a5,s2
    80044484:	6790                	ld	a2,8(a5)
    80044486:	638c                	ld	a1,0(a5)
quickjs-nuttx/quickjs.c:38618
    if (!JS_IsUndefined(message)) {
    80044488:	478d                	li	a5,3
    8004448a:	0006071b          	sext.w	a4,a2
    8004448e:	02f70363          	beq	a4,a5,800444b4 <js_error_constructor+0x140>
quickjs-nuttx/quickjs.c:38619
        msg = JS_ToString(ctx, message);
    80044492:	8522                	mv	a0,s0
    80044494:	ae8dc0ef          	jal	ra,8002077c <JS_ToString>
quickjs-nuttx/quickjs.c:38620
        if (unlikely(JS_IsException(msg)))
    80044498:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:38619
        msg = JS_ToString(ctx, message);
    8004449c:	872a                	mv	a4,a0
    8004449e:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:38620
        if (unlikely(JS_IsException(msg)))
    800444a0:	17568363          	beq	a3,s5,80044606 <js_error_constructor+0x292>
quickjs-nuttx/quickjs.c:38622
        JS_DefinePropertyValue(ctx, obj, JS_ATOM_message, msg,
    800444a4:	7582                	ld	a1,32(sp)
    800444a6:	7622                	ld	a2,40(sp)
    800444a8:	480d                	li	a6,3
    800444aa:	03300693          	li	a3,51
    800444ae:	8522                	mv	a0,s0
    800444b0:	d7dd30ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:38626
    if (arg_index < argc) {
    800444b4:	0744d263          	bge	s1,s4,80044518 <js_error_constructor+0x1a4>
quickjs-nuttx/quickjs.c:38627
        options = argv[arg_index];
    800444b8:	0492                	slli	s1,s1,0x4
    800444ba:	94ca                	add	s1,s1,s2
    800444bc:	6490                	ld	a2,8(s1)
    800444be:	608c                	ld	a1,0(s1)
quickjs-nuttx/quickjs.c:38628
        if (JS_IsObject(options)) {
    800444c0:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:38627
        options = argv[arg_index];
    800444c2:	f4b2                	sd	a2,104(sp)
    800444c4:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:38628
        if (JS_IsObject(options)) {
    800444c6:	0006071b          	sext.w	a4,a2
    800444ca:	04f71763          	bne	a4,a5,80044518 <js_error_constructor+0x1a4>
quickjs-nuttx/quickjs.c:38629
            int present = JS_HasProperty(ctx, options, JS_ATOM_cause);
    800444ce:	03400693          	li	a3,52
    800444d2:	8522                	mv	a0,s0
    800444d4:	822f40ef          	jal	ra,800384f6 <JS_HasProperty>
quickjs-nuttx/quickjs.c:38630
            if (present < 0)
    800444d8:	12054763          	bltz	a0,80044606 <js_error_constructor+0x292>
quickjs-nuttx/quickjs.c:38632
            if (present) {
    800444dc:	cd15                	beqz	a0,80044518 <js_error_constructor+0x1a4>
quickjs-nuttx/quickjs.c:38633
                JSValue cause = JS_GetProperty(ctx, options, JS_ATOM_cause);
    800444de:	7706                	ld	a4,96(sp)
    800444e0:	77a6                	ld	a5,104(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800444e2:	03400693          	li	a3,52
    800444e6:	85ba                	mv	a1,a4
    800444e8:	863e                	mv	a2,a5
    800444ea:	4801                	li	a6,0
    800444ec:	8522                	mv	a0,s0
    800444ee:	e23a                	sd	a4,256(sp)
    800444f0:	e63e                	sd	a5,264(sp)
    800444f2:	db8d20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800444f6:	f9aa                	sd	a0,240(sp)
    800444f8:	fdae                	sd	a1,248(sp)
js_error_constructor():
quickjs-nuttx/quickjs.c:38634
                if (JS_IsException(cause))
    800444fa:	0005861b          	sext.w	a2,a1
    800444fe:	4699                	li	a3,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044500:	872a                	mv	a4,a0
    80044502:	87ae                	mv	a5,a1
js_error_constructor():
quickjs-nuttx/quickjs.c:38634
    80044504:	10d60163          	beq	a2,a3,80044606 <js_error_constructor+0x292>
quickjs-nuttx/quickjs.c:38636
                JS_DefinePropertyValue(ctx, obj, JS_ATOM_cause, cause,
    80044508:	7582                	ld	a1,32(sp)
    8004450a:	7622                	ld	a2,40(sp)
    8004450c:	480d                	li	a6,3
    8004450e:	03400693          	li	a3,52
    80044512:	8522                	mv	a0,s0
    80044514:	d19d30ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:38642
    if (magic == JS_AGGREGATE_ERROR) {
    80044518:	479d                	li	a5,7
    8004451a:	10f99c63          	bne	s3,a5,80044632 <js_error_constructor+0x2be>
iterator_to_array():
quickjs-nuttx/quickjs.c:38553
    iter = JS_GetIterator(ctx, items, FALSE);
    8004451e:	00093583          	ld	a1,0(s2)
    80044522:	00893603          	ld	a2,8(s2)
    80044526:	4681                	li	a3,0
    80044528:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:38548
    JSValue iter, next_method = JS_UNDEFINED;
    8004452a:	e182                	sd	zero,192(sp)
quickjs-nuttx/quickjs.c:38549
    JSValue v, r = JS_UNDEFINED;
    8004452c:	f182                	sd	zero,224(sp)
    8004452e:	f582                	sd	zero,232(sp)
quickjs-nuttx/quickjs.c:38553
    iter = JS_GetIterator(ctx, items, FALSE);
    80044530:	c0dff0ef          	jal	ra,8004413c <JS_GetIterator>
    80044534:	f92a                	sd	a0,176(sp)
quickjs-nuttx/quickjs.c:38554
    if (JS_IsException(iter))
    80044536:	0005879b          	sext.w	a5,a1
    8004453a:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:38553
    iter = JS_GetIterator(ctx, items, FALSE);
    8004453c:	872a                	mv	a4,a0
    8004453e:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:38554
    if (JS_IsException(iter))
    80044540:	0d578b63          	beq	a5,s5,80044616 <js_error_constructor+0x2a2>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044544:	87ae                	mv	a5,a1
    80044546:	e22a                	sd	a0,256(sp)
    80044548:	e62e                	sd	a1,264(sp)
    8004454a:	4801                	li	a6,0
    8004454c:	85aa                	mv	a1,a0
    8004454e:	06b00693          	li	a3,107
    80044552:	864e                	mv	a2,s3
    80044554:	8522                	mv	a0,s0
    80044556:	d54d20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8004455a:	f9aa                	sd	a0,240(sp)
    8004455c:	fdae                	sd	a1,248(sp)
    8004455e:	e1aa                	sd	a0,192(sp)
iterator_to_array():
quickjs-nuttx/quickjs.c:38557
    if (JS_IsException(next_method))
    80044560:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044564:	8a2e                	mv	s4,a1
    80044566:	8bae                	mv	s7,a1
iterator_to_array():
quickjs-nuttx/quickjs.c:38557
    80044568:	0b578a63          	beq	a5,s5,8004461c <js_error_constructor+0x2a8>
quickjs-nuttx/quickjs.c:38559
    r = JS_NewArray(ctx);
    8004456c:	8522                	mv	a0,s0
    8004456e:	cedd70ef          	jal	ra,8001c25a <JS_NewArray>
    80044572:	f1aa                	sd	a0,224(sp)
    80044574:	f5ae                	sd	a1,232(sp)
quickjs-nuttx/quickjs.c:38560
    if (JS_IsException(r))
    80044576:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:38559
    r = JS_NewArray(ctx);
    8004457a:	892e                	mv	s2,a1
    8004457c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:38560
    if (JS_IsException(r))
    8004457e:	05578963          	beq	a5,s5,800445d0 <js_error_constructor+0x25c>
quickjs-nuttx/quickjs.c:38568
        if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80044582:	6b11                	lui	s6,0x4
quickjs-nuttx/quickjs.c:38562
    for (k = 0;; k++) {
    80044584:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:38564
        if (JS_IsException(v))
    80044586:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:38568
        if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80044588:	0b1d                	addi	s6,s6,7
quickjs-nuttx/quickjs.c:38563
        v = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    8004458a:	668e                	ld	a3,192(sp)
    8004458c:	75ca                	ld	a1,176(sp)
    8004458e:	087c                	addi	a5,sp,28
    80044590:	8752                	mv	a4,s4
    80044592:	864e                	mv	a2,s3
    80044594:	8522                	mv	a0,s0
    80044596:	fd4e                	sd	s3,184(sp)
    80044598:	a99ff0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
quickjs-nuttx/quickjs.c:38564
        if (JS_IsException(v))
    8004459c:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:38563
        v = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    800445a0:	872a                	mv	a4,a0
    800445a2:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:38564
        if (JS_IsException(v))
    800445a4:	03868063          	beq	a3,s8,800445c4 <js_error_constructor+0x250>
quickjs-nuttx/quickjs.c:38566
        if (done)
    800445a8:	46f2                	lw	a3,28(sp)
    800445aa:	ea9d                	bnez	a3,800445e0 <js_error_constructor+0x26c>
quickjs-nuttx/quickjs.c:38568
        if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    800445ac:	758e                	ld	a1,224(sp)
    800445ae:	885a                	mv	a6,s6
    800445b0:	86d6                	mv	a3,s5
    800445b2:	864a                	mv	a2,s2
    800445b4:	8522                	mv	a0,s0
    800445b6:	f5ca                	sd	s2,232(sp)
    800445b8:	a7bec0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    800445bc:	00054463          	bltz	a0,800445c4 <js_error_constructor+0x250>
quickjs-nuttx/quickjs.c:38562
    for (k = 0;; k++) {
    800445c0:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:38563
        v = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    800445c2:	b7e1                	j	8004458a <js_error_constructor+0x216>
quickjs-nuttx/quickjs.c:38577
    JS_IteratorClose(ctx, iter, TRUE);
    800445c4:	75ca                	ld	a1,176(sp)
    800445c6:	766a                	ld	a2,184(sp)
    800445c8:	4685                	li	a3,1
    800445ca:	8522                	mv	a0,s0
    800445cc:	e6ed40ef          	jal	ra,80018c3a <JS_IteratorClose>
quickjs-nuttx/quickjs.c:38579
    JS_FreeValue(ctx, r);
    800445d0:	758e                	ld	a1,224(sp)
    800445d2:	8626                	mv	a2,s1
    800445d4:	8522                	mv	a0,s0
    800445d6:	f5a6                	sd	s1,232(sp)
    800445d8:	9c6c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38580
    r = JS_EXCEPTION;
    800445dc:	4499                	li	s1,6
    800445de:	f182                	sd	zero,224(sp)
quickjs-nuttx/quickjs.c:38573
    JS_FreeValue(ctx, next_method);
    800445e0:	658e                	ld	a1,192(sp)
    800445e2:	865e                	mv	a2,s7
    800445e4:	8522                	mv	a0,s0
    800445e6:	9b8c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38574
    JS_FreeValue(ctx, iter);
    800445ea:	75ca                	ld	a1,176(sp)
    800445ec:	864e                	mv	a2,s3
    800445ee:	8522                	mv	a0,s0
    800445f0:	9aec70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38575
    return r;
    800445f4:	770e                	ld	a4,224(sp)
    800445f6:	f5a6                	sd	s1,232(sp)
    800445f8:	e626                	sd	s1,264(sp)
    800445fa:	e23a                	sd	a4,256(sp)
js_error_constructor():
quickjs-nuttx/quickjs.c:38644
        if (JS_IsException(error_list))
    800445fc:	0004879b          	sext.w	a5,s1
    80044600:	4699                	li	a3,6
    80044602:	00d79f63          	bne	a5,a3,80044620 <js_error_constructor+0x2ac>
quickjs-nuttx/quickjs.c:38654
    JS_FreeValue(ctx, obj);
    80044606:	7582                	ld	a1,32(sp)
    80044608:	7622                	ld	a2,40(sp)
    8004460a:	8522                	mv	a0,s0
    8004460c:	992c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38655
    return JS_EXCEPTION;
    80044610:	4799                	li	a5,6
    80044612:	f182                	sd	zero,224(sp)
    80044614:	b5b1                	j	80044460 <js_error_constructor+0xec>
iterator_to_array():
quickjs-nuttx/quickjs.c:38549
    JSValue v, r = JS_UNDEFINED;
    80044616:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:38548
    JSValue iter, next_method = JS_UNDEFINED;
    80044618:	4b8d                	li	s7,3
    8004461a:	bf5d                	j	800445d0 <js_error_constructor+0x25c>
quickjs-nuttx/quickjs.c:38549
    JSValue v, r = JS_UNDEFINED;
    8004461c:	448d                	li	s1,3
    8004461e:	bf4d                	j	800445d0 <js_error_constructor+0x25c>
js_error_constructor():
quickjs-nuttx/quickjs.c:38646
        JS_DefinePropertyValue(ctx, obj, JS_ATOM_errors, error_list,
    80044620:	7582                	ld	a1,32(sp)
    80044622:	7622                	ld	a2,40(sp)
    80044624:	480d                	li	a6,3
    80044626:	87a6                	mv	a5,s1
    80044628:	03500693          	li	a3,53
    8004462c:	8522                	mv	a0,s0
    8004462e:	bffd30ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:38651
    build_backtrace(ctx, obj, NULL, 0, JS_BACKTRACE_FLAG_SKIP_FIRST_LEVEL);
    80044632:	7582                	ld	a1,32(sp)
    80044634:	7622                	ld	a2,40(sp)
    80044636:	4785                	li	a5,1
    80044638:	4701                	li	a4,0
    8004463a:	4681                	li	a3,0
    8004463c:	8522                	mv	a0,s0
    8004463e:	942e10ef          	jal	ra,80025780 <build_backtrace>
    80044642:	bd21                	j	8004445a <js_error_constructor+0xe6>

0000000080044644 <js_object_fromEntries>:
js_object_fromEntries():
quickjs-nuttx/quickjs.c:37804
{
    80044644:	7151                	addi	sp,sp,-240
    80044646:	f1a2                	sd	s0,224(sp)
    80044648:	e9ca                	sd	s2,208(sp)
    8004464a:	e1d2                	sd	s4,192(sp)
    8004464c:	f586                	sd	ra,232(sp)
    8004464e:	eda6                	sd	s1,216(sp)
    80044650:	e5ce                	sd	s3,200(sp)
    80044652:	fd56                	sd	s5,184(sp)
    80044654:	f95a                	sd	s6,176(sp)
    80044656:	f55e                	sd	s7,168(sp)
    80044658:	f162                	sd	s8,160(sp)
quickjs-nuttx/quickjs.c:37811
    iterable = argv[0];
    8004465a:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:37804
{
    8004465c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37805
    JSValue obj, iter, next_method = JS_UNDEFINED;
    8004465e:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:37811
    iterable = argv[0];
    80044660:	e8be                	sd	a5,80(sp)
    80044662:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:37814
    if (JS_IsException(obj))
    80044664:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:37811
    iterable = argv[0];
    80044666:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:37813
    obj = JS_NewObject(ctx);
    80044668:	9bdd70ef          	jal	ra,8001c024 <JS_NewObject>
    8004466c:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:37814
    if (JS_IsException(obj))
    8004466e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:37813
    obj = JS_NewObject(ctx);
    80044672:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:37814
    if (JS_IsException(obj))
    80044674:	03479263          	bne	a5,s4,80044698 <js_object_fromEntries+0x54>
quickjs-nuttx/quickjs.c:37815
        return obj;
    80044678:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:37858
    return obj;
    8004467a:	e54a                	sd	s2,136(sp)
quickjs-nuttx/quickjs.c:37868
}
    8004467c:	70ae                	ld	ra,232(sp)
    8004467e:	740e                	ld	s0,224(sp)
    80044680:	650a                	ld	a0,128(sp)
    80044682:	65aa                	ld	a1,136(sp)
    80044684:	64ee                	ld	s1,216(sp)
    80044686:	694e                	ld	s2,208(sp)
    80044688:	69ae                	ld	s3,200(sp)
    8004468a:	6a0e                	ld	s4,192(sp)
    8004468c:	7aea                	ld	s5,184(sp)
    8004468e:	7b4a                	ld	s6,176(sp)
    80044690:	7baa                	ld	s7,168(sp)
    80044692:	7c0a                	ld	s8,160(sp)
    80044694:	616d                	addi	sp,sp,240
    80044696:	8082                	ret
quickjs-nuttx/quickjs.c:37817
    iter = JS_GetIterator(ctx, iterable, FALSE);
    80044698:	65c6                	ld	a1,80(sp)
    8004469a:	6666                	ld	a2,88(sp)
    8004469c:	4681                	li	a3,0
    8004469e:	8522                	mv	a0,s0
    800446a0:	a9dff0ef          	jal	ra,8004413c <JS_GetIterator>
    800446a4:	f82a                	sd	a0,48(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800446a6:	00058b9b          	sext.w	s7,a1
js_object_fromEntries():
quickjs-nuttx/quickjs.c:37817
    800446aa:	872a                	mv	a4,a0
    800446ac:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:37818
    if (JS_IsException(iter))
    800446ae:	114b8e63          	beq	s7,s4,800447ca <js_object_fromEntries+0x186>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800446b2:	87ae                	mv	a5,a1
    800446b4:	e12a                	sd	a0,128(sp)
    800446b6:	e52e                	sd	a1,136(sp)
    800446b8:	4801                	li	a6,0
    800446ba:	85aa                	mv	a1,a0
    800446bc:	06b00693          	li	a3,107
    800446c0:	8626                	mv	a2,s1
    800446c2:	8522                	mv	a0,s0
    800446c4:	be6d20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800446c8:	e0aa                	sd	a0,64(sp)
js_object_fromEntries():
quickjs-nuttx/quickjs.c:37821
    if (JS_IsException(next_method))
    800446ca:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800446ce:	89ae                	mv	s3,a1
    800446d0:	8b2e                	mv	s6,a1
js_object_fromEntries():
quickjs-nuttx/quickjs.c:37821
    800446d2:	07478463          	beq	a5,s4,8004473a <js_object_fromEntries+0xf6>
quickjs-nuttx/quickjs.c:37848
        if (JS_DefinePropertyValueValue(ctx, obj, key, value,
    800446d6:	6a91                	lui	s5,0x4
quickjs-nuttx/quickjs.c:37827
        if (JS_IsException(item))
    800446d8:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:37836
        if (!JS_IsObject(item)) {
    800446da:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:37848
        if (JS_DefinePropertyValueValue(ctx, obj, key, value,
    800446dc:	0a9d                	addi	s5,s5,7
quickjs-nuttx/quickjs.c:37826
        item = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    800446de:	6686                	ld	a3,64(sp)
    800446e0:	75c2                	ld	a1,48(sp)
    800446e2:	087c                	addi	a5,sp,28
    800446e4:	8626                	mv	a2,s1
    800446e6:	874e                	mv	a4,s3
    800446e8:	8522                	mv	a0,s0
    800446ea:	e4ce                	sd	s3,72(sp)
    800446ec:	fc26                	sd	s1,56(sp)
    800446ee:	943ff0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    800446f2:	e12a                	sd	a0,128(sp)
    800446f4:	e52e                	sd	a1,136(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800446f6:	0005879b          	sext.w	a5,a1
js_object_fromEntries():
quickjs-nuttx/quickjs.c:37826
    800446fa:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:37827
        if (JS_IsException(item))
    800446fc:	03478f63          	beq	a5,s4,8004473a <js_object_fromEntries+0xf6>
quickjs-nuttx/quickjs.c:37829
        if (done) {
    80044700:	4772                	lw	a4,28(sp)
    80044702:	c315                	beqz	a4,80044726 <js_object_fromEntries+0xe2>
quickjs-nuttx/quickjs.c:37830
            JS_FreeValue(ctx, item);
    80044704:	85aa                	mv	a1,a0
    80044706:	8522                	mv	a0,s0
    80044708:	896c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37856
    JS_FreeValue(ctx, next_method);
    8004470c:	6586                	ld	a1,64(sp)
    8004470e:	6626                	ld	a2,72(sp)
    80044710:	8522                	mv	a0,s0
    80044712:	88cc70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37857
    JS_FreeValue(ctx, iter);
    80044716:	75c2                	ld	a1,48(sp)
    80044718:	7662                	ld	a2,56(sp)
    8004471a:	8522                	mv	a0,s0
    8004471c:	882c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37858
    return obj;
    80044720:	7782                	ld	a5,32(sp)
    80044722:	e13e                	sd	a5,128(sp)
    80044724:	bf99                	j	8004467a <js_object_fromEntries+0x36>
quickjs-nuttx/quickjs.c:37836
        if (!JS_IsObject(item)) {
    80044726:	05878663          	beq	a5,s8,80044772 <js_object_fromEntries+0x12e>
quickjs-nuttx/quickjs.c:37837
            JS_ThrowTypeErrorNotAnObject(ctx);
    8004472a:	8522                	mv	a0,s0
    8004472c:	cfed40ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:37851
            JS_FreeValue(ctx, item);
    80044730:	658a                	ld	a1,128(sp)
    80044732:	662a                	ld	a2,136(sp)
    80044734:	8522                	mv	a0,s0
    80044736:	868c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37860
    if (JS_IsObject(iter)) {
    8004473a:	57fd                	li	a5,-1
    8004473c:	00fb9863          	bne	s7,a5,8004474c <js_object_fromEntries+0x108>
quickjs-nuttx/quickjs.c:37862
        JS_IteratorClose(ctx, iter, TRUE);
    80044740:	75c2                	ld	a1,48(sp)
    80044742:	4685                	li	a3,1
    80044744:	8626                	mv	a2,s1
    80044746:	8522                	mv	a0,s0
    80044748:	cf2d40ef          	jal	ra,80018c3a <JS_IteratorClose>
quickjs-nuttx/quickjs.c:37864
    JS_FreeValue(ctx, next_method);
    8004474c:	6586                	ld	a1,64(sp)
    8004474e:	865a                	mv	a2,s6
    80044750:	8522                	mv	a0,s0
    80044752:	84cc70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37865
    JS_FreeValue(ctx, iter);
    80044756:	75c2                	ld	a1,48(sp)
    80044758:	8626                	mv	a2,s1
    8004475a:	8522                	mv	a0,s0
    8004475c:	842c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37866
    JS_FreeValue(ctx, obj);
    80044760:	7582                	ld	a1,32(sp)
    80044762:	864a                	mv	a2,s2
    80044764:	8522                	mv	a0,s0
    80044766:	838c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37867
    return JS_EXCEPTION;
    8004476a:	4799                	li	a5,6
    8004476c:	e102                	sd	zero,128(sp)
    8004476e:	e53e                	sd	a5,136(sp)
    80044770:	b731                	j	8004467c <js_object_fromEntries+0x38>
quickjs-nuttx/quickjs.c:37840
        key = JS_GetPropertyUint32(ctx, item, 0);
    80044772:	85aa                	mv	a1,a0
    80044774:	4681                	li	a3,0
    80044776:	8522                	mv	a0,s0
    80044778:	9c1d20ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    8004477c:	f4ae                	sd	a1,104(sp)
    8004477e:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:37841
        if (JS_IsException(key))
    80044780:	2581                	sext.w	a1,a1
    80044782:	fb4587e3          	beq	a1,s4,80044730 <js_object_fromEntries+0xec>
quickjs-nuttx/quickjs.c:37843
        value = JS_GetPropertyUint32(ctx, item, 1);
    80044786:	658a                	ld	a1,128(sp)
    80044788:	662a                	ld	a2,136(sp)
    8004478a:	4685                	li	a3,1
    8004478c:	8522                	mv	a0,s0
    8004478e:	9abd20ef          	jal	ra,80017138 <JS_GetPropertyUint32>
quickjs-nuttx/quickjs.c:37844
        if (JS_IsException(value)) {
    80044792:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:37843
        value = JS_GetPropertyUint32(ctx, item, 1);
    80044796:	87aa                	mv	a5,a0
    80044798:	882e                	mv	a6,a1
quickjs-nuttx/quickjs.c:37844
        if (JS_IsException(value)) {
    8004479a:	01471863          	bne	a4,s4,800447aa <js_object_fromEntries+0x166>
quickjs-nuttx/quickjs.c:37845
            JS_FreeValue(ctx, key);
    8004479e:	7586                	ld	a1,96(sp)
    800447a0:	7626                	ld	a2,104(sp)
    800447a2:	8522                	mv	a0,s0
    800447a4:	ffbc60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37846
            goto fail1;
    800447a8:	b761                	j	80044730 <js_object_fromEntries+0xec>
quickjs-nuttx/quickjs.c:37848
        if (JS_DefinePropertyValueValue(ctx, obj, key, value,
    800447aa:	7686                	ld	a3,96(sp)
    800447ac:	7726                	ld	a4,104(sp)
    800447ae:	7582                	ld	a1,32(sp)
    800447b0:	88d6                	mv	a7,s5
    800447b2:	864a                	mv	a2,s2
    800447b4:	8522                	mv	a0,s0
    800447b6:	de2ec0ef          	jal	ra,80030d98 <JS_DefinePropertyValueValue>
    800447ba:	f6054be3          	bltz	a0,80044730 <js_object_fromEntries+0xec>
quickjs-nuttx/quickjs.c:37854
        JS_FreeValue(ctx, item);
    800447be:	658a                	ld	a1,128(sp)
    800447c0:	662a                	ld	a2,136(sp)
    800447c2:	8522                	mv	a0,s0
    800447c4:	fdbc60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37824
    for(;;) {
    800447c8:	bf19                	j	800446de <js_object_fromEntries+0x9a>
quickjs-nuttx/quickjs.c:37805
    JSValue obj, iter, next_method = JS_UNDEFINED;
    800447ca:	4b0d                	li	s6,3
    800447cc:	b741                	j	8004474c <js_object_fromEntries+0x108>

00000000800447ce <js_typed_array_constructor>:
js_typed_array_constructor():
quickjs-nuttx/quickjs.c:54667
{
    800447ce:	7149                	addi	sp,sp,-368
    800447d0:	eea6                	sd	s1,344(sp)
quickjs-nuttx/quickjs.c:54673
    size_log2 = typed_array_size_log2(classid);
    800447d2:	feb7869b          	addiw	a3,a5,-21
quickjs-nuttx/quickjs.c:54667
{
    800447d6:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:54673
    size_log2 = typed_array_size_log2(classid);
    800447d8:	00031717          	auipc	a4,0x31
    800447dc:	a0870713          	addi	a4,a4,-1528 # 800751e0 <typed_array_size_log2>
    800447e0:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:54667
{
    800447e2:	f2a2                	sd	s0,352(sp)
    800447e4:	eaca                	sd	s2,336(sp)
    800447e6:	fe56                	sd	s5,312(sp)
    800447e8:	f686                	sd	ra,360(sp)
    800447ea:	e6ce                	sd	s3,328(sp)
    800447ec:	e2d2                	sd	s4,320(sp)
    800447ee:	fa5a                	sd	s6,304(sp)
    800447f0:	f65e                	sd	s7,296(sp)
    800447f2:	f262                	sd	s8,288(sp)
    800447f4:	ee66                	sd	s9,280(sp)
    800447f6:	ea6a                	sd	s10,272(sp)
    800447f8:	e66e                	sd	s11,264(sp)
quickjs-nuttx/quickjs.c:54673
    size_log2 = typed_array_size_log2(classid);
    800447fa:	00074a83          	lbu	s5,0(a4)
quickjs-nuttx/quickjs.c:54674
    if (JS_VALUE_GET_TAG(argv[0]) != JS_TAG_OBJECT) {
    800447fe:	6498                	ld	a4,8(s1)
quickjs-nuttx/quickjs.c:54667
{
    80044800:	e02e                	sd	a1,0(sp)
    80044802:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:54674
    if (JS_VALUE_GET_TAG(argv[0]) != JS_TAG_OBJECT) {
    80044804:	0007081b          	sext.w	a6,a4
    80044808:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:54667
{
    8004480a:	842a                	mv	s0,a0
    8004480c:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:54674
    if (JS_VALUE_GET_TAG(argv[0]) != JS_TAG_OBJECT) {
    8004480e:	08d80d63          	beq	a6,a3,800448a8 <js_typed_array_constructor+0xda>
quickjs-nuttx/quickjs.c:54675
        if (JS_ToIndex(ctx, &len, argv[0]))
    80044812:	6090                	ld	a2,0(s1)
    80044814:	86ba                	mv	a3,a4
    80044816:	018c                	addi	a1,sp,192
    80044818:	bebdf0ef          	jal	ra,80024402 <JS_ToIndex>
    8004481c:	c50d                	beqz	a0,80044846 <js_typed_array_constructor+0x78>
quickjs-nuttx/quickjs.c:54688
                return JS_EXCEPTION;
    8004481e:	4799                	li	a5,6
    80044820:	f102                	sd	zero,160(sp)
    80044822:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:54729 (discriminator 4)
}
    80044824:	70b6                	ld	ra,360(sp)
    80044826:	7416                	ld	s0,352(sp)
    80044828:	750a                	ld	a0,160(sp)
    8004482a:	75aa                	ld	a1,168(sp)
    8004482c:	64f6                	ld	s1,344(sp)
    8004482e:	6956                	ld	s2,336(sp)
    80044830:	69b6                	ld	s3,328(sp)
    80044832:	6a16                	ld	s4,320(sp)
    80044834:	7af2                	ld	s5,312(sp)
    80044836:	7b52                	ld	s6,304(sp)
    80044838:	7bb2                	ld	s7,296(sp)
    8004483a:	7c12                	ld	s8,288(sp)
    8004483c:	6cf2                	ld	s9,280(sp)
    8004483e:	6d52                	ld	s10,272(sp)
    80044840:	6db2                	ld	s11,264(sp)
    80044842:	6175                	addi	sp,sp,368
    80044844:	8082                	ret
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80044846:	668e                	ld	a3,192(sp)
    80044848:	478d                	li	a5,3
    8004484a:	474d                	li	a4,19
    8004484c:	015696b3          	sll	a3,a3,s5
    80044850:	4581                	li	a1,0
    80044852:	460d                	li	a2,3
    80044854:	8522                	mv	a0,s0
    80044856:	f5be                	sd	a5,232(sp)
    80044858:	fdbe                	sd	a5,248(sp)
js_typed_array_constructor():
quickjs-nuttx/quickjs.c:54677
        buffer = js_array_buffer_constructor1(ctx, JS_UNDEFINED,
    8004485a:	f182                	sd	zero,224(sp)
    8004485c:	f982                	sd	zero,240(sp)
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    8004485e:	e18d70ef          	jal	ra,8001be76 <js_array_buffer_constructor2>
    80044862:	f92a                	sd	a0,176(sp)
    80044864:	fd2e                	sd	a1,184(sp)
    80044866:	e9aa                	sd	a0,208(sp)
    80044868:	edae                	sd	a1,216(sp)
js_typed_array_constructor():
quickjs-nuttx/quickjs.c:54679
        if (JS_IsException(buffer))
    8004486a:	0005871b          	sext.w	a4,a1
    8004486e:	4799                	li	a5,6
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80044870:	84ae                	mv	s1,a1
js_typed_array_constructor():
quickjs-nuttx/quickjs.c:54679
        if (JS_IsException(buffer))
    80044872:	faf706e3          	beq	a4,a5,8004481e <js_typed_array_constructor+0x50>
quickjs-nuttx/quickjs.c:54681
        offset = 0;
    80044876:	f982                	sd	zero,240(sp)
quickjs-nuttx/quickjs.c:54719
    obj = js_create_from_ctor(ctx, new_target, classid);
    80044878:	6582                	ld	a1,0(sp)
    8004487a:	6622                	ld	a2,8(sp)
    8004487c:	86ca                	mv	a3,s2
    8004487e:	8522                	mv	a0,s0
    80044880:	bfcd70ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80044884:	e92a                	sd	a0,144(sp)
    80044886:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:54720
    if (JS_IsException(obj)) {
    80044888:	00058a9b          	sext.w	s5,a1
    8004488c:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:54721
        JS_FreeValue(ctx, buffer);
    8004488e:	eda6                	sd	s1,216(sp)
quickjs-nuttx/quickjs.c:54719
    obj = js_create_from_ctor(ctx, new_target, classid);
    80044890:	89aa                	mv	s3,a0
    80044892:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:54720
    if (JS_IsException(obj)) {
    80044894:	334a9f63          	bne	s5,s4,80044bd2 <js_typed_array_constructor+0x404>
quickjs-nuttx/quickjs.c:54721
        JS_FreeValue(ctx, buffer);
    80044898:	65ce                	ld	a1,208(sp)
    8004489a:	8626                	mv	a2,s1
    8004489c:	8522                	mv	a0,s0
    8004489e:	f01c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54722
        return JS_EXCEPTION;
    800448a2:	f102                	sd	zero,160(sp)
    800448a4:	f556                	sd	s5,168(sp)
    800448a6:	bfbd                	j	80044824 <js_typed_array_constructor+0x56>
quickjs-nuttx/quickjs.c:54683
        JSObject *p = JS_VALUE_GET_OBJ(argv[0]);
    800448a8:	6094                	ld	a3,0(s1)
quickjs-nuttx/quickjs.c:54684
        if (p->class_id == JS_CLASS_ARRAY_BUFFER ||
    800448aa:	4985                	li	s3,1
    800448ac:	0066d803          	lhu	a6,6(a3)
    800448b0:	fed8089b          	addiw	a7,a6,-19
    800448b4:	18c2                	slli	a7,a7,0x30
    800448b6:	0308d893          	srli	a7,a7,0x30
    800448ba:	0b19e463          	bltu	s3,a7,80044962 <js_typed_array_constructor+0x194>
quickjs-nuttx/quickjs.c:54686
            abuf = p->u.array_buffer;
    800448be:	0306b983          	ld	s3,48(a3)
quickjs-nuttx/quickjs.c:54687
            if (JS_ToIndex(ctx, &offset, argv[1]))
    800448c2:	6890                	ld	a2,16(s1)
    800448c4:	6c94                	ld	a3,24(s1)
    800448c6:	198c                	addi	a1,sp,240
    800448c8:	b3bdf0ef          	jal	ra,80024402 <JS_ToIndex>
    800448cc:	f929                	bnez	a0,8004481e <js_typed_array_constructor+0x50>
quickjs-nuttx/quickjs.c:54689
            if (abuf->detached)
    800448ce:	0049c783          	lbu	a5,4(s3)
    800448d2:	c799                	beqz	a5,800448e0 <js_typed_array_constructor+0x112>
quickjs-nuttx/quickjs.c:54690
                return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800448d4:	8522                	mv	a0,s0
    800448d6:	eaed40ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:54705
                    return JS_ThrowRangeError(ctx, "invalid length");
    800448da:	f12a                	sd	a0,160(sp)
    800448dc:	f52e                	sd	a1,168(sp)
    800448de:	b799                	j	80044824 <js_typed_array_constructor+0x56>
quickjs-nuttx/quickjs.c:54691
            if ((offset & ((1 << size_log2) - 1)) != 0 ||
    800448e0:	764e                	ld	a2,240(sp)
    800448e2:	4705                	li	a4,1
    800448e4:	0157173b          	sllw	a4,a4,s5
    800448e8:	377d                	addiw	a4,a4,-1
    800448ea:	00c777b3          	and	a5,a4,a2
    800448ee:	e789                	bnez	a5,800448f8 <js_typed_array_constructor+0x12a>
quickjs-nuttx/quickjs.c:54692 (discriminator 1)
                offset > abuf->byte_length)
    800448f0:	0009a783          	lw	a5,0(s3)
quickjs-nuttx/quickjs.c:54691 (discriminator 1)
            if ((offset & ((1 << size_log2) - 1)) != 0 ||
    800448f4:	00c7fa63          	bgeu	a5,a2,80044908 <js_typed_array_constructor+0x13a>
quickjs-nuttx/quickjs.c:54693
                return JS_ThrowRangeError(ctx, "invalid offset");
    800448f8:	00029597          	auipc	a1,0x29
    800448fc:	c6858593          	addi	a1,a1,-920 # 8006d560 <qjsc_repl+0x7fb0>
quickjs-nuttx/quickjs.c:54705
                    return JS_ThrowRangeError(ctx, "invalid length");
    80044900:	8522                	mv	a0,s0
    80044902:	fcdd40ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80044906:	bfd1                	j	800448da <js_typed_array_constructor+0x10c>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80044908:	7494                	ld	a3,40(s1)
js_typed_array_constructor():
quickjs-nuttx/quickjs.c:54694
            if (JS_IsUndefined(argv[2])) {
    8004490a:	458d                	li	a1,3
    8004490c:	0006851b          	sext.w	a0,a3
    80044910:	02b51563          	bne	a0,a1,8004493a <js_typed_array_constructor+0x16c>
quickjs-nuttx/quickjs.c:54695
                if ((abuf->byte_length & ((1 << size_log2) - 1)) != 0)
    80044914:	8f7d                	and	a4,a4,a5
    80044916:	c711                	beqz	a4,80044922 <js_typed_array_constructor+0x154>
quickjs-nuttx/quickjs.c:54705
                    return JS_ThrowRangeError(ctx, "invalid length");
    80044918:	00029597          	auipc	a1,0x29
    8004491c:	c5858593          	addi	a1,a1,-936 # 8006d570 <qjsc_repl+0x7fc0>
    80044920:	b7c5                	j	80044900 <js_typed_array_constructor+0x132>
quickjs-nuttx/quickjs.c:54697
                len = (abuf->byte_length - offset) >> size_log2;
    80044922:	8f91                	sub	a5,a5,a2
    80044924:	0157dab3          	srl	s5,a5,s5
    80044928:	e1d6                	sd	s5,192(sp)
quickjs-nuttx/quickjs.c:54708
            buffer = JS_DupValue(ctx, argv[0]);
    8004492a:	6088                	ld	a0,0(s1)
    8004492c:	648c                	ld	a1,8(s1)
    8004492e:	aedc50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80044932:	84ae                	mv	s1,a1
    80044934:	e9aa                	sd	a0,208(sp)
    80044936:	edae                	sd	a1,216(sp)
    80044938:	b781                	j	80044878 <js_typed_array_constructor+0xaa>
quickjs-nuttx/quickjs.c:54699
                if (JS_ToIndex(ctx, &len, argv[2]))
    8004493a:	7090                	ld	a2,32(s1)
    8004493c:	018c                	addi	a1,sp,192
    8004493e:	8522                	mv	a0,s0
    80044940:	ac3df0ef          	jal	ra,80024402 <JS_ToIndex>
    80044944:	ec051de3          	bnez	a0,8004481e <js_typed_array_constructor+0x50>
quickjs-nuttx/quickjs.c:54701
                if (abuf->detached)
    80044948:	0049c783          	lbu	a5,4(s3)
    8004494c:	f7c1                	bnez	a5,800448d4 <js_typed_array_constructor+0x106>
quickjs-nuttx/quickjs.c:54703
                if ((offset + (len << size_log2)) > abuf->byte_length) {
    8004494e:	678e                	ld	a5,192(sp)
    80044950:	01579ab3          	sll	s5,a5,s5
    80044954:	77ce                	ld	a5,240(sp)
    80044956:	9abe                	add	s5,s5,a5
    80044958:	0009a783          	lw	a5,0(s3)
    8004495c:	fd57f7e3          	bgeu	a5,s5,8004492a <js_typed_array_constructor+0x15c>
quickjs-nuttx/quickjs.c:54704
                invalid_length:
    80044960:	bf65                	j	80044918 <js_typed_array_constructor+0x14a>
quickjs-nuttx/quickjs.c:54710
            if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    80044962:	382d                	addiw	a6,a6,-21
    80044964:	1842                	slli	a6,a6,0x30
    80044966:	03085813          	srli	a6,a6,0x30
    8004496a:	48a9                	li	a7,10
    8004496c:	0308e263          	bltu	a7,a6,80044990 <js_typed_array_constructor+0x1c2>
quickjs-nuttx/quickjs.c:54729
}
    80044970:	7416                	ld	s0,352(sp)
    80044972:	70b6                	ld	ra,360(sp)
    80044974:	64f6                	ld	s1,344(sp)
    80044976:	6956                	ld	s2,336(sp)
    80044978:	69b6                	ld	s3,328(sp)
    8004497a:	6a16                	ld	s4,320(sp)
    8004497c:	7af2                	ld	s5,312(sp)
    8004497e:	7b52                	ld	s6,304(sp)
    80044980:	7bb2                	ld	s7,296(sp)
    80044982:	7c12                	ld	s8,288(sp)
    80044984:	6cf2                	ld	s9,280(sp)
    80044986:	6d52                	ld	s10,272(sp)
    80044988:	6db2                	ld	s11,264(sp)
    8004498a:	6175                	addi	sp,sp,368
quickjs-nuttx/quickjs.c:54712
                return js_typed_array_constructor_ta(ctx, new_target, argv[0], classid);
    8004498c:	cc6f406f          	j	80038e52 <js_typed_array_constructor_ta>
quickjs-nuttx/quickjs.c:54714
                return js_typed_array_constructor_obj(ctx, new_target, argv[0], classid);
    80044990:	f836                	sd	a3,48(sp)
js_typed_array_constructor_obj():
quickjs-nuttx/quickjs.c:54564
    ret = js_create_from_ctor(ctx, new_target, classid);
    80044992:	86be                	mv	a3,a5
    80044994:	fc3a                	sd	a4,56(sp)
quickjs-nuttx/quickjs.c:54558
    JSValue iter, ret, arr = JS_UNDEFINED, val, buffer;
    80044996:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:54564
    ret = js_create_from_ctor(ctx, new_target, classid);
    80044998:	ae4d70ef          	jal	ra,8001bc7c <js_create_from_ctor>
quickjs-nuttx/quickjs.c:54565
    if (JS_IsException(ret))
    8004499c:	0005879b          	sext.w	a5,a1
    800449a0:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:54564
    ret = js_create_from_ctor(ctx, new_target, classid);
    800449a2:	8baa                	mv	s7,a0
    800449a4:	8c2e                	mv	s8,a1
    800449a6:	8cae                	mv	s9,a1
quickjs-nuttx/quickjs.c:54565
    if (JS_IsException(ret))
    800449a8:	01479563          	bne	a5,s4,800449b2 <js_typed_array_constructor+0x1e4>
quickjs-nuttx/quickjs.c:54603
    return JS_EXCEPTION;
    800449ac:	f182                	sd	zero,224(sp)
    800449ae:	4c99                	li	s9,6
    800449b0:	a2bd                	j	80044b1e <js_typed_array_constructor+0x350>
quickjs-nuttx/quickjs.c:54568
    iter = JS_GetProperty(ctx, obj, JS_ATOM_Symbol_iterator);
    800449b2:	77e2                	ld	a5,56(sp)
    800449b4:	7742                	ld	a4,48(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800449b6:	4801                	li	a6,0
    800449b8:	863e                	mv	a2,a5
    800449ba:	0d600693          	li	a3,214
    800449be:	85ba                	mv	a1,a4
    800449c0:	8522                	mv	a0,s0
    800449c2:	fdbe                	sd	a5,248(sp)
    800449c4:	f9ba                	sd	a4,240(sp)
    800449c6:	8e4d20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800449ca:	e0aa                	sd	a0,64(sp)
    800449cc:	e4ae                	sd	a1,72(sp)
js_typed_array_constructor_obj():
quickjs-nuttx/quickjs.c:54569
    if (JS_IsException(iter))
    800449ce:	0005879b          	sext.w	a5,a1
    800449d2:	1f478463          	beq	a5,s4,80044bba <js_typed_array_constructor+0x3ec>
quickjs-nuttx/quickjs.c:54571
    if (!JS_IsUndefined(iter) && !JS_IsNull(iter)) {
    800449d6:	ffe5879b          	addiw	a5,a1,-2
    800449da:	18f9fa63          	bgeu	s3,a5,80044b6e <js_typed_array_constructor+0x3a0>
quickjs-nuttx/quickjs.c:54573
        arr = js_array_from_iterator(ctx, &len1, obj, iter);
    800449de:	77c2                	ld	a5,48(sp)
    800449e0:	e92a                	sd	a0,144(sp)
js_array_from_iterator():
quickjs-nuttx/quickjs.c:54520
    arr = JS_NewArray(ctx);
    800449e2:	8522                	mv	a0,s0
    800449e4:	e13e                	sd	a5,128(sp)
    800449e6:	77e2                	ld	a5,56(sp)
    800449e8:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:54515
    JSValue arr, iter, next_method = JS_UNDEFINED, val;
    800449ea:	f182                	sd	zero,224(sp)
    800449ec:	e53e                	sd	a5,136(sp)
    800449ee:	f582                	sd	zero,232(sp)
quickjs-nuttx/quickjs.c:54520
    arr = JS_NewArray(ctx);
    800449f0:	86bd70ef          	jal	ra,8001c25a <JS_NewArray>
    800449f4:	f12a                	sd	a0,160(sp)
    800449f6:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:54521
    if (JS_IsException(arr))
    800449f8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:54520
    arr = JS_NewArray(ctx);
    800449fc:	89ae                	mv	s3,a1
    800449fe:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:54521
    if (JS_IsException(arr))
    80044a00:	01479563          	bne	a5,s4,80044a0a <js_typed_array_constructor+0x23c>
quickjs-nuttx/quickjs.c:54522
        return arr;
    80044a04:	e9aa                	sd	a0,208(sp)
quickjs-nuttx/quickjs.c:54519
    *plen = 0;
    80044a06:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:54550
    return JS_EXCEPTION;
    80044a08:	a861                	j	80044aa0 <js_typed_array_constructor+0x2d2>
quickjs-nuttx/quickjs.c:54523
    iter = JS_GetIterator2(ctx, obj, method);
    80044a0a:	676a                	ld	a4,152(sp)
    80044a0c:	66ca                	ld	a3,144(sp)
    80044a0e:	658a                	ld	a1,128(sp)
    80044a10:	662a                	ld	a2,136(sp)
    80044a12:	8522                	mv	a0,s0
    80044a14:	ed6ff0ef          	jal	ra,800440ea <JS_GetIterator2>
    80044a18:	f92a                	sd	a0,176(sp)
    80044a1a:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:54524
    if (JS_IsException(iter))
    80044a1c:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:54523
    iter = JS_GetIterator2(ctx, obj, method);
    80044a20:	872a                	mv	a4,a0
    80044a22:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:54524
    if (JS_IsException(iter))
    80044a24:	11478f63          	beq	a5,s4,80044b42 <js_typed_array_constructor+0x374>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044a28:	87ae                	mv	a5,a1
    80044a2a:	f9aa                	sd	a0,240(sp)
    80044a2c:	fdae                	sd	a1,248(sp)
    80044a2e:	4801                	li	a6,0
    80044a30:	85aa                	mv	a1,a0
    80044a32:	06b00693          	li	a3,107
    80044a36:	864a                	mv	a2,s2
    80044a38:	8522                	mv	a0,s0
    80044a3a:	870d20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80044a3e:	e1aa                	sd	a0,192(sp)
    80044a40:	e5ae                	sd	a1,200(sp)
    80044a42:	f1aa                	sd	a0,224(sp)
js_array_from_iterator():
quickjs-nuttx/quickjs.c:54527
    if (JS_IsException(next_method))
    80044a44:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80044a48:	8b2e                	mv	s6,a1
    80044a4a:	8dae                	mv	s11,a1
js_array_from_iterator():
quickjs-nuttx/quickjs.c:54527
    80044a4c:	0f478c63          	beq	a5,s4,80044b44 <js_typed_array_constructor+0x376>
quickjs-nuttx/quickjs.c:54529
    k = 0;
    80044a50:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:54532
        if (JS_IsException(val))
    80044a52:	4d19                	li	s10,6
quickjs-nuttx/quickjs.c:54531
        val = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80044a54:	768e                	ld	a3,224(sp)
    80044a56:	75ca                	ld	a1,176(sp)
    80044a58:	087c                	addi	a5,sp,28
    80044a5a:	875a                	mv	a4,s6
    80044a5c:	864a                	mv	a2,s2
    80044a5e:	8522                	mv	a0,s0
    80044a60:	f5da                	sd	s6,232(sp)
    80044a62:	fd4a                	sd	s2,184(sp)
    80044a64:	dccff0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    80044a68:	f9aa                	sd	a0,240(sp)
    80044a6a:	fdae                	sd	a1,248(sp)
quickjs-nuttx/quickjs.c:54532
        if (JS_IsException(val))
    80044a6c:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:54531
        val = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80044a70:	872a                	mv	a4,a0
    80044a72:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:54532
        if (JS_IsException(val))
    80044a74:	0da68863          	beq	a3,s10,80044b44 <js_typed_array_constructor+0x376>
quickjs-nuttx/quickjs.c:54534
        if (done) {
    80044a78:	46f2                	lw	a3,28(sp)
    80044a7a:	c6d5                	beqz	a3,80044b26 <js_typed_array_constructor+0x358>
quickjs-nuttx/quickjs.c:54535
            JS_FreeValue(ctx, val);
    80044a7c:	863e                	mv	a2,a5
    80044a7e:	85aa                	mv	a1,a0
    80044a80:	8522                	mv	a0,s0
    80044a82:	d1dc60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54542
    JS_FreeValue(ctx, next_method);
    80044a86:	758e                	ld	a1,224(sp)
    80044a88:	762e                	ld	a2,232(sp)
    80044a8a:	8522                	mv	a0,s0
    80044a8c:	d13c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54543
    JS_FreeValue(ctx, iter);
    80044a90:	75ca                	ld	a1,176(sp)
    80044a92:	766a                	ld	a2,184(sp)
    80044a94:	8522                	mv	a0,s0
    80044a96:	d09c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54545
    return arr;
    80044a9a:	778a                	ld	a5,160(sp)
    80044a9c:	f54e                	sd	s3,168(sp)
    80044a9e:	e9be                	sd	a5,208(sp)
    80044aa0:	67ce                	ld	a5,208(sp)
js_typed_array_constructor_obj():
quickjs-nuttx/quickjs.c:54574
        JS_FreeValue(ctx, iter);
    80044aa2:	6586                	ld	a1,64(sp)
    80044aa4:	6626                	ld	a2,72(sp)
    80044aa6:	8522                	mv	a0,s0
    80044aa8:	f0be                	sd	a5,96(sp)
    80044aaa:	eda6                	sd	s1,216(sp)
    80044aac:	cf3c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54575
        if (JS_IsException(arr))
    80044ab0:	0004879b          	sext.w	a5,s1
    80044ab4:	4719                	li	a4,6
    80044ab6:	10e78363          	beq	a5,a4,80044bbc <js_typed_array_constructor+0x3ee>
quickjs-nuttx/quickjs.c:54577
        len = len1;
    80044aba:	1a02                	slli	s4,s4,0x20
    80044abc:	020a5a13          	srli	s4,s4,0x20
    80044ac0:	e152                	sd	s4,128(sp)
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80044ac2:	668a                	ld	a3,128(sp)
    80044ac4:	478d                	li	a5,3
    80044ac6:	474d                	li	a4,19
    80044ac8:	015696b3          	sll	a3,a3,s5
    80044acc:	460d                	li	a2,3
    80044ace:	4581                	li	a1,0
    80044ad0:	8522                	mv	a0,s0
    80044ad2:	fd3e                	sd	a5,184(sp)
    80044ad4:	f5be                	sd	a5,232(sp)
js_typed_array_constructor_obj():
quickjs-nuttx/quickjs.c:54584
    buffer = js_array_buffer_constructor1(ctx, JS_UNDEFINED,
    80044ad6:	f902                	sd	zero,176(sp)
    80044ad8:	f182                	sd	zero,224(sp)
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80044ada:	b9cd70ef          	jal	ra,8001be76 <js_array_buffer_constructor2>
    80044ade:	f9aa                	sd	a0,240(sp)
    80044ae0:	fdae                	sd	a1,248(sp)
    80044ae2:	f12a                	sd	a0,160(sp)
    80044ae4:	f52e                	sd	a1,168(sp)
js_typed_array_constructor_obj():
quickjs-nuttx/quickjs.c:54586
    if (JS_IsException(buffer))
    80044ae6:	0005871b          	sext.w	a4,a1
    80044aea:	4799                	li	a5,6
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80044aec:	862a                	mv	a2,a0
    80044aee:	86ae                	mv	a3,a1
js_typed_array_constructor_obj():
quickjs-nuttx/quickjs.c:54586
    if (JS_IsException(buffer))
    80044af0:	0cf70663          	beq	a4,a5,80044bbc <js_typed_array_constructor+0x3ee>
quickjs-nuttx/quickjs.c:54588
    if (typed_array_init(ctx, ret, buffer, 0, len))
    80044af4:	678a                	ld	a5,128(sp)
    80044af6:	4701                	li	a4,0
    80044af8:	85de                	mv	a1,s7
    80044afa:	8522                	mv	a0,s0
    80044afc:	db6d60ef          	jal	ra,8001b0b2 <typed_array_init.isra.0>
    80044b00:	ed55                	bnez	a0,80044bbc <js_typed_array_constructor+0x3ee>
quickjs-nuttx/quickjs.c:54591
    for(i = 0; i < len; i++) {
    80044b02:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:54593
        if (JS_IsException(val))
    80044b04:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:54591
    for(i = 0; i < len; i++) {
    80044b06:	670a                	ld	a4,128(sp)
    80044b08:	02091793          	slli	a5,s2,0x20
    80044b0c:	9381                	srli	a5,a5,0x20
    80044b0e:	06e7ce63          	blt	a5,a4,80044b8a <js_typed_array_constructor+0x3bc>
quickjs-nuttx/quickjs.c:54598
    JS_FreeValue(ctx, arr);
    80044b12:	7586                	ld	a1,96(sp)
    80044b14:	8626                	mv	a2,s1
    80044b16:	8522                	mv	a0,s0
    80044b18:	c87c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54599
    return ret;
    80044b1c:	f1de                	sd	s7,224(sp)
    80044b1e:	778e                	ld	a5,224(sp)
    80044b20:	f566                	sd	s9,168(sp)
    80044b22:	f13e                	sd	a5,160(sp)
js_typed_array_constructor():
quickjs-nuttx/quickjs.c:54714
                return js_typed_array_constructor_obj(ctx, new_target, argv[0], classid);
    80044b24:	b301                	j	80044824 <js_typed_array_constructor+0x56>
js_array_from_iterator():
quickjs-nuttx/quickjs.c:54538
        if (JS_CreateDataPropertyUint32(ctx, arr, k, val, JS_PROP_THROW) < 0)
    80044b26:	758a                	ld	a1,160(sp)
    80044b28:	020a1693          	slli	a3,s4,0x20
    80044b2c:	6811                	lui	a6,0x4
    80044b2e:	9281                	srli	a3,a3,0x20
    80044b30:	864e                	mv	a2,s3
    80044b32:	8522                	mv	a0,s0
    80044b34:	f54e                	sd	s3,168(sp)
    80044b36:	accec0ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    80044b3a:	00054563          	bltz	a0,80044b44 <js_typed_array_constructor+0x376>
quickjs-nuttx/quickjs.c:54540
        k++;
    80044b3e:	2a05                	addiw	s4,s4,1
quickjs-nuttx/quickjs.c:54531
        val = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80044b40:	bf11                	j	80044a54 <js_typed_array_constructor+0x286>
quickjs-nuttx/quickjs.c:54515
    JSValue arr, iter, next_method = JS_UNDEFINED, val;
    80044b42:	4d8d                	li	s11,3
quickjs-nuttx/quickjs.c:54547
    JS_FreeValue(ctx, next_method);
    80044b44:	758e                	ld	a1,224(sp)
    80044b46:	866e                	mv	a2,s11
    80044b48:	8522                	mv	a0,s0
    80044b4a:	f5ee                	sd	s11,232(sp)
    80044b4c:	c53c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54548
    JS_FreeValue(ctx, iter);
    80044b50:	75ca                	ld	a1,176(sp)
    80044b52:	864a                	mv	a2,s2
    80044b54:	8522                	mv	a0,s0
    80044b56:	fd4a                	sd	s2,184(sp)
    80044b58:	c47c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54549
    JS_FreeValue(ctx, arr);
    80044b5c:	758a                	ld	a1,160(sp)
    80044b5e:	864e                	mv	a2,s3
    80044b60:	8522                	mv	a0,s0
    80044b62:	f54e                	sd	s3,168(sp)
quickjs-nuttx/quickjs.c:54550
    return JS_EXCEPTION;
    80044b64:	4499                	li	s1,6
quickjs-nuttx/quickjs.c:54549
    JS_FreeValue(ctx, arr);
    80044b66:	c39c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54550
    return JS_EXCEPTION;
    80044b6a:	e982                	sd	zero,208(sp)
    80044b6c:	bd69                	j	80044a06 <js_typed_array_constructor+0x238>
js_typed_array_constructor_obj():
quickjs-nuttx/quickjs.c:54579
        if (js_get_length64(ctx, &len, obj))
    80044b6e:	7642                	ld	a2,48(sp)
    80044b70:	76e2                	ld	a3,56(sp)
    80044b72:	010c                	addi	a1,sp,128
    80044b74:	8522                	mv	a0,s0
    80044b76:	a5ae00ef          	jal	ra,80024dd0 <js_get_length64>
    80044b7a:	e121                	bnez	a0,80044bba <js_typed_array_constructor+0x3ec>
quickjs-nuttx/quickjs.c:54581
        arr = JS_DupValue(ctx, obj);
    80044b7c:	7542                	ld	a0,48(sp)
    80044b7e:	75e2                	ld	a1,56(sp)
    80044b80:	89bc50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80044b84:	f0aa                	sd	a0,96(sp)
    80044b86:	84ae                	mv	s1,a1
    80044b88:	bf2d                	j	80044ac2 <js_typed_array_constructor+0x2f4>
quickjs-nuttx/quickjs.c:54592
        val = JS_GetPropertyUint32(ctx, arr, i);
    80044b8a:	7586                	ld	a1,96(sp)
    80044b8c:	86ca                	mv	a3,s2
    80044b8e:	8626                	mv	a2,s1
    80044b90:	8522                	mv	a0,s0
    80044b92:	da6d20ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    80044b96:	e92a                	sd	a0,144(sp)
    80044b98:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:54593
        if (JS_IsException(val))
    80044b9a:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:54592
        val = JS_GetPropertyUint32(ctx, arr, i);
    80044b9e:	872a                	mv	a4,a0
    80044ba0:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:54593
        if (JS_IsException(val))
    80044ba2:	01368d63          	beq	a3,s3,80044bbc <js_typed_array_constructor+0x3ee>
quickjs-nuttx/quickjs.c:54595
        if (JS_SetPropertyUint32(ctx, ret, i, val) < 0)
    80044ba6:	86ca                	mv	a3,s2
    80044ba8:	85de                	mv	a1,s7
    80044baa:	8662                	mv	a2,s8
    80044bac:	8522                	mv	a0,s0
    80044bae:	f5fd20ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
    80044bb2:	00054563          	bltz	a0,80044bbc <js_typed_array_constructor+0x3ee>
quickjs-nuttx/quickjs.c:54591
    for(i = 0; i < len; i++) {
    80044bb6:	2905                	addiw	s2,s2,1
    80044bb8:	b7b9                	j	80044b06 <js_typed_array_constructor+0x338>
quickjs-nuttx/quickjs.c:54558
    JSValue iter, ret, arr = JS_UNDEFINED, val, buffer;
    80044bba:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:54601
    JS_FreeValue(ctx, arr);
    80044bbc:	7586                	ld	a1,96(sp)
    80044bbe:	8626                	mv	a2,s1
    80044bc0:	8522                	mv	a0,s0
    80044bc2:	bddc60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54602
    JS_FreeValue(ctx, ret);
    80044bc6:	85de                	mv	a1,s7
    80044bc8:	8662                	mv	a2,s8
    80044bca:	8522                	mv	a0,s0
    80044bcc:	bd3c60ef          	jal	ra,8000b79e <JS_FreeValue>
    80044bd0:	bbf1                	j	800449ac <js_typed_array_constructor+0x1de>
js_typed_array_constructor():
quickjs-nuttx/quickjs.c:54724
    if (typed_array_init(ctx, obj, buffer, offset, len)) {
    80044bd2:	678e                	ld	a5,192(sp)
    80044bd4:	774e                	ld	a4,240(sp)
    80044bd6:	664e                	ld	a2,208(sp)
    80044bd8:	85aa                	mv	a1,a0
    80044bda:	86a6                	mv	a3,s1
    80044bdc:	8522                	mv	a0,s0
    80044bde:	cd4d60ef          	jal	ra,8001b0b2 <typed_array_init.isra.0>
    80044be2:	c909                	beqz	a0,80044bf4 <js_typed_array_constructor+0x426>
quickjs-nuttx/quickjs.c:54725
        JS_FreeValue(ctx, obj);
    80044be4:	65ca                	ld	a1,144(sp)
    80044be6:	666a                	ld	a2,152(sp)
    80044be8:	8522                	mv	a0,s0
    80044bea:	bb5c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54726
        return JS_EXCEPTION;
    80044bee:	f102                	sd	zero,160(sp)
    80044bf0:	f552                	sd	s4,168(sp)
    80044bf2:	b90d                	j	80044824 <js_typed_array_constructor+0x56>
quickjs-nuttx/quickjs.c:54728
    return obj;
    80044bf4:	f14e                	sd	s3,160(sp)
    80044bf6:	f54a                	sd	s2,168(sp)
    80044bf8:	b135                	j	80044824 <js_typed_array_constructor+0x56>

0000000080044bfa <js_typed_array___speciesCreate.constprop.0>:
js_typed_array___speciesCreate():
quickjs-nuttx/quickjs.c:53300
static JSValue js_typed_array___speciesCreate(JSContext *ctx,
    80044bfa:	7119                	addi	sp,sp,-128
    80044bfc:	f8a2                	sd	s0,112(sp)
    80044bfe:	f4a6                	sd	s1,104(sp)
    80044c00:	f0ca                	sd	s2,96(sp)
    80044c02:	fc86                	sd	ra,120(sp)
    80044c04:	ecce                	sd	s3,88(sp)
    80044c06:	e8d2                	sd	s4,80(sp)
    80044c08:	892e                	mv	s2,a1
    80044c0a:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:53309
    obj = argv[0];
    80044c0c:	620c                	ld	a1,0(a2)
    80044c0e:	6610                	ld	a2,8(a2)
quickjs-nuttx/quickjs.c:53310
    p = get_typed_array(ctx, obj, 0);
    80044c10:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:53300
static JSValue js_typed_array___speciesCreate(JSContext *ctx,
    80044c12:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:53309
    obj = argv[0];
    80044c14:	e02e                	sd	a1,0(sp)
    80044c16:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:53310
    p = get_typed_array(ctx, obj, 0);
    80044c18:	ffed40ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:53311
    if (!p)
    80044c1c:	e509                	bnez	a0,80044c26 <js_typed_array___speciesCreate.constprop.0+0x2c>
quickjs-nuttx/quickjs.c:53312
        return JS_EXCEPTION;
    80044c1e:	e082                	sd	zero,64(sp)
    80044c20:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53324
    return ret;
    80044c22:	e4be                	sd	a5,72(sp)
    80044c24:	a035                	j	80044c50 <js_typed_array___speciesCreate.constprop.0+0x56>
quickjs-nuttx/quickjs.c:53313
    ctor = JS_SpeciesConstructor(ctx, obj, JS_UNDEFINED);
    80044c26:	6622                	ld	a2,8(sp)
    80044c28:	6582                	ld	a1,0(sp)
    80044c2a:	470d                	li	a4,3
    80044c2c:	89aa                	mv	s3,a0
    80044c2e:	4a0d                	li	s4,3
    80044c30:	4681                	li	a3,0
    80044c32:	8526                	mv	a0,s1
    80044c34:	f802                	sd	zero,48(sp)
    80044c36:	fc52                	sd	s4,56(sp)
    80044c38:	a34d40ef          	jal	ra,80018e6c <JS_SpeciesConstructor>
    80044c3c:	e82a                	sd	a0,16(sp)
    80044c3e:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80044c40:	0005879b          	sext.w	a5,a1
js_typed_array___speciesCreate():
quickjs-nuttx/quickjs.c:53314
    if (JS_IsException(ctor))
    80044c44:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:53313
    ctor = JS_SpeciesConstructor(ctx, obj, JS_UNDEFINED);
    80044c46:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:53314
    if (JS_IsException(ctor))
    80044c48:	00e79e63          	bne	a5,a4,80044c64 <js_typed_array___speciesCreate.constprop.0+0x6a>
quickjs-nuttx/quickjs.c:53315
        return ctor;
    80044c4c:	e0aa                	sd	a0,64(sp)
    80044c4e:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:53325
}
    80044c50:	70e6                	ld	ra,120(sp)
    80044c52:	7446                	ld	s0,112(sp)
    80044c54:	6506                	ld	a0,64(sp)
    80044c56:	65a6                	ld	a1,72(sp)
    80044c58:	74a6                	ld	s1,104(sp)
    80044c5a:	7906                	ld	s2,96(sp)
    80044c5c:	69e6                	ld	s3,88(sp)
    80044c5e:	6a46                	ld	s4,80(sp)
    80044c60:	6109                	addi	sp,sp,128
    80044c62:	8082                	ret
quickjs-nuttx/quickjs.c:53316
    argc1 = max_int(argc - 1, 0);
    80044c64:	fff9069b          	addiw	a3,s2,-1
quickjs-nuttx/quickjs.c:53318
        ret = js_typed_array_constructor(ctx, JS_UNDEFINED, argc1, argv + 1,
    80044c68:	01040713          	addi	a4,s0,16
quickjs-nuttx/quickjs.c:53317
    if (JS_IsUndefined(ctor)) {
    80044c6c:	03479263          	bne	a5,s4,80044c90 <js_typed_array___speciesCreate.constprop.0+0x96>
quickjs-nuttx/quickjs.c:53325
}
    80044c70:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:53318
        ret = js_typed_array_constructor(ctx, JS_UNDEFINED, argc1, argv + 1,
    80044c72:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:53325
}
    80044c74:	70e6                	ld	ra,120(sp)
quickjs-nuttx/quickjs.c:53318
        ret = js_typed_array_constructor(ctx, JS_UNDEFINED, argc1, argv + 1,
    80044c76:	0069d783          	lhu	a5,6(s3)
quickjs-nuttx/quickjs.c:53325
}
    80044c7a:	7906                	ld	s2,96(sp)
    80044c7c:	69e6                	ld	s3,88(sp)
    80044c7e:	6a46                	ld	s4,80(sp)
quickjs-nuttx/quickjs.c:53318
        ret = js_typed_array_constructor(ctx, JS_UNDEFINED, argc1, argv + 1,
    80044c80:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:53325
}
    80044c82:	74a6                	ld	s1,104(sp)
quickjs-nuttx/quickjs.c:53318
        ret = js_typed_array_constructor(ctx, JS_UNDEFINED, argc1, argv + 1,
    80044c84:	e082                	sd	zero,64(sp)
    80044c86:	4581                	li	a1,0
    80044c88:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:53325
}
    80044c8a:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:53318
        ret = js_typed_array_constructor(ctx, JS_UNDEFINED, argc1, argv + 1,
    80044c8c:	b43ff06f          	j	800447ce <js_typed_array_constructor>
quickjs-nuttx/quickjs.c:53321
        ret = js_typed_array_create(ctx, ctor, argc1, argv + 1);
    80044c90:	85aa                	mv	a1,a0
    80044c92:	8526                	mv	a0,s1
    80044c94:	f23fc0ef          	jal	ra,80041bb6 <js_typed_array_create>
    80044c98:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:53322
        JS_FreeValue(ctx, ctor);
    80044c9a:	6662                	ld	a2,24(sp)
    80044c9c:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:53321
        ret = js_typed_array_create(ctx, ctor, argc1, argv + 1);
    80044c9e:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:53322
        JS_FreeValue(ctx, ctor);
    80044ca0:	8526                	mv	a0,s1
    80044ca2:	afdc60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53324
    return ret;
    80044ca6:	7782                	ld	a5,32(sp)
    80044ca8:	e0be                	sd	a5,64(sp)
    80044caa:	77a2                	ld	a5,40(sp)
    80044cac:	bf9d                	j	80044c22 <js_typed_array___speciesCreate.constprop.0+0x28>

0000000080044cae <js_typed_array_slice>:
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54007
{
    80044cae:	712d                	addi	sp,sp,-288
    80044cb0:	ea22                	sd	s0,272(sp)
    80044cb2:	e626                	sd	s1,264(sp)
    80044cb4:	ee06                	sd	ra,280(sp)
    80044cb6:	e24a                	sd	s2,256(sp)
    80044cb8:	fdce                	sd	s3,248(sp)
    80044cba:	f9d2                	sd	s4,240(sp)
    80044cbc:	f5d6                	sd	s5,232(sp)
    80044cbe:	f1da                	sd	s6,224(sp)
    80044cc0:	edde                	sd	s7,216(sp)
    80044cc2:	842a                	mv	s0,a0
    80044cc4:	e82e                	sd	a1,16(sp)
    80044cc6:	ec32                	sd	a2,24(sp)
    80044cc8:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:54013
    arr = JS_UNDEFINED;
    80044cca:	f802                	sd	zero,48(sp)
    80044ccc:	fc02                	sd	zero,56(sp)
quickjs-nuttx/quickjs.c:54014
    len = js_typed_array_get_length_internal(ctx, this_val);
    80044cce:	fa6d40ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
quickjs-nuttx/quickjs.c:54015
    if (len < 0)
    80044cd2:	02054f63          	bltz	a0,80044d10 <js_typed_array_slice+0x62>
quickjs-nuttx/quickjs.c:54018
    if (JS_ToInt32Clamp(ctx, &start, argv[0], 0, len, len))
    80044cd6:	6090                	ld	a2,0(s1)
    80044cd8:	6494                	ld	a3,8(s1)
    80044cda:	882a                	mv	a6,a0
    80044cdc:	87aa                	mv	a5,a0
    80044cde:	e42a                	sd	a0,8(sp)
    80044ce0:	4701                	li	a4,0
    80044ce2:	102c                	addi	a1,sp,40
    80044ce4:	8522                	mv	a0,s0
    80044ce6:	f01de0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80044cea:	e11d                	bnez	a0,80044d10 <js_typed_array_slice+0x62>
quickjs-nuttx/quickjs.c:54020
    final = len;
    80044cec:	6822                	ld	a6,8(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80044cee:	6c94                	ld	a3,24(s1)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54021
    if (!JS_IsUndefined(argv[1])) {
    80044cf0:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:54020
    final = len;
    80044cf2:	d642                	sw	a6,44(sp)
quickjs-nuttx/quickjs.c:54021
    if (!JS_IsUndefined(argv[1])) {
    80044cf4:	0006871b          	sext.w	a4,a3
    80044cf8:	02f71663          	bne	a4,a5,80044d24 <js_typed_array_slice+0x76>
quickjs-nuttx/quickjs.c:54027
    p = get_typed_array(ctx, this_val, 0);
    80044cfc:	65c2                	ld	a1,16(sp)
    80044cfe:	6662                	ld	a2,24(sp)
    80044d00:	4681                	li	a3,0
    80044d02:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:54025
    count = max_int(final - start, 0);
    80044d04:	54b2                	lw	s1,44(sp)
    80044d06:	5922                	lw	s2,40(sp)
quickjs-nuttx/quickjs.c:54027
    p = get_typed_array(ctx, this_val, 0);
    80044d08:	f0ed40ef          	jal	ra,80019416 <get_typed_array>
    80044d0c:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:54028
    if (p == NULL)
    80044d0e:	e505                	bnez	a0,80044d36 <js_typed_array_slice+0x88>
quickjs-nuttx/quickjs.c:54013
    arr = JS_UNDEFINED;
    80044d10:	4b8d                	li	s7,3
quickjs-nuttx/quickjs.c:54064
    JS_FreeValue(ctx, arr);
    80044d12:	75c2                	ld	a1,48(sp)
    80044d14:	865e                	mv	a2,s7
    80044d16:	8522                	mv	a0,s0
    80044d18:	a87c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54065
    return JS_EXCEPTION;
    80044d1c:	4799                	li	a5,6
    80044d1e:	f882                	sd	zero,112(sp)
    80044d20:	fcbe                	sd	a5,120(sp)
    80044d22:	a0fd                	j	80044e10 <js_typed_array_slice+0x162>
quickjs-nuttx/quickjs.c:54022
        if (JS_ToInt32Clamp(ctx, &final, argv[1], 0, len, len))
    80044d24:	6890                	ld	a2,16(s1)
    80044d26:	87c2                	mv	a5,a6
    80044d28:	4701                	li	a4,0
    80044d2a:	106c                	addi	a1,sp,44
    80044d2c:	8522                	mv	a0,s0
    80044d2e:	eb9de0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80044d32:	d569                	beqz	a0,80044cfc <js_typed_array_slice+0x4e>
    80044d34:	bff1                	j	80044d10 <js_typed_array_slice+0x62>
quickjs-nuttx/quickjs.c:54025
    count = max_int(final - start, 0);
    80044d36:	412484bb          	subw	s1,s1,s2
    80044d3a:	87a6                	mv	a5,s1
    80044d3c:	0004d363          	bgez	s1,80044d42 <js_typed_array_slice+0x94>
    80044d40:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:54030
    shift = typed_array_size_log2(p->class_id);
    80044d42:	0069d703          	lhu	a4,6(s3)
    80044d46:	00030a17          	auipc	s4,0x30
    80044d4a:	49aa0a13          	addi	s4,s4,1178 # 800751e0 <typed_array_size_log2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80044d4e:	e102                	sd	zero,128(sp)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54030
    80044d50:	372d                	addiw	a4,a4,-21
    80044d52:	9752                	add	a4,a4,s4
    80044d54:	00074b03          	lbu	s6,0(a4)
quickjs-nuttx/quickjs.c:54032
    args[0] = this_val;
    80044d58:	6742                	ld	a4,16(sp)
    80044d5a:	c13e                	sw	a5,128(sp)
    80044d5c:	00078a9b          	sext.w	s5,a5
    80044d60:	f93a                	sd	a4,176(sp)
    80044d62:	678a                	ld	a5,128(sp)
    80044d64:	6762                	ld	a4,24(sp)
quickjs-nuttx/quickjs.c:54034
    arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80044d66:	1910                	addi	a2,sp,176
    80044d68:	4589                	li	a1,2
    80044d6a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:54032
    args[0] = this_val;
    80044d6c:	fd3a                	sd	a4,184(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044d6e:	f13e                	sd	a5,160(sp)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54033
    args[1] = JS_NewInt32(ctx, count);
    80044d70:	e1be                	sd	a5,192(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044d72:	e502                	sd	zero,136(sp)
    80044d74:	f502                	sd	zero,168(sp)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54033
    80044d76:	e582                	sd	zero,200(sp)
quickjs-nuttx/quickjs.c:54034
    arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80044d78:	e83ff0ef          	jal	ra,80044bfa <js_typed_array___speciesCreate.constprop.0>
    80044d7c:	f82a                	sd	a0,48(sp)
    80044d7e:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:54035
    if (JS_IsException(arr))
    80044d80:	0005871b          	sext.w	a4,a1
    80044d84:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:54034
    arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 2, args);
    80044d86:	892e                	mv	s2,a1
    80044d88:	8bae                	mv	s7,a1
quickjs-nuttx/quickjs.c:54035
    if (JS_IsException(arr))
    80044d8a:	f8f704e3          	beq	a4,a5,80044d12 <js_typed_array_slice+0x64>
quickjs-nuttx/quickjs.c:54038
    if (count > 0) {
    80044d8e:	06905e63          	blez	s1,80044e0a <js_typed_array_slice+0x15c>
quickjs-nuttx/quickjs.c:54039
        if (validate_typed_array(ctx, this_val)
    80044d92:	65c2                	ld	a1,16(sp)
    80044d94:	6662                	ld	a2,24(sp)
    80044d96:	8522                	mv	a0,s0
    80044d98:	8bfd40ef          	jal	ra,80019656 <validate_typed_array>
    80044d9c:	f93d                	bnez	a0,80044d12 <js_typed_array_slice+0x64>
quickjs-nuttx/quickjs.c:54040
        ||  validate_typed_array(ctx, arr))
    80044d9e:	75c2                	ld	a1,48(sp)
    80044da0:	7662                	ld	a2,56(sp)
    80044da2:	8522                	mv	a0,s0
    80044da4:	8b3d40ef          	jal	ra,80019656 <validate_typed_array>
    80044da8:	84aa                	mv	s1,a0
    80044daa:	f525                	bnez	a0,80044d12 <js_typed_array_slice+0x64>
quickjs-nuttx/quickjs.c:54043
        p1 = get_typed_array(ctx, arr, 0);
    80044dac:	75c2                	ld	a1,48(sp)
    80044dae:	7662                	ld	a2,56(sp)
    80044db0:	4681                	li	a3,0
    80044db2:	8522                	mv	a0,s0
    80044db4:	e62d40ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:54044
        if (p1 != NULL && p->class_id == p1->class_id &&
    80044db8:	c95d                	beqz	a0,80044e6e <js_typed_array_slice+0x1c0>
quickjs-nuttx/quickjs.c:54044 (discriminator 1)
    80044dba:	0069d703          	lhu	a4,6(s3)
    80044dbe:	00655783          	lhu	a5,6(a0)
    80044dc2:	0af71663          	bne	a4,a5,80044e6e <js_typed_array_slice+0x1c0>
typed_array_get_length():
quickjs-nuttx/quickjs.c:52951
    return ta->length >> size_log2;
    80044dc6:	7910                	ld	a2,48(a0)
quickjs-nuttx/quickjs.c:52950
    int size_log2 = typed_array_size_log2(p->class_id);
    80044dc8:	37ad                	addiw	a5,a5,-21
    80044dca:	97d2                	add	a5,a5,s4
    80044dcc:	0007c683          	lbu	a3,0(a5)
quickjs-nuttx/quickjs.c:52951
    return ta->length >> size_log2;
    80044dd0:	525c                	lw	a5,36(a2)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54044
        if (p1 != NULL && p->class_id == p1->class_id &&
    80044dd2:	00d7d7bb          	srlw	a5,a5,a3
    80044dd6:	0957ec63          	bltu	a5,s5,80044e6e <js_typed_array_slice+0x1c0>
typed_array_get_length():
quickjs-nuttx/quickjs.c:52951
    return ta->length >> size_log2;
    80044dda:	0309b783          	ld	a5,48(s3)
quickjs-nuttx/quickjs.c:52950
    int size_log2 = typed_array_size_log2(p->class_id);
    80044dde:	372d                	addiw	a4,a4,-21
    80044de0:	9a3a                	add	s4,s4,a4
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54046
            typed_array_get_length(ctx, p) >= start + count) {
    80044de2:	55a2                	lw	a1,40(sp)
typed_array_get_length():
quickjs-nuttx/quickjs.c:52950
    int size_log2 = typed_array_size_log2(p->class_id);
    80044de4:	000a4683          	lbu	a3,0(s4)
quickjs-nuttx/quickjs.c:52951
    return ta->length >> size_log2;
    80044de8:	53dc                	lw	a5,36(a5)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54045
            typed_array_get_length(ctx, p1) >= count &&
    80044dea:	0155873b          	addw	a4,a1,s5
    80044dee:	00d7d7bb          	srlw	a5,a5,a3
    80044df2:	06e7ee63          	bltu	a5,a4,80044e6e <js_typed_array_slice+0x1c0>
quickjs-nuttx/quickjs.c:54048
                   p->u.array.u.uint8_ptr + (start << shift),
    80044df6:	0389b783          	ld	a5,56(s3)
quickjs-nuttx/quickjs.c:54047
            memcpy(p1->u.array.u.uint8_ptr,
    80044dfa:	7d08                	ld	a0,56(a0)
quickjs-nuttx/quickjs.c:54048
                   p->u.array.u.uint8_ptr + (start << shift),
    80044dfc:	016595bb          	sllw	a1,a1,s6
quickjs-nuttx/quickjs.c:54047
            memcpy(p1->u.array.u.uint8_ptr,
    80044e00:	016a963b          	sllw	a2,s5,s6
    80044e04:	95be                	add	a1,a1,a5
    80044e06:	7a71e0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:54061
    return arr;
    80044e0a:	77c2                	ld	a5,48(sp)
    80044e0c:	fcca                	sd	s2,120(sp)
    80044e0e:	f8be                	sd	a5,112(sp)
quickjs-nuttx/quickjs.c:54066
}
    80044e10:	60f2                	ld	ra,280(sp)
    80044e12:	6452                	ld	s0,272(sp)
    80044e14:	7546                	ld	a0,112(sp)
    80044e16:	75e6                	ld	a1,120(sp)
    80044e18:	64b2                	ld	s1,264(sp)
    80044e1a:	6912                	ld	s2,256(sp)
    80044e1c:	79ee                	ld	s3,248(sp)
    80044e1e:	7a4e                	ld	s4,240(sp)
    80044e20:	7aae                	ld	s5,232(sp)
    80044e22:	7b0e                	ld	s6,224(sp)
    80044e24:	6bee                	ld	s7,216(sp)
    80044e26:	6115                	addi	sp,sp,288
    80044e28:	8082                	ret
quickjs-nuttx/quickjs.c:54052
                val = JS_GetPropertyValue(ctx, this_val, JS_NewInt32(ctx, start + n));
    80044e2a:	57a2                	lw	a5,40(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044e2c:	e902                	sd	zero,144(sp)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54052
    80044e2e:	65c2                	ld	a1,16(sp)
    80044e30:	9fa5                	addw	a5,a5,s1
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044e32:	c93e                	sw	a5,144(sp)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54052
    80044e34:	66ca                	ld	a3,144(sp)
    80044e36:	6662                	ld	a2,24(sp)
    80044e38:	4701                	li	a4,0
    80044e3a:	8522                	mv	a0,s0
    80044e3c:	8d4d20ef          	jal	ra,80016f10 <JS_GetPropertyValue>
quickjs-nuttx/quickjs.c:54053
                if (JS_IsException(val))
    80044e40:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:54052
                val = JS_GetPropertyValue(ctx, this_val, JS_NewInt32(ctx, start + n));
    80044e44:	87aa                	mv	a5,a0
    80044e46:	882e                	mv	a6,a1
quickjs-nuttx/quickjs.c:54053
                if (JS_IsException(val))
    80044e48:	ed3705e3          	beq	a4,s3,80044d12 <js_typed_array_slice+0x64>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044e4c:	f102                	sd	zero,160(sp)
    80044e4e:	d126                	sw	s1,160(sp)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54055
                if (JS_SetPropertyValue(ctx, arr, JS_NewInt32(ctx, n), val,
    80044e50:	768a                	ld	a3,160(sp)
    80044e52:	75c2                	ld	a1,48(sp)
    80044e54:	6891                	lui	a7,0x4
    80044e56:	4701                	li	a4,0
    80044e58:	864a                	mv	a2,s2
    80044e5a:	8522                	mv	a0,s0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044e5c:	f502                	sd	zero,168(sp)
js_typed_array_slice():
quickjs-nuttx/quickjs.c:54055
    80044e5e:	a97d20ef          	jal	ra,800178f4 <JS_SetPropertyValue>
    80044e62:	ea0548e3          	bltz	a0,80044d12 <js_typed_array_slice+0x64>
quickjs-nuttx/quickjs.c:54051 (discriminator 2)
            for (n = 0; n < count; n++) {
    80044e66:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:54051 (discriminator 1)
    80044e68:	fd5491e3          	bne	s1,s5,80044e2a <js_typed_array_slice+0x17c>
    80044e6c:	bf79                	j	80044e0a <js_typed_array_slice+0x15c>
quickjs-nuttx/quickjs.c:54053 (discriminator 1)
                if (JS_IsException(val))
    80044e6e:	4999                	li	s3,6
    80044e70:	bfe5                	j	80044e68 <js_typed_array_slice+0x1ba>

0000000080044e72 <js_typed_array_subarray>:
js_typed_array_subarray():
quickjs-nuttx/quickjs.c:54070
{
    80044e72:	7111                	addi	sp,sp,-256
quickjs-nuttx/quickjs.c:54076
    p = get_typed_array(ctx, this_val, 0);
    80044e74:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:54070
{
    80044e76:	f9a2                	sd	s0,240(sp)
    80044e78:	f5a6                	sd	s1,232(sp)
    80044e7a:	fd86                	sd	ra,248(sp)
    80044e7c:	f1ca                	sd	s2,224(sp)
    80044e7e:	edce                	sd	s3,216(sp)
    80044e80:	e9d2                	sd	s4,208(sp)
    80044e82:	842a                	mv	s0,a0
    80044e84:	e82e                	sd	a1,16(sp)
    80044e86:	ec32                	sd	a2,24(sp)
    80044e88:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:54076
    p = get_typed_array(ctx, this_val, 0);
    80044e8a:	d8cd40ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:54077
    if (!p)
    80044e8e:	c125                	beqz	a0,80044eee <js_typed_array_subarray+0x7c>
quickjs-nuttx/quickjs.c:54079
    len = p->u.array.count;
    80044e90:	04052803          	lw	a6,64(a0)
quickjs-nuttx/quickjs.c:54080
    if (JS_ToInt32Clamp(ctx, &start, argv[0], 0, len, len))
    80044e94:	6090                	ld	a2,0(s1)
    80044e96:	6494                	ld	a3,8(s1)
    80044e98:	892a                	mv	s2,a0
    80044e9a:	87c2                	mv	a5,a6
    80044e9c:	4701                	li	a4,0
    80044e9e:	102c                	addi	a1,sp,40
    80044ea0:	8522                	mv	a0,s0
    80044ea2:	e442                	sd	a6,8(sp)
    80044ea4:	d43de0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80044ea8:	e139                	bnez	a0,80044eee <js_typed_array_subarray+0x7c>
quickjs-nuttx/quickjs.c:54083
    final = len;
    80044eaa:	6822                	ld	a6,8(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80044eac:	6c94                	ld	a3,24(s1)
js_typed_array_subarray():
quickjs-nuttx/quickjs.c:54084
    if (!JS_IsUndefined(argv[1])) {
    80044eae:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:54083
    final = len;
    80044eb0:	d642                	sw	a6,44(sp)
quickjs-nuttx/quickjs.c:54084
    if (!JS_IsUndefined(argv[1])) {
    80044eb2:	0006871b          	sext.w	a4,a3
    80044eb6:	02f71f63          	bne	a4,a5,80044ef4 <js_typed_array_subarray+0x82>
quickjs-nuttx/quickjs.c:54088
    count = max_int(final - start, 0);
    80044eba:	57b2                	lw	a5,44(sp)
    80044ebc:	5722                	lw	a4,40(sp)
    80044ebe:	40e7873b          	subw	a4,a5,a4
    80044ec2:	87ba                	mv	a5,a4
    80044ec4:	00075363          	bgez	a4,80044eca <js_typed_array_subarray+0x58>
    80044ec8:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:54089
    byteOffset = js_typed_array_get_byteOffset(ctx, this_val, 0);
    80044eca:	6662                	ld	a2,24(sp)
    80044ecc:	65c2                	ld	a1,16(sp)
    80044ece:	4681                	li	a3,0
    80044ed0:	8522                	mv	a0,s0
    80044ed2:	0007899b          	sext.w	s3,a5
    80044ed6:	ea2d40ef          	jal	ra,80019578 <js_typed_array_get_byteOffset>
    80044eda:	e0aa                	sd	a0,64(sp)
    80044edc:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:54090
    if (JS_IsException(byteOffset))
    80044ede:	0005879b          	sext.w	a5,a1
    80044ee2:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:54089
    byteOffset = js_typed_array_get_byteOffset(ctx, this_val, 0);
    80044ee4:	862e                	mv	a2,a1
    80044ee6:	0005069b          	sext.w	a3,a0
quickjs-nuttx/quickjs.c:54090
    if (JS_IsException(byteOffset))
    80044eea:	01479e63          	bne	a5,s4,80044f06 <js_typed_array_subarray+0x94>
quickjs-nuttx/quickjs.c:54107
    return JS_EXCEPTION;
    80044eee:	f082                	sd	zero,96(sp)
    80044ef0:	4799                	li	a5,6
    80044ef2:	a859                	j	80044f88 <js_typed_array_subarray+0x116>
quickjs-nuttx/quickjs.c:54085
        if (JS_ToInt32Clamp(ctx, &final, argv[1], 0, len, len))
    80044ef4:	6890                	ld	a2,16(s1)
    80044ef6:	87c2                	mv	a5,a6
    80044ef8:	4701                	li	a4,0
    80044efa:	106c                	addi	a1,sp,44
    80044efc:	8522                	mv	a0,s0
    80044efe:	ce9de0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80044f02:	dd45                	beqz	a0,80044eba <js_typed_array_subarray+0x48>
    80044f04:	b7ed                	j	80044eee <js_typed_array_subarray+0x7c>
quickjs-nuttx/quickjs.c:54092
    shift = typed_array_size_log2(p->class_id);
    80044f06:	00695783          	lhu	a5,6(s2)
quickjs-nuttx/quickjs.c:54093
    offset = JS_VALUE_GET_INT(byteOffset) + (start << shift);
    80044f0a:	54a2                	lw	s1,40(sp)
quickjs-nuttx/quickjs.c:54094
    JS_FreeValue(ctx, byteOffset);
    80044f0c:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:54092
    shift = typed_array_size_log2(p->class_id);
    80044f0e:	feb7871b          	addiw	a4,a5,-21
    80044f12:	00030797          	auipc	a5,0x30
    80044f16:	2ce78793          	addi	a5,a5,718 # 800751e0 <typed_array_size_log2>
    80044f1a:	97ba                	add	a5,a5,a4
    80044f1c:	0007c783          	lbu	a5,0(a5)
quickjs-nuttx/quickjs.c:54094
    JS_FreeValue(ctx, byteOffset);
    80044f20:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:54093
    offset = JS_VALUE_GET_INT(byteOffset) + (start << shift);
    80044f22:	00f494bb          	sllw	s1,s1,a5
    80044f26:	9cb5                	addw	s1,s1,a3
quickjs-nuttx/quickjs.c:54094
    JS_FreeValue(ctx, byteOffset);
    80044f28:	877c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54095
    ta_buffer = js_typed_array_get_buffer(ctx, this_val, 0);
    80044f2c:	65c2                	ld	a1,16(sp)
    80044f2e:	6662                	ld	a2,24(sp)
    80044f30:	4681                	li	a3,0
    80044f32:	8522                	mv	a0,s0
    80044f34:	ef4d40ef          	jal	ra,80019628 <js_typed_array_get_buffer>
    80044f38:	e8aa                	sd	a0,80(sp)
    80044f3a:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:54096
    if (JS_IsException(ta_buffer))
    80044f3c:	0005879b          	sext.w	a5,a1
    80044f40:	fb4787e3          	beq	a5,s4,80044eee <js_typed_array_subarray+0x7c>
quickjs-nuttx/quickjs.c:54098
    args[0] = this_val;
    80044f44:	67c2                	ld	a5,16(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80044f46:	e102                	sd	zero,128(sp)
    80044f48:	c126                	sw	s1,128(sp)
js_typed_array_subarray():
quickjs-nuttx/quickjs.c:54098
    80044f4a:	e93e                	sd	a5,144(sp)
    80044f4c:	67e2                	ld	a5,24(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044f4e:	f882                	sd	zero,112(sp)
    80044f50:	d8ce                	sw	s3,112(sp)
js_typed_array_subarray():
quickjs-nuttx/quickjs.c:54098
    80044f52:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:54100
    args[2] = JS_NewInt32(ctx, offset);
    80044f54:	678a                	ld	a5,128(sp)
quickjs-nuttx/quickjs.c:54099
    args[1] = ta_buffer;
    80044f56:	f12a                	sd	a0,160(sp)
    80044f58:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:54100
    args[2] = JS_NewInt32(ctx, offset);
    80044f5a:	f93e                	sd	a5,176(sp)
    80044f5c:	77c6                	ld	a5,112(sp)
quickjs-nuttx/quickjs.c:54102
    arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 4, args);
    80044f5e:	0910                	addi	a2,sp,144
    80044f60:	4591                	li	a1,4
    80044f62:	8522                	mv	a0,s0
    80044f64:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:54101
    args[3] = JS_NewInt32(ctx, count);
    80044f66:	e1be                	sd	a5,192(sp)
    80044f68:	fc82                	sd	zero,120(sp)
quickjs-nuttx/quickjs.c:54100
    args[2] = JS_NewInt32(ctx, offset);
    80044f6a:	fd02                	sd	zero,184(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80044f6c:	f482                	sd	zero,104(sp)
js_typed_array_subarray():
quickjs-nuttx/quickjs.c:54101
    args[3] = JS_NewInt32(ctx, count);
    80044f6e:	e582                	sd	zero,200(sp)
quickjs-nuttx/quickjs.c:54102
    arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 4, args);
    80044f70:	c8bff0ef          	jal	ra,80044bfa <js_typed_array___speciesCreate.constprop.0>
    80044f74:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:54103
    JS_FreeValue(ctx, ta_buffer);
    80044f76:	6666                	ld	a2,88(sp)
    80044f78:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:54102
    arr = js_typed_array___speciesCreate(ctx, JS_UNDEFINED, 4, args);
    80044f7a:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:54103
    JS_FreeValue(ctx, ta_buffer);
    80044f7c:	8522                	mv	a0,s0
    80044f7e:	821c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54104
    return arr;
    80044f82:	77c2                	ld	a5,48(sp)
    80044f84:	f0be                	sd	a5,96(sp)
    80044f86:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:54108
}
    80044f88:	70ee                	ld	ra,248(sp)
    80044f8a:	744e                	ld	s0,240(sp)
quickjs-nuttx/quickjs.c:54107
    return JS_EXCEPTION;
    80044f8c:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:54108
}
    80044f8e:	7506                	ld	a0,96(sp)
    80044f90:	75a6                	ld	a1,104(sp)
    80044f92:	74ae                	ld	s1,232(sp)
    80044f94:	790e                	ld	s2,224(sp)
    80044f96:	69ee                	ld	s3,216(sp)
    80044f98:	6a4e                	ld	s4,208(sp)
    80044f9a:	6111                	addi	sp,sp,256
    80044f9c:	8082                	ret

0000000080044f9e <js_call_bound_function>:
js_call_bound_function():
quickjs-nuttx/quickjs.c:15988
{
    80044f9e:	7159                	addi	sp,sp,-112
    80044fa0:	f0a2                	sd	s0,96(sp)
    80044fa2:	f486                	sd	ra,104(sp)
    80044fa4:	1880                	addi	s0,sp,112
    80044fa6:	eca6                	sd	s1,88(sp)
    80044fa8:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs.c:15995
    bf = p->u.bound_function;
    80044faa:	7984                	ld	s1,48(a1)
quickjs-nuttx/quickjs.c:15988
{
    80044fac:	833e                	mv	t1,a5
    80044fae:	fad43023          	sd	a3,-96(s0)
quickjs-nuttx/quickjs.c:15996
    arg_count = bf->argc + argc;
    80044fb2:	509c                	lw	a5,32(s1)
quickjs-nuttx/quickjs.c:15997
    if (js_check_stack_overflow(ctx->rt, sizeof(JSValue) * arg_count))
    80044fb4:	6d14                	ld	a3,24(a0)
quickjs-nuttx/quickjs.c:15988
{
    80044fb6:	fae43423          	sd	a4,-88(s0)
quickjs-nuttx/quickjs.c:15996
    arg_count = bf->argc + argc;
    80044fba:	006787bb          	addw	a5,a5,t1
quickjs-nuttx/quickjs.c:15997
    if (js_check_stack_overflow(ctx->rt, sizeof(JSValue) * arg_count))
    80044fbe:	6ef4                	ld	a3,216(a3)
    80044fc0:	00479713          	slli	a4,a5,0x4
quickjs-nuttx/quickjs.c:15988
{
    80044fc4:	fac43c23          	sd	a2,-72(s0)
    80044fc8:	fab43823          	sd	a1,-80(s0)
js_check_stack_overflow():
quickjs-nuttx/quickjs.c:1613
    sp = js_get_stack_pointer() - alloca_size;
    80044fcc:	40e40633          	sub	a2,s0,a4
js_call_bound_function():
quickjs-nuttx/quickjs.c:15997
    if (js_check_stack_overflow(ctx->rt, sizeof(JSValue) * arg_count))
    80044fd0:	02d67463          	bgeu	a2,a3,80044ff8 <js_call_bound_function+0x5a>
quickjs-nuttx/quickjs.c:15998
        return JS_ThrowStackOverflow(ctx);
    80044fd4:	94fd40ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:16013
        return JS_Call(ctx, bf->func_obj, bf->this_val,
    80044fd8:	fca43823          	sd	a0,-48(s0)
    80044fdc:	fcb43c23          	sd	a1,-40(s0)
quickjs-nuttx/quickjs.c:16016
}
    80044fe0:	fd043503          	ld	a0,-48(s0)
    80044fe4:	fd843583          	ld	a1,-40(s0)
    80044fe8:	f9040113          	addi	sp,s0,-112
    80044fec:	70a6                	ld	ra,104(sp)
    80044fee:	7406                	ld	s0,96(sp)
    80044ff0:	64e6                	ld	s1,88(sp)
    80044ff2:	6946                	ld	s2,80(sp)
    80044ff4:	6165                	addi	sp,sp,112
    80044ff6:	8082                	ret
quickjs-nuttx/quickjs.c:15999
    arg_buf = alloca(sizeof(JSValue) * arg_count);
    80044ff8:	40e10133          	sub	sp,sp,a4
    80044ffc:	8e42                	mv	t3,a6
    80044ffe:	892a                	mv	s2,a0
