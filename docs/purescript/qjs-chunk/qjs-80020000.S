    8001f002:	02e00793          	li	a5,46
    8001f006:	8932                	mv	s2,a2
    8001f008:	00f70963          	beq	a4,a5,8001f01a <js_host_resolve_imported_module+0x40>
quickjs-nuttx/quickjs.c:27371
        return js_strdup(ctx, name);
    8001f00c:	85b2                	mv	a1,a2
    8001f00e:	952fb0ef          	jal	ra,8001a160 <js_strdup>
js_host_resolve_imported_module():
quickjs-nuttx/quickjs.c:27445
        cname = rt->module_normalize_func(ctx, base_cname, cname1,
    8001f012:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:27448
    if (!cname)
    8001f014:	0e051263          	bnez	a0,8001f0f8 <js_host_resolve_imported_module+0x11e>
    8001f018:	a035                	j	8001f044 <js_host_resolve_imported_module+0x6a>
    8001f01a:	8a2e                	mv	s4,a1
js_default_module_normalize_name():
quickjs-nuttx/quickjs.c:27374
    p = strrchr(base_name, '/');
    8001f01c:	8552                	mv	a0,s4
    8001f01e:	02f00593          	li	a1,47
    8001f022:	351440ef          	jal	ra,80063b72 <strrchr>
quickjs-nuttx/quickjs.c:27378
        len = 0;
    8001f026:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:27375
    if (p)
    8001f028:	c119                	beqz	a0,8001f02e <js_host_resolve_imported_module+0x54>
quickjs-nuttx/quickjs.c:27376
        len = p - base_name;
    8001f02a:	414509bb          	subw	s3,a0,s4
quickjs-nuttx/quickjs.c:27380
    filename = js_malloc(ctx, len + strlen(name) + 1 + 1);
    8001f02e:	854a                	mv	a0,s2
    8001f030:	553440ef          	jal	ra,80063d82 <strlen>
    8001f034:	00250593          	addi	a1,a0,2
    8001f038:	95ce                	add	a1,a1,s3
    8001f03a:	8526                	mv	a0,s1
    8001f03c:	8c8fb0ef          	jal	ra,8001a104 <js_malloc>
    8001f040:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:27381
    if (!filename)
    8001f042:	ed19                	bnez	a0,8001f060 <js_host_resolve_imported_module+0x86>
js_host_resolve_imported_module():
quickjs-nuttx/quickjs.c:27473
        return NULL;
    8001f044:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:27479
}
    8001f046:	60a6                	ld	ra,72(sp)
    8001f048:	6406                	ld	s0,64(sp)
    8001f04a:	74e2                	ld	s1,56(sp)
    8001f04c:	79a2                	ld	s3,40(sp)
    8001f04e:	7a02                	ld	s4,32(sp)
    8001f050:	6ae2                	ld	s5,24(sp)
    8001f052:	6b42                	ld	s6,16(sp)
    8001f054:	6ba2                	ld	s7,8(sp)
    8001f056:	6c02                	ld	s8,0(sp)
    8001f058:	854a                	mv	a0,s2
    8001f05a:	7942                	ld	s2,48(sp)
    8001f05c:	6161                	addi	sp,sp,80
    8001f05e:	8082                	ret
js_default_module_normalize_name():
quickjs-nuttx/quickjs.c:27383
    memcpy(filename, base_name, len);
    8001f060:	864e                	mv	a2,s3
    8001f062:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:27384
    filename[len] = '\0';
    8001f064:	99a2                	add	s3,s3,s0
quickjs-nuttx/quickjs.c:27383
    memcpy(filename, base_name, len);
    8001f066:	547440ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:27389
        if (r[0] == '.' && r[1] == '/') {
    8001f06a:	02e00a13          	li	s4,46
quickjs-nuttx/quickjs.c:27384
    filename[len] = '\0';
    8001f06e:	00098023          	sb	zero,0(s3) # e000 <asinh-0x7fff2000>
quickjs-nuttx/quickjs.c:27389
        if (r[0] == '.' && r[1] == '/') {
    8001f072:	02f00b13          	li	s6,47
quickjs-nuttx/quickjs.c:27401
            if (!strcmp(p, ".") || !strcmp(p, ".."))
    8001f076:	0004cb97          	auipc	s7,0x4c
    8001f07a:	842b8b93          	addi	s7,s7,-1982 # 8006a8b8 <qjsc_repl+0x5308>
    8001f07e:	0004dc17          	auipc	s8,0x4d
    8001f082:	5bac0c13          	addi	s8,s8,1466 # 8006c638 <qjsc_repl+0x7088>
quickjs-nuttx/quickjs.c:27389
        if (r[0] == '.' && r[1] == '/') {
    8001f086:	00094703          	lbu	a4,0(s2)
quickjs-nuttx/quickjs.c:27394
            if (filename[0] == '\0')
    8001f08a:	00044783          	lbu	a5,0(s0)
quickjs-nuttx/quickjs.c:27389
        if (r[0] == '.' && r[1] == '/') {
    8001f08e:	05471963          	bne	a4,s4,8001f0e0 <js_host_resolve_imported_module+0x106>
    8001f092:	00194703          	lbu	a4,1(s2)
    8001f096:	01671463          	bne	a4,s6,8001f09e <js_host_resolve_imported_module+0xc4>
quickjs-nuttx/quickjs.c:27390
            r += 2;
    8001f09a:	0909                	addi	s2,s2,2
    8001f09c:	b7ed                	j	8001f086 <js_host_resolve_imported_module+0xac>
quickjs-nuttx/quickjs.c:27391
        } else if (r[0] == '.' && r[1] == '.' && r[2] == '/') {
    8001f09e:	05471163          	bne	a4,s4,8001f0e0 <js_host_resolve_imported_module+0x106>
    8001f0a2:	00294703          	lbu	a4,2(s2)
    8001f0a6:	03671d63          	bne	a4,s6,8001f0e0 <js_host_resolve_imported_module+0x106>
quickjs-nuttx/quickjs.c:27394
            if (filename[0] == '\0')
    8001f0aa:	c3b9                	beqz	a5,8001f0f0 <js_host_resolve_imported_module+0x116>
quickjs-nuttx/quickjs.c:27396
            p = strrchr(filename, '/');
    8001f0ac:	02f00593          	li	a1,47
    8001f0b0:	8522                	mv	a0,s0
    8001f0b2:	2c1440ef          	jal	ra,80063b72 <strrchr>
quickjs-nuttx/quickjs.c:27397
            if (!p)
    8001f0b6:	89a2                	mv	s3,s0
    8001f0b8:	c119                	beqz	a0,8001f0be <js_host_resolve_imported_module+0xe4>
quickjs-nuttx/quickjs.c:27400
                p++;
    8001f0ba:	00150993          	addi	s3,a0,1
quickjs-nuttx/quickjs.c:27401
            if (!strcmp(p, ".") || !strcmp(p, ".."))
    8001f0be:	85de                	mv	a1,s7
    8001f0c0:	854e                	mv	a0,s3
    8001f0c2:	45f440ef          	jal	ra,80063d20 <strcmp>
    8001f0c6:	cd11                	beqz	a0,8001f0e2 <js_host_resolve_imported_module+0x108>
    8001f0c8:	85e2                	mv	a1,s8
    8001f0ca:	854e                	mv	a0,s3
    8001f0cc:	455440ef          	jal	ra,80063d20 <strcmp>
    8001f0d0:	c909                	beqz	a0,8001f0e2 <js_host_resolve_imported_module+0x108>
quickjs-nuttx/quickjs.c:27403
            if (p > filename)
    8001f0d2:	01347363          	bgeu	s0,s3,8001f0d8 <js_host_resolve_imported_module+0xfe>
quickjs-nuttx/quickjs.c:27404
                p--;
    8001f0d6:	19fd                	addi	s3,s3,-1
quickjs-nuttx/quickjs.c:27405
            *p = '\0';
    8001f0d8:	00098023          	sb	zero,0(s3)
quickjs-nuttx/quickjs.c:27406
            r += 3;
    8001f0dc:	090d                	addi	s2,s2,3
    8001f0de:	b765                	j	8001f086 <js_host_resolve_imported_module+0xac>
quickjs-nuttx/quickjs.c:27411
    if (filename[0] != '\0')
    8001f0e0:	cb81                	beqz	a5,8001f0f0 <js_host_resolve_imported_module+0x116>
quickjs-nuttx/quickjs.c:27412
        strcat(filename, "/");
    8001f0e2:	0004b597          	auipc	a1,0x4b
    8001f0e6:	7de58593          	addi	a1,a1,2014 # 8006a8c0 <qjsc_repl+0x5310>
    8001f0ea:	8522                	mv	a0,s0
    8001f0ec:	1e1440ef          	jal	ra,80063acc <strcat>
quickjs-nuttx/quickjs.c:27413
    strcat(filename, r);
    8001f0f0:	85ca                	mv	a1,s2
    8001f0f2:	8522                	mv	a0,s0
    8001f0f4:	1d9440ef          	jal	ra,80063acc <strcat>
js_host_resolve_imported_module():
quickjs-nuttx/quickjs.c:27451
    module_name = JS_NewAtom(ctx, cname);
    8001f0f8:	85a2                	mv	a1,s0
    8001f0fa:	8526                	mv	a0,s1
    8001f0fc:	ebfff0ef          	jal	ra,8001efba <JS_NewAtom>
    8001f100:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:27452
    if (module_name == JS_ATOM_NULL) {
    8001f104:	00099b63          	bnez	s3,8001f11a <js_host_resolve_imported_module+0x140>
quickjs-nuttx/quickjs.c:27472
        js_free(ctx, cname);
    8001f108:	85a2                	mv	a1,s0
    8001f10a:	8526                	mv	a0,s1
    8001f10c:	eebeb0ef          	jal	ra,8000aff6 <js_free>
    8001f110:	bf15                	j	8001f044 <js_host_resolve_imported_module+0x6a>
quickjs-nuttx/quickjs.c:27445
        cname = rt->module_normalize_func(ctx, base_cname, cname1,
    8001f112:	140ab683          	ld	a3,320(s5)
    8001f116:	9782                	jalr	a5
    8001f118:	bded                	j	8001f012 <js_host_resolve_imported_module+0x38>
js_find_loaded_module():
quickjs-nuttx/quickjs.c:27424
    list_for_each(el, &ctx->loaded_modules) {
    8001f11a:	1b84b903          	ld	s2,440(s1) # ffffffffffff01b8 <_ebss+0xffffffff7feef052>
    8001f11e:	1b048793          	addi	a5,s1,432
    8001f122:	02f91263          	bne	s2,a5,8001f146 <js_host_resolve_imported_module+0x16c>
js_host_resolve_imported_module():
quickjs-nuttx/quickjs.c:27465
    JS_FreeAtom(ctx, module_name);
    8001f126:	85ce                	mv	a1,s3
    8001f128:	8526                	mv	a0,s1
    8001f12a:	81eec0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27468
    if (!rt->module_loader_func) {
    8001f12e:	138ab783          	ld	a5,312(s5)
    8001f132:	e38d                	bnez	a5,8001f154 <js_host_resolve_imported_module+0x17a>
quickjs-nuttx/quickjs.c:27470
        JS_ThrowReferenceError(ctx, "could not load module '%s'",
    8001f134:	8622                	mv	a2,s0
    8001f136:	8526                	mv	a0,s1
    8001f138:	0004b597          	auipc	a1,0x4b
    8001f13c:	79058593          	addi	a1,a1,1936 # 8006a8c8 <qjsc_repl+0x5318>
    8001f140:	ee2fa0ef          	jal	ra,80019822 <JS_ThrowReferenceError>
    8001f144:	b7d1                	j	8001f108 <js_host_resolve_imported_module+0x12e>
js_find_loaded_module():
quickjs-nuttx/quickjs.c:27426
        if (m->module_name == name)
    8001f146:	ffc92703          	lw	a4,-4(s2)
    8001f14a:	03370063          	beq	a4,s3,8001f16a <js_host_resolve_imported_module+0x190>
quickjs-nuttx/quickjs.c:27424
    list_for_each(el, &ctx->loaded_modules) {
    8001f14e:	00893903          	ld	s2,8(s2)
    8001f152:	bfc1                	j	8001f122 <js_host_resolve_imported_module+0x148>
js_host_resolve_imported_module():
quickjs-nuttx/quickjs.c:27476
    m = rt->module_loader_func(ctx, cname, rt->module_loader_opaque);
    8001f154:	140ab603          	ld	a2,320(s5)
    8001f158:	85a2                	mv	a1,s0
    8001f15a:	8526                	mv	a0,s1
    8001f15c:	9782                	jalr	a5
    8001f15e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:27477
    js_free(ctx, cname);
    8001f160:	85a2                	mv	a1,s0
    8001f162:	8526                	mv	a0,s1
    8001f164:	e93eb0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27478
    return m;
    8001f168:	bdf9                	j	8001f046 <js_host_resolve_imported_module+0x6c>
quickjs-nuttx/quickjs.c:27460
        js_free(ctx, cname);
    8001f16a:	85a2                	mv	a1,s0
    8001f16c:	8526                	mv	a0,s1
    8001f16e:	e89eb0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27461
        JS_FreeAtom(ctx, module_name);
    8001f172:	85ce                	mv	a1,s3
    8001f174:	8526                	mv	a0,s1
js_find_loaded_module():
quickjs-nuttx/quickjs.c:27425
        m = list_entry(el, JSModuleDef, link);
    8001f176:	1961                	addi	s2,s2,-8
js_host_resolve_imported_module():
quickjs-nuttx/quickjs.c:27461
        JS_FreeAtom(ctx, module_name);
    8001f178:	fd1eb0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27462
        return m;
    8001f17c:	b5e9                	j	8001f046 <js_host_resolve_imported_module+0x6c>

000000008001f17e <JS_GetPropertyStr>:
JS_GetPropertyStr():
quickjs-nuttx/quickjs.c:8015
{
    8001f17e:	711d                	addi	sp,sp,-96
    8001f180:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:8018
    atom = JS_NewAtom(ctx, prop);
    8001f182:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:8015
{
    8001f184:	ec86                	sd	ra,88(sp)
    8001f186:	e8a2                	sd	s0,80(sp)
    8001f188:	e4a6                	sd	s1,72(sp)
    8001f18a:	842a                	mv	s0,a0
    8001f18c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:8018
    atom = JS_NewAtom(ctx, prop);
    8001f18e:	e2dff0ef          	jal	ra,8001efba <JS_NewAtom>
    8001f192:	6702                	ld	a4,0(sp)
    8001f194:	67a2                	ld	a5,8(sp)
    8001f196:	0005049b          	sext.w	s1,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001f19a:	86a6                	mv	a3,s1
    8001f19c:	4801                	li	a6,0
    8001f19e:	85ba                	mv	a1,a4
    8001f1a0:	863e                	mv	a2,a5
    8001f1a2:	8522                	mv	a0,s0
    8001f1a4:	f03a                	sd	a4,32(sp)
    8001f1a6:	f43e                	sd	a5,40(sp)
    8001f1a8:	903f70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001f1ac:	e82a                	sd	a0,16(sp)
    8001f1ae:	ec2e                	sd	a1,24(sp)
JS_GetPropertyStr():
quickjs-nuttx/quickjs.c:8020
    JS_FreeAtom(ctx, atom);
    8001f1b0:	8522                	mv	a0,s0
    8001f1b2:	85a6                	mv	a1,s1
    8001f1b4:	f95eb0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:8022
}
    8001f1b8:	60e6                	ld	ra,88(sp)
    8001f1ba:	6446                	ld	s0,80(sp)
    8001f1bc:	6542                	ld	a0,16(sp)
    8001f1be:	65e2                	ld	a1,24(sp)
    8001f1c0:	64a6                	ld	s1,72(sp)
    8001f1c2:	6125                	addi	sp,sp,96
    8001f1c4:	8082                	ret

000000008001f1c6 <js_operators_updateBigIntOperators>:
js_operators_updateBigIntOperators():
quickjs-nuttx/quickjs.c:50418
    const JSOverloadableOperatorEnum ops[2] = { JS_OVOP_DIV, JS_OVOP_POW };
    8001f1c6:	4795                	li	a5,5
quickjs-nuttx/quickjs.c:50415
{
    8001f1c8:	7155                	addi	sp,sp,-208
quickjs-nuttx/quickjs.c:50418
    const JSOverloadableOperatorEnum ops[2] = { JS_OVOP_DIV, JS_OVOP_POW };
    8001f1ca:	1782                	slli	a5,a5,0x20
quickjs-nuttx/quickjs.c:50415
{
    8001f1cc:	e1a2                	sd	s0,192(sp)
    8001f1ce:	f152                	sd	s4,160(sp)
    8001f1d0:	e586                	sd	ra,200(sp)
    8001f1d2:	fd26                	sd	s1,184(sp)
    8001f1d4:	f94a                	sd	s2,176(sp)
    8001f1d6:	f54e                	sd	s3,168(sp)
    8001f1d8:	ed56                	sd	s5,152(sp)
    8001f1da:	e95a                	sd	s6,144(sp)
    8001f1dc:	e55e                	sd	s7,136(sp)
    8001f1de:	e162                	sd	s8,128(sp)
    8001f1e0:	fce6                	sd	s9,120(sp)
    8001f1e2:	f8ea                	sd	s10,112(sp)
    8001f1e4:	f4ee                	sd	s11,104(sp)
quickjs-nuttx/quickjs.c:50418
    const JSOverloadableOperatorEnum ops[2] = { JS_OVOP_DIV, JS_OVOP_POW };
    8001f1e6:	078d                	addi	a5,a5,3
    8001f1e8:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:50422
    opset_obj = JS_GetProperty(ctx, ctx->class_proto[JS_CLASS_BIG_INT],
    8001f1ea:	613c                	ld	a5,64(a0)
quickjs-nuttx/quickjs.c:50415
{
    8001f1ec:	8a3a                	mv	s4,a4
    8001f1ee:	e02e                	sd	a1,0(sp)
    8001f1f0:	2107b703          	ld	a4,528(a5) # 110210 <asinh-0x7feefdf0>
    8001f1f4:	2187b783          	ld	a5,536(a5)
    8001f1f8:	e432                	sd	a2,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001f1fa:	85ba                	mv	a1,a4
    8001f1fc:	863e                	mv	a2,a5
    8001f1fe:	4801                	li	a6,0
    8001f200:	0e200693          	li	a3,226
    8001f204:	e0ba                	sd	a4,64(sp)
    8001f206:	e4be                	sd	a5,72(sp)
js_operators_updateBigIntOperators():
quickjs-nuttx/quickjs.c:50415
    8001f208:	842a                	mv	s0,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001f20a:	8a1f70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001f20e:	e8aa                	sd	a0,80(sp)
    8001f210:	ecae                	sd	a1,88(sp)
    8001f212:	f02a                	sd	a0,32(sp)
    8001f214:	f42e                	sd	a1,40(sp)
js_operators_updateBigIntOperators():
quickjs-nuttx/quickjs.c:50424
    if (JS_IsException(opset_obj))
    8001f216:	0005871b          	sext.w	a4,a1
    8001f21a:	4799                	li	a5,6
    8001f21c:	06f70763          	beq	a4,a5,8001f28a <js_operators_updateBigIntOperators+0xc4>
    8001f220:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50426
    opset = JS_GetOpaque2(ctx, opset_obj, JS_CLASS_OPERATOR_SET);
    8001f222:	02500693          	li	a3,37
    8001f226:	85aa                	mv	a1,a0
    8001f228:	8522                	mv	a0,s0
    8001f22a:	dc4f90ef          	jal	ra,800187ee <JS_GetOpaque2>
    8001f22e:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:50427
    if (!opset)
    8001f230:	cd29                	beqz	a0,8001f28a <js_operators_updateBigIntOperators+0xc4>
    8001f232:	01810913          	addi	s2,sp,24
quickjs-nuttx/quickjs.c:50432
                                 js_overloadable_operator_names[op]);
    8001f236:	00054b97          	auipc	s7,0x54
    8001f23a:	ef2b8b93          	addi	s7,s7,-270 # 80073128 <js_overloadable_operator_names>
quickjs-nuttx/quickjs.c:50433
        if (JS_IsException(prop))
    8001f23e:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:50435
        if (!JS_IsUndefined(prop)) {
    8001f240:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:50436
            if (!JS_IsNull(prop) && check_function(ctx, prop)) {
    8001f242:	4a89                	li	s5,2
quickjs-nuttx/quickjs.c:50441
                JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, opset->self_ops[op]));
    8001f244:	5d7d                	li	s10,-1
quickjs-nuttx/quickjs.c:50431
        prop = JS_GetPropertyStr(ctx, argv[0],
    8001f246:	00096483          	lwu	s1,0(s2)
    8001f24a:	008a3603          	ld	a2,8(s4)
    8001f24e:	000a3583          	ld	a1,0(s4)
quickjs-nuttx/quickjs.c:50432
                                 js_overloadable_operator_names[op]);
    8001f252:	00249693          	slli	a3,s1,0x2
quickjs-nuttx/quickjs.c:50431
        prop = JS_GetPropertyStr(ctx, argv[0],
    8001f256:	96de                	add	a3,a3,s7
    8001f258:	8522                	mv	a0,s0
    8001f25a:	f25ff0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8001f25e:	f82a                	sd	a0,48(sp)
    8001f260:	fc2e                	sd	a1,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001f262:	00058b1b          	sext.w	s6,a1
js_operators_updateBigIntOperators():
quickjs-nuttx/quickjs.c:50431
    8001f266:	8daa                	mv	s11,a0
    8001f268:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50433
        if (JS_IsException(prop))
    8001f26a:	038b0063          	beq	s6,s8,8001f28a <js_operators_updateBigIntOperators+0xc4>
quickjs-nuttx/quickjs.c:50435
        if (!JS_IsUndefined(prop)) {
    8001f26e:	059b0463          	beq	s6,s9,8001f2b6 <js_operators_updateBigIntOperators+0xf0>
quickjs-nuttx/quickjs.c:50436
            if (!JS_IsNull(prop) && check_function(ctx, prop)) {
    8001f272:	035b0463          	beq	s6,s5,8001f29a <js_operators_updateBigIntOperators+0xd4>
quickjs-nuttx/quickjs.c:50436 (discriminator 1)
    8001f276:	85aa                	mv	a1,a0
    8001f278:	8522                	mv	a0,s0
    8001f27a:	ca4f90ef          	jal	ra,8001871e <check_function>
    8001f27e:	cd11                	beqz	a0,8001f29a <js_operators_updateBigIntOperators+0xd4>
quickjs-nuttx/quickjs.c:50437
                JS_FreeValue(ctx, prop);
    8001f280:	75c2                	ld	a1,48(sp)
    8001f282:	7662                	ld	a2,56(sp)
    8001f284:	8522                	mv	a0,s0
    8001f286:	d18ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50452
    JS_FreeValue(ctx, opset_obj);
    8001f28a:	7582                	ld	a1,32(sp)
    8001f28c:	7622                	ld	a2,40(sp)
    8001f28e:	8522                	mv	a0,s0
    8001f290:	d0eec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50453
    return JS_EXCEPTION;
    8001f294:	4799                	li	a5,6
    8001f296:	e082                	sd	zero,64(sp)
    8001f298:	a815                	j	8001f2cc <js_operators_updateBigIntOperators+0x106>
quickjs-nuttx/quickjs.c:50440
            if (opset->self_ops[op])
    8001f29a:	048e                	slli	s1,s1,0x3
    8001f29c:	94ce                	add	s1,s1,s3
    8001f29e:	648c                	ld	a1,8(s1)
    8001f2a0:	c599                	beqz	a1,8001f2ae <js_operators_updateBigIntOperators+0xe8>
quickjs-nuttx/quickjs.c:50441
                JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, opset->self_ops[op]));
    8001f2a2:	567d                	li	a2,-1
    8001f2a4:	8522                	mv	a0,s0
    8001f2a6:	e0ae                	sd	a1,64(sp)
    8001f2a8:	e4ea                	sd	s10,72(sp)
    8001f2aa:	cf4ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50442
            if (JS_IsNull(prop)) {
    8001f2ae:	055b1163          	bne	s6,s5,8001f2f0 <js_operators_updateBigIntOperators+0x12a>
quickjs-nuttx/quickjs.c:50443
                opset->self_ops[op] = NULL;
    8001f2b2:	0004b423          	sd	zero,8(s1)
quickjs-nuttx/quickjs.c:50429 (discriminator 2)
    for(i = 0; i < countof(ops); i++) {
    8001f2b6:	0911                	addi	s2,s2,4
    8001f2b8:	101c                	addi	a5,sp,32
    8001f2ba:	f8f916e3          	bne	s2,a5,8001f246 <js_operators_updateBigIntOperators+0x80>
quickjs-nuttx/quickjs.c:50449
    JS_FreeValue(ctx, opset_obj);
    8001f2be:	7582                	ld	a1,32(sp)
    8001f2c0:	7622                	ld	a2,40(sp)
    8001f2c2:	8522                	mv	a0,s0
    8001f2c4:	cdaec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50450
    return JS_UNDEFINED;
    8001f2c8:	478d                	li	a5,3
    8001f2ca:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:50454
}
    8001f2cc:	60ae                	ld	ra,200(sp)
    8001f2ce:	640e                	ld	s0,192(sp)
quickjs-nuttx/quickjs.c:50453
    return JS_EXCEPTION;
    8001f2d0:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:50454
}
    8001f2d2:	6506                	ld	a0,64(sp)
    8001f2d4:	65a6                	ld	a1,72(sp)
    8001f2d6:	74ea                	ld	s1,184(sp)
    8001f2d8:	794a                	ld	s2,176(sp)
    8001f2da:	79aa                	ld	s3,168(sp)
    8001f2dc:	7a0a                	ld	s4,160(sp)
    8001f2de:	6aea                	ld	s5,152(sp)
    8001f2e0:	6b4a                	ld	s6,144(sp)
    8001f2e2:	6baa                	ld	s7,136(sp)
    8001f2e4:	6c0a                	ld	s8,128(sp)
    8001f2e6:	7ce6                	ld	s9,120(sp)
    8001f2e8:	7d46                	ld	s10,112(sp)
    8001f2ea:	7da6                	ld	s11,104(sp)
    8001f2ec:	6169                	addi	sp,sp,208
    8001f2ee:	8082                	ret
quickjs-nuttx/quickjs.c:50445
                opset->self_ops[op] = JS_VALUE_GET_PTR(prop);
    8001f2f0:	01b4b423          	sd	s11,8(s1)
    8001f2f4:	b7c9                	j	8001f2b6 <js_operators_updateBigIntOperators+0xf0>

000000008001f2f6 <js_operators_create_internal>:
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50304
{
    8001f2f6:	712d                	addi	sp,sp,-288
    8001f2f8:	fdce                	sd	s3,248(sp)
    8001f2fa:	ee06                	sd	ra,280(sp)
    8001f2fc:	ea22                	sd	s0,272(sp)
    8001f2fe:	e626                	sd	s1,264(sp)
    8001f300:	e24a                	sd	s2,256(sp)
    8001f302:	f9d2                	sd	s4,240(sp)
    8001f304:	f5d6                	sd	s5,232(sp)
    8001f306:	f1da                	sd	s6,224(sp)
    8001f308:	edde                	sd	s7,216(sp)
    8001f30a:	e9e2                	sd	s8,208(sp)
    8001f30c:	e5e6                	sd	s9,200(sp)
    8001f30e:	e1ea                	sd	s10,192(sp)
    8001f310:	fd6e                	sd	s11,184(sp)
quickjs-nuttx/quickjs.c:50314
    if (ctx->rt->operator_count == UINT32_MAX) {
    8001f312:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:50304
{
    8001f314:	e42e                	sd	a1,8(sp)
    8001f316:	e836                	sd	a3,16(sp)
quickjs-nuttx/quickjs.c:50314
    if (ctx->rt->operator_count == UINT32_MAX) {
    8001f318:	2b07a783          	lw	a5,688(a5)
    8001f31c:	59fd                	li	s3,-1
    8001f31e:	03379663          	bne	a5,s3,8001f34a <js_operators_create_internal+0x54>
quickjs-nuttx/quickjs.c:50405
}
    8001f322:	6452                	ld	s0,272(sp)
    8001f324:	60f2                	ld	ra,280(sp)
    8001f326:	64b2                	ld	s1,264(sp)
    8001f328:	6912                	ld	s2,256(sp)
    8001f32a:	79ee                	ld	s3,248(sp)
    8001f32c:	7a4e                	ld	s4,240(sp)
    8001f32e:	7aae                	ld	s5,232(sp)
    8001f330:	7b0e                	ld	s6,224(sp)
    8001f332:	6bee                	ld	s7,216(sp)
    8001f334:	6c4e                	ld	s8,208(sp)
    8001f336:	6cae                	ld	s9,200(sp)
    8001f338:	6d0e                	ld	s10,192(sp)
    8001f33a:	7dea                	ld	s11,184(sp)
quickjs-nuttx/quickjs.c:50315
        return JS_ThrowTypeError(ctx, "too many operators");
    8001f33c:	0004b597          	auipc	a1,0x4b
    8001f340:	5ac58593          	addi	a1,a1,1452 # 8006a8e8 <qjsc_repl+0x5338>
quickjs-nuttx/quickjs.c:50405
}
    8001f344:	6115                	addi	sp,sp,288
quickjs-nuttx/quickjs.c:50315
        return JS_ThrowTypeError(ctx, "too many operators");
    8001f346:	b26f906f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:50317
    opset_obj = JS_NewObjectProtoClass(ctx, JS_NULL, JS_CLASS_OPERATOR_SET);
    8001f34a:	4789                	li	a5,2
    8001f34c:	8932                	mv	s2,a2
    8001f34e:	02500693          	li	a3,37
    8001f352:	4581                	li	a1,0
    8001f354:	4609                	li	a2,2
    8001f356:	fcbe                	sd	a5,120(sp)
    8001f358:	842a                	mv	s0,a0
    8001f35a:	f882                	sd	zero,112(sp)
    8001f35c:	889fc0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8001f360:	f82a                	sd	a0,48(sp)
    8001f362:	fc2e                	sd	a1,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8001f364:	00058b1b          	sext.w	s6,a1
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50318
    if (JS_IsException(opset_obj))
    8001f368:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:50317
    opset_obj = JS_NewObjectProtoClass(ctx, JS_NULL, JS_CLASS_OPERATOR_SET);
    8001f36a:	8aaa                	mv	s5,a0
    8001f36c:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:50318
    if (JS_IsException(opset_obj))
    8001f36e:	0cfb0663          	beq	s6,a5,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50320
    opset = js_mallocz(ctx, sizeof(*opset));
    8001f372:	0c000593          	li	a1,192
    8001f376:	8522                	mv	a0,s0
    8001f378:	dc1fb0ef          	jal	ra,8001b138 <js_mallocz>
    8001f37c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:50321
    if (!opset)
    8001f37e:	cd55                	beqz	a0,8001f43a <js_operators_create_internal+0x144>
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8001f380:	013b1463          	bne	s6,s3,8001f388 <js_operators_create_internal+0x92>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    8001f384:	02aab823          	sd	a0,48(s5)
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50324
    if (argc >= 1) {
    8001f388:	67a2                	ld	a5,8(sp)
    8001f38a:	04f04e63          	bgtz	a5,8001f3e6 <js_operators_create_internal+0xf0>
quickjs-nuttx/quickjs.c:50355
            def = &opset->left;
    8001f38e:	0a048793          	addi	a5,s1,160
    8001f392:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:50346
        def = &opset->right;
    8001f394:	0b048793          	addi	a5,s1,176
    8001f398:	0941                	addi	s2,s2,16
quickjs-nuttx/quickjs.c:50304
{
    8001f39a:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:50344
        if (JS_IsException(prop))
    8001f39c:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:50347
        if (JS_IsUndefined(prop)) {
    8001f39e:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:50346
        def = &opset->right;
    8001f3a0:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:50375
        new_tab = js_realloc(ctx, def->tab,
    8001f3a2:	07800d13          	li	s10,120
quickjs-nuttx/quickjs.c:50341 (discriminator 1)
    for(j = 1; j < argc; j++) {
    8001f3a6:	67a2                	ld	a5,8(sp)
    8001f3a8:	0afc4963          	blt	s8,a5,8001f45a <js_operators_create_internal+0x164>
quickjs-nuttx/quickjs.c:50399
    opset->is_primitive = is_primitive;
    8001f3ac:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:50401
    return opset_obj;
    8001f3ae:	e956                	sd	s5,144(sp)
    8001f3b0:	ed52                	sd	s4,152(sp)
quickjs-nuttx/quickjs.c:50399
    opset->is_primitive = is_primitive;
    8001f3b2:	c0dc                	sw	a5,4(s1)
quickjs-nuttx/quickjs.c:50400
    opset->operator_counter = ctx->rt->operator_count++;
    8001f3b4:	6c18                	ld	a4,24(s0)
    8001f3b6:	2b072783          	lw	a5,688(a4)
    8001f3ba:	0017869b          	addiw	a3,a5,1
    8001f3be:	2ad72823          	sw	a3,688(a4)
    8001f3c2:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:50405
}
    8001f3c4:	60f2                	ld	ra,280(sp)
    8001f3c6:	6452                	ld	s0,272(sp)
    8001f3c8:	654a                	ld	a0,144(sp)
    8001f3ca:	65ea                	ld	a1,152(sp)
    8001f3cc:	64b2                	ld	s1,264(sp)
    8001f3ce:	6912                	ld	s2,256(sp)
    8001f3d0:	79ee                	ld	s3,248(sp)
    8001f3d2:	7a4e                	ld	s4,240(sp)
    8001f3d4:	7aae                	ld	s5,232(sp)
    8001f3d6:	7b0e                	ld	s6,224(sp)
    8001f3d8:	6bee                	ld	s7,216(sp)
    8001f3da:	6c4e                	ld	s8,208(sp)
    8001f3dc:	6cae                	ld	s9,200(sp)
    8001f3de:	6d0e                	ld	s10,192(sp)
    8001f3e0:	7dea                	ld	s11,184(sp)
    8001f3e2:	6115                	addi	sp,sp,288
    8001f3e4:	8082                	ret
quickjs-nuttx/quickjs.c:50325
        arg = argv[0];
    8001f3e6:	00093783          	ld	a5,0(s2)
    8001f3ea:	00054d97          	auipc	s11,0x54
    8001f3ee:	d3ed8d93          	addi	s11,s11,-706 # 80073128 <js_overloadable_operator_names>
    8001f3f2:	00848d13          	addi	s10,s1,8
    8001f3f6:	f0be                	sd	a5,96(sp)
    8001f3f8:	00893783          	ld	a5,8(s2)
    8001f3fc:	0a048b13          	addi	s6,s1,160
quickjs-nuttx/quickjs.c:50329
            if (JS_IsException(prop))
    8001f400:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:50325
        arg = argv[0];
    8001f402:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:50331
            if (!JS_IsUndefined(prop)) {
    8001f404:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:50328
            prop = JS_GetPropertyStr(ctx, arg, js_overloadable_operator_names[i]);
    8001f406:	7626                	ld	a2,104(sp)
    8001f408:	7586                	ld	a1,96(sp)
    8001f40a:	86ee                	mv	a3,s11
    8001f40c:	8522                	mv	a0,s0
    8001f40e:	d71ff0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8001f412:	e0aa                	sd	a0,64(sp)
    8001f414:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8001f416:	0005879b          	sext.w	a5,a1
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50328
    8001f41a:	89aa                	mv	s3,a0
    8001f41c:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50329
            if (JS_IsException(prop))
    8001f41e:	01878e63          	beq	a5,s8,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50331
            if (!JS_IsUndefined(prop)) {
    8001f422:	03978763          	beq	a5,s9,8001f450 <js_operators_create_internal+0x15a>
quickjs-nuttx/quickjs.c:50332
                if (check_function(ctx, prop)) {
    8001f426:	85aa                	mv	a1,a0
    8001f428:	8522                	mv	a0,s0
    8001f42a:	af4f90ef          	jal	ra,8001871e <check_function>
    8001f42e:	cd19                	beqz	a0,8001f44c <js_operators_create_internal+0x156>
quickjs-nuttx/quickjs.c:50333
                    JS_FreeValue(ctx, prop);
    8001f430:	6586                	ld	a1,64(sp)
    8001f432:	6626                	ld	a2,72(sp)
    8001f434:	8522                	mv	a0,s0
    8001f436:	b68ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50403
    JS_FreeValue(ctx, opset_obj);
    8001f43a:	75c2                	ld	a1,48(sp)
    8001f43c:	7662                	ld	a2,56(sp)
    8001f43e:	8522                	mv	a0,s0
    8001f440:	b5eec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50404
    return JS_EXCEPTION;
    8001f444:	4799                	li	a5,6
    8001f446:	e902                	sd	zero,144(sp)
    8001f448:	ed3e                	sd	a5,152(sp)
    8001f44a:	bfad                	j	8001f3c4 <js_operators_create_internal+0xce>
quickjs-nuttx/quickjs.c:50336
                opset->self_ops[i] = JS_VALUE_GET_OBJ(prop);
    8001f44c:	013d3023          	sd	s3,0(s10) # 2000 <asinh-0x7fffe000>
quickjs-nuttx/quickjs.c:50327 (discriminator 2)
        for(i = 0; i < JS_OVOP_COUNT; i++) {
    8001f450:	0d21                	addi	s10,s10,8
    8001f452:	0d91                	addi	s11,s11,4
    8001f454:	fb6d19e3          	bne	s10,s6,8001f406 <js_operators_create_internal+0x110>
    8001f458:	bf1d                	j	8001f38e <js_operators_create_internal+0x98>
quickjs-nuttx/quickjs.c:50342
        arg = argv[j];
    8001f45a:	00893603          	ld	a2,8(s2)
    8001f45e:	00093583          	ld	a1,0(s2)
quickjs-nuttx/quickjs.c:50343
        prop = JS_GetPropertyStr(ctx, arg, "left");
    8001f462:	0004b697          	auipc	a3,0x4b
    8001f466:	49e68693          	addi	a3,a3,1182 # 8006a900 <qjsc_repl+0x5350>
    8001f46a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50342
        arg = argv[j];
    8001f46c:	f4b2                	sd	a2,104(sp)
    8001f46e:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:50343
        prop = JS_GetPropertyStr(ctx, arg, "left");
    8001f470:	d0fff0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8001f474:	0005879b          	sext.w	a5,a1
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50343
    8001f478:	8daa                	mv	s11,a0
    8001f47a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50344
        if (JS_IsException(prop))
    8001f47c:	fb678fe3          	beq	a5,s6,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50347
        if (JS_IsUndefined(prop)) {
    8001f480:	11978f63          	beq	a5,s9,8001f59e <js_operators_create_internal+0x2a8>
quickjs-nuttx/quickjs.c:50346
        def = &opset->right;
    8001f484:	7982                	ld	s3,32(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001f486:	87b2                	mv	a5,a2
    8001f488:	4801                	li	a6,0
    8001f48a:	876e                	mv	a4,s11
    8001f48c:	03c00693          	li	a3,60
    8001f490:	85ee                	mv	a1,s11
    8001f492:	8522                	mv	a0,s0
    8001f494:	ed32                	sd	a2,152(sp)
    8001f496:	f432                	sd	a2,40(sp)
    8001f498:	e96e                	sd	s11,144(sp)
    8001f49a:	e10f70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50359
        JS_FreeValue(ctx, prop);
    8001f49e:	7622                	ld	a2,40(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001f4a0:	8bae                	mv	s7,a1
    8001f4a2:	e12a                	sd	a0,128(sp)
    8001f4a4:	e52e                	sd	a1,136(sp)
    8001f4a6:	e8aa                	sd	a0,80(sp)
    8001f4a8:	ecae                	sd	a1,88(sp)
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50359
    8001f4aa:	8522                	mv	a0,s0
    8001f4ac:	85ee                	mv	a1,s11
    8001f4ae:	af0ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50360
        if (JS_IsException(obj))
    8001f4b2:	000b879b          	sext.w	a5,s7
    8001f4b6:	f96782e3          	beq	a5,s6,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50362
        prop = JS_GetProperty(ctx, obj, JS_ATOM_Symbol_operatorSet);
    8001f4ba:	6746                	ld	a4,80(sp)
    8001f4bc:	67e6                	ld	a5,88(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001f4be:	4801                	li	a6,0
    8001f4c0:	0e200693          	li	a3,226
    8001f4c4:	863e                	mv	a2,a5
    8001f4c6:	85ba                	mv	a1,a4
    8001f4c8:	8522                	mv	a0,s0
    8001f4ca:	e93a                	sd	a4,144(sp)
    8001f4cc:	ed3e                	sd	a5,152(sp)
    8001f4ce:	ddcf70ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001f4d2:	8dae                	mv	s11,a1
    8001f4d4:	f52e                	sd	a1,168(sp)
    8001f4d6:	e4ae                	sd	a1,72(sp)
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50363
        JS_FreeValue(ctx, obj);
    8001f4d8:	6666                	ld	a2,88(sp)
    8001f4da:	65c6                	ld	a1,80(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001f4dc:	f12a                	sd	a0,160(sp)
    8001f4de:	e0aa                	sd	a0,64(sp)
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50364
        if (JS_IsException(prop))
    8001f4e0:	2d81                	sext.w	s11,s11
quickjs-nuttx/quickjs.c:50363
        JS_FreeValue(ctx, obj);
    8001f4e2:	8522                	mv	a0,s0
    8001f4e4:	abaec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50364
        if (JS_IsException(prop))
    8001f4e8:	f56d89e3          	beq	s11,s6,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50366
        opset1 = JS_GetOpaque2(ctx, prop, JS_CLASS_OPERATOR_SET);
    8001f4ec:	6586                	ld	a1,64(sp)
    8001f4ee:	6626                	ld	a2,72(sp)
    8001f4f0:	02500693          	li	a3,37
    8001f4f4:	8522                	mv	a0,s0
    8001f4f6:	af8f90ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:50367
        if (!opset1) {
    8001f4fa:	d91d                	beqz	a0,8001f430 <js_operators_create_internal+0x13a>
quickjs-nuttx/quickjs.c:50372
        JS_FreeValue(ctx, prop);
    8001f4fc:	6586                	ld	a1,64(sp)
    8001f4fe:	6626                	ld	a2,72(sp)
quickjs-nuttx/quickjs.c:50371
        op_count = opset1->operator_counter;
    8001f500:	00052d83          	lw	s11,0(a0)
quickjs-nuttx/quickjs.c:50372
        JS_FreeValue(ctx, prop);
    8001f504:	8522                	mv	a0,s0
    8001f506:	a98ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50376
                             (def->count + 1) * sizeof(def->tab[0]));
    8001f50a:	0009a603          	lw	a2,0(s3)
quickjs-nuttx/quickjs.c:50375
        new_tab = js_realloc(ctx, def->tab,
    8001f50e:	0089b583          	ld	a1,8(s3)
    8001f512:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50376
                             (def->count + 1) * sizeof(def->tab[0]));
    8001f514:	2605                	addiw	a2,a2,1
quickjs-nuttx/quickjs.c:50375
        new_tab = js_realloc(ctx, def->tab,
    8001f516:	03a60633          	mul	a2,a2,s10
    8001f51a:	86cfc0ef          	jal	ra,8001b586 <js_realloc>
quickjs-nuttx/quickjs.c:50377
        if (!new_tab)
    8001f51e:	f0050ee3          	beqz	a0,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50380
        def->count++;
    8001f522:	0009a703          	lw	a4,0(s3)
quickjs-nuttx/quickjs.c:50379
        def->tab = new_tab;
    8001f526:	00a9b423          	sd	a0,8(s3)
quickjs-nuttx/quickjs.c:50382
        memset(ent, 0, sizeof(def->tab[0]));
    8001f52a:	07800613          	li	a2,120
quickjs-nuttx/quickjs.c:50380
        def->count++;
    8001f52e:	0017079b          	addiw	a5,a4,1
    8001f532:	00f9a023          	sw	a5,0(s3)
quickjs-nuttx/quickjs.c:50381
        ent = def->tab + def->count - 1;
    8001f536:	03a789b3          	mul	s3,a5,s10
quickjs-nuttx/quickjs.c:50382
        memset(ent, 0, sizeof(def->tab[0]));
    8001f53a:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:50381
        ent = def->tab + def->count - 1;
    8001f53c:	f8898993          	addi	s3,s3,-120
    8001f540:	99aa                	add	s3,s3,a0
quickjs-nuttx/quickjs.c:50382
        memset(ent, 0, sizeof(def->tab[0]));
    8001f542:	854e                	mv	a0,s3
    8001f544:	6fe440ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:50383
        ent->operator_index = op_count;
    8001f548:	00898b93          	addi	s7,s3,8
    8001f54c:	01b9a023          	sw	s11,0(s3)
quickjs-nuttx/quickjs.c:50385
        for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8001f550:	00054697          	auipc	a3,0x54
    8001f554:	bd868693          	addi	a3,a3,-1064 # 80073128 <js_overloadable_operator_names>
    8001f558:	07898993          	addi	s3,s3,120
quickjs-nuttx/quickjs.c:50386
            prop = JS_GetPropertyStr(ctx, arg,
    8001f55c:	7626                	ld	a2,104(sp)
    8001f55e:	7586                	ld	a1,96(sp)
    8001f560:	8522                	mv	a0,s0
    8001f562:	f436                	sd	a3,40(sp)
    8001f564:	c1bff0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8001f568:	e0aa                	sd	a0,64(sp)
    8001f56a:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001f56c:	0005871b          	sext.w	a4,a1
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50386
    8001f570:	8daa                	mv	s11,a0
    8001f572:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50388
            if (JS_IsException(prop))
    8001f574:	ed6703e3          	beq	a4,s6,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50390
            if (!JS_IsUndefined(prop)) {
    8001f578:	76a2                	ld	a3,40(sp)
    8001f57a:	01970b63          	beq	a4,s9,8001f590 <js_operators_create_internal+0x29a>
quickjs-nuttx/quickjs.c:50391
                if (check_function(ctx, prop)) {
    8001f57e:	85aa                	mv	a1,a0
    8001f580:	8522                	mv	a0,s0
    8001f582:	99cf90ef          	jal	ra,8001871e <check_function>
    8001f586:	ea0515e3          	bnez	a0,8001f430 <js_operators_create_internal+0x13a>
quickjs-nuttx/quickjs.c:50395
                ent->ops[i] = JS_VALUE_GET_OBJ(prop);
    8001f58a:	76a2                	ld	a3,40(sp)
    8001f58c:	01bbb023          	sd	s11,0(s7)
quickjs-nuttx/quickjs.c:50385 (discriminator 2)
        for(i = 0; i < JS_OVOP_BINARY_COUNT; i++) {
    8001f590:	0ba1                	addi	s7,s7,8
    8001f592:	0691                	addi	a3,a3,4
    8001f594:	fd3b94e3          	bne	s7,s3,8001f55c <js_operators_create_internal+0x266>
quickjs-nuttx/quickjs.c:50341 (discriminator 2)
    for(j = 1; j < argc; j++) {
    8001f598:	2c05                	addiw	s8,s8,1
    8001f59a:	0941                	addi	s2,s2,16
    8001f59c:	b529                	j	8001f3a6 <js_operators_create_internal+0xb0>
quickjs-nuttx/quickjs.c:50348
            prop = JS_GetPropertyStr(ctx, arg, "right");
    8001f59e:	7626                	ld	a2,104(sp)
    8001f5a0:	7586                	ld	a1,96(sp)
    8001f5a2:	0004b697          	auipc	a3,0x4b
    8001f5a6:	36668693          	addi	a3,a3,870 # 8006a908 <qjsc_repl+0x5358>
    8001f5aa:	8522                	mv	a0,s0
    8001f5ac:	bd3ff0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8001f5b0:	0005879b          	sext.w	a5,a1
js_operators_create_internal():
quickjs-nuttx/quickjs.c:50348
    8001f5b4:	862e                	mv	a2,a1
    8001f5b6:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs.c:50349
            if (JS_IsException(prop))
    8001f5b8:	e96781e3          	beq	a5,s6,8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50351
            if (JS_IsUndefined(prop)) {
    8001f5bc:	01979a63          	bne	a5,s9,8001f5d0 <js_operators_create_internal+0x2da>
quickjs-nuttx/quickjs.c:50352
                JS_ThrowTypeError(ctx, "left or right property must be present");
    8001f5c0:	8522                	mv	a0,s0
    8001f5c2:	0004b597          	auipc	a1,0x4b
    8001f5c6:	34e58593          	addi	a1,a1,846 # 8006a910 <qjsc_repl+0x5360>
    8001f5ca:	8a2f90ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:50353
                goto fail;
    8001f5ce:	b5b5                	j	8001f43a <js_operators_create_internal+0x144>
quickjs-nuttx/quickjs.c:50355
            def = &opset->left;
    8001f5d0:	69e2                	ld	s3,24(sp)
    8001f5d2:	bd55                	j	8001f486 <js_operators_create_internal+0x190>

000000008001f5d4 <js_operators_create>:
js_operators_create():
quickjs-nuttx/quickjs.c:50409
{
    8001f5d4:	1101                	addi	sp,sp,-32
    8001f5d6:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:50410
    return js_operators_create_internal(ctx, argc, argv, FALSE);
    8001f5d8:	4681                	li	a3,0
    8001f5da:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:50411
}
    8001f5dc:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50410
    return js_operators_create_internal(ctx, argc, argv, FALSE);
    8001f5de:	d19ff06f          	j	8001f2f6 <js_operators_create_internal>

000000008001f5e2 <JS_NewCModule>:
JS_NewCModule():
quickjs-nuttx/quickjs.c:27305
{
    8001f5e2:	1101                	addi	sp,sp,-32
    8001f5e4:	e822                	sd	s0,16(sp)
    8001f5e6:	e426                	sd	s1,8(sp)
    8001f5e8:	ec06                	sd	ra,24(sp)
    8001f5ea:	84aa                	mv	s1,a0
    8001f5ec:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:27308
    name = JS_NewAtom(ctx, name_str);
    8001f5ee:	9cdff0ef          	jal	ra,8001efba <JS_NewAtom>
    8001f5f2:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:27310
        return NULL;
    8001f5f6:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:27309
    if (name == JS_ATOM_NULL)
    8001f5f8:	c589                	beqz	a1,8001f602 <JS_NewCModule+0x20>
quickjs-nuttx/quickjs.c:27311
    m = js_new_module_def(ctx, name);
    8001f5fa:	8526                	mv	a0,s1
    8001f5fc:	f0bfb0ef          	jal	ra,8001b506 <js_new_module_def>
quickjs-nuttx/quickjs.c:27312
    m->init_func = func;
    8001f600:	fd20                	sd	s0,120(a0)
quickjs-nuttx/quickjs.c:27314
}
    8001f602:	60e2                	ld	ra,24(sp)
    8001f604:	6442                	ld	s0,16(sp)
    8001f606:	64a2                	ld	s1,8(sp)
    8001f608:	6105                	addi	sp,sp,32
    8001f60a:	8082                	ret

000000008001f60c <JS_SetModuleExport>:
JS_SetModuleExport():
quickjs-nuttx/quickjs.c:27334
{
    8001f60c:	7179                	addi	sp,sp,-48
    8001f60e:	e84a                	sd	s2,16(sp)
    8001f610:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:27337
    name = JS_NewAtom(ctx, export_name);
    8001f612:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:27334
{
    8001f614:	ec26                	sd	s1,24(sp)
    8001f616:	f406                	sd	ra,40(sp)
    8001f618:	f022                	sd	s0,32(sp)
    8001f61a:	84aa                	mv	s1,a0
    8001f61c:	e036                	sd	a3,0(sp)
    8001f61e:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:27337
    name = JS_NewAtom(ctx, export_name);
    8001f620:	99bff0ef          	jal	ra,8001efba <JS_NewAtom>
    8001f624:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:27338
    if (name == JS_ATOM_NULL)
    8001f628:	c5a9                	beqz	a1,8001f672 <JS_SetModuleExport+0x66>
find_export_entry():
quickjs-nuttx/quickjs.c:27240
    for(i = 0; i < m->export_entries_count; i++) {
    8001f62a:	03092683          	lw	a3,48(s2)
    8001f62e:	4781                	li	a5,0
    8001f630:	0007871b          	sext.w	a4,a5
    8001f634:	00d74463          	blt	a4,a3,8001f63c <JS_SetModuleExport+0x30>
quickjs-nuttx/quickjs.c:27245
    return NULL;
    8001f638:	4401                	li	s0,0
    8001f63a:	a811                	j	8001f64e <JS_SetModuleExport+0x42>
quickjs-nuttx/quickjs.c:27241
        me = &m->export_entries[i];
    8001f63c:	02893403          	ld	s0,40(s2)
    8001f640:	00579713          	slli	a4,a5,0x5
quickjs-nuttx/quickjs.c:27242
        if (me->export_name == export_name)
    8001f644:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:27241
        me = &m->export_entries[i];
    8001f646:	943a                	add	s0,s0,a4
quickjs-nuttx/quickjs.c:27242
        if (me->export_name == export_name)
    8001f648:	4c18                	lw	a4,24(s0)
    8001f64a:	feb713e3          	bne	a4,a1,8001f630 <JS_SetModuleExport+0x24>
JS_SetModuleExport():
quickjs-nuttx/quickjs.c:27341
    JS_FreeAtom(ctx, name);
    8001f64e:	8526                	mv	a0,s1
    8001f650:	af9eb0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27342
    if (!me)
    8001f654:	cc19                	beqz	s0,8001f672 <JS_SetModuleExport+0x66>
quickjs-nuttx/quickjs.c:27344
    set_value(ctx, me->u.local.var_ref->pvalue, val);
    8001f656:	641c                	ld	a5,8(s0)
    8001f658:	6602                	ld	a2,0(sp)
    8001f65a:	66a2                	ld	a3,8(sp)
    8001f65c:	6f8c                	ld	a1,24(a5)
    8001f65e:	8526                	mv	a0,s1
    8001f660:	ddeec0ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:27345
    return 0;
    8001f664:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:27349
}
    8001f666:	70a2                	ld	ra,40(sp)
    8001f668:	7402                	ld	s0,32(sp)
    8001f66a:	64e2                	ld	s1,24(sp)
    8001f66c:	6942                	ld	s2,16(sp)
    8001f66e:	6145                	addi	sp,sp,48
    8001f670:	8082                	ret
quickjs-nuttx/quickjs.c:27347
    JS_FreeValue(ctx, val);
    8001f672:	6582                	ld	a1,0(sp)
    8001f674:	6622                	ld	a2,8(sp)
    8001f676:	8526                	mv	a0,s1
    8001f678:	926ec0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27348
    return -1;
    8001f67c:	557d                	li	a0,-1
    8001f67e:	b7e5                	j	8001f666 <JS_SetModuleExport+0x5a>

000000008001f680 <find_atom>:
find_atom():
quickjs-nuttx/quickjs.c:36668
    if (*name == '[') {
    8001f680:	0005c703          	lbu	a4,0(a1)
    8001f684:	05b00793          	li	a5,91
    8001f688:	08f71463          	bne	a4,a5,8001f710 <find_atom+0x90>
quickjs-nuttx/quickjs.c:36664
{
    8001f68c:	715d                	addi	sp,sp,-80
    8001f68e:	e0a2                	sd	s0,64(sp)
quickjs-nuttx/quickjs.c:36669
        name++;
    8001f690:	00158413          	addi	s0,a1,1
quickjs-nuttx/quickjs.c:36664
{
    8001f694:	f44e                	sd	s3,40(sp)
    8001f696:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:36670
        len = strlen(name) - 1;
    8001f698:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:36664
{
    8001f69a:	fc26                	sd	s1,56(sp)
    8001f69c:	f84a                	sd	s2,48(sp)
    8001f69e:	f052                	sd	s4,32(sp)
    8001f6a0:	ec56                	sd	s5,24(sp)
    8001f6a2:	e85a                	sd	s6,16(sp)
    8001f6a4:	e486                	sd	ra,72(sp)
    8001f6a6:	e45e                	sd	s7,8(sp)
quickjs-nuttx/quickjs.c:36670
        len = strlen(name) - 1;
    8001f6a8:	6da440ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/quickjs.c:36674
            JSAtomStruct *p = ctx->rt->atom_array[atom];
    8001f6ac:	0189b783          	ld	a5,24(s3)
quickjs-nuttx/quickjs.c:36676
            if (str->len == len && !memcmp(str->u.str8, name, len))
    8001f6b0:	80000a37          	lui	s4,0x80000
quickjs-nuttx/quickjs.c:36670
        len = strlen(name) - 1;
    8001f6b4:	fff5091b          	addiw	s2,a0,-1
quickjs-nuttx/quickjs.c:36674
            JSAtomStruct *p = ctx->rt->atom_array[atom];
    8001f6b8:	0607bb03          	ld	s6,96(a5)
    8001f6bc:	0d500493          	li	s1,213
quickjs-nuttx/quickjs.c:36676
            if (str->len == len && !memcmp(str->u.str8, name, len))
    8001f6c0:	fffa4a13          	not	s4,s4
quickjs-nuttx/quickjs.c:36673
        for(atom = JS_ATOM_Symbol_toPrimitive; atom < JS_ATOM_END; atom++) {
    8001f6c4:	0e300a93          	li	s5,227
quickjs-nuttx/quickjs.c:36674
            JSAtomStruct *p = ctx->rt->atom_array[atom];
    8001f6c8:	00349793          	slli	a5,s1,0x3
    8001f6cc:	97da                	add	a5,a5,s6
    8001f6ce:	6388                	ld	a0,0(a5)
    8001f6d0:	00048b9b          	sext.w	s7,s1
quickjs-nuttx/quickjs.c:36676
            if (str->len == len && !memcmp(str->u.str8, name, len))
    8001f6d4:	415c                	lw	a5,4(a0)
    8001f6d6:	00fa77b3          	and	a5,s4,a5
    8001f6da:	02f91663          	bne	s2,a5,8001f706 <find_atom+0x86>
    8001f6de:	864a                	mv	a2,s2
    8001f6e0:	85a2                	mv	a1,s0
    8001f6e2:	0541                	addi	a0,a0,16
    8001f6e4:	4f0440ef          	jal	ra,80063bd4 <memcmp>
    8001f6e8:	ed19                	bnez	a0,8001f706 <find_atom+0x86>
quickjs-nuttx/quickjs.c:36684
}
    8001f6ea:	6406                	ld	s0,64(sp)
    8001f6ec:	60a6                	ld	ra,72(sp)
    8001f6ee:	74e2                	ld	s1,56(sp)
    8001f6f0:	7942                	ld	s2,48(sp)
    8001f6f2:	7a02                	ld	s4,32(sp)
    8001f6f4:	6ae2                	ld	s5,24(sp)
    8001f6f6:	6b42                	ld	s6,16(sp)
quickjs-nuttx/quickjs.c:36677
                return JS_DupAtom(ctx, atom);
    8001f6f8:	85de                	mv	a1,s7
    8001f6fa:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:36684
}
    8001f6fc:	6ba2                	ld	s7,8(sp)
    8001f6fe:	79a2                	ld	s3,40(sp)
    8001f700:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:36677
                return JS_DupAtom(ctx, atom);
    8001f702:	a05eb06f          	j	8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:36673
        for(atom = JS_ATOM_Symbol_toPrimitive; atom < JS_ATOM_END; atom++) {
    8001f706:	0485                	addi	s1,s1,1
    8001f708:	fd5490e3          	bne	s1,s5,8001f6c8 <find_atom+0x48>
quickjs-nuttx/quickjs.c:36679
        abort();
    8001f70c:	476430ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:36681
        atom = JS_NewAtom(ctx, name);
    8001f710:	8abff06f          	j	8001efba <JS_NewAtom>

000000008001f714 <js_new_function_def>:
js_new_function_def():
quickjs-nuttx/quickjs.c:29312
{
    8001f714:	7139                	addi	sp,sp,-64
    8001f716:	f426                	sd	s1,40(sp)
    8001f718:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:29315
    fd = js_mallocz(ctx, sizeof(*fd));
    8001f71a:	22800593          	li	a1,552
quickjs-nuttx/quickjs.c:29312
{
    8001f71e:	f822                	sd	s0,48(sp)
    8001f720:	f04a                	sd	s2,32(sp)
    8001f722:	ec4e                	sd	s3,24(sp)
    8001f724:	e852                	sd	s4,16(sp)
    8001f726:	e456                	sd	s5,8(sp)
    8001f728:	e05a                	sd	s6,0(sp)
    8001f72a:	fc06                	sd	ra,56(sp)
    8001f72c:	892a                	mv	s2,a0
    8001f72e:	8b32                	mv	s6,a2
    8001f730:	8ab6                	mv	s5,a3
    8001f732:	8a3a                	mv	s4,a4
    8001f734:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:29315
    fd = js_mallocz(ctx, sizeof(*fd));
    8001f736:	a03fb0ef          	jal	ra,8001b138 <js_mallocz>
    8001f73a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:29316
    if (!fd)
    8001f73c:	cd59                	beqz	a0,8001f7da <js_new_function_def+0xc6>
quickjs-nuttx/quickjs.c:29320
    init_list_head(&fd->child_list);
    8001f73e:	01850793          	addi	a5,a0,24
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8001f742:	ed1c                	sd	a5,24(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    8001f744:	f11c                	sd	a5,32(a0)
js_new_function_def():
quickjs-nuttx/quickjs.c:29324
    fd->parent_cpool_idx = -1;
    8001f746:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:29319
    fd->ctx = ctx;
    8001f748:	01253023          	sd	s2,0(a0)
quickjs-nuttx/quickjs.c:29323
    fd->parent = parent;
    8001f74c:	e504                	sd	s1,8(a0)
quickjs-nuttx/quickjs.c:29324
    fd->parent_cpool_idx = -1;
    8001f74e:	c91c                	sw	a5,16(a0)
quickjs-nuttx/quickjs.c:29325
    if (parent) {
    8001f750:	c08d                	beqz	s1,8001f772 <js_new_function_def+0x5e>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001f752:	6c98                	ld	a4,24(s1)
js_new_function_def():
quickjs-nuttx/quickjs.c:29326
        list_add_tail(&fd->link, &parent->child_list);
    8001f754:	02850793          	addi	a5,a0,40
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001f758:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001f75a:	f518                	sd	a4,40(a0)
js_new_function_def():
quickjs-nuttx/quickjs.c:29326
    8001f75c:	01848713          	addi	a4,s1,24
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001f760:	f918                	sd	a4,48(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001f762:	ec9c                	sd	a5,24(s1)
js_new_function_def():
quickjs-nuttx/quickjs.c:29327
        fd->js_mode = parent->js_mode;
    8001f764:	0864c783          	lbu	a5,134(s1)
    8001f768:	08f50323          	sb	a5,134(a0)
quickjs-nuttx/quickjs.c:29328
        fd->parent_scope_level = parent->scope_level;
    8001f76c:	0e04a783          	lw	a5,224(s1)
    8001f770:	c95c                	sw	a5,20(a0)
quickjs-nuttx/quickjs.c:29333
    js_dbuf_init(ctx, &fd->byte_code);
    8001f772:	13040593          	addi	a1,s0,304
    8001f776:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:29331
    fd->is_eval = is_eval;
    8001f778:	03642c23          	sw	s6,56(s0)
quickjs-nuttx/quickjs.c:29332
    fd->is_func_expr = is_func_expr;
    8001f77c:	05542223          	sw	s5,68(s0)
quickjs-nuttx/quickjs.c:29333
    js_dbuf_init(ctx, &fd->byte_code);
    8001f780:	d8ee90ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:29334
    fd->last_opcode_pos = -1;
    8001f784:	56fd                	li	a3,-1
    8001f786:	10040493          	addi	s1,s0,256
    8001f78a:	d0b4                	sw	a3,96(s1)
quickjs-nuttx/quickjs.c:29335
    fd->func_name = JS_ATOM_NULL;
    8001f78c:	08042423          	sw	zero,136(s0)
quickjs-nuttx/quickjs.c:29336
    fd->var_object_idx = -1;
    8001f790:	08040793          	addi	a5,s0,128
    8001f794:	dbd4                	sw	a3,52(a5)
quickjs-nuttx/quickjs.c:29337
    fd->arg_var_object_idx = -1;
    8001f796:	fc54                	sd	a3,184(s0)
quickjs-nuttx/quickjs.c:29339
    fd->arguments_arg_idx = -1;
    8001f798:	e074                	sd	a3,192(s0)
quickjs-nuttx/quickjs.c:29341
    fd->eval_ret_idx = -1;
    8001f79a:	e474                	sd	a3,200(s0)
quickjs-nuttx/quickjs.c:29343
    fd->new_target_var_idx = -1;
    8001f79c:	e874                	sd	a3,208(s0)
quickjs-nuttx/quickjs.c:29345
    fd->home_object_var_idx = -1;
    8001f79e:	cfb4                	sw	a3,88(a5)
quickjs-nuttx/quickjs.c:29348
    fd->scopes = fd->def_scope_array;
    8001f7a0:	0f840713          	addi	a4,s0,248
quickjs-nuttx/quickjs.c:29349
    fd->scope_size = countof(fd->def_scope_array);
    8001f7a4:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:29348
    fd->scopes = fd->def_scope_array;
    8001f7a6:	f878                	sd	a4,240(s0)
quickjs-nuttx/quickjs.c:29349
    fd->scope_size = countof(fd->def_scope_array);
    8001f7a8:	1602                	slli	a2,a2,0x20
quickjs-nuttx/quickjs.c:29351
    fd->scopes[0].first = -1;
    8001f7aa:	dff4                	sw	a3,124(a5)
quickjs-nuttx/quickjs.c:29352
    fd->scopes[0].parent = -1;
    8001f7ac:	dfb4                	sw	a3,120(a5)
quickjs-nuttx/quickjs.c:29349
    fd->scope_size = countof(fd->def_scope_array);
    8001f7ae:	0611                	addi	a2,a2,4
quickjs-nuttx/quickjs.c:29353
    fd->scope_level = 0;  /* 0: var/arg scope */
    8001f7b0:	02069793          	slli	a5,a3,0x20
    8001f7b4:	f07c                	sd	a5,224(s0)
quickjs-nuttx/quickjs.c:29349
    fd->scope_size = countof(fd->def_scope_array);
    8001f7b6:	f470                	sd	a2,232(s0)
quickjs-nuttx/quickjs.c:29355
    fd->body_scope = -1;
    8001f7b8:	cc94                	sw	a3,24(s1)
quickjs-nuttx/quickjs.c:29357
    fd->filename = JS_NewAtom(ctx, filename);
    8001f7ba:	85d2                	mv	a1,s4
    8001f7bc:	854a                	mv	a0,s2
    8001f7be:	ffcff0ef          	jal	ra,8001efba <JS_NewAtom>
    8001f7c2:	18040793          	addi	a5,s0,384
    8001f7c6:	cba8                	sw	a0,80(a5)
quickjs-nuttx/quickjs.c:29358
    fd->line_num = line_num;
    8001f7c8:	0537aa23          	sw	s3,84(a5)
quickjs-nuttx/quickjs.c:29360
    js_dbuf_init(ctx, &fd->pc2line);
    8001f7cc:	1d840593          	addi	a1,s0,472
    8001f7d0:	854a                	mv	a0,s2
    8001f7d2:	d3ce90ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:29363
    fd->last_opcode_line_num = line_num;
    8001f7d6:	0734a223          	sw	s3,100(s1)
quickjs-nuttx/quickjs.c:29366
}
    8001f7da:	70e2                	ld	ra,56(sp)
    8001f7dc:	8522                	mv	a0,s0
    8001f7de:	7442                	ld	s0,48(sp)
    8001f7e0:	74a2                	ld	s1,40(sp)
    8001f7e2:	7902                	ld	s2,32(sp)
    8001f7e4:	69e2                	ld	s3,24(sp)
    8001f7e6:	6a42                	ld	s4,16(sp)
    8001f7e8:	6aa2                	ld	s5,8(sp)
    8001f7ea:	6b02                	ld	s6,0(sp)
    8001f7ec:	6121                	addi	sp,sp,64
    8001f7ee:	8082                	ret

000000008001f7f0 <emit_class_init_start>:
emit_class_init_start():
quickjs-nuttx/quickjs.c:22792
{
    8001f7f0:	1101                	addi	sp,sp,-32
    8001f7f2:	e822                	sd	s0,16(sp)
    8001f7f4:	e426                	sd	s1,8(sp)
    8001f7f6:	ec06                	sd	ra,24(sp)
js_parse_function_class_fields_init():
quickjs-nuttx/quickjs.c:33558
    fd = js_new_function_def(s->ctx, s->cur_func, FALSE, FALSE,
    8001f7f8:	6918                	ld	a4,16(a0)
emit_class_init_start():
quickjs-nuttx/quickjs.c:22792
{
    8001f7fa:	842a                	mv	s0,a0
    8001f7fc:	84ae                	mv	s1,a1
js_parse_function_class_fields_init():
quickjs-nuttx/quickjs.c:33558
    fd = js_new_function_def(s->ctx, s->cur_func, FALSE, FALSE,
    8001f7fe:	752c                	ld	a1,104(a0)
    8001f800:	6108                	ld	a0,0(a0)
    8001f802:	4781                	li	a5,0
    8001f804:	4681                	li	a3,0
    8001f806:	4601                	li	a2,0
    8001f808:	f0dff0ef          	jal	ra,8001f714 <js_new_function_def>
quickjs-nuttx/quickjs.c:33560
    if (!fd)
    8001f80c:	e909                	bnez	a0,8001f81e <emit_class_init_start+0x2e>
emit_class_init_start():
quickjs-nuttx/quickjs.c:22795
    cf->fields_init_fd = js_parse_function_class_fields_init(s);
    8001f80e:	0004b023          	sd	zero,0(s1)
quickjs-nuttx/quickjs.c:22797
        return -1;
    8001f812:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:22823
}
    8001f814:	60e2                	ld	ra,24(sp)
    8001f816:	6442                	ld	s0,16(sp)
    8001f818:	64a2                	ld	s1,8(sp)
    8001f81a:	6105                	addi	sp,sp,32
    8001f81c:	8082                	ret
js_parse_function_class_fields_init():
quickjs-nuttx/quickjs.c:33564
    fd->has_home_object = TRUE;
    8001f81e:	4785                	li	a5,1
    8001f820:	e53c                	sd	a5,72(a0)
quickjs-nuttx/quickjs.c:33569
    fd->new_target_allowed = TRUE;
    8001f822:	f53c                	sd	a5,104(a0)
quickjs-nuttx/quickjs.c:33571
    fd->super_allowed = fd->has_home_object;
    8001f824:	f93c                	sd	a5,112(a0)
quickjs-nuttx/quickjs.c:33566
    fd->has_arguments_binding = FALSE;
    8001f826:	02079713          	slli	a4,a5,0x20
quickjs-nuttx/quickjs.c:33574
    fd->func_kind = JS_FUNC_NORMAL;
    8001f82a:	60000793          	li	a5,1536
quickjs-nuttx/quickjs.c:33562
    fd->func_name = JS_ATOM_NULL;
    8001f82e:	08052423          	sw	zero,136(a0)
quickjs-nuttx/quickjs.c:33566
    fd->has_arguments_binding = FALSE;
    8001f832:	f138                	sd	a4,96(a0)
quickjs-nuttx/quickjs.c:33568
    fd->is_derived_class_constructor = FALSE;
    8001f834:	06052c23          	sw	zero,120(a0)
quickjs-nuttx/quickjs.c:33574
    fd->func_kind = JS_FUNC_NORMAL;
    8001f838:	08f51223          	sh	a5,132(a0)
emit_class_init_start():
quickjs-nuttx/quickjs.c:22795
    cf->fields_init_fd = js_parse_function_class_fields_init(s);
    8001f83c:	e088                	sd	a0,0(s1)
quickjs-nuttx/quickjs.c:22799
    s->cur_func = cf->fields_init_fd;
    8001f83e:	f428                	sd	a0,104(s0)
quickjs-nuttx/quickjs.c:22801
    if (!cf->is_static) {
    8001f840:	48dc                	lw	a5,20(s1)
    8001f842:	e7a5                	bnez	a5,8001f8aa <emit_class_init_start+0xba>
quickjs-nuttx/quickjs.c:22805
        emit_op(s, OP_push_false); /* will be patched later */
    8001f844:	45a5                	li	a1,9
    8001f846:	8522                	mv	a0,s0
    8001f848:	8afe90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22806
        cf->brand_push_pos = cf->fields_init_fd->last_opcode_pos;
    8001f84c:	609c                	ld	a5,0(s1)
quickjs-nuttx/quickjs.c:22807
        label_add_brand = emit_goto(s, OP_if_false, -1);
    8001f84e:	567d                	li	a2,-1
    8001f850:	06a00593          	li	a1,106
quickjs-nuttx/quickjs.c:22806
        cf->brand_push_pos = cf->fields_init_fd->last_opcode_pos;
    8001f854:	1607a783          	lw	a5,352(a5)
quickjs-nuttx/quickjs.c:22807
        label_add_brand = emit_goto(s, OP_if_false, -1);
    8001f858:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:22806
        cf->brand_push_pos = cf->fields_init_fd->last_opcode_pos;
    8001f85a:	c89c                	sw	a5,16(s1)
quickjs-nuttx/quickjs.c:22807
        label_add_brand = emit_goto(s, OP_if_false, -1);
    8001f85c:	f18fd0ef          	jal	ra,8001cf74 <emit_goto>
    8001f860:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:22809
        emit_op(s, OP_scope_get_var);
    8001f862:	0ba00593          	li	a1,186
    8001f866:	8522                	mv	a0,s0
    8001f868:	88fe90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22810
        emit_atom(s, JS_ATOM_this);
    8001f86c:	45a1                	li	a1,8
    8001f86e:	8522                	mv	a0,s0
    8001f870:	8bbeb0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22811
        emit_u16(s, 0);
    8001f874:	4581                	li	a1,0
    8001f876:	8522                	mv	a0,s0
    8001f878:	f4ce90ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22813
        emit_op(s, OP_scope_get_var);
    8001f87c:	0ba00593          	li	a1,186
    8001f880:	8522                	mv	a0,s0
    8001f882:	875e90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22814
        emit_atom(s, JS_ATOM_home_object);
    8001f886:	07400593          	li	a1,116
    8001f88a:	8522                	mv	a0,s0
    8001f88c:	89feb0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22815
        emit_u16(s, 0);
    8001f890:	4581                	li	a1,0
    8001f892:	8522                	mv	a0,s0
    8001f894:	f30e90ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22817
        emit_op(s, OP_add_brand);
    8001f898:	02d00593          	li	a1,45
    8001f89c:	8522                	mv	a0,s0
    8001f89e:	859e90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22819
        emit_label(s, label_add_brand);
    8001f8a2:	85a6                	mv	a1,s1
    8001f8a4:	8522                	mv	a0,s0
    8001f8a6:	9efe90ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:22821
    s->cur_func = s->cur_func->parent;
    8001f8aa:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:22822
    return 0;
    8001f8ac:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:22821
    s->cur_func = s->cur_func->parent;
    8001f8ae:	679c                	ld	a5,8(a5)
    8001f8b0:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:22822
    return 0;
    8001f8b2:	b78d                	j	8001f814 <emit_class_init_start+0x24>

000000008001f8b4 <parse_ident>:
parse_ident():
quickjs-nuttx/quickjs.c:20523
{
    8001f8b4:	7111                	addi	sp,sp,-256
    8001f8b6:	e5d6                	sd	s5,200(sp)
quickjs-nuttx/quickjs.c:20531
    ident_size = sizeof(ident_buf);
    8001f8b8:	08000793          	li	a5,128
quickjs-nuttx/quickjs.c:20530
    buf = ident_buf;
    8001f8bc:	02010a93          	addi	s5,sp,32
quickjs-nuttx/quickjs.c:20523
{
    8001f8c0:	f9a2                	sd	s0,240(sp)
    8001f8c2:	f5a6                	sd	s1,232(sp)
    8001f8c4:	f1ca                	sd	s2,224(sp)
    8001f8c6:	edce                	sd	s3,216(sp)
    8001f8c8:	e1da                	sd	s6,192(sp)
    8001f8ca:	fd86                	sd	ra,248(sp)
    8001f8cc:	e9d2                	sd	s4,208(sp)
    8001f8ce:	fd5e                	sd	s7,184(sp)
    8001f8d0:	f962                	sd	s8,176(sp)
    8001f8d2:	f566                	sd	s9,168(sp)
quickjs-nuttx/quickjs.c:20530
    buf = ident_buf;
    8001f8d4:	e856                	sd	s5,16(sp)
quickjs-nuttx/quickjs.c:20531
    ident_size = sizeof(ident_buf);
    8001f8d6:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:20529
    p = *pp;
    8001f8d8:	0005ba03          	ld	s4,0(a1)
quickjs-nuttx/quickjs.c:20523
{
    8001f8dc:	892a                	mv	s2,a0
    8001f8de:	89ae                	mv	s3,a1
    8001f8e0:	8b32                	mv	s6,a2
    8001f8e2:	8436                	mv	s0,a3
    8001f8e4:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:20533
    if (is_private)
    8001f8e6:	c711                	beqz	a4,8001f8f2 <parse_ident+0x3e>
quickjs-nuttx/quickjs.c:20534
        buf[ident_pos++] = '#';
    8001f8e8:	02300793          	li	a5,35
    8001f8ec:	02f10023          	sb	a5,32(sp)
    8001f8f0:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:20538
        if (c < 128) {
    8001f8f2:	07f00b93          	li	s7,127
quickjs-nuttx/quickjs.c:20544
        if (c == '\\' && *p1 == 'u') {
    8001f8f6:	05c00c13          	li	s8,92
    8001f8fa:	07500c93          	li	s9,117
quickjs-nuttx/quickjs.c:20539
            buf[ident_pos++] = c;
    8001f8fe:	6542                	ld	a0,16(sp)
quickjs-nuttx/quickjs.c:20536
        p1 = p;
    8001f900:	e452                	sd	s4,8(sp)
quickjs-nuttx/quickjs.c:20539
            buf[ident_pos++] = c;
    8001f902:	9526                	add	a0,a0,s1
quickjs-nuttx/quickjs.c:20538
        if (c < 128) {
    8001f904:	048bcc63          	blt	s7,s0,8001f95c <parse_ident+0xa8>
quickjs-nuttx/quickjs.c:20539
            buf[ident_pos++] = c;
    8001f908:	0485                	addi	s1,s1,1
    8001f90a:	00850023          	sb	s0,0(a0)
quickjs-nuttx/quickjs.c:20543
        c = *p1++;
    8001f90e:	67a2                	ld	a5,8(sp)
    8001f910:	00178713          	addi	a4,a5,1
    8001f914:	e43a                	sd	a4,8(sp)
    8001f916:	0007c403          	lbu	s0,0(a5)
quickjs-nuttx/quickjs.c:20544
        if (c == '\\' && *p1 == 'u') {
    8001f91a:	05841763          	bne	s0,s8,8001f968 <parse_ident+0xb4>
quickjs-nuttx/quickjs.c:20544 (discriminator 1)
    8001f91e:	0017c783          	lbu	a5,1(a5)
    8001f922:	01979a63          	bne	a5,s9,8001f936 <parse_ident+0x82>
quickjs-nuttx/quickjs.c:20545
            c = lre_parse_escape(&p1, TRUE);
    8001f926:	4585                	li	a1,1
    8001f928:	0028                	addi	a0,sp,8
    8001f92a:	5862e0ef          	jal	ra,8004deb0 <lre_parse_escape>
quickjs-nuttx/quickjs.c:20546
            *pident_has_escape = TRUE;
    8001f92e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:20545
            c = lre_parse_escape(&p1, TRUE);
    8001f930:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:20546
            *pident_has_escape = TRUE;
    8001f932:	00fb2023          	sw	a5,0(s6)
quickjs-nuttx/quickjs.c:20550
        if (!lre_js_is_ident_next(c))
    8001f936:	8522                	mv	a0,s0
    8001f938:	8a4ea0ef          	jal	ra,800099dc <lre_js_is_ident_next>
    8001f93c:	cd1d                	beqz	a0,8001f97a <parse_ident+0xc6>
quickjs-nuttx/quickjs.c:20553
        if (unlikely(ident_pos >= ident_size - UTF8_CHAR_LEN_MAX)) {
    8001f93e:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:20552
        p = p1;
    8001f940:	6a22                	ld	s4,8(sp)
quickjs-nuttx/quickjs.c:20553
        if (unlikely(ident_pos >= ident_size - UTF8_CHAR_LEN_MAX)) {
    8001f942:	17e9                	addi	a5,a5,-6
    8001f944:	faf4ede3          	bltu	s1,a5,8001f8fe <parse_ident+0x4a>
quickjs-nuttx/quickjs.c:20554
            if (ident_realloc(s->ctx, &buf, &ident_size, ident_buf)) {
    8001f948:	00093503          	ld	a0,0(s2)
    8001f94c:	86d6                	mv	a3,s5
    8001f94e:	0830                	addi	a2,sp,24
    8001f950:	080c                	addi	a1,sp,16
    8001f952:	9c9fc0ef          	jal	ra,8001c31a <ident_realloc>
    8001f956:	d545                	beqz	a0,8001f8fe <parse_ident+0x4a>
quickjs-nuttx/quickjs.c:20555
                atom = JS_ATOM_NULL;
    8001f958:	4401                	li	s0,0
    8001f95a:	a805                	j	8001f98a <parse_ident+0xd6>
quickjs-nuttx/quickjs.c:20541
            ident_pos += unicode_to_utf8((uint8_t*)buf + ident_pos, c);
    8001f95c:	0004059b          	sext.w	a1,s0
    8001f960:	26c320ef          	jal	ra,80051bcc <unicode_to_utf8>
    8001f964:	94aa                	add	s1,s1,a0
    8001f966:	b765                	j	8001f90e <parse_ident+0x5a>
quickjs-nuttx/quickjs.c:20547
        } else if (c >= 128) {
    8001f968:	fc8bd7e3          	bge	s7,s0,8001f936 <parse_ident+0x82>
quickjs-nuttx/quickjs.c:20548
            c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p1);
    8001f96c:	0030                	addi	a2,sp,8
    8001f96e:	4599                	li	a1,6
    8001f970:	8552                	mv	a0,s4
    8001f972:	348320ef          	jal	ra,80051cba <unicode_from_utf8>
    8001f976:	842a                	mv	s0,a0
    8001f978:	bf7d                	j	8001f936 <parse_ident+0x82>
quickjs-nuttx/quickjs.c:20560
    atom = JS_NewAtomLen(s->ctx, buf, ident_pos);
    8001f97a:	65c2                	ld	a1,16(sp)
    8001f97c:	00093503          	ld	a0,0(s2)
    8001f980:	8626                	mv	a2,s1
    8001f982:	de6ff0ef          	jal	ra,8001ef68 <JS_NewAtomLen>
    8001f986:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:20562
    if (unlikely(buf != ident_buf))
    8001f98a:	65c2                	ld	a1,16(sp)
    8001f98c:	01558663          	beq	a1,s5,8001f998 <parse_ident+0xe4>
quickjs-nuttx/quickjs.c:20563
        js_free(s->ctx, buf);
    8001f990:	00093503          	ld	a0,0(s2)
    8001f994:	e62eb0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:20566
}
    8001f998:	70ee                	ld	ra,248(sp)
    8001f99a:	8522                	mv	a0,s0
    8001f99c:	744e                	ld	s0,240(sp)
quickjs-nuttx/quickjs.c:20564
    *pp = p;
    8001f99e:	0149b023          	sd	s4,0(s3)
quickjs-nuttx/quickjs.c:20566
}
    8001f9a2:	74ae                	ld	s1,232(sp)
    8001f9a4:	790e                	ld	s2,224(sp)
    8001f9a6:	69ee                	ld	s3,216(sp)
    8001f9a8:	6a4e                	ld	s4,208(sp)
    8001f9aa:	6aae                	ld	s5,200(sp)
    8001f9ac:	6b0e                	ld	s6,192(sp)
    8001f9ae:	7bea                	ld	s7,184(sp)
    8001f9b0:	7c4a                	ld	s8,176(sp)
    8001f9b2:	7caa                	ld	s9,168(sp)
    8001f9b4:	6111                	addi	sp,sp,256
    8001f9b6:	8082                	ret

000000008001f9b8 <JS_NewString>:
JS_NewString():
quickjs-nuttx/quickjs.c:3973
{
    8001f9b8:	7179                	addi	sp,sp,-48
    8001f9ba:	f022                	sd	s0,32(sp)
    8001f9bc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3974
    return JS_NewStringLen(ctx, str, strlen(str));
    8001f9be:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:3973
{
    8001f9c0:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:3974
    return JS_NewStringLen(ctx, str, strlen(str));
    8001f9c2:	e42e                	sd	a1,8(sp)
    8001f9c4:	3be440ef          	jal	ra,80063d82 <strlen>
    8001f9c8:	862a                	mv	a2,a0
    8001f9ca:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:3975
}
    8001f9cc:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:3974
    return JS_NewStringLen(ctx, str, strlen(str));
    8001f9ce:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:3975
}
    8001f9d0:	70a2                	ld	ra,40(sp)
    8001f9d2:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:3974
    return JS_NewStringLen(ctx, str, strlen(str));
    8001f9d4:	c36ff06f          	j	8001ee0a <JS_NewStringLen>

000000008001f9d8 <JS_NewAtomUInt32>:
JS_NewAtomUInt32():
quickjs-nuttx/quickjs.c:2980
{
    8001f9d8:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:2981
    if (n <= JS_ATOM_MAX_INT) {
    8001f9da:	0005c663          	bltz	a1,8001f9e6 <JS_NewAtomUInt32+0xe>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8001f9de:	80000537          	lui	a0,0x80000
    8001f9e2:	8d4d                	or	a0,a0,a1
JS_NewAtomUInt32():
quickjs-nuttx/quickjs.c:2993
}
    8001f9e4:	8082                	ret
quickjs-nuttx/quickjs.c:2980
{
    8001f9e6:	7179                	addi	sp,sp,-48
    8001f9e8:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:2986
        snprintf(buf, sizeof(buf), "%u", n);
    8001f9ea:	0004a617          	auipc	a2,0x4a
    8001f9ee:	cee60613          	addi	a2,a2,-786 # 800696d8 <qjsc_repl+0x4128>
    8001f9f2:	842a                	mv	s0,a0
    8001f9f4:	45ad                	li	a1,11
    8001f9f6:	850a                	mv	a0,sp
quickjs-nuttx/quickjs.c:2980
{
    8001f9f8:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:2986
        snprintf(buf, sizeof(buf), "%u", n);
    8001f9fa:	047410ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:2987
        val = JS_NewString(ctx, buf);
    8001f9fe:	858a                	mv	a1,sp
    8001fa00:	8522                	mv	a0,s0
    8001fa02:	fb7ff0ef          	jal	ra,8001f9b8 <JS_NewString>
quickjs-nuttx/quickjs.c:2988
        if (JS_IsException(val))
    8001fa06:	2581                	sext.w	a1,a1
    8001fa08:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:2987
        val = JS_NewString(ctx, buf);
    8001fa0a:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:2989
            return JS_ATOM_NULL;
    8001fa0c:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:2988
        if (JS_IsException(val))
    8001fa0e:	00e58863          	beq	a1,a4,8001fa1e <JS_NewAtomUInt32+0x46>
quickjs-nuttx/quickjs.c:2990
        return __JS_NewAtom(ctx->rt, JS_VALUE_GET_STRING(val),
    8001fa12:	6c08                	ld	a0,24(s0)
    8001fa14:	4605                	li	a2,1
    8001fa16:	85be                	mv	a1,a5
    8001fa18:	a66eb0ef          	jal	ra,8000ac7e <__JS_NewAtom>
    8001fa1c:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:2993 (discriminator 1)
}
    8001fa1e:	70a2                	ld	ra,40(sp)
    8001fa20:	7402                	ld	s0,32(sp)
    8001fa22:	6145                	addi	sp,sp,48
    8001fa24:	8082                	ret

000000008001fa26 <__JS_AtomToValue>:
__JS_AtomToValue():
quickjs-nuttx/quickjs.c:3094
{
    8001fa26:	711d                	addi	sp,sp,-96
    8001fa28:	e8a2                	sd	s0,80(sp)
    8001fa2a:	ec86                	sd	ra,88(sp)
    8001fa2c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3097
    if (__JS_AtomIsTaggedInt(atom)) {
    8001fa2e:	0205da63          	bgez	a1,8001fa62 <__JS_AtomToValue+0x3c>
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    8001fa32:	1586                	slli	a1,a1,0x21
__JS_AtomToValue():
quickjs-nuttx/quickjs.c:3098
        snprintf(buf, sizeof(buf), "%u", __JS_AtomToUInt32(atom));
    8001fa34:	0215d693          	srli	a3,a1,0x21
    8001fa38:	0004a617          	auipc	a2,0x4a
    8001fa3c:	ca060613          	addi	a2,a2,-864 # 800696d8 <qjsc_repl+0x4128>
    8001fa40:	04000593          	li	a1,64
    8001fa44:	0808                	addi	a0,sp,16
    8001fa46:	7fa410ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:3099
        return JS_NewString(ctx, buf);
    8001fa4a:	080c                	addi	a1,sp,16
    8001fa4c:	8522                	mv	a0,s0
    8001fa4e:	f6bff0ef          	jal	ra,8001f9b8 <JS_NewString>
    8001fa52:	e02a                	sd	a0,0(sp)
    8001fa54:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:3118 (discriminator 1)
}
    8001fa56:	60e6                	ld	ra,88(sp)
    8001fa58:	6446                	ld	s0,80(sp)
    8001fa5a:	6502                	ld	a0,0(sp)
    8001fa5c:	65a2                	ld	a1,8(sp)
    8001fa5e:	6125                	addi	sp,sp,96
    8001fa60:	8082                	ret
quickjs-nuttx/quickjs.c:3101
        JSRuntime *rt = ctx->rt;
    8001fa62:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:3103
        assert(atom < rt->atom_size);
    8001fa64:	4bb8                	lw	a4,80(a5)
    8001fa66:	00e5ec63          	bltu	a1,a4,8001fa7e <__JS_AtomToValue+0x58>
quickjs-nuttx/quickjs.c:3103 (discriminator 1)
    8001fa6a:	6585                	lui	a1,0x1
    8001fa6c:	4601                	li	a2,0
    8001fa6e:	c1f58593          	addi	a1,a1,-993 # c1f <asinh-0x7ffff3e1>
    8001fa72:	0004a517          	auipc	a0,0x4a
    8001fa76:	b2650513          	addi	a0,a0,-1242 # 80069598 <qjsc_repl+0x3fe8>
    8001fa7a:	6e3400ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:3104 (discriminator 2)
        p = rt->atom_array[atom];
    8001fa7e:	73b4                	ld	a3,96(a5)
    8001fa80:	02059793          	slli	a5,a1,0x20
    8001fa84:	01d7d593          	srli	a1,a5,0x1d
    8001fa88:	95b6                	add	a1,a1,a3
    8001fa8a:	619c                	ld	a5,0(a1)
quickjs-nuttx/quickjs.c:3105 (discriminator 2)
        if (p->atom_type == JS_ATOM_TYPE_STRING) {
    8001fa8c:	c00005b7          	lui	a1,0xc0000
    8001fa90:	4798                	lw	a4,8(a5)
    8001fa92:	8f6d                	and	a4,a4,a1
    8001fa94:	2701                	sext.w	a4,a4
    8001fa96:	400005b7          	lui	a1,0x40000
    8001fa9a:	00b70a63          	beq	a4,a1,8001faae <__JS_AtomToValue+0x88>
quickjs-nuttx/quickjs.c:3107
        } else if (force_string) {
    8001fa9e:	ce19                	beqz	a2,8001fabc <__JS_AtomToValue+0x96>
quickjs-nuttx/quickjs.c:3108
            if (p->len == 0 && p->is_wide_char != 0) {
    8001faa0:	43d0                	lw	a2,4(a5)
    8001faa2:	80000737          	lui	a4,0x80000
    8001faa6:	00e61463          	bne	a2,a4,8001faae <__JS_AtomToValue+0x88>
quickjs-nuttx/quickjs.c:3110
                p = rt->atom_array[JS_ATOM_empty_string];
    8001faaa:	1786b783          	ld	a5,376(a3)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8001faae:	4398                	lw	a4,0(a5)
    8001fab0:	e03e                	sd	a5,0(sp)
    8001fab2:	2705                	addiw	a4,a4,1
    8001fab4:	c398                	sw	a4,0(a5)
__JS_AtomToValue():
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    8001fab6:	57e5                	li	a5,-7
    8001fab8:	e43e                	sd	a5,8(sp)
    8001faba:	bf71                	j	8001fa56 <__JS_AtomToValue+0x30>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8001fabc:	4398                	lw	a4,0(a5)
    8001fabe:	e03e                	sd	a5,0(sp)
    8001fac0:	2705                	addiw	a4,a4,1
    8001fac2:	c398                	sw	a4,0(a5)
__JS_AtomToValue():
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    8001fac4:	57e1                	li	a5,-8
    8001fac6:	bfcd                	j	8001fab8 <__JS_AtomToValue+0x92>

000000008001fac8 <JS_AtomToValue>:
JS_AtomToValue():
quickjs-nuttx/quickjs.c:3121
{
    8001fac8:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:3122
    return __JS_AtomToValue(ctx, atom, FALSE);
    8001faca:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:3123
}
    8001facc:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:3122
    return __JS_AtomToValue(ctx, atom, FALSE);
    8001face:	f59ff06f          	j	8001fa26 <__JS_AtomToValue>

000000008001fad2 <JS_AtomToString>:
JS_AtomToString():
quickjs-nuttx/quickjs.c:3126
{
    8001fad2:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:3127
    return __JS_AtomToValue(ctx, atom, TRUE);
    8001fad4:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:3128
}
    8001fad6:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:3127
    return __JS_AtomToValue(ctx, atom, TRUE);
    8001fad8:	f4fff06f          	j	8001fa26 <__JS_AtomToValue>

000000008001fadc <JS_ToPrimitiveFree>:
JS_ToPrimitiveFree():
quickjs-nuttx/quickjs.c:9843
{
    8001fadc:	7131                	addi	sp,sp,-192
    8001fade:	f526                	sd	s1,168(sp)
    8001fae0:	fd06                	sd	ra,184(sp)
    8001fae2:	f922                	sd	s0,176(sp)
    8001fae4:	f14a                	sd	s2,160(sp)
    8001fae6:	ed4e                	sd	s3,152(sp)
    8001fae8:	e952                	sd	s4,144(sp)
    8001faea:	e556                	sd	s5,136(sp)
    8001faec:	e15a                	sd	s6,128(sp)
    8001faee:	fcde                	sd	s7,120(sp)
    8001faf0:	e82e                	sd	a1,16(sp)
    8001faf2:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:9849
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8001faf4:	0006071b          	sext.w	a4,a2
    8001faf8:	57fd                	li	a5,-1
    8001fafa:	84b2                	mv	s1,a2
    8001fafc:	02f70163          	beq	a4,a5,8001fb1e <JS_ToPrimitiveFree+0x42>
quickjs-nuttx/quickjs.c:9850
        return val;
    8001fb00:	e8ae                	sd	a1,80(sp)
    8001fb02:	ecb2                	sd	a2,88(sp)
quickjs-nuttx/quickjs.c:9914
}
    8001fb04:	70ea                	ld	ra,184(sp)
    8001fb06:	744a                	ld	s0,176(sp)
    8001fb08:	6546                	ld	a0,80(sp)
    8001fb0a:	65e6                	ld	a1,88(sp)
    8001fb0c:	74aa                	ld	s1,168(sp)
    8001fb0e:	790a                	ld	s2,160(sp)
    8001fb10:	69ea                	ld	s3,152(sp)
    8001fb12:	6a4a                	ld	s4,144(sp)
    8001fb14:	6aaa                	ld	s5,136(sp)
    8001fb16:	6b0a                	ld	s6,128(sp)
    8001fb18:	7be6                	ld	s7,120(sp)
    8001fb1a:	6129                	addi	sp,sp,192
    8001fb1c:	8082                	ret
quickjs-nuttx/quickjs.c:9852
    hint &= ~HINT_FORCE_ORDINARY;
    8001fb1e:	fef6f993          	andi	s3,a3,-17
quickjs-nuttx/quickjs.c:9853
    if (!force_ordinary) {
    8001fb22:	8ac1                	andi	a3,a3,16
    8001fb24:	842a                	mv	s0,a0
    8001fb26:	e6cd                	bnez	a3,8001fbd0 <JS_ToPrimitiveFree+0xf4>
quickjs-nuttx/quickjs.c:9854
        method = JS_GetProperty(ctx, val, JS_ATOM_Symbol_toPrimitive);
    8001fb28:	872e                	mv	a4,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001fb2a:	87b2                	mv	a5,a2
    8001fb2c:	4801                	li	a6,0
    8001fb2e:	0d500693          	li	a3,213
    8001fb32:	f0ae                	sd	a1,96(sp)
    8001fb34:	f4b2                	sd	a2,104(sp)
    8001fb36:	f75f60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001fb3a:	f02a                	sd	a0,32(sp)
    8001fb3c:	f42e                	sd	a1,40(sp)
JS_ToPrimitiveFree():
quickjs-nuttx/quickjs.c:9855
        if (JS_IsException(method))
    8001fb3e:	0005871b          	sext.w	a4,a1
    8001fb42:	4799                	li	a5,6
    8001fb44:	12f70263          	beq	a4,a5,8001fc68 <JS_ToPrimitiveFree+0x18c>
quickjs-nuttx/quickjs.c:9859 (discriminator 1)
        if (!JS_IsUndefined(method) && !JS_IsNull(method)) {
    8001fb48:	35f9                	addiw	a1,a1,-2
    8001fb4a:	4785                	li	a5,1
    8001fb4c:	08b7f263          	bgeu	a5,a1,8001fbd0 <JS_ToPrimitiveFree+0xf4>
quickjs-nuttx/quickjs.c:9864
                atom = JS_ATOM_string;
    8001fb50:	04900593          	li	a1,73
quickjs-nuttx/quickjs.c:9862
            switch(hint) {
    8001fb54:	00098763          	beqz	s3,8001fb62 <JS_ToPrimitiveFree+0x86>
quickjs-nuttx/quickjs.c:9871
                atom = JS_ATOM_default;
    8001fb58:	45d9                	li	a1,22
quickjs-nuttx/quickjs.c:9862
            switch(hint) {
    8001fb5a:	00f99463          	bne	s3,a5,8001fb62 <JS_ToPrimitiveFree+0x86>
    8001fb5e:	04700593          	li	a1,71
quickjs-nuttx/quickjs.c:9874
            arg = JS_AtomToString(ctx, atom);
    8001fb62:	8522                	mv	a0,s0
    8001fb64:	f6fff0ef          	jal	ra,8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:9875
            ret = JS_CallFree(ctx, method, val, 1, (JSValueConst *)&arg);
    8001fb68:	66c2                	ld	a3,16(sp)
    8001fb6a:	6762                	ld	a4,24(sp)
    8001fb6c:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:9874
            arg = JS_AtomToString(ctx, atom);
    8001fb6e:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:9875
            ret = JS_CallFree(ctx, method, val, 1, (JSValueConst *)&arg);
    8001fb70:	7582                	ld	a1,32(sp)
    8001fb72:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:9874
            arg = JS_AtomToString(ctx, atom);
    8001fb74:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:9875
            ret = JS_CallFree(ctx, method, val, 1, (JSValueConst *)&arg);
    8001fb76:	06010813          	addi	a6,sp,96
    8001fb7a:	8522                	mv	a0,s0
    8001fb7c:	ef9f60ef          	jal	ra,80016a74 <JS_CallFree>
    8001fb80:	892e                	mv	s2,a1
    8001fb82:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:9876
            JS_FreeValue(ctx, arg);
    8001fb84:	7626                	ld	a2,104(sp)
    8001fb86:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:9875
            ret = JS_CallFree(ctx, method, val, 1, (JSValueConst *)&arg);
    8001fb88:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:9876
            JS_FreeValue(ctx, arg);
    8001fb8a:	8522                	mv	a0,s0
    8001fb8c:	c13eb0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001fb90:	2901                	sext.w	s2,s2
JS_ToPrimitiveFree():
quickjs-nuttx/quickjs.c:9877
            if (JS_IsException(ret))
    8001fb92:	4799                	li	a5,6
    8001fb94:	0cf90a63          	beq	s2,a5,8001fc68 <JS_ToPrimitiveFree+0x18c>
quickjs-nuttx/quickjs.c:9879
            JS_FreeValue(ctx, val);
    8001fb98:	65c2                	ld	a1,16(sp)
    8001fb9a:	6662                	ld	a2,24(sp)
    8001fb9c:	8522                	mv	a0,s0
    8001fb9e:	c01eb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9880
            if (JS_VALUE_GET_TAG(ret) != JS_TAG_OBJECT)
    8001fba2:	57fd                	li	a5,-1
    8001fba4:	00f90763          	beq	s2,a5,8001fbb2 <JS_ToPrimitiveFree+0xd6>
quickjs-nuttx/quickjs.c:9903
                return ret;
    8001fba8:	77c2                	ld	a5,48(sp)
    8001fbaa:	e8be                	sd	a5,80(sp)
    8001fbac:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:9913
    return JS_EXCEPTION;
    8001fbae:	ecbe                	sd	a5,88(sp)
    8001fbb0:	bf91                	j	8001fb04 <JS_ToPrimitiveFree+0x28>
quickjs-nuttx/quickjs.c:9882
            JS_FreeValue(ctx, ret);
    8001fbb2:	75c2                	ld	a1,48(sp)
    8001fbb4:	7662                	ld	a2,56(sp)
    8001fbb6:	8522                	mv	a0,s0
    8001fbb8:	be7eb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9883
            return JS_ThrowTypeError(ctx, "toPrimitive");
    8001fbbc:	0004b597          	auipc	a1,0x4b
    8001fbc0:	d7c58593          	addi	a1,a1,-644 # 8006a938 <qjsc_repl+0x5388>
    8001fbc4:	8522                	mv	a0,s0
    8001fbc6:	aa7f80ef          	jal	ra,8001866c <JS_ThrowTypeError>
    8001fbca:	e8aa                	sd	a0,80(sp)
    8001fbcc:	ecae                	sd	a1,88(sp)
    8001fbce:	bf1d                	j	8001fb04 <JS_ToPrimitiveFree+0x28>
quickjs-nuttx/quickjs.c:9887
        hint = HINT_NUMBER;
    8001fbd0:	013039b3          	snez	s3,s3
quickjs-nuttx/quickjs.c:9888
    for(i = 0; i < 2; i++) {
    8001fbd4:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:9895
        if (JS_IsException(method))
    8001fbd6:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:9901
            if (JS_VALUE_GET_TAG(ret) != JS_TAG_OBJECT) {
    8001fbd8:	5bfd                	li	s7,-1
    8001fbda:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:9890
            method_name = JS_ATOM_toString;
    8001fbdc:	03800693          	li	a3,56
quickjs-nuttx/quickjs.c:9889
        if ((i ^ hint) == 0) {
    8001fbe0:	01498463          	beq	s3,s4,8001fbe8 <JS_ToPrimitiveFree+0x10c>
quickjs-nuttx/quickjs.c:9892
            method_name = JS_ATOM_valueOf;
    8001fbe4:	03a00693          	li	a3,58
quickjs-nuttx/quickjs.c:9894
        method = JS_GetProperty(ctx, val, method_name);
    8001fbe8:	6742                	ld	a4,16(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001fbea:	87a6                	mv	a5,s1
    8001fbec:	8626                	mv	a2,s1
    8001fbee:	4801                	li	a6,0
    8001fbf0:	85ba                	mv	a1,a4
    8001fbf2:	8522                	mv	a0,s0
    8001fbf4:	ec26                	sd	s1,24(sp)
    8001fbf6:	e8ba                	sd	a4,80(sp)
    8001fbf8:	eca6                	sd	s1,88(sp)
    8001fbfa:	eb1f60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001fbfe:	f0aa                	sd	a0,96(sp)
    8001fc00:	f4ae                	sd	a1,104(sp)
JS_ToPrimitiveFree():
quickjs-nuttx/quickjs.c:9895
        if (JS_IsException(method))
    8001fc02:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001fc06:	892a                	mv	s2,a0
    8001fc08:	862e                	mv	a2,a1
JS_ToPrimitiveFree():
quickjs-nuttx/quickjs.c:9895
    8001fc0a:	05578f63          	beq	a5,s5,8001fc68 <JS_ToPrimitiveFree+0x18c>
quickjs-nuttx/quickjs.c:9897
        if (JS_IsFunction(ctx, method)) {
    8001fc0e:	85aa                	mv	a1,a0
    8001fc10:	8522                	mv	a0,s0
    8001fc12:	e432                	sd	a2,8(sp)
    8001fc14:	88fee0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8001fc18:	6622                	ld	a2,8(sp)
    8001fc1a:	cd39                	beqz	a0,8001fc78 <JS_ToPrimitiveFree+0x19c>
quickjs-nuttx/quickjs.c:9898
            ret = JS_CallFree(ctx, method, val, 0, NULL);
    8001fc1c:	66c2                	ld	a3,16(sp)
    8001fc1e:	6762                	ld	a4,24(sp)
    8001fc20:	4781                	li	a5,0
    8001fc22:	4801                	li	a6,0
    8001fc24:	85ca                	mv	a1,s2
    8001fc26:	8522                	mv	a0,s0
    8001fc28:	e4df60ef          	jal	ra,80016a74 <JS_CallFree>
    8001fc2c:	f82a                	sd	a0,48(sp)
    8001fc2e:	fc2e                	sd	a1,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001fc30:	0005879b          	sext.w	a5,a1
JS_ToPrimitiveFree():
quickjs-nuttx/quickjs.c:9898
    8001fc34:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:9899
            if (JS_IsException(ret))
    8001fc36:	03578963          	beq	a5,s5,8001fc68 <JS_ToPrimitiveFree+0x18c>
quickjs-nuttx/quickjs.c:9901
            if (JS_VALUE_GET_TAG(ret) != JS_TAG_OBJECT) {
    8001fc3a:	01778a63          	beq	a5,s7,8001fc4e <JS_ToPrimitiveFree+0x172>
quickjs-nuttx/quickjs.c:9902
                JS_FreeValue(ctx, val);
    8001fc3e:	65c2                	ld	a1,16(sp)
    8001fc40:	6662                	ld	a2,24(sp)
    8001fc42:	8522                	mv	a0,s0
    8001fc44:	b5beb0ef          	jal	ra,8000b79e <JS_FreeValue>
    8001fc48:	b785                	j	8001fba8 <JS_ToPrimitiveFree+0xcc>
    8001fc4a:	4a05                	li	s4,1
    8001fc4c:	bf41                	j	8001fbdc <JS_ToPrimitiveFree+0x100>
quickjs-nuttx/quickjs.c:9905
            JS_FreeValue(ctx, ret);
    8001fc4e:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:9907
            JS_FreeValue(ctx, method);
    8001fc50:	8522                	mv	a0,s0
    8001fc52:	b4deb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9888
    for(i = 0; i < 2; i++) {
    8001fc56:	ff6a1ae3          	bne	s4,s6,8001fc4a <JS_ToPrimitiveFree+0x16e>
quickjs-nuttx/quickjs.c:9910
    JS_ThrowTypeError(ctx, "toPrimitive");
    8001fc5a:	0004b597          	auipc	a1,0x4b
    8001fc5e:	cde58593          	addi	a1,a1,-802 # 8006a938 <qjsc_repl+0x5388>
    8001fc62:	8522                	mv	a0,s0
    8001fc64:	a09f80ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:9912
    JS_FreeValue(ctx, val);
    8001fc68:	65c2                	ld	a1,16(sp)
    8001fc6a:	8626                	mv	a2,s1
    8001fc6c:	8522                	mv	a0,s0
    8001fc6e:	b31eb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9913
    return JS_EXCEPTION;
    8001fc72:	4799                	li	a5,6
    8001fc74:	e882                	sd	zero,80(sp)
    8001fc76:	bf25                	j	8001fbae <JS_ToPrimitiveFree+0xd2>
quickjs-nuttx/quickjs.c:9907
            JS_FreeValue(ctx, method);
    8001fc78:	85ca                	mv	a1,s2
    8001fc7a:	bfd9                	j	8001fc50 <JS_ToPrimitiveFree+0x174>

000000008001fc7c <JS_ToPrimitive>:
JS_ToPrimitive():
quickjs-nuttx/quickjs.c:9917
{
    8001fc7c:	715d                	addi	sp,sp,-80
    8001fc7e:	e0a2                	sd	s0,64(sp)
    8001fc80:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:9918
    return JS_ToPrimitiveFree(ctx, JS_DupValue(ctx, val), hint);
    8001fc82:	852e                	mv	a0,a1
    8001fc84:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:9917
{
    8001fc86:	e486                	sd	ra,72(sp)
    8001fc88:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:9918
    return JS_ToPrimitiveFree(ctx, JS_DupValue(ctx, val), hint);
    8001fc8a:	f90ea0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001fc8e:	862e                	mv	a2,a1
    8001fc90:	85aa                	mv	a1,a0
    8001fc92:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:9919
}
    8001fc94:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:9918
    return JS_ToPrimitiveFree(ctx, JS_DupValue(ctx, val), hint);
    8001fc96:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:9919
}
    8001fc98:	60a6                	ld	ra,72(sp)
    8001fc9a:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:9918
    return JS_ToPrimitiveFree(ctx, JS_DupValue(ctx, val), hint);
    8001fc9c:	e41ff06f          	j	8001fadc <JS_ToPrimitiveFree>

000000008001fca0 <string_buffer_end>:
string_buffer_end():
quickjs-nuttx/quickjs.c:3849
{
    8001fca0:	1101                	addi	sp,sp,-32
    8001fca2:	ec06                	sd	ra,24(sp)
    8001fca4:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:3852
    if (s->error_status)
    8001fca6:	4d5c                	lw	a5,28(a0)
    8001fca8:	cb91                	beqz	a5,8001fcbc <string_buffer_end+0x1c>
quickjs-nuttx/quickjs.c:3853
        return JS_EXCEPTION;
    8001fcaa:	e002                	sd	zero,0(sp)
    8001fcac:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3878
}
    8001fcae:	60e2                	ld	ra,24(sp)
    8001fcb0:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:3877
    return JS_MKPTR(JS_TAG_STRING, str);
    8001fcb2:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:3878
}
    8001fcb4:	6502                	ld	a0,0(sp)
    8001fcb6:	65a2                	ld	a1,8(sp)
    8001fcb8:	6105                	addi	sp,sp,32
    8001fcba:	8082                	ret
quickjs-nuttx/quickjs.c:3854
    if (s->len == 0) {
    8001fcbc:	4910                	lw	a2,16(a0)
quickjs-nuttx/quickjs.c:3851
    str = s->str;
    8001fcbe:	650c                	ld	a1,8(a0)
quickjs-nuttx/quickjs.c:3854
    if (s->len == 0) {
    8001fcc0:	842a                	mv	s0,a0
    8001fcc2:	ee11                	bnez	a2,8001fcde <string_buffer_end+0x3e>
quickjs-nuttx/quickjs.c:3855
        js_free(s->ctx, str);
    8001fcc4:	6108                	ld	a0,0(a0)
    8001fcc6:	b30eb0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:3856
        s->str = NULL;
    8001fcca:	00043423          	sd	zero,8(s0)
quickjs-nuttx/quickjs.c:3857
        return JS_AtomToString(s->ctx, JS_ATOM_empty_string);
    8001fcce:	6008                	ld	a0,0(s0)
quickjs-nuttx/quickjs.c:3878
}
    8001fcd0:	6442                	ld	s0,16(sp)
    8001fcd2:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:3857
        return JS_AtomToString(s->ctx, JS_ATOM_empty_string);
    8001fcd4:	02f00593          	li	a1,47
quickjs-nuttx/quickjs.c:3878
}
    8001fcd8:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:3857
        return JS_AtomToString(s->ctx, JS_ATOM_empty_string);
    8001fcda:	df9ff06f          	j	8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:3859
    if (s->len < s->size) {
    8001fcde:	495c                	lw	a5,20(a0)
    8001fce0:	00f65e63          	bge	a2,a5,8001fcfc <string_buffer_end+0x5c>
quickjs-nuttx/quickjs.c:3864
                            (s->len << s->is_wide_char) + 1 - s->is_wide_char);
    8001fce4:	4d1c                	lw	a5,24(a0)
    8001fce6:	00f6163b          	sllw	a2,a2,a5
    8001fcea:	8e1d                	sub	a2,a2,a5
quickjs-nuttx/quickjs.c:3863
        str = js_realloc_rt(s->ctx->rt, str, sizeof(JSString) +
    8001fcec:	611c                	ld	a5,0(a0)
    8001fcee:	0645                	addi	a2,a2,17
    8001fcf0:	6f88                	ld	a0,24(a5)
    8001fcf2:	e69e70ef          	jal	ra,80007b5a <js_realloc_rt>
    8001fcf6:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:3865
        if (str == NULL)
    8001fcf8:	e111                	bnez	a0,8001fcfc <string_buffer_end+0x5c>
quickjs-nuttx/quickjs.c:3866
            str = s->str;
    8001fcfa:	640c                	ld	a1,8(s0)
quickjs-nuttx/quickjs.c:3869
    if (!s->is_wide_char)
    8001fcfc:	4c1c                	lw	a5,24(s0)
    8001fcfe:	e789                	bnez	a5,8001fd08 <string_buffer_end+0x68>
quickjs-nuttx/quickjs.c:3870
        str->u.str8[s->len] = 0;
    8001fd00:	481c                	lw	a5,16(s0)
    8001fd02:	97ae                	add	a5,a5,a1
    8001fd04:	00078823          	sb	zero,16(a5)
quickjs-nuttx/quickjs.c:3874
    str->is_wide_char = s->is_wide_char;
    8001fd08:	4c1c                	lw	a5,24(s0)
    8001fd0a:	80000737          	lui	a4,0x80000
    8001fd0e:	fff74713          	not	a4,a4
    8001fd12:	01f7969b          	slliw	a3,a5,0x1f
    8001fd16:	41dc                	lw	a5,4(a1)
    8001fd18:	8ff9                	and	a5,a5,a4
    8001fd1a:	8fd5                	or	a5,a5,a3
    8001fd1c:	c1dc                	sw	a5,4(a1)
quickjs-nuttx/quickjs.c:3875
    str->len = s->len;
    8001fd1e:	4814                	lw	a3,16(s0)
quickjs-nuttx/quickjs.c:3877
    return JS_MKPTR(JS_TAG_STRING, str);
    8001fd20:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:3875
    str->len = s->len;
    8001fd22:	8f75                	and	a4,a4,a3
    8001fd24:	800006b7          	lui	a3,0x80000
    8001fd28:	8ff5                	and	a5,a5,a3
    8001fd2a:	8fd9                	or	a5,a5,a4
    8001fd2c:	c1dc                	sw	a5,4(a1)
quickjs-nuttx/quickjs.c:3876
    s->str = NULL;
    8001fd2e:	00043423          	sd	zero,8(s0)
quickjs-nuttx/quickjs.c:3877
    return JS_MKPTR(JS_TAG_STRING, str);
    8001fd32:	57e5                	li	a5,-7
    8001fd34:	bfad                	j	8001fcae <string_buffer_end+0xe>

000000008001fd36 <JS_NewAtomString>:
JS_NewAtomString():
quickjs-nuttx/quickjs.c:3978
{
    8001fd36:	7139                	addi	sp,sp,-64
    8001fd38:	f822                	sd	s0,48(sp)
    8001fd3a:	f426                	sd	s1,40(sp)
    8001fd3c:	fc06                	sd	ra,56(sp)
    8001fd3e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3979
    JSAtom atom = JS_NewAtom(ctx, str);
    8001fd40:	a7aff0ef          	jal	ra,8001efba <JS_NewAtom>
    8001fd44:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:3980
    if (atom == JS_ATOM_NULL)
    8001fd48:	e819                	bnez	s0,8001fd5e <JS_NewAtomString+0x28>
quickjs-nuttx/quickjs.c:3981
        return JS_EXCEPTION;
    8001fd4a:	e802                	sd	zero,16(sp)
    8001fd4c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3985
}
    8001fd4e:	70e2                	ld	ra,56(sp)
    8001fd50:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:3984
    return val;
    8001fd52:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:3985
}
    8001fd54:	6542                	ld	a0,16(sp)
    8001fd56:	65e2                	ld	a1,24(sp)
    8001fd58:	74a2                	ld	s1,40(sp)
    8001fd5a:	6121                	addi	sp,sp,64
    8001fd5c:	8082                	ret
quickjs-nuttx/quickjs.c:3982
    JSValue val = JS_AtomToString(ctx, atom);
    8001fd5e:	85a2                	mv	a1,s0
    8001fd60:	8526                	mv	a0,s1
    8001fd62:	d71ff0ef          	jal	ra,8001fad2 <JS_AtomToString>
    8001fd66:	e02a                	sd	a0,0(sp)
    8001fd68:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:3983
    JS_FreeAtom(ctx, atom);
    8001fd6a:	8526                	mv	a0,s1
    8001fd6c:	85a2                	mv	a1,s0
    8001fd6e:	bdaeb0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:3984
    return val;
    8001fd72:	6782                	ld	a5,0(sp)
    8001fd74:	e83e                	sd	a5,16(sp)
    8001fd76:	67a2                	ld	a5,8(sp)
    8001fd78:	bfd9                	j	8001fd4e <JS_NewAtomString+0x18>

000000008001fd7a <exported_names_cmp>:
exported_names_cmp():
quickjs-nuttx/quickjs.c:27773
{
    8001fd7a:	7139                	addi	sp,sp,-64
    8001fd7c:	fc06                	sd	ra,56(sp)
    8001fd7e:	f822                	sd	s0,48(sp)
    8001fd80:	f426                	sd	s1,40(sp)
    8001fd82:	f04a                	sd	s2,32(sp)
    8001fd84:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:27781
    str1 = JS_AtomToString(ctx, me1->export_name);
    8001fd86:	410c                	lw	a1,0(a0)
    8001fd88:	8532                	mv	a0,a2
quickjs-nuttx/quickjs.c:27773
{
    8001fd8a:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:27781
    str1 = JS_AtomToString(ctx, me1->export_name);
    8001fd8c:	d47ff0ef          	jal	ra,8001fad2 <JS_AtomToString>
    8001fd90:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:27782
    str2 = JS_AtomToString(ctx, me2->export_name);
    8001fd92:	408c                	lw	a1,0(s1)
quickjs-nuttx/quickjs.c:27781
    str1 = JS_AtomToString(ctx, me1->export_name);
    8001fd94:	e02a                	sd	a0,0(sp)
    8001fd96:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:27782
    str2 = JS_AtomToString(ctx, me2->export_name);
    8001fd98:	8522                	mv	a0,s0
    8001fd9a:	d39ff0ef          	jal	ra,8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:27783
    if (JS_IsException(str1) || JS_IsException(str2)) {
    8001fd9e:	4722                	lw	a4,8(sp)
quickjs-nuttx/quickjs.c:27782
    str2 = JS_AtomToString(ctx, me2->export_name);
    8001fda0:	e82a                	sd	a0,16(sp)
    8001fda2:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:27783
    if (JS_IsException(str1) || JS_IsException(str2)) {
    8001fda4:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:27785
        ret = 0;
    8001fda6:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:27783
    if (JS_IsException(str1) || JS_IsException(str2)) {
    8001fda8:	00f70b63          	beq	a4,a5,8001fdbe <exported_names_cmp+0x44>
quickjs-nuttx/quickjs.c:27783 (discriminator 1)
    8001fdac:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:27785 (discriminator 1)
        ret = 0;
    8001fdae:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:27783 (discriminator 1)
    if (JS_IsException(str1) || JS_IsException(str2)) {
    8001fdb0:	00f58763          	beq	a1,a5,8001fdbe <exported_names_cmp+0x44>
quickjs-nuttx/quickjs.c:27787
        ret = js_string_compare(ctx, JS_VALUE_GET_STRING(str1),
    8001fdb4:	85aa                	mv	a1,a0
    8001fdb6:	854a                	mv	a0,s2
    8001fdb8:	b8dea0ef          	jal	ra,8000a944 <js_string_compare.constprop.0>
    8001fdbc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:27790
    JS_FreeValue(ctx, str1);
    8001fdbe:	6582                	ld	a1,0(sp)
    8001fdc0:	6622                	ld	a2,8(sp)
    8001fdc2:	8522                	mv	a0,s0
    8001fdc4:	9dbeb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27791
    JS_FreeValue(ctx, str2);
    8001fdc8:	65c2                	ld	a1,16(sp)
    8001fdca:	6662                	ld	a2,24(sp)
    8001fdcc:	8522                	mv	a0,s0
    8001fdce:	9d1eb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27793
}
    8001fdd2:	70e2                	ld	ra,56(sp)
    8001fdd4:	7442                	ld	s0,48(sp)
    8001fdd6:	7902                	ld	s2,32(sp)
    8001fdd8:	8526                	mv	a0,s1
    8001fdda:	74a2                	ld	s1,40(sp)
    8001fddc:	6121                	addi	sp,sp,64
    8001fdde:	8082                	ret

000000008001fde0 <js_symbol_get_description>:
js_symbol_get_description():
quickjs-nuttx/quickjs.c:46715
{
    8001fde0:	711d                	addi	sp,sp,-96
    8001fde2:	e8a2                	sd	s0,80(sp)
    8001fde4:	ec86                	sd	ra,88(sp)
    8001fde6:	e4a6                	sd	s1,72(sp)
    8001fde8:	e0ca                	sd	s2,64(sp)
    8001fdea:	842a                	mv	s0,a0
    8001fdec:	e02e                	sd	a1,0(sp)
    8001fdee:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:46719
    val = js_thisSymbolValue(ctx, this_val);
    8001fdf0:	ceaf90ef          	jal	ra,800192da <js_thisSymbolValue>
    8001fdf4:	e82a                	sd	a0,16(sp)
    8001fdf6:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:46720
    if (JS_IsException(val))
    8001fdf8:	0005871b          	sext.w	a4,a1
    8001fdfc:	4799                	li	a5,6
    8001fdfe:	00f71c63          	bne	a4,a5,8001fe16 <js_symbol_get_description+0x36>
quickjs-nuttx/quickjs.c:46721
        return val;
    8001fe02:	f82a                	sd	a0,48(sp)
    8001fe04:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:46730
}
    8001fe06:	60e6                	ld	ra,88(sp)
    8001fe08:	6446                	ld	s0,80(sp)
    8001fe0a:	7542                	ld	a0,48(sp)
    8001fe0c:	75e2                	ld	a1,56(sp)
    8001fe0e:	64a6                	ld	s1,72(sp)
    8001fe10:	6906                	ld	s2,64(sp)
    8001fe12:	6125                	addi	sp,sp,96
    8001fe14:	8082                	ret
quickjs-nuttx/quickjs.c:46723
    if (p->len == 0 && p->is_wide_char != 0) {
    8001fe16:	4158                	lw	a4,4(a0)
    8001fe18:	800007b7          	lui	a5,0x80000
    8001fe1c:	02f70563          	beq	a4,a5,8001fe46 <js_symbol_get_description+0x66>
quickjs-nuttx/quickjs.c:46726
        ret = JS_AtomToString(ctx, js_get_atom_index(ctx->rt, p));
    8001fe20:	85aa                	mv	a1,a0
    8001fe22:	6c08                	ld	a0,24(s0)
    8001fe24:	86be90ef          	jal	ra,8000968e <js_get_atom_index>
    8001fe28:	0005059b          	sext.w	a1,a0
    8001fe2c:	8522                	mv	a0,s0
    8001fe2e:	ca5ff0ef          	jal	ra,8001fad2 <JS_AtomToString>
    8001fe32:	892a                	mv	s2,a0
    8001fe34:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:46728
    JS_FreeValue(ctx, val);
    8001fe36:	65c2                	ld	a1,16(sp)
    8001fe38:	6662                	ld	a2,24(sp)
    8001fe3a:	8522                	mv	a0,s0
    8001fe3c:	963eb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46729
    return ret;
    8001fe40:	f84a                	sd	s2,48(sp)
    8001fe42:	fc26                	sd	s1,56(sp)
    8001fe44:	b7c9                	j	8001fe06 <js_symbol_get_description+0x26>
quickjs-nuttx/quickjs.c:46724
        ret = JS_UNDEFINED;
    8001fe46:	448d                	li	s1,3
    8001fe48:	4901                	li	s2,0
    8001fe4a:	b7f5                	j	8001fe36 <js_symbol_get_description+0x56>

000000008001fe4c <js_boolean_toString>:
js_boolean_toString():
quickjs-nuttx/quickjs.c:41107
{
    8001fe4c:	7139                	addi	sp,sp,-64
    8001fe4e:	f822                	sd	s0,48(sp)
    8001fe50:	fc06                	sd	ra,56(sp)
    8001fe52:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:41108
    JSValue val = js_thisBooleanValue(ctx, this_val);
    8001fe54:	d22f90ef          	jal	ra,80019376 <js_thisBooleanValue>
quickjs-nuttx/quickjs.c:41109
    if (JS_IsException(val))
    8001fe58:	0005871b          	sext.w	a4,a1
    8001fe5c:	4699                	li	a3,6
    8001fe5e:	00d70d63          	beq	a4,a3,8001fe78 <js_boolean_toString+0x2c>
    8001fe62:	0005079b          	sext.w	a5,a0
quickjs-nuttx/quickjs.c:41111
    return JS_AtomToString(ctx, JS_VALUE_GET_BOOL(val) ?
    8001fe66:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:41113
}
    8001fe68:	7442                	ld	s0,48(sp)
    8001fe6a:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:41111
    return JS_AtomToString(ctx, JS_VALUE_GET_BOOL(val) ?
    8001fe6c:	00f035b3          	snez	a1,a5
    8001fe70:	0589                	addi	a1,a1,2
quickjs-nuttx/quickjs.c:41113
}
    8001fe72:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:41111
    return JS_AtomToString(ctx, JS_VALUE_GET_BOOL(val) ?
    8001fe74:	c5fff06f          	j	8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:41113
}
    8001fe78:	70e2                	ld	ra,56(sp)
    8001fe7a:	7442                	ld	s0,48(sp)
    8001fe7c:	6121                	addi	sp,sp,64
    8001fe7e:	8082                	ret

000000008001fe80 <js_function_proto_fileName>:
js_function_proto_fileName():
quickjs-nuttx/quickjs.c:14678
{
    8001fe80:	7179                	addi	sp,sp,-48
    8001fe82:	f022                	sd	s0,32(sp)
    8001fe84:	e02e                	sd	a1,0(sp)
    8001fe86:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:14679
    JSFunctionBytecode *b = JS_GetFunctionBytecode(this_val);
    8001fe88:	852e                	mv	a0,a1
    8001fe8a:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:14678
{
    8001fe8c:	f406                	sd	ra,40(sp)
    8001fe8e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:14679
    JSFunctionBytecode *b = JS_GetFunctionBytecode(this_val);
    8001fe90:	da4e90ef          	jal	ra,80009434 <JS_GetFunctionBytecode>
quickjs-nuttx/quickjs.c:14680
    if (b && b->has_debug) {
    8001fe94:	cd01                	beqz	a0,8001feac <js_function_proto_fileName+0x2c>
quickjs-nuttx/quickjs.c:14680 (discriminator 1)
    8001fe96:	01a54783          	lbu	a5,26(a0)
    8001fe9a:	8b91                	andi	a5,a5,4
    8001fe9c:	cb81                	beqz	a5,8001feac <js_function_proto_fileName+0x2c>
quickjs-nuttx/quickjs.c:14681
        return JS_AtomToString(ctx, b->debug.filename);
    8001fe9e:	512c                	lw	a1,96(a0)
    8001fea0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:14684
}
    8001fea2:	7402                	ld	s0,32(sp)
    8001fea4:	70a2                	ld	ra,40(sp)
    8001fea6:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:14681
        return JS_AtomToString(ctx, b->debug.filename);
    8001fea8:	c2bff06f          	j	8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:14684
}
    8001feac:	70a2                	ld	ra,40(sp)
    8001feae:	7402                	ld	s0,32(sp)
    8001feb0:	4501                	li	a0,0
    8001feb2:	458d                	li	a1,3
    8001feb4:	6145                	addi	sp,sp,48
    8001feb6:	8082                	ret

000000008001feb8 <js_object___getClass>:
js_object___getClass():
quickjs-nuttx/quickjs.c:37906
{
    8001feb8:	7139                	addi	sp,sp,-64
    8001feba:	f426                	sd	s1,40(sp)
    8001febc:	fc06                	sd	ra,56(sp)
    8001febe:	f822                	sd	s0,48(sp)
    8001fec0:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:37912
    tag = JS_VALUE_GET_NORM_TAG(argv[0]);
    8001fec2:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37906
{
    8001fec4:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:37913
    if (tag == JS_TAG_OBJECT) {
    8001fec6:	57fd                	li	a5,-1
    8001fec8:	0006069b          	sext.w	a3,a2
quickjs-nuttx/quickjs.c:37906
{
    8001fecc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:37920
        atom = JS_ATOM_empty_string;
    8001fece:	02f00593          	li	a1,47
quickjs-nuttx/quickjs.c:37913
    if (tag == JS_TAG_OBJECT) {
    8001fed2:	02f69563          	bne	a3,a5,8001fefc <js_object___getClass+0x44>
quickjs-nuttx/quickjs.c:37915
        class_id = p->class_id;
    8001fed6:	630c                	ld	a1,0(a4)
quickjs-nuttx/quickjs.c:37916
        if (class_id == JS_CLASS_PROXY && JS_IsFunction(ctx, argv[0]))
    8001fed8:	03000793          	li	a5,48
quickjs-nuttx/quickjs.c:37915
        class_id = p->class_id;
    8001fedc:	0065d403          	lhu	s0,6(a1)
quickjs-nuttx/quickjs.c:37916
        if (class_id == JS_CLASS_PROXY && JS_IsFunction(ctx, argv[0]))
    8001fee0:	00f41663          	bne	s0,a5,8001feec <js_object___getClass+0x34>
quickjs-nuttx/quickjs.c:37916 (discriminator 1)
    8001fee4:	dbeee0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8001fee8:	c111                	beqz	a0,8001feec <js_object___getClass+0x34>
quickjs-nuttx/quickjs.c:37917
            class_id = JS_CLASS_BYTECODE_FUNCTION;
    8001feea:	4435                	li	s0,13
quickjs-nuttx/quickjs.c:37918
        atom = ctx->rt->class_array[class_id].class_name;
    8001feec:	02800713          	li	a4,40
    8001fef0:	02e40433          	mul	s0,s0,a4
    8001fef4:	6c9c                	ld	a5,24(s1)
    8001fef6:	7bbc                	ld	a5,112(a5)
    8001fef8:	943e                	add	s0,s0,a5
    8001fefa:	404c                	lw	a1,4(s0)
quickjs-nuttx/quickjs.c:37923
}
    8001fefc:	7442                	ld	s0,48(sp)
    8001fefe:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:37922
    return JS_AtomToString(ctx, atom);
    8001ff00:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:37923
}
    8001ff02:	74a2                	ld	s1,40(sp)
    8001ff04:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:37922
    return JS_AtomToString(ctx, atom);
    8001ff06:	bcdff06f          	j	8001fad2 <JS_AtomToString>

000000008001ff0a <js_typed_array_get_toStringTag>:
js_typed_array_get_toStringTag():
quickjs-nuttx/quickjs.c:53057
{
    8001ff0a:	1101                	addi	sp,sp,-32
    8001ff0c:	e432                	sd	a2,8(sp)
    8001ff0e:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:53059
    if (JS_VALUE_GET_TAG(this_val) != JS_TAG_OBJECT)
    8001ff10:	2601                	sext.w	a2,a2
    8001ff12:	57fd                	li	a5,-1
    8001ff14:	02f61663          	bne	a2,a5,8001ff40 <js_typed_array_get_toStringTag+0x36>
quickjs-nuttx/quickjs.c:53062
    if (!(p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    8001ff18:	0065d783          	lhu	a5,6(a1)
    8001ff1c:	4629                	li	a2,10
    8001ff1e:	feb7869b          	addiw	a3,a5,-21
    8001ff22:	16c2                	slli	a3,a3,0x30
    8001ff24:	92c1                	srli	a3,a3,0x30
    8001ff26:	00d66d63          	bltu	a2,a3,8001ff40 <js_typed_array_get_toStringTag+0x36>
quickjs-nuttx/quickjs.c:53065
    return JS_AtomToString(ctx, ctx->rt->class_array[p->class_id].class_name);
    8001ff2a:	02800693          	li	a3,40
    8001ff2e:	02d787b3          	mul	a5,a5,a3
    8001ff32:	6d18                	ld	a4,24(a0)
    8001ff34:	7b38                	ld	a4,112(a4)
    8001ff36:	97ba                	add	a5,a5,a4
    8001ff38:	43cc                	lw	a1,4(a5)
quickjs-nuttx/quickjs.c:53066
}
    8001ff3a:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:53065
    return JS_AtomToString(ctx, ctx->rt->class_array[p->class_id].class_name);
    8001ff3c:	b97ff06f          	j	8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:53066 (discriminator 1)
}
    8001ff40:	4501                	li	a0,0
    8001ff42:	458d                	li	a1,3
    8001ff44:	6105                	addi	sp,sp,32
    8001ff46:	8082                	ret

000000008001ff48 <js_new_string8>:
js_new_string8():
quickjs-nuttx/quickjs.c:3479
    if (len <= 0) {
    8001ff48:	00c04663          	bgtz	a2,8001ff54 <js_new_string8+0xc>
quickjs-nuttx/quickjs.c:3480
        return JS_AtomToString(ctx, JS_ATOM_empty_string);
    8001ff4c:	02f00593          	li	a1,47
    8001ff50:	b83ff06f          	j	8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:3476
{
    8001ff54:	7139                	addi	sp,sp,-64
    8001ff56:	f822                	sd	s0,48(sp)
    8001ff58:	8432                	mv	s0,a2
    8001ff5a:	f04a                	sd	s2,32(sp)
quickjs-nuttx/quickjs.c:3482
    str = js_alloc_string(ctx, len, 0);
    8001ff5c:	4601                	li	a2,0
    8001ff5e:	892e                	mv	s2,a1
    8001ff60:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:3476
{
    8001ff62:	f426                	sd	s1,40(sp)
    8001ff64:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:3482
    str = js_alloc_string(ctx, len, 0);
    8001ff66:	fb9fd0ef          	jal	ra,8001df1e <js_alloc_string>
    8001ff6a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3483
    if (!str)
    8001ff6c:	ed01                	bnez	a0,8001ff84 <js_new_string8+0x3c>
quickjs-nuttx/quickjs.c:3484
        return JS_EXCEPTION;
    8001ff6e:	e002                	sd	zero,0(sp)
    8001ff70:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3488
}
    8001ff72:	70e2                	ld	ra,56(sp)
    8001ff74:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:3487
    return JS_MKPTR(JS_TAG_STRING, str);
    8001ff76:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:3488
}
    8001ff78:	6502                	ld	a0,0(sp)
    8001ff7a:	65a2                	ld	a1,8(sp)
    8001ff7c:	74a2                	ld	s1,40(sp)
    8001ff7e:	7902                	ld	s2,32(sp)
    8001ff80:	6121                	addi	sp,sp,64
    8001ff82:	8082                	ret
quickjs-nuttx/quickjs.c:3485
    memcpy(str->u.str8, buf, len);
    8001ff84:	8622                	mv	a2,s0
    8001ff86:	85ca                	mv	a1,s2
    8001ff88:	0541                	addi	a0,a0,16
    8001ff8a:	623430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:3486
    str->u.str8[len] = '\0';
    8001ff8e:	9426                	add	s0,s0,s1
    8001ff90:	00040823          	sb	zero,16(s0)
quickjs-nuttx/quickjs.c:3487
    return JS_MKPTR(JS_TAG_STRING, str);
    8001ff94:	e026                	sd	s1,0(sp)
    8001ff96:	57e5                	li	a5,-7
    8001ff98:	bfe9                	j	8001ff72 <js_new_string8+0x2a>

000000008001ff9a <js_new_string_char>:
js_new_string_char():
quickjs-nuttx/quickjs.c:3501
{
    8001ff9a:	7179                	addi	sp,sp,-48
    8001ff9c:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:3502
    if (c < 0x100) {
    8001ff9e:	0ff00793          	li	a5,255
    8001ffa2:	00b7ef63          	bltu	a5,a1,8001ffc0 <js_new_string_char+0x26>
quickjs-nuttx/quickjs.c:3503
        uint8_t ch8 = c;
    8001ffa6:	00b10023          	sb	a1,0(sp)
quickjs-nuttx/quickjs.c:3504
        return js_new_string8(ctx, &ch8, 1);
    8001ffaa:	4605                	li	a2,1
    8001ffac:	858a                	mv	a1,sp
    8001ffae:	f9bff0ef          	jal	ra,8001ff48 <js_new_string8>
quickjs-nuttx/quickjs.c:3509
}
    8001ffb2:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:3507
        return js_new_string16(ctx, &ch16, 1);
    8001ffb4:	e02a                	sd	a0,0(sp)
    8001ffb6:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:3509
}
    8001ffb8:	6502                	ld	a0,0(sp)
    8001ffba:	65a2                	ld	a1,8(sp)
    8001ffbc:	6145                	addi	sp,sp,48
    8001ffbe:	8082                	ret
quickjs-nuttx/quickjs.c:3506
        uint16_t ch16 = c;
    8001ffc0:	00b11823          	sh	a1,16(sp)
quickjs-nuttx/quickjs.c:3507
        return js_new_string16(ctx, &ch16, 1);
    8001ffc4:	4605                	li	a2,1
    8001ffc6:	080c                	addi	a1,sp,16
    8001ffc8:	fbbfd0ef          	jal	ra,8001df82 <js_new_string16>
    8001ffcc:	b7dd                	j	8001ffb2 <js_new_string_char+0x18>

000000008001ffce <js_string_get_own_property>:
js_string_get_own_property():
quickjs-nuttx/quickjs.c:41131
{
    8001ffce:	1101                	addi	sp,sp,-32
    8001ffd0:	ec06                	sd	ra,24(sp)
    8001ffd2:	e822                	sd	s0,16(sp)
    8001ffd4:	e032                	sd	a2,0(sp)
    8001ffd6:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:41137
    if (__JS_AtomIsTaggedInt(prop)) {
    8001ffd8:	06075663          	bgez	a4,80020044 <js_string_get_own_property+0x76>
quickjs-nuttx/quickjs.c:41139
        if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING) {
    8001ffdc:	5e14                	lw	a3,56(a2)
    8001ffde:	57e5                	li	a5,-7
    8001ffe0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:41157
    return FALSE;
    8001ffe2:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:41139
        if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING) {
    8001ffe4:	04f69763          	bne	a3,a5,80020032 <js_string_get_own_property+0x64>
quickjs-nuttx/quickjs.c:41140
            p1 = JS_VALUE_GET_STRING(p->u.object_data);
    8001ffe8:	7a14                	ld	a3,48(a2)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    8001ffea:	800007b7          	lui	a5,0x80000
    8001ffee:	fff7c793          	not	a5,a5
js_string_get_own_property():
quickjs-nuttx/quickjs.c:41142
            if (idx < p1->len) {
    8001fff2:	42d0                	lw	a2,4(a3)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    8001fff4:	8f7d                	and	a4,a4,a5
js_string_get_own_property():
quickjs-nuttx/quickjs.c:41142
            if (idx < p1->len) {
    8001fff6:	8ff1                	and	a5,a5,a2
    8001fff8:	2781                	sext.w	a5,a5
    8001fffa:	02f77c63          	bgeu	a4,a5,80020032 <js_string_get_own_property+0x64>
quickjs-nuttx/quickjs.c:41153
                return TRUE;
    8001fffe:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:41143
                if (desc) {
