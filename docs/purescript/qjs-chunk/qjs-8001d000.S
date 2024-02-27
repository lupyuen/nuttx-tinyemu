    8001c000:	00f70c63          	beq	a4,a5,8001c018 <JS_GetImportMeta+0x44>
quickjs-nuttx/quickjs.c:28341
        m->meta_obj = obj;
    8001c004:	10a43423          	sd	a0,264(s0)
    8001c008:	10b43823          	sd	a1,272(s0)
quickjs-nuttx/quickjs.c:28344
}
    8001c00c:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:28343
    return JS_DupValue(ctx, obj);
    8001c00e:	6502                	ld	a0,0(sp)
quickjs-nuttx/quickjs.c:28344
}
    8001c010:	70e2                	ld	ra,56(sp)
    8001c012:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:28343
    return JS_DupValue(ctx, obj);
    8001c014:	c06ee06f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:28344 (discriminator 2)
}
    8001c018:	70e2                	ld	ra,56(sp)
    8001c01a:	7442                	ld	s0,48(sp)
    8001c01c:	4501                	li	a0,0
    8001c01e:	4599                	li	a1,6
    8001c020:	6121                	addi	sp,sp,64
    8001c022:	8082                	ret

000000008001c024 <JS_NewObject>:
JS_NewObject():
quickjs-nuttx/quickjs.c:4936
    return JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT], JS_CLASS_OBJECT);
    8001c024:	613c                	ld	a5,64(a0)
quickjs-nuttx/quickjs.c:4934
{
    8001c026:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:4936
    return JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT], JS_CLASS_OBJECT);
    8001c028:	4685                	li	a3,1
    8001c02a:	6b8c                	ld	a1,16(a5)
    8001c02c:	6f90                	ld	a2,24(a5)
quickjs-nuttx/quickjs.c:4937
}
    8001c02e:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:4936
    return JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT], JS_CLASS_OBJECT);
    8001c030:	bb5ff06f          	j	8001bbe4 <JS_NewObjectProtoClass>

000000008001c034 <js_create_module_function>:
js_create_module_function():
quickjs-nuttx/quickjs.c:28024
    if (m->func_created)
    8001c034:	0825c783          	lbu	a5,130(a1)
    8001c038:	c399                	beqz	a5,8001c03e <js_create_module_function+0xa>
quickjs-nuttx/quickjs.c:28025
        return 0;
    8001c03a:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:28055
}    
    8001c03c:	8082                	ret
quickjs-nuttx/quickjs.c:28019
{
    8001c03e:	711d                	addi	sp,sp,-96
    8001c040:	e8a2                	sd	s0,80(sp)
    8001c042:	e4a6                	sd	s1,72(sp)
    8001c044:	e0ca                	sd	s2,64(sp)
    8001c046:	ec86                	sd	ra,88(sp)
    8001c048:	fc4e                	sd	s3,56(sp)
    8001c04a:	f852                	sd	s4,48(sp)
    8001c04c:	f456                	sd	s5,40(sp)
quickjs-nuttx/quickjs.c:28029
    if (is_c_module) {
    8001c04e:	7dbc                	ld	a5,120(a1)
    8001c050:	84aa                	mv	s1,a0
    8001c052:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:28031
        for(i = 0; i < m->export_entries_count; i++) {
    8001c054:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:28029
    if (is_c_module) {
    8001c056:	ebbd                	bnez	a5,8001c0cc <js_create_module_function+0x98>
js_create_module_bytecode_function():
quickjs-nuttx/quickjs.c:27974
    bfunc = m->func_obj;
    8001c058:	79bc                	ld	a5,112(a1)
    8001c05a:	0685b903          	ld	s2,104(a1)
quickjs-nuttx/quickjs.c:27975
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    8001c05e:	6930                	ld	a2,80(a0)
    8001c060:	652c                	ld	a1,72(a0)
    8001c062:	46b5                	li	a3,13
quickjs-nuttx/quickjs.c:27974
    bfunc = m->func_obj;
    8001c064:	ec3e                	sd	a5,24(sp)
    8001c066:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:27975
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    8001c068:	b7dff0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8001c06c:	e42e                	sd	a1,8(sp)
    8001c06e:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:27978
    if (JS_IsException(func_obj))
    8001c070:	2581                	sext.w	a1,a1
    8001c072:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:27975
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    8001c074:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:27978
    if (JS_IsException(func_obj))
    8001c076:	04f58663          	beq	a1,a5,8001c0c2 <js_create_module_function+0x8e>
quickjs-nuttx/quickjs.c:27983
    p->u.func.function_bytecode = b;
    8001c07a:	0329b823          	sd	s2,48(s3)
quickjs-nuttx/quickjs.c:27984
    b->header.ref_count++;
    8001c07e:	00092783          	lw	a5,0(s2)
    8001c082:	2785                	addiw	a5,a5,1
    8001c084:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:27985
    p->u.func.home_object = NULL;
    8001c088:	0409b023          	sd	zero,64(s3)
quickjs-nuttx/quickjs.c:27986
    p->u.func.var_refs = NULL;
    8001c08c:	0209bc23          	sd	zero,56(s3)
quickjs-nuttx/quickjs.c:27987
    if (b->closure_var_count) {
    8001c090:	05c92583          	lw	a1,92(s2)
    8001c094:	e1a5                	bnez	a1,8001c0f4 <js_create_module_function+0xc0>
quickjs-nuttx/quickjs.c:28009
    m->func_obj = func_obj;
    8001c096:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:28010
    JS_FreeValue(ctx, bfunc);
    8001c098:	65c2                	ld	a1,16(sp)
    8001c09a:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:28009
    m->func_obj = func_obj;
    8001c09c:	f43c                	sd	a5,104(s0)
    8001c09e:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:28010
    JS_FreeValue(ctx, bfunc);
    8001c0a0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:28009
    m->func_obj = func_obj;
    8001c0a2:	f83c                	sd	a5,112(s0)
quickjs-nuttx/quickjs.c:28010
    JS_FreeValue(ctx, bfunc);
    8001c0a4:	efaef0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28011
    return 0;
    8001c0a8:	a02d                	j	8001c0d2 <js_create_module_function+0x9e>
js_create_module_function():
quickjs-nuttx/quickjs.c:28032
            JSExportEntry *me = &m->export_entries[i];
    8001c0aa:	741c                	ld	a5,40(s0)
    8001c0ac:	00591993          	slli	s3,s2,0x5
    8001c0b0:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:28033
            if (me->export_type == JS_EXPORT_TYPE_LOCAL) {
    8001c0b2:	0109a783          	lw	a5,16(s3)
    8001c0b6:	eb91                	bnez	a5,8001c0ca <js_create_module_function+0x96>
quickjs-nuttx/quickjs.c:28034
                var_ref = js_create_module_var(ctx, FALSE);
    8001c0b8:	4581                	li	a1,0
    8001c0ba:	8526                	mv	a0,s1
    8001c0bc:	b2ffe0ef          	jal	ra,8001abea <js_create_module_var>
quickjs-nuttx/quickjs.c:28035
                if (!var_ref)
    8001c0c0:	e119                	bnez	a0,8001c0c6 <js_create_module_function+0x92>
quickjs-nuttx/quickjs.c:28042
            return -1;
    8001c0c2:	557d                	li	a0,-1
    8001c0c4:	a839                	j	8001c0e2 <js_create_module_function+0xae>
quickjs-nuttx/quickjs.c:28037
                me->u.local.var_ref = var_ref;
    8001c0c6:	00a9b423          	sd	a0,8(s3)
quickjs-nuttx/quickjs.c:28031 (discriminator 2)
        for(i = 0; i < m->export_entries_count; i++) {
    8001c0ca:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:28031 (discriminator 1)
    8001c0cc:	581c                	lw	a5,48(s0)
    8001c0ce:	fcf94ee3          	blt	s2,a5,8001c0aa <js_create_module_function+0x76>
quickjs-nuttx/quickjs.c:28044
    m->func_created = TRUE;
    8001c0d2:	4785                	li	a5,1
    8001c0d4:	08f40123          	sb	a5,130(s0)
quickjs-nuttx/quickjs.c:28048
    for(i = 0; i < m->req_module_entries_count; i++) {
    8001c0d8:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:28048 (discriminator 1)
    8001c0da:	501c                	lw	a5,32(s0)
    8001c0dc:	06f94563          	blt	s2,a5,8001c146 <js_create_module_function+0x112>
quickjs-nuttx/quickjs.c:28025
        return 0;
    8001c0e0:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:28055
}    
    8001c0e2:	60e6                	ld	ra,88(sp)
    8001c0e4:	6446                	ld	s0,80(sp)
    8001c0e6:	64a6                	ld	s1,72(sp)
    8001c0e8:	6906                	ld	s2,64(sp)
    8001c0ea:	79e2                	ld	s3,56(sp)
    8001c0ec:	7a42                	ld	s4,48(sp)
    8001c0ee:	7aa2                	ld	s5,40(sp)
    8001c0f0:	6125                	addi	sp,sp,96
    8001c0f2:	8082                	ret
js_create_module_bytecode_function():
quickjs-nuttx/quickjs.c:27988
        var_refs = js_mallocz(ctx, sizeof(var_refs[0]) * b->closure_var_count);
    8001c0f4:	058e                	slli	a1,a1,0x3
    8001c0f6:	8526                	mv	a0,s1
    8001c0f8:	840ff0ef          	jal	ra,8001b138 <js_mallocz>
    8001c0fc:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:27989
        if (!var_refs)
    8001c0fe:	cd15                	beqz	a0,8001c13a <js_create_module_function+0x106>
quickjs-nuttx/quickjs.c:27991
        p->u.func.var_refs = var_refs;
    8001c100:	02a9bc23          	sd	a0,56(s3)
quickjs-nuttx/quickjs.c:27995
        for(i = 0; i < b->closure_var_count; i++) {
    8001c104:	4981                	li	s3,0
    8001c106:	05c92783          	lw	a5,92(s2)
    8001c10a:	f8f9d6e3          	bge	s3,a5,8001c096 <js_create_module_function+0x62>
quickjs-nuttx/quickjs.c:27996
            JSClosureVar *cv = &b->closure_var[i];
    8001c10e:	03893783          	ld	a5,56(s2)
    8001c112:	00399a93          	slli	s5,s3,0x3
    8001c116:	97d6                	add	a5,a5,s5
quickjs-nuttx/quickjs.c:27998
            if (cv->is_local) {
    8001c118:	0007c703          	lbu	a4,0(a5) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    8001c11c:	8b05                	andi	a4,a4,1
    8001c11e:	cf01                	beqz	a4,8001c136 <js_create_module_function+0x102>
quickjs-nuttx/quickjs.c:27999
                var_ref = js_create_module_var(ctx, cv->is_lexical);
    8001c120:	438c                	lw	a1,0(a5)
    8001c122:	8526                	mv	a0,s1
    8001c124:	0035d59b          	srliw	a1,a1,0x3
    8001c128:	8985                	andi	a1,a1,1
    8001c12a:	ac1fe0ef          	jal	ra,8001abea <js_create_module_var>
quickjs-nuttx/quickjs.c:28000
                if (!var_ref)
    8001c12e:	c511                	beqz	a0,8001c13a <js_create_module_function+0x106>
quickjs-nuttx/quickjs.c:28005
                var_refs[i] = var_ref;
    8001c130:	9ad2                	add	s5,s5,s4
    8001c132:	00aab023          	sd	a0,0(s5)
quickjs-nuttx/quickjs.c:27995
        for(i = 0; i < b->closure_var_count; i++) {
    8001c136:	2985                	addiw	s3,s3,1
    8001c138:	b7f9                	j	8001c106 <js_create_module_function+0xd2>
quickjs-nuttx/quickjs.c:28013
    JS_FreeValue(ctx, func_obj);
    8001c13a:	6582                	ld	a1,0(sp)
    8001c13c:	6622                	ld	a2,8(sp)
    8001c13e:	8526                	mv	a0,s1
    8001c140:	e5eef0ef          	jal	ra,8000b79e <JS_FreeValue>
    8001c144:	bfbd                	j	8001c0c2 <js_create_module_function+0x8e>
js_create_module_function():
quickjs-nuttx/quickjs.c:28050
        if (js_create_module_function(ctx, rme->module) < 0)
    8001c146:	6c1c                	ld	a5,24(s0)
    8001c148:	00491713          	slli	a4,s2,0x4
    8001c14c:	8526                	mv	a0,s1
    8001c14e:	97ba                	add	a5,a5,a4
    8001c150:	678c                	ld	a1,8(a5)
    8001c152:	ee3ff0ef          	jal	ra,8001c034 <js_create_module_function>
    8001c156:	f60546e3          	bltz	a0,8001c0c2 <js_create_module_function+0x8e>
quickjs-nuttx/quickjs.c:28048 (discriminator 2)
    for(i = 0; i < m->req_module_entries_count; i++) {
    8001c15a:	2905                	addiw	s2,s2,1
    8001c15c:	bfbd                	j	8001c0da <js_create_module_function+0xa6>

000000008001c15e <js_proxy_constructor>:
js_proxy_constructor():
quickjs-nuttx/quickjs.c:46557
{
    8001c15e:	7171                	addi	sp,sp,-176
    8001c160:	f506                	sd	ra,168(sp)
    8001c162:	f122                	sd	s0,160(sp)
    8001c164:	ed26                	sd	s1,152(sp)
    8001c166:	e94a                	sd	s2,144(sp)
    8001c168:	e54e                	sd	s3,136(sp)
    8001c16a:	e152                	sd	s4,128(sp)
    8001c16c:	fcd6                	sd	s5,120(sp)
    8001c16e:	f8da                	sd	s6,112(sp)
    8001c170:	f4de                	sd	s7,104(sp)
quickjs-nuttx/quickjs.c:46562
    target = argv[0];
    8001c172:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:46563
    handler = argv[1];
    8001c174:	01873903          	ld	s2,24(a4) # ffffffff9e370018 <_ebss+0xffffffff1e26eeb2>
quickjs-nuttx/quickjs.c:46562
    target = argv[0];
    8001c178:	00073a83          	ld	s5,0(a4)
quickjs-nuttx/quickjs.c:46563
    handler = argv[1];
    8001c17c:	6b14                	ld	a3,16(a4)
    8001c17e:	f44a                	sd	s2,40(sp)
quickjs-nuttx/quickjs.c:46564
    if (JS_VALUE_GET_TAG(target) != JS_TAG_OBJECT ||
    8001c180:	00f97933          	and	s2,s2,a5
quickjs-nuttx/quickjs.c:46562
    target = argv[0];
    8001c184:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:46557
{
    8001c186:	e02e                	sd	a1,0(sp)
    8001c188:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:46562
    target = argv[0];
    8001c18a:	e856                	sd	s5,16(sp)
quickjs-nuttx/quickjs.c:46563
    handler = argv[1];
    8001c18c:	f036                	sd	a3,32(sp)
quickjs-nuttx/quickjs.c:46564
    if (JS_VALUE_GET_TAG(target) != JS_TAG_OBJECT ||
    8001c18e:	2901                	sext.w	s2,s2
    8001c190:	57fd                	li	a5,-1
    8001c192:	00f90e63          	beq	s2,a5,8001c1ae <js_proxy_constructor+0x50>
quickjs-nuttx/quickjs.c:46583
}
    8001c196:	740a                	ld	s0,160(sp)
    8001c198:	70aa                	ld	ra,168(sp)
    8001c19a:	64ea                	ld	s1,152(sp)
    8001c19c:	694a                	ld	s2,144(sp)
    8001c19e:	69aa                	ld	s3,136(sp)
    8001c1a0:	6a0a                	ld	s4,128(sp)
    8001c1a2:	7ae6                	ld	s5,120(sp)
    8001c1a4:	7b46                	ld	s6,112(sp)
    8001c1a6:	7ba6                	ld	s7,104(sp)
    8001c1a8:	614d                	addi	sp,sp,176
quickjs-nuttx/quickjs.c:46566
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8001c1aa:	a81fc06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:46568
    obj = JS_NewObjectProtoClass(ctx, JS_NULL, JS_CLASS_PROXY);
    8001c1ae:	4789                	li	a5,2
    8001c1b0:	03000693          	li	a3,48
    8001c1b4:	4581                	li	a1,0
    8001c1b6:	4609                	li	a2,2
    8001c1b8:	8a2a                	mv	s4,a0
    8001c1ba:	e082                	sd	zero,64(sp)
    8001c1bc:	e4be                	sd	a5,72(sp)
    8001c1be:	a27ff0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8001c1c2:	f82a                	sd	a0,48(sp)
    8001c1c4:	fc2e                	sd	a1,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8001c1c6:	00058b1b          	sext.w	s6,a1
js_proxy_constructor():
quickjs-nuttx/quickjs.c:46569
    if (JS_IsException(obj))
    8001c1ca:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:46568
    obj = JS_NewObjectProtoClass(ctx, JS_NULL, JS_CLASS_PROXY);
    8001c1cc:	84aa                	mv	s1,a0
    8001c1ce:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:46569
    if (JS_IsException(obj))
    8001c1d0:	017b1563          	bne	s6,s7,8001c1da <js_proxy_constructor+0x7c>
quickjs-nuttx/quickjs.c:46582
    return obj;
    8001c1d4:	e8a6                	sd	s1,80(sp)
    8001c1d6:	ecce                	sd	s3,88(sp)
    8001c1d8:	a839                	j	8001c1f6 <js_proxy_constructor+0x98>
quickjs-nuttx/quickjs.c:46571
    s = js_malloc(ctx, sizeof(JSProxyData));
    8001c1da:	02800593          	li	a1,40
    8001c1de:	8552                	mv	a0,s4
    8001c1e0:	f25fd0ef          	jal	ra,8001a104 <js_malloc>
    8001c1e4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46572
    if (!s) {
    8001c1e6:	e50d                	bnez	a0,8001c210 <js_proxy_constructor+0xb2>
quickjs-nuttx/quickjs.c:46573
        JS_FreeValue(ctx, obj);
    8001c1e8:	75c2                	ld	a1,48(sp)
    8001c1ea:	7662                	ld	a2,56(sp)
    8001c1ec:	8552                	mv	a0,s4
    8001c1ee:	db0ef0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46574
        return JS_EXCEPTION;
    8001c1f2:	e882                	sd	zero,80(sp)
    8001c1f4:	ecde                	sd	s7,88(sp)
quickjs-nuttx/quickjs.c:46583 (discriminator 1)
}
    8001c1f6:	70aa                	ld	ra,168(sp)
    8001c1f8:	740a                	ld	s0,160(sp)
    8001c1fa:	6546                	ld	a0,80(sp)
    8001c1fc:	65e6                	ld	a1,88(sp)
    8001c1fe:	64ea                	ld	s1,152(sp)
    8001c200:	694a                	ld	s2,144(sp)
    8001c202:	69aa                	ld	s3,136(sp)
    8001c204:	6a0a                	ld	s4,128(sp)
    8001c206:	7ae6                	ld	s5,120(sp)
    8001c208:	7b46                	ld	s6,112(sp)
    8001c20a:	7ba6                	ld	s7,104(sp)
    8001c20c:	614d                	addi	sp,sp,176
    8001c20e:	8082                	ret
quickjs-nuttx/quickjs.c:46576
    s->target = JS_DupValue(ctx, target);
    8001c210:	6542                	ld	a0,16(sp)
    8001c212:	65e2                	ld	a1,24(sp)
    8001c214:	a06ee0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001c218:	e008                	sd	a0,0(s0)
    8001c21a:	e40c                	sd	a1,8(s0)
quickjs-nuttx/quickjs.c:46577
    s->handler = JS_DupValue(ctx, handler);
    8001c21c:	7502                	ld	a0,32(sp)
    8001c21e:	75a2                	ld	a1,40(sp)
    8001c220:	9faee0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001c224:	ec0c                	sd	a1,24(s0)
quickjs-nuttx/quickjs.c:46578
    s->is_func = JS_IsFunction(ctx, target);
    8001c226:	6662                	ld	a2,24(sp)
    8001c228:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:46577
    s->handler = JS_DupValue(ctx, handler);
    8001c22a:	e808                	sd	a0,16(s0)
quickjs-nuttx/quickjs.c:46578
    s->is_func = JS_IsFunction(ctx, target);
    8001c22c:	8552                	mv	a0,s4
    8001c22e:	a74f20ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8001c232:	02a40023          	sb	a0,32(s0)
quickjs-nuttx/quickjs.c:46579
    s->is_revoked = FALSE;
    8001c236:	020400a3          	sb	zero,33(s0)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8001c23a:	f92b1de3          	bne	s6,s2,8001c1d4 <js_proxy_constructor+0x76>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    8001c23e:	f880                	sd	s0,48(s1)
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    8001c240:	000ab783          	ld	a5,0(s5)
JS_SetConstructorBit():
quickjs-nuttx/quickjs.c:9768
    p->is_constructor = val;
    8001c244:	0054c703          	lbu	a4,5(s1)
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    8001c248:	93b1                	srli	a5,a5,0x2c
JS_SetConstructorBit():
quickjs-nuttx/quickjs.c:9768
    p->is_constructor = val;
    8001c24a:	8b85                	andi	a5,a5,1
    8001c24c:	0047979b          	slliw	a5,a5,0x4
    8001c250:	9b3d                	andi	a4,a4,-17
    8001c252:	8fd9                	or	a5,a5,a4
    8001c254:	00f482a3          	sb	a5,5(s1)
quickjs-nuttx/quickjs.c:9769
    return TRUE;
    8001c258:	bfb5                	j	8001c1d4 <js_proxy_constructor+0x76>

000000008001c25a <JS_NewArray>:
JS_NewArray():
quickjs-nuttx/quickjs.c:4929
    return JS_NewObjectFromShape(ctx, js_dup_shape(ctx->array_shape),
    8001c25a:	7d0c                	ld	a1,56(a0)
quickjs-nuttx/quickjs.c:4928
{
    8001c25c:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:4929
    return JS_NewObjectFromShape(ctx, js_dup_shape(ctx->array_shape),
    8001c25e:	4609                	li	a2,2
js_dup_shape():
quickjs-nuttx/quickjs.c:4426
    sh->header.ref_count++;
    8001c260:	419c                	lw	a5,0(a1)
    8001c262:	2785                	addiw	a5,a5,1
    8001c264:	c19c                	sw	a5,0(a1)
JS_NewArray():
quickjs-nuttx/quickjs.c:4931
}
    8001c266:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:4929
    return JS_NewObjectFromShape(ctx, js_dup_shape(ctx->array_shape),
    8001c268:	819ff06f          	j	8001ba80 <JS_NewObjectFromShape>

000000008001c26c <convert_fast_array_to_array>:
convert_fast_array_to_array():
quickjs-nuttx/quickjs.c:8071
{
    8001c26c:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:8077
    if (js_shape_prepare_update(ctx, p, NULL))
    8001c26e:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:8071
{
    8001c270:	f822                	sd	s0,48(sp)
    8001c272:	f04a                	sd	s2,32(sp)
    8001c274:	fc06                	sd	ra,56(sp)
    8001c276:	f426                	sd	s1,40(sp)
    8001c278:	ec4e                	sd	s3,24(sp)
    8001c27a:	e852                	sd	s4,16(sp)
    8001c27c:	e456                	sd	s5,8(sp)
    8001c27e:	e05a                	sd	s6,0(sp)
    8001c280:	892a                	mv	s2,a0
    8001c282:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:8077
    if (js_shape_prepare_update(ctx, p, NULL))
    8001c284:	9cefe0ef          	jal	ra,8001a452 <js_shape_prepare_update>
    8001c288:	cd09                	beqz	a0,8001c2a2 <convert_fast_array_to_array+0x36>
quickjs-nuttx/quickjs.c:8078
        return -1;
    8001c28a:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:8101
}
    8001c28c:	70e2                	ld	ra,56(sp)
    8001c28e:	7442                	ld	s0,48(sp)
    8001c290:	7902                	ld	s2,32(sp)
    8001c292:	69e2                	ld	s3,24(sp)
    8001c294:	6a42                	ld	s4,16(sp)
    8001c296:	6aa2                	ld	s5,8(sp)
    8001c298:	6b02                	ld	s6,0(sp)
    8001c29a:	8526                	mv	a0,s1
    8001c29c:	74a2                	ld	s1,40(sp)
    8001c29e:	6121                	addi	sp,sp,64
    8001c2a0:	8082                	ret
quickjs-nuttx/quickjs.c:8081
    sh = p->shape;
    8001c2a2:	6c1c                	ld	a5,24(s0)
quickjs-nuttx/quickjs.c:8079
    len = p->u.array.count;
    8001c2a4:	04042a03          	lw	s4,64(s0)
    8001c2a8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:8082
    new_count = sh->prop_count + len;
    8001c2aa:	5794                	lw	a3,40(a5)
quickjs-nuttx/quickjs.c:8083
    if (new_count > sh->prop_size) {
    8001c2ac:	53dc                	lw	a5,36(a5)
quickjs-nuttx/quickjs.c:8082
    new_count = sh->prop_count + len;
    8001c2ae:	014686bb          	addw	a3,a3,s4
quickjs-nuttx/quickjs.c:8083
    if (new_count > sh->prop_size) {
    8001c2b2:	02d7eb63          	bltu	a5,a3,8001c2e8 <convert_fast_array_to_array+0x7c>
quickjs-nuttx/quickjs.c:8088
    tab = p->u.array.u.values;
    8001c2b6:	03843a83          	ld	s5,56(s0)
quickjs-nuttx/quickjs.c:8089
    for(i = 0; i < len; i++) {
    8001c2ba:	4981                	li	s3,0
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8001c2bc:	80000b37          	lui	s6,0x80000
    8001c2c0:	0009861b          	sext.w	a2,s3
convert_fast_array_to_array():
quickjs-nuttx/quickjs.c:8089 (discriminator 1)
    for(i = 0; i < len; i++) {
    8001c2c4:	03466a63          	bltu	a2,s4,8001c2f8 <convert_fast_array_to_array+0x8c>
quickjs-nuttx/quickjs.c:8095
    js_free(ctx, p->u.array.u.values);
    8001c2c8:	7c0c                	ld	a1,56(s0)
    8001c2ca:	854a                	mv	a0,s2
    8001c2cc:	d2bee0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:8099
    p->fast_array = 0;
    8001c2d0:	00544783          	lbu	a5,5(s0)
quickjs-nuttx/quickjs.c:8096
    p->u.array.count = 0;
    8001c2d4:	04042023          	sw	zero,64(s0)
quickjs-nuttx/quickjs.c:8097
    p->u.array.u.values = NULL; /* fail safe */
    8001c2d8:	02043c23          	sd	zero,56(s0)
quickjs-nuttx/quickjs.c:8099
    p->fast_array = 0;
    8001c2dc:	9bdd                	andi	a5,a5,-9
quickjs-nuttx/quickjs.c:8098
    p->u.array.u1.size = 0;
    8001c2de:	02042823          	sw	zero,48(s0)
quickjs-nuttx/quickjs.c:8099
    p->fast_array = 0;
    8001c2e2:	00f402a3          	sb	a5,5(s0)
quickjs-nuttx/quickjs.c:8100
    return 0;
    8001c2e6:	b75d                	j	8001c28c <convert_fast_array_to_array+0x20>
quickjs-nuttx/quickjs.c:8084
        if (resize_properties(ctx, &p->shape, p, new_count))
    8001c2e8:	8622                	mv	a2,s0
    8001c2ea:	01840593          	addi	a1,s0,24
    8001c2ee:	854a                	mv	a0,s2
    8001c2f0:	ac6ff0ef          	jal	ra,8001b5b6 <resize_properties>
    8001c2f4:	d169                	beqz	a0,8001c2b6 <convert_fast_array_to_array+0x4a>
    8001c2f6:	bf51                	j	8001c28a <convert_fast_array_to_array+0x1e>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8001c2f8:	01666633          	or	a2,a2,s6
convert_fast_array_to_array():
quickjs-nuttx/quickjs.c:8092
        pr = add_property(ctx, p, __JS_AtomFromUInt32(i), JS_PROP_C_W_E);
    8001c2fc:	469d                	li	a3,7
    8001c2fe:	2601                	sext.w	a2,a2
    8001c300:	85a2                	mv	a1,s0
    8001c302:	854a                	mv	a0,s2
    8001c304:	d1eff0ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:8093
        pr->u.value = *tab++;
    8001c308:	00499793          	slli	a5,s3,0x4
    8001c30c:	97d6                	add	a5,a5,s5
    8001c30e:	6398                	ld	a4,0(a5)
    8001c310:	0985                	addi	s3,s3,1
    8001c312:	e118                	sd	a4,0(a0)
    8001c314:	679c                	ld	a5,8(a5)
    8001c316:	e51c                	sd	a5,8(a0)
quickjs-nuttx/quickjs.c:8089
    for(i = 0; i < len; i++) {
    8001c318:	b765                	j	8001c2c0 <convert_fast_array_to_array+0x54>

000000008001c31a <ident_realloc>:
ident_realloc():
quickjs-nuttx/quickjs.c:20453
{
    8001c31a:	7139                	addi	sp,sp,-64
    8001c31c:	f426                	sd	s1,40(sp)
    8001c31e:	f04a                	sd	s2,32(sp)
    8001c320:	ec4e                	sd	s3,24(sp)
    8001c322:	fc06                	sd	ra,56(sp)
    8001c324:	f822                	sd	s0,48(sp)
    8001c326:	e852                	sd	s4,16(sp)
    8001c328:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:20458
    size = *psize;
    8001c32a:	6210                	ld	a2,0(a2)
quickjs-nuttx/quickjs.c:20459
    if (size >= (SIZE_MAX / 3) * 2)
    8001c32c:	00078797          	auipc	a5,0x78
    8001c330:	8c47b783          	ld	a5,-1852(a5) # 80093bf0 <_erodata+0x7e>
quickjs-nuttx/quickjs.c:20457
    buf = *pbuf;
    8001c334:	0005ba03          	ld	s4,0(a1)
quickjs-nuttx/quickjs.c:20453
{
    8001c338:	89ae                	mv	s3,a1
    8001c33a:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:20459
    if (size >= (SIZE_MAX / 3) * 2)
    8001c33c:	00c7e563          	bltu	a5,a2,8001c346 <ident_realloc+0x2c>
quickjs-nuttx/quickjs.c:20462
        new_size = size + (size >> 1);
    8001c340:	00165493          	srli	s1,a2,0x1
    8001c344:	94b2                	add	s1,s1,a2
quickjs-nuttx/quickjs.c:20463
    if (buf == static_buf) {
    8001c346:	02da1b63          	bne	s4,a3,8001c37c <ident_realloc+0x62>
quickjs-nuttx/quickjs.c:20464
        new_buf = js_malloc(ctx, new_size);
    8001c34a:	85a6                	mv	a1,s1
    8001c34c:	e432                	sd	a2,8(sp)
    8001c34e:	db7fd0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:20465
        if (!new_buf)
    8001c352:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:20464
        new_buf = js_malloc(ctx, new_size);
    8001c354:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:20465
        if (!new_buf)
    8001c356:	e911                	bnez	a0,8001c36a <ident_realloc+0x50>
quickjs-nuttx/quickjs.c:20466
            return -1;
    8001c358:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:20476
}
    8001c35a:	70e2                	ld	ra,56(sp)
    8001c35c:	7442                	ld	s0,48(sp)
    8001c35e:	74a2                	ld	s1,40(sp)
    8001c360:	7902                	ld	s2,32(sp)
    8001c362:	69e2                	ld	s3,24(sp)
    8001c364:	6a42                	ld	s4,16(sp)
    8001c366:	6121                	addi	sp,sp,64
    8001c368:	8082                	ret
quickjs-nuttx/quickjs.c:20467
        memcpy(new_buf, buf, size);
    8001c36a:	85d2                	mv	a1,s4
    8001c36c:	241470ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:20473
    *pbuf = new_buf;
    8001c370:	0089b023          	sd	s0,0(s3)
quickjs-nuttx/quickjs.c:20474
    *psize = new_size;
    8001c374:	00993023          	sd	s1,0(s2)
quickjs-nuttx/quickjs.c:20475
    return 0;
    8001c378:	4501                	li	a0,0
    8001c37a:	b7c5                	j	8001c35a <ident_realloc+0x40>
quickjs-nuttx/quickjs.c:20469
        new_buf = js_realloc(ctx, buf, new_size);
    8001c37c:	8626                	mv	a2,s1
    8001c37e:	85d2                	mv	a1,s4
    8001c380:	a06ff0ef          	jal	ra,8001b586 <js_realloc>
    8001c384:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:20470
        if (!new_buf)
    8001c386:	f56d                	bnez	a0,8001c370 <ident_realloc+0x56>
    8001c388:	bfc1                	j	8001c358 <ident_realloc+0x3e>

000000008001c38a <delete_property>:
delete_property():
quickjs-nuttx/quickjs.c:8104
{
    8001c38a:	7119                	addi	sp,sp,-128
    8001c38c:	ecce                	sd	s3,88(sp)
quickjs-nuttx/quickjs.c:8155
        h = pr->hash_next;
    8001c38e:	040009b7          	lui	s3,0x4000
quickjs-nuttx/quickjs.c:8104
{
    8001c392:	f8a2                	sd	s0,112(sp)
    8001c394:	f4a6                	sd	s1,104(sp)
    8001c396:	e8d2                	sd	s4,80(sp)
    8001c398:	e4d6                	sd	s5,72(sp)
    8001c39a:	fc5e                	sd	s7,56(sp)
    8001c39c:	fc86                	sd	ra,120(sp)
    8001c39e:	f0ca                	sd	s2,96(sp)
    8001c3a0:	e0da                	sd	s6,64(sp)
    8001c3a2:	f862                	sd	s8,48(sp)
    8001c3a4:	f466                	sd	s9,40(sp)
    8001c3a6:	84aa                	mv	s1,a0
    8001c3a8:	842e                	mv	s0,a1
    8001c3aa:	8bb2                	mv	s7,a2
quickjs-nuttx/quickjs.c:8114
    h = prop_hash_end(sh)[-h1 - 1];
    8001c3ac:	5a71                	li	s4,-4
quickjs-nuttx/quickjs.c:8155
        h = pr->hash_next;
    8001c3ae:	19fd                	addi	s3,s3,-1
quickjs-nuttx/quickjs.c:8163
                if (p->class_id == JS_CLASS_ARRAY ||
    8001c3b0:	4a89                	li	s5,2
quickjs-nuttx/quickjs.c:8112
    sh = p->shape;
    8001c3b2:	6c1c                	ld	a5,24(s0)
quickjs-nuttx/quickjs.c:8116
    lpr = NULL;
    8001c3b4:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:8113
    h1 = atom & sh->prop_hash_mask;
    8001c3b6:	0207a903          	lw	s2,32(a5)
    8001c3ba:	012bf933          	and	s2,s7,s2
quickjs-nuttx/quickjs.c:8114
    h = prop_hash_end(sh)[-h1 - 1];
    8001c3be:	1902                	slli	s2,s2,0x20
    8001c3c0:	02095913          	srli	s2,s2,0x20
    8001c3c4:	0905                	addi	s2,s2,1
    8001c3c6:	03490933          	mul	s2,s2,s4
    8001c3ca:	01278733          	add	a4,a5,s2
    8001c3ce:	00076b03          	lwu	s6,0(a4)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001c3d2:	04078793          	addi	a5,a5,64
delete_property():
quickjs-nuttx/quickjs.c:8118
    while (h != 0) {
    8001c3d6:	040b1e63          	bnez	s6,8001c432 <delete_property+0xa8>
quickjs-nuttx/quickjs.c:8158
    if (p->is_exotic) {
    8001c3da:	00544783          	lbu	a5,5(s0)
    8001c3de:	0047f713          	andi	a4,a5,4
    8001c3e2:	10070663          	beqz	a4,8001c4ee <delete_property+0x164>
quickjs-nuttx/quickjs.c:8159
        if (p->fast_array) {
    8001c3e6:	8ba1                	andi	a5,a5,8
    8001c3e8:	2e078a63          	beqz	a5,8001c6dc <delete_property+0x352>
quickjs-nuttx/quickjs.c:8161
            if (JS_AtomIsArrayIndex(ctx, &idx, atom) &&
    8001c3ec:	865e                	mv	a2,s7
    8001c3ee:	080c                	addi	a1,sp,16
    8001c3f0:	8526                	mv	a0,s1
    8001c3f2:	dbcec0ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
    8001c3f6:	0e050c63          	beqz	a0,8001c4ee <delete_property+0x164>
quickjs-nuttx/quickjs.c:8162 (discriminator 1)
                idx < p->u.array.count) {
    8001c3fa:	4038                	lw	a4,64(s0)
    8001c3fc:	47c2                	lw	a5,16(sp)
quickjs-nuttx/quickjs.c:8161 (discriminator 1)
            if (JS_AtomIsArrayIndex(ctx, &idx, atom) &&
    8001c3fe:	0ee7f863          	bgeu	a5,a4,8001c4ee <delete_property+0x164>
quickjs-nuttx/quickjs.c:8163
                if (p->class_id == JS_CLASS_ARRAY ||
    8001c402:	00645683          	lhu	a3,6(s0)
    8001c406:	01568563          	beq	a3,s5,8001c410 <delete_property+0x86>
quickjs-nuttx/quickjs.c:8163 (discriminator 1)
    8001c40a:	4621                	li	a2,8
    8001c40c:	30c69063          	bne	a3,a2,8001c70c <delete_property+0x382>
quickjs-nuttx/quickjs.c:8166
                    if (idx == p->u.array.count - 1) {
    8001c410:	377d                	addiw	a4,a4,-1
    8001c412:	2af71d63          	bne	a4,a5,8001c6cc <delete_property+0x342>
quickjs-nuttx/quickjs.c:8167
                        JS_FreeValue(ctx, p->u.array.u.values[idx]);
    8001c416:	7c18                	ld	a4,56(s0)
    8001c418:	02079693          	slli	a3,a5,0x20
    8001c41c:	01c6d793          	srli	a5,a3,0x1c
    8001c420:	97ba                	add	a5,a5,a4
    8001c422:	638c                	ld	a1,0(a5)
    8001c424:	6790                	ld	a2,8(a5)
    8001c426:	8526                	mv	a0,s1
    8001c428:	b76ef0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8168
                        p->u.array.count = idx;
    8001c42c:	47c2                	lw	a5,16(sp)
    8001c42e:	c03c                	sw	a5,64(s0)
    8001c430:	a87d                	j	8001c4ee <delete_property+0x164>
quickjs-nuttx/quickjs.c:8119
        pr = &prop[h - 1];
    8001c432:	003b1713          	slli	a4,s6,0x3
    8001c436:	1761                	addi	a4,a4,-8
    8001c438:	973e                	add	a4,a4,a5
    8001c43a:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:8120
        if (likely(pr->atom == atom)) {
    8001c43c:	4354                	lw	a3,4(a4)
    8001c43e:	430c                	lw	a1,0(a4)
    8001c440:	27769e63          	bne	a3,s7,8001c6bc <delete_property+0x332>
quickjs-nuttx/quickjs.c:8122
            if (!(pr->flags & JS_PROP_CONFIGURABLE))
    8001c444:	01a5d59b          	srliw	a1,a1,0x1a
    8001c448:	8985                	andi	a1,a1,1
    8001c44a:	2c058163          	beqz	a1,8001c70c <delete_property+0x382>
quickjs-nuttx/quickjs.c:8117
    lpr_idx = 0;   /* prevent warning */
    8001c44e:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:8125
            if (lpr)
    8001c450:	000c0763          	beqz	s8,8001c45e <delete_property+0xd4>
quickjs-nuttx/quickjs.c:8126
                lpr_idx = lpr - get_shape_prop(sh);
    8001c454:	40fc07b3          	sub	a5,s8,a5
    8001c458:	878d                	srai	a5,a5,0x3
    8001c45a:	0007899b          	sext.w	s3,a5
quickjs-nuttx/quickjs.c:8127
            if (js_shape_prepare_update(ctx, p, &pr))
    8001c45e:	0030                	addi	a2,sp,8
    8001c460:	85a2                	mv	a1,s0
    8001c462:	8526                	mv	a0,s1
    8001c464:	feffd0ef          	jal	ra,8001a452 <js_shape_prepare_update>
    8001c468:	26051863          	bnez	a0,8001c6d8 <delete_property+0x34e>
quickjs-nuttx/quickjs.c:8133
                lpr->hash_next = pr->hash_next;
    8001c46c:	67a2                	ld	a5,8(sp)
    8001c46e:	04000737          	lui	a4,0x4000
    8001c472:	fff70693          	addi	a3,a4,-1 # 3ffffff <asinh-0x7c000001>
    8001c476:	4398                	lw	a4,0(a5)
quickjs-nuttx/quickjs.c:8129
            sh = p->shape;
    8001c478:	01843a03          	ld	s4,24(s0)
quickjs-nuttx/quickjs.c:8133
                lpr->hash_next = pr->hash_next;
    8001c47c:	8f75                	and	a4,a4,a3
quickjs-nuttx/quickjs.c:8131
            if (lpr) {
    8001c47e:	080c0663          	beqz	s8,8001c50a <delete_property+0x180>
quickjs-nuttx/quickjs.c:8133
                lpr->hash_next = pr->hash_next;
    8001c482:	02099613          	slli	a2,s3,0x20
    8001c486:	01d65793          	srli	a5,a2,0x1d
    8001c48a:	97d2                	add	a5,a5,s4
    8001c48c:	8f75                	and	a4,a4,a3
    8001c48e:	43b4                	lw	a3,64(a5)
    8001c490:	fc000637          	lui	a2,0xfc000
    8001c494:	8ef1                	and	a3,a3,a2
    8001c496:	8f55                	or	a4,a4,a3
    8001c498:	c3b8                	sw	a4,64(a5)
quickjs-nuttx/quickjs.c:8137
            sh->deleted_prop_count++;
    8001c49a:	02ca2783          	lw	a5,44(s4)
quickjs-nuttx/quickjs.c:8139
            pr1 = &p->prop[h - 1];
    8001c49e:	004b1593          	slli	a1,s6,0x4
    8001c4a2:	15c1                	addi	a1,a1,-16
quickjs-nuttx/quickjs.c:8137
            sh->deleted_prop_count++;
    8001c4a4:	2785                	addiw	a5,a5,1
    8001c4a6:	02fa2623          	sw	a5,44(s4)
quickjs-nuttx/quickjs.c:8140
            free_property(ctx->rt, pr1, pr->flags);
    8001c4aa:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:8139
            pr1 = &p->prop[h - 1];
    8001c4ac:	02043b03          	ld	s6,32(s0)
quickjs-nuttx/quickjs.c:8140
            free_property(ctx->rt, pr1, pr->flags);
    8001c4b0:	6c88                	ld	a0,24(s1)
    8001c4b2:	4390                	lw	a2,0(a5)
quickjs-nuttx/quickjs.c:8139
            pr1 = &p->prop[h - 1];
    8001c4b4:	9b2e                	add	s6,s6,a1
quickjs-nuttx/quickjs.c:8140
            free_property(ctx->rt, pr1, pr->flags);
    8001c4b6:	85da                	mv	a1,s6
    8001c4b8:	01a6561b          	srliw	a2,a2,0x1a
    8001c4bc:	9bdef0ef          	jal	ra,8000be78 <free_property>
quickjs-nuttx/quickjs.c:8141
            JS_FreeAtom(ctx, pr->atom);
    8001c4c0:	67a2                	ld	a5,8(sp)
    8001c4c2:	8526                	mv	a0,s1
    8001c4c4:	43cc                	lw	a1,4(a5)
    8001c4c6:	c83ee0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:8143
            pr->flags = 0;
    8001c4ca:	6722                	ld	a4,8(sp)
    8001c4cc:	431c                	lw	a5,0(a4)
    8001c4ce:	179a                	slli	a5,a5,0x26
    8001c4d0:	9399                	srli	a5,a5,0x26
    8001c4d2:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:8144
            pr->atom = JS_ATOM_NULL;
    8001c4d4:	67a2                	ld	a5,8(sp)
    8001c4d6:	0007a223          	sw	zero,4(a5)
quickjs-nuttx/quickjs.c:8145
            pr1->u.value = JS_UNDEFINED;
    8001c4da:	478d                	li	a5,3
    8001c4dc:	00fb3423          	sd	a5,8(s6) # ffffffff80000008 <_ebss+0xfffffffeffefeea2>
    8001c4e0:	000b3023          	sd	zero,0(s6)
quickjs-nuttx/quickjs.c:8148
            if (sh->deleted_prop_count >= 8 &&
    8001c4e4:	02ca2703          	lw	a4,44(s4)
    8001c4e8:	479d                	li	a5,7
    8001c4ea:	02e7c463          	blt	a5,a4,8001c512 <delete_property+0x188>
quickjs-nuttx/quickjs.c:8169
                        return TRUE;
    8001c4ee:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:8187 (discriminator 1)
}
    8001c4f0:	70e6                	ld	ra,120(sp)
    8001c4f2:	7446                	ld	s0,112(sp)
    8001c4f4:	74a6                	ld	s1,104(sp)
    8001c4f6:	7906                	ld	s2,96(sp)
    8001c4f8:	69e6                	ld	s3,88(sp)
    8001c4fa:	6a46                	ld	s4,80(sp)
    8001c4fc:	6aa6                	ld	s5,72(sp)
    8001c4fe:	6b06                	ld	s6,64(sp)
    8001c500:	7be2                	ld	s7,56(sp)
    8001c502:	7c42                	ld	s8,48(sp)
    8001c504:	7ca2                	ld	s9,40(sp)
    8001c506:	6109                	addi	sp,sp,128
    8001c508:	8082                	ret
quickjs-nuttx/quickjs.c:8135
                prop_hash_end(sh)[-h1 - 1] = pr->hash_next;
    8001c50a:	9952                	add	s2,s2,s4
    8001c50c:	00e92023          	sw	a4,0(s2)
    8001c510:	b769                	j	8001c49a <delete_property+0x110>
quickjs-nuttx/quickjs.c:8149 (discriminator 1)
                sh->deleted_prop_count >= ((unsigned)sh->prop_count / 2)) {
    8001c512:	028a2783          	lw	a5,40(s4)
quickjs-nuttx/quickjs.c:8148 (discriminator 1)
            if (sh->deleted_prop_count >= 8 &&
    8001c516:	0017d79b          	srliw	a5,a5,0x1
    8001c51a:	fcf76ae3          	bltu	a4,a5,8001c4ee <delete_property+0x164>
compact_properties():
quickjs-nuttx/quickjs.c:4535
    sh = p->shape;
    8001c51e:	01843b83          	ld	s7,24(s0)
quickjs-nuttx/quickjs.c:4536
    assert(!sh->is_hashed);
    8001c522:	018bc783          	lbu	a5,24(s7) # ffffffff80000018 <_ebss+0xfffffffeffefeeb2>
    8001c526:	cb99                	beqz	a5,8001c53c <delete_property+0x1b2>
    8001c528:	6585                	lui	a1,0x1
    8001c52a:	4601                	li	a2,0
    8001c52c:	1b858593          	addi	a1,a1,440 # 11b8 <asinh-0x7fffee48>
quickjs-nuttx/quickjs.c:4540
    assert(new_size <= sh->prop_size);
    8001c530:	0004d517          	auipc	a0,0x4d
    8001c534:	06850513          	addi	a0,a0,104 # 80069598 <qjsc_repl+0x3fe8>
    8001c538:	424440ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:4538
    new_size = max_int(JS_PROP_INITIAL_SIZE,
    8001c53c:	028bac03          	lw	s8,40(s7)
    8001c540:	02cba783          	lw	a5,44(s7)
    8001c544:	40fc073b          	subw	a4,s8,a5
    8001c548:	4789                	li	a5,2
    8001c54a:	8c3a                	mv	s8,a4
    8001c54c:	00f75363          	bge	a4,a5,8001c552 <delete_property+0x1c8>
    8001c550:	4c09                	li	s8,2
quickjs-nuttx/quickjs.c:4540
    assert(new_size <= sh->prop_size);
    8001c552:	024ba783          	lw	a5,36(s7)
    8001c556:	0187f763          	bgeu	a5,s8,8001c564 <delete_property+0x1da>
    8001c55a:	6585                	lui	a1,0x1
    8001c55c:	4601                	li	a2,0
    8001c55e:	1bc58593          	addi	a1,a1,444 # 11bc <asinh-0x7fffee44>
    8001c562:	b7f9                	j	8001c530 <delete_property+0x1a6>
quickjs-nuttx/quickjs.c:4542
    new_hash_size = sh->prop_hash_mask + 1;
    8001c564:	020ba783          	lw	a5,32(s7)
    8001c568:	2785                	addiw	a5,a5,1
quickjs-nuttx/quickjs.c:4543
    while ((new_hash_size / 2) >= new_size)
    8001c56a:	00078b1b          	sext.w	s6,a5
    8001c56e:	0017d79b          	srliw	a5,a5,0x1
    8001c572:	ff87fce3          	bgeu	a5,s8,8001c56a <delete_property+0x1e0>
quickjs-nuttx/quickjs.c:4549
    sh_alloc = js_malloc(ctx, get_shape_size(new_hash_size, new_size));
    8001c576:	020c1993          	slli	s3,s8,0x20
    8001c57a:	0209d993          	srli	s3,s3,0x20
quickjs-nuttx/quickjs.c:4545
    new_hash_mask = new_hash_size - 1;
    8001c57e:	fffb0a9b          	addiw	s5,s6,-1
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8001c582:	00199593          	slli	a1,s3,0x1
compact_properties():
quickjs-nuttx/quickjs.c:4549
    sh_alloc = js_malloc(ctx, get_shape_size(new_hash_size, new_size));
    8001c586:	1b02                	slli	s6,s6,0x20
    8001c588:	020b5b13          	srli	s6,s6,0x20
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8001c58c:	05c1                	addi	a1,a1,16
    8001c58e:	95da                	add	a1,a1,s6
compact_properties():
quickjs-nuttx/quickjs.c:4549
    sh_alloc = js_malloc(ctx, get_shape_size(new_hash_size, new_size));
    8001c590:	058a                	slli	a1,a1,0x2
    8001c592:	8526                	mv	a0,s1
    8001c594:	b71fd0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:4545
    new_hash_mask = new_hash_size - 1;
    8001c598:	8a56                	mv	s4,s5
quickjs-nuttx/quickjs.c:4549
    sh_alloc = js_malloc(ctx, get_shape_size(new_hash_size, new_size));
    8001c59a:	8caa                	mv	s9,a0
quickjs-nuttx/quickjs.c:4550
    if (!sh_alloc)
    8001c59c:	d929                	beqz	a0,8001c4ee <delete_property+0x164>
get_shape_from_alloc():
quickjs-nuttx/quickjs.c:4252
    return (JSShape *)(void *)((uint32_t *)sh_alloc + hash_size);
    8001c59e:	0b0a                	slli	s6,s6,0x2
    8001c5a0:	01650933          	add	s2,a0,s6
compact_properties():
quickjs-nuttx/quickjs.c:4553
    list_del(&old_sh->header.link);
    8001c5a4:	008b8513          	addi	a0,s7,8
    8001c5a8:	d9ceb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:4554
    memcpy(sh, old_sh, sizeof(JSShape));
    8001c5ac:	04000613          	li	a2,64
    8001c5b0:	85de                	mv	a1,s7
    8001c5b2:	854a                	mv	a0,s2
    8001c5b4:	7f8470ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:4555
    list_add_tail(&sh->header.link, &ctx->rt->gc_obj_list);
    8001c5b8:	6c9c                	ld	a5,24(s1)
    8001c5ba:	00890713          	addi	a4,s2,8
quickjs-nuttx/quickjs.c:4557
    memset(prop_hash_end(sh) - new_hash_size, 0,
    8001c5be:	865a                	mv	a2,s6
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001c5c0:	67d4                	ld	a3,136(a5)
compact_properties():
quickjs-nuttx/quickjs.c:4557
    8001c5c2:	4581                	li	a1,0
    8001c5c4:	8566                	mv	a0,s9
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001c5c6:	e698                	sd	a4,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001c5c8:	00d93423          	sd	a3,8(s2)
compact_properties():
quickjs-nuttx/quickjs.c:4555
    list_add_tail(&sh->header.link, &ctx->rt->gc_obj_list);
    8001c5cc:	08878693          	addi	a3,a5,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001c5d0:	00d93823          	sd	a3,16(s2)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001c5d4:	e7d8                	sd	a4,136(a5)
compact_properties():
quickjs-nuttx/quickjs.c:4557
    memset(prop_hash_end(sh) - new_hash_size, 0,
    8001c5d6:	66c470ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:4563
    prop = p->prop;
    8001c5da:	02043883          	ld	a7,32(s0)
quickjs-nuttx/quickjs.c:4567
            pr->flags = old_pr->flags;
    8001c5de:	04000837          	lui	a6,0x4000
quickjs-nuttx/quickjs.c:4561
    old_pr = old_sh->prop;
    8001c5e2:	040b8593          	addi	a1,s7,64
quickjs-nuttx/quickjs.c:4562
    pr = sh->prop;
    8001c5e6:	04090613          	addi	a2,s2,64
quickjs-nuttx/quickjs.c:4560
    j = 0;
    8001c5ea:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:4564
    for(i = 0; i < sh->prop_count; i++) {
    8001c5ec:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:4567
            pr->flags = old_pr->flags;
    8001c5ee:	187d                	addi	a6,a6,-1
quickjs-nuttx/quickjs.c:4569
            pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001c5f0:	5371                	li	t1,-4
    8001c5f2:	fc000e37          	lui	t3,0xfc000
quickjs-nuttx/quickjs.c:4564
    for(i = 0; i < sh->prop_count; i++) {
    8001c5f6:	02892783          	lw	a5,40(s2)
    8001c5fa:	00f56c63          	bltu	a0,a5,8001c612 <delete_property+0x288>
quickjs-nuttx/quickjs.c:4577
    assert(j == (sh->prop_count - sh->deleted_prop_count));
    8001c5fe:	02c92703          	lw	a4,44(s2)
    8001c602:	9f99                	subw	a5,a5,a4
    8001c604:	06d78f63          	beq	a5,a3,8001c682 <delete_property+0x2f8>
    8001c608:	6585                	lui	a1,0x1
    8001c60a:	4601                	li	a2,0
    8001c60c:	1e158593          	addi	a1,a1,481 # 11e1 <asinh-0x7fffee1f>
    8001c610:	b705                	j	8001c530 <delete_property+0x1a6>
quickjs-nuttx/quickjs.c:4565
        if (old_pr->atom != JS_ATOM_NULL) {
    8001c612:	41dc                	lw	a5,4(a1)
    8001c614:	c7a5                	beqz	a5,8001c67c <delete_property+0x2f2>
quickjs-nuttx/quickjs.c:4566
            pr->atom = old_pr->atom;
    8001c616:	c25c                	sw	a5,4(a2)
quickjs-nuttx/quickjs.c:4567
            pr->flags = old_pr->flags;
    8001c618:	4198                	lw	a4,0(a1)
    8001c61a:	01a7571b          	srliw	a4,a4,0x1a
    8001c61e:	01a7179b          	slliw	a5,a4,0x1a
    8001c622:	4218                	lw	a4,0(a2)
    8001c624:	01077733          	and	a4,a4,a6
    8001c628:	8f5d                	or	a4,a4,a5
    8001c62a:	c218                	sw	a4,0(a2)
quickjs-nuttx/quickjs.c:4568
            h = ((uintptr_t)old_pr->atom & new_hash_mask);
    8001c62c:	41dc                	lw	a5,4(a1)
quickjs-nuttx/quickjs.c:4569
            pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001c62e:	01c77733          	and	a4,a4,t3
quickjs-nuttx/quickjs.c:4568
            h = ((uintptr_t)old_pr->atom & new_hash_mask);
    8001c632:	00faf7b3          	and	a5,s5,a5
quickjs-nuttx/quickjs.c:4569
            pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001c636:	1782                	slli	a5,a5,0x20
    8001c638:	9381                	srli	a5,a5,0x20
    8001c63a:	0785                	addi	a5,a5,1
    8001c63c:	026787b3          	mul	a5,a5,t1
    8001c640:	97ca                	add	a5,a5,s2
    8001c642:	0007ae83          	lw	t4,0(a5)
    8001c646:	010efeb3          	and	t4,t4,a6
    8001c64a:	01d76733          	or	a4,a4,t4
    8001c64e:	c218                	sw	a4,0(a2)
quickjs-nuttx/quickjs.c:4570
            prop_hash_end(sh)[-h - 1] = j + 1;
    8001c650:	0016871b          	addiw	a4,a3,1
    8001c654:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.c:4571
            prop[j] = prop[i];
    8001c656:	02051e93          	slli	t4,a0,0x20
    8001c65a:	02069793          	slli	a5,a3,0x20
    8001c65e:	01c7d693          	srli	a3,a5,0x1c
    8001c662:	01ced793          	srli	a5,t4,0x1c
    8001c666:	97c6                	add	a5,a5,a7
    8001c668:	0007be83          	ld	t4,0(a5)
    8001c66c:	96c6                	add	a3,a3,a7
quickjs-nuttx/quickjs.c:4573
            pr++;
    8001c66e:	0621                	addi	a2,a2,8
quickjs-nuttx/quickjs.c:4571
            prop[j] = prop[i];
    8001c670:	01d6b023          	sd	t4,0(a3)
    8001c674:	679c                	ld	a5,8(a5)
    8001c676:	e69c                	sd	a5,8(a3)
quickjs-nuttx/quickjs.c:4572
            j++;
    8001c678:	0007069b          	sext.w	a3,a4
quickjs-nuttx/quickjs.c:4575
        old_pr++;
    8001c67c:	05a1                	addi	a1,a1,8
quickjs-nuttx/quickjs.c:4564
    for(i = 0; i < sh->prop_count; i++) {
    8001c67e:	2505                	addiw	a0,a0,1
    8001c680:	bf9d                	j	8001c5f6 <delete_property+0x26c>
quickjs-nuttx/quickjs.c:4578
    sh->prop_hash_mask = new_hash_mask;
    8001c682:	03492023          	sw	s4,32(s2)
quickjs-nuttx/quickjs.c:4579
    sh->prop_size = new_size;
    8001c686:	03892223          	sw	s8,36(s2)
quickjs-nuttx/quickjs.c:4580
    sh->deleted_prop_count = 0;
    8001c68a:	02092623          	sw	zero,44(s2)
quickjs-nuttx/quickjs.c:4581
    sh->prop_count = j;
    8001c68e:	02d92423          	sw	a3,40(s2)
quickjs-nuttx/quickjs.c:4583
    p->shape = sh;
    8001c692:	01243c23          	sd	s2,24(s0)
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8001c696:	020be583          	lwu	a1,32(s7)
compact_properties():
quickjs-nuttx/quickjs.c:4584
    js_free(ctx, get_alloc_from_shape(old_sh));
    8001c69a:	8526                	mv	a0,s1
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8001c69c:	058a                	slli	a1,a1,0x2
    8001c69e:	40bb85b3          	sub	a1,s7,a1
compact_properties():
quickjs-nuttx/quickjs.c:4584
    js_free(ctx, get_alloc_from_shape(old_sh));
    8001c6a2:	15f1                	addi	a1,a1,-4
    8001c6a4:	953ee0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:4587
    new_prop = js_realloc(ctx, p->prop, sizeof(new_prop[0]) * new_size);
    8001c6a8:	700c                	ld	a1,32(s0)
    8001c6aa:	00499613          	slli	a2,s3,0x4
    8001c6ae:	8526                	mv	a0,s1
    8001c6b0:	ed7fe0ef          	jal	ra,8001b586 <js_realloc>
quickjs-nuttx/quickjs.c:4588
    if (new_prop)
    8001c6b4:	e2050de3          	beqz	a0,8001c4ee <delete_property+0x164>
quickjs-nuttx/quickjs.c:4589
        p->prop = new_prop;
    8001c6b8:	f008                	sd	a0,32(s0)
    8001c6ba:	bd15                	j	8001c4ee <delete_property+0x164>
delete_property():
quickjs-nuttx/quickjs.c:8155
        h = pr->hash_next;
    8001c6bc:	00b9f5b3          	and	a1,s3,a1
    8001c6c0:	02059b13          	slli	s6,a1,0x20
    8001c6c4:	020b5b13          	srli	s6,s6,0x20
    8001c6c8:	8c3a                	mv	s8,a4
    8001c6ca:	b331                	j	8001c3d6 <delete_property+0x4c>
quickjs-nuttx/quickjs.c:8171
                    if (convert_fast_array_to_array(ctx, p))
    8001c6cc:	85a2                	mv	a1,s0
    8001c6ce:	8526                	mv	a0,s1
    8001c6d0:	b9dff0ef          	jal	ra,8001c26c <convert_fast_array_to_array>
    8001c6d4:	cc050fe3          	beqz	a0,8001c3b2 <delete_property+0x28>
quickjs-nuttx/quickjs.c:8128
                return -1;
    8001c6d8:	557d                	li	a0,-1
    8001c6da:	bd19                	j	8001c4f0 <delete_property+0x166>
quickjs-nuttx/quickjs.c:8179
            const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    8001c6dc:	00645703          	lhu	a4,6(s0)
    8001c6e0:	02800693          	li	a3,40
    8001c6e4:	6c9c                	ld	a5,24(s1)
    8001c6e6:	02d70733          	mul	a4,a4,a3
    8001c6ea:	7bbc                	ld	a5,112(a5)
    8001c6ec:	97ba                	add	a5,a5,a4
    8001c6ee:	739c                	ld	a5,32(a5)
quickjs-nuttx/quickjs.c:8180
            if (em && em->delete_property) {
    8001c6f0:	de078fe3          	beqz	a5,8001c4ee <delete_property+0x164>
quickjs-nuttx/quickjs.c:8180 (discriminator 1)
    8001c6f4:	6b9c                	ld	a5,16(a5)
    8001c6f6:	de078ce3          	beqz	a5,8001c4ee <delete_property+0x164>
quickjs-nuttx/quickjs.c:8181
                return em->delete_property(ctx, JS_MKPTR(JS_TAG_OBJECT, p), atom);
    8001c6fa:	577d                	li	a4,-1
    8001c6fc:	e822                	sd	s0,16(sp)
    8001c6fe:	ec3a                	sd	a4,24(sp)
    8001c700:	86de                	mv	a3,s7
    8001c702:	85a2                	mv	a1,s0
    8001c704:	567d                	li	a2,-1
    8001c706:	8526                	mv	a0,s1
    8001c708:	9782                	jalr	a5
    8001c70a:	b3dd                	j	8001c4f0 <delete_property+0x166>
quickjs-nuttx/quickjs.c:8123
                return FALSE;
    8001c70c:	4501                	li	a0,0
    8001c70e:	b3cd                	j	8001c4f0 <delete_property+0x166>

000000008001c710 <js_realloc2>:
js_realloc2():
quickjs-nuttx/quickjs.c:1390
{
    8001c710:	7179                	addi	sp,sp,-48
    8001c712:	f022                	sd	s0,32(sp)
    8001c714:	ec26                	sd	s1,24(sp)
    8001c716:	e84a                	sd	s2,16(sp)
    8001c718:	e44e                	sd	s3,8(sp)
    8001c71a:	f406                	sd	ra,40(sp)
    8001c71c:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:1392
    ret = js_realloc_rt(ctx->rt, ptr, size);
    8001c71e:	6d08                	ld	a0,24(a0)
quickjs-nuttx/quickjs.c:1390
{
    8001c720:	84b2                	mv	s1,a2
    8001c722:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:1392
    ret = js_realloc_rt(ctx->rt, ptr, size);
    8001c724:	c36eb0ef          	jal	ra,80007b5a <js_realloc_rt>
    8001c728:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1393
    if (unlikely(!ret && size != 0)) {
    8001c72a:	ed09                	bnez	a0,8001c744 <js_realloc2+0x34>
quickjs-nuttx/quickjs.c:1393 (discriminator 1)
    8001c72c:	cc81                	beqz	s1,8001c744 <js_realloc2+0x34>
quickjs-nuttx/quickjs.c:1394
        JS_ThrowOutOfMemory(ctx);
    8001c72e:	854a                	mv	a0,s2
    8001c730:	9a5fd0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:1402
}
    8001c734:	70a2                	ld	ra,40(sp)
    8001c736:	8522                	mv	a0,s0
    8001c738:	7402                	ld	s0,32(sp)
    8001c73a:	64e2                	ld	s1,24(sp)
    8001c73c:	6942                	ld	s2,16(sp)
    8001c73e:	69a2                	ld	s3,8(sp)
    8001c740:	6145                	addi	sp,sp,48
    8001c742:	8082                	ret
quickjs-nuttx/quickjs.c:1397
    if (pslack) {
    8001c744:	fe0988e3          	beqz	s3,8001c734 <js_realloc2+0x24>
quickjs-nuttx/quickjs.c:1398
        size_t new_size = js_malloc_usable_size_rt(ctx->rt, ret);
    8001c748:	01893503          	ld	a0,24(s2)
    8001c74c:	85a2                	mv	a1,s0
    8001c74e:	c56ee0ef          	jal	ra,8000aba4 <js_malloc_usable_size_rt>
quickjs-nuttx/quickjs.c:1399
        *pslack = (new_size > size) ? new_size - size : 0;
    8001c752:	4781                	li	a5,0
    8001c754:	00a4f463          	bgeu	s1,a0,8001c75c <js_realloc2+0x4c>
quickjs-nuttx/quickjs.c:1399 (discriminator 1)
    8001c758:	409507b3          	sub	a5,a0,s1
quickjs-nuttx/quickjs.c:1399 (discriminator 4)
    8001c75c:	00f9b023          	sd	a5,0(s3) # 4000000 <asinh-0x7c000000>
    8001c760:	bfd1                	j	8001c734 <js_realloc2+0x24>

000000008001c762 <string_buffer_widen>:
string_buffer_widen():
quickjs-nuttx/quickjs.c:3594
{
    8001c762:	7179                	addi	sp,sp,-48
    8001c764:	f406                	sd	ra,40(sp)
    8001c766:	f022                	sd	s0,32(sp)
    8001c768:	ec26                	sd	s1,24(sp)
    8001c76a:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:3599
    if (s->error_status)
    8001c76c:	4d44                	lw	s1,28(a0)
    8001c76e:	e0ad                	bnez	s1,8001c7d0 <string_buffer_widen+0x6e>
quickjs-nuttx/quickjs.c:3602
    str = js_realloc2(s->ctx, s->str, sizeof(JSString) + (size << 1), &slack);
    8001c770:	0015961b          	slliw	a2,a1,0x1
    8001c774:	842a                	mv	s0,a0
    8001c776:	892e                	mv	s2,a1
    8001c778:	650c                	ld	a1,8(a0)
    8001c77a:	6108                	ld	a0,0(a0)
    8001c77c:	0034                	addi	a3,sp,8
    8001c77e:	0641                	addi	a2,a2,16
    8001c780:	f91ff0ef          	jal	ra,8001c710 <js_realloc2>
quickjs-nuttx/quickjs.c:3603
    if (!str)
    8001c784:	ed01                	bnez	a0,8001c79c <string_buffer_widen+0x3a>
quickjs-nuttx/quickjs.c:3604
        return string_buffer_set_error(s);
    8001c786:	8522                	mv	a0,s0
    8001c788:	875ee0ef          	jal	ra,8000affc <string_buffer_set_error>
    8001c78c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3613
}
    8001c78e:	70a2                	ld	ra,40(sp)
    8001c790:	7402                	ld	s0,32(sp)
    8001c792:	6942                	ld	s2,16(sp)
    8001c794:	8526                	mv	a0,s1
    8001c796:	64e2                	ld	s1,24(sp)
    8001c798:	6145                	addi	sp,sp,48
    8001c79a:	8082                	ret
quickjs-nuttx/quickjs.c:3605
    size += slack >> 1;
    8001c79c:	67a2                	ld	a5,8(sp)
    8001c79e:	8385                	srli	a5,a5,0x1
    8001c7a0:	012785bb          	addw	a1,a5,s2
quickjs-nuttx/quickjs.c:3606
    for(i = s->len; i-- > 0;) {
    8001c7a4:	481c                	lw	a5,16(s0)
quickjs-nuttx/quickjs.c:3606 (discriminator 1)
    8001c7a6:	fff7871b          	addiw	a4,a5,-1
    8001c7aa:	00f04763          	bgtz	a5,8001c7b8 <string_buffer_widen+0x56>
quickjs-nuttx/quickjs.c:3609
    s->is_wide_char = 1;
    8001c7ae:	4785                	li	a5,1
    8001c7b0:	cc1c                	sw	a5,24(s0)
quickjs-nuttx/quickjs.c:3610
    s->size = size;
    8001c7b2:	c84c                	sw	a1,20(s0)
quickjs-nuttx/quickjs.c:3611
    s->str = str;
    8001c7b4:	e408                	sd	a0,8(s0)
quickjs-nuttx/quickjs.c:3612
    return 0;
    8001c7b6:	bfe1                	j	8001c78e <string_buffer_widen+0x2c>
quickjs-nuttx/quickjs.c:3607
        str->u.str16[i] = str->u.str8[i];
    8001c7b8:	00e506b3          	add	a3,a0,a4
    8001c7bc:	0106c683          	lbu	a3,16(a3)
    8001c7c0:	00870793          	addi	a5,a4,8
    8001c7c4:	0786                	slli	a5,a5,0x1
    8001c7c6:	97aa                	add	a5,a5,a0
    8001c7c8:	00d79023          	sh	a3,0(a5)
quickjs-nuttx/quickjs.c:3606
    for(i = s->len; i-- > 0;) {
    8001c7cc:	87ba                	mv	a5,a4
    8001c7ce:	bfe1                	j	8001c7a6 <string_buffer_widen+0x44>
quickjs-nuttx/quickjs.c:3600
        return -1;
    8001c7d0:	54fd                	li	s1,-1
    8001c7d2:	bf75                	j	8001c78e <string_buffer_widen+0x2c>

000000008001c7d4 <expand_fast_array>:
expand_fast_array():
quickjs-nuttx/quickjs.c:8307
{
    8001c7d4:	7179                	addi	sp,sp,-48
    8001c7d6:	f022                	sd	s0,32(sp)
    8001c7d8:	ec26                	sd	s1,24(sp)
    8001c7da:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:8312
    new_size = max_int(new_len, p->u.array.u1.size * 3 / 2);
    8001c7dc:	5998                	lw	a4,48(a1)
    8001c7de:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:8307
{
    8001c7e0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:8312
    new_size = max_int(new_len, p->u.array.u1.size * 3 / 2);
    8001c7e2:	02e787bb          	mulw	a5,a5,a4
    8001c7e6:	0017d49b          	srliw	s1,a5,0x1
    8001c7ea:	0017d79b          	srliw	a5,a5,0x1
    8001c7ee:	00c7d363          	bge	a5,a2,8001c7f4 <expand_fast_array+0x20>
    8001c7f2:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:8313
    new_array_prop = js_realloc2(ctx, p->u.array.u.values, sizeof(JSValue) * new_size, &slack);
    8001c7f4:	7c0c                	ld	a1,56(s0)
    8001c7f6:	0004861b          	sext.w	a2,s1
    8001c7fa:	0034                	addi	a3,sp,8
    8001c7fc:	0612                	slli	a2,a2,0x4
    8001c7fe:	f13ff0ef          	jal	ra,8001c710 <js_realloc2>
    8001c802:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:8315
        return -1;
    8001c804:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:8314
    if (!new_array_prop)
    8001c806:	c719                	beqz	a4,8001c814 <expand_fast_array+0x40>
quickjs-nuttx/quickjs.c:8316
    new_size += slack / sizeof(*new_array_prop);
    8001c808:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:8317
    p->u.array.u.values = new_array_prop;
    8001c80a:	fc18                	sd	a4,56(s0)
quickjs-nuttx/quickjs.c:8319
    return 0;
    8001c80c:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:8316
    new_size += slack / sizeof(*new_array_prop);
    8001c80e:	8391                	srli	a5,a5,0x4
    8001c810:	9fa5                	addw	a5,a5,s1
quickjs-nuttx/quickjs.c:8318
    p->u.array.u1.size = new_size;
    8001c812:	d81c                	sw	a5,48(s0)
quickjs-nuttx/quickjs.c:8320
}
    8001c814:	70a2                	ld	ra,40(sp)
    8001c816:	7402                	ld	s0,32(sp)
    8001c818:	64e2                	ld	s1,24(sp)
    8001c81a:	6145                	addi	sp,sp,48
    8001c81c:	8082                	ret

000000008001c81e <add_fast_array_element>:
add_fast_array_element():
quickjs-nuttx/quickjs.c:8326
{
    8001c81e:	711d                	addi	sp,sp,-96
    8001c820:	e8a2                	sd	s0,80(sp)
    8001c822:	e4a6                	sd	s1,72(sp)
    8001c824:	fc4e                	sd	s3,56(sp)
    8001c826:	ec86                	sd	ra,88(sp)
    8001c828:	e0ca                	sd	s2,64(sp)
    8001c82a:	f852                	sd	s4,48(sp)
quickjs-nuttx/quickjs.c:8333
    if (likely(JS_VALUE_GET_TAG(p->prop[0].u.value) == JS_TAG_INT)) {
    8001c82c:	0205b803          	ld	a6,32(a1)
quickjs-nuttx/quickjs.c:8330
    new_len = p->u.array.count + 1;
    8001c830:	0405a903          	lw	s2,64(a1)
quickjs-nuttx/quickjs.c:8326
{
    8001c834:	e032                	sd	a2,0(sp)
quickjs-nuttx/quickjs.c:8333
    if (likely(JS_VALUE_GET_TAG(p->prop[0].u.value) == JS_TAG_INT)) {
    8001c836:	00882783          	lw	a5,8(a6) # 4000008 <asinh-0x7bfffff8>
quickjs-nuttx/quickjs.c:8330
    new_len = p->u.array.count + 1;
    8001c83a:	0019089b          	addiw	a7,s2,1
quickjs-nuttx/quickjs.c:8326
{
    8001c83e:	e436                	sd	a3,8(sp)
    8001c840:	84aa                	mv	s1,a0
    8001c842:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:8330
    new_len = p->u.array.count + 1;
    8001c844:	89c6                	mv	s3,a7
quickjs-nuttx/quickjs.c:8333
    if (likely(JS_VALUE_GET_TAG(p->prop[0].u.value) == JS_TAG_INT)) {
    8001c846:	e7a1                	bnez	a5,8001c88e <add_fast_array_element+0x70>
quickjs-nuttx/quickjs.c:8335
        if (new_len > array_len) {
    8001c848:	00082783          	lw	a5,0(a6)
    8001c84c:	0517f163          	bgeu	a5,a7,8001c88e <add_fast_array_element+0x70>
quickjs-nuttx/quickjs.c:8336
            if (unlikely(!(get_shape_prop(p->shape)->flags & JS_PROP_WRITABLE))) {
    8001c850:	6d9c                	ld	a5,24(a1)
    8001c852:	43bc                	lw	a5,64(a5)
    8001c854:	01a7d79b          	srliw	a5,a5,0x1a
    8001c858:	8b89                	andi	a5,a5,2
    8001c85a:	e39d                	bnez	a5,8001c880 <add_fast_array_element+0x62>
quickjs-nuttx/quickjs.c:8337
                JS_FreeValue(ctx, val);
    8001c85c:	85b2                	mv	a1,a2
    8001c85e:	8636                	mv	a2,a3
    8001c860:	8a3a                	mv	s4,a4
    8001c862:	f3dee0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8352
}
    8001c866:	6446                	ld	s0,80(sp)
    8001c868:	60e6                	ld	ra,88(sp)
    8001c86a:	6906                	ld	s2,64(sp)
    8001c86c:	79e2                	ld	s3,56(sp)
quickjs-nuttx/quickjs.c:8338
                return JS_ThrowTypeErrorReadOnly(ctx, flags, JS_ATOM_length);
    8001c86e:	85d2                	mv	a1,s4
    8001c870:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:8352
}
    8001c872:	7a42                	ld	s4,48(sp)
    8001c874:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:8338
                return JS_ThrowTypeErrorReadOnly(ctx, flags, JS_ATOM_length);
    8001c876:	03000613          	li	a2,48
quickjs-nuttx/quickjs.c:8352
}
    8001c87a:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:8338
                return JS_ThrowTypeErrorReadOnly(ctx, flags, JS_ATOM_length);
    8001c87c:	f03fb06f          	j	8001877e <JS_ThrowTypeErrorReadOnly>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8001c880:	f002                	sd	zero,32(sp)
    8001c882:	d046                	sw	a7,32(sp)
    8001c884:	7782                	ld	a5,32(sp)
add_fast_array_element():
quickjs-nuttx/quickjs.c:8340
            p->prop[0].u.value = JS_NewInt32(ctx, new_len);
    8001c886:	00083423          	sd	zero,8(a6)
    8001c88a:	00f83023          	sd	a5,0(a6)
quickjs-nuttx/quickjs.c:8343
    if (unlikely(new_len > p->u.array.u1.size)) {
    8001c88e:	581c                	lw	a5,48(s0)
    8001c890:	0317f663          	bgeu	a5,a7,8001c8bc <add_fast_array_element+0x9e>
quickjs-nuttx/quickjs.c:8344
        if (expand_fast_array(ctx, p, new_len)) {
    8001c894:	8646                	mv	a2,a7
    8001c896:	85a2                	mv	a1,s0
    8001c898:	8526                	mv	a0,s1
    8001c89a:	f3bff0ef          	jal	ra,8001c7d4 <expand_fast_array>
    8001c89e:	cd19                	beqz	a0,8001c8bc <add_fast_array_element+0x9e>
quickjs-nuttx/quickjs.c:8345
            JS_FreeValue(ctx, val);
    8001c8a0:	6582                	ld	a1,0(sp)
    8001c8a2:	6622                	ld	a2,8(sp)
    8001c8a4:	8526                	mv	a0,s1
    8001c8a6:	ef9ee0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8346
            return -1;
    8001c8aa:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:8352
}
    8001c8ac:	60e6                	ld	ra,88(sp)
    8001c8ae:	6446                	ld	s0,80(sp)
    8001c8b0:	64a6                	ld	s1,72(sp)
    8001c8b2:	6906                	ld	s2,64(sp)
    8001c8b4:	79e2                	ld	s3,56(sp)
    8001c8b6:	7a42                	ld	s4,48(sp)
    8001c8b8:	6125                	addi	sp,sp,96
    8001c8ba:	8082                	ret
quickjs-nuttx/quickjs.c:8349
    p->u.array.u.values[new_len - 1] = val;
    8001c8bc:	7c1c                	ld	a5,56(s0)
    8001c8be:	02091713          	slli	a4,s2,0x20
    8001c8c2:	01c75913          	srli	s2,a4,0x1c
    8001c8c6:	6702                	ld	a4,0(sp)
    8001c8c8:	97ca                	add	a5,a5,s2
quickjs-nuttx/quickjs.c:8351
    return TRUE;
    8001c8ca:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:8349
    p->u.array.u.values[new_len - 1] = val;
    8001c8cc:	e398                	sd	a4,0(a5)
    8001c8ce:	6722                	ld	a4,8(sp)
    8001c8d0:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:8350
    p->u.array.count = new_len;
    8001c8d2:	05342023          	sw	s3,64(s0)
quickjs-nuttx/quickjs.c:8351
    return TRUE;
    8001c8d6:	bfd9                	j	8001c8ac <add_fast_array_element+0x8e>

000000008001c8d8 <js_allocate_fast_array>:
js_allocate_fast_array():
quickjs-nuttx/quickjs.c:8362
    if (len > INT32_MAX)
    8001c8d8:	800007b7          	lui	a5,0x80000
    8001c8dc:	fff7c793          	not	a5,a5
    8001c8e0:	00b7d863          	bge	a5,a1,8001c8f0 <js_allocate_fast_array+0x18>
quickjs-nuttx/quickjs.c:8363
        return JS_ThrowRangeError(ctx, "invalid array length");
    8001c8e4:	0004e597          	auipc	a1,0x4e
    8001c8e8:	eb458593          	addi	a1,a1,-332 # 8006a798 <qjsc_repl+0x51e8>
    8001c8ec:	fe3fc06f          	j	800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:8358
{
    8001c8f0:	711d                	addi	sp,sp,-96
    8001c8f2:	e8a2                	sd	s0,80(sp)
    8001c8f4:	e4a6                	sd	s1,72(sp)
    8001c8f6:	e0ca                	sd	s2,64(sp)
    8001c8f8:	fc4e                	sd	s3,56(sp)
    8001c8fa:	ec86                	sd	ra,88(sp)
    8001c8fc:	89aa                	mv	s3,a0
    8001c8fe:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:8364
    arr = JS_NewArray(ctx);
    8001c900:	95bff0ef          	jal	ra,8001c25a <JS_NewArray>
    8001c904:	e82a                	sd	a0,16(sp)
    8001c906:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:8365
    if (JS_IsException(arr))
    8001c908:	0005871b          	sext.w	a4,a1
    8001c90c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:8364
    arr = JS_NewArray(ctx);
    8001c90e:	892a                	mv	s2,a0
    8001c910:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:8365
    if (JS_IsException(arr))
    8001c912:	00f71463          	bne	a4,a5,8001c91a <js_allocate_fast_array+0x42>
quickjs-nuttx/quickjs.c:8375
    return arr;
    8001c916:	f04a                	sd	s2,32(sp)
    8001c918:	a015                	j	8001c93c <js_allocate_fast_array+0x64>
quickjs-nuttx/quickjs.c:8367
    if (len > 0) {
    8001c91a:	fe905ee3          	blez	s1,8001c916 <js_allocate_fast_array+0x3e>
quickjs-nuttx/quickjs.c:8369
        if (expand_fast_array(ctx, p, len) < 0) {
    8001c91e:	2481                	sext.w	s1,s1
    8001c920:	85aa                	mv	a1,a0
    8001c922:	8626                	mv	a2,s1
    8001c924:	854e                	mv	a0,s3
    8001c926:	eafff0ef          	jal	ra,8001c7d4 <expand_fast_array>
    8001c92a:	02055263          	bgez	a0,8001c94e <js_allocate_fast_array+0x76>
quickjs-nuttx/quickjs.c:8370
            JS_FreeValue(ctx, arr);
    8001c92e:	65c2                	ld	a1,16(sp)
    8001c930:	6662                	ld	a2,24(sp)
    8001c932:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:8371
            return JS_EXCEPTION;
    8001c934:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:8370
            JS_FreeValue(ctx, arr);
    8001c936:	e69ee0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8371
            return JS_EXCEPTION;
    8001c93a:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:8376
}
    8001c93c:	60e6                	ld	ra,88(sp)
    8001c93e:	85a2                	mv	a1,s0
    8001c940:	6446                	ld	s0,80(sp)
    8001c942:	7502                	ld	a0,32(sp)
    8001c944:	64a6                	ld	s1,72(sp)
    8001c946:	6906                	ld	s2,64(sp)
    8001c948:	79e2                	ld	s3,56(sp)
    8001c94a:	6125                	addi	sp,sp,96
    8001c94c:	8082                	ret
quickjs-nuttx/quickjs.c:8373
        p->u.array.count = len;
    8001c94e:	04992023          	sw	s1,64(s2)
    8001c952:	b7d1                	j	8001c916 <js_allocate_fast_array+0x3e>

000000008001c954 <js_realloc_array>:
js_realloc_array():
quickjs-nuttx/quickjs.c:1428
{
    8001c954:	7139                	addi	sp,sp,-64
    8001c956:	f822                	sd	s0,48(sp)
    8001c958:	f426                	sd	s1,40(sp)
    8001c95a:	f04a                	sd	s2,32(sp)
    8001c95c:	ec4e                	sd	s3,24(sp)
    8001c95e:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:1433
    new_size = max_int(req_size, *psize * 3 / 2);
    8001c960:	429c                	lw	a5,0(a3)
    8001c962:	440d                	li	s0,3
quickjs-nuttx/quickjs.c:1428
{
    8001c964:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:1433
    new_size = max_int(req_size, *psize * 3 / 2);
    8001c966:	02f4043b          	mulw	s0,s0,a5
    8001c96a:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:1428
{
    8001c96c:	89b2                	mv	s3,a2
    8001c96e:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:1433
    new_size = max_int(req_size, *psize * 3 / 2);
    8001c970:	02f447bb          	divw	a5,s0,a5
    8001c974:	843a                	mv	s0,a4
    8001c976:	00e7c363          	blt	a5,a4,8001c97c <js_realloc_array+0x28>
    8001c97a:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:1434
    new_array = js_realloc2(ctx, *parray, new_size * elem_size, &slack);
    8001c97c:	0334063b          	mulw	a2,s0,s3
    8001c980:	608c                	ld	a1,0(s1)
    8001c982:	0034                	addi	a3,sp,8
    8001c984:	d8dff0ef          	jal	ra,8001c710 <js_realloc2>
    8001c988:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:1436
        return -1;
    8001c98a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:1435
    if (!new_array)
    8001c98c:	cb09                	beqz	a4,8001c99e <js_realloc_array+0x4a>
quickjs-nuttx/quickjs.c:1437
    new_size += slack / elem_size;
    8001c98e:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:1440
    return 0;
    8001c990:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:1437
    new_size += slack / elem_size;
    8001c992:	0337d633          	divu	a2,a5,s3
    8001c996:	9c31                	addw	s0,s0,a2
quickjs-nuttx/quickjs.c:1438
    *psize = new_size;
    8001c998:	00892023          	sw	s0,0(s2)
quickjs-nuttx/quickjs.c:1439
    *parray = new_array;
    8001c99c:	e098                	sd	a4,0(s1)
quickjs-nuttx/quickjs.c:1441
}
    8001c99e:	70e2                	ld	ra,56(sp)
    8001c9a0:	7442                	ld	s0,48(sp)
    8001c9a2:	74a2                	ld	s1,40(sp)
    8001c9a4:	7902                	ld	s2,32(sp)
    8001c9a6:	69e2                	ld	s3,24(sp)
    8001c9a8:	6121                	addi	sp,sp,64
    8001c9aa:	8082                	ret

000000008001c9ac <js_resize_array>:
js_resize_array():
quickjs-nuttx/quickjs.c:1447
    if (unlikely(req_size > *psize))
    8001c9ac:	429c                	lw	a5,0(a3)
    8001c9ae:	00e7d463          	bge	a5,a4,8001c9b6 <js_resize_array+0xa>
quickjs-nuttx/quickjs.c:1448
        return js_realloc_array(ctx, parray, elem_size, psize, req_size);
    8001c9b2:	fa3ff06f          	j	8001c954 <js_realloc_array>
quickjs-nuttx/quickjs.c:1451
}
    8001c9b6:	4501                	li	a0,0
    8001c9b8:	8082                	ret

000000008001c9ba <get_exported_names>:
get_exported_names():
quickjs-nuttx/quickjs.c:27716
{
    8001c9ba:	711d                	addi	sp,sp,-96
    8001c9bc:	e8a2                	sd	s0,80(sp)
    8001c9be:	e4a6                	sd	s1,72(sp)
    8001c9c0:	f852                	sd	s4,48(sp)
    8001c9c2:	f05a                	sd	s6,32(sp)
    8001c9c4:	ec86                	sd	ra,88(sp)
    8001c9c6:	e0ca                	sd	s2,64(sp)
    8001c9c8:	fc4e                	sd	s3,56(sp)
    8001c9ca:	f456                	sd	s5,40(sp)
    8001c9cc:	ec5e                	sd	s7,24(sp)
    8001c9ce:	e862                	sd	s8,16(sp)
    8001c9d0:	e466                	sd	s9,8(sp)
quickjs-nuttx/quickjs.c:27721
    for(i = 0; i < s->modules_count; i++) {
    8001c9d2:	45d8                	lw	a4,12(a1)
quickjs-nuttx/quickjs.c:27716
{
    8001c9d4:	8a2a                	mv	s4,a0
    8001c9d6:	842e                	mv	s0,a1
    8001c9d8:	84b2                	mv	s1,a2
    8001c9da:	8b36                	mv	s6,a3
quickjs-nuttx/quickjs.c:27721
    for(i = 0; i < s->modules_count; i++) {
    8001c9dc:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:27721 (discriminator 1)
    8001c9de:	0007869b          	sext.w	a3,a5
    8001c9e2:	00e6ce63          	blt	a3,a4,8001c9fe <get_exported_names+0x44>
quickjs-nuttx/quickjs.c:27725
    if (js_resize_array(ctx, (void **)&s->modules, sizeof(s->modules[0]),
    8001c9e6:	2705                	addiw	a4,a4,1
    8001c9e8:	00840693          	addi	a3,s0,8
    8001c9ec:	4621                	li	a2,8
    8001c9ee:	85a2                	mv	a1,s0
    8001c9f0:	8552                	mv	a0,s4
    8001c9f2:	fbbff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001c9f6:	892a                	mv	s2,a0
    8001c9f8:	c90d                	beqz	a0,8001ca2a <get_exported_names+0x70>
quickjs-nuttx/quickjs.c:27727
        return -1;
    8001c9fa:	557d                	li	a0,-1
    8001c9fc:	a811                	j	8001ca10 <get_exported_names+0x56>
quickjs-nuttx/quickjs.c:27722
        if (s->modules[i] == m)
    8001c9fe:	6014                	ld	a3,0(s0)
    8001ca00:	00379613          	slli	a2,a5,0x3
    8001ca04:	0785                	addi	a5,a5,1
    8001ca06:	96b2                	add	a3,a3,a2
    8001ca08:	6294                	ld	a3,0(a3)
    8001ca0a:	fc969ae3          	bne	a3,s1,8001c9de <get_exported_names+0x24>
quickjs-nuttx/quickjs.c:27723
            return 0;
    8001ca0e:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:27760
}
    8001ca10:	60e6                	ld	ra,88(sp)
    8001ca12:	6446                	ld	s0,80(sp)
    8001ca14:	64a6                	ld	s1,72(sp)
    8001ca16:	6906                	ld	s2,64(sp)
    8001ca18:	79e2                	ld	s3,56(sp)
    8001ca1a:	7a42                	ld	s4,48(sp)
    8001ca1c:	7aa2                	ld	s5,40(sp)
    8001ca1e:	7b02                	ld	s6,32(sp)
    8001ca20:	6be2                	ld	s7,24(sp)
    8001ca22:	6c42                	ld	s8,16(sp)
    8001ca24:	6ca2                	ld	s9,8(sp)
    8001ca26:	6125                	addi	sp,sp,96
    8001ca28:	8082                	ret
quickjs-nuttx/quickjs.c:27728
    s->modules[s->modules_count++] = m;
    8001ca2a:	445c                	lw	a5,12(s0)
    8001ca2c:	6018                	ld	a4,0(s0)
quickjs-nuttx/quickjs.c:27730
    for(i = 0; i < m->export_entries_count; i++) {
    8001ca2e:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:27728
    s->modules[s->modules_count++] = m;
    8001ca30:	0017869b          	addiw	a3,a5,1
    8001ca34:	078e                	slli	a5,a5,0x3
    8001ca36:	c454                	sw	a3,12(s0)
    8001ca38:	97ba                	add	a5,a5,a4
    8001ca3a:	e384                	sd	s1,0(a5)
quickjs-nuttx/quickjs.c:27736
            if (js_resize_array(ctx, (void **)&s->exported_names, sizeof(s->exported_names[0]),
    8001ca3c:	01840b93          	addi	s7,s0,24
    8001ca40:	01040c13          	addi	s8,s0,16
quickjs-nuttx/quickjs.c:27732
        if (from_star && me->export_name == JS_ATOM_default)
    8001ca44:	4cd9                	li	s9,22
quickjs-nuttx/quickjs.c:27730 (discriminator 1)
    for(i = 0; i < m->export_entries_count; i++) {
    8001ca46:	589c                	lw	a5,48(s1)
    8001ca48:	02fac663          	blt	s5,a5,8001ca74 <get_exported_names+0xba>
quickjs-nuttx/quickjs.c:27752 (discriminator 1)
    for(i = 0; i < m->star_export_entries_count; i++) {
    8001ca4c:	40bc                	lw	a5,64(s1)
    8001ca4e:	fcf950e3          	bge	s2,a5,8001ca0e <get_exported_names+0x54>
quickjs-nuttx/quickjs.c:27755
        m1 = m->req_module_entries[se->req_module_idx].module;
    8001ca52:	7c9c                	ld	a5,56(s1)
    8001ca54:	00291713          	slli	a4,s2,0x2
quickjs-nuttx/quickjs.c:27756
        if (get_exported_names(ctx, s, m1, TRUE))
    8001ca58:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:27755
        m1 = m->req_module_entries[se->req_module_idx].module;
    8001ca5a:	97ba                	add	a5,a5,a4
    8001ca5c:	4398                	lw	a4,0(a5)
    8001ca5e:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:27756
        if (get_exported_names(ctx, s, m1, TRUE))
    8001ca60:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:27755
        m1 = m->req_module_entries[se->req_module_idx].module;
    8001ca62:	0712                	slli	a4,a4,0x4
    8001ca64:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:27756
        if (get_exported_names(ctx, s, m1, TRUE))
    8001ca66:	6790                	ld	a2,8(a5)
    8001ca68:	8552                	mv	a0,s4
    8001ca6a:	f51ff0ef          	jal	ra,8001c9ba <get_exported_names>
    8001ca6e:	f551                	bnez	a0,8001c9fa <get_exported_names+0x40>
quickjs-nuttx/quickjs.c:27752 (discriminator 2)
    for(i = 0; i < m->star_export_entries_count; i++) {
    8001ca70:	2905                	addiw	s2,s2,1
    8001ca72:	bfe9                	j	8001ca4c <get_exported_names+0x92>
quickjs-nuttx/quickjs.c:27731
        JSExportEntry *me = &m->export_entries[i];
    8001ca74:	749c                	ld	a5,40(s1)
    8001ca76:	005a9993          	slli	s3,s5,0x5
    8001ca7a:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:27732
        if (from_star && me->export_name == JS_ATOM_default)
    8001ca7c:	0189a503          	lw	a0,24(s3)
    8001ca80:	000b0463          	beqz	s6,8001ca88 <get_exported_names+0xce>
quickjs-nuttx/quickjs.c:27732 (discriminator 1)
    8001ca84:	05950c63          	beq	a0,s9,8001cadc <get_exported_names+0x122>
find_exported_name():
quickjs-nuttx/quickjs.c:27706
    for(i = 0; i < s->exported_names_count; i++) {
    8001ca88:	4c58                	lw	a4,28(s0)
    8001ca8a:	4601                	li	a2,0
    8001ca8c:	0006079b          	sext.w	a5,a2
    8001ca90:	02e7cc63          	blt	a5,a4,8001cac8 <get_exported_names+0x10e>
get_exported_names():
quickjs-nuttx/quickjs.c:27736
            if (js_resize_array(ctx, (void **)&s->exported_names, sizeof(s->exported_names[0]),
    8001ca94:	2705                	addiw	a4,a4,1
    8001ca96:	86de                	mv	a3,s7
    8001ca98:	4641                	li	a2,16
    8001ca9a:	85e2                	mv	a1,s8
    8001ca9c:	8552                	mv	a0,s4
    8001ca9e:	f0fff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001caa2:	fd21                	bnez	a0,8001c9fa <get_exported_names+0x40>
quickjs-nuttx/quickjs.c:27740
            en = &s->exported_names[s->exported_names_count++];
    8001caa4:	4c58                	lw	a4,28(s0)
    8001caa6:	681c                	ld	a5,16(s0)
    8001caa8:	0017069b          	addiw	a3,a4,1
    8001caac:	cc54                	sw	a3,28(s0)
    8001caae:	0712                	slli	a4,a4,0x4
    8001cab0:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:27741
            en->export_name = me->export_name;
    8001cab2:	0189a703          	lw	a4,24(s3)
    8001cab6:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.c:27743
            if (from_star || me->export_type != JS_EXPORT_TYPE_LOCAL)
    8001cab8:	020b1063          	bnez	s6,8001cad8 <get_exported_names+0x11e>
quickjs-nuttx/quickjs.c:27743 (discriminator 1)
    8001cabc:	0109a703          	lw	a4,16(s3)
    8001cac0:	ef01                	bnez	a4,8001cad8 <get_exported_names+0x11e>
quickjs-nuttx/quickjs.c:27746
                en->u.me = me;
    8001cac2:	0137b423          	sd	s3,8(a5) # ffffffff80000008 <_ebss+0xfffffffeffefeea2>
    8001cac6:	a819                	j	8001cadc <get_exported_names+0x122>
find_exported_name():
quickjs-nuttx/quickjs.c:27707
        if (s->exported_names[i].export_name == name)
    8001cac8:	681c                	ld	a5,16(s0)
    8001caca:	00461693          	slli	a3,a2,0x4
    8001cace:	0605                	addi	a2,a2,1
    8001cad0:	97b6                	add	a5,a5,a3
    8001cad2:	4394                	lw	a3,0(a5)
    8001cad4:	faa69ce3          	bne	a3,a0,8001ca8c <get_exported_names+0xd2>
get_exported_names():
quickjs-nuttx/quickjs.c:27744
                en->u.me = NULL;
    8001cad8:	0007b423          	sd	zero,8(a5)
quickjs-nuttx/quickjs.c:27730 (discriminator 2)
    for(i = 0; i < m->export_entries_count; i++) {
    8001cadc:	2a85                	addiw	s5,s5,1
    8001cade:	b7a5                	j	8001ca46 <get_exported_names+0x8c>

000000008001cae0 <js_resolve_export1>:
js_resolve_export1():
quickjs-nuttx/quickjs.c:27554
{
    8001cae0:	7159                	addi	sp,sp,-112
    8001cae2:	eca6                	sd	s1,88(sp)
    8001cae4:	e8ca                	sd	s2,80(sp)
    8001cae6:	e4ce                	sd	s3,72(sp)
    8001cae8:	e0d2                	sd	s4,64(sp)
    8001caea:	fc56                	sd	s5,56(sp)
    8001caec:	f85a                	sd	s6,48(sp)
    8001caee:	f45e                	sd	s7,40(sp)
    8001caf0:	f062                	sd	s8,32(sp)
    8001caf2:	f486                	sd	ra,104(sp)
    8001caf4:	f0a2                	sd	s0,96(sp)
    8001caf6:	ec66                	sd	s9,24(sp)
    8001caf8:	8b2a                	mv	s6,a0
    8001cafa:	8aae                	mv	s5,a1
    8001cafc:	89b2                	mv	s3,a2
    8001cafe:	84b6                	mv	s1,a3
    8001cb00:	8a3a                	mv	s4,a4
    8001cb02:	893e                	mv	s2,a5
add_resolve_entry():
quickjs-nuttx/quickjs.c:27530
    if (js_resize_array(ctx, (void **)&s->array,
    8001cb04:	00878b93          	addi	s7,a5,8
js_resolve_export1():
quickjs-nuttx/quickjs.c:27574
            if (me->local_name == JS_ATOM__star_) {
    8001cb08:	07e00c13          	li	s8,126
quickjs-nuttx/quickjs.c:27557
    *pmodule = NULL;
    8001cb0c:	000ab023          	sd	zero,0(s5)
quickjs-nuttx/quickjs.c:27558
    *pme = NULL;
    8001cb10:	0009b023          	sd	zero,0(s3)
find_resolve_entry():
quickjs-nuttx/quickjs.c:27517
    for(i = 0; i < s->count; i++) {
    8001cb14:	00c92703          	lw	a4,12(s2)
    8001cb18:	4781                	li	a5,0
    8001cb1a:	0007869b          	sext.w	a3,a5
    8001cb1e:	04e6cc63          	blt	a3,a4,8001cb76 <js_resolve_export1+0x96>
add_resolve_entry():
quickjs-nuttx/quickjs.c:27530
    if (js_resize_array(ctx, (void **)&s->array,
    8001cb22:	2705                	addiw	a4,a4,1
    8001cb24:	86de                	mv	a3,s7
    8001cb26:	4641                	li	a2,16
    8001cb28:	85ca                	mv	a1,s2
    8001cb2a:	855a                	mv	a0,s6
    8001cb2c:	e81ff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001cb30:	842a                	mv	s0,a0
    8001cb32:	10051e63          	bnez	a0,8001cc4e <js_resolve_export1+0x16e>
quickjs-nuttx/quickjs.c:27534
    re = &s->array[s->count++];
    8001cb36:	00c92783          	lw	a5,12(s2)
    8001cb3a:	00093c83          	ld	s9,0(s2)
quickjs-nuttx/quickjs.c:27536
    re->name = JS_DupAtom(ctx, name);
    8001cb3e:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:27534
    re = &s->array[s->count++];
    8001cb40:	0017871b          	addiw	a4,a5,1
    8001cb44:	0792                	slli	a5,a5,0x4
    8001cb46:	00e92623          	sw	a4,12(s2)
    8001cb4a:	9cbe                	add	s9,s9,a5
quickjs-nuttx/quickjs.c:27535
    re->module = m;
    8001cb4c:	009cb023          	sd	s1,0(s9)
quickjs-nuttx/quickjs.c:27536
    re->name = JS_DupAtom(ctx, name);
    8001cb50:	855a                	mv	a0,s6
    8001cb52:	db4ee0ef          	jal	ra,8000b106 <JS_DupAtom>
    8001cb56:	00aca423          	sw	a0,8(s9)
find_export_entry():
quickjs-nuttx/quickjs.c:27240
    for(i = 0; i < m->export_entries_count; i++) {
    8001cb5a:	5894                	lw	a3,48(s1)
    8001cb5c:	4701                	li	a4,0
    8001cb5e:	0007079b          	sext.w	a5,a4
    8001cb62:	02d7c763          	blt	a5,a3,8001cb90 <js_resolve_export1+0xb0>
js_resolve_export1():
quickjs-nuttx/quickjs.c:27585
        if (export_name != JS_ATOM_default) {
    8001cb66:	47d9                	li	a5,22
    8001cb68:	0efa0563          	beq	s4,a5,8001cc52 <js_resolve_export1+0x172>
quickjs-nuttx/quickjs.c:27598
                if (ret == JS_RESOLVE_RES_AMBIGUOUS ||
    8001cb6c:	4c0d                	li	s8,3
    8001cb6e:	5bfd                	li	s7,-1
    8001cb70:	a0e9                	j	8001cc3a <js_resolve_export1+0x15a>
quickjs-nuttx/quickjs.c:27580
                return js_resolve_export1(ctx, pmodule, pme, m1,
    8001cb72:	84ba                	mv	s1,a4
    8001cb74:	bf61                	j	8001cb0c <js_resolve_export1+0x2c>
find_resolve_entry():
quickjs-nuttx/quickjs.c:27518
        JSResolveEntry *re = &s->array[i];
    8001cb76:	00093603          	ld	a2,0(s2)
    8001cb7a:	00479693          	slli	a3,a5,0x4
    8001cb7e:	96b2                	add	a3,a3,a2
quickjs-nuttx/quickjs.c:27519
        if (re->module == m && re->name == name)
    8001cb80:	6290                	ld	a2,0(a3)
    8001cb82:	00c49563          	bne	s1,a2,8001cb8c <js_resolve_export1+0xac>
    8001cb86:	4694                	lw	a3,8(a3)
    8001cb88:	0d468163          	beq	a3,s4,8001cc4a <js_resolve_export1+0x16a>
quickjs-nuttx/quickjs.c:27517
    for(i = 0; i < s->count; i++) {
    8001cb8c:	0785                	addi	a5,a5,1
    8001cb8e:	b771                	j	8001cb1a <js_resolve_export1+0x3a>
find_export_entry():
quickjs-nuttx/quickjs.c:27241
        me = &m->export_entries[i];
    8001cb90:	749c                	ld	a5,40(s1)
    8001cb92:	00571613          	slli	a2,a4,0x5
quickjs-nuttx/quickjs.c:27242
        if (me->export_name == export_name)
    8001cb96:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:27241
        me = &m->export_entries[i];
    8001cb98:	97b2                	add	a5,a5,a2
quickjs-nuttx/quickjs.c:27242
        if (me->export_name == export_name)
    8001cb9a:	4f90                	lw	a2,24(a5)
    8001cb9c:	fd4611e3          	bne	a2,s4,8001cb5e <js_resolve_export1+0x7e>
js_resolve_export1():
quickjs-nuttx/quickjs.c:27565
        if (me->export_type == JS_EXPORT_TYPE_LOCAL) {
    8001cba0:	4b98                	lw	a4,16(a5)
    8001cba2:	cb11                	beqz	a4,8001cbb6 <js_resolve_export1+0xd6>
quickjs-nuttx/quickjs.c:27573
            m1 = m->req_module_entries[me->u.req_module_idx].module;
    8001cba4:	4394                	lw	a3,0(a5)
    8001cba6:	6c98                	ld	a4,24(s1)
quickjs-nuttx/quickjs.c:27574
            if (me->local_name == JS_ATOM__star_) {
    8001cba8:	0147aa03          	lw	s4,20(a5)
quickjs-nuttx/quickjs.c:27573
            m1 = m->req_module_entries[me->u.req_module_idx].module;
    8001cbac:	0692                	slli	a3,a3,0x4
    8001cbae:	9736                	add	a4,a4,a3
    8001cbb0:	6718                	ld	a4,8(a4)
quickjs-nuttx/quickjs.c:27574
            if (me->local_name == JS_ATOM__star_) {
    8001cbb2:	fd8a10e3          	bne	s4,s8,8001cb72 <js_resolve_export1+0x92>
quickjs-nuttx/quickjs.c:27576
                *pmodule = m;
    8001cbb6:	009ab023          	sd	s1,0(s5)
quickjs-nuttx/quickjs.c:27577
                *pme = me;
    8001cbba:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/quickjs.c:27620
}
    8001cbbe:	70a6                	ld	ra,104(sp)
    8001cbc0:	8522                	mv	a0,s0
    8001cbc2:	7406                	ld	s0,96(sp)
    8001cbc4:	64e6                	ld	s1,88(sp)
    8001cbc6:	6946                	ld	s2,80(sp)
    8001cbc8:	69a6                	ld	s3,72(sp)
    8001cbca:	6a06                	ld	s4,64(sp)
    8001cbcc:	7ae2                	ld	s5,56(sp)
    8001cbce:	7b42                	ld	s6,48(sp)
    8001cbd0:	7ba2                	ld	s7,40(sp)
    8001cbd2:	7c02                	ld	s8,32(sp)
    8001cbd4:	6ce2                	ld	s9,24(sp)
    8001cbd6:	6165                	addi	sp,sp,112
    8001cbd8:	8082                	ret
quickjs-nuttx/quickjs.c:27595
                m1 = m->req_module_entries[se->req_module_idx].module;
    8001cbda:	7c9c                	ld	a5,56(s1)
    8001cbdc:	00241713          	slli	a4,s0,0x2
    8001cbe0:	6c94                	ld	a3,24(s1)
    8001cbe2:	97ba                	add	a5,a5,a4
    8001cbe4:	439c                	lw	a5,0(a5)
quickjs-nuttx/quickjs.c:27596
                ret = js_resolve_export1(ctx, &res_m, &res_me, m1,
    8001cbe6:	8752                	mv	a4,s4
    8001cbe8:	0030                	addi	a2,sp,8
quickjs-nuttx/quickjs.c:27595
                m1 = m->req_module_entries[se->req_module_idx].module;
    8001cbea:	0792                	slli	a5,a5,0x4
    8001cbec:	96be                	add	a3,a3,a5
quickjs-nuttx/quickjs.c:27596
                ret = js_resolve_export1(ctx, &res_m, &res_me, m1,
    8001cbee:	6694                	ld	a3,8(a3)
    8001cbf0:	87ca                	mv	a5,s2
    8001cbf2:	858a                	mv	a1,sp
    8001cbf4:	855a                	mv	a0,s6
    8001cbf6:	eebff0ef          	jal	ra,8001cae0 <js_resolve_export1>
    8001cbfa:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:27598
                if (ret == JS_RESOLVE_RES_AMBIGUOUS ||
    8001cbfc:	03850763          	beq	a0,s8,8001cc2a <js_resolve_export1+0x14a>
quickjs-nuttx/quickjs.c:27598 (discriminator 1)
    8001cc00:	03750563          	beq	a0,s7,8001cc2a <js_resolve_export1+0x14a>
quickjs-nuttx/quickjs.c:27601
                } else if (ret == JS_RESOLVE_RES_FOUND) {
    8001cc04:	e915                	bnez	a0,8001cc38 <js_resolve_export1+0x158>
quickjs-nuttx/quickjs.c:27602
                    if (*pme != NULL) {
    8001cc06:	0009b703          	ld	a4,0(s3)
quickjs-nuttx/quickjs.c:27603
                        if (*pmodule != res_m ||
    8001cc0a:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:27602
                    if (*pme != NULL) {
    8001cc0c:	c30d                	beqz	a4,8001cc2e <js_resolve_export1+0x14e>
quickjs-nuttx/quickjs.c:27603
                        if (*pmodule != res_m ||
    8001cc0e:	000ab683          	ld	a3,0(s5)
    8001cc12:	00f69763          	bne	a3,a5,8001cc20 <js_resolve_export1+0x140>
quickjs-nuttx/quickjs.c:27603 (discriminator 1)
    8001cc16:	67a2                	ld	a5,8(sp)
    8001cc18:	4bd4                	lw	a3,20(a5)
    8001cc1a:	4b5c                	lw	a5,20(a4)
    8001cc1c:	00f68e63          	beq	a3,a5,8001cc38 <js_resolve_export1+0x158>
quickjs-nuttx/quickjs.c:27605
                            *pmodule = NULL;
    8001cc20:	000ab023          	sd	zero,0(s5)
quickjs-nuttx/quickjs.c:27606
                            *pme = NULL;
    8001cc24:	0009b023          	sd	zero,0(s3)
quickjs-nuttx/quickjs.c:27607
                            return JS_RESOLVE_RES_AMBIGUOUS;
    8001cc28:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:27600 (discriminator 1)
                    return ret;
    8001cc2a:	843e                	mv	s0,a5
    8001cc2c:	bf49                	j	8001cbbe <js_resolve_export1+0xde>
quickjs-nuttx/quickjs.c:27610
                        *pmodule = res_m;
    8001cc2e:	00fab023          	sd	a5,0(s5)
quickjs-nuttx/quickjs.c:27611
                        *pme = res_me;
    8001cc32:	67a2                	ld	a5,8(sp)
    8001cc34:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/quickjs.c:27589 (discriminator 1)
            for(i = 0; i < m->star_export_entries_count; i++) {
    8001cc38:	2405                	addiw	s0,s0,1
    8001cc3a:	40bc                	lw	a5,64(s1)
    8001cc3c:	f8f44fe3          	blt	s0,a5,8001cbda <js_resolve_export1+0xfa>
quickjs-nuttx/quickjs.c:27615
            if (*pme != NULL)
    8001cc40:	0009b403          	ld	s0,0(s3)
quickjs-nuttx/quickjs.c:27560
        return JS_RESOLVE_RES_CIRCULAR;
    8001cc44:	00143413          	seqz	s0,s0
    8001cc48:	bf9d                	j	8001cbbe <js_resolve_export1+0xde>
    8001cc4a:	4409                	li	s0,2
    8001cc4c:	bf8d                	j	8001cbbe <js_resolve_export1+0xde>
quickjs-nuttx/quickjs.c:27562
        return JS_RESOLVE_RES_EXCEPTION;
    8001cc4e:	547d                	li	s0,-1
    8001cc50:	b7bd                	j	8001cbbe <js_resolve_export1+0xde>
quickjs-nuttx/quickjs.c:27618
        return JS_RESOLVE_RES_NOT_FOUND;
    8001cc52:	4405                	li	s0,1
    8001cc54:	b7ad                	j	8001cbbe <js_resolve_export1+0xde>

000000008001cc56 <js_resolve_export>:
js_resolve_export():
quickjs-nuttx/quickjs.c:27630
{
    8001cc56:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:27639
    ret = js_resolve_export1(ctx, pmodule, pme, m, export_name, s);
    8001cc58:	878a                	mv	a5,sp
quickjs-nuttx/quickjs.c:27630
{
    8001cc5a:	f022                	sd	s0,32(sp)
    8001cc5c:	ec26                	sd	s1,24(sp)
    8001cc5e:	e84a                	sd	s2,16(sp)
    8001cc60:	f406                	sd	ra,40(sp)
    8001cc62:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:27635
    s->array = NULL;
    8001cc64:	e002                	sd	zero,0(sp)
quickjs-nuttx/quickjs.c:27636
    s->size = 0;
    8001cc66:	e402                	sd	zero,8(sp)
quickjs-nuttx/quickjs.c:27639
    ret = js_resolve_export1(ctx, pmodule, pme, m, export_name, s);
    8001cc68:	e79ff0ef          	jal	ra,8001cae0 <js_resolve_export1>
    8001cc6c:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:27641
    for(i = 0; i < s->count; i++)
    8001cc6e:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:27641 (discriminator 1)
    8001cc70:	47b2                	lw	a5,12(sp)
quickjs-nuttx/quickjs.c:27642 (discriminator 1)
        JS_FreeAtom(ctx, s->array[i].name);
    8001cc72:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:27641 (discriminator 1)
    for(i = 0; i < s->count; i++)
    8001cc74:	00f4cc63          	blt	s1,a5,8001cc8c <js_resolve_export+0x36>
quickjs-nuttx/quickjs.c:27643
    js_free(ctx, s->array);
    8001cc78:	8522                	mv	a0,s0
    8001cc7a:	b7cee0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27646
}
    8001cc7e:	70a2                	ld	ra,40(sp)
    8001cc80:	7402                	ld	s0,32(sp)
    8001cc82:	64e2                	ld	s1,24(sp)
    8001cc84:	854a                	mv	a0,s2
    8001cc86:	6942                	ld	s2,16(sp)
    8001cc88:	6145                	addi	sp,sp,48
    8001cc8a:	8082                	ret
quickjs-nuttx/quickjs.c:27642 (discriminator 3)
        JS_FreeAtom(ctx, s->array[i].name);
    8001cc8c:	00449793          	slli	a5,s1,0x4
    8001cc90:	95be                	add	a1,a1,a5
    8001cc92:	458c                	lw	a1,8(a1)
    8001cc94:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:27641 (discriminator 3)
    for(i = 0; i < s->count; i++)
    8001cc96:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:27642 (discriminator 3)
        JS_FreeAtom(ctx, s->array[i].name);
    8001cc98:	cb0ee0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27641 (discriminator 3)
    for(i = 0; i < s->count; i++)
    8001cc9c:	bfd1                	j	8001cc70 <js_resolve_export+0x1a>

000000008001cc9e <gather_available_ancestors>:
gather_available_ancestors():
quickjs-nuttx/quickjs.c:28577
{
    8001cc9e:	715d                	addi	sp,sp,-80
    8001cca0:	e0a2                	sd	s0,64(sp)
    8001cca2:	e486                	sd	ra,72(sp)
    8001cca4:	fc26                	sd	s1,56(sp)
    8001cca6:	f84a                	sd	s2,48(sp)
    8001cca8:	f44e                	sd	s3,40(sp)
    8001ccaa:	f052                	sd	s4,32(sp)
    8001ccac:	ec56                	sd	s5,24(sp)
    8001ccae:	e85a                	sd	s6,16(sp)
    8001ccb0:	e45e                	sd	s7,8(sp)
    8001ccb2:	0880                	addi	s0,sp,80
quickjs-nuttx/quickjs.c:28580
    if (js_check_stack_overflow(ctx->rt, 0)) {
    8001ccb4:	6d1c                	ld	a5,24(a0)
    8001ccb6:	6ffc                	ld	a5,216(a5)
    8001ccb8:	00f46f63          	bltu	s0,a5,8001ccd6 <gather_available_ancestors+0x38>
    8001ccbc:	89aa                	mv	s3,a0
    8001ccbe:	8aae                	mv	s5,a1
    8001ccc0:	84b2                	mv	s1,a2
    8001ccc2:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:28588
            assert(m->status == JS_MODULE_STATUS_EVALUATING_ASYNC);
    8001ccc4:	4b11                	li	s6,4
quickjs-nuttx/quickjs.c:28594
                if (js_resize_array(ctx, (void **)&exec_list->tab, sizeof(exec_list->tab[0]), &exec_list->size, exec_list->count + 1)) {
    8001ccc6:	00c60b93          	addi	s7,a2,12 # fffffffffc00000c <_ebss+0xffffffff7befeea6>
quickjs-nuttx/quickjs.c:28584 (discriminator 1)
    for(i = 0; i < module->async_parent_modules_count; i++) {
    8001ccca:	0a0aa783          	lw	a5,160(s5)
    8001ccce:	02fa4263          	blt	s4,a5,8001ccf2 <gather_available_ancestors+0x54>
quickjs-nuttx/quickjs.c:28605
    return 0;
    8001ccd2:	4501                	li	a0,0
    8001ccd4:	a021                	j	8001ccdc <gather_available_ancestors+0x3e>
quickjs-nuttx/quickjs.c:28581
        JS_ThrowStackOverflow(ctx);
    8001ccd6:	c4dfc0ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:28595
                    return -1;
    8001ccda:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:28606
}
    8001ccdc:	60a6                	ld	ra,72(sp)
    8001ccde:	6406                	ld	s0,64(sp)
    8001cce0:	74e2                	ld	s1,56(sp)
    8001cce2:	7942                	ld	s2,48(sp)
    8001cce4:	79a2                	ld	s3,40(sp)
    8001cce6:	7a02                	ld	s4,32(sp)
    8001cce8:	6ae2                	ld	s5,24(sp)
    8001ccea:	6b42                	ld	s6,16(sp)
    8001ccec:	6ba2                	ld	s7,8(sp)
    8001ccee:	6161                	addi	sp,sp,80
    8001ccf0:	8082                	ret
quickjs-nuttx/quickjs.c:28585
        JSModuleDef *m = module->async_parent_modules[i];
    8001ccf2:	098ab783          	ld	a5,152(s5)
    8001ccf6:	003a1713          	slli	a4,s4,0x3
find_in_exec_module_list():
quickjs-nuttx/quickjs.c:28568
    for(i = 0; i < exec_list->count; i++) {
    8001ccfa:	4494                	lw	a3,8(s1)
gather_available_ancestors():
quickjs-nuttx/quickjs.c:28585
        JSModuleDef *m = module->async_parent_modules[i];
    8001ccfc:	97ba                	add	a5,a5,a4
    8001ccfe:	0007b903          	ld	s2,0(a5)
find_in_exec_module_list():
quickjs-nuttx/quickjs.c:28568
    for(i = 0; i < exec_list->count; i++) {
    8001cd02:	4781                	li	a5,0
    8001cd04:	0007871b          	sext.w	a4,a5
    8001cd08:	02d74563          	blt	a4,a3,8001cd32 <gather_available_ancestors+0x94>
gather_available_ancestors():
quickjs-nuttx/quickjs.c:28587
            !m->cycle_root->eval_has_exception) {
    8001cd0c:	0b893783          	ld	a5,184(s2)
quickjs-nuttx/quickjs.c:28586
        if (!find_in_exec_module_list(exec_list, m) &&
    8001cd10:	0f07c783          	lbu	a5,240(a5)
    8001cd14:	e79d                	bnez	a5,8001cd42 <gather_available_ancestors+0xa4>
quickjs-nuttx/quickjs.c:28588
            assert(m->status == JS_MODULE_STATUS_EVALUATING_ASYNC);
    8001cd16:	08394783          	lbu	a5,131(s2)
    8001cd1a:	03678663          	beq	a5,s6,8001cd46 <gather_available_ancestors+0xa8>
quickjs-nuttx/quickjs.c:28588 (discriminator 1)
    8001cd1e:	659d                	lui	a1,0x7
    8001cd20:	4601                	li	a2,0
    8001cd22:	fac58593          	addi	a1,a1,-84 # 6fac <asinh-0x7fff9054>
quickjs-nuttx/quickjs.c:28589 (discriminator 1)
            assert(!m->eval_has_exception);
    8001cd26:	0004d517          	auipc	a0,0x4d
    8001cd2a:	87250513          	addi	a0,a0,-1934 # 80069598 <qjsc_repl+0x3fe8>
    8001cd2e:	42f430ef          	jal	ra,8006095c <__assert>
find_in_exec_module_list():
quickjs-nuttx/quickjs.c:28569
        if (exec_list->tab[i] == m)
    8001cd32:	6098                	ld	a4,0(s1)
    8001cd34:	00379613          	slli	a2,a5,0x3
    8001cd38:	0785                	addi	a5,a5,1
    8001cd3a:	9732                	add	a4,a4,a2
    8001cd3c:	6318                	ld	a4,0(a4)
    8001cd3e:	fce913e3          	bne	s2,a4,8001cd04 <gather_available_ancestors+0x66>
gather_available_ancestors():
quickjs-nuttx/quickjs.c:28584
    for(i = 0; i < module->async_parent_modules_count; i++) {
    8001cd42:	2a05                	addiw	s4,s4,1
    8001cd44:	b759                	j	8001ccca <gather_available_ancestors+0x2c>
quickjs-nuttx/quickjs.c:28589 (discriminator 2)
            assert(!m->eval_has_exception);
    8001cd46:	0f094783          	lbu	a5,240(s2)
    8001cd4a:	c791                	beqz	a5,8001cd56 <gather_available_ancestors+0xb8>
quickjs-nuttx/quickjs.c:28589 (discriminator 1)
    8001cd4c:	659d                	lui	a1,0x7
    8001cd4e:	4601                	li	a2,0
    8001cd50:	fad58593          	addi	a1,a1,-83 # 6fad <asinh-0x7fff9053>
    8001cd54:	bfc9                	j	8001cd26 <gather_available_ancestors+0x88>
quickjs-nuttx/quickjs.c:28590 (discriminator 2)
            assert(m->async_evaluation);
    8001cd56:	0ac92783          	lw	a5,172(s2)
    8001cd5a:	e791                	bnez	a5,8001cd66 <gather_available_ancestors+0xc8>
quickjs-nuttx/quickjs.c:28590 (discriminator 1)
    8001cd5c:	659d                	lui	a1,0x7
    8001cd5e:	4601                	li	a2,0
    8001cd60:	fae58593          	addi	a1,a1,-82 # 6fae <asinh-0x7fff9052>
    8001cd64:	b7c9                	j	8001cd26 <gather_available_ancestors+0x88>
quickjs-nuttx/quickjs.c:28591 (discriminator 2)
            assert(m->pending_async_dependencies > 0);
    8001cd66:	0a892783          	lw	a5,168(s2)
    8001cd6a:	00f04763          	bgtz	a5,8001cd78 <gather_available_ancestors+0xda>
quickjs-nuttx/quickjs.c:28591 (discriminator 1)
    8001cd6e:	659d                	lui	a1,0x7
    8001cd70:	4601                	li	a2,0
    8001cd72:	faf58593          	addi	a1,a1,-81 # 6faf <asinh-0x7fff9051>
    8001cd76:	bf45                	j	8001cd26 <gather_available_ancestors+0x88>
quickjs-nuttx/quickjs.c:28592 (discriminator 2)
            m->pending_async_dependencies--;
    8001cd78:	fff7871b          	addiw	a4,a5,-1
    8001cd7c:	0ae92423          	sw	a4,168(s2)
quickjs-nuttx/quickjs.c:28593 (discriminator 2)
            if (m->pending_async_dependencies == 0) {
    8001cd80:	f369                	bnez	a4,8001cd42 <gather_available_ancestors+0xa4>
quickjs-nuttx/quickjs.c:28594
                if (js_resize_array(ctx, (void **)&exec_list->tab, sizeof(exec_list->tab[0]), &exec_list->size, exec_list->count + 1)) {
    8001cd82:	4498                	lw	a4,8(s1)
    8001cd84:	86de                	mv	a3,s7
    8001cd86:	4621                	li	a2,8
    8001cd88:	2705                	addiw	a4,a4,1
    8001cd8a:	85a6                	mv	a1,s1
    8001cd8c:	854e                	mv	a0,s3
    8001cd8e:	c1fff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001cd92:	f521                	bnez	a0,8001ccda <gather_available_ancestors+0x3c>
quickjs-nuttx/quickjs.c:28597
                exec_list->tab[exec_list->count++] = m;
    8001cd94:	449c                	lw	a5,8(s1)
    8001cd96:	6098                	ld	a4,0(s1)
    8001cd98:	0017869b          	addiw	a3,a5,1
    8001cd9c:	078e                	slli	a5,a5,0x3
    8001cd9e:	c494                	sw	a3,8(s1)
    8001cda0:	97ba                	add	a5,a5,a4
    8001cda2:	0127b023          	sd	s2,0(a5)
quickjs-nuttx/quickjs.c:28598
                if (!m->has_tla) {
    8001cda6:	08094783          	lbu	a5,128(s2)
    8001cdaa:	ffc1                	bnez	a5,8001cd42 <gather_available_ancestors+0xa4>
quickjs-nuttx/quickjs.c:28599
                    if (gather_available_ancestors(ctx, m, exec_list))
    8001cdac:	8626                	mv	a2,s1
    8001cdae:	85ca                	mv	a1,s2
    8001cdb0:	854e                	mv	a0,s3
    8001cdb2:	eedff0ef          	jal	ra,8001cc9e <gather_available_ancestors>
    8001cdb6:	d551                	beqz	a0,8001cd42 <gather_available_ancestors+0xa4>
    8001cdb8:	b70d                	j	8001ccda <gather_available_ancestors+0x3c>

000000008001cdba <bc_atom_to_idx>:
bc_atom_to_idx():
quickjs-nuttx/quickjs.c:34673
{
    8001cdba:	7179                	addi	sp,sp,-48
    8001cdbc:	e84a                	sd	s2,16(sp)
    8001cdbe:	f406                	sd	ra,40(sp)
    8001cdc0:	f022                	sd	s0,32(sp)
    8001cdc2:	ec26                	sd	s1,24(sp)
    8001cdc4:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:34676
    if (atom < s->first_atom || __JS_AtomIsTaggedInt(atom)) {
    8001cdc6:	5d44                	lw	s1,60(a0)
quickjs-nuttx/quickjs.c:34673
{
    8001cdc8:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:34676
    if (atom < s->first_atom || __JS_AtomIsTaggedInt(atom)) {
    8001cdca:	00966463          	bltu	a2,s1,8001cdd2 <bc_atom_to_idx+0x18>
    8001cdce:	00065c63          	bgez	a2,8001cde6 <bc_atom_to_idx+0x2c>
quickjs-nuttx/quickjs.c:34677
        *pres = atom;
    8001cdd2:	00c92023          	sw	a2,0(s2)
quickjs-nuttx/quickjs.c:34683
        return 0;
    8001cdd6:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:34710
}
    8001cdd8:	70a2                	ld	ra,40(sp)
    8001cdda:	7402                	ld	s0,32(sp)
    8001cddc:	64e2                	ld	s1,24(sp)
    8001cdde:	6942                	ld	s2,16(sp)
    8001cde0:	69a2                	ld	s3,8(sp)
    8001cde2:	6145                	addi	sp,sp,48
    8001cde4:	8082                	ret
quickjs-nuttx/quickjs.c:34681
    if (atom < s->atom_to_idx_size && s->atom_to_idx[atom] != 0) {
    8001cde6:	04852983          	lw	s3,72(a0)
quickjs-nuttx/quickjs.c:34680
    atom -= s->first_atom;
    8001cdea:	409604bb          	subw	s1,a2,s1
    8001cdee:	0004879b          	sext.w	a5,s1
    8001cdf2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:34681
    if (atom < s->atom_to_idx_size && s->atom_to_idx[atom] != 0) {
    8001cdf4:	0337fb63          	bgeu	a5,s3,8001ce2a <bc_atom_to_idx+0x70>
quickjs-nuttx/quickjs.c:34681 (discriminator 1)
    8001cdf8:	613c                	ld	a5,64(a0)
    8001cdfa:	02049693          	slli	a3,s1,0x20
    8001cdfe:	01e6d713          	srli	a4,a3,0x1e
    8001ce02:	97ba                	add	a5,a5,a4
    8001ce04:	439c                	lw	a5,0(a5)
    8001ce06:	e385                	bnez	a5,8001ce26 <bc_atom_to_idx+0x6c>
quickjs-nuttx/quickjs.c:34696
    if (js_resize_array(s->ctx, (void **)&s->idx_to_atom,
    8001ce08:	4c38                	lw	a4,88(s0)
    8001ce0a:	6008                	ld	a0,0(s0)
    8001ce0c:	05c40693          	addi	a3,s0,92
    8001ce10:	2705                	addiw	a4,a4,1
    8001ce12:	4611                	li	a2,4
    8001ce14:	05040593          	addi	a1,s0,80
    8001ce18:	b95ff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001ce1c:	cd1d                	beqz	a0,8001ce5a <bc_atom_to_idx+0xa0>
quickjs-nuttx/quickjs.c:34708
    *pres = 0;
    8001ce1e:	00092023          	sw	zero,0(s2)
quickjs-nuttx/quickjs.c:34709
    return -1;
    8001ce22:	557d                	li	a0,-1
    8001ce24:	bf55                	j	8001cdd8 <bc_atom_to_idx+0x1e>
quickjs-nuttx/quickjs.c:34682
        *pres = s->atom_to_idx[atom];
    8001ce26:	c19c                	sw	a5,0(a1)
    8001ce28:	b77d                	j	8001cdd6 <bc_atom_to_idx+0x1c>
quickjs-nuttx/quickjs.c:34688
        if (js_resize_array(s->ctx, (void **)&s->atom_to_idx,
    8001ce2a:	04850693          	addi	a3,a0,72
    8001ce2e:	04050593          	addi	a1,a0,64
    8001ce32:	6108                	ld	a0,0(a0)
    8001ce34:	0014871b          	addiw	a4,s1,1
    8001ce38:	4611                	li	a2,4
    8001ce3a:	b73ff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001ce3e:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:34691
            return -1;
    8001ce40:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:34688
        if (js_resize_array(s->ctx, (void **)&s->atom_to_idx,
    8001ce42:	fbd9                	bnez	a5,8001cdd8 <bc_atom_to_idx+0x1e>
quickjs-nuttx/quickjs.c:34693 (discriminator 1)
        for(i = old_size; i < s->atom_to_idx_size; i++)
    8001ce44:	443c                	lw	a5,72(s0)
    8001ce46:	fcf9d1e3          	bge	s3,a5,8001ce08 <bc_atom_to_idx+0x4e>
quickjs-nuttx/quickjs.c:34694 (discriminator 3)
            s->atom_to_idx[i] = 0;
    8001ce4a:	603c                	ld	a5,64(s0)
    8001ce4c:	00299713          	slli	a4,s3,0x2
quickjs-nuttx/quickjs.c:34693 (discriminator 3)
        for(i = old_size; i < s->atom_to_idx_size; i++)
    8001ce50:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:34694 (discriminator 3)
            s->atom_to_idx[i] = 0;
    8001ce52:	97ba                	add	a5,a5,a4
    8001ce54:	0007a023          	sw	zero,0(a5)
quickjs-nuttx/quickjs.c:34693 (discriminator 3)
        for(i = old_size; i < s->atom_to_idx_size; i++)
    8001ce58:	b7f5                	j	8001ce44 <bc_atom_to_idx+0x8a>
quickjs-nuttx/quickjs.c:34701
    v = s->idx_to_atom_count++;
    8001ce5a:	4c38                	lw	a4,88(s0)
    8001ce5c:	0017079b          	addiw	a5,a4,1
    8001ce60:	cc3c                	sw	a5,88(s0)
quickjs-nuttx/quickjs.c:34702
    s->idx_to_atom[v] = atom + s->first_atom;
    8001ce62:	683c                	ld	a5,80(s0)
    8001ce64:	02071613          	slli	a2,a4,0x20
    8001ce68:	01e65693          	srli	a3,a2,0x1e
    8001ce6c:	97b6                	add	a5,a5,a3
    8001ce6e:	5c54                	lw	a3,60(s0)
    8001ce70:	9ea5                	addw	a3,a3,s1
    8001ce72:	c394                	sw	a3,0(a5)
quickjs-nuttx/quickjs.c:34703
    v += s->first_atom;
    8001ce74:	5c5c                	lw	a5,60(s0)
quickjs-nuttx/quickjs.c:34704
    s->atom_to_idx[atom] = v;
    8001ce76:	02049693          	slli	a3,s1,0x20
    8001ce7a:	01e6d493          	srli	s1,a3,0x1e
quickjs-nuttx/quickjs.c:34703
    v += s->first_atom;
    8001ce7e:	9fb9                	addw	a5,a5,a4
quickjs-nuttx/quickjs.c:34704
    s->atom_to_idx[atom] = v;
    8001ce80:	6038                	ld	a4,64(s0)
    8001ce82:	94ba                	add	s1,s1,a4
    8001ce84:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:34705
    *pres = v;
    8001ce86:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:34706
    return 0;
    8001ce8a:	b7b9                	j	8001cdd8 <bc_atom_to_idx+0x1e>

000000008001ce8c <bc_put_atom.isra.0>:
bc_put_atom():
quickjs-nuttx/quickjs.c:34712
static int bc_put_atom(BCWriterState *s, JSAtom atom)
    8001ce8c:	1101                	addi	sp,sp,-32
    8001ce8e:	e822                	sd	s0,16(sp)
    8001ce90:	ec06                	sd	ra,24(sp)
    8001ce92:	842a                	mv	s0,a0
    8001ce94:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:34716
    if (__JS_AtomIsTaggedInt(atom)) {
    8001ce96:	0205d063          	bgez	a1,8001ceb6 <bc_put_atom.isra.0+0x2a>
quickjs-nuttx/quickjs.c:34717
        v = (__JS_AtomToUInt32(atom) << 1) | 1;
    8001ce9a:	0015961b          	slliw	a2,a1,0x1
    8001ce9e:	00166613          	ori	a2,a2,1
    8001cea2:	c632                	sw	a2,12(sp)
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8001cea4:	45b2                	lw	a1,12(sp)
    8001cea6:	00840513          	addi	a0,s0,8
    8001ceaa:	e27eb0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
bc_put_atom():
quickjs-nuttx/quickjs.c:34725
}
    8001ceae:	60e2                	ld	ra,24(sp)
    8001ceb0:	6442                	ld	s0,16(sp)
    8001ceb2:	6105                	addi	sp,sp,32
    8001ceb4:	8082                	ret
quickjs-nuttx/quickjs.c:34719
        if (bc_atom_to_idx(s, &v, atom))
    8001ceb6:	006c                	addi	a1,sp,12
    8001ceb8:	f03ff0ef          	jal	ra,8001cdba <bc_atom_to_idx>
    8001cebc:	f96d                	bnez	a0,8001ceae <bc_put_atom.isra.0+0x22>
quickjs-nuttx/quickjs.c:34721
        v <<= 1;
    8001cebe:	47b2                	lw	a5,12(sp)
    8001cec0:	0017979b          	slliw	a5,a5,0x1
    8001cec4:	c63e                	sw	a5,12(sp)
    8001cec6:	bff9                	j	8001cea4 <bc_put_atom.isra.0+0x18>

000000008001cec8 <BC_add_object_ref1>:
BC_add_object_ref1():
quickjs-nuttx/quickjs.c:35900
    if (s->allow_reference) {
    8001cec8:	03754783          	lbu	a5,55(a0)
    8001cecc:	cf9d                	beqz	a5,8001cf0a <BC_add_object_ref1+0x42>
quickjs-nuttx/quickjs.c:35899
{
    8001cece:	1101                	addi	sp,sp,-32
    8001ced0:	e822                	sd	s0,16(sp)
    8001ced2:	e426                	sd	s1,8(sp)
    8001ced4:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:35901
        if (js_resize_array(s->ctx, (void *)&s->objects,
    8001ced6:	4138                	lw	a4,64(a0)
    8001ced8:	842a                	mv	s0,a0
    8001ceda:	84ae                	mv	s1,a1
    8001cedc:	04450693          	addi	a3,a0,68
    8001cee0:	03850593          	addi	a1,a0,56
    8001cee4:	6108                	ld	a0,0(a0)
    8001cee6:	2705                	addiw	a4,a4,1
    8001cee8:	4621                	li	a2,8
    8001ceea:	ac3ff0ef          	jal	ra,8001c9ac <js_resize_array>
    8001ceee:	e105                	bnez	a0,8001cf0e <BC_add_object_ref1+0x46>
quickjs-nuttx/quickjs.c:35905
        s->objects[s->objects_count++] = p;
    8001cef0:	403c                	lw	a5,64(s0)
    8001cef2:	7c18                	ld	a4,56(s0)
    8001cef4:	0017869b          	addiw	a3,a5,1
    8001cef8:	078e                	slli	a5,a5,0x3
    8001cefa:	c034                	sw	a3,64(s0)
    8001cefc:	97ba                	add	a5,a5,a4
    8001cefe:	e384                	sd	s1,0(a5)
quickjs-nuttx/quickjs.c:35908
}
    8001cf00:	60e2                	ld	ra,24(sp)
    8001cf02:	6442                	ld	s0,16(sp)
    8001cf04:	64a2                	ld	s1,8(sp)
    8001cf06:	6105                	addi	sp,sp,32
    8001cf08:	8082                	ret
quickjs-nuttx/quickjs.c:35907
    return 0;
    8001cf0a:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:35908
}
    8001cf0c:	8082                	ret
quickjs-nuttx/quickjs.c:35904
            return -1;
    8001cf0e:	557d                	li	a0,-1
    8001cf10:	bfc5                	j	8001cf00 <BC_add_object_ref1+0x38>

000000008001cf12 <new_label_fd>:
new_label_fd():
quickjs-nuttx/quickjs.c:21502
    if (label < 0) {
    8001cf12:	0405db63          	bgez	a1,8001cf68 <new_label_fd+0x56>
quickjs-nuttx/quickjs.c:21499
{
    8001cf16:	1141                	addi	sp,sp,-16
    8001cf18:	e022                	sd	s0,0(sp)
    8001cf1a:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:21503
        if (js_resize_array(fd->ctx, (void *)&fd->label_slots,
    8001cf1c:	17c52703          	lw	a4,380(a0)
    8001cf20:	17050593          	addi	a1,a0,368
    8001cf24:	17850693          	addi	a3,a0,376
    8001cf28:	842a                	mv	s0,a0
    8001cf2a:	6108                	ld	a0,0(a0)
    8001cf2c:	2705                	addiw	a4,a4,1
    8001cf2e:	4661                	li	a2,24
    8001cf30:	a7dff0ef          	jal	ra,8001c9ac <js_resize_array>
quickjs-nuttx/quickjs.c:21506
            return -1;
    8001cf34:	55fd                	li	a1,-1
quickjs-nuttx/quickjs.c:21503
        if (js_resize_array(fd->ctx, (void *)&fd->label_slots,
    8001cf36:	e505                	bnez	a0,8001cf5e <new_label_fd+0x4c>
quickjs-nuttx/quickjs.c:21507
        label = fd->label_count++;
    8001cf38:	17c42583          	lw	a1,380(s0)
    8001cf3c:	0015879b          	addiw	a5,a1,1
    8001cf40:	16f42e23          	sw	a5,380(s0)
quickjs-nuttx/quickjs.c:21508
        ls = &fd->label_slots[label];
    8001cf44:	47e1                	li	a5,24
    8001cf46:	02f58733          	mul	a4,a1,a5
    8001cf4a:	17043783          	ld	a5,368(s0)
    8001cf4e:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:21509
        ls->ref_count = 0;
    8001cf50:	577d                	li	a4,-1
    8001cf52:	02071693          	slli	a3,a4,0x20
    8001cf56:	e394                	sd	a3,0(a5)
quickjs-nuttx/quickjs.c:21511
        ls->pos2 = -1;
    8001cf58:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:21513
        ls->first_reloc = NULL;
    8001cf5a:	0007b823          	sd	zero,16(a5)
quickjs-nuttx/quickjs.c:21516
}
    8001cf5e:	60a2                	ld	ra,8(sp)
    8001cf60:	6402                	ld	s0,0(sp)
    8001cf62:	852e                	mv	a0,a1
    8001cf64:	0141                	addi	sp,sp,16
    8001cf66:	8082                	ret
    8001cf68:	852e                	mv	a0,a1
    8001cf6a:	8082                	ret

000000008001cf6c <new_label>:
new_label():
quickjs-nuttx/quickjs.c:21520
    return new_label_fd(s->cur_func, -1);
    8001cf6c:	7528                	ld	a0,104(a0)
    8001cf6e:	55fd                	li	a1,-1
    8001cf70:	fa3ff06f          	j	8001cf12 <new_label_fd>

000000008001cf74 <emit_goto>:
emit_goto():
quickjs-nuttx/quickjs.c:21546
{
    8001cf74:	1101                	addi	sp,sp,-32
    8001cf76:	e822                	sd	s0,16(sp)
    8001cf78:	e426                	sd	s1,8(sp)
    8001cf7a:	e04a                	sd	s2,0(sp)
    8001cf7c:	ec06                	sd	ra,24(sp)
    8001cf7e:	84aa                	mv	s1,a0
    8001cf80:	892e                	mv	s2,a1
    8001cf82:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:21547
    if (js_is_live_code(s)) {
    8001cf84:	fbdea0ef          	jal	ra,80007f40 <js_is_live_code>
    8001cf88:	c131                	beqz	a0,8001cfcc <emit_goto+0x58>
quickjs-nuttx/quickjs.c:21548
        if (label < 0)
    8001cf8a:	00045663          	bgez	s0,8001cf96 <emit_goto+0x22>
quickjs-nuttx/quickjs.c:21549
            label = new_label(s);
    8001cf8e:	8526                	mv	a0,s1
    8001cf90:	fddff0ef          	jal	ra,8001cf6c <new_label>
    8001cf94:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:21550
        emit_op(s, opcode);
    8001cf96:	0ff97593          	zext.b	a1,s2
    8001cf9a:	8526                	mv	a0,s1
    8001cf9c:	95aec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:21551
        emit_u32(s, label);
    8001cfa0:	0004059b          	sext.w	a1,s0
    8001cfa4:	8526                	mv	a0,s1
    8001cfa6:	ae6ec0ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:21552
        s->cur_func->label_slots[label].ref_count++;
    8001cfaa:	47e1                	li	a5,24
    8001cfac:	02f40733          	mul	a4,s0,a5
    8001cfb0:	74b4                	ld	a3,104(s1)
    8001cfb2:	1706b783          	ld	a5,368(a3)
    8001cfb6:	97ba                	add	a5,a5,a4
    8001cfb8:	4398                	lw	a4,0(a5)
    8001cfba:	2705                	addiw	a4,a4,1
    8001cfbc:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.c:21556
}
    8001cfbe:	60e2                	ld	ra,24(sp)
    8001cfc0:	8522                	mv	a0,s0
    8001cfc2:	6442                	ld	s0,16(sp)
    8001cfc4:	64a2                	ld	s1,8(sp)
    8001cfc6:	6902                	ld	s2,0(sp)
    8001cfc8:	6105                	addi	sp,sp,32
    8001cfca:	8082                	ret
quickjs-nuttx/quickjs.c:21555
    return -1;
    8001cfcc:	547d                	li	s0,-1
    8001cfce:	bfc5                	j	8001cfbe <emit_goto+0x4a>

000000008001cfd0 <emit_class_field_init>:
emit_class_field_init():
quickjs-nuttx/quickjs.c:22752
{
    8001cfd0:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:22755
    emit_op(s, OP_scope_get_var);
    8001cfd2:	0ba00593          	li	a1,186
quickjs-nuttx/quickjs.c:22752
{
    8001cfd6:	ec06                	sd	ra,24(sp)
    8001cfd8:	e822                	sd	s0,16(sp)
    8001cfda:	e426                	sd	s1,8(sp)
    8001cfdc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:22755
    emit_op(s, OP_scope_get_var);
    8001cfde:	918ec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22756
    emit_atom(s, JS_ATOM_class_fields_init);
    8001cfe2:	8522                	mv	a0,s0
    8001cfe4:	07700593          	li	a1,119
    8001cfe8:	942ee0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22757
    emit_u16(s, s->cur_func->scope_level);
    8001cfec:	743c                	ld	a5,104(s0)
    8001cfee:	8522                	mv	a0,s0
    8001cff0:	0e07d583          	lhu	a1,224(a5)
    8001cff4:	fd1eb0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22760
    emit_op(s, OP_dup);
    8001cff8:	8522                	mv	a0,s0
    8001cffa:	45c5                	li	a1,17
    8001cffc:	8faec0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22761
    label_next = emit_goto(s, OP_if_false, -1);
