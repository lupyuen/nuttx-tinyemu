    80013002:	000b071b          	sext.w	a4,s6
    80013006:	1cf71e63          	bne	a4,a5,800131e2 <JS_CallInternal+0x4274>
quickjs-nuttx/quickjs.c:14992
    if (p->class_id != JS_CLASS_FOR_IN_ITERATOR)
    8001300a:	006ad703          	lhu	a4,6(s5)
    8001300e:	47c5                	li	a5,17
    80013010:	1cf71963          	bne	a4,a5,800131e2 <JS_CallInternal+0x4274>
quickjs-nuttx/quickjs.c:15019
            if (JS_GetOwnPropertyNamesInternal(ctx, &tab_atom, &tab_atom_count,
    80013014:	f8040713          	addi	a4,s0,-128
    80013018:	73090793          	addi	a5,s2,1840
    8001301c:	97ba                	add	a5,a5,a4
    8001301e:	777d                	lui	a4,0xfffff
    80013020:	63070713          	addi	a4,a4,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
quickjs-nuttx/quickjs.c:14994
    it = p->u.for_in_iterator;
    80013024:	030ab983          	ld	s3,48(s5)
quickjs-nuttx/quickjs.c:15019
            if (JS_GetOwnPropertyNamesInternal(ctx, &tab_atom, &tab_atom_count,
    80013028:	9722                	add	a4,a4,s0
    8001302a:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:14997
        if (it->idx >= it->atom_count) {
    8001302c:	0109a683          	lw	a3,16(s3)
    80013030:	0149a783          	lw	a5,20(s3)
    80013034:	1ef6ec63          	bltu	a3,a5,8001322c <JS_CallInternal+0x42be>
quickjs-nuttx/quickjs.c:14998
            if (JS_IsNull(it->obj) || JS_IsUndefined(it->obj))
    80013038:	0089b783          	ld	a5,8(s3)
    8001303c:	4705                	li	a4,1
    8001303e:	37f9                	addiw	a5,a5,-2
    80013040:	1af77163          	bgeu	a4,a5,800131e2 <JS_CallInternal+0x4274>
quickjs-nuttx/quickjs.c:15001
            if (!it->in_prototype_chain) {
    80013044:	0189c783          	lbu	a5,24(s3)
    80013048:	0e079b63          	bnez	a5,8001313e <JS_CallInternal+0x41d0>
quickjs-nuttx/quickjs.c:15002
                ret = js_for_in_prepare_prototype_chain_enum(ctx, enum_obj);
    8001304c:	e9543823          	sd	s5,-368(s0)
    80013050:	e9643c23          	sd	s6,-360(s0)
js_for_in_prepare_prototype_chain_enum():
quickjs-nuttx/quickjs.c:14924
    it = p->u.for_in_iterator;
    80013054:	030aba03          	ld	s4,48(s5)
quickjs-nuttx/quickjs.c:14927
    obj1 = JS_DupValue(ctx, it->obj);
    80013058:	000a3503          	ld	a0,0(s4)
    8001305c:	008a3583          	ld	a1,8(s4)
    80013060:	bbaf70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:14940
        js_free_prop_enum(ctx, tab_atom, tab_atom_count);
    80013064:	f8040793          	addi	a5,s0,-128
quickjs-nuttx/quickjs.c:14927
    obj1 = JS_DupValue(ctx, it->obj);
    80013068:	ecb43c23          	sd	a1,-296(s0)
    8001306c:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:14940
        js_free_prop_enum(ctx, tab_atom, tab_atom_count);
    8001306e:	01278bb3          	add	s7,a5,s2
quickjs-nuttx/quickjs.c:14929
        obj1 = JS_GetPrototypeFree(ctx, obj1);
    80013072:	ed843603          	ld	a2,-296(s0)
    80013076:	85e2                	mv	a1,s8
    80013078:	8526                	mv	a0,s1
    8001307a:	ed843823          	sd	s8,-304(s0)
    8001307e:	391060ef          	jal	ra,80019c0e <JS_GetPrototypeFree>
    80013082:	eca43823          	sd	a0,-304(s0)
    80013086:	ecb43c23          	sd	a1,-296(s0)
JS_IsNull():
quickjs-nuttx/quickjs.h:600
    return JS_VALUE_GET_TAG(v) == JS_TAG_NULL;
    8001308a:	0005879b          	sext.w	a5,a1
js_for_in_prepare_prototype_chain_enum():
quickjs-nuttx/quickjs.c:14930
        if (JS_IsNull(obj1))
    8001308e:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:14929
        obj1 = JS_GetPrototypeFree(ctx, obj1);
    80013090:	862e                	mv	a2,a1
    80013092:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:14930
        if (JS_IsNull(obj1))
    80013094:	14e78363          	beq	a5,a4,800131da <JS_CallInternal+0x426c>
quickjs-nuttx/quickjs.c:14932
        if (JS_IsException(obj1))
    80013098:	4719                	li	a4,6
    8001309a:	00e79463          	bne	a5,a4,800130a2 <JS_CallInternal+0x4134>
    8001309e:	f60fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14934
        if (JS_GetOwnPropertyNamesInternal(ctx, &tab_atom, &tab_atom_count,
    800130a2:	77fd                	lui	a5,0xfffff
    800130a4:	5f878793          	addi	a5,a5,1528 # fffffffffffff5f8 <_ebss+0xffffffff7fefe492>
    800130a8:	97a2                	add	a5,a5,s0
    800130aa:	6390                	ld	a2,0(a5)
    800130ac:	86aa                	mv	a3,a0
    800130ae:	4745                	li	a4,17
    800130b0:	e8040593          	addi	a1,s0,-384
    800130b4:	8526                	mv	a0,s1
    800130b6:	008250ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    800130ba:	c911                	beqz	a0,800130ce <JS_CallInternal+0x4160>
quickjs-nuttx/quickjs.c:14937
            JS_FreeValue(ctx, obj1);
    800130bc:	ed043583          	ld	a1,-304(s0)
    800130c0:	ed843603          	ld	a2,-296(s0)
    800130c4:	8526                	mv	a0,s1
    800130c6:	ed8f80ef          	jal	ra,8000b79e <JS_FreeValue>
js_for_in_next():
quickjs-nuttx/quickjs.c:15003
                if (ret < 0)
    800130ca:	f34fc06f          	j	8000f7fe <JS_CallInternal+0x890>
js_for_in_prepare_prototype_chain_enum():
quickjs-nuttx/quickjs.c:14940
        js_free_prop_enum(ctx, tab_atom, tab_atom_count);
    800130ce:	740ba603          	lw	a2,1856(s7)
    800130d2:	e8043583          	ld	a1,-384(s0)
    800130d6:	8526                	mv	a0,s1
    800130d8:	880f80ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:14941
        if (tab_atom_count != 0) {
    800130dc:	740ba783          	lw	a5,1856(s7)
    800130e0:	cff9                	beqz	a5,800131be <JS_CallInternal+0x4250>
quickjs-nuttx/quickjs.c:14942
            JS_FreeValue(ctx, obj1);
    800130e2:	ed043583          	ld	a1,-304(s0)
    800130e6:	ed843603          	ld	a2,-296(s0)
    800130ea:	8526                	mv	a0,s1
    800130ec:	eb2f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14956
    if (it->is_array) {
    800130f0:	019a4783          	lbu	a5,25(s4)
    800130f4:	cf85                	beqz	a5,8001312c <JS_CallInternal+0x41be>
quickjs-nuttx/quickjs.c:14957
        if (JS_GetOwnPropertyNamesInternal(ctx, &tab_atom, &tab_atom_count,
    800130f6:	77fd                	lui	a5,0xfffff
    800130f8:	5f878793          	addi	a5,a5,1528 # fffffffffffff5f8 <_ebss+0xffffffff7fefe492>
    800130fc:	97a2                	add	a5,a5,s0
    800130fe:	000a3683          	ld	a3,0(s4)
    80013102:	6390                	ld	a2,0(a5)
    80013104:	02100713          	li	a4,33
    80013108:	e8040593          	addi	a1,s0,-384
    8001310c:	8526                	mv	a0,s1
    8001310e:	7b1240ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    80013112:	c119                	beqz	a0,80013118 <JS_CallInternal+0x41aa>
    80013114:	eeafc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14962
        it->is_array = FALSE;
    80013118:	000a0ca3          	sb	zero,25(s4)
quickjs-nuttx/quickjs.c:14963
        it->tab_atom = tab_atom;
    8001311c:	e8043783          	ld	a5,-384(s0)
    80013120:	02fa3023          	sd	a5,32(s4)
quickjs-nuttx/quickjs.c:14964
        it->atom_count = tab_atom_count;
    80013124:	740ba783          	lw	a5,1856(s7)
    80013128:	00fa2a23          	sw	a5,20(s4)
build_for_in_iterator():
quickjs-nuttx/quickjs.c:14896
            return JS_EXCEPTION;
    8001312c:	4b81                	li	s7,0
js_for_in_prepare_prototype_chain_enum():
quickjs-nuttx/quickjs.c:14968
        if (JS_DefinePropertyValue(ctx, enum_obj, it->tab_atom[i].atom, JS_NULL, JS_PROP_ENUMERABLE) < 0)
    8001312e:	4c09                	li	s8,2
quickjs-nuttx/quickjs.c:14967
    for(i = 0; i < it->atom_count; i++) {
    80013130:	014a2783          	lw	a5,20(s4)
    80013134:	0cfbe063          	bltu	s7,a5,800131f4 <JS_CallInternal+0x4286>
js_for_in_next():
quickjs-nuttx/quickjs.c:15007
                it->in_prototype_chain = TRUE;
    80013138:	4785                	li	a5,1
    8001313a:	00f98c23          	sb	a5,24(s3)
quickjs-nuttx/quickjs.c:15009
            it->obj = JS_GetPrototypeFree(ctx, it->obj);
    8001313e:	0009b583          	ld	a1,0(s3)
    80013142:	0089b603          	ld	a2,8(s3)
    80013146:	8526                	mv	a0,s1
    80013148:	2c7060ef          	jal	ra,80019c0e <JS_GetPrototypeFree>
    8001314c:	00b9b423          	sd	a1,8(s3)
    80013150:	00a9b023          	sd	a0,0(s3)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80013154:	2581                	sext.w	a1,a1
js_for_in_next():
quickjs-nuttx/quickjs.c:15010
            if (JS_IsException(it->obj))
    80013156:	4799                	li	a5,6
    80013158:	00f59463          	bne	a1,a5,80013160 <JS_CallInternal+0x41f2>
    8001315c:	ea2fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15012
            if (JS_IsNull(it->obj))
    80013160:	4789                	li	a5,2
    80013162:	08f58063          	beq	a1,a5,800131e2 <JS_CallInternal+0x4274>
quickjs-nuttx/quickjs.c:15016
            if (js_poll_interrupts(ctx))
    80013166:	8526                	mv	a0,s1
    80013168:	54b060ef          	jal	ra,80019eb2 <js_poll_interrupts>
    8001316c:	c119                	beqz	a0,80013172 <JS_CallInternal+0x4204>
    8001316e:	e90fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15019
            if (JS_GetOwnPropertyNamesInternal(ctx, &tab_atom, &tab_atom_count,
    80013172:	77fd                	lui	a5,0xfffff
    80013174:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80013178:	97a2                	add	a5,a5,s0
    8001317a:	0009b683          	ld	a3,0(s3)
    8001317e:	6390                	ld	a2,0(a5)
    80013180:	02100713          	li	a4,33
    80013184:	de040593          	addi	a1,s0,-544
    80013188:	8526                	mv	a0,s1
    8001318a:	735240ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    8001318e:	c119                	beqz	a0,80013194 <JS_CallInternal+0x4226>
    80013190:	e6efc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15024
            js_free_prop_enum(ctx, it->tab_atom, it->atom_count);
    80013194:	0149a603          	lw	a2,20(s3)
    80013198:	0209b583          	ld	a1,32(s3)
    8001319c:	8526                	mv	a0,s1
    8001319e:	fbbf70ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:15025
            it->tab_atom = tab_atom;
    800131a2:	de043783          	ld	a5,-544(s0)
    800131a6:	02f9b023          	sd	a5,32(s3)
quickjs-nuttx/quickjs.c:15026
            it->atom_count = tab_atom_count;
    800131aa:	f8040793          	addi	a5,s0,-128
    800131ae:	97ca                	add	a5,a5,s2
    800131b0:	7307a783          	lw	a5,1840(a5)
quickjs-nuttx/quickjs.c:15027
            it->idx = 0;
    800131b4:	0009a823          	sw	zero,16(s3)
quickjs-nuttx/quickjs.c:15026
            it->atom_count = tab_atom_count;
    800131b8:	00f9aa23          	sw	a5,20(s3)
quickjs-nuttx/quickjs.c:15027
            it->idx = 0;
    800131bc:	bd85                	j	8001302c <JS_CallInternal+0x40be>
js_for_in_prepare_prototype_chain_enum():
quickjs-nuttx/quickjs.c:14946
        if (js_poll_interrupts(ctx)) {
    800131be:	8526                	mv	a0,s1
    800131c0:	4f3060ef          	jal	ra,80019eb2 <js_poll_interrupts>
    800131c4:	ea0507e3          	beqz	a0,80013072 <JS_CallInternal+0x4104>
quickjs-nuttx/quickjs.c:14947
            JS_FreeValue(ctx, obj1);
    800131c8:	ed043583          	ld	a1,-304(s0)
    800131cc:	ed843603          	ld	a2,-296(s0)
    800131d0:	8526                	mv	a0,s1
    800131d2:	dccf80ef          	jal	ra,8000b79e <JS_FreeValue>
js_for_in_next():
quickjs-nuttx/quickjs.c:15003
                if (ret < 0)
    800131d6:	e28fc06f          	j	8000f7fe <JS_CallInternal+0x890>
js_for_in_prepare_prototype_chain_enum():
quickjs-nuttx/quickjs.c:14951
    JS_FreeValue(ctx, obj1);
    800131da:	85aa                	mv	a1,a0
    800131dc:	8526                	mv	a0,s1
    800131de:	dc0f80ef          	jal	ra,8000b79e <JS_FreeValue>
js_for_in_next():
quickjs-nuttx/quickjs.c:15066
    sp[0] = JS_UNDEFINED;
    800131e2:	478d                	li	a5,3
    800131e4:	00fcb423          	sd	a5,8(s9)
quickjs-nuttx/quickjs.c:15067
    sp[1] = JS_TRUE;
    800131e8:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:15066
    sp[0] = JS_UNDEFINED;
    800131ea:	000cb023          	sd	zero,0(s9)
quickjs-nuttx/quickjs.c:15067
    sp[1] = JS_TRUE;
    800131ee:	00fcb823          	sd	a5,16(s9)
    800131f2:	a041                	j	80013272 <JS_CallInternal+0x4304>
js_for_in_prepare_prototype_chain_enum():
quickjs-nuttx/quickjs.c:14968
        if (JS_DefinePropertyValue(ctx, enum_obj, it->tab_atom[i].atom, JS_NULL, JS_PROP_ENUMERABLE) < 0)
    800131f4:	020a3783          	ld	a5,32(s4)
    800131f8:	020b9693          	slli	a3,s7,0x20
    800131fc:	01d6d713          	srli	a4,a3,0x1d
    80013200:	97ba                	add	a5,a5,a4
    80013202:	43d4                	lw	a3,4(a5)
    80013204:	e9043583          	ld	a1,-368(s0)
    80013208:	e9843603          	ld	a2,-360(s0)
    8001320c:	4811                	li	a6,4
    8001320e:	4701                	li	a4,0
    80013210:	4789                	li	a5,2
    80013212:	8526                	mv	a0,s1
    80013214:	ee043823          	sd	zero,-272(s0)
    80013218:	ef843c23          	sd	s8,-264(s0)
    8001321c:	010050ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80013220:	00055463          	bgez	a0,80013228 <JS_CallInternal+0x42ba>
    80013224:	ddafc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14967
    for(i = 0; i < it->atom_count; i++) {
    80013228:	2b85                	addiw	s7,s7,1
    8001322a:	b719                	j	80013130 <JS_CallInternal+0x41c2>
js_for_in_next():
quickjs-nuttx/quickjs.c:15029
            if (it->is_array) {
    8001322c:	0199c783          	lbu	a5,25(s3)
quickjs-nuttx/quickjs.c:15031
                it->idx++;
    80013230:	0016871b          	addiw	a4,a3,1
quickjs-nuttx/quickjs.c:15029
            if (it->is_array) {
    80013234:	c3a5                	beqz	a5,80013294 <JS_CallInternal+0x4326>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    80013236:	80000bb7          	lui	s7,0x80000
    8001323a:	0176ebb3          	or	s7,a3,s7
js_for_in_next():
quickjs-nuttx/quickjs.c:15031
                it->idx++;
    8001323e:	00e9a823          	sw	a4,16(s3)
quickjs-nuttx/quickjs.c:15053
            ret = JS_GetOwnPropertyInternal(ctx, NULL, JS_VALUE_GET_OBJ(it->obj), prop);
    80013242:	0009b603          	ld	a2,0(s3)
    80013246:	86de                	mv	a3,s7
    80013248:	4581                	li	a1,0
    8001324a:	8526                	mv	a0,s1
    8001324c:	725030ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:15054
            if (ret < 0)
    80013250:	00055463          	bgez	a0,80013258 <JS_CallInternal+0x42ea>
    80013254:	daafc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15056
            if (ret)
    80013258:	dc050ae3          	beqz	a0,8001302c <JS_CallInternal+0x40be>
quickjs-nuttx/quickjs.c:15061
    sp[0] = JS_AtomToValue(ctx, prop);
    8001325c:	85de                	mv	a1,s7
    8001325e:	8526                	mv	a0,s1
    80013260:	0690c0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80013264:	00acb023          	sd	a0,0(s9)
    80013268:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:15062
    sp[1] = JS_FALSE;
    8001326c:	000cb823          	sd	zero,16(s9)
    80013270:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:15067
    sp[1] = JS_TRUE;
    80013272:	00fcbc23          	sd	a5,24(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17260
            BREAK;
    80013276:	000d4b03          	lbu	s6,0(s10)
    8001327a:	0005c797          	auipc	a5,0x5c
    8001327e:	bb678793          	addi	a5,a5,-1098 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17259
            sp += 2;
    80013282:	020c8c93          	addi	s9,s9,32
quickjs-nuttx/quickjs.c:17260
            BREAK;
    80013286:	003b1713          	slli	a4,s6,0x3
    8001328a:	97ba                	add	a5,a5,a4
    8001328c:	639c                	ld	a5,0(a5)
    8001328e:	0d05                	addi	s10,s10,1
    80013290:	f17fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_for_in_next():
quickjs-nuttx/quickjs.c:15034
                prop = it->tab_atom[it->idx].atom;
    80013294:	02069793          	slli	a5,a3,0x20
    80013298:	01d7d693          	srli	a3,a5,0x1d
    8001329c:	0209b783          	ld	a5,32(s3)
    800132a0:	97b6                	add	a5,a5,a3
    800132a2:	0047ab83          	lw	s7,4(a5)
quickjs-nuttx/quickjs.c:15035
                is_enumerable = it->tab_atom[it->idx].is_enumerable;
    800132a6:	0007aa03          	lw	s4,0(a5)
quickjs-nuttx/quickjs.c:15037
                if (it->in_prototype_chain) {
    800132aa:	0189c783          	lbu	a5,24(s3)
quickjs-nuttx/quickjs.c:15036
                it->idx++;
    800132ae:	00e9a823          	sw	a4,16(s3)
quickjs-nuttx/quickjs.c:15037
                if (it->in_prototype_chain) {
    800132b2:	c3b1                	beqz	a5,800132f6 <JS_CallInternal+0x4388>
quickjs-nuttx/quickjs.c:15039
                    ret = JS_GetOwnPropertyInternal(ctx, NULL, JS_VALUE_GET_OBJ(enum_obj), prop);
    800132b4:	86de                	mv	a3,s7
    800132b6:	8656                	mv	a2,s5
    800132b8:	4581                	li	a1,0
    800132ba:	8526                	mv	a0,s1
    800132bc:	6b5030ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:15040
                    if (ret < 0)
    800132c0:	00055463          	bgez	a0,800132c8 <JS_CallInternal+0x435a>
    800132c4:	d3afc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15042
                    if (ret)
    800132c8:	d60512e3          	bnez	a0,8001302c <JS_CallInternal+0x40be>
quickjs-nuttx/quickjs.c:15045
                    if (JS_DefinePropertyValue(ctx, enum_obj, prop, JS_NULL,
    800132cc:	4789                	li	a5,2
    800132ce:	4811                	li	a6,4
    800132d0:	4701                	li	a4,0
    800132d2:	86de                	mv	a3,s7
    800132d4:	85d6                	mv	a1,s5
    800132d6:	865a                	mv	a2,s6
    800132d8:	8526                	mv	a0,s1
    800132da:	ee043823          	sd	zero,-272(s0)
    800132de:	eef43c23          	sd	a5,-264(s0)
    800132e2:	c9543023          	sd	s5,-896(s0)
    800132e6:	c9643423          	sd	s6,-888(s0)
    800132ea:	743040ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800132ee:	00055463          	bgez	a0,800132f6 <JS_CallInternal+0x4388>
    800132f2:	d0cfc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15049
                if (!is_enumerable)
    800132f6:	f40a16e3          	bnez	s4,80013242 <JS_CallInternal+0x42d4>
    800132fa:	bb0d                	j	8001302c <JS_CallInternal+0x40be>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17262
            if (js_for_of_start(ctx, sp, FALSE))
    800132fc:	4601                	li	a2,0
    800132fe:	85e6                	mv	a1,s9
    80013300:	8526                	mv	a0,s1
    80013302:	002310ef          	jal	ra,80044304 <js_for_of_start>
    80013306:	c119                	beqz	a0,8001330c <JS_CallInternal+0x439e>
    80013308:	cf6fc06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_NewCatchOffset():
quickjs-nuttx/quickjs.h:520
    return JS_MKVAL(JS_TAG_CATCH_OFFSET, val);
    8001330c:	4795                	li	a5,5
    8001330e:	eef43c23          	sd	a5,-264(s0)
    80013312:	ee043823          	sd	zero,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17265
            *sp++ = JS_NewCatchOffset(ctx, 0);
    80013316:	000cb823          	sd	zero,16(s9)
    8001331a:	88f43c23          	sd	a5,-1896(s0)
    8001331e:	ef843783          	ld	a5,-264(s0)
JS_NewCatchOffset():
quickjs-nuttx/quickjs.h:520
    80013322:	88043823          	sd	zero,-1904(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17265
    80013326:	020c8c93          	addi	s9,s9,32
    8001332a:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17266
            BREAK;
    8001332e:	000d4b03          	lbu	s6,0(s10)
    80013332:	0005c797          	auipc	a5,0x5c
    80013336:	afe78793          	addi	a5,a5,-1282 # 8006ee30 <dispatch_table.4>
    8001333a:	0d05                	addi	s10,s10,1
    8001333c:	003b1713          	slli	a4,s6,0x3
    80013340:	97ba                	add	a5,a5,a4
    80013342:	639c                	ld	a5,0(a5)
    80013344:	e63fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17269
                int offset = -3 - pc[0];
    80013348:	000d4783          	lbu	a5,0(s10)
js_for_of_next():
quickjs-nuttx/quickjs.c:15259
    if (likely(!JS_IsUndefined(sp[offset]))) {
    8001334c:	5a75                	li	s4,-3
quickjs-nuttx/quickjs.c:15257
    int done = 1;
    8001334e:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:15259
    if (likely(!JS_IsUndefined(sp[offset]))) {
    80013350:	40fa0a3b          	subw	s4,s4,a5
    80013354:	0a12                	slli	s4,s4,0x4
quickjs-nuttx/quickjs.c:15257
    int done = 1;
    80013356:	e8e42823          	sw	a4,-368(s0)
quickjs-nuttx/quickjs.c:15256
    JSValue value = JS_UNDEFINED;
    8001335a:	ec043823          	sd	zero,-304(s0)
quickjs-nuttx/quickjs.c:15259
    if (likely(!JS_IsUndefined(sp[offset]))) {
    8001335e:	9a66                	add	s4,s4,s9
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80013360:	008a3603          	ld	a2,8(s4)
js_for_of_next():
quickjs-nuttx/quickjs.c:15259
    80013364:	470d                	li	a4,3
JS_CallInternal():
quickjs-nuttx/quickjs.c:17270
                pc += 1;
    80013366:	001d0993          	addi	s3,s10,1
js_for_of_next():
quickjs-nuttx/quickjs.c:15259
    if (likely(!JS_IsUndefined(sp[offset]))) {
    8001336a:	0006069b          	sext.w	a3,a2
    8001336e:	06e68463          	beq	a3,a4,800133d6 <JS_CallInternal+0x4468>
quickjs-nuttx/quickjs.c:15260
        value = JS_IteratorNext(ctx, sp[offset], sp[offset + 1], 0, NULL, &done);
    80013372:	5779                	li	a4,-2
    80013374:	9f1d                	subw	a4,a4,a5
    80013376:	0712                	slli	a4,a4,0x4
    80013378:	9766                	add	a4,a4,s9
    8001337a:	6314                	ld	a3,0(a4)
    8001337c:	000a3583          	ld	a1,0(s4)
    80013380:	6718                	ld	a4,8(a4)
    80013382:	e9040793          	addi	a5,s0,-368
    80013386:	8526                	mv	a0,s1
    80013388:	4a9300ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    8001338c:	eca43823          	sd	a0,-304(s0)
    80013390:	ecb43c23          	sd	a1,-296(s0)
quickjs-nuttx/quickjs.c:15261
        if (JS_IsException(value))
    80013394:	0005871b          	sext.w	a4,a1
    80013398:	4799                	li	a5,6
    8001339a:	04f71063          	bne	a4,a5,800133da <JS_CallInternal+0x446c>
quickjs-nuttx/quickjs.c:15262
            done = -1;
    8001339e:	57fd                	li	a5,-1
    800133a0:	e8f42823          	sw	a5,-368(s0)
quickjs-nuttx/quickjs.c:15266
            JS_FreeValue(ctx, sp[offset]);
    800133a4:	000a3583          	ld	a1,0(s4)
    800133a8:	008a3603          	ld	a2,8(s4)
    800133ac:	8526                	mv	a0,s1
    800133ae:	bf0f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15267
            sp[offset] = JS_UNDEFINED;
    800133b2:	478d                	li	a5,3
    800133b4:	000a3023          	sd	zero,0(s4)
    800133b8:	00fa3423          	sd	a5,8(s4)
quickjs-nuttx/quickjs.c:15268
            if (done < 0) {
    800133bc:	e9042783          	lw	a5,-368(s0)
    800133c0:	0807c063          	bltz	a5,80013440 <JS_CallInternal+0x44d2>
quickjs-nuttx/quickjs.c:15271
                JS_FreeValue(ctx, value);
    800133c4:	ed043583          	ld	a1,-304(s0)
    800133c8:	ed843603          	ld	a2,-296(s0)
    800133cc:	8526                	mv	a0,s1
    800133ce:	bd0f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15272
                value = JS_UNDEFINED;
    800133d2:	ec043823          	sd	zero,-304(s0)
quickjs-nuttx/quickjs.c:15256
    JSValue value = JS_UNDEFINED;
    800133d6:	458d                	li	a1,3
    800133d8:	a021                	j	800133e0 <JS_CallInternal+0x4472>
quickjs-nuttx/quickjs.c:15263
        if (done) {
    800133da:	e9042783          	lw	a5,-368(s0)
    800133de:	f3f9                	bnez	a5,800133a4 <JS_CallInternal+0x4436>
quickjs-nuttx/quickjs.c:15276
    sp[0] = value;
    800133e0:	ed043783          	ld	a5,-304(s0)
    800133e4:	ecb43c23          	sd	a1,-296(s0)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800133e8:	c8042a23          	sw	zero,-876(s0)
js_for_of_next():
quickjs-nuttx/quickjs.c:15276
    800133ec:	00fcb023          	sd	a5,0(s9)
    800133f0:	ed843783          	ld	a5,-296(s0)
    800133f4:	4705                	li	a4,1
    800133f6:	c8e43c23          	sd	a4,-872(s0)
    800133fa:	00fcb423          	sd	a5,8(s9)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    800133fe:	e9042783          	lw	a5,-368(s0)
    80013402:	eee43c23          	sd	a4,-264(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17273
                sp += 2;
    80013406:	020c8c93          	addi	s9,s9,32
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8001340a:	00f037b3          	snez	a5,a5
    8001340e:	c8f42823          	sw	a5,-880(s0)
    80013412:	c9043783          	ld	a5,-880(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17275
            BREAK;
    80013416:	0d09                	addi	s10,s10,2
    80013418:	eef43823          	sd	a5,-272(s0)
js_for_of_next():
quickjs-nuttx/quickjs.c:15277
    sp[1] = JS_NewBool(ctx, done);
    8001341c:	fefcb823          	sd	a5,-16(s9)
    80013420:	ef843783          	ld	a5,-264(s0)
    80013424:	fefcbc23          	sd	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17275
            BREAK;
    80013428:	fffd4b03          	lbu	s6,-1(s10)
    8001342c:	0005c797          	auipc	a5,0x5c
    80013430:	a0478793          	addi	a5,a5,-1532 # 8006ee30 <dispatch_table.4>
    80013434:	003b1713          	slli	a4,s6,0x3
    80013438:	97ba                	add	a5,a5,a4
    8001343a:	639c                	ld	a5,0(a5)
    8001343c:	d6bfb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17270
                pc += 1;
    80013440:	8d4e                	mv	s10,s3
    80013442:	bbcfc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17277
            if (js_for_of_start(ctx, sp, TRUE))
    80013446:	4605                	li	a2,1
    80013448:	85e6                	mv	a1,s9
    8001344a:	8526                	mv	a0,s1
    8001344c:	6b9300ef          	jal	ra,80044304 <js_for_of_start>
    80013450:	c119                	beqz	a0,80013456 <JS_CallInternal+0x44e8>
    80013452:	bacfc06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_NewCatchOffset():
quickjs-nuttx/quickjs.h:520
    return JS_MKVAL(JS_TAG_CATCH_OFFSET, val);
    80013456:	4795                	li	a5,5
    80013458:	eef43c23          	sd	a5,-264(s0)
    8001345c:	ee043823          	sd	zero,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17280
            *sp++ = JS_NewCatchOffset(ctx, 0);
    80013460:	000cb823          	sd	zero,16(s9)
    80013464:	8af43423          	sd	a5,-1880(s0)
    80013468:	ef843783          	ld	a5,-264(s0)
JS_NewCatchOffset():
quickjs-nuttx/quickjs.h:520
    8001346c:	8a043023          	sd	zero,-1888(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17280
    80013470:	020c8c93          	addi	s9,s9,32
    80013474:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17281
            BREAK;
    80013478:	000d4b03          	lbu	s6,0(s10)
    8001347c:	0005c797          	auipc	a5,0x5c
    80013480:	9b478793          	addi	a5,a5,-1612 # 8006ee30 <dispatch_table.4>
    80013484:	0d05                	addi	s10,s10,1
    80013486:	003b1713          	slli	a4,s6,0x3
    8001348a:	97ba                	add	a5,a5,a4
    8001348c:	639c                	ld	a5,0(a5)
    8001348e:	d19fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_iterator_get_value_done():
quickjs-nuttx/quickjs.c:15304
    obj = sp[-1];
    80013492:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:15305
    if (!JS_IsObject(obj)) {
    80013496:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:15304
    obj = sp[-1];
    80013498:	e8b43823          	sd	a1,-368(s0)
    8001349c:	ff8cb603          	ld	a2,-8(s9)
    800134a0:	e8c43c23          	sd	a2,-360(s0)
quickjs-nuttx/quickjs.c:15305
    if (!JS_IsObject(obj)) {
    800134a4:	ff8ca703          	lw	a4,-8(s9)
    800134a8:	00f70b63          	beq	a4,a5,800134be <JS_CallInternal+0x4550>
quickjs-nuttx/quickjs.c:15306
        JS_ThrowTypeError(ctx, "iterator must return an object");
    800134ac:	8526                	mv	a0,s1
    800134ae:	00057597          	auipc	a1,0x57
    800134b2:	90a58593          	addi	a1,a1,-1782 # 80069db8 <qjsc_repl+0x4808>
    800134b6:	1b6050ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:15307
        return -1;
    800134ba:	b44fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15309
    value = JS_IteratorGetCompleteValue(ctx, obj, &done);
    800134be:	e8040693          	addi	a3,s0,-384
    800134c2:	8526                	mv	a0,s1
    800134c4:	14b030ef          	jal	ra,80016e0e <JS_IteratorGetCompleteValue>
    800134c8:	ecb43c23          	sd	a1,-296(s0)
    800134cc:	eca43823          	sd	a0,-304(s0)
quickjs-nuttx/quickjs.c:15310
    if (JS_IsException(value))
    800134d0:	2581                	sext.w	a1,a1
    800134d2:	4799                	li	a5,6
    800134d4:	00f59463          	bne	a1,a5,800134dc <JS_CallInternal+0x456e>
    800134d8:	b26fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:15312
    JS_FreeValue(ctx, obj);
    800134dc:	e9043583          	ld	a1,-368(s0)
    800134e0:	e9843603          	ld	a2,-360(s0)
    800134e4:	8526                	mv	a0,s1
JS_CallInternal():
quickjs-nuttx/quickjs.c:17285
            sp += 1;
    800134e6:	0cc1                	addi	s9,s9,16
js_iterator_get_value_done():
quickjs-nuttx/quickjs.c:15312
    JS_FreeValue(ctx, obj);
    800134e8:	ab6f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15313
    sp[-1] = value;
    800134ec:	ed043783          	ld	a5,-304(s0)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800134f0:	ca042223          	sw	zero,-860(s0)
    800134f4:	4705                	li	a4,1
js_iterator_get_value_done():
quickjs-nuttx/quickjs.c:15313
    800134f6:	fefcb023          	sd	a5,-32(s9)
    800134fa:	ed843783          	ld	a5,-296(s0)
    800134fe:	cae43423          	sd	a4,-856(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17286
            BREAK;
    80013502:	0d05                	addi	s10,s10,1
js_iterator_get_value_done():
quickjs-nuttx/quickjs.c:15313
    sp[-1] = value;
    80013504:	fefcb423          	sd	a5,-24(s9)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80013508:	e8042783          	lw	a5,-384(s0)
    8001350c:	eee43c23          	sd	a4,-264(s0)
    80013510:	00f037b3          	snez	a5,a5
    80013514:	caf42023          	sw	a5,-864(s0)
    80013518:	ca043783          	ld	a5,-864(s0)
    8001351c:	eef43823          	sd	a5,-272(s0)
js_iterator_get_value_done():
quickjs-nuttx/quickjs.c:15314
    sp[0] = JS_NewBool(ctx, done);
    80013520:	fefcb823          	sd	a5,-16(s9)
    80013524:	ef843783          	ld	a5,-264(s0)
    80013528:	fefcbc23          	sd	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17286
            BREAK;
    8001352c:	fffd4b03          	lbu	s6,-1(s10)
    80013530:	0005c797          	auipc	a5,0x5c
    80013534:	90078793          	addi	a5,a5,-1792 # 8006ee30 <dispatch_table.4>
    80013538:	003b1713          	slli	a4,s6,0x3
    8001353c:	97ba                	add	a5,a5,a4
    8001353e:	639c                	ld	a5,0(a5)
    80013540:	c67fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17288
            if (unlikely(!JS_IsObject(sp[-1]))) {
    80013544:	ff8ca703          	lw	a4,-8(s9)
    80013548:	57fd                	li	a5,-1
    8001354a:	00f70b63          	beq	a4,a5,80013560 <JS_CallInternal+0x45f2>
quickjs-nuttx/quickjs.c:17289
                JS_ThrowTypeError(ctx, "iterator must return an object");
    8001354e:	8526                	mv	a0,s1
    80013550:	00057597          	auipc	a1,0x57
    80013554:	86858593          	addi	a1,a1,-1944 # 80069db8 <qjsc_repl+0x4808>
    80013558:	114050ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:17290
                goto exception;
    8001355c:	aa2fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17292
            BREAK;
    80013560:	000d4b03          	lbu	s6,0(s10)
    80013564:	0005c797          	auipc	a5,0x5c
    80013568:	8cc78793          	addi	a5,a5,-1844 # 8006ee30 <dispatch_table.4>
    8001356c:	0d05                	addi	s10,s10,1
    8001356e:	003b1713          	slli	a4,s6,0x3
    80013572:	97ba                	add	a5,a5,a4
    80013574:	639c                	ld	a5,0(a5)
    80013576:	c31fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17297
            JS_FreeValue(ctx, sp[-1]); /* drop the next method */
    8001357a:	fe0cb583          	ld	a1,-32(s9)
    8001357e:	fe8cb603          	ld	a2,-24(s9)
    80013582:	8526                	mv	a0,s1
    80013584:	fe0c8993          	addi	s3,s9,-32
    80013588:	a16f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17299
            if (!JS_IsUndefined(sp[-1])) {
    8001358c:	fd8ca703          	lw	a4,-40(s9)
    80013590:	478d                	li	a5,3
    80013592:	fd0c8a13          	addi	s4,s9,-48
    80013596:	02f70463          	beq	a4,a5,800135be <JS_CallInternal+0x4650>
quickjs-nuttx/quickjs.c:17300
                if (JS_IteratorClose(ctx, sp[-1], FALSE))
    8001359a:	fd0cb583          	ld	a1,-48(s9)
    8001359e:	008a3603          	ld	a2,8(s4)
    800135a2:	4681                	li	a3,0
    800135a4:	8526                	mv	a0,s1
    800135a6:	694050ef          	jal	ra,80018c3a <JS_IteratorClose>
    800135aa:	c119                	beqz	a0,800135b0 <JS_CallInternal+0x4642>
    800135ac:	3780306f          	j	80016924 <JS_CallInternal+0x79b6>
quickjs-nuttx/quickjs.c:17302
                JS_FreeValue(ctx, sp[-1]);
    800135b0:	000a3583          	ld	a1,0(s4)
    800135b4:	008a3603          	ld	a2,8(s4)
    800135b8:	8526                	mv	a0,s1
    800135ba:	9e4f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17305
            BREAK;
    800135be:	000d4b03          	lbu	s6,0(s10)
    800135c2:	0005c797          	auipc	a5,0x5c
    800135c6:	86e78793          	addi	a5,a5,-1938 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17304
            sp--;
    800135ca:	8cd2                	mv	s9,s4
quickjs-nuttx/quickjs.c:17305
            BREAK;
    800135cc:	003b1713          	slli	a4,s6,0x3
    800135d0:	97ba                	add	a5,a5,a4
    800135d2:	639c                	ld	a5,0(a5)
    800135d4:	0d05                	addi	s10,s10,1
    800135d6:	bd1fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17310
                ret_val = *--sp;
    800135da:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:17311
                while (sp > stack_buf &&
    800135de:	4995                	li	s3,5
quickjs-nuttx/quickjs.c:17310
                ret_val = *--sp;
    800135e0:	1cc1                	addi	s9,s9,-16
    800135e2:	eef43823          	sd	a5,-272(s0)
    800135e6:	008cb783          	ld	a5,8(s9)
    800135ea:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:17311
                while (sp > stack_buf &&
    800135ee:	77fd                	lui	a5,0xfffff
    800135f0:	60078793          	addi	a5,a5,1536 # fffffffffffff600 <_ebss+0xffffffff7fefe49a>
    800135f4:	97a2                	add	a5,a5,s0
    800135f6:	639c                	ld	a5,0(a5)
    800135f8:	0597f463          	bgeu	a5,s9,80013640 <JS_CallInternal+0x46d2>
quickjs-nuttx/quickjs.c:17311 (discriminator 1)
    800135fc:	ff8ca783          	lw	a5,-8(s9)
    80013600:	03379763          	bne	a5,s3,8001362e <JS_CallInternal+0x46c0>
quickjs-nuttx/quickjs.c:17320
                sp[-1] = ret_val;
    80013604:	ef043783          	ld	a5,-272(s0)
quickjs-nuttx/quickjs.c:17322
            BREAK;
    80013608:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:17320
                sp[-1] = ret_val;
    8001360a:	fefcb823          	sd	a5,-16(s9)
    8001360e:	ef843783          	ld	a5,-264(s0)
    80013612:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17322
            BREAK;
    80013616:	fffd4b03          	lbu	s6,-1(s10)
    8001361a:	0005c797          	auipc	a5,0x5c
    8001361e:	81678793          	addi	a5,a5,-2026 # 8006ee30 <dispatch_table.4>
    80013622:	003b1713          	slli	a4,s6,0x3
    80013626:	97ba                	add	a5,a5,a4
    80013628:	639c                	ld	a5,0(a5)
    8001362a:	b7dfb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17313
                    JS_FreeValue(ctx, *--sp);
    8001362e:	ff0cb583          	ld	a1,-16(s9)
    80013632:	ff8cb603          	ld	a2,-8(s9)
    80013636:	8526                	mv	a0,s1
    80013638:	1cc1                	addi	s9,s9,-16
    8001363a:	964f80ef          	jal	ra,8000b79e <JS_FreeValue>
    8001363e:	bf45                	j	800135ee <JS_CallInternal+0x4680>
quickjs-nuttx/quickjs.c:17315
                if (unlikely(sp == stack_buf)) {
    80013640:	77fd                	lui	a5,0xfffff
    80013642:	60078793          	addi	a5,a5,1536 # fffffffffffff600 <_ebss+0xffffffff7fefe49a>
    80013646:	97a2                	add	a5,a5,s0
    80013648:	639c                	ld	a5,0(a5)
    8001364a:	fb979de3          	bne	a5,s9,80013604 <JS_CallInternal+0x4696>
quickjs-nuttx/quickjs.c:17316
                    JS_ThrowInternalError(ctx, "nip_catch");
    8001364e:	8526                	mv	a0,s1
    80013650:	00056597          	auipc	a1,0x56
    80013654:	78858593          	addi	a1,a1,1928 # 80069dd8 <qjsc_repl+0x4828>
    80013658:	2a0060ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:17317
                    JS_FreeValue(ctx, ret_val);
    8001365c:	ef043583          	ld	a1,-272(s0)
    80013660:	ef843603          	ld	a2,-264(s0)
    80013664:	8526                	mv	a0,s1
    80013666:	938f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17318
                    goto exception;
    8001366a:	994fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17328
                ret = JS_Call(ctx, sp[-3], sp[-4],
    8001366e:	fc0cb683          	ld	a3,-64(s9)
    80013672:	fc8cb703          	ld	a4,-56(s9)
    80013676:	fd0cb583          	ld	a1,-48(s9)
    8001367a:	fd8cb603          	ld	a2,-40(s9)
    8001367e:	ff0c8993          	addi	s3,s9,-16
    80013682:	4785                	li	a5,1
    80013684:	884e                	mv	a6,s3
    80013686:	8526                	mv	a0,s1
    80013688:	77c2f0ef          	jal	ra,80042e04 <JS_Call>
    8001368c:	eeb43c23          	sd	a1,-264(s0)
    80013690:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:17330
                if (JS_IsException(ret))
    80013694:	2581                	sext.w	a1,a1
    80013696:	4799                	li	a5,6
    80013698:	00f59463          	bne	a1,a5,800136a0 <JS_CallInternal+0x4732>
    8001369c:	962fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17332
                JS_FreeValue(ctx, sp[-1]);
    800136a0:	ff0cb583          	ld	a1,-16(s9)
    800136a4:	ff8cb603          	ld	a2,-8(s9)
    800136a8:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17335
            BREAK;
    800136aa:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:17332
                JS_FreeValue(ctx, sp[-1]);
    800136ac:	8f2f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17333
                sp[-1] = ret;
    800136b0:	ef043783          	ld	a5,-272(s0)
    800136b4:	fefcb823          	sd	a5,-16(s9)
    800136b8:	ef843783          	ld	a5,-264(s0)
    800136bc:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17335
            BREAK;
    800136c0:	fffd4b03          	lbu	s6,-1(s10)
    800136c4:	0005b797          	auipc	a5,0x5b
    800136c8:	76c78793          	addi	a5,a5,1900 # 8006ee30 <dispatch_table.4>
    800136cc:	003b1713          	slli	a4,s6,0x3
    800136d0:	97ba                	add	a5,a5,a4
    800136d2:	639c                	ld	a5,0(a5)
    800136d4:	ad3fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17343
                flags = *pc++;
    800136d8:	000d4a03          	lbu	s4,0(s10)
    800136dc:	001d0993          	addi	s3,s10,1
quickjs-nuttx/quickjs.c:17344
                method = JS_GetProperty(ctx, sp[-4], (flags & 1) ?
    800136e0:	46dd                	li	a3,23
    800136e2:	001a7793          	andi	a5,s4,1
    800136e6:	e391                	bnez	a5,800136ea <JS_CallInternal+0x477c>
    800136e8:	4699                	li	a3,6
    800136ea:	fc0cb703          	ld	a4,-64(s9)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 4)
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800136ee:	4801                	li	a6,0
    800136f0:	8526                	mv	a0,s1
    800136f2:	eee43823          	sd	a4,-272(s0)
    800136f6:	fc8cb783          	ld	a5,-56(s9)
    800136fa:	85ba                	mv	a1,a4
    800136fc:	863e                	mv	a2,a5
    800136fe:	eef43c23          	sd	a5,-264(s0)
    80013702:	3a8030ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80013706:	8aa43823          	sd	a0,-1872(s0)
    8001370a:	8ab43c23          	sd	a1,-1864(s0)
    8001370e:	e8a43823          	sd	a0,-368(s0)
    80013712:	e8b43c23          	sd	a1,-360(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17346 (discriminator 4)
                if (JS_IsException(method))
    80013716:	0005871b          	sext.w	a4,a1
    8001371a:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 4)
    8001371c:	862e                	mv	a2,a1
JS_CallInternal():
quickjs-nuttx/quickjs.c:17346 (discriminator 4)
    8001371e:	0af70563          	beq	a4,a5,800137c8 <JS_CallInternal+0x485a>
quickjs-nuttx/quickjs.c:17348 (discriminator 1)
                if (JS_IsUndefined(method) || JS_IsNull(method)) {
    80013722:	ffe5879b          	addiw	a5,a1,-2
    80013726:	4705                	li	a4,1
    80013728:	08f77e63          	bgeu	a4,a5,800137c4 <JS_CallInternal+0x4856>
quickjs-nuttx/quickjs.c:17351
                    if (flags & 2) {
    8001372c:	002a7793          	andi	a5,s4,2
quickjs-nuttx/quickjs.c:16364
            sp[-4] = JS_DupValue(ctx, sp[0]);
    80013730:	fc0c8713          	addi	a4,s9,-64
quickjs-nuttx/quickjs.c:17351
                    if (flags & 2) {
    80013734:	c7c1                	beqz	a5,800137bc <JS_CallInternal+0x484e>
quickjs-nuttx/quickjs.c:17353
                        ret = JS_CallFree(ctx, method, sp[-4],
    80013736:	4801                	li	a6,0
    80013738:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:17356
                        ret = JS_CallFree(ctx, method, sp[-4],
    8001373a:	6718                	ld	a4,8(a4)
    8001373c:	fc0cb683          	ld	a3,-64(s9)
    80013740:	85aa                	mv	a1,a0
    80013742:	8526                	mv	a0,s1
    80013744:	330030ef          	jal	ra,80016a74 <JS_CallFree>
    80013748:	ecb43c23          	sd	a1,-296(s0)
quickjs-nuttx/quickjs.c:17359
                    if (JS_IsException(ret))
    8001374c:	ed842703          	lw	a4,-296(s0)
quickjs-nuttx/quickjs.c:17356
                        ret = JS_CallFree(ctx, method, sp[-4],
    80013750:	eca43823          	sd	a0,-304(s0)
quickjs-nuttx/quickjs.c:17359
                    if (JS_IsException(ret))
    80013754:	4799                	li	a5,6
    80013756:	06f70963          	beq	a4,a5,800137c8 <JS_CallInternal+0x485a>
quickjs-nuttx/quickjs.c:17361
                    JS_FreeValue(ctx, sp[-1]);
    8001375a:	ff0cb583          	ld	a1,-16(s9)
    8001375e:	ff8cb603          	ld	a2,-8(s9)
    80013762:	8526                	mv	a0,s1
    80013764:	83af80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17362
                    sp[-1] = ret;
    80013768:	ed043783          	ld	a5,-304(s0)
    8001376c:	fefcb823          	sd	a5,-16(s9)
    80013770:	ed843783          	ld	a5,-296(s0)
    80013774:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17363
                    ret_flag = FALSE;
    80013778:	4781                	li	a5,0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8001377a:	8c042223          	sw	zero,-1852(s0)
    8001377e:	8cf42023          	sw	a5,-1856(s0)
    80013782:	8c043783          	ld	a5,-1856(s0)
    80013786:	4705                	li	a4,1
    80013788:	eee43c23          	sd	a4,-264(s0)
    8001378c:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17365
                sp[0] = JS_NewBool(ctx, ret_flag);
    80013790:	00fcb023          	sd	a5,0(s9)
    80013794:	ef843783          	ld	a5,-264(s0)
    80013798:	8ce43423          	sd	a4,-1848(s0)
quickjs-nuttx/quickjs.c:17366
                sp += 1;
    8001379c:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:17365
                sp[0] = JS_NewBool(ctx, ret_flag);
    8001379e:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17368
            BREAK;
    800137a2:	001d4b03          	lbu	s6,1(s10)
    800137a6:	0005b797          	auipc	a5,0x5b
    800137aa:	68a78793          	addi	a5,a5,1674 # 8006ee30 <dispatch_table.4>
    800137ae:	0d09                	addi	s10,s10,2
    800137b0:	003b1713          	slli	a4,s6,0x3
    800137b4:	97ba                	add	a5,a5,a4
    800137b6:	639c                	ld	a5,0(a5)
    800137b8:	9effb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17356
                        ret = JS_CallFree(ctx, method, sp[-4],
    800137bc:	ff0c8813          	addi	a6,s9,-16
    800137c0:	4785                	li	a5,1
    800137c2:	bfa5                	j	8001373a <JS_CallInternal+0x47cc>
quickjs-nuttx/quickjs.c:17349
                    ret_flag = TRUE;
    800137c4:	4785                	li	a5,1
    800137c6:	bf55                	j	8001377a <JS_CallInternal+0x480c>
quickjs-nuttx/quickjs.c:17347 (discriminator 1)
                    goto exception;
    800137c8:	8d4e                	mv	s10,s3
    800137ca:	834fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17375
                op1 = sp[-1];
    800137ce:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:17376
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    800137d2:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:17375
                op1 = sp[-1];
    800137d4:	ecb43823          	sd	a1,-304(s0)
    800137d8:	ff8cb603          	ld	a2,-8(s9)
    800137dc:	ecc43c23          	sd	a2,-296(s0)
    800137e0:	ff0ca503          	lw	a0,-16(s9)
quickjs-nuttx/quickjs.c:17376
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    800137e4:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:17377
                    res = JS_VALUE_GET_INT(op1) != 0;
    800137e8:	00a03533          	snez	a0,a0
quickjs-nuttx/quickjs.c:17376
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    800137ec:	00e7f563          	bgeu	a5,a4,800137f6 <JS_CallInternal+0x4888>
quickjs-nuttx/quickjs.c:17379
                    res = JS_ToBoolFree(ctx, op1);
    800137f0:	8526                	mv	a0,s1
    800137f2:	b22f80ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:17381
                sp[-1] = JS_NewBool(ctx, !res);
    800137f6:	00153513          	seqz	a0,a0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    800137fa:	8c042a23          	sw	zero,-1836(s0)
    800137fe:	8ca42823          	sw	a0,-1840(s0)
    80013802:	8d043783          	ld	a5,-1840(s0)
    80013806:	4705                	li	a4,1
    80013808:	eee43c23          	sd	a4,-264(s0)
    8001380c:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17381
    80013810:	fefcb823          	sd	a5,-16(s9)
    80013814:	ef843783          	ld	a5,-264(s0)
    80013818:	8ce43c23          	sd	a4,-1832(s0)
quickjs-nuttx/quickjs.c:17383
            BREAK;
    8001381c:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:17381
                sp[-1] = JS_NewBool(ctx, !res);
    8001381e:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17383
            BREAK;
    80013822:	fffd4b03          	lbu	s6,-1(s10)
    80013826:	0005b797          	auipc	a5,0x5b
    8001382a:	60a78793          	addi	a5,a5,1546 # 8006ee30 <dispatch_table.4>
    8001382e:	003b1713          	slli	a4,s6,0x3
    80013832:	97ba                	add	a5,a5,a4
    80013834:	639c                	ld	a5,0(a5)
    80013836:	971fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    8001383a:	001d4783          	lbu	a5,1(s10)
    8001383e:	000d4683          	lbu	a3,0(s10)
    80013842:	ff0cb703          	ld	a4,-16(s9)
    80013846:	07a2                	slli	a5,a5,0x8
    80013848:	8fd5                	or	a5,a5,a3
    8001384a:	002d4683          	lbu	a3,2(s10)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001384e:	4801                	li	a6,0
    80013850:	85ba                	mv	a1,a4
get_u32():
quickjs-nuttx/cutils.h:170
    80013852:	06c2                	slli	a3,a3,0x10
    80013854:	8fd5                	or	a5,a5,a3
    80013856:	003d4683          	lbu	a3,3(s10)
    8001385a:	eee43823          	sd	a4,-272(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001385e:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    80013860:	06e2                	slli	a3,a3,0x18
    80013862:	8edd                	or	a3,a3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17390
                pc += 4;
    80013864:	ff8cb783          	ld	a5,-8(s9)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80013868:	2681                	sext.w	a3,a3
JS_CallInternal():
quickjs-nuttx/quickjs.c:17390
    8001386a:	004d0993          	addi	s3,s10,4
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001386e:	863e                	mv	a2,a5
    80013870:	eef43c23          	sd	a5,-264(s0)
    80013874:	236030ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80013878:	8eb43423          	sd	a1,-1816(s0)
    8001387c:	ecb43c23          	sd	a1,-296(s0)
    80013880:	8ea43023          	sd	a0,-1824(s0)
    80013884:	eca43823          	sd	a0,-304(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17393
                if (unlikely(JS_IsException(val)))
    80013888:	2581                	sext.w	a1,a1
    8001388a:	4799                	li	a5,6
    8001388c:	00f59563          	bne	a1,a5,80013896 <JS_CallInternal+0x4928>
quickjs-nuttx/quickjs.c:17390
                pc += 4;
    80013890:	8d4e                	mv	s10,s3
    80013892:	f6dfb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17395
                JS_FreeValue(ctx, sp[-1]);
    80013896:	ff0cb583          	ld	a1,-16(s9)
    8001389a:	ff8cb603          	ld	a2,-8(s9)
    8001389e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17398
            BREAK;
    800138a0:	0d15                	addi	s10,s10,5
quickjs-nuttx/quickjs.c:17395
                JS_FreeValue(ctx, sp[-1]);
    800138a2:	efdf70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17396
                sp[-1] = val;
    800138a6:	ed043783          	ld	a5,-304(s0)
    800138aa:	fefcb823          	sd	a5,-16(s9)
    800138ae:	ed843783          	ld	a5,-296(s0)
    800138b2:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17398
            BREAK;
    800138b6:	fffd4b03          	lbu	s6,-1(s10)
    800138ba:	0005b797          	auipc	a5,0x5b
    800138be:	57678793          	addi	a5,a5,1398 # 8006ee30 <dispatch_table.4>
    800138c2:	003b1713          	slli	a4,s6,0x3
    800138c6:	97ba                	add	a5,a5,a4
    800138c8:	639c                	ld	a5,0(a5)
    800138ca:	8ddfb06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    800138ce:	001d4783          	lbu	a5,1(s10)
    800138d2:	000d4683          	lbu	a3,0(s10)
    800138d6:	ff0cb703          	ld	a4,-16(s9)
    800138da:	07a2                	slli	a5,a5,0x8
    800138dc:	8fd5                	or	a5,a5,a3
    800138de:	002d4683          	lbu	a3,2(s10)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800138e2:	4801                	li	a6,0
    800138e4:	85ba                	mv	a1,a4
get_u32():
quickjs-nuttx/cutils.h:170
    800138e6:	06c2                	slli	a3,a3,0x10
    800138e8:	8fd5                	or	a5,a5,a3
    800138ea:	003d4683          	lbu	a3,3(s10)
    800138ee:	eee43823          	sd	a4,-272(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800138f2:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    800138f4:	06e2                	slli	a3,a3,0x18
    800138f6:	8edd                	or	a3,a3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17405
                pc += 4;
    800138f8:	ff8cb783          	ld	a5,-8(s9)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800138fc:	2681                	sext.w	a3,a3
JS_CallInternal():
quickjs-nuttx/quickjs.c:17405
    800138fe:	004d0993          	addi	s3,s10,4
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80013902:	863e                	mv	a2,a5
    80013904:	eef43c23          	sd	a5,-264(s0)
    80013908:	1a2030ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001390c:	8eb43c23          	sd	a1,-1800(s0)
    80013910:	ecb43c23          	sd	a1,-296(s0)
    80013914:	8ea43823          	sd	a0,-1808(s0)
    80013918:	eca43823          	sd	a0,-304(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17408
                if (unlikely(JS_IsException(val)))
    8001391c:	2581                	sext.w	a1,a1
    8001391e:	4799                	li	a5,6
    80013920:	00f59563          	bne	a1,a5,8001392a <JS_CallInternal+0x49bc>
quickjs-nuttx/quickjs.c:17405
                pc += 4;
    80013924:	8d4e                	mv	s10,s3
    80013926:	ed9fb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17410
                *sp++ = val;
    8001392a:	00acb023          	sd	a0,0(s9)
    8001392e:	ed843783          	ld	a5,-296(s0)
    80013932:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:17412
            BREAK;
    80013934:	0d15                	addi	s10,s10,5
quickjs-nuttx/quickjs.c:17410
                *sp++ = val;
    80013936:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17412
            BREAK;
    8001393a:	fffd4b03          	lbu	s6,-1(s10)
    8001393e:	0005b797          	auipc	a5,0x5b
    80013942:	4f278793          	addi	a5,a5,1266 # 8006ee30 <dispatch_table.4>
    80013946:	003b1713          	slli	a4,s6,0x3
    8001394a:	97ba                	add	a5,a5,a4
    8001394c:	639c                	ld	a5,0(a5)
    8001394e:	859fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    80013952:	001d4783          	lbu	a5,1(s10)
    80013956:	000d4683          	lbu	a3,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17421
                ret = JS_SetPropertyInternal(ctx, sp[-2], atom, sp[-1], sp[-2],
    8001395a:	fe0c8993          	addi	s3,s9,-32
get_u32():
quickjs-nuttx/cutils.h:170
    8001395e:	07a2                	slli	a5,a5,0x8
    80013960:	8fd5                	or	a5,a5,a3
    80013962:	002d4683          	lbu	a3,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17421
    80013966:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17419
                pc += 4;
    80013968:	004d0a13          	addi	s4,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    8001396c:	06c2                	slli	a3,a3,0x10
    8001396e:	8fd5                	or	a5,a5,a3
    80013970:	003d4683          	lbu	a3,3(s10)
    80013974:	06e2                	slli	a3,a3,0x18
    80013976:	8edd                	or	a3,a3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17421
                ret = JS_SetPropertyInternal(ctx, sp[-2], atom, sp[-1], sp[-2],
    80013978:	67a1                	lui	a5,0x8
    8001397a:	e03e                	sd	a5,0(sp)
    8001397c:	fe0cb803          	ld	a6,-32(s9)
    80013980:	0089b883          	ld	a7,8(s3)
    80013984:	ff0cb703          	ld	a4,-16(s9)
    80013988:	ff8cb783          	ld	a5,-8(s9)
    8001398c:	85c2                	mv	a1,a6
    8001398e:	8646                	mv	a2,a7
    80013990:	2681                	sext.w	a3,a3
    80013992:	1b9030ef          	jal	ra,8001734a <JS_SetPropertyInternal>
quickjs-nuttx/quickjs.c:17423
                JS_FreeValue(ctx, sp[-2]);
    80013996:	fe0cb583          	ld	a1,-32(s9)
    8001399a:	0089b603          	ld	a2,8(s3)
quickjs-nuttx/quickjs.c:17421
                ret = JS_SetPropertyInternal(ctx, sp[-2], atom, sp[-1], sp[-2],
    8001399e:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:17423
                JS_FreeValue(ctx, sp[-2]);
    800139a0:	8526                	mv	a0,s1
    800139a2:	dfdf70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17425
                if (unlikely(ret < 0))
    800139a6:	000ad463          	bgez	s5,800139ae <JS_CallInternal+0x4a40>
    800139aa:	7810206f          	j	8001692a <JS_CallInternal+0x79bc>
quickjs-nuttx/quickjs.c:17428
            BREAK;
    800139ae:	004d4b03          	lbu	s6,4(s10)
    800139b2:	0005b797          	auipc	a5,0x5b
    800139b6:	47e78793          	addi	a5,a5,1150 # 8006ee30 <dispatch_table.4>
    800139ba:	8cce                	mv	s9,s3
    800139bc:	003b1713          	slli	a4,s6,0x3
    800139c0:	97ba                	add	a5,a5,a4
    800139c2:	639c                	ld	a5,0(a5)
    800139c4:	0d15                	addi	s10,s10,5
    800139c6:	fe0fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    800139ca:	001d4783          	lbu	a5,1(s10)
    800139ce:	000d4583          	lbu	a1,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17437
                val = JS_NewSymbolFromAtom(ctx, atom, JS_ATOM_TYPE_PRIVATE);
    800139d2:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    800139d4:	07a2                	slli	a5,a5,0x8
    800139d6:	8fcd                	or	a5,a5,a1
    800139d8:	002d4583          	lbu	a1,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17436
                pc += 4;
    800139dc:	004d0993          	addi	s3,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    800139e0:	05c2                	slli	a1,a1,0x10
    800139e2:	8fcd                	or	a5,a5,a1
    800139e4:	003d4583          	lbu	a1,3(s10)
    800139e8:	05e2                	slli	a1,a1,0x18
    800139ea:	8ddd                	or	a1,a1,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17437
                val = JS_NewSymbolFromAtom(ctx, atom, JS_ATOM_TYPE_PRIVATE);
    800139ec:	2581                	sext.w	a1,a1
    800139ee:	4d40a0ef          	jal	ra,8001dec2 <JS_NewSymbolFromAtom.constprop.0>
    800139f2:	eeb43c23          	sd	a1,-264(s0)
    800139f6:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:17438
                if (JS_IsException(val))
    800139fa:	2581                	sext.w	a1,a1
    800139fc:	4799                	li	a5,6
    800139fe:	00f59563          	bne	a1,a5,80013a08 <JS_CallInternal+0x4a9a>
quickjs-nuttx/quickjs.c:17436
                pc += 4;
    80013a02:	8d4e                	mv	s10,s3
    80013a04:	dfbfb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17440
                *sp++ = val;
    80013a08:	00acb023          	sd	a0,0(s9)
    80013a0c:	ef843783          	ld	a5,-264(s0)
    80013a10:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:17442
            BREAK;
    80013a12:	0d15                	addi	s10,s10,5
quickjs-nuttx/quickjs.c:17440
                *sp++ = val;
    80013a14:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17442
            BREAK;
    80013a18:	fffd4b03          	lbu	s6,-1(s10)
    80013a1c:	0005b797          	auipc	a5,0x5b
    80013a20:	41478793          	addi	a5,a5,1044 # 8006ee30 <dispatch_table.4>
    80013a24:	003b1713          	slli	a4,s6,0x3
    80013a28:	97ba                	add	a5,a5,a4
    80013a2a:	639c                	ld	a5,0(a5)
    80013a2c:	f7afb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17448
                val = JS_GetPrivateField(ctx, sp[-2], sp[-1]);
    80013a30:	fe8cb703          	ld	a4,-24(s9)
    80013a34:	fe0cba83          	ld	s5,-32(s9)
    80013a38:	ff0cb583          	ld	a1,-16(s9)
    80013a3c:	ff8cb783          	ld	a5,-8(s9)
    80013a40:	cae43c23          	sd	a4,-840(s0)
    80013a44:	cb543823          	sd	s5,-848(s0)
    80013a48:	ccb43023          	sd	a1,-832(s0)
    80013a4c:	ccf43423          	sd	a5,-824(s0)
JS_GetPrivateField():
quickjs-nuttx/quickjs.c:7309
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT))
    80013a50:	2701                	sext.w	a4,a4
    80013a52:	56fd                	li	a3,-1
JS_CallInternal():
quickjs-nuttx/quickjs.c:17448
                val = JS_GetPrivateField(ctx, sp[-2], sp[-1]);
    80013a54:	fe0c8a13          	addi	s4,s9,-32
    80013a58:	ff0c8993          	addi	s3,s9,-16
JS_GetPrivateField():
quickjs-nuttx/quickjs.c:7309
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT))
    80013a5c:	04d70d63          	beq	a4,a3,80013ab6 <JS_CallInternal+0x4b48>
quickjs-nuttx/quickjs.c:7310
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80013a60:	8526                	mv	a0,s1
    80013a62:	1c8050ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:7321
    return JS_DupValue(ctx, pr->u.value);
    80013a66:	cca43823          	sd	a0,-816(s0)
    80013a6a:	8aae                	mv	s5,a1
    80013a6c:	cd043783          	ld	a5,-816(s0)
    80013a70:	ef543c23          	sd	s5,-264(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17449
                JS_FreeValue(ctx, sp[-1]);
    80013a74:	8526                	mv	a0,s1
    80013a76:	eef43823          	sd	a5,-272(s0)
    80013a7a:	0009b583          	ld	a1,0(s3)
    80013a7e:	0089b603          	ld	a2,8(s3)
    80013a82:	cd543c23          	sd	s5,-808(s0)
quickjs-nuttx/quickjs.c:17453
                if (unlikely(JS_IsException(val)))
    80013a86:	2a81                	sext.w	s5,s5
quickjs-nuttx/quickjs.c:17449
                JS_FreeValue(ctx, sp[-1]);
    80013a88:	d17f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17450
                JS_FreeValue(ctx, sp[-2]);
    80013a8c:	000a3583          	ld	a1,0(s4)
    80013a90:	008a3603          	ld	a2,8(s4)
    80013a94:	8526                	mv	a0,s1
    80013a96:	d09f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17451
                sp[-2] = val;
    80013a9a:	ef043783          	ld	a5,-272(s0)
    80013a9e:	fefcb023          	sd	a5,-32(s9)
    80013aa2:	ef843783          	ld	a5,-264(s0)
    80013aa6:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:17453
                if (unlikely(JS_IsException(val)))
    80013aaa:	4799                	li	a5,6
    80013aac:	0afa9763          	bne	s5,a5,80013b5a <JS_CallInternal+0x4bec>
quickjs-nuttx/quickjs.c:17448
                val = JS_GetPrivateField(ctx, sp[-2], sp[-1]);
    80013ab0:	8cce                	mv	s9,s3
    80013ab2:	d4dfb06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_GetPrivateField():
quickjs-nuttx/quickjs.c:7312
    if (unlikely(JS_VALUE_GET_TAG(name) != JS_TAG_SYMBOL))
    80013ab6:	2781                	sext.w	a5,a5
    80013ab8:	5761                	li	a4,-8
    80013aba:	00e78e63          	beq	a5,a4,80013ad6 <JS_CallInternal+0x4b68>
JS_ThrowTypeErrorNotASymbol():
quickjs-nuttx/quickjs.c:6770
    return JS_ThrowTypeError(ctx, "not a symbol");
    80013abe:	00056597          	auipc	a1,0x56
    80013ac2:	32a58593          	addi	a1,a1,810 # 80069de8 <qjsc_repl+0x4838>
    80013ac6:	8526                	mv	a0,s1
    80013ac8:	3a5040ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80013acc:	cea43023          	sd	a0,-800(s0)
    80013ad0:	ceb43423          	sd	a1,-792(s0)
    80013ad4:	bf49                	j	80013a66 <JS_CallInternal+0x4af8>
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80013ad6:	6c88                	ld	a0,24(s1)
    80013ad8:	bb7f50ef          	jal	ra,8000968e <js_get_atom_index>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80013adc:	018ab703          	ld	a4,24(s5)
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80013ae0:	0005059b          	sext.w	a1,a0
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013ae4:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80013ae6:	531c                	lw	a5,32(a4)
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80013ae8:	04000637          	lui	a2,0x4000
    80013aec:	167d                	addi	a2,a2,-1
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80013aee:	8fed                	and	a5,a5,a1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013af0:	1782                	slli	a5,a5,0x20
    80013af2:	9381                	srli	a5,a5,0x20
    80013af4:	0785                	addi	a5,a5,1
    80013af6:	02d787b3          	mul	a5,a5,a3
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80013afa:	04070693          	addi	a3,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013afe:	97ba                	add	a5,a5,a4
    80013b00:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80013b04:	e785                	bnez	a5,80013b2c <JS_CallInternal+0x4bbe>
JS_ThrowTypeErrorPrivateNotFound():
quickjs-nuttx/quickjs.c:7260
    return JS_ThrowTypeErrorAtom(ctx, "private class field '%s' does not exist",
    80013b06:	00056697          	auipc	a3,0x56
    80013b0a:	08268693          	addi	a3,a3,130 # 80069b88 <qjsc_repl+0x45d8>
    80013b0e:	00056617          	auipc	a2,0x56
    80013b12:	3ca60613          	addi	a2,a2,970 # 80069ed8 <qjsc_repl+0x4928>
    80013b16:	8526                	mv	a0,s1
    80013b18:	431040ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
    80013b1c:	cea43823          	sd	a0,-784(s0)
    80013b20:	ceb43c23          	sd	a1,-776(s0)
JS_GetPrivateField():
quickjs-nuttx/quickjs.c:7319
        return JS_EXCEPTION;
    80013b24:	cc043823          	sd	zero,-816(s0)
    80013b28:	4a99                	li	s5,6
    80013b2a:	b789                	j	80013a6c <JS_CallInternal+0x4afe>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80013b2c:	00379713          	slli	a4,a5,0x3
    80013b30:	1761                	addi	a4,a4,-8
    80013b32:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80013b34:	4348                	lw	a0,4(a4)
    80013b36:	00b51d63          	bne	a0,a1,80013b50 <JS_CallInternal+0x4be2>
JS_GetPrivateField():
quickjs-nuttx/quickjs.c:7321
    return JS_DupValue(ctx, pr->u.value);
    80013b3a:	020ab703          	ld	a4,32(s5)
    80013b3e:	0792                	slli	a5,a5,0x4
    80013b40:	97ba                	add	a5,a5,a4
    80013b42:	ff07b503          	ld	a0,-16(a5)
    80013b46:	ff87b583          	ld	a1,-8(a5)
    80013b4a:	8d1f60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80013b4e:	bf21                	j	80013a66 <JS_CallInternal+0x4af8>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80013b50:	431c                	lw	a5,0(a4)
    80013b52:	8ff1                	and	a5,a5,a2
    80013b54:	1782                	slli	a5,a5,0x20
    80013b56:	9381                	srli	a5,a5,0x20
    80013b58:	b775                	j	80013b04 <JS_CallInternal+0x4b96>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17456
            BREAK;
    80013b5a:	000d4b03          	lbu	s6,0(s10)
    80013b5e:	0005b797          	auipc	a5,0x5b
    80013b62:	2d278793          	addi	a5,a5,722 # 8006ee30 <dispatch_table.4>
    80013b66:	8cce                	mv	s9,s3
    80013b68:	003b1713          	slli	a4,s6,0x3
    80013b6c:	97ba                	add	a5,a5,a4
    80013b6e:	639c                	ld	a5,0(a5)
    80013b70:	0d05                	addi	s10,s10,1
    80013b72:	e34fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17461
                ret = JS_SetPrivateField(ctx, sp[-3], sp[-1], sp[-2]);
    80013b76:	fe0cb683          	ld	a3,-32(s9)
    80013b7a:	fd8cb703          	ld	a4,-40(s9)
    80013b7e:	fd0cba83          	ld	s5,-48(s9)
    80013b82:	ff0cb583          	ld	a1,-16(s9)
    80013b86:	ff8cb783          	ld	a5,-8(s9)
    80013b8a:	eed43823          	sd	a3,-272(s0)
    80013b8e:	fe8cb683          	ld	a3,-24(s9)
    80013b92:	d0e43423          	sd	a4,-760(s0)
    80013b96:	d1543023          	sd	s5,-768(s0)
    80013b9a:	eed43c23          	sd	a3,-264(s0)
    80013b9e:	d0b43823          	sd	a1,-752(s0)
    80013ba2:	d0f43c23          	sd	a5,-744(s0)
JS_SetPrivateField():
quickjs-nuttx/quickjs.c:7332
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)) {
    80013ba6:	2701                	sext.w	a4,a4
    80013ba8:	56fd                	li	a3,-1
JS_CallInternal():
quickjs-nuttx/quickjs.c:17461
                ret = JS_SetPrivateField(ctx, sp[-3], sp[-1], sp[-2]);
    80013baa:	fd0c8993          	addi	s3,s9,-48
    80013bae:	ff0c8a13          	addi	s4,s9,-16
JS_SetPrivateField():
quickjs-nuttx/quickjs.c:7332
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)) {
    80013bb2:	00d70e63          	beq	a4,a3,80013bce <JS_CallInternal+0x4c60>
quickjs-nuttx/quickjs.c:7333
        JS_ThrowTypeErrorNotAnObject(ctx);
    80013bb6:	8526                	mv	a0,s1
    80013bb8:	072050ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:7347
        JS_FreeValue(ctx, val);
    80013bbc:	ef043583          	ld	a1,-272(s0)
    80013bc0:	ef843603          	ld	a2,-264(s0)
    80013bc4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:7348
        return -1;
    80013bc6:	5afd                	li	s5,-1
quickjs-nuttx/quickjs.c:7347
        JS_FreeValue(ctx, val);
    80013bc8:	bd7f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7348
        return -1;
    80013bcc:	a869                	j	80013c66 <JS_CallInternal+0x4cf8>
quickjs-nuttx/quickjs.c:7337
    if (unlikely(JS_VALUE_GET_TAG(name) != JS_TAG_SYMBOL)) {
    80013bce:	2781                	sext.w	a5,a5
    80013bd0:	5761                	li	a4,-8
    80013bd2:	00e78e63          	beq	a5,a4,80013bee <JS_CallInternal+0x4c80>
JS_ThrowTypeErrorNotASymbol():
quickjs-nuttx/quickjs.c:6770
    return JS_ThrowTypeError(ctx, "not a symbol");
    80013bd6:	00056597          	auipc	a1,0x56
    80013bda:	21258593          	addi	a1,a1,530 # 80069de8 <qjsc_repl+0x4838>
    80013bde:	8526                	mv	a0,s1
    80013be0:	28d040ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80013be4:	d2a43023          	sd	a0,-736(s0)
    80013be8:	d2b43423          	sd	a1,-728(s0)
JS_SetPrivateField():
quickjs-nuttx/quickjs.c:7339
        goto fail;
    80013bec:	bfc1                	j	80013bbc <JS_CallInternal+0x4c4e>
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80013bee:	6c88                	ld	a0,24(s1)
    80013bf0:	a9ff50ef          	jal	ra,8000968e <js_get_atom_index>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80013bf4:	018ab703          	ld	a4,24(s5)
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80013bf8:	0005059b          	sext.w	a1,a0
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013bfc:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80013bfe:	531c                	lw	a5,32(a4)
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80013c00:	04000637          	lui	a2,0x4000
    80013c04:	167d                	addi	a2,a2,-1
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80013c06:	8fed                	and	a5,a5,a1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013c08:	1782                	slli	a5,a5,0x20
    80013c0a:	9381                	srli	a5,a5,0x20
    80013c0c:	0785                	addi	a5,a5,1
    80013c0e:	02d787b3          	mul	a5,a5,a3
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80013c12:	04070693          	addi	a3,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013c16:	97ba                	add	a5,a5,a4
    80013c18:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80013c1c:	e38d                	bnez	a5,80013c3e <JS_CallInternal+0x4cd0>
JS_ThrowTypeErrorPrivateNotFound():
quickjs-nuttx/quickjs.c:7260
    return JS_ThrowTypeErrorAtom(ctx, "private class field '%s' does not exist",
    80013c1e:	00056697          	auipc	a3,0x56
    80013c22:	f6a68693          	addi	a3,a3,-150 # 80069b88 <qjsc_repl+0x45d8>
    80013c26:	00056617          	auipc	a2,0x56
    80013c2a:	2b260613          	addi	a2,a2,690 # 80069ed8 <qjsc_repl+0x4928>
    80013c2e:	8526                	mv	a0,s1
    80013c30:	319040ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
    80013c34:	d2a43823          	sd	a0,-720(s0)
    80013c38:	d2b43c23          	sd	a1,-712(s0)
    80013c3c:	b741                	j	80013bbc <JS_CallInternal+0x4c4e>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80013c3e:	00379713          	slli	a4,a5,0x3
    80013c42:	1761                	addi	a4,a4,-8
    80013c44:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80013c46:	4348                	lw	a0,4(a4)
    80013c48:	04b51f63          	bne	a0,a1,80013ca6 <JS_CallInternal+0x4d38>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80013c4c:	020ab583          	ld	a1,32(s5)
JS_SetPrivateField():
quickjs-nuttx/quickjs.c:7350
    set_value(ctx, &pr->u.value, val);
    80013c50:	ef043603          	ld	a2,-272(s0)
    80013c54:	ef843683          	ld	a3,-264(s0)
find_own_property():
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80013c58:	0792                	slli	a5,a5,0x4
    80013c5a:	17c1                	addi	a5,a5,-16
JS_SetPrivateField():
quickjs-nuttx/quickjs.c:7350
    set_value(ctx, &pr->u.value, val);
    80013c5c:	95be                	add	a1,a1,a5
    80013c5e:	8526                	mv	a0,s1
    80013c60:	fdff70ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:7351
    return 0;
    80013c64:	4a81                	li	s5,0
JS_CallInternal():
quickjs-nuttx/quickjs.c:17462
                JS_FreeValue(ctx, sp[-3]);
    80013c66:	0009b583          	ld	a1,0(s3)
    80013c6a:	0089b603          	ld	a2,8(s3)
    80013c6e:	8526                	mv	a0,s1
    80013c70:	b2ff70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17463
                JS_FreeValue(ctx, sp[-1]);
    80013c74:	000a3583          	ld	a1,0(s4)
    80013c78:	008a3603          	ld	a2,8(s4)
    80013c7c:	8526                	mv	a0,s1
    80013c7e:	b21f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17465
                if (unlikely(ret < 0))
    80013c82:	000a8463          	beqz	s5,80013c8a <JS_CallInternal+0x4d1c>
    80013c86:	4ad0206f          	j	80016932 <JS_CallInternal+0x79c4>
quickjs-nuttx/quickjs.c:17468
            BREAK;
    80013c8a:	000d4b03          	lbu	s6,0(s10)
    80013c8e:	0005b797          	auipc	a5,0x5b
    80013c92:	1a278793          	addi	a5,a5,418 # 8006ee30 <dispatch_table.4>
    80013c96:	8cce                	mv	s9,s3
    80013c98:	003b1713          	slli	a4,s6,0x3
    80013c9c:	97ba                	add	a5,a5,a4
    80013c9e:	639c                	ld	a5,0(a5)
    80013ca0:	0d05                	addi	s10,s10,1
    80013ca2:	d04fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80013ca6:	431c                	lw	a5,0(a4)
    80013ca8:	8ff1                	and	a5,a5,a2
    80013caa:	1782                	slli	a5,a5,0x20
    80013cac:	9381                	srli	a5,a5,0x20
    80013cae:	b7bd                	j	80013c1c <JS_CallInternal+0x4cae>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17473
                ret = JS_DefinePrivateField(ctx, sp[-3], sp[-2], sp[-1]);
    80013cb0:	ff0cb683          	ld	a3,-16(s9)
    80013cb4:	fd8cb703          	ld	a4,-40(s9)
    80013cb8:	fd0cb983          	ld	s3,-48(s9)
    80013cbc:	fe0cb583          	ld	a1,-32(s9)
    80013cc0:	fe8cb783          	ld	a5,-24(s9)
    80013cc4:	eed43823          	sd	a3,-272(s0)
    80013cc8:	ff8cb683          	ld	a3,-8(s9)
    80013ccc:	d4e43423          	sd	a4,-696(s0)
    80013cd0:	d5343023          	sd	s3,-704(s0)
    80013cd4:	eed43c23          	sd	a3,-264(s0)
    80013cd8:	d4b43823          	sd	a1,-688(s0)
    80013cdc:	d4f43c23          	sd	a5,-680(s0)
JS_DefinePrivateField():
quickjs-nuttx/quickjs.c:7274
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)) {
    80013ce0:	2701                	sext.w	a4,a4
    80013ce2:	56fd                	li	a3,-1
JS_CallInternal():
quickjs-nuttx/quickjs.c:17473
                ret = JS_DefinePrivateField(ctx, sp[-3], sp[-2], sp[-1]);
    80013ce4:	fe0c8a13          	addi	s4,s9,-32
JS_DefinePrivateField():
quickjs-nuttx/quickjs.c:7274
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)) {
    80013ce8:	04d70663          	beq	a4,a3,80013d34 <JS_CallInternal+0x4dc6>
quickjs-nuttx/quickjs.c:7275
        JS_ThrowTypeErrorNotAnObject(ctx);
    80013cec:	8526                	mv	a0,s1
    80013cee:	73d040ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:7294
        JS_FreeValue(ctx, val);
    80013cf2:	ef043583          	ld	a1,-272(s0)
    80013cf6:	ef843603          	ld	a2,-264(s0)
    80013cfa:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:7295
        return -1;
    80013cfc:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:7294
        JS_FreeValue(ctx, val);
    80013cfe:	aa1f70ef          	jal	ra,8000b79e <JS_FreeValue>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17474
                JS_FreeValue(ctx, sp[-2]);
    80013d02:	000a3583          	ld	a1,0(s4)
    80013d06:	008a3603          	ld	a2,8(s4)
    80013d0a:	8526                	mv	a0,s1
    80013d0c:	a93f70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17476
                if (unlikely(ret < 0))
    80013d10:	00098463          	beqz	s3,80013d18 <JS_CallInternal+0x4daa>
    80013d14:	4250206f          	j	80016938 <JS_CallInternal+0x79ca>
quickjs-nuttx/quickjs.c:17479
            BREAK;
    80013d18:	000d4b03          	lbu	s6,0(s10)
    80013d1c:	0005b797          	auipc	a5,0x5b
    80013d20:	11478793          	addi	a5,a5,276 # 8006ee30 <dispatch_table.4>
    80013d24:	8cd2                	mv	s9,s4
    80013d26:	003b1713          	slli	a4,s6,0x3
    80013d2a:	97ba                	add	a5,a5,a4
    80013d2c:	639c                	ld	a5,0(a5)
    80013d2e:	0d05                	addi	s10,s10,1
    80013d30:	c76fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
JS_DefinePrivateField():
quickjs-nuttx/quickjs.c:7279
    if (unlikely(JS_VALUE_GET_TAG(name) != JS_TAG_SYMBOL)) {
    80013d34:	2781                	sext.w	a5,a5
    80013d36:	5761                	li	a4,-8
    80013d38:	00e78e63          	beq	a5,a4,80013d54 <JS_CallInternal+0x4de6>
JS_ThrowTypeErrorNotASymbol():
quickjs-nuttx/quickjs.c:6770
    return JS_ThrowTypeError(ctx, "not a symbol");
    80013d3c:	00056597          	auipc	a1,0x56
    80013d40:	0ac58593          	addi	a1,a1,172 # 80069de8 <qjsc_repl+0x4838>
    80013d44:	8526                	mv	a0,s1
    80013d46:	127040ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80013d4a:	d6a43023          	sd	a0,-672(s0)
    80013d4e:	d6b43423          	sd	a1,-664(s0)
JS_DefinePrivateField():
quickjs-nuttx/quickjs.c:7281
        goto fail;
    80013d52:	b745                	j	80013cf2 <JS_CallInternal+0x4d84>
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80013d54:	6c88                	ld	a0,24(s1)
    80013d56:	939f50ef          	jal	ra,8000968e <js_get_atom_index>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80013d5a:	0189b703          	ld	a4,24(s3)
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80013d5e:	0005059b          	sext.w	a1,a0
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013d62:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80013d64:	531c                	lw	a5,32(a4)
    80013d66:	8fed                	and	a5,a5,a1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013d68:	1782                	slli	a5,a5,0x20
    80013d6a:	9381                	srli	a5,a5,0x20
    80013d6c:	0785                	addi	a5,a5,1
    80013d6e:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80013d72:	040006b7          	lui	a3,0x4000
    80013d76:	16fd                	addi	a3,a3,-1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80013d78:	97ba                	add	a5,a5,a4
    80013d7a:	0007e783          	lwu	a5,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80013d7e:	04070713          	addi	a4,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80013d82:	e385                	bnez	a5,80013da2 <JS_CallInternal+0x4e34>
JS_DefinePrivateField():
quickjs-nuttx/quickjs.c:7291
    pr = add_property(ctx, p, prop, JS_PROP_C_W_E);
    80013d84:	862e                	mv	a2,a1
    80013d86:	469d                	li	a3,7
    80013d88:	85ce                	mv	a1,s3
    80013d8a:	8526                	mv	a0,s1
    80013d8c:	297070ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:7292
    if (unlikely(!pr)) {
    80013d90:	d12d                	beqz	a0,80013cf2 <JS_CallInternal+0x4d84>
quickjs-nuttx/quickjs.c:7297
    pr->u.value = val;
    80013d92:	ef043783          	ld	a5,-272(s0)
quickjs-nuttx/quickjs.c:7298
    return 0;
    80013d96:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:7297
    pr->u.value = val;
    80013d98:	e11c                	sd	a5,0(a0)
    80013d9a:	ef843783          	ld	a5,-264(s0)
    80013d9e:	e51c                	sd	a5,8(a0)
quickjs-nuttx/quickjs.c:7298
    return 0;
    80013da0:	b78d                	j	80013d02 <JS_CallInternal+0x4d94>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80013da2:	078e                	slli	a5,a5,0x3
    80013da4:	17e1                	addi	a5,a5,-8
    80013da6:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80013da8:	43d0                	lw	a2,4(a5)
    80013daa:	00b61463          	bne	a2,a1,80013db2 <JS_CallInternal+0x4e44>
    80013dae:	4930206f          	j	80016a40 <JS_CallInternal+0x7ad2>
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80013db2:	439c                	lw	a5,0(a5)
    80013db4:	8ff5                	and	a5,a5,a3
    80013db6:	1782                	slli	a5,a5,0x20
    80013db8:	9381                	srli	a5,a5,0x20
    80013dba:	b7e1                	j	80013d82 <JS_CallInternal+0x4e14>
get_u32():
quickjs-nuttx/cutils.h:170
    80013dbc:	001d4783          	lbu	a5,1(s10)
    80013dc0:	000d4683          	lbu	a3,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17488
                ret = JS_DefinePropertyValue(ctx, sp[-2], atom, sp[-1],
    80013dc4:	fe0c8613          	addi	a2,s9,-32
get_u32():
quickjs-nuttx/cutils.h:170
    80013dc8:	07a2                	slli	a5,a5,0x8
    80013dca:	8fd5                	or	a5,a5,a3
    80013dcc:	002d4683          	lbu	a3,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17488
    80013dd0:	620c                	ld	a1,0(a2)
    80013dd2:	ff0cb703          	ld	a4,-16(s9)
get_u32():
quickjs-nuttx/cutils.h:170
    80013dd6:	06c2                	slli	a3,a3,0x10
    80013dd8:	8fd5                	or	a5,a5,a3
    80013dda:	003d4683          	lbu	a3,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17488
    80013dde:	6610                	ld	a2,8(a2)
    80013de0:	6811                	lui	a6,0x4
get_u32():
quickjs-nuttx/cutils.h:170
    80013de2:	06e2                	slli	a3,a3,0x18
    80013de4:	8edd                	or	a3,a3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17488
    80013de6:	ff8cb783          	ld	a5,-8(s9)
    80013dea:	081d                	addi	a6,a6,7
    80013dec:	2681                	sext.w	a3,a3
    80013dee:	8526                	mv	a0,s1
    80013df0:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17486
                pc += 4;
    80013df2:	004d0993          	addi	s3,s10,4
quickjs-nuttx/quickjs.c:17488
                ret = JS_DefinePropertyValue(ctx, sp[-2], atom, sp[-1],
    80013df6:	436040ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:17491
                if (unlikely(ret < 0))
    80013dfa:	00055463          	bgez	a0,80013e02 <JS_CallInternal+0x4e94>
    80013dfe:	3410206f          	j	8001693e <JS_CallInternal+0x79d0>
quickjs-nuttx/quickjs.c:17494
            BREAK;
    80013e02:	004d4b03          	lbu	s6,4(s10)
    80013e06:	0005b797          	auipc	a5,0x5b
    80013e0a:	02a78793          	addi	a5,a5,42 # 8006ee30 <dispatch_table.4>
    80013e0e:	0d15                	addi	s10,s10,5
    80013e10:	003b1713          	slli	a4,s6,0x3
    80013e14:	97ba                	add	a5,a5,a4
    80013e16:	639c                	ld	a5,0(a5)
    80013e18:	b8efb06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    80013e1c:	001d4783          	lbu	a5,1(s10)
    80013e20:	000d4683          	lbu	a3,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17503
                ret = JS_DefineObjectName(ctx, sp[-1], atom, JS_PROP_CONFIGURABLE);
    80013e24:	ff0cb583          	ld	a1,-16(s9)
get_u32():
quickjs-nuttx/cutils.h:170
    80013e28:	07a2                	slli	a5,a5,0x8
    80013e2a:	8fd5                	or	a5,a5,a3
    80013e2c:	002d4683          	lbu	a3,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17503
    80013e30:	ff8cb603          	ld	a2,-8(s9)
    80013e34:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    80013e36:	06c2                	slli	a3,a3,0x10
    80013e38:	8fd5                	or	a5,a5,a3
    80013e3a:	003d4683          	lbu	a3,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17501
                pc += 4;
    80013e3e:	004d0993          	addi	s3,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    80013e42:	06e2                	slli	a3,a3,0x18
    80013e44:	8edd                	or	a3,a3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17503
                ret = JS_DefineObjectName(ctx, sp[-1], atom, JS_PROP_CONFIGURABLE);
    80013e46:	2681                	sext.w	a3,a3
    80013e48:	12d230ef          	jal	ra,80037774 <JS_DefineObjectName.constprop.0>
quickjs-nuttx/quickjs.c:17504
                if (unlikely(ret < 0))
    80013e4c:	00055463          	bgez	a0,80013e54 <JS_CallInternal+0x4ee6>
    80013e50:	2f50206f          	j	80016944 <JS_CallInternal+0x79d6>
quickjs-nuttx/quickjs.c:17507
            BREAK;
    80013e54:	004d4b03          	lbu	s6,4(s10)
    80013e58:	0005b797          	auipc	a5,0x5b
    80013e5c:	fd878793          	addi	a5,a5,-40 # 8006ee30 <dispatch_table.4>
    80013e60:	0d15                	addi	s10,s10,5
    80013e62:	003b1713          	slli	a4,s6,0x3
    80013e66:	97ba                	add	a5,a5,a4
    80013e68:	639c                	ld	a5,0(a5)
    80013e6a:	b3cfb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17511
                ret = JS_DefineObjectNameComputed(ctx, sp[-1], sp[-2], JS_PROP_CONFIGURABLE);
    80013e6e:	fe0cb683          	ld	a3,-32(s9)
    80013e72:	fe8cb703          	ld	a4,-24(s9)
    80013e76:	ff0cb583          	ld	a1,-16(s9)
    80013e7a:	ff8cb603          	ld	a2,-8(s9)
    80013e7e:	8526                	mv	a0,s1
    80013e80:	14b230ef          	jal	ra,800377ca <JS_DefineObjectNameComputed.constprop.0>
quickjs-nuttx/quickjs.c:17512
                if (unlikely(ret < 0))
    80013e84:	00055463          	bgez	a0,80013e8c <JS_CallInternal+0x4f1e>
    80013e88:	977fb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17515
            BREAK;
    80013e8c:	000d4b03          	lbu	s6,0(s10)
    80013e90:	0005b797          	auipc	a5,0x5b
    80013e94:	fa078793          	addi	a5,a5,-96 # 8006ee30 <dispatch_table.4>
    80013e98:	0d05                	addi	s10,s10,1
    80013e9a:	003b1713          	slli	a4,s6,0x3
    80013e9e:	97ba                	add	a5,a5,a4
    80013ea0:	639c                	ld	a5,0(a5)
    80013ea2:	b04fb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17519
                proto = sp[-1];
    80013ea6:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:17520
                if (JS_IsObject(proto) || JS_IsNull(proto)) {
    80013eaa:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:17519
                proto = sp[-1];
    80013eac:	eef43823          	sd	a5,-272(s0)
    80013eb0:	ff8cb783          	ld	a5,-8(s9)
    80013eb4:	eef43c23          	sd	a5,-264(s0)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    80013eb8:	ff8ca783          	lw	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17520
                if (JS_IsObject(proto) || JS_IsNull(proto)) {
    80013ebc:	00e78563          	beq	a5,a4,80013ec6 <JS_CallInternal+0x4f58>
quickjs-nuttx/quickjs.c:17520 (discriminator 1)
    80013ec0:	4709                	li	a4,2
    80013ec2:	02e79263          	bne	a5,a4,80013ee6 <JS_CallInternal+0x4f78>
quickjs-nuttx/quickjs.c:17521
                    if (JS_SetPrototypeInternal(ctx, sp[-2], proto, TRUE) < 0)
    80013ec6:	ef043683          	ld	a3,-272(s0)
    80013eca:	ef843703          	ld	a4,-264(s0)
    80013ece:	fe0cb583          	ld	a1,-32(s9)
    80013ed2:	fe8cb603          	ld	a2,-24(s9)
    80013ed6:	4785                	li	a5,1
    80013ed8:	8526                	mv	a0,s1
    80013eda:	68e060ef          	jal	ra,8001a568 <JS_SetPrototypeInternal>
    80013ede:	00055463          	bgez	a0,80013ee6 <JS_CallInternal+0x4f78>
    80013ee2:	91dfb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17524
                JS_FreeValue(ctx, proto);
    80013ee6:	ef043583          	ld	a1,-272(s0)
    80013eea:	ef843603          	ld	a2,-264(s0)
    80013eee:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17525
                sp--;
    80013ef0:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17524
                JS_FreeValue(ctx, proto);
    80013ef2:	8adf70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:17527
            BREAK;
    80013ef6:	000d4b03          	lbu	s6,0(s10)
    80013efa:	0005b797          	auipc	a5,0x5b
    80013efe:	f3678793          	addi	a5,a5,-202 # 8006ee30 <dispatch_table.4>
    80013f02:	0d05                	addi	s10,s10,1
    80013f04:	003b1713          	slli	a4,s6,0x3
    80013f08:	97ba                	add	a5,a5,a4
    80013f0a:	639c                	ld	a5,0(a5)
    80013f0c:	a9afb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17529
            js_method_set_home_object(ctx, sp[-1], sp[-2]);
    80013f10:	fe8cb703          	ld	a4,-24(s9)
    80013f14:	fe0cb683          	ld	a3,-32(s9)
    80013f18:	ff0cb583          	ld	a1,-16(s9)
    80013f1c:	ff8cb603          	ld	a2,-8(s9)
    80013f20:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17530
            BREAK;
    80013f22:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:17529
            js_method_set_home_object(ctx, sp[-1], sp[-2]);
    80013f24:	c9df70ef          	jal	ra,8000bbc0 <js_method_set_home_object>
quickjs-nuttx/quickjs.c:17530
            BREAK;
    80013f28:	fffd4b03          	lbu	s6,-1(s10)
    80013f2c:	0005b797          	auipc	a5,0x5b
    80013f30:	f0478793          	addi	a5,a5,-252 # 8006ee30 <dispatch_table.4>
    80013f34:	003b1713          	slli	a4,s6,0x3
    80013f38:	97ba                	add	a5,a5,a4
    80013f3a:	639c                	ld	a5,0(a5)
    80013f3c:	a6afb06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17544
                is_computed = (opcode == OP_define_method_computed);
    80013f40:	fabb0993          	addi	s3,s6,-85
    80013f44:	0019bb93          	seqz	s7,s3
    80013f48:	8ade                	mv	s5,s7
quickjs-nuttx/quickjs.c:17545
                if (is_computed) {
    80013f4a:	18099b63          	bnez	s3,800140e0 <JS_CallInternal+0x5172>
quickjs-nuttx/quickjs.c:17546
                    atom = JS_ValueToAtom(ctx, sp[-2]);
    80013f4e:	fe0cb583          	ld	a1,-32(s9)
    80013f52:	fe8cb603          	ld	a2,-24(s9)
    80013f56:	8526                	mv	a0,s1
    80013f58:	0bb140ef          	jal	ra,80028812 <JS_ValueToAtom>
    80013f5c:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:17547
                    if (unlikely(atom == JS_ATOM_NULL))
    80013f60:	000a1463          	bnez	s4,80013f68 <JS_CallInternal+0x4ffa>
    80013f64:	89bfb06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17556
                obj = sp[-2 - is_computed];
    80013f68:	57f9                	li	a5,-2
    80013f6a:	415787bb          	subw	a5,a5,s5
    80013f6e:	0792                	slli	a5,a5,0x4
    80013f70:	97e6                	add	a5,a5,s9
    80013f72:	6394                	ld	a3,0(a5)
quickjs-nuttx/quickjs.c:17554
                op_flags = *pc++;
    80013f74:	000d4703          	lbu	a4,0(s10)
quickjs-nuttx/quickjs.c:17560
                    flags |= JS_PROP_ENUMERABLE;
    80013f78:	6991                	lui	s3,0x4
quickjs-nuttx/quickjs.c:17556
                obj = sp[-2 - is_computed];
    80013f7a:	e8d43023          	sd	a3,-384(s0)
    80013f7e:	679c                	ld	a5,8(a5)
    80013f80:	e8f43423          	sd	a5,-376(s0)
quickjs-nuttx/quickjs.c:17559
                if (op_flags & OP_DEFINE_METHOD_ENUMERABLE)
    80013f84:	00477793          	andi	a5,a4,4
    80013f88:	18078063          	beqz	a5,80014108 <JS_CallInternal+0x519a>
quickjs-nuttx/quickjs.c:17560
                    flags |= JS_PROP_ENUMERABLE;
    80013f8c:	50598993          	addi	s3,s3,1285 # 4505 <asinh-0x7fffbafb>
quickjs-nuttx/quickjs.c:17563
                getter = JS_UNDEFINED;
    80013f90:	f8040793          	addi	a5,s0,-128
quickjs-nuttx/quickjs.c:17562
                value = JS_UNDEFINED;
    80013f94:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:17563
                getter = JS_UNDEFINED;
    80013f96:	97ca                	add	a5,a5,s2
quickjs-nuttx/quickjs.c:17562
                value = JS_UNDEFINED;
    80013f98:	de043023          	sd	zero,-544(s0)
    80013f9c:	ded43423          	sd	a3,-536(s0)
quickjs-nuttx/quickjs.c:17563
                getter = JS_UNDEFINED;
    80013fa0:	7207b823          	sd	zero,1840(a5)
    80013fa4:	72d7bc23          	sd	a3,1848(a5)
quickjs-nuttx/quickjs.c:17564
                setter = JS_UNDEFINED;
    80013fa8:	7407b023          	sd	zero,1856(a5)
    80013fac:	74d7b423          	sd	a3,1864(a5)
    80013fb0:	8b0d                	andi	a4,a4,3
quickjs-nuttx/quickjs.c:17565
                if (op_flags == OP_DEFINE_METHOD_METHOD) {
    80013fb2:	ff0cb683          	ld	a3,-16(s9)
    80013fb6:	14071c63          	bnez	a4,8001410e <JS_CallInternal+0x51a0>
quickjs-nuttx/quickjs.c:17566
                    value = sp[-1];
    80013fba:	ded43023          	sd	a3,-544(s0)
    80013fbe:	ff8cb783          	ld	a5,-8(s9)
    80013fc2:	def43423          	sd	a5,-536(s0)
quickjs-nuttx/quickjs.c:17567
                    flags |= JS_PROP_HAS_VALUE | JS_PROP_HAS_WRITABLE | JS_PROP_WRITABLE;
    80013fc6:	6789                	lui	a5,0x2
    80013fc8:	20278793          	addi	a5,a5,514 # 2202 <asinh-0x7fffddfe>
quickjs-nuttx/quickjs.c:17573
                    flags |= JS_PROP_HAS_SET;
    80013fcc:	00f9e9b3          	or	s3,s3,a5
quickjs-nuttx/quickjs.c:17575
                ret = js_method_set_properties(ctx, sp[-1], atom, flags, obj);
    80013fd0:	ff0cb783          	ld	a5,-16(s9)
    80013fd4:	ff0c8b13          	addi	s6,s9,-16
js_method_set_properties():
quickjs-nuttx/quickjs.c:5014
    name_str = js_get_function_name(ctx, name);
    80013fd8:	85d2                	mv	a1,s4
    80013fda:	e8f43823          	sd	a5,-368(s0)
    80013fde:	008b3783          	ld	a5,8(s6)
    80013fe2:	8526                	mv	a0,s1
    80013fe4:	e8f43c23          	sd	a5,-360(s0)
    80013fe8:	e8043783          	ld	a5,-384(s0)
    80013fec:	ecf43823          	sd	a5,-304(s0)
    80013ff0:	e8843783          	ld	a5,-376(s0)
    80013ff4:	ecf43c23          	sd	a5,-296(s0)
    80013ff8:	09b0c0ef          	jal	ra,80020892 <js_get_function_name>
quickjs-nuttx/quickjs.c:5015
    if (flags & JS_PROP_HAS_GET) {
    80013ffc:	00b9d793          	srli	a5,s3,0xb
quickjs-nuttx/quickjs.c:5014
    name_str = js_get_function_name(ctx, name);
