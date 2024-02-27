    80031000:	0006879b          	sext.w	a5,a3
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80031004:	da02                	sw	zero,52(sp)
    80031006:	d83e                	sw	a5,48(sp)
    80031008:	7742                	ld	a4,48(sp)
    8003100a:	f03a                	sd	a4,32(sp)
    8003100c:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    8003100e:	d03e                	sw	a5,32(sp)
JS_DefinePropertyValueUint32():
quickjs-nuttx/quickjs.c:9366
    return JS_DefinePropertyValueValue(ctx, this_obj, JS_NewUint32(ctx, idx),
    80031010:	6822                	ld	a6,8(sp)
    80031012:	6782                	ld	a5,0(sp)
    80031014:	7682                	ld	a3,32(sp)
    80031016:	65c2                	ld	a1,16(sp)
    80031018:	6662                	ld	a2,24(sp)
    8003101a:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:9368
}
    8003101c:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:9366
    return JS_DefinePropertyValueValue(ctx, this_obj, JS_NewUint32(ctx, idx),
    8003101e:	d7bff06f          	j	80030d98 <JS_DefinePropertyValueValue>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80031022:	d21687d3          	fcvt.d.wu	fa5,a3
    80031026:	471d                	li	a4,7
    80031028:	e20787d3          	fmv.x.d	a5,fa5
JS_DefinePropertyValueUint32():
quickjs-nuttx/quickjs.h:230
    return v;
    8003102c:	b03e                	fsd	fa5,32(sp)
    8003102e:	2781                	sext.w	a5,a5
    80031030:	bff9                	j	8003100e <JS_DefinePropertyValueUint32+0x1e>

0000000080031032 <JS_DefinePropertyValueInt64>:
JS_DefinePropertyValueInt64():
quickjs-nuttx/quickjs.c:9372
{
    80031032:	7139                	addi	sp,sp,-64
    80031034:	e43e                	sd	a5,8(sp)
    80031036:	e82e                	sd	a1,16(sp)
    80031038:	ec32                	sd	a2,24(sp)
    8003103a:	e03a                	sd	a4,0(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003103c:	0006879b          	sext.w	a5,a3
JS_DefinePropertyValueInt64():
quickjs-nuttx/quickjs.c:9372
    80031040:	88c2                	mv	a7,a6
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    80031042:	02f69163          	bne	a3,a5,80031064 <JS_DefinePropertyValueInt64+0x32>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80031046:	da02                	sw	zero,52(sp)
    80031048:	d83e                	sw	a5,48(sp)
    8003104a:	7742                	ld	a4,48(sp)
    8003104c:	f03a                	sd	a4,32(sp)
    8003104e:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80031050:	d03e                	sw	a5,32(sp)
JS_DefinePropertyValueInt64():
quickjs-nuttx/quickjs.c:9373
    return JS_DefinePropertyValueValue(ctx, this_obj, JS_NewInt64(ctx, idx),
    80031052:	6822                	ld	a6,8(sp)
    80031054:	6782                	ld	a5,0(sp)
    80031056:	7682                	ld	a3,32(sp)
    80031058:	65c2                	ld	a1,16(sp)
    8003105a:	6662                	ld	a2,24(sp)
    8003105c:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:9375
}
    8003105e:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:9373
    return JS_DefinePropertyValueValue(ctx, this_obj, JS_NewInt64(ctx, idx),
    80031060:	d39ff06f          	j	80030d98 <JS_DefinePropertyValueValue>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80031064:	d226f7d3          	fcvt.d.l	fa5,a3
    80031068:	471d                	li	a4,7
    8003106a:	e20787d3          	fmv.x.d	a5,fa5
JS_DefinePropertyValueInt64():
quickjs-nuttx/quickjs.h:230
    return v;
    8003106e:	b03e                	fsd	fa5,32(sp)
    80031070:	2781                	sext.w	a5,a5
    80031072:	bff9                	j	80031050 <JS_DefinePropertyValueInt64+0x1e>

0000000080031074 <JS_DefinePropertyValueStr>:
JS_DefinePropertyValueStr():
quickjs-nuttx/quickjs.c:9379
{
    80031074:	715d                	addi	sp,sp,-80
    80031076:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:9382
    atom = JS_NewAtom(ctx, prop);
    80031078:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:9379
{
    8003107a:	e486                	sd	ra,72(sp)
    8003107c:	e0a2                	sd	s0,64(sp)
    8003107e:	fc26                	sd	s1,56(sp)
    80031080:	f84a                	sd	s2,48(sp)
    80031082:	842a                	mv	s0,a0
    80031084:	f432                	sd	a2,40(sp)
    80031086:	e83a                	sd	a4,16(sp)
    80031088:	ec3e                	sd	a5,24(sp)
    8003108a:	e442                	sd	a6,8(sp)
quickjs-nuttx/quickjs.c:9382
    atom = JS_NewAtom(ctx, prop);
    8003108c:	f2fed0ef          	jal	ra,8001efba <JS_NewAtom>
quickjs-nuttx/quickjs.c:9383
    ret = JS_DefinePropertyValue(ctx, this_obj, atom, val, flags);
    80031090:	6822                	ld	a6,8(sp)
    80031092:	6742                	ld	a4,16(sp)
    80031094:	67e2                	ld	a5,24(sp)
    80031096:	7582                	ld	a1,32(sp)
    80031098:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:9382
    atom = JS_NewAtom(ctx, prop);
    8003109a:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:9383
    ret = JS_DefinePropertyValue(ctx, this_obj, atom, val, flags);
    8003109e:	86a6                	mv	a3,s1
    800310a0:	8522                	mv	a0,s0
    800310a2:	98ae70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800310a6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:9384
    JS_FreeAtom(ctx, atom);
    800310a8:	85a6                	mv	a1,s1
    800310aa:	8522                	mv	a0,s0
    800310ac:	89cda0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:9386
}
    800310b0:	60a6                	ld	ra,72(sp)
    800310b2:	6406                	ld	s0,64(sp)
    800310b4:	74e2                	ld	s1,56(sp)
    800310b6:	854a                	mv	a0,s2
    800310b8:	7942                	ld	s2,48(sp)
    800310ba:	6161                	addi	sp,sp,80
    800310bc:	8082                	ret

00000000800310be <JS_GetModuleNamespace>:
JS_GetModuleNamespace():
quickjs-nuttx/quickjs.c:27906
{
    800310be:	7155                	addi	sp,sp,-208
    800310c0:	f54e                	sd	s3,168(sp)
    800310c2:	e586                	sd	ra,200(sp)
    800310c4:	e1a2                	sd	s0,192(sp)
    800310c6:	fd26                	sd	s1,184(sp)
    800310c8:	f94a                	sd	s2,176(sp)
    800310ca:	f152                	sd	s4,160(sp)
    800310cc:	ed56                	sd	s5,152(sp)
    800310ce:	e95a                	sd	s6,144(sp)
    800310d0:	e55e                	sd	s7,136(sp)
    800310d2:	e162                	sd	s8,128(sp)
    800310d4:	fce6                	sd	s9,120(sp)
    800310d6:	f8ea                	sd	s10,112(sp)
    800310d8:	f4ee                	sd	s11,104(sp)
quickjs-nuttx/quickjs.c:27907
    if (JS_IsUndefined(m->module_ns)) {
    800310da:	51b8                	lw	a4,96(a1)
    800310dc:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:27906
{
    800310de:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:27907
    if (JS_IsUndefined(m->module_ns)) {
    800310e0:	02f71c63          	bne	a4,a5,80031118 <JS_GetModuleNamespace+0x5a>
js_build_module_ns():
quickjs-nuttx/quickjs.c:27810
    obj = JS_NewObjectClass(ctx, JS_CLASS_MODULE_NS);
    800310e4:	45ad                	li	a1,11
    800310e6:	842a                	mv	s0,a0
    800310e8:	e25ea0ef          	jal	ra,8001bf0c <JS_NewObjectClass>
    800310ec:	e82a                	sd	a0,16(sp)
    800310ee:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:27811
    if (JS_IsException(obj))
    800310f0:	0005871b          	sext.w	a4,a1
    800310f4:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:27810
    obj = JS_NewObjectClass(ctx, JS_CLASS_MODULE_NS);
    800310f6:	84aa                	mv	s1,a0
    800310f8:	8a2e                	mv	s4,a1
    800310fa:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:27811
    if (JS_IsException(obj))
    800310fc:	04f71263          	bne	a4,a5,80031140 <JS_GetModuleNamespace+0x82>
quickjs-nuttx/quickjs.c:27898
    return obj;
    80031100:	f826                	sd	s1,48(sp)
    80031102:	fc5a                	sd	s6,56(sp)
JS_GetModuleNamespace():
quickjs-nuttx/quickjs.c:27910
        if (JS_IsException(val))
    80031104:	000b079b          	sext.w	a5,s6
    80031108:	4699                	li	a3,6
    8003110a:	7742                	ld	a4,48(sp)
    8003110c:	1ad78363          	beq	a5,a3,800312b2 <JS_GetModuleNamespace+0x1f4>
quickjs-nuttx/quickjs.c:27912
        m->module_ns = val;
    80031110:	04e9bc23          	sd	a4,88(s3)
    80031114:	0769b023          	sd	s6,96(s3)
quickjs-nuttx/quickjs.c:27915
}
    80031118:	640e                	ld	s0,192(sp)
quickjs-nuttx/quickjs.c:27914
    return JS_DupValue(ctx, m->module_ns);
    8003111a:	0589b503          	ld	a0,88(s3)
    8003111e:	0609b583          	ld	a1,96(s3)
quickjs-nuttx/quickjs.c:27915
}
    80031122:	60ae                	ld	ra,200(sp)
    80031124:	74ea                	ld	s1,184(sp)
    80031126:	794a                	ld	s2,176(sp)
    80031128:	79aa                	ld	s3,168(sp)
    8003112a:	7a0a                	ld	s4,160(sp)
    8003112c:	6aea                	ld	s5,152(sp)
    8003112e:	6b4a                	ld	s6,144(sp)
    80031130:	6baa                	ld	s7,136(sp)
    80031132:	6c0a                	ld	s8,128(sp)
    80031134:	7ce6                	ld	s9,120(sp)
    80031136:	7d46                	ld	s10,112(sp)
    80031138:	7da6                	ld	s11,104(sp)
    8003113a:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:27914
    return JS_DupValue(ctx, m->module_ns);
    8003113c:	aded906f          	j	8000a41a <JS_DupValue.constprop.0>
js_build_module_ns():
quickjs-nuttx/quickjs.c:27816
    ret = get_exported_names(ctx, s, m, FALSE);
    80031140:	008c                	addi	a1,sp,64
    80031142:	4681                	li	a3,0
    80031144:	864e                	mv	a2,s3
    80031146:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:27815
    memset(s, 0, sizeof(*s));
    80031148:	e082                	sd	zero,64(sp)
    8003114a:	e482                	sd	zero,72(sp)
    8003114c:	e882                	sd	zero,80(sp)
    8003114e:	ec82                	sd	zero,88(sp)
quickjs-nuttx/quickjs.c:27816
    ret = get_exported_names(ctx, s, m, FALSE);
    80031150:	86beb0ef          	jal	ra,8001c9ba <get_exported_names>
quickjs-nuttx/quickjs.c:27817
    js_free(ctx, s->modules);
    80031154:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:27816
    ret = get_exported_names(ctx, s, m, FALSE);
    80031156:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:27817
    js_free(ctx, s->modules);
    80031158:	8522                	mv	a0,s0
    8003115a:	e9dd90ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27818
    if (ret)
    8003115e:	0c0a9063          	bnez	s5,8003121e <JS_GetModuleNamespace+0x160>
quickjs-nuttx/quickjs.c:27822
    for(i = 0; i < s->exported_names_count; i++) {
    80031162:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:27843
            if (res_me->local_name == JS_ATOM__star_) {
    80031164:	07e00c13          	li	s8,126
quickjs-nuttx/quickjs.c:27847
                en->export_type = EXPORTED_NAME_NORMAL;
    80031168:	4c85                	li	s9,1
quickjs-nuttx/quickjs.c:27844
                en->export_type = EXPORTED_NAME_NS;
    8003116a:	4d09                	li	s10,2
quickjs-nuttx/quickjs.c:27837
            if (res != JS_RESOLVE_RES_AMBIGUOUS) {
    8003116c:	4d8d                	li	s11,3
quickjs-nuttx/quickjs.c:27822
    for(i = 0; i < s->exported_names_count; i++) {
    8003116e:	45f6                	lw	a1,92(sp)
quickjs-nuttx/quickjs.c:27823
        ExportedNameEntry *en = &s->exported_names[i];
    80031170:	6546                	ld	a0,80(sp)
quickjs-nuttx/quickjs.c:27822
    for(i = 0; i < s->exported_names_count; i++) {
    80031172:	04bbcc63          	blt	s7,a1,800311ca <JS_GetModuleNamespace+0x10c>
quickjs-nuttx/quickjs.c:27860
    rqsort(s->exported_names, s->exported_names_count,
    80031176:	8722                	mv	a4,s0
    80031178:	fffef697          	auipc	a3,0xfffef
    8003117c:	c0268693          	addi	a3,a3,-1022 # 8001fd7a <exported_names_cmp>
    80031180:	4641                	li	a2,16
    80031182:	3cf200ef          	jal	ra,80051d50 <rqsort>
quickjs-nuttx/quickjs.c:27865
        switch(en->export_type) {
    80031186:	4905                	li	s2,1
    80031188:	4b89                	li	s7,2
quickjs-nuttx/quickjs.c:27863
    for(i = 0; i < s->exported_names_count; i++) {
    8003118a:	47f6                	lw	a5,92(sp)
quickjs-nuttx/quickjs.c:27864
        ExportedNameEntry *en = &s->exported_names[i];
    8003118c:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:27863
    for(i = 0; i < s->exported_names_count; i++) {
    8003118e:	0cfac863          	blt	s5,a5,8003125e <JS_GetModuleNamespace+0x1a0>
quickjs-nuttx/quickjs.c:27891
    js_free(ctx, s->exported_names);
    80031192:	8522                	mv	a0,s0
    80031194:	e63d90ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27893
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_Symbol_toStringTag,
    80031198:	07f00593          	li	a1,127
    8003119c:	8522                	mv	a0,s0
    8003119e:	935ee0ef          	jal	ra,8001fad2 <JS_AtomToString>
    800311a2:	87ae                	mv	a5,a1
    800311a4:	872a                	mv	a4,a0
    800311a6:	f02a                	sd	a0,32(sp)
    800311a8:	f42e                	sd	a1,40(sp)
    800311aa:	4801                	li	a6,0
    800311ac:	0dc00693          	li	a3,220
    800311b0:	85a6                	mv	a1,s1
    800311b2:	8652                	mv	a2,s4
    800311b4:	8522                	mv	a0,s0
    800311b6:	e826                	sd	s1,16(sp)
    800311b8:	ec52                	sd	s4,24(sp)
    800311ba:	872e70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:27897
    p->extensible = FALSE;
    800311be:	0054c783          	lbu	a5,5(s1)
    800311c2:	9bf9                	andi	a5,a5,-2
    800311c4:	00f482a3          	sb	a5,5(s1)
    800311c8:	bf25                	j	80031100 <JS_GetModuleNamespace+0x42>
quickjs-nuttx/quickjs.c:27823
        ExportedNameEntry *en = &s->exported_names[i];
    800311ca:	004b9913          	slli	s2,s7,0x4
    800311ce:	992a                	add	s2,s2,a0
quickjs-nuttx/quickjs.c:27828
        if (en->u.me) {
    800311d0:	00893783          	ld	a5,8(s2)
    800311d4:	c39d                	beqz	a5,800311fa <JS_GetModuleNamespace+0x13c>
quickjs-nuttx/quickjs.c:27829
            res_me = en->u.me; /* fast case: no resolution needed */
    800311d6:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:27830
            res_m = m;
    800311d8:	f84e                	sd	s3,48(sp)
quickjs-nuttx/quickjs.c:27843
            if (res_me->local_name == JS_ATOM__star_) {
    800311da:	7782                	ld	a5,32(sp)
    800311dc:	4bdc                	lw	a5,20(a5)
    800311de:	07879063          	bne	a5,s8,8003123e <JS_GetModuleNamespace+0x180>
quickjs-nuttx/quickjs.c:27844
                en->export_type = EXPORTED_NAME_NS;
    800311e2:	01a92223          	sw	s10,4(s2)
quickjs-nuttx/quickjs.c:27845
                en->u.module = res_m->req_module_entries[res_me->u.req_module_idx].module;
    800311e6:	7782                	ld	a5,32(sp)
    800311e8:	4398                	lw	a4,0(a5)
    800311ea:	77c2                	ld	a5,48(sp)
    800311ec:	0712                	slli	a4,a4,0x4
    800311ee:	6f9c                	ld	a5,24(a5)
    800311f0:	97ba                	add	a5,a5,a4
    800311f2:	679c                	ld	a5,8(a5)
quickjs-nuttx/quickjs.c:27853
                    en->u.var_ref = p1->u.func.var_refs[res_me->u.local.var_idx];
    800311f4:	00f93423          	sd	a5,8(s2)
    800311f8:	a089                	j	8003123a <JS_GetModuleNamespace+0x17c>
quickjs-nuttx/quickjs.c:27833
            res = js_resolve_export(ctx, &res_m, &res_me, m,
    800311fa:	00092703          	lw	a4,0(s2)
    800311fe:	180c                	addi	a1,sp,48
    80031200:	86ce                	mv	a3,s3
    80031202:	1010                	addi	a2,sp,32
    80031204:	8522                	mv	a0,s0
    80031206:	a51eb0ef          	jal	ra,8001cc56 <js_resolve_export>
    8003120a:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:27836
        if (res != JS_RESOLVE_RES_FOUND) {
    8003120c:	d579                	beqz	a0,800311da <JS_GetModuleNamespace+0x11c>
quickjs-nuttx/quickjs.c:27837
            if (res != JS_RESOLVE_RES_AMBIGUOUS) {
    8003120e:	03b50463          	beq	a0,s11,80031236 <JS_GetModuleNamespace+0x178>
quickjs-nuttx/quickjs.c:27838
                js_resolve_export_throw_error(ctx, res, m, en->export_name);
    80031212:	00092683          	lw	a3,0(s2)
    80031216:	864e                	mv	a2,s3
    80031218:	8522                	mv	a0,s0
    8003121a:	9c8e70ef          	jal	ra,800183e2 <js_resolve_export_throw_error>
quickjs-nuttx/quickjs.c:27900
    js_free(ctx, s->exported_names);
    8003121e:	65c6                	ld	a1,80(sp)
    80031220:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:27902
    return JS_EXCEPTION;
    80031222:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:27900
    js_free(ctx, s->exported_names);
    80031224:	dd3d90ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27901
    JS_FreeValue(ctx, obj);
    80031228:	85a6                	mv	a1,s1
    8003122a:	8652                	mv	a2,s4
    8003122c:	8522                	mv	a0,s0
    8003122e:	d70da0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27902
    return JS_EXCEPTION;
    80031232:	f802                	sd	zero,48(sp)
    80031234:	b5f9                	j	80031102 <JS_GetModuleNamespace+0x44>
quickjs-nuttx/quickjs.c:27841
            en->export_type = EXPORTED_NAME_AMBIGUOUS;
    80031236:	00092223          	sw	zero,4(s2)
quickjs-nuttx/quickjs.c:27822
    for(i = 0; i < s->exported_names_count; i++) {
    8003123a:	2b85                	addiw	s7,s7,1
    8003123c:	bf0d                	j	8003116e <JS_GetModuleNamespace+0xb0>
quickjs-nuttx/quickjs.c:27847
                en->export_type = EXPORTED_NAME_NORMAL;
    8003123e:	01992223          	sw	s9,4(s2)
quickjs-nuttx/quickjs.c:27848
                if (res_me->u.local.var_ref) {
    80031242:	7782                	ld	a5,32(sp)
    80031244:	6798                	ld	a4,8(a5)
    80031246:	c701                	beqz	a4,8003124e <JS_GetModuleNamespace+0x190>
quickjs-nuttx/quickjs.c:27849
                    en->u.var_ref = res_me->u.local.var_ref;
    80031248:	00e93423          	sd	a4,8(s2)
    8003124c:	b7fd                	j	8003123a <JS_GetModuleNamespace+0x17c>
quickjs-nuttx/quickjs.c:27851
                    JSObject *p1 = JS_VALUE_GET_OBJ(res_m->func_obj);
    8003124e:	7742                	ld	a4,48(sp)
quickjs-nuttx/quickjs.c:27853
                    en->u.var_ref = p1->u.func.var_refs[res_me->u.local.var_idx];
    80031250:	7734                	ld	a3,104(a4)
    80031252:	4398                	lw	a4,0(a5)
    80031254:	7e9c                	ld	a5,56(a3)
    80031256:	070e                	slli	a4,a4,0x3
    80031258:	97ba                	add	a5,a5,a4
    8003125a:	639c                	ld	a5,0(a5)
    8003125c:	bf61                	j	800311f4 <JS_GetModuleNamespace+0x136>
quickjs-nuttx/quickjs.c:27864
        ExportedNameEntry *en = &s->exported_names[i];
    8003125e:	004a9793          	slli	a5,s5,0x4
    80031262:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:27865
        switch(en->export_type) {
    80031264:	41dc                	lw	a5,4(a1)
    80031266:	01278663          	beq	a5,s2,80031272 <JS_GetModuleNamespace+0x1b4>
    8003126a:	03778663          	beq	a5,s7,80031296 <JS_GetModuleNamespace+0x1d8>
quickjs-nuttx/quickjs.c:27863
    for(i = 0; i < s->exported_names_count; i++) {
    8003126e:	2a85                	addiw	s5,s5,1
    80031270:	bf29                	j	8003118a <JS_GetModuleNamespace+0xcc>
quickjs-nuttx/quickjs.c:27869
                pr = add_property(ctx, p, en->export_name,
    80031272:	4190                	lw	a2,0(a1)
quickjs-nuttx/quickjs.c:27868
                JSVarRef *var_ref = en->u.var_ref;
    80031274:	0085bc03          	ld	s8,8(a1)
quickjs-nuttx/quickjs.c:27869
                pr = add_property(ctx, p, en->export_name,
    80031278:	02600693          	li	a3,38
    8003127c:	85a6                	mv	a1,s1
    8003127e:	8522                	mv	a0,s0
    80031280:	da2ea0ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:27872
                if (!pr)
    80031284:	dd49                	beqz	a0,8003121e <JS_GetModuleNamespace+0x160>
quickjs-nuttx/quickjs.c:27874
                var_ref->header.ref_count++;
    80031286:	000c2783          	lw	a5,0(s8)
    8003128a:	2785                	addiw	a5,a5,1
    8003128c:	00fc2023          	sw	a5,0(s8)
quickjs-nuttx/quickjs.c:27875
                pr->u.var_ref = var_ref;
    80031290:	01853023          	sd	s8,0(a0)
quickjs-nuttx/quickjs.c:27877
            break;
    80031294:	bfe9                	j	8003126e <JS_GetModuleNamespace+0x1b0>
quickjs-nuttx/quickjs.c:27880
            if (JS_DefineAutoInitProperty(ctx, obj,
    80031296:	659c                	ld	a5,8(a1)
    80031298:	4194                	lw	a3,0(a1)
    8003129a:	4819                	li	a6,6
    8003129c:	4705                	li	a4,1
    8003129e:	85a6                	mv	a1,s1
    800312a0:	8652                	mv	a2,s4
    800312a2:	8522                	mv	a0,s0
    800312a4:	e826                	sd	s1,16(sp)
    800312a6:	ec52                	sd	s4,24(sp)
    800312a8:	f12ea0ef          	jal	ra,8001b9ba <JS_DefineAutoInitProperty>
    800312ac:	fc0551e3          	bgez	a0,8003126e <JS_GetModuleNamespace+0x1b0>
    800312b0:	b7bd                	j	8003121e <JS_GetModuleNamespace+0x160>
JS_GetModuleNamespace():
quickjs-nuttx/quickjs.c:27915 (discriminator 2)
}
    800312b2:	60ae                	ld	ra,200(sp)
    800312b4:	640e                	ld	s0,192(sp)
    800312b6:	74ea                	ld	s1,184(sp)
    800312b8:	794a                	ld	s2,176(sp)
    800312ba:	79aa                	ld	s3,168(sp)
    800312bc:	7a0a                	ld	s4,160(sp)
    800312be:	6aea                	ld	s5,152(sp)
    800312c0:	6b4a                	ld	s6,144(sp)
    800312c2:	6baa                	ld	s7,136(sp)
    800312c4:	6c0a                	ld	s8,128(sp)
    800312c6:	7ce6                	ld	s9,120(sp)
    800312c8:	7d46                	ld	s10,112(sp)
    800312ca:	7da6                	ld	s11,104(sp)
    800312cc:	4501                	li	a0,0
    800312ce:	4599                	li	a1,6
    800312d0:	6169                	addi	sp,sp,208
    800312d2:	8082                	ret

00000000800312d4 <js_module_ns_autoinit>:
js_module_ns_autoinit():
quickjs-nuttx/quickjs.c:27797
{
    800312d4:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:27799
    return JS_GetModuleNamespace(ctx, m);
    800312d6:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:27800
}
    800312d8:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:27799
    return JS_GetModuleNamespace(ctx, m);
    800312da:	de5ff06f          	j	800310be <JS_GetModuleNamespace>

00000000800312de <JS_SetConstructor2>:
JS_SetConstructor2():
quickjs-nuttx/quickjs.c:36870
{
    800312de:	711d                	addi	sp,sp,-96
    800312e0:	e8a2                	sd	s0,80(sp)
    800312e2:	e82e                	sd	a1,16(sp)
    800312e4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:36871
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_prototype,
    800312e6:	85ba                	mv	a1,a4
    800312e8:	8536                	mv	a0,a3
quickjs-nuttx/quickjs.c:36870
{
    800312ea:	ec86                	sd	ra,88(sp)
    800312ec:	e4a6                	sd	s1,72(sp)
    800312ee:	e0ca                	sd	s2,64(sp)
    800312f0:	84c2                	mv	s1,a6
    800312f2:	893e                	mv	s2,a5
    800312f4:	ec32                	sd	a2,24(sp)
    800312f6:	e036                	sd	a3,0(sp)
    800312f8:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:36871
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_prototype,
    800312fa:	920d90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800312fe:	6662                	ld	a2,24(sp)
    80031300:	87ae                	mv	a5,a1
    80031302:	65c2                	ld	a1,16(sp)
    80031304:	872a                	mv	a4,a0
    80031306:	884a                	mv	a6,s2
    80031308:	03c00693          	li	a3,60
    8003130c:	8522                	mv	a0,s0
    8003130e:	f1fe60ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:36873
    JS_DefinePropertyValue(ctx, proto, JS_ATOM_constructor,
    80031312:	6542                	ld	a0,16(sp)
    80031314:	65e2                	ld	a1,24(sp)
    80031316:	904d90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003131a:	872a                	mv	a4,a0
    8003131c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:36878
}
    8003131e:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:36873
    JS_DefinePropertyValue(ctx, proto, JS_ATOM_constructor,
    80031320:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:36878
}
    80031322:	60e6                	ld	ra,88(sp)
    80031324:	6906                	ld	s2,64(sp)
quickjs-nuttx/quickjs.c:36873
    JS_DefinePropertyValue(ctx, proto, JS_ATOM_constructor,
    80031326:	87ae                	mv	a5,a1
    80031328:	8826                	mv	a6,s1
    8003132a:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:36878
}
    8003132c:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:36873
    JS_DefinePropertyValue(ctx, proto, JS_ATOM_constructor,
    8003132e:	03d00693          	li	a3,61
quickjs-nuttx/quickjs.c:36878
}
    80031332:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:36873
    JS_DefinePropertyValue(ctx, proto, JS_ATOM_constructor,
    80031334:	ef9e606f          	j	8001822c <JS_DefinePropertyValue>

0000000080031338 <JS_SetConstructor>:
JS_SetConstructor():
quickjs-nuttx/quickjs.c:36882
{
    80031338:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:36883
    JS_SetConstructor2(ctx, func_obj, proto,
    8003133a:	480d                	li	a6,3
    8003133c:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:36885
}
    8003133e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:36883
    JS_SetConstructor2(ctx, func_obj, proto,
    80031340:	f9fff06f          	j	800312de <JS_SetConstructor2>

0000000080031344 <JS_NewGlobalCConstructor2>:
JS_NewGlobalCConstructor2():
quickjs-nuttx/quickjs.c:36891
{
    80031344:	715d                	addi	sp,sp,-80
    80031346:	e0a2                	sd	s0,64(sp)
    80031348:	f02e                	sd	a1,32(sp)
    8003134a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:36892
    JS_DefinePropertyValueStr(ctx, ctx->global_obj, name,
    8003134c:	852e                	mv	a0,a1
    8003134e:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:36891
{
    80031350:	e486                	sd	ra,72(sp)
    80031352:	f432                	sd	a2,40(sp)
    80031354:	e436                	sd	a3,8(sp)
    80031356:	e83a                	sd	a4,16(sp)
    80031358:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:36892
    JS_DefinePropertyValueStr(ctx, ctx->global_obj, name,
    8003135a:	8c0d90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003135e:	66a2                	ld	a3,8(sp)
    80031360:	17043603          	ld	a2,368(s0)
    80031364:	87ae                	mv	a5,a1
    80031366:	16843583          	ld	a1,360(s0)
    8003136a:	872a                	mv	a4,a0
    8003136c:	480d                	li	a6,3
    8003136e:	8522                	mv	a0,s0
    80031370:	d05ff0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs.c:36895
    JS_SetConstructor(ctx, func_obj, proto);
    80031374:	7582                	ld	a1,32(sp)
    80031376:	7622                	ld	a2,40(sp)
    80031378:	66c2                	ld	a3,16(sp)
    8003137a:	6762                	ld	a4,24(sp)
    8003137c:	8522                	mv	a0,s0
    8003137e:	fbbff0ef          	jal	ra,80031338 <JS_SetConstructor>
quickjs-nuttx/quickjs.c:36896
    JS_FreeValue(ctx, func_obj);
    80031382:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:36897
}
    80031384:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:36896
    JS_FreeValue(ctx, func_obj);
    80031386:	7582                	ld	a1,32(sp)
    80031388:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:36897
}
    8003138a:	60a6                	ld	ra,72(sp)
    8003138c:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:36896
    JS_FreeValue(ctx, func_obj);
    8003138e:	c10da06f          	j	8000b79e <JS_FreeValue>

0000000080031392 <JS_NewGlobalCConstructor>:
JS_NewGlobalCConstructor():
quickjs-nuttx/quickjs.c:36902
{
    80031392:	715d                	addi	sp,sp,-80
    80031394:	e0a2                	sd	s0,64(sp)
    80031396:	842e                	mv	s0,a1
    80031398:	e03a                	sd	a4,0(sp)
    8003139a:	e43e                	sd	a5,8(sp)
    8003139c:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:36904
    func_obj = JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_constructor_or_func, 0);
    8003139e:	4781                	li	a5,0
    800313a0:	8622                	mv	a2,s0
    800313a2:	4711                	li	a4,4
quickjs-nuttx/quickjs.c:36902
{
    800313a4:	e486                	sd	ra,72(sp)
    800313a6:	fc26                	sd	s1,56(sp)
    800313a8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:36904
    func_obj = JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_constructor_or_func, 0);
    800313aa:	f58ff0ef          	jal	ra,80030b02 <JS_NewCFunction2>
quickjs-nuttx/quickjs.c:36905
    JS_NewGlobalCConstructor2(ctx, func_obj, name, proto);
    800313ae:	6702                	ld	a4,0(sp)
    800313b0:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:36904
    func_obj = JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_constructor_or_func, 0);
    800313b2:	e82a                	sd	a0,16(sp)
    800313b4:	ec2e                	sd	a1,24(sp)
    800313b6:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:36905
    JS_NewGlobalCConstructor2(ctx, func_obj, name, proto);
    800313b8:	86a2                	mv	a3,s0
    800313ba:	85aa                	mv	a1,a0
    800313bc:	8526                	mv	a0,s1
    800313be:	f87ff0ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
quickjs-nuttx/quickjs.c:36907
}
    800313c2:	60a6                	ld	ra,72(sp)
    800313c4:	6406                	ld	s0,64(sp)
    800313c6:	6542                	ld	a0,16(sp)
    800313c8:	65e2                	ld	a1,24(sp)
    800313ca:	74e2                	ld	s1,56(sp)
    800313cc:	6161                	addi	sp,sp,80
    800313ce:	8082                	ret

00000000800313d0 <JS_NewGlobalCConstructorOnly.constprop.0>:
JS_NewGlobalCConstructorOnly():
quickjs-nuttx/quickjs.c:36909
static JSValueConst JS_NewGlobalCConstructorOnly(JSContext *ctx, const char *name,
    800313d0:	715d                	addi	sp,sp,-80
    800313d2:	e0a2                	sd	s0,64(sp)
    800313d4:	842e                	mv	s0,a1
    800313d6:	e036                	sd	a3,0(sp)
    800313d8:	e43a                	sd	a4,8(sp)
    800313da:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:36914
    func_obj = JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_constructor, 0);
    800313dc:	4781                	li	a5,0
    800313de:	8622                	mv	a2,s0
    800313e0:	4709                	li	a4,2
    800313e2:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:36909
static JSValueConst JS_NewGlobalCConstructorOnly(JSContext *ctx, const char *name,
    800313e4:	e486                	sd	ra,72(sp)
    800313e6:	fc26                	sd	s1,56(sp)
    800313e8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:36914
    func_obj = JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_constructor, 0);
    800313ea:	f18ff0ef          	jal	ra,80030b02 <JS_NewCFunction2>
quickjs-nuttx/quickjs.c:36915
    JS_NewGlobalCConstructor2(ctx, func_obj, name, proto);
    800313ee:	6702                	ld	a4,0(sp)
    800313f0:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:36914
    func_obj = JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_constructor, 0);
    800313f2:	e82a                	sd	a0,16(sp)
    800313f4:	ec2e                	sd	a1,24(sp)
    800313f6:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:36915
    JS_NewGlobalCConstructor2(ctx, func_obj, name, proto);
    800313f8:	86a2                	mv	a3,s0
    800313fa:	85aa                	mv	a1,a0
    800313fc:	8526                	mv	a0,s1
    800313fe:	f47ff0ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
quickjs-nuttx/quickjs.c:36917
}
    80031402:	60a6                	ld	ra,72(sp)
    80031404:	6406                	ld	s0,64(sp)
    80031406:	6542                	ld	a0,16(sp)
    80031408:	65e2                	ld	a1,24(sp)
    8003140a:	74e2                	ld	s1,56(sp)
    8003140c:	6161                	addi	sp,sp,80
    8003140e:	8082                	ret

0000000080031410 <json_parse_value>:
json_parse_value():
quickjs-nuttx/quickjs.c:44850
{
    80031410:	7135                	addi	sp,sp,-160
    80031412:	e922                	sd	s0,144(sp)
    80031414:	ed06                	sd	ra,152(sp)
    80031416:	e526                	sd	s1,136(sp)
    80031418:	e14a                	sd	s2,128(sp)
    8003141a:	fcce                	sd	s3,120(sp)
    8003141c:	f8d2                	sd	s4,112(sp)
    8003141e:	f4d6                	sd	s5,104(sp)
    80031420:	f0da                	sd	s6,96(sp)
    80031422:	ecde                	sd	s7,88(sp)
    80031424:	e8e2                	sd	s8,80(sp)
    80031426:	e4e6                	sd	s9,72(sp)
    80031428:	e0ea                	sd	s10,64(sp)
    8003142a:	fc6e                	sd	s11,56(sp)
quickjs-nuttx/quickjs.c:44855
    switch(s->token.val) {
    8003142c:	4d1c                	lw	a5,24(a0)
quickjs-nuttx/quickjs.c:44852
    JSValue val = JS_NULL;
    8003142e:	e002                	sd	zero,0(sp)
quickjs-nuttx/quickjs.c:44855
    switch(s->token.val) {
    80031430:	f8300713          	li	a4,-125
quickjs-nuttx/quickjs.c:44851
    JSContext *ctx = s->ctx;
    80031434:	00053a03          	ld	s4,0(a0)
quickjs-nuttx/quickjs.c:44850
{
    80031438:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:44855
    switch(s->token.val) {
    8003143a:	20e78c63          	beq	a5,a4,80031652 <json_parse_value+0x242>
    8003143e:	f8400713          	li	a4,-124
    80031442:	02e7d563          	bge	a5,a4,8003146c <json_parse_value+0x5c>
    80031446:	f8000713          	li	a4,-128
    8003144a:	1ee78c63          	beq	a5,a4,80031642 <json_parse_value+0x232>
    8003144e:	f8100713          	li	a4,-127
    80031452:	1ce78e63          	beq	a5,a4,8003162e <json_parse_value+0x21e>
quickjs-nuttx/quickjs.c:44966
                           (int)(s->buf_ptr - s->token.ptr), s->token.ptr);
    80031456:	6c30                	ld	a2,88(s0)
quickjs-nuttx/quickjs.c:44965
            js_parse_error(s, "unexpected token: '%.*s'",
    80031458:	7014                	ld	a3,32(s0)
    8003145a:	0003b597          	auipc	a1,0x3b
    8003145e:	d3658593          	addi	a1,a1,-714 # 8006c190 <qjsc_repl+0x6be0>
    80031462:	8522                	mv	a0,s0
    80031464:	9e15                	subw	a2,a2,a3
    80031466:	80dfc0ef          	jal	ra,8002dc72 <js_parse_error>
    8003146a:	a42d                	j	80031694 <json_parse_value+0x284>
quickjs-nuttx/quickjs.c:44855
    switch(s->token.val) {
    8003146c:	05b00713          	li	a4,91
    80031470:	12e78d63          	beq	a5,a4,800315aa <json_parse_value+0x19a>
    80031474:	07b00713          	li	a4,123
    80031478:	20e79463          	bne	a5,a4,80031680 <json_parse_value+0x270>
quickjs-nuttx/quickjs.c:44861
            if (json_next_token(s))
    8003147c:	c37fc0ef          	jal	ra,8002e0b2 <json_next_token>
    80031480:	20051a63          	bnez	a0,80031694 <json_parse_value+0x284>
quickjs-nuttx/quickjs.c:44863
            val = JS_NewObject(ctx);
    80031484:	8552                	mv	a0,s4
    80031486:	b9fea0ef          	jal	ra,8001c024 <JS_NewObject>
    8003148a:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:44864
            if (JS_IsException(val))
    8003148c:	0005871b          	sext.w	a4,a1
    80031490:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:44863
            val = JS_NewObject(ctx);
    80031492:	8aae                	mv	s5,a1
    80031494:	0005049b          	sext.w	s1,a0
    80031498:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:44864
            if (JS_IsException(val))
    8003149a:	02f70c63          	beq	a4,a5,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44866
            if (s->token.val != '}') {
    8003149e:	4c18                	lw	a4,24(s0)
    800314a0:	07d00793          	li	a5,125
    800314a4:	0cf70863          	beq	a4,a5,80031574 <json_parse_value+0x164>
quickjs-nuttx/quickjs.c:44868
                    if (s->token.val == TOK_STRING) {
    800314a8:	f8100b93          	li	s7,-127
quickjs-nuttx/quickjs.c:44872
                    } else if (s->ext_json && s->token.val == TOK_IDENT) {
    800314ac:	f8300c13          	li	s8,-125
quickjs-nuttx/quickjs.c:44883
                    if (JS_IsException(prop_val)) {
    800314b0:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:44894
                    if (s->token.val != ',')
    800314b2:	02c00d13          	li	s10,44
quickjs-nuttx/quickjs.c:44898
                    if (s->ext_json && s->token.val == '}')
    800314b6:	07d00b13          	li	s6,125
quickjs-nuttx/quickjs.c:44868
                    if (s->token.val == TOK_STRING) {
    800314ba:	4c1c                	lw	a5,24(s0)
    800314bc:	03779563          	bne	a5,s7,800314e6 <json_parse_value+0xd6>
quickjs-nuttx/quickjs.c:44869
                        prop_name = JS_ValueToAtom(ctx, s->token.u.str.str);
    800314c0:	740c                	ld	a1,40(s0)
    800314c2:	7810                	ld	a2,48(s0)
    800314c4:	8552                	mv	a0,s4
    800314c6:	b4cf70ef          	jal	ra,80028812 <JS_ValueToAtom>
    800314ca:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:44870
                        if (prop_name == JS_ATOM_NULL)
    800314ce:	02099663          	bnez	s3,800314fa <json_parse_value+0xea>
quickjs-nuttx/quickjs.c:44972
    JS_FreeValue(ctx, val);
    800314d2:	c026                	sw	s1,0(sp)
    800314d4:	6582                	ld	a1,0(sp)
    800314d6:	864a                	mv	a2,s2
    800314d8:	8552                	mv	a0,s4
    800314da:	ac4da0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44973
    return JS_EXCEPTION;
    800314de:	4799                	li	a5,6
    800314e0:	e802                	sd	zero,16(sp)
    800314e2:	ec3e                	sd	a5,24(sp)
    800314e4:	a055                	j	80031588 <json_parse_value+0x178>
quickjs-nuttx/quickjs.c:44872
                    } else if (s->ext_json && s->token.val == TOK_IDENT) {
    800314e6:	5c38                	lw	a4,120(s0)
    800314e8:	c315                	beqz	a4,8003150c <json_parse_value+0xfc>
quickjs-nuttx/quickjs.c:44872 (discriminator 1)
    800314ea:	03879163          	bne	a5,s8,8003150c <json_parse_value+0xfc>
quickjs-nuttx/quickjs.c:44873
                        prop_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    800314ee:	540c                	lw	a1,40(s0)
    800314f0:	8552                	mv	a0,s4
    800314f2:	c15d90ef          	jal	ra,8000b106 <JS_DupAtom>
    800314f6:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:44878
                    if (json_next_token(s))
    800314fa:	8522                	mv	a0,s0
    800314fc:	bb7fc0ef          	jal	ra,8002e0b2 <json_next_token>
    80031500:	cd11                	beqz	a0,8003151c <json_parse_value+0x10c>
quickjs-nuttx/quickjs.c:44885
                        JS_FreeAtom(ctx, prop_name);
    80031502:	85ce                	mv	a1,s3
    80031504:	8552                	mv	a0,s4
    80031506:	c43d90ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:44886
                        goto fail;
    8003150a:	b7e1                	j	800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44875
                        js_parse_error(s, "expecting property name");
    8003150c:	0003b597          	auipc	a1,0x3b
    80031510:	c5458593          	addi	a1,a1,-940 # 8006c160 <qjsc_repl+0x6bb0>
    80031514:	8522                	mv	a0,s0
    80031516:	f5cfc0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:44876
                        goto fail;
    8003151a:	bf65                	j	800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44880
                    if (json_parse_expect(s, ':'))
    8003151c:	03a00593          	li	a1,58
    80031520:	8522                	mv	a0,s0
    80031522:	88ffe0ef          	jal	ra,8002fdb0 <json_parse_expect>
    80031526:	fd71                	bnez	a0,80031502 <json_parse_value+0xf2>
quickjs-nuttx/quickjs.c:44882
                    prop_val = json_parse_value(s);
    80031528:	8522                	mv	a0,s0
    8003152a:	ee7ff0ef          	jal	ra,80031410 <json_parse_value>
    8003152e:	f02a                	sd	a0,32(sp)
    80031530:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:44883
                    if (JS_IsException(prop_val)) {
    80031532:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:44882
                    prop_val = json_parse_value(s);
    80031536:	872a                	mv	a4,a0
    80031538:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:44883
                    if (JS_IsException(prop_val)) {
    8003153a:	fd9684e3          	beq	a3,s9,80031502 <json_parse_value+0xf2>
quickjs-nuttx/quickjs.c:44888
                    ret = JS_DefinePropertyValue(ctx, val, prop_name,
    8003153e:	c026                	sw	s1,0(sp)
    80031540:	6582                	ld	a1,0(sp)
    80031542:	481d                	li	a6,7
    80031544:	86ce                	mv	a3,s3
    80031546:	8656                	mv	a2,s5
    80031548:	8552                	mv	a0,s4
    8003154a:	ce3e60ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    8003154e:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs.c:44890
                    JS_FreeAtom(ctx, prop_name);
    80031550:	85ce                	mv	a1,s3
    80031552:	8552                	mv	a0,s4
    80031554:	bf5d90ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:44891
                    if (ret < 0)
    80031558:	f60dcde3          	bltz	s11,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44894
                    if (s->token.val != ',')
    8003155c:	4c1c                	lw	a5,24(s0)
    8003155e:	01a79b63          	bne	a5,s10,80031574 <json_parse_value+0x164>
quickjs-nuttx/quickjs.c:44896
                    if (json_next_token(s))
    80031562:	8522                	mv	a0,s0
    80031564:	b4ffc0ef          	jal	ra,8002e0b2 <json_next_token>
    80031568:	f52d                	bnez	a0,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44898
                    if (s->ext_json && s->token.val == '}')
    8003156a:	5c3c                	lw	a5,120(s0)
    8003156c:	d7b9                	beqz	a5,800314ba <json_parse_value+0xaa>
quickjs-nuttx/quickjs.c:44898 (discriminator 1)
    8003156e:	4c1c                	lw	a5,24(s0)
    80031570:	f56795e3          	bne	a5,s6,800314ba <json_parse_value+0xaa>
quickjs-nuttx/quickjs.c:44902
            if (json_parse_expect(s, '}'))
    80031574:	07d00593          	li	a1,125
quickjs-nuttx/quickjs.c:44934
            if (json_parse_expect(s, ']'))
    80031578:	8522                	mv	a0,s0
    8003157a:	837fe0ef          	jal	ra,8002fdb0 <json_parse_expect>
quickjs-nuttx/quickjs.c:44957
        if (json_next_token(s))
    8003157e:	f931                	bnez	a0,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44970
    return val;
    80031580:	c026                	sw	s1,0(sp)
    80031582:	6782                	ld	a5,0(sp)
    80031584:	ec4a                	sd	s2,24(sp)
    80031586:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:44974
}
    80031588:	60ea                	ld	ra,152(sp)
    8003158a:	644a                	ld	s0,144(sp)
    8003158c:	6542                	ld	a0,16(sp)
    8003158e:	65e2                	ld	a1,24(sp)
    80031590:	64aa                	ld	s1,136(sp)
    80031592:	690a                	ld	s2,128(sp)
    80031594:	79e6                	ld	s3,120(sp)
    80031596:	7a46                	ld	s4,112(sp)
    80031598:	7aa6                	ld	s5,104(sp)
    8003159a:	7b06                	ld	s6,96(sp)
    8003159c:	6be6                	ld	s7,88(sp)
    8003159e:	6c46                	ld	s8,80(sp)
    800315a0:	6ca6                	ld	s9,72(sp)
    800315a2:	6d06                	ld	s10,64(sp)
    800315a4:	7de2                	ld	s11,56(sp)
    800315a6:	610d                	addi	sp,sp,160
    800315a8:	8082                	ret
quickjs-nuttx/quickjs.c:44911
            if (json_next_token(s))
    800315aa:	b09fc0ef          	jal	ra,8002e0b2 <json_next_token>
    800315ae:	0e051363          	bnez	a0,80031694 <json_parse_value+0x284>
quickjs-nuttx/quickjs.c:44913
            val = JS_NewArray(ctx);
    800315b2:	8552                	mv	a0,s4
    800315b4:	ca7ea0ef          	jal	ra,8001c25a <JS_NewArray>
    800315b8:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:44914
            if (JS_IsException(val))
    800315ba:	0005871b          	sext.w	a4,a1
    800315be:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:44913
            val = JS_NewArray(ctx);
    800315c0:	89ae                	mv	s3,a1
    800315c2:	0005049b          	sext.w	s1,a0
    800315c6:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:44914
            if (JS_IsException(val))
    800315c8:	f0f705e3          	beq	a4,a5,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44916
            if (s->token.val != ']') {
    800315cc:	4c18                	lw	a4,24(s0)
    800315ce:	05d00793          	li	a5,93
quickjs-nuttx/quickjs.c:44917
                idx = 0;
    800315d2:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:44916
            if (s->token.val != ']') {
    800315d4:	04f70a63          	beq	a4,a5,80031628 <json_parse_value+0x218>
quickjs-nuttx/quickjs.c:44920
                    if (JS_IsException(el))
    800315d8:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:44925
                    if (s->token.val != ',')
    800315da:	02c00c13          	li	s8,44
quickjs-nuttx/quickjs.c:44930
                    if (s->ext_json && s->token.val == ']')
    800315de:	05d00b13          	li	s6,93
quickjs-nuttx/quickjs.c:44919
                    el = json_parse_value(s);
    800315e2:	8522                	mv	a0,s0
    800315e4:	e2dff0ef          	jal	ra,80031410 <json_parse_value>
    800315e8:	f02a                	sd	a0,32(sp)
    800315ea:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:44920
                    if (JS_IsException(el))
    800315ec:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:44919
                    el = json_parse_value(s);
    800315f0:	872a                	mv	a4,a0
    800315f2:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:44920
                    if (JS_IsException(el))
    800315f4:	ed768fe3          	beq	a3,s7,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44922
                    ret = JS_DefinePropertyValueUint32(ctx, val, idx, el, JS_PROP_C_W_E);
    800315f8:	c026                	sw	s1,0(sp)
    800315fa:	6582                	ld	a1,0(sp)
    800315fc:	481d                	li	a6,7
    800315fe:	86d6                	mv	a3,s5
    80031600:	864e                	mv	a2,s3
    80031602:	8552                	mv	a0,s4
    80031604:	9edff0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs.c:44923
                    if (ret < 0)
    80031608:	ec0545e3          	bltz	a0,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44925
                    if (s->token.val != ',')
    8003160c:	4c1c                	lw	a5,24(s0)
    8003160e:	01879d63          	bne	a5,s8,80031628 <json_parse_value+0x218>
quickjs-nuttx/quickjs.c:44927
                    if (json_next_token(s))
    80031612:	8522                	mv	a0,s0
    80031614:	a9ffc0ef          	jal	ra,8002e0b2 <json_next_token>
    80031618:	ea051de3          	bnez	a0,800314d2 <json_parse_value+0xc2>
quickjs-nuttx/quickjs.c:44930
                    if (s->ext_json && s->token.val == ']')
    8003161c:	5c3c                	lw	a5,120(s0)
quickjs-nuttx/quickjs.c:44929
                    idx++;
    8003161e:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:44930
                    if (s->ext_json && s->token.val == ']')
    80031620:	d3e9                	beqz	a5,800315e2 <json_parse_value+0x1d2>
quickjs-nuttx/quickjs.c:44930 (discriminator 1)
    80031622:	4c1c                	lw	a5,24(s0)
    80031624:	fb679fe3          	bne	a5,s6,800315e2 <json_parse_value+0x1d2>
quickjs-nuttx/quickjs.c:44934
            if (json_parse_expect(s, ']'))
    80031628:	05d00593          	li	a1,93
    8003162c:	b7b1                	j	80031578 <json_parse_value+0x168>
quickjs-nuttx/quickjs.c:44939
        val = JS_DupValue(ctx, s->token.u.str.str);
    8003162e:	7508                	ld	a0,40(a0)
    80031630:	780c                	ld	a1,48(s0)
    80031632:	de9d80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80031636:	e02a                	sd	a0,0(sp)
    80031638:	0005049b          	sext.w	s1,a0
    8003163c:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:44957
        if (json_next_token(s))
    8003163e:	8522                	mv	a0,s0
    80031640:	a031                	j	8003164c <json_parse_value+0x23c>
quickjs-nuttx/quickjs.c:44944
        val = s->token.u.num.val;
    80031642:	751c                	ld	a5,40(a0)
    80031644:	5504                	lw	s1,40(a0)
    80031646:	03053903          	ld	s2,48(a0)
    8003164a:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:44957
        if (json_next_token(s))
    8003164c:	a67fc0ef          	jal	ra,8002e0b2 <json_next_token>
    80031650:	b73d                	j	8003157e <json_parse_value+0x16e>
quickjs-nuttx/quickjs.c:44949
        if (s->token.u.ident.atom == JS_ATOM_false ||
    80031652:	5504                	lw	s1,40(a0)
    80031654:	4785                	li	a5,1
    80031656:	ffe4871b          	addiw	a4,s1,-2
    8003165a:	00e7ee63          	bltu	a5,a4,80031676 <json_parse_value+0x266>
quickjs-nuttx/quickjs.c:44951
            val = JS_NewBool(ctx, (s->token.u.ident.atom == JS_ATOM_true));
    8003165e:	14f5                	addi	s1,s1,-3
    80031660:	0014b713          	seqz	a4,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80031664:	d202                	sw	zero,36(sp)
    80031666:	d03a                	sw	a4,32(sp)
    80031668:	f43e                	sd	a5,40(sp)
    8003166a:	7782                	ld	a5,32(sp)
json_parse_value():
quickjs-nuttx/quickjs.c:44951
    8003166c:	0014b493          	seqz	s1,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80031670:	4905                	li	s2,1
    80031672:	e03e                	sd	a5,0(sp)
    80031674:	b7e9                	j	8003163e <json_parse_value+0x22e>
json_parse_value():
quickjs-nuttx/quickjs.c:44952
        } else if (s->token.u.ident.atom == JS_ATOM_null) {
    80031676:	def490e3          	bne	s1,a5,80031456 <json_parse_value+0x46>
quickjs-nuttx/quickjs.c:44953
            val = JS_NULL;
    8003167a:	4909                	li	s2,2
    8003167c:	4481                	li	s1,0
    8003167e:	b7c1                	j	8003163e <json_parse_value+0x22e>
quickjs-nuttx/quickjs.c:44962
        if (s->token.val == TOK_EOF) {
    80031680:	fac00713          	li	a4,-84
    80031684:	dce799e3          	bne	a5,a4,80031456 <json_parse_value+0x46>
quickjs-nuttx/quickjs.c:44963
            js_parse_error(s, "unexpected end of input");
    80031688:	0003b597          	auipc	a1,0x3b
    8003168c:	af058593          	addi	a1,a1,-1296 # 8006c178 <qjsc_repl+0x6bc8>
    80031690:	de2fc0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:44852
    JSValue val = JS_NULL;
    80031694:	4909                	li	s2,2
    80031696:	4481                	li	s1,0
    80031698:	bd2d                	j	800314d2 <json_parse_value+0xc2>

000000008003169a <JS_ParseJSON2>:
JS_ParseJSON2():
quickjs-nuttx/quickjs.c:44978
{
    8003169a:	7115                	addi	sp,sp,-224
    8003169c:	e9a2                	sd	s0,208(sp)
    8003169e:	e1ca                	sd	s2,192(sp)
    800316a0:	842e                	mv	s0,a1
    800316a2:	fd4e                	sd	s3,184(sp)
    800316a4:	892a                	mv	s2,a0
    800316a6:	89b2                	mv	s3,a2
js_parse_init():
quickjs-nuttx/quickjs.c:34212
    memset(s, 0, sizeof(*s));
    800316a8:	4581                	li	a1,0
    800316aa:	07800613          	li	a2,120
    800316ae:	1828                	addi	a0,sp,56
JS_ParseJSON2():
quickjs-nuttx/quickjs.c:44978
{
    800316b0:	ed86                	sd	ra,216(sp)
    800316b2:	e5a6                	sd	s1,200(sp)
    800316b4:	f952                	sd	s4,176(sp)
    800316b6:	84ba                	mv	s1,a4
    800316b8:	8a36                	mv	s4,a3
quickjs-nuttx/quickjs.c:44980
    JSValue val = JS_UNDEFINED;
    800316ba:	e802                	sd	zero,16(sp)
js_parse_init():
quickjs-nuttx/quickjs.c:34212
    memset(s, 0, sizeof(*s));
    800316bc:	586320ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:34215
    s->line_num = 1;
    800316c0:	4785                	li	a5,1
    800316c2:	de3e                	sw	a5,60(sp)
quickjs-nuttx/quickjs.c:34218
    s->token.val = ' ';
    800316c4:	1782                	slli	a5,a5,0x20
quickjs-nuttx/quickjs.c:34216
    s->buf_ptr = (const uint8_t *)input;
    800316c6:	e522                	sd	s0,136(sp)
quickjs-nuttx/quickjs.c:34218
    s->token.val = ' ';
    800316c8:	02078793          	addi	a5,a5,32
quickjs-nuttx/quickjs.c:34217
    s->buf_end = s->buf_ptr + input_len;
    800316cc:	944e                	add	s0,s0,s3
JS_ParseJSON2():
quickjs-nuttx/quickjs.c:44983
    s->ext_json = ((flags & JS_PARSE_JSON_EXT) != 0);
    800316ce:	8885                	andi	s1,s1,1
quickjs-nuttx/quickjs.c:44984
    if (json_next_token(s))
    800316d0:	1808                	addi	a0,sp,48
js_parse_init():
quickjs-nuttx/quickjs.c:34213
    s->ctx = ctx;
    800316d2:	f84a                	sd	s2,48(sp)
quickjs-nuttx/quickjs.c:34214
    s->filename = filename;
    800316d4:	e0d2                	sd	s4,64(sp)
quickjs-nuttx/quickjs.c:34217
    s->buf_end = s->buf_ptr + input_len;
    800316d6:	e922                	sd	s0,144(sp)
quickjs-nuttx/quickjs.c:34218
    s->token.val = ' ';
    800316d8:	e4be                	sd	a5,72(sp)
JS_ParseJSON2():
quickjs-nuttx/quickjs.c:44983
    s->ext_json = ((flags & JS_PARSE_JSON_EXT) != 0);
    800316da:	d526                	sw	s1,168(sp)
quickjs-nuttx/quickjs.c:44984
    if (json_next_token(s))
    800316dc:	9d7fc0ef          	jal	ra,8002e0b2 <json_next_token>
quickjs-nuttx/quickjs.c:44980
    JSValue val = JS_UNDEFINED;
    800316e0:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:44984
    if (json_next_token(s))
    800316e2:	e929                	bnez	a0,80031734 <JS_ParseJSON2+0x9a>
quickjs-nuttx/quickjs.c:44986
    val = json_parse_value(s);
    800316e4:	1808                	addi	a0,sp,48
    800316e6:	d2bff0ef          	jal	ra,80031410 <json_parse_value>
    800316ea:	e82a                	sd	a0,16(sp)
    800316ec:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:44987
    if (JS_IsException(val))
    800316ee:	0005871b          	sext.w	a4,a1
    800316f2:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:44986
    val = json_parse_value(s);
    800316f4:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:44987
    if (JS_IsException(val))
    800316f6:	02f70f63          	beq	a4,a5,80031734 <JS_ParseJSON2+0x9a>
quickjs-nuttx/quickjs.c:44989
    if (s->token.val != TOK_EOF) {
    800316fa:	4726                	lw	a4,72(sp)
    800316fc:	fac00793          	li	a5,-84
    80031700:	02f71063          	bne	a4,a5,80031720 <JS_ParseJSON2+0x86>
quickjs-nuttx/quickjs.c:44993
    return val;
    80031704:	67c2                	ld	a5,16(sp)
    80031706:	f03e                	sd	a5,32(sp)
    80031708:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:44998
}
    8003170a:	60ee                	ld	ra,216(sp)
    8003170c:	644e                	ld	s0,208(sp)
quickjs-nuttx/quickjs.c:44997
    return JS_EXCEPTION;
    8003170e:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:44998
}
    80031710:	7502                	ld	a0,32(sp)
    80031712:	75a2                	ld	a1,40(sp)
    80031714:	64ae                	ld	s1,200(sp)
    80031716:	690e                	ld	s2,192(sp)
    80031718:	79ea                	ld	s3,184(sp)
    8003171a:	7a4a                	ld	s4,176(sp)
    8003171c:	612d                	addi	sp,sp,224
    8003171e:	8082                	ret
    80031720:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:44990
        if (js_parse_error(s, "unexpected data at the end"))
    80031722:	1808                	addi	a0,sp,48
    80031724:	0003b597          	auipc	a1,0x3b
    80031728:	a8c58593          	addi	a1,a1,-1396 # 8006c1b0 <qjsc_repl+0x6c00>
    8003172c:	d46fc0ef          	jal	ra,8002dc72 <js_parse_error>
    80031730:	6622                	ld	a2,8(sp)
    80031732:	d969                	beqz	a0,80031704 <JS_ParseJSON2+0x6a>
quickjs-nuttx/quickjs.c:44995
    JS_FreeValue(ctx, val);
    80031734:	65c2                	ld	a1,16(sp)
    80031736:	854a                	mv	a0,s2
    80031738:	866da0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44996
    free_token(s, &s->token);
    8003173c:	00ac                	addi	a1,sp,72
    8003173e:	1808                	addi	a0,sp,48
    80031740:	c58db0ef          	jal	ra,8000cb98 <free_token>
quickjs-nuttx/quickjs.c:44997
    return JS_EXCEPTION;
    80031744:	4799                	li	a5,6
    80031746:	f002                	sd	zero,32(sp)
    80031748:	b7c9                	j	8003170a <JS_ParseJSON2+0x70>

000000008003174a <JS_ParseJSON>:
JS_ParseJSON():
quickjs-nuttx/quickjs.c:45002
{
    8003174a:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:45003
    return JS_ParseJSON2(ctx, buf, buf_len, filename, 0); 
    8003174c:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:45004
}
    8003174e:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:45003
    return JS_ParseJSON2(ctx, buf, buf_len, filename, 0); 
    80031750:	f4bff06f          	j	8003169a <JS_ParseJSON2>

0000000080031754 <js_proxy_revocable>:
js_proxy_revocable():
quickjs-nuttx/quickjs.c:46608
{
    80031754:	7175                	addi	sp,sp,-144
quickjs-nuttx/quickjs.c:46611
    proxy_obj = js_proxy_constructor(ctx, JS_UNDEFINED, argc, argv);
    80031756:	4581                	li	a1,0
    80031758:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:46608
{
    8003175a:	e122                	sd	s0,128(sp)
    8003175c:	f8ca                	sd	s2,112(sp)
    8003175e:	e506                	sd	ra,136(sp)
    80031760:	fca6                	sd	s1,120(sp)
    80031762:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46609
    JSValue proxy_obj, revoke_obj = JS_UNDEFINED, obj;
    80031764:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:46611
    proxy_obj = js_proxy_constructor(ctx, JS_UNDEFINED, argc, argv);
    80031766:	9f9ea0ef          	jal	ra,8001c15e <js_proxy_constructor>
    8003176a:	e82a                	sd	a0,16(sp)
    8003176c:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:46612
    if (JS_IsException(proxy_obj))
    8003176e:	0005879b          	sext.w	a5,a1
    80031772:	4919                	li	s2,6
    80031774:	07278f63          	beq	a5,s2,800317f2 <js_proxy_revocable+0x9e>
quickjs-nuttx/quickjs.c:46614
    revoke_obj = js_proxy_revoke_constructor(ctx, proxy_obj);
    80031778:	e8aa                	sd	a0,80(sp)
    8003177a:	ecae                	sd	a1,88(sp)
js_proxy_revoke_constructor():
quickjs-nuttx/quickjs.c:46603
    return JS_NewCFunctionData(ctx, js_proxy_revoke, 0, 0, 1, &proxy_obj);
    8003177c:	089c                	addi	a5,sp,80
    8003177e:	4705                	li	a4,1
    80031780:	4681                	li	a3,0
    80031782:	4601                	li	a2,0
    80031784:	fffdd597          	auipc	a1,0xfffdd
    80031788:	2a658593          	addi	a1,a1,678 # 8000ea2a <js_proxy_revoke>
    8003178c:	8522                	mv	a0,s0
    8003178e:	b84ff0ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    80031792:	f02a                	sd	a0,32(sp)
    80031794:	f42e                	sd	a1,40(sp)
js_proxy_revocable():
quickjs-nuttx/quickjs.c:46615
    if (JS_IsException(revoke_obj))
    80031796:	0005879b          	sext.w	a5,a1
js_proxy_revoke_constructor():
quickjs-nuttx/quickjs.c:46603
    return JS_NewCFunctionData(ctx, js_proxy_revoke, 0, 0, 1, &proxy_obj);
    8003179a:	84ae                	mv	s1,a1
js_proxy_revocable():
quickjs-nuttx/quickjs.c:46615
    if (JS_IsException(revoke_obj))
    8003179c:	05278c63          	beq	a5,s2,800317f4 <js_proxy_revocable+0xa0>
quickjs-nuttx/quickjs.c:46617
    obj = JS_NewObject(ctx);
    800317a0:	8522                	mv	a0,s0
    800317a2:	883ea0ef          	jal	ra,8001c024 <JS_NewObject>
    800317a6:	f82a                	sd	a0,48(sp)
    800317a8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:46618
    if (JS_IsException(obj))
    800317aa:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:46617
    obj = JS_NewObject(ctx);
    800317ae:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:46618
    if (JS_IsException(obj))
    800317b0:	05278263          	beq	a5,s2,800317f4 <js_proxy_revocable+0xa0>
quickjs-nuttx/quickjs.c:46621
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_proxy, proxy_obj, JS_PROP_C_W_E);
    800317b4:	6742                	ld	a4,16(sp)
    800317b6:	67e2                	ld	a5,24(sp)
    800317b8:	85aa                	mv	a1,a0
    800317ba:	481d                	li	a6,7
    800317bc:	08400693          	li	a3,132
    800317c0:	8522                	mv	a0,s0
    800317c2:	a6be60ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:46622
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_revoke, revoke_obj, JS_PROP_C_W_E);
    800317c6:	77a2                	ld	a5,40(sp)
    800317c8:	7702                	ld	a4,32(sp)
    800317ca:	75c2                	ld	a1,48(sp)
    800317cc:	7662                	ld	a2,56(sp)
    800317ce:	481d                	li	a6,7
    800317d0:	08500693          	li	a3,133
    800317d4:	8522                	mv	a0,s0
    800317d6:	a57e60ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:46623
    return obj;
    800317da:	77c2                	ld	a5,48(sp)
    800317dc:	e8be                	sd	a5,80(sp)
    800317de:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:46628
}
    800317e0:	60aa                	ld	ra,136(sp)
    800317e2:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:46627
    return JS_EXCEPTION;
    800317e4:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:46628
}
    800317e6:	6546                	ld	a0,80(sp)
    800317e8:	65e6                	ld	a1,88(sp)
    800317ea:	74e6                	ld	s1,120(sp)
    800317ec:	7946                	ld	s2,112(sp)
    800317ee:	6149                	addi	sp,sp,144
    800317f0:	8082                	ret
quickjs-nuttx/quickjs.c:46609
    JSValue proxy_obj, revoke_obj = JS_UNDEFINED, obj;
    800317f2:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:46625
    JS_FreeValue(ctx, proxy_obj);
    800317f4:	65c2                	ld	a1,16(sp)
    800317f6:	6662                	ld	a2,24(sp)
    800317f8:	8522                	mv	a0,s0
    800317fa:	fa5d90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46626
    JS_FreeValue(ctx, revoke_obj);
    800317fe:	7582                	ld	a1,32(sp)
    80031800:	8626                	mv	a2,s1
    80031802:	8522                	mv	a0,s0
    80031804:	f9bd90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46627
    return JS_EXCEPTION;
    80031808:	4799                	li	a5,6
    8003180a:	e882                	sd	zero,80(sp)
    8003180c:	bfd1                	j	800317e0 <js_proxy_revocable+0x8c>

000000008003180e <js_aggregate_error_constructor>:
js_aggregate_error_constructor():
quickjs-nuttx/quickjs.c:38698
{
    8003180e:	715d                	addi	sp,sp,-80
    80031810:	e0a2                	sd	s0,64(sp)
    80031812:	e486                	sd	ra,72(sp)
    80031814:	e02e                	sd	a1,0(sp)
    80031816:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:38701
    obj = JS_NewObjectProtoClass(ctx,
    80031818:	10853583          	ld	a1,264(a0)
    8003181c:	11053603          	ld	a2,272(a0)
    80031820:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:38698
{
    80031822:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:38701
    obj = JS_NewObjectProtoClass(ctx,
    80031824:	bc0ea0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    80031828:	e82a                	sd	a0,16(sp)
    8003182a:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:38704
    if (JS_IsException(obj))
    8003182c:	0005871b          	sext.w	a4,a1
    80031830:	4799                	li	a5,6
    80031832:	00f71a63          	bne	a4,a5,80031846 <js_aggregate_error_constructor+0x38>
quickjs-nuttx/quickjs.c:38705
        return obj;
    80031836:	f02a                	sd	a0,32(sp)
    80031838:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:38709
}
    8003183a:	60a6                	ld	ra,72(sp)
    8003183c:	6406                	ld	s0,64(sp)
    8003183e:	7502                	ld	a0,32(sp)
    80031840:	75a2                	ld	a1,40(sp)
    80031842:	6161                	addi	sp,sp,80
    80031844:	8082                	ret
quickjs-nuttx/quickjs.c:38706
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_errors, JS_DupValue(ctx, errors),
    80031846:	6502                	ld	a0,0(sp)
    80031848:	65a2                	ld	a1,8(sp)
    8003184a:	bd1d80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003184e:	87ae                	mv	a5,a1
    80031850:	6662                	ld	a2,24(sp)
    80031852:	65c2                	ld	a1,16(sp)
    80031854:	872a                	mv	a4,a0
    80031856:	480d                	li	a6,3
    80031858:	03500693          	li	a3,53
    8003185c:	8522                	mv	a0,s0
    8003185e:	9cfe60ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:38708
    return obj;
    80031862:	67c2                	ld	a5,16(sp)
    80031864:	f03e                	sd	a5,32(sp)
    80031866:	67e2                	ld	a5,24(sp)
    80031868:	f43e                	sd	a5,40(sp)
    8003186a:	bfc1                	j	8003183a <js_aggregate_error_constructor+0x2c>

000000008003186c <js_parse_template>:
js_parse_template():
quickjs-nuttx/quickjs.c:22090
{
    8003186c:	7115                	addi	sp,sp,-224
    8003186e:	e9a2                	sd	s0,208(sp)
    80031870:	f556                	sd	s5,168(sp)
    80031872:	ed5e                	sd	s7,152(sp)
    80031874:	ed86                	sd	ra,216(sp)
    80031876:	e5a6                	sd	s1,200(sp)
    80031878:	e1ca                	sd	s2,192(sp)
    8003187a:	fd4e                	sd	s3,184(sp)
    8003187c:	f952                	sd	s4,176(sp)
    8003187e:	f15a                	sd	s6,160(sp)
    80031880:	e962                	sd	s8,144(sp)
    80031882:	e566                	sd	s9,136(sp)
    80031884:	e16a                	sd	s10,128(sp)
    80031886:	fcee                	sd	s11,120(sp)
quickjs-nuttx/quickjs.c:22096
    raw_array = JS_UNDEFINED; /* avoid warning */
    80031888:	e802                	sd	zero,16(sp)
    8003188a:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs.c:22091
    JSContext *ctx = s->ctx;
    8003188c:	00053a03          	ld	s4,0(a0)
quickjs-nuttx/quickjs.c:22090
{
    80031890:	842a                	mv	s0,a0
    80031892:	8aae                	mv	s5,a1
    80031894:	8bb2                	mv	s7,a2
quickjs-nuttx/quickjs.c:22098
    if (call) {
    80031896:	e98d                	bnez	a1,800318c8 <js_parse_template+0x5c>
quickjs-nuttx/quickjs.c:22097
    template_object = JS_UNDEFINED; /* avoid warning */
    80031898:	f002                	sd	zero,32(sp)
    8003189a:	f402                	sd	zero,40(sp)
    8003189c:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:22096
    raw_array = JS_UNDEFINED; /* avoid warning */
    8003189e:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:22149
            if (str->len != 0 || depth == 0) {
    800318a0:	80000c37          	lui	s8,0x80000
quickjs-nuttx/quickjs.c:22123
            if (JS_DefinePropertyValueUint32(ctx, raw_array, depth,
    800318a4:	6b11                	lui	s6,0x4
quickjs-nuttx/quickjs.c:22118
    depth = 0;
    800318a6:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:22119
    while (s->token.val == TOK_TEMPLATE) {
    800318a8:	f8200d93          	li	s11,-126
quickjs-nuttx/quickjs.c:22121
        cooked = s->token;
    800318ac:	01840c93          	addi	s9,s0,24
quickjs-nuttx/quickjs.c:22149
            if (str->len != 0 || depth == 0) {
    800318b0:	fffc4c13          	not	s8,s8
quickjs-nuttx/quickjs.c:22123
            if (JS_DefinePropertyValueUint32(ctx, raw_array, depth,
    800318b4:	0b11                	addi	s6,s6,4
quickjs-nuttx/quickjs.c:22119
    while (s->token.val == TOK_TEMPLATE) {
    800318b6:	4c1c                	lw	a5,24(s0)
    800318b8:	07b78a63          	beq	a5,s11,8003192c <js_parse_template+0xc0>
quickjs-nuttx/quickjs.c:22184
    return js_parse_expect(s, TOK_TEMPLATE);
    800318bc:	f8200593          	li	a1,-126
    800318c0:	8522                	mv	a0,s0
    800318c2:	ef0fd0ef          	jal	ra,8002efb2 <js_parse_expect>
    800318c6:	a26d                	j	80031a70 <js_parse_template+0x204>
quickjs-nuttx/quickjs.c:22101
        template_object = JS_NewArray(ctx);
    800318c8:	8552                	mv	a0,s4
    800318ca:	991ea0ef          	jal	ra,8001c25a <JS_NewArray>
    800318ce:	f02a                	sd	a0,32(sp)
    800318d0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:22102
        if (JS_IsException(template_object))
    800318d2:	0005879b          	sext.w	a5,a1
    800318d6:	4499                	li	s1,6
quickjs-nuttx/quickjs.c:22101
        template_object = JS_NewArray(ctx);
    800318d8:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:22102
        if (JS_IsException(template_object))
    800318da:	00979463          	bne	a5,s1,800318e2 <js_parse_template+0x76>
quickjs-nuttx/quickjs.c:22126
                return -1;
    800318de:	557d                	li	a0,-1
    800318e0:	aa41                	j	80031a70 <js_parse_template+0x204>
quickjs-nuttx/quickjs.c:22105
        ret = emit_push_const(s, template_object, 0);
    800318e2:	85aa                	mv	a1,a0
    800318e4:	864a                	mv	a2,s2
    800318e6:	4681                	li	a3,0
    800318e8:	8522                	mv	a0,s0
    800318ea:	b2feb0ef          	jal	ra,8001d418 <emit_push_const>
quickjs-nuttx/quickjs.c:22106
        JS_FreeValue(ctx, template_object);
    800318ee:	7582                	ld	a1,32(sp)
    800318f0:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:22105
        ret = emit_push_const(s, template_object, 0);
    800318f2:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:22106
        JS_FreeValue(ctx, template_object);
    800318f4:	8552                	mv	a0,s4
    800318f6:	ea9d90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:22107
        if (ret)
    800318fa:	fe0992e3          	bnez	s3,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22109
        raw_array = JS_NewArray(ctx);
    800318fe:	8552                	mv	a0,s4
    80031900:	95bea0ef          	jal	ra,8001c25a <JS_NewArray>
    80031904:	e82a                	sd	a0,16(sp)
    80031906:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:22110
        if (JS_IsException(raw_array))
    80031908:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:22109
        raw_array = JS_NewArray(ctx);
    8003190c:	872a                	mv	a4,a0
    8003190e:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:22110
        if (JS_IsException(raw_array))
    80031910:	fc9787e3          	beq	a5,s1,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22112
        if (JS_DefinePropertyValue(ctx, template_object, JS_ATOM_raw,
    80031914:	87ae                	mv	a5,a1
    80031916:	7622                	ld	a2,40(sp)
    80031918:	7582                	ld	a1,32(sp)
    8003191a:	6811                	lui	a6,0x4
    8003191c:	07100693          	li	a3,113
    80031920:	8552                	mv	a0,s4
    80031922:	90be60ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80031926:	f6055de3          	bgez	a0,800318a0 <js_parse_template+0x34>
    8003192a:	bf55                	j	800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22120
        const uint8_t *p = s->token.ptr + 1;
    8003192c:	701c                	ld	a5,32(s0)
quickjs-nuttx/quickjs.c:22121
        cooked = s->token;
    8003192e:	03000613          	li	a2,48
    80031932:	85e6                	mv	a1,s9
quickjs-nuttx/quickjs.c:22120
        const uint8_t *p = s->token.ptr + 1;
    80031934:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:22121
        cooked = s->token;
    80031936:	0088                	addi	a0,sp,64
quickjs-nuttx/quickjs.c:22120
        const uint8_t *p = s->token.ptr + 1;
    80031938:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:22121
        cooked = s->token;
    8003193a:	472320ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:22122
        if (call) {
    8003193e:	080a8363          	beqz	s5,800319c4 <js_parse_template+0x158>
quickjs-nuttx/quickjs.c:22123
            if (JS_DefinePropertyValueUint32(ctx, raw_array, depth,
    80031942:	7408                	ld	a0,40(s0)
    80031944:	780c                	ld	a1,48(s0)
    80031946:	00048d1b          	sext.w	s10,s1
    8003194a:	ad1d80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003194e:	87ae                	mv	a5,a1
    80031950:	fc2e                	sd	a1,56(sp)
    80031952:	65c2                	ld	a1,16(sp)
    80031954:	872a                	mv	a4,a0
    80031956:	f82a                	sd	a0,48(sp)
    80031958:	885a                	mv	a6,s6
    8003195a:	86ea                	mv	a3,s10
    8003195c:	864e                	mv	a2,s3
    8003195e:	8552                	mv	a0,s4
    80031960:	ec4e                	sd	s3,24(sp)
    80031962:	e8eff0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    80031966:	f6054ce3          	bltz	a0,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22131
            if (js_parse_string(s, '`', FALSE, p, &cooked, &p)) {
    8003196a:	66a2                	ld	a3,8(sp)
    8003196c:	003c                	addi	a5,sp,8
    8003196e:	0098                	addi	a4,sp,64
    80031970:	4601                	li	a2,0
    80031972:	06000593          	li	a1,96
    80031976:	8522                	mv	a0,s0
    80031978:	cb2fc0ef          	jal	ra,8002de2a <js_parse_string>
    8003197c:	c501                	beqz	a0,80031984 <js_parse_template+0x118>
quickjs-nuttx/quickjs.c:22132
                cooked.u.str.str = JS_UNDEFINED;
    8003197e:	478d                	li	a5,3
    80031980:	e882                	sd	zero,80(sp)
    80031982:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:22134
            if (JS_DefinePropertyValueUint32(ctx, template_object, depth,
    80031984:	6746                	ld	a4,80(sp)
    80031986:	67e6                	ld	a5,88(sp)
    80031988:	7582                	ld	a1,32(sp)
    8003198a:	885a                	mv	a6,s6
    8003198c:	86ea                	mv	a3,s10
    8003198e:	864a                	mv	a2,s2
    80031990:	8552                	mv	a0,s4
    80031992:	f44a                	sd	s2,40(sp)
    80031994:	e5cff0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    80031998:	f40543e3          	bltz	a0,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22165
        if (s->token.u.str.sep == '`')
    8003199c:	5c18                	lw	a4,56(s0)
    8003199e:	06000793          	li	a5,96
    800319a2:	0af71063          	bne	a4,a5,80031a42 <js_parse_template+0x1d6>
quickjs-nuttx/quickjs.c:22187
    if (call) {
    800319a6:	100a9363          	bnez	s5,80031aac <js_parse_template+0x240>
quickjs-nuttx/quickjs.c:22193
        emit_op(s, OP_call_method);
    800319aa:	8522                	mv	a0,s0
    800319ac:	02400593          	li	a1,36
    800319b0:	f46d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22194
        emit_u16(s, depth - 1);
    800319b4:	fff4859b          	addiw	a1,s1,-1
    800319b8:	15c2                	slli	a1,a1,0x30
    800319ba:	91c1                	srli	a1,a1,0x30
    800319bc:	8522                	mv	a0,s0
    800319be:	e06d70ef          	jal	ra,80008fc4 <emit_u16>
    800319c2:	a211                	j	80031ac6 <js_parse_template+0x25a>
quickjs-nuttx/quickjs.c:22144
            JS_FreeValue(ctx, s->token.u.str.str);
    800319c4:	740c                	ld	a1,40(s0)
    800319c6:	7810                	ld	a2,48(s0)
    800319c8:	8552                	mv	a0,s4
    800319ca:	dd5d90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:22146
            if (js_parse_string(s, '`', TRUE, p, &cooked, &p))
    800319ce:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:22145
            s->token.u.str.str = JS_UNDEFINED;
    800319d0:	478d                	li	a5,3
    800319d2:	f81c                	sd	a5,48(s0)
    800319d4:	02043423          	sd	zero,40(s0)
quickjs-nuttx/quickjs.c:22146
            if (js_parse_string(s, '`', TRUE, p, &cooked, &p))
    800319d8:	003c                	addi	a5,sp,8
    800319da:	0098                	addi	a4,sp,64
    800319dc:	4605                	li	a2,1
    800319de:	06000593          	li	a1,96
    800319e2:	8522                	mv	a0,s0
    800319e4:	c46fc0ef          	jal	ra,8002de2a <js_parse_string>
    800319e8:	ee051be3          	bnez	a0,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22149
            if (str->len != 0 || depth == 0) {
    800319ec:	65c6                	ld	a1,80(sp)
    800319ee:	41dc                	lw	a5,4(a1)
    800319f0:	00fc77b3          	and	a5,s8,a5
    800319f4:	e391                	bnez	a5,800319f8 <js_parse_template+0x18c>
quickjs-nuttx/quickjs.c:22149 (discriminator 1)
    800319f6:	e0a9                	bnez	s1,80031a38 <js_parse_template+0x1cc>
quickjs-nuttx/quickjs.c:22150
                ret = emit_push_const(s, cooked.u.str.str, 1);
    800319f8:	65c6                	ld	a1,80(sp)
    800319fa:	6666                	ld	a2,88(sp)
    800319fc:	4685                	li	a3,1
    800319fe:	8522                	mv	a0,s0
    80031a00:	a19eb0ef          	jal	ra,8001d418 <emit_push_const>
    80031a04:	8d2a                	mv	s10,a0
quickjs-nuttx/quickjs.c:22151
                JS_FreeValue(s->ctx, cooked.u.str.str);
    80031a06:	65c6                	ld	a1,80(sp)
    80031a08:	6666                	ld	a2,88(sp)
    80031a0a:	6008                	ld	a0,0(s0)
    80031a0c:	d93d90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:22152
                if (ret)
    80031a10:	ec0d17e3          	bnez	s10,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22154
                if (depth == 0) {
    80031a14:	e085                	bnez	s1,80031a34 <js_parse_template+0x1c8>
quickjs-nuttx/quickjs.c:22155
                    if (s->token.u.str.sep == '`')
    80031a16:	5c18                	lw	a4,56(s0)
    80031a18:	06000793          	li	a5,96
    80031a1c:	0af70563          	beq	a4,a5,80031ac6 <js_parse_template+0x25a>
quickjs-nuttx/quickjs.c:22157
                    emit_op(s, OP_get_field2);
    80031a20:	04200593          	li	a1,66
    80031a24:	8522                	mv	a0,s0
    80031a26:	ed0d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22158
                    emit_atom(s, JS_ATOM_concat);
    80031a2a:	05d00593          	li	a1,93
    80031a2e:	8522                	mv	a0,s0
    80031a30:	efad90ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22160
                depth++;
    80031a34:	2485                	addiw	s1,s1,1
    80031a36:	b79d                	j	8003199c <js_parse_template+0x130>
quickjs-nuttx/quickjs.c:22162
                JS_FreeValue(s->ctx, cooked.u.str.str);
    80031a38:	6666                	ld	a2,88(sp)
    80031a3a:	6008                	ld	a0,0(s0)
    80031a3c:	d63d90ef          	jal	ra,8000b79e <JS_FreeValue>
    80031a40:	bfb1                	j	8003199c <js_parse_template+0x130>
quickjs-nuttx/quickjs.c:22167
        if (next_token(s))
    80031a42:	8522                	mv	a0,s0
    80031a44:	b43fc0ef          	jal	ra,8002e586 <next_token>
    80031a48:	e8051be3          	bnez	a0,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22169
        if (js_parse_expr(s))
    80031a4c:	8522                	mv	a0,s0
    80031a4e:	2ce030ef          	jal	ra,80034d1c <js_parse_expr>
    80031a52:	e80516e3          	bnez	a0,800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22172
        if (s->token.val != '}') {
    80031a56:	4c18                	lw	a4,24(s0)
    80031a58:	07d00793          	li	a5,125
quickjs-nuttx/quickjs.c:22171
        depth++;
    80031a5c:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:22172
        if (s->token.val != '}') {
    80031a5e:	02f70863          	beq	a4,a5,80031a8e <js_parse_template+0x222>
quickjs-nuttx/quickjs.c:22173
            return js_parse_error(s, "expected '}' after template expression");
    80031a62:	0003a597          	auipc	a1,0x3a
    80031a66:	76e58593          	addi	a1,a1,1902 # 8006c1d0 <qjsc_repl+0x6c20>
    80031a6a:	8522                	mv	a0,s0
    80031a6c:	a06fc0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:22198
}
    80031a70:	60ee                	ld	ra,216(sp)
    80031a72:	644e                	ld	s0,208(sp)
    80031a74:	64ae                	ld	s1,200(sp)
    80031a76:	690e                	ld	s2,192(sp)
    80031a78:	79ea                	ld	s3,184(sp)
    80031a7a:	7a4a                	ld	s4,176(sp)
    80031a7c:	7aaa                	ld	s5,168(sp)
    80031a7e:	7b0a                	ld	s6,160(sp)
    80031a80:	6bea                	ld	s7,152(sp)
    80031a82:	6c4a                	ld	s8,144(sp)
    80031a84:	6caa                	ld	s9,136(sp)
    80031a86:	6d0a                	ld	s10,128(sp)
    80031a88:	7de6                	ld	s11,120(sp)
    80031a8a:	612d                	addi	sp,sp,224
    80031a8c:	8082                	ret
quickjs-nuttx/quickjs.c:22176
        free_token(s, &s->token);
    80031a8e:	85e6                	mv	a1,s9
    80031a90:	8522                	mv	a0,s0
    80031a92:	906db0ef          	jal	ra,8000cb98 <free_token>
quickjs-nuttx/quickjs.c:22180
        s->last_line_num = s->token.line_num;
    80031a96:	4c5c                	lw	a5,28(s0)
quickjs-nuttx/quickjs.c:22181
        if (js_parse_template_part(s, s->buf_ptr))
    80031a98:	6c2c                	ld	a1,88(s0)
quickjs-nuttx/quickjs.c:22179
        s->got_lf = FALSE;
    80031a9a:	04042423          	sw	zero,72(s0)
quickjs-nuttx/quickjs.c:22180
        s->last_line_num = s->token.line_num;
    80031a9e:	c41c                	sw	a5,8(s0)
quickjs-nuttx/quickjs.c:22181
        if (js_parse_template_part(s, s->buf_ptr))
    80031aa0:	8522                	mv	a0,s0
    80031aa2:	9bbfc0ef          	jal	ra,8002e45c <js_parse_template_part>
    80031aa6:	e00508e3          	beqz	a0,800318b6 <js_parse_template+0x4a>
    80031aaa:	bd15                	j	800318de <js_parse_template+0x72>
quickjs-nuttx/quickjs.c:22189
        seal_template_obj(ctx, raw_array);
    80031aac:	65c2                	ld	a1,16(sp)
    80031aae:	864e                	mv	a2,s3
    80031ab0:	8552                	mv	a0,s4
    80031ab2:	d87e80ef          	jal	ra,8001a838 <seal_template_obj>
quickjs-nuttx/quickjs.c:22190
        seal_template_obj(ctx, template_object);
    80031ab6:	7582                	ld	a1,32(sp)
    80031ab8:	864a                	mv	a2,s2
    80031aba:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:22191
        *argc = depth + 1;
    80031abc:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:22190
        seal_template_obj(ctx, template_object);
    80031abe:	d7be80ef          	jal	ra,8001a838 <seal_template_obj>
quickjs-nuttx/quickjs.c:22191
        *argc = depth + 1;
    80031ac2:	009ba023          	sw	s1,0(s7)
quickjs-nuttx/quickjs.c:22197
    return next_token(s);
    80031ac6:	8522                	mv	a0,s0
    80031ac8:	abffc0ef          	jal	ra,8002e586 <next_token>
    80031acc:	b755                	j	80031a70 <js_parse_template+0x204>

0000000080031ace <js_parse_postfix_expr>:
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24302
{
    80031ace:	7135                	addi	sp,sp,-160
    80031ad0:	e922                	sd	s0,144(sp)
    80031ad2:	f8d2                	sd	s4,112(sp)
    80031ad4:	ed06                	sd	ra,152(sp)
    80031ad6:	e526                	sd	s1,136(sp)
    80031ad8:	e14a                	sd	s2,128(sp)
    80031ada:	fcce                	sd	s3,120(sp)
    80031adc:	f4d6                	sd	s5,104(sp)
    80031ade:	f0da                	sd	s6,96(sp)
    80031ae0:	ecde                	sd	s7,88(sp)
    80031ae2:	e8e2                	sd	s8,80(sp)
    80031ae4:	e4e6                	sd	s9,72(sp)
    80031ae6:	e0ea                	sd	s10,64(sp)
    80031ae8:	fc6e                	sd	s11,56(sp)
quickjs-nuttx/quickjs.c:24308
    switch(s->token.val) {
    80031aea:	4d1c                	lw	a5,24(a0)
    80031aec:	fb900713          	li	a4,-71
quickjs-nuttx/quickjs.c:24302
{
    80031af0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:24305
    BOOL accept_lparen = (parse_flags & PF_POSTFIX_CALL) != 0;
    80031af2:	00b03a33          	snez	s4,a1
quickjs-nuttx/quickjs.c:24308
    switch(s->token.val) {
    80031af6:	08e7d463          	bge	a5,a4,80031b7e <js_parse_postfix_expr+0xb0>
    80031afa:	fad00713          	li	a4,-83
    80031afe:	04e7d163          	bge	a5,a4,80031b40 <js_parse_postfix_expr+0x72>
    80031b02:	0807879b          	addiw	a5,a5,128
    80031b06:	0007869b          	sext.w	a3,a5
    80031b0a:	4719                	li	a4,6
    80031b0c:	04d77d63          	bgeu	a4,a3,80031b66 <js_parse_postfix_expr+0x98>
quickjs-nuttx/quickjs.c:24576
                              (int)(s->buf_ptr - s->token.ptr), s->token.ptr);
    80031b10:	6c30                	ld	a2,88(s0)
quickjs-nuttx/quickjs.c:24575
        return js_parse_error(s, "unexpected token in expression: '%.*s'",
    80031b12:	7014                	ld	a3,32(s0)
    80031b14:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24967
}
    80031b16:	644a                	ld	s0,144(sp)
    80031b18:	60ea                	ld	ra,152(sp)
    80031b1a:	64aa                	ld	s1,136(sp)
    80031b1c:	690a                	ld	s2,128(sp)
    80031b1e:	79e6                	ld	s3,120(sp)
    80031b20:	7a46                	ld	s4,112(sp)
    80031b22:	7aa6                	ld	s5,104(sp)
    80031b24:	7b06                	ld	s6,96(sp)
    80031b26:	6be6                	ld	s7,88(sp)
    80031b28:	6c46                	ld	s8,80(sp)
    80031b2a:	6ca6                	ld	s9,72(sp)
    80031b2c:	6d06                	ld	s10,64(sp)
    80031b2e:	7de2                	ld	s11,56(sp)
quickjs-nuttx/quickjs.c:24575
        return js_parse_error(s, "unexpected token in expression: '%.*s'",
    80031b30:	9e15                	subw	a2,a2,a3
    80031b32:	0003b597          	auipc	a1,0x3b
    80031b36:	86e58593          	addi	a1,a1,-1938 # 8006c3a0 <qjsc_repl+0x6df0>
quickjs-nuttx/quickjs.c:24967
}
    80031b3a:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:24575
        return js_parse_error(s, "unexpected token in expression: '%.*s'",
    80031b3c:	936fc06f          	j	8002dc72 <js_parse_error>
    80031b40:	0537879b          	addiw	a5,a5,83
    80031b44:	0007869b          	sext.w	a3,a5
    80031b48:	472d                	li	a4,11
    80031b4a:	fcd763e3          	bltu	a4,a3,80031b10 <js_parse_postfix_expr+0x42>
    80031b4e:	02079713          	slli	a4,a5,0x20
    80031b52:	01e75793          	srli	a5,a4,0x1e
    80031b56:	0003b717          	auipc	a4,0x3b
    80031b5a:	90a70713          	addi	a4,a4,-1782 # 8006c460 <qjsc_repl+0x6eb0>
    80031b5e:	97ba                	add	a5,a5,a4
    80031b60:	439c                	lw	a5,0(a5)
    80031b62:	97ba                	add	a5,a5,a4
    80031b64:	8782                	jr	a5
    80031b66:	02079713          	slli	a4,a5,0x20
    80031b6a:	01e75793          	srli	a5,a4,0x1e
    80031b6e:	0003b717          	auipc	a4,0x3b
    80031b72:	92270713          	addi	a4,a4,-1758 # 8006c490 <qjsc_repl+0x6ee0>
    80031b76:	97ba                	add	a5,a5,a4
    80031b78:	439c                	lw	a5,0(a5)
    80031b7a:	97ba                	add	a5,a5,a4
    80031b7c:	8782                	jr	a5
quickjs-nuttx/quickjs.c:24308
    switch(s->token.val) {
    80031b7e:	fd000713          	li	a4,-48
    80031b82:	74e78863          	beq	a5,a4,800322d2 <js_parse_postfix_expr+0x804>
    80031b86:	fd100713          	li	a4,-47
    80031b8a:	02e7d663          	bge	a5,a4,80031bb6 <js_parse_postfix_expr+0xe8>
    80031b8e:	fca00713          	li	a4,-54
    80031b92:	22e78d63          	beq	a5,a4,80031dcc <js_parse_postfix_expr+0x2fe>
    80031b96:	fcf00713          	li	a4,-49
    80031b9a:	7ce78163          	beq	a5,a4,8003235c <js_parse_postfix_expr+0x88e>
    80031b9e:	fc700713          	li	a4,-57
    80031ba2:	f6e797e3          	bne	a5,a4,80031b10 <js_parse_postfix_expr+0x42>
quickjs-nuttx/quickjs.c:24407
        if (js_parse_function_decl(s, JS_PARSE_FUNC_EXPR,
    80031ba6:	4d5c                	lw	a5,28(a0)
    80031ba8:	7118                	ld	a4,32(a0)
    80031baa:	4681                	li	a3,0
    80031bac:	4601                	li	a2,0
    80031bae:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:24454
                    if (js_parse_function_decl(s, JS_PARSE_FUNC_EXPR,
    80031bb0:	1c9020ef          	jal	ra,80034578 <js_parse_function_decl.constprop.0>
    80031bb4:	a2a5                	j	80031d1c <js_parse_postfix_expr+0x24e>
quickjs-nuttx/quickjs.c:24308
    switch(s->token.val) {
    80031bb6:	02f00713          	li	a4,47
    80031bba:	1ee78463          	beq	a5,a4,80031da2 <js_parse_postfix_expr+0x2d4>
    80031bbe:	00f74963          	blt	a4,a5,80031bd0 <js_parse_postfix_expr+0x102>
    80031bc2:	02800713          	li	a4,40
    80031bc6:	f4e795e3          	bne	a5,a4,80031b10 <js_parse_postfix_expr+0x42>
quickjs-nuttx/quickjs.c:24403
        if (js_parse_expr_paren(s))
    80031bca:	3d4030ef          	jal	ra,80034f9e <js_parse_expr_paren>
    80031bce:	a2b9                	j	80031d1c <js_parse_postfix_expr+0x24e>
quickjs-nuttx/quickjs.c:24308
    switch(s->token.val) {
    80031bd0:	fdf7f793          	andi	a5,a5,-33
    80031bd4:	05b00713          	li	a4,91
    80031bd8:	f2e79ce3          	bne	a5,a4,80031b10 <js_parse_postfix_expr+0x42>
quickjs-nuttx/quickjs.c:24484
            if (js_parse_skip_parens_token(s, &skip_bits, FALSE) == '=') {
    80031bdc:	4601                	li	a2,0
    80031bde:	086c                	addi	a1,sp,28
    80031be0:	d8cfd0ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
    80031be4:	03d00793          	li	a5,61
    80031be8:	2ef51b63          	bne	a0,a5,80031ede <js_parse_postfix_expr+0x410>
quickjs-nuttx/quickjs.c:24485
                if (js_parse_destructuring_element(s, 0, 0, FALSE, skip_bits & SKIP_HAS_ELLIPSIS, TRUE) < 0)
    80031bec:	4772                	lw	a4,28(sp)
    80031bee:	4785                	li	a5,1
    80031bf0:	4681                	li	a3,0
    80031bf2:	8b09                	andi	a4,a4,2
    80031bf4:	4601                	li	a2,0
    80031bf6:	4581                	li	a1,0
    80031bf8:	8522                	mv	a0,s0
    80031bfa:	6b6010ef          	jal	ra,800332b0 <js_parse_destructuring_element>
    80031bfe:	1e055463          	bgez	a0,80031de6 <js_parse_postfix_expr+0x318>
    80031c02:	a0dd                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24312
            val = s->token.u.num.val;
    80031c04:	7910                	ld	a2,48(a0)
    80031c06:	750c                	ld	a1,40(a0)
    80031c08:	f432                	sd	a2,40(sp)
    80031c0a:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:24314
            if (JS_VALUE_GET_TAG(val) == JS_TAG_INT) {
    80031c0c:	0006079b          	sext.w	a5,a2
    80031c10:	ebad                	bnez	a5,80031c82 <js_parse_postfix_expr+0x1b4>
quickjs-nuttx/quickjs.c:24312
            val = s->token.u.num.val;
    80031c12:	5504                	lw	s1,40(a0)
quickjs-nuttx/quickjs.c:24315
                emit_op(s, OP_push_i32);
    80031c14:	4585                	li	a1,1
    80031c16:	ce0d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24316
                emit_u32(s, JS_VALUE_GET_INT(val));
    80031c1a:	85a6                	mv	a1,s1
    80031c1c:	8522                	mv	a0,s0
    80031c1e:	e6ed70ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:24349
        if (next_token(s))
    80031c22:	8522                	mv	a0,s0
    80031c24:	963fc0ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:24307
    call_type = FUNC_CALL_NORMAL;
    80031c28:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:24349
        if (next_token(s))
    80031c2a:	ed5d                	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24579
    optional_chaining_label = -1;
    80031c2c:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:24733
                if (arg_count >= 65535) {
    80031c2e:	6b41                	lui	s6,0x10
quickjs-nuttx/quickjs.c:24579
    optional_chaining_label = -1;
    80031c30:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:24733
                if (arg_count >= 65535) {
    80031c32:	1b79                	addi	s6,s6,-2
has_with_scope():
quickjs-nuttx/quickjs.c:23483
            if (vd->var_name == JS_ATOM__with_)
    80031c34:	05500b93          	li	s7,85
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24584
        if (s->token.val == TOK_QUESTION_MARK_DOT) {
    80031c38:	4c1c                	lw	a5,24(s0)
    80031c3a:	fa900713          	li	a4,-87
quickjs-nuttx/quickjs.c:24581
        JSFunctionDef *fd = s->cur_func;
    80031c3e:	06843983          	ld	s3,104(s0)
quickjs-nuttx/quickjs.c:24584
        if (s->token.val == TOK_QUESTION_MARK_DOT) {
    80031c42:	7ce79363          	bne	a5,a4,80032408 <js_parse_postfix_expr+0x93a>
quickjs-nuttx/quickjs.c:24586
            if (next_token(s))
    80031c46:	8522                	mv	a0,s0
    80031c48:	93ffc0ef          	jal	ra,8002e586 <next_token>
    80031c4c:	ed51                	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24589
            if (s->token.val == '(' && accept_lparen) {
    80031c4e:	4c1c                	lw	a5,24(s0)
    80031c50:	02800713          	li	a4,40
    80031c54:	7ae79463          	bne	a5,a4,800323fc <js_parse_postfix_expr+0x92e>
quickjs-nuttx/quickjs.c:24589 (discriminator 1)
    80031c58:	060a17e3          	bnez	s4,800324c6 <js_parse_postfix_expr+0x9f8>
quickjs-nuttx/quickjs.c:24588
            has_optional_chain = TRUE;
    80031c5c:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:24892
            if (s->token.val == TOK_PRIVATE_NAME) {
    80031c5e:	4c08                	lw	a0,24(s0)
    80031c60:	fab00793          	li	a5,-85
    80031c64:	4cf511e3          	bne	a0,a5,80032926 <js_parse_postfix_expr+0xe58>
quickjs-nuttx/quickjs.c:24894
                if (get_prev_opcode(fd) == OP_get_super) {
    80031c68:	854e                	mv	a0,s3
    80031c6a:	abed60ef          	jal	ra,80007f28 <get_prev_opcode>
    80031c6e:	03400793          	li	a5,52
    80031c72:	46f51ee3          	bne	a0,a5,800328ee <js_parse_postfix_expr+0xe20>
quickjs-nuttx/quickjs.c:24895
                    return js_parse_error(s, "private class field forbidden after super");
    80031c76:	0003a597          	auipc	a1,0x3a
    80031c7a:	7a258593          	addi	a1,a1,1954 # 8006c418 <qjsc_repl+0x6e68>
    80031c7e:	7a40006f          	j	80032422 <js_parse_postfix_expr+0x954>
quickjs-nuttx/quickjs.c:24319
            if (JS_VALUE_GET_TAG(val) == JS_TAG_BIG_FLOAT) {
    80031c82:	575d                	li	a4,-9
quickjs-nuttx/quickjs.c:24326
                if (emit_push_const(s, val, 0) < 0)
    80031c84:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:24319
            if (JS_VALUE_GET_TAG(val) == JS_TAG_BIG_FLOAT) {
    80031c86:	08e79263          	bne	a5,a4,80031d0a <js_parse_postfix_expr+0x23c>
quickjs-nuttx/quickjs.c:24326
                if (emit_push_const(s, val, 0) < 0)
    80031c8a:	f8eeb0ef          	jal	ra,8001d418 <emit_push_const>
    80031c8e:	04054d63          	bltz	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24328
                e = s->token.u.num.exponent;
    80031c92:	7c0c                	ld	a1,56(s0)
quickjs-nuttx/quickjs.c:24329
                if (e == (int32_t)e) {
    80031c94:	0005849b          	sext.w	s1,a1
    80031c98:	02b49063          	bne	s1,a1,80031cb8 <js_parse_postfix_expr+0x1ea>
quickjs-nuttx/quickjs.c:24330
                    emit_op(s, OP_push_i32);
    80031c9c:	4585                	li	a1,1
    80031c9e:	8522                	mv	a0,s0
    80031ca0:	c56d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24331
                    emit_u32(s, e);
    80031ca4:	85a6                	mv	a1,s1
    80031ca6:	8522                	mv	a0,s0
    80031ca8:	de4d70ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:24341
                emit_op(s, OP_mul_pow10);
    80031cac:	0b300593          	li	a1,179
    80031cb0:	8522                	mv	a0,s0
    80031cb2:	c44d70ef          	jal	ra,800090f6 <emit_op>
    80031cb6:	b7b5                	j	80031c22 <js_parse_postfix_expr+0x154>
quickjs-nuttx/quickjs.c:24333
                    val = JS_NewBigInt64_1(s->ctx, e);
    80031cb8:	6008                	ld	a0,0(s0)
    80031cba:	b8cec0ef          	jal	ra,8001e046 <JS_NewBigInt64_1>
    80031cbe:	f02a                	sd	a0,32(sp)
    80031cc0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:24334
                    if (JS_IsException(val))
    80031cc2:	0005871b          	sext.w	a4,a1
    80031cc6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:24333
                    val = JS_NewBigInt64_1(s->ctx, e);
    80031cc8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:24334
                    if (JS_IsException(val))
    80031cca:	00f70f63          	beq	a4,a5,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24336
                    ret = emit_push_const(s, val, 0);
    80031cce:	85aa                	mv	a1,a0
    80031cd0:	4681                	li	a3,0
    80031cd2:	8522                	mv	a0,s0
    80031cd4:	f44eb0ef          	jal	ra,8001d418 <emit_push_const>
    80031cd8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:24337
                    JS_FreeValue(s->ctx, val);
    80031cda:	7582                	ld	a1,32(sp)
    80031cdc:	7622                	ld	a2,40(sp)
    80031cde:	6008                	ld	a0,0(s0)
    80031ce0:	abfd90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:24338
                    if (ret < 0)
    80031ce4:	fc04d4e3          	bgez	s1,80031cac <js_parse_postfix_expr+0x1de>
quickjs-nuttx/quickjs.c:24388
                return -1;
    80031ce8:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:24967
}
    80031cea:	60ea                	ld	ra,152(sp)
    80031cec:	644a                	ld	s0,144(sp)
    80031cee:	690a                	ld	s2,128(sp)
    80031cf0:	79e6                	ld	s3,120(sp)
    80031cf2:	7a46                	ld	s4,112(sp)
    80031cf4:	7aa6                	ld	s5,104(sp)
    80031cf6:	7b06                	ld	s6,96(sp)
    80031cf8:	6be6                	ld	s7,88(sp)
    80031cfa:	6c46                	ld	s8,80(sp)
    80031cfc:	6ca6                	ld	s9,72(sp)
    80031cfe:	6d06                	ld	s10,64(sp)
    80031d00:	7de2                	ld	s11,56(sp)
    80031d02:	8526                	mv	a0,s1
    80031d04:	64aa                	ld	s1,136(sp)
    80031d06:	610d                	addi	sp,sp,160
    80031d08:	8082                	ret
quickjs-nuttx/quickjs.c:24345
                if (emit_push_const(s, val, 0) < 0)
    80031d0a:	f0eeb0ef          	jal	ra,8001d418 <emit_push_const>
    80031d0e:	f0055ae3          	bgez	a0,80031c22 <js_parse_postfix_expr+0x154>
    80031d12:	bfd9                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24353
        if (js_parse_template(s, 0, NULL))
    80031d14:	4601                	li	a2,0
    80031d16:	4581                	li	a1,0
    80031d18:	b55ff0ef          	jal	ra,8003186c <js_parse_template>
quickjs-nuttx/quickjs.c:24492
                    if (js_parse_array_literal(s))
    80031d1c:	c569                	beqz	a0,80031de6 <js_parse_postfix_expr+0x318>
    80031d1e:	b7e9                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24357
        if (emit_push_const(s, s->token.u.str.str, 1))
    80031d20:	750c                	ld	a1,40(a0)
    80031d22:	7910                	ld	a2,48(a0)
    80031d24:	4685                	li	a3,1
    80031d26:	ef2eb0ef          	jal	ra,8001d418 <emit_push_const>
    80031d2a:	fd5d                	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24398
            if (next_token(s))
    80031d2c:	8522                	mv	a0,s0
    80031d2e:	859fc0ef          	jal	ra,8002e586 <next_token>
    80031d32:	b7ed                	j	80031d1c <js_parse_postfix_expr+0x24e>
quickjs-nuttx/quickjs.c:24364
        s->buf_ptr -= 2;
    80031d34:	6d3c                	ld	a5,88(a0)
    80031d36:	17f9                	addi	a5,a5,-2
quickjs-nuttx/quickjs.c:24367
        s->buf_ptr--;
    80031d38:	ec3c                	sd	a5,88(s0)
quickjs-nuttx/quickjs.c:24372
            if (!s->ctx->compile_regexp)
    80031d3a:	601c                	ld	a5,0(s0)
quickjs-nuttx/quickjs.c:24373
                return js_parse_error(s, "RegExp are not supported");
    80031d3c:	0003a597          	auipc	a1,0x3a
    80031d40:	4bc58593          	addi	a1,a1,1212 # 8006c1f8 <qjsc_repl+0x6c48>
quickjs-nuttx/quickjs.c:24372
            if (!s->ctx->compile_regexp)
    80031d44:	1c07b783          	ld	a5,448(a5)
    80031d48:	50078663          	beqz	a5,80032254 <js_parse_postfix_expr+0x786>
quickjs-nuttx/quickjs.c:24375
            if (js_parse_regexp(s))
    80031d4c:	8522                	mv	a0,s0
    80031d4e:	a7cfd0ef          	jal	ra,8002efca <js_parse_regexp>
    80031d52:	e02a                	sd	a0,0(sp)
    80031d54:	f951                	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24377
            ret = emit_push_const(s, s->token.u.regexp.body, 0);
    80031d56:	740c                	ld	a1,40(s0)
    80031d58:	7810                	ld	a2,48(s0)
    80031d5a:	4681                	li	a3,0
    80031d5c:	8522                	mv	a0,s0
    80031d5e:	ebaeb0ef          	jal	ra,8001d418 <emit_push_const>
quickjs-nuttx/quickjs.c:24378
            str = s->ctx->compile_regexp(s->ctx, s->token.u.regexp.body,
    80031d62:	6008                	ld	a0,0(s0)
    80031d64:	7c14                	ld	a3,56(s0)
    80031d66:	6038                	ld	a4,64(s0)
    80031d68:	7810                	ld	a2,48(s0)
    80031d6a:	1c053803          	ld	a6,448(a0)
    80031d6e:	740c                	ld	a1,40(s0)
    80031d70:	9802                	jalr	a6
    80031d72:	f02a                	sd	a0,32(sp)
    80031d74:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:24380
            if (JS_IsException(str)) {
    80031d76:	0005869b          	sext.w	a3,a1
    80031d7a:	4719                	li	a4,6
    80031d7c:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:24378
            str = s->ctx->compile_regexp(s->ctx, s->token.u.regexp.body,
    80031d7e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:24380
            if (JS_IsException(str)) {
    80031d80:	02e69463          	bne	a3,a4,80031da8 <js_parse_postfix_expr+0x2da>
quickjs-nuttx/quickjs.c:24383
                if (s->cur_func && s->cur_func->backtrace_barrier)
    80031d84:	7438                	ld	a4,104(s0)
    80031d86:	c709                	beqz	a4,80031d90 <js_parse_postfix_expr+0x2c2>
quickjs-nuttx/quickjs.c:24383 (discriminator 1)
    80031d88:	08072783          	lw	a5,128(a4)
    80031d8c:	c391                	beqz	a5,80031d90 <js_parse_postfix_expr+0x2c2>
quickjs-nuttx/quickjs.c:24384
                    backtrace_flags = JS_BACKTRACE_FLAG_SINGLE_LEVEL;
    80031d8e:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:24385
                build_backtrace(s->ctx, s->ctx->rt->current_exception,
    80031d90:	6008                	ld	a0,0(s0)
    80031d92:	4c58                	lw	a4,28(s0)
    80031d94:	6814                	ld	a3,16(s0)
    80031d96:	6d10                	ld	a2,24(a0)
    80031d98:	726c                	ld	a1,224(a2)
    80031d9a:	7670                	ld	a2,232(a2)
    80031d9c:	9e5f30ef          	jal	ra,80025780 <build_backtrace>
    80031da0:	b7a1                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24367
        s->buf_ptr--;
    80031da2:	6d3c                	ld	a5,88(a0)
    80031da4:	17fd                	addi	a5,a5,-1
    80031da6:	bf49                	j	80031d38 <js_parse_postfix_expr+0x26a>
quickjs-nuttx/quickjs.c:24390
            ret = emit_push_const(s, str, 0);
    80031da8:	85aa                	mv	a1,a0
    80031daa:	4681                	li	a3,0
    80031dac:	8522                	mv	a0,s0
    80031dae:	e6aeb0ef          	jal	ra,8001d418 <emit_push_const>
    80031db2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:24391
            JS_FreeValue(s->ctx, str);
    80031db4:	7582                	ld	a1,32(sp)
    80031db6:	7622                	ld	a2,40(sp)
    80031db8:	6008                	ld	a0,0(s0)
    80031dba:	9e5d90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:24392
            if (ret)
    80031dbe:	f48d                	bnez	s1,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24397
            emit_op(s, OP_regexp);
    80031dc0:	03300593          	li	a1,51
    80031dc4:	8522                	mv	a0,s0
    80031dc6:	b30d70ef          	jal	ra,800090f6 <emit_op>
    80031dca:	b78d                	j	80031d2c <js_parse_postfix_expr+0x25e>
quickjs-nuttx/quickjs.c:24413
        if (js_parse_class(s, TRUE, JS_PARSE_EXPORT_NONE))
    80031dcc:	4601                	li	a2,0
    80031dce:	4585                	li	a1,1
    80031dd0:	43e030ef          	jal	ra,8003520e <js_parse_class>
    80031dd4:	b7a1                	j	80031d1c <js_parse_postfix_expr+0x24e>
quickjs-nuttx/quickjs.c:24417
        if (next_token(s))
    80031dd6:	fb0fc0ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:24419
        emit_op(s, OP_null);
    80031dda:	459d                	li	a1,7
quickjs-nuttx/quickjs.c:24417
        if (next_token(s))
    80031ddc:	f00516e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24436
        emit_op(s, OP_push_true);
    80031de0:	8522                	mv	a0,s0
    80031de2:	b14d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24307
    call_type = FUNC_CALL_NORMAL;
    80031de6:	4901                	li	s2,0
    80031de8:	b591                	j	80031c2c <js_parse_postfix_expr+0x15e>
quickjs-nuttx/quickjs.c:24422
        if (next_token(s))
    80031dea:	f9cfc0ef          	jal	ra,8002e586 <next_token>
    80031dee:	ee051de3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24424
        emit_op(s, OP_scope_get_var);
    80031df2:	0ba00593          	li	a1,186
    80031df6:	8522                	mv	a0,s0
    80031df8:	afed70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24425
        emit_atom(s, JS_ATOM_this);
    80031dfc:	45a1                	li	a1,8
quickjs-nuttx/quickjs.c:24511
            emit_atom(s, JS_ATOM_new_target);
    80031dfe:	8522                	mv	a0,s0
    80031e00:	b2ad90ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24512
            emit_u16(s, 0);
    80031e04:	4581                	li	a1,0
    80031e06:	a8c1                	j	80031ed6 <js_parse_postfix_expr+0x408>
quickjs-nuttx/quickjs.c:24429
        if (next_token(s))
    80031e08:	f7efc0ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:24431
        emit_op(s, OP_push_false);
    80031e0c:	45a5                	li	a1,9
quickjs-nuttx/quickjs.c:24429
        if (next_token(s))
    80031e0e:	d969                	beqz	a0,80031de0 <js_parse_postfix_expr+0x312>
    80031e10:	bde1                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24434
        if (next_token(s))
    80031e12:	f74fc0ef          	jal	ra,8002e586 <next_token>
    80031e16:	ec0519e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24436
        emit_op(s, OP_push_true);
    80031e1a:	45a9                	li	a1,10
    80031e1c:	b7d1                	j	80031de0 <js_parse_postfix_expr+0x312>
quickjs-nuttx/quickjs.c:24441
            if (s->token.u.ident.is_reserved) {
    80031e1e:	591c                	lw	a5,48(a0)
    80031e20:	c38d                	beqz	a5,80031e42 <js_parse_postfix_expr+0x374>
quickjs-nuttx/quickjs.c:24967
}
    80031e22:	644a                	ld	s0,144(sp)
    80031e24:	60ea                	ld	ra,152(sp)
    80031e26:	64aa                	ld	s1,136(sp)
    80031e28:	690a                	ld	s2,128(sp)
    80031e2a:	79e6                	ld	s3,120(sp)
    80031e2c:	7a46                	ld	s4,112(sp)
    80031e2e:	7aa6                	ld	s5,104(sp)
    80031e30:	7b06                	ld	s6,96(sp)
    80031e32:	6be6                	ld	s7,88(sp)
    80031e34:	6c46                	ld	s8,80(sp)
    80031e36:	6ca6                	ld	s9,72(sp)
    80031e38:	6d06                	ld	s10,64(sp)
    80031e3a:	7de2                	ld	s11,56(sp)
    80031e3c:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:24442
                return js_parse_error_reserved_identifier(s);
    80031e3e:	933fd06f          	j	8002f770 <js_parse_error_reserved_identifier>
quickjs-nuttx/quickjs.c:24444
            if (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80031e42:	08600593          	li	a1,134
    80031e46:	828d60ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    80031e4a:	cd1d                	beqz	a0,80031e88 <js_parse_postfix_expr+0x3ba>
quickjs-nuttx/quickjs.c:24445 (discriminator 1)
                peek_token(s, TRUE) != '\n') {
    80031e4c:	4585                	li	a1,1
    80031e4e:	8522                	mv	a0,s0
    80031e50:	e1dd70ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:24444 (discriminator 1)
            if (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80031e54:	47a9                	li	a5,10
    80031e56:	02f50963          	beq	a0,a5,80031e88 <js_parse_postfix_expr+0x3ba>
quickjs-nuttx/quickjs.c:24449
                source_ptr = s->token.ptr;
    80031e5a:	7018                	ld	a4,32(s0)
quickjs-nuttx/quickjs.c:24450
                source_line_num = s->token.line_num;
    80031e5c:	4c5c                	lw	a5,28(s0)
quickjs-nuttx/quickjs.c:24451
                if (next_token(s))
    80031e5e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24449
                source_ptr = s->token.ptr;
    80031e60:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:24450
                source_line_num = s->token.line_num;
    80031e62:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:24451
                if (next_token(s))
    80031e64:	f22fc0ef          	jal	ra,8002e586 <next_token>
    80031e68:	e80510e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24453
                if (s->token.val == TOK_FUNCTION) {
    80031e6c:	4c10                	lw	a2,24(s0)
    80031e6e:	fc700693          	li	a3,-57
    80031e72:	6782                	ld	a5,0(sp)
    80031e74:	6722                	ld	a4,8(sp)
quickjs-nuttx/quickjs.c:24459
                    name = JS_DupAtom(s->ctx, JS_ATOM_async);
    80031e76:	08600493          	li	s1,134
quickjs-nuttx/quickjs.c:24453
                if (s->token.val == TOK_FUNCTION) {
    80031e7a:	04d61263          	bne	a2,a3,80031ebe <js_parse_postfix_expr+0x3f0>
quickjs-nuttx/quickjs.c:24454
                    if (js_parse_function_decl(s, JS_PARSE_FUNC_EXPR,
    80031e7e:	4681                	li	a3,0
    80031e80:	4609                	li	a2,2
    80031e82:	4589                	li	a1,2
    80031e84:	8522                	mv	a0,s0
    80031e86:	b32d                	j	80031bb0 <js_parse_postfix_expr+0xe2>
quickjs-nuttx/quickjs.c:24463
                if (s->token.u.ident.atom == JS_ATOM_arguments &&
    80031e88:	540c                	lw	a1,40(s0)
    80031e8a:	04e00793          	li	a5,78
    80031e8e:	00f59d63          	bne	a1,a5,80031ea8 <js_parse_postfix_expr+0x3da>
quickjs-nuttx/quickjs.c:24464 (discriminator 1)
                    !s->cur_func->arguments_allowed) {
    80031e92:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:24463 (discriminator 1)
                if (s->token.u.ident.atom == JS_ATOM_arguments &&
    80031e94:	5bfc                	lw	a5,116(a5)
    80031e96:	eb89                	bnez	a5,80031ea8 <js_parse_postfix_expr+0x3da>
quickjs-nuttx/quickjs.c:24465
                    js_parse_error(s, "'arguments' identifier is not allowed in class field initializer");
    80031e98:	0003a597          	auipc	a1,0x3a
    80031e9c:	38058593          	addi	a1,a1,896 # 8006c218 <qjsc_repl+0x6c68>
    80031ea0:	8522                	mv	a0,s0
    80031ea2:	dd1fb0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:24466
                    return -1;
    80031ea6:	b589                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24468
                name = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    80031ea8:	6008                	ld	a0,0(s0)
    80031eaa:	a5cd90ef          	jal	ra,8000b106 <JS_DupAtom>
    80031eae:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:24469
                if (next_token(s)) {  /* update line number before emitting code */
    80031eb2:	8522                	mv	a0,s0
    80031eb4:	ed2fc0ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:24470
                    JS_FreeAtom(s->ctx, name);
    80031eb8:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:24469
                if (next_token(s)) {  /* update line number before emitting code */
    80031eba:	1c051e63          	bnez	a0,80032096 <js_parse_postfix_expr+0x5c8>
quickjs-nuttx/quickjs.c:24474
                emit_op(s, OP_scope_get_var);
    80031ebe:	0ba00593          	li	a1,186
    80031ec2:	8522                	mv	a0,s0
    80031ec4:	a32d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24475
                emit_u32(s, name);
    80031ec8:	85a6                	mv	a1,s1
    80031eca:	8522                	mv	a0,s0
    80031ecc:	bc0d70ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:24476
                emit_u16(s, s->cur_func->scope_level);
    80031ed0:	743c                	ld	a5,104(s0)
    80031ed2:	0e07d583          	lhu	a1,224(a5)
quickjs-nuttx/quickjs.c:24512
            emit_u16(s, 0);
    80031ed6:	8522                	mv	a0,s0
    80031ed8:	8ecd70ef          	jal	ra,80008fc4 <emit_u16>
    80031edc:	b729                	j	80031de6 <js_parse_postfix_expr+0x318>
quickjs-nuttx/quickjs.c:24488
                if (s->token.val == '{') {
    80031ede:	4c18                	lw	a4,24(s0)
    80031ee0:	07b00793          	li	a5,123
    80031ee4:	1cf71e63          	bne	a4,a5,800320c0 <js_parse_postfix_expr+0x5f2>
js_parse_object_literal():
quickjs-nuttx/quickjs.c:22574
    if (next_token(s))
    80031ee8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:22569
    JSAtom name = JS_ATOM_NULL;
    80031eea:	d002                	sw	zero,32(sp)
quickjs-nuttx/quickjs.c:22574
    if (next_token(s))
    80031eec:	e9afc0ef          	jal	ra,8002e586 <next_token>
    80031ef0:	892a                	mv	s2,a0
    80031ef2:	1a051163          	bnez	a0,80032094 <js_parse_postfix_expr+0x5c6>
quickjs-nuttx/quickjs.c:22577
    emit_op(s, OP_object);
    80031ef6:	45ad                	li	a1,11
    80031ef8:	8522                	mv	a0,s0
    80031efa:	9fcd70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22584
        if (s->token.val == TOK_ELLIPSIS) {
    80031efe:	fa700b13          	li	s6,-89
quickjs-nuttx/quickjs.c:22608
        } else if (s->token.val == '(') {
    80031f02:	02800b93          	li	s7,40
quickjs-nuttx/quickjs.c:22652
            } else if (name == JS_ATOM___proto__) {
    80031f06:	04500c13          	li	s8,69
quickjs-nuttx/quickjs.c:22620
                if (prop_type == PROP_TYPE_STAR)
    80031f0a:	4c91                	li	s9,4
quickjs-nuttx/quickjs.c:22619
                func_type = JS_PARSE_FUNC_METHOD;
    80031f0c:	4d19                	li	s10,6
quickjs-nuttx/quickjs.c:22622
                else if (prop_type == PROP_TYPE_ASYNC)
    80031f0e:	4d95                	li	s11,5
quickjs-nuttx/quickjs.c:22579
    while (s->token.val != '}') {
    80031f10:	4c1c                	lw	a5,24(s0)
    80031f12:	07d00713          	li	a4,125
    80031f16:	04e78963          	beq	a5,a4,80031f68 <js_parse_postfix_expr+0x49a>
quickjs-nuttx/quickjs.c:22584
        if (s->token.val == TOK_ELLIPSIS) {
    80031f1a:	05679f63          	bne	a5,s6,80031f78 <js_parse_postfix_expr+0x4aa>
quickjs-nuttx/quickjs.c:22585
            if (next_token(s))
    80031f1e:	8522                	mv	a0,s0
    80031f20:	e66fc0ef          	jal	ra,8002e586 <next_token>
    80031f24:	dc0512e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:22587
            if (js_parse_assign_expr(s))
    80031f28:	8522                	mv	a0,s0
    80031f2a:	0ac030ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    80031f2e:	da051de3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:22589
            emit_op(s, OP_null);  /* dummy excludeList */
    80031f32:	459d                	li	a1,7
    80031f34:	8522                	mv	a0,s0
    80031f36:	9c0d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22590
            emit_op(s, OP_copy_data_properties);
    80031f3a:	05300593          	li	a1,83
    80031f3e:	8522                	mv	a0,s0
    80031f40:	9b6d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22591
            emit_u8(s, 2 | (1 << 2) | (0 << 5));
    80031f44:	4599                	li	a1,6
    80031f46:	8522                	mv	a0,s0
    80031f48:	dbdd60ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:22592
            emit_op(s, OP_drop); /* pop excludeList */
    80031f4c:	45b9                	li	a1,14
    80031f4e:	8522                	mv	a0,s0
    80031f50:	9a6d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22593
            emit_op(s, OP_drop); /* pop src object */
    80031f54:	45b9                	li	a1,14
    80031f56:	8522                	mv	a0,s0
    80031f58:	99ed70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22668
        if (s->token.val != ',')
    80031f5c:	4c18                	lw	a4,24(s0)
quickjs-nuttx/quickjs.c:22667
        name = JS_ATOM_NULL;
    80031f5e:	d002                	sw	zero,32(sp)
quickjs-nuttx/quickjs.c:22668
        if (s->token.val != ',')
    80031f60:	02c00793          	li	a5,44
    80031f64:	14f70863          	beq	a4,a5,800320b4 <js_parse_postfix_expr+0x5e6>
quickjs-nuttx/quickjs.c:22673
    if (js_parse_expect(s, '}'))
    80031f68:	07d00593          	li	a1,125
    80031f6c:	8522                	mv	a0,s0
    80031f6e:	844fd0ef          	jal	ra,8002efb2 <js_parse_expect>
    80031f72:	e6050ae3          	beqz	a0,80031de6 <js_parse_postfix_expr+0x318>
    80031f76:	aa39                	j	80032094 <js_parse_postfix_expr+0x5c6>
quickjs-nuttx/quickjs.c:22582
        start_line = s->token.line_num;
    80031f78:	4c5c                	lw	a5,28(s0)
quickjs-nuttx/quickjs.c:22597
        prop_type = js_parse_property_name(s, &name, TRUE, TRUE, FALSE);
    80031f7a:	4701                	li	a4,0
    80031f7c:	4685                	li	a3,1
    80031f7e:	4605                	li	a2,1
    80031f80:	100c                	addi	a1,sp,32
    80031f82:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:22581
        start_ptr = s->token.ptr;
    80031f84:	02043a83          	ld	s5,32(s0)
quickjs-nuttx/quickjs.c:22582
        start_line = s->token.line_num;
    80031f88:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:22597
        prop_type = js_parse_property_name(s, &name, TRUE, TRUE, FALSE);
    80031f8a:	599020ef          	jal	ra,80034d22 <js_parse_property_name>
    80031f8e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:22598
        if (prop_type < 0)
    80031f90:	10054263          	bltz	a0,80032094 <js_parse_postfix_expr+0x5c6>
quickjs-nuttx/quickjs.c:22601
        if (prop_type == PROP_TYPE_VAR) {
    80031f94:	4705                	li	a4,1
    80031f96:	6782                	ld	a5,0(sp)
    80031f98:	02e51b63          	bne	a0,a4,80031fce <js_parse_postfix_expr+0x500>
quickjs-nuttx/quickjs.c:22603
            emit_op(s, OP_scope_get_var);
    80031f9c:	0ba00593          	li	a1,186
    80031fa0:	8522                	mv	a0,s0
    80031fa2:	954d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22604
            emit_atom(s, name);
    80031fa6:	5582                	lw	a1,32(sp)
    80031fa8:	8522                	mv	a0,s0
    80031faa:	980d90ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22605
            emit_u16(s, s->cur_func->scope_level);
    80031fae:	743c                	ld	a5,104(s0)
    80031fb0:	8522                	mv	a0,s0
    80031fb2:	0e07d583          	lhu	a1,224(a5)
    80031fb6:	80ed70ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:22661
                emit_op(s, OP_define_field);
    80031fba:	8522                	mv	a0,s0
    80031fbc:	04c00593          	li	a1,76
    80031fc0:	936d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22662
                emit_atom(s, name);
    80031fc4:	5582                	lw	a1,32(sp)
    80031fc6:	8522                	mv	a0,s0
    80031fc8:	962d90ef          	jal	ra,8000b12a <emit_atom>
    80031fcc:	a0a9                	j	80032016 <js_parse_postfix_expr+0x548>
quickjs-nuttx/quickjs.c:22608
        } else if (s->token.val == '(') {
    80031fce:	4c14                	lw	a3,24(s0)
    80031fd0:	07769e63          	bne	a3,s7,8003204c <js_parse_postfix_expr+0x57e>
quickjs-nuttx/quickjs.c:22609
            BOOL is_getset = (prop_type == PROP_TYPE_GET ||
    80031fd4:	ffe5099b          	addiw	s3,a0,-2
quickjs-nuttx/quickjs.c:22616
            if (is_getset) {
    80031fd8:	05376463          	bltu	a4,s3,80032020 <js_parse_postfix_expr+0x552>
quickjs-nuttx/quickjs.c:22617
                func_type = JS_PARSE_FUNC_GETTER + prop_type - PROP_TYPE_GET;
    80031fdc:	0025059b          	addiw	a1,a0,2
quickjs-nuttx/quickjs.c:22615
            func_kind = JS_FUNC_NORMAL;
    80031fe0:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:22627
            if (js_parse_function_decl(s, func_type, func_kind, JS_ATOM_NULL,
    80031fe2:	8756                	mv	a4,s5
    80031fe4:	4681                	li	a3,0
    80031fe6:	8522                	mv	a0,s0
    80031fe8:	590020ef          	jal	ra,80034578 <js_parse_function_decl.constprop.0>
    80031fec:	8aaa                	mv	s5,a0
    80031fee:	e15d                	bnez	a0,80032094 <js_parse_postfix_expr+0x5c6>
quickjs-nuttx/quickjs.c:22630
            if (name == JS_ATOM_NULL) {
    80031ff0:	5702                	lw	a4,32(sp)
    80031ff2:	e339                	bnez	a4,80032038 <js_parse_postfix_expr+0x56a>
quickjs-nuttx/quickjs.c:22631
                emit_op(s, OP_define_method_computed);
    80031ff4:	05500593          	li	a1,85
    80031ff8:	8522                	mv	a0,s0
    80031ffa:	8fcd70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22636
            if (is_getset) {
    80031ffe:	4705                	li	a4,1
