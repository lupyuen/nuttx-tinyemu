    80038000:	74e2                	ld	s1,56(sp)
    80038002:	854a                	mv	a0,s2
    80038004:	7942                	ld	s2,48(sp)
    80038006:	6161                	addi	sp,sp,80
    80038008:	8082                	ret

000000008003800a <js_reflect_set>:
js_reflect_set():
quickjs-nuttx/quickjs.c:45634
{
    8003800a:	7171                	addi	sp,sp,-176
    8003800c:	ed26                	sd	s1,152(sp)
    8003800e:	f506                	sd	ra,168(sp)
    80038010:	f122                	sd	s0,160(sp)
    80038012:	e94a                	sd	s2,144(sp)
quickjs-nuttx/quickjs.c:45640
    prop = argv[1];
    80038014:	6b0c                	ld	a1,16(a4)
quickjs-nuttx/quickjs.c:45639
    obj = argv[0];
    80038016:	6310                	ld	a2,0(a4)
    80038018:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:45640
    prop = argv[1];
    8003801a:	f82e                	sd	a1,48(sp)
    8003801c:	6f0c                	ld	a1,24(a4)
quickjs-nuttx/quickjs.c:45639
    obj = argv[0];
    8003801e:	f032                	sd	a2,32(sp)
    80038020:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:45640
    prop = argv[1];
    80038022:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:45641
    val = argv[2];
    80038024:	730c                	ld	a1,32(a4)
quickjs-nuttx/quickjs.c:45634
{
    80038026:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:45641
    val = argv[2];
    80038028:	e0ae                	sd	a1,64(sp)
    8003802a:	770c                	ld	a1,40(a4)
    8003802c:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:45642
    if (argc > 3)
    8003802e:	458d                	li	a1,3
    80038030:	02d5d263          	bge	a1,a3,80038054 <js_reflect_set+0x4a>
quickjs-nuttx/quickjs.c:45643
        receiver = argv[3];
    80038034:	7b14                	ld	a3,48(a4)
    80038036:	7f18                	ld	a4,56(a4)
    80038038:	e8b6                	sd	a3,80(sp)
    8003803a:	ecba                	sd	a4,88(sp)
quickjs-nuttx/quickjs.c:45646
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8003803c:	2781                	sext.w	a5,a5
    8003803e:	577d                	li	a4,-1
    80038040:	00e78d63          	beq	a5,a4,8003805a <js_reflect_set+0x50>
quickjs-nuttx/quickjs.c:45658
}
    80038044:	740a                	ld	s0,160(sp)
    80038046:	70aa                	ld	ra,168(sp)
    80038048:	694a                	ld	s2,144(sp)
quickjs-nuttx/quickjs.c:45647
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8003804a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:45658
}
    8003804c:	64ea                	ld	s1,152(sp)
    8003804e:	614d                	addi	sp,sp,176
quickjs-nuttx/quickjs.c:45647
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80038050:	bdbe006f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:45645
        receiver = obj;
    80038054:	e8b2                	sd	a2,80(sp)
    80038056:	ecbe                	sd	a5,88(sp)
    80038058:	b7d5                	j	8003803c <js_reflect_set+0x32>
quickjs-nuttx/quickjs.c:45648
    atom = JS_ValueToAtom(ctx, prop);
    8003805a:	75c2                	ld	a1,48(sp)
    8003805c:	7662                	ld	a2,56(sp)
    8003805e:	8526                	mv	a0,s1
    80038060:	fb2f00ef          	jal	ra,80028812 <JS_ValueToAtom>
    80038064:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:45649
    if (unlikely(atom == JS_ATOM_NULL))
    80038068:	00091d63          	bnez	s2,80038082 <js_reflect_set+0x78>
quickjs-nuttx/quickjs.c:45650
        return JS_EXCEPTION;
    8003806c:	f082                	sd	zero,96(sp)
    8003806e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45658
}
    80038070:	70aa                	ld	ra,168(sp)
    80038072:	740a                	ld	s0,160(sp)
    80038074:	f4be                	sd	a5,104(sp)
    80038076:	7506                	ld	a0,96(sp)
    80038078:	75a6                	ld	a1,104(sp)
    8003807a:	64ea                	ld	s1,152(sp)
    8003807c:	694a                	ld	s2,144(sp)
    8003807e:	614d                	addi	sp,sp,176
    80038080:	8082                	ret
quickjs-nuttx/quickjs.c:45651
    ret = JS_SetPropertyInternal(ctx, obj, atom,
    80038082:	6506                	ld	a0,64(sp)
    80038084:	65a6                	ld	a1,72(sp)
    80038086:	b94d20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003808a:	87ae                	mv	a5,a1
    8003808c:	6846                	ld	a6,80(sp)
    8003808e:	7582                	ld	a1,32(sp)
    80038090:	68e6                	ld	a7,88(sp)
    80038092:	7622                	ld	a2,40(sp)
    80038094:	872a                	mv	a4,a0
    80038096:	e002                	sd	zero,0(sp)
    80038098:	86ca                	mv	a3,s2
    8003809a:	8526                	mv	a0,s1
    8003809c:	aaedf0ef          	jal	ra,8001734a <JS_SetPropertyInternal>
    800380a0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:45653
    JS_FreeAtom(ctx, atom);
    800380a2:	85ca                	mv	a1,s2
    800380a4:	8526                	mv	a0,s1
    800380a6:	8a2d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:45654
    if (ret < 0)
    800380aa:	fc0441e3          	bltz	s0,8003806c <js_reflect_set+0x62>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800380ae:	00803433          	snez	s0,s0
    800380b2:	c302                	sw	zero,132(sp)
    800380b4:	c122                	sw	s0,128(sp)
    800380b6:	678a                	ld	a5,128(sp)
    800380b8:	f0be                	sd	a5,96(sp)
    800380ba:	4785                	li	a5,1
    800380bc:	bf55                	j	80038070 <js_reflect_set+0x66>

00000000800380be <JS_GetOwnPropertyNamesInternal>:
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7495
{
    800380be:	716d                	addi	sp,sp,-272
    800380c0:	e222                	sd	s0,256(sp)
    800380c2:	fda6                	sd	s1,248(sp)
    800380c4:	f9ca                	sd	s2,240(sp)
    800380c6:	f1d2                	sd	s4,224(sp)
    800380c8:	edd6                	sd	s5,216(sp)
    800380ca:	e9da                	sd	s6,208(sp)
    800380cc:	e5de                	sd	s7,200(sp)
    800380ce:	e1e2                	sd	s8,192(sp)
    800380d0:	fd66                	sd	s9,184(sp)
    800380d2:	f96a                	sd	s10,176(sp)
    800380d4:	f56e                	sd	s11,168(sp)
    800380d6:	e606                	sd	ra,264(sp)
    800380d8:	f5ce                	sd	s3,232(sp)
quickjs-nuttx/quickjs.c:7508
    *ptab = NULL;
    800380da:	0005b023          	sd	zero,0(a1)
quickjs-nuttx/quickjs.c:7509
    *plen = 0;
    800380de:	00062023          	sw	zero,0(a2)
quickjs-nuttx/quickjs.c:7518
    sh = p->shape;
    800380e2:	0186b983          	ld	s3,24(a3)
quickjs-nuttx/quickjs.c:7524
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    800380e6:	01077793          	andi	a5,a4,16
quickjs-nuttx/quickjs.c:7495
{
    800380ea:	842a                	mv	s0,a0
    800380ec:	f02e                	sd	a1,32(sp)
    800380ee:	f432                	sd	a2,40(sp)
    800380f0:	8d36                	mv	s10,a3
    800380f2:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:7516
    exotic_count = 0;
    800380f4:	cc82                	sw	zero,88(sp)
quickjs-nuttx/quickjs.c:7517
    tab_exotic = NULL;
    800380f6:	f082                	sd	zero,96(sp)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    800380f8:	04098b13          	addi	s6,s3,64
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7514
    sym_keys_count = 0;
    800380fc:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:7513
    str_keys_count = 0;
    800380fe:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:7512
    num_keys_count = 0;
    80038100:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:7519
    for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    80038102:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:7524
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    80038104:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:7528
                if (unlikely((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) &&
    80038106:	02000b93          	li	s7,32
    8003810a:	03077c13          	andi	s8,a4,48
quickjs-nuttx/quickjs.c:7531
                    if (unlikely(JS_IsUninitialized(*var_ref->pvalue))) {
    8003810e:	4c91                	li	s9,4
quickjs-nuttx/quickjs.c:7519 (discriminator 1)
    for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    80038110:	0289a683          	lw	a3,40(s3)
    80038114:	0cddc263          	blt	s11,a3,800381d8 <JS_GetOwnPropertyNamesInternal+0x11a>
quickjs-nuttx/quickjs.c:7547
    if (p->is_exotic) {
    80038118:	005d4703          	lbu	a4,5(s10)
    8003811c:	00477693          	andi	a3,a4,4
    80038120:	18068063          	beqz	a3,800382a0 <JS_GetOwnPropertyNamesInternal+0x1e2>
quickjs-nuttx/quickjs.c:7548
        if (p->fast_array) {
    80038124:	8b21                	andi	a4,a4,8
    80038126:	14070663          	beqz	a4,80038272 <JS_GetOwnPropertyNamesInternal+0x1b4>
quickjs-nuttx/quickjs.c:7549
            if (flags & JS_GPN_STRING_MASK) {
    8003812a:	0014f713          	andi	a4,s1,1
quickjs-nuttx/quickjs.c:7515
    exotic_keys_count = 0;
    8003812e:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:7549
            if (flags & JS_GPN_STRING_MASK) {
    80038130:	c709                	beqz	a4,8003813a <JS_GetOwnPropertyNamesInternal+0x7c>
quickjs-nuttx/quickjs.c:7550
                num_keys_count += p->u.array.count;
    80038132:	040d2703          	lw	a4,64(s10)
    80038136:	0127093b          	addw	s2,a4,s2
quickjs-nuttx/quickjs.c:7594
    atom_count = num_keys_count + str_keys_count + sym_keys_count + exotic_keys_count;
    8003813a:	014907bb          	addw	a5,s2,s4
    8003813e:	01ba89bb          	addw	s3,s5,s11
    80038142:	e43e                	sd	a5,8(sp)
    80038144:	00f987bb          	addw	a5,s3,a5
    80038148:	f83e                	sd	a5,48(sp)
    8003814a:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:7596
    tab_atom = js_malloc(ctx, sizeof(tab_atom[0]) * max_int(atom_count, 1));
    8003814c:	0007859b          	sext.w	a1,a5
    80038150:	00f04363          	bgtz	a5,80038156 <JS_GetOwnPropertyNamesInternal+0x98>
    80038154:	4585                	li	a1,1
    80038156:	058e                	slli	a1,a1,0x3
    80038158:	8522                	mv	a0,s0
    8003815a:	fabe10ef          	jal	ra,8001a104 <js_malloc>
    8003815e:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:7597
    if (!tab_atom) {
    80038160:	1a050d63          	beqz	a0,8003831a <JS_GetOwnPropertyNamesInternal+0x25c>
quickjs-nuttx/quickjs.c:7607
    sh = p->shape;
    80038164:	018d3783          	ld	a5,24(s10)
quickjs-nuttx/quickjs.c:7604
    sym_index = str_index + str_keys_count;
    80038168:	6b22                	ld	s6,8(sp)
quickjs-nuttx/quickjs.c:7608
    for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    8003816a:	8c4a                	mv	s8,s2
quickjs-nuttx/quickjs.c:7607
    sh = p->shape;
    8003816c:	ec3e                	sd	a5,24(sp)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8003816e:	04078d93          	addi	s11,a5,64 # 4040 <asinh-0x7fffbfc0>
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7606
    num_sorted = TRUE;
    80038172:	4785                	li	a5,1
    80038174:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:7613
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    80038176:	0104f793          	andi	a5,s1,16
quickjs-nuttx/quickjs.c:7602
    num_index = 0;
    8003817a:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:7608
    for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    8003817c:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:7613
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    8003817e:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:7608 (discriminator 1)
    for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    80038180:	67e2                	ld	a5,24(sp)
    80038182:	5798                	lw	a4,40(a5)
    80038184:	1cecc663          	blt	s9,a4,80038350 <JS_GetOwnPropertyNamesInternal+0x292>
quickjs-nuttx/quickjs.c:7629
    if (p->is_exotic) {
    80038188:	005d4703          	lbu	a4,5(s10)
    8003818c:	00477693          	andi	a3,a4,4
    80038190:	ca85                	beqz	a3,800381c0 <JS_GetOwnPropertyNamesInternal+0x102>
quickjs-nuttx/quickjs.c:7631
        if (p->fast_array) {
    80038192:	8b21                	andi	a4,a4,8
    80038194:	22070d63          	beqz	a4,800383ce <JS_GetOwnPropertyNamesInternal+0x310>
quickjs-nuttx/quickjs.c:7632
            if (flags & JS_GPN_STRING_MASK) {
    80038198:	8885                	andi	s1,s1,1
    8003819a:	c09d                	beqz	s1,800381c0 <JS_GetOwnPropertyNamesInternal+0x102>
quickjs-nuttx/quickjs.c:7633
                len = p->u.array.count;
    8003819c:	040d2783          	lw	a5,64(s10)
quickjs-nuttx/quickjs.c:7640
                for(i = 0; i < len; i++) {
    800381a0:	4681                	li	a3,0
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    800381a2:	800005b7          	lui	a1,0x80000
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7646
                    tab_atom[num_index].is_enumerable = TRUE;
    800381a6:	4505                	li	a0,1
    800381a8:	0006861b          	sext.w	a2,a3
    800381ac:	00db873b          	addw	a4,s7,a3
quickjs-nuttx/quickjs.c:7640 (discriminator 1)
                for(i = 0; i < len; i++) {
    800381b0:	24f6c963          	blt	a3,a5,80038402 <JS_GetOwnPropertyNamesInternal+0x344>
    800381b4:	873e                	mv	a4,a5
    800381b6:	0007d363          	bgez	a5,800381bc <JS_GetOwnPropertyNamesInternal+0xfe>
    800381ba:	4701                	li	a4,0
    800381bc:	01770bbb          	addw	s7,a4,s7
quickjs-nuttx/quickjs.c:7669
    assert(num_index == num_keys_count);
    800381c0:	2b790563          	beq	s2,s7,8003846a <JS_GetOwnPropertyNamesInternal+0x3ac>
quickjs-nuttx/quickjs.c:7669 (discriminator 1)
    800381c4:	6589                	lui	a1,0x2
    800381c6:	4601                	li	a2,0
    800381c8:	df558593          	addi	a1,a1,-523 # 1df5 <asinh-0x7fffe20b>
quickjs-nuttx/quickjs.c:7670 (discriminator 1)
    assert(str_index == num_keys_count + str_keys_count);
    800381cc:	00031517          	auipc	a0,0x31
    800381d0:	3cc50513          	addi	a0,a0,972 # 80069598 <qjsc_repl+0x3fe8>
    800381d4:	788280ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:7520
        atom = prs->atom;
    800381d8:	004b2583          	lw	a1,4(s6)
quickjs-nuttx/quickjs.c:7521
        if (atom != JS_ATOM_NULL) {
    800381dc:	c1d9                	beqz	a1,80038262 <JS_GetOwnPropertyNamesInternal+0x1a4>
quickjs-nuttx/quickjs.c:7522
            is_enumerable = ((prs->flags & JS_PROP_ENUMERABLE) != 0);
    800381de:	000b2783          	lw	a5,0(s6)
quickjs-nuttx/quickjs.c:7523
            kind = JS_AtomGetKind(ctx, atom);
    800381e2:	8522                	mv	a0,s0
    800381e4:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:7522
            is_enumerable = ((prs->flags & JS_PROP_ENUMERABLE) != 0);
    800381e6:	01a7d79b          	srliw	a5,a5,0x1a
    800381ea:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:7523
            kind = JS_AtomGetKind(ctx, atom);
    800381ec:	88fd00ef          	jal	ra,80008a7a <JS_AtomGetKind>
quickjs-nuttx/quickjs.c:7524
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    800381f0:	6722                	ld	a4,8(sp)
    800381f2:	65c2                	ld	a1,16(sp)
    800381f4:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:7523
            kind = JS_AtomGetKind(ctx, atom);
    800381f6:	0005069b          	sext.w	a3,a0
quickjs-nuttx/quickjs.c:7524
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    800381fa:	c701                	beqz	a4,80038202 <JS_GetOwnPropertyNamesInternal+0x144>
quickjs-nuttx/quickjs.c:7524 (discriminator 2)
    800381fc:	0047f613          	andi	a2,a5,4
    80038200:	c22d                	beqz	a2,80038262 <JS_GetOwnPropertyNamesInternal+0x1a4>
quickjs-nuttx/quickjs.c:7525 (discriminator 3)
                ((flags >> kind) & 1) != 0) {
    80038202:	40d4d63b          	sraw	a2,s1,a3
quickjs-nuttx/quickjs.c:7524 (discriminator 3)
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    80038206:	8a05                	andi	a2,a2,1
    80038208:	ce29                	beqz	a2,80038262 <JS_GetOwnPropertyNamesInternal+0x1a4>
quickjs-nuttx/quickjs.c:7528
                if (unlikely((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) &&
    8003820a:	0307f793          	andi	a5,a5,48
    8003820e:	05779163          	bne	a5,s7,80038250 <JS_GetOwnPropertyNamesInternal+0x192>
quickjs-nuttx/quickjs.c:7528 (discriminator 1)
    80038212:	020c0f63          	beqz	s8,80038250 <JS_GetOwnPropertyNamesInternal+0x192>
quickjs-nuttx/quickjs.c:7530
                    JSVarRef *var_ref = p->prop[i].u.var_ref;
    80038216:	020d3603          	ld	a2,32(s10)
    8003821a:	004d9513          	slli	a0,s11,0x4
    8003821e:	962a                	add	a2,a2,a0
quickjs-nuttx/quickjs.c:7531
                    if (unlikely(JS_IsUninitialized(*var_ref->pvalue))) {
    80038220:	6210                	ld	a2,0(a2)
JS_IsUninitialized():
quickjs-nuttx/quickjs.h:615
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_UNINITIALIZED);
    80038222:	6e10                	ld	a2,24(a2)
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7531
    80038224:	4610                	lw	a2,8(a2)
    80038226:	03961563          	bne	a2,s9,80038250 <JS_GetOwnPropertyNamesInternal+0x192>
quickjs-nuttx/quickjs.c:7532
                        JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    8003822a:	8522                	mv	a0,s0
    8003822c:	e20e10ef          	jal	ra,8001984c <JS_ThrowReferenceErrorUninitialized>
quickjs-nuttx/quickjs.c:7599
        return -1;
    80038230:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:7680
}
    80038232:	60b2                	ld	ra,264(sp)
    80038234:	6412                	ld	s0,256(sp)
    80038236:	74ee                	ld	s1,248(sp)
    80038238:	794e                	ld	s2,240(sp)
    8003823a:	79ae                	ld	s3,232(sp)
    8003823c:	7a0e                	ld	s4,224(sp)
    8003823e:	6aee                	ld	s5,216(sp)
    80038240:	6b4e                	ld	s6,208(sp)
    80038242:	6bae                	ld	s7,200(sp)
    80038244:	6c0e                	ld	s8,192(sp)
    80038246:	7cea                	ld	s9,184(sp)
    80038248:	7d4a                	ld	s10,176(sp)
    8003824a:	7daa                	ld	s11,168(sp)
    8003824c:	6151                	addi	sp,sp,272
    8003824e:	8082                	ret
quickjs-nuttx/quickjs.c:7536
                if (JS_AtomIsArrayIndex(ctx, &num_key, atom)) {
    80038250:	862e                	mv	a2,a1
    80038252:	8522                	mv	a0,s0
    80038254:	08ec                	addi	a1,sp,92
    80038256:	e836                	sd	a3,16(sp)
    80038258:	f56d00ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
    8003825c:	66c2                	ld	a3,16(sp)
    8003825e:	c509                	beqz	a0,80038268 <JS_GetOwnPropertyNamesInternal+0x1aa>
quickjs-nuttx/quickjs.c:7537
                    num_keys_count++;
    80038260:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:7519 (discriminator 2)
    for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    80038262:	2d85                	addiw	s11,s11,1
    80038264:	0b21                	addi	s6,s6,8
    80038266:	b56d                	j	80038110 <JS_GetOwnPropertyNamesInternal+0x52>
quickjs-nuttx/quickjs.c:7538
                } else if (kind == JS_ATOM_KIND_STRING) {
    80038268:	e299                	bnez	a3,8003826e <JS_GetOwnPropertyNamesInternal+0x1b0>
quickjs-nuttx/quickjs.c:7539
                    str_keys_count++;
    8003826a:	2a05                	addiw	s4,s4,1
    8003826c:	bfdd                	j	80038262 <JS_GetOwnPropertyNamesInternal+0x1a4>
quickjs-nuttx/quickjs.c:7541
                    sym_keys_count++;
    8003826e:	2a85                	addiw	s5,s5,1
    80038270:	bfcd                	j	80038262 <JS_GetOwnPropertyNamesInternal+0x1a4>
quickjs-nuttx/quickjs.c:7552
        } else if (p->class_id == JS_CLASS_STRING) {
    80038272:	006d5703          	lhu	a4,6(s10)
    80038276:	4695                	li	a3,5
    80038278:	02d71663          	bne	a4,a3,800382a4 <JS_GetOwnPropertyNamesInternal+0x1e6>
quickjs-nuttx/quickjs.c:7553
            if (flags & JS_GPN_STRING_MASK) {
    8003827c:	0014f713          	andi	a4,s1,1
quickjs-nuttx/quickjs.c:7515
    exotic_keys_count = 0;
    80038280:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:7553
            if (flags & JS_GPN_STRING_MASK) {
    80038282:	ea070ce3          	beqz	a4,8003813a <JS_GetOwnPropertyNamesInternal+0x7c>
js_string_obj_get_length():
quickjs-nuttx/quickjs.c:7453
    if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING) {
    80038286:	038d2603          	lw	a2,56(s10)
    8003828a:	56e5                	li	a3,-7
quickjs-nuttx/quickjs.c:7449
    uint32_t len = 0;
    8003828c:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:7453
    if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING) {
    8003828e:	00d61763          	bne	a2,a3,8003829c <JS_GetOwnPropertyNamesInternal+0x1de>
quickjs-nuttx/quickjs.c:7455
        len = p1->len;
    80038292:	030d3703          	ld	a4,48(s10)
    80038296:	4358                	lw	a4,4(a4)
    80038298:	1706                	slli	a4,a4,0x21
    8003829a:	9305                	srli	a4,a4,0x21
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7554
                num_keys_count += js_string_obj_get_length(ctx, JS_MKPTR(JS_TAG_OBJECT, p));
    8003829c:	00e9093b          	addw	s2,s2,a4
quickjs-nuttx/quickjs.c:7515
    exotic_keys_count = 0;
    800382a0:	4d81                	li	s11,0
    800382a2:	bd61                	j	8003813a <JS_GetOwnPropertyNamesInternal+0x7c>
quickjs-nuttx/quickjs.c:7557
            const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    800382a4:	02800613          	li	a2,40
    800382a8:	02c70733          	mul	a4,a4,a2
    800382ac:	6c14                	ld	a3,24(s0)
    800382ae:	7ab4                	ld	a3,112(a3)
    800382b0:	9736                	add	a4,a4,a3
    800382b2:	7318                	ld	a4,32(a4)
quickjs-nuttx/quickjs.c:7558
            if (em && em->get_own_property_names) {
    800382b4:	d775                	beqz	a4,800382a0 <JS_GetOwnPropertyNamesInternal+0x1e2>
quickjs-nuttx/quickjs.c:7558 (discriminator 1)
    800382b6:	00873803          	ld	a6,8(a4)
    800382ba:	fe0803e3          	beqz	a6,800382a0 <JS_GetOwnPropertyNamesInternal+0x1e2>
quickjs-nuttx/quickjs.c:7560
                                               JS_MKPTR(JS_TAG_OBJECT, p)))
    800382be:	577d                	li	a4,-1
    800382c0:	f4ea                	sd	s10,104(sp)
    800382c2:	f8ba                	sd	a4,112(sp)
quickjs-nuttx/quickjs.c:7559
                if (em->get_own_property_names(ctx, &tab_exotic, &exotic_count,
    800382c4:	86ea                	mv	a3,s10
    800382c6:	08b0                	addi	a2,sp,88
    800382c8:	108c                	addi	a1,sp,96
    800382ca:	8522                	mv	a0,s0
    800382cc:	9802                	jalr	a6
    800382ce:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:7515
    exotic_keys_count = 0;
    800382d0:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:7559
                if (em->get_own_property_names(ctx, &tab_exotic, &exotic_count,
    800382d2:	fd39                	bnez	a0,80038230 <JS_GetOwnPropertyNamesInternal+0x172>
quickjs-nuttx/quickjs.c:7567
                        if (flags & (JS_GPN_SET_ENUM | JS_GPN_ENUM_ONLY)) {
    800382d4:	0304fb93          	andi	s7,s1,48
quickjs-nuttx/quickjs.c:7583
                        if (!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) {
    800382d8:	0104fc93          	andi	s9,s1,16
quickjs-nuttx/quickjs.c:7562 (discriminator 1)
                for(i = 0; i < exotic_count; i++) {
    800382dc:	46e6                	lw	a3,88(sp)
    800382de:	0009871b          	sext.w	a4,s3
    800382e2:	e4d77ce3          	bgeu	a4,a3,8003813a <JS_GetOwnPropertyNamesInternal+0x7c>
quickjs-nuttx/quickjs.c:7563
                    atom = tab_exotic[i].atom;
    800382e6:	7706                	ld	a4,96(sp)
    800382e8:	00399c13          	slli	s8,s3,0x3
quickjs-nuttx/quickjs.c:7564
                    kind = JS_AtomGetKind(ctx, atom);
    800382ec:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:7563
                    atom = tab_exotic[i].atom;
    800382ee:	9762                	add	a4,a4,s8
    800382f0:	4354                	lw	a3,4(a4)
quickjs-nuttx/quickjs.c:7564
                    kind = JS_AtomGetKind(ctx, atom);
    800382f2:	85b6                	mv	a1,a3
    800382f4:	e436                	sd	a3,8(sp)
    800382f6:	f84d00ef          	jal	ra,80008a7a <JS_AtomGetKind>
quickjs-nuttx/quickjs.c:7565
                    if (((flags >> kind) & 1) != 0) {
    800382fa:	40a4d53b          	sraw	a0,s1,a0
    800382fe:	8905                	andi	a0,a0,1
    80038300:	c531                	beqz	a0,8003834c <JS_GetOwnPropertyNamesInternal+0x28e>
quickjs-nuttx/quickjs.c:7567
                        if (flags & (JS_GPN_SET_ENUM | JS_GPN_ENUM_ONLY)) {
    80038302:	66a2                	ld	a3,8(sp)
    80038304:	8b5e                	mv	s6,s7
    80038306:	020b8e63          	beqz	s7,80038342 <JS_GetOwnPropertyNamesInternal+0x284>
quickjs-nuttx/quickjs.c:7571
                            res = JS_GetOwnPropertyInternal(ctx, &desc, p, atom);
    8003830a:	866a                	mv	a2,s10
    8003830c:	10ac                	addi	a1,sp,104
    8003830e:	8522                	mv	a0,s0
    80038310:	e61de0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
    80038314:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:7572
                            if (res < 0) {
    80038316:	00055863          	bgez	a0,80038326 <JS_GetOwnPropertyNamesInternal+0x268>
quickjs-nuttx/quickjs.c:7598
        js_free_prop_enum(ctx, tab_exotic, exotic_count);
    8003831a:	4666                	lw	a2,88(sp)
    8003831c:	7586                	ld	a1,96(sp)
    8003831e:	8522                	mv	a0,s0
    80038320:	e39d20ef          	jal	ra,8000b158 <js_free_prop_enum>
    80038324:	b731                	j	80038230 <JS_GetOwnPropertyNamesInternal+0x172>
quickjs-nuttx/quickjs.c:7576
                            if (res) {
    80038326:	c911                	beqz	a0,8003833a <JS_GetOwnPropertyNamesInternal+0x27c>
quickjs-nuttx/quickjs.c:7578
                                    ((desc.flags & JS_PROP_ENUMERABLE) != 0);
    80038328:	5b26                	lw	s6,104(sp)
quickjs-nuttx/quickjs.c:7579
                                js_free_desc(ctx, &desc);
    8003832a:	10ac                	addi	a1,sp,104
    8003832c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:7578
                                    ((desc.flags & JS_PROP_ENUMERABLE) != 0);
    8003832e:	402b5b1b          	sraiw	s6,s6,0x2
quickjs-nuttx/quickjs.c:7577
                                is_enumerable =
    80038332:	001b7b13          	andi	s6,s6,1
quickjs-nuttx/quickjs.c:7579
                                js_free_desc(ctx, &desc);
    80038336:	faed30ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:7581
                            tab_exotic[i].is_enumerable = is_enumerable;
    8003833a:	7706                	ld	a4,96(sp)
    8003833c:	9c3a                	add	s8,s8,a4
    8003833e:	016c2023          	sw	s6,0(s8)
quickjs-nuttx/quickjs.c:7583
                        if (!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) {
    80038342:	000c8463          	beqz	s9,8003834a <JS_GetOwnPropertyNamesInternal+0x28c>
quickjs-nuttx/quickjs.c:7583 (discriminator 1)
    80038346:	000b0363          	beqz	s6,8003834c <JS_GetOwnPropertyNamesInternal+0x28e>
quickjs-nuttx/quickjs.c:7584
                            exotic_keys_count++;
    8003834a:	2d85                	addiw	s11,s11,1
quickjs-nuttx/quickjs.c:7562 (discriminator 2)
                for(i = 0; i < exotic_count; i++) {
    8003834c:	2985                	addiw	s3,s3,1
    8003834e:	b779                	j	800382dc <JS_GetOwnPropertyNamesInternal+0x21e>
quickjs-nuttx/quickjs.c:7609
        atom = prs->atom;
    80038350:	004da603          	lw	a2,4(s11)
quickjs-nuttx/quickjs.c:7610
        if (atom != JS_ATOM_NULL) {
    80038354:	c22d                	beqz	a2,800383b6 <JS_GetOwnPropertyNamesInternal+0x2f8>
quickjs-nuttx/quickjs.c:7612
            kind = JS_AtomGetKind(ctx, atom);
    80038356:	85b2                	mv	a1,a2
    80038358:	8522                	mv	a0,s0
    8003835a:	e0b2                	sd	a2,64(sp)
quickjs-nuttx/quickjs.c:7611
            is_enumerable = ((prs->flags & JS_PROP_ENUMERABLE) != 0);
    8003835c:	000daa83          	lw	s5,0(s11)
quickjs-nuttx/quickjs.c:7612
            kind = JS_AtomGetKind(ctx, atom);
    80038360:	f1ad00ef          	jal	ra,80008a7a <JS_AtomGetKind>
quickjs-nuttx/quickjs.c:7613
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    80038364:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:7611
            is_enumerable = ((prs->flags & JS_PROP_ENUMERABLE) != 0);
    80038366:	01aada9b          	srliw	s5,s5,0x1a
quickjs-nuttx/quickjs.c:7613
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    8003836a:	6606                	ld	a2,64(sp)
    8003836c:	004afa93          	andi	s5,s5,4
quickjs-nuttx/quickjs.c:7612
            kind = JS_AtomGetKind(ctx, atom);
    80038370:	0005071b          	sext.w	a4,a0
quickjs-nuttx/quickjs.c:7613
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    80038374:	c399                	beqz	a5,8003837a <JS_GetOwnPropertyNamesInternal+0x2bc>
quickjs-nuttx/quickjs.c:7613 (discriminator 2)
    80038376:	040a8063          	beqz	s5,800383b6 <JS_GetOwnPropertyNamesInternal+0x2f8>
quickjs-nuttx/quickjs.c:7614 (discriminator 3)
                ((flags >> kind) & 1) != 0) {
    8003837a:	40e4d5bb          	sraw	a1,s1,a4
quickjs-nuttx/quickjs.c:7613 (discriminator 3)
            if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    8003837e:	8985                	andi	a1,a1,1
    80038380:	c99d                	beqz	a1,800383b6 <JS_GetOwnPropertyNamesInternal+0x2f8>
quickjs-nuttx/quickjs.c:7615
                if (JS_AtomIsArrayIndex(ctx, &num_key, atom)) {
    80038382:	08ec                	addi	a1,sp,92
    80038384:	8522                	mv	a0,s0
    80038386:	e4ba                	sd	a4,72(sp)
    80038388:	e0b2                	sd	a2,64(sp)
    8003838a:	e24d00ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
    8003838e:	6606                	ld	a2,64(sp)
    80038390:	6726                	ld	a4,72(sp)
    80038392:	c50d                	beqz	a0,800383bc <JS_GetOwnPropertyNamesInternal+0x2fe>
quickjs-nuttx/quickjs.c:7616
                    j = num_index++;
    80038394:	000b871b          	sext.w	a4,s7
quickjs-nuttx/quickjs.c:7617
                    num_sorted = FALSE;
    80038398:	e802                	sd	zero,16(sp)
quickjs-nuttx/quickjs.c:7616
                    j = num_index++;
    8003839a:	2b85                	addiw	s7,s7,1
quickjs-nuttx/quickjs.c:7623
                tab_atom[j].atom = JS_DupAtom(ctx, atom);
    8003839c:	070e                	slli	a4,a4,0x3
    8003839e:	9752                	add	a4,a4,s4
    800383a0:	85b2                	mv	a1,a2
    800383a2:	8522                	mv	a0,s0
    800383a4:	e0ba                	sd	a4,64(sp)
    800383a6:	d61d20ef          	jal	ra,8000b106 <JS_DupAtom>
    800383aa:	6706                	ld	a4,64(sp)
quickjs-nuttx/quickjs.c:7611
            is_enumerable = ((prs->flags & JS_PROP_ENUMERABLE) != 0);
    800383ac:	01503ab3          	snez	s5,s5
quickjs-nuttx/quickjs.c:7623
                tab_atom[j].atom = JS_DupAtom(ctx, atom);
    800383b0:	c348                	sw	a0,4(a4)
quickjs-nuttx/quickjs.c:7624
                tab_atom[j].is_enumerable = is_enumerable;
    800383b2:	01572023          	sw	s5,0(a4)
quickjs-nuttx/quickjs.c:7608 (discriminator 2)
    for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    800383b6:	2c85                	addiw	s9,s9,1
    800383b8:	0da1                	addi	s11,s11,8
    800383ba:	b3d9                	j	80038180 <JS_GetOwnPropertyNamesInternal+0xc2>
quickjs-nuttx/quickjs.c:7618
                } else if (kind == JS_ATOM_KIND_STRING) {
    800383bc:	e709                	bnez	a4,800383c6 <JS_GetOwnPropertyNamesInternal+0x308>
quickjs-nuttx/quickjs.c:7619
                    j = str_index++;
    800383be:	000c071b          	sext.w	a4,s8
    800383c2:	2c05                	addiw	s8,s8,1
    800383c4:	bfe1                	j	8003839c <JS_GetOwnPropertyNamesInternal+0x2de>
quickjs-nuttx/quickjs.c:7621
                    j = sym_index++;
    800383c6:	000b071b          	sext.w	a4,s6
    800383ca:	2b05                	addiw	s6,s6,1
    800383cc:	bfc1                	j	8003839c <JS_GetOwnPropertyNamesInternal+0x2de>
quickjs-nuttx/quickjs.c:7636
        } else if (p->class_id == JS_CLASS_STRING) {
    800383ce:	006d5683          	lhu	a3,6(s10)
    800383d2:	4715                	li	a4,5
quickjs-nuttx/quickjs.c:7652
            for(i = 0; i < exotic_count; i++) {
    800383d4:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:7656
                if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    800383d6:	0104fa93          	andi	s5,s1,16
quickjs-nuttx/quickjs.c:7636
        } else if (p->class_id == JS_CLASS_STRING) {
    800383da:	06e69c63          	bne	a3,a4,80038452 <JS_GetOwnPropertyNamesInternal+0x394>
quickjs-nuttx/quickjs.c:7637
            if (flags & JS_GPN_STRING_MASK) {
    800383de:	8885                	andi	s1,s1,1
    800383e0:	de0480e3          	beqz	s1,800381c0 <JS_GetOwnPropertyNamesInternal+0x102>
js_string_obj_get_length():
quickjs-nuttx/quickjs.c:7453
    if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING) {
    800383e4:	038d2603          	lw	a2,56(s10)
    800383e8:	56e5                	li	a3,-7
quickjs-nuttx/quickjs.c:7449
    uint32_t len = 0;
    800383ea:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:7453
    if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING) {
    800383ec:	00d61863          	bne	a2,a3,800383fc <JS_GetOwnPropertyNamesInternal+0x33e>
quickjs-nuttx/quickjs.c:7455
        len = p1->len;
    800383f0:	030d3783          	ld	a5,48(s10)
    800383f4:	43dc                	lw	a5,4(a5)
    800383f6:	1786                	slli	a5,a5,0x21
    800383f8:	0217d713          	srli	a4,a5,0x21
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7638
                len = js_string_obj_get_length(ctx, JS_MKPTR(JS_TAG_OBJECT, p));
    800383fc:	0007079b          	sext.w	a5,a4
    80038400:	b345                	j	800381a0 <JS_GetOwnPropertyNamesInternal+0xe2>
quickjs-nuttx/quickjs.c:7641
                    tab_atom[num_index].atom = __JS_AtomFromUInt32(i);
    80038402:	02071493          	slli	s1,a4,0x20
    80038406:	01d4d713          	srli	a4,s1,0x1d
    8003840a:	9752                	add	a4,a4,s4
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8003840c:	8e4d                	or	a2,a2,a1
JS_GetOwnPropertyNamesInternal():
quickjs-nuttx/quickjs.c:7641
                    tab_atom[num_index].atom = __JS_AtomFromUInt32(i);
    8003840e:	c350                	sw	a2,4(a4)
quickjs-nuttx/quickjs.c:7646
                    tab_atom[num_index].is_enumerable = TRUE;
    80038410:	c308                	sw	a0,0(a4)
quickjs-nuttx/quickjs.c:7640
                for(i = 0; i < len; i++) {
    80038412:	2685                	addiw	a3,a3,1
    80038414:	bb51                	j	800381a8 <JS_GetOwnPropertyNamesInternal+0xea>
quickjs-nuttx/quickjs.c:7653
                atom = tab_exotic[i].atom;
    80038416:	003c9793          	slli	a5,s9,0x3
    8003841a:	97ae                	add	a5,a5,a1
    8003841c:	43cc                	lw	a1,4(a5)
quickjs-nuttx/quickjs.c:7655
                kind = JS_AtomGetKind(ctx, atom);
    8003841e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:7654
                is_enumerable = tab_exotic[i].is_enumerable;
    80038420:	0007ad83          	lw	s11,0(a5)
quickjs-nuttx/quickjs.c:7655
                kind = JS_AtomGetKind(ctx, atom);
    80038424:	ec2e                	sd	a1,24(sp)
    80038426:	e54d00ef          	jal	ra,80008a7a <JS_AtomGetKind>
quickjs-nuttx/quickjs.c:7656
                if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    8003842a:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:7655
                kind = JS_AtomGetKind(ctx, atom);
    8003842c:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:7656
                if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    8003842e:	000a8463          	beqz	s5,80038436 <JS_GetOwnPropertyNamesInternal+0x378>
quickjs-nuttx/quickjs.c:7656 (discriminator 2)
    80038432:	020d8863          	beqz	s11,80038462 <JS_GetOwnPropertyNamesInternal+0x3a4>
quickjs-nuttx/quickjs.c:7657 (discriminator 3)
                    ((flags >> kind) & 1) != 0) {
    80038436:	40a4d53b          	sraw	a0,s1,a0
quickjs-nuttx/quickjs.c:7656 (discriminator 3)
                if ((!(flags & JS_GPN_ENUM_ONLY) || is_enumerable) &&
    8003843a:	8905                	andi	a0,a0,1
    8003843c:	c11d                	beqz	a0,80038462 <JS_GetOwnPropertyNamesInternal+0x3a4>
quickjs-nuttx/quickjs.c:7658
                    tab_atom[sym_index].atom = atom;
    8003843e:	020b1713          	slli	a4,s6,0x20
    80038442:	01d75793          	srli	a5,a4,0x1d
    80038446:	97d2                	add	a5,a5,s4
    80038448:	c3cc                	sw	a1,4(a5)
quickjs-nuttx/quickjs.c:7659
                    tab_atom[sym_index].is_enumerable = is_enumerable;
    8003844a:	01b7a023          	sw	s11,0(a5)
quickjs-nuttx/quickjs.c:7660
                    sym_index++;
    8003844e:	2b05                	addiw	s6,s6,1
quickjs-nuttx/quickjs.c:7652 (discriminator 2)
            for(i = 0; i < exotic_count; i++) {
    80038450:	2c85                	addiw	s9,s9,1
quickjs-nuttx/quickjs.c:7652 (discriminator 1)
    80038452:	47e6                	lw	a5,88(sp)
quickjs-nuttx/quickjs.c:7653 (discriminator 1)
                atom = tab_exotic[i].atom;
    80038454:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:7652 (discriminator 1)
            for(i = 0; i < exotic_count; i++) {
    80038456:	fcfce0e3          	bltu	s9,a5,80038416 <JS_GetOwnPropertyNamesInternal+0x358>
quickjs-nuttx/quickjs.c:7665
            js_free(ctx, tab_exotic);
    8003845a:	8522                	mv	a0,s0
    8003845c:	b9bd20ef          	jal	ra,8000aff6 <js_free>
    80038460:	b385                	j	800381c0 <JS_GetOwnPropertyNamesInternal+0x102>
quickjs-nuttx/quickjs.c:7662
                    JS_FreeAtom(ctx, atom);
    80038462:	8522                	mv	a0,s0
    80038464:	ce5d20ef          	jal	ra,8000b148 <JS_FreeAtom>
    80038468:	b7e5                	j	80038450 <JS_GetOwnPropertyNamesInternal+0x392>
quickjs-nuttx/quickjs.c:7670 (discriminator 2)
    assert(str_index == num_keys_count + str_keys_count);
    8003846a:	67a2                	ld	a5,8(sp)
    8003846c:	01878763          	beq	a5,s8,8003847a <JS_GetOwnPropertyNamesInternal+0x3bc>
quickjs-nuttx/quickjs.c:7670 (discriminator 1)
    80038470:	6589                	lui	a1,0x2
    80038472:	4601                	li	a2,0
    80038474:	df658593          	addi	a1,a1,-522 # 1df6 <asinh-0x7fffe20a>
    80038478:	bb91                	j	800381cc <JS_GetOwnPropertyNamesInternal+0x10e>
quickjs-nuttx/quickjs.c:7671 (discriminator 2)
    assert(sym_index == atom_count);
    8003847a:	77c2                	ld	a5,48(sp)
    8003847c:	00fb0763          	beq	s6,a5,8003848a <JS_GetOwnPropertyNamesInternal+0x3cc>
quickjs-nuttx/quickjs.c:7671 (discriminator 1)
    80038480:	6589                	lui	a1,0x2
    80038482:	4601                	li	a2,0
    80038484:	df758593          	addi	a1,a1,-521 # 1df7 <asinh-0x7fffe209>
    80038488:	b391                	j	800381cc <JS_GetOwnPropertyNamesInternal+0x10e>
quickjs-nuttx/quickjs.c:7673 (discriminator 2)
    if (num_keys_count != 0 && !num_sorted) {
    8003848a:	02090063          	beqz	s2,800384aa <JS_GetOwnPropertyNamesInternal+0x3ec>
quickjs-nuttx/quickjs.c:7673 (discriminator 1)
    8003848e:	67c2                	ld	a5,16(sp)
    80038490:	ef89                	bnez	a5,800384aa <JS_GetOwnPropertyNamesInternal+0x3ec>
quickjs-nuttx/quickjs.c:7674
        rqsort(tab_atom, num_keys_count, sizeof(tab_atom[0]), num_keys_cmp,
    80038492:	02091593          	slli	a1,s2,0x20
    80038496:	8722                	mv	a4,s0
    80038498:	fffd0697          	auipc	a3,0xfffd0
    8003849c:	58868693          	addi	a3,a3,1416 # 80008a20 <num_keys_cmp>
    800384a0:	4621                	li	a2,8
    800384a2:	9181                	srli	a1,a1,0x20
    800384a4:	8552                	mv	a0,s4
    800384a6:	0ab190ef          	jal	ra,80051d50 <rqsort>
quickjs-nuttx/quickjs.c:7677
    *ptab = tab_atom;
    800384aa:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:7679
    return 0;
    800384ac:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:7677
    *ptab = tab_atom;
    800384ae:	0147b023          	sd	s4,0(a5)
quickjs-nuttx/quickjs.c:7678
    *plen = atom_count;
    800384b2:	77a2                	ld	a5,40(sp)
    800384b4:	0137a023          	sw	s3,0(a5)
quickjs-nuttx/quickjs.c:7679
    return 0;
    800384b8:	bbad                	j	80038232 <JS_GetOwnPropertyNamesInternal+0x174>

00000000800384ba <JS_GetOwnPropertyNames>:
JS_GetOwnPropertyNames():
quickjs-nuttx/quickjs.c:7685
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT) {
    800384ba:	2701                	sext.w	a4,a4
    800384bc:	587d                	li	a6,-1
    800384be:	01071563          	bne	a4,a6,800384c8 <JS_GetOwnPropertyNames+0xe>
quickjs-nuttx/quickjs.c:7689
    return JS_GetOwnPropertyNamesInternal(ctx, ptab, plen,
    800384c2:	873e                	mv	a4,a5
    800384c4:	bfbff06f          	j	800380be <JS_GetOwnPropertyNamesInternal>
quickjs-nuttx/quickjs.c:7684
{
    800384c8:	1101                	addi	sp,sp,-32
    800384ca:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:7686
        JS_ThrowTypeErrorNotAnObject(ctx);
    800384cc:	f5ee00ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:7691
}
    800384d0:	60e2                	ld	ra,24(sp)
    800384d2:	557d                	li	a0,-1
    800384d4:	6105                	addi	sp,sp,32
    800384d6:	8082                	ret

00000000800384d8 <JS_GetOwnProperty>:
JS_GetOwnProperty():
quickjs-nuttx/quickjs.c:7777
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT) {
    800384d8:	2681                	sext.w	a3,a3
    800384da:	57fd                	li	a5,-1
    800384dc:	00f69563          	bne	a3,a5,800384e6 <JS_GetOwnProperty+0xe>
quickjs-nuttx/quickjs.c:7781
    return JS_GetOwnPropertyInternal(ctx, desc, JS_VALUE_GET_OBJ(obj), prop);
    800384e0:	86ba                	mv	a3,a4
    800384e2:	c8fde06f          	j	80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:7776
{
    800384e6:	1101                	addi	sp,sp,-32
    800384e8:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:7778
        JS_ThrowTypeErrorNotAnObject(ctx);
    800384ea:	f40e00ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:7782
}
    800384ee:	60e2                	ld	ra,24(sp)
    800384f0:	557d                	li	a0,-1
    800384f2:	6105                	addi	sp,sp,32
    800384f4:	8082                	ret

00000000800384f6 <JS_HasProperty>:
JS_HasProperty():
quickjs-nuttx/quickjs.c:7814
{
    800384f6:	7159                	addi	sp,sp,-112
    800384f8:	eca6                	sd	s1,88(sp)
    800384fa:	e432                	sd	a2,8(sp)
    800384fc:	f486                	sd	ra,104(sp)
    800384fe:	f0a2                	sd	s0,96(sp)
    80038500:	e8ca                	sd	s2,80(sp)
    80038502:	e4ce                	sd	s3,72(sp)
    80038504:	e0d2                	sd	s4,64(sp)
    80038506:	fc56                	sd	s5,56(sp)
    80038508:	f85a                	sd	s6,48(sp)
    8003850a:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:7819
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT))
    8003850c:	2601                	sext.w	a2,a2
    8003850e:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:7820
        return FALSE;
    80038510:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:7819
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT))
    80038512:	04f61b63          	bne	a2,a5,80038568 <JS_HasProperty+0x72>
    80038516:	892a                	mv	s2,a0
    80038518:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:7821
    p = JS_VALUE_GET_OBJ(obj);
    8003851a:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:7824
            const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    8003851c:	02800a93          	li	s5,40
quickjs-nuttx/quickjs.c:7834
        JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, p));
    80038520:	5a7d                	li	s4,-1
quickjs-nuttx/quickjs.c:7839
        if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    80038522:	4b29                	li	s6,10
quickjs-nuttx/quickjs.c:7823
        if (p->is_exotic) {
    80038524:	00544783          	lbu	a5,5(s0)
    80038528:	8b91                	andi	a5,a5,4
    8003852a:	cbb1                	beqz	a5,8003857e <JS_HasProperty+0x88>
quickjs-nuttx/quickjs.c:7824
            const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    8003852c:	00645703          	lhu	a4,6(s0)
    80038530:	01893783          	ld	a5,24(s2)
    80038534:	03570733          	mul	a4,a4,s5
    80038538:	7bbc                	ld	a5,112(a5)
    8003853a:	97ba                	add	a5,a5,a4
    8003853c:	739c                	ld	a5,32(a5)
quickjs-nuttx/quickjs.c:7825
            if (em && em->has_property) {
    8003853e:	c3a1                	beqz	a5,8003857e <JS_HasProperty+0x88>
quickjs-nuttx/quickjs.c:7825 (discriminator 1)
    80038540:	7398                	ld	a4,32(a5)
    80038542:	cf15                	beqz	a4,8003857e <JS_HasProperty+0x88>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80038544:	4018                	lw	a4,0(s0)
JS_HasProperty():
quickjs-nuttx/quickjs.c:7828
                ret = em->has_property(ctx, obj1, prop);
    80038546:	85a2                	mv	a1,s0
    80038548:	567d                	li	a2,-1
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8003854a:	2705                	addiw	a4,a4,1
    8003854c:	c018                	sw	a4,0(s0)
JS_HasProperty():
quickjs-nuttx/quickjs.c:7828
    8003854e:	739c                	ld	a5,32(a5)
    80038550:	577d                	li	a4,-1
    80038552:	86ce                	mv	a3,s3
    80038554:	854a                	mv	a0,s2
    80038556:	f022                	sd	s0,32(sp)
    80038558:	f43a                	sd	a4,40(sp)
    8003855a:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:7829
                JS_FreeValue(ctx, obj1);
    8003855c:	7582                	ld	a1,32(sp)
    8003855e:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:7828
                ret = em->has_property(ctx, obj1, prop);
    80038560:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:7829
                JS_FreeValue(ctx, obj1);
    80038562:	854a                	mv	a0,s2
    80038564:	a3ad30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7853 (discriminator 3)
}
    80038568:	70a6                	ld	ra,104(sp)
    8003856a:	7406                	ld	s0,96(sp)
    8003856c:	6946                	ld	s2,80(sp)
    8003856e:	69a6                	ld	s3,72(sp)
    80038570:	6a06                	ld	s4,64(sp)
    80038572:	7ae2                	ld	s5,56(sp)
    80038574:	7b42                	ld	s6,48(sp)
    80038576:	8526                	mv	a0,s1
    80038578:	64e6                	ld	s1,88(sp)
    8003857a:	6165                	addi	sp,sp,112
    8003857c:	8082                	ret
quickjs-nuttx/quickjs.c:7834
        JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, p));
    8003857e:	8522                	mv	a0,s0
    80038580:	55fd                	li	a1,-1
    80038582:	e822                	sd	s0,16(sp)
    80038584:	ec52                	sd	s4,24(sp)
    80038586:	e95d10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:7835
        ret = JS_GetOwnPropertyInternal(ctx, NULL, p, prop);
    8003858a:	8622                	mv	a2,s0
    8003858c:	4581                	li	a1,0
    8003858e:	86ce                	mv	a3,s3
    80038590:	854a                	mv	a0,s2
    80038592:	bdfde0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
    80038596:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:7836
        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, p));
    80038598:	85a2                	mv	a1,s0
    8003859a:	567d                	li	a2,-1
    8003859c:	854a                	mv	a0,s2
    8003859e:	f022                	sd	s0,32(sp)
    800385a0:	f452                	sd	s4,40(sp)
    800385a2:	9fcd30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7837
        if (ret != 0)
    800385a6:	f0e9                	bnez	s1,80038568 <JS_HasProperty+0x72>
quickjs-nuttx/quickjs.c:7839
        if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    800385a8:	00645783          	lhu	a5,6(s0)
    800385ac:	37ad                	addiw	a5,a5,-21
    800385ae:	17c2                	slli	a5,a5,0x30
    800385b0:	93c1                	srli	a5,a5,0x30
    800385b2:	00fb6a63          	bltu	s6,a5,800385c6 <JS_HasProperty+0xd0>
quickjs-nuttx/quickjs.c:7841
            ret = JS_AtomIsNumericIndex(ctx, prop);
    800385b6:	85ce                	mv	a1,s3
    800385b8:	854a                	mv	a0,s2
    800385ba:	cd3ef0ef          	jal	ra,8002828c <JS_AtomIsNumericIndex>
quickjs-nuttx/quickjs.c:7842
            if (ret != 0) {
    800385be:	c501                	beqz	a0,800385c6 <JS_HasProperty+0xd0>
quickjs-nuttx/quickjs.c:7843
                if (ret < 0)
    800385c0:	41f5549b          	sraiw	s1,a0,0x1f
    800385c4:	b755                	j	80038568 <JS_HasProperty+0x72>
quickjs-nuttx/quickjs.c:7848
        p = p->shape->proto;
    800385c6:	6c1c                	ld	a5,24(s0)
    800385c8:	7f80                	ld	s0,56(a5)
quickjs-nuttx/quickjs.c:7849
        if (!p)
    800385ca:	fc29                	bnez	s0,80038524 <JS_HasProperty+0x2e>
    800385cc:	bf71                	j	80038568 <JS_HasProperty+0x72>

00000000800385ce <js_reflect_has>:
js_reflect_has():
quickjs-nuttx/quickjs.c:45612
{
    800385ce:	7159                	addi	sp,sp,-112
    800385d0:	f486                	sd	ra,104(sp)
    800385d2:	f0a2                	sd	s0,96(sp)
    800385d4:	eca6                	sd	s1,88(sp)
    800385d6:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs.c:45617
    obj = argv[0];
    800385d8:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:45618
    prop = argv[1];
    800385da:	6b0c                	ld	a1,16(a4)
    800385dc:	6f10                	ld	a2,24(a4)
quickjs-nuttx/quickjs.c:45617
    obj = argv[0];
    800385de:	e83e                	sd	a5,16(sp)
    800385e0:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:45619
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    800385e2:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:45617
    obj = argv[0];
    800385e4:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:45619
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    800385e6:	2781                	sext.w	a5,a5
    800385e8:	00e78963          	beq	a5,a4,800385fa <js_reflect_has+0x2c>
quickjs-nuttx/quickjs.c:45630
}
    800385ec:	7406                	ld	s0,96(sp)
    800385ee:	70a6                	ld	ra,104(sp)
    800385f0:	64e6                	ld	s1,88(sp)
    800385f2:	6946                	ld	s2,80(sp)
    800385f4:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:45620
        return JS_ThrowTypeErrorNotAnObject(ctx);
    800385f6:	e34e006f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    800385fa:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:45621
    atom = JS_ValueToAtom(ctx, prop);
    800385fc:	a16f00ef          	jal	ra,80028812 <JS_ValueToAtom>
    80038600:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:45622
    if (unlikely(atom == JS_ATOM_NULL))
    80038604:	ec81                	bnez	s1,8003861c <js_reflect_has+0x4e>
quickjs-nuttx/quickjs.c:45623
        return JS_EXCEPTION;
    80038606:	f802                	sd	zero,48(sp)
    80038608:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45630
}
    8003860a:	70a6                	ld	ra,104(sp)
    8003860c:	7406                	ld	s0,96(sp)
    8003860e:	fc3e                	sd	a5,56(sp)
    80038610:	7542                	ld	a0,48(sp)
    80038612:	75e2                	ld	a1,56(sp)
    80038614:	64e6                	ld	s1,88(sp)
    80038616:	6946                	ld	s2,80(sp)
    80038618:	6165                	addi	sp,sp,112
    8003861a:	8082                	ret
quickjs-nuttx/quickjs.c:45624
    ret = JS_HasProperty(ctx, obj, atom);
    8003861c:	65c2                	ld	a1,16(sp)
    8003861e:	6662                	ld	a2,24(sp)
    80038620:	86a6                	mv	a3,s1
    80038622:	854a                	mv	a0,s2
    80038624:	ed3ff0ef          	jal	ra,800384f6 <JS_HasProperty>
    80038628:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:45625
    JS_FreeAtom(ctx, atom);
    8003862a:	85a6                	mv	a1,s1
    8003862c:	854a                	mv	a0,s2
    8003862e:	b1bd20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:45626
    if (ret < 0)
    80038632:	fc044ae3          	bltz	s0,80038606 <js_reflect_has+0x38>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80038636:	00803433          	snez	s0,s0
    8003863a:	c282                	sw	zero,68(sp)
    8003863c:	c0a2                	sw	s0,64(sp)
    8003863e:	6786                	ld	a5,64(sp)
    80038640:	f83e                	sd	a5,48(sp)
    80038642:	4785                	li	a5,1
    80038644:	b7d9                	j	8003860a <js_reflect_has+0x3c>

0000000080038646 <js_object_isSealed>:
js_object_isSealed():
quickjs-nuttx/quickjs.c:37758
{
    80038646:	7171                	addi	sp,sp,-176
    80038648:	e54e                	sd	s3,136(sp)
    8003864a:	f506                	sd	ra,168(sp)
    8003864c:	f122                	sd	s0,160(sp)
    8003864e:	ed26                	sd	s1,152(sp)
    80038650:	e94a                	sd	s2,144(sp)
    80038652:	e152                	sd	s4,128(sp)
quickjs-nuttx/quickjs.c:37759
    JSValueConst obj = argv[0];
    80038654:	00073a03          	ld	s4,0(a4)
    80038658:	6718                	ld	a4,8(a4)
quickjs-nuttx/quickjs.c:37758
{
    8003865a:	89be                	mv	s3,a5
    8003865c:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:37759
    JSValueConst obj = argv[0];
    8003865e:	f83a                	sd	a4,48(sp)
quickjs-nuttx/quickjs.c:37758
{
    80038660:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:37759
    JSValueConst obj = argv[0];
    80038662:	f452                	sd	s4,40(sp)
quickjs-nuttx/quickjs.c:37765
    if (!JS_IsObject(obj))
    80038664:	2701                	sext.w	a4,a4
    80038666:	57fd                	li	a5,-1
    80038668:	00f70f63          	beq	a4,a5,80038686 <js_object_isSealed+0x40>
quickjs-nuttx/quickjs.c:37766
        return JS_TRUE;
    8003866c:	4785                	li	a5,1
    8003866e:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:37800
}
    80038670:	70aa                	ld	ra,168(sp)
    80038672:	740a                	ld	s0,160(sp)
    80038674:	e0be                	sd	a5,64(sp)
    80038676:	7562                	ld	a0,56(sp)
    80038678:	6586                	ld	a1,64(sp)
    8003867a:	64ea                	ld	s1,152(sp)
    8003867c:	694a                	ld	s2,144(sp)
    8003867e:	69aa                	ld	s3,136(sp)
    80038680:	6a0a                	ld	s4,128(sp)
    80038682:	614d                	addi	sp,sp,176
    80038684:	8082                	ret
quickjs-nuttx/quickjs.c:37770
    if (JS_GetOwnPropertyNamesInternal(ctx, &props, &len, p, flags))
    80038686:	470d                	li	a4,3
    80038688:	86d2                	mv	a3,s4
    8003868a:	0870                	addi	a2,sp,28
    8003868c:	100c                	addi	a1,sp,32
    8003868e:	84aa                	mv	s1,a0
    80038690:	a2fff0ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    80038694:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37773
    for(i = 0; i < len; i++) {
    80038696:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:37770
    if (JS_GetOwnPropertyNamesInternal(ctx, &props, &len, p, flags))
    80038698:	c531                	beqz	a0,800386e4 <js_object_isSealed+0x9e>
quickjs-nuttx/quickjs.c:37799
    return JS_EXCEPTION;
    8003869a:	fc02                	sd	zero,56(sp)
    8003869c:	4799                	li	a5,6
    8003869e:	bfc9                	j	80038670 <js_object_isSealed+0x2a>
quickjs-nuttx/quickjs.c:37775
        JSAtom prop = props[i].atom;
    800386a0:	02091713          	slli	a4,s2,0x20
    800386a4:	01d75793          	srli	a5,a4,0x1d
    800386a8:	7702                	ld	a4,32(sp)
quickjs-nuttx/quickjs.c:37777
        res = JS_GetOwnPropertyInternal(ctx, &desc, p, prop);
    800386aa:	8652                	mv	a2,s4
    800386ac:	00ac                	addi	a1,sp,72
quickjs-nuttx/quickjs.c:37775
        JSAtom prop = props[i].atom;
    800386ae:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:37777
        res = JS_GetOwnPropertyInternal(ctx, &desc, p, prop);
    800386b0:	43d4                	lw	a3,4(a5)
    800386b2:	8526                	mv	a0,s1
    800386b4:	abdde0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:37778
        if (res < 0)
    800386b8:	00055863          	bgez	a0,800386c8 <js_object_isSealed+0x82>
quickjs-nuttx/quickjs.c:37798
    js_free_prop_enum(ctx, props, len);
    800386bc:	4672                	lw	a2,28(sp)
    800386be:	7582                	ld	a1,32(sp)
    800386c0:	8526                	mv	a0,s1
    800386c2:	a97d20ef          	jal	ra,8000b158 <js_free_prop_enum>
    800386c6:	bfd1                	j	8003869a <js_object_isSealed+0x54>
quickjs-nuttx/quickjs.c:37780
        if (res) {
    800386c8:	cd09                	beqz	a0,800386e2 <js_object_isSealed+0x9c>
quickjs-nuttx/quickjs.c:37781
            js_free_desc(ctx, &desc);
    800386ca:	00ac                	addi	a1,sp,72
    800386cc:	8526                	mv	a0,s1
    800386ce:	c16d30ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:37782
            if ((desc.flags & JS_PROP_CONFIGURABLE)
    800386d2:	4726                	lw	a4,72(sp)
    800386d4:	00177793          	andi	a5,a4,1
    800386d8:	e39d                	bnez	a5,800386fe <js_object_isSealed+0xb8>
quickjs-nuttx/quickjs.c:37783
            ||  (is_frozen && (desc.flags & JS_PROP_WRITABLE))) {
    800386da:	00098463          	beqz	s3,800386e2 <js_object_isSealed+0x9c>
quickjs-nuttx/quickjs.c:37783 (discriminator 1)
    800386de:	8b09                	andi	a4,a4,2
    800386e0:	ef19                	bnez	a4,800386fe <js_object_isSealed+0xb8>
quickjs-nuttx/quickjs.c:37773
    for(i = 0; i < len; i++) {
    800386e2:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:37773 (discriminator 1)
    800386e4:	47f2                	lw	a5,28(sp)
    800386e6:	faf96de3          	bltu	s2,a5,800386a0 <js_object_isSealed+0x5a>
quickjs-nuttx/quickjs.c:37789
    res = JS_IsExtensible(ctx, obj);
    800386ea:	75a2                	ld	a1,40(sp)
    800386ec:	7642                	ld	a2,48(sp)
    800386ee:	8526                	mv	a0,s1
    800386f0:	adee10ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:37790
    if (res < 0)
    800386f4:	fa0543e3          	bltz	a0,8003869a <js_object_isSealed+0x54>
quickjs-nuttx/quickjs.c:37792
    res ^= 1;
    800386f8:	00154413          	xori	s0,a0,1
    800386fc:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:37794
    js_free_prop_enum(ctx, props, len);
    800386fe:	4672                	lw	a2,28(sp)
    80038700:	7582                	ld	a1,32(sp)
    80038702:	8526                	mv	a0,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038704:	00803433          	snez	s0,s0
js_object_isSealed():
quickjs-nuttx/quickjs.c:37794
    80038708:	a51d20ef          	jal	ra,8000b158 <js_free_prop_enum>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8003870c:	c682                	sw	zero,76(sp)
    8003870e:	c4a2                	sw	s0,72(sp)
    80038710:	67a6                	ld	a5,72(sp)
    80038712:	fc3e                	sd	a5,56(sp)
    80038714:	4785                	li	a5,1
    80038716:	bfa9                	j	80038670 <js_object_isSealed+0x2a>

0000000080038718 <js_object___lookupGetter__>:
js_object___lookupGetter__():
quickjs-nuttx/quickjs.c:38106
{
    80038718:	7155                	addi	sp,sp,-208
    8003871a:	e1a2                	sd	s0,192(sp)
    8003871c:	fd26                	sd	s1,184(sp)
    8003871e:	f94a                	sd	s2,176(sp)
    80038720:	f54e                	sd	s3,168(sp)
    80038722:	ed56                	sd	s5,152(sp)
    80038724:	843a                	mv	s0,a4
    80038726:	8abe                	mv	s5,a5
    80038728:	e586                	sd	ra,200(sp)
    8003872a:	f152                	sd	s4,160(sp)
    8003872c:	e95a                	sd	s6,144(sp)
    8003872e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:38107
    JSValue obj, res = JS_EXCEPTION;
    80038730:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:38112
    obj = JS_ToObject(ctx, this_val);
    80038732:	989f70ef          	jal	ra,800300ba <JS_ToObject>
quickjs-nuttx/quickjs.c:38113
    if (JS_IsException(obj))
    80038736:	0005871b          	sext.w	a4,a1
    8003873a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38112
    obj = JS_ToObject(ctx, this_val);
    8003873c:	89aa                	mv	s3,a0
    8003873e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:38113
    if (JS_IsException(obj))
    80038740:	0af70b63          	beq	a4,a5,800387f6 <js_object___lookupGetter__+0xde>
quickjs-nuttx/quickjs.c:38115
    prop = JS_ValueToAtom(ctx, argv[0]);
    80038744:	600c                	ld	a1,0(s0)
    80038746:	6410                	ld	a2,8(s0)
    80038748:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:38107
    JSValue obj, res = JS_EXCEPTION;
    8003874a:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:38115
    prop = JS_ValueToAtom(ctx, argv[0]);
    8003874c:	8c6f00ef          	jal	ra,80028812 <JS_ValueToAtom>
    80038750:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:38116
    if (unlikely(prop == JS_ATOM_NULL))
    80038754:	020a0f63          	beqz	s4,80038792 <js_object___lookupGetter__+0x7a>
quickjs-nuttx/quickjs.c:38134
        if (JS_IsNull(obj)) {
    80038758:	4b09                	li	s6,2
quickjs-nuttx/quickjs.c:38120
        has_prop = JS_GetOwnPropertyInternal(ctx, &desc, JS_VALUE_GET_OBJ(obj), prop);
    8003875a:	86d2                	mv	a3,s4
    8003875c:	864e                	mv	a2,s3
    8003875e:	08ac                	addi	a1,sp,88
    80038760:	8526                	mv	a0,s1
    80038762:	a0fde0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:38121
        if (has_prop < 0)
    80038766:	08054663          	bltz	a0,800387f2 <js_object___lookupGetter__+0xda>
quickjs-nuttx/quickjs.c:38123
        if (has_prop) {
    8003876a:	c125                	beqz	a0,800387ca <js_object___lookupGetter__+0xb2>
quickjs-nuttx/quickjs.c:38124
            if (desc.flags & JS_PROP_GETSET)
    8003876c:	47e6                	lw	a5,88(sp)
    8003876e:	8bc1                	andi	a5,a5,16
    80038770:	cbb1                	beqz	a5,800387c4 <js_object___lookupGetter__+0xac>
quickjs-nuttx/quickjs.c:38125
                res = JS_DupValue(ctx, setter ? desc.setter : desc.getter);
    80038772:	040a8563          	beqz	s5,800387bc <js_object___lookupGetter__+0xa4>
quickjs-nuttx/quickjs.c:38125 (discriminator 1)
    80038776:	678a                	ld	a5,128(sp)
    80038778:	fc3e                	sd	a5,56(sp)
    8003877a:	67aa                	ld	a5,136(sp)
quickjs-nuttx/quickjs.c:38125 (discriminator 2)
    8003877c:	e0be                	sd	a5,64(sp)
    8003877e:	7562                	ld	a0,56(sp)
    80038780:	6586                	ld	a1,64(sp)
    80038782:	c99d10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80038786:	f42a                	sd	a0,40(sp)
    80038788:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:38128
            js_free_desc(ctx, &desc);
    8003878a:	08ac                	addi	a1,sp,88
    8003878c:	8526                	mv	a0,s1
    8003878e:	b56d30ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:38144
    JS_FreeAtom(ctx, prop);
    80038792:	85d2                	mv	a1,s4
    80038794:	8526                	mv	a0,s1
    80038796:	9b3d20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:38145
    JS_FreeValue(ctx, obj);
    8003879a:	85ce                	mv	a1,s3
    8003879c:	8526                	mv	a0,s1
    8003879e:	864a                	mv	a2,s2
    800387a0:	fffd20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38147
}
    800387a4:	60ae                	ld	ra,200(sp)
    800387a6:	85a2                	mv	a1,s0
    800387a8:	640e                	ld	s0,192(sp)
    800387aa:	7522                	ld	a0,40(sp)
    800387ac:	74ea                	ld	s1,184(sp)
    800387ae:	794a                	ld	s2,176(sp)
    800387b0:	79aa                	ld	s3,168(sp)
    800387b2:	7a0a                	ld	s4,160(sp)
    800387b4:	6aea                	ld	s5,152(sp)
    800387b6:	6b4a                	ld	s6,144(sp)
    800387b8:	6169                	addi	sp,sp,208
    800387ba:	8082                	ret
quickjs-nuttx/quickjs.c:38125 (discriminator 2)
                res = JS_DupValue(ctx, setter ? desc.setter : desc.getter);
    800387bc:	77c6                	ld	a5,112(sp)
    800387be:	fc3e                	sd	a5,56(sp)
    800387c0:	77e6                	ld	a5,120(sp)
    800387c2:	bf6d                	j	8003877c <js_object___lookupGetter__+0x64>
quickjs-nuttx/quickjs.c:38127
                res = JS_UNDEFINED;
    800387c4:	f402                	sd	zero,40(sp)
    800387c6:	440d                	li	s0,3
    800387c8:	b7c9                	j	8003878a <js_object___lookupGetter__+0x72>
quickjs-nuttx/quickjs.c:38131
        obj = JS_GetPrototypeFree(ctx, obj);
    800387ca:	85ce                	mv	a1,s3
    800387cc:	864a                	mv	a2,s2
    800387ce:	8526                	mv	a0,s1
    800387d0:	c3ee10ef          	jal	ra,80019c0e <JS_GetPrototypeFree>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800387d4:	0005879b          	sext.w	a5,a1
js_object___lookupGetter__():
quickjs-nuttx/quickjs.c:38131
    800387d8:	89aa                	mv	s3,a0
    800387da:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:38132
        if (JS_IsException(obj))
    800387dc:	00878b63          	beq	a5,s0,800387f2 <js_object___lookupGetter__+0xda>
quickjs-nuttx/quickjs.c:38134
        if (JS_IsNull(obj)) {
    800387e0:	01679563          	bne	a5,s6,800387ea <js_object___lookupGetter__+0xd2>
quickjs-nuttx/quickjs.c:38135
            res = JS_UNDEFINED;
    800387e4:	f402                	sd	zero,40(sp)
    800387e6:	440d                	li	s0,3
    800387e8:	b76d                	j	80038792 <js_object___lookupGetter__+0x7a>
quickjs-nuttx/quickjs.c:38139
        if (js_poll_interrupts(ctx))
    800387ea:	8526                	mv	a0,s1
    800387ec:	ec6e10ef          	jal	ra,80019eb2 <js_poll_interrupts>
    800387f0:	d52d                	beqz	a0,8003875a <js_object___lookupGetter__+0x42>
quickjs-nuttx/quickjs.c:38107
    JSValue obj, res = JS_EXCEPTION;
    800387f2:	4419                	li	s0,6
    800387f4:	bf79                	j	80038792 <js_object___lookupGetter__+0x7a>
    800387f6:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:38108
    JSAtom prop = JS_ATOM_NULL;
    800387f8:	4a01                	li	s4,0
    800387fa:	bf61                	j	80038792 <js_object___lookupGetter__+0x7a>

00000000800387fc <js_object_propertyIsEnumerable>:
js_object_propertyIsEnumerable():
quickjs-nuttx/quickjs.c:38075
{
    800387fc:	7131                	addi	sp,sp,-192
    800387fe:	f526                	sd	s1,168(sp)
    80038800:	f14a                	sd	s2,160(sp)
    80038802:	fd06                	sd	ra,184(sp)
    80038804:	f922                	sd	s0,176(sp)
    80038806:	ed4e                	sd	s3,152(sp)
    80038808:	84aa                	mv	s1,a0
    8003880a:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:38076
    JSValue obj, res = JS_EXCEPTION;
    8003880c:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:38081
    obj = JS_ToObject(ctx, this_val);
    8003880e:	8adf70ef          	jal	ra,800300ba <JS_ToObject>
    80038812:	f02e                	sd	a1,32(sp)
    80038814:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:38082
    if (JS_IsException(obj))
    80038816:	2581                	sext.w	a1,a1
    80038818:	4799                	li	a5,6
    8003881a:	02f59863          	bne	a1,a5,8003884a <js_object_propertyIsEnumerable+0x4e>
quickjs-nuttx/quickjs.c:38076
    JSValue obj, res = JS_EXCEPTION;
    8003881e:	4999                	li	s3,6
    80038820:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:38077
    JSAtom prop = JS_ATOM_NULL;
    80038822:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:38099
    JS_FreeAtom(ctx, prop);
    80038824:	85ca                	mv	a1,s2
    80038826:	8526                	mv	a0,s1
    80038828:	921d20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:38100
    JS_FreeValue(ctx, obj);
    8003882c:	65e2                	ld	a1,24(sp)
    8003882e:	7602                	ld	a2,32(sp)
    80038830:	8526                	mv	a0,s1
    80038832:	f6dd20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38102
}
    80038836:	70ea                	ld	ra,184(sp)
quickjs-nuttx/quickjs.c:38101
    return res;
    80038838:	d422                	sw	s0,40(sp)
quickjs-nuttx/quickjs.c:38102
}
    8003883a:	744a                	ld	s0,176(sp)
    8003883c:	7522                	ld	a0,40(sp)
    8003883e:	74aa                	ld	s1,168(sp)
    80038840:	790a                	ld	s2,160(sp)
    80038842:	85ce                	mv	a1,s3
    80038844:	69ea                	ld	s3,152(sp)
    80038846:	6129                	addi	sp,sp,192
    80038848:	8082                	ret
quickjs-nuttx/quickjs.c:38084
    prop = JS_ValueToAtom(ctx, argv[0]);
    8003884a:	00093583          	ld	a1,0(s2)
    8003884e:	00893603          	ld	a2,8(s2)
    80038852:	842a                	mv	s0,a0
    80038854:	8526                	mv	a0,s1
    80038856:	fbdef0ef          	jal	ra,80028812 <JS_ValueToAtom>
    8003885a:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:38085
    if (unlikely(prop == JS_ATOM_NULL))
    8003885e:	fc0900e3          	beqz	s2,8003881e <js_object_propertyIsEnumerable+0x22>
quickjs-nuttx/quickjs.c:38088
    has_prop = JS_GetOwnPropertyInternal(ctx, &desc, JS_VALUE_GET_OBJ(obj), prop);
    80038862:	8622                	mv	a2,s0
    80038864:	86ca                	mv	a3,s2
    80038866:	08ac                	addi	a1,sp,88
    80038868:	8526                	mv	a0,s1
    8003886a:	907de0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
    8003886e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:38089
    if (has_prop < 0)
    80038870:	02054363          	bltz	a0,80038896 <js_object_propertyIsEnumerable+0x9a>
quickjs-nuttx/quickjs.c:38091
    if (has_prop) {
    80038874:	cd19                	beqz	a0,80038892 <js_object_propertyIsEnumerable+0x96>
quickjs-nuttx/quickjs.c:38092
        res = JS_NewBool(ctx, (desc.flags & JS_PROP_ENUMERABLE) != 0);
    80038876:	4466                	lw	s0,88(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80038878:	c682                	sw	zero,76(sp)
js_object_propertyIsEnumerable():
quickjs-nuttx/quickjs.c:38093
        js_free_desc(ctx, &desc);
    8003887a:	08ac                	addi	a1,sp,88
quickjs-nuttx/quickjs.c:38092
        res = JS_NewBool(ctx, (desc.flags & JS_PROP_ENUMERABLE) != 0);
    8003887c:	4024541b          	sraiw	s0,s0,0x2
    80038880:	8805                	andi	s0,s0,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038882:	c4a2                	sw	s0,72(sp)
    80038884:	67a6                	ld	a5,72(sp)
js_object_propertyIsEnumerable():
quickjs-nuttx/quickjs.c:38093
        js_free_desc(ctx, &desc);
    80038886:	8526                	mv	a0,s1
    80038888:	f43e                	sd	a5,40(sp)
    8003888a:	a5ad30ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:38095
        res = JS_FALSE;
    8003888e:	4985                	li	s3,1
    80038890:	bf51                	j	80038824 <js_object_propertyIsEnumerable+0x28>
    80038892:	d602                	sw	zero,44(sp)
    80038894:	bfed                	j	8003888e <js_object_propertyIsEnumerable+0x92>
quickjs-nuttx/quickjs.c:38076
    JSValue obj, res = JS_EXCEPTION;
    80038896:	4999                	li	s3,6
    80038898:	4401                	li	s0,0
    8003889a:	b769                	j	80038824 <js_object_propertyIsEnumerable+0x28>

000000008003889c <js_object_hasOwnProperty>:
js_object_hasOwnProperty():
quickjs-nuttx/quickjs.c:37560
{
    8003889c:	7159                	addi	sp,sp,-112
    8003889e:	f0a2                	sd	s0,96(sp)
    800388a0:	e8ca                	sd	s2,80(sp)
    800388a2:	f486                	sd	ra,104(sp)
    800388a4:	eca6                	sd	s1,88(sp)
    800388a6:	e82e                	sd	a1,16(sp)
    800388a8:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:37566
    atom = JS_ValueToAtom(ctx, argv[0]); /* must be done first */
    800388aa:	630c                	ld	a1,0(a4)
    800388ac:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37560
{
    800388ae:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37566
    atom = JS_ValueToAtom(ctx, argv[0]); /* must be done first */
    800388b0:	f63ef0ef          	jal	ra,80028812 <JS_ValueToAtom>
    800388b4:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:37567
    if (unlikely(atom == JS_ATOM_NULL))
    800388b8:	00091663          	bnez	s2,800388c4 <js_object_hasOwnProperty+0x28>
quickjs-nuttx/quickjs.c:37568
        return JS_EXCEPTION;
    800388bc:	f802                	sd	zero,48(sp)
    800388be:	4799                	li	a5,6
    800388c0:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:37581
        return JS_NewBool(ctx, ret);
    800388c2:	a03d                	j	800388f0 <js_object_hasOwnProperty+0x54>
quickjs-nuttx/quickjs.c:37569
    obj = JS_ToObject(ctx, this_val);
    800388c4:	6662                	ld	a2,24(sp)
    800388c6:	65c2                	ld	a1,16(sp)
    800388c8:	8522                	mv	a0,s0
    800388ca:	ff0f70ef          	jal	ra,800300ba <JS_ToObject>
    800388ce:	f02a                	sd	a0,32(sp)
    800388d0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:37570
    if (JS_IsException(obj)) {
    800388d2:	0005871b          	sext.w	a4,a1
    800388d6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37569
    obj = JS_ToObject(ctx, this_val);
    800388d8:	862a                	mv	a2,a0
    800388da:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:37570
    if (JS_IsException(obj)) {
    800388dc:	02f71263          	bne	a4,a5,80038900 <js_object_hasOwnProperty+0x64>
    800388e0:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:37571
        JS_FreeAtom(ctx, atom);
    800388e2:	85ca                	mv	a1,s2
    800388e4:	8522                	mv	a0,s0
    800388e6:	863d20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:37572
        return obj;
    800388ea:	6622                	ld	a2,8(sp)
    800388ec:	fc26                	sd	s1,56(sp)
    800388ee:	f832                	sd	a2,48(sp)
quickjs-nuttx/quickjs.c:37582 (discriminator 1)
}
    800388f0:	70a6                	ld	ra,104(sp)
    800388f2:	7406                	ld	s0,96(sp)
    800388f4:	7542                	ld	a0,48(sp)
    800388f6:	75e2                	ld	a1,56(sp)
    800388f8:	64e6                	ld	s1,88(sp)
    800388fa:	6946                	ld	s2,80(sp)
    800388fc:	6165                	addi	sp,sp,112
    800388fe:	8082                	ret
quickjs-nuttx/quickjs.c:37575
    ret = JS_GetOwnPropertyInternal(ctx, NULL, p, atom);
    80038900:	86ca                	mv	a3,s2
    80038902:	4581                	li	a1,0
    80038904:	8522                	mv	a0,s0
    80038906:	86bde0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
    8003890a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:37576
    JS_FreeAtom(ctx, atom);
    8003890c:	85ca                	mv	a1,s2
    8003890e:	8522                	mv	a0,s0
    80038910:	839d20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:37577
    JS_FreeValue(ctx, obj);
    80038914:	7582                	ld	a1,32(sp)
    80038916:	7622                	ld	a2,40(sp)
    80038918:	8522                	mv	a0,s0
    8003891a:	e85d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37578
    if (ret < 0)
    8003891e:	f804cfe3          	bltz	s1,800388bc <js_object_hasOwnProperty+0x20>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038922:	009034b3          	snez	s1,s1
    80038926:	c282                	sw	zero,68(sp)
    80038928:	c0a6                	sw	s1,64(sp)
    8003892a:	6786                	ld	a5,64(sp)
    8003892c:	f83e                	sd	a5,48(sp)
    8003892e:	4785                	li	a5,1
    80038930:	bf41                	j	800388c0 <js_object_hasOwnProperty+0x24>

0000000080038932 <js_object_hasOwn>:
js_object_hasOwn():
quickjs-nuttx/quickjs.c:37592
    obj = JS_ToObject(ctx, argv[0]);
    80038932:	630c                	ld	a1,0(a4)
    80038934:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37586
{
    80038936:	7159                	addi	sp,sp,-112
    80038938:	f0a2                	sd	s0,96(sp)
    8003893a:	eca6                	sd	s1,88(sp)
    8003893c:	e4ce                	sd	s3,72(sp)
    8003893e:	e0d2                	sd	s4,64(sp)
    80038940:	f486                	sd	ra,104(sp)
    80038942:	e8ca                	sd	s2,80(sp)
    80038944:	842a                	mv	s0,a0
    80038946:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:37592
    obj = JS_ToObject(ctx, argv[0]);
    80038948:	f72f70ef          	jal	ra,800300ba <JS_ToObject>
    8003894c:	e82a                	sd	a0,16(sp)
    8003894e:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:37593
    if (JS_IsException(obj))
    80038950:	0005879b          	sext.w	a5,a1
    80038954:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:37592
    obj = JS_ToObject(ctx, argv[0]);
    80038956:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:37593
    if (JS_IsException(obj))
    80038958:	01479e63          	bne	a5,s4,80038974 <js_object_hasOwn+0x42>
quickjs-nuttx/quickjs.c:37594
        return obj;
    8003895c:	f02a                	sd	a0,32(sp)
    8003895e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:37608 (discriminator 1)
}
    80038960:	70a6                	ld	ra,104(sp)
    80038962:	7406                	ld	s0,96(sp)
    80038964:	7502                	ld	a0,32(sp)
    80038966:	75a2                	ld	a1,40(sp)
    80038968:	64e6                	ld	s1,88(sp)
    8003896a:	6946                	ld	s2,80(sp)
    8003896c:	69a6                	ld	s3,72(sp)
    8003896e:	6a06                	ld	s4,64(sp)
    80038970:	6165                	addi	sp,sp,112
    80038972:	8082                	ret
quickjs-nuttx/quickjs.c:37595
    atom = JS_ValueToAtom(ctx, argv[1]);
    80038974:	688c                	ld	a1,16(s1)
    80038976:	6c90                	ld	a2,24(s1)
    80038978:	8522                	mv	a0,s0
    8003897a:	e99ef0ef          	jal	ra,80028812 <JS_ValueToAtom>
    8003897e:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:37596
    if (unlikely(atom == JS_ATOM_NULL)) {
    80038982:	00091a63          	bnez	s2,80038996 <js_object_hasOwn+0x64>
quickjs-nuttx/quickjs.c:37597
        JS_FreeValue(ctx, obj);
    80038986:	65c2                	ld	a1,16(sp)
    80038988:	6662                	ld	a2,24(sp)
    8003898a:	8522                	mv	a0,s0
    8003898c:	e13d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37605
        return JS_EXCEPTION;
    80038990:	f002                	sd	zero,32(sp)
    80038992:	f452                	sd	s4,40(sp)
    80038994:	b7f1                	j	80038960 <js_object_hasOwn+0x2e>
quickjs-nuttx/quickjs.c:37601
    ret = JS_GetOwnPropertyInternal(ctx, NULL, p, atom);
    80038996:	864e                	mv	a2,s3
    80038998:	86ca                	mv	a3,s2
    8003899a:	4581                	li	a1,0
    8003899c:	8522                	mv	a0,s0
    8003899e:	fd2de0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
    800389a2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:37602
    JS_FreeAtom(ctx, atom);
    800389a4:	85ca                	mv	a1,s2
    800389a6:	8522                	mv	a0,s0
    800389a8:	fa0d20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:37603
    JS_FreeValue(ctx, obj);
    800389ac:	65c2                	ld	a1,16(sp)
    800389ae:	6662                	ld	a2,24(sp)
    800389b0:	8522                	mv	a0,s0
    800389b2:	dedd20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37604
    if (ret < 0)
    800389b6:	fc04cde3          	bltz	s1,80038990 <js_object_hasOwn+0x5e>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    800389ba:	009034b3          	snez	s1,s1
    800389be:	da02                	sw	zero,52(sp)
    800389c0:	d826                	sw	s1,48(sp)
    800389c2:	77c2                	ld	a5,48(sp)
    800389c4:	f03e                	sd	a5,32(sp)
    800389c6:	4785                	li	a5,1
    800389c8:	f43e                	sd	a5,40(sp)
js_object_hasOwn():
quickjs-nuttx/quickjs.c:37607
        return JS_NewBool(ctx, ret);
    800389ca:	bf59                	j	80038960 <js_object_hasOwn+0x2e>

00000000800389cc <js_object_getOwnPropertyDescriptor>:
js_object_getOwnPropertyDescriptor():
quickjs-nuttx/quickjs.c:37300
{
    800389cc:	710d                	addi	sp,sp,-352
    800389ce:	eaa2                	sd	s0,336(sp)
    800389d0:	e6a6                	sd	s1,328(sp)
    800389d2:	ee86                	sd	ra,344(sp)
    800389d4:	e2ca                	sd	s2,320(sp)
    800389d6:	fe4e                	sd	s3,312(sp)
    800389d8:	fa52                	sd	s4,304(sp)
    800389da:	f656                	sd	s5,296(sp)
    800389dc:	f25a                	sd	s6,288(sp)
    800389de:	842a                	mv	s0,a0
    800389e0:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:37307
    if (magic) {
    800389e2:	c3bd                	beqz	a5,80038a48 <js_object_getOwnPropertyDescriptor+0x7c>
quickjs-nuttx/quickjs.c:37309
        if (JS_VALUE_GET_TAG(argv[0]) != JS_TAG_OBJECT)
    800389e4:	670c                	ld	a1,8(a4)
    800389e6:	57fd                	li	a5,-1
    800389e8:	0005871b          	sext.w	a4,a1
    800389ec:	00f70d63          	beq	a4,a5,80038a06 <js_object_getOwnPropertyDescriptor+0x3a>
quickjs-nuttx/quickjs.c:37360
}
    800389f0:	6456                	ld	s0,336(sp)
    800389f2:	60f6                	ld	ra,344(sp)
    800389f4:	64b6                	ld	s1,328(sp)
    800389f6:	6916                	ld	s2,320(sp)
    800389f8:	79f2                	ld	s3,312(sp)
    800389fa:	7a52                	ld	s4,304(sp)
    800389fc:	7ab2                	ld	s5,296(sp)
    800389fe:	7b12                	ld	s6,288(sp)
    80038a00:	6135                	addi	sp,sp,352
quickjs-nuttx/quickjs.c:37310
            return JS_ThrowTypeErrorNotAnObject(ctx);
    80038a02:	a28e006f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:37311
        obj = JS_DupValue(ctx, argv[0]);
    80038a06:	6088                	ld	a0,0(s1)
    80038a08:	a13d10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80038a0c:	8a2a                	mv	s4,a0
    80038a0e:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:37318
    atom = JS_ValueToAtom(ctx, prop);
    80038a10:	688c                	ld	a1,16(s1)
    80038a12:	6c90                	ld	a2,24(s1)
    80038a14:	8522                	mv	a0,s0
    80038a16:	dfdef0ef          	jal	ra,80028812 <JS_ValueToAtom>
    80038a1a:	00050a9b          	sext.w	s5,a0
quickjs-nuttx/quickjs.c:37319
    if (unlikely(atom == JS_ATOM_NULL))
    80038a1e:	100a8663          	beqz	s5,80038b2a <js_object_getOwnPropertyDescriptor+0x15e>
quickjs-nuttx/quickjs.c:37322
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80038a22:	0009879b          	sext.w	a5,s3
    80038a26:	577d                	li	a4,-1
    80038a28:	04e78963          	beq	a5,a4,80038a7a <js_object_getOwnPropertyDescriptor+0xae>
quickjs-nuttx/quickjs.c:37321
    ret = JS_UNDEFINED;
    80038a2c:	448d                	li	s1,3
    80038a2e:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:37349
    JS_FreeAtom(ctx, atom);
    80038a30:	85d6                	mv	a1,s5
    80038a32:	8522                	mv	a0,s0
    80038a34:	f14d20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:37350
    JS_FreeValue(ctx, obj);
    80038a38:	85d2                	mv	a1,s4
    80038a3a:	864e                	mv	a2,s3
    80038a3c:	8522                	mv	a0,s0
    80038a3e:	d61d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37351
    return ret;
    80038a42:	e4ca                	sd	s2,72(sp)
    80038a44:	e8a6                	sd	s1,80(sp)
    80038a46:	a831                	j	80038a62 <js_object_getOwnPropertyDescriptor+0x96>
quickjs-nuttx/quickjs.c:37313
        obj = JS_ToObject(ctx, argv[0]);
    80038a48:	630c                	ld	a1,0(a4)
    80038a4a:	6710                	ld	a2,8(a4)
    80038a4c:	e6ef70ef          	jal	ra,800300ba <JS_ToObject>
quickjs-nuttx/quickjs.c:37314
        if (JS_IsException(obj))
    80038a50:	0005871b          	sext.w	a4,a1
    80038a54:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37313
        obj = JS_ToObject(ctx, argv[0]);
    80038a56:	8a2a                	mv	s4,a0
    80038a58:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:37314
        if (JS_IsException(obj))
    80038a5a:	faf71be3          	bne	a4,a5,80038a10 <js_object_getOwnPropertyDescriptor+0x44>
quickjs-nuttx/quickjs.c:37315
            return obj;
    80038a5e:	e4aa                	sd	a0,72(sp)
    80038a60:	e8ae                	sd	a1,80(sp)
quickjs-nuttx/quickjs.c:37360
}
    80038a62:	60f6                	ld	ra,344(sp)
    80038a64:	6456                	ld	s0,336(sp)
    80038a66:	6526                	ld	a0,72(sp)
    80038a68:	65c6                	ld	a1,80(sp)
    80038a6a:	64b6                	ld	s1,328(sp)
    80038a6c:	6916                	ld	s2,320(sp)
    80038a6e:	79f2                	ld	s3,312(sp)
    80038a70:	7a52                	ld	s4,304(sp)
    80038a72:	7ab2                	ld	s5,296(sp)
    80038a74:	7b12                	ld	s6,288(sp)
    80038a76:	6135                	addi	sp,sp,352
    80038a78:	8082                	ret
quickjs-nuttx/quickjs.c:37323
        res = JS_GetOwnPropertyInternal(ctx, &desc, JS_VALUE_GET_OBJ(obj), atom);
    80038a7a:	86d6                	mv	a3,s5
    80038a7c:	8652                	mv	a2,s4
    80038a7e:	11ac                	addi	a1,sp,232
    80038a80:	8522                	mv	a0,s0
    80038a82:	eeede0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:37324
        if (res < 0)
    80038a86:	0a054263          	bltz	a0,80038b2a <js_object_getOwnPropertyDescriptor+0x15e>
quickjs-nuttx/quickjs.c:37326
        if (res) {
    80038a8a:	d14d                	beqz	a0,80038a2c <js_object_getOwnPropertyDescriptor+0x60>
quickjs-nuttx/quickjs.c:37327
            ret = JS_NewObject(ctx);
    80038a8c:	8522                	mv	a0,s0
    80038a8e:	d96e30ef          	jal	ra,8001c024 <JS_NewObject>
    80038a92:	f42a                	sd	a0,40(sp)
    80038a94:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:37328
            if (JS_IsException(ret))
    80038a96:	0005871b          	sext.w	a4,a1
    80038a9a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37327
            ret = JS_NewObject(ctx);
    80038a9c:	892a                	mv	s2,a0
    80038a9e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:37328
            if (JS_IsException(ret))
    80038aa0:	06f70c63          	beq	a4,a5,80038b18 <js_object_getOwnPropertyDescriptor+0x14c>
quickjs-nuttx/quickjs.c:37331
            if (desc.flags & JS_PROP_GETSET) {
    80038aa4:	57ae                	lw	a5,232(sp)
    80038aa6:	8bc1                	andi	a5,a5,16
    80038aa8:	cfd1                	beqz	a5,80038b44 <js_object_getOwnPropertyDescriptor+0x178>
quickjs-nuttx/quickjs.c:37332
                if (JS_DefinePropertyValue(ctx, ret, JS_ATOM_get, JS_DupValue(ctx, desc.getter), flags) < 0
    80038aaa:	6512                	ld	a0,256(sp)
    80038aac:	65b2                	ld	a1,264(sp)
    80038aae:	6b11                	lui	s6,0x4
    80038ab0:	96bd10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80038ab4:	87ae                	mv	a5,a1
    80038ab6:	7642                	ld	a2,48(sp)
    80038ab8:	75a2                	ld	a1,40(sp)
    80038aba:	872a                	mv	a4,a0
    80038abc:	007b0813          	addi	a6,s6,7 # 4007 <asinh-0x7fffbff9>
    80038ac0:	04200693          	li	a3,66
    80038ac4:	8522                	mv	a0,s0
    80038ac6:	f66df0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80038aca:	04054763          	bltz	a0,80038b18 <js_object_getOwnPropertyDescriptor+0x14c>
quickjs-nuttx/quickjs.c:37333
                ||  JS_DefinePropertyValue(ctx, ret, JS_ATOM_set, JS_DupValue(ctx, desc.setter), flags) < 0)
    80038ace:	6552                	ld	a0,272(sp)
    80038ad0:	65f2                	ld	a1,280(sp)
    80038ad2:	949d10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80038ad6:	872a                	mv	a4,a0
    80038ad8:	87ae                	mv	a5,a1
    80038ada:	007b0813          	addi	a6,s6,7
    80038ade:	04300693          	li	a3,67
    80038ae2:	75a2                	ld	a1,40(sp)
    80038ae4:	7642                	ld	a2,48(sp)
    80038ae6:	8522                	mv	a0,s0
    80038ae8:	f44df0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80038aec:	02054663          	bltz	a0,80038b18 <js_object_getOwnPropertyDescriptor+0x14c>
quickjs-nuttx/quickjs.c:37341
            if (JS_DefinePropertyValue(ctx, ret, JS_ATOM_enumerable,
    80038af0:	57ae                	lw	a5,232(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038af2:	c782                	sw	zero,204(sp)
js_object_getOwnPropertyDescriptor():
quickjs-nuttx/quickjs.c:37341
    80038af4:	75a2                	ld	a1,40(sp)
    80038af6:	4027d79b          	sraiw	a5,a5,0x2
    80038afa:	8b85                	andi	a5,a5,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038afc:	c5be                	sw	a5,200(sp)
js_object_getOwnPropertyDescriptor():
quickjs-nuttx/quickjs.c:37341
    80038afe:	672e                	ld	a4,200(sp)
    80038b00:	7642                	ld	a2,48(sp)
    80038b02:	6b11                	lui	s6,0x4
    80038b04:	007b0813          	addi	a6,s6,7 # 4007 <asinh-0x7fffbff9>
    80038b08:	4785                	li	a5,1
    80038b0a:	04000693          	li	a3,64
    80038b0e:	8522                	mv	a0,s0
    80038b10:	f1cdf0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80038b14:	06055763          	bgez	a0,80038b82 <js_object_getOwnPropertyDescriptor+0x1b6>
quickjs-nuttx/quickjs.c:37354
    js_free_desc(ctx, &desc);
    80038b18:	11ac                	addi	a1,sp,232
    80038b1a:	8522                	mv	a0,s0
    80038b1c:	fc9d20ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:37355
    JS_FreeValue(ctx, ret);
    80038b20:	75a2                	ld	a1,40(sp)
    80038b22:	7642                	ld	a2,48(sp)
    80038b24:	8522                	mv	a0,s0
    80038b26:	c79d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37357
    JS_FreeAtom(ctx, atom);
    80038b2a:	85d6                	mv	a1,s5
    80038b2c:	8522                	mv	a0,s0
    80038b2e:	e1ad20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:37358
    JS_FreeValue(ctx, obj);
    80038b32:	85d2                	mv	a1,s4
    80038b34:	864e                	mv	a2,s3
    80038b36:	8522                	mv	a0,s0
    80038b38:	c67d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37359
    return JS_EXCEPTION;
    80038b3c:	4799                	li	a5,6
    80038b3e:	e482                	sd	zero,72(sp)
    80038b40:	e8be                	sd	a5,80(sp)
    80038b42:	b705                	j	80038a62 <js_object_getOwnPropertyDescriptor+0x96>
quickjs-nuttx/quickjs.c:37336
                if (JS_DefinePropertyValue(ctx, ret, JS_ATOM_value, JS_DupValue(ctx, desc.value), flags) < 0
    80038b44:	754e                	ld	a0,240(sp)
    80038b46:	75ee                	ld	a1,248(sp)
    80038b48:	6b11                	lui	s6,0x4
    80038b4a:	8d1d10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80038b4e:	87ae                	mv	a5,a1
    80038b50:	7642                	ld	a2,48(sp)
    80038b52:	75a2                	ld	a1,40(sp)
    80038b54:	872a                	mv	a4,a0
    80038b56:	007b0813          	addi	a6,s6,7 # 4007 <asinh-0x7fffbff9>
    80038b5a:	04100693          	li	a3,65
    80038b5e:	8522                	mv	a0,s0
    80038b60:	eccdf0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80038b64:	fa054ae3          	bltz	a0,80038b18 <js_object_getOwnPropertyDescriptor+0x14c>
quickjs-nuttx/quickjs.c:37337
                ||  JS_DefinePropertyValue(ctx, ret, JS_ATOM_writable,
    80038b68:	57ae                	lw	a5,232(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038b6a:	df02                	sw	zero,188(sp)
js_object_getOwnPropertyDescriptor():
quickjs-nuttx/quickjs.c:37337
    80038b6c:	007b0813          	addi	a6,s6,7
    80038b70:	4017d79b          	sraiw	a5,a5,0x1
    80038b74:	8b85                	andi	a5,a5,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038b76:	dd3e                	sw	a5,184(sp)
js_object_getOwnPropertyDescriptor():
quickjs-nuttx/quickjs.c:37337
    80038b78:	776a                	ld	a4,184(sp)
    80038b7a:	4785                	li	a5,1
    80038b7c:	03f00693          	li	a3,63
    80038b80:	b78d                	j	80038ae2 <js_object_getOwnPropertyDescriptor+0x116>
    80038b82:	57ae                	lw	a5,232(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038b84:	cf82                	sw	zero,220(sp)
js_object_getOwnPropertyDescriptor():
quickjs-nuttx/quickjs.c:37343
            ||  JS_DefinePropertyValue(ctx, ret, JS_ATOM_configurable,
    80038b86:	75a2                	ld	a1,40(sp)
    80038b88:	8b85                	andi	a5,a5,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80038b8a:	cdbe                	sw	a5,216(sp)
js_object_getOwnPropertyDescriptor():
quickjs-nuttx/quickjs.c:37343
    80038b8c:	676e                	ld	a4,216(sp)
    80038b8e:	7642                	ld	a2,48(sp)
    80038b90:	007b0813          	addi	a6,s6,7
    80038b94:	4785                	li	a5,1
    80038b96:	03e00693          	li	a3,62
    80038b9a:	8522                	mv	a0,s0
    80038b9c:	e90df0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80038ba0:	f6054ce3          	bltz	a0,80038b18 <js_object_getOwnPropertyDescriptor+0x14c>
quickjs-nuttx/quickjs.c:37346
            js_free_desc(ctx, &desc);
    80038ba4:	11ac                	addi	a1,sp,232
    80038ba6:	8522                	mv	a0,s0
    80038ba8:	f3dd20ef          	jal	ra,8000bae4 <js_free_desc>
    80038bac:	b551                	j	80038a30 <js_object_getOwnPropertyDescriptor+0x64>

0000000080038bae <js_object_getOwnPropertyDescriptors>:
js_object_getOwnPropertyDescriptors():
quickjs-nuttx/quickjs.c:37364
{
    80038bae:	7115                	addi	sp,sp,-224
    80038bb0:	e9a2                	sd	s0,208(sp)
    80038bb2:	fd4e                	sd	s3,184(sp)
    80038bb4:	ed86                	sd	ra,216(sp)
    80038bb6:	e5a6                	sd	s1,200(sp)
    80038bb8:	e1ca                	sd	s2,192(sp)
    80038bba:	f952                	sd	s4,176(sp)
    80038bbc:	f556                	sd	s5,168(sp)
    80038bbe:	f15a                	sd	s6,160(sp)
    80038bc0:	ed5e                	sd	s7,152(sp)
    80038bc2:	e962                	sd	s8,144(sp)
    80038bc4:	e02e                	sd	a1,0(sp)
    80038bc6:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:37372
    obj = JS_ToObject(ctx, argv[0]);
    80038bc8:	630c                	ld	a1,0(a4)
    80038bca:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37364
{
    80038bcc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37371
    r = JS_UNDEFINED;
    80038bce:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:37372
    obj = JS_ToObject(ctx, argv[0]);
    80038bd0:	ceaf70ef          	jal	ra,800300ba <JS_ToObject>
    80038bd4:	f42e                	sd	a1,40(sp)
    80038bd6:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:37373
    if (JS_IsException(obj))
    80038bd8:	2581                	sext.w	a1,a1
    80038bda:	4999                	li	s3,6
    80038bdc:	03359263          	bne	a1,s3,80038c00 <js_object_getOwnPropertyDescriptors+0x52>
quickjs-nuttx/quickjs.c:37374
        return JS_EXCEPTION;
    80038be0:	f882                	sd	zero,112(sp)
    80038be2:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:37411 (discriminator 1)
}
    80038be4:	60ee                	ld	ra,216(sp)
    80038be6:	644e                	ld	s0,208(sp)
    80038be8:	7546                	ld	a0,112(sp)
    80038bea:	75e6                	ld	a1,120(sp)
    80038bec:	64ae                	ld	s1,200(sp)
    80038bee:	690e                	ld	s2,192(sp)
    80038bf0:	79ea                	ld	s3,184(sp)
    80038bf2:	7a4a                	ld	s4,176(sp)
    80038bf4:	7aaa                	ld	s5,168(sp)
    80038bf6:	7b0a                	ld	s6,160(sp)
    80038bf8:	6bea                	ld	s7,152(sp)
    80038bfa:	6c4a                	ld	s8,144(sp)
    80038bfc:	612d                	addi	sp,sp,224
    80038bfe:	8082                	ret
quickjs-nuttx/quickjs.c:37377
    if (JS_GetOwnPropertyNamesInternal(ctx, &props, &len, p,
    80038c00:	86aa                	mv	a3,a0
    80038c02:	84aa                	mv	s1,a0
    80038c04:	470d                	li	a4,3
    80038c06:	0850                	addi	a2,sp,20
    80038c08:	082c                	addi	a1,sp,24
    80038c0a:	8522                	mv	a0,s0
    80038c0c:	cb2ff0ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
quickjs-nuttx/quickjs.c:37371
    r = JS_UNDEFINED;
    80038c10:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:37377
    if (JS_GetOwnPropertyNamesInternal(ctx, &props, &len, p,
    80038c12:	ed55                	bnez	a0,80038cce <js_object_getOwnPropertyDescriptors+0x120>
quickjs-nuttx/quickjs.c:37380
    r = JS_NewObject(ctx);
    80038c14:	8522                	mv	a0,s0
    80038c16:	c0ee30ef          	jal	ra,8001c024 <JS_NewObject>
    80038c1a:	f82a                	sd	a0,48(sp)
    80038c1c:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:37381
    if (JS_IsException(r))
    80038c1e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:37380
    r = JS_NewObject(ctx);
    80038c22:	892e                	mv	s2,a1
    80038c24:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:37381
    if (JS_IsException(r))
    80038c26:	0b378463          	beq	a5,s3,80038cce <js_object_getOwnPropertyDescriptors+0x120>
quickjs-nuttx/quickjs.c:37397
            if (JS_DefinePropertyValue(ctx, r, props[i].atom, desc,
    80038c2a:	6a11                	lui	s4,0x4
quickjs-nuttx/quickjs.c:37383
    for(i = 0; i < len; i++) {
    80038c2c:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:37388
        if (JS_IsException(atomValue))
    80038c2e:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:37392
        desc = js_object_getOwnPropertyDescriptor(ctx, JS_UNDEFINED, 2, args, 0);
    80038c30:	4b8d                	li	s7,3
quickjs-nuttx/quickjs.c:37397
            if (JS_DefinePropertyValue(ctx, r, props[i].atom, desc,
    80038c32:	0a1d                	addi	s4,s4,7
quickjs-nuttx/quickjs.c:37383 (discriminator 1)
    for(i = 0; i < len; i++) {
    80038c34:	4652                	lw	a2,20(sp)
quickjs-nuttx/quickjs.c:37387 (discriminator 1)
        atomValue = JS_AtomToValue(ctx, props[i].atom);
    80038c36:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:37383 (discriminator 1)
    for(i = 0; i < len; i++) {
    80038c38:	00c9ee63          	bltu	s3,a2,80038c54 <js_object_getOwnPropertyDescriptors+0xa6>
quickjs-nuttx/quickjs.c:37402
    js_free_prop_enum(ctx, props, len);
    80038c3c:	8522                	mv	a0,s0
    80038c3e:	d1ad20ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:37403
    JS_FreeValue(ctx, obj);
    80038c42:	7622                	ld	a2,40(sp)
    80038c44:	85a6                	mv	a1,s1
    80038c46:	8522                	mv	a0,s0
    80038c48:	b57d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37404
    return r;
    80038c4c:	77c2                	ld	a5,48(sp)
    80038c4e:	fcca                	sd	s2,120(sp)
    80038c50:	f8be                	sd	a5,112(sp)
    80038c52:	bf49                	j	80038be4 <js_object_getOwnPropertyDescriptors+0x36>
quickjs-nuttx/quickjs.c:37387
        atomValue = JS_AtomToValue(ctx, props[i].atom);
    80038c54:	02099793          	slli	a5,s3,0x20
    80038c58:	01d7dc13          	srli	s8,a5,0x1d
    80038c5c:	95e2                	add	a1,a1,s8
    80038c5e:	41cc                	lw	a1,4(a1)
    80038c60:	8522                	mv	a0,s0
    80038c62:	e67e60ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80038c66:	e0aa                	sd	a0,64(sp)
    80038c68:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:37388
        if (JS_IsException(atomValue))
    80038c6a:	0005879b          	sext.w	a5,a1
    80038c6e:	07678063          	beq	a5,s6,80038cce <js_object_getOwnPropertyDescriptors+0x120>
quickjs-nuttx/quickjs.c:37390
        args[0] = obj;
    80038c72:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:37392
        desc = js_object_getOwnPropertyDescriptor(ctx, JS_UNDEFINED, 2, args, 0);
    80038c74:	1898                	addi	a4,sp,112
quickjs-nuttx/quickjs.c:37391
        args[1] = atomValue;
    80038c76:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:37390
        args[0] = obj;
    80038c78:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:37391
        args[1] = atomValue;
    80038c7a:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:37392
        desc = js_object_getOwnPropertyDescriptor(ctx, JS_UNDEFINED, 2, args, 0);
    80038c7c:	4781                	li	a5,0
    80038c7e:	4689                	li	a3,2
    80038c80:	460d                	li	a2,3
    80038c82:	4581                	li	a1,0
    80038c84:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:37390
        args[0] = obj;
    80038c86:	f026                	sd	s1,32(sp)
    80038c88:	f8a6                	sd	s1,112(sp)
quickjs-nuttx/quickjs.c:37392
        desc = js_object_getOwnPropertyDescriptor(ctx, JS_UNDEFINED, 2, args, 0);
    80038c8a:	f082                	sd	zero,96(sp)
    80038c8c:	f4de                	sd	s7,104(sp)
    80038c8e:	d3fff0ef          	jal	ra,800389cc <js_object_getOwnPropertyDescriptor>
    80038c92:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:37393
        JS_FreeValue(ctx, atomValue);
    80038c94:	6626                	ld	a2,72(sp)
    80038c96:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:37392
        desc = js_object_getOwnPropertyDescriptor(ctx, JS_UNDEFINED, 2, args, 0);
    80038c98:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:37393
        JS_FreeValue(ctx, atomValue);
    80038c9a:	8522                	mv	a0,s0
    80038c9c:	b03d20ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80038ca0:	67e6                	ld	a5,88(sp)
    80038ca2:	0007871b          	sext.w	a4,a5
js_object_getOwnPropertyDescriptors():
quickjs-nuttx/quickjs.c:37394
        if (JS_IsException(desc))
    80038ca6:	03670463          	beq	a4,s6,80038cce <js_object_getOwnPropertyDescriptors+0x120>
quickjs-nuttx/quickjs.c:37396
        if (!JS_IsUndefined(desc)) {
    80038caa:	01771463          	bne	a4,s7,80038cb2 <js_object_getOwnPropertyDescriptors+0x104>
quickjs-nuttx/quickjs.c:37383
    for(i = 0; i < len; i++) {
    80038cae:	2985                	addiw	s3,s3,1
    80038cb0:	b751                	j	80038c34 <js_object_getOwnPropertyDescriptors+0x86>
quickjs-nuttx/quickjs.c:37397
            if (JS_DefinePropertyValue(ctx, r, props[i].atom, desc,
    80038cb2:	6762                	ld	a4,24(sp)
    80038cb4:	75c2                	ld	a1,48(sp)
    80038cb6:	8852                	mv	a6,s4
    80038cb8:	9c3a                	add	s8,s8,a4
    80038cba:	004c2683          	lw	a3,4(s8)
    80038cbe:	6746                	ld	a4,80(sp)
    80038cc0:	864a                	mv	a2,s2
    80038cc2:	8522                	mv	a0,s0
    80038cc4:	fc4a                	sd	s2,56(sp)
    80038cc6:	d66df0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80038cca:	fe0552e3          	bgez	a0,80038cae <js_object_getOwnPropertyDescriptors+0x100>
quickjs-nuttx/quickjs.c:37407
    js_free_prop_enum(ctx, props, len);
    80038cce:	4652                	lw	a2,20(sp)
    80038cd0:	65e2                	ld	a1,24(sp)
    80038cd2:	8522                	mv	a0,s0
    80038cd4:	c84d20ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:37408
    JS_FreeValue(ctx, obj);
    80038cd8:	7622                	ld	a2,40(sp)
    80038cda:	85a6                	mv	a1,s1
    80038cdc:	8522                	mv	a0,s0
    80038cde:	ac1d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37409
    JS_FreeValue(ctx, r);
    80038ce2:	75c2                	ld	a1,48(sp)
    80038ce4:	8656                	mv	a2,s5
    80038ce6:	8522                	mv	a0,s0
    80038ce8:	ab7d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37410
    return JS_EXCEPTION;
    80038cec:	4799                	li	a5,6
    80038cee:	f882                	sd	zero,112(sp)
    80038cf0:	fcbe                	sd	a5,120(sp)
    80038cf2:	bdcd                	j	80038be4 <js_object_getOwnPropertyDescriptors+0x36>

0000000080038cf4 <js_object_seal>:
js_object_seal():
quickjs-nuttx/quickjs.c:37707
{
    80038cf4:	712d                	addi	sp,sp,-288
    80038cf6:	f1da                	sd	s6,224(sp)
    80038cf8:	ee06                	sd	ra,280(sp)
    80038cfa:	ea22                	sd	s0,272(sp)
    80038cfc:	e626                	sd	s1,264(sp)
    80038cfe:	e24a                	sd	s2,256(sp)
    80038d00:	fdce                	sd	s3,248(sp)
    80038d02:	f9d2                	sd	s4,240(sp)
    80038d04:	f5d6                	sd	s5,232(sp)
    80038d06:	edde                	sd	s7,216(sp)
    80038d08:	e9e2                	sd	s8,208(sp)
    80038d0a:	e5e6                	sd	s9,200(sp)
quickjs-nuttx/quickjs.c:37708
    JSValueConst obj = argv[0];
    80038d0c:	6304                	ld	s1,0(a4)
    80038d0e:	00873903          	ld	s2,8(a4)
quickjs-nuttx/quickjs.c:37707
{
    80038d12:	8b3e                	mv	s6,a5
    80038d14:	f02e                	sd	a1,32(sp)
    80038d16:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:37708
    JSValueConst obj = argv[0];
    80038d18:	e4a6                	sd	s1,72(sp)
    80038d1a:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs.c:37714
    if (!JS_IsObject(obj))
    80038d1c:	0009071b          	sext.w	a4,s2
    80038d20:	57fd                	li	a5,-1
    80038d22:	02f70263          	beq	a4,a5,80038d46 <js_object_seal+0x52>
quickjs-nuttx/quickjs.c:37754
}
    80038d26:	6452                	ld	s0,272(sp)
    80038d28:	60f2                	ld	ra,280(sp)
    80038d2a:	79ee                	ld	s3,248(sp)
    80038d2c:	7a4e                	ld	s4,240(sp)
    80038d2e:	7aae                	ld	s5,232(sp)
    80038d30:	7b0e                	ld	s6,224(sp)
    80038d32:	6bee                	ld	s7,216(sp)
    80038d34:	6c4e                	ld	s8,208(sp)
    80038d36:	6cae                	ld	s9,200(sp)
quickjs-nuttx/quickjs.c:37715
        return JS_DupValue(ctx, obj);
    80038d38:	8526                	mv	a0,s1
    80038d3a:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:37754
}
    80038d3c:	64b2                	ld	s1,264(sp)
    80038d3e:	6912                	ld	s2,256(sp)
    80038d40:	6115                	addi	sp,sp,288
quickjs-nuttx/quickjs.c:37715
        return JS_DupValue(ctx, obj);
    80038d42:	ed8d106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:37717
    res = JS_PreventExtensions(ctx, obj);
    80038d46:	85a6                	mv	a1,s1
    80038d48:	864a                	mv	a2,s2
    80038d4a:	842a                	mv	s0,a0
    80038d4c:	f1be00ef          	jal	ra,80019c66 <JS_PreventExtensions>
quickjs-nuttx/quickjs.c:37718
    if (res < 0)
    80038d50:	02055463          	bgez	a0,80038d78 <js_object_seal+0x84>
quickjs-nuttx/quickjs.c:37753 (discriminator 1)
    return JS_EXCEPTION;
    80038d54:	4799                	li	a5,6
    80038d56:	e502                	sd	zero,136(sp)
    80038d58:	e93e                	sd	a5,144(sp)
quickjs-nuttx/quickjs.c:37754 (discriminator 1)
}
    80038d5a:	60f2                	ld	ra,280(sp)
    80038d5c:	6452                	ld	s0,272(sp)
    80038d5e:	652a                	ld	a0,136(sp)
    80038d60:	65ca                	ld	a1,144(sp)
    80038d62:	64b2                	ld	s1,264(sp)
    80038d64:	6912                	ld	s2,256(sp)
    80038d66:	79ee                	ld	s3,248(sp)
    80038d68:	7a4e                	ld	s4,240(sp)
    80038d6a:	7aae                	ld	s5,232(sp)
    80038d6c:	7b0e                	ld	s6,224(sp)
    80038d6e:	6bee                	ld	s7,216(sp)
    80038d70:	6c4e                	ld	s8,208(sp)
    80038d72:	6cae                	ld	s9,200(sp)
    80038d74:	6115                	addi	sp,sp,288
    80038d76:	8082                	ret
quickjs-nuttx/quickjs.c:37720
    if (!res) {
    80038d78:	e505                	bnez	a0,80038da0 <js_object_seal+0xac>
quickjs-nuttx/quickjs.c:37721
        return JS_ThrowTypeError(ctx, "proxy preventExtensions handler returned false");
    80038d7a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:37754
}
    80038d7c:	6452                	ld	s0,272(sp)
    80038d7e:	60f2                	ld	ra,280(sp)
    80038d80:	64b2                	ld	s1,264(sp)
    80038d82:	6912                	ld	s2,256(sp)
    80038d84:	79ee                	ld	s3,248(sp)
    80038d86:	7a4e                	ld	s4,240(sp)
    80038d88:	7aae                	ld	s5,232(sp)
    80038d8a:	7b0e                	ld	s6,224(sp)
    80038d8c:	6bee                	ld	s7,216(sp)
    80038d8e:	6c4e                	ld	s8,208(sp)
    80038d90:	6cae                	ld	s9,200(sp)
quickjs-nuttx/quickjs.c:37721
        return JS_ThrowTypeError(ctx, "proxy preventExtensions handler returned false");
    80038d92:	00032597          	auipc	a1,0x32
    80038d96:	82e58593          	addi	a1,a1,-2002 # 8006a5c0 <qjsc_repl+0x5010>
quickjs-nuttx/quickjs.c:37754
}
    80038d9a:	6115                	addi	sp,sp,288
quickjs-nuttx/quickjs.c:37721
        return JS_ThrowTypeError(ctx, "proxy preventExtensions handler returned false");
    80038d9c:	8d1df06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:37726
    if (JS_GetOwnPropertyNamesInternal(ctx, &props, &len, p, flags))
    80038da0:	470d                	li	a4,3
    80038da2:	86a6                	mv	a3,s1
    80038da4:	1870                	addi	a2,sp,60
    80038da6:	008c                	addi	a1,sp,64
    80038da8:	8522                	mv	a0,s0
    80038daa:	b14ff0ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    80038dae:	f15d                	bnez	a0,80038d54 <js_object_seal+0x60>
quickjs-nuttx/quickjs.c:37733
        desc_flags = JS_PROP_THROW | JS_PROP_HAS_CONFIGURABLE;
    80038db0:	6a11                	lui	s4,0x4
    80038db2:	100a0b93          	addi	s7,s4,256 # 4100 <asinh-0x7fffbf00>
quickjs-nuttx/quickjs.c:37729
    for(i = 0; i < len; i++) {
    80038db6:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:37740
                    desc_flags |= JS_PROP_HAS_WRITABLE;
    80038db8:	300a0a13          	addi	s4,s4,768
quickjs-nuttx/quickjs.c:37744
        if (JS_DefineProperty(ctx, obj, prop, JS_UNDEFINED,
    80038dbc:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:37729 (discriminator 1)
    for(i = 0; i < len; i++) {
    80038dbe:	5672                	lw	a2,60(sp)
quickjs-nuttx/quickjs.c:37731 (discriminator 1)
        JSAtom prop = props[i].atom;
    80038dc0:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:37729 (discriminator 1)
    for(i = 0; i < len; i++) {
    80038dc2:	00c9ec63          	bltu	s3,a2,80038dda <js_object_seal+0xe6>
quickjs-nuttx/quickjs.c:37748
    js_free_prop_enum(ctx, props, len);
    80038dc6:	8522                	mv	a0,s0
    80038dc8:	b90d20ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:37749
    return JS_DupValue(ctx, obj);
    80038dcc:	8526                	mv	a0,s1
    80038dce:	85ca                	mv	a1,s2
    80038dd0:	e4ad10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80038dd4:	e52a                	sd	a0,136(sp)
    80038dd6:	e92e                	sd	a1,144(sp)
    80038dd8:	b749                	j	80038d5a <js_object_seal+0x66>
quickjs-nuttx/quickjs.c:37731
        JSAtom prop = props[i].atom;
    80038dda:	02099713          	slli	a4,s3,0x20
    80038dde:	01d75793          	srli	a5,a4,0x1d
    80038de2:	95be                	add	a1,a1,a5
    80038de4:	0045ac83          	lw	s9,4(a1)
quickjs-nuttx/quickjs.c:37734
        if (freeze_flag) {
    80038de8:	020b1c63          	bnez	s6,80038e20 <js_object_seal+0x12c>
quickjs-nuttx/quickjs.c:37733
        desc_flags = JS_PROP_THROW | JS_PROP_HAS_CONFIGURABLE;
    80038dec:	8c5e                	mv	s8,s7
quickjs-nuttx/quickjs.c:37744
        if (JS_DefineProperty(ctx, obj, prop, JS_UNDEFINED,
    80038dee:	ec82                	sd	zero,88(sp)
    80038df0:	f0d6                	sd	s5,96(sp)
quickjs-nuttx/quickjs.c:37745
                              JS_UNDEFINED, JS_UNDEFINED, desc_flags) < 0)
    80038df2:	f482                	sd	zero,104(sp)
    80038df4:	f8d6                	sd	s5,112(sp)
    80038df6:	fc82                	sd	zero,120(sp)
    80038df8:	e156                	sd	s5,128(sp)
quickjs-nuttx/quickjs.c:37744
        if (JS_DefineProperty(ctx, obj, prop, JS_UNDEFINED,
    80038dfa:	e4a6                	sd	s1,72(sp)
    80038dfc:	e8ca                	sd	s2,80(sp)
    80038dfe:	e862                	sd	s8,16(sp)
    80038e00:	e002                	sd	zero,0(sp)
    80038e02:	e456                	sd	s5,8(sp)
    80038e04:	4801                	li	a6,0
    80038e06:	488d                	li	a7,3
    80038e08:	4701                	li	a4,0
    80038e0a:	478d                	li	a5,3
    80038e0c:	86e6                	mv	a3,s9
    80038e0e:	85a6                	mv	a1,s1
    80038e10:	864a                	mv	a2,s2
    80038e12:	8522                	mv	a0,s0
    80038e14:	d3bde0ef          	jal	ra,80017b4e <JS_DefineProperty>
    80038e18:	02054763          	bltz	a0,80038e46 <js_object_seal+0x152>
quickjs-nuttx/quickjs.c:37729
    for(i = 0; i < len; i++) {
    80038e1c:	2985                	addiw	s3,s3,1
    80038e1e:	b745                	j	80038dbe <js_object_seal+0xca>
quickjs-nuttx/quickjs.c:37735
            res = JS_GetOwnPropertyInternal(ctx, &desc, p, prop);
    80038e20:	86e6                	mv	a3,s9
    80038e22:	8626                	mv	a2,s1
    80038e24:	012c                	addi	a1,sp,136
    80038e26:	8522                	mv	a0,s0
    80038e28:	b48de0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:37736
            if (res < 0)
    80038e2c:	00054d63          	bltz	a0,80038e46 <js_object_seal+0x152>
quickjs-nuttx/quickjs.c:37738
            if (res) {
    80038e30:	dd55                	beqz	a0,80038dec <js_object_seal+0xf8>
quickjs-nuttx/quickjs.c:37739
                if (desc.flags & JS_PROP_WRITABLE)
    80038e32:	47aa                	lw	a5,136(sp)
quickjs-nuttx/quickjs.c:37733
        desc_flags = JS_PROP_THROW | JS_PROP_HAS_CONFIGURABLE;
    80038e34:	8c5e                	mv	s8,s7
quickjs-nuttx/quickjs.c:37739
                if (desc.flags & JS_PROP_WRITABLE)
    80038e36:	8b89                	andi	a5,a5,2
    80038e38:	c391                	beqz	a5,80038e3c <js_object_seal+0x148>
quickjs-nuttx/quickjs.c:37740
                    desc_flags |= JS_PROP_HAS_WRITABLE;
    80038e3a:	8c52                	mv	s8,s4
quickjs-nuttx/quickjs.c:37741
                js_free_desc(ctx, &desc);
    80038e3c:	012c                	addi	a1,sp,136
    80038e3e:	8522                	mv	a0,s0
    80038e40:	ca5d20ef          	jal	ra,8000bae4 <js_free_desc>
    80038e44:	b76d                	j	80038dee <js_object_seal+0xfa>
quickjs-nuttx/quickjs.c:37752 (discriminator 1)
    js_free_prop_enum(ctx, props, len);
    80038e46:	5672                	lw	a2,60(sp)
    80038e48:	6586                	ld	a1,64(sp)
    80038e4a:	8522                	mv	a0,s0
    80038e4c:	b0cd20ef          	jal	ra,8000b158 <js_free_prop_enum>
    80038e50:	b711                	j	80038d54 <js_object_seal+0x60>

0000000080038e52 <js_typed_array_constructor_ta>:
js_typed_array_constructor_ta():
quickjs-nuttx/quickjs.c:54610
{
    80038e52:	7115                	addi	sp,sp,-224
    80038e54:	e836                	sd	a3,16(sp)
quickjs-nuttx/quickjs.c:54618
    obj = js_create_from_ctor(ctx, new_target, classid);
    80038e56:	86be                	mv	a3,a5
quickjs-nuttx/quickjs.c:54610
{
    80038e58:	e9a2                	sd	s0,208(sp)
    80038e5a:	e5a6                	sd	s1,200(sp)
    80038e5c:	e1ca                	sd	s2,192(sp)
    80038e5e:	f952                	sd	s4,176(sp)
    80038e60:	e962                	sd	s8,144(sp)
    80038e62:	8a3e                	mv	s4,a5
    80038e64:	ed86                	sd	ra,216(sp)
    80038e66:	fd4e                	sd	s3,184(sp)
    80038e68:	f556                	sd	s5,168(sp)
    80038e6a:	f15a                	sd	s6,160(sp)
    80038e6c:	ed5e                	sd	s7,152(sp)
    80038e6e:	e566                	sd	s9,136(sp)
    80038e70:	e16a                	sd	s10,128(sp)
    80038e72:	842a                	mv	s0,a0
    80038e74:	f02e                	sd	a1,32(sp)
    80038e76:	f432                	sd	a2,40(sp)
    80038e78:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:54618
    obj = js_create_from_ctor(ctx, new_target, classid);
    80038e7a:	e03e20ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80038e7e:	f82a                	sd	a0,48(sp)
    80038e80:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:54619
    if (JS_IsException(obj))
    80038e82:	0005879b          	sext.w	a5,a1
    80038e86:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:54618
    obj = js_create_from_ctor(ctx, new_target, classid);
    80038e88:	892a                	mv	s2,a0
    80038e8a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:54619
    if (JS_IsException(obj))
    80038e8c:	03879463          	bne	a5,s8,80038eb4 <js_typed_array_constructor_ta+0x62>
quickjs-nuttx/quickjs.c:54657
    return obj;
    80038e90:	f0ca                	sd	s2,96(sp)
    80038e92:	f4a6                	sd	s1,104(sp)
quickjs-nuttx/quickjs.c:54661
}
    80038e94:	60ee                	ld	ra,216(sp)
    80038e96:	644e                	ld	s0,208(sp)
    80038e98:	7506                	ld	a0,96(sp)
    80038e9a:	75a6                	ld	a1,104(sp)
    80038e9c:	64ae                	ld	s1,200(sp)
    80038e9e:	690e                	ld	s2,192(sp)
    80038ea0:	79ea                	ld	s3,184(sp)
    80038ea2:	7a4a                	ld	s4,176(sp)
    80038ea4:	7aaa                	ld	s5,168(sp)
    80038ea6:	7b0a                	ld	s6,160(sp)
    80038ea8:	6bea                	ld	s7,152(sp)
    80038eaa:	6c4a                	ld	s8,144(sp)
    80038eac:	6caa                	ld	s9,136(sp)
    80038eae:	6d0a                	ld	s10,128(sp)
    80038eb0:	612d                	addi	sp,sp,224
    80038eb2:	8082                	ret
quickjs-nuttx/quickjs.c:54621
    p = JS_VALUE_GET_OBJ(src_obj);
    80038eb4:	6cc2                	ld	s9,16(sp)
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52938
    JSTypedArray *ta = p->u.typed_array;
    80038eb6:	030cbd03          	ld	s10,48(s9)
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80038eba:	018d3783          	ld	a5,24(s10)
    80038ebe:	0307bb03          	ld	s6,48(a5)
js_typed_array_constructor_ta():
quickjs-nuttx/quickjs.c:54622
    if (typed_array_is_detached(ctx, p)) {
    80038ec2:	004b4783          	lbu	a5,4(s6)
    80038ec6:	cf89                	beqz	a5,80038ee0 <js_typed_array_constructor_ta+0x8e>
quickjs-nuttx/quickjs.c:54638
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80038ec8:	8522                	mv	a0,s0
    80038eca:	8bae00ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:54659
    JS_FreeValue(ctx, obj);
    80038ece:	85ca                	mv	a1,s2
    80038ed0:	8626                	mv	a2,s1
    80038ed2:	8522                	mv	a0,s0
    80038ed4:	8cbd20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54660
    return JS_EXCEPTION;
    80038ed8:	4799                	li	a5,6
    80038eda:	f082                	sd	zero,96(sp)
    80038edc:	f4be                	sd	a5,104(sp)
    80038ede:	bf5d                	j	80038e94 <js_typed_array_constructor_ta+0x42>
quickjs-nuttx/quickjs.c:54627
    len = p->u.array.count;
    80038ee0:	040caa83          	lw	s5,64(s9)
quickjs-nuttx/quickjs.c:54630
    size_log2 = typed_array_size_log2(classid);
    80038ee4:	feba071b          	addiw	a4,s4,-21
    80038ee8:	0003c797          	auipc	a5,0x3c
    80038eec:	2f878793          	addi	a5,a5,760 # 800751e0 <typed_array_size_log2>
    80038ef0:	97ba                	add	a5,a5,a4
    80038ef2:	0007c683          	lbu	a3,0(a5)
quickjs-nuttx/quickjs.c:54632
                                          (uint64_t)len << size_log2);
    80038ef6:	020a9b93          	slli	s7,s5,0x20
    80038efa:	020bdb93          	srli	s7,s7,0x20
    80038efe:	478d                	li	a5,3
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80038f00:	00db96b3          	sll	a3,s7,a3
    80038f04:	474d                	li	a4,19
    80038f06:	4581                	li	a1,0
    80038f08:	460d                	li	a2,3
    80038f0a:	8522                	mv	a0,s0
    80038f0c:	ecbe                	sd	a5,88(sp)
    80038f0e:	f4be                	sd	a5,104(sp)
js_typed_array_constructor_ta():
quickjs-nuttx/quickjs.c:54631
    buffer = js_array_buffer_constructor1(ctx, JS_UNDEFINED,
    80038f10:	e882                	sd	zero,80(sp)
    80038f12:	f082                	sd	zero,96(sp)
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80038f14:	f63e20ef          	jal	ra,8001be76 <js_array_buffer_constructor2>
    80038f18:	f8aa                	sd	a0,112(sp)
    80038f1a:	fcae                	sd	a1,120(sp)
    80038f1c:	e0aa                	sd	a0,64(sp)
    80038f1e:	e4ae                	sd	a1,72(sp)
js_typed_array_constructor_ta():
quickjs-nuttx/quickjs.c:54633
    if (JS_IsException(buffer))
    80038f20:	0005879b          	sext.w	a5,a1
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    80038f24:	89aa                	mv	s3,a0
    80038f26:	86ae                	mv	a3,a1
js_typed_array_constructor_ta():
quickjs-nuttx/quickjs.c:54633
    if (JS_IsException(buffer))
    80038f28:	fb8783e3          	beq	a5,s8,80038ece <js_typed_array_constructor_ta+0x7c>
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80038f2c:	030cb783          	ld	a5,48(s9)
    80038f30:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    80038f32:	7b9c                	ld	a5,48(a5)
js_typed_array_constructor_ta():
quickjs-nuttx/quickjs.c:54636
    if (typed_array_is_detached(ctx, p)) {
    80038f34:	0047c783          	lbu	a5,4(a5)
    80038f38:	c799                	beqz	a5,80038f46 <js_typed_array_constructor_ta+0xf4>
quickjs-nuttx/quickjs.c:54637
        JS_FreeValue(ctx, buffer);
    80038f3a:	85aa                	mv	a1,a0
    80038f3c:	8636                	mv	a2,a3
    80038f3e:	8522                	mv	a0,s0
    80038f40:	85fd20ef          	jal	ra,8000b79e <JS_FreeValue>
    80038f44:	b751                	j	80038ec8 <js_typed_array_constructor_ta+0x76>
quickjs-nuttx/quickjs.c:54641
    abuf = JS_GetOpaque(buffer, JS_CLASS_ARRAY_BUFFER);
    80038f46:	464d                	li	a2,19
    80038f48:	e42e                	sd	a1,8(sp)
    80038f4a:	f4ad50ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:54642
    if (typed_array_init(ctx, obj, buffer, 0, len))
    80038f4e:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:54641
    abuf = JS_GetOpaque(buffer, JS_CLASS_ARRAY_BUFFER);
    80038f50:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:54642
    if (typed_array_init(ctx, obj, buffer, 0, len))
    80038f52:	87de                	mv	a5,s7
    80038f54:	4701                	li	a4,0
    80038f56:	864e                	mv	a2,s3
    80038f58:	85ca                	mv	a1,s2
    80038f5a:	8522                	mv	a0,s0
    80038f5c:	956e20ef          	jal	ra,8001b0b2 <typed_array_init.isra.0>
    80038f60:	f53d                	bnez	a0,80038ece <js_typed_array_constructor_ta+0x7c>
quickjs-nuttx/quickjs.c:54644
    if (p->class_id == classid) {
    80038f62:	006cd783          	lhu	a5,6(s9)
quickjs-nuttx/quickjs.c:54648
        for(i = 0; i < len; i++) {
    80038f66:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:54651
            if (JS_IsException(val))
    80038f68:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:54644
    if (p->class_id == classid) {
    80038f6a:	05479563          	bne	a5,s4,80038fb4 <js_typed_array_constructor_ta+0x162>
quickjs-nuttx/quickjs.c:54646
        memcpy(abuf->data, src_abuf->data + ta->offset, abuf->byte_length);
    80038f6e:	020d6783          	lwu	a5,32(s10)
    80038f72:	008b3583          	ld	a1,8(s6)
    80038f76:	000c2603          	lw	a2,0(s8)
    80038f7a:	008c3503          	ld	a0,8(s8)
    80038f7e:	95be                	add	a1,a1,a5
    80038f80:	62d2a0ef          	jal	ra,80063dac <memcpy>
    80038f84:	b731                	j	80038e90 <js_typed_array_constructor_ta+0x3e>
quickjs-nuttx/quickjs.c:54650
            val = JS_GetPropertyUint32(ctx, src_obj, i);
    80038f86:	65c2                	ld	a1,16(sp)
    80038f88:	6662                	ld	a2,24(sp)
    80038f8a:	86ce                	mv	a3,s3
    80038f8c:	8522                	mv	a0,s0
    80038f8e:	9aade0ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    80038f92:	f0aa                	sd	a0,96(sp)
    80038f94:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:54651
            if (JS_IsException(val))
    80038f96:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:54650
            val = JS_GetPropertyUint32(ctx, src_obj, i);
    80038f9a:	872a                	mv	a4,a0
    80038f9c:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:54651
            if (JS_IsException(val))
    80038f9e:	f37688e3          	beq	a3,s7,80038ece <js_typed_array_constructor_ta+0x7c>
quickjs-nuttx/quickjs.c:54653
            if (JS_SetPropertyUint32(ctx, obj, i, val) < 0)
    80038fa2:	86ce                	mv	a3,s3
    80038fa4:	85ca                	mv	a1,s2
    80038fa6:	8626                	mv	a2,s1
    80038fa8:	8522                	mv	a0,s0
    80038faa:	b63de0ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
    80038fae:	f20540e3          	bltz	a0,80038ece <js_typed_array_constructor_ta+0x7c>
quickjs-nuttx/quickjs.c:54648
        for(i = 0; i < len; i++) {
    80038fb2:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:54648 (discriminator 1)
    80038fb4:	fd5999e3          	bne	s3,s5,80038f86 <js_typed_array_constructor_ta+0x134>
    80038fb8:	bde1                	j	80038e90 <js_typed_array_constructor_ta+0x3e>

0000000080038fba <js_typed_array_toSorted>:
js_typed_array_toSorted():
quickjs-nuttx/quickjs.c:54410
{
    80038fba:	7159                	addi	sp,sp,-112
    80038fbc:	eca6                	sd	s1,88(sp)
    80038fbe:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:54414
    p = get_typed_array(ctx, this_val, /*is_dataview*/0);
    80038fc0:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:54410
{
    80038fc2:	f0a2                	sd	s0,96(sp)
    80038fc4:	e8ca                	sd	s2,80(sp)
    80038fc6:	f486                	sd	ra,104(sp)
    80038fc8:	842a                	mv	s0,a0
    80038fca:	e02e                	sd	a1,0(sp)
    80038fcc:	e432                	sd	a2,8(sp)
    80038fce:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:54414
    p = get_typed_array(ctx, this_val, /*is_dataview*/0);
    80038fd0:	c46e00ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:54415
    if (!p)
    80038fd4:	ed01                	bnez	a0,80038fec <js_typed_array_toSorted+0x32>
quickjs-nuttx/quickjs.c:54416
        return JS_EXCEPTION;
    80038fd6:	e082                	sd	zero,64(sp)
    80038fd8:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:54424
}
    80038fda:	70a6                	ld	ra,104(sp)
    80038fdc:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:54423
    return ret;
    80038fde:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:54424
}
    80038fe0:	6506                	ld	a0,64(sp)
    80038fe2:	65a6                	ld	a1,72(sp)
    80038fe4:	64e6                	ld	s1,88(sp)
    80038fe6:	6946                	ld	s2,80(sp)
    80038fe8:	6165                	addi	sp,sp,112
    80038fea:	8082                	ret
quickjs-nuttx/quickjs.c:54417
    arr = js_typed_array_constructor_ta(ctx, JS_UNDEFINED, this_val,
    80038fec:	478d                	li	a5,3
    80038fee:	6722                	ld	a4,8(sp)
    80038ff0:	fc3e                	sd	a5,56(sp)
    80038ff2:	6682                	ld	a3,0(sp)
    80038ff4:	00655783          	lhu	a5,6(a0)
    80038ff8:	460d                	li	a2,3
    80038ffa:	4581                	li	a1,0
    80038ffc:	8522                	mv	a0,s0
    80038ffe:	f802                	sd	zero,48(sp)
