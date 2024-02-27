    80018000:	36e0b0ef          	jal	ra,8002336e <set_array_length>
    80018004:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:9198
                    if ((flags & (JS_PROP_HAS_WRITABLE | JS_PROP_WRITABLE)) ==
    80018006:	2024f493          	andi	s1,s1,514
    8001800a:	20000793          	li	a5,512
    8001800e:	b6f49ee3          	bne	s1,a5,80017b8a <JS_DefineProperty+0x3c>
quickjs-nuttx/quickjs.c:9200
                        prs = get_shape_prop(p->shape);
    80018012:	018a3783          	ld	a5,24(s4)
quickjs-nuttx/quickjs.c:9201
                        if (js_update_property_flags(ctx, p, &prs,
    80018016:	10b0                	addi	a2,sp,104
    80018018:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:9202
                                                     prs->flags & ~JS_PROP_WRITABLE))
    8001801a:	43b4                	lw	a3,64(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001801c:	04078713          	addi	a4,a5,64
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9201
                        if (js_update_property_flags(ctx, p, &prs,
    80018020:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:9202
                                                     prs->flags & ~JS_PROP_WRITABLE))
    80018022:	01a6d69b          	srliw	a3,a3,0x1a
quickjs-nuttx/quickjs.c:9201
                        if (js_update_property_flags(ctx, p, &prs,
    80018026:	03d6f693          	andi	a3,a3,61
quickjs-nuttx/quickjs.c:9200
                        prs = get_shape_prop(p->shape);
    8001802a:	f4ba                	sd	a4,104(sp)
quickjs-nuttx/quickjs.c:9201
                        if (js_update_property_flags(ctx, p, &prs,
    8001802c:	7cc020ef          	jal	ra,8001a7f8 <js_update_property_flags>
    80018030:	b4050de3          	beqz	a0,80017b8a <JS_DefineProperty+0x3c>
    80018034:	b11d                	j	80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9207
                    if (flags & JS_PROP_HAS_VALUE) {
    80018036:	c305                	beqz	a4,80018056 <JS_DefineProperty+0x508>
quickjs-nuttx/quickjs.c:9208
                        JS_FreeValue(ctx, pr->u.value);
    80018038:	00093583          	ld	a1,0(s2)
    8001803c:	00893603          	ld	a2,8(s2)
    80018040:	8522                	mv	a0,s0
    80018042:	f5cf30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9209
                        pr->u.value = JS_DupValue(ctx, val);
    80018046:	6506                	ld	a0,64(sp)
    80018048:	65a6                	ld	a1,72(sp)
    8001804a:	bd0f20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001804e:	00a93023          	sd	a0,0(s2)
    80018052:	00b93423          	sd	a1,8(s2)
quickjs-nuttx/quickjs.c:9211
                    if (flags & JS_PROP_HAS_WRITABLE) {
    80018056:	2004f793          	andi	a5,s1,512
    8001805a:	dc078ae3          	beqz	a5,80017e2e <JS_DefineProperty+0x2e0>
quickjs-nuttx/quickjs.c:9213
                                                     (prs->flags & ~JS_PROP_WRITABLE) |
    8001805e:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:9214
                                                     (flags & JS_PROP_WRITABLE)))
    80018060:	0024f693          	andi	a3,s1,2
quickjs-nuttx/quickjs.c:9212
                        if (js_update_property_flags(ctx, p, &prs,
    80018064:	10b0                	addi	a2,sp,104
quickjs-nuttx/quickjs.c:9213
                                                     (prs->flags & ~JS_PROP_WRITABLE) |
    80018066:	439c                	lw	a5,0(a5)
quickjs-nuttx/quickjs.c:9212
                        if (js_update_property_flags(ctx, p, &prs,
    80018068:	85d2                	mv	a1,s4
    8001806a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:9213
                                                     (prs->flags & ~JS_PROP_WRITABLE) |
    8001806c:	01a7d79b          	srliw	a5,a5,0x1a
quickjs-nuttx/quickjs.c:9212
                        if (js_update_property_flags(ctx, p, &prs,
    80018070:	03d7f793          	andi	a5,a5,61
    80018074:	8edd                	or	a3,a3,a5
    80018076:	782020ef          	jal	ra,8001a7f8 <js_update_property_flags>
    8001807a:	da050ae3          	beqz	a0,80017e2e <JS_DefineProperty+0x2e0>
    8001807e:	bef1                	j	80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9232
    if (p->fast_array) {
    80018080:	005a4783          	lbu	a5,5(s4)
    80018084:	8ba1                	andi	a5,a5,8
    80018086:	18078563          	beqz	a5,80018210 <JS_DefineProperty+0x6c2>
quickjs-nuttx/quickjs.c:9235
        if (p->class_id == JS_CLASS_ARRAY) {
    8001808a:	006a5783          	lhu	a5,6(s4)
    8001808e:	4709                	li	a4,2
    80018090:	04e79363          	bne	a5,a4,800180d6 <JS_DefineProperty+0x588>
quickjs-nuttx/quickjs.c:9236
            if (__JS_AtomIsTaggedInt(prop)) {
    80018094:	67e2                	ld	a5,24(sp)
    80018096:	1607dd63          	bgez	a5,80018210 <JS_DefineProperty+0x6c2>
quickjs-nuttx/quickjs.c:9238
                if (idx < p->u.array.count) {
    8001809a:	040a2783          	lw	a5,64(s4)
    8001809e:	16fc7963          	bgeu	s8,a5,80018210 <JS_DefineProperty+0x6c2>
quickjs-nuttx/quickjs.c:9242
                    if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    800180a2:	000a8763          	beqz	s5,800180b0 <JS_DefineProperty+0x562>
quickjs-nuttx/quickjs.c:9244
                        if (convert_fast_array_to_array(ctx, p))
    800180a6:	85d2                	mv	a1,s4
    800180a8:	8522                	mv	a0,s0
    800180aa:	1c2040ef          	jal	ra,8001c26c <convert_fast_array_to_array>
    800180ae:	b145                	j	80017d4e <JS_DefineProperty+0x200>
quickjs-nuttx/quickjs.c:9249
                    if (flags & JS_PROP_HAS_VALUE) {
    800180b0:	80b5                	srli	s1,s1,0xd
    800180b2:	8885                	andi	s1,s1,1
    800180b4:	f00488e3          	beqz	s1,80017fc4 <JS_DefineProperty+0x476>
quickjs-nuttx/quickjs.c:9250
                        set_value(ctx, &p->u.array.u.values[idx], JS_DupValue(ctx, val));
    800180b8:	038a3783          	ld	a5,56(s4)
    800180bc:	6506                	ld	a0,64(sp)
    800180be:	65a6                	ld	a1,72(sp)
    800180c0:	0c12                	slli	s8,s8,0x4
    800180c2:	9c3e                	add	s8,s8,a5
    800180c4:	b56f20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800180c8:	862a                	mv	a2,a0
    800180ca:	86ae                	mv	a3,a1
    800180cc:	8522                	mv	a0,s0
    800180ce:	85e2                	mv	a1,s8
    800180d0:	b6ff30ef          	jal	ra,8000bc3e <set_value>
    800180d4:	bdc5                	j	80017fc4 <JS_DefineProperty+0x476>
quickjs-nuttx/quickjs.c:9255
        } else if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    800180d6:	37ad                	addiw	a5,a5,-21
    800180d8:	17c2                	slli	a5,a5,0x30
    800180da:	93c1                	srli	a5,a5,0x30
    800180dc:	4729                	li	a4,10
    800180de:	12f76963          	bltu	a4,a5,80018210 <JS_DefineProperty+0x6c2>
quickjs-nuttx/quickjs.c:9260
            if (!__JS_AtomIsTaggedInt(prop)) {
    800180e2:	0c0dcb63          	bltz	s11,800181b8 <JS_DefineProperty+0x66a>
quickjs-nuttx/quickjs.c:9262
                num = JS_AtomIsNumericIndex1(ctx, prop);
    800180e6:	85ee                	mv	a1,s11
    800180e8:	8522                	mv	a0,s0
    800180ea:	7cb0f0ef          	jal	ra,800280b4 <JS_AtomIsNumericIndex1>
    800180ee:	e1aa                	sd	a0,192(sp)
    800180f0:	e5ae                	sd	a1,200(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    800180f2:	0005891b          	sext.w	s2,a1
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9263
                if (JS_IsUndefined(num))
    800180f6:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:9262
                num = JS_AtomIsNumericIndex1(ctx, prop);
    800180f8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:9263
                if (JS_IsUndefined(num))
    800180fa:	10f90b63          	beq	s2,a5,80018210 <JS_DefineProperty+0x6c2>
quickjs-nuttx/quickjs.c:9265
                if (JS_IsException(num))
    800180fe:	4799                	li	a5,6
    80018100:	b4f90de3          	beq	s2,a5,80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9267
                ret = JS_NumberIsInteger(ctx, num);
    80018104:	85aa                	mv	a1,a0
    80018106:	8522                	mv	a0,s0
    80018108:	65c0a0ef          	jal	ra,80022764 <JS_NumberIsInteger>
quickjs-nuttx/quickjs.c:9268
                if (ret < 0) {
    8001810c:	00055863          	bgez	a0,8001811c <JS_DefineProperty+0x5ce>
quickjs-nuttx/quickjs.c:9269
                    JS_FreeValue(ctx, num);
    80018110:	658e                	ld	a1,192(sp)
    80018112:	662e                	ld	a2,200(sp)
    80018114:	8522                	mv	a0,s0
    80018116:	e88f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9270
                    return -1;
    8001811a:	b681                	j	80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9272
                if (!ret) {
    8001811c:	e105                	bnez	a0,8001813c <JS_DefineProperty+0x5ee>
quickjs-nuttx/quickjs.c:9273
                    JS_FreeValue(ctx, num);
    8001811e:	662e                	ld	a2,200(sp)
    80018120:	658e                	ld	a1,192(sp)
    80018122:	8522                	mv	a0,s0
    80018124:	e7af30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9274
                    return JS_ThrowTypeErrorOrFalse(ctx, flags, "non integer index in typed array");
    80018128:	00052617          	auipc	a2,0x52
    8001812c:	07860613          	addi	a2,a2,120 # 8006a1a0 <qjsc_repl+0x4bf0>
quickjs-nuttx/quickjs.c:9293
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "invalid descriptor flags");
    80018130:	85a6                	mv	a1,s1
    80018132:	8522                	mv	a0,s0
    80018134:	20a000ef          	jal	ra,8001833e <JS_ThrowTypeErrorOrFalse>
quickjs-nuttx/quickjs.c:9296
                return JS_SetPropertyValue(ctx, this_obj, JS_NewInt32(ctx, idx), JS_DupValue(ctx, val), flags);
    80018138:	89aa                	mv	s3,a0
    8001813a:	b605                	j	80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9276
                ret = JS_NumberIsNegativeOrMinusZero(ctx, num);
    8001813c:	678e                	ld	a5,192(sp)
    8001813e:	f1be                	sd	a5,224(sp)
    80018140:	67ae                	ld	a5,200(sp)
    80018142:	f5be                	sd	a5,232(sp)
JS_NumberIsNegativeOrMinusZero():
quickjs-nuttx/quickjs.c:11152
    switch(tag) {
    80018144:	57d5                	li	a5,-11
    80018146:	04f90063          	beq	s2,a5,80018186 <JS_DefineProperty+0x638>
    8001814a:	0327e863          	bltu	a5,s2,8001817a <JS_DefineProperty+0x62c>
    8001814e:	04090063          	beqz	s2,8001818e <JS_DefineProperty+0x640>
    80018152:	479d                	li	a5,7
    80018154:	04f90163          	beq	s2,a5,80018196 <JS_DefineProperty+0x648>
    80018158:	4901                	li	s2,0
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9277
                JS_FreeValue(ctx, num);
    8001815a:	662e                	ld	a2,200(sp)
    8001815c:	658e                	ld	a1,192(sp)
    8001815e:	8522                	mv	a0,s0
    80018160:	e3ef30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9279
                    return JS_ThrowTypeErrorOrFalse(ctx, flags, "negative index in typed array");
    80018164:	00052617          	auipc	a2,0x52
    80018168:	08c60613          	addi	a2,a2,140 # 8006a1f0 <qjsc_repl+0x4c40>
quickjs-nuttx/quickjs.c:9278
                if (ret) {
    8001816c:	fc0912e3          	bnez	s2,80018130 <JS_DefineProperty+0x5e2>
quickjs-nuttx/quickjs.c:9288
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "out-of-bound index in typed array");
    80018170:	00052617          	auipc	a2,0x52
    80018174:	05860613          	addi	a2,a2,88 # 8006a1c8 <qjsc_repl+0x4c18>
    80018178:	bf65                	j	80018130 <JS_DefineProperty+0x5e2>
JS_NumberIsNegativeOrMinusZero():
quickjs-nuttx/quickjs.c:11152
    switch(tag) {
    8001817a:	57d9                	li	a5,-10
    8001817c:	02f90163          	beq	s2,a5,8001819e <JS_DefineProperty+0x650>
    80018180:	57dd                	li	a5,-9
    80018182:	fcf91be3          	bne	s2,a5,80018158 <JS_DefineProperty+0x60a>
quickjs-nuttx/quickjs.c:11181
            return p->num.sign;
    80018186:	778e                	ld	a5,224(sp)
    80018188:	0107a903          	lw	s2,16(a5)
    8001818c:	b7f9                	j	8001815a <JS_DefineProperty+0x60c>
quickjs-nuttx/quickjs.c:11157
            return (v < 0);
    8001818e:	590e                	lw	s2,224(sp)
    80018190:	01f9591b          	srliw	s2,s2,0x1f
    80018194:	b7d9                	j	8001815a <JS_DefineProperty+0x60c>
quickjs-nuttx/quickjs.c:11163
            return (u.u64 >> 63);
    80018196:	790e                	ld	s2,224(sp)
    80018198:	00092913          	slti	s2,s2,0
    8001819c:	bf7d                	j	8001815a <JS_DefineProperty+0x60c>
quickjs-nuttx/quickjs.c:11167
            JSBigFloat *p = JS_VALUE_GET_PTR(val);
    8001819e:	778e                	ld	a5,224(sp)
quickjs-nuttx/quickjs.c:11169
            return p->num.sign && !bf_is_zero(&p->num);
    800181a0:	0107a903          	lw	s2,16(a5)
    800181a4:	fa090be3          	beqz	s2,8001815a <JS_DefineProperty+0x60c>
    800181a8:	0187b903          	ld	s2,24(a5)
    800181ac:	57fd                	li	a5,-1
    800181ae:	17fe                	slli	a5,a5,0x3f
    800181b0:	993e                	add	s2,s2,a5
quickjs-nuttx/quickjs.c:11186
        return FALSE;
    800181b2:	01203933          	snez	s2,s2
    800181b6:	b755                	j	8001815a <JS_DefineProperty+0x60c>
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9286
            if (idx >= p->u.array.count) {
    800181b8:	040a2783          	lw	a5,64(s4)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    800181bc:	021d9313          	slli	t1,s11,0x21
    800181c0:	02135313          	srli	t1,t1,0x21
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9286
            if (idx >= p->u.array.count) {
    800181c4:	faf376e3          	bgeu	t1,a5,80018170 <JS_DefineProperty+0x622>
quickjs-nuttx/quickjs.c:9291
            if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET) ||
    800181c8:	000a8763          	beqz	s5,800181d6 <JS_DefineProperty+0x688>
quickjs-nuttx/quickjs.c:9293
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "invalid descriptor flags");
    800181cc:	00052617          	auipc	a2,0x52
    800181d0:	04460613          	addi	a2,a2,68 # 8006a210 <qjsc_repl+0x4c60>
    800181d4:	bfb1                	j	80018130 <JS_DefineProperty+0x5e2>
quickjs-nuttx/quickjs.c:9295
            if (flags & JS_PROP_HAS_VALUE) {
    800181d6:	00d4d793          	srli	a5,s1,0xd
    800181da:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:9298
            return TRUE;
    800181dc:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:9295
            if (flags & JS_PROP_HAS_VALUE) {
    800181de:	a6078ee3          	beqz	a5,80017c5a <JS_DefineProperty+0x10c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800181e2:	f182                	sd	zero,224(sp)
    800181e4:	d19a                	sw	t1,224(sp)
    800181e6:	778e                	ld	a5,224(sp)
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9296
                return JS_SetPropertyValue(ctx, this_obj, JS_NewInt32(ctx, idx), JS_DupValue(ctx, val), flags);
    800181e8:	6506                	ld	a0,64(sp)
    800181ea:	65a6                	ld	a1,72(sp)
    800181ec:	f93e                	sd	a5,176(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800181ee:	f582                	sd	zero,232(sp)
    800181f0:	fd02                	sd	zero,184(sp)
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9296
    800181f2:	a28f20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800181f6:	882e                	mv	a6,a1
    800181f8:	e5ae                	sd	a1,200(sp)
    800181fa:	76ca                	ld	a3,176(sp)
    800181fc:	776a                	ld	a4,184(sp)
    800181fe:	65c6                	ld	a1,80(sp)
    80018200:	6666                	ld	a2,88(sp)
    80018202:	87aa                	mv	a5,a0
    80018204:	e1aa                	sd	a0,192(sp)
    80018206:	88a6                	mv	a7,s1
    80018208:	8522                	mv	a0,s0
    8001820a:	eeaff0ef          	jal	ra,800178f4 <JS_SetPropertyValue>
    8001820e:	b72d                	j	80018138 <JS_DefineProperty+0x5ea>
quickjs-nuttx/quickjs.c:9303
    return JS_CreateProperty(ctx, p, prop, val, getter, setter, flags);
    80018210:	77b6                	ld	a5,360(sp)
    80018212:	7896                	ld	a7,352(sp)
    80018214:	7862                	ld	a6,56(sp)
    80018216:	e03e                	sd	a5,0(sp)
    80018218:	6686                	ld	a3,64(sp)
    8001821a:	77c2                	ld	a5,48(sp)
    8001821c:	6726                	ld	a4,72(sp)
    8001821e:	e426                	sd	s1,8(sp)
    80018220:	866e                	mv	a2,s11
    80018222:	85d2                	mv	a1,s4
    80018224:	8522                	mv	a0,s0
    80018226:	09e100ef          	jal	ra,800282c4 <JS_CreateProperty>
    8001822a:	b621                	j	80017d32 <JS_DefineProperty+0x1e4>

000000008001822c <JS_DefinePropertyValue>:
JS_DefinePropertyValue():
quickjs-nuttx/quickjs.c:9341
    ret = JS_DefineProperty(ctx, this_obj, prop, val, JS_UNDEFINED, JS_UNDEFINED,
    8001822c:	6889                	lui	a7,0x2
    8001822e:	70088893          	addi	a7,a7,1792 # 2700 <asinh-0x7fffd900>
quickjs-nuttx/quickjs.c:9339
{
    80018232:	7119                	addi	sp,sp,-128
quickjs-nuttx/quickjs.c:9341
    ret = JS_DefineProperty(ctx, this_obj, prop, val, JS_UNDEFINED, JS_UNDEFINED,
    80018234:	01186833          	or	a6,a6,a7
    80018238:	e842                	sd	a6,16(sp)
    8001823a:	480d                	li	a6,3
quickjs-nuttx/quickjs.c:9339
{
    8001823c:	fc86                	sd	ra,120(sp)
    8001823e:	f8a2                	sd	s0,112(sp)
    80018240:	f4a6                	sd	s1,104(sp)
    80018242:	f03a                	sd	a4,32(sp)
    80018244:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:9341
    ret = JS_DefineProperty(ctx, this_obj, prop, val, JS_UNDEFINED, JS_UNDEFINED,
    80018246:	e442                	sd	a6,8(sp)
    80018248:	e002                	sd	zero,0(sp)
    8001824a:	4801                	li	a6,0
    8001824c:	488d                	li	a7,3
quickjs-nuttx/quickjs.c:9339
{
    8001824e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:9341
    ret = JS_DefineProperty(ctx, this_obj, prop, val, JS_UNDEFINED, JS_UNDEFINED,
    80018250:	8ffff0ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:9343
    JS_FreeValue(ctx, val);
    80018254:	7582                	ld	a1,32(sp)
    80018256:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:9341
    ret = JS_DefineProperty(ctx, this_obj, prop, val, JS_UNDEFINED, JS_UNDEFINED,
    80018258:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:9343
    JS_FreeValue(ctx, val);
    8001825a:	8526                	mv	a0,s1
    8001825c:	d42f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9345
}
    80018260:	70e6                	ld	ra,120(sp)
    80018262:	8522                	mv	a0,s0
    80018264:	7446                	ld	s0,112(sp)
    80018266:	74a6                	ld	s1,104(sp)
    80018268:	6109                	addi	sp,sp,128
    8001826a:	8082                	ret

000000008001826c <JS_ThrowError2>:
JS_ThrowError2():
quickjs-nuttx/quickjs.c:6609
{
    8001826c:	710d                	addi	sp,sp,-352
    8001826e:	eaa2                	sd	s0,336(sp)
    80018270:	e6a6                	sd	s1,328(sp)
    80018272:	842e                	mv	s0,a1
    80018274:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:6613
    vsnprintf(buf, sizeof(buf), fmt, ap);
    80018276:	10000593          	li	a1,256
    8001827a:	0088                	addi	a0,sp,64
quickjs-nuttx/quickjs.c:6609
{
    8001827c:	ee86                	sd	ra,344(sp)
    8001827e:	e2ca                	sd	s2,320(sp)
    80018280:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:6613
    vsnprintf(buf, sizeof(buf), fmt, ap);
    80018282:	7fb480ef          	jal	ra,8006127c <vsnprintf>
quickjs-nuttx/quickjs.c:6614
    obj = JS_NewObjectProtoClass(ctx, ctx->native_error_proto[error_num],
    80018286:	02041713          	slli	a4,s0,0x20
    8001828a:	01c75793          	srli	a5,a4,0x1c
    8001828e:	09078793          	addi	a5,a5,144
    80018292:	97a6                	add	a5,a5,s1
    80018294:	678c                	ld	a1,8(a5)
    80018296:	6b90                	ld	a2,16(a5)
    80018298:	468d                	li	a3,3
    8001829a:	8526                	mv	a0,s1
    8001829c:	149030ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    800182a0:	e02a                	sd	a0,0(sp)
    800182a2:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:6616
    if (unlikely(JS_IsException(obj))) {
    800182a4:	0005871b          	sext.w	a4,a1
    800182a8:	4799                	li	a5,6
    800182aa:	02f71963          	bne	a4,a5,800182dc <JS_ThrowError2+0x70>
quickjs-nuttx/quickjs.c:6618
        obj = JS_NULL;
    800182ae:	e002                	sd	zero,0(sp)
    800182b0:	4409                	li	s0,2
quickjs-nuttx/quickjs.c:6624
    if (add_backtrace) {
    800182b2:	00090a63          	beqz	s2,800182c6 <JS_ThrowError2+0x5a>
quickjs-nuttx/quickjs.c:6625
        build_backtrace(ctx, obj, NULL, 0, 0);
    800182b6:	6582                	ld	a1,0(sp)
    800182b8:	4781                	li	a5,0
    800182ba:	4701                	li	a4,0
    800182bc:	4681                	li	a3,0
    800182be:	8622                	mv	a2,s0
    800182c0:	8526                	mv	a0,s1
    800182c2:	4be0d0ef          	jal	ra,80025780 <build_backtrace>
quickjs-nuttx/quickjs.c:6627
    ret = JS_Throw(ctx, obj);
    800182c6:	6582                	ld	a1,0(sp)
    800182c8:	8622                	mv	a2,s0
    800182ca:	8526                	mv	a0,s1
    800182cc:	976f60ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:6629
}
    800182d0:	60f6                	ld	ra,344(sp)
    800182d2:	6456                	ld	s0,336(sp)
    800182d4:	64b6                	ld	s1,328(sp)
    800182d6:	6916                	ld	s2,320(sp)
    800182d8:	6135                	addi	sp,sp,352
    800182da:	8082                	ret
    800182dc:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:6620
        JS_DefinePropertyValue(ctx, obj, JS_ATOM_message,
    800182de:	8526                	mv	a0,s1
    800182e0:	008c                	addi	a1,sp,64
    800182e2:	6d6070ef          	jal	ra,8001f9b8 <JS_NewString>
    800182e6:	87ae                	mv	a5,a1
    800182e8:	6622                	ld	a2,8(sp)
    800182ea:	6582                	ld	a1,0(sp)
    800182ec:	872a                	mv	a4,a0
    800182ee:	480d                	li	a6,3
    800182f0:	03300693          	li	a3,51
    800182f4:	8526                	mv	a0,s1
    800182f6:	f37ff0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800182fa:	bf65                	j	800182b2 <JS_ThrowError2+0x46>

00000000800182fc <JS_ThrowError>:
JS_ThrowError():
quickjs-nuttx/quickjs.c:6633
{
    800182fc:	7139                	addi	sp,sp,-64
    800182fe:	f822                	sd	s0,48(sp)
    80018300:	f426                	sd	s1,40(sp)
    80018302:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:6634
    JSRuntime *rt = ctx->rt;
    80018304:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:6633
{
    80018306:	842a                	mv	s0,a0
    80018308:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:6640
    add_backtrace = !rt->in_out_of_memory &&
    8001830a:	0f07c703          	lbu	a4,240(a5)
    8001830e:	e715                	bnez	a4,8001833a <JS_ThrowError+0x3e>
quickjs-nuttx/quickjs.c:6639 (discriminator 1)
    sf = rt->current_stack_frame;
    80018310:	7ffc                	ld	a5,248(a5)
quickjs-nuttx/quickjs.c:6640 (discriminator 1)
    add_backtrace = !rt->in_out_of_memory &&
    80018312:	4705                	li	a4,1
    80018314:	cb99                	beqz	a5,8001832a <JS_ThrowError+0x2e>
quickjs-nuttx/quickjs.c:6641
        (!sf || (JS_GetFunctionBytecode(sf->cur_func) == NULL));
    80018316:	6788                	ld	a0,8(a5)
    80018318:	6b8c                	ld	a1,16(a5)
    8001831a:	e436                	sd	a3,8(sp)
    8001831c:	e032                	sd	a2,0(sp)
    8001831e:	916f10ef          	jal	ra,80009434 <JS_GetFunctionBytecode>
    80018322:	6602                	ld	a2,0(sp)
    80018324:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:6640
    add_backtrace = !rt->in_out_of_memory &&
    80018326:	00153713          	seqz	a4,a0
quickjs-nuttx/quickjs.c:6642 (discriminator 5)
    return JS_ThrowError2(ctx, error_num, fmt, ap, add_backtrace);
    8001832a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:6643 (discriminator 5)
}
    8001832c:	7442                	ld	s0,48(sp)
    8001832e:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:6642 (discriminator 5)
    return JS_ThrowError2(ctx, error_num, fmt, ap, add_backtrace);
    80018330:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:6643 (discriminator 5)
}
    80018332:	74a2                	ld	s1,40(sp)
    80018334:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:6642 (discriminator 5)
    return JS_ThrowError2(ctx, error_num, fmt, ap, add_backtrace);
    80018336:	f37ff06f          	j	8001826c <JS_ThrowError2>
quickjs-nuttx/quickjs.c:6640
    add_backtrace = !rt->in_out_of_memory &&
    8001833a:	4701                	li	a4,0
    8001833c:	b7fd                	j	8001832a <JS_ThrowError+0x2e>

000000008001833e <JS_ThrowTypeErrorOrFalse>:
JS_ThrowTypeErrorOrFalse():
quickjs-nuttx/quickjs.c:6668
{
    8001833e:	711d                	addi	sp,sp,-96
    80018340:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:6671
    if ((flags & JS_PROP_THROW) ||
    80018342:	00e5d793          	srli	a5,a1,0xe
quickjs-nuttx/quickjs.c:6668
{
    80018346:	f022                	sd	s0,32(sp)
    80018348:	f406                	sd	ra,40(sp)
    8001834a:	fc36                	sd	a3,56(sp)
    8001834c:	e0ba                	sd	a4,64(sp)
    8001834e:	e8c2                	sd	a6,80(sp)
    80018350:	ecc6                	sd	a7,88(sp)
quickjs-nuttx/quickjs.c:6671
    if ((flags & JS_PROP_THROW) ||
    80018352:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:6668
{
    80018354:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:6671
    if ((flags & JS_PROP_THROW) ||
    80018356:	eb91                	bnez	a5,8001836a <JS_ThrowTypeErrorOrFalse+0x2c>
quickjs-nuttx/quickjs.c:6672 (discriminator 1)
        ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    80018358:	67a1                	lui	a5,0x8
    8001835a:	e432                	sd	a2,8(sp)
    8001835c:	8dfd                	and	a1,a1,a5
quickjs-nuttx/quickjs.c:6671 (discriminator 1)
    if ((flags & JS_PROP_THROW) ||
    8001835e:	cd89                	beqz	a1,80018378 <JS_ThrowTypeErrorOrFalse+0x3a>
quickjs-nuttx/quickjs.c:6672
        ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    80018360:	825ef0ef          	jal	ra,80007b84 <is_strict_mode>
    80018364:	6622                	ld	a2,8(sp)
    80018366:	85aa                	mv	a1,a0
    80018368:	c901                	beqz	a0,80018378 <JS_ThrowTypeErrorOrFalse+0x3a>
quickjs-nuttx/quickjs.c:6673
        va_start(ap, fmt);
    8001836a:	1834                	addi	a3,sp,56
quickjs-nuttx/quickjs.c:6674
        JS_ThrowError(ctx, JS_TYPE_ERROR, fmt, ap);
    8001836c:	4591                	li	a1,4
    8001836e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:6673
        va_start(ap, fmt);
    80018370:	ec36                	sd	a3,24(sp)
quickjs-nuttx/quickjs.c:6674
        JS_ThrowError(ctx, JS_TYPE_ERROR, fmt, ap);
    80018372:	f8bff0ef          	jal	ra,800182fc <JS_ThrowError>
quickjs-nuttx/quickjs.c:6676
        return -1;
    80018376:	55fd                	li	a1,-1
quickjs-nuttx/quickjs.c:6680
}
    80018378:	70a2                	ld	ra,40(sp)
    8001837a:	7402                	ld	s0,32(sp)
    8001837c:	852e                	mv	a0,a1
    8001837e:	6125                	addi	sp,sp,96
    80018380:	8082                	ret

0000000080018382 <JS_ThrowSyntaxError>:
JS_ThrowSyntaxError():
quickjs-nuttx/quickjs.c:6646
{
    80018382:	7159                	addi	sp,sp,-112
    80018384:	e0b2                	sd	a2,64(sp)
    80018386:	e4b6                	sd	a3,72(sp)
quickjs-nuttx/quickjs.c:6651
    val = JS_ThrowError(ctx, JS_SYNTAX_ERROR, fmt, ap);
    80018388:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:6650
    va_start(ap, fmt);
    8001838a:	0094                	addi	a3,sp,64
quickjs-nuttx/quickjs.c:6651
    val = JS_ThrowError(ctx, JS_SYNTAX_ERROR, fmt, ap);
    8001838c:	458d                	li	a1,3
quickjs-nuttx/quickjs.c:6646
{
    8001838e:	fc06                	sd	ra,56(sp)
    80018390:	e8ba                	sd	a4,80(sp)
    80018392:	ecbe                	sd	a5,88(sp)
    80018394:	f0c2                	sd	a6,96(sp)
    80018396:	f4c6                	sd	a7,104(sp)
quickjs-nuttx/quickjs.c:6650
    va_start(ap, fmt);
    80018398:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:6651
    val = JS_ThrowError(ctx, JS_SYNTAX_ERROR, fmt, ap);
    8001839a:	f63ff0ef          	jal	ra,800182fc <JS_ThrowError>
quickjs-nuttx/quickjs.c:6654
}
    8001839e:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:6651
    val = JS_ThrowError(ctx, JS_SYNTAX_ERROR, fmt, ap);
    800183a0:	e82a                	sd	a0,16(sp)
    800183a2:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:6653
    return val;
    800183a4:	f02a                	sd	a0,32(sp)
    800183a6:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:6654
}
    800183a8:	6165                	addi	sp,sp,112
    800183aa:	8082                	ret

00000000800183ac <__JS_ThrowSyntaxErrorAtom>:
__JS_ThrowSyntaxErrorAtom():
quickjs-nuttx/quickjs.c:6692
{
    800183ac:	7135                	addi	sp,sp,-160
    800183ae:	eca6                	sd	s1,88(sp)
    800183b0:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:6694
    return JS_ThrowSyntaxError(ctx, fmt,
    800183b2:	862e                	mv	a2,a1
    800183b4:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs.c:6692
{
    800183b6:	f486                	sd	ra,104(sp)
    800183b8:	f0a2                	sd	s0,96(sp)
    800183ba:	fcb6                	sd	a3,120(sp)
    800183bc:	842a                	mv	s0,a0
    800183be:	e13a                	sd	a4,128(sp)
    800183c0:	e53e                	sd	a5,136(sp)
    800183c2:	e942                	sd	a6,144(sp)
    800183c4:	ed46                	sd	a7,152(sp)
quickjs-nuttx/quickjs.c:6694
    return JS_ThrowSyntaxError(ctx, fmt,
    800183c6:	850f20ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    800183ca:	862a                	mv	a2,a0
    800183cc:	85a6                	mv	a1,s1
    800183ce:	8522                	mv	a0,s0
    800183d0:	fb3ff0ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
quickjs-nuttx/quickjs.c:6696
}
    800183d4:	70a6                	ld	ra,104(sp)
    800183d6:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:6694
    return JS_ThrowSyntaxError(ctx, fmt,
    800183d8:	e02a                	sd	a0,0(sp)
    800183da:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:6696
}
    800183dc:	64e6                	ld	s1,88(sp)
    800183de:	610d                	addi	sp,sp,160
    800183e0:	8082                	ret

00000000800183e2 <js_resolve_export_throw_error>:
js_resolve_export_throw_error():
quickjs-nuttx/quickjs.c:27651
{
    800183e2:	7135                	addi	sp,sp,-160
    800183e4:	e922                	sd	s0,144(sp)
    800183e6:	e526                	sd	s1,136(sp)
    800183e8:	ed06                	sd	ra,152(sp)
    800183ea:	e14a                	sd	s2,128(sp)
quickjs-nuttx/quickjs.c:27654
    switch(res) {
    800183ec:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:27651
{
    800183ee:	84b2                	mv	s1,a2
    800183f0:	842a                	mv	s0,a0
    800183f2:	8636                	mv	a2,a3
quickjs-nuttx/quickjs.c:27654
    switch(res) {
    800183f4:	04f58063          	beq	a1,a5,80018434 <js_resolve_export_throw_error+0x52>
    800183f8:	478d                	li	a5,3
    800183fa:	04f58d63          	beq	a1,a5,80018454 <js_resolve_export_throw_error+0x72>
    800183fe:	57fd                	li	a5,-1
    80018400:	02f58463          	beq	a1,a5,80018428 <js_resolve_export_throw_error+0x46>
quickjs-nuttx/quickjs.c:27659
        JS_ThrowSyntaxError(ctx, "Could not find export '%s' in module '%s'",
    80018404:	858a                	mv	a1,sp
    80018406:	810f20ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    8001840a:	40d0                	lw	a2,4(s1)
    8001840c:	892a                	mv	s2,a0
    8001840e:	008c                	addi	a1,sp,64
    80018410:	8522                	mv	a0,s0
    80018412:	804f20ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    80018416:	86aa                	mv	a3,a0
    80018418:	864a                	mv	a2,s2
    8001841a:	00052597          	auipc	a1,0x52
    8001841e:	e1658593          	addi	a1,a1,-490 # 8006a230 <qjsc_repl+0x4c80>
quickjs-nuttx/quickjs.c:27669
        JS_ThrowSyntaxError(ctx, "export '%s' in module '%s' is ambiguous",
    80018422:	8522                	mv	a0,s0
    80018424:	f5fff0ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
quickjs-nuttx/quickjs.c:27674
}
    80018428:	60ea                	ld	ra,152(sp)
    8001842a:	644a                	ld	s0,144(sp)
    8001842c:	64aa                	ld	s1,136(sp)
    8001842e:	690a                	ld	s2,128(sp)
    80018430:	610d                	addi	sp,sp,160
    80018432:	8082                	ret
quickjs-nuttx/quickjs.c:27664
        JS_ThrowSyntaxError(ctx, "circular reference when looking for export '%s' in module '%s'",
    80018434:	858a                	mv	a1,sp
    80018436:	fe1f10ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    8001843a:	40d0                	lw	a2,4(s1)
    8001843c:	892a                	mv	s2,a0
    8001843e:	008c                	addi	a1,sp,64
    80018440:	8522                	mv	a0,s0
    80018442:	fd5f10ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    80018446:	86aa                	mv	a3,a0
    80018448:	864a                	mv	a2,s2
    8001844a:	00052597          	auipc	a1,0x52
    8001844e:	e1658593          	addi	a1,a1,-490 # 8006a260 <qjsc_repl+0x4cb0>
    80018452:	bfc1                	j	80018422 <js_resolve_export_throw_error+0x40>
quickjs-nuttx/quickjs.c:27669
        JS_ThrowSyntaxError(ctx, "export '%s' in module '%s' is ambiguous",
    80018454:	858a                	mv	a1,sp
    80018456:	fc1f10ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    8001845a:	40d0                	lw	a2,4(s1)
    8001845c:	892a                	mv	s2,a0
    8001845e:	008c                	addi	a1,sp,64
    80018460:	8522                	mv	a0,s0
    80018462:	fb5f10ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    80018466:	86aa                	mv	a3,a0
    80018468:	864a                	mv	a2,s2
    8001846a:	00052597          	auipc	a1,0x52
    8001846e:	e3658593          	addi	a1,a1,-458 # 8006a2a0 <qjsc_repl+0x4cf0>
    80018472:	bf45                	j	80018422 <js_resolve_export_throw_error+0x40>

0000000080018474 <bc_read_error_end>:
bc_read_error_end():
quickjs-nuttx/quickjs.c:35532
{
    80018474:	1141                	addi	sp,sp,-16
    80018476:	e022                	sd	s0,0(sp)
    80018478:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:35533
    if (!s->error_state) {
    8001847a:	591c                	lw	a5,48(a0)
quickjs-nuttx/quickjs.c:35532
{
    8001847c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:35533
    if (!s->error_state) {
    8001847e:	eb81                	bnez	a5,8001848e <bc_read_error_end+0x1a>
quickjs-nuttx/quickjs.c:35534
        JS_ThrowSyntaxError(s->ctx, "read after the end of the buffer");
    80018480:	6108                	ld	a0,0(a0)
    80018482:	00052597          	auipc	a1,0x52
    80018486:	e4658593          	addi	a1,a1,-442 # 8006a2c8 <qjsc_repl+0x4d18>
    8001848a:	ef9ff0ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
quickjs-nuttx/quickjs.c:35536
    return s->error_state = -1;
    8001848e:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:35537
}
    80018490:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs.c:35536
    return s->error_state = -1;
    80018492:	d81c                	sw	a5,48(s0)
quickjs-nuttx/quickjs.c:35537
}
    80018494:	6402                	ld	s0,0(sp)
    80018496:	557d                	li	a0,-1
    80018498:	0141                	addi	sp,sp,16
    8001849a:	8082                	ret

000000008001849c <bc_get_u8>:
bc_get_u8():
quickjs-nuttx/quickjs.c:35541
    if (unlikely(s->buf_end - s->ptr < 1)) {
    8001849c:	6918                	ld	a4,16(a0)
    8001849e:	6d14                	ld	a3,24(a0)
    800184a0:	8e99                	sub	a3,a3,a4
    800184a2:	00d04663          	bgtz	a3,800184ae <bc_get_u8+0x12>
quickjs-nuttx/quickjs.c:35542
        *pval = 0; /* avoid warning */
    800184a6:	00058023          	sb	zero,0(a1)
quickjs-nuttx/quickjs.c:35543
        return bc_read_error_end(s);
    800184aa:	fcbff06f          	j	80018474 <bc_read_error_end>
quickjs-nuttx/quickjs.c:35545
    *pval = *s->ptr++;
    800184ae:	00170693          	addi	a3,a4,1 # 34000001 <asinh-0x4bffffff>
    800184b2:	e914                	sd	a3,16(a0)
    800184b4:	00074783          	lbu	a5,0(a4)
quickjs-nuttx/quickjs.c:35547
}
    800184b8:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:35545
    *pval = *s->ptr++;
    800184ba:	00f58023          	sb	a5,0(a1)
quickjs-nuttx/quickjs.c:35547
}
    800184be:	8082                	ret

00000000800184c0 <bc_get_leb128>:
bc_get_leb128():
quickjs-nuttx/quickjs.c:35583
{
    800184c0:	1141                	addi	sp,sp,-16
    800184c2:	e022                	sd	s0,0(sp)
    800184c4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:35585
    ret = get_leb128(pval, s->ptr, s->buf_end);
    800184c6:	6c10                	ld	a2,24(s0)
quickjs-nuttx/quickjs.c:35583
{
    800184c8:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:35585
    ret = get_leb128(pval, s->ptr, s->buf_end);
    800184ca:	680c                	ld	a1,16(s0)
quickjs-nuttx/quickjs.c:35583
{
    800184cc:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:35585
    ret = get_leb128(pval, s->ptr, s->buf_end);
    800184ce:	c68f00ef          	jal	ra,80008936 <get_leb128>
quickjs-nuttx/quickjs.c:35586
    if (unlikely(ret < 0))
    800184d2:	00055863          	bgez	a0,800184e2 <bc_get_leb128+0x22>
quickjs-nuttx/quickjs.c:35587
        return bc_read_error_end(s);
    800184d6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:35590
}
    800184d8:	6402                	ld	s0,0(sp)
    800184da:	60a2                	ld	ra,8(sp)
    800184dc:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:35587
        return bc_read_error_end(s);
    800184de:	f97ff06f          	j	80018474 <bc_read_error_end>
quickjs-nuttx/quickjs.c:35588
    s->ptr += ret;
    800184e2:	681c                	ld	a5,16(s0)
quickjs-nuttx/quickjs.c:35590
}
    800184e4:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs.c:35588
    s->ptr += ret;
    800184e6:	953e                	add	a0,a0,a5
    800184e8:	e808                	sd	a0,16(s0)
quickjs-nuttx/quickjs.c:35590
}
    800184ea:	6402                	ld	s0,0(sp)
    800184ec:	4501                	li	a0,0
    800184ee:	0141                	addi	sp,sp,16
    800184f0:	8082                	ret

00000000800184f2 <bc_get_leb128_u16>:
bc_get_leb128_u16():
quickjs-nuttx/quickjs.c:35609
{
    800184f2:	1101                	addi	sp,sp,-32
    800184f4:	e822                	sd	s0,16(sp)
    800184f6:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:35611
    if (bc_get_leb128(s, &val)) {
    800184f8:	006c                	addi	a1,sp,12
quickjs-nuttx/quickjs.c:35609
{
    800184fa:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:35611
    if (bc_get_leb128(s, &val)) {
    800184fc:	fc5ff0ef          	jal	ra,800184c0 <bc_get_leb128>
    80018500:	e909                	bnez	a0,80018512 <bc_get_leb128_u16+0x20>
quickjs-nuttx/quickjs.c:35615
    *pval = val;
    80018502:	00c15783          	lhu	a5,12(sp)
quickjs-nuttx/quickjs.c:35617
}
    80018506:	60e2                	ld	ra,24(sp)
    80018508:	00f41023          	sh	a5,0(s0)
    8001850c:	6442                	ld	s0,16(sp)
    8001850e:	6105                	addi	sp,sp,32
    80018510:	8082                	ret
quickjs-nuttx/quickjs.c:35612
        *pval = 0;
    80018512:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:35613
        return -1;
    80018514:	557d                	li	a0,-1
    80018516:	bfc5                	j	80018506 <bc_get_leb128_u16+0x14>

0000000080018518 <bc_get_u64>:
bc_get_u64():
quickjs-nuttx/quickjs.c:35573
    if (unlikely(s->buf_end - s->ptr < 8)) {
    80018518:	691c                	ld	a5,16(a0)
    8001851a:	6d14                	ld	a3,24(a0)
    8001851c:	461d                	li	a2,7
    8001851e:	8e9d                	sub	a3,a3,a5
    80018520:	00d64663          	blt	a2,a3,8001852c <bc_get_u64+0x14>
quickjs-nuttx/quickjs.c:35574
        *pval = 0; /* avoid warning */
    80018524:	0005b023          	sd	zero,0(a1)
quickjs-nuttx/quickjs.c:35575
        return bc_read_error_end(s);
    80018528:	f4dff06f          	j	80018474 <bc_read_error_end>
get_u64():
quickjs-nuttx/cutils.h:155
    return ((const struct packed_u64 *)tab)->v;
    8001852c:	0017c683          	lbu	a3,1(a5) # 8001 <asinh-0x7fff7fff>
    80018530:	0007c603          	lbu	a2,0(a5)
    80018534:	06a2                	slli	a3,a3,0x8
    80018536:	8e55                	or	a2,a2,a3
    80018538:	0027c683          	lbu	a3,2(a5)
    8001853c:	06c2                	slli	a3,a3,0x10
    8001853e:	8ed1                	or	a3,a3,a2
    80018540:	0037c603          	lbu	a2,3(a5)
    80018544:	0662                	slli	a2,a2,0x18
    80018546:	8ed1                	or	a3,a3,a2
    80018548:	0047c603          	lbu	a2,4(a5)
    8001854c:	1602                	slli	a2,a2,0x20
    8001854e:	8e55                	or	a2,a2,a3
    80018550:	0057c683          	lbu	a3,5(a5)
    80018554:	16a2                	slli	a3,a3,0x28
    80018556:	8e55                	or	a2,a2,a3
    80018558:	0067c683          	lbu	a3,6(a5)
    8001855c:	0077c783          	lbu	a5,7(a5)
    80018560:	16c2                	slli	a3,a3,0x30
    80018562:	8ed1                	or	a3,a3,a2
    80018564:	17e2                	slli	a5,a5,0x38
    80018566:	8fd5                	or	a5,a5,a3
bc_get_u64():
quickjs-nuttx/quickjs.c:35577
    *pval = get_u64(s->ptr);
    80018568:	e19c                	sd	a5,0(a1)
quickjs-nuttx/quickjs.c:35578
    s->ptr += 8;
    8001856a:	691c                	ld	a5,16(a0)
    8001856c:	07a1                	addi	a5,a5,8
    8001856e:	e91c                	sd	a5,16(a0)
quickjs-nuttx/quickjs.c:35580
}
    80018570:	4501                	li	a0,0
    80018572:	8082                	ret

0000000080018574 <bc_get_buf>:
bc_get_buf():
quickjs-nuttx/quickjs.c:35621
    if (buf_len != 0) {
    80018574:	c239                	beqz	a2,800185ba <bc_get_buf+0x46>
quickjs-nuttx/quickjs.c:35620
{
    80018576:	1101                	addi	sp,sp,-32
    80018578:	e426                	sd	s1,8(sp)
    8001857a:	ec06                	sd	ra,24(sp)
    8001857c:	e822                	sd	s0,16(sp)
    8001857e:	84aa                	mv	s1,a0
    80018580:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:35622
        if (unlikely(!buf || s->buf_end - s->ptr < buf_len))
    80018582:	c989                	beqz	a1,80018594 <bc_get_buf+0x20>
    80018584:	688c                	ld	a1,16(s1)
    80018586:	6c9c                	ld	a5,24(s1)
    80018588:	02061413          	slli	s0,a2,0x20
    8001858c:	9001                	srli	s0,s0,0x20
    8001858e:	8f8d                	sub	a5,a5,a1
    80018590:	0087d963          	bge	a5,s0,800185a2 <bc_get_buf+0x2e>
quickjs-nuttx/quickjs.c:35628
}
    80018594:	6442                	ld	s0,16(sp)
    80018596:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:35623
            return bc_read_error_end(s);
    80018598:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:35628
}
    8001859a:	64a2                	ld	s1,8(sp)
    8001859c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:35623
            return bc_read_error_end(s);
    8001859e:	ed7ff06f          	j	80018474 <bc_read_error_end>
quickjs-nuttx/quickjs.c:35624
        memcpy(buf, s->ptr, buf_len);
    800185a2:	8622                	mv	a2,s0
    800185a4:	0094b0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:35625
        s->ptr += buf_len;
    800185a8:	689c                	ld	a5,16(s1)
quickjs-nuttx/quickjs.c:35628
}
    800185aa:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:35625
        s->ptr += buf_len;
    800185ac:	97a2                	add	a5,a5,s0
    800185ae:	e89c                	sd	a5,16(s1)
quickjs-nuttx/quickjs.c:35628
}
    800185b0:	60e2                	ld	ra,24(sp)
    800185b2:	6442                	ld	s0,16(sp)
    800185b4:	64a2                	ld	s1,8(sp)
    800185b6:	6105                	addi	sp,sp,32
    800185b8:	8082                	ret
    800185ba:	4501                	li	a0,0
    800185bc:	8082                	ret

00000000800185be <bc_idx_to_atom>:
bc_idx_to_atom():
quickjs-nuttx/quickjs.c:35631
{
    800185be:	1101                	addi	sp,sp,-32
    800185c0:	e426                	sd	s1,8(sp)
    800185c2:	ec06                	sd	ra,24(sp)
    800185c4:	e822                	sd	s0,16(sp)
    800185c6:	84ae                	mv	s1,a1
    800185c8:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:35634
    if (__JS_AtomIsTaggedInt(idx)) {
    800185ca:	00064b63          	bltz	a2,800185e0 <bc_idx_to_atom+0x22>
quickjs-nuttx/quickjs.c:35636
    } else if (idx < s->first_atom) {
    800185ce:	5110                	lw	a2,32(a0)
    800185d0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:35637
        atom = JS_DupAtom(s->ctx, idx);
    800185d2:	6108                	ld	a0,0(a0)
quickjs-nuttx/quickjs.c:35636
    } else if (idx < s->first_atom) {
    800185d4:	00c5f963          	bgeu	a1,a2,800185e6 <bc_idx_to_atom+0x28>
quickjs-nuttx/quickjs.c:35646
        atom = JS_DupAtom(s->ctx, s->idx_to_atom[idx]);
    800185d8:	b2ff20ef          	jal	ra,8000b106 <JS_DupAtom>
    800185dc:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:35648
    *patom = atom;
    800185e0:	c08c                	sw	a1,0(s1)
quickjs-nuttx/quickjs.c:35649
    return 0;
    800185e2:	4501                	li	a0,0
    800185e4:	a035                	j	80018610 <bc_idx_to_atom+0x52>
quickjs-nuttx/quickjs.c:35640
        if (idx >= s->idx_to_atom_count) {
    800185e6:	5058                	lw	a4,36(s0)
quickjs-nuttx/quickjs.c:35639
        idx -= s->first_atom;
    800185e8:	40c5863b          	subw	a2,a1,a2
    800185ec:	0006079b          	sext.w	a5,a2
quickjs-nuttx/quickjs.c:35640
        if (idx >= s->idx_to_atom_count) {
    800185f0:	02e7e563          	bltu	a5,a4,8001861a <bc_idx_to_atom+0x5c>
quickjs-nuttx/quickjs.c:35642
                                (unsigned int)(s->ptr - s->buf_start));
    800185f4:	641c                	ld	a5,8(s0)
    800185f6:	6810                	ld	a2,16(s0)
quickjs-nuttx/quickjs.c:35641
            JS_ThrowSyntaxError(s->ctx, "invalid atom index (pos=%u)",
    800185f8:	00052597          	auipc	a1,0x52
    800185fc:	cf858593          	addi	a1,a1,-776 # 8006a2f0 <qjsc_repl+0x4d40>
    80018600:	9e1d                	subw	a2,a2,a5
    80018602:	d81ff0ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
quickjs-nuttx/quickjs.c:35644
            return s->error_state = -1;
    80018606:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:35643
            *patom = JS_ATOM_NULL;
    80018608:	0004a023          	sw	zero,0(s1)
quickjs-nuttx/quickjs.c:35644
            return s->error_state = -1;
    8001860c:	d81c                	sw	a5,48(s0)
    8001860e:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:35650
}
    80018610:	60e2                	ld	ra,24(sp)
    80018612:	6442                	ld	s0,16(sp)
    80018614:	64a2                	ld	s1,8(sp)
    80018616:	6105                	addi	sp,sp,32
    80018618:	8082                	ret
quickjs-nuttx/quickjs.c:35646
        atom = JS_DupAtom(s->ctx, s->idx_to_atom[idx]);
    8001861a:	740c                	ld	a1,40(s0)
    8001861c:	02061793          	slli	a5,a2,0x20
    80018620:	01e7d613          	srli	a2,a5,0x1e
    80018624:	962e                	add	a2,a2,a1
    80018626:	420c                	lw	a1,0(a2)
    80018628:	bf45                	j	800185d8 <bc_idx_to_atom+0x1a>

000000008001862a <bc_get_atom>:
bc_get_atom():
quickjs-nuttx/quickjs.c:35653
{
    8001862a:	7179                	addi	sp,sp,-48
    8001862c:	f022                	sd	s0,32(sp)
    8001862e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:35655
    if (bc_get_leb128(s, &v))
    80018630:	006c                	addi	a1,sp,12
quickjs-nuttx/quickjs.c:35653
{
    80018632:	ec26                	sd	s1,24(sp)
    80018634:	f406                	sd	ra,40(sp)
    80018636:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:35655
    if (bc_get_leb128(s, &v))
    80018638:	e89ff0ef          	jal	ra,800184c0 <bc_get_leb128>
    8001863c:	e515                	bnez	a0,80018668 <bc_get_atom+0x3e>
quickjs-nuttx/quickjs.c:35657
    if (v & 1) {
    8001863e:	47b2                	lw	a5,12(sp)
quickjs-nuttx/quickjs.c:35658
        *patom = __JS_AtomFromUInt32(v >> 1);
    80018640:	0017d71b          	srliw	a4,a5,0x1
    80018644:	0017d61b          	srliw	a2,a5,0x1
quickjs-nuttx/quickjs.c:35657
    if (v & 1) {
    80018648:	8b85                	andi	a5,a5,1
    8001864a:	cb91                	beqz	a5,8001865e <bc_get_atom+0x34>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8001864c:	800007b7          	lui	a5,0x80000
    80018650:	8f5d                	or	a4,a4,a5
bc_get_atom():
quickjs-nuttx/quickjs.c:35658
        *patom = __JS_AtomFromUInt32(v >> 1);
    80018652:	c018                	sw	a4,0(s0)
quickjs-nuttx/quickjs.c:35663
}
    80018654:	70a2                	ld	ra,40(sp)
    80018656:	7402                	ld	s0,32(sp)
    80018658:	64e2                	ld	s1,24(sp)
    8001865a:	6145                	addi	sp,sp,48
    8001865c:	8082                	ret
quickjs-nuttx/quickjs.c:35661
        return bc_idx_to_atom(s, patom, v >> 1);
    8001865e:	85a2                	mv	a1,s0
    80018660:	8526                	mv	a0,s1
    80018662:	f5dff0ef          	jal	ra,800185be <bc_idx_to_atom>
    80018666:	b7fd                	j	80018654 <bc_get_atom+0x2a>
quickjs-nuttx/quickjs.c:35656
        return -1;
    80018668:	557d                	li	a0,-1
    8001866a:	b7ed                	j	80018654 <bc_get_atom+0x2a>

000000008001866c <JS_ThrowTypeError>:
JS_ThrowTypeError():
quickjs-nuttx/quickjs.c:6657
{
    8001866c:	7159                	addi	sp,sp,-112
    8001866e:	e0b2                	sd	a2,64(sp)
    80018670:	e4b6                	sd	a3,72(sp)
quickjs-nuttx/quickjs.c:6662
    val = JS_ThrowError(ctx, JS_TYPE_ERROR, fmt, ap);
    80018672:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:6661
    va_start(ap, fmt);
    80018674:	0094                	addi	a3,sp,64
quickjs-nuttx/quickjs.c:6662
    val = JS_ThrowError(ctx, JS_TYPE_ERROR, fmt, ap);
    80018676:	4591                	li	a1,4
quickjs-nuttx/quickjs.c:6657
{
    80018678:	fc06                	sd	ra,56(sp)
    8001867a:	e8ba                	sd	a4,80(sp)
    8001867c:	ecbe                	sd	a5,88(sp)
    8001867e:	f0c2                	sd	a6,96(sp)
    80018680:	f4c6                	sd	a7,104(sp)
quickjs-nuttx/quickjs.c:6661
    va_start(ap, fmt);
    80018682:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:6662
    val = JS_ThrowError(ctx, JS_TYPE_ERROR, fmt, ap);
    80018684:	c79ff0ef          	jal	ra,800182fc <JS_ThrowError>
quickjs-nuttx/quickjs.c:6665
}
    80018688:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:6662
    val = JS_ThrowError(ctx, JS_TYPE_ERROR, fmt, ap);
    8001868a:	e82a                	sd	a0,16(sp)
    8001868c:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:6664
    return val;
    8001868e:	f02a                	sd	a0,32(sp)
    80018690:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:6665
}
    80018692:	6165                	addi	sp,sp,112
    80018694:	8082                	ret

0000000080018696 <call_setter>:
call_setter():
quickjs-nuttx/quickjs.c:8191
{
    80018696:	711d                	addi	sp,sp,-96
    80018698:	e4a6                	sd	s1,72(sp)
    8001869a:	ec86                	sd	ra,88(sp)
    8001869c:	e8a2                	sd	s0,80(sp)
    8001869e:	ec36                	sd	a3,24(sp)
    800186a0:	e03a                	sd	a4,0(sp)
    800186a2:	e43e                	sd	a5,8(sp)
    800186a4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:8193
    if (likely(setter)) {
    800186a6:	c1b9                	beqz	a1,800186ec <call_setter+0x56>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    800186a8:	419c                	lw	a5,0(a1)
call_setter():
quickjs-nuttx/quickjs.c:8197
        ret = JS_CallFree(ctx, func, this_obj, 1, (JSValueConst *)&val);
    800186aa:	6762                	ld	a4,24(sp)
    800186ac:	86b2                	mv	a3,a2
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    800186ae:	2785                	addiw	a5,a5,1
    800186b0:	c19c                	sw	a5,0(a1)
call_setter():
quickjs-nuttx/quickjs.c:8197
    800186b2:	880a                	mv	a6,sp
    800186b4:	4785                	li	a5,1
    800186b6:	567d                	li	a2,-1
    800186b8:	bbcfe0ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:8198
        JS_FreeValue(ctx, val);
    800186bc:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:8197
        ret = JS_CallFree(ctx, func, this_obj, 1, (JSValueConst *)&val);
    800186be:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:8198
        JS_FreeValue(ctx, val);
    800186c0:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:8197
        ret = JS_CallFree(ctx, func, this_obj, 1, (JSValueConst *)&val);
    800186c2:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:8198
        JS_FreeValue(ctx, val);
    800186c4:	8526                	mv	a0,s1
    800186c6:	8d8f30ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800186ca:	7622                	ld	a2,40(sp)
call_setter():
quickjs-nuttx/quickjs.c:8199
        if (JS_IsException(ret))
    800186cc:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:8200
            return -1;
    800186ce:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:8199
        if (JS_IsException(ret))
    800186d0:	0006071b          	sext.w	a4,a2
    800186d4:	00f70763          	beq	a4,a5,800186e2 <call_setter+0x4c>
quickjs-nuttx/quickjs.c:8201
        JS_FreeValue(ctx, ret);
    800186d8:	7582                	ld	a1,32(sp)
    800186da:	8526                	mv	a0,s1
    800186dc:	8c2f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8202
        return TRUE;
    800186e0:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:8212 (discriminator 1)
}
    800186e2:	60e6                	ld	ra,88(sp)
    800186e4:	6446                	ld	s0,80(sp)
    800186e6:	64a6                	ld	s1,72(sp)
    800186e8:	6125                	addi	sp,sp,96
    800186ea:	8082                	ret
quickjs-nuttx/quickjs.c:8204
        JS_FreeValue(ctx, val);
    800186ec:	863e                	mv	a2,a5
    800186ee:	85ba                	mv	a1,a4
    800186f0:	8442                	mv	s0,a6
    800186f2:	8acf30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8205
        if ((flags & JS_PROP_THROW) ||
    800186f6:	00e45793          	srli	a5,s0,0xe
    800186fa:	8b85                	andi	a5,a5,1
    800186fc:	eb81                	bnez	a5,8001870c <call_setter+0x76>
quickjs-nuttx/quickjs.c:8206 (discriminator 1)
            ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    800186fe:	6521                	lui	a0,0x8
    80018700:	8d61                	and	a0,a0,s0
quickjs-nuttx/quickjs.c:8205 (discriminator 1)
        if ((flags & JS_PROP_THROW) ||
    80018702:	d165                	beqz	a0,800186e2 <call_setter+0x4c>
quickjs-nuttx/quickjs.c:8206
            ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    80018704:	8526                	mv	a0,s1
    80018706:	c7eef0ef          	jal	ra,80007b84 <is_strict_mode>
    8001870a:	dd61                	beqz	a0,800186e2 <call_setter+0x4c>
quickjs-nuttx/quickjs.c:8207
            JS_ThrowTypeError(ctx, "no setter for property");
    8001870c:	00052597          	auipc	a1,0x52
    80018710:	c0458593          	addi	a1,a1,-1020 # 8006a310 <qjsc_repl+0x4d60>
    80018714:	8526                	mv	a0,s1
    80018716:	f57ff0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:8208
            return -1;
    8001871a:	557d                	li	a0,-1
    8001871c:	b7d9                	j	800186e2 <call_setter+0x4c>

000000008001871e <check_function>:
check_function():
quickjs-nuttx/quickjs.c:36650
{
    8001871e:	1101                	addi	sp,sp,-32
    80018720:	e822                	sd	s0,16(sp)
    80018722:	ec06                	sd	ra,24(sp)
    80018724:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:36651
    if (likely(JS_IsFunction(ctx, obj)))
    80018726:	d7df50ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8001872a:	ed09                	bnez	a0,80018744 <check_function+0x26>
quickjs-nuttx/quickjs.c:36653
    JS_ThrowTypeError(ctx, "not a function");
    8001872c:	00051597          	auipc	a1,0x51
    80018730:	4c458593          	addi	a1,a1,1220 # 80069bf0 <qjsc_repl+0x4640>
    80018734:	8522                	mv	a0,s0
    80018736:	f37ff0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:36654
    return -1;
    8001873a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:36655
}
    8001873c:	60e2                	ld	ra,24(sp)
    8001873e:	6442                	ld	s0,16(sp)
    80018740:	6105                	addi	sp,sp,32
    80018742:	8082                	ret
quickjs-nuttx/quickjs.c:36652
        return 0;
    80018744:	4501                	li	a0,0
    80018746:	bfdd                	j	8001873c <check_function+0x1e>

0000000080018748 <__JS_ThrowTypeErrorAtom>:
__JS_ThrowTypeErrorAtom():
quickjs-nuttx/quickjs.c:6684
{
    80018748:	7135                	addi	sp,sp,-160
    8001874a:	eca6                	sd	s1,88(sp)
    8001874c:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:6686
    return JS_ThrowTypeError(ctx, fmt,
    8001874e:	862e                	mv	a2,a1
    80018750:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs.c:6684
{
    80018752:	f486                	sd	ra,104(sp)
    80018754:	f0a2                	sd	s0,96(sp)
    80018756:	fcb6                	sd	a3,120(sp)
    80018758:	842a                	mv	s0,a0
    8001875a:	e13a                	sd	a4,128(sp)
    8001875c:	e53e                	sd	a5,136(sp)
    8001875e:	e942                	sd	a6,144(sp)
    80018760:	ed46                	sd	a7,152(sp)
quickjs-nuttx/quickjs.c:6686
    return JS_ThrowTypeError(ctx, fmt,
    80018762:	cb5f10ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    80018766:	862a                	mv	a2,a0
    80018768:	85a6                	mv	a1,s1
    8001876a:	8522                	mv	a0,s0
    8001876c:	f01ff0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:6688
}
    80018770:	70a6                	ld	ra,104(sp)
    80018772:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:6686
    return JS_ThrowTypeError(ctx, fmt,
    80018774:	e02a                	sd	a0,0(sp)
    80018776:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:6688
}
    80018778:	64e6                	ld	s1,88(sp)
    8001877a:	610d                	addi	sp,sp,160
    8001877c:	8082                	ret

000000008001877e <JS_ThrowTypeErrorReadOnly>:
JS_ThrowTypeErrorReadOnly():
quickjs-nuttx/quickjs.c:6704
{
    8001877e:	87ae                	mv	a5,a1
    80018780:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:6705
    if ((flags & JS_PROP_THROW) ||
    80018782:	00e7d713          	srli	a4,a5,0xe
quickjs-nuttx/quickjs.c:6704
{
    80018786:	e822                	sd	s0,16(sp)
    80018788:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:6705
    if ((flags & JS_PROP_THROW) ||
    8001878a:	8b05                	andi	a4,a4,1
quickjs-nuttx/quickjs.c:6704
{
    8001878c:	842a                	mv	s0,a0
    8001878e:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:6705
    if ((flags & JS_PROP_THROW) ||
    80018790:	eb11                	bnez	a4,800187a4 <JS_ThrowTypeErrorReadOnly+0x26>
quickjs-nuttx/quickjs.c:6706 (discriminator 1)
        ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    80018792:	6721                	lui	a4,0x8
    80018794:	e432                	sd	a2,8(sp)
    80018796:	8ff9                	and	a5,a5,a4
quickjs-nuttx/quickjs.c:6705 (discriminator 1)
    if ((flags & JS_PROP_THROW) ||
    80018798:	c395                	beqz	a5,800187bc <JS_ThrowTypeErrorReadOnly+0x3e>
quickjs-nuttx/quickjs.c:6706
        ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    8001879a:	beaef0ef          	jal	ra,80007b84 <is_strict_mode>
    8001879e:	65a2                	ld	a1,8(sp)
    800187a0:	87aa                	mv	a5,a0
    800187a2:	cd09                	beqz	a0,800187bc <JS_ThrowTypeErrorReadOnly+0x3e>
quickjs-nuttx/quickjs.c:6707
        JS_ThrowTypeErrorAtom(ctx, "'%s' is read-only", atom);
    800187a4:	00051697          	auipc	a3,0x51
    800187a8:	3e468693          	addi	a3,a3,996 # 80069b88 <qjsc_repl+0x45d8>
    800187ac:	00051617          	auipc	a2,0x51
    800187b0:	50c60613          	addi	a2,a2,1292 # 80069cb8 <qjsc_repl+0x4708>
    800187b4:	8522                	mv	a0,s0
    800187b6:	f93ff0ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
    800187ba:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:6712
}
    800187bc:	60e2                	ld	ra,24(sp)
    800187be:	6442                	ld	s0,16(sp)
    800187c0:	853e                	mv	a0,a5
    800187c2:	6105                	addi	sp,sp,32
    800187c4:	8082                	ret

00000000800187c6 <JS_ThrowTypeErrorInvalidClass>:
JS_ThrowTypeErrorInvalidClass():
quickjs-nuttx/quickjs.c:6807
    name = rt->class_array[class_id].class_name;
    800187c6:	02800713          	li	a4,40
    800187ca:	02e585b3          	mul	a1,a1,a4
    800187ce:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:6804
{
    800187d0:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:6808
    return JS_ThrowTypeErrorAtom(ctx, "%s object expected", name);
    800187d2:	00051697          	auipc	a3,0x51
    800187d6:	3b668693          	addi	a3,a3,950 # 80069b88 <qjsc_repl+0x45d8>
quickjs-nuttx/quickjs.c:6807
    name = rt->class_array[class_id].class_name;
    800187da:	7bbc                	ld	a5,112(a5)
quickjs-nuttx/quickjs.c:6808
    return JS_ThrowTypeErrorAtom(ctx, "%s object expected", name);
    800187dc:	00052617          	auipc	a2,0x52
    800187e0:	b4c60613          	addi	a2,a2,-1204 # 8006a328 <qjsc_repl+0x4d78>
quickjs-nuttx/quickjs.c:6807
    name = rt->class_array[class_id].class_name;
    800187e4:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:6808
    return JS_ThrowTypeErrorAtom(ctx, "%s object expected", name);
    800187e6:	41cc                	lw	a1,4(a1)
quickjs-nuttx/quickjs.c:6809
}
    800187e8:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:6808
    return JS_ThrowTypeErrorAtom(ctx, "%s object expected", name);
    800187ea:	f5fff06f          	j	80018748 <__JS_ThrowTypeErrorAtom>

00000000800187ee <JS_GetOpaque2>:
JS_GetOpaque2():
quickjs-nuttx/quickjs.c:9828
{
    800187ee:	7179                	addi	sp,sp,-48
    800187f0:	87b2                	mv	a5,a2
    800187f2:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:9829
    void *p = JS_GetOpaque(obj, class_id);
    800187f4:	8636                	mv	a2,a3
quickjs-nuttx/quickjs.c:9828
{
    800187f6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:9829
    void *p = JS_GetOpaque(obj, class_id);
    800187f8:	852e                	mv	a0,a1
    800187fa:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:9828
{
    800187fc:	f022                	sd	s0,32(sp)
    800187fe:	ec26                	sd	s1,24(sp)
    80018800:	f406                	sd	ra,40(sp)
    80018802:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:9829
    void *p = JS_GetOpaque(obj, class_id);
    80018804:	e91f50ef          	jal	ra,8000e694 <JS_GetOpaque>
    80018808:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:9830
    if (unlikely(!p)) {
    8001880a:	e509                	bnez	a0,80018814 <JS_GetOpaque2+0x26>
quickjs-nuttx/quickjs.c:9831
        JS_ThrowTypeErrorInvalidClass(ctx, class_id);
    8001880c:	85a6                	mv	a1,s1
    8001880e:	854a                	mv	a0,s2
    80018810:	fb7ff0ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
quickjs-nuttx/quickjs.c:9834
}
    80018814:	70a2                	ld	ra,40(sp)
    80018816:	8522                	mv	a0,s0
    80018818:	7402                	ld	s0,32(sp)
    8001881a:	64e2                	ld	s1,24(sp)
    8001881c:	6942                	ld	s2,16(sp)
    8001881e:	6145                	addi	sp,sp,48
    80018820:	8082                	ret

0000000080018822 <js_map_get>:
js_map_get():
quickjs-nuttx/quickjs.c:47145
{
    80018822:	711d                	addi	sp,sp,-96
quickjs-nuttx/quickjs.c:47146
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    80018824:	0267869b          	addiw	a3,a5,38
quickjs-nuttx/quickjs.c:47145
{
    80018828:	e8a2                	sd	s0,80(sp)
    8001882a:	e4a6                	sd	s1,72(sp)
    8001882c:	ec86                	sd	ra,88(sp)
    8001882e:	84aa                	mv	s1,a0
    80018830:	e82e                	sd	a1,16(sp)
    80018832:	ec32                	sd	a2,24(sp)
    80018834:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:47146
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    80018836:	fb9ff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47150
    if (!s)
    8001883a:	e919                	bnez	a0,80018850 <js_map_get+0x2e>
quickjs-nuttx/quickjs.c:47151
        return JS_EXCEPTION;
    8001883c:	f802                	sd	zero,48(sp)
    8001883e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47158
}
    80018840:	60e6                	ld	ra,88(sp)
    80018842:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:47155
        return JS_UNDEFINED;
    80018844:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:47158
}
    80018846:	7542                	ld	a0,48(sp)
    80018848:	75e2                	ld	a1,56(sp)
    8001884a:	64a6                	ld	s1,72(sp)
    8001884c:	6125                	addi	sp,sp,96
    8001884e:	8082                	ret
    80018850:	201c                	fld	fa5,0(s0)
    80018852:	6414                	ld	a3,8(s0)
map_normalize_key():
quickjs-nuttx/quickjs.c:46911
    if (JS_TAG_IS_FLOAT64(tag) && JS_VALUE_GET_FLOAT64(key) == 0.0) {
    80018854:	479d                	li	a5,7
    80018856:	a43e                	fsd	fa5,8(sp)
    80018858:	0006871b          	sext.w	a4,a3
    8001885c:	85aa                	mv	a1,a0
    8001885e:	00f71a63          	bne	a4,a5,80018872 <js_map_get+0x50>
    80018862:	f20007d3          	fmv.d.x	fa5,zero
    80018866:	2722                	fld	fa4,8(sp)
    80018868:	a2f727d3          	feq.d	a5,fa4,fa5
    8001886c:	c399                	beqz	a5,80018872 <js_map_get+0x50>
    8001886e:	4681                	li	a3,0
    80018870:	a43e                	fsd	fa5,8(sp)
quickjs-nuttx/quickjs.c:46914
    return key;
    80018872:	27a2                	fld	fa5,8(sp)
js_map_get():
quickjs-nuttx/quickjs.c:47153
    mr = map_find_record(ctx, s, key);
    80018874:	6622                	ld	a2,8(sp)
    80018876:	8526                	mv	a0,s1
    80018878:	b03e                	fsd	fa5,32(sp)
    8001887a:	f436                	sd	a3,40(sp)
    8001887c:	950f30ef          	jal	ra,8000b9cc <map_find_record>
    80018880:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:47154
    if (!mr)
    80018882:	e501                	bnez	a0,8001888a <js_map_get+0x68>
quickjs-nuttx/quickjs.c:47155
        return JS_UNDEFINED;
    80018884:	f802                	sd	zero,48(sp)
    80018886:	478d                	li	a5,3
    80018888:	bf65                	j	80018840 <js_map_get+0x1e>
quickjs-nuttx/quickjs.c:47158
}
    8001888a:	6446                	ld	s0,80(sp)
    8001888c:	60e6                	ld	ra,88(sp)
    8001888e:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:47157
        return JS_DupValue(ctx, mr->value);
    80018890:	6528                	ld	a0,72(a0)
    80018892:	6bac                	ld	a1,80(a5)
quickjs-nuttx/quickjs.c:47158
}
    80018894:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:47157
        return JS_DupValue(ctx, mr->value);
    80018896:	b85f106f          	j	8000a41a <JS_DupValue.constprop.0>

000000008001889a <js_map_delete>:
js_map_delete():
quickjs-nuttx/quickjs.c:47176
{
    8001889a:	711d                	addi	sp,sp,-96
quickjs-nuttx/quickjs.c:47177
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    8001889c:	0267869b          	addiw	a3,a5,38
quickjs-nuttx/quickjs.c:47176
{
    800188a0:	e8a2                	sd	s0,80(sp)
    800188a2:	e4a6                	sd	s1,72(sp)
    800188a4:	ec86                	sd	ra,88(sp)
    800188a6:	842a                	mv	s0,a0
    800188a8:	e82e                	sd	a1,16(sp)
    800188aa:	ec32                	sd	a2,24(sp)
    800188ac:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:47177
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    800188ae:	f41ff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47181
    if (!s)
    800188b2:	e919                	bnez	a0,800188c8 <js_map_delete+0x2e>
quickjs-nuttx/quickjs.c:47182
        return JS_EXCEPTION;
    800188b4:	f802                	sd	zero,48(sp)
    800188b6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47189
}
    800188b8:	60e6                	ld	ra,88(sp)
    800188ba:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:47188
    return JS_TRUE;
    800188bc:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:47189
}
    800188be:	7542                	ld	a0,48(sp)
    800188c0:	75e2                	ld	a1,56(sp)
    800188c2:	64a6                	ld	s1,72(sp)
    800188c4:	6125                	addi	sp,sp,96
    800188c6:	8082                	ret
    800188c8:	209c                	fld	fa5,0(s1)
    800188ca:	6494                	ld	a3,8(s1)
map_normalize_key():
quickjs-nuttx/quickjs.c:46911
    if (JS_TAG_IS_FLOAT64(tag) && JS_VALUE_GET_FLOAT64(key) == 0.0) {
    800188cc:	479d                	li	a5,7
    800188ce:	a43e                	fsd	fa5,8(sp)
    800188d0:	0006871b          	sext.w	a4,a3
    800188d4:	85aa                	mv	a1,a0
    800188d6:	00f71a63          	bne	a4,a5,800188ea <js_map_delete+0x50>
    800188da:	f20007d3          	fmv.d.x	fa5,zero
    800188de:	2722                	fld	fa4,8(sp)
    800188e0:	a2f727d3          	feq.d	a5,fa4,fa5
    800188e4:	c399                	beqz	a5,800188ea <js_map_delete+0x50>
    800188e6:	4681                	li	a3,0
    800188e8:	a43e                	fsd	fa5,8(sp)
quickjs-nuttx/quickjs.c:46914
    return key;
    800188ea:	27a2                	fld	fa5,8(sp)
js_map_delete():
quickjs-nuttx/quickjs.c:47184
    mr = map_find_record(ctx, s, key);
    800188ec:	6622                	ld	a2,8(sp)
    800188ee:	8522                	mv	a0,s0
    800188f0:	e42e                	sd	a1,8(sp)
    800188f2:	b03e                	fsd	fa5,32(sp)
    800188f4:	f436                	sd	a3,40(sp)
    800188f6:	8d6f30ef          	jal	ra,8000b9cc <map_find_record>
quickjs-nuttx/quickjs.c:47185
    if (!mr)
    800188fa:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:47184
    mr = map_find_record(ctx, s, key);
    800188fc:	862a                	mv	a2,a0
quickjs-nuttx/quickjs.c:47185
    if (!mr)
    800188fe:	e501                	bnez	a0,80018906 <js_map_delete+0x6c>
quickjs-nuttx/quickjs.c:47186
        return JS_FALSE;
    80018900:	f802                	sd	zero,48(sp)
    80018902:	4785                	li	a5,1
    80018904:	bf55                	j	800188b8 <js_map_delete+0x1e>
map_delete_record():
quickjs-nuttx/quickjs.c:47058
    if (mr->empty)
    80018906:	415c                	lw	a5,4(a0)
    80018908:	e781                	bnez	a5,80018910 <js_map_delete+0x76>
    8001890a:	6c08                	ld	a0,24(s0)
    8001890c:	8aaf40ef          	jal	ra,8000c9b6 <map_delete_record.part.0>
js_map_delete():
quickjs-nuttx/quickjs.c:47188
    return JS_TRUE;
    80018910:	4785                	li	a5,1
    80018912:	f83e                	sd	a5,48(sp)
    80018914:	b755                	j	800188b8 <js_map_delete+0x1e>

0000000080018916 <js_map_has>:
js_map_has():
quickjs-nuttx/quickjs.c:47162
{
    80018916:	7159                	addi	sp,sp,-112
quickjs-nuttx/quickjs.c:47163
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    80018918:	0267869b          	addiw	a3,a5,38
quickjs-nuttx/quickjs.c:47162
{
    8001891c:	f0a2                	sd	s0,96(sp)
    8001891e:	eca6                	sd	s1,88(sp)
    80018920:	f486                	sd	ra,104(sp)
    80018922:	84aa                	mv	s1,a0
    80018924:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:47163
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    80018926:	ec9ff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47167
    if (!s)
    8001892a:	e919                	bnez	a0,80018940 <js_map_has+0x2a>
quickjs-nuttx/quickjs.c:47168
        return JS_EXCEPTION;
    8001892c:	f802                	sd	zero,48(sp)
    8001892e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47172
}
    80018930:	70a6                	ld	ra,104(sp)
    80018932:	7406                	ld	s0,96(sp)
    80018934:	fc3e                	sd	a5,56(sp)
    80018936:	7542                	ld	a0,48(sp)
    80018938:	75e2                	ld	a1,56(sp)
    8001893a:	64e6                	ld	s1,88(sp)
    8001893c:	6165                	addi	sp,sp,112
    8001893e:	8082                	ret
    80018940:	201c                	fld	fa5,0(s0)
    80018942:	6414                	ld	a3,8(s0)
map_normalize_key():
quickjs-nuttx/quickjs.c:46911
    if (JS_TAG_IS_FLOAT64(tag) && JS_VALUE_GET_FLOAT64(key) == 0.0) {
    80018944:	479d                	li	a5,7
    80018946:	a43e                	fsd	fa5,8(sp)
    80018948:	0006871b          	sext.w	a4,a3
    8001894c:	85aa                	mv	a1,a0
    8001894e:	00f71a63          	bne	a4,a5,80018962 <js_map_has+0x4c>
    80018952:	f20007d3          	fmv.d.x	fa5,zero
    80018956:	2722                	fld	fa4,8(sp)
    80018958:	a2f727d3          	feq.d	a5,fa4,fa5
    8001895c:	c399                	beqz	a5,80018962 <js_map_has+0x4c>
    8001895e:	4681                	li	a3,0
    80018960:	a43e                	fsd	fa5,8(sp)
js_map_has():
quickjs-nuttx/quickjs.c:47170
    mr = map_find_record(ctx, s, key);
    80018962:	6622                	ld	a2,8(sp)
    80018964:	8526                	mv	a0,s1
    80018966:	866f30ef          	jal	ra,8000b9cc <map_find_record>
quickjs-nuttx/quickjs.c:47171
    return JS_NewBool(ctx, (mr != NULL));
    8001896a:	00a03533          	snez	a0,a0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8001896e:	c282                	sw	zero,68(sp)
    80018970:	c0aa                	sw	a0,64(sp)
    80018972:	6786                	ld	a5,64(sp)
    80018974:	f83e                	sd	a5,48(sp)
    80018976:	4785                	li	a5,1
    80018978:	bf65                	j	80018930 <js_map_has+0x1a>

000000008001897a <js_map_get_size>:
js_map_get_size():
quickjs-nuttx/quickjs.c:47208
{
    8001897a:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:47209
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    8001897c:	0266869b          	addiw	a3,a3,38
quickjs-nuttx/quickjs.c:47208
{
    80018980:	fc06                	sd	ra,56(sp)
    80018982:	e02e                	sd	a1,0(sp)
    80018984:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47209
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    80018986:	e69ff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47210
    if (!s)
    8001898a:	e909                	bnez	a0,8001899c <js_map_get_size+0x22>
quickjs-nuttx/quickjs.c:47211
        return JS_EXCEPTION;
    8001898c:	4799                	li	a5,6
    8001898e:	e802                	sd	zero,16(sp)
    80018990:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:47213 (discriminator 1)
}
    80018992:	70e2                	ld	ra,56(sp)
    80018994:	6542                	ld	a0,16(sp)
    80018996:	65e2                	ld	a1,24(sp)
    80018998:	6121                	addi	sp,sp,64
    8001899a:	8082                	ret
quickjs-nuttx/quickjs.c:47212
    return JS_NewUint32(ctx, s->record_count);
    8001899c:	4d18                	lw	a4,24(a0)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    8001899e:	0007079b          	sext.w	a5,a4
    800189a2:	00074a63          	bltz	a4,800189b6 <js_map_get_size+0x3c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800189a6:	d202                	sw	zero,36(sp)
    800189a8:	d03e                	sw	a5,32(sp)
    800189aa:	7702                	ld	a4,32(sp)
    800189ac:	e83a                	sd	a4,16(sp)
    800189ae:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    800189b0:	c83e                	sw	a5,16(sp)
    800189b2:	ec3a                	sd	a4,24(sp)
    800189b4:	bff9                	j	80018992 <js_map_get_size+0x18>
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    800189b6:	d21707d3          	fcvt.d.wu	fa5,a4
    800189ba:	471d                	li	a4,7
    800189bc:	e20787d3          	fmv.x.d	a5,fa5
js_map_get_size():
quickjs-nuttx/quickjs.h:230
    return v;
    800189c0:	a83e                	fsd	fa5,16(sp)
    800189c2:	2781                	sext.w	a5,a5
    800189c4:	b7f5                	j	800189b0 <js_map_get_size+0x36>

00000000800189c6 <js_map_clear>:
js_map_clear():
quickjs-nuttx/quickjs.c:47193
{
    800189c6:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs.c:47194
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    800189c8:	0267869b          	addiw	a3,a5,38
quickjs-nuttx/quickjs.c:47193
{
    800189cc:	f84a                	sd	s2,48(sp)
    800189ce:	e486                	sd	ra,72(sp)
    800189d0:	e0a2                	sd	s0,64(sp)
    800189d2:	fc26                	sd	s1,56(sp)
    800189d4:	f44e                	sd	s3,40(sp)
    800189d6:	892a                	mv	s2,a0
    800189d8:	e02e                	sd	a1,0(sp)
    800189da:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47194
    JSMapState *s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    800189dc:	e13ff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47198
    if (!s)
    800189e0:	ed09                	bnez	a0,800189fa <js_map_clear+0x34>
quickjs-nuttx/quickjs.c:47199
        return JS_EXCEPTION;
    800189e2:	e802                	sd	zero,16(sp)
    800189e4:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47205
}
    800189e6:	60a6                	ld	ra,72(sp)
    800189e8:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:47204
    return JS_UNDEFINED;
    800189ea:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:47205
}
    800189ec:	6542                	ld	a0,16(sp)
    800189ee:	65e2                	ld	a1,24(sp)
    800189f0:	74e2                	ld	s1,56(sp)
    800189f2:	7942                	ld	s2,48(sp)
    800189f4:	79a2                	ld	s3,40(sp)
    800189f6:	6161                	addi	sp,sp,80
    800189f8:	8082                	ret
quickjs-nuttx/quickjs.c:47200
    list_for_each_safe(el, el1, &s->records) {
    800189fa:	6910                	ld	a2,16(a0)
    800189fc:	842a                	mv	s0,a0
    800189fe:	00850993          	addi	s3,a0,8 # 8008 <asinh-0x7fff7ff8>
    80018a02:	6604                	ld	s1,8(a2)
quickjs-nuttx/quickjs.c:47200 (discriminator 1)
    80018a04:	01361563          	bne	a2,s3,80018a0e <js_map_clear+0x48>
quickjs-nuttx/quickjs.c:47204
    return JS_UNDEFINED;
    80018a08:	e802                	sd	zero,16(sp)
    80018a0a:	478d                	li	a5,3
    80018a0c:	bfe9                	j	800189e6 <js_map_clear+0x20>
map_delete_record():
quickjs-nuttx/quickjs.c:47058 (discriminator 3)
    if (mr->empty)
    80018a0e:	fec62783          	lw	a5,-20(a2)
    80018a12:	e799                	bnez	a5,80018a20 <js_map_clear+0x5a>
    80018a14:	01893503          	ld	a0,24(s2)
    80018a18:	1621                	addi	a2,a2,-24
    80018a1a:	85a2                	mv	a1,s0
    80018a1c:	f9bf30ef          	jal	ra,8000c9b6 <map_delete_record.part.0>
js_map_clear():
quickjs-nuttx/quickjs.c:47200
    list_for_each_safe(el, el1, &s->records) {
    80018a20:	8626                	mv	a2,s1
    80018a22:	6484                	ld	s1,8(s1)
    80018a24:	b7c5                	j	80018a04 <js_map_clear+0x3e>

0000000080018a26 <js_float_env_clearStatus>:
js_float_env_clearStatus():
quickjs-nuttx/quickjs.c:51727
{
    80018a26:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:51728
    JSFloatEnv *fe = JS_GetOpaque2(ctx, this_val, JS_CLASS_FLOAT_ENV);
    80018a28:	02300693          	li	a3,35
quickjs-nuttx/quickjs.c:51727
{
    80018a2c:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:51728
    JSFloatEnv *fe = JS_GetOpaque2(ctx, this_val, JS_CLASS_FLOAT_ENV);
    80018a2e:	dc1ff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:51729
    if (!fe)
    80018a32:	e909                	bnez	a0,80018a44 <js_float_env_clearStatus+0x1e>
quickjs-nuttx/quickjs.c:51730
        return JS_EXCEPTION;
    80018a34:	e802                	sd	zero,16(sp)
    80018a36:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51733
}
    80018a38:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:51732
    return JS_UNDEFINED;
    80018a3a:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:51733
}
    80018a3c:	6542                	ld	a0,16(sp)
    80018a3e:	65e2                	ld	a1,24(sp)
    80018a40:	6145                	addi	sp,sp,48
    80018a42:	8082                	ret
quickjs-nuttx/quickjs.c:51731
    fe->status = 0;
    80018a44:	00052623          	sw	zero,12(a0)
quickjs-nuttx/quickjs.c:51732
    return JS_UNDEFINED;
    80018a48:	e802                	sd	zero,16(sp)
    80018a4a:	478d                	li	a5,3
    80018a4c:	b7f5                	j	80018a38 <js_float_env_clearStatus+0x12>

0000000080018a4e <js_float_env_proto_get_status>:
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51662
{
    80018a4e:	7119                	addi	sp,sp,-128
    80018a50:	f8a2                	sd	s0,112(sp)
    80018a52:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:51664
    fe = JS_GetOpaque2(ctx, this_val, JS_CLASS_FLOAT_ENV);
    80018a54:	02300693          	li	a3,35
quickjs-nuttx/quickjs.c:51662
{
    80018a58:	fc86                	sd	ra,120(sp)
    80018a5a:	e02e                	sd	a1,0(sp)
    80018a5c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:51664
    fe = JS_GetOpaque2(ctx, this_val, JS_CLASS_FLOAT_ENV);
    80018a5e:	d91ff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:51665
    if (!fe)
    80018a62:	e509                	bnez	a0,80018a6c <js_float_env_proto_get_status+0x1e>
quickjs-nuttx/quickjs.c:51666
        return JS_EXCEPTION;
    80018a64:	e802                	sd	zero,16(sp)
    80018a66:	4799                	li	a5,6
    80018a68:	ec3e                	sd	a5,24(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80018a6a:	a0a9                	j	80018ab4 <js_float_env_proto_get_status+0x66>
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51667
    switch(magic) {
    80018a6c:	57f9                	li	a5,-2
    80018a6e:	06f40163          	beq	s0,a5,80018ad0 <js_float_env_proto_get_status+0x82>
    80018a72:	57fd                	li	a5,-1
    80018a74:	02f45063          	bge	s0,a5,80018a94 <js_float_env_proto_get_status+0x46>
    80018a78:	57f1                	li	a5,-4
    80018a7a:	08f40563          	beq	s0,a5,80018b04 <js_float_env_proto_get_status+0xb6>
    80018a7e:	57f5                	li	a5,-3
    80018a80:	06f40c63          	beq	s0,a5,80018af8 <js_float_env_proto_get_status+0xaa>
quickjs-nuttx/quickjs.c:51677
        return JS_NewBool(ctx, (fe->status & magic) != 0);
    80018a84:	4554                	lw	a3,12(a0)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80018a86:	d282                	sw	zero,100(sp)
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51677
    80018a88:	8c75                	and	s0,s0,a3
    80018a8a:	00803433          	snez	s0,s0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80018a8e:	d0a2                	sw	s0,96(sp)
    80018a90:	7786                	ld	a5,96(sp)
    80018a92:	a041                	j	80018b12 <js_float_env_proto_get_status+0xc4>
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51667
    switch(magic) {
    80018a94:	fef418e3          	bne	s0,a5,80018a84 <js_float_env_proto_get_status+0x36>
quickjs-nuttx/quickjs.c:51669
        return JS_NewInt64(ctx, fe->prec);
    80018a98:	6118                	ld	a4,0(a0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80018a9a:	0007079b          	sext.w	a5,a4
    80018a9e:	02f71163          	bne	a4,a5,80018ac0 <js_float_env_proto_get_status+0x72>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80018aa2:	d202                	sw	zero,36(sp)
    80018aa4:	d03e                	sw	a5,32(sp)
    80018aa6:	7702                	ld	a4,32(sp)
    80018aa8:	f0ba                	sd	a4,96(sp)
    80018aaa:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80018aac:	d0be                	sw	a5,96(sp)
    80018aae:	3786                	fld	fa5,96(sp)
    80018ab0:	ec3a                	sd	a4,24(sp)
    80018ab2:	a83e                	fsd	fa5,16(sp)
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51679 (discriminator 1)
}
    80018ab4:	70e6                	ld	ra,120(sp)
    80018ab6:	7446                	ld	s0,112(sp)
    80018ab8:	6542                	ld	a0,16(sp)
    80018aba:	65e2                	ld	a1,24(sp)
    80018abc:	6109                	addi	sp,sp,128
    80018abe:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80018ac0:	d22777d3          	fcvt.d.l	fa5,a4
    80018ac4:	471d                	li	a4,7
    80018ac6:	e20787d3          	fmv.x.d	a5,fa5
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.h:230
    return v;
    80018aca:	b0be                	fsd	fa5,96(sp)
    80018acc:	2781                	sext.w	a5,a5
    80018ace:	bff9                	j	80018aac <js_float_env_proto_get_status+0x5e>
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    80018ad0:	451c                	lw	a5,8(a0)
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    80018ad2:	03f00693          	li	a3,63
quickjs-nuttx/libbf.h:157
        return BF_EXP_BITS_MAX + 1;
    80018ad6:	03e00713          	li	a4,62
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    80018ada:	0057d79b          	srliw	a5,a5,0x5
    80018ade:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    80018ae2:	00d78563          	beq	a5,a3,80018aec <js_float_env_proto_get_status+0x9e>
quickjs-nuttx/libbf.h:159
        return BF_EXP_BITS_MAX - e;
    80018ae6:	03d00713          	li	a4,61
    80018aea:	9f1d                	subw	a4,a4,a5
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80018aec:	da02                	sw	zero,52(sp)
    80018aee:	d83a                	sw	a4,48(sp)
    80018af0:	77c2                	ld	a5,48(sp)
    80018af2:	e83e                	sd	a5,16(sp)
    80018af4:	ec02                	sd	zero,24(sp)
    80018af6:	bf7d                	j	80018ab4 <js_float_env_proto_get_status+0x66>
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51673
        return JS_NewInt32(ctx, fe->flags & BF_RND_MASK);
    80018af8:	451c                	lw	a5,8(a0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80018afa:	c282                	sw	zero,68(sp)
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51673
    80018afc:	8b9d                	andi	a5,a5,7
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80018afe:	c0be                	sw	a5,64(sp)
    80018b00:	6786                	ld	a5,64(sp)
    80018b02:	bfc5                	j	80018af2 <js_float_env_proto_get_status+0xa4>
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51675
        return JS_NewBool(ctx, (fe->flags & BF_FLAG_SUBNORMAL) != 0);
    80018b04:	451c                	lw	a5,8(a0)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80018b06:	ca82                	sw	zero,84(sp)
js_float_env_proto_get_status():
quickjs-nuttx/quickjs.c:51675
    80018b08:	4037d79b          	sraiw	a5,a5,0x3
    80018b0c:	8b85                	andi	a5,a5,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80018b0e:	c8be                	sw	a5,80(sp)
    80018b10:	67c6                	ld	a5,80(sp)
    80018b12:	e83e                	sd	a5,16(sp)
    80018b14:	4785                	li	a5,1
    80018b16:	bf89                	j	80018a68 <js_float_env_proto_get_status+0x1a>

0000000080018b18 <js_array_buffer_get_byteLength>:
js_array_buffer_get_byteLength():
quickjs-nuttx/quickjs.c:52760
{
    80018b18:	7139                	addi	sp,sp,-64
    80018b1a:	fc06                	sd	ra,56(sp)
    80018b1c:	e02e                	sd	a1,0(sp)
    80018b1e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52761
    JSArrayBuffer *abuf = JS_GetOpaque2(ctx, this_val, class_id);
    80018b20:	ccfff0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:52762
    if (!abuf)
    80018b24:	e909                	bnez	a0,80018b36 <js_array_buffer_get_byteLength+0x1e>
quickjs-nuttx/quickjs.c:52763
        return JS_EXCEPTION;
    80018b26:	4799                	li	a5,6
    80018b28:	e802                	sd	zero,16(sp)
    80018b2a:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:52766 (discriminator 1)
}
    80018b2c:	70e2                	ld	ra,56(sp)
    80018b2e:	6542                	ld	a0,16(sp)
    80018b30:	65e2                	ld	a1,24(sp)
    80018b32:	6121                	addi	sp,sp,64
    80018b34:	8082                	ret
quickjs-nuttx/quickjs.c:52765
    return JS_NewUint32(ctx, abuf->byte_length);
    80018b36:	411c                	lw	a5,0(a0)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80018b38:	0007ca63          	bltz	a5,80018b4c <js_array_buffer_get_byteLength+0x34>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80018b3c:	d202                	sw	zero,36(sp)
    80018b3e:	d03e                	sw	a5,32(sp)
    80018b40:	7702                	ld	a4,32(sp)
    80018b42:	e83a                	sd	a4,16(sp)
    80018b44:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80018b46:	c83e                	sw	a5,16(sp)
    80018b48:	ec3a                	sd	a4,24(sp)
    80018b4a:	b7cd                	j	80018b2c <js_array_buffer_get_byteLength+0x14>
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80018b4c:	d21787d3          	fcvt.d.wu	fa5,a5
    80018b50:	471d                	li	a4,7
    80018b52:	e20787d3          	fmv.x.d	a5,fa5
js_array_buffer_get_byteLength():
quickjs-nuttx/quickjs.h:230
    return v;
    80018b56:	a83e                	fsd	fa5,16(sp)
    80018b58:	2781                	sext.w	a5,a5
    80018b5a:	b7f5                	j	80018b46 <js_array_buffer_get_byteLength+0x2e>

0000000080018b5c <JS_EvalThis>:
JS_EvalThis():
quickjs-nuttx/quickjs.c:34410
{
    80018b5c:	711d                	addi	sp,sp,-96
    80018b5e:	ec86                	sd	ra,88(sp)
quickjs-nuttx/quickjs.c:34414
    assert(eval_type == JS_EVAL_TYPE_GLOBAL ||
    80018b60:	00287313          	andi	t1,a6,2
    80018b64:	00030c63          	beqz	t1,80018b7c <JS_EvalThis+0x20>
    80018b68:	65a1                	lui	a1,0x8
    80018b6a:	4601                	li	a2,0
    80018b6c:	66e58593          	addi	a1,a1,1646 # 866e <asinh-0x7fff7992>
    80018b70:	00051517          	auipc	a0,0x51
    80018b74:	a2850513          	addi	a0,a0,-1496 # 80069598 <qjsc_repl+0x3fe8>
    80018b78:	5e5470ef          	jal	ra,8006095c <__assert>
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34382 (discriminator 2)
    if (unlikely(!ctx->eval_internal)) {
    80018b7c:	1c853303          	ld	t1,456(a0)
    80018b80:	f02e                	sd	a1,32(sp)
    80018b82:	f432                	sd	a2,40(sp)
    80018b84:	00031a63          	bnez	t1,80018b98 <JS_EvalThis+0x3c>
JS_EvalThis():
quickjs-nuttx/quickjs.c:34419
}
    80018b88:	60e6                	ld	ra,88(sp)
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34383
        return JS_ThrowTypeError(ctx, "eval is not supported");
    80018b8a:	00051597          	auipc	a1,0x51
    80018b8e:	7b658593          	addi	a1,a1,1974 # 8006a340 <qjsc_repl+0x4d90>
JS_EvalThis():
quickjs-nuttx/quickjs.c:34419
}
    80018b92:	6125                	addi	sp,sp,96
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34383
        return JS_ThrowTypeError(ctx, "eval is not supported");
    80018b94:	ad9ff06f          	j	8001866c <JS_ThrowTypeError>
JS_EvalThis():
quickjs-nuttx/quickjs.c:34419
}
    80018b98:	60e6                	ld	ra,88(sp)
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34385
    return ctx->eval_internal(ctx, this_obj, input, input_len, filename,
    80018b9a:	58fd                	li	a7,-1
JS_EvalThis():
quickjs-nuttx/quickjs.c:34419
}
    80018b9c:	6125                	addi	sp,sp,96
JS_EvalInternal():
quickjs-nuttx/quickjs.c:34385
    return ctx->eval_internal(ctx, this_obj, input, input_len, filename,
    80018b9e:	8302                	jr	t1

0000000080018ba0 <JS_Eval>:
JS_Eval():
quickjs-nuttx/quickjs.c:34423
{
    80018ba0:	87b6                	mv	a5,a3
quickjs-nuttx/quickjs.c:34424
    return JS_EvalThis(ctx, ctx->global_obj, input, input_len, filename,
    80018ba2:	883a                	mv	a6,a4
    80018ba4:	86ae                	mv	a3,a1
    80018ba6:	8732                	mv	a4,a2
    80018ba8:	16853583          	ld	a1,360(a0)
    80018bac:	17053603          	ld	a2,368(a0)
quickjs-nuttx/quickjs.c:34423
{
    80018bb0:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:34426
}
    80018bb2:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:34424
    return JS_EvalThis(ctx, ctx->global_obj, input, input_len, filename,
    80018bb4:	fa9ff06f          	j	80018b5c <JS_EvalThis>

0000000080018bb8 <js_promise_executor>:
js_promise_executor():
quickjs-nuttx/quickjs.c:48071
{
    80018bb8:	711d                	addi	sp,sp,-96
    80018bba:	fc4e                	sd	s3,56(sp)
quickjs-nuttx/quickjs.c:48075
        if (!JS_IsUndefined(func_data[i]))
    80018bbc:	00882983          	lw	s3,8(a6) # 4008 <asinh-0x7fffbff8>
quickjs-nuttx/quickjs.c:48071
{
    80018bc0:	e0ca                	sd	s2,64(sp)
    80018bc2:	ec86                	sd	ra,88(sp)
    80018bc4:	e8a2                	sd	s0,80(sp)
    80018bc6:	e4a6                	sd	s1,72(sp)
    80018bc8:	f852                	sd	s4,48(sp)
quickjs-nuttx/quickjs.c:48075
        if (!JS_IsUndefined(func_data[i]))
    80018bca:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48071
{
    80018bcc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:48075
        if (!JS_IsUndefined(func_data[i]))
    80018bce:	00f99f63          	bne	s3,a5,80018bec <js_promise_executor+0x34>
quickjs-nuttx/quickjs.c:48077
        func_data[i] = JS_DupValue(ctx, argv[i]);
    80018bd2:	6308                	ld	a0,0(a4)
    80018bd4:	670c                	ld	a1,8(a4)
    80018bd6:	8442                	mv	s0,a6
    80018bd8:	84ba                	mv	s1,a4
    80018bda:	841f10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:48075
        if (!JS_IsUndefined(func_data[i]))
    80018bde:	4c1c                	lw	a5,24(s0)
quickjs-nuttx/quickjs.c:48077
        func_data[i] = JS_DupValue(ctx, argv[i]);
    80018be0:	e008                	sd	a0,0(s0)
    80018be2:	e40c                	sd	a1,8(s0)
quickjs-nuttx/quickjs.c:48075
        if (!JS_IsUndefined(func_data[i]))
    80018be4:	01040a13          	addi	s4,s0,16
    80018be8:	03378063          	beq	a5,s3,80018c08 <js_promise_executor+0x50>
quickjs-nuttx/quickjs.c:48080
}
    80018bec:	6446                	ld	s0,80(sp)
    80018bee:	60e6                	ld	ra,88(sp)
    80018bf0:	64a6                	ld	s1,72(sp)
    80018bf2:	79e2                	ld	s3,56(sp)
    80018bf4:	7a42                	ld	s4,48(sp)
quickjs-nuttx/quickjs.c:48076
            return JS_ThrowTypeError(ctx, "resolving function already set");
    80018bf6:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:48080
}
    80018bf8:	6906                	ld	s2,64(sp)
quickjs-nuttx/quickjs.c:48076
            return JS_ThrowTypeError(ctx, "resolving function already set");
    80018bfa:	00051597          	auipc	a1,0x51
    80018bfe:	75e58593          	addi	a1,a1,1886 # 8006a358 <qjsc_repl+0x4da8>
quickjs-nuttx/quickjs.c:48080
}
    80018c02:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:48076
            return JS_ThrowTypeError(ctx, "resolving function already set");
    80018c04:	a69ff06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:48077
        func_data[i] = JS_DupValue(ctx, argv[i]);
    80018c08:	6888                	ld	a0,16(s1)
    80018c0a:	6c8c                	ld	a1,24(s1)
    80018c0c:	80ff10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80018c10:	e808                	sd	a0,16(s0)
    80018c12:	00ba3423          	sd	a1,8(s4)
quickjs-nuttx/quickjs.c:48080
}
    80018c16:	60e6                	ld	ra,88(sp)
    80018c18:	6446                	ld	s0,80(sp)
    80018c1a:	64a6                	ld	s1,72(sp)
    80018c1c:	6906                	ld	s2,64(sp)
    80018c1e:	79e2                	ld	s3,56(sp)
    80018c20:	7a42                	ld	s4,48(sp)
    80018c22:	4501                	li	a0,0
    80018c24:	458d                	li	a1,3
    80018c26:	6125                	addi	sp,sp,96
    80018c28:	8082                	ret

0000000080018c2a <JS_ThrowTypeErrorNotAnObject>:
JS_ThrowTypeErrorNotAnObject():
quickjs-nuttx/quickjs.c:6764
{
    80018c2a:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:6765
    return JS_ThrowTypeError(ctx, "not an object");
    80018c2c:	00052597          	auipc	a1,0x52
    80018c30:	9f458593          	addi	a1,a1,-1548 # 8006a620 <qjsc_repl+0x5070>
quickjs-nuttx/quickjs.c:6766
}
    80018c34:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:6765
    return JS_ThrowTypeError(ctx, "not an object");
    80018c36:	a37ff06f          	j	8001866c <JS_ThrowTypeError>

0000000080018c3a <JS_IteratorClose>:
JS_IteratorClose():
quickjs-nuttx/quickjs.c:15195
{
    80018c3a:	7119                	addi	sp,sp,-128
    80018c3c:	f8a2                	sd	s0,112(sp)
    80018c3e:	f0ca                	sd	s2,96(sp)
    80018c40:	fc86                	sd	ra,120(sp)
    80018c42:	f4a6                	sd	s1,104(sp)
    80018c44:	ecce                	sd	s3,88(sp)
    80018c46:	e02e                	sd	a1,0(sp)
    80018c48:	e432                	sd	a2,8(sp)
    80018c4a:	842a                	mv	s0,a0
    80018c4c:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:15199
    if (is_exception_pending) {
    80018c4e:	cad9                	beqz	a3,80018ce4 <JS_IteratorClose+0xaa>
quickjs-nuttx/quickjs.c:15200
        ex_obj = ctx->rt->current_exception;
    80018c50:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:15202
        res = -1;
    80018c52:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:15200
        ex_obj = ctx->rt->current_exception;
    80018c54:	73f8                	ld	a4,224(a5)
quickjs-nuttx/quickjs.c:15201
        ctx->rt->current_exception = JS_NULL;
    80018c56:	0e07b023          	sd	zero,224(a5) # ffffffff800000e0 <_ebss+0xfffffffeffefef7a>
quickjs-nuttx/quickjs.c:15200
        ex_obj = ctx->rt->current_exception;
    80018c5a:	f03a                	sd	a4,32(sp)
    80018c5c:	77f8                	ld	a4,232(a5)
    80018c5e:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:15201
        ctx->rt->current_exception = JS_NULL;
    80018c60:	4709                	li	a4,2
    80018c62:	f7f8                	sd	a4,232(a5)
quickjs-nuttx/quickjs.c:15207
    method = JS_GetProperty(ctx, enum_obj, JS_ATOM_return);
    80018c64:	67a2                	ld	a5,8(sp)
    80018c66:	6702                	ld	a4,0(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80018c68:	4801                	li	a6,0
    80018c6a:	863e                	mv	a2,a5
    80018c6c:	4699                	li	a3,6
    80018c6e:	85ba                	mv	a1,a4
    80018c70:	8522                	mv	a0,s0
    80018c72:	fc3e                	sd	a5,56(sp)
    80018c74:	f83a                	sd	a4,48(sp)
    80018c76:	e35fd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_IteratorClose():
quickjs-nuttx/quickjs.c:15208
    if (JS_IsException(method)) {
    80018c7a:	0005879b          	sext.w	a5,a1
    80018c7e:	4999                	li	s3,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80018c80:	862e                	mv	a2,a1
JS_IteratorClose():
quickjs-nuttx/quickjs.c:15208
    80018c82:	07378663          	beq	a5,s3,80018cee <JS_IteratorClose+0xb4>
quickjs-nuttx/quickjs.c:15212 (discriminator 1)
    if (JS_IsUndefined(method) || JS_IsNull(method)) {
    80018c86:	ffe5879b          	addiw	a5,a1,-2
    80018c8a:	4705                	li	a4,1
    80018c8c:	02f77d63          	bgeu	a4,a5,80018cc6 <JS_IteratorClose+0x8c>
quickjs-nuttx/quickjs.c:15215
    ret = JS_CallFree(ctx, method, enum_obj, 0, NULL);
    80018c90:	6682                	ld	a3,0(sp)
    80018c92:	6722                	ld	a4,8(sp)
    80018c94:	85aa                	mv	a1,a0
    80018c96:	4801                	li	a6,0
    80018c98:	4781                	li	a5,0
    80018c9a:	8522                	mv	a0,s0
    80018c9c:	dd9fd0ef          	jal	ra,80016a74 <JS_CallFree>
    80018ca0:	f82a                	sd	a0,48(sp)
    80018ca2:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:15216
    if (!is_exception_pending) {
    80018ca4:	00091c63          	bnez	s2,80018cbc <JS_IteratorClose+0x82>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80018ca8:	2581                	sext.w	a1,a1
JS_IteratorClose():
quickjs-nuttx/quickjs.c:15217
        if (JS_IsException(ret)) {
    80018caa:	01358863          	beq	a1,s3,80018cba <JS_IteratorClose+0x80>
quickjs-nuttx/quickjs.c:15219
        } else if (!JS_IsObject(ret)) {
    80018cae:	57fd                	li	a5,-1
    80018cb0:	00f58663          	beq	a1,a5,80018cbc <JS_IteratorClose+0x82>
quickjs-nuttx/quickjs.c:15220
            JS_ThrowTypeErrorNotAnObject(ctx);
    80018cb4:	8522                	mv	a0,s0
    80018cb6:	f75ff0ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:15218
            res = -1;
    80018cba:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:15224
    JS_FreeValue(ctx, ret);
    80018cbc:	75c2                	ld	a1,48(sp)
    80018cbe:	7662                	ld	a2,56(sp)
    80018cc0:	8522                	mv	a0,s0
    80018cc2:	addf20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15226
    if (is_exception_pending) {
    80018cc6:	00090763          	beqz	s2,80018cd4 <JS_IteratorClose+0x9a>
quickjs-nuttx/quickjs.c:15227
        JS_Throw(ctx, ex_obj);
    80018cca:	7582                	ld	a1,32(sp)
    80018ccc:	7622                	ld	a2,40(sp)
    80018cce:	8522                	mv	a0,s0
    80018cd0:	f72f50ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:15230
}
    80018cd4:	70e6                	ld	ra,120(sp)
    80018cd6:	7446                	ld	s0,112(sp)
    80018cd8:	7906                	ld	s2,96(sp)
    80018cda:	69e6                	ld	s3,88(sp)
    80018cdc:	8526                	mv	a0,s1
    80018cde:	74a6                	ld	s1,104(sp)
    80018ce0:	6109                	addi	sp,sp,128
    80018ce2:	8082                	ret
quickjs-nuttx/quickjs.c:15204
        ex_obj = JS_UNDEFINED;
    80018ce4:	478d                	li	a5,3
    80018ce6:	f002                	sd	zero,32(sp)
    80018ce8:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:15205
        res = 0;
    80018cea:	4481                	li	s1,0
    80018cec:	bfa5                	j	80018c64 <JS_IteratorClose+0x2a>
quickjs-nuttx/quickjs.c:15209
        res = -1;
    80018cee:	54fd                	li	s1,-1
    80018cf0:	bfd9                	j	80018cc6 <JS_IteratorClose+0x8c>

0000000080018cf2 <js_regexp_get_flag>:
js_regexp_get_flag():
quickjs-nuttx/quickjs.c:43634
{
    80018cf2:	715d                	addi	sp,sp,-80
    80018cf4:	e486                	sd	ra,72(sp)
    80018cf6:	e0a2                	sd	s0,64(sp)
    80018cf8:	fc26                	sd	s1,56(sp)
    80018cfa:	e02e                	sd	a1,0(sp)
    80018cfc:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:43638
    if (JS_VALUE_GET_TAG(this_val) != JS_TAG_OBJECT)
    80018cfe:	0006079b          	sext.w	a5,a2
    80018d02:	577d                	li	a4,-1
    80018d04:	00e78863          	beq	a5,a4,80018d14 <js_regexp_get_flag+0x22>
quickjs-nuttx/quickjs.c:43651
}
    80018d08:	6406                	ld	s0,64(sp)
    80018d0a:	60a6                	ld	ra,72(sp)
    80018d0c:	74e2                	ld	s1,56(sp)
    80018d0e:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:43639
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80018d10:	f1bff06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    80018d14:	84b6                	mv	s1,a3
js_get_regexp():
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    80018d16:	0065d683          	lhu	a3,6(a1)
    80018d1a:	4749                	li	a4,18
    80018d1c:	02e69763          	bne	a3,a4,80018d4a <js_regexp_get_flag+0x58>
js_regexp_get_flag():
quickjs-nuttx/quickjs.c:43649
    flags = lre_get_flags(re->bytecode->u.str8);
    80018d20:	7d88                	ld	a0,56(a1)
    80018d22:	0541                	addi	a0,a0,16
    80018d24:	40d360ef          	jal	ra,8004f930 <lre_get_flags>
quickjs-nuttx/quickjs.c:43650
    return JS_NewBool(ctx, (flags & mask) != 0);
    80018d28:	8d65                	and	a0,a0,s1
    80018d2a:	2501                	sext.w	a0,a0
    80018d2c:	00a03533          	snez	a0,a0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80018d30:	d202                	sw	zero,36(sp)
    80018d32:	d02a                	sw	a0,32(sp)
    80018d34:	7782                	ld	a5,32(sp)
    80018d36:	e83e                	sd	a5,16(sp)
    80018d38:	4785                	li	a5,1
js_regexp_get_flag():
quickjs-nuttx/quickjs.c:43651
}
    80018d3a:	60a6                	ld	ra,72(sp)
    80018d3c:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:43644
            return JS_UNDEFINED;
    80018d3e:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:43651
}
    80018d40:	6542                	ld	a0,16(sp)
    80018d42:	65e2                	ld	a1,24(sp)
    80018d44:	74e2                	ld	s1,56(sp)
    80018d46:	6161                	addi	sp,sp,80
    80018d48:	8082                	ret
quickjs-nuttx/quickjs.c:43643
        if (js_same_value(ctx, this_val, ctx->class_proto[JS_CLASS_REGEXP]))
    80018d4a:	613c                	ld	a5,64(a0)
    80018d4c:	842a                	mv	s0,a0
    80018d4e:	1207b683          	ld	a3,288(a5)
    80018d52:	1287b703          	ld	a4,296(a5)
    80018d56:	c1df20ef          	jal	ra,8000b972 <js_same_value>
    80018d5a:	c501                	beqz	a0,80018d62 <js_regexp_get_flag+0x70>
quickjs-nuttx/quickjs.c:43644
            return JS_UNDEFINED;
    80018d5c:	e802                	sd	zero,16(sp)
    80018d5e:	478d                	li	a5,3
    80018d60:	bfe9                	j	80018d3a <js_regexp_get_flag+0x48>
quickjs-nuttx/quickjs.c:43646
            return JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_REGEXP);
    80018d62:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:43651
}
    80018d64:	6406                	ld	s0,64(sp)
    80018d66:	60a6                	ld	ra,72(sp)
    80018d68:	74e2                	ld	s1,56(sp)
quickjs-nuttx/quickjs.c:43646
            return JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_REGEXP);
    80018d6a:	45c9                	li	a1,18
quickjs-nuttx/quickjs.c:43651
}
    80018d6c:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:43646
            return JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_REGEXP);
    80018d6e:	a59ff06f          	j	800187c6 <JS_ThrowTypeErrorInvalidClass>

0000000080018d72 <JS_CheckBrand>:
JS_CheckBrand():
quickjs-nuttx/quickjs.c:7408
{
    80018d72:	7139                	addi	sp,sp,-64
    80018d74:	f822                	sd	s0,48(sp)
    80018d76:	f426                	sd	s1,40(sp)
    80018d78:	fc06                	sd	ra,56(sp)
    80018d7a:	f04a                	sd	s2,32(sp)
    80018d7c:	e82e                	sd	a1,16(sp)
    80018d7e:	ec32                	sd	a2,24(sp)
    80018d80:	e036                	sd	a3,0(sp)
    80018d82:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:7415
    if (unlikely(JS_VALUE_GET_TAG(func) != JS_TAG_OBJECT))
    80018d84:	0007041b          	sext.w	s0,a4
    80018d88:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:7408
{
    80018d8a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:7415
    if (unlikely(JS_VALUE_GET_TAG(func) != JS_TAG_OBJECT))
    80018d8c:	06f41663          	bne	s0,a5,80018df8 <JS_CheckBrand+0x86>
quickjs-nuttx/quickjs.c:7418
    if (!js_class_has_bytecode(p1->class_id))
    80018d90:	0066d503          	lhu	a0,6(a3)
quickjs-nuttx/quickjs.c:7417
    p1 = JS_VALUE_GET_OBJ(func);
    80018d94:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:7418
    if (!js_class_has_bytecode(p1->class_id))
    80018d96:	e7af00ef          	jal	ra,80009410 <js_class_has_bytecode>
    80018d9a:	cd39                	beqz	a0,80018df8 <JS_CheckBrand+0x86>
quickjs-nuttx/quickjs.c:7420
    home_obj = p1->u.func.home_object;
    80018d9c:	04093603          	ld	a2,64(s2)
quickjs-nuttx/quickjs.c:7421
    if (!home_obj)
    80018da0:	ce21                	beqz	a2,80018df8 <JS_CheckBrand+0x86>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80018da2:	6e18                	ld	a4,24(a2)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80018da4:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80018da6:	040005b7          	lui	a1,0x4000
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80018daa:	531c                	lw	a5,32(a4)
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80018dac:	0d400513          	li	a0,212
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80018db0:	15fd                	addi	a1,a1,-1
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80018db2:	0d47f793          	andi	a5,a5,212
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80018db6:	0785                	addi	a5,a5,1
    80018db8:	02d787b3          	mul	a5,a5,a3
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80018dbc:	04070693          	addi	a3,a4,64 # 8040 <asinh-0x7fff7fc0>
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80018dc0:	97ba                	add	a5,a5,a4
    80018dc2:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80018dc6:	eb89                	bnez	a5,80018dd8 <JS_CheckBrand+0x66>
JS_CheckBrand():
quickjs-nuttx/quickjs.c:7425
        JS_ThrowTypeError(ctx, "expecting <brand> private field");
    80018dc8:	8526                	mv	a0,s1
    80018dca:	00051597          	auipc	a1,0x51
    80018dce:	5ae58593          	addi	a1,a1,1454 # 8006a378 <qjsc_repl+0x4dc8>
    80018dd2:	89bff0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:7426
        return -1;
    80018dd6:	a02d                	j	80018e00 <JS_CheckBrand+0x8e>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80018dd8:	00379713          	slli	a4,a5,0x3
    80018ddc:	1761                	addi	a4,a4,-8
    80018dde:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80018de0:	00472803          	lw	a6,4(a4)
    80018de4:	02a81563          	bne	a6,a0,80018e0e <JS_CheckBrand+0x9c>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80018de8:	7218                	ld	a4,32(a2)
    80018dea:	0792                	slli	a5,a5,0x4
    80018dec:	17c1                	addi	a5,a5,-16
    80018dee:	97ba                	add	a5,a5,a4
JS_CheckBrand():
quickjs-nuttx/quickjs.c:7430
    if (unlikely(JS_VALUE_GET_TAG(brand) != JS_TAG_SYMBOL))
    80018df0:	4794                	lw	a3,8(a5)
    80018df2:	5761                	li	a4,-8
    80018df4:	02e68263          	beq	a3,a4,80018e18 <JS_CheckBrand+0xa6>
quickjs-nuttx/quickjs.c:7436
        JS_ThrowTypeErrorNotAnObject(ctx);
    80018df8:	8526                	mv	a0,s1
    80018dfa:	e31ff0ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:7437
        return -1;
    80018dfe:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:7442
}
    80018e00:	70e2                	ld	ra,56(sp)
    80018e02:	8522                	mv	a0,s0
    80018e04:	7442                	ld	s0,48(sp)
    80018e06:	74a2                	ld	s1,40(sp)
    80018e08:	7902                	ld	s2,32(sp)
    80018e0a:	6121                	addi	sp,sp,64
    80018e0c:	8082                	ret
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80018e0e:	431c                	lw	a5,0(a4)
    80018e10:	8fed                	and	a5,a5,a1
    80018e12:	1782                	slli	a5,a5,0x20
    80018e14:	9381                	srli	a5,a5,0x20
    80018e16:	bf45                	j	80018dc6 <JS_CheckBrand+0x54>
JS_CheckBrand():
quickjs-nuttx/quickjs.c:7434
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)) {
    80018e18:	46e2                	lw	a3,24(sp)
    80018e1a:	577d                	li	a4,-1
    80018e1c:	fce69ee3          	bne	a3,a4,80018df8 <JS_CheckBrand+0x86>
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80018e20:	638c                	ld	a1,0(a5)
    80018e22:	6c88                	ld	a0,24(s1)
    80018e24:	86bf00ef          	jal	ra,8000968e <js_get_atom_index>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80018e28:	67c2                	ld	a5,16(sp)
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80018e2a:	2501                	sext.w	a0,a0
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80018e2c:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80018e2e:	6f98                	ld	a4,24(a5)
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80018e30:	531c                	lw	a5,32(a4)
    80018e32:	8fe9                	and	a5,a5,a0
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80018e34:	1782                	slli	a5,a5,0x20
    80018e36:	9381                	srli	a5,a5,0x20
    80018e38:	0785                	addi	a5,a5,1
    80018e3a:	02d787b3          	mul	a5,a5,a3
    80018e3e:	97ba                	add	a5,a5,a4
    80018e40:	0007e403          	lwu	s0,0(a5)
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80018e44:	040007b7          	lui	a5,0x4000
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80018e48:	04070713          	addi	a4,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80018e4c:	17fd                	addi	a5,a5,-1
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80018e4e:	e401                	bnez	s0,80018e56 <JS_CheckBrand+0xe4>
JS_CheckBrand():
quickjs-nuttx/quickjs.c:7441
    return (prs != NULL);
    80018e50:	00803433          	snez	s0,s0
    80018e54:	b775                	j	80018e00 <JS_CheckBrand+0x8e>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80018e56:	040e                	slli	s0,s0,0x3
    80018e58:	1461                	addi	s0,s0,-8
    80018e5a:	943a                	add	s0,s0,a4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80018e5c:	4054                	lw	a3,4(s0)
    80018e5e:	fea689e3          	beq	a3,a0,80018e50 <JS_CheckBrand+0xde>
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80018e62:	4000                	lw	s0,0(s0)
    80018e64:	8c7d                	and	s0,s0,a5
    80018e66:	1402                	slli	s0,s0,0x20
    80018e68:	9001                	srli	s0,s0,0x20
    80018e6a:	b7d5                	j	80018e4e <JS_CheckBrand+0xdc>

0000000080018e6c <JS_SpeciesConstructor>:
JS_SpeciesConstructor():
quickjs-nuttx/quickjs.c:37973
{
    80018e6c:	7135                	addi	sp,sp,-160
    80018e6e:	e922                	sd	s0,144(sp)
    80018e70:	e43a                	sd	a4,8(sp)
    80018e72:	ed06                	sd	ra,152(sp)
    80018e74:	e526                	sd	s1,136(sp)
    80018e76:	e14a                	sd	s2,128(sp)
    80018e78:	fcce                	sd	s3,120(sp)
    80018e7a:	f8d2                	sd	s4,112(sp)
    80018e7c:	e82e                	sd	a1,16(sp)
    80018e7e:	ec32                	sd	a2,24(sp)
    80018e80:	e036                	sd	a3,0(sp)
quickjs-nuttx/quickjs.c:37976
    if (!JS_IsObject(obj))
    80018e82:	0006041b          	sext.w	s0,a2
    80018e86:	577d                	li	a4,-1
    80018e88:	00e40b63          	beq	s0,a4,80018e9e <JS_SpeciesConstructor+0x32>
quickjs-nuttx/quickjs.c:37998
}
    80018e8c:	644a                	ld	s0,144(sp)
    80018e8e:	60ea                	ld	ra,152(sp)
    80018e90:	64aa                	ld	s1,136(sp)
    80018e92:	690a                	ld	s2,128(sp)
    80018e94:	79e6                	ld	s3,120(sp)
    80018e96:	7a46                	ld	s4,112(sp)
    80018e98:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:37985
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80018e9a:	d91ff06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    80018e9e:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:37978
    ctor = JS_GetProperty(ctx, obj, JS_ATOM_constructor);
    80018ea0:	872e                	mv	a4,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80018ea2:	4801                	li	a6,0
    80018ea4:	03d00693          	li	a3,61
    80018ea8:	84aa                	mv	s1,a0
    80018eaa:	f0ae                	sd	a1,96(sp)
    80018eac:	f4b2                	sd	a2,104(sp)
    80018eae:	bfdfd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80018eb2:	e0aa                	sd	a0,64(sp)
    80018eb4:	e4ae                	sd	a1,72(sp)
    80018eb6:	f02a                	sd	a0,32(sp)
    80018eb8:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80018eba:	0005899b          	sext.w	s3,a1
JS_SpeciesConstructor():
quickjs-nuttx/quickjs.c:37979
    if (JS_IsException(ctor))
    80018ebe:	4a19                	li	s4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80018ec0:	872a                	mv	a4,a0
    80018ec2:	87ae                	mv	a5,a1
JS_SpeciesConstructor():
quickjs-nuttx/quickjs.c:37979
    80018ec4:	01499e63          	bne	s3,s4,80018ee0 <JS_SpeciesConstructor+0x74>
quickjs-nuttx/quickjs.c:37980
        return ctor;
    80018ec8:	e8aa                	sd	a0,80(sp)
    80018eca:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:37998
}
    80018ecc:	60ea                	ld	ra,152(sp)
    80018ece:	644a                	ld	s0,144(sp)
    80018ed0:	6546                	ld	a0,80(sp)
    80018ed2:	65e6                	ld	a1,88(sp)
    80018ed4:	64aa                	ld	s1,136(sp)
    80018ed6:	690a                	ld	s2,128(sp)
    80018ed8:	79e6                	ld	s3,120(sp)
    80018eda:	7a46                	ld	s4,112(sp)
    80018edc:	610d                	addi	sp,sp,160
    80018ede:	8082                	ret
quickjs-nuttx/quickjs.c:37981
    if (JS_IsUndefined(ctor))
    80018ee0:	468d                	li	a3,3
    80018ee2:	00d99d63          	bne	s3,a3,80018efc <JS_SpeciesConstructor+0x90>
quickjs-nuttx/quickjs.c:37998
}
    80018ee6:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:37982
        return JS_DupValue(ctx, defaultConstructor);
    80018ee8:	6502                	ld	a0,0(sp)
    80018eea:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:37998
}
    80018eec:	60ea                	ld	ra,152(sp)
    80018eee:	64aa                	ld	s1,136(sp)
    80018ef0:	690a                	ld	s2,128(sp)
    80018ef2:	79e6                	ld	s3,120(sp)
    80018ef4:	7a46                	ld	s4,112(sp)
    80018ef6:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:37982
        return JS_DupValue(ctx, defaultConstructor);
    80018ef8:	d22f106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:37983
    if (!JS_IsObject(ctor)) {
    80018efc:	00898963          	beq	s3,s0,80018f0e <JS_SpeciesConstructor+0xa2>
quickjs-nuttx/quickjs.c:37984
        JS_FreeValue(ctx, ctor);
    80018f00:	85aa                	mv	a1,a0
    80018f02:	863e                	mv	a2,a5
    80018f04:	8526                	mv	a0,s1
    80018f06:	899f20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37985
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80018f0a:	8526                	mv	a0,s1
    80018f0c:	b741                	j	80018e8c <JS_SpeciesConstructor+0x20>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80018f0e:	863e                	mv	a2,a5
    80018f10:	e8aa                	sd	a0,80(sp)
    80018f12:	ecae                	sd	a1,88(sp)
    80018f14:	4801                	li	a6,0
    80018f16:	0df00693          	li	a3,223
    80018f1a:	85aa                	mv	a1,a0
    80018f1c:	8526                	mv	a0,s1
    80018f1e:	b8dfd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80018f22:	842e                	mv	s0,a1
    80018f24:	f4ae                	sd	a1,104(sp)
    80018f26:	fc2e                	sd	a1,56(sp)
JS_SpeciesConstructor():
quickjs-nuttx/quickjs.c:37988
    JS_FreeValue(ctx, ctor);
    80018f28:	7622                	ld	a2,40(sp)
    80018f2a:	7582                	ld	a1,32(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80018f2c:	f0aa                	sd	a0,96(sp)
    80018f2e:	f82a                	sd	a0,48(sp)
    80018f30:	892a                	mv	s2,a0
JS_SpeciesConstructor():
quickjs-nuttx/quickjs.c:37988
    80018f32:	8526                	mv	a0,s1
    80018f34:	86bf20ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80018f38:	0004071b          	sext.w	a4,s0
JS_SpeciesConstructor():
quickjs-nuttx/quickjs.c:37989
    if (JS_IsException(species))
    80018f3c:	01471563          	bne	a4,s4,80018f46 <JS_SpeciesConstructor+0xda>
quickjs-nuttx/quickjs.c:37997
    return species;
    80018f40:	e8ca                	sd	s2,80(sp)
    80018f42:	eca2                	sd	s0,88(sp)
    80018f44:	b761                	j	80018ecc <JS_SpeciesConstructor+0x60>
quickjs-nuttx/quickjs.c:37991 (discriminator 1)
    if (JS_IsUndefined(species) || JS_IsNull(species))
    80018f46:	ffe4079b          	addiw	a5,s0,-2
    80018f4a:	4685                	li	a3,1
    80018f4c:	f8f6fde3          	bgeu	a3,a5,80018ee6 <JS_SpeciesConstructor+0x7a>
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80018f50:	01371763          	bne	a4,s3,80018f5e <JS_SpeciesConstructor+0xf2>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    80018f54:	00093783          	ld	a5,0(s2)
    80018f58:	93b1                	srli	a5,a5,0x2c
JS_SpeciesConstructor():
quickjs-nuttx/quickjs.c:37993
    if (!JS_IsConstructor(ctx, species)) {
    80018f5a:	8b85                	andi	a5,a5,1
    80018f5c:	f3f5                	bnez	a5,80018f40 <JS_SpeciesConstructor+0xd4>
quickjs-nuttx/quickjs.c:37994
        JS_FreeValue(ctx, species);
    80018f5e:	75c2                	ld	a1,48(sp)
    80018f60:	7662                	ld	a2,56(sp)
    80018f62:	8526                	mv	a0,s1
    80018f64:	83bf20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37998
}
    80018f68:	644a                	ld	s0,144(sp)
    80018f6a:	60ea                	ld	ra,152(sp)
    80018f6c:	690a                	ld	s2,128(sp)
    80018f6e:	79e6                	ld	s3,120(sp)
    80018f70:	7a46                	ld	s4,112(sp)
quickjs-nuttx/quickjs.c:37995
        return JS_ThrowTypeError(ctx, "not a constructor");
    80018f72:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:37998
}
    80018f74:	64aa                	ld	s1,136(sp)
quickjs-nuttx/quickjs.c:37995
        return JS_ThrowTypeError(ctx, "not a constructor");
    80018f76:	00051597          	auipc	a1,0x51
    80018f7a:	42258593          	addi	a1,a1,1058 # 8006a398 <qjsc_repl+0x4de8>
quickjs-nuttx/quickjs.c:37998
}
    80018f7e:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:37995
        return JS_ThrowTypeError(ctx, "not a constructor");
    80018f80:	eecff06f          	j	8001866c <JS_ThrowTypeError>

0000000080018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>:
JS_ThrowTypeErrorDetachedArrayBuffer():
quickjs-nuttx/quickjs.c:52753
{
    80018f84:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:52754
    return JS_ThrowTypeError(ctx, "ArrayBuffer is detached");
    80018f86:	00051597          	auipc	a1,0x51
    80018f8a:	42a58593          	addi	a1,a1,1066 # 8006a3b0 <qjsc_repl+0x4e00>
quickjs-nuttx/quickjs.c:52755
}
    80018f8e:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:52754
    return JS_ThrowTypeError(ctx, "ArrayBuffer is detached");
    80018f90:	edcff06f          	j	8001866c <JS_ThrowTypeError>

0000000080018f94 <js_call_unary_op_fallback>:
js_call_unary_op_fallback():
quickjs-nuttx/quickjs.c:12689
{
    80018f94:	7135                	addi	sp,sp,-160
    80018f96:	ed06                	sd	ra,152(sp)
    80018f98:	e922                	sd	s0,144(sp)
    80018f9a:	e526                	sd	s1,136(sp)
    80018f9c:	e14a                	sd	s2,128(sp)
    80018f9e:	fcce                	sd	s3,120(sp)
    80018fa0:	f8d2                	sd	s4,112(sp)
    80018fa2:	f4d6                	sd	s5,104(sp)
quickjs-nuttx/quickjs.c:12695
    if (!ctx->allow_operator_overloading)
    80018fa4:	1a954783          	lbu	a5,425(a0)
quickjs-nuttx/quickjs.c:12689
{
    80018fa8:	e032                	sd	a2,0(sp)
    80018faa:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:12695
    if (!ctx->allow_operator_overloading)
    80018fac:	eb99                	bnez	a5,80018fc2 <js_call_unary_op_fallback+0x2e>
quickjs-nuttx/quickjs.c:12708
        return 0;
    80018fae:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:12730
}
    80018fb0:	60ea                	ld	ra,152(sp)
    80018fb2:	644a                	ld	s0,144(sp)
    80018fb4:	64aa                	ld	s1,136(sp)
    80018fb6:	690a                	ld	s2,128(sp)
    80018fb8:	79e6                	ld	s3,120(sp)
    80018fba:	7a46                	ld	s4,112(sp)
    80018fbc:	7aa6                	ld	s5,104(sp)
    80018fbe:	610d                	addi	sp,sp,160
    80018fc0:	8082                	ret
    80018fc2:	87b6                	mv	a5,a3
    80018fc4:	e0b2                	sd	a2,64(sp)
    80018fc6:	e4b6                	sd	a3,72(sp)
    80018fc8:	892e                	mv	s2,a1
    80018fca:	8aba                	mv	s5,a4
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80018fcc:	85b2                	mv	a1,a2
    80018fce:	8732                	mv	a4,a2
    80018fd0:	4801                	li	a6,0
    80018fd2:	863e                	mv	a2,a5
    80018fd4:	0e200693          	li	a3,226
    80018fd8:	842a                	mv	s0,a0
    80018fda:	ad1fd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80018fde:	e8aa                	sd	a0,80(sp)
    80018fe0:	ecae                	sd	a1,88(sp)
    80018fe2:	e82a                	sd	a0,16(sp)
    80018fe4:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80018fe6:	0005879b          	sext.w	a5,a1
js_call_unary_op_fallback():
quickjs-nuttx/quickjs.c:12699
    if (JS_IsException(opset1_obj))
    80018fea:	4999                	li	s3,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80018fec:	862e                	mv	a2,a1
js_call_unary_op_fallback():
quickjs-nuttx/quickjs.c:12699
    80018fee:	05378c63          	beq	a5,s3,80019046 <js_call_unary_op_fallback+0xb2>
quickjs-nuttx/quickjs.c:12701
    if (JS_IsUndefined(opset1_obj))
    80018ff2:	4a0d                	li	s4,3
    80018ff4:	fb478de3          	beq	a5,s4,80018fae <js_call_unary_op_fallback+0x1a>
quickjs-nuttx/quickjs.c:12703
    opset1 = JS_GetOpaque2(ctx, opset1_obj, JS_CLASS_OPERATOR_SET);
    80018ff8:	85aa                	mv	a1,a0
    80018ffa:	02500693          	li	a3,37
    80018ffe:	8522                	mv	a0,s0
