    8003f000:	c11c                	sw	a5,0(a0)
add_gc_object():
quickjs-nuttx/quickjs.c:5584
    h->gc_obj_type = type;
    8003f002:	4795                	li	a5,5
    8003f004:	00f50223          	sb	a5,4(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8003f008:	64d8                	ld	a4,136(s1)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8003f00a:	00850793          	addi	a5,a0,8
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8003f00e:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8003f010:	e518                	sd	a4,8(a0)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    8003f012:	08848713          	addi	a4,s1,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8003f016:	e918                	sd	a4,16(a0)
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2133
                                    rt->class_count);
    8003f018:	54ec                	lw	a1,108(s1)
__list_add():
quickjs-nuttx/list.h:54
    next->prev = el;
    8003f01a:	e4dc                	sd	a5,136(s1)
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2132
    ctx->class_proto = js_malloc_rt(rt, sizeof(ctx->class_proto[0]) *
    8003f01c:	8526                	mv	a0,s1
    8003f01e:	0592                	slli	a1,a1,0x4
    8003f020:	97dcb0ef          	jal	ra,8000a99c <js_malloc_rt>
    8003f024:	e028                	sd	a0,64(s0)
quickjs-nuttx/quickjs.c:2134
    if (!ctx->class_proto) {
    8003f026:	ed11                	bnez	a0,8003f042 <JS_NewContextRaw+0x5e>
quickjs-nuttx/quickjs.c:2135
        js_free_rt(rt, ctx);
    8003f028:	85a2                	mv	a1,s0
    8003f02a:	8526                	mv	a0,s1
    8003f02c:	9b5cb0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2136
        return NULL;
    8003f030:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:2154
}
    8003f032:	70a6                	ld	ra,104(sp)
    8003f034:	8522                	mv	a0,s0
    8003f036:	7406                	ld	s0,96(sp)
    8003f038:	64e6                	ld	s1,88(sp)
    8003f03a:	6946                	ld	s2,80(sp)
    8003f03c:	69a6                	ld	s3,72(sp)
    8003f03e:	6165                	addi	sp,sp,112
    8003f040:	8082                	ret
quickjs-nuttx/quickjs.c:2138
    ctx->rt = rt;
    8003f042:	ec04                	sd	s1,24(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8003f044:	7cb8                	ld	a4,120(s1)
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2139
    list_add_tail(&ctx->link, &rt->context_list);
    8003f046:	02040793          	addi	a5,s0,32
quickjs-nuttx/quickjs.c:2146
        ctx->class_proto[i] = JS_NULL;
    8003f04a:	4689                	li	a3,2
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8003f04c:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8003f04e:	f018                	sd	a4,32(s0)
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2139
    list_add_tail(&ctx->link, &rt->context_list);
    8003f050:	07848713          	addi	a4,s1,120
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8003f054:	f418                	sd	a4,40(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8003f056:	fcbc                	sd	a5,120(s1)
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2140
    ctx->bf_ctx = &rt->bf_ctx;
    8003f058:	19048793          	addi	a5,s1,400
    8003f05c:	18f43823          	sd	a5,400(s0)
quickjs-nuttx/quickjs.c:2142
    ctx->fp_env.prec = 113;
    8003f060:	07100793          	li	a5,113
    8003f064:	18f43c23          	sd	a5,408(s0)
quickjs-nuttx/quickjs.c:2143
    ctx->fp_env.flags = bf_set_exp_bits(15) | BF_RNDN | BF_FLAG_SUBNORMAL;
    8003f068:	5c800793          	li	a5,1480
    8003f06c:	1af42023          	sw	a5,416(s0)
quickjs-nuttx/quickjs.c:2145
    for(i = 0; i < rt->class_count; i++)
    8003f070:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:2145 (discriminator 1)
    8003f072:	54f8                	lw	a4,108(s1)
quickjs-nuttx/quickjs.c:2146 (discriminator 1)
        ctx->class_proto[i] = JS_NULL;
    8003f074:	04043903          	ld	s2,64(s0)
quickjs-nuttx/quickjs.c:2145 (discriminator 1)
    for(i = 0; i < rt->class_count; i++)
    8003f078:	14e7c363          	blt	a5,a4,8003f1be <JS_NewContextRaw+0x1da>
quickjs-nuttx/quickjs.c:2147
    ctx->array_ctor = JS_NULL;
    8003f07c:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:2150
    init_list_head(&ctx->loaded_modules);
    8003f07e:	1b040713          	addi	a4,s0,432
quickjs-nuttx/quickjs.c:2147
    ctx->array_ctor = JS_NULL;
    8003f082:	f83c                	sd	a5,112(s0)
quickjs-nuttx/quickjs.c:2148
    ctx->regexp_ctor = JS_NULL;
    8003f084:	e05c                	sd	a5,128(s0)
quickjs-nuttx/quickjs.c:2149
    ctx->promise_ctor = JS_NULL;
    8003f086:	e85c                	sd	a5,144(s0)
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8003f088:	1ae43823          	sd	a4,432(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8003f08c:	1ae43c23          	sd	a4,440(s0)
JS_AddIntrinsicBasicObjects():
quickjs-nuttx/quickjs.c:52306
    ctx->class_proto[JS_CLASS_OBJECT] = JS_NewObjectProto(ctx, JS_NULL);
    8003f090:	4609                	li	a2,2
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2147
    ctx->array_ctor = JS_NULL;
    8003f092:	06043423          	sd	zero,104(s0)
quickjs-nuttx/quickjs.c:2148
    ctx->regexp_ctor = JS_NULL;
    8003f096:	06043c23          	sd	zero,120(s0)
quickjs-nuttx/quickjs.c:2149
    ctx->promise_ctor = JS_NULL;
    8003f09a:	08043423          	sd	zero,136(s0)
JS_AddIntrinsicBasicObjects():
quickjs-nuttx/quickjs.c:52306
    ctx->class_proto[JS_CLASS_OBJECT] = JS_NewObjectProto(ctx, JS_NULL);
    8003f09e:	4581                	li	a1,0
    8003f0a0:	8522                	mv	a0,s0
    8003f0a2:	ec3e                	sd	a5,24(sp)
    8003f0a4:	e802                	sd	zero,16(sp)
    8003f0a6:	f25dc0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003f0aa:	00a93823          	sd	a0,16(s2)
    8003f0ae:	00b93c23          	sd	a1,24(s2)
quickjs-nuttx/quickjs.c:52307
    ctx->function_proto = JS_NewCFunction3(ctx, js_function_proto, "", 0,
    8003f0b2:	603c                	ld	a5,64(s0)
    8003f0b4:	4701                	li	a4,0
    8003f0b6:	4681                	li	a3,0
    8003f0b8:	0107b803          	ld	a6,16(a5)
    8003f0bc:	0187b883          	ld	a7,24(a5)
    8003f0c0:	0002b617          	auipc	a2,0x2b
    8003f0c4:	ac860613          	addi	a2,a2,-1336 # 80069b88 <qjsc_repl+0x45d8>
    8003f0c8:	4781                	li	a5,0
    8003f0ca:	fffc9597          	auipc	a1,0xfffc9
    8003f0ce:	03a58593          	addi	a1,a1,58 # 80008104 <js_function_proto>
    8003f0d2:	8522                	mv	a0,s0
    8003f0d4:	96df10ef          	jal	ra,80030a40 <JS_NewCFunction3>
    8003f0d8:	e428                	sd	a0,72(s0)
    8003f0da:	e82c                	sd	a1,80(s0)
quickjs-nuttx/quickjs.c:52310
    ctx->class_proto[JS_CLASS_BYTECODE_FUNCTION] = JS_DupValue(ctx, ctx->function_proto);
    8003f0dc:	b3ecb0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003f0e0:	603c                	ld	a5,64(s0)
    8003f0e2:	00036917          	auipc	s2,0x36
    8003f0e6:	c3e90913          	addi	s2,s2,-962 # 80074d20 <native_error_name>
    8003f0ea:	09840493          	addi	s1,s0,152
    8003f0ee:	ebe8                	sd	a0,208(a5)
    8003f0f0:	efec                	sd	a1,216(a5)
quickjs-nuttx/quickjs.c:52311
    ctx->class_proto[JS_CLASS_ERROR] = JS_NewObject(ctx);
    8003f0f2:	8522                	mv	a0,s0
    8003f0f4:	f31dc0ef          	jal	ra,8001c024 <JS_NewObject>
    8003f0f8:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:52322
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ERROR],
    8003f0fa:	470d                	li	a4,3
    8003f0fc:	00033697          	auipc	a3,0x33
    8003f100:	9e468693          	addi	a3,a3,-1564 # 80071ae0 <js_error_proto_funcs>
quickjs-nuttx/quickjs.c:52311
    ctx->class_proto[JS_CLASS_ERROR] = JS_NewObject(ctx);
    8003f104:	fb88                	sd	a0,48(a5)
    8003f106:	ff8c                	sd	a1,56(a5)
quickjs-nuttx/quickjs.c:52322
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ERROR],
    8003f108:	603c                	ld	a5,64(s0)
    8003f10a:	8522                	mv	a0,s0
    8003f10c:	11840993          	addi	s3,s0,280
    8003f110:	7b8c                	ld	a1,48(a5)
    8003f112:	7f90                	ld	a2,56(a5)
    8003f114:	e09ff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52327
        proto = JS_NewObjectProto(ctx, ctx->class_proto[JS_CLASS_ERROR]);
    8003f118:	603c                	ld	a5,64(s0)
    8003f11a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52326
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8003f11c:	04c1                	addi	s1,s1,16
quickjs-nuttx/quickjs.c:52327
        proto = JS_NewObjectProto(ctx, ctx->class_proto[JS_CLASS_ERROR]);
    8003f11e:	7f90                	ld	a2,56(a5)
    8003f120:	7b8c                	ld	a1,48(a5)
quickjs-nuttx/quickjs.c:52326
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8003f122:	0921                	addi	s2,s2,8
quickjs-nuttx/quickjs.c:52327
        proto = JS_NewObjectProto(ctx, ctx->class_proto[JS_CLASS_ERROR]);
    8003f124:	ea7dc0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003f128:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:52328
        JS_DefinePropertyValue(ctx, proto, JS_ATOM_name,
    8003f12a:	ff893583          	ld	a1,-8(s2)
quickjs-nuttx/quickjs.c:52327
        proto = JS_NewObjectProto(ctx, ctx->class_proto[JS_CLASS_ERROR]);
    8003f12e:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:52328
        JS_DefinePropertyValue(ctx, proto, JS_ATOM_name,
    8003f130:	8522                	mv	a0,s0
    8003f132:	c05e00ef          	jal	ra,8001fd36 <JS_NewAtomString>
    8003f136:	87ae                	mv	a5,a1
    8003f138:	6622                	ld	a2,8(sp)
    8003f13a:	fc2e                	sd	a1,56(sp)
    8003f13c:	6582                	ld	a1,0(sp)
    8003f13e:	872a                	mv	a4,a0
    8003f140:	480d                	li	a6,3
    8003f142:	03700693          	li	a3,55
    8003f146:	f82a                	sd	a0,48(sp)
    8003f148:	8522                	mv	a0,s0
    8003f14a:	8e2d90ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:52331
        JS_DefinePropertyValue(ctx, proto, JS_ATOM_message,
    8003f14e:	02f00593          	li	a1,47
    8003f152:	8522                	mv	a0,s0
    8003f154:	97fe00ef          	jal	ra,8001fad2 <JS_AtomToString>
    8003f158:	87ae                	mv	a5,a1
    8003f15a:	f42e                	sd	a1,40(sp)
    8003f15c:	6622                	ld	a2,8(sp)
    8003f15e:	6582                	ld	a1,0(sp)
    8003f160:	872a                	mv	a4,a0
    8003f162:	f02a                	sd	a0,32(sp)
    8003f164:	480d                	li	a6,3
    8003f166:	03300693          	li	a3,51
    8003f16a:	8522                	mv	a0,s0
    8003f16c:	8c0d90ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:52334
        ctx->native_error_proto[i] = proto;
    8003f170:	6782                	ld	a5,0(sp)
    8003f172:	fef4b823          	sd	a5,-16(s1)
    8003f176:	67a2                	ld	a5,8(sp)
    8003f178:	fef4bc23          	sd	a5,-8(s1)
quickjs-nuttx/quickjs.c:52326
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8003f17c:	f8999ee3          	bne	s3,s1,8003f118 <JS_NewContextRaw+0x134>
quickjs-nuttx/quickjs.c:52339
        JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8003f180:	6024                	ld	s1,64(s0)
    8003f182:	4689                	li	a3,2
    8003f184:	8522                	mv	a0,s0
    8003f186:	688c                	ld	a1,16(s1)
    8003f188:	6c90                	ld	a2,24(s1)
    8003f18a:	a5bdc0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8003f18e:	f088                	sd	a0,32(s1)
    8003f190:	f48c                	sd	a1,40(s1)
quickjs-nuttx/quickjs.c:52342
    ctx->array_shape = js_new_shape2(ctx, get_proto_obj(ctx->class_proto[JS_CLASS_ARRAY]),
    8003f192:	603c                	ld	a5,64(s0)
get_proto_obj():
quickjs-nuttx/quickjs.c:4839
    if (JS_VALUE_GET_TAG(proto_val) != JS_TAG_OBJECT)
    8003f194:	5798                	lw	a4,40(a5)
    8003f196:	738c                	ld	a1,32(a5)
    8003f198:	57fd                	li	a5,-1
    8003f19a:	00f70363          	beq	a4,a5,8003f1a0 <JS_NewContextRaw+0x1bc>
quickjs-nuttx/quickjs.c:4840
        return NULL;
    8003f19e:	4581                	li	a1,0
JS_AddIntrinsicBasicObjects():
quickjs-nuttx/quickjs.c:52342
    ctx->array_shape = js_new_shape2(ctx, get_proto_obj(ctx->class_proto[JS_CLASS_ARRAY]),
    8003f1a0:	4605                	li	a2,1
    8003f1a2:	8522                	mv	a0,s0
    8003f1a4:	dd1db0ef          	jal	ra,8001af74 <js_new_shape2.constprop.0>
    8003f1a8:	fc08                	sd	a0,56(s0)
quickjs-nuttx/quickjs.c:52344
    add_shape_property(ctx, &ctx->array_shape, NULL,
    8003f1aa:	4729                	li	a4,10
    8003f1ac:	03000693          	li	a3,48
    8003f1b0:	4601                	li	a2,0
    8003f1b2:	03840593          	addi	a1,s0,56
    8003f1b6:	8522                	mv	a0,s0
    8003f1b8:	d5adc0ef          	jal	ra,8001b712 <add_shape_property>
quickjs-nuttx/quickjs.c:52353
}
    8003f1bc:	bd9d                	j	8003f032 <JS_NewContextRaw+0x4e>
JS_NewContextRaw():
quickjs-nuttx/quickjs.c:2146 (discriminator 3)
        ctx->class_proto[i] = JS_NULL;
    8003f1be:	00479713          	slli	a4,a5,0x4
    8003f1c2:	993a                	add	s2,s2,a4
    8003f1c4:	00093023          	sd	zero,0(s2)
    8003f1c8:	00d93423          	sd	a3,8(s2)
quickjs-nuttx/quickjs.c:2145 (discriminator 3)
    for(i = 0; i < rt->class_count; i++)
    8003f1cc:	2785                	addiw	a5,a5,1
    8003f1ce:	b555                	j	8003f072 <JS_NewContextRaw+0x8e>

000000008003f1d0 <JS_SetModuleExportList>:
JS_SetModuleExportList():
quickjs-nuttx/quickjs.c:36829
{
    8003f1d0:	7175                	addi	sp,sp,-144
    8003f1d2:	e122                	sd	s0,128(sp)
    8003f1d4:	fca6                	sd	s1,120(sp)
    8003f1d6:	f8ca                	sd	s2,112(sp)
    8003f1d8:	f4ce                	sd	s3,104(sp)
    8003f1da:	f0d2                	sd	s4,96(sp)
    8003f1dc:	ecd6                	sd	s5,88(sp)
    8003f1de:	e8da                	sd	s6,80(sp)
    8003f1e0:	e4de                	sd	s7,72(sp)
    8003f1e2:	e506                	sd	ra,136(sp)
    8003f1e4:	84aa                	mv	s1,a0
    8003f1e6:	8a2e                	mv	s4,a1
    8003f1e8:	8936                	mv	s2,a3
    8003f1ea:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:36833
    for(i = 0; i < len; i++) {
    8003f1ec:	4981                	li	s3,0
    8003f1ee:	4b21                	li	s6,8
    8003f1f0:	0002ea97          	auipc	s5,0x2e
    8003f1f4:	fd0a8a93          	addi	s5,s5,-48 # 8006d1c0 <qjsc_repl+0x7c10>
    8003f1f8:	4b9d                	li	s7,7
quickjs-nuttx/quickjs.c:36833 (discriminator 1)
    8003f1fa:	0129ce63          	blt	s3,s2,8003f216 <JS_SetModuleExportList+0x46>
quickjs-nuttx/quickjs.c:36862
    return 0;
    8003f1fe:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:36863
}
    8003f200:	60aa                	ld	ra,136(sp)
    8003f202:	640a                	ld	s0,128(sp)
    8003f204:	74e6                	ld	s1,120(sp)
    8003f206:	7946                	ld	s2,112(sp)
    8003f208:	79a6                	ld	s3,104(sp)
    8003f20a:	7a06                	ld	s4,96(sp)
    8003f20c:	6ae6                	ld	s5,88(sp)
    8003f20e:	6b46                	ld	s6,80(sp)
    8003f210:	6ba6                	ld	s7,72(sp)
    8003f212:	6149                	addi	sp,sp,144
    8003f214:	8082                	ret
quickjs-nuttx/quickjs.c:36835
        switch(e->def_type) {
    8003f216:	00944783          	lbu	a5,9(s0)
    8003f21a:	0afb6763          	bltu	s6,a5,8003f2c8 <JS_SetModuleExportList+0xf8>
    8003f21e:	078a                	slli	a5,a5,0x2
    8003f220:	97d6                	add	a5,a5,s5
    8003f222:	439c                	lw	a5,0(a5)
    8003f224:	97d6                	add	a5,a5,s5
    8003f226:	8782                	jr	a5
quickjs-nuttx/quickjs.c:36837
            val = JS_NewCFunction2(ctx, e->u.func.cfunc.generic,
    8003f228:	00a41783          	lh	a5,10(s0)
    8003f22c:	01144703          	lbu	a4,17(s0)
    8003f230:	01044683          	lbu	a3,16(s0)
    8003f234:	6010                	ld	a2,0(s0)
    8003f236:	6c0c                	ld	a1,24(s0)
    8003f238:	8526                	mv	a0,s1
    8003f23a:	8c9f10ef          	jal	ra,80030b02 <JS_NewCFunction2>
quickjs-nuttx/quickjs.c:36841
            val = JS_NewString(ctx, e->u.str);
    8003f23e:	e02a                	sd	a0,0(sp)
    8003f240:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:36859
        if (JS_SetModuleExport(ctx, m, e->name, val))
    8003f242:	6010                	ld	a2,0(s0)
    8003f244:	6682                	ld	a3,0(sp)
    8003f246:	6722                	ld	a4,8(sp)
    8003f248:	85d2                	mv	a1,s4
    8003f24a:	8526                	mv	a0,s1
    8003f24c:	bc0e00ef          	jal	ra,8001f60c <JS_SetModuleExport>
    8003f250:	02040413          	addi	s0,s0,32
    8003f254:	ed25                	bnez	a0,8003f2cc <JS_SetModuleExportList+0xfc>
quickjs-nuttx/quickjs.c:36833 (discriminator 2)
    for(i = 0; i < len; i++) {
    8003f256:	2985                	addiw	s3,s3,1
    8003f258:	b74d                	j	8003f1fa <JS_SetModuleExportList+0x2a>
quickjs-nuttx/quickjs.c:36841
            val = JS_NewString(ctx, e->u.str);
    8003f25a:	680c                	ld	a1,16(s0)
    8003f25c:	8526                	mv	a0,s1
    8003f25e:	f5ae00ef          	jal	ra,8001f9b8 <JS_NewString>
    8003f262:	bff1                	j	8003f23e <JS_SetModuleExportList+0x6e>
quickjs-nuttx/quickjs.c:36844
            val = JS_NewInt32(ctx, e->u.i32);
    8003f264:	481c                	lw	a5,16(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003f266:	ca02                	sw	zero,20(sp)
    8003f268:	ec02                	sd	zero,24(sp)
    8003f26a:	c83e                	sw	a5,16(sp)
    8003f26c:	67c2                	ld	a5,16(sp)
    8003f26e:	e402                	sd	zero,8(sp)
    8003f270:	e03e                	sd	a5,0(sp)
    8003f272:	bfc1                	j	8003f242 <JS_SetModuleExportList+0x72>
JS_SetModuleExportList():
quickjs-nuttx/quickjs.c:36847
            val = JS_NewInt64(ctx, e->u.i64);
    8003f274:	6818                	ld	a4,16(s0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003f276:	0007079b          	sext.w	a5,a4
    8003f27a:	00f71e63          	bne	a4,a5,8003f296 <JS_SetModuleExportList+0xc6>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003f27e:	da02                	sw	zero,52(sp)
    8003f280:	d83e                	sw	a5,48(sp)
    8003f282:	7742                	ld	a4,48(sp)
    8003f284:	fc02                	sd	zero,56(sp)
    8003f286:	f402                	sd	zero,40(sp)
    8003f288:	f03a                	sd	a4,32(sp)
    8003f28a:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003f28c:	d03e                	sw	a5,32(sp)
    8003f28e:	3782                	fld	fa5,32(sp)
    8003f290:	e43a                	sd	a4,8(sp)
    8003f292:	a03e                	fsd	fa5,0(sp)
    8003f294:	b77d                	j	8003f242 <JS_SetModuleExportList+0x72>
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003f296:	d22777d3          	fcvt.d.l	fa5,a4
    8003f29a:	471d                	li	a4,7
    8003f29c:	e20787d3          	fmv.x.d	a5,fa5
JS_SetModuleExportList():
quickjs-nuttx/quickjs.h:230
    return v;
    8003f2a0:	b03e                	fsd	fa5,32(sp)
    8003f2a2:	2781                	sext.w	a5,a5
    8003f2a4:	b7e5                	j	8003f28c <JS_SetModuleExportList+0xbc>
__JS_NewFloat64():
quickjs-nuttx/quickjs.h:230
    8003f2a6:	281c                	fld	fa5,16(s0)
    8003f2a8:	e45e                	sd	s7,8(sp)
    8003f2aa:	a03e                	fsd	fa5,0(sp)
    8003f2ac:	bf59                	j	8003f242 <JS_SetModuleExportList+0x72>
JS_SetModuleExportList():
quickjs-nuttx/quickjs.c:36853
            val = JS_NewObject(ctx);
    8003f2ae:	8526                	mv	a0,s1
    8003f2b0:	d75dc0ef          	jal	ra,8001c024 <JS_NewObject>
quickjs-nuttx/quickjs.c:36854
            JS_SetPropertyFunctionList(ctx, val, e->u.prop_list.tab, e->u.prop_list.len);
    8003f2b4:	4c18                	lw	a4,24(s0)
    8003f2b6:	6814                	ld	a3,16(s0)
quickjs-nuttx/quickjs.c:36853
            val = JS_NewObject(ctx);
    8003f2b8:	862e                	mv	a2,a1
    8003f2ba:	e02a                	sd	a0,0(sp)
    8003f2bc:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:36854
            JS_SetPropertyFunctionList(ctx, val, e->u.prop_list.tab, e->u.prop_list.len);
    8003f2be:	85aa                	mv	a1,a0
    8003f2c0:	8526                	mv	a0,s1
    8003f2c2:	c5bff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:36855
            break;
    8003f2c6:	bfb5                	j	8003f242 <JS_SetModuleExportList+0x72>
quickjs-nuttx/quickjs.c:36857
            abort();
    8003f2c8:	0bb230ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:36860
            return -1;
    8003f2cc:	557d                	li	a0,-1
    8003f2ce:	bf0d                	j	8003f200 <JS_SetModuleExportList+0x30>

000000008003f2d0 <JS_AddIntrinsicStringNormalize>:
JS_AddIntrinsicStringNormalize():
quickjs-nuttx/quickjs.c:42918
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_STRING], js_string_proto_normalize,
    8003f2d0:	613c                	ld	a5,64(a0)
    8003f2d2:	4705                	li	a4,1
    8003f2d4:	00035697          	auipc	a3,0x35
    8003f2d8:	2f468693          	addi	a3,a3,756 # 800745c8 <js_string_proto_normalize>
    8003f2dc:	6bac                	ld	a1,80(a5)
    8003f2de:	6fb0                	ld	a2,88(a5)
    8003f2e0:	c3dff06f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008003f2e4 <JS_AddIntrinsicRegExp>:
JS_AddIntrinsicRegExp():
quickjs-nuttx/quickjs.c:44818
{
    8003f2e4:	1101                	addi	sp,sp,-32
    8003f2e6:	ec06                	sd	ra,24(sp)
    8003f2e8:	e822                	sd	s0,16(sp)
JS_AddIntrinsicRegExpCompiler():
quickjs-nuttx/quickjs.c:44814
    ctx->compile_regexp = js_compile_regexp;
    8003f2ea:	fffe7797          	auipc	a5,0xfffe7
    8003f2ee:	a2678793          	addi	a5,a5,-1498 # 80025d10 <js_compile_regexp>
    8003f2f2:	1cf53023          	sd	a5,448(a0)
JS_AddIntrinsicRegExp():
quickjs-nuttx/quickjs.c:44818
{
    8003f2f6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:44823
    ctx->class_proto[JS_CLASS_REGEXP] = JS_NewObject(ctx);
    8003f2f8:	d2ddc0ef          	jal	ra,8001c024 <JS_NewObject>
    8003f2fc:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:44824
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_REGEXP], js_regexp_proto_funcs,
    8003f2fe:	4749                	li	a4,18
    8003f300:	00034697          	auipc	a3,0x34
    8003f304:	26868693          	addi	a3,a3,616 # 80073568 <js_regexp_proto_funcs>
quickjs-nuttx/quickjs.c:44823
    ctx->class_proto[JS_CLASS_REGEXP] = JS_NewObject(ctx);
    8003f308:	12a7b023          	sd	a0,288(a5)
    8003f30c:	12b7b423          	sd	a1,296(a5)
quickjs-nuttx/quickjs.c:44824
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_REGEXP], js_regexp_proto_funcs,
    8003f310:	603c                	ld	a5,64(s0)
    8003f312:	8522                	mv	a0,s0
    8003f314:	1207b583          	ld	a1,288(a5)
    8003f318:	1287b603          	ld	a2,296(a5)
    8003f31c:	c01ff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:44826
    obj = JS_NewGlobalCConstructor(ctx, "RegExp", js_regexp_constructor, 2,
    8003f320:	603c                	ld	a5,64(s0)
    8003f322:	4689                	li	a3,2
    8003f324:	ffff1617          	auipc	a2,0xffff1
    8003f328:	b3460613          	addi	a2,a2,-1228 # 8002fe58 <js_regexp_constructor>
    8003f32c:	1207b703          	ld	a4,288(a5)
    8003f330:	1287b783          	ld	a5,296(a5)
    8003f334:	8522                	mv	a0,s0
    8003f336:	0002e597          	auipc	a1,0x2e
    8003f33a:	eb258593          	addi	a1,a1,-334 # 8006d1e8 <qjsc_repl+0x7c38>
    8003f33e:	854f20ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8003f342:	e02a                	sd	a0,0(sp)
    8003f344:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:44828
    ctx->regexp_ctor = JS_DupValue(ctx, obj);
    8003f346:	8d4cb0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:44829
    JS_SetPropertyFunctionList(ctx, obj, js_regexp_funcs, countof(js_regexp_funcs));
    8003f34a:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:44828
    ctx->regexp_ctor = JS_DupValue(ctx, obj);
    8003f34c:	e04c                	sd	a1,128(s0)
quickjs-nuttx/quickjs.c:44829
    JS_SetPropertyFunctionList(ctx, obj, js_regexp_funcs, countof(js_regexp_funcs));
    8003f34e:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:44828
    ctx->regexp_ctor = JS_DupValue(ctx, obj);
    8003f350:	fc28                	sd	a0,120(s0)
quickjs-nuttx/quickjs.c:44829
    JS_SetPropertyFunctionList(ctx, obj, js_regexp_funcs, countof(js_regexp_funcs));
    8003f352:	4705                	li	a4,1
    8003f354:	00034697          	auipc	a3,0x34
    8003f358:	1f468693          	addi	a3,a3,500 # 80073548 <js_regexp_funcs>
    8003f35c:	8522                	mv	a0,s0
    8003f35e:	bbfff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:44832
        JS_NewObjectProto(ctx, ctx->iterator_proto);
    8003f362:	12043603          	ld	a2,288(s0)
    8003f366:	11843583          	ld	a1,280(s0)
    8003f36a:	8522                	mv	a0,s0
    8003f36c:	c5fdc0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003f370:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:44833
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_REGEXP_STRING_ITERATOR],
    8003f372:	4709                	li	a4,2
    8003f374:	00034697          	auipc	a3,0x34
    8003f378:	43468693          	addi	a3,a3,1076 # 800737a8 <js_regexp_string_iterator_proto_funcs>
quickjs-nuttx/quickjs.c:44832
        JS_NewObjectProto(ctx, ctx->iterator_proto);
    8003f37c:	2ea7b023          	sd	a0,736(a5)
    8003f380:	2eb7b423          	sd	a1,744(a5)
quickjs-nuttx/quickjs.c:44833
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_REGEXP_STRING_ITERATOR],
    8003f384:	603c                	ld	a5,64(s0)
    8003f386:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44836
}
    8003f388:	6442                	ld	s0,16(sp)
    8003f38a:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:44833
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_REGEXP_STRING_ITERATOR],
    8003f38c:	2e07b583          	ld	a1,736(a5)
    8003f390:	2e87b603          	ld	a2,744(a5)
quickjs-nuttx/quickjs.c:44836
}
    8003f394:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:44833
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_REGEXP_STRING_ITERATOR],
    8003f396:	b87ff06f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008003f39a <JS_AddIntrinsicJSON>:
JS_AddIntrinsicJSON():
quickjs-nuttx/quickjs.c:45531
    JS_SetPropertyFunctionList(ctx, ctx->global_obj, js_json_obj, countof(js_json_obj));
    8003f39a:	16853583          	ld	a1,360(a0)
    8003f39e:	17053603          	ld	a2,368(a0)
    8003f3a2:	4705                	li	a4,1
    8003f3a4:	00033697          	auipc	a3,0x33
    8003f3a8:	e3c68693          	addi	a3,a3,-452 # 800721e0 <js_json_obj>
    8003f3ac:	b71ff06f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008003f3b0 <JS_AddIntrinsicProxy>:
JS_AddIntrinsicProxy():
quickjs-nuttx/quickjs.c:46639
{
    8003f3b0:	7179                	addi	sp,sp,-48
    8003f3b2:	f022                	sd	s0,32(sp)
    8003f3b4:	f406                	sd	ra,40(sp)
    8003f3b6:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:46640
    JSRuntime *rt = ctx->rt;
    8003f3b8:	6d04                	ld	s1,24(a0)
quickjs-nuttx/quickjs.c:46639
{
    8003f3ba:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46643
    if (!JS_IsRegisteredClass(rt, JS_CLASS_PROXY)) {
    8003f3bc:	03000593          	li	a1,48
    8003f3c0:	8526                	mv	a0,s1
    8003f3c2:	b40cc0ef          	jal	ra,8000b702 <JS_IsRegisteredClass>
    8003f3c6:	e90d                	bnez	a0,8003f3f8 <JS_AddIntrinsicProxy+0x48>
quickjs-nuttx/quickjs.c:46644
        init_class_range(rt, js_proxy_class_def, JS_CLASS_PROXY,
    8003f3c8:	4685                	li	a3,1
    8003f3ca:	03000613          	li	a2,48
    8003f3ce:	00034597          	auipc	a1,0x34
    8003f3d2:	f2a58593          	addi	a1,a1,-214 # 800732f8 <js_proxy_class_def>
    8003f3d6:	8526                	mv	a0,s1
    8003f3d8:	cc6c90ef          	jal	ra,8000889e <init_class_range>
quickjs-nuttx/quickjs.c:46646
        rt->class_array[JS_CLASS_PROXY].exotic = &js_proxy_exotic_methods;
    8003f3dc:	78bc                	ld	a5,112(s1)
    8003f3de:	00034717          	auipc	a4,0x34
    8003f3e2:	f3270713          	addi	a4,a4,-206 # 80073310 <js_proxy_exotic_methods>
    8003f3e6:	7ae7b023          	sd	a4,1952(a5)
quickjs-nuttx/quickjs.c:46647
        rt->class_array[JS_CLASS_PROXY].call = js_proxy_call;
    8003f3ea:	78bc                	ld	a5,112(s1)
    8003f3ec:	00007717          	auipc	a4,0x7
    8003f3f0:	24470713          	addi	a4,a4,580 # 80046630 <js_proxy_call>
    8003f3f4:	78e7bc23          	sd	a4,1944(a5)
quickjs-nuttx/quickjs.c:46650
    obj1 = JS_NewCFunction2(ctx, js_proxy_constructor, "Proxy", 2,
    8003f3f8:	4781                	li	a5,0
    8003f3fa:	4709                	li	a4,2
    8003f3fc:	4689                	li	a3,2
    8003f3fe:	0002e617          	auipc	a2,0x2e
    8003f402:	df260613          	addi	a2,a2,-526 # 8006d1f0 <qjsc_repl+0x7c40>
    8003f406:	fffdd597          	auipc	a1,0xfffdd
    8003f40a:	d5858593          	addi	a1,a1,-680 # 8001c15e <js_proxy_constructor>
    8003f40e:	8522                	mv	a0,s0
    8003f410:	ef2f10ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8003f414:	e42e                	sd	a1,8(sp)
    8003f416:	e02a                	sd	a0,0(sp)
JS_SetConstructorBit():
quickjs-nuttx/quickjs.c:9765
    if (JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)
    8003f418:	2581                	sext.w	a1,a1
    8003f41a:	57fd                	li	a5,-1
    8003f41c:	00f59863          	bne	a1,a5,8003f42c <JS_AddIntrinsicProxy+0x7c>
quickjs-nuttx/quickjs.c:9768
    p->is_constructor = val;
    8003f420:	00554783          	lbu	a5,5(a0)
    8003f424:	0107e793          	ori	a5,a5,16
    8003f428:	00f502a3          	sb	a5,5(a0)
JS_AddIntrinsicProxy():
quickjs-nuttx/quickjs.c:46653
    JS_SetPropertyFunctionList(ctx, obj1, js_proxy_funcs,
    8003f42c:	6582                	ld	a1,0(sp)
    8003f42e:	6622                	ld	a2,8(sp)
    8003f430:	8522                	mv	a0,s0
    8003f432:	4705                	li	a4,1
    8003f434:	00034697          	auipc	a3,0x34
    8003f438:	f1468693          	addi	a3,a3,-236 # 80073348 <js_proxy_funcs>
    8003f43c:	ae1ff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:46655
    JS_DefinePropertyValueStr(ctx, ctx->global_obj, "Proxy",
    8003f440:	16843583          	ld	a1,360(s0)
    8003f444:	17043603          	ld	a2,368(s0)
    8003f448:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:46657
}
    8003f44a:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:46655
    JS_DefinePropertyValueStr(ctx, ctx->global_obj, "Proxy",
    8003f44c:	6702                	ld	a4,0(sp)
    8003f44e:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:46657
}
    8003f450:	70a2                	ld	ra,40(sp)
    8003f452:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:46655
    JS_DefinePropertyValueStr(ctx, ctx->global_obj, "Proxy",
    8003f454:	480d                	li	a6,3
    8003f456:	0002e697          	auipc	a3,0x2e
    8003f45a:	d9a68693          	addi	a3,a3,-614 # 8006d1f0 <qjsc_repl+0x7c40>
quickjs-nuttx/quickjs.c:46657
}
    8003f45e:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:46655
    JS_DefinePropertyValueStr(ctx, ctx->global_obj, "Proxy",
    8003f460:	c15f106f          	j	80031074 <JS_DefinePropertyValueStr>

000000008003f464 <JS_AddIntrinsicMapSet>:
JS_AddIntrinsicMapSet():
quickjs-nuttx/quickjs.c:47637
{
    8003f464:	7131                	addi	sp,sp,-192
    8003f466:	f922                	sd	s0,176(sp)
    8003f468:	f526                	sd	s1,168(sp)
    8003f46a:	e952                	sd	s4,144(sp)
    8003f46c:	e556                	sd	s5,136(sp)
    8003f46e:	e15a                	sd	s6,128(sp)
    8003f470:	fcde                	sd	s7,120(sp)
    8003f472:	f8e2                	sd	s8,112(sp)
    8003f474:	f4e6                	sd	s9,104(sp)
    8003f476:	fd06                	sd	ra,184(sp)
    8003f478:	f14a                	sd	s2,160(sp)
    8003f47a:	ed4e                	sd	s3,152(sp)
    8003f47c:	842a                	mv	s0,a0
    8003f47e:	00033a17          	auipc	s4,0x33
    8003f482:	f82a0a13          	addi	s4,s4,-126 # 80072400 <js_map_proto_funcs_ptr>
    8003f486:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:47648
                                   js_map_proto_funcs_count[i]);
    8003f488:	00055b17          	auipc	s6,0x55
    8003f48c:	d60b0b13          	addi	s6,s6,-672 # 800941e8 <js_map_proto_funcs_count>
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970

static inline JSValue JS_NewCFunctionMagic(JSContext *ctx, JSCFunctionMagic *func,
                                           const char *name,
                                           int length, JSCFunctionEnum cproto, int magic)
{
    return JS_NewCFunction2(ctx, (JSCFunction *)func, name, length, cproto, magic);
    8003f490:	00007c17          	auipc	s8,0x7
    8003f494:	380c0c13          	addi	s8,s8,896 # 80046810 <js_map_constructor>
JS_AddIntrinsicMapSet():
quickjs-nuttx/quickjs.c:47651
        if (i < 2) {
    8003f498:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:47652
            JS_SetPropertyFunctionList(ctx, obj1, js_map_funcs,
    8003f49a:	00033c97          	auipc	s9,0x33
    8003f49e:	d66c8c93          	addi	s9,s9,-666 # 80072200 <js_map_funcs>
quickjs-nuttx/quickjs.c:47642
    for(i = 0; i < 4; i++) {
    8003f4a2:	4a91                	li	s5,4
quickjs-nuttx/quickjs.c:47643
        const char *name = JS_AtomGetStr(ctx, buf, sizeof(buf),
    8003f4a4:	0ba4861b          	addiw	a2,s1,186
    8003f4a8:	100c                	addi	a1,sp,32
    8003f4aa:	8522                	mv	a0,s0
    8003f4ac:	f6bca0ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    8003f4b0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:47645
        ctx->class_proto[JS_CLASS_MAP + i] = JS_NewObject(ctx);
    8003f4b2:	8522                	mv	a0,s0
    8003f4b4:	b71dc0ef          	jal	ra,8001c024 <JS_NewObject>
    8003f4b8:	603c                	ld	a5,64(s0)
    8003f4ba:	00449913          	slli	s2,s1,0x4
    8003f4be:	26090913          	addi	s2,s2,608
    8003f4c2:	97ca                	add	a5,a5,s2
    8003f4c4:	e388                	sd	a0,0(a5)
    8003f4c6:	e78c                	sd	a1,8(a5)
quickjs-nuttx/quickjs.c:47646
        JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_MAP + i],
    8003f4c8:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:47648
                                   js_map_proto_funcs_count[i]);
    8003f4ca:	009b0733          	add	a4,s6,s1
quickjs-nuttx/quickjs.c:47646
        JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_MAP + i],
    8003f4ce:	00074703          	lbu	a4,0(a4)
    8003f4d2:	97ca                	add	a5,a5,s2
    8003f4d4:	638c                	ld	a1,0(a5)
    8003f4d6:	6790                	ld	a2,8(a5)
    8003f4d8:	000a3683          	ld	a3,0(s4)
    8003f4dc:	8522                	mv	a0,s0
    8003f4de:	a3fff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8003f4e2:	864e                	mv	a2,s3
    8003f4e4:	0004879b          	sext.w	a5,s1
    8003f4e8:	470d                	li	a4,3
    8003f4ea:	4681                	li	a3,0
    8003f4ec:	85e2                	mv	a1,s8
    8003f4ee:	8522                	mv	a0,s0
    8003f4f0:	e12f10ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8003f4f4:	e82a                	sd	a0,16(sp)
    8003f4f6:	ec2e                	sd	a1,24(sp)
    8003f4f8:	e02a                	sd	a0,0(sp)
    8003f4fa:	e42e                	sd	a1,8(sp)
    8003f4fc:	862e                	mv	a2,a1
JS_AddIntrinsicMapSet():
quickjs-nuttx/quickjs.c:47651
        if (i < 2) {
    8003f4fe:	009be863          	bltu	s7,s1,8003f50e <JS_AddIntrinsicMapSet+0xaa>
quickjs-nuttx/quickjs.c:47652
            JS_SetPropertyFunctionList(ctx, obj1, js_map_funcs,
    8003f502:	85aa                	mv	a1,a0
    8003f504:	4709                	li	a4,2
    8003f506:	86e6                	mv	a3,s9
    8003f508:	8522                	mv	a0,s0
    8003f50a:	a13ff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:47655 (discriminator 2)
        JS_NewGlobalCConstructor2(ctx, obj1, name, ctx->class_proto[JS_CLASS_MAP + i]);
    8003f50e:	603c                	ld	a5,64(s0)
    8003f510:	6582                	ld	a1,0(sp)
    8003f512:	6622                	ld	a2,8(sp)
    8003f514:	993e                	add	s2,s2,a5
    8003f516:	00093703          	ld	a4,0(s2)
    8003f51a:	00893783          	ld	a5,8(s2)
    8003f51e:	86ce                	mv	a3,s3
    8003f520:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:47642 (discriminator 2)
    for(i = 0; i < 4; i++) {
    8003f522:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs.c:47655 (discriminator 2)
        JS_NewGlobalCConstructor2(ctx, obj1, name, ctx->class_proto[JS_CLASS_MAP + i]);
    8003f524:	e21f10ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
quickjs-nuttx/quickjs.c:47642 (discriminator 2)
    for(i = 0; i < 4; i++) {
    8003f528:	0a21                	addi	s4,s4,8
    8003f52a:	f7549de3          	bne	s1,s5,8003f4a4 <JS_AddIntrinsicMapSet+0x40>
quickjs-nuttx/quickjs.c:47660
            JS_NewObjectProto(ctx, ctx->iterator_proto);
    8003f52e:	12043603          	ld	a2,288(s0)
    8003f532:	11843583          	ld	a1,280(s0)
    8003f536:	8522                	mv	a0,s0
    8003f538:	a93dc0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003f53c:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:47661
        JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_MAP_ITERATOR + i],
    8003f53e:	4709                	li	a4,2
    8003f540:	00033697          	auipc	a3,0x33
    8003f544:	d0068693          	addi	a3,a3,-768 # 80072240 <js_map_iterator_proto_funcs>
quickjs-nuttx/quickjs.c:47660
            JS_NewObjectProto(ctx, ctx->iterator_proto);
    8003f548:	2aa7b023          	sd	a0,672(a5)
    8003f54c:	2ab7b423          	sd	a1,680(a5)
quickjs-nuttx/quickjs.c:47661
        JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_MAP_ITERATOR + i],
    8003f550:	603c                	ld	a5,64(s0)
    8003f552:	8522                	mv	a0,s0
    8003f554:	2a07b583          	ld	a1,672(a5)
    8003f558:	2a87b603          	ld	a2,680(a5)
    8003f55c:	9c1ff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:47660
            JS_NewObjectProto(ctx, ctx->iterator_proto);
    8003f560:	12043603          	ld	a2,288(s0)
    8003f564:	11843583          	ld	a1,280(s0)
    8003f568:	8522                	mv	a0,s0
    8003f56a:	a61dc0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003f56e:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:47661
        JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_MAP_ITERATOR + i],
    8003f570:	4709                	li	a4,2
    8003f572:	00034697          	auipc	a3,0x34
    8003f576:	27668693          	addi	a3,a3,630 # 800737e8 <js_set_iterator_proto_funcs>
quickjs-nuttx/quickjs.c:47660
            JS_NewObjectProto(ctx, ctx->iterator_proto);
    8003f57a:	2aa7b823          	sd	a0,688(a5)
    8003f57e:	2ab7bc23          	sd	a1,696(a5)
quickjs-nuttx/quickjs.c:47661
        JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_MAP_ITERATOR + i],
    8003f582:	603c                	ld	a5,64(s0)
    8003f584:	8522                	mv	a0,s0
    8003f586:	2b07b583          	ld	a1,688(a5)
    8003f58a:	2b87b603          	ld	a2,696(a5)
    8003f58e:	98fff0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:47665
}
    8003f592:	70ea                	ld	ra,184(sp)
    8003f594:	744a                	ld	s0,176(sp)
    8003f596:	74aa                	ld	s1,168(sp)
    8003f598:	790a                	ld	s2,160(sp)
    8003f59a:	69ea                	ld	s3,152(sp)
    8003f59c:	6a4a                	ld	s4,144(sp)
    8003f59e:	6aaa                	ld	s5,136(sp)
    8003f5a0:	6b0a                	ld	s6,128(sp)
    8003f5a2:	7be6                	ld	s7,120(sp)
    8003f5a4:	7c46                	ld	s8,112(sp)
    8003f5a6:	7ca6                	ld	s9,104(sp)
    8003f5a8:	6129                	addi	sp,sp,192
    8003f5aa:	8082                	ret

000000008003f5ac <JS_Invoke>:
JS_Invoke():
quickjs-nuttx/quickjs.c:18730
{
    8003f5ac:	711d                	addi	sp,sp,-96
    8003f5ae:	e4a6                	sd	s1,72(sp)
    8003f5b0:	e0ca                	sd	s2,64(sp)
    8003f5b2:	84ba                	mv	s1,a4
    8003f5b4:	893e                	mv	s2,a5
    8003f5b6:	872e                	mv	a4,a1
    8003f5b8:	87b2                	mv	a5,a2
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003f5ba:	4801                	li	a6,0
JS_Invoke():
quickjs-nuttx/quickjs.c:18730
    8003f5bc:	e8a2                	sd	s0,80(sp)
    8003f5be:	ec86                	sd	ra,88(sp)
    8003f5c0:	842a                	mv	s0,a0
    8003f5c2:	e02e                	sd	a1,0(sp)
    8003f5c4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:18732
    func_obj = JS_GetProperty(ctx, this_val, atom);
    8003f5c6:	f02e                	sd	a1,32(sp)
    8003f5c8:	f432                	sd	a2,40(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003f5ca:	ce0d70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_Invoke():
quickjs-nuttx/quickjs.c:18733
    if (JS_IsException(func_obj))
    8003f5ce:	0005871b          	sext.w	a4,a1
    8003f5d2:	4799                	li	a5,6
    8003f5d4:	02f70063          	beq	a4,a5,8003f5f4 <JS_Invoke+0x48>
    8003f5d8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:18735
    return JS_CallFree(ctx, func_obj, this_val, argc, argv);
    8003f5da:	85aa                	mv	a1,a0
    8003f5dc:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:18736
}
    8003f5de:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:18735
    return JS_CallFree(ctx, func_obj, this_val, argc, argv);
    8003f5e0:	6682                	ld	a3,0(sp)
    8003f5e2:	6722                	ld	a4,8(sp)
quickjs-nuttx/quickjs.c:18736
}
    8003f5e4:	60e6                	ld	ra,88(sp)
quickjs-nuttx/quickjs.c:18735
    return JS_CallFree(ctx, func_obj, this_val, argc, argv);
    8003f5e6:	884a                	mv	a6,s2
    8003f5e8:	87a6                	mv	a5,s1
quickjs-nuttx/quickjs.c:18736
}
    8003f5ea:	6906                	ld	s2,64(sp)
    8003f5ec:	64a6                	ld	s1,72(sp)
    8003f5ee:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:18735
    return JS_CallFree(ctx, func_obj, this_val, argc, argv);
    8003f5f0:	c84d706f          	j	80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:18736
}
    8003f5f4:	60e6                	ld	ra,88(sp)
    8003f5f6:	6446                	ld	s0,80(sp)
    8003f5f8:	64a6                	ld	s1,72(sp)
    8003f5fa:	6906                	ld	s2,64(sp)
    8003f5fc:	6125                	addi	sp,sp,96
    8003f5fe:	8082                	ret

000000008003f600 <JS_InvokeFree>:
JS_InvokeFree():
quickjs-nuttx/quickjs.c:18740
{
    8003f600:	7139                	addi	sp,sp,-64
    8003f602:	fc06                	sd	ra,56(sp)
    8003f604:	f822                	sd	s0,48(sp)
    8003f606:	e432                	sd	a2,8(sp)
    8003f608:	842a                	mv	s0,a0
    8003f60a:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:18741
    JSValue res = JS_Invoke(ctx, this_val, atom, argc, argv);
    8003f60c:	fa1ff0ef          	jal	ra,8003f5ac <JS_Invoke>
    8003f610:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:18742
    JS_FreeValue(ctx, this_val);
    8003f612:	6622                	ld	a2,8(sp)
    8003f614:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:18741
    JSValue res = JS_Invoke(ctx, this_val, atom, argc, argv);
    8003f616:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:18742
    JS_FreeValue(ctx, this_val);
    8003f618:	8522                	mv	a0,s0
    8003f61a:	984cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18744
}
    8003f61e:	70e2                	ld	ra,56(sp)
    8003f620:	7442                	ld	s0,48(sp)
    8003f622:	6542                	ld	a0,16(sp)
    8003f624:	65e2                	ld	a1,24(sp)
    8003f626:	6121                	addi	sp,sp,64
    8003f628:	8082                	ret

000000008003f62a <JS_ToLocaleStringFree>:
JS_ToLocaleStringFree():
quickjs-nuttx/quickjs.c:11657
    if (JS_IsUndefined(val) || JS_IsNull(val))
    8003f62a:	ffe6079b          	addiw	a5,a2,-2
    8003f62e:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:11656
{
    8003f630:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:11657
    if (JS_IsUndefined(val) || JS_IsNull(val))
    8003f632:	00f76563          	bltu	a4,a5,8003f63c <JS_ToLocaleStringFree+0x12>
quickjs-nuttx/quickjs.c:11660
}
    8003f636:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:11658
        return JS_ToStringFree(ctx, val);
    8003f638:	94ee106f          	j	80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:11659
    return JS_InvokeFree(ctx, val, JS_ATOM_toLocaleString, 0, NULL);
    8003f63c:	4781                	li	a5,0
    8003f63e:	4701                	li	a4,0
    8003f640:	03900693          	li	a3,57
quickjs-nuttx/quickjs.c:11660
}
    8003f644:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:11659
    return JS_InvokeFree(ctx, val, JS_ATOM_toLocaleString, 0, NULL);
    8003f646:	fbbff06f          	j	8003f600 <JS_InvokeFree>

000000008003f64a <js_array_join>:
js_array_join():
quickjs-nuttx/quickjs.c:39739
{
    8003f64a:	7115                	addi	sp,sp,-224
    8003f64c:	e9a2                	sd	s0,208(sp)
    8003f64e:	e5a6                	sd	s1,200(sp)
    8003f650:	e1ca                	sd	s2,192(sp)
    8003f652:	f556                	sd	s5,168(sp)
    8003f654:	ed86                	sd	ra,216(sp)
    8003f656:	fd4e                	sd	s3,184(sp)
    8003f658:	f952                	sd	s4,176(sp)
    8003f65a:	f15a                	sd	s6,160(sp)
    8003f65c:	ed5e                	sd	s7,152(sp)
    8003f65e:	e962                	sd	s8,144(sp)
    8003f660:	e566                	sd	s9,136(sp)
    8003f662:	e16a                	sd	s10,128(sp)
    8003f664:	84aa                	mv	s1,a0
    8003f666:	e432                	sd	a2,8(sp)
    8003f668:	8936                	mv	s2,a3
    8003f66a:	e02e                	sd	a1,0(sp)
    8003f66c:	843a                	mv	s0,a4
    8003f66e:	8abe                	mv	s5,a5
quickjs-nuttx/quickjs.c:39746
    obj = JS_ToObject(ctx, this_val);
    8003f670:	a4bf00ef          	jal	ra,800300ba <JS_ToObject>
    8003f674:	862a                	mv	a2,a0
    8003f676:	86ae                	mv	a3,a1
    8003f678:	f02a                	sd	a0,32(sp)
    8003f67a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:39747
    if (js_get_length64(ctx, &n, obj))
    8003f67c:	8526                	mv	a0,s1
    8003f67e:	082c                	addi	a1,sp,24
    8003f680:	f50e50ef          	jal	ra,80024dd0 <js_get_length64>
    8003f684:	12051163          	bnez	a0,8003f7a6 <js_array_join+0x15c>
quickjs-nuttx/quickjs.c:39751
    if (!toLocaleString && argc > 0 && !JS_IsUndefined(argv[0])) {
    8003f688:	080a9f63          	bnez	s5,8003f726 <js_array_join+0xdc>
quickjs-nuttx/quickjs.c:39751 (discriminator 1)
    8003f68c:	09205d63          	blez	s2,8003f726 <js_array_join+0xdc>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 2)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8003f690:	6410                	ld	a2,8(s0)
js_array_join():
quickjs-nuttx/quickjs.c:39751 (discriminator 2)
    8003f692:	478d                	li	a5,3
    8003f694:	0006071b          	sext.w	a4,a2
    8003f698:	08f70763          	beq	a4,a5,8003f726 <js_array_join+0xdc>
quickjs-nuttx/quickjs.c:39752
        sep = JS_ToString(ctx, argv[0]);
    8003f69c:	600c                	ld	a1,0(s0)
    8003f69e:	8526                	mv	a0,s1
    8003f6a0:	8dce10ef          	jal	ra,8002077c <JS_ToString>
    8003f6a4:	f82a                	sd	a0,48(sp)
    8003f6a6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39753
        if (JS_IsException(sep))
    8003f6a8:	0005871b          	sext.w	a4,a1
    8003f6ac:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:39752
        sep = JS_ToString(ctx, argv[0]);
    8003f6ae:	842a                	mv	s0,a0
    8003f6b0:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:39753
        if (JS_IsException(sep))
    8003f6b2:	0ef70a63          	beq	a4,a5,8003f7a6 <js_array_join+0x15c>
quickjs-nuttx/quickjs.c:39756
        if (p->len == 1 && !p->is_wide_char)
    8003f6b6:	4158                	lw	a4,4(a0)
    8003f6b8:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:39759
            c = -1;
    8003f6ba:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:39756
        if (p->len == 1 && !p->is_wide_char)
    8003f6bc:	00f71463          	bne	a4,a5,8003f6c4 <js_array_join+0x7a>
quickjs-nuttx/quickjs.c:39757
            c = p->u.str8[0];
    8003f6c0:	01054983          	lbu	s3,16(a0)
quickjs-nuttx/quickjs.c:39761
    string_buffer_init(ctx, b, 0);
    8003f6c4:	4601                	li	a2,0
    8003f6c6:	108c                	addi	a1,sp,96
    8003f6c8:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:39768
                string_buffer_concat(b, p, 0, p->len);
    8003f6ca:	80000b37          	lui	s6,0x80000
quickjs-nuttx/quickjs.c:39761
    string_buffer_init(ctx, b, 0);
    8003f6ce:	8afde0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:39763
    for(i = 0; i < n; i++) {
    8003f6d2:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:39765
            if (c >= 0) {
    8003f6d4:	5bfd                	li	s7,-1
quickjs-nuttx/quickjs.c:39768
                string_buffer_concat(b, p, 0, p->len);
    8003f6d6:	fffb4b13          	not	s6,s6
quickjs-nuttx/quickjs.c:39766
                string_buffer_putc8(b, c);
    8003f6da:	00098c1b          	sext.w	s8,s3
quickjs-nuttx/quickjs.c:39772
        if (JS_IsException(el))
    8003f6de:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:39774
        if (!JS_IsNull(el) && !JS_IsUndefined(el)) {
    8003f6e0:	4d05                	li	s10,1
quickjs-nuttx/quickjs.c:39763 (discriminator 1)
    for(i = 0; i < n; i++) {
    8003f6e2:	67e2                	ld	a5,24(sp)
    8003f6e4:	04fa4663          	blt	s4,a5,8003f730 <js_array_join+0xe6>
quickjs-nuttx/quickjs.c:39782
    JS_FreeValue(ctx, sep);
    8003f6e8:	85a2                	mv	a1,s0
    8003f6ea:	864a                	mv	a2,s2
    8003f6ec:	8526                	mv	a0,s1
    8003f6ee:	8b0cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39783
    JS_FreeValue(ctx, obj);
    8003f6f2:	7582                	ld	a1,32(sp)
    8003f6f4:	7622                	ld	a2,40(sp)
    8003f6f6:	8526                	mv	a0,s1
    8003f6f8:	8a6cc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39784
    return string_buffer_end(b);
    8003f6fc:	1088                	addi	a0,sp,96
    8003f6fe:	da2e00ef          	jal	ra,8001fca0 <string_buffer_end>
    8003f702:	e8aa                	sd	a0,80(sp)
    8003f704:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:39792
}
    8003f706:	60ee                	ld	ra,216(sp)
    8003f708:	644e                	ld	s0,208(sp)
    8003f70a:	6546                	ld	a0,80(sp)
    8003f70c:	65e6                	ld	a1,88(sp)
    8003f70e:	64ae                	ld	s1,200(sp)
    8003f710:	690e                	ld	s2,192(sp)
    8003f712:	79ea                	ld	s3,184(sp)
    8003f714:	7a4a                	ld	s4,176(sp)
    8003f716:	7aaa                	ld	s5,168(sp)
    8003f718:	7b0a                	ld	s6,160(sp)
    8003f71a:	6bea                	ld	s7,152(sp)
    8003f71c:	6c4a                	ld	s8,144(sp)
    8003f71e:	6caa                	ld	s9,136(sp)
    8003f720:	6d0a                	ld	s10,128(sp)
    8003f722:	612d                	addi	sp,sp,224
    8003f724:	8082                	ret
quickjs-nuttx/quickjs.c:39740
    JSValue obj, sep = JS_UNDEFINED, el;
    8003f726:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:39750
    c = ',';    /* default separator */
    8003f728:	02c00993          	li	s3,44
quickjs-nuttx/quickjs.c:39742
    JSString *p = NULL;
    8003f72c:	4401                	li	s0,0
    8003f72e:	bf59                	j	8003f6c4 <js_array_join+0x7a>
quickjs-nuttx/quickjs.c:39764
        if (i > 0) {
    8003f730:	01405863          	blez	s4,8003f740 <js_array_join+0xf6>
quickjs-nuttx/quickjs.c:39765
            if (c >= 0) {
    8003f734:	03798a63          	beq	s3,s7,8003f768 <js_array_join+0x11e>
quickjs-nuttx/quickjs.c:39766
                string_buffer_putc8(b, c);
    8003f738:	85e2                	mv	a1,s8
    8003f73a:	1088                	addi	a0,sp,96
    8003f73c:	d24df0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:39771
        el = JS_GetPropertyUint32(ctx, obj, i);
    8003f740:	7622                	ld	a2,40(sp)
    8003f742:	7582                	ld	a1,32(sp)
    8003f744:	000a069b          	sext.w	a3,s4
    8003f748:	8526                	mv	a0,s1
    8003f74a:	9efd70ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    8003f74e:	e0aa                	sd	a0,64(sp)
    8003f750:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39772
        if (JS_IsException(el))
    8003f752:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:39771
        el = JS_GetPropertyUint32(ctx, obj, i);
    8003f756:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:39772
        if (JS_IsException(el))
    8003f758:	03978f63          	beq	a5,s9,8003f796 <js_array_join+0x14c>
quickjs-nuttx/quickjs.c:39774
        if (!JS_IsNull(el) && !JS_IsUndefined(el)) {
    8003f75c:	ffe5879b          	addiw	a5,a1,-2
    8003f760:	00fd6d63          	bltu	s10,a5,8003f77a <js_array_join+0x130>
quickjs-nuttx/quickjs.c:39763
    for(i = 0; i < n; i++) {
    8003f764:	0a05                	addi	s4,s4,1
    8003f766:	bfb5                	j	8003f6e2 <js_array_join+0x98>
quickjs-nuttx/quickjs.c:39768
                string_buffer_concat(b, p, 0, p->len);
    8003f768:	4054                	lw	a3,4(s0)
    8003f76a:	4601                	li	a2,0
    8003f76c:	85a2                	mv	a1,s0
    8003f76e:	00db76b3          	and	a3,s6,a3
    8003f772:	1088                	addi	a0,sp,96
    8003f774:	b6edf0ef          	jal	ra,8001eae2 <string_buffer_concat>
    8003f778:	b7e1                	j	8003f740 <js_array_join+0xf6>
quickjs-nuttx/quickjs.c:39775
            if (toLocaleString) {
    8003f77a:	000a8863          	beqz	s5,8003f78a <js_array_join+0x140>
quickjs-nuttx/quickjs.c:39776
                el = JS_ToLocaleStringFree(ctx, el);
    8003f77e:	85aa                	mv	a1,a0
    8003f780:	8526                	mv	a0,s1
    8003f782:	ea9ff0ef          	jal	ra,8003f62a <JS_ToLocaleStringFree>
    8003f786:	e0aa                	sd	a0,64(sp)
    8003f788:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39778
            if (string_buffer_concat_value_free(b, el))
    8003f78a:	6586                	ld	a1,64(sp)
    8003f78c:	6626                	ld	a2,72(sp)
    8003f78e:	1088                	addi	a0,sp,96
    8003f790:	cf2e10ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
    8003f794:	d961                	beqz	a0,8003f764 <js_array_join+0x11a>
quickjs-nuttx/quickjs.c:39787
    string_buffer_free(b);
    8003f796:	1088                	addi	a0,sp,96
    8003f798:	88bcb0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:39788
    JS_FreeValue(ctx, sep);
    8003f79c:	85a2                	mv	a1,s0
    8003f79e:	864a                	mv	a2,s2
    8003f7a0:	8526                	mv	a0,s1
    8003f7a2:	ffdcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39790
    JS_FreeValue(ctx, obj);
    8003f7a6:	7582                	ld	a1,32(sp)
    8003f7a8:	7622                	ld	a2,40(sp)
    8003f7aa:	8526                	mv	a0,s1
    8003f7ac:	ff3cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39791
    return JS_EXCEPTION;
    8003f7b0:	4799                	li	a5,6
    8003f7b2:	e882                	sd	zero,80(sp)
    8003f7b4:	ecbe                	sd	a5,88(sp)
    8003f7b6:	bf81                	j	8003f706 <js_array_join+0xbc>

000000008003f7b8 <js_typed_array_join>:
js_typed_array_join():
quickjs-nuttx/quickjs.c:53867
{
    8003f7b8:	7155                	addi	sp,sp,-208
    8003f7ba:	e1a2                	sd	s0,192(sp)
    8003f7bc:	fd26                	sd	s1,184(sp)
    8003f7be:	f94a                	sd	s2,176(sp)
    8003f7c0:	e95a                	sd	s6,144(sp)
    8003f7c2:	e586                	sd	ra,200(sp)
    8003f7c4:	f54e                	sd	s3,168(sp)
    8003f7c6:	f152                	sd	s4,160(sp)
    8003f7c8:	ed56                	sd	s5,152(sp)
    8003f7ca:	e55e                	sd	s7,136(sp)
    8003f7cc:	e162                	sd	s8,128(sp)
    8003f7ce:	fce6                	sd	s9,120(sp)
    8003f7d0:	f8ea                	sd	s10,112(sp)
    8003f7d2:	f4ee                	sd	s11,104(sp)
    8003f7d4:	892a                	mv	s2,a0
    8003f7d6:	e02e                	sd	a1,0(sp)
    8003f7d8:	e432                	sd	a2,8(sp)
    8003f7da:	84b6                	mv	s1,a3
    8003f7dc:	843a                	mv	s0,a4
    8003f7de:	8b3e                	mv	s6,a5
quickjs-nuttx/quickjs.c:53874
    n = js_typed_array_get_length_internal(ctx, this_val);
    8003f7e0:	c95d90ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
quickjs-nuttx/quickjs.c:53875
    if (n < 0)
    8003f7e4:	0e054263          	bltz	a0,8003f8c8 <js_typed_array_join+0x110>
    8003f7e8:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:53879
    if (!toLocaleString && argc > 0 && !JS_IsUndefined(argv[0])) {
    8003f7ea:	080b1a63          	bnez	s6,8003f87e <js_typed_array_join+0xc6>
quickjs-nuttx/quickjs.c:53879 (discriminator 1)
    8003f7ee:	08905863          	blez	s1,8003f87e <js_typed_array_join+0xc6>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 2)
    8003f7f2:	6410                	ld	a2,8(s0)
js_typed_array_join():
quickjs-nuttx/quickjs.c:53879 (discriminator 2)
    8003f7f4:	478d                	li	a5,3
    8003f7f6:	0006071b          	sext.w	a4,a2
    8003f7fa:	08f70263          	beq	a4,a5,8003f87e <js_typed_array_join+0xc6>
quickjs-nuttx/quickjs.c:53880
        sep = JS_ToString(ctx, argv[0]);
    8003f7fe:	600c                	ld	a1,0(s0)
    8003f800:	854a                	mv	a0,s2
    8003f802:	f7be00ef          	jal	ra,8002077c <JS_ToString>
    8003f806:	e82a                	sd	a0,16(sp)
    8003f808:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:53881
        if (JS_IsException(sep))
    8003f80a:	0005871b          	sext.w	a4,a1
    8003f80e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53880
        sep = JS_ToString(ctx, argv[0]);
    8003f810:	842a                	mv	s0,a0
    8003f812:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:53881
        if (JS_IsException(sep))
    8003f814:	0af70a63          	beq	a4,a5,8003f8c8 <js_typed_array_join+0x110>
quickjs-nuttx/quickjs.c:53884
        if (p->len == 1 && !p->is_wide_char)
    8003f818:	4158                	lw	a4,4(a0)
    8003f81a:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:53887
            c = -1;
    8003f81c:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:53884
        if (p->len == 1 && !p->is_wide_char)
    8003f81e:	00f71463          	bne	a4,a5,8003f826 <js_typed_array_join+0x6e>
quickjs-nuttx/quickjs.c:53885
            c = p->u.str8[0];
    8003f822:	01054983          	lbu	s3,16(a0)
quickjs-nuttx/quickjs.c:53889
    string_buffer_init(ctx, b, 0);
    8003f826:	4601                	li	a2,0
    8003f828:	008c                	addi	a1,sp,64
    8003f82a:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:53898
                if (string_buffer_concat(b, p, 0, p->len))
    8003f82c:	80000bb7          	lui	s7,0x80000
quickjs-nuttx/quickjs.c:53889
    string_buffer_init(ctx, b, 0);
    8003f830:	f4cde0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:53892
    for(i = 0; i < n; i++) {
    8003f834:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:53894
            if (c >= 0) {
    8003f836:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:53898
                if (string_buffer_concat(b, p, 0, p->len))
    8003f838:	fffbcb93          	not	s7,s7
quickjs-nuttx/quickjs.c:53895
                if (string_buffer_putc8(b, c))
    8003f83c:	00098c9b          	sext.w	s9,s3
quickjs-nuttx/quickjs.c:53904
        if (!JS_IsNull(el) && !JS_IsUndefined(el)) {
    8003f840:	4d05                	li	s10,1
quickjs-nuttx/quickjs.c:53905
            if (JS_IsException(el))
    8003f842:	4d99                	li	s11,6
quickjs-nuttx/quickjs.c:53892 (discriminator 1)
    for(i = 0; i < n; i++) {
    8003f844:	055a1263          	bne	s4,s5,8003f888 <js_typed_array_join+0xd0>
quickjs-nuttx/quickjs.c:53914
    JS_FreeValue(ctx, sep);
    8003f848:	85a2                	mv	a1,s0
    8003f84a:	8626                	mv	a2,s1
    8003f84c:	854a                	mv	a0,s2
    8003f84e:	f51cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53915
    return string_buffer_end(b);
    8003f852:	0088                	addi	a0,sp,64
    8003f854:	c4ce00ef          	jal	ra,8001fca0 <string_buffer_end>
    8003f858:	f82a                	sd	a0,48(sp)
    8003f85a:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:53922
}
    8003f85c:	60ae                	ld	ra,200(sp)
    8003f85e:	640e                	ld	s0,192(sp)
    8003f860:	7542                	ld	a0,48(sp)
    8003f862:	75e2                	ld	a1,56(sp)
    8003f864:	74ea                	ld	s1,184(sp)
    8003f866:	794a                	ld	s2,176(sp)
    8003f868:	79aa                	ld	s3,168(sp)
    8003f86a:	7a0a                	ld	s4,160(sp)
    8003f86c:	6aea                	ld	s5,152(sp)
    8003f86e:	6b4a                	ld	s6,144(sp)
    8003f870:	6baa                	ld	s7,136(sp)
    8003f872:	6c0a                	ld	s8,128(sp)
    8003f874:	7ce6                	ld	s9,120(sp)
    8003f876:	7d46                	ld	s10,112(sp)
    8003f878:	7da6                	ld	s11,104(sp)
    8003f87a:	6169                	addi	sp,sp,208
    8003f87c:	8082                	ret
quickjs-nuttx/quickjs.c:53868
    JSValue sep = JS_UNDEFINED, el;
    8003f87e:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:53878
    c = ',';    /* default separator */
    8003f880:	02c00993          	li	s3,44
quickjs-nuttx/quickjs.c:53870
    JSString *p = NULL;
    8003f884:	4401                	li	s0,0
    8003f886:	b745                	j	8003f826 <js_typed_array_join+0x6e>
quickjs-nuttx/quickjs.c:53893
        if (i > 0) {
    8003f888:	020a1163          	bnez	s4,8003f8aa <js_typed_array_join+0xf2>
quickjs-nuttx/quickjs.c:53902
        el = JS_GetPropertyUint32(ctx, this_val, i);
    8003f88c:	6622                	ld	a2,8(sp)
    8003f88e:	6582                	ld	a1,0(sp)
    8003f890:	86d2                	mv	a3,s4
    8003f892:	854a                	mv	a0,s2
    8003f894:	8a5d70ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    8003f898:	f02a                	sd	a0,32(sp)
    8003f89a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:53904
        if (!JS_IsNull(el) && !JS_IsUndefined(el)) {
    8003f89c:	ffe5879b          	addiw	a5,a1,-2
quickjs-nuttx/quickjs.c:53902
        el = JS_GetPropertyUint32(ctx, this_val, i);
    8003f8a0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:53904
        if (!JS_IsNull(el) && !JS_IsUndefined(el)) {
    8003f8a2:	04fd6063          	bltu	s10,a5,8003f8e2 <js_typed_array_join+0x12a>
quickjs-nuttx/quickjs.c:53892
    for(i = 0; i < n; i++) {
    8003f8a6:	2a05                	addiw	s4,s4,1
    8003f8a8:	bf71                	j	8003f844 <js_typed_array_join+0x8c>
quickjs-nuttx/quickjs.c:53894
            if (c >= 0) {
    8003f8aa:	03898363          	beq	s3,s8,8003f8d0 <js_typed_array_join+0x118>
quickjs-nuttx/quickjs.c:53895
                if (string_buffer_putc8(b, c))
    8003f8ae:	85e6                	mv	a1,s9
    8003f8b0:	0088                	addi	a0,sp,64
    8003f8b2:	baedf0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:53898
                if (string_buffer_concat(b, p, 0, p->len))
    8003f8b6:	d979                	beqz	a0,8003f88c <js_typed_array_join+0xd4>
quickjs-nuttx/quickjs.c:53918
    string_buffer_free(b);
    8003f8b8:	0088                	addi	a0,sp,64
    8003f8ba:	f68cb0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:53919
    JS_FreeValue(ctx, sep);
    8003f8be:	85a2                	mv	a1,s0
    8003f8c0:	8626                	mv	a2,s1
    8003f8c2:	854a                	mv	a0,s2
    8003f8c4:	edbcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53921
    return JS_EXCEPTION;
    8003f8c8:	4799                	li	a5,6
    8003f8ca:	f802                	sd	zero,48(sp)
    8003f8cc:	fc3e                	sd	a5,56(sp)
    8003f8ce:	b779                	j	8003f85c <js_typed_array_join+0xa4>
quickjs-nuttx/quickjs.c:53898
                if (string_buffer_concat(b, p, 0, p->len))
    8003f8d0:	4054                	lw	a3,4(s0)
    8003f8d2:	4601                	li	a2,0
    8003f8d4:	85a2                	mv	a1,s0
    8003f8d6:	00dbf6b3          	and	a3,s7,a3
    8003f8da:	0088                	addi	a0,sp,64
    8003f8dc:	a06df0ef          	jal	ra,8001eae2 <string_buffer_concat>
    8003f8e0:	bfd9                	j	8003f8b6 <js_typed_array_join+0xfe>
quickjs-nuttx/quickjs.c:53905
            if (JS_IsException(el))
    8003f8e2:	0005879b          	sext.w	a5,a1
    8003f8e6:	fdb789e3          	beq	a5,s11,8003f8b8 <js_typed_array_join+0x100>
quickjs-nuttx/quickjs.c:53907
            if (toLocaleString) {
    8003f8ea:	000b0863          	beqz	s6,8003f8fa <js_typed_array_join+0x142>
quickjs-nuttx/quickjs.c:53908
                el = JS_ToLocaleStringFree(ctx, el);
    8003f8ee:	85aa                	mv	a1,a0
    8003f8f0:	854a                	mv	a0,s2
    8003f8f2:	d39ff0ef          	jal	ra,8003f62a <JS_ToLocaleStringFree>
    8003f8f6:	f02a                	sd	a0,32(sp)
    8003f8f8:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:53910
            if (string_buffer_concat_value_free(b, el))
    8003f8fa:	7582                	ld	a1,32(sp)
    8003f8fc:	7622                	ld	a2,40(sp)
    8003f8fe:	0088                	addi	a0,sp,64
    8003f900:	b82e10ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
    8003f904:	d14d                	beqz	a0,8003f8a6 <js_typed_array_join+0xee>
    8003f906:	bf4d                	j	8003f8b8 <js_typed_array_join+0x100>

000000008003f908 <js_promise_finally>:
js_promise_finally():
quickjs-nuttx/quickjs.c:48637
{
    8003f908:	7155                	addi	sp,sp,-208
    8003f90a:	e1a2                	sd	s0,192(sp)
    8003f90c:	fd26                	sd	s1,184(sp)
    8003f90e:	f94a                	sd	s2,176(sp)
    8003f910:	f54e                	sd	s3,168(sp)
    8003f912:	e586                	sd	ra,200(sp)
quickjs-nuttx/quickjs.c:48638
    JSValueConst onFinally = argv[0];
    8003f914:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:48644
    ctor = JS_SpeciesConstructor(ctx, this_val, JS_UNDEFINED);
    8003f916:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:48637
{
    8003f918:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48638
    JSValueConst onFinally = argv[0];
    8003f91a:	e83e                	sd	a5,16(sp)
    8003f91c:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:48644
    ctor = JS_SpeciesConstructor(ctx, this_val, JS_UNDEFINED);
    8003f91e:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:48637
{
    8003f920:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:48638
    JSValueConst onFinally = argv[0];
    8003f922:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:48637
{
    8003f924:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:48644
    ctor = JS_SpeciesConstructor(ctx, this_val, JS_UNDEFINED);
    8003f926:	d46d90ef          	jal	ra,80018e6c <JS_SpeciesConstructor>
    8003f92a:	f02a                	sd	a0,32(sp)
    8003f92c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:48645
    if (JS_IsException(ctor))
    8003f92e:	0005879b          	sext.w	a5,a1
    8003f932:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:48644
    ctor = JS_SpeciesConstructor(ctx, this_val, JS_UNDEFINED);
    8003f934:	892a                	mv	s2,a0
    8003f936:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:48645
    if (JS_IsException(ctor))
    8003f938:	01379d63          	bne	a5,s3,8003f952 <js_promise_finally+0x4a>
quickjs-nuttx/quickjs.c:48646
        return ctor;
    8003f93c:	e8aa                	sd	a0,80(sp)
    8003f93e:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:48668 (discriminator 1)
}
    8003f940:	60ae                	ld	ra,200(sp)
    8003f942:	640e                	ld	s0,192(sp)
    8003f944:	6546                	ld	a0,80(sp)
    8003f946:	65e6                	ld	a1,88(sp)
    8003f948:	74ea                	ld	s1,184(sp)
    8003f94a:	794a                	ld	s2,176(sp)
    8003f94c:	79aa                	ld	s3,168(sp)
    8003f94e:	6169                	addi	sp,sp,208
    8003f950:	8082                	ret
quickjs-nuttx/quickjs.c:48647
    if (!JS_IsFunction(ctx, onFinally)) {
    8003f952:	65c2                	ld	a1,16(sp)
    8003f954:	6662                	ld	a2,24(sp)
    8003f956:	8522                	mv	a0,s0
    8003f958:	b4bce0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8003f95c:	e939                	bnez	a0,8003f9b2 <js_promise_finally+0xaa>
quickjs-nuttx/quickjs.c:48648
        then_funcs[0] = JS_DupValue(ctx, onFinally);
    8003f95e:	6542                	ld	a0,16(sp)
    8003f960:	65e2                	ld	a1,24(sp)
    8003f962:	ab9ca0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003f966:	f0aa                	sd	a0,96(sp)
    8003f968:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:48649
        then_funcs[1] = JS_DupValue(ctx, onFinally);
    8003f96a:	6542                	ld	a0,16(sp)
    8003f96c:	65e2                	ld	a1,24(sp)
    8003f96e:	aadca0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003f972:	f8aa                	sd	a0,112(sp)
    8003f974:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:48663
    JS_FreeValue(ctx, ctor);
    8003f976:	7582                	ld	a1,32(sp)
    8003f978:	7622                	ld	a2,40(sp)
    8003f97a:	8522                	mv	a0,s0
    8003f97c:	e23cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48664
    ret = JS_Invoke(ctx, this_val, JS_ATOM_then, 2, (JSValueConst *)then_funcs);
    8003f980:	6622                	ld	a2,8(sp)
    8003f982:	6582                	ld	a1,0(sp)
    8003f984:	109c                	addi	a5,sp,96
    8003f986:	4709                	li	a4,2
    8003f988:	08000693          	li	a3,128
    8003f98c:	8522                	mv	a0,s0
    8003f98e:	c1fff0ef          	jal	ra,8003f5ac <JS_Invoke>
quickjs-nuttx/quickjs.c:48665
    JS_FreeValue(ctx, then_funcs[0]);
    8003f992:	7626                	ld	a2,104(sp)
quickjs-nuttx/quickjs.c:48664
    ret = JS_Invoke(ctx, this_val, JS_ATOM_then, 2, (JSValueConst *)then_funcs);
    8003f994:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:48665
    JS_FreeValue(ctx, then_funcs[0]);
    8003f996:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:48664
    ret = JS_Invoke(ctx, this_val, JS_ATOM_then, 2, (JSValueConst *)then_funcs);
    8003f998:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:48665
    JS_FreeValue(ctx, then_funcs[0]);
    8003f99a:	8522                	mv	a0,s0
    8003f99c:	e03cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48666
    JS_FreeValue(ctx, then_funcs[1]);
    8003f9a0:	75c6                	ld	a1,112(sp)
    8003f9a2:	7666                	ld	a2,120(sp)
    8003f9a4:	8522                	mv	a0,s0
    8003f9a6:	df9cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48667
    return ret;
    8003f9aa:	77c2                	ld	a5,48(sp)
    8003f9ac:	e8be                	sd	a5,80(sp)
    8003f9ae:	77e2                	ld	a5,56(sp)
    8003f9b0:	a09d                	j	8003fa16 <js_promise_finally+0x10e>
quickjs-nuttx/quickjs.c:48652
        func_data[1] = onFinally;
    8003f9b2:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:48654
            then_funcs[i] = JS_NewCFunctionData(ctx, js_promise_then_finally_func, 1, i, 2, func_data);
    8003f9b4:	4709                	li	a4,2
    8003f9b6:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:48652
        func_data[1] = onFinally;
    8003f9b8:	e93e                	sd	a5,144(sp)
    8003f9ba:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:48654
            then_funcs[i] = JS_NewCFunctionData(ctx, js_promise_then_finally_func, 1, i, 2, func_data);
    8003f9bc:	4605                	li	a2,1
    8003f9be:	00008597          	auipc	a1,0x8
    8003f9c2:	dd258593          	addi	a1,a1,-558 # 80047790 <js_promise_then_finally_func>
quickjs-nuttx/quickjs.c:48652
        func_data[1] = onFinally;
    8003f9c6:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:48654
            then_funcs[i] = JS_NewCFunctionData(ctx, js_promise_then_finally_func, 1, i, 2, func_data);
    8003f9c8:	8522                	mv	a0,s0
    8003f9ca:	011c                	addi	a5,sp,128
quickjs-nuttx/quickjs.c:48651
        func_data[0] = ctor;
    8003f9cc:	e14a                	sd	s2,128(sp)
    8003f9ce:	e526                	sd	s1,136(sp)
quickjs-nuttx/quickjs.c:48654
            then_funcs[i] = JS_NewCFunctionData(ctx, js_promise_then_finally_func, 1, i, 2, func_data);
    8003f9d0:	942f10ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    8003f9d4:	f4ae                	sd	a1,104(sp)
    8003f9d6:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:48655
            if (JS_IsException(then_funcs[i])) {
    8003f9d8:	2581                	sext.w	a1,a1
    8003f9da:	03358763          	beq	a1,s3,8003fa08 <js_promise_finally+0x100>
quickjs-nuttx/quickjs.c:48654
            then_funcs[i] = JS_NewCFunctionData(ctx, js_promise_then_finally_func, 1, i, 2, func_data);
    8003f9de:	011c                	addi	a5,sp,128
    8003f9e0:	4709                	li	a4,2
    8003f9e2:	4685                	li	a3,1
    8003f9e4:	4605                	li	a2,1
    8003f9e6:	00008597          	auipc	a1,0x8
    8003f9ea:	daa58593          	addi	a1,a1,-598 # 80047790 <js_promise_then_finally_func>
    8003f9ee:	8522                	mv	a0,s0
    8003f9f0:	922f10ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    8003f9f4:	fcae                	sd	a1,120(sp)
    8003f9f6:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:48655
            if (JS_IsException(then_funcs[i])) {
    8003f9f8:	2581                	sext.w	a1,a1
    8003f9fa:	f7359ee3          	bne	a1,s3,8003f976 <js_promise_finally+0x6e>
quickjs-nuttx/quickjs.c:48657
                    JS_FreeValue(ctx, then_funcs[0]);
    8003f9fe:	7586                	ld	a1,96(sp)
    8003fa00:	7626                	ld	a2,104(sp)
    8003fa02:	8522                	mv	a0,s0
    8003fa04:	d9bcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48658
                JS_FreeValue(ctx, ctor);
    8003fa08:	7582                	ld	a1,32(sp)
    8003fa0a:	7622                	ld	a2,40(sp)
    8003fa0c:	8522                	mv	a0,s0
    8003fa0e:	d91cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48659
                return JS_EXCEPTION;
    8003fa12:	4799                	li	a5,6
    8003fa14:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:48667
    return ret;
    8003fa16:	ecbe                	sd	a5,88(sp)
    8003fa18:	b725                	j	8003f940 <js_promise_finally+0x38>

000000008003fa1a <js_promise_catch>:
js_promise_catch():
quickjs-nuttx/quickjs.c:48583
{
    8003fa1a:	715d                	addi	sp,sp,-80
    8003fa1c:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs.c:48585
    args[0] = JS_UNDEFINED;
    8003fa1e:	478d                	li	a5,3
    8003fa20:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:48586
    args[1] = argv[0];
    8003fa22:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:48587
    return JS_Invoke(ctx, this_val, JS_ATOM_then, 2, args);
    8003fa24:	08000693          	li	a3,128
quickjs-nuttx/quickjs.c:48585
    args[0] = JS_UNDEFINED;
    8003fa28:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:48586
    args[1] = argv[0];
    8003fa2a:	f83e                	sd	a5,48(sp)
    8003fa2c:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:48587
    return JS_Invoke(ctx, this_val, JS_ATOM_then, 2, args);
    8003fa2e:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:48586
    args[1] = argv[0];
    8003fa30:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:48587
    return JS_Invoke(ctx, this_val, JS_ATOM_then, 2, args);
    8003fa32:	101c                	addi	a5,sp,32
    8003fa34:	b79ff0ef          	jal	ra,8003f5ac <JS_Invoke>
quickjs-nuttx/quickjs.c:48588
}
    8003fa38:	60a6                	ld	ra,72(sp)
    8003fa3a:	6161                	addi	sp,sp,80
    8003fa3c:	8082                	ret

000000008003fa3e <js_object_toLocaleString>:
js_object_toLocaleString():
quickjs-nuttx/quickjs.c:37673
{
    8003fa3e:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:37674
    return JS_Invoke(ctx, this_val, JS_ATOM_toString, 0, NULL);
    8003fa40:	4781                	li	a5,0
    8003fa42:	4701                	li	a4,0
    8003fa44:	03800693          	li	a3,56
quickjs-nuttx/quickjs.c:37675
}
    8003fa48:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:37674
    return JS_Invoke(ctx, this_val, JS_ATOM_toString, 0, NULL);
    8003fa4a:	b63ff06f          	j	8003f5ac <JS_Invoke>

000000008003fa4e <JS_RegExpExec>:
JS_RegExpExec():
quickjs-nuttx/quickjs.c:44037
{
    8003fa4e:	7175                	addi	sp,sp,-144
    8003fa50:	87b2                	mv	a5,a2
    8003fa52:	e836                	sd	a3,16(sp)
    8003fa54:	ec3a                	sd	a4,24(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003fa56:	4801                	li	a6,0
    8003fa58:	872e                	mv	a4,a1
    8003fa5a:	08700693          	li	a3,135
JS_RegExpExec():
quickjs-nuttx/quickjs.c:44037
    8003fa5e:	e122                	sd	s0,128(sp)
    8003fa60:	fca6                	sd	s1,120(sp)
    8003fa62:	f432                	sd	a2,40(sp)
    8003fa64:	ecb2                	sd	a2,88(sp)
    8003fa66:	e506                	sd	ra,136(sp)
    8003fa68:	842a                	mv	s0,a0
    8003fa6a:	f02e                	sd	a1,32(sp)
    8003fa6c:	e8ae                	sd	a1,80(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003fa6e:	83cd70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_RegExpExec():
quickjs-nuttx/quickjs.c:44041
    if (JS_IsException(method))
    8003fa72:	0005871b          	sext.w	a4,a1
    8003fa76:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003fa78:	84aa                	mv	s1,a0
    8003fa7a:	862e                	mv	a2,a1
JS_RegExpExec():
quickjs-nuttx/quickjs.c:44041
    8003fa7c:	00f71b63          	bne	a4,a5,8003fa92 <JS_RegExpExec+0x44>
quickjs-nuttx/quickjs.c:44042
        return method;
    8003fa80:	e8aa                	sd	a0,80(sp)
    8003fa82:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:44055
}
    8003fa84:	60aa                	ld	ra,136(sp)
    8003fa86:	640a                	ld	s0,128(sp)
    8003fa88:	6546                	ld	a0,80(sp)
    8003fa8a:	65e6                	ld	a1,88(sp)
    8003fa8c:	74e6                	ld	s1,120(sp)
    8003fa8e:	6149                	addi	sp,sp,144
    8003fa90:	8082                	ret
quickjs-nuttx/quickjs.c:44043
    if (JS_IsFunction(ctx, method)) {
    8003fa92:	85aa                	mv	a1,a0
    8003fa94:	8522                	mv	a0,s0
    8003fa96:	e432                	sd	a2,8(sp)
    8003fa98:	a0bce0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8003fa9c:	6622                	ld	a2,8(sp)
    8003fa9e:	c929                	beqz	a0,8003faf0 <JS_RegExpExec+0xa2>
quickjs-nuttx/quickjs.c:44044
        ret = JS_CallFree(ctx, method, r, 1, &s);
    8003faa0:	7722                	ld	a4,40(sp)
    8003faa2:	7682                	ld	a3,32(sp)
    8003faa4:	4785                	li	a5,1
    8003faa6:	01010813          	addi	a6,sp,16
    8003faaa:	85a6                	mv	a1,s1
    8003faac:	8522                	mv	a0,s0
    8003faae:	fc7d60ef          	jal	ra,80016a74 <JS_CallFree>
    8003fab2:	e0aa                	sd	a0,64(sp)
    8003fab4:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003fab6:	0005879b          	sext.w	a5,a1
JS_RegExpExec():
quickjs-nuttx/quickjs.c:44047
        if (!JS_IsObject(ret) && !JS_IsNull(ret)) {
    8003faba:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:44044
        ret = JS_CallFree(ctx, method, r, 1, &s);
    8003fabc:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:44047
        if (!JS_IsObject(ret) && !JS_IsNull(ret)) {
    8003fabe:	00e79763          	bne	a5,a4,8003facc <JS_RegExpExec+0x7e>
quickjs-nuttx/quickjs.c:44046
            return ret;
    8003fac2:	6786                	ld	a5,64(sp)
    8003fac4:	e8be                	sd	a5,80(sp)
    8003fac6:	67a6                	ld	a5,72(sp)
    8003fac8:	ecbe                	sd	a5,88(sp)
    8003faca:	bf6d                	j	8003fa84 <JS_RegExpExec+0x36>
quickjs-nuttx/quickjs.c:44047 (discriminator 1)
        if (!JS_IsObject(ret) && !JS_IsNull(ret)) {
    8003facc:	9bed                	andi	a5,a5,-5
    8003face:	4709                	li	a4,2
    8003fad0:	fee789e3          	beq	a5,a4,8003fac2 <JS_RegExpExec+0x74>
quickjs-nuttx/quickjs.c:44048
            JS_FreeValue(ctx, ret);
    8003fad4:	85aa                	mv	a1,a0
    8003fad6:	8522                	mv	a0,s0
    8003fad8:	cc7cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44049
            return JS_ThrowTypeError(ctx, "RegExp exec method must return an object or null");
    8003fadc:	0002d597          	auipc	a1,0x2d
    8003fae0:	71c58593          	addi	a1,a1,1820 # 8006d1f8 <qjsc_repl+0x7c48>
    8003fae4:	8522                	mv	a0,s0
    8003fae6:	b87d80ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:44054
    return js_regexp_exec(ctx, r, 1, &s);
    8003faea:	e8aa                	sd	a0,80(sp)
    8003faec:	ecae                	sd	a1,88(sp)
    8003faee:	bf59                	j	8003fa84 <JS_RegExpExec+0x36>
quickjs-nuttx/quickjs.c:44053
    JS_FreeValue(ctx, method);
    8003faf0:	85a6                	mv	a1,s1
    8003faf2:	8522                	mv	a0,s0
    8003faf4:	cabcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44054
    return js_regexp_exec(ctx, r, 1, &s);
    8003faf8:	7582                	ld	a1,32(sp)
    8003fafa:	7622                	ld	a2,40(sp)
    8003fafc:	0818                	addi	a4,sp,16
    8003fafe:	4685                	li	a3,1
    8003fb00:	8522                	mv	a0,s0
    8003fb02:	cccfd0ef          	jal	ra,8003cfce <js_regexp_exec>
    8003fb06:	b7d5                	j	8003faea <JS_RegExpExec+0x9c>

000000008003fb08 <js_regexp_string_iterator_next>:
js_regexp_string_iterator_next():
quickjs-nuttx/quickjs.c:44203
{
    8003fb08:	7151                	addi	sp,sp,-240
quickjs-nuttx/quickjs.c:44209
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_REGEXP_STRING_ITERATOR);
    8003fb0a:	02e00693          	li	a3,46
quickjs-nuttx/quickjs.c:44203
{
    8003fb0e:	eda6                	sd	s1,216(sp)
    8003fb10:	e1d2                	sd	s4,192(sp)
    8003fb12:	f586                	sd	ra,232(sp)
    8003fb14:	f1a2                	sd	s0,224(sp)
    8003fb16:	e9ca                	sd	s2,208(sp)
    8003fb18:	e5ce                	sd	s3,200(sp)
    8003fb1a:	fd56                	sd	s5,184(sp)
    8003fb1c:	f95a                	sd	s6,176(sp)
    8003fb1e:	84aa                	mv	s1,a0
    8003fb20:	e02e                	sd	a1,0(sp)
    8003fb22:	e432                	sd	a2,8(sp)
    8003fb24:	8a3e                	mv	s4,a5
quickjs-nuttx/quickjs.c:44206
    JSValue matchStr = JS_UNDEFINED, match = JS_UNDEFINED;
    8003fb26:	f802                	sd	zero,48(sp)
    8003fb28:	fc02                	sd	zero,56(sp)
    8003fb2a:	e082                	sd	zero,64(sp)
    8003fb2c:	e482                	sd	zero,72(sp)
quickjs-nuttx/quickjs.c:44209
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_REGEXP_STRING_ITERATOR);
    8003fb2e:	cc1d80ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:44210
    if (!it)
    8003fb32:	12050463          	beqz	a0,8003fc5a <js_regexp_string_iterator_next+0x152>
quickjs-nuttx/quickjs.c:44212
    if (it->done) {
    8003fb36:	551c                	lw	a5,40(a0)
    8003fb38:	842a                	mv	s0,a0
    8003fb3a:	c39d                	beqz	a5,8003fb60 <js_regexp_string_iterator_next+0x58>
quickjs-nuttx/quickjs.c:44213
        *pdone = TRUE;
    8003fb3c:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:44223
        *pdone = TRUE;
    8003fb3e:	00fa2023          	sw	a5,0(s4)
quickjs-nuttx/quickjs.c:44224
        return JS_UNDEFINED;
    8003fb42:	e882                	sd	zero,80(sp)
    8003fb44:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:44251
}
    8003fb46:	70ae                	ld	ra,232(sp)
    8003fb48:	740e                	ld	s0,224(sp)
quickjs-nuttx/quickjs.c:44250
    return JS_EXCEPTION;
    8003fb4a:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:44251
}
    8003fb4c:	6546                	ld	a0,80(sp)
    8003fb4e:	65e6                	ld	a1,88(sp)
    8003fb50:	64ee                	ld	s1,216(sp)
    8003fb52:	694e                	ld	s2,208(sp)
    8003fb54:	69ae                	ld	s3,200(sp)
    8003fb56:	6a0e                	ld	s4,192(sp)
    8003fb58:	7aea                	ld	s5,184(sp)
    8003fb5a:	7b4a                	ld	s6,176(sp)
    8003fb5c:	616d                	addi	sp,sp,240
    8003fb5e:	8082                	ret
quickjs-nuttx/quickjs.c:44217
    S = it->iterated_string;
    8003fb60:	01053a83          	ld	s5,16(a0)
quickjs-nuttx/quickjs.c:44216
    R = it->iterating_regexp;
    8003fb64:	610c                	ld	a1,0(a0)
    8003fb66:	6510                	ld	a2,8(a0)
quickjs-nuttx/quickjs.c:44217
    S = it->iterated_string;
    8003fb68:	6d18                	ld	a4,24(a0)
quickjs-nuttx/quickjs.c:44218
    match = JS_RegExpExec(ctx, R, S);
    8003fb6a:	86d6                	mv	a3,s5
    8003fb6c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:44216
    R = it->iterating_regexp;
    8003fb6e:	e82e                	sd	a1,16(sp)
    8003fb70:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:44217
    S = it->iterated_string;
    8003fb72:	f056                	sd	s5,32(sp)
    8003fb74:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:44218
    match = JS_RegExpExec(ctx, R, S);
    8003fb76:	ed9ff0ef          	jal	ra,8003fa4e <JS_RegExpExec>
    8003fb7a:	e0aa                	sd	a0,64(sp)
    8003fb7c:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8003fb7e:	0005879b          	sext.w	a5,a1
js_regexp_string_iterator_next():
quickjs-nuttx/quickjs.c:44219
    if (JS_IsException(match))
    8003fb82:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:44218
    match = JS_RegExpExec(ctx, R, S);
    8003fb84:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:44219
    if (JS_IsException(match))
    8003fb86:	0d678b63          	beq	a5,s6,8003fc5c <js_regexp_string_iterator_next+0x154>
quickjs-nuttx/quickjs.c:44221
    if (JS_IsNull(match)) {
    8003fb8a:	4709                	li	a4,2
    8003fb8c:	00e79563          	bne	a5,a4,8003fb96 <js_regexp_string_iterator_next+0x8e>
quickjs-nuttx/quickjs.c:44222
        it->done = TRUE;
    8003fb90:	4785                	li	a5,1
    8003fb92:	d41c                	sw	a5,40(s0)
    8003fb94:	b76d                	j	8003fb3e <js_regexp_string_iterator_next+0x36>
quickjs-nuttx/quickjs.c:44225
    } else if (it->global) {
    8003fb96:	501c                	lw	a5,32(s0)
    8003fb98:	cfd5                	beqz	a5,8003fc54 <js_regexp_string_iterator_next+0x14c>
quickjs-nuttx/quickjs.c:44226
        matchStr = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, match, 0));
    8003fb9a:	4681                	li	a3,0
    8003fb9c:	85aa                	mv	a1,a0
    8003fb9e:	864e                	mv	a2,s3
    8003fba0:	8526                	mv	a0,s1
    8003fba2:	e41f90ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    8003fba6:	862e                	mv	a2,a1
    8003fba8:	f0aa                	sd	a0,96(sp)
    8003fbaa:	f4ae                	sd	a1,104(sp)
    8003fbac:	85aa                	mv	a1,a0
    8003fbae:	8526                	mv	a0,s1
    8003fbb0:	bd7e00ef          	jal	ra,80020786 <JS_ToStringFree>
    8003fbb4:	f82a                	sd	a0,48(sp)
    8003fbb6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:44227
        if (JS_IsException(matchStr))
    8003fbb8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44226
        matchStr = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, match, 0));
    8003fbbc:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:44227
        if (JS_IsException(matchStr))
    8003fbbe:	0b678063          	beq	a5,s6,8003fc5e <js_regexp_string_iterator_next+0x156>
quickjs-nuttx/quickjs.c:44229
        if (JS_IsEmptyString(matchStr)) {
    8003fbc2:	884c80ef          	jal	ra,80007c46 <JS_IsEmptyString>
    8003fbc6:	c525                	beqz	a0,8003fc2e <js_regexp_string_iterator_next+0x126>
quickjs-nuttx/quickjs.c:44231
            if (JS_ToLengthFree(ctx, &thisIndex,
    8003fbc8:	6742                	ld	a4,16(sp)
    8003fbca:	67e2                	ld	a5,24(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003fbcc:	05600693          	li	a3,86
    8003fbd0:	4801                	li	a6,0
    8003fbd2:	863e                	mv	a2,a5
    8003fbd4:	85ba                	mv	a1,a4
    8003fbd6:	8526                	mv	a0,s1
    8003fbd8:	f13a                	sd	a4,160(sp)
    8003fbda:	f53e                	sd	a5,168(sp)
    8003fbdc:	ecfd60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003fbe0:	862a                	mv	a2,a0
    8003fbe2:	86ae                	mv	a3,a1
    8003fbe4:	e12a                	sd	a0,128(sp)
    8003fbe6:	e52e                	sd	a1,136(sp)
    8003fbe8:	f8aa                	sd	a0,112(sp)
    8003fbea:	fcae                	sd	a1,120(sp)
js_regexp_string_iterator_next():
quickjs-nuttx/quickjs.c:44231
    8003fbec:	8526                	mv	a0,s1
    8003fbee:	088c                	addi	a1,sp,80
    8003fbf0:	9aee50ef          	jal	ra,80024d9e <JS_ToLengthFree>
    8003fbf4:	06054563          	bltz	a0,8003fc5e <js_regexp_string_iterator_next+0x156>
quickjs-nuttx/quickjs.c:44235
            nextIndex = string_advance_index(sp, thisIndex, it->unicode);
    8003fbf8:	5050                	lw	a2,36(s0)
    8003fbfa:	65c6                	ld	a1,80(sp)
    8003fbfc:	8556                	mv	a0,s5
    8003fbfe:	9fdc90ef          	jal	ra,800095fa <string_advance_index>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003fc02:	0005071b          	sext.w	a4,a0
    8003fc06:	02a71f63          	bne	a4,a0,8003fc44 <js_regexp_string_iterator_next+0x13c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003fc0a:	d302                	sw	zero,164(sp)
    8003fc0c:	d13a                	sw	a4,160(sp)
    8003fc0e:	778a                	ld	a5,160(sp)
    8003fc10:	f502                	sd	zero,168(sp)
    8003fc12:	e93e                	sd	a5,144(sp)
    8003fc14:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003fc16:	c93a                	sw	a4,144(sp)
js_regexp_string_iterator_next():
quickjs-nuttx/quickjs.c:44236
            if (JS_SetProperty(ctx, R, JS_ATOM_lastIndex,
    8003fc18:	674a                	ld	a4,144(sp)
    8003fc1a:	65c2                	ld	a1,16(sp)
    8003fc1c:	6662                	ld	a2,24(sp)
    8003fc1e:	05600693          	li	a3,86
    8003fc22:	8526                	mv	a0,s1
    8003fc24:	ed3e                	sd	a5,152(sp)
    8003fc26:	fe7f70ef          	jal	ra,80037c0c <JS_SetProperty>
    8003fc2a:	02054a63          	bltz	a0,8003fc5e <js_regexp_string_iterator_next+0x156>
quickjs-nuttx/quickjs.c:44240
        JS_FreeValue(ctx, matchStr);
    8003fc2e:	75c2                	ld	a1,48(sp)
    8003fc30:	7662                	ld	a2,56(sp)
    8003fc32:	8526                	mv	a0,s1
    8003fc34:	b6bcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44245
    return match;
    8003fc38:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:44244
    *pdone = FALSE;
    8003fc3a:	000a2023          	sw	zero,0(s4)
quickjs-nuttx/quickjs.c:44245
    return match;
    8003fc3e:	e8be                	sd	a5,80(sp)
    8003fc40:	67a6                	ld	a5,72(sp)
    8003fc42:	b711                	j	8003fb46 <js_regexp_string_iterator_next+0x3e>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003fc44:	d22577d3          	fcvt.d.l	fa5,a0
    8003fc48:	479d                	li	a5,7
    8003fc4a:	e2078753          	fmv.x.d	a4,fa5
js_regexp_string_iterator_next():
quickjs-nuttx/quickjs.h:230
    return v;
    8003fc4e:	a93e                	fsd	fa5,144(sp)
    8003fc50:	2701                	sext.w	a4,a4
    8003fc52:	b7d1                	j	8003fc16 <js_regexp_string_iterator_next+0x10e>
quickjs-nuttx/quickjs.c:44242
        it->done = TRUE;
    8003fc54:	4785                	li	a5,1
    8003fc56:	d41c                	sw	a5,40(s0)
    8003fc58:	b7c5                	j	8003fc38 <js_regexp_string_iterator_next+0x130>
quickjs-nuttx/quickjs.c:44206
    JSValue matchStr = JS_UNDEFINED, match = JS_UNDEFINED;
    8003fc5a:	498d                	li	s3,3
    8003fc5c:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44247
    JS_FreeValue(ctx, match);
    8003fc5e:	6586                	ld	a1,64(sp)
    8003fc60:	864e                	mv	a2,s3
    8003fc62:	8526                	mv	a0,s1
    8003fc64:	b3bcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44248
    JS_FreeValue(ctx, matchStr);
    8003fc68:	75c2                	ld	a1,48(sp)
    8003fc6a:	864a                	mv	a2,s2
    8003fc6c:	8526                	mv	a0,s1
    8003fc6e:	b31cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44250
    return JS_EXCEPTION;
    8003fc72:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:44249
    *pdone = FALSE;
    8003fc74:	000a2023          	sw	zero,0(s4)
quickjs-nuttx/quickjs.c:44250
    return JS_EXCEPTION;
    8003fc78:	e882                	sd	zero,80(sp)
    8003fc7a:	b5f1                	j	8003fb46 <js_regexp_string_iterator_next+0x3e>

000000008003fc7c <js_regexp_Symbol_search>:
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44596
{
    8003fc7c:	712d                	addi	sp,sp,-288
quickjs-nuttx/quickjs.c:44597
    JSValueConst rx = this_val;
    8003fc7e:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:44596
{
    8003fc80:	ee06                	sd	ra,280(sp)
    8003fc82:	ea22                	sd	s0,272(sp)
    8003fc84:	e626                	sd	s1,264(sp)
    8003fc86:	e24a                	sd	s2,256(sp)
    8003fc88:	fdce                	sd	s3,248(sp)
    8003fc8a:	f9d2                	sd	s4,240(sp)
    8003fc8c:	f5d6                	sd	s5,232(sp)
quickjs-nuttx/quickjs.c:44597
    JSValueConst rx = this_val;
    8003fc8e:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:44600
    if (!JS_IsObject(rx))
    8003fc90:	2601                	sext.w	a2,a2
    8003fc92:	57fd                	li	a5,-1
    8003fc94:	00f60c63          	beq	a2,a5,8003fcac <js_regexp_Symbol_search+0x30>
quickjs-nuttx/quickjs.c:44650
}
    8003fc98:	6452                	ld	s0,272(sp)
    8003fc9a:	60f2                	ld	ra,280(sp)
    8003fc9c:	64b2                	ld	s1,264(sp)
    8003fc9e:	6912                	ld	s2,256(sp)
    8003fca0:	79ee                	ld	s3,248(sp)
    8003fca2:	7a4e                	ld	s4,240(sp)
    8003fca4:	7aae                	ld	s5,232(sp)
    8003fca6:	6115                	addi	sp,sp,288
quickjs-nuttx/quickjs.c:44601
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8003fca8:	f83d806f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:44606
    str = JS_ToString(ctx, argv[0]);
    8003fcac:	630c                	ld	a1,0(a4)
    8003fcae:	6710                	ld	a2,8(a4)
    8003fcb0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:44603
    result = JS_UNDEFINED;
    8003fcb2:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:44604
    currentLastIndex = JS_UNDEFINED;
    8003fcb4:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:44605
    previousLastIndex = JS_UNDEFINED;
    8003fcb6:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:44606
    str = JS_ToString(ctx, argv[0]);
    8003fcb8:	ac5e00ef          	jal	ra,8002077c <JS_ToString>
    8003fcbc:	f42e                	sd	a1,40(sp)
    8003fcbe:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:44607
    if (JS_IsException(str))
    8003fcc0:	2581                	sext.w	a1,a1
    8003fcc2:	4499                	li	s1,6
    8003fcc4:	16958563          	beq	a1,s1,8003fe2e <js_regexp_Symbol_search+0x1b2>
quickjs-nuttx/quickjs.c:44610
    previousLastIndex = JS_GetProperty(ctx, rx, JS_ATOM_lastIndex);
    8003fcc8:	67e2                	ld	a5,24(sp)
    8003fcca:	6742                	ld	a4,16(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003fccc:	4801                	li	a6,0
    8003fcce:	863e                	mv	a2,a5
    8003fcd0:	05600693          	li	a3,86
    8003fcd4:	85ba                	mv	a1,a4
    8003fcd6:	8522                	mv	a0,s0
    8003fcd8:	edbe                	sd	a5,216(sp)
    8003fcda:	e9ba                	sd	a4,208(sp)
    8003fcdc:	dcfd60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003fce0:	f82a                	sd	a0,48(sp)
    8003fce2:	fc2e                	sd	a1,56(sp)
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44611
    if (JS_IsException(previousLastIndex))
    8003fce4:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003fce8:	892e                	mv	s2,a1
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44611
    8003fcea:	04978663          	beq	a5,s1,8003fd36 <js_regexp_Symbol_search+0xba>
quickjs-nuttx/quickjs.c:44614
    if (!js_same_value(ctx, previousLastIndex, JS_NewInt32(ctx, 0))) {
    8003fcee:	85aa                	mv	a1,a0
    8003fcf0:	4681                	li	a3,0
    8003fcf2:	4701                	li	a4,0
    8003fcf4:	864a                	mv	a2,s2
    8003fcf6:	8522                	mv	a0,s0
    8003fcf8:	c7bcb0ef          	jal	ra,8000b972 <js_same_value>
    8003fcfc:	c115                	beqz	a0,8003fd20 <js_regexp_Symbol_search+0xa4>
quickjs-nuttx/quickjs.c:44619
    result = JS_RegExpExec(ctx, rx, str);
    8003fcfe:	7682                	ld	a3,32(sp)
    8003fd00:	7722                	ld	a4,40(sp)
    8003fd02:	65c2                	ld	a1,16(sp)
    8003fd04:	6662                	ld	a2,24(sp)
    8003fd06:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44620
    if (JS_IsException(result))
    8003fd08:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:44619
    result = JS_RegExpExec(ctx, rx, str);
    8003fd0a:	d45ff0ef          	jal	ra,8003fa4e <JS_RegExpExec>
    8003fd0e:	e8aa                	sd	a0,80(sp)
    8003fd10:	ecae                	sd	a1,88(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003fd12:	00058a1b          	sext.w	s4,a1
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44619
    8003fd16:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:44620
    if (JS_IsException(result))
    8003fd18:	035a1163          	bne	s4,s5,8003fd3a <js_regexp_Symbol_search+0xbe>
quickjs-nuttx/quickjs.c:44604
    currentLastIndex = JS_UNDEFINED;
    8003fd1c:	498d                	li	s3,3
    8003fd1e:	a07d                	j	8003fdcc <js_regexp_Symbol_search+0x150>
quickjs-nuttx/quickjs.c:44615
        if (JS_SetProperty(ctx, rx, JS_ATOM_lastIndex, JS_NewInt32(ctx, 0)) < 0) {
    8003fd20:	65c2                	ld	a1,16(sp)
    8003fd22:	6662                	ld	a2,24(sp)
    8003fd24:	4701                	li	a4,0
    8003fd26:	4781                	li	a5,0
    8003fd28:	05600693          	li	a3,86
    8003fd2c:	8522                	mv	a0,s0
    8003fd2e:	edff70ef          	jal	ra,80037c0c <JS_SetProperty>
    8003fd32:	fc0556e3          	bgez	a0,8003fcfe <js_regexp_Symbol_search+0x82>
quickjs-nuttx/quickjs.c:44603
    result = JS_UNDEFINED;
    8003fd36:	448d                	li	s1,3
    8003fd38:	b7d5                	j	8003fd1c <js_regexp_Symbol_search+0xa0>
quickjs-nuttx/quickjs.c:44622
    currentLastIndex = JS_GetProperty(ctx, rx, JS_ATOM_lastIndex);
    8003fd3a:	67e2                	ld	a5,24(sp)
    8003fd3c:	6742                	ld	a4,16(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003fd3e:	4801                	li	a6,0
    8003fd40:	863e                	mv	a2,a5
    8003fd42:	05600693          	li	a3,86
    8003fd46:	85ba                	mv	a1,a4
    8003fd48:	8522                	mv	a0,s0
    8003fd4a:	edbe                	sd	a5,216(sp)
    8003fd4c:	e9ba                	sd	a4,208(sp)
    8003fd4e:	d5dd60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003fd52:	e0aa                	sd	a0,64(sp)
    8003fd54:	e4ae                	sd	a1,72(sp)
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44623
    if (JS_IsException(currentLastIndex))
    8003fd56:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003fd5a:	862e                	mv	a2,a1
    8003fd5c:	89ae                	mv	s3,a1
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44623
    8003fd5e:	07578763          	beq	a5,s5,8003fdcc <js_regexp_Symbol_search+0x150>
quickjs-nuttx/quickjs.c:44625
    if (js_same_value(ctx, currentLastIndex, previousLastIndex)) {
    8003fd62:	76c2                	ld	a3,48(sp)
    8003fd64:	7762                	ld	a4,56(sp)
    8003fd66:	85aa                	mv	a1,a0
    8003fd68:	8522                	mv	a0,s0
    8003fd6a:	c09cb0ef          	jal	ra,8000b972 <js_same_value>
    8003fd6e:	c131                	beqz	a0,8003fdb2 <js_regexp_Symbol_search+0x136>
quickjs-nuttx/quickjs.c:44626
        JS_FreeValue(ctx, previousLastIndex);
    8003fd70:	75c2                	ld	a1,48(sp)
    8003fd72:	7662                	ld	a2,56(sp)
    8003fd74:	8522                	mv	a0,s0
    8003fd76:	a29cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44633
    JS_FreeValue(ctx, str);
    8003fd7a:	7582                	ld	a1,32(sp)
    8003fd7c:	7622                	ld	a2,40(sp)
    8003fd7e:	8522                	mv	a0,s0
    8003fd80:	a1fcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44634
    JS_FreeValue(ctx, currentLastIndex);
    8003fd84:	6586                	ld	a1,64(sp)
    8003fd86:	6626                	ld	a2,72(sp)
    8003fd88:	8522                	mv	a0,s0
    8003fd8a:	a15cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44636
    if (JS_IsNull(result)) {
    8003fd8e:	4789                	li	a5,2
    8003fd90:	06fa1563          	bne	s4,a5,8003fdfa <js_regexp_Symbol_search+0x17e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003fd94:	57fd                	li	a5,-1
    8003fd96:	9381                	srli	a5,a5,0x20
    8003fd98:	f8be                	sd	a5,112(sp)
    8003fd9a:	fc82                	sd	zero,120(sp)
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44650
}
    8003fd9c:	60f2                	ld	ra,280(sp)
    8003fd9e:	6452                	ld	s0,272(sp)
    8003fda0:	7546                	ld	a0,112(sp)
    8003fda2:	75e6                	ld	a1,120(sp)
    8003fda4:	64b2                	ld	s1,264(sp)
    8003fda6:	6912                	ld	s2,256(sp)
    8003fda8:	79ee                	ld	s3,248(sp)
    8003fdaa:	7a4e                	ld	s4,240(sp)
    8003fdac:	7aae                	ld	s5,232(sp)
    8003fdae:	6115                	addi	sp,sp,288
    8003fdb0:	8082                	ret
quickjs-nuttx/quickjs.c:44628
        if (JS_SetProperty(ctx, rx, JS_ATOM_lastIndex, previousLastIndex) < 0) {
    8003fdb2:	7742                	ld	a4,48(sp)
    8003fdb4:	77e2                	ld	a5,56(sp)
    8003fdb6:	65c2                	ld	a1,16(sp)
    8003fdb8:	6662                	ld	a2,24(sp)
    8003fdba:	05600693          	li	a3,86
    8003fdbe:	8522                	mv	a0,s0
    8003fdc0:	e4df70ef          	jal	ra,80037c0c <JS_SetProperty>
    8003fdc4:	fa055be3          	bgez	a0,8003fd7a <js_regexp_Symbol_search+0xfe>
quickjs-nuttx/quickjs.c:44629
            previousLastIndex = JS_UNDEFINED;
    8003fdc8:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:44605
    previousLastIndex = JS_UNDEFINED;
    8003fdca:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44645
    JS_FreeValue(ctx, result);
    8003fdcc:	65c6                	ld	a1,80(sp)
    8003fdce:	8626                	mv	a2,s1
    8003fdd0:	8522                	mv	a0,s0
    8003fdd2:	9cdcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44646
    JS_FreeValue(ctx, str);
    8003fdd6:	7582                	ld	a1,32(sp)
    8003fdd8:	7622                	ld	a2,40(sp)
    8003fdda:	8522                	mv	a0,s0
    8003fddc:	9c3cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44647
    JS_FreeValue(ctx, currentLastIndex);
    8003fde0:	6586                	ld	a1,64(sp)
    8003fde2:	864e                	mv	a2,s3
    8003fde4:	8522                	mv	a0,s0
    8003fde6:	9b9cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44648
    JS_FreeValue(ctx, previousLastIndex);
    8003fdea:	75c2                	ld	a1,48(sp)
    8003fdec:	864a                	mv	a2,s2
    8003fdee:	8522                	mv	a0,s0
    8003fdf0:	9afcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44649
    return JS_EXCEPTION;
    8003fdf4:	4799                	li	a5,6
    8003fdf6:	f882                	sd	zero,112(sp)
    8003fdf8:	a80d                	j	8003fe2a <js_regexp_Symbol_search+0x1ae>
quickjs-nuttx/quickjs.c:44639
        index = JS_GetProperty(ctx, result, JS_ATOM_index);
    8003fdfa:	67e6                	ld	a5,88(sp)
    8003fdfc:	6746                	ld	a4,80(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003fdfe:	4801                	li	a6,0
    8003fe00:	863e                	mv	a2,a5
    8003fe02:	05800693          	li	a3,88
    8003fe06:	85ba                	mv	a1,a4
    8003fe08:	8522                	mv	a0,s0
    8003fe0a:	e5be                	sd	a5,200(sp)
    8003fe0c:	e1ba                	sd	a4,192(sp)
    8003fe0e:	c9dd60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003fe12:	edae                	sd	a1,216(sp)
    8003fe14:	f4ae                	sd	a1,104(sp)
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44640
        JS_FreeValue(ctx, result);
    8003fe16:	6666                	ld	a2,88(sp)
    8003fe18:	65c6                	ld	a1,80(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003fe1a:	e9aa                	sd	a0,208(sp)
    8003fe1c:	f0aa                	sd	a0,96(sp)
js_regexp_Symbol_search():
quickjs-nuttx/quickjs.c:44640
    8003fe1e:	8522                	mv	a0,s0
    8003fe20:	97fcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44641
        return index;
    8003fe24:	7786                	ld	a5,96(sp)
    8003fe26:	f8be                	sd	a5,112(sp)
    8003fe28:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:44649
    return JS_EXCEPTION;
    8003fe2a:	fcbe                	sd	a5,120(sp)
    8003fe2c:	bf85                	j	8003fd9c <js_regexp_Symbol_search+0x120>
quickjs-nuttx/quickjs.c:44603
    result = JS_UNDEFINED;
    8003fe2e:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:44604
    currentLastIndex = JS_UNDEFINED;
    8003fe30:	498d                	li	s3,3
    8003fe32:	bf61                	j	8003fdca <js_regexp_Symbol_search+0x14e>

000000008003fe34 <js_regexp_Symbol_match>:
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.c:44086
{
    8003fe34:	7161                	addi	sp,sp,-432
    8003fe36:	ef26                	sd	s1,408(sp)
    8003fe38:	f706                	sd	ra,424(sp)
    8003fe3a:	f322                	sd	s0,416(sp)
    8003fe3c:	eb4a                	sd	s2,400(sp)
    8003fe3e:	e74e                	sd	s3,392(sp)
    8003fe40:	e352                	sd	s4,384(sp)
    8003fe42:	fed6                	sd	s5,376(sp)
    8003fe44:	fada                	sd	s6,368(sp)
    8003fe46:	f6de                	sd	s7,360(sp)
    8003fe48:	f2e2                	sd	s8,352(sp)
    8003fe4a:	eee6                	sd	s9,344(sp)
    8003fe4c:	eaea                	sd	s10,336(sp)
    8003fe4e:	e6ee                	sd	s11,328(sp)
quickjs-nuttx/quickjs.c:44088
    JSValueConst rx = this_val;
    8003fe50:	e0ae                	sd	a1,64(sp)
    8003fe52:	e4b2                	sd	a2,72(sp)
quickjs-nuttx/quickjs.c:44093
    if (!JS_IsObject(rx))
    8003fe54:	0006049b          	sext.w	s1,a2
    8003fe58:	57fd                	li	a5,-1
    8003fe5a:	02f48263          	beq	s1,a5,8003fe7e <js_regexp_Symbol_match+0x4a>
quickjs-nuttx/quickjs.c:44167
}
    8003fe5e:	741a                	ld	s0,416(sp)
    8003fe60:	70ba                	ld	ra,424(sp)
    8003fe62:	64fa                	ld	s1,408(sp)
    8003fe64:	695a                	ld	s2,400(sp)
    8003fe66:	69ba                	ld	s3,392(sp)
    8003fe68:	6a1a                	ld	s4,384(sp)
    8003fe6a:	7af6                	ld	s5,376(sp)
    8003fe6c:	7b56                	ld	s6,368(sp)
    8003fe6e:	7bb6                	ld	s7,360(sp)
    8003fe70:	7c16                	ld	s8,352(sp)
    8003fe72:	6cf6                	ld	s9,344(sp)
    8003fe74:	6d56                	ld	s10,336(sp)
    8003fe76:	6db6                	ld	s11,328(sp)
    8003fe78:	615d                	addi	sp,sp,432
quickjs-nuttx/quickjs.c:44094
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8003fe7a:	db1d806f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:44100
    S = JS_ToString(ctx, argv[0]);
    8003fe7e:	630c                	ld	a1,0(a4)
    8003fe80:	8b32                	mv	s6,a2
    8003fe82:	6710                	ld	a2,8(a4)
    8003fe84:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:44096
    A = JS_UNDEFINED;
    8003fe86:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:44098
    result = JS_UNDEFINED;
    8003fe88:	e102                	sd	zero,128(sp)
quickjs-nuttx/quickjs.c:44100
    S = JS_ToString(ctx, argv[0]);
    8003fe8a:	8f3e00ef          	jal	ra,8002077c <JS_ToString>
    8003fe8e:	f4ae                	sd	a1,104(sp)
    8003fe90:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:44101
    if (JS_IsException(S))
    8003fe92:	2581                	sext.w	a1,a1
    8003fe94:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:44100
    S = JS_ToString(ctx, argv[0]);
    8003fe96:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:44101
    if (JS_IsException(S))
    8003fe98:	23758963          	beq	a1,s7,800400ca <js_regexp_Symbol_match+0x296>
quickjs-nuttx/quickjs.c:44104
    flags = JS_GetProperty(ctx, rx, JS_ATOM_flags);
    8003fe9c:	67a6                	ld	a5,72(sp)
    8003fe9e:	6706                	ld	a4,64(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003fea0:	4801                	li	a6,0
    8003fea2:	863e                	mv	a2,a5
    8003fea4:	06e00693          	li	a3,110
    8003fea8:	85ba                	mv	a1,a4
    8003feaa:	8522                	mv	a0,s0
    8003feac:	fe3e                	sd	a5,312(sp)
    8003feae:	fa3a                	sd	a4,304(sp)
    8003feb0:	bfbd60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.c:44105
    if (JS_IsException(flags))
    8003feb4:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003feb8:	862e                	mv	a2,a1
    8003feba:	89aa                	mv	s3,a0
    8003febc:	892e                	mv	s2,a1
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.c:44105
    8003febe:	21778b63          	beq	a5,s7,800400d4 <js_regexp_Symbol_match+0x2a0>
quickjs-nuttx/quickjs.c:44107
    flags = JS_ToStringFree(ctx, flags);
    8003fec2:	85aa                	mv	a1,a0
    8003fec4:	8522                	mv	a0,s0
    8003fec6:	8c1e00ef          	jal	ra,80020786 <JS_ToStringFree>
    8003feca:	f8aa                	sd	a0,112(sp)
    8003fecc:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:44108
    if (JS_IsException(flags))
    8003fece:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44107
    flags = JS_ToStringFree(ctx, flags);
    8003fed2:	89aa                	mv	s3,a0
    8003fed4:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:44108
    if (JS_IsException(flags))
    8003fed6:	1f778f63          	beq	a5,s7,800400d4 <js_regexp_Symbol_match+0x2a0>
quickjs-nuttx/quickjs.c:44113
    global = (-1 != string_indexof_char(p, 'g', 0));
    8003feda:	4601                	li	a2,0
    8003fedc:	06700593          	li	a1,103
    8003fee0:	ac4c80ef          	jal	ra,800081a4 <string_indexof_char>
quickjs-nuttx/quickjs.c:44114
    if (!global) {
    8003fee4:	04951f63          	bne	a0,s1,8003ff42 <js_regexp_Symbol_match+0x10e>
quickjs-nuttx/quickjs.c:44115
        A = JS_RegExpExec(ctx, rx, S);
    8003fee8:	7686                	ld	a3,96(sp)
    8003feea:	7726                	ld	a4,104(sp)
    8003feec:	6586                	ld	a1,64(sp)
    8003feee:	6626                	ld	a2,72(sp)
    8003fef0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44098
    result = JS_UNDEFINED;
    8003fef2:	4d0d                	li	s10,3
quickjs-nuttx/quickjs.c:44115
        A = JS_RegExpExec(ctx, rx, S);
    8003fef4:	b5bff0ef          	jal	ra,8003fa4e <JS_RegExpExec>
    8003fef8:	e8aa                	sd	a0,80(sp)
    8003fefa:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:44156
    JS_FreeValue(ctx, result);
    8003fefc:	658a                	ld	a1,128(sp)
    8003fefe:	866a                	mv	a2,s10
    8003ff00:	8522                	mv	a0,s0
    8003ff02:	89dcb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44157
    JS_FreeValue(ctx, flags);
    8003ff06:	75c6                	ld	a1,112(sp)
    8003ff08:	7666                	ld	a2,120(sp)
    8003ff0a:	8522                	mv	a0,s0
    8003ff0c:	893cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44158
    JS_FreeValue(ctx, S);
    8003ff10:	7626                	ld	a2,104(sp)
    8003ff12:	85d2                	mv	a1,s4
    8003ff14:	8522                	mv	a0,s0
    8003ff16:	889cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44159
    return A;
    8003ff1a:	67c6                	ld	a5,80(sp)
    8003ff1c:	f626                	sd	s1,296(sp)
    8003ff1e:	f23e                	sd	a5,288(sp)
quickjs-nuttx/quickjs.c:44167
}
    8003ff20:	70ba                	ld	ra,424(sp)
    8003ff22:	741a                	ld	s0,416(sp)
    8003ff24:	7512                	ld	a0,288(sp)
    8003ff26:	75b2                	ld	a1,296(sp)
    8003ff28:	64fa                	ld	s1,408(sp)
    8003ff2a:	695a                	ld	s2,400(sp)
    8003ff2c:	69ba                	ld	s3,392(sp)
    8003ff2e:	6a1a                	ld	s4,384(sp)
    8003ff30:	7af6                	ld	s5,376(sp)
    8003ff32:	7b56                	ld	s6,368(sp)
    8003ff34:	7bb6                	ld	s7,360(sp)
    8003ff36:	7c16                	ld	s8,352(sp)
    8003ff38:	6cf6                	ld	s9,344(sp)
    8003ff3a:	6d56                	ld	s10,336(sp)
    8003ff3c:	6db6                	ld	s11,328(sp)
    8003ff3e:	615d                	addi	sp,sp,432
    8003ff40:	8082                	ret
quickjs-nuttx/quickjs.c:44117
        fullUnicode = JS_ToBoolFree(ctx, JS_GetProperty(ctx, rx, JS_ATOM_unicode));
    8003ff42:	6706                	ld	a4,64(sp)
    8003ff44:	67a6                	ld	a5,72(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003ff46:	4801                	li	a6,0
    8003ff48:	07000693          	li	a3,112
    8003ff4c:	863e                	mv	a2,a5
    8003ff4e:	85ba                	mv	a1,a4
    8003ff50:	8522                	mv	a0,s0
    8003ff52:	fa3a                	sd	a4,304(sp)
    8003ff54:	fe3e                	sd	a5,312(sp)
    8003ff56:	b55d60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003ff5a:	862e                	mv	a2,a1
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.c:44117
    8003ff5c:	85aa                	mv	a1,a0
    8003ff5e:	8522                	mv	a0,s0
    8003ff60:	bb5cb0ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    8003ff64:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:44118
        if (fullUnicode < 0)
    8003ff66:	16054763          	bltz	a0,800400d4 <js_regexp_Symbol_match+0x2a0>
quickjs-nuttx/quickjs.c:44121
        if (JS_SetProperty(ctx, rx, JS_ATOM_lastIndex, JS_NewInt32(ctx, 0)) < 0)
    8003ff6a:	6586                	ld	a1,64(sp)
    8003ff6c:	6626                	ld	a2,72(sp)
    8003ff6e:	4701                	li	a4,0
    8003ff70:	4781                	li	a5,0
    8003ff72:	05600693          	li	a3,86
    8003ff76:	8522                	mv	a0,s0
    8003ff78:	c95f70ef          	jal	ra,80037c0c <JS_SetProperty>
    8003ff7c:	14054c63          	bltz	a0,800400d4 <js_regexp_Symbol_match+0x2a0>
quickjs-nuttx/quickjs.c:44123
        A = JS_NewArray(ctx);
    8003ff80:	8522                	mv	a0,s0
    8003ff82:	ad8dc0ef          	jal	ra,8001c25a <JS_NewArray>
    8003ff86:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:44124
        if (JS_IsException(A))
    8003ff88:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44123
        A = JS_NewArray(ctx);
    8003ff8c:	8aae                	mv	s5,a1
    8003ff8e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:44098
    result = JS_UNDEFINED;
    8003ff90:	4d0d                	li	s10,3
quickjs-nuttx/quickjs.c:44124
        if (JS_IsException(A))
    8003ff92:	0f778063          	beq	a5,s7,80040072 <js_regexp_Symbol_match+0x23e>
quickjs-nuttx/quickjs.c:44126
        n = 0;
    8003ff96:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:44130
            if (JS_IsException(result))
    8003ff98:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:44132
            if (JS_IsNull(result))
    8003ff9a:	4d89                	li	s11,2
quickjs-nuttx/quickjs.c:44128
            JS_FreeValue(ctx, result);
    8003ff9c:	658a                	ld	a1,128(sp)
    8003ff9e:	866a                	mv	a2,s10
    8003ffa0:	8522                	mv	a0,s0
    8003ffa2:	ffccb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44129
            result = JS_RegExpExec(ctx, rx, S);
    8003ffa6:	7726                	ld	a4,104(sp)
    8003ffa8:	6586                	ld	a1,64(sp)
    8003ffaa:	86d2                	mv	a3,s4
    8003ffac:	865a                	mv	a2,s6
    8003ffae:	8522                	mv	a0,s0
    8003ffb0:	e4da                	sd	s6,72(sp)
    8003ffb2:	a9dff0ef          	jal	ra,8003fa4e <JS_RegExpExec>
    8003ffb6:	e12a                	sd	a0,128(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003ffb8:	0005879b          	sext.w	a5,a1
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.c:44129
    8003ffbc:	8d2e                	mv	s10,a1
quickjs-nuttx/quickjs.c:44130
            if (JS_IsException(result))
    8003ffbe:	0b978a63          	beq	a5,s9,80040072 <js_regexp_Symbol_match+0x23e>
quickjs-nuttx/quickjs.c:44132
            if (JS_IsNull(result))
    8003ffc2:	0fb78a63          	beq	a5,s11,800400b6 <js_regexp_Symbol_match+0x282>
quickjs-nuttx/quickjs.c:44134
            matchStr = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, result, 0));
    8003ffc6:	4681                	li	a3,0
    8003ffc8:	85aa                	mv	a1,a0
    8003ffca:	866a                	mv	a2,s10
    8003ffcc:	8522                	mv	a0,s0
    8003ffce:	a15f90ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    8003ffd2:	862e                	mv	a2,a1
    8003ffd4:	85aa                	mv	a1,a0
    8003ffd6:	8522                	mv	a0,s0
    8003ffd8:	faee00ef          	jal	ra,80020786 <JS_ToStringFree>
    8003ffdc:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:44135
            if (JS_IsException(matchStr))
    8003ffde:	0005869b          	sext.w	a3,a1
    8003ffe2:	e82e                	sd	a1,16(sp)
    8003ffe4:	09968763          	beq	a3,s9,80040072 <js_regexp_Symbol_match+0x23e>
quickjs-nuttx/quickjs.c:44137
            isEmpty = JS_IsEmptyString(matchStr);
    8003ffe8:	c5fc70ef          	jal	ra,80007c46 <JS_IsEmptyString>
quickjs-nuttx/quickjs.c:44138
            if (JS_SetPropertyInt64(ctx, A, n++, matchStr) < 0)
    8003ffec:	001b879b          	addiw	a5,s7,1
    8003fff0:	e03e                	sd	a5,0(sp)
    8003fff2:	6762                	ld	a4,24(sp)
    8003fff4:	67c2                	ld	a5,16(sp)
    8003fff6:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:44137
            isEmpty = JS_IsEmptyString(matchStr);
    8003fff8:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:44138
            if (JS_SetPropertyInt64(ctx, A, n++, matchStr) < 0)
    8003fffa:	86de                	mv	a3,s7
    8003fffc:	8656                	mv	a2,s5
    8003fffe:	8522                	mv	a0,s0
