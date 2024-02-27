    80011000:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16705
                *sp++ = ret_val;
    80011002:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:16702
                JS_FreeValue(ctx, sp[-2]);
    80011004:	f9afa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16703
                JS_FreeValue(ctx, sp[-1]);
    80011008:	000ab583          	ld	a1,0(s5)
    8001100c:	008ab603          	ld	a2,8(s5)
    80011010:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16707
            BREAK;
    80011012:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16703
                JS_FreeValue(ctx, sp[-1]);
    80011014:	f8afa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16705
                *sp++ = ret_val;
    80011018:	f8040793          	addi	a5,s0,-128
    8001101c:	97ca                	add	a5,a5,s2
    8001101e:	7337a023          	sw	s3,1824(a5)
    80011022:	7377b423          	sd	s7,1832(a5)
    80011026:	7207b783          	ld	a5,1824(a5)
    8001102a:	ff7cbc23          	sd	s7,-8(s9)
    8001102e:	fefcb823          	sd	a5,-16(s9)
quickjs-nuttx/quickjs.c:16707
            BREAK;
    80011032:	fffd4b03          	lbu	s6,-1(s10)
    80011036:	0005e797          	auipc	a5,0x5e
    8001103a:	dfa78793          	addi	a5,a5,-518 # 8006ee30 <dispatch_table.4>
    8001103e:	003b1713          	slli	a4,s6,0x3
    80011042:	97ba                	add	a5,a5,a4
    80011044:	639c                	ld	a5,0(a5)
    80011046:	960fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16692
                        obj = JS_UNDEFINED;
    8001104a:	ec043823          	sd	zero,-304(s0)
    8001104e:	478d                	li	a5,3
    80011050:	bfa1                	j	80010fa8 <JS_CallInternal+0x203a>
quickjs-nuttx/quickjs.c:16696
                    ret_val = JS_Call(ctx, sp[-2], JS_UNDEFINED, len,
    80011052:	478d                	li	a5,3
    80011054:	eef43c23          	sd	a5,-264(s0)
    80011058:	ee043823          	sd	zero,-272(s0)
    8001105c:	e9042783          	lw	a5,-368(s0)
    80011060:	fe0cb583          	ld	a1,-32(s9)
    80011064:	008a3603          	ld	a2,8(s4)
    80011068:	8862                	mv	a6,s8
    8001106a:	4681                	li	a3,0
    8001106c:	470d                	li	a4,3
    8001106e:	8526                	mv	a0,s1
    80011070:	595310ef          	jal	ra,80042e04 <JS_Call>
    80011074:	bfa9                	j	80010fce <JS_CallInternal+0x2060>
quickjs-nuttx/quickjs.c:16687 (discriminator 1)
                    goto exception;
    80011076:	8d5a                	mv	s10,s6
    80011078:	f86fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16711
                sp[-2] = js_regexp_constructor_internal(ctx, JS_UNDEFINED,
    8001107c:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:16712
                                                        sp[-2], sp[-1]);
    8001107e:	fe0c8993          	addi	s3,s9,-32
quickjs-nuttx/quickjs.c:16711
                sp[-2] = js_regexp_constructor_internal(ctx, JS_UNDEFINED,
    80011082:	ee043823          	sd	zero,-272(s0)
    80011086:	eef43c23          	sd	a5,-264(s0)
    8001108a:	0089b703          	ld	a4,8(s3)
    8001108e:	ff0cb783          	ld	a5,-16(s9)
    80011092:	0009b683          	ld	a3,0(s3)
    80011096:	ff8cb803          	ld	a6,-8(s9)
    8001109a:	4581                	li	a1,0
    8001109c:	460d                	li	a2,3
    8001109e:	8526                	mv	a0,s1
    800110a0:	5291e0ef          	jal	ra,8002fdc8 <js_regexp_constructor_internal>
    800110a4:	00a9b023          	sd	a0,0(s3)
    800110a8:	00b9b423          	sd	a1,8(s3)
quickjs-nuttx/quickjs.c:16715
            BREAK;
    800110ac:	000d4b03          	lbu	s6,0(s10)
    800110b0:	0005e797          	auipc	a5,0x5e
    800110b4:	d8078793          	addi	a5,a5,-640 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16712
                                                        sp[-2], sp[-1]);
    800110b8:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:16715
            BREAK;
    800110ba:	003b1713          	slli	a4,s6,0x3
    800110be:	97ba                	add	a5,a5,a4
    800110c0:	639c                	ld	a5,0(a5)
    800110c2:	0d05                	addi	s10,s10,1
    800110c4:	8e2fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16720
                proto = JS_GetPrototype(ctx, sp[-1]);
    800110c8:	ff0cb583          	ld	a1,-16(s9)
    800110cc:	ff8cb603          	ld	a2,-8(s9)
    800110d0:	8526                	mv	a0,s1
    800110d2:	201080ef          	jal	ra,80019ad2 <JS_GetPrototype>
    800110d6:	eeb43c23          	sd	a1,-264(s0)
    800110da:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:16721
                if (JS_IsException(proto))
    800110de:	2581                	sext.w	a1,a1
    800110e0:	4799                	li	a5,6
    800110e2:	00f59463          	bne	a1,a5,800110ea <JS_CallInternal+0x217c>
    800110e6:	f18fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16723
                JS_FreeValue(ctx, sp[-1]);
    800110ea:	ff0cb583          	ld	a1,-16(s9)
    800110ee:	ff8cb603          	ld	a2,-8(s9)
    800110f2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16726
            BREAK;
    800110f4:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16723
                JS_FreeValue(ctx, sp[-1]);
    800110f6:	ea8fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16724
                sp[-1] = proto;
    800110fa:	ef043783          	ld	a5,-272(s0)
    800110fe:	fefcb823          	sd	a5,-16(s9)
    80011102:	ef843783          	ld	a5,-264(s0)
    80011106:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16726
            BREAK;
    8001110a:	fffd4b03          	lbu	s6,-1(s10)
    8001110e:	0005e797          	auipc	a5,0x5e
    80011112:	d2278793          	addi	a5,a5,-734 # 8006ee30 <dispatch_table.4>
    80011116:	003b1713          	slli	a4,s6,0x3
    8001111a:	97ba                	add	a5,a5,a4
    8001111c:	639c                	ld	a5,0(a5)
    8001111e:	888fe06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16731
                val = js_dynamic_import(ctx, sp[-1]);
    80011122:	ff0cb783          	ld	a5,-16(s9)
    80011126:	ff0c8993          	addi	s3,s9,-16
js_dynamic_import():
quickjs-nuttx/quickjs.c:28515
    basename = JS_GetScriptOrModuleName(ctx, 0);
    8001112a:	4581                	li	a1,0
    8001112c:	def43023          	sd	a5,-544(s0)
    80011130:	0089b783          	ld	a5,8(s3)
    80011134:	8526                	mv	a0,s1
    80011136:	def43423          	sd	a5,-536(s0)
    8001113a:	d29fd0ef          	jal	ra,8000ee62 <JS_GetScriptOrModuleName>
    8001113e:	00050a9b          	sext.w	s5,a0
quickjs-nuttx/quickjs.c:28516
    if (basename == JS_ATOM_NULL)
    80011142:	080a9063          	bnez	s5,800111c2 <JS_CallInternal+0x2254>
quickjs-nuttx/quickjs.c:28517
        basename_val = JS_NULL;
    80011146:	e8043823          	sd	zero,-368(s0)
    8001114a:	4a09                	li	s4,2
quickjs-nuttx/quickjs.c:28520
    JS_FreeAtom(ctx, basename);
    8001114c:	85d6                	mv	a1,s5
    8001114e:	8526                	mv	a0,s1
    80011150:	ff9f90ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:28521
    if (JS_IsException(basename_val))
    80011154:	000a079b          	sext.w	a5,s4
    80011158:	4b19                	li	s6,6
    8001115a:	07679e63          	bne	a5,s6,800111d6 <JS_CallInternal+0x2268>
quickjs-nuttx/quickjs.c:28522
        return basename_val;
    8001115e:	e9043783          	ld	a5,-368(s0)
    80011162:	e9443c23          	sd	s4,-360(s0)
    80011166:	8ad2                	mv	s5,s4
    80011168:	c0f43823          	sd	a5,-1008(s0)
    8001116c:	c1043783          	ld	a5,-1008(s0)
    80011170:	c1543c23          	sd	s5,-1000(s0)
    80011174:	ef543c23          	sd	s5,-264(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80011178:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16732
                if (JS_IsException(val))
    8001117c:	000a859b          	sext.w	a1,s5
    80011180:	4799                	li	a5,6
    80011182:	00f59463          	bne	a1,a5,8001118a <JS_CallInternal+0x221c>
    80011186:	e78fe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16734
                JS_FreeValue(ctx, sp[-1]);
    8001118a:	0009b583          	ld	a1,0(s3)
    8001118e:	0089b603          	ld	a2,8(s3)
    80011192:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16737
            BREAK;
    80011194:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16734
                JS_FreeValue(ctx, sp[-1]);
    80011196:	e08fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16735
                sp[-1] = val;
    8001119a:	ef043783          	ld	a5,-272(s0)
    8001119e:	fefcb823          	sd	a5,-16(s9)
    800111a2:	ef843783          	ld	a5,-264(s0)
    800111a6:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16737
            BREAK;
    800111aa:	fffd4b03          	lbu	s6,-1(s10)
    800111ae:	0005e797          	auipc	a5,0x5e
    800111b2:	c8278793          	addi	a5,a5,-894 # 8006ee30 <dispatch_table.4>
    800111b6:	003b1713          	slli	a4,s6,0x3
    800111ba:	97ba                	add	a5,a5,a4
    800111bc:	639c                	ld	a5,0(a5)
    800111be:	fe9fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_dynamic_import():
quickjs-nuttx/quickjs.c:28519
        basename_val = JS_AtomToValue(ctx, basename);
    800111c2:	85d6                	mv	a1,s5
    800111c4:	8526                	mv	a0,s1
    800111c6:	1030e0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    800111ca:	8a2e                	mv	s4,a1
    800111cc:	e8a43823          	sd	a0,-368(s0)
    800111d0:	e8b43c23          	sd	a1,-360(s0)
    800111d4:	bfa5                	j	8001114c <JS_CallInternal+0x21de>
quickjs-nuttx/quickjs.c:28524
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    800111d6:	ed040593          	addi	a1,s0,-304
    800111da:	8526                	mv	a0,s1
    800111dc:	d87fd0ef          	jal	ra,8000ef62 <JS_NewPromiseCapability>
    800111e0:	e8a43023          	sd	a0,-384(s0)
    800111e4:	e8b43423          	sd	a1,-376(s0)
quickjs-nuttx/quickjs.c:28525
    if (JS_IsException(promise)) {
    800111e8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:28524
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    800111ec:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:28525
    if (JS_IsException(promise)) {
    800111ee:	01679f63          	bne	a5,s6,8001120c <JS_CallInternal+0x229e>
quickjs-nuttx/quickjs.c:28526
        JS_FreeValue(ctx, basename_val);
    800111f2:	e9043583          	ld	a1,-368(s0)
    800111f6:	e9443c23          	sd	s4,-360(s0)
    800111fa:	8652                	mv	a2,s4
quickjs-nuttx/quickjs.c:28541
    JS_FreeValue(ctx, resolving_funcs[1]);
    800111fc:	8526                	mv	a0,s1
    800111fe:	da0fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28542
    return promise;
    80011202:	e8043783          	ld	a5,-384(s0)
    80011206:	c0f43823          	sd	a5,-1008(s0)
    8001120a:	b78d                	j	8001116c <JS_CallInternal+0x21fe>
quickjs-nuttx/quickjs.c:28530
    args[0] = resolving_funcs[0];
    8001120c:	ed043783          	ld	a5,-304(s0)
quickjs-nuttx/quickjs.c:28537
    JS_EnqueueJob(ctx, js_dynamic_import_job, 4, args);
    80011210:	ef040693          	addi	a3,s0,-272
    80011214:	4611                	li	a2,4
quickjs-nuttx/quickjs.c:28530
    args[0] = resolving_funcs[0];
    80011216:	eef43823          	sd	a5,-272(s0)
    8001121a:	ed843783          	ld	a5,-296(s0)
quickjs-nuttx/quickjs.c:28537
    JS_EnqueueJob(ctx, js_dynamic_import_job, 4, args);
    8001121e:	00039597          	auipc	a1,0x39
    80011222:	d4058593          	addi	a1,a1,-704 # 80049f5e <js_dynamic_import_job>
    80011226:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:28530
    args[0] = resolving_funcs[0];
    80011228:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:28531
    args[1] = resolving_funcs[1];
    8001122c:	ee043783          	ld	a5,-288(s0)
quickjs-nuttx/quickjs.c:28532
    args[2] = basename_val;
    80011230:	e9443c23          	sd	s4,-360(s0)
    80011234:	f1443c23          	sd	s4,-232(s0)
quickjs-nuttx/quickjs.c:28531
    args[1] = resolving_funcs[1];
    80011238:	f0f43023          	sd	a5,-256(s0)
    8001123c:	ee843783          	ld	a5,-280(s0)
    80011240:	f0f43423          	sd	a5,-248(s0)
quickjs-nuttx/quickjs.c:28532
    args[2] = basename_val;
    80011244:	e9043783          	ld	a5,-368(s0)
    80011248:	f0f43823          	sd	a5,-240(s0)
quickjs-nuttx/quickjs.c:28533
    args[3] = specifier;
    8001124c:	de043783          	ld	a5,-544(s0)
    80011250:	f2f43023          	sd	a5,-224(s0)
    80011254:	de843783          	ld	a5,-536(s0)
    80011258:	f2f43423          	sd	a5,-216(s0)
quickjs-nuttx/quickjs.c:28537
    JS_EnqueueJob(ctx, js_dynamic_import_job, 4, args);
    8001125c:	654090ef          	jal	ra,8001a8b0 <JS_EnqueueJob>
quickjs-nuttx/quickjs.c:28539
    JS_FreeValue(ctx, basename_val);
    80011260:	e9043583          	ld	a1,-368(s0)
    80011264:	e9843603          	ld	a2,-360(s0)
    80011268:	8526                	mv	a0,s1
    8001126a:	d34fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28540
    JS_FreeValue(ctx, resolving_funcs[0]);
    8001126e:	ed043583          	ld	a1,-304(s0)
    80011272:	ed843603          	ld	a2,-296(s0)
    80011276:	8526                	mv	a0,s1
    80011278:	d26fa0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28541
    JS_FreeValue(ctx, resolving_funcs[1]);
    8001127c:	ee043583          	ld	a1,-288(s0)
    80011280:	ee843603          	ld	a2,-280(s0)
    80011284:	bfa5                	j	800111fc <JS_CallInternal+0x228e>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80011286:	001d4703          	lbu	a4,1(s10)
    8001128a:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16744
                pc += 4;
    8001128e:	004d0993          	addi	s3,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    80011292:	0722                	slli	a4,a4,0x8
    80011294:	8f5d                	or	a4,a4,a5
    80011296:	002d4783          	lbu	a5,2(s10)
    8001129a:	07c2                	slli	a5,a5,0x10
    8001129c:	8f5d                	or	a4,a4,a5
    8001129e:	003d4783          	lbu	a5,3(s10)
    800112a2:	07e2                	slli	a5,a5,0x18
    800112a4:	8fd9                	or	a5,a5,a4
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    800112a6:	1784b703          	ld	a4,376(s1)
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    800112aa:	0007869b          	sext.w	a3,a5
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    800112ae:	6f18                	ld	a4,24(a4)
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    800112b0:	5310                	lw	a2,32(a4)
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    800112b2:	8ff1                	and	a5,a5,a2
    800112b4:	0785                	addi	a5,a5,1
    800112b6:	5671                	li	a2,-4
    800112b8:	02c787b3          	mul	a5,a5,a2
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    800112bc:	04070613          	addi	a2,a4,64
find_own_property1():
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    800112c0:	97ba                	add	a5,a5,a4
    800112c2:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    800112c6:	04000737          	lui	a4,0x4000
    800112ca:	177d                	addi	a4,a4,-1
quickjs-nuttx/quickjs.c:5203
    while (h) {
    800112cc:	e395                	bnez	a5,800112f0 <JS_CallInternal+0x2382>
JS_CheckGlobalVar():
quickjs-nuttx/quickjs.c:9639
        ret = JS_HasProperty(ctx, ctx->global_obj, prop);
    800112ce:	1684b583          	ld	a1,360(s1)
    800112d2:	1704b603          	ld	a2,368(s1)
    800112d6:	8526                	mv	a0,s1
    800112d8:	21e270ef          	jal	ra,800384f6 <JS_HasProperty>
quickjs-nuttx/quickjs.c:9640
        if (ret < 0)
    800112dc:	0005079b          	sext.w	a5,a0
    800112e0:	00055363          	bgez	a0,800112e6 <JS_CallInternal+0x2378>
    800112e4:	57fd                	li	a5,-1
JS_CallInternal():
quickjs-nuttx/quickjs.c:16747
                if (ret < 0)
    800112e6:	02055163          	bgez	a0,80011308 <JS_CallInternal+0x239a>
quickjs-nuttx/quickjs.c:16744
                pc += 4;
    800112ea:	8d4e                	mv	s10,s3
    800112ec:	d12fe06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    800112f0:	078e                	slli	a5,a5,0x3
    800112f2:	17e1                	addi	a5,a5,-8
    800112f4:	97b2                	add	a5,a5,a2
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    800112f6:	43cc                	lw	a1,4(a5)
    800112f8:	00d58763          	beq	a1,a3,80011306 <JS_CallInternal+0x2398>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    800112fc:	439c                	lw	a5,0(a5)
    800112fe:	8ff9                	and	a5,a5,a4
    80011300:	1782                	slli	a5,a5,0x20
    80011302:	9381                	srli	a5,a5,0x20
    80011304:	b7e1                	j	800112cc <JS_CallInternal+0x235e>
JS_CheckGlobalVar():
quickjs-nuttx/quickjs.c:9637
        ret = TRUE;
    80011306:	4785                	li	a5,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80011308:	00f037b3          	snez	a5,a5
    8001130c:	86042223          	sw	zero,-1948(s0)
    80011310:	86f42023          	sw	a5,-1952(s0)
    80011314:	86043783          	ld	a5,-1952(s0)
    80011318:	4705                	li	a4,1
    8001131a:	eee43c23          	sd	a4,-264(s0)
    8001131e:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16749
                *sp++ = JS_NewBool(ctx, ret);
    80011322:	00fcb023          	sd	a5,0(s9)
    80011326:	ef843783          	ld	a5,-264(s0)
    8001132a:	86e43423          	sd	a4,-1944(s0)
    8001132e:	0cc1                	addi	s9,s9,16
    80011330:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16751
            BREAK;
    80011334:	004d4b03          	lbu	s6,4(s10)
    80011338:	0005e797          	auipc	a5,0x5e
    8001133c:	af878793          	addi	a5,a5,-1288 # 8006ee30 <dispatch_table.4>
    80011340:	0d15                	addi	s10,s10,5
    80011342:	003b1713          	slli	a4,s6,0x3
    80011346:	97ba                	add	a5,a5,a4
    80011348:	639c                	ld	a5,0(a5)
    8001134a:	e5dfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    8001134e:	001d4703          	lbu	a4,1(s10)
    80011352:	000d4783          	lbu	a5,0(s10)
JS_GetGlobalVar():
quickjs-nuttx/quickjs.c:9577
    p = JS_VALUE_GET_OBJ(ctx->global_var_obj);
    80011356:	1784b603          	ld	a2,376(s1)
get_u32():
quickjs-nuttx/cutils.h:170
    8001135a:	0722                	slli	a4,a4,0x8
    8001135c:	8f5d                	or	a4,a4,a5
    8001135e:	002d4783          	lbu	a5,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16759
                pc += 4;
    80011362:	004d0a13          	addi	s4,s10,4
quickjs-nuttx/quickjs.c:16761
                val = JS_GetGlobalVar(ctx, atom, opcode - OP_get_var_undef);
    80011366:	fc9b081b          	addiw	a6,s6,-55
get_u32():
quickjs-nuttx/cutils.h:170
    8001136a:	07c2                	slli	a5,a5,0x10
    8001136c:	8f5d                	or	a4,a4,a5
    8001136e:	003d4783          	lbu	a5,3(s10)
    80011372:	07e2                	slli	a5,a5,0x18
    80011374:	8fd9                	or	a5,a5,a4
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80011376:	6e18                	ld	a4,24(a2)
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80011378:	0007869b          	sext.w	a3,a5
    8001137c:	530c                	lw	a1,32(a4)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001137e:	04070513          	addi	a0,a4,64 # 4000040 <asinh-0x7bffffc0>
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80011382:	8fed                	and	a5,a5,a1
    80011384:	0785                	addi	a5,a5,1
    80011386:	55f1                	li	a1,-4
    80011388:	02b787b3          	mul	a5,a5,a1
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8001138c:	040005b7          	lui	a1,0x4000
    80011390:	15fd                	addi	a1,a1,-1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80011392:	97ba                	add	a5,a5,a4
    80011394:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80011398:	eb99                	bnez	a5,800113ae <JS_CallInternal+0x2440>
JS_GetGlobalVar():
quickjs-nuttx/quickjs.c:9585
    return JS_GetPropertyInternal(ctx, ctx->global_obj, prop,
    8001139a:	1684b703          	ld	a4,360(s1)
    8001139e:	1704b783          	ld	a5,368(s1)
    800113a2:	8526                	mv	a0,s1
    800113a4:	85ba                	mv	a1,a4
    800113a6:	863e                	mv	a2,a5
    800113a8:	702050ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800113ac:	a03d                	j	800113da <JS_CallInternal+0x246c>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    800113ae:	00379713          	slli	a4,a5,0x3
    800113b2:	1761                	addi	a4,a4,-8
    800113b4:	972a                	add	a4,a4,a0
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    800113b6:	00472883          	lw	a7,4(a4)
    800113ba:	05169363          	bne	a3,a7,80011400 <JS_CallInternal+0x2492>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    800113be:	7218                	ld	a4,32(a2)
    800113c0:	0792                	slli	a5,a5,0x4
    800113c2:	17c1                	addi	a5,a5,-16
    800113c4:	97ba                	add	a5,a5,a4
JS_IsUninitialized():
quickjs-nuttx/quickjs.h:615
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_UNINITIALIZED);
    800113c6:	678c                	ld	a1,8(a5)
JS_GetGlobalVar():
quickjs-nuttx/quickjs.c:9581
        if (unlikely(JS_IsUninitialized(pr->u.value)))
    800113c8:	4711                	li	a4,4
    800113ca:	0005861b          	sext.w	a2,a1
    800113ce:	02e61e63          	bne	a2,a4,8001140a <JS_CallInternal+0x249c>
quickjs-nuttx/quickjs.c:9582
            return JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    800113d2:	85b6                	mv	a1,a3
    800113d4:	8526                	mv	a0,s1
    800113d6:	476080ef          	jal	ra,8001984c <JS_ThrowReferenceErrorUninitialized>
quickjs-nuttx/quickjs.c:9583
        return JS_DupValue(ctx, pr->u.value);
    800113da:	c2a43023          	sd	a0,-992(s0)
    800113de:	c2b43423          	sd	a1,-984(s0)
    800113e2:	c2843783          	ld	a5,-984(s0)
    800113e6:	c2043703          	ld	a4,-992(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16762
                if (unlikely(JS_IsException(val)))
    800113ea:	4699                	li	a3,6
    800113ec:	eef43c23          	sd	a5,-264(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800113f0:	eee43823          	sd	a4,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16762
    800113f4:	2781                	sext.w	a5,a5
    800113f6:	00d79e63          	bne	a5,a3,80011412 <JS_CallInternal+0x24a4>
quickjs-nuttx/quickjs.c:16759
                pc += 4;
    800113fa:	8d52                	mv	s10,s4
    800113fc:	c02fe06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80011400:	431c                	lw	a5,0(a4)
    80011402:	8fed                	and	a5,a5,a1
    80011404:	1782                	slli	a5,a5,0x20
    80011406:	9381                	srli	a5,a5,0x20
    80011408:	bf41                	j	80011398 <JS_CallInternal+0x242a>
JS_GetGlobalVar():
quickjs-nuttx/quickjs.c:9583
        return JS_DupValue(ctx, pr->u.value);
    8001140a:	6388                	ld	a0,0(a5)
    8001140c:	80ef90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011410:	b7e9                	j	800113da <JS_CallInternal+0x246c>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16764
                *sp++ = val;
    80011412:	00ecb023          	sd	a4,0(s9)
    80011416:	ef843783          	ld	a5,-264(s0)
    8001141a:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16766
            BREAK;
    8001141c:	0d15                	addi	s10,s10,5
quickjs-nuttx/quickjs.c:16764
                *sp++ = val;
    8001141e:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16766
            BREAK;
    80011422:	fffd4b03          	lbu	s6,-1(s10)
    80011426:	0005e797          	auipc	a5,0x5e
    8001142a:	a0a78793          	addi	a5,a5,-1526 # 8006ee30 <dispatch_table.4>
    8001142e:	003b1713          	slli	a4,s6,0x3
    80011432:	97ba                	add	a5,a5,a4
    80011434:	639c                	ld	a5,0(a5)
    80011436:	d71fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    8001143a:	001d4783          	lbu	a5,1(s10)
    8001143e:	000d4583          	lbu	a1,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16776
                ret = JS_SetGlobalVar(ctx, atom, sp[-1], opcode - OP_put_var);
    80011442:	ff0cb603          	ld	a2,-16(s9)
get_u32():
quickjs-nuttx/cutils.h:170
    80011446:	07a2                	slli	a5,a5,0x8
    80011448:	8fcd                	or	a5,a5,a1
    8001144a:	002d4583          	lbu	a1,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16776
    8001144e:	ff8cb683          	ld	a3,-8(s9)
    80011452:	fc7b071b          	addiw	a4,s6,-57
get_u32():
quickjs-nuttx/cutils.h:170
    80011456:	05c2                	slli	a1,a1,0x10
    80011458:	8fcd                	or	a5,a5,a1
    8001145a:	003d4583          	lbu	a1,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16776
    8001145e:	8526                	mv	a0,s1
    80011460:	1cc1                	addi	s9,s9,-16
get_u32():
quickjs-nuttx/cutils.h:170
    80011462:	05e2                	slli	a1,a1,0x18
    80011464:	8ddd                	or	a1,a1,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16776
    80011466:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:16774
                pc += 4;
    80011468:	004d0993          	addi	s3,s10,4
quickjs-nuttx/quickjs.c:16776
                ret = JS_SetGlobalVar(ctx, atom, sp[-1], opcode - OP_put_var);
    8001146c:	6b2260ef          	jal	ra,80037b1e <JS_SetGlobalVar>
quickjs-nuttx/quickjs.c:16778
                if (unlikely(ret < 0))
    80011470:	00055463          	bgez	a0,80011478 <JS_CallInternal+0x250a>
    80011474:	4a40506f          	j	80016918 <JS_CallInternal+0x79aa>
quickjs-nuttx/quickjs.c:16781
            BREAK;
    80011478:	004d4b03          	lbu	s6,4(s10)
    8001147c:	0005e797          	auipc	a5,0x5e
    80011480:	9b478793          	addi	a5,a5,-1612 # 8006ee30 <dispatch_table.4>
    80011484:	0d15                	addi	s10,s10,5
    80011486:	003b1713          	slli	a4,s6,0x3
    8001148a:	97ba                	add	a5,a5,a4
    8001148c:	639c                	ld	a5,0(a5)
    8001148e:	d19fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    80011492:	001d4783          	lbu	a5,1(s10)
    80011496:	000d4583          	lbu	a1,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16788
                pc += 4;
    8001149a:	004d0993          	addi	s3,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    8001149e:	07a2                	slli	a5,a5,0x8
    800114a0:	8fcd                	or	a5,a5,a1
    800114a2:	002d4583          	lbu	a1,2(s10)
    800114a6:	05c2                	slli	a1,a1,0x10
    800114a8:	8fcd                	or	a5,a5,a1
    800114aa:	003d4583          	lbu	a1,3(s10)
    800114ae:	05e2                	slli	a1,a1,0x18
    800114b0:	8ddd                	or	a1,a1,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16791
                if (unlikely(!JS_VALUE_GET_INT(sp[-2]))) {
    800114b2:	fe0ca783          	lw	a5,-32(s9)
get_u32():
quickjs-nuttx/cutils.h:170
    800114b6:	2581                	sext.w	a1,a1
JS_CallInternal():
quickjs-nuttx/quickjs.c:16791
    800114b8:	e799                	bnez	a5,800114c6 <JS_CallInternal+0x2558>
quickjs-nuttx/quickjs.c:16792
                    JS_ThrowReferenceErrorNotDefined(ctx, atom);
    800114ba:	8526                	mv	a0,s1
    800114bc:	3ea080ef          	jal	ra,800198a6 <JS_ThrowReferenceErrorNotDefined>
quickjs-nuttx/quickjs.c:16788
                pc += 4;
    800114c0:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:16793
                    goto exception;
    800114c2:	b3cfe06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16795
                ret = JS_SetGlobalVar(ctx, atom, sp[-1], 2);
    800114c6:	ff0cb603          	ld	a2,-16(s9)
    800114ca:	ff8cb683          	ld	a3,-8(s9)
    800114ce:	4709                	li	a4,2
    800114d0:	8526                	mv	a0,s1
    800114d2:	64c260ef          	jal	ra,80037b1e <JS_SetGlobalVar>
quickjs-nuttx/quickjs.c:16796
                sp -= 2;
    800114d6:	1c81                	addi	s9,s9,-32
quickjs-nuttx/quickjs.c:16797
                if (unlikely(ret < 0))
    800114d8:	00055463          	bgez	a0,800114e0 <JS_CallInternal+0x2572>
    800114dc:	4420506f          	j	8001691e <JS_CallInternal+0x79b0>
quickjs-nuttx/quickjs.c:16800
            BREAK;
    800114e0:	004d4b03          	lbu	s6,4(s10)
    800114e4:	0005e797          	auipc	a5,0x5e
    800114e8:	94c78793          	addi	a5,a5,-1716 # 8006ee30 <dispatch_table.4>
    800114ec:	0d15                	addi	s10,s10,5
    800114ee:	003b1713          	slli	a4,s6,0x3
    800114f2:	97ba                	add	a5,a5,a4
    800114f4:	639c                	ld	a5,0(a5)
    800114f6:	cb1fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    800114fa:	001d4703          	lbu	a4,1(s10)
    800114fe:	000d4783          	lbu	a5,0(s10)
JS_CheckDefineGlobalVar():
quickjs-nuttx/quickjs.c:9478
    p = JS_VALUE_GET_OBJ(ctx->global_obj);
    80011502:	1684b683          	ld	a3,360(s1)
get_u32():
quickjs-nuttx/cutils.h:170
    80011506:	0722                	slli	a4,a4,0x8
    80011508:	8f5d                	or	a4,a4,a5
    8001150a:	002d4783          	lbu	a5,2(s10)
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    8001150e:	6e90                	ld	a2,24(a3)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16808
                pc += 5;
    80011510:	005d0993          	addi	s3,s10,5
get_u32():
quickjs-nuttx/cutils.h:170
    80011514:	07c2                	slli	a5,a5,0x10
    80011516:	8f5d                	or	a4,a4,a5
    80011518:	003d4783          	lbu	a5,3(s10)
find_own_property1():
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001151c:	5208                	lw	a0,32(a2)
get_u32():
quickjs-nuttx/cutils.h:170
    8001151e:	07e2                	slli	a5,a5,0x18
    80011520:	8fd9                	or	a5,a5,a4
find_own_property1():
quickjs-nuttx/quickjs.c:5200
    80011522:	0007859b          	sext.w	a1,a5
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011526:	8fe9                	and	a5,a5,a0
    80011528:	0785                	addi	a5,a5,1
    8001152a:	5571                	li	a0,-4
    8001152c:	02a787b3          	mul	a5,a5,a0
JS_CallInternal():
quickjs-nuttx/quickjs.c:16807
                flags = pc[4];
    80011530:	004d4703          	lbu	a4,4(s10)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80011534:	04060513          	addi	a0,a2,64
find_own_property1():
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011538:	97b2                	add	a5,a5,a2
    8001153a:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    8001153e:	04000637          	lui	a2,0x4000
    80011542:	167d                	addi	a2,a2,-1
quickjs-nuttx/quickjs.c:5203
    while (h) {
    80011544:	ef9d                	bnez	a5,80011582 <JS_CallInternal+0x2614>
JS_CheckDefineGlobalVar():
quickjs-nuttx/quickjs.c:9481
    if (flags & DEFINE_GLOBAL_LEX_VAR) {
    80011546:	0187161b          	slliw	a2,a4,0x18
    8001154a:	4186561b          	sraiw	a2,a2,0x18
    8001154e:	04065663          	bgez	a2,8001159a <JS_CallInternal+0x262c>
quickjs-nuttx/quickjs.c:9482
        if (prs && !(prs->flags & JS_PROP_CONFIGURABLE))
    80011552:	cbd1                	beqz	a5,800115e6 <JS_CallInternal+0x2678>
    80011554:	439c                	lw	a5,0(a5)
    80011556:	01a7d79b          	srliw	a5,a5,0x1a
    8001155a:	8b85                	andi	a5,a5,1
    8001155c:	e7c9                	bnez	a5,800115e6 <JS_CallInternal+0x2678>
JS_ThrowSyntaxErrorVarRedeclaration():
quickjs-nuttx/quickjs.c:9468
    return JS_ThrowSyntaxErrorAtom(ctx, "redeclaration of '%s'", prop);
    8001155e:	00058697          	auipc	a3,0x58
    80011562:	62a68693          	addi	a3,a3,1578 # 80069b88 <qjsc_repl+0x45d8>
    80011566:	00058617          	auipc	a2,0x58
    8001156a:	76a60613          	addi	a2,a2,1898 # 80069cd0 <qjsc_repl+0x4720>
    8001156e:	8526                	mv	a0,s1
    80011570:	63d060ef          	jal	ra,800183ac <__JS_ThrowSyntaxErrorAtom>
    80011574:	c2a43823          	sd	a0,-976(s0)
    80011578:	c2b43c23          	sd	a1,-968(s0)
    8001157c:	8d4e                	mv	s10,s3
    8001157e:	a80fe06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    80011582:	078e                	slli	a5,a5,0x3
    80011584:	17e1                	addi	a5,a5,-8
    80011586:	97aa                	add	a5,a5,a0
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    80011588:	0047a803          	lw	a6,4(a5)
    8001158c:	fab80de3          	beq	a6,a1,80011546 <JS_CallInternal+0x25d8>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    80011590:	439c                	lw	a5,0(a5)
    80011592:	8ff1                	and	a5,a5,a2
    80011594:	1782                	slli	a5,a5,0x20
    80011596:	9381                	srli	a5,a5,0x20
    80011598:	b775                	j	80011544 <JS_CallInternal+0x25d6>
JS_CheckDefineGlobalVar():
quickjs-nuttx/quickjs.c:9485
        if (!prs && !p->extensible)
    8001159a:	e789                	bnez	a5,800115a4 <JS_CallInternal+0x2636>
    8001159c:	0056c683          	lbu	a3,5(a3)
    800115a0:	8a85                	andi	a3,a3,1
    800115a2:	c685                	beqz	a3,800115ca <JS_CallInternal+0x265c>
quickjs-nuttx/quickjs.c:9487
        if (flags & DEFINE_GLOBAL_FUNC_VAR) {
    800115a4:	04077713          	andi	a4,a4,64
    800115a8:	cf1d                	beqz	a4,800115e6 <JS_CallInternal+0x2678>
quickjs-nuttx/quickjs.c:9488
            if (prs) {
    800115aa:	cf95                	beqz	a5,800115e6 <JS_CallInternal+0x2678>
quickjs-nuttx/quickjs.c:9489
                if (!(prs->flags & JS_PROP_CONFIGURABLE) &&
    800115ac:	439c                	lw	a5,0(a5)
    800115ae:	01a7d79b          	srliw	a5,a5,0x1a
    800115b2:	0017f713          	andi	a4,a5,1
    800115b6:	eb05                	bnez	a4,800115e6 <JS_CallInternal+0x2678>
    800115b8:	0307f713          	andi	a4,a5,48
    800115bc:	46c1                	li	a3,16
    800115be:	00d70663          	beq	a4,a3,800115ca <JS_CallInternal+0x265c>
quickjs-nuttx/quickjs.c:9490
                    ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET ||
    800115c2:	8b99                	andi	a5,a5,6
    800115c4:	4719                	li	a4,6
    800115c6:	02e78063          	beq	a5,a4,800115e6 <JS_CallInternal+0x2678>
quickjs-nuttx/quickjs.c:9494
                    JS_ThrowTypeErrorAtom(ctx, "cannot define variable '%s'",
    800115ca:	00058697          	auipc	a3,0x58
    800115ce:	5be68693          	addi	a3,a3,1470 # 80069b88 <qjsc_repl+0x45d8>
    800115d2:	00058617          	auipc	a2,0x58
    800115d6:	78660613          	addi	a2,a2,1926 # 80069d58 <qjsc_repl+0x47a8>
    800115da:	8526                	mv	a0,s1
    800115dc:	16c070ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
    800115e0:	8d4e                	mv	s10,s3
    800115e2:	a1cfe06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    800115e6:	1784b783          	ld	a5,376(s1)
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    800115ea:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    800115ec:	6f98                	ld	a4,24(a5)
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    800115ee:	531c                	lw	a5,32(a4)
    800115f0:	8fed                	and	a5,a5,a1
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    800115f2:	1782                	slli	a5,a5,0x20
    800115f4:	9381                	srli	a5,a5,0x20
    800115f6:	0785                	addi	a5,a5,1
    800115f8:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    800115fc:	040006b7          	lui	a3,0x4000
    80011600:	16fd                	addi	a3,a3,-1
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011602:	97ba                	add	a5,a5,a4
    80011604:	0007e783          	lwu	a5,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80011608:	04070713          	addi	a4,a4,64
find_own_property1():
quickjs-nuttx/quickjs.c:5203
    while (h) {
    8001160c:	ef91                	bnez	a5,80011628 <JS_CallInternal+0x26ba>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16812
            BREAK;
    8001160e:	005d4b03          	lbu	s6,5(s10)
    80011612:	0005e797          	auipc	a5,0x5e
    80011616:	81e78793          	addi	a5,a5,-2018 # 8006ee30 <dispatch_table.4>
    8001161a:	0d19                	addi	s10,s10,6
    8001161c:	003b1713          	slli	a4,s6,0x3
    80011620:	97ba                	add	a5,a5,a4
    80011622:	639c                	ld	a5,0(a5)
    80011624:	b83fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    80011628:	078e                	slli	a5,a5,0x3
    8001162a:	17e1                	addi	a5,a5,-8
    8001162c:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    8001162e:	43d0                	lw	a2,4(a5)
    80011630:	f2b607e3          	beq	a2,a1,8001155e <JS_CallInternal+0x25f0>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    80011634:	439c                	lw	a5,0(a5)
    80011636:	8ff5                	and	a5,a5,a3
    80011638:	1782                	slli	a5,a5,0x20
    8001163a:	9381                	srli	a5,a5,0x20
    8001163c:	bfc1                	j	8001160c <JS_CallInternal+0x269e>
get_u32():
quickjs-nuttx/cutils.h:170
    8001163e:	001d4783          	lbu	a5,1(s10)
    80011642:	000d4603          	lbu	a2,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16818
                flags = pc[4];
    80011646:	004d4683          	lbu	a3,4(s10)
get_u32():
quickjs-nuttx/cutils.h:170
    8001164a:	07a2                	slli	a5,a5,0x8
    8001164c:	8fd1                	or	a5,a5,a2
    8001164e:	002d4603          	lbu	a2,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16819
                pc += 5;
    80011652:	005d0a13          	addi	s4,s10,5
get_u32():
quickjs-nuttx/cutils.h:170
    80011656:	0642                	slli	a2,a2,0x10
    80011658:	8fd1                	or	a5,a5,a2
    8001165a:	003d4603          	lbu	a2,3(s10)
    8001165e:	0662                	slli	a2,a2,0x18
    80011660:	8e5d                	or	a2,a2,a5
JS_DefineGlobalVar():
quickjs-nuttx/quickjs.c:9523
    if (def_flags & DEFINE_GLOBAL_LEX_VAR) {
    80011662:	0186979b          	slliw	a5,a3,0x18
    80011666:	4187d79b          	sraiw	a5,a5,0x18
get_u32():
quickjs-nuttx/cutils.h:170
    8001166a:	2601                	sext.w	a2,a2
JS_DefineGlobalVar():
quickjs-nuttx/quickjs.c:9523
    8001166c:	0607d963          	bgez	a5,800116de <JS_CallInternal+0x2770>
quickjs-nuttx/quickjs.c:9525
        flags = JS_PROP_ENUMERABLE | (def_flags & JS_PROP_WRITABLE) |
    80011670:	8a89                	andi	a3,a3,2
quickjs-nuttx/quickjs.c:9524
        p = JS_VALUE_GET_OBJ(ctx->global_var_obj);
    80011672:	1784b583          	ld	a1,376(s1)
quickjs-nuttx/quickjs.c:9525
        flags = JS_PROP_ENUMERABLE | (def_flags & JS_PROP_WRITABLE) |
    80011676:	0056e693          	ori	a3,a3,5
quickjs-nuttx/quickjs.c:9527
        val = JS_UNINITIALIZED;
    8001167a:	ee043823          	sd	zero,-272(s0)
    8001167e:	4991                	li	s3,4
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    80011680:	6d98                	ld	a4,24(a1)
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011682:	5571                	li	a0,-4
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80011684:	531c                	lw	a5,32(a4)
    80011686:	8ff1                	and	a5,a5,a2
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011688:	1782                	slli	a5,a5,0x20
    8001168a:	9381                	srli	a5,a5,0x20
    8001168c:	0785                	addi	a5,a5,1
    8001168e:	02a787b3          	mul	a5,a5,a0
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    80011692:	04000537          	lui	a0,0x4000
    80011696:	157d                	addi	a0,a0,-1
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011698:	97ba                	add	a5,a5,a4
    8001169a:	0007e783          	lwu	a5,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001169e:	04070713          	addi	a4,a4,64
find_own_property1():
quickjs-nuttx/quickjs.c:5203
    while (h) {
    800116a2:	e7b9                	bnez	a5,800116f0 <JS_CallInternal+0x2782>
JS_DefineGlobalVar():
quickjs-nuttx/quickjs.c:9537
    if (!p->extensible)
    800116a4:	0055c783          	lbu	a5,5(a1) # 4000005 <asinh-0x7bfffffb>
    800116a8:	8b85                	andi	a5,a5,1
    800116aa:	cf89                	beqz	a5,800116c4 <JS_CallInternal+0x2756>
quickjs-nuttx/quickjs.c:9539
    pr = add_property(ctx, p, prop, flags);
    800116ac:	8526                	mv	a0,s1
    800116ae:	1740a0ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:9540
    if (unlikely(!pr))
    800116b2:	c939                	beqz	a0,80011708 <JS_CallInternal+0x279a>
quickjs-nuttx/quickjs.c:9542
    pr->u.value = val;
    800116b4:	ef043783          	ld	a5,-272(s0)
    800116b8:	ef343c23          	sd	s3,-264(s0)
    800116bc:	e11c                	sd	a5,0(a0)
    800116be:	ef843783          	ld	a5,-264(s0)
    800116c2:	e51c                	sd	a5,8(a0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16823
            BREAK;
    800116c4:	005d4b03          	lbu	s6,5(s10)
    800116c8:	0005d797          	auipc	a5,0x5d
    800116cc:	76878793          	addi	a5,a5,1896 # 8006ee30 <dispatch_table.4>
    800116d0:	0d19                	addi	s10,s10,6
    800116d2:	003b1713          	slli	a4,s6,0x3
    800116d6:	97ba                	add	a5,a5,a4
    800116d8:	639c                	ld	a5,0(a5)
    800116da:	acdfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
JS_DefineGlobalVar():
quickjs-nuttx/quickjs.c:9530
        flags = JS_PROP_ENUMERABLE | JS_PROP_WRITABLE |
    800116de:	8a85                	andi	a3,a3,1
quickjs-nuttx/quickjs.c:9529
        p = JS_VALUE_GET_OBJ(ctx->global_obj);
    800116e0:	1684b583          	ld	a1,360(s1)
quickjs-nuttx/quickjs.c:9530
        flags = JS_PROP_ENUMERABLE | JS_PROP_WRITABLE |
    800116e4:	0066e693          	ori	a3,a3,6
quickjs-nuttx/quickjs.c:9532
        val = JS_UNDEFINED;
    800116e8:	ee043823          	sd	zero,-272(s0)
    800116ec:	498d                	li	s3,3
    800116ee:	bf49                	j	80011680 <JS_CallInternal+0x2712>
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    800116f0:	078e                	slli	a5,a5,0x3
    800116f2:	17e1                	addi	a5,a5,-8
    800116f4:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    800116f6:	0047a803          	lw	a6,4(a5)
    800116fa:	fcc805e3          	beq	a6,a2,800116c4 <JS_CallInternal+0x2756>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    800116fe:	439c                	lw	a5,0(a5)
    80011700:	8fe9                	and	a5,a5,a0
    80011702:	1782                	slli	a5,a5,0x20
    80011704:	9381                	srli	a5,a5,0x20
    80011706:	bf71                	j	800116a2 <JS_CallInternal+0x2734>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16819
                pc += 5;
    80011708:	8d52                	mv	s10,s4
    8001170a:	8f4fe06f          	j	8000f7fe <JS_CallInternal+0x890>
get_u32():
quickjs-nuttx/cutils.h:170
    8001170e:	001d4703          	lbu	a4,1(s10)
    80011712:	000d4783          	lbu	a5,0(s10)
    80011716:	ff0cb683          	ld	a3,-16(s9)
    8001171a:	0722                	slli	a4,a4,0x8
    8001171c:	8f5d                	or	a4,a4,a5
    8001171e:	002d4783          	lbu	a5,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16831
                if (JS_DefineGlobalFunction(ctx, atom, sp[-1], flags))
    80011722:	ff0c8993          	addi	s3,s9,-16
quickjs-nuttx/quickjs.c:16830
                pc += 5;
    80011726:	005d0a13          	addi	s4,s10,5
get_u32():
quickjs-nuttx/cutils.h:170
    8001172a:	07c2                	slli	a5,a5,0x10
    8001172c:	8f5d                	or	a4,a4,a5
    8001172e:	003d4783          	lbu	a5,3(s10)
    80011732:	07e2                	slli	a5,a5,0x18
    80011734:	8fd9                	or	a5,a5,a4
JS_CallInternal():
quickjs-nuttx/quickjs.c:16829
                flags = pc[4];
    80011736:	004d4703          	lbu	a4,4(s10)
quickjs-nuttx/quickjs.c:16831
                if (JS_DefineGlobalFunction(ctx, atom, sp[-1], flags))
    8001173a:	e8d43823          	sd	a3,-368(s0)
    8001173e:	0089b683          	ld	a3,8(s3)
    80011742:	e8d43c23          	sd	a3,-360(s0)
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    80011746:	1684b683          	ld	a3,360(s1)
    8001174a:	6e90                	ld	a2,24(a3)
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001174c:	0007869b          	sext.w	a3,a5
    80011750:	520c                	lw	a1,32(a2)
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011752:	8fed                	and	a5,a5,a1
    80011754:	0785                	addi	a5,a5,1
    80011756:	55f1                	li	a1,-4
    80011758:	02b787b3          	mul	a5,a5,a1
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001175c:	04060593          	addi	a1,a2,64
find_own_property1():
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    80011760:	97b2                	add	a5,a5,a2
    80011762:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    80011766:	04000637          	lui	a2,0x4000
    8001176a:	167d                	addi	a2,a2,-1
quickjs-nuttx/quickjs.c:5203
    while (h) {
    8001176c:	e3b9                	bnez	a5,800117b2 <JS_CallInternal+0x2844>
JS_DefineGlobalFunction():
quickjs-nuttx/quickjs.c:9560
        flags |= JS_PROP_ENUMERABLE | JS_PROP_WRITABLE | def_flags |
    8001176e:	6799                	lui	a5,0x6
    80011770:	70678793          	addi	a5,a5,1798 # 6706 <asinh-0x7fff98fa>
    80011774:	8f5d                	or	a4,a4,a5
quickjs-nuttx/quickjs.c:9564
                          JS_UNDEFINED, JS_UNDEFINED, flags) < 0)
    80011776:	478d                	li	a5,3
    80011778:	eef43c23          	sd	a5,-264(s0)
    8001177c:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:9563
    if (JS_DefineProperty(ctx, ctx->global_obj, prop, func,
    80011780:	e83a                	sd	a4,16(sp)
    80011782:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:9564
                          JS_UNDEFINED, JS_UNDEFINED, flags) < 0)
    80011784:	ee043823          	sd	zero,-272(s0)
    80011788:	ec043823          	sd	zero,-304(s0)
quickjs-nuttx/quickjs.c:9563
    if (JS_DefineProperty(ctx, ctx->global_obj, prop, func,
    8001178c:	e002                	sd	zero,0(sp)
    8001178e:	e9043703          	ld	a4,-368(s0)
    80011792:	e9843783          	ld	a5,-360(s0)
    80011796:	1684b583          	ld	a1,360(s1)
    8001179a:	1704b603          	ld	a2,368(s1)
    8001179e:	4801                	li	a6,0
    800117a0:	488d                	li	a7,3
    800117a2:	8526                	mv	a0,s1
    800117a4:	3aa060ef          	jal	ra,80017b4e <JS_DefineProperty>
    800117a8:	02055263          	bgez	a0,800117cc <JS_CallInternal+0x285e>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16830
                pc += 5;
    800117ac:	8d52                	mv	s10,s4
    800117ae:	850fe06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    800117b2:	078e                	slli	a5,a5,0x3
    800117b4:	17e1                	addi	a5,a5,-8
    800117b6:	97ae                	add	a5,a5,a1
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    800117b8:	43c8                	lw	a0,4(a5)
    800117ba:	439c                	lw	a5,0(a5)
    800117bc:	00d51463          	bne	a0,a3,800117c4 <JS_CallInternal+0x2856>
    800117c0:	26e0506f          	j	80016a2e <JS_CallInternal+0x7ac0>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    800117c4:	8ff1                	and	a5,a5,a2
    800117c6:	1782                	slli	a5,a5,0x20
    800117c8:	9381                	srli	a5,a5,0x20
    800117ca:	b74d                	j	8001176c <JS_CallInternal+0x27fe>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16833
                JS_FreeValue(ctx, sp[-1]);
    800117cc:	0009b583          	ld	a1,0(s3)
    800117d0:	0089b603          	ld	a2,8(s3)
    800117d4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16836
            BREAK;
    800117d6:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16833
                JS_FreeValue(ctx, sp[-1]);
    800117d8:	fc7f90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16836
            BREAK;
    800117dc:	005d4b03          	lbu	s6,5(s10)
    800117e0:	0005d797          	auipc	a5,0x5d
    800117e4:	65078793          	addi	a5,a5,1616 # 8006ee30 <dispatch_table.4>
    800117e8:	0d19                	addi	s10,s10,6
    800117ea:	003b1713          	slli	a4,s6,0x3
    800117ee:	97ba                	add	a5,a5,a4
    800117f0:	639c                	ld	a5,0(a5)
    800117f2:	9b5fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    800117f6:	001d4783          	lbu	a5,1(s10)
    800117fa:	000d4703          	lbu	a4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16844
                sp++;
    800117fe:	0cc1                	addi	s9,s9,16
get_u16():
quickjs-nuttx/cutils.h:185
    80011800:	07a2                	slli	a5,a5,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16843
                sp[0] = JS_DupValue(ctx, var_buf[idx]);
    80011802:	8fd9                	or	a5,a5,a4
    80011804:	777d                	lui	a4,0xfffff
    80011806:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8001180a:	9722                	add	a4,a4,s0
    8001180c:	6318                	ld	a4,0(a4)
    8001180e:	0792                	slli	a5,a5,0x4
quickjs-nuttx/quickjs.c:16846
            BREAK;
    80011810:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16843
                sp[0] = JS_DupValue(ctx, var_buf[idx]);
    80011812:	97ba                	add	a5,a5,a4
    80011814:	6388                	ld	a0,0(a5)
    80011816:	678c                	ld	a1,8(a5)
    80011818:	c03f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001181c:	feacb823          	sd	a0,-16(s9)
    80011820:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:16846
            BREAK;
    80011824:	fffd4b03          	lbu	s6,-1(s10)
    80011828:	0005d797          	auipc	a5,0x5d
    8001182c:	60878793          	addi	a5,a5,1544 # 8006ee30 <dispatch_table.4>
    80011830:	003b1713          	slli	a4,s6,0x3
    80011834:	97ba                	add	a5,a5,a4
    80011836:	639c                	ld	a5,0(a5)
    80011838:	96ffd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    8001183c:	001d4583          	lbu	a1,1(s10)
    80011840:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16852
                set_value(ctx, &var_buf[idx], sp[-1]);
    80011844:	ff0cb603          	ld	a2,-16(s9)
get_u16():
quickjs-nuttx/cutils.h:185
    80011848:	05a2                	slli	a1,a1,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16852
    8001184a:	8ddd                	or	a1,a1,a5
    8001184c:	77fd                	lui	a5,0xfffff
    8001184e:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011852:	97a2                	add	a5,a5,s0
    80011854:	639c                	ld	a5,0(a5)
    80011856:	ff8cb683          	ld	a3,-8(s9)
    8001185a:	0592                	slli	a1,a1,0x4
    8001185c:	95be                	add	a1,a1,a5
    8001185e:	8526                	mv	a0,s1
    80011860:	bdefa0ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:16855
            BREAK;
    80011864:	002d4b03          	lbu	s6,2(s10)
    80011868:	0005d797          	auipc	a5,0x5d
    8001186c:	5c878793          	addi	a5,a5,1480 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16852
                set_value(ctx, &var_buf[idx], sp[-1]);
    80011870:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:16855
            BREAK;
    80011872:	003b1713          	slli	a4,s6,0x3
    80011876:	97ba                	add	a5,a5,a4
    80011878:	639c                	ld	a5,0(a5)
    8001187a:	0d0d                	addi	s10,s10,3
    8001187c:	92bfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80011880:	001d4983          	lbu	s3,1(s10)
    80011884:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16861
                set_value(ctx, &var_buf[idx], JS_DupValue(ctx, sp[-1]));
    80011888:	ff0cb503          	ld	a0,-16(s9)
get_u16():
quickjs-nuttx/cutils.h:185
    8001188c:	09a2                	slli	s3,s3,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16861
    8001188e:	00f9e9b3          	or	s3,s3,a5
    80011892:	77fd                	lui	a5,0xfffff
    80011894:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011898:	97a2                	add	a5,a5,s0
    8001189a:	639c                	ld	a5,0(a5)
    8001189c:	ff8cb583          	ld	a1,-8(s9)
    800118a0:	0992                	slli	s3,s3,0x4
    800118a2:	99be                	add	s3,s3,a5
    800118a4:	b77f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800118a8:	f8040793          	addi	a5,s0,-128
    800118ac:	97ca                	add	a5,a5,s2
    800118ae:	76a7b023          	sd	a0,1888(a5)
    800118b2:	76b7b423          	sd	a1,1896(a5)
    800118b6:	862a                	mv	a2,a0
    800118b8:	86ae                	mv	a3,a1
    800118ba:	8526                	mv	a0,s1
    800118bc:	85ce                	mv	a1,s3
    800118be:	b80fa0ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:16863
            BREAK;
    800118c2:	002d4b03          	lbu	s6,2(s10)
    800118c6:	0005d797          	auipc	a5,0x5d
    800118ca:	56a78793          	addi	a5,a5,1386 # 8006ee30 <dispatch_table.4>
    800118ce:	0d0d                	addi	s10,s10,3
    800118d0:	003b1713          	slli	a4,s6,0x3
    800118d4:	97ba                	add	a5,a5,a4
    800118d6:	639c                	ld	a5,0(a5)
    800118d8:	8cffd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    800118dc:	001d4783          	lbu	a5,1(s10)
    800118e0:	000d4703          	lbu	a4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16870
                sp++;
    800118e4:	0cc1                	addi	s9,s9,16
get_u16():
quickjs-nuttx/cutils.h:185
    800118e6:	07a2                	slli	a5,a5,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16869
                sp[0] = JS_DupValue(ctx, arg_buf[idx]);
    800118e8:	8fd9                	or	a5,a5,a4
    800118ea:	777d                	lui	a4,0xfffff
    800118ec:	65870713          	addi	a4,a4,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    800118f0:	9722                	add	a4,a4,s0
    800118f2:	6318                	ld	a4,0(a4)
    800118f4:	0792                	slli	a5,a5,0x4
quickjs-nuttx/quickjs.c:16872
            BREAK;
    800118f6:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16869
                sp[0] = JS_DupValue(ctx, arg_buf[idx]);
    800118f8:	97ba                	add	a5,a5,a4
    800118fa:	6388                	ld	a0,0(a5)
    800118fc:	678c                	ld	a1,8(a5)
    800118fe:	b1df80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011902:	feacb823          	sd	a0,-16(s9)
    80011906:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:16872
            BREAK;
    8001190a:	fffd4b03          	lbu	s6,-1(s10)
    8001190e:	0005d797          	auipc	a5,0x5d
    80011912:	52278793          	addi	a5,a5,1314 # 8006ee30 <dispatch_table.4>
    80011916:	003b1713          	slli	a4,s6,0x3
    8001191a:	97ba                	add	a5,a5,a4
    8001191c:	639c                	ld	a5,0(a5)
    8001191e:	889fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80011922:	001d4583          	lbu	a1,1(s10)
    80011926:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16878
                set_value(ctx, &arg_buf[idx], sp[-1]);
    8001192a:	ff0cb603          	ld	a2,-16(s9)
get_u16():
quickjs-nuttx/cutils.h:185
    8001192e:	05a2                	slli	a1,a1,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16878
    80011930:	8ddd                	or	a1,a1,a5
    80011932:	77fd                	lui	a5,0xfffff
    80011934:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011938:	97a2                	add	a5,a5,s0
    8001193a:	639c                	ld	a5,0(a5)
    8001193c:	ff8cb683          	ld	a3,-8(s9)
    80011940:	0592                	slli	a1,a1,0x4
    80011942:	95be                	add	a1,a1,a5
    80011944:	8526                	mv	a0,s1
    80011946:	af8fa0ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:16881
            BREAK;
    8001194a:	002d4b03          	lbu	s6,2(s10)
    8001194e:	0005d797          	auipc	a5,0x5d
    80011952:	4e278793          	addi	a5,a5,1250 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16878
                set_value(ctx, &arg_buf[idx], sp[-1]);
    80011956:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:16881
            BREAK;
    80011958:	003b1713          	slli	a4,s6,0x3
    8001195c:	97ba                	add	a5,a5,a4
    8001195e:	639c                	ld	a5,0(a5)
    80011960:	0d0d                	addi	s10,s10,3
    80011962:	845fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80011966:	001d4983          	lbu	s3,1(s10)
    8001196a:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16887
                set_value(ctx, &arg_buf[idx], JS_DupValue(ctx, sp[-1]));
    8001196e:	ff0cb503          	ld	a0,-16(s9)
get_u16():
quickjs-nuttx/cutils.h:185
    80011972:	09a2                	slli	s3,s3,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16887
    80011974:	00f9e9b3          	or	s3,s3,a5
    80011978:	77fd                	lui	a5,0xfffff
    8001197a:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    8001197e:	97a2                	add	a5,a5,s0
    80011980:	639c                	ld	a5,0(a5)
    80011982:	ff8cb583          	ld	a1,-8(s9)
    80011986:	0992                	slli	s3,s3,0x4
    80011988:	99be                	add	s3,s3,a5
    8001198a:	a91f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001198e:	f8040793          	addi	a5,s0,-128
    80011992:	97ca                	add	a5,a5,s2
    80011994:	76a7b823          	sd	a0,1904(a5)
    80011998:	76b7bc23          	sd	a1,1912(a5)
    8001199c:	862a                	mv	a2,a0
    8001199e:	86ae                	mv	a3,a1
    800119a0:	8526                	mv	a0,s1
    800119a2:	85ce                	mv	a1,s3
    800119a4:	a9afa0ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:16889
            BREAK;
    800119a8:	002d4b03          	lbu	s6,2(s10)
    800119ac:	0005d797          	auipc	a5,0x5d
    800119b0:	48478793          	addi	a5,a5,1156 # 8006ee30 <dispatch_table.4>
    800119b4:	0d0d                	addi	s10,s10,3
    800119b6:	003b1713          	slli	a4,s6,0x3
    800119ba:	97ba                	add	a5,a5,a4
    800119bc:	639c                	ld	a5,0(a5)
    800119be:	fe8fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16892
        CASE(OP_get_loc8): *sp++ = JS_DupValue(ctx, var_buf[*pc++]); BREAK;
    800119c2:	777d                	lui	a4,0xfffff
    800119c4:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    800119c8:	000d4783          	lbu	a5,0(s10)
    800119cc:	9722                	add	a4,a4,s0
    800119ce:	6318                	ld	a4,0(a4)
    800119d0:	0792                	slli	a5,a5,0x4
    800119d2:	010c8993          	addi	s3,s9,16
    800119d6:	97ba                	add	a5,a5,a4
    800119d8:	6388                	ld	a0,0(a5)
    800119da:	678c                	ld	a1,8(a5)
    800119dc:	0d09                	addi	s10,s10,2
    800119de:	a3df80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800119e2:	00acb023          	sd	a0,0(s9)
    800119e6:	00bcb423          	sd	a1,8(s9)
    800119ea:	fffd4b03          	lbu	s6,-1(s10)
    800119ee:	0005d797          	auipc	a5,0x5d
    800119f2:	44278793          	addi	a5,a5,1090 # 8006ee30 <dispatch_table.4>
    800119f6:	8cce                	mv	s9,s3
    800119f8:	003b1713          	slli	a4,s6,0x3
    800119fc:	97ba                	add	a5,a5,a4
    800119fe:	639c                	ld	a5,0(a5)
    80011a00:	fa6fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16893
        CASE(OP_put_loc8): set_value(ctx, &var_buf[*pc++], *--sp); BREAK;
    80011a04:	77fd                	lui	a5,0xfffff
    80011a06:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011a0a:	000d4583          	lbu	a1,0(s10)
    80011a0e:	97a2                	add	a5,a5,s0
    80011a10:	639c                	ld	a5,0(a5)
    80011a12:	ff0cb603          	ld	a2,-16(s9)
    80011a16:	ff8cb683          	ld	a3,-8(s9)
    80011a1a:	0592                	slli	a1,a1,0x4
    80011a1c:	95be                	add	a1,a1,a5
    80011a1e:	8526                	mv	a0,s1
    80011a20:	a1efa0ef          	jal	ra,8000bc3e <set_value>
    80011a24:	001d4b03          	lbu	s6,1(s10)
    80011a28:	0005d797          	auipc	a5,0x5d
    80011a2c:	40878793          	addi	a5,a5,1032 # 8006ee30 <dispatch_table.4>
    80011a30:	1cc1                	addi	s9,s9,-16
    80011a32:	003b1713          	slli	a4,s6,0x3
    80011a36:	97ba                	add	a5,a5,a4
    80011a38:	639c                	ld	a5,0(a5)
    80011a3a:	0d09                	addi	s10,s10,2
    80011a3c:	f6afd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16894
        CASE(OP_set_loc8): set_value(ctx, &var_buf[*pc++], JS_DupValue(ctx, sp[-1])); BREAK;
    80011a40:	77fd                	lui	a5,0xfffff
    80011a42:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011a46:	000d4983          	lbu	s3,0(s10)
    80011a4a:	97a2                	add	a5,a5,s0
    80011a4c:	639c                	ld	a5,0(a5)
    80011a4e:	ff0cb503          	ld	a0,-16(s9)
    80011a52:	ff8cb583          	ld	a1,-8(s9)
    80011a56:	0992                	slli	s3,s3,0x4
    80011a58:	99be                	add	s3,s3,a5
    80011a5a:	9c1f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011a5e:	f8040793          	addi	a5,s0,-128
    80011a62:	97ca                	add	a5,a5,s2
    80011a64:	78a7b023          	sd	a0,1920(a5)
    80011a68:	78b7b423          	sd	a1,1928(a5)
    80011a6c:	862a                	mv	a2,a0
    80011a6e:	86ae                	mv	a3,a1
    80011a70:	8526                	mv	a0,s1
    80011a72:	85ce                	mv	a1,s3
    80011a74:	9cafa0ef          	jal	ra,8000bc3e <set_value>
    80011a78:	001d4b03          	lbu	s6,1(s10)
    80011a7c:	0005d797          	auipc	a5,0x5d
    80011a80:	3b478793          	addi	a5,a5,948 # 8006ee30 <dispatch_table.4>
    80011a84:	0d09                	addi	s10,s10,2
    80011a86:	003b1713          	slli	a4,s6,0x3
    80011a8a:	97ba                	add	a5,a5,a4
    80011a8c:	639c                	ld	a5,0(a5)
    80011a8e:	f18fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16896
        CASE(OP_get_loc0): *sp++ = JS_DupValue(ctx, var_buf[0]); BREAK;
    80011a92:	77fd                	lui	a5,0xfffff
    80011a94:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011a98:	97a2                	add	a5,a5,s0
    80011a9a:	639c                	ld	a5,0(a5)
    80011a9c:	010c8993          	addi	s3,s9,16
    80011aa0:	0d05                	addi	s10,s10,1
    80011aa2:	6388                	ld	a0,0(a5)
    80011aa4:	77fd                	lui	a5,0xfffff
    80011aa6:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011aaa:	97a2                	add	a5,a5,s0
    80011aac:	639c                	ld	a5,0(a5)
    80011aae:	678c                	ld	a1,8(a5)
    80011ab0:	96bf80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011ab4:	00acb023          	sd	a0,0(s9)
    80011ab8:	00bcb423          	sd	a1,8(s9)
    80011abc:	fffd4b03          	lbu	s6,-1(s10)
    80011ac0:	0005d797          	auipc	a5,0x5d
    80011ac4:	37078793          	addi	a5,a5,880 # 8006ee30 <dispatch_table.4>
    80011ac8:	8cce                	mv	s9,s3
    80011aca:	003b1713          	slli	a4,s6,0x3
    80011ace:	97ba                	add	a5,a5,a4
    80011ad0:	639c                	ld	a5,0(a5)
    80011ad2:	ed4fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16897
        CASE(OP_get_loc1): *sp++ = JS_DupValue(ctx, var_buf[1]); BREAK;
    80011ad6:	77fd                	lui	a5,0xfffff
    80011ad8:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011adc:	97a2                	add	a5,a5,s0
    80011ade:	639c                	ld	a5,0(a5)
    80011ae0:	010c8993          	addi	s3,s9,16
    80011ae4:	0d05                	addi	s10,s10,1
    80011ae6:	6b88                	ld	a0,16(a5)
    80011ae8:	77fd                	lui	a5,0xfffff
    80011aea:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011aee:	97a2                	add	a5,a5,s0
    80011af0:	639c                	ld	a5,0(a5)
    80011af2:	6f8c                	ld	a1,24(a5)
    80011af4:	927f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011af8:	00acb023          	sd	a0,0(s9)
    80011afc:	00bcb423          	sd	a1,8(s9)
    80011b00:	fffd4b03          	lbu	s6,-1(s10)
    80011b04:	0005d797          	auipc	a5,0x5d
    80011b08:	32c78793          	addi	a5,a5,812 # 8006ee30 <dispatch_table.4>
    80011b0c:	8cce                	mv	s9,s3
    80011b0e:	003b1713          	slli	a4,s6,0x3
    80011b12:	97ba                	add	a5,a5,a4
    80011b14:	639c                	ld	a5,0(a5)
    80011b16:	e90fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16898
        CASE(OP_get_loc2): *sp++ = JS_DupValue(ctx, var_buf[2]); BREAK;
    80011b1a:	77fd                	lui	a5,0xfffff
    80011b1c:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011b20:	97a2                	add	a5,a5,s0
    80011b22:	639c                	ld	a5,0(a5)
    80011b24:	010c8993          	addi	s3,s9,16
    80011b28:	0d05                	addi	s10,s10,1
    80011b2a:	7388                	ld	a0,32(a5)
    80011b2c:	77fd                	lui	a5,0xfffff
    80011b2e:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011b32:	97a2                	add	a5,a5,s0
    80011b34:	639c                	ld	a5,0(a5)
    80011b36:	778c                	ld	a1,40(a5)
    80011b38:	8e3f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011b3c:	00acb023          	sd	a0,0(s9)
    80011b40:	00bcb423          	sd	a1,8(s9)
    80011b44:	fffd4b03          	lbu	s6,-1(s10)
    80011b48:	0005d797          	auipc	a5,0x5d
    80011b4c:	2e878793          	addi	a5,a5,744 # 8006ee30 <dispatch_table.4>
    80011b50:	8cce                	mv	s9,s3
    80011b52:	003b1713          	slli	a4,s6,0x3
    80011b56:	97ba                	add	a5,a5,a4
    80011b58:	639c                	ld	a5,0(a5)
    80011b5a:	e4cfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16899
        CASE(OP_get_loc3): *sp++ = JS_DupValue(ctx, var_buf[3]); BREAK;
    80011b5e:	77fd                	lui	a5,0xfffff
    80011b60:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011b64:	97a2                	add	a5,a5,s0
    80011b66:	639c                	ld	a5,0(a5)
    80011b68:	010c8993          	addi	s3,s9,16
    80011b6c:	0d05                	addi	s10,s10,1
    80011b6e:	7b88                	ld	a0,48(a5)
    80011b70:	77fd                	lui	a5,0xfffff
    80011b72:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011b76:	97a2                	add	a5,a5,s0
    80011b78:	639c                	ld	a5,0(a5)
    80011b7a:	7f8c                	ld	a1,56(a5)
    80011b7c:	89ff80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011b80:	00acb023          	sd	a0,0(s9)
    80011b84:	00bcb423          	sd	a1,8(s9)
    80011b88:	fffd4b03          	lbu	s6,-1(s10)
    80011b8c:	0005d797          	auipc	a5,0x5d
    80011b90:	2a478793          	addi	a5,a5,676 # 8006ee30 <dispatch_table.4>
    80011b94:	8cce                	mv	s9,s3
    80011b96:	003b1713          	slli	a4,s6,0x3
    80011b9a:	97ba                	add	a5,a5,a4
    80011b9c:	639c                	ld	a5,0(a5)
    80011b9e:	e08fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16900
        CASE(OP_put_loc0): set_value(ctx, &var_buf[0], *--sp); BREAK;
    80011ba2:	77fd                	lui	a5,0xfffff
    80011ba4:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011ba8:	97a2                	add	a5,a5,s0
    80011baa:	638c                	ld	a1,0(a5)
    80011bac:	ff0cb603          	ld	a2,-16(s9)
    80011bb0:	ff8cb683          	ld	a3,-8(s9)
    80011bb4:	8526                	mv	a0,s1
    80011bb6:	1cc1                	addi	s9,s9,-16
    80011bb8:	886fa0ef          	jal	ra,8000bc3e <set_value>
    80011bbc:	000d4b03          	lbu	s6,0(s10)
    80011bc0:	0005d797          	auipc	a5,0x5d
    80011bc4:	27078793          	addi	a5,a5,624 # 8006ee30 <dispatch_table.4>
    80011bc8:	0d05                	addi	s10,s10,1
    80011bca:	003b1713          	slli	a4,s6,0x3
    80011bce:	97ba                	add	a5,a5,a4
    80011bd0:	639c                	ld	a5,0(a5)
    80011bd2:	dd4fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16901
        CASE(OP_put_loc1): set_value(ctx, &var_buf[1], *--sp); BREAK;
    80011bd6:	77fd                	lui	a5,0xfffff
    80011bd8:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011bdc:	97a2                	add	a5,a5,s0
    80011bde:	639c                	ld	a5,0(a5)
    80011be0:	ff0cb603          	ld	a2,-16(s9)
    80011be4:	ff8cb683          	ld	a3,-8(s9)
    80011be8:	01078593          	addi	a1,a5,16
    80011bec:	8526                	mv	a0,s1
    80011bee:	850fa0ef          	jal	ra,8000bc3e <set_value>
    80011bf2:	000d4b03          	lbu	s6,0(s10)
    80011bf6:	0005d797          	auipc	a5,0x5d
    80011bfa:	23a78793          	addi	a5,a5,570 # 8006ee30 <dispatch_table.4>
    80011bfe:	1cc1                	addi	s9,s9,-16
    80011c00:	003b1713          	slli	a4,s6,0x3
    80011c04:	97ba                	add	a5,a5,a4
    80011c06:	639c                	ld	a5,0(a5)
    80011c08:	0d05                	addi	s10,s10,1
    80011c0a:	d9cfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16902
        CASE(OP_put_loc2): set_value(ctx, &var_buf[2], *--sp); BREAK;
    80011c0e:	77fd                	lui	a5,0xfffff
    80011c10:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011c14:	97a2                	add	a5,a5,s0
    80011c16:	639c                	ld	a5,0(a5)
    80011c18:	ff0cb603          	ld	a2,-16(s9)
    80011c1c:	ff8cb683          	ld	a3,-8(s9)
    80011c20:	02078593          	addi	a1,a5,32
    80011c24:	8526                	mv	a0,s1
    80011c26:	818fa0ef          	jal	ra,8000bc3e <set_value>
    80011c2a:	000d4b03          	lbu	s6,0(s10)
    80011c2e:	0005d797          	auipc	a5,0x5d
    80011c32:	20278793          	addi	a5,a5,514 # 8006ee30 <dispatch_table.4>
    80011c36:	1cc1                	addi	s9,s9,-16
    80011c38:	003b1713          	slli	a4,s6,0x3
    80011c3c:	97ba                	add	a5,a5,a4
    80011c3e:	639c                	ld	a5,0(a5)
    80011c40:	0d05                	addi	s10,s10,1
    80011c42:	d64fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16903
        CASE(OP_put_loc3): set_value(ctx, &var_buf[3], *--sp); BREAK;
    80011c46:	77fd                	lui	a5,0xfffff
    80011c48:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011c4c:	97a2                	add	a5,a5,s0
    80011c4e:	639c                	ld	a5,0(a5)
    80011c50:	ff0cb603          	ld	a2,-16(s9)
    80011c54:	ff8cb683          	ld	a3,-8(s9)
    80011c58:	03078593          	addi	a1,a5,48
    80011c5c:	8526                	mv	a0,s1
    80011c5e:	fe1f90ef          	jal	ra,8000bc3e <set_value>
    80011c62:	000d4b03          	lbu	s6,0(s10)
    80011c66:	0005d797          	auipc	a5,0x5d
    80011c6a:	1ca78793          	addi	a5,a5,458 # 8006ee30 <dispatch_table.4>
    80011c6e:	1cc1                	addi	s9,s9,-16
    80011c70:	003b1713          	slli	a4,s6,0x3
    80011c74:	97ba                	add	a5,a5,a4
    80011c76:	639c                	ld	a5,0(a5)
    80011c78:	0d05                	addi	s10,s10,1
    80011c7a:	d2cfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16904
        CASE(OP_set_loc0): set_value(ctx, &var_buf[0], JS_DupValue(ctx, sp[-1])); BREAK;
    80011c7e:	ff0cb503          	ld	a0,-16(s9)
    80011c82:	ff8cb583          	ld	a1,-8(s9)
    80011c86:	0d05                	addi	s10,s10,1
    80011c88:	f92f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011c8c:	f8040793          	addi	a5,s0,-128
    80011c90:	97ca                	add	a5,a5,s2
    80011c92:	78a7b823          	sd	a0,1936(a5)
    80011c96:	78b7bc23          	sd	a1,1944(a5)
    80011c9a:	77fd                	lui	a5,0xfffff
    80011c9c:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011ca0:	97a2                	add	a5,a5,s0
    80011ca2:	86ae                	mv	a3,a1
    80011ca4:	638c                	ld	a1,0(a5)
    80011ca6:	862a                	mv	a2,a0
    80011ca8:	8526                	mv	a0,s1
    80011caa:	f95f90ef          	jal	ra,8000bc3e <set_value>
    80011cae:	fffd4b03          	lbu	s6,-1(s10)
    80011cb2:	0005d797          	auipc	a5,0x5d
    80011cb6:	17e78793          	addi	a5,a5,382 # 8006ee30 <dispatch_table.4>
    80011cba:	003b1713          	slli	a4,s6,0x3
    80011cbe:	97ba                	add	a5,a5,a4
    80011cc0:	639c                	ld	a5,0(a5)
    80011cc2:	ce4fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16905
        CASE(OP_set_loc1): set_value(ctx, &var_buf[1], JS_DupValue(ctx, sp[-1])); BREAK;
    80011cc6:	ff0cb503          	ld	a0,-16(s9)
    80011cca:	ff8cb583          	ld	a1,-8(s9)
    80011cce:	0d05                	addi	s10,s10,1
    80011cd0:	f4af80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011cd4:	f8040793          	addi	a5,s0,-128
    80011cd8:	97ca                	add	a5,a5,s2
    80011cda:	7aa7b023          	sd	a0,1952(a5)
    80011cde:	7ab7b423          	sd	a1,1960(a5)
    80011ce2:	77fd                	lui	a5,0xfffff
    80011ce4:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011ce8:	97a2                	add	a5,a5,s0
    80011cea:	639c                	ld	a5,0(a5)
    80011cec:	862a                	mv	a2,a0
    80011cee:	86ae                	mv	a3,a1
    80011cf0:	8526                	mv	a0,s1
    80011cf2:	01078593          	addi	a1,a5,16
    80011cf6:	f49f90ef          	jal	ra,8000bc3e <set_value>
    80011cfa:	fffd4b03          	lbu	s6,-1(s10)
    80011cfe:	0005d797          	auipc	a5,0x5d
    80011d02:	13278793          	addi	a5,a5,306 # 8006ee30 <dispatch_table.4>
    80011d06:	003b1713          	slli	a4,s6,0x3
    80011d0a:	97ba                	add	a5,a5,a4
    80011d0c:	639c                	ld	a5,0(a5)
    80011d0e:	c98fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16906
        CASE(OP_set_loc2): set_value(ctx, &var_buf[2], JS_DupValue(ctx, sp[-1])); BREAK;
    80011d12:	ff0cb503          	ld	a0,-16(s9)
    80011d16:	ff8cb583          	ld	a1,-8(s9)
    80011d1a:	0d05                	addi	s10,s10,1
    80011d1c:	efef80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011d20:	f8040793          	addi	a5,s0,-128
    80011d24:	97ca                	add	a5,a5,s2
    80011d26:	7aa7b823          	sd	a0,1968(a5)
    80011d2a:	7ab7bc23          	sd	a1,1976(a5)
    80011d2e:	77fd                	lui	a5,0xfffff
    80011d30:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011d34:	97a2                	add	a5,a5,s0
    80011d36:	639c                	ld	a5,0(a5)
    80011d38:	862a                	mv	a2,a0
    80011d3a:	86ae                	mv	a3,a1
    80011d3c:	8526                	mv	a0,s1
    80011d3e:	02078593          	addi	a1,a5,32
    80011d42:	efdf90ef          	jal	ra,8000bc3e <set_value>
    80011d46:	fffd4b03          	lbu	s6,-1(s10)
    80011d4a:	0005d797          	auipc	a5,0x5d
    80011d4e:	0e678793          	addi	a5,a5,230 # 8006ee30 <dispatch_table.4>
    80011d52:	003b1713          	slli	a4,s6,0x3
    80011d56:	97ba                	add	a5,a5,a4
    80011d58:	639c                	ld	a5,0(a5)
    80011d5a:	c4cfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16907
        CASE(OP_set_loc3): set_value(ctx, &var_buf[3], JS_DupValue(ctx, sp[-1])); BREAK;
    80011d5e:	ff0cb503          	ld	a0,-16(s9)
    80011d62:	ff8cb583          	ld	a1,-8(s9)
    80011d66:	0d05                	addi	s10,s10,1
    80011d68:	eb2f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011d6c:	f8040793          	addi	a5,s0,-128
    80011d70:	97ca                	add	a5,a5,s2
    80011d72:	7ca7b023          	sd	a0,1984(a5)
    80011d76:	7cb7b423          	sd	a1,1992(a5)
    80011d7a:	77fd                	lui	a5,0xfffff
    80011d7c:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80011d80:	97a2                	add	a5,a5,s0
    80011d82:	639c                	ld	a5,0(a5)
    80011d84:	862a                	mv	a2,a0
    80011d86:	86ae                	mv	a3,a1
    80011d88:	8526                	mv	a0,s1
    80011d8a:	03078593          	addi	a1,a5,48
    80011d8e:	eb1f90ef          	jal	ra,8000bc3e <set_value>
    80011d92:	fffd4b03          	lbu	s6,-1(s10)
    80011d96:	0005d797          	auipc	a5,0x5d
    80011d9a:	09a78793          	addi	a5,a5,154 # 8006ee30 <dispatch_table.4>
    80011d9e:	003b1713          	slli	a4,s6,0x3
    80011da2:	97ba                	add	a5,a5,a4
    80011da4:	639c                	ld	a5,0(a5)
    80011da6:	c00fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16908
        CASE(OP_get_arg0): *sp++ = JS_DupValue(ctx, arg_buf[0]); BREAK;
    80011daa:	77fd                	lui	a5,0xfffff
    80011dac:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011db0:	97a2                	add	a5,a5,s0
    80011db2:	639c                	ld	a5,0(a5)
    80011db4:	010c8993          	addi	s3,s9,16
    80011db8:	0d05                	addi	s10,s10,1
    80011dba:	6388                	ld	a0,0(a5)
    80011dbc:	77fd                	lui	a5,0xfffff
    80011dbe:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011dc2:	97a2                	add	a5,a5,s0
    80011dc4:	639c                	ld	a5,0(a5)
    80011dc6:	678c                	ld	a1,8(a5)
    80011dc8:	e52f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011dcc:	00acb023          	sd	a0,0(s9)
    80011dd0:	00bcb423          	sd	a1,8(s9)
    80011dd4:	fffd4b03          	lbu	s6,-1(s10)
    80011dd8:	0005d797          	auipc	a5,0x5d
    80011ddc:	05878793          	addi	a5,a5,88 # 8006ee30 <dispatch_table.4>
    80011de0:	8cce                	mv	s9,s3
    80011de2:	003b1713          	slli	a4,s6,0x3
    80011de6:	97ba                	add	a5,a5,a4
    80011de8:	639c                	ld	a5,0(a5)
    80011dea:	bbcfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16909
        CASE(OP_get_arg1): *sp++ = JS_DupValue(ctx, arg_buf[1]); BREAK;
    80011dee:	77fd                	lui	a5,0xfffff
    80011df0:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011df4:	97a2                	add	a5,a5,s0
    80011df6:	639c                	ld	a5,0(a5)
    80011df8:	010c8993          	addi	s3,s9,16
    80011dfc:	0d05                	addi	s10,s10,1
    80011dfe:	6b88                	ld	a0,16(a5)
    80011e00:	77fd                	lui	a5,0xfffff
    80011e02:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011e06:	97a2                	add	a5,a5,s0
    80011e08:	639c                	ld	a5,0(a5)
    80011e0a:	6f8c                	ld	a1,24(a5)
    80011e0c:	e0ef80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011e10:	00acb023          	sd	a0,0(s9)
    80011e14:	00bcb423          	sd	a1,8(s9)
    80011e18:	fffd4b03          	lbu	s6,-1(s10)
    80011e1c:	0005d797          	auipc	a5,0x5d
    80011e20:	01478793          	addi	a5,a5,20 # 8006ee30 <dispatch_table.4>
    80011e24:	8cce                	mv	s9,s3
    80011e26:	003b1713          	slli	a4,s6,0x3
    80011e2a:	97ba                	add	a5,a5,a4
    80011e2c:	639c                	ld	a5,0(a5)
    80011e2e:	b78fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16910
        CASE(OP_get_arg2): *sp++ = JS_DupValue(ctx, arg_buf[2]); BREAK;
    80011e32:	77fd                	lui	a5,0xfffff
    80011e34:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011e38:	97a2                	add	a5,a5,s0
    80011e3a:	639c                	ld	a5,0(a5)
    80011e3c:	010c8993          	addi	s3,s9,16
    80011e40:	0d05                	addi	s10,s10,1
    80011e42:	7388                	ld	a0,32(a5)
    80011e44:	77fd                	lui	a5,0xfffff
    80011e46:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011e4a:	97a2                	add	a5,a5,s0
    80011e4c:	639c                	ld	a5,0(a5)
    80011e4e:	778c                	ld	a1,40(a5)
    80011e50:	dcaf80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011e54:	00acb023          	sd	a0,0(s9)
    80011e58:	00bcb423          	sd	a1,8(s9)
    80011e5c:	fffd4b03          	lbu	s6,-1(s10)
    80011e60:	0005d797          	auipc	a5,0x5d
    80011e64:	fd078793          	addi	a5,a5,-48 # 8006ee30 <dispatch_table.4>
    80011e68:	8cce                	mv	s9,s3
    80011e6a:	003b1713          	slli	a4,s6,0x3
    80011e6e:	97ba                	add	a5,a5,a4
    80011e70:	639c                	ld	a5,0(a5)
    80011e72:	b34fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16911
        CASE(OP_get_arg3): *sp++ = JS_DupValue(ctx, arg_buf[3]); BREAK;
    80011e76:	77fd                	lui	a5,0xfffff
    80011e78:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011e7c:	97a2                	add	a5,a5,s0
    80011e7e:	639c                	ld	a5,0(a5)
    80011e80:	010c8993          	addi	s3,s9,16
    80011e84:	0d05                	addi	s10,s10,1
    80011e86:	7b88                	ld	a0,48(a5)
    80011e88:	77fd                	lui	a5,0xfffff
    80011e8a:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011e8e:	97a2                	add	a5,a5,s0
    80011e90:	639c                	ld	a5,0(a5)
    80011e92:	7f8c                	ld	a1,56(a5)
    80011e94:	d86f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011e98:	00acb023          	sd	a0,0(s9)
    80011e9c:	00bcb423          	sd	a1,8(s9)
    80011ea0:	fffd4b03          	lbu	s6,-1(s10)
    80011ea4:	0005d797          	auipc	a5,0x5d
    80011ea8:	f8c78793          	addi	a5,a5,-116 # 8006ee30 <dispatch_table.4>
    80011eac:	8cce                	mv	s9,s3
    80011eae:	003b1713          	slli	a4,s6,0x3
    80011eb2:	97ba                	add	a5,a5,a4
    80011eb4:	639c                	ld	a5,0(a5)
    80011eb6:	af0fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16912
        CASE(OP_put_arg0): set_value(ctx, &arg_buf[0], *--sp); BREAK;
    80011eba:	77fd                	lui	a5,0xfffff
    80011ebc:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011ec0:	97a2                	add	a5,a5,s0
    80011ec2:	638c                	ld	a1,0(a5)
    80011ec4:	ff0cb603          	ld	a2,-16(s9)
    80011ec8:	ff8cb683          	ld	a3,-8(s9)
    80011ecc:	8526                	mv	a0,s1
    80011ece:	1cc1                	addi	s9,s9,-16
    80011ed0:	d6ff90ef          	jal	ra,8000bc3e <set_value>
    80011ed4:	000d4b03          	lbu	s6,0(s10)
    80011ed8:	0005d797          	auipc	a5,0x5d
    80011edc:	f5878793          	addi	a5,a5,-168 # 8006ee30 <dispatch_table.4>
    80011ee0:	0d05                	addi	s10,s10,1
    80011ee2:	003b1713          	slli	a4,s6,0x3
    80011ee6:	97ba                	add	a5,a5,a4
    80011ee8:	639c                	ld	a5,0(a5)
    80011eea:	abcfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16913
        CASE(OP_put_arg1): set_value(ctx, &arg_buf[1], *--sp); BREAK;
    80011eee:	77fd                	lui	a5,0xfffff
    80011ef0:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011ef4:	97a2                	add	a5,a5,s0
    80011ef6:	639c                	ld	a5,0(a5)
    80011ef8:	ff0cb603          	ld	a2,-16(s9)
    80011efc:	ff8cb683          	ld	a3,-8(s9)
    80011f00:	01078593          	addi	a1,a5,16
    80011f04:	8526                	mv	a0,s1
    80011f06:	d39f90ef          	jal	ra,8000bc3e <set_value>
    80011f0a:	000d4b03          	lbu	s6,0(s10)
    80011f0e:	0005d797          	auipc	a5,0x5d
    80011f12:	f2278793          	addi	a5,a5,-222 # 8006ee30 <dispatch_table.4>
    80011f16:	1cc1                	addi	s9,s9,-16
    80011f18:	003b1713          	slli	a4,s6,0x3
    80011f1c:	97ba                	add	a5,a5,a4
    80011f1e:	639c                	ld	a5,0(a5)
    80011f20:	0d05                	addi	s10,s10,1
    80011f22:	a84fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16914
        CASE(OP_put_arg2): set_value(ctx, &arg_buf[2], *--sp); BREAK;
    80011f26:	77fd                	lui	a5,0xfffff
    80011f28:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011f2c:	97a2                	add	a5,a5,s0
    80011f2e:	639c                	ld	a5,0(a5)
    80011f30:	ff0cb603          	ld	a2,-16(s9)
    80011f34:	ff8cb683          	ld	a3,-8(s9)
    80011f38:	02078593          	addi	a1,a5,32
    80011f3c:	8526                	mv	a0,s1
    80011f3e:	d01f90ef          	jal	ra,8000bc3e <set_value>
    80011f42:	000d4b03          	lbu	s6,0(s10)
    80011f46:	0005d797          	auipc	a5,0x5d
    80011f4a:	eea78793          	addi	a5,a5,-278 # 8006ee30 <dispatch_table.4>
    80011f4e:	1cc1                	addi	s9,s9,-16
    80011f50:	003b1713          	slli	a4,s6,0x3
    80011f54:	97ba                	add	a5,a5,a4
    80011f56:	639c                	ld	a5,0(a5)
    80011f58:	0d05                	addi	s10,s10,1
    80011f5a:	a4cfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16915
        CASE(OP_put_arg3): set_value(ctx, &arg_buf[3], *--sp); BREAK;
    80011f5e:	77fd                	lui	a5,0xfffff
    80011f60:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011f64:	97a2                	add	a5,a5,s0
    80011f66:	639c                	ld	a5,0(a5)
    80011f68:	ff0cb603          	ld	a2,-16(s9)
    80011f6c:	ff8cb683          	ld	a3,-8(s9)
    80011f70:	03078593          	addi	a1,a5,48
    80011f74:	8526                	mv	a0,s1
    80011f76:	cc9f90ef          	jal	ra,8000bc3e <set_value>
    80011f7a:	000d4b03          	lbu	s6,0(s10)
    80011f7e:	0005d797          	auipc	a5,0x5d
    80011f82:	eb278793          	addi	a5,a5,-334 # 8006ee30 <dispatch_table.4>
    80011f86:	1cc1                	addi	s9,s9,-16
    80011f88:	003b1713          	slli	a4,s6,0x3
    80011f8c:	97ba                	add	a5,a5,a4
    80011f8e:	639c                	ld	a5,0(a5)
    80011f90:	0d05                	addi	s10,s10,1
    80011f92:	a14fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16916
        CASE(OP_set_arg0): set_value(ctx, &arg_buf[0], JS_DupValue(ctx, sp[-1])); BREAK;
    80011f96:	ff0cb503          	ld	a0,-16(s9)
    80011f9a:	ff8cb583          	ld	a1,-8(s9)
    80011f9e:	0d05                	addi	s10,s10,1
    80011fa0:	c7af80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011fa4:	f8040793          	addi	a5,s0,-128
    80011fa8:	97ca                	add	a5,a5,s2
    80011faa:	7ca7b823          	sd	a0,2000(a5)
    80011fae:	7cb7bc23          	sd	a1,2008(a5)
    80011fb2:	77fd                	lui	a5,0xfffff
    80011fb4:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    80011fb8:	97a2                	add	a5,a5,s0
    80011fba:	86ae                	mv	a3,a1
    80011fbc:	638c                	ld	a1,0(a5)
    80011fbe:	862a                	mv	a2,a0
    80011fc0:	8526                	mv	a0,s1
    80011fc2:	c7df90ef          	jal	ra,8000bc3e <set_value>
    80011fc6:	fffd4b03          	lbu	s6,-1(s10)
    80011fca:	0005d797          	auipc	a5,0x5d
    80011fce:	e6678793          	addi	a5,a5,-410 # 8006ee30 <dispatch_table.4>
    80011fd2:	003b1713          	slli	a4,s6,0x3
    80011fd6:	97ba                	add	a5,a5,a4
    80011fd8:	639c                	ld	a5,0(a5)
    80011fda:	9ccfd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16917
        CASE(OP_set_arg1): set_value(ctx, &arg_buf[1], JS_DupValue(ctx, sp[-1])); BREAK;
    80011fde:	ff0cb503          	ld	a0,-16(s9)
    80011fe2:	ff8cb583          	ld	a1,-8(s9)
    80011fe6:	0d05                	addi	s10,s10,1
    80011fe8:	c32f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80011fec:	f8040793          	addi	a5,s0,-128
    80011ff0:	97ca                	add	a5,a5,s2
    80011ff2:	7ea7b023          	sd	a0,2016(a5)
    80011ff6:	7eb7b423          	sd	a1,2024(a5)
    80011ffa:	77fd                	lui	a5,0xfffff
    80011ffc:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
