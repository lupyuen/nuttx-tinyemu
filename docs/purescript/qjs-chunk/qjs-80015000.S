    80014000:	eea43823          	sd	a0,-272(s0)
    80014004:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:5015
    if (flags & JS_PROP_HAS_GET) {
    80014008:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:5014
    name_str = js_get_function_name(ctx, name);
    8001400a:	862a                	mv	a2,a0
    8001400c:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:5015
    if (flags & JS_PROP_HAS_GET) {
    8001400e:	12078563          	beqz	a5,80014138 <JS_CallInternal+0x51ca>
quickjs-nuttx/quickjs.c:5016
        name_str = JS_ConcatString3(ctx, "get ", name_str, "");
    80014012:	00056717          	auipc	a4,0x56
    80014016:	b7670713          	addi	a4,a4,-1162 # 80069b88 <qjsc_repl+0x45d8>
    8001401a:	00056597          	auipc	a1,0x56
    8001401e:	dde58593          	addi	a1,a1,-546 # 80069df8 <qjsc_repl+0x4848>
quickjs-nuttx/quickjs.c:5018
        name_str = JS_ConcatString3(ctx, "set ", name_str, "");
    80014022:	8526                	mv	a0,s1
    80014024:	78c0c0ef          	jal	ra,800207b0 <JS_ConcatString3>
    80014028:	eea43823          	sd	a0,-272(s0)
    8001402c:	eeb43c23          	sd	a1,-264(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80014030:	ef843783          	ld	a5,-264(s0)
js_method_set_properties():
quickjs-nuttx/quickjs.c:5020
    if (JS_IsException(name_str))
    80014034:	4719                	li	a4,6
    80014036:	0007869b          	sext.w	a3,a5
    8001403a:	10e68d63          	beq	a3,a4,80014154 <JS_CallInternal+0x51e6>
quickjs-nuttx/quickjs.c:5022
    if (JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_name, name_str,
    8001403e:	ef043703          	ld	a4,-272(s0)
    80014042:	e9043583          	ld	a1,-368(s0)
    80014046:	e9843603          	ld	a2,-360(s0)
    8001404a:	4805                	li	a6,1
    8001404c:	03700693          	li	a3,55
    80014050:	8526                	mv	a0,s1
    80014052:	1da040ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80014056:	0e054f63          	bltz	a0,80014154 <JS_CallInternal+0x51e6>
quickjs-nuttx/quickjs.c:5025
    js_method_set_home_object(ctx, func_obj, home_obj);
    8001405a:	ed043683          	ld	a3,-304(s0)
    8001405e:	ed843703          	ld	a4,-296(s0)
    80014062:	e9043583          	ld	a1,-368(s0)
    80014066:	e9843603          	ld	a2,-360(s0)
    8001406a:	8526                	mv	a0,s1
    8001406c:	b55f70ef          	jal	ra,8000bbc0 <js_method_set_home_object>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17577
                    ret = JS_DefineProperty(ctx, obj, atom, value,
    80014070:	f8040793          	addi	a5,s0,-128
    80014074:	e84e                	sd	s3,16(sp)
    80014076:	97ca                	add	a5,a5,s2
    80014078:	7407b703          	ld	a4,1856(a5)
    8001407c:	e8043583          	ld	a1,-384(s0)
    80014080:	e8843603          	ld	a2,-376(s0)
    80014084:	e03a                	sd	a4,0(sp)
    80014086:	7487b703          	ld	a4,1864(a5)
    8001408a:	86d2                	mv	a3,s4
    8001408c:	8526                	mv	a0,s1
    8001408e:	e43a                	sd	a4,8(sp)
    80014090:	7307b803          	ld	a6,1840(a5)
    80014094:	7387b883          	ld	a7,1848(a5)
    80014098:	de043703          	ld	a4,-544(s0)
    8001409c:	de843783          	ld	a5,-536(s0)
    800140a0:	2af030ef          	jal	ra,80017b4e <JS_DefineProperty>
    800140a4:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:17580
                JS_FreeValue(ctx, sp[-1]);
    800140a6:	000b3583          	ld	a1,0(s6)
    800140aa:	008b3603          	ld	a2,8(s6)
    800140ae:	8526                	mv	a0,s1
    800140b0:	eeef70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17581
                if (is_computed) {
    800140b4:	000b8d63          	beqz	s7,800140ce <JS_CallInternal+0x5160>
quickjs-nuttx/quickjs.c:17582
                    JS_FreeAtom(ctx, atom);
    800140b8:	85d2                	mv	a1,s4
    800140ba:	8526                	mv	a0,s1
    800140bc:	88cf70ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:17583
                    JS_FreeValue(ctx, sp[-2]);
    800140c0:	fe0cb583          	ld	a1,-32(s9)
    800140c4:	fe8cb603          	ld	a2,-24(s9)
    800140c8:	8526                	mv	a0,s1
    800140ca:	ed4f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17585
                sp -= 1 + is_computed;
    800140ce:	0a85                	addi	s5,s5,1
    800140d0:	0a92                	slli	s5,s5,0x4
    800140d2:	415c8cb3          	sub	s9,s9,s5
quickjs-nuttx/quickjs.c:17586
                if (unlikely(ret < 0))
    800140d6:	0809d163          	bgez	s3,80014158 <JS_CallInternal+0x51ea>
quickjs-nuttx/quickjs.c:17554
                op_flags = *pc++;
    800140da:	0d05                	addi	s10,s10,1
    800140dc:	f22fb06f          	j	8000f7fe <JS_CallInternal+0x890>
get_u32():
quickjs-nuttx/cutils.h:170
    800140e0:	001d4503          	lbu	a0,1(s10)
    800140e4:	000d4a03          	lbu	s4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17552
                    pc += 4;
    800140e8:	0d11                	addi	s10,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    800140ea:	0522                	slli	a0,a0,0x8
    800140ec:	01456533          	or	a0,a0,s4
    800140f0:	ffed4a03          	lbu	s4,-2(s10)
    800140f4:	0a42                	slli	s4,s4,0x10
    800140f6:	00aa6533          	or	a0,s4,a0
    800140fa:	fffd4a03          	lbu	s4,-1(s10)
    800140fe:	0a62                	slli	s4,s4,0x18
    80014100:	00aa6a33          	or	s4,s4,a0
    80014104:	2a01                	sext.w	s4,s4
JS_CallInternal():
quickjs-nuttx/quickjs.c:17552
    80014106:	b58d                	j	80013f68 <JS_CallInternal+0x4ffa>
quickjs-nuttx/quickjs.c:17557
                flags = JS_PROP_HAS_CONFIGURABLE | JS_PROP_CONFIGURABLE |
    80014108:	50198993          	addi	s3,s3,1281
    8001410c:	b551                	j	80013f90 <JS_CallInternal+0x5022>
quickjs-nuttx/quickjs.c:17568
                } else if (op_flags == OP_DEFINE_METHOD_GETTER) {
    8001410e:	4605                	li	a2,1
    80014110:	00c71c63          	bne	a4,a2,80014128 <JS_CallInternal+0x51ba>
quickjs-nuttx/quickjs.c:17569
                    getter = sp[-1];
    80014114:	72d7b823          	sd	a3,1840(a5)
    80014118:	ff8cb703          	ld	a4,-8(s9)
    8001411c:	72e7bc23          	sd	a4,1848(a5)
quickjs-nuttx/quickjs.c:17570
                    flags |= JS_PROP_HAS_GET;
    80014120:	6785                	lui	a5,0x1
    80014122:	80078793          	addi	a5,a5,-2048 # 800 <asinh-0x7ffff800>
    80014126:	b55d                	j	80013fcc <JS_CallInternal+0x505e>
quickjs-nuttx/quickjs.c:17572
                    setter = sp[-1];
    80014128:	74d7b023          	sd	a3,1856(a5)
    8001412c:	ff8cb703          	ld	a4,-8(s9)
    80014130:	74e7b423          	sd	a4,1864(a5)
quickjs-nuttx/quickjs.c:17573
                    flags |= JS_PROP_HAS_SET;
    80014134:	6785                	lui	a5,0x1
    80014136:	bd59                	j	80013fcc <JS_CallInternal+0x505e>
js_method_set_properties():
quickjs-nuttx/quickjs.c:5017
    } else if (flags & JS_PROP_HAS_SET) {
    80014138:	00c9d793          	srli	a5,s3,0xc
    8001413c:	8b85                	andi	a5,a5,1
    8001413e:	ee0789e3          	beqz	a5,80014030 <JS_CallInternal+0x50c2>
quickjs-nuttx/quickjs.c:5018
        name_str = JS_ConcatString3(ctx, "set ", name_str, "");
    80014142:	00056717          	auipc	a4,0x56
    80014146:	a4670713          	addi	a4,a4,-1466 # 80069b88 <qjsc_repl+0x45d8>
    8001414a:	00056597          	auipc	a1,0x56
    8001414e:	cb658593          	addi	a1,a1,-842 # 80069e00 <qjsc_repl+0x4850>
    80014152:	bdc1                	j	80014022 <JS_CallInternal+0x50b4>
quickjs-nuttx/quickjs.c:5024
        return -1;
    80014154:	59fd                	li	s3,-1
    80014156:	bf81                	j	800140a6 <JS_CallInternal+0x5138>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17589
            BREAK;
    80014158:	001d4b03          	lbu	s6,1(s10)
    8001415c:	0005b797          	auipc	a5,0x5b
    80014160:	cd478793          	addi	a5,a5,-812 # 8006ee30 <dispatch_table.4>
    80014164:	0d09                	addi	s10,s10,2
    80014166:	003b1713          	slli	a4,s6,0x3
    8001416a:	97ba                	add	a5,a5,a4
    8001416c:	639c                	ld	a5,0(a5)
    8001416e:	838fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    80014172:	001d4703          	lbu	a4,1(s10)
    80014176:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17599
                pc += 5;
    8001417a:	76fd                	lui	a3,0xfffff
get_u32():
quickjs-nuttx/cutils.h:170
    8001417c:	0722                	slli	a4,a4,0x8
    8001417e:	8f5d                	or	a4,a4,a5
    80014180:	002d4783          	lbu	a5,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17599
    80014184:	5e868693          	addi	a3,a3,1512 # fffffffffffff5e8 <_ebss+0xffffffff7fefe482>
    80014188:	96a2                	add	a3,a3,s0
get_u32():
quickjs-nuttx/cutils.h:170
    8001418a:	07c2                	slli	a5,a5,0x10
    8001418c:	8f5d                	or	a4,a4,a5
    8001418e:	003d4783          	lbu	a5,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17600
                if (js_op_define_class(ctx, sp, atom, class_flags,
    80014192:	fa9b0993          	addi	s3,s6,-87
js_op_define_class():
quickjs-nuttx/quickjs.c:15716
    bfunc = sp[-1];
    80014196:	767d                	lui	a2,0xfffff
get_u32():
quickjs-nuttx/cutils.h:170
    80014198:	07e2                	slli	a5,a5,0x18
    8001419a:	8fd9                	or	a5,a5,a4
    8001419c:	777d                	lui	a4,0xfffff
    8001419e:	5e070713          	addi	a4,a4,1504 # fffffffffffff5e0 <_ebss+0xffffffff7fefe47a>
    800141a2:	2781                	sext.w	a5,a5
    800141a4:	9722                	add	a4,a4,s0
    800141a6:	e31c                	sd	a5,0(a4)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17599
                pc += 5;
    800141a8:	005d0793          	addi	a5,s10,5
    800141ac:	e29c                	sd	a5,0(a3)
quickjs-nuttx/quickjs.c:17600
                if (js_op_define_class(ctx, sp, atom, class_flags,
    800141ae:	76fd                	lui	a3,0xfffff
    800141b0:	5f068693          	addi	a3,a3,1520 # fffffffffffff5f0 <_ebss+0xffffffff7fefe48a>
quickjs-nuttx/quickjs.c:17598
                class_flags = pc[4];
    800141b4:	004d4703          	lbu	a4,4(s10)
quickjs-nuttx/quickjs.c:17600
                if (js_op_define_class(ctx, sp, atom, class_flags,
    800141b8:	0019b793          	seqz	a5,s3
js_op_define_class():
quickjs-nuttx/quickjs.c:15711
    JSValue bfunc, parent_class, proto = JS_UNDEFINED;
    800141bc:	e8043823          	sd	zero,-368(s0)
    800141c0:	e8043c23          	sd	zero,-360(s0)
quickjs-nuttx/quickjs.c:15712
    JSValue ctor = JS_UNDEFINED, parent_proto = JS_UNDEFINED;
    800141c4:	ec043823          	sd	zero,-304(s0)
    800141c8:	ec043c23          	sd	zero,-296(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17600
                if (js_op_define_class(ctx, sp, atom, class_flags,
    800141cc:	96a2                	add	a3,a3,s0
    800141ce:	e29c                	sd	a5,0(a3)
js_op_define_class():
quickjs-nuttx/quickjs.c:15716
    bfunc = sp[-1];
    800141d0:	ff0cb683          	ld	a3,-16(s9)
quickjs-nuttx/quickjs.c:15715
    parent_class = sp[-2];
    800141d4:	fe0cb783          	ld	a5,-32(s9)
    800141d8:	fe8cb983          	ld	s3,-24(s9)
quickjs-nuttx/quickjs.c:15716
    bfunc = sp[-1];
    800141dc:	e8d43023          	sd	a3,-384(s0)
    800141e0:	ff8cb683          	ld	a3,-8(s9)
    800141e4:	63060613          	addi	a2,a2,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    800141e8:	9622                	add	a2,a2,s0
    800141ea:	e8d43423          	sd	a3,-376(s0)
    800141ee:	ff0cb683          	ld	a3,-16(s9)
quickjs-nuttx/quickjs.c:15715
    parent_class = sp[-2];
    800141f2:	d6f43823          	sd	a5,-656(s0)
    800141f6:	d7343c23          	sd	s3,-648(s0)
quickjs-nuttx/quickjs.c:15716
    bfunc = sp[-1];
    800141fa:	e214                	sd	a3,0(a2)
quickjs-nuttx/quickjs.c:15718
    if (class_flags & JS_DEFINE_CLASS_HAS_HERITAGE) {
    800141fc:	8b05                	andi	a4,a4,1
quickjs-nuttx/quickjs.c:15715
    parent_class = sp[-2];
    800141fe:	8abe                	mv	s5,a5
quickjs-nuttx/quickjs.c:15718
    if (class_flags & JS_DEFINE_CLASS_HAS_HERITAGE) {
    80014200:	16070763          	beqz	a4,8001436e <JS_CallInternal+0x5400>
JS_IsNull():
quickjs-nuttx/quickjs.h:600
    return JS_VALUE_GET_TAG(v) == JS_TAG_NULL;
    80014204:	00098b1b          	sext.w	s6,s3
js_op_define_class():
quickjs-nuttx/quickjs.c:15719
        if (JS_IsNull(parent_class)) {
    80014208:	4b89                	li	s7,2
    8001420a:	077b1463          	bne	s6,s7,80014272 <JS_CallInternal+0x5304>
quickjs-nuttx/quickjs.c:15721
            parent_class = JS_DupValue(ctx, ctx->function_proto);
    8001420e:	64a8                	ld	a0,72(s1)
    80014210:	68ac                	ld	a1,80(s1)
quickjs-nuttx/quickjs.c:15720
            parent_proto = JS_NULL;
    80014212:	4a09                	li	s4,2
quickjs-nuttx/quickjs.c:15721
            parent_class = JS_DupValue(ctx, ctx->function_proto);
    80014214:	a06f60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80014218:	8aaa                	mv	s5,a0
    8001421a:	89ae                	mv	s3,a1
    8001421c:	d6a43823          	sd	a0,-656(s0)
    80014220:	d6b43c23          	sd	a1,-648(s0)
quickjs-nuttx/quickjs.c:15740
    proto = JS_NewObjectProto(ctx, parent_proto);
    80014224:	ed043583          	ld	a1,-304(s0)
    80014228:	8652                	mv	a2,s4
    8001422a:	8526                	mv	a0,s1
    8001422c:	ed443c23          	sd	s4,-296(s0)
    80014230:	59b070ef          	jal	ra,8001bfca <JS_NewObjectProto>
    80014234:	e8a43823          	sd	a0,-368(s0)
    80014238:	e8b43c23          	sd	a1,-360(s0)
quickjs-nuttx/quickjs.c:15741
    if (JS_IsException(proto))
    8001423c:	0005879b          	sext.w	a5,a1
    80014240:	4819                	li	a6,6
quickjs-nuttx/quickjs.c:15740
    proto = JS_NewObjectProto(ctx, parent_proto);
    80014242:	8c2e                	mv	s8,a1
quickjs-nuttx/quickjs.c:15741
    if (JS_IsException(proto))
    80014244:	37078963          	beq	a5,a6,800145b6 <JS_CallInternal+0x5648>
quickjs-nuttx/quickjs.c:15745
    assert(b->func_kind == JS_FUNC_NORMAL);
    80014248:	77fd                	lui	a5,0xfffff
    8001424a:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    8001424e:	97a2                	add	a5,a5,s0
    80014250:	639c                	ld	a5,0(a5)
    80014252:	0197c783          	lbu	a5,25(a5)
    80014256:	0307f793          	andi	a5,a5,48
    8001425a:	12078f63          	beqz	a5,80014398 <JS_CallInternal+0x542a>
    8001425e:	6591                	lui	a1,0x4
    80014260:	4601                	li	a2,0
    80014262:	d8158593          	addi	a1,a1,-639 # 3d81 <asinh-0x7fffc27f>
    80014266:	00055517          	auipc	a0,0x55
    8001426a:	33250513          	addi	a0,a0,818 # 80069598 <qjsc_repl+0x3fe8>
    8001426e:	6ee4c0ef          	jal	ra,8006095c <__assert>
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80014272:	577d                	li	a4,-1
    80014274:	00eb1663          	bne	s6,a4,80014280 <JS_CallInternal+0x5312>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    80014278:	639c                	ld	a5,0(a5)
    8001427a:	93b1                	srli	a5,a5,0x2c
js_op_define_class():
quickjs-nuttx/quickjs.c:15723
            if (!JS_IsConstructor(ctx, parent_class)) {
    8001427c:	8b85                	andi	a5,a5,1
    8001427e:	e3c5                	bnez	a5,8001431e <JS_CallInternal+0x53b0>
quickjs-nuttx/quickjs.c:15724
                JS_ThrowTypeError(ctx, "parent class must be constructor");
    80014280:	00056597          	auipc	a1,0x56
    80014284:	b8858593          	addi	a1,a1,-1144 # 80069e08 <qjsc_repl+0x4858>
    80014288:	8526                	mv	a0,s1
    8001428a:	3e2040ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:15712
    JSValue ctor = JS_UNDEFINED, parent_proto = JS_UNDEFINED;
    8001428e:	4a0d                	li	s4,3
    80014290:	4b8d                	li	s7,3
    80014292:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:15711
    JSValue bfunc, parent_class, proto = JS_UNDEFINED;
    80014294:	4c0d                	li	s8,3
quickjs-nuttx/quickjs.c:15791
    JS_FreeValue(ctx, parent_class);
    80014296:	85d6                	mv	a1,s5
    80014298:	864e                	mv	a2,s3
    8001429a:	8526                	mv	a0,s1
    8001429c:	d7543823          	sd	s5,-656(s0)
    800142a0:	d7343c23          	sd	s3,-648(s0)
    800142a4:	cfaf70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15792
    JS_FreeValue(ctx, parent_proto);
    800142a8:	ed043583          	ld	a1,-304(s0)
    800142ac:	8652                	mv	a2,s4
    800142ae:	8526                	mv	a0,s1
    800142b0:	ed443c23          	sd	s4,-296(s0)
    800142b4:	ceaf70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15793
    JS_FreeValue(ctx, bfunc);
    800142b8:	77fd                	lui	a5,0xfffff
    800142ba:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    800142be:	97a2                	add	a5,a5,s0
    800142c0:	639c                	ld	a5,0(a5)
    800142c2:	e8843603          	ld	a2,-376(s0)
    800142c6:	8526                	mv	a0,s1
    800142c8:	e8f43023          	sd	a5,-384(s0)
    800142cc:	77fd                	lui	a5,0xfffff
    800142ce:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    800142d2:	97a2                	add	a5,a5,s0
    800142d4:	638c                	ld	a1,0(a5)
    800142d6:	cc8f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15794
    JS_FreeValue(ctx, proto);
    800142da:	e9043583          	ld	a1,-368(s0)
    800142de:	8662                	mv	a2,s8
    800142e0:	8526                	mv	a0,s1
    800142e2:	e9843c23          	sd	s8,-360(s0)
    800142e6:	cb8f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15795
    JS_FreeValue(ctx, ctor);
    800142ea:	85da                	mv	a1,s6
    800142ec:	865e                	mv	a2,s7
    800142ee:	8526                	mv	a0,s1
    800142f0:	d9643023          	sd	s6,-640(s0)
    800142f4:	d9743423          	sd	s7,-632(s0)
    800142f8:	ca6f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15796
    sp[-2] = JS_UNDEFINED;
    800142fc:	478d                	li	a5,3
    800142fe:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:15797
    sp[-1] = JS_UNDEFINED;
    80014302:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:15798
    return -1;
    80014306:	77fd                	lui	a5,0xfffff
    80014308:	5e878793          	addi	a5,a5,1512 # fffffffffffff5e8 <_ebss+0xffffffff7fefe482>
    8001430c:	97a2                	add	a5,a5,s0
    8001430e:	0007bd03          	ld	s10,0(a5)
quickjs-nuttx/quickjs.c:15796
    sp[-2] = JS_UNDEFINED;
    80014312:	fe0cb023          	sd	zero,-32(s9)
quickjs-nuttx/quickjs.c:15797
    sp[-1] = JS_UNDEFINED;
    80014316:	fe0cb823          	sd	zero,-16(s9)
    8001431a:	ce4fb06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001431e:	8756                	mv	a4,s5
    80014320:	87ce                	mv	a5,s3
    80014322:	4801                	li	a6,0
    80014324:	03c00693          	li	a3,60
    80014328:	85d6                	mv	a1,s5
    8001432a:	864e                	mv	a2,s3
    8001432c:	8526                	mv	a0,s1
    8001432e:	ef543823          	sd	s5,-272(s0)
    80014332:	ef343c23          	sd	s3,-264(s0)
    80014336:	774020ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001433a:	daa43023          	sd	a0,-608(s0)
    8001433e:	dab43423          	sd	a1,-600(s0)
    80014342:	eca43823          	sd	a0,-304(s0)
    80014346:	ecb43c23          	sd	a1,-296(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001434a:	0005879b          	sext.w	a5,a1
js_op_define_class():
quickjs-nuttx/quickjs.c:15728
            if (JS_IsException(parent_proto))
    8001434e:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80014350:	8a2e                	mv	s4,a1
js_op_define_class():
quickjs-nuttx/quickjs.c:15728
    80014352:	f2e78fe3          	beq	a5,a4,80014290 <JS_CallInternal+0x5322>
quickjs-nuttx/quickjs.c:15730
            if (!JS_IsNull(parent_proto) && !JS_IsObject(parent_proto)) {
    80014356:	ed7787e3          	beq	a5,s7,80014224 <JS_CallInternal+0x52b6>
    8001435a:	ed6785e3          	beq	a5,s6,80014224 <JS_CallInternal+0x52b6>
quickjs-nuttx/quickjs.c:15731
                JS_ThrowTypeError(ctx, "parent prototype must be an object or null");
    8001435e:	8526                	mv	a0,s1
    80014360:	00056597          	auipc	a1,0x56
    80014364:	ad058593          	addi	a1,a1,-1328 # 80069e30 <qjsc_repl+0x4880>
    80014368:	304040ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:15732
                goto fail;
    8001436c:	b715                	j	80014290 <JS_CallInternal+0x5322>
quickjs-nuttx/quickjs.c:15737
        parent_proto = JS_DupValue(ctx, ctx->class_proto[JS_CLASS_OBJECT]);
    8001436e:	60bc                	ld	a5,64(s1)
    80014370:	6b88                	ld	a0,16(a5)
    80014372:	6f8c                	ld	a1,24(a5)
    80014374:	8a6f60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80014378:	eca43823          	sd	a0,-304(s0)
    8001437c:	ecb43c23          	sd	a1,-296(s0)
quickjs-nuttx/quickjs.c:15738
        parent_class = JS_DupValue(ctx, ctx->function_proto);
    80014380:	64a8                	ld	a0,72(s1)
quickjs-nuttx/quickjs.c:15737
        parent_proto = JS_DupValue(ctx, ctx->class_proto[JS_CLASS_OBJECT]);
    80014382:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:15738
        parent_class = JS_DupValue(ctx, ctx->function_proto);
    80014384:	68ac                	ld	a1,80(s1)
    80014386:	894f60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001438a:	8aaa                	mv	s5,a0
    8001438c:	89ae                	mv	s3,a1
    8001438e:	d6a43823          	sd	a0,-656(s0)
    80014392:	d6b43c23          	sd	a1,-648(s0)
    80014396:	b579                	j	80014224 <JS_CallInternal+0x52b6>
quickjs-nuttx/quickjs.c:15746
    ctor = JS_NewObjectProtoClass(ctx, parent_class,
    80014398:	46b5                	li	a3,13
    8001439a:	85d6                	mv	a1,s5
    8001439c:	864e                	mv	a2,s3
    8001439e:	8526                	mv	a0,s1
    800143a0:	d7543823          	sd	s5,-656(s0)
    800143a4:	d7343c23          	sd	s3,-648(s0)
    800143a8:	03d070ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
quickjs-nuttx/quickjs.c:15748
    if (JS_IsException(ctor))
    800143ac:	0005879b          	sext.w	a5,a1
    800143b0:	4819                	li	a6,6
quickjs-nuttx/quickjs.c:15746
    ctor = JS_NewObjectProtoClass(ctx, parent_class,
    800143b2:	8b2a                	mv	s6,a0
    800143b4:	8bae                	mv	s7,a1
quickjs-nuttx/quickjs.c:15748
    if (JS_IsException(ctor))
    800143b6:	ef0780e3          	beq	a5,a6,80014296 <JS_CallInternal+0x5328>
quickjs-nuttx/quickjs.c:15750
    ctor = js_closure2(ctx, ctor, b, cur_var_refs, sf);
    800143ba:	77fd                	lui	a5,0xfffff
    800143bc:	777d                	lui	a4,0xfffff
    800143be:	76fd                	lui	a3,0xfffff
    800143c0:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    800143c4:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800143c8:	63068693          	addi	a3,a3,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    800143cc:	97a2                	add	a5,a5,s0
    800143ce:	9722                	add	a4,a4,s0
    800143d0:	96a2                	add	a3,a3,s0
    800143d2:	639c                	ld	a5,0(a5)
    800143d4:	6318                	ld	a4,0(a4)
    800143d6:	6294                	ld	a3,0(a3)
    800143d8:	85aa                	mv	a1,a0
    800143da:	865e                	mv	a2,s7
    800143dc:	8526                	mv	a0,s1
    800143de:	6d3060ef          	jal	ra,8001b2b0 <js_closure2>
    800143e2:	77fd                	lui	a5,0xfffff
    800143e4:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    800143e8:	97a2                	add	a5,a5,s0
    800143ea:	e388                	sd	a0,0(a5)
    800143ec:	77fd                	lui	a5,0xfffff
    800143ee:	61078793          	addi	a5,a5,1552 # fffffffffffff610 <_ebss+0xffffffff7fefe4aa>
    800143f2:	97a2                	add	a5,a5,s0
    800143f4:	e38c                	sd	a1,0(a5)
quickjs-nuttx/quickjs.c:15751
    bfunc = JS_UNDEFINED;
    800143f6:	478d                	li	a5,3
    800143f8:	e8f43423          	sd	a5,-376(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800143fc:	77fd                	lui	a5,0xfffff
    800143fe:	61078793          	addi	a5,a5,1552 # fffffffffffff610 <_ebss+0xffffffff7fefe4aa>
    80014402:	97a2                	add	a5,a5,s0
    80014404:	439c                	lw	a5,0(a5)
js_op_define_class():
quickjs-nuttx/quickjs.c:15752
    if (JS_IsException(ctor))
    80014406:	777d                	lui	a4,0xfffff
    80014408:	5d070713          	addi	a4,a4,1488 # fffffffffffff5d0 <_ebss+0xffffffff7fefe46a>
    8001440c:	9722                	add	a4,a4,s0
quickjs-nuttx/quickjs.c:15750
    ctor = js_closure2(ctx, ctor, b, cur_var_refs, sf);
    8001440e:	d8a43023          	sd	a0,-640(s0)
    80014412:	d8b43423          	sd	a1,-632(s0)
quickjs-nuttx/quickjs.c:15751
    bfunc = JS_UNDEFINED;
    80014416:	e8043023          	sd	zero,-384(s0)
quickjs-nuttx/quickjs.c:15752
    if (JS_IsException(ctor))
    8001441a:	e31c                	sd	a5,0(a4)
    8001441c:	4819                	li	a6,6
quickjs-nuttx/quickjs.c:15750
    ctor = js_closure2(ctx, ctor, b, cur_var_refs, sf);
    8001441e:	8b2a                	mv	s6,a0
    80014420:	8bae                	mv	s7,a1
quickjs-nuttx/quickjs.c:15752
    if (JS_IsException(ctor))
    80014422:	0d078d63          	beq	a5,a6,800144fc <JS_CallInternal+0x558e>
quickjs-nuttx/quickjs.c:15754
    js_method_set_home_object(ctx, ctor, proto);
    80014426:	e9843703          	ld	a4,-360(s0)
    8001442a:	e9043683          	ld	a3,-368(s0)
    8001442e:	85aa                	mv	a1,a0
    80014430:	865e                	mv	a2,s7
    80014432:	8526                	mv	a0,s1
    80014434:	f8cf70ef          	jal	ra,8000bbc0 <js_method_set_home_object>
JS_SetConstructorBit():
quickjs-nuttx/quickjs.c:9765
    if (JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)
    80014438:	77fd                	lui	a5,0xfffff
    8001443a:	5d078793          	addi	a5,a5,1488 # fffffffffffff5d0 <_ebss+0xffffffff7fefe46a>
    8001443e:	97a2                	add	a5,a5,s0
    80014440:	639c                	ld	a5,0(a5)
    80014442:	577d                	li	a4,-1
    80014444:	02e79263          	bne	a5,a4,80014468 <JS_CallInternal+0x54fa>
quickjs-nuttx/quickjs.c:9768
    p->is_constructor = val;
    80014448:	77fd                	lui	a5,0xfffff
    8001444a:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    8001444e:	97a2                	add	a5,a5,s0
    80014450:	639c                	ld	a5,0(a5)
    80014452:	777d                	lui	a4,0xfffff
    80014454:	61870713          	addi	a4,a4,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    80014458:	0057c783          	lbu	a5,5(a5)
    8001445c:	9722                	add	a4,a4,s0
    8001445e:	6318                	ld	a4,0(a4)
    80014460:	0107e793          	ori	a5,a5,16
    80014464:	00f702a3          	sb	a5,5(a4)
js_op_define_class():
quickjs-nuttx/quickjs.c:15757
    JS_DefinePropertyValue(ctx, ctor, JS_ATOM_length,
    80014468:	77fd                	lui	a5,0xfffff
    8001446a:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    8001446e:	97a2                	add	a5,a5,s0
    80014470:	639c                	ld	a5,0(a5)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80014472:	d8043823          	sd	zero,-624(s0)
js_op_define_class():
quickjs-nuttx/quickjs.c:15757
    80014476:	d8043583          	ld	a1,-640(s0)
    8001447a:	0447d783          	lhu	a5,68(a5)
    8001447e:	d8843603          	ld	a2,-632(s0)
    80014482:	4805                	li	a6,1
    80014484:	d8f42823          	sw	a5,-624(s0)
    80014488:	d9043703          	ld	a4,-624(s0)
    8001448c:	4781                	li	a5,0
    8001448e:	03000693          	li	a3,48
    80014492:	8526                	mv	a0,s1
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80014494:	d8043c23          	sd	zero,-616(s0)
    80014498:	dce43823          	sd	a4,-560(s0)
    8001449c:	dc043c23          	sd	zero,-552(s0)
js_op_define_class():
quickjs-nuttx/quickjs.c:15757
    800144a0:	58d030ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:15761
    if (is_computed_name) {
    800144a4:	77fd                	lui	a5,0xfffff
    800144a6:	5f078793          	addi	a5,a5,1520 # fffffffffffff5f0 <_ebss+0xffffffff7fefe48a>
    800144aa:	97a2                	add	a5,a5,s0
    800144ac:	639c                	ld	a5,0(a5)
    800144ae:	cfb1                	beqz	a5,8001450a <JS_CallInternal+0x559c>
quickjs-nuttx/quickjs.c:15762
        if (JS_DefineObjectNameComputed(ctx, ctor, sp[-3],
    800144b0:	fd0cb683          	ld	a3,-48(s9)
    800144b4:	fd8cb703          	ld	a4,-40(s9)
    800144b8:	d8043583          	ld	a1,-640(s0)
    800144bc:	d8843603          	ld	a2,-632(s0)
    800144c0:	8526                	mv	a0,s1
    800144c2:	308230ef          	jal	ra,800377ca <JS_DefineObjectNameComputed.constprop.0>
quickjs-nuttx/quickjs.c:15766
        if (JS_DefineObjectName(ctx, ctor, class_name, JS_PROP_CONFIGURABLE) < 0)
    800144c6:	02054b63          	bltz	a0,800144fc <JS_CallInternal+0x558e>
quickjs-nuttx/quickjs.c:15772
    if (JS_DefinePropertyValue(ctx, proto, JS_ATOM_constructor,
    800144ca:	d8043503          	ld	a0,-640(s0)
    800144ce:	d8843583          	ld	a1,-632(s0)
    800144d2:	f49f50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800144d6:	87ae                	mv	a5,a1
    800144d8:	dcb43423          	sd	a1,-568(s0)
    800144dc:	e9843603          	ld	a2,-360(s0)
    800144e0:	e9043583          	ld	a1,-368(s0)
    800144e4:	6811                	lui	a6,0x4
    800144e6:	872a                	mv	a4,a0
    800144e8:	dca43023          	sd	a0,-576(s0)
    800144ec:	080d                	addi	a6,a6,3
    800144ee:	03d00693          	li	a3,61
    800144f2:	8526                	mv	a0,s1
    800144f4:	539030ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800144f8:	02055663          	bgez	a0,80014524 <JS_CallInternal+0x55b6>
quickjs-nuttx/quickjs.c:15751
    bfunc = JS_UNDEFINED;
    800144fc:	77fd                	lui	a5,0xfffff
    800144fe:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80014502:	97a2                	add	a5,a5,s0
    80014504:	0007b023          	sd	zero,0(a5)
    80014508:	b379                	j	80014296 <JS_CallInternal+0x5328>
quickjs-nuttx/quickjs.c:15766
        if (JS_DefineObjectName(ctx, ctor, class_name, JS_PROP_CONFIGURABLE) < 0)
    8001450a:	77fd                	lui	a5,0xfffff
    8001450c:	5e078793          	addi	a5,a5,1504 # fffffffffffff5e0 <_ebss+0xffffffff7fefe47a>
    80014510:	97a2                	add	a5,a5,s0
    80014512:	6394                	ld	a3,0(a5)
    80014514:	d8043583          	ld	a1,-640(s0)
    80014518:	d8843603          	ld	a2,-632(s0)
    8001451c:	8526                	mv	a0,s1
    8001451e:	256230ef          	jal	ra,80037774 <JS_DefineObjectName.constprop.0>
    80014522:	b755                	j	800144c6 <JS_CallInternal+0x5558>
quickjs-nuttx/quickjs.c:15778
    if (JS_DefinePropertyValue(ctx, ctor, JS_ATOM_prototype,
    80014524:	e9043503          	ld	a0,-368(s0)
    80014528:	e9843583          	ld	a1,-360(s0)
    8001452c:	eeff50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80014530:	87ae                	mv	a5,a1
    80014532:	dab43c23          	sd	a1,-584(s0)
    80014536:	d8843603          	ld	a2,-632(s0)
    8001453a:	d8043583          	ld	a1,-640(s0)
    8001453e:	872a                	mv	a4,a0
    80014540:	daa43823          	sd	a0,-592(s0)
    80014544:	6811                	lui	a6,0x4
    80014546:	03c00693          	li	a3,60
    8001454a:	8526                	mv	a0,s1
    8001454c:	4e1030ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80014550:	fa0546e3          	bltz	a0,800144fc <JS_CallInternal+0x558e>
quickjs-nuttx/quickjs.c:15784
    JS_FreeValue(ctx, parent_proto);
    80014554:	ed043583          	ld	a1,-304(s0)
    80014558:	ed843603          	ld	a2,-296(s0)
    8001455c:	8526                	mv	a0,s1
JS_CallInternal():
quickjs-nuttx/quickjs.c:17605
            BREAK;
    8001455e:	0d19                	addi	s10,s10,6
js_op_define_class():
quickjs-nuttx/quickjs.c:15784
    JS_FreeValue(ctx, parent_proto);
    80014560:	a3ef70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15785
    JS_FreeValue(ctx, parent_class);
    80014564:	d7043583          	ld	a1,-656(s0)
    80014568:	d7843603          	ld	a2,-648(s0)
    8001456c:	8526                	mv	a0,s1
    8001456e:	a30f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15787
    sp[-2] = ctor;
    80014572:	77fd                	lui	a5,0xfffff
    80014574:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    80014578:	97a2                	add	a5,a5,s0
    8001457a:	639c                	ld	a5,0(a5)
    8001457c:	fefcb023          	sd	a5,-32(s9)
    80014580:	77fd                	lui	a5,0xfffff
    80014582:	61078793          	addi	a5,a5,1552 # fffffffffffff610 <_ebss+0xffffffff7fefe4aa>
    80014586:	97a2                	add	a5,a5,s0
    80014588:	639c                	ld	a5,0(a5)
    8001458a:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:15788
    sp[-1] = proto;
    8001458e:	e9043783          	ld	a5,-368(s0)
    80014592:	fefcb823          	sd	a5,-16(s9)
    80014596:	e9843783          	ld	a5,-360(s0)
    8001459a:	fefcbc23          	sd	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17605
            BREAK;
    8001459e:	fffd4b03          	lbu	s6,-1(s10)
    800145a2:	0005b797          	auipc	a5,0x5b
    800145a6:	88e78793          	addi	a5,a5,-1906 # 8006ee30 <dispatch_table.4>
    800145aa:	003b1713          	slli	a4,s6,0x3
    800145ae:	97ba                	add	a5,a5,a4
    800145b0:	639c                	ld	a5,0(a5)
    800145b2:	bf5fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_op_define_class():
quickjs-nuttx/quickjs.c:15712
    JSValue ctor = JS_UNDEFINED, parent_proto = JS_UNDEFINED;
    800145b6:	4b8d                	li	s7,3
    800145b8:	4b01                	li	s6,0
    800145ba:	b9f1                	j	80014296 <JS_CallInternal+0x5328>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17611
                val = JS_GetPropertyValue(ctx, sp[-2], sp[-1]);
    800145bc:	ff8cb703          	ld	a4,-8(s9)
    800145c0:	ff0cb683          	ld	a3,-16(s9)
    800145c4:	fe8cb603          	ld	a2,-24(s9)
    800145c8:	fe0cb583          	ld	a1,-32(s9)
    800145cc:	8526                	mv	a0,s1
    800145ce:	ff0c8993          	addi	s3,s9,-16
    800145d2:	13f020ef          	jal	ra,80016f10 <JS_GetPropertyValue>
    800145d6:	eea43823          	sd	a0,-272(s0)
    800145da:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:17612
                JS_FreeValue(ctx, sp[-2]);
    800145de:	fe0cb583          	ld	a1,-32(s9)
    800145e2:	fe8cb603          	ld	a2,-24(s9)
    800145e6:	8526                	mv	a0,s1
    800145e8:	9b6f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17613
                sp[-2] = val;
    800145ec:	ef043783          	ld	a5,-272(s0)
    800145f0:	fefcb023          	sd	a5,-32(s9)
    800145f4:	ef843783          	ld	a5,-264(s0)
    800145f8:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:17615
                if (unlikely(JS_IsException(val)))
    800145fc:	ef842703          	lw	a4,-264(s0)
    80014600:	4799                	li	a5,6
    80014602:	00f71563          	bne	a4,a5,8001460c <JS_CallInternal+0x569e>
quickjs-nuttx/quickjs.c:17611
                val = JS_GetPropertyValue(ctx, sp[-2], sp[-1]);
    80014606:	8cce                	mv	s9,s3
    80014608:	9f6fb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17618
            BREAK;
    8001460c:	000d4b03          	lbu	s6,0(s10)
    80014610:	0005b797          	auipc	a5,0x5b
    80014614:	82078793          	addi	a5,a5,-2016 # 8006ee30 <dispatch_table.4>
    80014618:	8cce                	mv	s9,s3
    8001461a:	003b1713          	slli	a4,s6,0x3
    8001461e:	97ba                	add	a5,a5,a4
    80014620:	639c                	ld	a5,0(a5)
    80014622:	0d05                	addi	s10,s10,1
    80014624:	b83fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17624
                val = JS_GetPropertyValue(ctx, sp[-2], sp[-1]);
    80014628:	ff8cb703          	ld	a4,-8(s9)
    8001462c:	ff0cb683          	ld	a3,-16(s9)
    80014630:	fe0cb583          	ld	a1,-32(s9)
    80014634:	fe8cb603          	ld	a2,-24(s9)
    80014638:	8526                	mv	a0,s1
    8001463a:	0d7020ef          	jal	ra,80016f10 <JS_GetPropertyValue>
    8001463e:	eeb43c23          	sd	a1,-264(s0)
    80014642:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:17625
                sp[-1] = val;
    80014646:	feacb823          	sd	a0,-16(s9)
    8001464a:	ef843783          	ld	a5,-264(s0)
    8001464e:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17626
                if (unlikely(JS_IsException(val)))
    80014652:	ef842703          	lw	a4,-264(s0)
    80014656:	4799                	li	a5,6
    80014658:	00f71463          	bne	a4,a5,80014660 <JS_CallInternal+0x56f2>
    8001465c:	9a2fb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17629
            BREAK;
    80014660:	000d4b03          	lbu	s6,0(s10)
    80014664:	0005a797          	auipc	a5,0x5a
    80014668:	7cc78793          	addi	a5,a5,1996 # 8006ee30 <dispatch_table.4>
    8001466c:	0d05                	addi	s10,s10,1
    8001466e:	003b1713          	slli	a4,s6,0x3
    80014672:	97ba                	add	a5,a5,a4
    80014674:	639c                	ld	a5,0(a5)
    80014676:	b31fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17634
                if (unlikely(JS_IsUndefined(sp[-2]))) {
    8001467a:	fe8ca703          	lw	a4,-24(s9)
    8001467e:	478d                	li	a5,3
    80014680:	02f71963          	bne	a4,a5,800146b2 <JS_CallInternal+0x5744>
quickjs-nuttx/quickjs.c:17635
                    JSAtom atom = JS_ValueToAtom(ctx, sp[-1]);
    80014684:	ff0cb583          	ld	a1,-16(s9)
    80014688:	ff8cb603          	ld	a2,-8(s9)
    8001468c:	8526                	mv	a0,s1
    8001468e:	184140ef          	jal	ra,80028812 <JS_ValueToAtom>
    80014692:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:17636
                    if (atom != JS_ATOM_NULL) {
    80014696:	00091463          	bnez	s2,8001469e <JS_CallInternal+0x5730>
    8001469a:	964fb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17637
                        JS_ThrowReferenceErrorNotDefined(ctx, atom);
    8001469e:	85ca                	mv	a1,s2
    800146a0:	8526                	mv	a0,s1
    800146a2:	204050ef          	jal	ra,800198a6 <JS_ThrowReferenceErrorNotDefined>
quickjs-nuttx/quickjs.c:17638
                        JS_FreeAtom(ctx, atom);
    800146a6:	85ca                	mv	a1,s2
    800146a8:	8526                	mv	a0,s1
    800146aa:	a9ff60ef          	jal	ra,8000b148 <JS_FreeAtom>
    800146ae:	950fb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17642
                val = JS_GetPropertyValue(ctx, sp[-2],
    800146b2:	ff0cb503          	ld	a0,-16(s9)
    800146b6:	ff8cb583          	ld	a1,-8(s9)
    800146ba:	d61f50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800146be:	767d                	lui	a2,0xfffff
    800146c0:	7e060793          	addi	a5,a2,2016 # fffffffffffff7e0 <_ebss+0xffffffff7fefe67a>
    800146c4:	97a2                	add	a5,a5,s0
    800146c6:	e388                	sd	a0,0(a5)
    800146c8:	7e860793          	addi	a5,a2,2024
    800146cc:	97a2                	add	a5,a5,s0
    800146ce:	e38c                	sd	a1,0(a5)
    800146d0:	872e                	mv	a4,a1
    800146d2:	fe8cb603          	ld	a2,-24(s9)
    800146d6:	fe0cb583          	ld	a1,-32(s9)
    800146da:	86aa                	mv	a3,a0
    800146dc:	8526                	mv	a0,s1
    800146de:	033020ef          	jal	ra,80016f10 <JS_GetPropertyValue>
    800146e2:	eeb43c23          	sd	a1,-264(s0)
    800146e6:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:17644
                if (unlikely(JS_IsException(val)))
    800146ea:	2581                	sext.w	a1,a1
    800146ec:	4799                	li	a5,6
    800146ee:	00f59463          	bne	a1,a5,800146f6 <JS_CallInternal+0x5788>
    800146f2:	90cfb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17646
                sp[0] = val;
    800146f6:	00acb023          	sd	a0,0(s9)
    800146fa:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:17647
                sp++;
    800146fe:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:17649
            BREAK;
    80014700:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:17646
                sp[0] = val;
    80014702:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17649
            BREAK;
    80014706:	fffd4b03          	lbu	s6,-1(s10)
    8001470a:	0005a797          	auipc	a5,0x5a
    8001470e:	72678793          	addi	a5,a5,1830 # 8006ee30 <dispatch_table.4>
    80014712:	003b1713          	slli	a4,s6,0x3
    80014716:	97ba                	add	a5,a5,a4
    80014718:	639c                	ld	a5,0(a5)
    8001471a:	a8dfa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17655
                atom = JS_ValueToAtom(ctx, sp[-1]);
    8001471e:	ff0cb583          	ld	a1,-16(s9)
    80014722:	ff8cb603          	ld	a2,-8(s9)
    80014726:	8526                	mv	a0,s1
    80014728:	0ea140ef          	jal	ra,80028812 <JS_ValueToAtom>
    8001472c:	00050a9b          	sext.w	s5,a0
quickjs-nuttx/quickjs.c:17656
                if (unlikely(atom == JS_ATOM_NULL))
    80014730:	000a9463          	bnez	s5,80014738 <JS_CallInternal+0x57ca>
    80014734:	8cafb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17658
                val = JS_GetPropertyInternal(ctx, sp[-2], atom, sp[-3], FALSE);
    80014738:	fd0cb703          	ld	a4,-48(s9)
    8001473c:	fd8cb783          	ld	a5,-40(s9)
    80014740:	fe8cb603          	ld	a2,-24(s9)
    80014744:	fe0cb583          	ld	a1,-32(s9)
    80014748:	4801                	li	a6,0
    8001474a:	86d6                	mv	a3,s5
    8001474c:	8526                	mv	a0,s1
    8001474e:	35c020ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80014752:	eea43823          	sd	a0,-272(s0)
    80014756:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:17659
                JS_FreeAtom(ctx, atom);
    8001475a:	8526                	mv	a0,s1
    8001475c:	85d6                	mv	a1,s5
    8001475e:	9ebf60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:17660
                if (unlikely(JS_IsException(val)))
    80014762:	ef842703          	lw	a4,-264(s0)
    80014766:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:17658
                val = JS_GetPropertyInternal(ctx, sp[-2], atom, sp[-3], FALSE);
    80014768:	fe0c8993          	addi	s3,s9,-32
quickjs-nuttx/quickjs.c:17660
                if (unlikely(JS_IsException(val)))
    8001476c:	00f71463          	bne	a4,a5,80014774 <JS_CallInternal+0x5806>
    80014770:	88efb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17662
                JS_FreeValue(ctx, sp[-1]);
    80014774:	ff0cb583          	ld	a1,-16(s9)
    80014778:	ff8cb603          	ld	a2,-8(s9)
    8001477c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17668
            BREAK;
    8001477e:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:17662
                JS_FreeValue(ctx, sp[-1]);
    80014780:	81ef70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17663
                JS_FreeValue(ctx, sp[-2]);
    80014784:	fe0cb583          	ld	a1,-32(s9)
    80014788:	fe8cb603          	ld	a2,-24(s9)
    8001478c:	8526                	mv	a0,s1
    8001478e:	810f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17664
                JS_FreeValue(ctx, sp[-3]);
    80014792:	fd0cb583          	ld	a1,-48(s9)
    80014796:	fd8cb603          	ld	a2,-40(s9)
    8001479a:	8526                	mv	a0,s1
    8001479c:	802f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17665
                sp[-3] = val;
    800147a0:	ef043783          	ld	a5,-272(s0)
    800147a4:	fcfcb823          	sd	a5,-48(s9)
    800147a8:	ef843783          	ld	a5,-264(s0)
    800147ac:	fcfcbc23          	sd	a5,-40(s9)
quickjs-nuttx/quickjs.c:17668
            BREAK;
    800147b0:	fffd4b03          	lbu	s6,-1(s10)
    800147b4:	0005a797          	auipc	a5,0x5a
    800147b8:	67c78793          	addi	a5,a5,1660 # 8006ee30 <dispatch_table.4>
    800147bc:	8cce                	mv	s9,s3
    800147be:	003b1713          	slli	a4,s6,0x3
    800147c2:	97ba                	add	a5,a5,a4
    800147c4:	639c                	ld	a5,0(a5)
    800147c6:	9e1fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17674
                ret = JS_SetPropertyValue(ctx, sp[-3], sp[-2], sp[-1], JS_PROP_THROW_STRICT);
    800147ca:	fd0cb583          	ld	a1,-48(s9)
    800147ce:	fd8cb603          	ld	a2,-40(s9)
    800147d2:	ff0cb783          	ld	a5,-16(s9)
    800147d6:	ff8cb803          	ld	a6,-8(s9)
    800147da:	fe0cb683          	ld	a3,-32(s9)
    800147de:	fe8cb703          	ld	a4,-24(s9)
    800147e2:	68a1                	lui	a7,0x8
    800147e4:	8526                	mv	a0,s1
    800147e6:	10e030ef          	jal	ra,800178f4 <JS_SetPropertyValue>
quickjs-nuttx/quickjs.c:17675
                JS_FreeValue(ctx, sp[-3]);
    800147ea:	fd0cb583          	ld	a1,-48(s9)
    800147ee:	fd8cb603          	ld	a2,-40(s9)
quickjs-nuttx/quickjs.c:17674
                ret = JS_SetPropertyValue(ctx, sp[-3], sp[-2], sp[-1], JS_PROP_THROW_STRICT);
    800147f2:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:17675
                JS_FreeValue(ctx, sp[-3]);
    800147f4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17674
                ret = JS_SetPropertyValue(ctx, sp[-3], sp[-2], sp[-1], JS_PROP_THROW_STRICT);
    800147f6:	fd0c8993          	addi	s3,s9,-48
quickjs-nuttx/quickjs.c:17675
                JS_FreeValue(ctx, sp[-3]);
    800147fa:	fa5f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17677
                if (unlikely(ret < 0))
    800147fe:	000a5463          	bgez	s4,80014806 <JS_CallInternal+0x5898>
    80014802:	1480206f          	j	8001694a <JS_CallInternal+0x79dc>
quickjs-nuttx/quickjs.c:17680
            BREAK;
    80014806:	000d4b03          	lbu	s6,0(s10)
    8001480a:	0005a797          	auipc	a5,0x5a
    8001480e:	62678793          	addi	a5,a5,1574 # 8006ee30 <dispatch_table.4>
    80014812:	8cce                	mv	s9,s3
    80014814:	003b1713          	slli	a4,s6,0x3
    80014818:	97ba                	add	a5,a5,a4
    8001481a:	639c                	ld	a5,0(a5)
    8001481c:	0d05                	addi	s10,s10,1
    8001481e:	989fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17686
                if (unlikely(JS_IsUndefined(sp[-3]))) {
    80014822:	fd8ca703          	lw	a4,-40(s9)
    80014826:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:17687
                    if (is_strict_mode(ctx)) {
    80014828:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17686
                if (unlikely(JS_IsUndefined(sp[-3]))) {
    8001482a:	0af71263          	bne	a4,a5,800148ce <JS_CallInternal+0x5960>
quickjs-nuttx/quickjs.c:17687
                    if (is_strict_mode(ctx)) {
    8001482e:	b56f30ef          	jal	ra,80007b84 <is_strict_mode>
    80014832:	c905                	beqz	a0,80014862 <JS_CallInternal+0x58f4>
quickjs-nuttx/quickjs.c:17688
                        JSAtom atom = JS_ValueToAtom(ctx, sp[-2]);
    80014834:	fe0cb583          	ld	a1,-32(s9)
    80014838:	fe8cb603          	ld	a2,-24(s9)
    8001483c:	8526                	mv	a0,s1
    8001483e:	7d5130ef          	jal	ra,80028812 <JS_ValueToAtom>
    80014842:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:17689
                        if (atom != JS_ATOM_NULL) {
    80014846:	00091463          	bnez	s2,8001484e <JS_CallInternal+0x58e0>
    8001484a:	fb5fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17690
                            JS_ThrowReferenceErrorNotDefined(ctx, atom);
    8001484e:	85ca                	mv	a1,s2
    80014850:	8526                	mv	a0,s1
    80014852:	054050ef          	jal	ra,800198a6 <JS_ThrowReferenceErrorNotDefined>
quickjs-nuttx/quickjs.c:17691
                            JS_FreeAtom(ctx, atom);
    80014856:	85ca                	mv	a1,s2
    80014858:	8526                	mv	a0,s1
    8001485a:	8eff60ef          	jal	ra,8000b148 <JS_FreeAtom>
    8001485e:	fa1fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17695
                        sp[-3] = JS_DupValue(ctx, ctx->global_obj);
    80014862:	1684b503          	ld	a0,360(s1)
    80014866:	1704b583          	ld	a1,368(s1)
    8001486a:	bb1f50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001486e:	fcacb823          	sd	a0,-48(s9)
    80014872:	fcbcbc23          	sd	a1,-40(s9)
quickjs-nuttx/quickjs.c:17685
                flags = JS_PROP_THROW_STRICT;
    80014876:	68a1                	lui	a7,0x8
quickjs-nuttx/quickjs.c:17701
                ret = JS_SetPropertyValue(ctx, sp[-3], sp[-2], sp[-1], flags);
    80014878:	fd0cb583          	ld	a1,-48(s9)
    8001487c:	fd8cb603          	ld	a2,-40(s9)
    80014880:	ff0cb783          	ld	a5,-16(s9)
    80014884:	ff8cb803          	ld	a6,-8(s9)
    80014888:	fe0cb683          	ld	a3,-32(s9)
    8001488c:	fe8cb703          	ld	a4,-24(s9)
    80014890:	8526                	mv	a0,s1
    80014892:	fd0c8993          	addi	s3,s9,-48
    80014896:	05e030ef          	jal	ra,800178f4 <JS_SetPropertyValue>
quickjs-nuttx/quickjs.c:17702
                JS_FreeValue(ctx, sp[-3]);
    8001489a:	fd0cb583          	ld	a1,-48(s9)
    8001489e:	0089b603          	ld	a2,8(s3)
quickjs-nuttx/quickjs.c:17701
                ret = JS_SetPropertyValue(ctx, sp[-3], sp[-2], sp[-1], flags);
    800148a2:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:17702
                JS_FreeValue(ctx, sp[-3]);
    800148a4:	8526                	mv	a0,s1
    800148a6:	ef9f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17704
                if (unlikely(ret < 0))
    800148aa:	000a5463          	bgez	s4,800148b2 <JS_CallInternal+0x5944>
    800148ae:	0a20206f          	j	80016950 <JS_CallInternal+0x79e2>
quickjs-nuttx/quickjs.c:17707
            BREAK;
    800148b2:	000d4b03          	lbu	s6,0(s10)
    800148b6:	0005a797          	auipc	a5,0x5a
    800148ba:	57a78793          	addi	a5,a5,1402 # 8006ee30 <dispatch_table.4>
    800148be:	8cce                	mv	s9,s3
    800148c0:	003b1713          	slli	a4,s6,0x3
    800148c4:	97ba                	add	a5,a5,a4
    800148c6:	639c                	ld	a5,0(a5)
    800148c8:	0d05                	addi	s10,s10,1
    800148ca:	8ddfa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17698
                    if (is_strict_mode(ctx))
    800148ce:	ab6f30ef          	jal	ra,80007b84 <is_strict_mode>
quickjs-nuttx/quickjs.c:17685
                flags = JS_PROP_THROW_STRICT;
    800148d2:	68a1                	lui	a7,0x8
quickjs-nuttx/quickjs.c:17698
                    if (is_strict_mode(ctx))
    800148d4:	d155                	beqz	a0,80014878 <JS_CallInternal+0x590a>
quickjs-nuttx/quickjs.c:17699
                        flags |= JS_PROP_NO_ADD;
    800148d6:	68e1                	lui	a7,0x18
    800148d8:	b745                	j	80014878 <JS_CallInternal+0x590a>
quickjs-nuttx/quickjs.c:17713
                if (JS_VALUE_GET_TAG(sp[-3]) != JS_TAG_OBJECT) {
    800148da:	fd8ca703          	lw	a4,-40(s9)
    800148de:	57fd                	li	a5,-1
    800148e0:	00f70763          	beq	a4,a5,800148ee <JS_CallInternal+0x5980>
quickjs-nuttx/quickjs.c:17714
                    JS_ThrowTypeErrorNotAnObject(ctx);
    800148e4:	8526                	mv	a0,s1
    800148e6:	344040ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:17715
                    goto exception;
    800148ea:	f15fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17717
                atom = JS_ValueToAtom(ctx, sp[-2]);
    800148ee:	fe0cb583          	ld	a1,-32(s9)
    800148f2:	fe8cb603          	ld	a2,-24(s9)
    800148f6:	8526                	mv	a0,s1
    800148f8:	fe0c8b13          	addi	s6,s9,-32
    800148fc:	717130ef          	jal	ra,80028812 <JS_ValueToAtom>
    80014900:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:17718
                if (unlikely(atom == JS_ATOM_NULL))
    80014904:	000a1463          	bnez	s4,8001490c <JS_CallInternal+0x599e>
    80014908:	ef7fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17720
                ret = JS_SetPropertyInternal(ctx, sp[-3], atom, sp[-1], sp[-4],
    8001490c:	6721                	lui	a4,0x8
    8001490e:	fd0c8a93          	addi	s5,s9,-48
    80014912:	ff0c8793          	addi	a5,s9,-16
    80014916:	e03a                	sd	a4,0(sp)
    80014918:	6398                	ld	a4,0(a5)
    8001491a:	fc0cb803          	ld	a6,-64(s9)
    8001491e:	679c                	ld	a5,8(a5)
    80014920:	fc8cb883          	ld	a7,-56(s9)
    80014924:	008ab603          	ld	a2,8(s5)
    80014928:	000ab583          	ld	a1,0(s5)
    8001492c:	86d2                	mv	a3,s4
    8001492e:	8526                	mv	a0,s1
    80014930:	21b020ef          	jal	ra,8001734a <JS_SetPropertyInternal>
    80014934:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:17722
                JS_FreeAtom(ctx, atom);
    80014936:	85d2                	mv	a1,s4
    80014938:	8526                	mv	a0,s1
    8001493a:	80ff60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:17723
                JS_FreeValue(ctx, sp[-4]);
    8001493e:	fc0cb583          	ld	a1,-64(s9)
    80014942:	fc8cb603          	ld	a2,-56(s9)
    80014946:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17720
                ret = JS_SetPropertyInternal(ctx, sp[-3], atom, sp[-1], sp[-4],
    80014948:	fc0c8c93          	addi	s9,s9,-64
quickjs-nuttx/quickjs.c:17723
                JS_FreeValue(ctx, sp[-4]);
    8001494c:	e53f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17724
                JS_FreeValue(ctx, sp[-3]);
    80014950:	000ab583          	ld	a1,0(s5)
    80014954:	008ab603          	ld	a2,8(s5)
    80014958:	8526                	mv	a0,s1
    8001495a:	e45f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17725
                JS_FreeValue(ctx, sp[-2]);
    8001495e:	000b3583          	ld	a1,0(s6)
    80014962:	008b3603          	ld	a2,8(s6)
    80014966:	8526                	mv	a0,s1
    80014968:	e37f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17727
                if (ret < 0)
    8001496c:	0009d463          	bgez	s3,80014974 <JS_CallInternal+0x5a06>
    80014970:	e8ffa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17730
            BREAK;
    80014974:	000d4b03          	lbu	s6,0(s10)
    80014978:	0005a797          	auipc	a5,0x5a
    8001497c:	4b878793          	addi	a5,a5,1208 # 8006ee30 <dispatch_table.4>
    80014980:	0d05                	addi	s10,s10,1
    80014982:	003b1713          	slli	a4,s6,0x3
    80014986:	97ba                	add	a5,a5,a4
    80014988:	639c                	ld	a5,0(a5)
    8001498a:	81dfa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17735
                ret = JS_DefinePropertyValueValue(ctx, sp[-3], JS_DupValue(ctx, sp[-2]), sp[-1],
    8001498e:	fe0cb503          	ld	a0,-32(s9)
    80014992:	fe8cb583          	ld	a1,-24(s9)
    80014996:	fd0c8993          	addi	s3,s9,-48
    8001499a:	1cc1                	addi	s9,s9,-16
    8001499c:	a7ff50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800149a0:	767d                	lui	a2,0xfffff
    800149a2:	7f060793          	addi	a5,a2,2032 # fffffffffffff7f0 <_ebss+0xffffffff7fefe68a>
    800149a6:	97a2                	add	a5,a5,s0
    800149a8:	e388                	sd	a0,0(a5)
    800149aa:	7f860793          	addi	a5,a2,2040
    800149ae:	97a2                	add	a5,a5,s0
    800149b0:	e38c                	sd	a1,0(a5)
    800149b2:	872e                	mv	a4,a1
    800149b4:	000cb783          	ld	a5,0(s9)
    800149b8:	008cb803          	ld	a6,8(s9)
    800149bc:	0009b583          	ld	a1,0(s3)
    800149c0:	0089b603          	ld	a2,8(s3)
    800149c4:	6891                	lui	a7,0x4
    800149c6:	86aa                	mv	a3,a0
    800149c8:	089d                	addi	a7,a7,7
    800149ca:	8526                	mv	a0,s1
    800149cc:	3cc1c0ef          	jal	ra,80030d98 <JS_DefinePropertyValueValue>
quickjs-nuttx/quickjs.c:17738
                if (unlikely(ret < 0))
    800149d0:	00055463          	bgez	a0,800149d8 <JS_CallInternal+0x5a6a>
    800149d4:	e2bfa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17741
            BREAK;
    800149d8:	000d4b03          	lbu	s6,0(s10)
    800149dc:	0005a797          	auipc	a5,0x5a
    800149e0:	45478793          	addi	a5,a5,1108 # 8006ee30 <dispatch_table.4>
    800149e4:	0d05                	addi	s10,s10,1
    800149e6:	003b1713          	slli	a4,s6,0x3
    800149ea:	97ba                	add	a5,a5,a4
    800149ec:	639c                	ld	a5,0(a5)
    800149ee:	fb8fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_append_enumerate():
quickjs-nuttx/quickjs.c:15383
    if (JS_VALUE_GET_TAG(sp[-2]) != JS_TAG_INT) {
    800149f2:	fe8ca783          	lw	a5,-24(s9)
    800149f6:	cb91                	beqz	a5,80014a0a <JS_CallInternal+0x5a9c>
quickjs-nuttx/quickjs.c:15384
        JS_ThrowInternalError(ctx, "invalid index for append");
    800149f8:	8526                	mv	a0,s1
    800149fa:	00055597          	auipc	a1,0x55
    800149fe:	46658593          	addi	a1,a1,1126 # 80069e60 <qjsc_repl+0x48b0>
    80014a02:	6f7040ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:15385
        return -1;
    80014a06:	df9fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15388
    pos = JS_VALUE_GET_INT(sp[-2]);
    80014a0a:	ff0cb703          	ld	a4,-16(s9)
    80014a0e:	fe0cab03          	lw	s6,-32(s9)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80014a12:	4801                	li	a6,0
    80014a14:	eee43823          	sd	a4,-272(s0)
    80014a18:	ff8cb783          	ld	a5,-8(s9)
    80014a1c:	0d600693          	li	a3,214
    80014a20:	85ba                	mv	a1,a4
    80014a22:	863e                	mv	a2,a5
    80014a24:	8526                	mv	a0,s1
    80014a26:	eef43c23          	sd	a5,-264(s0)
    80014a2a:	080020ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80014a2e:	e0a43823          	sd	a0,-496(s0)
    80014a32:	e0b43c23          	sd	a1,-488(s0)
    80014a36:	dea43023          	sd	a0,-544(s0)
    80014a3a:	deb43423          	sd	a1,-536(s0)
js_append_enumerate():
quickjs-nuttx/quickjs.c:15397
    if (JS_IsException(iterator))
    80014a3e:	0005879b          	sext.w	a5,a1
    80014a42:	4c19                	li	s8,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80014a44:	89aa                	mv	s3,a0
    80014a46:	862e                	mv	a2,a1
js_append_enumerate():
quickjs-nuttx/quickjs.c:15397
    80014a48:	01879463          	bne	a5,s8,80014a50 <JS_CallInternal+0x5ae2>
    80014a4c:	db3fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15399
    is_array_iterator = JS_IsCFunction(ctx, iterator,
    80014a50:	77fd                	lui	a5,0xfffff
    80014a52:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80014a56:	4705                	li	a4,1
    80014a58:	0001c697          	auipc	a3,0x1c
    80014a5c:	9fa68693          	addi	a3,a3,-1542 # 80030452 <js_create_array_iterator>
    80014a60:	85aa                	mv	a1,a0
    80014a62:	97a2                	add	a5,a5,s0
    80014a64:	8526                	mv	a0,s1
    80014a66:	e390                	sd	a2,0(a5)
    80014a68:	b2df90ef          	jal	ra,8000e594 <JS_IsCFunction>
quickjs-nuttx/quickjs.c:15402
    JS_FreeValue(ctx, iterator);
    80014a6c:	77fd                	lui	a5,0xfffff
    80014a6e:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80014a72:	97a2                	add	a5,a5,s0
    80014a74:	6390                	ld	a2,0(a5)
    80014a76:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:15399
    is_array_iterator = JS_IsCFunction(ctx, iterator,
    80014a78:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:15402
    JS_FreeValue(ctx, iterator);
    80014a7a:	8526                	mv	a0,s1
    80014a7c:	d23f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15404
    enumobj = JS_GetIterator(ctx, sp[-1], FALSE);
    80014a80:	ff0cb583          	ld	a1,-16(s9)
    80014a84:	ff8cb603          	ld	a2,-8(s9)
    80014a88:	4681                	li	a3,0
    80014a8a:	8526                	mv	a0,s1
    80014a8c:	6b02f0ef          	jal	ra,8004413c <JS_GetIterator>
    80014a90:	e8a43023          	sd	a0,-384(s0)
    80014a94:	e8b43423          	sd	a1,-376(s0)
quickjs-nuttx/quickjs.c:15405
    if (JS_IsException(enumobj))
    80014a98:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:15404
    enumobj = JS_GetIterator(ctx, sp[-1], FALSE);
    80014a9c:	ff0c8a93          	addi	s5,s9,-16
    80014aa0:	872a                	mv	a4,a0
    80014aa2:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:15405
    if (JS_IsException(enumobj))
    80014aa4:	01879463          	bne	a5,s8,80014aac <JS_CallInternal+0x5b3e>
    80014aa8:	d57fa06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80014aac:	87ae                	mv	a5,a1
    80014aae:	eea43823          	sd	a0,-272(s0)
    80014ab2:	eeb43c23          	sd	a1,-264(s0)
    80014ab6:	4801                	li	a6,0
    80014ab8:	85aa                	mv	a1,a0
    80014aba:	06b00693          	li	a3,107
    80014abe:	864e                	mv	a2,s3
    80014ac0:	8526                	mv	a0,s1
    80014ac2:	7e9010ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80014ac6:	e0a43023          	sd	a0,-512(s0)
    80014aca:	e0b43423          	sd	a1,-504(s0)
    80014ace:	e8a43823          	sd	a0,-368(s0)
    80014ad2:	e8b43c23          	sd	a1,-360(s0)
js_append_enumerate():
quickjs-nuttx/quickjs.c:15408
    if (JS_IsException(method)) {
    80014ad6:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80014ada:	8a2e                	mv	s4,a1
js_append_enumerate():
quickjs-nuttx/quickjs.c:15408
    80014adc:	01879b63          	bne	a5,s8,80014af2 <JS_CallInternal+0x5b84>
quickjs-nuttx/quickjs.c:15409
        JS_FreeValue(ctx, enumobj);
    80014ae0:	e8043583          	ld	a1,-384(s0)
    80014ae4:	e8843603          	ld	a2,-376(s0)
    80014ae8:	8526                	mv	a0,s1
    80014aea:	cb5f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15410
        return -1;
    80014aee:	d11fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15388
    pos = JS_VALUE_GET_INT(sp[-2]);
    80014af2:	2b01                	sext.w	s6,s6
quickjs-nuttx/quickjs.c:15412
    if (is_array_iterator
    80014af4:	060b8363          	beqz	s7,80014b5a <JS_CallInternal+0x5bec>
quickjs-nuttx/quickjs.c:15413
    &&  JS_IsCFunction(ctx, method, (JSCFunction *)js_array_iterator_next, 0)
    80014af8:	85aa                	mv	a1,a0
    80014afa:	4701                	li	a4,0
    80014afc:	00025697          	auipc	a3,0x25
    80014b00:	9d068693          	addi	a3,a3,-1584 # 800394cc <js_array_iterator_next>
    80014b04:	8652                	mv	a2,s4
    80014b06:	8526                	mv	a0,s1
    80014b08:	a8df90ef          	jal	ra,8000e594 <JS_IsCFunction>
    80014b0c:	c539                	beqz	a0,80014b5a <JS_CallInternal+0x5bec>
quickjs-nuttx/quickjs.c:15414
    &&  js_get_fast_array(ctx, sp[-1], &arrp, &count32)) {
    80014b0e:	f8040793          	addi	a5,s0,-128
    80014b12:	73090693          	addi	a3,s2,1840
    80014b16:	96be                	add	a3,a3,a5
    80014b18:	77fd                	lui	a5,0xfffff
    80014b1a:	5f878793          	addi	a5,a5,1528 # fffffffffffff5f8 <_ebss+0xffffffff7fefe492>
    80014b1e:	97a2                	add	a5,a5,s0
    80014b20:	6390                	ld	a2,0(a5)
    80014b22:	000ab503          	ld	a0,0(s5)
    80014b26:	008ab583          	ld	a1,8(s5)
    80014b2a:	e34f50ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    80014b2e:	c515                	beqz	a0,80014b5a <JS_CallInternal+0x5bec>
quickjs-nuttx/quickjs.c:15416
        if (js_get_length32(ctx, &len, sp[-1]))
    80014b30:	000ab603          	ld	a2,0(s5)
    80014b34:	008ab683          	ld	a3,8(s5)
    80014b38:	ef040593          	addi	a1,s0,-272
    80014b3c:	8526                	mv	a0,s1
    80014b3e:	0290d0ef          	jal	ra,80022366 <js_get_length32>
    80014b42:	14051063          	bnez	a0,80014c82 <JS_CallInternal+0x5d14>
quickjs-nuttx/quickjs.c:15420
        if (len != count32)
    80014b46:	f8040793          	addi	a5,s0,-128
    80014b4a:	01278c33          	add	s8,a5,s2
    80014b4e:	ef042703          	lw	a4,-272(s0)
    80014b52:	730c2783          	lw	a5,1840(s8)
    80014b56:	12f70263          	beq	a4,a5,80014c7a <JS_CallInternal+0x5d0c>
quickjs-nuttx/quickjs.c:15433
            if (JS_IsException(value))
    80014b5a:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:15432
            value = JS_IteratorNext(ctx, enumobj, method, 0, NULL, &done);
    80014b5c:	e9043683          	ld	a3,-368(s0)
    80014b60:	e8043583          	ld	a1,-384(s0)
    80014b64:	ef040793          	addi	a5,s0,-272
    80014b68:	8752                	mv	a4,s4
    80014b6a:	864e                	mv	a2,s3
    80014b6c:	8526                	mv	a0,s1
    80014b6e:	e9443c23          	sd	s4,-360(s0)
    80014b72:	e9343423          	sd	s3,-376(s0)
    80014b76:	4ba2f0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    80014b7a:	eca43823          	sd	a0,-304(s0)
    80014b7e:	ecb43c23          	sd	a1,-296(s0)
quickjs-nuttx/quickjs.c:15433
            if (JS_IsException(value))
    80014b82:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:15432
            value = JS_IteratorNext(ctx, enumobj, method, 0, NULL, &done);
    80014b86:	872a                	mv	a4,a0
    80014b88:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:15433
            if (JS_IsException(value))
    80014b8a:	0f768c63          	beq	a3,s7,80014c82 <JS_CallInternal+0x5d14>
quickjs-nuttx/quickjs.c:15435
            if (done) {
    80014b8e:	ef042683          	lw	a3,-272(s0)
    80014b92:	0e069663          	bnez	a3,80014c7e <JS_CallInternal+0x5d10>
quickjs-nuttx/quickjs.c:15439
            if (JS_DefinePropertyValueUint32(ctx, sp[-3], pos++, value, JS_PROP_C_W_E) < 0)
    80014b96:	fd0cb583          	ld	a1,-48(s9)
    80014b9a:	fd8cb603          	ld	a2,-40(s9)
    80014b9e:	481d                	li	a6,7
    80014ba0:	86da                	mv	a3,s6
    80014ba2:	8526                	mv	a0,s1
    80014ba4:	001b0c1b          	addiw	s8,s6,1
    80014ba8:	4481c0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    80014bac:	0c054b63          	bltz	a0,80014c82 <JS_CallInternal+0x5d14>
    80014bb0:	8b62                	mv	s6,s8
quickjs-nuttx/quickjs.c:15430
        for (;;) {
    80014bb2:	b76d                	j	80014b5c <JS_CallInternal+0x5bee>
    80014bb4:	77fd                	lui	a5,0xfffff
    80014bb6:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80014bba:	97a2                	add	a5,a5,s0
    80014bbc:	e394                	sd	a3,0(a5)
quickjs-nuttx/quickjs.c:15424
            if (JS_DefinePropertyValueUint32(ctx, sp[-3], pos++,
    80014bbe:	740c3783          	ld	a5,1856(s8)
    80014bc2:	020b9693          	slli	a3,s7,0x20
    80014bc6:	01c6d713          	srli	a4,a3,0x1c
    80014bca:	97ba                	add	a5,a5,a4
    80014bcc:	6388                	ld	a0,0(a5)
    80014bce:	678c                	ld	a1,8(a5)
    80014bd0:	84bf50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80014bd4:	76fd                	lui	a3,0xfffff
    80014bd6:	63068693          	addi	a3,a3,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80014bda:	96a2                	add	a3,a3,s0
    80014bdc:	87ae                	mv	a5,a1
    80014bde:	e2b43423          	sd	a1,-472(s0)
    80014be2:	6294                	ld	a3,0(a3)
    80014be4:	fd0cb583          	ld	a1,-48(s9)
    80014be8:	fd8cb603          	ld	a2,-40(s9)
    80014bec:	872a                	mv	a4,a0
    80014bee:	e2a43023          	sd	a0,-480(s0)
    80014bf2:	481d                	li	a6,7
    80014bf4:	8526                	mv	a0,s1
    80014bf6:	3fa1c0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    80014bfa:	08054463          	bltz	a0,80014c82 <JS_CallInternal+0x5d14>
quickjs-nuttx/quickjs.c:15423
        for (i = 0; i < count32; i++) {
    80014bfe:	2b85                	addiw	s7,s7,1
    80014c00:	730c2783          	lw	a5,1840(s8)
    80014c04:	017b06bb          	addw	a3,s6,s7
    80014c08:	fafbe6e3          	bltu	s7,a5,80014bb4 <JS_CallInternal+0x5c46>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80014c0c:	de043823          	sd	zero,-528(s0)
    80014c10:	ded42823          	sw	a3,-528(s0)
    80014c14:	df043783          	ld	a5,-528(s0)
    80014c18:	ee043c23          	sd	zero,-264(s0)
js_append_enumerate():
quickjs-nuttx/quickjs.c:15445
    JS_FreeValue(ctx, enumobj);
    80014c1c:	864e                	mv	a2,s3
    80014c1e:	eef43823          	sd	a5,-272(s0)
quickjs-nuttx/quickjs.c:15444
    sp[-2] = JS_NewInt32(ctx, pos);
    80014c22:	fefcb023          	sd	a5,-32(s9)
    80014c26:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:15445
    JS_FreeValue(ctx, enumobj);
    80014c2a:	8526                	mv	a0,s1
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80014c2c:	de043c23          	sd	zero,-520(s0)
js_append_enumerate():
quickjs-nuttx/quickjs.c:15444
    sp[-2] = JS_NewInt32(ctx, pos);
    80014c30:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:15445
    JS_FreeValue(ctx, enumobj);
    80014c34:	e8043583          	ld	a1,-384(s0)
    80014c38:	e9343423          	sd	s3,-376(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17749
            BREAK;
    80014c3c:	8cd6                	mv	s9,s5
js_append_enumerate():
quickjs-nuttx/quickjs.c:15445
    JS_FreeValue(ctx, enumobj);
    80014c3e:	b61f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15446
    JS_FreeValue(ctx, method);
    80014c42:	e9043583          	ld	a1,-368(s0)
    80014c46:	8652                	mv	a2,s4
    80014c48:	8526                	mv	a0,s1
    80014c4a:	e9443c23          	sd	s4,-360(s0)
    80014c4e:	b51f60ef          	jal	ra,8000b79e <JS_FreeValue>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17747
                JS_FreeValue(ctx, *--sp);
    80014c52:	000ab583          	ld	a1,0(s5)
    80014c56:	008ab603          	ld	a2,8(s5)
    80014c5a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17749
            BREAK;
    80014c5c:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:17747
                JS_FreeValue(ctx, *--sp);
    80014c5e:	b41f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17749
            BREAK;
    80014c62:	fffd4b03          	lbu	s6,-1(s10)
    80014c66:	0005a797          	auipc	a5,0x5a
    80014c6a:	1ca78793          	addi	a5,a5,458 # 8006ee30 <dispatch_table.4>
    80014c6e:	003b1713          	slli	a4,s6,0x3
    80014c72:	97ba                	add	a5,a5,a4
    80014c74:	639c                	ld	a5,0(a5)
    80014c76:	d30fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_append_enumerate():
quickjs-nuttx/quickjs.c:15423
        for (i = 0; i < count32; i++) {
    80014c7a:	4b81                	li	s7,0
    80014c7c:	b751                	j	80014c00 <JS_CallInternal+0x5c92>
    80014c7e:	86da                	mv	a3,s6
    80014c80:	b771                	j	80014c0c <JS_CallInternal+0x5c9e>
quickjs-nuttx/quickjs.c:15450
    JS_IteratorClose(ctx, enumobj, TRUE);
    80014c82:	e8043583          	ld	a1,-384(s0)
    80014c86:	4685                	li	a3,1
    80014c88:	864e                	mv	a2,s3
    80014c8a:	8526                	mv	a0,s1
    80014c8c:	e9343423          	sd	s3,-376(s0)
    80014c90:	7ab030ef          	jal	ra,80018c3a <JS_IteratorClose>
quickjs-nuttx/quickjs.c:15451
    JS_FreeValue(ctx, enumobj);
    80014c94:	e8043583          	ld	a1,-384(s0)
    80014c98:	e8843603          	ld	a2,-376(s0)
    80014c9c:	8526                	mv	a0,s1
    80014c9e:	b01f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15452
    JS_FreeValue(ctx, method);
    80014ca2:	e9043583          	ld	a1,-368(s0)
    80014ca6:	8652                	mv	a2,s4
    80014ca8:	8526                	mv	a0,s1
    80014caa:	e9443c23          	sd	s4,-360(s0)
    80014cae:	af1f60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15453
    return -1;
    80014cb2:	b4dfa06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17759
                mask = *pc++;
    80014cb6:	000d4783          	lbu	a5,0(s10)
quickjs-nuttx/quickjs.c:17760
                if (JS_CopyDataProperties(ctx, sp[-1 - (mask & 3)],
    80014cba:	4881                	li	a7,0
    80014cbc:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17759
                mask = *pc++;
    80014cbe:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.c:17762
                                          sp[-1 - ((mask >> 5) & 7)], 0))
    80014cc2:	4057569b          	sraiw	a3,a4,0x5
quickjs-nuttx/quickjs.c:17760
                if (JS_CopyDataProperties(ctx, sp[-1 - (mask & 3)],
    80014cc6:	0037f613          	andi	a2,a5,3
quickjs-nuttx/quickjs.c:17761
                                          sp[-1 - ((mask >> 2) & 7)],
    80014cca:	4027571b          	sraiw	a4,a4,0x2
quickjs-nuttx/quickjs.c:17762
                                          sp[-1 - ((mask >> 5) & 7)], 0))
    80014cce:	fff6c693          	not	a3,a3
quickjs-nuttx/quickjs.c:17761
                                          sp[-1 - ((mask >> 2) & 7)],
    80014cd2:	8b1d                	andi	a4,a4,7
quickjs-nuttx/quickjs.c:17760
                if (JS_CopyDataProperties(ctx, sp[-1 - (mask & 3)],
    80014cd4:	fff64613          	not	a2,a2
quickjs-nuttx/quickjs.c:17762
                                          sp[-1 - ((mask >> 5) & 7)], 0))
    80014cd8:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:17761
                                          sp[-1 - ((mask >> 2) & 7)],
    80014cda:	fff74713          	not	a4,a4
quickjs-nuttx/quickjs.c:17760
                if (JS_CopyDataProperties(ctx, sp[-1 - (mask & 3)],
    80014cde:	2601                	sext.w	a2,a2
    80014ce0:	0692                	slli	a3,a3,0x4
    80014ce2:	0712                	slli	a4,a4,0x4
    80014ce4:	0612                	slli	a2,a2,0x4
    80014ce6:	96e6                	add	a3,a3,s9
    80014ce8:	9766                	add	a4,a4,s9
    80014cea:	9666                	add	a2,a2,s9
    80014cec:	629c                	ld	a5,0(a3)
    80014cee:	0086b803          	ld	a6,8(a3)
    80014cf2:	620c                	ld	a1,0(a2)
    80014cf4:	6314                	ld	a3,0(a4)
    80014cf6:	6610                	ld	a2,8(a2)
    80014cf8:	6718                	ld	a4,8(a4)
quickjs-nuttx/quickjs.c:17759
                mask = *pc++;
    80014cfa:	001d0993          	addi	s3,s10,1
quickjs-nuttx/quickjs.c:17760
                if (JS_CopyDataProperties(ctx, sp[-1 - (mask & 3)],
    80014cfe:	09a280ef          	jal	ra,8003cd98 <JS_CopyDataProperties>
    80014d02:	c119                	beqz	a0,80014d08 <JS_CallInternal+0x5d9a>
    80014d04:	4530106f          	j	80016956 <JS_CallInternal+0x79e8>
quickjs-nuttx/quickjs.c:17765
            BREAK;
    80014d08:	001d4b03          	lbu	s6,1(s10)
    80014d0c:	0005a797          	auipc	a5,0x5a
    80014d10:	12478793          	addi	a5,a5,292 # 8006ee30 <dispatch_table.4>
    80014d14:	0d09                	addi	s10,s10,2
    80014d16:	003b1713          	slli	a4,s6,0x3
    80014d1a:	97ba                	add	a5,a5,a4
    80014d1c:	639c                	ld	a5,0(a5)
    80014d1e:	c88fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17770
                op1 = sp[-2];
    80014d22:	fe0cb783          	ld	a5,-32(s9)
    80014d26:	e8f43823          	sd	a5,-368(s0)
    80014d2a:	fe8cb783          	ld	a5,-24(s9)
    80014d2e:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:17771
                op2 = sp[-1];
    80014d32:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:17770
                op1 = sp[-2];
    80014d36:	fe8cb703          	ld	a4,-24(s9)
quickjs-nuttx/quickjs.c:17771
                op2 = sp[-1];
    80014d3a:	ecf43823          	sd	a5,-304(s0)
    80014d3e:	ff8cb783          	ld	a5,-8(s9)
    80014d42:	ecf43c23          	sd	a5,-296(s0)
    80014d46:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:17772
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80014d4a:	00f766b3          	or	a3,a4,a5
    80014d4e:	2681                	sext.w	a3,a3
    80014d50:	eab1                	bnez	a3,80014da4 <JS_CallInternal+0x5e36>
quickjs-nuttx/quickjs.c:17774
                    r = (int64_t)JS_VALUE_GET_INT(op1) + JS_VALUE_GET_INT(op2);
    80014d52:	e9042783          	lw	a5,-368(s0)
    80014d56:	ed042683          	lw	a3,-304(s0)
quickjs-nuttx/quickjs.c:17775
                    if (unlikely((int)r != r))
    80014d5a:	00d7863b          	addw	a2,a5,a3
quickjs-nuttx/quickjs.c:17774
                    r = (int64_t)JS_VALUE_GET_INT(op1) + JS_VALUE_GET_INT(op2);
    80014d5e:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:17775
                    if (unlikely((int)r != r))
    80014d60:	06f61263          	bne	a2,a5,80014dc4 <JS_CallInternal+0x5e56>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80014d64:	90043023          	sd	zero,-1792(s0)
    80014d68:	90c42023          	sw	a2,-1792(s0)
    80014d6c:	90043783          	ld	a5,-1792(s0)
    80014d70:	ee043c23          	sd	zero,-264(s0)
    80014d74:	90043423          	sd	zero,-1784(s0)
    80014d78:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17777
                    sp[-2] = JS_NewInt32(ctx, r);
    80014d7c:	fefcb023          	sd	a5,-32(s9)
    80014d80:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:17780
                    sp[-2] = __JS_NewFloat64(ctx, JS_VALUE_GET_FLOAT64(op1) +
    80014d84:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:17790
            BREAK;
    80014d88:	000d4b03          	lbu	s6,0(s10)
    80014d8c:	0005a797          	auipc	a5,0x5a
    80014d90:	0a478793          	addi	a5,a5,164 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17787
                    sp--;
    80014d94:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17790
            BREAK;
    80014d96:	003b1713          	slli	a4,s6,0x3
    80014d9a:	97ba                	add	a5,a5,a4
    80014d9c:	639c                	ld	a5,0(a5)
    80014d9e:	0d05                	addi	s10,s10,1
    80014da0:	c06fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17779
                } else if (JS_VALUE_IS_BOTH_FLOAT(op1, op2)) {
    80014da4:	2701                	sext.w	a4,a4
    80014da6:	469d                	li	a3,7
    80014da8:	00d71e63          	bne	a4,a3,80014dc4 <JS_CallInternal+0x5e56>
quickjs-nuttx/quickjs.c:17779 (discriminator 1)
    80014dac:	2781                	sext.w	a5,a5
    80014dae:	00e79b63          	bne	a5,a4,80014dc4 <JS_CallInternal+0x5e56>
quickjs-nuttx/quickjs.c:17780
                    sp[-2] = __JS_NewFloat64(ctx, JS_VALUE_GET_FLOAT64(op1) +
    80014db2:	e9043787          	fld	fa5,-368(s0)
    80014db6:	ed043707          	fld	fa4,-304(s0)
    80014dba:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80014dbe:	fefcb027          	fsd	fa5,-32(s9)
    80014dc2:	b7c9                	j	80014d84 <JS_CallInternal+0x5e16>
quickjs-nuttx/quickjs.c:17785
                    if (js_add_slow(ctx, sp))
    80014dc4:	85e6                	mv	a1,s9
    80014dc6:	8526                	mv	a0,s1
    80014dc8:	4c1280ef          	jal	ra,8003da88 <js_add_slow>
    80014dcc:	dd55                	beqz	a0,80014d88 <JS_CallInternal+0x5e1a>
    80014dce:	a31fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17798
                pv = &var_buf[idx];
    80014dd2:	77fd                	lui	a5,0xfffff
    80014dd4:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80014dd8:	000d4a83          	lbu	s5,0(s10)
    80014ddc:	97a2                	add	a5,a5,s0
    80014dde:	639c                	ld	a5,0(a5)
    80014de0:	0a92                	slli	s5,s5,0x4
quickjs-nuttx/quickjs.c:17796
                pc += 1;
    80014de2:	001d0a13          	addi	s4,s10,1
quickjs-nuttx/quickjs.c:17798
                pv = &var_buf[idx];
    80014de6:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:17799
                if (likely(JS_VALUE_IS_BOTH_INT(*pv, sp[-1]))) {
    80014de8:	008aa703          	lw	a4,8(s5)
    80014dec:	ff8cb783          	ld	a5,-8(s9)
    80014df0:	ff0c8993          	addi	s3,s9,-16
    80014df4:	8fd9                	or	a5,a5,a4
    80014df6:	2781                	sext.w	a5,a5
    80014df8:	ebb1                	bnez	a5,80014e4c <JS_CallInternal+0x5ede>
quickjs-nuttx/quickjs.c:17801
                    r = (int64_t)JS_VALUE_GET_INT(*pv) +
    80014dfa:	000aa783          	lw	a5,0(s5)
quickjs-nuttx/quickjs.c:17802
                        JS_VALUE_GET_INT(sp[-1]);
    80014dfe:	ff0ca683          	lw	a3,-16(s9)
quickjs-nuttx/quickjs.c:17803
                    if (unlikely((int)r != r))
    80014e02:	00d7863b          	addw	a2,a5,a3
quickjs-nuttx/quickjs.c:17801
                    r = (int64_t)JS_VALUE_GET_INT(*pv) +
    80014e06:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:17803
                    if (unlikely((int)r != r))
    80014e08:	0af61f63          	bne	a2,a5,80014ec6 <JS_CallInternal+0x5f58>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80014e0c:	90043823          	sd	zero,-1776(s0)
    80014e10:	90c42823          	sw	a2,-1776(s0)
    80014e14:	91043783          	ld	a5,-1776(s0)
    80014e18:	ee043c23          	sd	zero,-264(s0)
    80014e1c:	90043c23          	sd	zero,-1768(s0)
    80014e20:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17805
                    *pv = JS_NewInt32(ctx, r);
    80014e24:	00fab023          	sd	a5,0(s5)
    80014e28:	ef843783          	ld	a5,-264(s0)
    80014e2c:	00fab423          	sd	a5,8(s5)
quickjs-nuttx/quickjs.c:17831 (discriminator 41)
            BREAK;
    80014e30:	001d4b03          	lbu	s6,1(s10)
    80014e34:	0005a797          	auipc	a5,0x5a
    80014e38:	ffc78793          	addi	a5,a5,-4 # 8006ee30 <dispatch_table.4>
    80014e3c:	8cce                	mv	s9,s3
    80014e3e:	003b1713          	slli	a4,s6,0x3
    80014e42:	97ba                	add	a5,a5,a4
    80014e44:	639c                	ld	a5,0(a5)
    80014e46:	0d09                	addi	s10,s10,2
    80014e48:	b5efa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17807
                } else if (JS_VALUE_GET_TAG(*pv) == JS_TAG_STRING) {
    80014e4c:	57e5                	li	a5,-7
    80014e4e:	06f71c63          	bne	a4,a5,80014ec6 <JS_CallInternal+0x5f58>
quickjs-nuttx/quickjs.c:17809
                    op1 = sp[-1];
    80014e52:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:17811
                    op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NONE);
    80014e56:	4689                	li	a3,2
    80014e58:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17809
                    op1 = sp[-1];
    80014e5a:	eeb43823          	sd	a1,-272(s0)
    80014e5e:	ff8cb603          	ld	a2,-8(s9)
quickjs-nuttx/quickjs.c:17812
                    if (JS_IsException(op1))
    80014e62:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:17809
                    op1 = sp[-1];
    80014e64:	eec43c23          	sd	a2,-264(s0)
quickjs-nuttx/quickjs.c:17811
                    op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NONE);
    80014e68:	4750a0ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    80014e6c:	eeb43c23          	sd	a1,-264(s0)
    80014e70:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:17812
                    if (JS_IsException(op1))
    80014e74:	2581                	sext.w	a1,a1
    80014e76:	05658463          	beq	a1,s6,80014ebe <JS_CallInternal+0x5f50>
quickjs-nuttx/quickjs.c:17814
                    op1 = JS_ConcatString(ctx, JS_DupValue(ctx, *pv), op1);
    80014e7a:	000ab503          	ld	a0,0(s5)
    80014e7e:	008ab583          	ld	a1,8(s5)
    80014e82:	d98f50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80014e86:	ef043683          	ld	a3,-272(s0)
    80014e8a:	ef843703          	ld	a4,-264(s0)
    80014e8e:	862e                	mv	a2,a1
    80014e90:	80a43023          	sd	a0,-2048(s0)
    80014e94:	80b43423          	sd	a1,-2040(s0)
    80014e98:	85aa                	mv	a1,a0
    80014e9a:	8526                	mv	a0,s1
    80014e9c:	26d0b0ef          	jal	ra,80020908 <JS_ConcatString>
    80014ea0:	eea43823          	sd	a0,-272(s0)
    80014ea4:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:17815
                    if (JS_IsException(op1))
    80014ea8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:17814
                    op1 = JS_ConcatString(ctx, JS_DupValue(ctx, *pv), op1);
    80014eac:	862a                	mv	a2,a0
    80014eae:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:17815
                    if (JS_IsException(op1))
    80014eb0:	01678763          	beq	a5,s6,80014ebe <JS_CallInternal+0x5f50>
quickjs-nuttx/quickjs.c:17828
                    set_value(ctx, pv, ops[0]);
    80014eb4:	85d6                	mv	a1,s5
    80014eb6:	8526                	mv	a0,s1
    80014eb8:	d87f60ef          	jal	ra,8000bc3e <set_value>
    80014ebc:	bf95                	j	80014e30 <JS_CallInternal+0x5ec2>
quickjs-nuttx/quickjs.c:17813
                        goto exception;
    80014ebe:	8cce                	mv	s9,s3
    80014ec0:	8d52                	mv	s10,s4
    80014ec2:	93dfa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17823
                    ops[0] = JS_DupValue(ctx, *pv);
    80014ec6:	000ab503          	ld	a0,0(s5)
    80014eca:	008ab583          	ld	a1,8(s5)
    80014ece:	d4cf50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80014ed2:	eea43823          	sd	a0,-272(s0)
    80014ed6:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:17824
                    ops[1] = sp[-1];
    80014eda:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:17826
                    if (js_add_slow(ctx, ops + 2))
    80014ede:	f1040593          	addi	a1,s0,-240
    80014ee2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17824
                    ops[1] = sp[-1];
    80014ee4:	f0f43023          	sd	a5,-256(s0)
    80014ee8:	ff8cb783          	ld	a5,-8(s9)
    80014eec:	f0f43423          	sd	a5,-248(s0)
quickjs-nuttx/quickjs.c:17826
                    if (js_add_slow(ctx, ops + 2))
    80014ef0:	399280ef          	jal	ra,8003da88 <js_add_slow>
    80014ef4:	c509                	beqz	a0,80014efe <JS_CallInternal+0x5f90>
quickjs-nuttx/quickjs.c:17825
                    sp--;
    80014ef6:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:17796
                pc += 1;
    80014ef8:	8d52                	mv	s10,s4
    80014efa:	905fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17828
                    set_value(ctx, pv, ops[0]);
    80014efe:	ef043603          	ld	a2,-272(s0)
    80014f02:	ef843683          	ld	a3,-264(s0)
    80014f06:	b77d                	j	80014eb4 <JS_CallInternal+0x5f46>
quickjs-nuttx/quickjs.c:17835
                op1 = sp[-2];
    80014f08:	fe0cb783          	ld	a5,-32(s9)
    80014f0c:	e8f43823          	sd	a5,-368(s0)
    80014f10:	fe8cb783          	ld	a5,-24(s9)
    80014f14:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:17836
                op2 = sp[-1];
    80014f18:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:17835
                op1 = sp[-2];
    80014f1c:	fe8cb703          	ld	a4,-24(s9)
quickjs-nuttx/quickjs.c:17836
                op2 = sp[-1];
    80014f20:	ecf43823          	sd	a5,-304(s0)
    80014f24:	ff8cb783          	ld	a5,-8(s9)
    80014f28:	ecf43c23          	sd	a5,-296(s0)
    80014f2c:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:17837
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80014f30:	00f766b3          	or	a3,a4,a5
    80014f34:	2681                	sext.w	a3,a3
    80014f36:	eab1                	bnez	a3,80014f8a <JS_CallInternal+0x601c>
quickjs-nuttx/quickjs.c:17839
                    r = (int64_t)JS_VALUE_GET_INT(op1) - JS_VALUE_GET_INT(op2);
    80014f38:	e9042783          	lw	a5,-368(s0)
    80014f3c:	ed042683          	lw	a3,-304(s0)
quickjs-nuttx/quickjs.c:17840
                    if (unlikely((int)r != r))
    80014f40:	40d7863b          	subw	a2,a5,a3
quickjs-nuttx/quickjs.c:17839
                    r = (int64_t)JS_VALUE_GET_INT(op1) - JS_VALUE_GET_INT(op2);
    80014f44:	8f95                	sub	a5,a5,a3
quickjs-nuttx/quickjs.c:17840
                    if (unlikely((int)r != r))
    80014f46:	26f61563          	bne	a2,a5,800151b0 <JS_CallInternal+0x6242>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80014f4a:	92043023          	sd	zero,-1760(s0)
    80014f4e:	92c42023          	sw	a2,-1760(s0)
    80014f52:	92043783          	ld	a5,-1760(s0)
    80014f56:	ee043c23          	sd	zero,-264(s0)
    80014f5a:	92043423          	sd	zero,-1752(s0)
    80014f5e:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17842
                    sp[-2] = JS_NewInt32(ctx, r);
    80014f62:	fefcb023          	sd	a5,-32(s9)
    80014f66:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:17845
                    sp[-2] = __JS_NewFloat64(ctx, JS_VALUE_GET_FLOAT64(op1) -
    80014f6a:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:17852
            BREAK;
    80014f6e:	000d4b03          	lbu	s6,0(s10)
    80014f72:	0005a797          	auipc	a5,0x5a
    80014f76:	ebe78793          	addi	a5,a5,-322 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17847
                    sp--;
    80014f7a:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17852
            BREAK;
    80014f7c:	003b1713          	slli	a4,s6,0x3
    80014f80:	97ba                	add	a5,a5,a4
    80014f82:	639c                	ld	a5,0(a5)
    80014f84:	0d05                	addi	s10,s10,1
    80014f86:	a20fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17844
                } else if (JS_VALUE_IS_BOTH_FLOAT(op1, op2)) {
    80014f8a:	2701                	sext.w	a4,a4
    80014f8c:	469d                	li	a3,7
    80014f8e:	22d71163          	bne	a4,a3,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17844 (discriminator 1)
    80014f92:	2781                	sext.w	a5,a5
    80014f94:	20e79e63          	bne	a5,a4,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17845
                    sp[-2] = __JS_NewFloat64(ctx, JS_VALUE_GET_FLOAT64(op1) -
    80014f98:	e9043787          	fld	fa5,-368(s0)
    80014f9c:	ed043707          	fld	fa4,-304(s0)
    80014fa0:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
    80014fa4:	fefcb027          	fsd	fa5,-32(s9)
    80014fa8:	b7c9                	j	80014f6a <JS_CallInternal+0x5ffc>
quickjs-nuttx/quickjs.c:17857
                op1 = sp[-2];
    80014faa:	fe0cb783          	ld	a5,-32(s9)
    80014fae:	e8f43823          	sd	a5,-368(s0)
    80014fb2:	fe8cb783          	ld	a5,-24(s9)
    80014fb6:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:17858
                op2 = sp[-1];
    80014fba:	ff0cb703          	ld	a4,-16(s9)
quickjs-nuttx/quickjs.c:17857
                op1 = sp[-2];
    80014fbe:	fe8cb783          	ld	a5,-24(s9)
quickjs-nuttx/quickjs.c:17858
                op2 = sp[-1];
    80014fc2:	ece43823          	sd	a4,-304(s0)
    80014fc6:	ff8cb703          	ld	a4,-8(s9)
    80014fca:	ece43c23          	sd	a4,-296(s0)
    80014fce:	ff8cb703          	ld	a4,-8(s9)
quickjs-nuttx/quickjs.c:17859
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80014fd2:	00e7e6b3          	or	a3,a5,a4
    80014fd6:	2681                	sext.w	a3,a3
    80014fd8:	e6c9                	bnez	a3,80015062 <JS_CallInternal+0x60f4>
quickjs-nuttx/quickjs.c:17862
                    v1 = JS_VALUE_GET_INT(op1);
    80014fda:	e9042783          	lw	a5,-368(s0)
quickjs-nuttx/quickjs.c:17863
                    v2 = JS_VALUE_GET_INT(op2);
    80014fde:	ed042603          	lw	a2,-304(s0)
quickjs-nuttx/quickjs.c:17864
                    r = (int64_t)v1 * v2;
    80014fe2:	02c786b3          	mul	a3,a5,a2
quickjs-nuttx/quickjs.c:17865
                    if (unlikely((int)r != r)) {
    80014fe6:	0006871b          	sext.w	a4,a3
    80014fea:	02d70863          	beq	a4,a3,8001501a <JS_CallInternal+0x60ac>
quickjs-nuttx/quickjs.c:17867
                        if (unlikely(sf->js_mode & JS_MODE_MATH) &&
    80014fee:	77fd                	lui	a5,0xfffff
    80014ff0:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80014ff4:	97a2                	add	a5,a5,s0
    80014ff6:	639c                	ld	a5,0(a5)
    80014ff8:	43fc                	lw	a5,68(a5)
    80014ffa:	8b91                	andi	a5,a5,4
    80014ffc:	cb89                	beqz	a5,8001500e <JS_CallInternal+0x60a0>
quickjs-nuttx/quickjs.c:17868 (discriminator 1)
                            (r < -MAX_SAFE_INTEGER || r > MAX_SAFE_INTEGER))
    80014ffe:	57fd                	li	a5,-1
