    8003a000:	f4a6                	sd	s1,104(sp)
    8003a002:	e02e                	sd	a1,0(sp)
    8003a004:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:7966
    JSValue val = JS_UNDEFINED;
    8003a006:	e802                	sd	zero,16(sp)
quickjs-nuttx/quickjs.c:7970
    if (likely((uint64_t)idx <= JS_ATOM_MAX_INT)) {
    8003a008:	fff7c793          	not	a5,a5
quickjs-nuttx/quickjs.c:7965
{
    8003a00c:	892a                	mv	s2,a0
    8003a00e:	89b6                	mv	s3,a3
    8003a010:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs.c:7970
    if (likely((uint64_t)idx <= JS_ATOM_MAX_INT)) {
    8003a012:	04d7e063          	bltu	a5,a3,8003a052 <JS_TryGetPropertyInt64+0x62>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8003a016:	800006b7          	lui	a3,0x80000
    8003a01a:	00d9e6b3          	or	a3,s3,a3
JS_TryGetPropertyInt64():
quickjs-nuttx/quickjs.c:7972
        present = JS_HasProperty(ctx, obj, __JS_AtomFromUInt32(idx));
    8003a01e:	2681                	sext.w	a3,a3
    8003a020:	cd6fe0ef          	jal	ra,800384f6 <JS_HasProperty>
    8003a024:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:7966
    JSValue val = JS_UNDEFINED;
    8003a026:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:7973
        if (present > 0) {
    8003a028:	06a05d63          	blez	a0,8003a0a2 <JS_TryGetPropertyInt64+0xb2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003a02c:	f802                	sd	zero,48(sp)
JS_TryGetPropertyInt64():
quickjs-nuttx/quickjs.c:7974
            val = JS_GetPropertyValue(ctx, obj, JS_NewInt32(ctx, idx));
    8003a02e:	d84e                	sw	s3,48(sp)
    8003a030:	76c2                	ld	a3,48(sp)
    8003a032:	6582                	ld	a1,0(sp)
    8003a034:	6622                	ld	a2,8(sp)
    8003a036:	4701                	li	a4,0
    8003a038:	854a                	mv	a0,s2
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003a03a:	fc02                	sd	zero,56(sp)
JS_TryGetPropertyInt64():
quickjs-nuttx/quickjs.c:7974
    8003a03c:	ed5dc0ef          	jal	ra,80016f10 <JS_GetPropertyValue>
    8003a040:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:7975
            if (unlikely(JS_IsException(val)))
    8003a042:	0005871b          	sext.w	a4,a1
    8003a046:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:7974
            val = JS_GetPropertyValue(ctx, obj, JS_NewInt32(ctx, idx));
    8003a048:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:7975
            if (unlikely(JS_IsException(val)))
    8003a04a:	04f71c63          	bne	a4,a5,8003a0a2 <JS_TryGetPropertyInt64+0xb2>
quickjs-nuttx/quickjs.c:7980
        present = -1;
    8003a04e:	547d                	li	s0,-1
    8003a050:	a889                	j	8003a0a2 <JS_TryGetPropertyInt64+0xb2>
quickjs-nuttx/quickjs.c:7979
        prop = JS_NewAtomInt64(ctx, idx);
    8003a052:	85b6                	mv	a1,a3
    8003a054:	98ce60ef          	jal	ra,800201e0 <JS_NewAtomInt64>
    8003a058:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:7981
        if (likely(prop != JS_ATOM_NULL)) {
    8003a05c:	06098163          	beqz	s3,8003a0be <JS_TryGetPropertyInt64+0xce>
quickjs-nuttx/quickjs.c:7982
            present = JS_HasProperty(ctx, obj, prop);
    8003a060:	6582                	ld	a1,0(sp)
    8003a062:	6622                	ld	a2,8(sp)
    8003a064:	86ce                	mv	a3,s3
    8003a066:	854a                	mv	a0,s2
    8003a068:	c8efe0ef          	jal	ra,800384f6 <JS_HasProperty>
    8003a06c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:7966
    JSValue val = JS_UNDEFINED;
    8003a06e:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:7983
            if (present > 0) {
    8003a070:	02a05563          	blez	a0,8003a09a <JS_TryGetPropertyInt64+0xaa>
quickjs-nuttx/quickjs.c:7984
                val = JS_GetProperty(ctx, obj, prop);
    8003a074:	6702                	ld	a4,0(sp)
    8003a076:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003a078:	4801                	li	a6,0
    8003a07a:	85ba                	mv	a1,a4
    8003a07c:	863e                	mv	a2,a5
    8003a07e:	86ce                	mv	a3,s3
    8003a080:	854a                	mv	a0,s2
    8003a082:	f83a                	sd	a4,48(sp)
    8003a084:	fc3e                	sd	a5,56(sp)
    8003a086:	a25dc0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003a08a:	e82a                	sd	a0,16(sp)
JS_TryGetPropertyInt64():
quickjs-nuttx/quickjs.c:7985
                if (unlikely(JS_IsException(val)))
    8003a08c:	0005871b          	sext.w	a4,a1
    8003a090:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003a092:	84ae                	mv	s1,a1
JS_TryGetPropertyInt64():
quickjs-nuttx/quickjs.c:7985
    8003a094:	00f71363          	bne	a4,a5,8003a09a <JS_TryGetPropertyInt64+0xaa>
quickjs-nuttx/quickjs.c:7986
                    present = -1;
    8003a098:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:7988
            JS_FreeAtom(ctx, prop);
    8003a09a:	85ce                	mv	a1,s3
    8003a09c:	854a                	mv	a0,s2
    8003a09e:	8aad10ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:7991
    *pval = val;
    8003a0a2:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:7993
}
    8003a0a4:	70e6                	ld	ra,120(sp)
    8003a0a6:	8522                	mv	a0,s0
    8003a0a8:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:7991
    *pval = val;
    8003a0aa:	009a3423          	sd	s1,8(s4)
    8003a0ae:	00fa3023          	sd	a5,0(s4)
quickjs-nuttx/quickjs.c:7993
}
    8003a0b2:	74a6                	ld	s1,104(sp)
    8003a0b4:	7906                	ld	s2,96(sp)
    8003a0b6:	69e6                	ld	s3,88(sp)
    8003a0b8:	6a46                	ld	s4,80(sp)
    8003a0ba:	6109                	addi	sp,sp,128
    8003a0bc:	8082                	ret
quickjs-nuttx/quickjs.c:7966
    JSValue val = JS_UNDEFINED;
    8003a0be:	448d                	li	s1,3
    8003a0c0:	b779                	j	8003a04e <JS_TryGetPropertyInt64+0x5e>

000000008003a0c2 <js_array_lastIndexOf>:
js_array_lastIndexOf():
quickjs-nuttx/quickjs.c:39596
{
    8003a0c2:	7175                	addi	sp,sp,-144
    8003a0c4:	e122                	sd	s0,128(sp)
    8003a0c6:	fca6                	sd	s1,120(sp)
    8003a0c8:	f8ca                	sd	s2,112(sp)
    8003a0ca:	e506                	sd	ra,136(sp)
    8003a0cc:	842a                	mv	s0,a0
    8003a0ce:	8936                	mv	s2,a3
    8003a0d0:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:39601
    obj = JS_ToObject(ctx, this_val);
    8003a0d2:	fe9f50ef          	jal	ra,800300ba <JS_ToObject>
    8003a0d6:	862a                	mv	a2,a0
    8003a0d8:	86ae                	mv	a3,a1
    8003a0da:	f02a                	sd	a0,32(sp)
    8003a0dc:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:39602
    if (js_get_length64(ctx, &len, obj))
    8003a0de:	8522                	mv	a0,s0
    8003a0e0:	080c                	addi	a1,sp,16
    8003a0e2:	cefea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003a0e6:	e939                	bnez	a0,8003a13c <js_array_lastIndexOf+0x7a>
quickjs-nuttx/quickjs.c:39606
    if (len > 0) {
    8003a0e8:	6842                	ld	a6,16(sp)
    8003a0ea:	03004b63          	bgtz	a6,8003a120 <js_array_lastIndexOf+0x5e>
quickjs-nuttx/quickjs.c:39605
    res = -1;
    8003a0ee:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:39625
    JS_FreeValue(ctx, obj);
    8003a0f0:	7582                	ld	a1,32(sp)
    8003a0f2:	7622                	ld	a2,40(sp)
    8003a0f4:	8522                	mv	a0,s0
    8003a0f6:	ea8d10ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003a0fa:	0004879b          	sext.w	a5,s1
    8003a0fe:	08f49663          	bne	s1,a5,8003a18a <js_array_lastIndexOf+0xc8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003a102:	d282                	sw	zero,100(sp)
    8003a104:	d0be                	sw	a5,96(sp)
    8003a106:	7706                	ld	a4,96(sp)
    8003a108:	e8ba                	sd	a4,80(sp)
    8003a10a:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003a10c:	c8be                	sw	a5,80(sp)
    8003a10e:	ecba                	sd	a4,88(sp)
js_array_lastIndexOf():
quickjs-nuttx/quickjs.c:39631
}
    8003a110:	60aa                	ld	ra,136(sp)
    8003a112:	640a                	ld	s0,128(sp)
    8003a114:	6546                	ld	a0,80(sp)
    8003a116:	65e6                	ld	a1,88(sp)
    8003a118:	74e6                	ld	s1,120(sp)
    8003a11a:	7946                	ld	s2,112(sp)
    8003a11c:	6149                	addi	sp,sp,144
    8003a11e:	8082                	ret
quickjs-nuttx/quickjs.c:39607
        n = len - 1;
    8003a120:	fff80793          	addi	a5,a6,-1
    8003a124:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:39608
        if (argc > 1) {
    8003a126:	4705                	li	a4,1
    8003a128:	03275663          	bge	a4,s2,8003a154 <js_array_lastIndexOf+0x92>
quickjs-nuttx/quickjs.c:39609
            if (JS_ToInt64Clamp(ctx, &n, argv[1], -1, len - 1, len))
    8003a12c:	6890                	ld	a2,16(s1)
    8003a12e:	6c94                	ld	a3,24(s1)
    8003a130:	577d                	li	a4,-1
    8003a132:	082c                	addi	a1,sp,24
    8003a134:	8522                	mv	a0,s0
    8003a136:	c0bea0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    8003a13a:	cd09                	beqz	a0,8003a154 <js_array_lastIndexOf+0x92>
quickjs-nuttx/quickjs.c:39629
    JS_FreeValue(ctx, obj);
    8003a13c:	7582                	ld	a1,32(sp)
    8003a13e:	7622                	ld	a2,40(sp)
    8003a140:	8522                	mv	a0,s0
    8003a142:	e5cd10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39630
    return JS_EXCEPTION;
    8003a146:	4799                	li	a5,6
    8003a148:	e882                	sd	zero,80(sp)
    8003a14a:	ecbe                	sd	a5,88(sp)
    8003a14c:	b7d1                	j	8003a110 <js_array_lastIndexOf+0x4e>
quickjs-nuttx/quickjs.c:39613
        for (; n >= 0; n--) {
    8003a14e:	67e2                	ld	a5,24(sp)
    8003a150:	17fd                	addi	a5,a5,-1
    8003a152:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:39613 (discriminator 1)
    8003a154:	66e2                	ld	a3,24(sp)
    8003a156:	f806cce3          	bltz	a3,8003a0ee <js_array_lastIndexOf+0x2c>
quickjs-nuttx/quickjs.c:39614
            present = JS_TryGetPropertyInt64(ctx, obj, n, &val);
    8003a15a:	7582                	ld	a1,32(sp)
    8003a15c:	7622                	ld	a2,40(sp)
    8003a15e:	1818                	addi	a4,sp,48
    8003a160:	8522                	mv	a0,s0
    8003a162:	e8fff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39615
            if (present < 0)
    8003a166:	fc054be3          	bltz	a0,8003a13c <js_array_lastIndexOf+0x7a>
quickjs-nuttx/quickjs.c:39617
            if (present) {
    8003a16a:	d175                	beqz	a0,8003a14e <js_array_lastIndexOf+0x8c>
quickjs-nuttx/quickjs.c:39618
                if (js_strict_eq2(ctx, JS_DupValue(ctx, argv[0]), val, JS_EQ_STRICT)) {
    8003a16c:	6088                	ld	a0,0(s1)
    8003a16e:	648c                	ld	a1,8(s1)
    8003a170:	aaad00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a174:	76c2                	ld	a3,48(sp)
    8003a176:	7762                	ld	a4,56(sp)
    8003a178:	862e                	mv	a2,a1
    8003a17a:	4781                	li	a5,0
    8003a17c:	85aa                	mv	a1,a0
    8003a17e:	8522                	mv	a0,s0
    8003a180:	e44d10ef          	jal	ra,8000b7c4 <js_strict_eq2>
    8003a184:	d569                	beqz	a0,8003a14e <js_array_lastIndexOf+0x8c>
quickjs-nuttx/quickjs.c:39619
                    res = n;
    8003a186:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:39620
                    break;
    8003a188:	b7a5                	j	8003a0f0 <js_array_lastIndexOf+0x2e>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003a18a:	d224f7d3          	fcvt.d.l	fa5,s1
    8003a18e:	471d                	li	a4,7
    8003a190:	e20787d3          	fmv.x.d	a5,fa5
js_array_lastIndexOf():
quickjs-nuttx/quickjs.h:230
    return v;
    8003a194:	a8be                	fsd	fa5,80(sp)
    8003a196:	2781                	sext.w	a5,a5
    8003a198:	bf95                	j	8003a10c <js_array_lastIndexOf+0x4a>

000000008003a19a <js_array_indexOf>:
js_array_indexOf():
quickjs-nuttx/quickjs.c:39547
{
    8003a19a:	7131                	addi	sp,sp,-192
    8003a19c:	f922                	sd	s0,176(sp)
    8003a19e:	f526                	sd	s1,168(sp)
    8003a1a0:	f14a                	sd	s2,160(sp)
    8003a1a2:	fd06                	sd	ra,184(sp)
    8003a1a4:	84aa                	mv	s1,a0
    8003a1a6:	e432                	sd	a2,8(sp)
    8003a1a8:	8436                	mv	s0,a3
    8003a1aa:	e02e                	sd	a1,0(sp)
    8003a1ac:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:39553
    obj = JS_ToObject(ctx, this_val);
    8003a1ae:	f0df50ef          	jal	ra,800300ba <JS_ToObject>
    8003a1b2:	862a                	mv	a2,a0
    8003a1b4:	86ae                	mv	a3,a1
    8003a1b6:	f82a                	sd	a0,48(sp)
    8003a1b8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39554
    if (js_get_length64(ctx, &len, obj))
    8003a1ba:	8526                	mv	a0,s1
    8003a1bc:	082c                	addi	a1,sp,24
    8003a1be:	c13ea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003a1c2:	e14d                	bnez	a0,8003a264 <js_array_indexOf+0xca>
quickjs-nuttx/quickjs.c:39558
    if (len > 0) {
    8003a1c4:	6862                	ld	a6,24(sp)
    8003a1c6:	03004b63          	bgtz	a6,8003a1fc <js_array_indexOf+0x62>
quickjs-nuttx/quickjs.c:39557
    res = -1;
    8003a1ca:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:39586
    JS_FreeValue(ctx, obj);
    8003a1cc:	75c2                	ld	a1,48(sp)
    8003a1ce:	7662                	ld	a2,56(sp)
    8003a1d0:	8526                	mv	a0,s1
    8003a1d2:	dccd10ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003a1d6:	0004079b          	sext.w	a5,s0
    8003a1da:	0ef41863          	bne	s0,a5,8003a2ca <js_array_indexOf+0x130>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003a1de:	cb02                	sw	zero,148(sp)
    8003a1e0:	c93e                	sw	a5,144(sp)
    8003a1e2:	674a                	ld	a4,144(sp)
    8003a1e4:	e13a                	sd	a4,128(sp)
    8003a1e6:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003a1e8:	c13e                	sw	a5,128(sp)
    8003a1ea:	e53a                	sd	a4,136(sp)
js_array_indexOf():
quickjs-nuttx/quickjs.c:39592
}
    8003a1ec:	70ea                	ld	ra,184(sp)
    8003a1ee:	744a                	ld	s0,176(sp)
    8003a1f0:	650a                	ld	a0,128(sp)
    8003a1f2:	65aa                	ld	a1,136(sp)
    8003a1f4:	74aa                	ld	s1,168(sp)
    8003a1f6:	790a                	ld	s2,160(sp)
    8003a1f8:	6129                	addi	sp,sp,192
    8003a1fa:	8082                	ret
quickjs-nuttx/quickjs.c:39559
        n = 0;
    8003a1fc:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:39560
        if (argc > 1) {
    8003a1fe:	4785                	li	a5,1
    8003a200:	0487c763          	blt	a5,s0,8003a24e <js_array_indexOf+0xb4>
quickjs-nuttx/quickjs.c:39564
        if (js_get_fast_array(ctx, obj, &arrp, &count)) {
    8003a204:	7542                	ld	a0,48(sp)
    8003a206:	75e2                	ld	a1,56(sp)
    8003a208:	0854                	addi	a3,sp,20
    8003a20a:	1030                	addi	a2,sp,40
    8003a20c:	f53cf0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    8003a210:	e15d                	bnez	a0,8003a2b6 <js_array_indexOf+0x11c>
quickjs-nuttx/quickjs.c:39573 (discriminator 1)
        for (; n < len; n++) {
    8003a212:	7682                	ld	a3,32(sp)
    8003a214:	67e2                	ld	a5,24(sp)
    8003a216:	faf6dae3          	bge	a3,a5,8003a1ca <js_array_indexOf+0x30>
quickjs-nuttx/quickjs.c:39574
            int present = JS_TryGetPropertyInt64(ctx, obj, n, &val);
    8003a21a:	75c2                	ld	a1,48(sp)
    8003a21c:	7662                	ld	a2,56(sp)
    8003a21e:	0098                	addi	a4,sp,64
    8003a220:	8526                	mv	a0,s1
    8003a222:	dcfff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39575
            if (present < 0)
    8003a226:	02054f63          	bltz	a0,8003a264 <js_array_indexOf+0xca>
quickjs-nuttx/quickjs.c:39577
            if (present) {
    8003a22a:	cd41                	beqz	a0,8003a2c2 <js_array_indexOf+0x128>
quickjs-nuttx/quickjs.c:39578
                if (js_strict_eq2(ctx, JS_DupValue(ctx, argv[0]), val, JS_EQ_STRICT)) {
    8003a22c:	00093503          	ld	a0,0(s2)
    8003a230:	00893583          	ld	a1,8(s2)
    8003a234:	9e6d00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a238:	6686                	ld	a3,64(sp)
    8003a23a:	6726                	ld	a4,72(sp)
    8003a23c:	862e                	mv	a2,a1
    8003a23e:	4781                	li	a5,0
    8003a240:	85aa                	mv	a1,a0
    8003a242:	8526                	mv	a0,s1
    8003a244:	d80d10ef          	jal	ra,8000b7c4 <js_strict_eq2>
    8003a248:	cd2d                	beqz	a0,8003a2c2 <js_array_indexOf+0x128>
quickjs-nuttx/quickjs.c:39579
                    res = n;
    8003a24a:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:39580
                    break;
    8003a24c:	b741                	j	8003a1cc <js_array_indexOf+0x32>
quickjs-nuttx/quickjs.c:39561
            if (JS_ToInt64Clamp(ctx, &n, argv[1], 0, len, len))
    8003a24e:	01093603          	ld	a2,16(s2)
    8003a252:	01893683          	ld	a3,24(s2)
    8003a256:	87c2                	mv	a5,a6
    8003a258:	4701                	li	a4,0
    8003a25a:	100c                	addi	a1,sp,32
    8003a25c:	8526                	mv	a0,s1
    8003a25e:	ae3ea0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    8003a262:	d14d                	beqz	a0,8003a204 <js_array_indexOf+0x6a>
quickjs-nuttx/quickjs.c:39590
    JS_FreeValue(ctx, obj);
    8003a264:	75c2                	ld	a1,48(sp)
    8003a266:	7662                	ld	a2,56(sp)
    8003a268:	8526                	mv	a0,s1
    8003a26a:	d34d10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39591
    return JS_EXCEPTION;
    8003a26e:	4799                	li	a5,6
    8003a270:	e102                	sd	zero,128(sp)
    8003a272:	e53e                	sd	a5,136(sp)
    8003a274:	bfa5                	j	8003a1ec <js_array_indexOf+0x52>
quickjs-nuttx/quickjs.c:39566
                if (js_strict_eq2(ctx, JS_DupValue(ctx, argv[0]),
    8003a276:	00093503          	ld	a0,0(s2)
    8003a27a:	00893583          	ld	a1,8(s2)
    8003a27e:	99cd00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a282:	7782                	ld	a5,32(sp)
    8003a284:	e8aa                	sd	a0,80(sp)
    8003a286:	ecae                	sd	a1,88(sp)
    8003a288:	00479713          	slli	a4,a5,0x4
    8003a28c:	77a2                	ld	a5,40(sp)
    8003a28e:	97ba                	add	a5,a5,a4
    8003a290:	6388                	ld	a0,0(a5)
    8003a292:	678c                	ld	a1,8(a5)
    8003a294:	986d00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a298:	872e                	mv	a4,a1
    8003a29a:	f4ae                	sd	a1,104(sp)
    8003a29c:	6666                	ld	a2,88(sp)
    8003a29e:	65c6                	ld	a1,80(sp)
    8003a2a0:	86aa                	mv	a3,a0
    8003a2a2:	f0aa                	sd	a0,96(sp)
    8003a2a4:	4781                	li	a5,0
    8003a2a6:	8526                	mv	a0,s1
    8003a2a8:	d1cd10ef          	jal	ra,8000b7c4 <js_strict_eq2>
    8003a2ac:	7402                	ld	s0,32(sp)
    8003a2ae:	f0051fe3          	bnez	a0,8003a1cc <js_array_indexOf+0x32>
quickjs-nuttx/quickjs.c:39565
            for (; n < count; n++) {
    8003a2b2:	0405                	addi	s0,s0,1
    8003a2b4:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:39565 (discriminator 1)
    8003a2b6:	01416703          	lwu	a4,20(sp)
    8003a2ba:	7782                	ld	a5,32(sp)
    8003a2bc:	fae7cde3          	blt	a5,a4,8003a276 <js_array_indexOf+0xdc>
    8003a2c0:	bf89                	j	8003a212 <js_array_indexOf+0x78>
quickjs-nuttx/quickjs.c:39573
        for (; n < len; n++) {
    8003a2c2:	7782                	ld	a5,32(sp)
    8003a2c4:	0785                	addi	a5,a5,1
    8003a2c6:	f03e                	sd	a5,32(sp)
    8003a2c8:	b7a9                	j	8003a212 <js_array_indexOf+0x78>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003a2ca:	d22477d3          	fcvt.d.l	fa5,s0
    8003a2ce:	471d                	li	a4,7
    8003a2d0:	e20787d3          	fmv.x.d	a5,fa5
js_array_indexOf():
quickjs-nuttx/quickjs.h:230
    return v;
    8003a2d4:	a13e                	fsd	fa5,128(sp)
    8003a2d6:	2781                	sext.w	a5,a5
    8003a2d8:	bf01                	j	8003a1e8 <js_array_indexOf+0x4e>

000000008003a2da <js_array_at>:
js_array_at():
quickjs-nuttx/quickjs.c:39037
{
    8003a2da:	7119                	addi	sp,sp,-128
    8003a2dc:	f8a2                	sd	s0,112(sp)
    8003a2de:	f4a6                	sd	s1,104(sp)
    8003a2e0:	fc86                	sd	ra,120(sp)
    8003a2e2:	842a                	mv	s0,a0
    8003a2e4:	e432                	sd	a2,8(sp)
    8003a2e6:	e02e                	sd	a1,0(sp)
    8003a2e8:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:39043
    obj = JS_ToObject(ctx, this_val);
    8003a2ea:	dd1f50ef          	jal	ra,800300ba <JS_ToObject>
    8003a2ee:	862a                	mv	a2,a0
    8003a2f0:	86ae                	mv	a3,a1
    8003a2f2:	f82a                	sd	a0,48(sp)
    8003a2f4:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39044
    if (js_get_length64(ctx, &len, obj))
    8003a2f6:	8522                	mv	a0,s0
    8003a2f8:	082c                	addi	a1,sp,24
    8003a2fa:	ad7ea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003a2fe:	e559                	bnez	a0,8003a38c <js_array_at+0xb2>
quickjs-nuttx/quickjs.c:39047
    if (JS_ToInt64Sat(ctx, &idx, argv[0]))
    8003a300:	6090                	ld	a2,0(s1)
    8003a302:	6494                	ld	a3,8(s1)
    8003a304:	100c                	addi	a1,sp,32
    8003a306:	8522                	mv	a0,s0
    8003a308:	8d2ea0ef          	jal	ra,800243da <JS_ToInt64Sat>
    8003a30c:	e141                	bnez	a0,8003a38c <js_array_at+0xb2>
quickjs-nuttx/quickjs.c:39050
    if (idx < 0)
    8003a30e:	7702                	ld	a4,32(sp)
    8003a310:	00075563          	bgez	a4,8003a31a <js_array_at+0x40>
quickjs-nuttx/quickjs.c:39051
        idx = len + idx;
    8003a314:	67e2                	ld	a5,24(sp)
    8003a316:	97ba                	add	a5,a5,a4
    8003a318:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:39052
    if (idx < 0 || idx >= len) {
    8003a31a:	7782                	ld	a5,32(sp)
    8003a31c:	0007c563          	bltz	a5,8003a326 <js_array_at+0x4c>
quickjs-nuttx/quickjs.c:39052 (discriminator 1)
    8003a320:	6762                	ld	a4,24(sp)
    8003a322:	02e7c563          	blt	a5,a4,8003a34c <js_array_at+0x72>
quickjs-nuttx/quickjs.c:39053
        ret = JS_UNDEFINED;
    8003a326:	478d                	li	a5,3
    8003a328:	e082                	sd	zero,64(sp)
    8003a32a:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:39063
    JS_FreeValue(ctx, obj);
    8003a32c:	75c2                	ld	a1,48(sp)
    8003a32e:	7662                	ld	a2,56(sp)
    8003a330:	8522                	mv	a0,s0
    8003a332:	c6cd10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39064
    return ret;
    8003a336:	6786                	ld	a5,64(sp)
    8003a338:	e8be                	sd	a5,80(sp)
    8003a33a:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:39068
}
    8003a33c:	70e6                	ld	ra,120(sp)
    8003a33e:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:39067
    return JS_EXCEPTION;
    8003a340:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:39068
}
    8003a342:	6546                	ld	a0,80(sp)
    8003a344:	65e6                	ld	a1,88(sp)
    8003a346:	74a6                	ld	s1,104(sp)
    8003a348:	6109                	addi	sp,sp,128
    8003a34a:	8082                	ret
quickjs-nuttx/quickjs.c:39054
    } else if (js_get_fast_array(ctx, obj, &arrp, &count) && idx < count) {
    8003a34c:	7542                	ld	a0,48(sp)
    8003a34e:	75e2                	ld	a1,56(sp)
    8003a350:	0854                	addi	a3,sp,20
    8003a352:	1030                	addi	a2,sp,40
    8003a354:	e0bcf0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    8003a358:	7682                	ld	a3,32(sp)
    8003a35a:	cd19                	beqz	a0,8003a378 <js_array_at+0x9e>
quickjs-nuttx/quickjs.c:39054 (discriminator 1)
    8003a35c:	01416783          	lwu	a5,20(sp)
    8003a360:	00f6dc63          	bge	a3,a5,8003a378 <js_array_at+0x9e>
quickjs-nuttx/quickjs.c:39055
        ret = JS_DupValue(ctx, arrp[idx]);
    8003a364:	77a2                	ld	a5,40(sp)
    8003a366:	0692                	slli	a3,a3,0x4
    8003a368:	96be                	add	a3,a3,a5
    8003a36a:	6288                	ld	a0,0(a3)
    8003a36c:	668c                	ld	a1,8(a3)
    8003a36e:	8acd00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a372:	e0aa                	sd	a0,64(sp)
    8003a374:	e4ae                	sd	a1,72(sp)
    8003a376:	bf5d                	j	8003a32c <js_array_at+0x52>
quickjs-nuttx/quickjs.c:39057
        int present = JS_TryGetPropertyInt64(ctx, obj, idx, &ret);
    8003a378:	75c2                	ld	a1,48(sp)
    8003a37a:	7662                	ld	a2,56(sp)
    8003a37c:	0098                	addi	a4,sp,64
    8003a37e:	8522                	mv	a0,s0
    8003a380:	c71ff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:39058
        if (present < 0)
    8003a384:	00054463          	bltz	a0,8003a38c <js_array_at+0xb2>
quickjs-nuttx/quickjs.c:39060
        if (!present)
    8003a388:	dd59                	beqz	a0,8003a326 <js_array_at+0x4c>
    8003a38a:	b74d                	j	8003a32c <js_array_at+0x52>
quickjs-nuttx/quickjs.c:39066
    JS_FreeValue(ctx, obj);
    8003a38c:	75c2                	ld	a1,48(sp)
    8003a38e:	7662                	ld	a2,56(sp)
    8003a390:	8522                	mv	a0,s0
    8003a392:	c0cd10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39067
    return JS_EXCEPTION;
    8003a396:	4799                	li	a5,6
    8003a398:	e882                	sd	zero,80(sp)
    8003a39a:	b74d                	j	8003a33c <js_array_at+0x62>

000000008003a39c <js_array_toSpliced>:
js_array_toSpliced():
quickjs-nuttx/quickjs.c:40117
{
    8003a39c:	716d                	addi	sp,sp,-272
    8003a39e:	fda6                	sd	s1,248(sp)
    8003a3a0:	f1d2                	sd	s4,224(sp)
    8003a3a2:	f96a                	sd	s10,176(sp)
    8003a3a4:	e606                	sd	ra,264(sp)
    8003a3a6:	e222                	sd	s0,256(sp)
    8003a3a8:	f9ca                	sd	s2,240(sp)
    8003a3aa:	f5ce                	sd	s3,232(sp)
    8003a3ac:	edd6                	sd	s5,216(sp)
    8003a3ae:	e9da                	sd	s6,208(sp)
    8003a3b0:	e5de                	sd	s7,200(sp)
    8003a3b2:	e1e2                	sd	s8,192(sp)
    8003a3b4:	fd66                	sd	s9,184(sp)
    8003a3b6:	f56e                	sd	s11,168(sp)
    8003a3b8:	8a2a                	mv	s4,a0
    8003a3ba:	ec32                	sd	a2,24(sp)
    8003a3bc:	84b6                	mv	s1,a3
    8003a3be:	e82e                	sd	a1,16(sp)
    8003a3c0:	8d3a                	mv	s10,a4
quickjs-nuttx/quickjs.c:40128
    obj = JS_ToObject(ctx, this_val);
    8003a3c2:	cf9f50ef          	jal	ra,800300ba <JS_ToObject>
    8003a3c6:	862a                	mv	a2,a0
    8003a3c8:	86ae                	mv	a3,a1
    8003a3ca:	f0aa                	sd	a0,96(sp)
    8003a3cc:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:40129
    if (js_get_length64(ctx, &len, obj))
    8003a3ce:	8552                	mv	a0,s4
    8003a3d0:	182c                	addi	a1,sp,56
    8003a3d2:	9ffea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003a3d6:	e529                	bnez	a0,8003a420 <js_array_toSpliced+0x84>
quickjs-nuttx/quickjs.c:40132
    start = 0;
    8003a3d8:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:40133
    if (argc > 0)
    8003a3da:	02904763          	bgtz	s1,8003a408 <js_array_toSpliced+0x6c>
quickjs-nuttx/quickjs.c:40137
    del = 0;
    8003a3de:	e482                	sd	zero,72(sp)
quickjs-nuttx/quickjs.c:40138
    if (argc > 0)
    8003a3e0:	04904563          	bgtz	s1,8003a42a <js_array_toSpliced+0x8e>
quickjs-nuttx/quickjs.c:40144
    add = 0;
    8003a3e4:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:40148
    newlen = len + add - del;
    8003a3e6:	67a6                	ld	a5,72(sp)
    8003a3e8:	7ce2                	ld	s9,56(sp)
    8003a3ea:	40fc8cb3          	sub	s9,s9,a5
quickjs-nuttx/quickjs.c:40149
    if (newlen > MAX_SAFE_INTEGER) {
    8003a3ee:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:40148
    newlen = len + add - del;
    8003a3f0:	9ca6                	add	s9,s9,s1
quickjs-nuttx/quickjs.c:40149
    if (newlen > MAX_SAFE_INTEGER) {
    8003a3f2:	83ad                	srli	a5,a5,0xb
    8003a3f4:	0797d263          	bge	a5,s9,8003a458 <js_array_toSpliced+0xbc>
quickjs-nuttx/quickjs.c:40150
        JS_ThrowTypeError(ctx, "invalid array length");
    8003a3f8:	8552                	mv	a0,s4
    8003a3fa:	00030597          	auipc	a1,0x30
    8003a3fe:	39e58593          	addi	a1,a1,926 # 8006a798 <qjsc_repl+0x51e8>
    8003a402:	a6ade0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:40151
        goto exception;
    8003a406:	a829                	j	8003a420 <js_array_toSpliced+0x84>
quickjs-nuttx/quickjs.c:40134
        if (JS_ToInt64Clamp(ctx, &start, argv[0], 0, len, len))
    8003a408:	7862                	ld	a6,56(sp)
    8003a40a:	000d3603          	ld	a2,0(s10)
    8003a40e:	008d3683          	ld	a3,8(s10)
    8003a412:	87c2                	mv	a5,a6
    8003a414:	4701                	li	a4,0
    8003a416:	008c                	addi	a1,sp,64
    8003a418:	8552                	mv	a0,s4
    8003a41a:	927ea0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    8003a41e:	d161                	beqz	a0,8003a3de <js_array_toSpliced+0x42>
quickjs-nuttx/quickjs.c:40125
    ret = JS_EXCEPTION;
    8003a420:	4499                	li	s1,6
    8003a422:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:40190
    arr = JS_UNDEFINED;
    8003a424:	4b8d                	li	s7,3
    8003a426:	4c01                	li	s8,0
    8003a428:	a401                	j	8003a628 <js_array_toSpliced+0x28c>
quickjs-nuttx/quickjs.c:40139
        del = len - start;
    8003a42a:	6706                	ld	a4,64(sp)
    8003a42c:	77e2                	ld	a5,56(sp)
    8003a42e:	8f99                	sub	a5,a5,a4
    8003a430:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:40140
    if (argc > 1)
    8003a432:	4705                	li	a4,1
    8003a434:	fae488e3          	beq	s1,a4,8003a3e4 <js_array_toSpliced+0x48>
quickjs-nuttx/quickjs.c:40141
        if (JS_ToInt64Clamp(ctx, &del, argv[1], 0, del, 0))
    8003a438:	010d3603          	ld	a2,16(s10)
    8003a43c:	018d3683          	ld	a3,24(s10)
    8003a440:	4801                	li	a6,0
    8003a442:	4701                	li	a4,0
    8003a444:	00ac                	addi	a1,sp,72
    8003a446:	8552                	mv	a0,s4
    8003a448:	8f9ea0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    8003a44c:	f971                	bnez	a0,8003a420 <js_array_toSpliced+0x84>
quickjs-nuttx/quickjs.c:40145
    if (argc > 2)
    8003a44e:	4789                	li	a5,2
    8003a450:	f8f48ae3          	beq	s1,a5,8003a3e4 <js_array_toSpliced+0x48>
quickjs-nuttx/quickjs.c:40146
        add = argc - 2;
    8003a454:	34f9                	addiw	s1,s1,-2
    8003a456:	bf41                	j	8003a3e6 <js_array_toSpliced+0x4a>
quickjs-nuttx/quickjs.c:40154
    arr = js_allocate_fast_array(ctx, newlen);
    8003a458:	85e6                	mv	a1,s9
    8003a45a:	8552                	mv	a0,s4
    8003a45c:	c7ce20ef          	jal	ra,8001c8d8 <js_allocate_fast_array>
    8003a460:	e8aa                	sd	a0,80(sp)
    8003a462:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:40155
    if (JS_IsException(arr))
    8003a464:	0005871b          	sext.w	a4,a1
    8003a468:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40154
    arr = js_allocate_fast_array(ctx, newlen);
    8003a46a:	89aa                	mv	s3,a0
    8003a46c:	892e                	mv	s2,a1
    8003a46e:	8c2a                	mv	s8,a0
    8003a470:	8bae                	mv	s7,a1
quickjs-nuttx/quickjs.c:40155
    if (JS_IsException(arr))
    8003a472:	1af70963          	beq	a4,a5,8003a624 <js_array_toSpliced+0x288>
quickjs-nuttx/quickjs.c:40158
    if (newlen <= 0)
    8003a476:	1b905d63          	blez	s9,8003a630 <js_array_toSpliced+0x294>
quickjs-nuttx/quickjs.c:40162
    pval = &p->u.array.u.values[0];
    8003a47a:	03853d83          	ld	s11,56(a0) # 1038 <asinh-0x7fffefc8>
quickjs-nuttx/quickjs.c:40165
    if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003a47e:	75a6                	ld	a1,104(sp)
    8003a480:	7506                	ld	a0,96(sp)
quickjs-nuttx/quickjs.c:40163
    last = &p->u.array.u.values[newlen];
    8003a482:	004c9b13          	slli	s6,s9,0x4
quickjs-nuttx/quickjs.c:40165
    if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003a486:	1074                	addi	a3,sp,44
    8003a488:	1810                	addi	a2,sp,48
quickjs-nuttx/quickjs.c:40163
    last = &p->u.array.u.values[newlen];
    8003a48a:	9b6e                	add	s6,s6,s11
quickjs-nuttx/quickjs.c:40165
    if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003a48c:	cd3cf0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    8003a490:	0e050763          	beqz	a0,8003a57e <js_array_toSpliced+0x1e2>
quickjs-nuttx/quickjs.c:40165 (discriminator 1)
    8003a494:	02c16703          	lwu	a4,44(sp)
    8003a498:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:40166 (discriminator 1)
        for (i = 0; i < start; i++, pval++)
    8003a49a:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:40165 (discriminator 1)
    if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003a49c:	04f70c63          	beq	a4,a5,8003a4f4 <js_array_toSpliced+0x158>
quickjs-nuttx/quickjs.c:40173 (discriminator 1)
        for (i = 0; i < start; i++, pval++)
    8003a4a0:	6786                	ld	a5,64(sp)
    8003a4a2:	004a9413          	slli	s0,s5,0x4
    8003a4a6:	946e                	add	s0,s0,s11
    8003a4a8:	0afacf63          	blt	s5,a5,8003a566 <js_array_toSpliced+0x1ca>
    8003a4ac:	0492                	slli	s1,s1,0x4
quickjs-nuttx/quickjs.c:40173
    8003a4ae:	4d81                	li	s11,0
    8003a4b0:	01b407b3          	add	a5,s0,s11
quickjs-nuttx/quickjs.c:40176 (discriminator 1)
        for (j = 0; j < add; j++, pval++)
    8003a4b4:	0db49763          	bne	s1,s11,8003a582 <js_array_toSpliced+0x1e6>
quickjs-nuttx/quickjs.c:40178
        for (i += del; i < len; i++, pval++)
    8003a4b8:	66a6                	ld	a3,72(sp)
    8003a4ba:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:40179
            if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval))
    8003a4bc:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:40178
        for (i += del; i < len; i++, pval++)
    8003a4be:	9ab6                	add	s5,s5,a3
quickjs-nuttx/quickjs.c:40178 (discriminator 1)
    8003a4c0:	77e2                	ld	a5,56(sp)
    8003a4c2:	04fadb63          	bge	s5,a5,8003a518 <js_array_toSpliced+0x17c>
quickjs-nuttx/quickjs.c:40179
            if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval))
    8003a4c6:	7586                	ld	a1,96(sp)
    8003a4c8:	7626                	ld	a2,104(sp)
    8003a4ca:	8722                	mv	a4,s0
    8003a4cc:	86d6                	mv	a3,s5
    8003a4ce:	8552                	mv	a0,s4
    8003a4d0:	b21ff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
    8003a4d4:	16950063          	beq	a0,s1,8003a634 <js_array_toSpliced+0x298>
quickjs-nuttx/quickjs.c:40178 (discriminator 2)
        for (i += del; i < len; i++, pval++)
    8003a4d8:	0a85                	addi	s5,s5,1
    8003a4da:	0441                	addi	s0,s0,16
    8003a4dc:	b7d5                	j	8003a4c0 <js_array_toSpliced+0x124>
quickjs-nuttx/quickjs.c:40167 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a4de:	77c2                	ld	a5,48(sp)
    8003a4e0:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:40166 (discriminator 3)
        for (i = 0; i < start; i++, pval++)
    8003a4e2:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:40167 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a4e4:	97b6                	add	a5,a5,a3
    8003a4e6:	6388                	ld	a0,0(a5)
    8003a4e8:	678c                	ld	a1,8(a5)
    8003a4ea:	f31cf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a4ee:	6722                	ld	a4,8(sp)
    8003a4f0:	e308                	sd	a0,0(a4)
    8003a4f2:	e70c                	sd	a1,8(a4)
quickjs-nuttx/quickjs.c:40166 (discriminator 1)
        for (i = 0; i < start; i++, pval++)
    8003a4f4:	6786                	ld	a5,64(sp)
    8003a4f6:	004a9693          	slli	a3,s5,0x4
    8003a4fa:	00dd8733          	add	a4,s11,a3
    8003a4fe:	fefac0e3          	blt	s5,a5,8003a4de <js_array_toSpliced+0x142>
    8003a502:	0492                	slli	s1,s1,0x4
quickjs-nuttx/quickjs.c:40166
    8003a504:	4d81                	li	s11,0
    8003a506:	01b70433          	add	s0,a4,s11
quickjs-nuttx/quickjs.c:40168 (discriminator 1)
        for (j = 0; j < add; j++, pval++)
    8003a50a:	03b49363          	bne	s1,s11,8003a530 <js_array_toSpliced+0x194>
quickjs-nuttx/quickjs.c:40170
        for (i += del; i < len; i++, pval++)
    8003a50e:	67a6                	ld	a5,72(sp)
    8003a510:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:40170 (discriminator 1)
    8003a512:	77e2                	ld	a5,56(sp)
    8003a514:	02faca63          	blt	s5,a5,8003a548 <js_array_toSpliced+0x1ac>
quickjs-nuttx/quickjs.c:40183
    assert(pval == last);
    8003a518:	09640163          	beq	s0,s6,8003a59a <js_array_toSpliced+0x1fe>
quickjs-nuttx/quickjs.c:40183 (discriminator 1)
    8003a51c:	65a9                	lui	a1,0xa
    8003a51e:	4601                	li	a2,0
    8003a520:	cf758593          	addi	a1,a1,-777 # 9cf7 <asinh-0x7fff6309>
    8003a524:	0002f517          	auipc	a0,0x2f
    8003a528:	07450513          	addi	a0,a0,116 # 80069598 <qjsc_repl+0x3fe8>
    8003a52c:	430260ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:40169 (discriminator 3)
            *pval = JS_DupValue(ctx, argv[2 + j]);
    8003a530:	01bd07b3          	add	a5,s10,s11
    8003a534:	7388                	ld	a0,32(a5)
    8003a536:	778c                	ld	a1,40(a5)
    8003a538:	e43a                	sd	a4,8(sp)
    8003a53a:	0dc1                	addi	s11,s11,16
    8003a53c:	edfcf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a540:	6722                	ld	a4,8(sp)
    8003a542:	e008                	sd	a0,0(s0)
    8003a544:	e40c                	sd	a1,8(s0)
quickjs-nuttx/quickjs.c:40168 (discriminator 3)
        for (j = 0; j < add; j++, pval++)
    8003a546:	b7c1                	j	8003a506 <js_array_toSpliced+0x16a>
quickjs-nuttx/quickjs.c:40171 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a548:	77c2                	ld	a5,48(sp)
    8003a54a:	004a9713          	slli	a4,s5,0x4
quickjs-nuttx/quickjs.c:40170 (discriminator 3)
        for (i += del; i < len; i++, pval++)
    8003a54e:	0441                	addi	s0,s0,16
quickjs-nuttx/quickjs.c:40171 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a550:	97ba                	add	a5,a5,a4
    8003a552:	6388                	ld	a0,0(a5)
    8003a554:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:40170 (discriminator 3)
        for (i += del; i < len; i++, pval++)
    8003a556:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:40171 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a558:	ec3cf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a55c:	fea43823          	sd	a0,-16(s0)
    8003a560:	feb43c23          	sd	a1,-8(s0)
quickjs-nuttx/quickjs.c:40170 (discriminator 3)
        for (i += del; i < len; i++, pval++)
    8003a564:	b77d                	j	8003a512 <js_array_toSpliced+0x176>
quickjs-nuttx/quickjs.c:40174
            if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval))
    8003a566:	7586                	ld	a1,96(sp)
    8003a568:	7626                	ld	a2,104(sp)
    8003a56a:	8722                	mv	a4,s0
    8003a56c:	86d6                	mv	a3,s5
    8003a56e:	8552                	mv	a0,s4
    8003a570:	a81ff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
    8003a574:	587d                	li	a6,-1
    8003a576:	0b050f63          	beq	a0,a6,8003a634 <js_array_toSpliced+0x298>
quickjs-nuttx/quickjs.c:40173 (discriminator 2)
        for (i = 0; i < start; i++, pval++)
    8003a57a:	0a85                	addi	s5,s5,1
    8003a57c:	b715                	j	8003a4a0 <js_array_toSpliced+0x104>
    8003a57e:	4a81                	li	s5,0
    8003a580:	b705                	j	8003a4a0 <js_array_toSpliced+0x104>
quickjs-nuttx/quickjs.c:40177 (discriminator 3)
            *pval = JS_DupValue(ctx, argv[2 + j]);
    8003a582:	01bd0733          	add	a4,s10,s11
    8003a586:	7308                	ld	a0,32(a4)
    8003a588:	770c                	ld	a1,40(a4)
    8003a58a:	e43e                	sd	a5,8(sp)
    8003a58c:	0dc1                	addi	s11,s11,16
    8003a58e:	e8dcf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a592:	67a2                	ld	a5,8(sp)
    8003a594:	e388                	sd	a0,0(a5)
    8003a596:	e78c                	sd	a1,8(a5)
quickjs-nuttx/quickjs.c:40176 (discriminator 3)
        for (j = 0; j < add; j++, pval++)
    8003a598:	bf21                	j	8003a4b0 <js_array_toSpliced+0x114>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003a59a:	000c871b          	sext.w	a4,s9
    8003a59e:	02ec9863          	bne	s9,a4,8003a5ce <js_array_toSpliced+0x232>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003a5a2:	cb02                	sw	zero,148(sp)
    8003a5a4:	c93a                	sw	a4,144(sp)
    8003a5a6:	67ca                	ld	a5,144(sp)
    8003a5a8:	e502                	sd	zero,136(sp)
    8003a5aa:	e13e                	sd	a5,128(sp)
    8003a5ac:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003a5ae:	c13a                	sw	a4,128(sp)
js_array_toSpliced():
quickjs-nuttx/quickjs.c:40185
    if (JS_SetProperty(ctx, arr, JS_ATOM_length, JS_NewInt64(ctx, newlen)) < 0)
    8003a5b0:	670a                	ld	a4,128(sp)
    8003a5b2:	65c6                	ld	a1,80(sp)
    8003a5b4:	6666                	ld	a2,88(sp)
    8003a5b6:	03000693          	li	a3,48
    8003a5ba:	8552                	mv	a0,s4
    8003a5bc:	e50fd0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003a5c0:	845a                	mv	s0,s6
    8003a5c2:	06054963          	bltz	a0,8003a634 <js_array_toSpliced+0x298>
quickjs-nuttx/quickjs.c:40189
    ret = arr;
    8003a5c6:	84ca                	mv	s1,s2
quickjs-nuttx/quickjs.c:40190
    arr = JS_UNDEFINED;
    8003a5c8:	4b8d                	li	s7,3
    8003a5ca:	4c01                	li	s8,0
    8003a5cc:	a085                	j	8003a62c <js_array_toSpliced+0x290>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003a5ce:	d22cf7d3          	fcvt.d.l	fa5,s9
    8003a5d2:	479d                	li	a5,7
    8003a5d4:	e2078753          	fmv.x.d	a4,fa5
js_array_toSpliced():
quickjs-nuttx/quickjs.h:230
    return v;
    8003a5d8:	a13e                	fsd	fa5,128(sp)
    8003a5da:	2701                	sext.w	a4,a4
    8003a5dc:	bfc9                	j	8003a5ae <js_array_toSpliced+0x212>
quickjs-nuttx/quickjs.c:40194
        *pval++ = JS_UNDEFINED;
    8003a5de:	01040793          	addi	a5,s0,16
    8003a5e2:	00043023          	sd	zero,0(s0)
    8003a5e6:	e418                	sd	a4,8(s0)
    8003a5e8:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:40193
    while (pval != last)
    8003a5ea:	ff641ae3          	bne	s0,s6,8003a5de <js_array_toSpliced+0x242>
quickjs-nuttx/quickjs.c:40196
    JS_FreeValue(ctx, arr);
    8003a5ee:	85e2                	mv	a1,s8
    8003a5f0:	865e                	mv	a2,s7
    8003a5f2:	8552                	mv	a0,s4
    8003a5f4:	9aad10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40197
    JS_FreeValue(ctx, obj);
    8003a5f8:	7586                	ld	a1,96(sp)
    8003a5fa:	7626                	ld	a2,104(sp)
    8003a5fc:	8552                	mv	a0,s4
    8003a5fe:	9a0d10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40199
}
    8003a602:	60b2                	ld	ra,264(sp)
    8003a604:	6412                	ld	s0,256(sp)
    8003a606:	794e                	ld	s2,240(sp)
    8003a608:	7a0e                	ld	s4,224(sp)
    8003a60a:	6aee                	ld	s5,216(sp)
    8003a60c:	6b4e                	ld	s6,208(sp)
    8003a60e:	6bae                	ld	s7,200(sp)
    8003a610:	6c0e                	ld	s8,192(sp)
    8003a612:	7cea                	ld	s9,184(sp)
    8003a614:	7d4a                	ld	s10,176(sp)
    8003a616:	7daa                	ld	s11,168(sp)
    8003a618:	854e                	mv	a0,s3
    8003a61a:	85a6                	mv	a1,s1
    8003a61c:	79ae                	ld	s3,232(sp)
    8003a61e:	74ee                	ld	s1,248(sp)
    8003a620:	6151                	addi	sp,sp,272
    8003a622:	8082                	ret
quickjs-nuttx/quickjs.c:40125
    ret = JS_EXCEPTION;
    8003a624:	4499                	li	s1,6
    8003a626:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:40124
    last = NULL;
    8003a628:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:40123
    pval = NULL;
    8003a62a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:40194
        *pval++ = JS_UNDEFINED;
    8003a62c:	470d                	li	a4,3
    8003a62e:	bf75                	j	8003a5ea <js_array_toSpliced+0x24e>
quickjs-nuttx/quickjs.c:40189
    ret = arr;
    8003a630:	84ae                	mv	s1,a1
    8003a632:	bbcd                	j	8003a424 <js_array_toSpliced+0x88>
quickjs-nuttx/quickjs.c:40125
    ret = JS_EXCEPTION;
    8003a634:	4499                	li	s1,6
    8003a636:	4981                	li	s3,0
    8003a638:	bfd5                	j	8003a62c <js_array_toSpliced+0x290>

000000008003a63a <js_array_toReversed>:
js_array_toReversed():
quickjs-nuttx/quickjs.c:39959
{
    8003a63a:	7155                	addi	sp,sp,-208
    8003a63c:	f54e                	sd	s3,168(sp)
    8003a63e:	e586                	sd	ra,200(sp)
    8003a640:	e1a2                	sd	s0,192(sp)
    8003a642:	fd26                	sd	s1,184(sp)
    8003a644:	f94a                	sd	s2,176(sp)
    8003a646:	f152                	sd	s4,160(sp)
    8003a648:	ed56                	sd	s5,152(sp)
    8003a64a:	e95a                	sd	s6,144(sp)
    8003a64c:	e55e                	sd	s7,136(sp)
    8003a64e:	89aa                	mv	s3,a0
    8003a650:	e432                	sd	a2,8(sp)
    8003a652:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:39967
    obj = JS_ToObject(ctx, this_val);
    8003a654:	a67f50ef          	jal	ra,800300ba <JS_ToObject>
    8003a658:	862a                	mv	a2,a0
    8003a65a:	86ae                	mv	a3,a1
    8003a65c:	e0aa                	sd	a0,64(sp)
    8003a65e:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39968
    if (js_get_length64(ctx, &len, obj))
    8003a660:	854e                	mv	a0,s3
    8003a662:	102c                	addi	a1,sp,40
    8003a664:	f6cea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003a668:	10051663          	bnez	a0,8003a774 <js_array_toReversed+0x13a>
quickjs-nuttx/quickjs.c:39971
    arr = js_allocate_fast_array(ctx, len);
    8003a66c:	75a2                	ld	a1,40(sp)
    8003a66e:	854e                	mv	a0,s3
    8003a670:	a68e20ef          	jal	ra,8001c8d8 <js_allocate_fast_array>
    8003a674:	f82a                	sd	a0,48(sp)
    8003a676:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39972
    if (JS_IsException(arr))
    8003a678:	0005871b          	sext.w	a4,a1
    8003a67c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:39971
    arr = js_allocate_fast_array(ctx, len);
    8003a67e:	84aa                	mv	s1,a0
    8003a680:	842e                	mv	s0,a1
    8003a682:	8aaa                	mv	s5,a0
    8003a684:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:39972
    if (JS_IsException(arr))
    8003a686:	0af70663          	beq	a4,a5,8003a732 <js_array_toReversed+0xf8>
quickjs-nuttx/quickjs.c:39975
    if (len > 0) {
    8003a68a:	7922                	ld	s2,40(sp)
    8003a68c:	07205863          	blez	s2,8003a6fc <js_array_toReversed+0xc2>
quickjs-nuttx/quickjs.c:39979
        pval = p->u.array.u.values;
    8003a690:	03853b03          	ld	s6,56(a0)
quickjs-nuttx/quickjs.c:39980
        if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003a694:	65a6                	ld	a1,72(sp)
    8003a696:	6506                	ld	a0,64(sp)
    8003a698:	0874                	addi	a3,sp,28
    8003a69a:	1010                	addi	a2,sp,32
    8003a69c:	ac3cf0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
quickjs-nuttx/quickjs.c:39978
        i = len - 1;
    8003a6a0:	197d                	addi	s2,s2,-1
quickjs-nuttx/quickjs.c:39981
            for (; i >= 0; i--, pval++)
    8003a6a2:	5bfd                	li	s7,-1
quickjs-nuttx/quickjs.c:39980
        if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003a6a4:	c12d                	beqz	a0,8003a706 <js_array_toReversed+0xcc>
quickjs-nuttx/quickjs.c:39980 (discriminator 1)
    8003a6a6:	01c16703          	lwu	a4,28(sp)
    8003a6aa:	77a2                	ld	a5,40(sp)
    8003a6ac:	04f71d63          	bne	a4,a5,8003a706 <js_array_toReversed+0xcc>
quickjs-nuttx/quickjs.c:39982 (discriminator 2)
                *pval = JS_DupValue(ctx, arrp[i]);
    8003a6b0:	7782                	ld	a5,32(sp)
    8003a6b2:	00491713          	slli	a4,s2,0x4
quickjs-nuttx/quickjs.c:39981 (discriminator 2)
            for (; i >= 0; i--, pval++)
    8003a6b6:	197d                	addi	s2,s2,-1
quickjs-nuttx/quickjs.c:39982 (discriminator 2)
                *pval = JS_DupValue(ctx, arrp[i]);
    8003a6b8:	97ba                	add	a5,a5,a4
    8003a6ba:	6388                	ld	a0,0(a5)
    8003a6bc:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:39981 (discriminator 2)
            for (; i >= 0; i--, pval++)
    8003a6be:	0b41                	addi	s6,s6,16
quickjs-nuttx/quickjs.c:39982 (discriminator 2)
                *pval = JS_DupValue(ctx, arrp[i]);
    8003a6c0:	d5bcf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a6c4:	feab3823          	sd	a0,-16(s6) # ffffffff7ffffff0 <_ebss+0xfffffffeffefee8a>
    8003a6c8:	febb3c23          	sd	a1,-8(s6)
quickjs-nuttx/quickjs.c:39981 (discriminator 2)
            for (; i >= 0; i--, pval++)
    8003a6cc:	ff7912e3          	bne	s2,s7,8003a6b0 <js_array_toReversed+0x76>
quickjs-nuttx/quickjs.c:39995
        if (JS_SetProperty(ctx, arr, JS_ATOM_length, JS_NewInt64(ctx, len)) < 0)
    8003a6d0:	77a2                	ld	a5,40(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003a6d2:	0007871b          	sext.w	a4,a5
    8003a6d6:	08e79763          	bne	a5,a4,8003a764 <js_array_toReversed+0x12a>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003a6da:	da82                	sw	zero,116(sp)
    8003a6dc:	d8ba                	sw	a4,112(sp)
    8003a6de:	77c6                	ld	a5,112(sp)
    8003a6e0:	f482                	sd	zero,104(sp)
    8003a6e2:	f0be                	sd	a5,96(sp)
    8003a6e4:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003a6e6:	d0ba                	sw	a4,96(sp)
js_array_toReversed():
quickjs-nuttx/quickjs.c:39995
    8003a6e8:	7706                	ld	a4,96(sp)
    8003a6ea:	75c2                	ld	a1,48(sp)
    8003a6ec:	7662                	ld	a2,56(sp)
    8003a6ee:	03000693          	li	a3,48
    8003a6f2:	854e                	mv	a0,s3
    8003a6f4:	d18fd0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003a6f8:	02054d63          	bltz	a0,8003a732 <js_array_toReversed+0xf8>
quickjs-nuttx/quickjs.c:40000
    arr = JS_UNDEFINED;
    8003a6fc:	4a0d                	li	s4,3
    8003a6fe:	4a81                	li	s5,0
    8003a700:	a81d                	j	8003a736 <js_array_toReversed+0xfc>
quickjs-nuttx/quickjs.c:39985
            for (; i >= 0; i--, pval++) {
    8003a702:	fd7907e3          	beq	s2,s7,8003a6d0 <js_array_toReversed+0x96>
quickjs-nuttx/quickjs.c:39986
                if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval)) {
    8003a706:	6586                	ld	a1,64(sp)
    8003a708:	6626                	ld	a2,72(sp)
    8003a70a:	875a                	mv	a4,s6
    8003a70c:	86ca                	mv	a3,s2
    8003a70e:	854e                	mv	a0,s3
    8003a710:	8e1ff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
    8003a714:	874a                	mv	a4,s2
    8003a716:	87da                	mv	a5,s6
quickjs-nuttx/quickjs.c:39985
            for (; i >= 0; i--, pval++) {
    8003a718:	197d                	addi	s2,s2,-1
    8003a71a:	0b41                	addi	s6,s6,16
quickjs-nuttx/quickjs.c:39986
                if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval)) {
    8003a71c:	ff7513e3          	bne	a0,s7,8003a702 <js_array_toReversed+0xc8>
quickjs-nuttx/quickjs.c:39989
                        *pval = JS_UNDEFINED;
    8003a720:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:39988
                    for (; i >= 0; i--, pval++)
    8003a722:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:39989 (discriminator 2)
                        *pval = JS_UNDEFINED;
    8003a724:	0007b023          	sd	zero,0(a5) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    8003a728:	e790                	sd	a2,8(a5)
quickjs-nuttx/quickjs.c:39988 (discriminator 2)
                    for (; i >= 0; i--, pval++)
    8003a72a:	177d                	addi	a4,a4,-1
    8003a72c:	07c1                	addi	a5,a5,16
    8003a72e:	fed71be3          	bne	a4,a3,8003a724 <js_array_toReversed+0xea>
quickjs-nuttx/quickjs.c:39965
    ret = JS_EXCEPTION;
    8003a732:	4419                	li	s0,6
    8003a734:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:40003
    JS_FreeValue(ctx, arr);
    8003a736:	85d6                	mv	a1,s5
    8003a738:	8652                	mv	a2,s4
    8003a73a:	854e                	mv	a0,s3
    8003a73c:	862d10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40004
    JS_FreeValue(ctx, obj);
    8003a740:	6586                	ld	a1,64(sp)
    8003a742:	6626                	ld	a2,72(sp)
    8003a744:	854e                	mv	a0,s3
    8003a746:	858d10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40006
}
    8003a74a:	60ae                	ld	ra,200(sp)
    8003a74c:	85a2                	mv	a1,s0
    8003a74e:	640e                	ld	s0,192(sp)
    8003a750:	794a                	ld	s2,176(sp)
    8003a752:	79aa                	ld	s3,168(sp)
    8003a754:	7a0a                	ld	s4,160(sp)
    8003a756:	6aea                	ld	s5,152(sp)
    8003a758:	6b4a                	ld	s6,144(sp)
    8003a75a:	6baa                	ld	s7,136(sp)
    8003a75c:	8526                	mv	a0,s1
    8003a75e:	74ea                	ld	s1,184(sp)
    8003a760:	6169                	addi	sp,sp,208
    8003a762:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003a764:	d227f7d3          	fcvt.d.l	fa5,a5
    8003a768:	479d                	li	a5,7
    8003a76a:	e2078753          	fmv.x.d	a4,fa5
js_array_toReversed():
quickjs-nuttx/quickjs.h:230
    return v;
    8003a76e:	b0be                	fsd	fa5,96(sp)
    8003a770:	2701                	sext.w	a4,a4
    8003a772:	bf95                	j	8003a6e6 <js_array_toReversed+0xac>
quickjs-nuttx/quickjs.c:39965
    ret = JS_EXCEPTION;
    8003a774:	4419                	li	s0,6
    8003a776:	4481                	li	s1,0
    8003a778:	b751                	j	8003a6fc <js_array_toReversed+0xc2>

000000008003a77a <js_array_with>:
js_array_with():
quickjs-nuttx/quickjs.c:39072
{
    8003a77a:	7115                	addi	sp,sp,-224
    8003a77c:	f952                	sd	s4,176(sp)
    8003a77e:	ed5e                	sd	s7,152(sp)
    8003a780:	ed86                	sd	ra,216(sp)
    8003a782:	e9a2                	sd	s0,208(sp)
    8003a784:	e5a6                	sd	s1,200(sp)
    8003a786:	e1ca                	sd	s2,192(sp)
    8003a788:	fd4e                	sd	s3,184(sp)
    8003a78a:	f556                	sd	s5,168(sp)
    8003a78c:	f15a                	sd	s6,160(sp)
    8003a78e:	e962                	sd	s8,144(sp)
    8003a790:	e566                	sd	s9,136(sp)
    8003a792:	8a2a                	mv	s4,a0
    8003a794:	e432                	sd	a2,8(sp)
    8003a796:	e02e                	sd	a1,0(sp)
    8003a798:	8bba                	mv	s7,a4
quickjs-nuttx/quickjs.c:39080
    obj = JS_ToObject(ctx, this_val);
    8003a79a:	921f50ef          	jal	ra,800300ba <JS_ToObject>
    8003a79e:	862a                	mv	a2,a0
    8003a7a0:	86ae                	mv	a3,a1
    8003a7a2:	e0aa                	sd	a0,64(sp)
    8003a7a4:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39081
    if (js_get_length64(ctx, &len, obj))
    8003a7a6:	8552                	mv	a0,s4
    8003a7a8:	100c                	addi	a1,sp,32
    8003a7aa:	e26ea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003a7ae:	c511                	beqz	a0,8003a7ba <js_array_with+0x40>
quickjs-nuttx/quickjs.c:39078
    ret = JS_EXCEPTION;
    8003a7b0:	4919                	li	s2,6
    8003a7b2:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:39127
    arr = JS_UNDEFINED;
    8003a7b4:	4a8d                	li	s5,3
    8003a7b6:	4b01                	li	s6,0
    8003a7b8:	a22d                	j	8003a8e2 <js_array_with+0x168>
quickjs-nuttx/quickjs.c:39084
    if (JS_ToInt64Sat(ctx, &idx, argv[0]))
    8003a7ba:	000bb603          	ld	a2,0(s7)
    8003a7be:	008bb683          	ld	a3,8(s7)
    8003a7c2:	102c                	addi	a1,sp,40
    8003a7c4:	8552                	mv	a0,s4
    8003a7c6:	c15e90ef          	jal	ra,800243da <JS_ToInt64Sat>
    8003a7ca:	f17d                	bnez	a0,8003a7b0 <js_array_with+0x36>
quickjs-nuttx/quickjs.c:39087
    if (idx < 0)
    8003a7cc:	7722                	ld	a4,40(sp)
    8003a7ce:	00075563          	bgez	a4,8003a7d8 <js_array_with+0x5e>
quickjs-nuttx/quickjs.c:39088
        idx = len + idx;
    8003a7d2:	7782                	ld	a5,32(sp)
    8003a7d4:	97ba                	add	a5,a5,a4
    8003a7d6:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:39090
    if (idx < 0 || idx >= len) {
    8003a7d8:	77a2                	ld	a5,40(sp)
    8003a7da:	0007c563          	bltz	a5,8003a7e4 <js_array_with+0x6a>
quickjs-nuttx/quickjs.c:39090 (discriminator 1)
    8003a7de:	7582                	ld	a1,32(sp)
    8003a7e0:	00b7ca63          	blt	a5,a1,8003a7f4 <js_array_with+0x7a>
quickjs-nuttx/quickjs.c:39091
        JS_ThrowRangeError(ctx, "out of bound");
    8003a7e4:	8552                	mv	a0,s4
    8003a7e6:	00030597          	auipc	a1,0x30
    8003a7ea:	4da58593          	addi	a1,a1,1242 # 8006acc0 <qjsc_repl+0x5710>
    8003a7ee:	8e0df0ef          	jal	ra,800198ce <JS_ThrowRangeError>
    8003a7f2:	bf7d                	j	8003a7b0 <js_array_with+0x36>
quickjs-nuttx/quickjs.c:39095
    arr = js_allocate_fast_array(ctx, len);
    8003a7f4:	8552                	mv	a0,s4
    8003a7f6:	8e2e20ef          	jal	ra,8001c8d8 <js_allocate_fast_array>
    8003a7fa:	f82a                	sd	a0,48(sp)
    8003a7fc:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39096
    if (JS_IsException(arr))
    8003a7fe:	0005871b          	sext.w	a4,a1
    8003a802:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:39095
    arr = js_allocate_fast_array(ctx, len);
    8003a804:	89aa                	mv	s3,a0
    8003a806:	892e                	mv	s2,a1
    8003a808:	8b2a                	mv	s6,a0
    8003a80a:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:39096
    if (JS_IsException(arr))
    8003a80c:	0cf70963          	beq	a4,a5,8003a8de <js_array_with+0x164>
quickjs-nuttx/quickjs.c:39101
    pval = p->u.array.u.values;
    8003a810:	03853c03          	ld	s8,56(a0)
quickjs-nuttx/quickjs.c:39102
    if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003a814:	65a6                	ld	a1,72(sp)
    8003a816:	6506                	ld	a0,64(sp)
    8003a818:	0854                	addi	a3,sp,20
    8003a81a:	0830                	addi	a2,sp,24
    8003a81c:	943cf0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    8003a820:	c511                	beqz	a0,8003a82c <js_array_with+0xb2>
quickjs-nuttx/quickjs.c:39102 (discriminator 1)
    8003a822:	01416703          	lwu	a4,20(sp)
    8003a826:	7782                	ld	a5,32(sp)
    8003a828:	06f70d63          	beq	a4,a5,8003a8a2 <js_array_with+0x128>
    8003a82c:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:39110
            if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval))
    8003a82e:	5cfd                	li	s9,-1
    8003a830:	a0dd                	j	8003a916 <js_array_with+0x19c>
quickjs-nuttx/quickjs.c:39104 (discriminator 2)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a832:	6762                	ld	a4,24(sp)
    8003a834:	0792                	slli	a5,a5,0x4
    8003a836:	97ba                	add	a5,a5,a4
    8003a838:	6388                	ld	a0,0(a5)
    8003a83a:	678c                	ld	a1,8(a5)
    8003a83c:	bdfcf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a840:	00ac3023          	sd	a0,0(s8)
    8003a844:	00bc3423          	sd	a1,8(s8)
    8003a848:	87a2                	mv	a5,s0
quickjs-nuttx/quickjs.c:39103 (discriminator 2)
        for (; i < idx; i++, pval++)
    8003a84a:	8c26                	mv	s8,s1
quickjs-nuttx/quickjs.c:39103 (discriminator 1)
    8003a84c:	7722                	ld	a4,40(sp)
    8003a84e:	00178413          	addi	s0,a5,1
    8003a852:	010c0493          	addi	s1,s8,16
    8003a856:	fce7cee3          	blt	a5,a4,8003a832 <js_array_with+0xb8>
quickjs-nuttx/quickjs.c:39105
        *pval = JS_DupValue(ctx, argv[1]);
    8003a85a:	010bb503          	ld	a0,16(s7)
    8003a85e:	018bb583          	ld	a1,24(s7)
    8003a862:	bb9cf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a866:	00ac3023          	sd	a0,0(s8)
    8003a86a:	00bc3423          	sd	a1,8(s8)
quickjs-nuttx/quickjs.c:39106 (discriminator 1)
        for (i++, pval++; i < len; i++, pval++)
    8003a86e:	7782                	ld	a5,32(sp)
    8003a870:	02f44b63          	blt	s0,a5,8003a8a6 <js_array_with+0x12c>
quickjs-nuttx/quickjs.c:39123
    if (JS_SetProperty(ctx, arr, JS_ATOM_length, JS_NewInt64(ctx, len)) < 0)
    8003a874:	7782                	ld	a5,32(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003a876:	0007871b          	sext.w	a4,a5
    8003a87a:	0ee79663          	bne	a5,a4,8003a966 <js_array_with+0x1ec>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003a87e:	da82                	sw	zero,116(sp)
    8003a880:	d8ba                	sw	a4,112(sp)
    8003a882:	77c6                	ld	a5,112(sp)
    8003a884:	f482                	sd	zero,104(sp)
    8003a886:	f0be                	sd	a5,96(sp)
    8003a888:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003a88a:	d0ba                	sw	a4,96(sp)
js_array_with():
quickjs-nuttx/quickjs.c:39123
    8003a88c:	7706                	ld	a4,96(sp)
    8003a88e:	75c2                	ld	a1,48(sp)
    8003a890:	7662                	ld	a2,56(sp)
    8003a892:	03000693          	li	a3,48
    8003a896:	8552                	mv	a0,s4
    8003a898:	b74fd0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003a89c:	f0055ce3          	bgez	a0,8003a7b4 <js_array_with+0x3a>
    8003a8a0:	a83d                	j	8003a8de <js_array_with+0x164>
    8003a8a2:	4781                	li	a5,0
    8003a8a4:	b765                	j	8003a84c <js_array_with+0xd2>
quickjs-nuttx/quickjs.c:39107 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a8a6:	67e2                	ld	a5,24(sp)
    8003a8a8:	00441713          	slli	a4,s0,0x4
quickjs-nuttx/quickjs.c:39106 (discriminator 3)
        for (i++, pval++; i < len; i++, pval++)
    8003a8ac:	04c1                	addi	s1,s1,16
quickjs-nuttx/quickjs.c:39107 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a8ae:	97ba                	add	a5,a5,a4
    8003a8b0:	6388                	ld	a0,0(a5)
    8003a8b2:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:39106 (discriminator 3)
        for (i++, pval++; i < len; i++, pval++)
    8003a8b4:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:39107 (discriminator 3)
            *pval = JS_DupValue(ctx, arrp[i]);
    8003a8b6:	b65cf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a8ba:	fea4b823          	sd	a0,-16(s1)
    8003a8be:	feb4bc23          	sd	a1,-8(s1)
quickjs-nuttx/quickjs.c:39106 (discriminator 3)
        for (i++, pval++; i < len; i++, pval++)
    8003a8c2:	b775                	j	8003a86e <js_array_with+0xf4>
quickjs-nuttx/quickjs.c:39110
            if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval))
    8003a8c4:	6586                	ld	a1,64(sp)
    8003a8c6:	6626                	ld	a2,72(sp)
    8003a8c8:	8726                	mv	a4,s1
    8003a8ca:	86a2                	mv	a3,s0
    8003a8cc:	8552                	mv	a0,s4
    8003a8ce:	f22ff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
    8003a8d2:	05951163          	bne	a0,s9,8003a914 <js_array_with+0x19a>
quickjs-nuttx/quickjs.c:39117 (discriminator 1)
                    *pval = JS_UNDEFINED;
    8003a8d6:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:39116 (discriminator 1)
                for (; i < len; i++, pval++)
    8003a8d8:	7782                	ld	a5,32(sp)
    8003a8da:	08f44063          	blt	s0,a5,8003a95a <js_array_with+0x1e0>
quickjs-nuttx/quickjs.c:39078
    ret = JS_EXCEPTION;
    8003a8de:	4919                	li	s2,6
    8003a8e0:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:39130
    JS_FreeValue(ctx, arr);
    8003a8e2:	85da                	mv	a1,s6
    8003a8e4:	8656                	mv	a2,s5
    8003a8e6:	8552                	mv	a0,s4
    8003a8e8:	eb7d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39131
    JS_FreeValue(ctx, obj);
    8003a8ec:	6586                	ld	a1,64(sp)
    8003a8ee:	6626                	ld	a2,72(sp)
    8003a8f0:	8552                	mv	a0,s4
    8003a8f2:	eadd00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39133
}
    8003a8f6:	60ee                	ld	ra,216(sp)
    8003a8f8:	644e                	ld	s0,208(sp)
    8003a8fa:	64ae                	ld	s1,200(sp)
    8003a8fc:	7a4a                	ld	s4,176(sp)
    8003a8fe:	7aaa                	ld	s5,168(sp)
    8003a900:	7b0a                	ld	s6,160(sp)
    8003a902:	6bea                	ld	s7,152(sp)
    8003a904:	6c4a                	ld	s8,144(sp)
    8003a906:	6caa                	ld	s9,136(sp)
    8003a908:	854e                	mv	a0,s3
    8003a90a:	85ca                	mv	a1,s2
    8003a90c:	79ea                	ld	s3,184(sp)
    8003a90e:	690e                	ld	s2,192(sp)
    8003a910:	612d                	addi	sp,sp,224
    8003a912:	8082                	ret
quickjs-nuttx/quickjs.c:39109
        for (; i < idx; i++, pval++)
    8003a914:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs.c:39109 (discriminator 1)
    8003a916:	77a2                	ld	a5,40(sp)
    8003a918:	00441493          	slli	s1,s0,0x4
    8003a91c:	94e2                	add	s1,s1,s8
    8003a91e:	faf443e3          	blt	s0,a5,8003a8c4 <js_array_with+0x14a>
quickjs-nuttx/quickjs.c:39112
        *pval = JS_DupValue(ctx, argv[1]);
    8003a922:	010bb503          	ld	a0,16(s7)
    8003a926:	018bb583          	ld	a1,24(s7)
quickjs-nuttx/quickjs.c:39113
        for (i++, pval++; i < len; i++, pval++) {
    8003a92a:	0405                	addi	s0,s0,1
    8003a92c:	04c1                	addi	s1,s1,16
quickjs-nuttx/quickjs.c:39112
        *pval = JS_DupValue(ctx, argv[1]);
    8003a92e:	aedcf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003a932:	fea4b823          	sd	a0,-16(s1)
    8003a936:	feb4bc23          	sd	a1,-8(s1)
quickjs-nuttx/quickjs.c:39114
            if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval)) {
    8003a93a:	5bfd                	li	s7,-1
quickjs-nuttx/quickjs.c:39113 (discriminator 1)
        for (i++, pval++; i < len; i++, pval++) {
    8003a93c:	7782                	ld	a5,32(sp)
    8003a93e:	f2f45be3          	bge	s0,a5,8003a874 <js_array_with+0xfa>
quickjs-nuttx/quickjs.c:39114
            if (-1 == JS_TryGetPropertyInt64(ctx, obj, i, pval)) {
    8003a942:	6586                	ld	a1,64(sp)
    8003a944:	6626                	ld	a2,72(sp)
    8003a946:	8726                	mv	a4,s1
    8003a948:	86a2                	mv	a3,s0
    8003a94a:	8552                	mv	a0,s4
    8003a94c:	ea4ff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
    8003a950:	f97503e3          	beq	a0,s7,8003a8d6 <js_array_with+0x15c>
quickjs-nuttx/quickjs.c:39113 (discriminator 2)
        for (i++, pval++; i < len; i++, pval++) {
    8003a954:	0405                	addi	s0,s0,1
    8003a956:	04c1                	addi	s1,s1,16
    8003a958:	b7d5                	j	8003a93c <js_array_with+0x1c2>
quickjs-nuttx/quickjs.c:39117 (discriminator 2)
                    *pval = JS_UNDEFINED;
    8003a95a:	0004b023          	sd	zero,0(s1)
    8003a95e:	e498                	sd	a4,8(s1)
quickjs-nuttx/quickjs.c:39116 (discriminator 2)
                for (; i < len; i++, pval++)
    8003a960:	0405                	addi	s0,s0,1
    8003a962:	04c1                	addi	s1,s1,16
    8003a964:	bf95                	j	8003a8d8 <js_array_with+0x15e>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003a966:	d227f7d3          	fcvt.d.l	fa5,a5
    8003a96a:	479d                	li	a5,7
    8003a96c:	e2078753          	fmv.x.d	a4,fa5
js_array_with():
quickjs-nuttx/quickjs.h:230
    return v;
    8003a970:	b0be                	fsd	fa5,96(sp)
    8003a972:	2701                	sext.w	a4,a4
    8003a974:	bf19                	j	8003a88a <js_array_with+0x110>

000000008003a976 <JS_CopySubArray>:
JS_CopySubArray():
quickjs-nuttx/quickjs.c:38716
{
    8003a976:	7155                	addi	sp,sp,-208
    8003a978:	f94a                	sd	s2,176(sp)
    8003a97a:	f54e                	sd	s3,168(sp)
    8003a97c:	f152                	sd	s4,160(sp)
    8003a97e:	ed56                	sd	s5,152(sp)
    8003a980:	e95a                	sd	s6,144(sp)
    8003a982:	f4ee                	sd	s11,104(sp)
    8003a984:	f432                	sd	a2,40(sp)
    8003a986:	89be                	mv	s3,a5
    8003a988:	e586                	sd	ra,200(sp)
    8003a98a:	e1a2                	sd	s0,192(sp)
    8003a98c:	fd26                	sd	s1,184(sp)
    8003a98e:	e55e                	sd	s7,136(sp)
    8003a990:	e162                	sd	s8,128(sp)
    8003a992:	fce6                	sd	s9,120(sp)
    8003a994:	f8ea                	sd	s10,112(sp)
    8003a996:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:38723
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8003a998:	2601                	sext.w	a2,a2
    8003a99a:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:38716
{
    8003a99c:	892a                	mv	s2,a0
    8003a99e:	8a36                	mv	s4,a3
    8003a9a0:	8aba                	mv	s5,a4
    8003a9a2:	8b42                	mv	s6,a6
quickjs-nuttx/quickjs.c:38726
            p = NULL;
    8003a9a4:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:38723
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8003a9a6:	00f61d63          	bne	a2,a5,8003a9c0 <JS_CopySubArray+0x4a>
quickjs-nuttx/quickjs.c:38725
        if (p->class_id != JS_CLASS_ARRAY || !p->fast_array) {
    8003a9aa:	6198                	ld	a4,0(a1)
    8003a9ac:	5785                	li	a5,-31
    8003a9ae:	17ae                	slli	a5,a5,0x2b
    8003a9b0:	8f7d                	and	a4,a4,a5
    8003a9b2:	04100793          	li	a5,65
    8003a9b6:	17ae                	slli	a5,a5,0x2b
quickjs-nuttx/quickjs.c:38724
        p = JS_VALUE_GET_OBJ(obj);
    8003a9b8:	8dae                	mv	s11,a1
quickjs-nuttx/quickjs.c:38725
        if (p->class_id != JS_CLASS_ARRAY || !p->fast_array) {
    8003a9ba:	00f70363          	beq	a4,a5,8003a9c0 <JS_CopySubArray+0x4a>
quickjs-nuttx/quickjs.c:38726
            p = NULL;
    8003a9be:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:38732
            from = from_pos + count - i - 1;
    8003a9c0:	fffa8b93          	addi	s7,s5,-1
quickjs-nuttx/quickjs.c:38733
            to = to_pos + count - i - 1;
    8003a9c4:	fffa0c13          	addi	s8,s4,-1
quickjs-nuttx/quickjs.c:38730
    for (i = 0; i < count; ) {
    8003a9c8:	4d01                	li	s10,0
quickjs-nuttx/quickjs.c:38731
        if (dir < 0) {
    8003a9ca:	5cfd                	li	s9,-1
quickjs-nuttx/quickjs.c:38732
            from = from_pos + count - i - 1;
    8003a9cc:	9bce                	add	s7,s7,s3
quickjs-nuttx/quickjs.c:38733
            to = to_pos + count - i - 1;
    8003a9ce:	9c4e                	add	s8,s8,s3
quickjs-nuttx/quickjs.c:38730 (discriminator 1)
    for (i = 0; i < count; ) {
    8003a9d0:	013d4463          	blt	s10,s3,8003a9d8 <JS_CopySubArray+0x62>
quickjs-nuttx/quickjs.c:38777
    return 0;
    8003a9d4:	4501                	li	a0,0
    8003a9d6:	a8ed                	j	8003aad0 <JS_CopySubArray+0x15a>
quickjs-nuttx/quickjs.c:38731
        if (dir < 0) {
    8003a9d8:	059b1b63          	bne	s6,s9,8003aa2e <JS_CopySubArray+0xb8>
quickjs-nuttx/quickjs.c:38732
            from = from_pos + count - i - 1;
    8003a9dc:	41ab86b3          	sub	a3,s7,s10
quickjs-nuttx/quickjs.c:38733
            to = to_pos + count - i - 1;
    8003a9e0:	41ac04b3          	sub	s1,s8,s10
quickjs-nuttx/quickjs.c:38738
        if (p && p->fast_array &&
    8003a9e4:	0c0d8d63          	beqz	s11,8003aabe <JS_CopySubArray+0x148>
quickjs-nuttx/quickjs.c:38738 (discriminator 1)
    8003a9e8:	005dc783          	lbu	a5,5(s11)
    8003a9ec:	8ba1                	andi	a5,a5,8
    8003a9ee:	cbe1                	beqz	a5,8003aabe <JS_CopySubArray+0x148>
quickjs-nuttx/quickjs.c:38738 (discriminator 2)
    8003a9f0:	0c06c763          	bltz	a3,8003aabe <JS_CopySubArray+0x148>
quickjs-nuttx/quickjs.c:38739
            from >= 0 && from < (len = p->u.array.count)  &&
    8003a9f4:	040de403          	lwu	s0,64(s11)
    8003a9f8:	0c86d363          	bge	a3,s0,8003aabe <JS_CopySubArray+0x148>
quickjs-nuttx/quickjs.c:38740
            to >= 0 && to < len) {
    8003a9fc:	0c84f163          	bgeu	s1,s0,8003aabe <JS_CopySubArray+0x148>
quickjs-nuttx/quickjs.c:38745
            l = count - i;
    8003aa00:	41a98633          	sub	a2,s3,s10
quickjs-nuttx/quickjs.c:38746
            if (dir < 0) {
    8003aa04:	00449713          	slli	a4,s1,0x4
    8003aa08:	00469793          	slli	a5,a3,0x4
    8003aa0c:	079b1163          	bne	s6,s9,8003aa6e <JS_CopySubArray+0xf8>
quickjs-nuttx/quickjs.c:38748
                l = min_int64(l, to + 1);
    8003aa10:	0485                	addi	s1,s1,1
    8003aa12:	00168413          	addi	s0,a3,1 # ffffffff80000001 <_ebss+0xfffffffeffefee9b>
    8003aa16:	0084d363          	bge	s1,s0,8003aa1c <JS_CopySubArray+0xa6>
    8003aa1a:	8426                	mv	s0,s1
    8003aa1c:	00865363          	bge	a2,s0,8003aa22 <JS_CopySubArray+0xac>
    8003aa20:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:38749
                for(j = 0; j < l; j++) {
    8003aa22:	84be                	mv	s1,a5
    8003aa24:	4801                	li	a6,0
quickjs-nuttx/quickjs.c:38749 (discriminator 1)
    8003aa26:	00884963          	blt	a6,s0,8003aa38 <JS_CopySubArray+0xc2>
quickjs-nuttx/quickjs.c:38761
            i += l;
    8003aa2a:	9d22                	add	s10,s10,s0
quickjs-nuttx/quickjs.c:38740
            to >= 0 && to < len) {
    8003aa2c:	b755                	j	8003a9d0 <JS_CopySubArray+0x5a>
quickjs-nuttx/quickjs.c:38735
            from = from_pos + i;
    8003aa2e:	015d06b3          	add	a3,s10,s5
quickjs-nuttx/quickjs.c:38736
            to = to_pos + i;
    8003aa32:	014d04b3          	add	s1,s10,s4
    8003aa36:	b77d                	j	8003a9e4 <JS_CopySubArray+0x6e>
quickjs-nuttx/quickjs.c:38750 (discriminator 3)
                    set_value(ctx, &p->u.array.u.values[to - j],
    8003aa38:	038db783          	ld	a5,56(s11)
    8003aa3c:	ec42                	sd	a6,24(sp)
    8003aa3e:	e83a                	sd	a4,16(sp)
    8003aa40:	00e788b3          	add	a7,a5,a4
    8003aa44:	97a6                	add	a5,a5,s1
    8003aa46:	6388                	ld	a0,0(a5)
    8003aa48:	678c                	ld	a1,8(a5)
    8003aa4a:	e446                	sd	a7,8(sp)
    8003aa4c:	14c1                	addi	s1,s1,-16
    8003aa4e:	9cdcf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003aa52:	68a2                	ld	a7,8(sp)
    8003aa54:	862a                	mv	a2,a0
    8003aa56:	86ae                	mv	a3,a1
    8003aa58:	e0aa                	sd	a0,64(sp)
    8003aa5a:	e4ae                	sd	a1,72(sp)
    8003aa5c:	854a                	mv	a0,s2
    8003aa5e:	85c6                	mv	a1,a7
    8003aa60:	9ded10ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:38749 (discriminator 3)
                for(j = 0; j < l; j++) {
    8003aa64:	6862                	ld	a6,24(sp)
    8003aa66:	6742                	ld	a4,16(sp)
    8003aa68:	0805                	addi	a6,a6,1
    8003aa6a:	1741                	addi	a4,a4,-16
    8003aa6c:	bf6d                	j	8003aa26 <JS_CopySubArray+0xb0>
quickjs-nuttx/quickjs.c:38755
                l = min_int64(l, len - to);
    8003aa6e:	409404b3          	sub	s1,s0,s1
    8003aa72:	8c15                	sub	s0,s0,a3
    8003aa74:	0084d363          	bge	s1,s0,8003aa7a <JS_CopySubArray+0x104>
    8003aa78:	8426                	mv	s0,s1
    8003aa7a:	00865363          	bge	a2,s0,8003aa80 <JS_CopySubArray+0x10a>
    8003aa7e:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:38756
                for(j = 0; j < l; j++) {
    8003aa80:	84be                	mv	s1,a5
    8003aa82:	4801                	li	a6,0
quickjs-nuttx/quickjs.c:38756 (discriminator 1)
    8003aa84:	fa8853e3          	bge	a6,s0,8003aa2a <JS_CopySubArray+0xb4>
quickjs-nuttx/quickjs.c:38757 (discriminator 3)
                    set_value(ctx, &p->u.array.u.values[to + j],
    8003aa88:	038db783          	ld	a5,56(s11)
    8003aa8c:	ec42                	sd	a6,24(sp)
    8003aa8e:	e83a                	sd	a4,16(sp)
    8003aa90:	00e788b3          	add	a7,a5,a4
    8003aa94:	97a6                	add	a5,a5,s1
    8003aa96:	6388                	ld	a0,0(a5)
    8003aa98:	678c                	ld	a1,8(a5)
    8003aa9a:	e446                	sd	a7,8(sp)
    8003aa9c:	04c1                	addi	s1,s1,16
    8003aa9e:	97dcf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003aaa2:	68a2                	ld	a7,8(sp)
    8003aaa4:	862a                	mv	a2,a0
    8003aaa6:	86ae                	mv	a3,a1
    8003aaa8:	e8aa                	sd	a0,80(sp)
    8003aaaa:	ecae                	sd	a1,88(sp)
    8003aaac:	854a                	mv	a0,s2
    8003aaae:	85c6                	mv	a1,a7
    8003aab0:	98ed10ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:38756 (discriminator 3)
                for(j = 0; j < l; j++) {
    8003aab4:	6862                	ld	a6,24(sp)
    8003aab6:	6742                	ld	a4,16(sp)
    8003aab8:	0805                	addi	a6,a6,1
    8003aaba:	0741                	addi	a4,a4,16
    8003aabc:	b7e1                	j	8003aa84 <JS_CopySubArray+0x10e>
quickjs-nuttx/quickjs.c:38763
            fromPresent = JS_TryGetPropertyInt64(ctx, obj, from, &val);
    8003aabe:	7582                	ld	a1,32(sp)
    8003aac0:	7622                	ld	a2,40(sp)
    8003aac2:	1818                	addi	a4,sp,48
    8003aac4:	854a                	mv	a0,s2
    8003aac6:	d2aff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:38764
            if (fromPresent < 0)
    8003aaca:	02055263          	bgez	a0,8003aaee <JS_CopySubArray+0x178>
quickjs-nuttx/quickjs.c:38780
    return -1;
    8003aace:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:38781
}
    8003aad0:	60ae                	ld	ra,200(sp)
    8003aad2:	640e                	ld	s0,192(sp)
    8003aad4:	74ea                	ld	s1,184(sp)
    8003aad6:	794a                	ld	s2,176(sp)
    8003aad8:	79aa                	ld	s3,168(sp)
    8003aada:	7a0a                	ld	s4,160(sp)
    8003aadc:	6aea                	ld	s5,152(sp)
    8003aade:	6b4a                	ld	s6,144(sp)
    8003aae0:	6baa                	ld	s7,136(sp)
    8003aae2:	6c0a                	ld	s8,128(sp)
    8003aae4:	7ce6                	ld	s9,120(sp)
    8003aae6:	7d46                	ld	s10,112(sp)
    8003aae8:	7da6                	ld	s11,104(sp)
    8003aaea:	6169                	addi	sp,sp,208
    8003aaec:	8082                	ret
quickjs-nuttx/quickjs.c:38767
            if (fromPresent) {
    8003aaee:	cd09                	beqz	a0,8003ab08 <JS_CopySubArray+0x192>
quickjs-nuttx/quickjs.c:38768
                if (JS_SetPropertyInt64(ctx, obj, to, val) < 0)
    8003aaf0:	7742                	ld	a4,48(sp)
    8003aaf2:	77e2                	ld	a5,56(sp)
    8003aaf4:	7582                	ld	a1,32(sp)
    8003aaf6:	7622                	ld	a2,40(sp)
    8003aaf8:	86a6                	mv	a3,s1
    8003aafa:	854a                	mv	a0,s2
    8003aafc:	b78fd0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
quickjs-nuttx/quickjs.c:38771
                if (JS_DeletePropertyInt64(ctx, obj, to, JS_PROP_THROW) < 0)
    8003ab00:	fc0547e3          	bltz	a0,8003aace <JS_CopySubArray+0x158>
quickjs-nuttx/quickjs.c:38774
            i++;
    8003ab04:	0d05                	addi	s10,s10,1
    8003ab06:	b5e9                	j	8003a9d0 <JS_CopySubArray+0x5a>
quickjs-nuttx/quickjs.c:38771
                if (JS_DeletePropertyInt64(ctx, obj, to, JS_PROP_THROW) < 0)
    8003ab08:	7582                	ld	a1,32(sp)
    8003ab0a:	7622                	ld	a2,40(sp)
    8003ab0c:	6711                	lui	a4,0x4
    8003ab0e:	86a6                	mv	a3,s1
    8003ab10:	854a                	mv	a0,s2
    8003ab12:	859f50ef          	jal	ra,8003036a <JS_DeletePropertyInt64>
    8003ab16:	b7ed                	j	8003ab00 <JS_CopySubArray+0x18a>

000000008003ab18 <js_array_copyWithin>:
js_array_copyWithin():
quickjs-nuttx/quickjs.c:40203
{
    8003ab18:	7159                	addi	sp,sp,-112
    8003ab1a:	f0a2                	sd	s0,96(sp)
    8003ab1c:	eca6                	sd	s1,88(sp)
    8003ab1e:	e8ca                	sd	s2,80(sp)
    8003ab20:	f486                	sd	ra,104(sp)
    8003ab22:	842a                	mv	s0,a0
    8003ab24:	8936                	mv	s2,a3
    8003ab26:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:40207
    obj = JS_ToObject(ctx, this_val);
    8003ab28:	d92f50ef          	jal	ra,800300ba <JS_ToObject>
    8003ab2c:	862a                	mv	a2,a0
    8003ab2e:	86ae                	mv	a3,a1
    8003ab30:	f82a                	sd	a0,48(sp)
    8003ab32:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:40208
    if (js_get_length64(ctx, &len, obj))
    8003ab34:	8522                	mv	a0,s0
    8003ab36:	080c                	addi	a1,sp,16
    8003ab38:	a98ea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003ab3c:	e52d                	bnez	a0,8003aba6 <js_array_copyWithin+0x8e>
quickjs-nuttx/quickjs.c:40211
    if (JS_ToInt64Clamp(ctx, &to, argv[0], 0, len, len))
    8003ab3e:	6842                	ld	a6,16(sp)
    8003ab40:	6090                	ld	a2,0(s1)
    8003ab42:	6494                	ld	a3,8(s1)
    8003ab44:	87c2                	mv	a5,a6
    8003ab46:	4701                	li	a4,0
    8003ab48:	100c                	addi	a1,sp,32
    8003ab4a:	8522                	mv	a0,s0
    8003ab4c:	9f4ea0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    8003ab50:	e939                	bnez	a0,8003aba6 <js_array_copyWithin+0x8e>
quickjs-nuttx/quickjs.c:40214
    if (JS_ToInt64Clamp(ctx, &from, argv[1], 0, len, len))
    8003ab52:	6842                	ld	a6,16(sp)
    8003ab54:	6890                	ld	a2,16(s1)
    8003ab56:	6c94                	ld	a3,24(s1)
    8003ab58:	87c2                	mv	a5,a6
    8003ab5a:	4701                	li	a4,0
    8003ab5c:	082c                	addi	a1,sp,24
    8003ab5e:	8522                	mv	a0,s0
    8003ab60:	9e0ea0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    8003ab64:	e129                	bnez	a0,8003aba6 <js_array_copyWithin+0x8e>
quickjs-nuttx/quickjs.c:40217
    final = len;
    8003ab66:	6842                	ld	a6,16(sp)
quickjs-nuttx/quickjs.c:40218
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    8003ab68:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:40217
    final = len;
    8003ab6a:	f442                	sd	a6,40(sp)
quickjs-nuttx/quickjs.c:40218
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    8003ab6c:	0127cf63          	blt	a5,s2,8003ab8a <js_array_copyWithin+0x72>
quickjs-nuttx/quickjs.c:40223
    count = min_int64(final - from, len - to);
    8003ab70:	6762                	ld	a4,24(sp)
    8003ab72:	7682                	ld	a3,32(sp)
    8003ab74:	6642                	ld	a2,16(sp)
    8003ab76:	77a2                	ld	a5,40(sp)
    8003ab78:	8e15                	sub	a2,a2,a3
    8003ab7a:	8f99                	sub	a5,a5,a4
    8003ab7c:	00f65363          	bge	a2,a5,8003ab82 <js_array_copyWithin+0x6a>
    8003ab80:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:40225
    if (JS_CopySubArray(ctx, obj, to, from, count,
    8003ab82:	02d74a63          	blt	a4,a3,8003abb6 <js_array_copyWithin+0x9e>
    8003ab86:	4805                	li	a6,1
    8003ab88:	a825                	j	8003abc0 <js_array_copyWithin+0xa8>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8003ab8a:	7494                	ld	a3,40(s1)
js_array_copyWithin():
quickjs-nuttx/quickjs.c:40218 (discriminator 1)
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    8003ab8c:	478d                	li	a5,3
    8003ab8e:	0006871b          	sext.w	a4,a3
    8003ab92:	fcf70fe3          	beq	a4,a5,8003ab70 <js_array_copyWithin+0x58>
quickjs-nuttx/quickjs.c:40219
        if (JS_ToInt64Clamp(ctx, &final, argv[2], 0, len, len))
    8003ab96:	7090                	ld	a2,32(s1)
    8003ab98:	87c2                	mv	a5,a6
    8003ab9a:	4701                	li	a4,0
    8003ab9c:	102c                	addi	a1,sp,40
    8003ab9e:	8522                	mv	a0,s0
    8003aba0:	9a0ea0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    8003aba4:	d571                	beqz	a0,8003ab70 <js_array_copyWithin+0x58>
quickjs-nuttx/quickjs.c:40232
    JS_FreeValue(ctx, obj);
    8003aba6:	75c2                	ld	a1,48(sp)
    8003aba8:	7662                	ld	a2,56(sp)
    8003abaa:	8522                	mv	a0,s0
    8003abac:	bf3d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40233
    return JS_EXCEPTION;
    8003abb0:	4799                	li	a5,6
    8003abb2:	e082                	sd	zero,64(sp)
    8003abb4:	a839                	j	8003abd2 <js_array_copyWithin+0xba>
quickjs-nuttx/quickjs.c:40226
                        (from < to && to < from + count) ? -1 : +1))
    8003abb6:	00f70633          	add	a2,a4,a5
quickjs-nuttx/quickjs.c:40225
    if (JS_CopySubArray(ctx, obj, to, from, count,
    8003abba:	587d                	li	a6,-1
quickjs-nuttx/quickjs.c:40226
                        (from < to && to < from + count) ? -1 : +1))
    8003abbc:	fcc6d5e3          	bge	a3,a2,8003ab86 <js_array_copyWithin+0x6e>
quickjs-nuttx/quickjs.c:40225 (discriminator 3)
    if (JS_CopySubArray(ctx, obj, to, from, count,
    8003abc0:	75c2                	ld	a1,48(sp)
    8003abc2:	7662                	ld	a2,56(sp)
    8003abc4:	8522                	mv	a0,s0
    8003abc6:	db1ff0ef          	jal	ra,8003a976 <JS_CopySubArray>
    8003abca:	fd71                	bnez	a0,8003aba6 <js_array_copyWithin+0x8e>
quickjs-nuttx/quickjs.c:40229
    return obj;
    8003abcc:	77c2                	ld	a5,48(sp)
    8003abce:	e0be                	sd	a5,64(sp)
    8003abd0:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:40234
}
    8003abd2:	70a6                	ld	ra,104(sp)
    8003abd4:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:40233
    return JS_EXCEPTION;
    8003abd6:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:40234
}
    8003abd8:	6506                	ld	a0,64(sp)
    8003abda:	65a6                	ld	a1,72(sp)
    8003abdc:	64e6                	ld	s1,88(sp)
    8003abde:	6946                	ld	s2,80(sp)
    8003abe0:	6165                	addi	sp,sp,112
    8003abe2:	8082                	ret

000000008003abe4 <js_array_pop>:
js_array_pop():
quickjs-nuttx/quickjs.c:39796
{
    8003abe4:	7171                	addi	sp,sp,-176
    8003abe6:	f122                	sd	s0,160(sp)
    8003abe8:	ed26                	sd	s1,152(sp)
    8003abea:	f506                	sd	ra,168(sp)
    8003abec:	e94a                	sd	s2,144(sp)
    8003abee:	e54e                	sd	s3,136(sp)
    8003abf0:	84aa                	mv	s1,a0
    8003abf2:	e432                	sd	a2,8(sp)
    8003abf4:	e02e                	sd	a1,0(sp)
    8003abf6:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:39797
    JSValue obj, res = JS_UNDEFINED;
    8003abf8:	e082                	sd	zero,64(sp)
    8003abfa:	e482                	sd	zero,72(sp)
quickjs-nuttx/quickjs.c:39802
    obj = JS_ToObject(ctx, this_val);
    8003abfc:	cbef50ef          	jal	ra,800300ba <JS_ToObject>
    8003ac00:	862a                	mv	a2,a0
    8003ac02:	86ae                	mv	a3,a1
    8003ac04:	f82a                	sd	a0,48(sp)
    8003ac06:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39803
    if (js_get_length64(ctx, &len, obj))
    8003ac08:	8526                	mv	a0,s1
    8003ac0a:	100c                	addi	a1,sp,32
    8003ac0c:	9c4ea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003ac10:	12051d63          	bnez	a0,8003ad4a <js_array_pop+0x166>
quickjs-nuttx/quickjs.c:39806
    if (len > 0) {
    8003ac14:	7902                	ld	s2,32(sp)
    8003ac16:	0f205663          	blez	s2,8003ad02 <js_array_pop+0x11e>
quickjs-nuttx/quickjs.c:39809
        if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003ac1a:	7542                	ld	a0,48(sp)
    8003ac1c:	75e2                	ld	a1,56(sp)
    8003ac1e:	0874                	addi	a3,sp,28
    8003ac20:	1030                	addi	a2,sp,40
quickjs-nuttx/quickjs.c:39807
        newLen = len - 1;
    8003ac22:	197d                	addi	s2,s2,-1
quickjs-nuttx/quickjs.c:39809
        if (js_get_fast_array(ctx, obj, &arrp, &count32) && count32 == len) {
    8003ac24:	d3acf0ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    8003ac28:	cd39                	beqz	a0,8003ac86 <js_array_pop+0xa2>
quickjs-nuttx/quickjs.c:39809 (discriminator 1)
    8003ac2a:	4672                	lw	a2,28(sp)
    8003ac2c:	7782                	ld	a5,32(sp)
    8003ac2e:	02061713          	slli	a4,a2,0x20
    8003ac32:	9301                	srli	a4,a4,0x20
    8003ac34:	04f71963          	bne	a4,a5,8003ac86 <js_array_pop+0xa2>
quickjs-nuttx/quickjs.c:39813
                memmove(arrp, arrp + 1, (count32 - 1) * sizeof(*arrp));
    8003ac38:	367d                	addiw	a2,a2,-1
    8003ac3a:	02061793          	slli	a5,a2,0x20
quickjs-nuttx/quickjs.c:39810
            JSObject *p = JS_VALUE_GET_OBJ(obj);
    8003ac3e:	79c2                	ld	s3,48(sp)
quickjs-nuttx/quickjs.c:39812
                res = arrp[0];
    8003ac40:	7522                	ld	a0,40(sp)
quickjs-nuttx/quickjs.c:39813
                memmove(arrp, arrp + 1, (count32 - 1) * sizeof(*arrp));
    8003ac42:	01c7d613          	srli	a2,a5,0x1c
quickjs-nuttx/quickjs.c:39811
            if (shift) {
    8003ac46:	c815                	beqz	s0,8003ac7a <js_array_pop+0x96>
quickjs-nuttx/quickjs.c:39812
                res = arrp[0];
    8003ac48:	611c                	ld	a5,0(a0)
    8003ac4a:	6500                	ld	s0,8(a0)
quickjs-nuttx/quickjs.c:39813
                memmove(arrp, arrp + 1, (count32 - 1) * sizeof(*arrp));
    8003ac4c:	01050593          	addi	a1,a0,16
quickjs-nuttx/quickjs.c:39812
                res = arrp[0];
    8003ac50:	e0be                	sd	a5,64(sp)
    8003ac52:	e4a2                	sd	s0,72(sp)
quickjs-nuttx/quickjs.c:39813
                memmove(arrp, arrp + 1, (count32 - 1) * sizeof(*arrp));
    8003ac54:	7ad280ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/quickjs.c:39817
                p->u.array.count--;
    8003ac58:	0409a783          	lw	a5,64(s3)
    8003ac5c:	37fd                	addiw	a5,a5,-1
    8003ac5e:	04f9a023          	sw	a5,64(s3)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003ac62:	0009071b          	sext.w	a4,s2
    8003ac66:	0ae90063          	beq	s2,a4,8003ad06 <js_array_pop+0x122>
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003ac6a:	d22977d3          	fcvt.d.l	fa5,s2
    8003ac6e:	479d                	li	a5,7
    8003ac70:	e2078753          	fmv.x.d	a4,fa5
js_array_pop():
quickjs-nuttx/quickjs.h:230
    return v;
    8003ac74:	b0be                	fsd	fa5,96(sp)
    8003ac76:	2701                	sext.w	a4,a4
    8003ac78:	a869                	j	8003ad12 <js_array_pop+0x12e>
quickjs-nuttx/quickjs.c:39816
                res = arrp[count32 - 1];
    8003ac7a:	9532                	add	a0,a0,a2
    8003ac7c:	611c                	ld	a5,0(a0)
    8003ac7e:	6500                	ld	s0,8(a0)
    8003ac80:	e0be                	sd	a5,64(sp)
    8003ac82:	e4a2                	sd	s0,72(sp)
    8003ac84:	bfd1                	j	8003ac58 <js_array_pop+0x74>
quickjs-nuttx/quickjs.c:39820
            if (shift) {
    8003ac86:	c439                	beqz	s0,8003acd4 <js_array_pop+0xf0>
quickjs-nuttx/quickjs.c:39821
                res = JS_GetPropertyInt64(ctx, obj, 0);
    8003ac88:	75c2                	ld	a1,48(sp)
    8003ac8a:	7662                	ld	a2,56(sp)
    8003ac8c:	4681                	li	a3,0
    8003ac8e:	8526                	mv	a0,s1
    8003ac90:	d53fe0ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    8003ac94:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:39822
                if (JS_IsException(res))
    8003ac96:	0005871b          	sext.w	a4,a1
    8003ac9a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:39821
                res = JS_GetPropertyInt64(ctx, obj, 0);
    8003ac9c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:39822
                if (JS_IsException(res))
    8003ac9e:	00f70d63          	beq	a4,a5,8003acb8 <js_array_pop+0xd4>
quickjs-nuttx/quickjs.c:39824
                if (JS_CopySubArray(ctx, obj, 0, 1, len - 1, +1))
    8003aca2:	7782                	ld	a5,32(sp)
    8003aca4:	75c2                	ld	a1,48(sp)
    8003aca6:	7662                	ld	a2,56(sp)
    8003aca8:	4805                	li	a6,1
    8003acaa:	17fd                	addi	a5,a5,-1
    8003acac:	4705                	li	a4,1
    8003acae:	4681                	li	a3,0
    8003acb0:	8526                	mv	a0,s1
    8003acb2:	cc5ff0ef          	jal	ra,8003a976 <JS_CopySubArray>
    8003acb6:	cd05                	beqz	a0,8003acee <js_array_pop+0x10a>
quickjs-nuttx/quickjs.c:39842
    JS_FreeValue(ctx, res);
    8003acb8:	6586                	ld	a1,64(sp)
    8003acba:	8622                	mv	a2,s0
    8003acbc:	8526                	mv	a0,s1
    8003acbe:	ae1d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39843
    JS_FreeValue(ctx, obj);
    8003acc2:	75c2                	ld	a1,48(sp)
    8003acc4:	7662                	ld	a2,56(sp)
    8003acc6:	8526                	mv	a0,s1
    8003acc8:	ad7d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39844
    return JS_EXCEPTION;
    8003accc:	4799                	li	a5,6
    8003acce:	f082                	sd	zero,96(sp)
    8003acd0:	f4be                	sd	a5,104(sp)
    8003acd2:	a09d                	j	8003ad38 <js_array_pop+0x154>
quickjs-nuttx/quickjs.c:39827
                res = JS_GetPropertyInt64(ctx, obj, newLen);
    8003acd4:	75c2                	ld	a1,48(sp)
    8003acd6:	7662                	ld	a2,56(sp)
    8003acd8:	86ca                	mv	a3,s2
    8003acda:	8526                	mv	a0,s1
    8003acdc:	d07fe0ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    8003ace0:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:39828
                if (JS_IsException(res))
    8003ace2:	0005871b          	sext.w	a4,a1
    8003ace6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:39827
                res = JS_GetPropertyInt64(ctx, obj, newLen);
    8003ace8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:39828
                if (JS_IsException(res))
    8003acea:	fcf707e3          	beq	a4,a5,8003acb8 <js_array_pop+0xd4>
quickjs-nuttx/quickjs.c:39831
            if (JS_DeletePropertyInt64(ctx, obj, newLen, JS_PROP_THROW) < 0)
    8003acee:	75c2                	ld	a1,48(sp)
    8003acf0:	7662                	ld	a2,56(sp)
    8003acf2:	6711                	lui	a4,0x4
    8003acf4:	86ca                	mv	a3,s2
    8003acf6:	8526                	mv	a0,s1
    8003acf8:	e72f50ef          	jal	ra,8003036a <JS_DeletePropertyInt64>
    8003acfc:	f60553e3          	bgez	a0,8003ac62 <js_array_pop+0x7e>
    8003ad00:	bf65                	j	8003acb8 <js_array_pop+0xd4>
quickjs-nuttx/quickjs.c:39797
    JSValue obj, res = JS_UNDEFINED;
    8003ad02:	440d                	li	s0,3
    8003ad04:	4701                	li	a4,0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003ad06:	da82                	sw	zero,116(sp)
    8003ad08:	d8ba                	sw	a4,112(sp)
    8003ad0a:	77c6                	ld	a5,112(sp)
    8003ad0c:	f482                	sd	zero,104(sp)
    8003ad0e:	f0be                	sd	a5,96(sp)
    8003ad10:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003ad12:	d0ba                	sw	a4,96(sp)
js_array_pop():
quickjs-nuttx/quickjs.c:39835
    if (JS_SetProperty(ctx, obj, JS_ATOM_length, JS_NewInt64(ctx, newLen)) < 0)
    8003ad14:	7706                	ld	a4,96(sp)
    8003ad16:	75c2                	ld	a1,48(sp)
    8003ad18:	7662                	ld	a2,56(sp)
    8003ad1a:	03000693          	li	a3,48
    8003ad1e:	8526                	mv	a0,s1
    8003ad20:	eedfc0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003ad24:	f8054ae3          	bltz	a0,8003acb8 <js_array_pop+0xd4>
quickjs-nuttx/quickjs.c:39838
    JS_FreeValue(ctx, obj);
    8003ad28:	75c2                	ld	a1,48(sp)
    8003ad2a:	7662                	ld	a2,56(sp)
    8003ad2c:	8526                	mv	a0,s1
    8003ad2e:	a71d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39839
    return res;
    8003ad32:	6786                	ld	a5,64(sp)
    8003ad34:	f4a2                	sd	s0,104(sp)
    8003ad36:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:39845
}
    8003ad38:	70aa                	ld	ra,168(sp)
    8003ad3a:	740a                	ld	s0,160(sp)
    8003ad3c:	7506                	ld	a0,96(sp)
    8003ad3e:	75a6                	ld	a1,104(sp)
    8003ad40:	64ea                	ld	s1,152(sp)
    8003ad42:	694a                	ld	s2,144(sp)
    8003ad44:	69aa                	ld	s3,136(sp)
    8003ad46:	614d                	addi	sp,sp,176
    8003ad48:	8082                	ret
quickjs-nuttx/quickjs.c:39797
    JSValue obj, res = JS_UNDEFINED;
    8003ad4a:	440d                	li	s0,3
    8003ad4c:	b7b5                	j	8003acb8 <js_array_pop+0xd4>

000000008003ad4e <js_array_push>:
js_array_push():
quickjs-nuttx/quickjs.c:39849
{
    8003ad4e:	7131                	addi	sp,sp,-192
    8003ad50:	f922                	sd	s0,176(sp)
    8003ad52:	f14a                	sd	s2,160(sp)
    8003ad54:	ed4e                	sd	s3,152(sp)
    8003ad56:	e556                	sd	s5,136(sp)
    8003ad58:	fd06                	sd	ra,184(sp)
    8003ad5a:	f526                	sd	s1,168(sp)
    8003ad5c:	e952                	sd	s4,144(sp)
    8003ad5e:	842a                	mv	s0,a0
    8003ad60:	8936                	mv	s2,a3
    8003ad62:	8aba                	mv	s5,a4
    8003ad64:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:39854
    obj = JS_ToObject(ctx, this_val);
    8003ad66:	b54f50ef          	jal	ra,800300ba <JS_ToObject>
    8003ad6a:	862a                	mv	a2,a0
    8003ad6c:	86ae                	mv	a3,a1
    8003ad6e:	f02a                	sd	a0,32(sp)
    8003ad70:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:39855
    if (js_get_length64(ctx, &len, obj))
    8003ad72:	8522                	mv	a0,s0
    8003ad74:	082c                	addi	a1,sp,24
    8003ad76:	85aea0ef          	jal	ra,80024dd0 <js_get_length64>
    8003ad7a:	ed19                	bnez	a0,8003ad98 <js_array_push+0x4a>
quickjs-nuttx/quickjs.c:39857
    newLen = len + argc;
    8003ad7c:	6a62                	ld	s4,24(sp)
quickjs-nuttx/quickjs.c:39858
    if (newLen > MAX_SAFE_INTEGER) {
    8003ad7e:	57fd                	li	a5,-1
    8003ad80:	83ad                	srli	a5,a5,0xb
quickjs-nuttx/quickjs.c:39857
    newLen = len + argc;
    8003ad82:	014904b3          	add	s1,s2,s4
quickjs-nuttx/quickjs.c:39858
    if (newLen > MAX_SAFE_INTEGER) {
    8003ad86:	0297d263          	bge	a5,s1,8003adaa <js_array_push+0x5c>
quickjs-nuttx/quickjs.c:39859
        JS_ThrowTypeError(ctx, "Array loo long");
    8003ad8a:	00032597          	auipc	a1,0x32
    8003ad8e:	04e58593          	addi	a1,a1,78 # 8006cdd8 <qjsc_repl+0x7828>
    8003ad92:	8522                	mv	a0,s0
    8003ad94:	8d9dd0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:39880
    JS_FreeValue(ctx, obj);
    8003ad98:	7582                	ld	a1,32(sp)
    8003ad9a:	7622                	ld	a2,40(sp)
    8003ad9c:	8522                	mv	a0,s0
    8003ad9e:	a01d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39881
    return JS_EXCEPTION;
    8003ada2:	4799                	li	a5,6
    8003ada4:	f082                	sd	zero,96(sp)
    8003ada6:	f4be                	sd	a5,104(sp)
    8003ada8:	a889                	j	8003adfa <js_array_push+0xac>
quickjs-nuttx/quickjs.c:39863
    if (unshift && argc > 0) {
    8003adaa:	06098e63          	beqz	s3,8003ae26 <js_array_push+0xd8>
quickjs-nuttx/quickjs.c:39863 (discriminator 1)
    8003adae:	07204163          	bgtz	s2,8003ae10 <js_array_push+0xc2>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003adb2:	00048a1b          	sext.w	s4,s1
    8003adb6:	0b449163          	bne	s1,s4,8003ae58 <js_array_push+0x10a>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003adba:	ca82                	sw	zero,84(sp)
    8003adbc:	c8a6                	sw	s1,80(sp)
    8003adbe:	67c6                	ld	a5,80(sp)
    8003adc0:	fc82                	sd	zero,120(sp)
    8003adc2:	8926                	mv	s2,s1
    8003adc4:	f8be                	sd	a5,112(sp)
    8003adc6:	4981                	li	s3,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003adc8:	d8ca                	sw	s2,112(sp)
js_array_push():
quickjs-nuttx/quickjs.c:39873
    if (JS_SetProperty(ctx, obj, JS_ATOM_length, JS_NewInt64(ctx, newLen)) < 0)
    8003adca:	7746                	ld	a4,112(sp)
    8003adcc:	7582                	ld	a1,32(sp)
    8003adce:	7622                	ld	a2,40(sp)
    8003add0:	87ce                	mv	a5,s3
    8003add2:	03000693          	li	a3,48
    8003add6:	8522                	mv	a0,s0
    8003add8:	e35fc0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003addc:	fa054ee3          	bltz	a0,8003ad98 <js_array_push+0x4a>
quickjs-nuttx/quickjs.c:39876
    JS_FreeValue(ctx, obj);
    8003ade0:	7582                	ld	a1,32(sp)
    8003ade2:	7622                	ld	a2,40(sp)
    8003ade4:	8522                	mv	a0,s0
    8003ade6:	9b9d00ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003adea:	07449f63          	bne	s1,s4,8003ae68 <js_array_push+0x11a>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003adee:	da82                	sw	zero,116(sp)
    8003adf0:	d8a6                	sw	s1,112(sp)
    8003adf2:	77c6                	ld	a5,112(sp)
    8003adf4:	f0be                	sd	a5,96(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003adf6:	d0ca                	sw	s2,96(sp)
    8003adf8:	f4ce                	sd	s3,104(sp)
js_array_push():
quickjs-nuttx/quickjs.c:39882
}
    8003adfa:	70ea                	ld	ra,184(sp)
    8003adfc:	744a                	ld	s0,176(sp)
    8003adfe:	7506                	ld	a0,96(sp)
    8003ae00:	75a6                	ld	a1,104(sp)
    8003ae02:	74aa                	ld	s1,168(sp)
    8003ae04:	790a                	ld	s2,160(sp)
    8003ae06:	69ea                	ld	s3,152(sp)
    8003ae08:	6a4a                	ld	s4,144(sp)
    8003ae0a:	6aaa                	ld	s5,136(sp)
    8003ae0c:	6129                	addi	sp,sp,192
    8003ae0e:	8082                	ret
quickjs-nuttx/quickjs.c:39864
        if (JS_CopySubArray(ctx, obj, argc, 0, len, -1))
    8003ae10:	7582                	ld	a1,32(sp)
    8003ae12:	7622                	ld	a2,40(sp)
    8003ae14:	587d                	li	a6,-1
    8003ae16:	87d2                	mv	a5,s4
    8003ae18:	4701                	li	a4,0
    8003ae1a:	86ca                	mv	a3,s2
    8003ae1c:	8522                	mv	a0,s0
    8003ae1e:	b59ff0ef          	jal	ra,8003a976 <JS_CopySubArray>
    8003ae22:	f93d                	bnez	a0,8003ad98 <js_array_push+0x4a>
quickjs-nuttx/quickjs.c:39866
        from = 0;
    8003ae24:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:39868
    for(i = 0; i < argc; i++) {
    8003ae26:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:39868 (discriminator 1)
    8003ae28:	0009879b          	sext.w	a5,s3
    8003ae2c:	f927d3e3          	bge	a5,s2,8003adb2 <js_array_push+0x64>
quickjs-nuttx/quickjs.c:39869
        if (JS_SetPropertyInt64(ctx, obj, from + i,
    8003ae30:	00499793          	slli	a5,s3,0x4
    8003ae34:	97d6                	add	a5,a5,s5
    8003ae36:	6388                	ld	a0,0(a5)
    8003ae38:	678c                	ld	a1,8(a5)
    8003ae3a:	de0cf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003ae3e:	87ae                	mv	a5,a1
    8003ae40:	7622                	ld	a2,40(sp)
    8003ae42:	7582                	ld	a1,32(sp)
    8003ae44:	872a                	mv	a4,a0
    8003ae46:	013a06b3          	add	a3,s4,s3
    8003ae4a:	8522                	mv	a0,s0
    8003ae4c:	828fd0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    8003ae50:	0985                	addi	s3,s3,1
    8003ae52:	fc055be3          	bgez	a0,8003ae28 <js_array_push+0xda>
    8003ae56:	b789                	j	8003ad98 <js_array_push+0x4a>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003ae58:	d224f7d3          	fcvt.d.l	fa5,s1
    8003ae5c:	499d                	li	s3,7
    8003ae5e:	e2078953          	fmv.x.d	s2,fa5
js_array_push():
quickjs-nuttx/quickjs.h:230
    return v;
    8003ae62:	b8be                	fsd	fa5,112(sp)
    8003ae64:	2901                	sext.w	s2,s2
    8003ae66:	b78d                	j	8003adc8 <js_array_push+0x7a>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003ae68:	d224f7d3          	fcvt.d.l	fa5,s1
    8003ae6c:	b0be                	fsd	fa5,96(sp)
    8003ae6e:	b761                	j	8003adf6 <js_array_push+0xa8>

000000008003ae70 <js_array_sort>:
js_array_sort():
quickjs-nuttx/quickjs.c:40420
{
    8003ae70:	7155                	addi	sp,sp,-208
    8003ae72:	f54e                	sd	s3,168(sp)
    8003ae74:	e586                	sd	ra,200(sp)
    8003ae76:	e1a2                	sd	s0,192(sp)
    8003ae78:	fd26                	sd	s1,184(sp)
    8003ae7a:	f94a                	sd	s2,176(sp)
    8003ae7c:	f152                	sd	s4,160(sp)
    8003ae7e:	ed56                	sd	s5,152(sp)
    8003ae80:	e95a                	sd	s6,144(sp)
    8003ae82:	e55e                	sd	s7,136(sp)
    8003ae84:	e162                	sd	s8,128(sp)
    8003ae86:	fce6                	sd	s9,120(sp)
    8003ae88:	e82e                	sd	a1,16(sp)
    8003ae8a:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:40421
    struct array_sort_context asc = { ctx, 0, 0, argv[0] };
    8003ae8c:	630c                	ld	a1,0(a4)
    8003ae8e:	6710                	ld	a2,8(a4)
    8003ae90:	e8aa                	sd	a0,80(sp)
    8003ae92:	ec82                	sd	zero,88(sp)
    8003ae94:	f0ae                	sd	a1,96(sp)
    8003ae96:	f4b2                	sd	a2,104(sp)
quickjs-nuttx/quickjs.c:40422
    JSValue obj = JS_UNDEFINED;
    8003ae98:	f802                	sd	zero,48(sp)
    8003ae9a:	fc02                	sd	zero,56(sp)
quickjs-nuttx/quickjs.c:40428
    if (!JS_IsUndefined(asc.method)) {
    8003ae9c:	0006071b          	sext.w	a4,a2
    8003aea0:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:40420
{
    8003aea2:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:40428
    if (!JS_IsUndefined(asc.method)) {
    8003aea4:	00f70863          	beq	a4,a5,8003aeb4 <js_array_sort+0x44>
quickjs-nuttx/quickjs.c:40429
        if (check_function(ctx, asc.method))
    8003aea8:	877dd0ef          	jal	ra,8001871e <check_function>
    8003aeac:	1c051863          	bnez	a0,8003b07c <js_array_sort+0x20c>
quickjs-nuttx/quickjs.c:40431
        asc.has_method = 1;
    8003aeb0:	4785                	li	a5,1
    8003aeb2:	cebe                	sw	a5,92(sp)
quickjs-nuttx/quickjs.c:40433
    obj = JS_ToObject(ctx, this_val);
    8003aeb4:	6662                	ld	a2,24(sp)
    8003aeb6:	65c2                	ld	a1,16(sp)
    8003aeb8:	854e                	mv	a0,s3
    8003aeba:	a00f50ef          	jal	ra,800300ba <JS_ToObject>
    8003aebe:	862a                	mv	a2,a0
    8003aec0:	8a2e                	mv	s4,a1
    8003aec2:	f82a                	sd	a0,48(sp)
    8003aec4:	fc2e                	sd	a1,56(sp)
    8003aec6:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:40434
    if (js_get_length64(ctx, &len, obj))
    8003aec8:	86ae                	mv	a3,a1
    8003aeca:	854e                	mv	a0,s3
    8003aecc:	102c                	addi	a1,sp,40
    8003aece:	f03e90ef          	jal	ra,80024dd0 <js_get_length64>
    8003aed2:	1a051663          	bnez	a0,8003b07e <js_array_sort+0x20e>
quickjs-nuttx/quickjs.c:40425
    int64_t i, len, undefined_count = 0;
    8003aed6:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:40438
    for (i = 0; i < len; i++) {
    8003aed8:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:40424
    size_t array_size = 0, pos = 0, n = 0;
    8003aeda:	4401                	li	s0,0
    8003aedc:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:40423
    ValueSlot *array = NULL;
    8003aede:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:40455
        if (JS_IsUndefined(array[pos].val)) {
    8003aee0:	4c0d                	li	s8,3
quickjs-nuttx/quickjs.c:40438 (discriminator 1)
    for (i = 0; i < len; i++) {
    8003aee2:	77a2                	ld	a5,40(sp)
    8003aee4:	06fcc363          	blt	s9,a5,8003af4a <js_array_sort+0xda>
quickjs-nuttx/quickjs.c:40463
    rqsort(array, pos, sizeof(*array), js_array_cmp_generic, &asc);
    8003aee8:	0898                	addi	a4,sp,80
    8003aeea:	0000d697          	auipc	a3,0xd
    8003aeee:	4ac68693          	addi	a3,a3,1196 # 80048396 <js_array_cmp_generic>
    8003aef2:	02000613          	li	a2,32
    8003aef6:	85a2                	mv	a1,s0
    8003aef8:	854a                	mv	a0,s2
    8003aefa:	657160ef          	jal	ra,80051d50 <rqsort>
quickjs-nuttx/quickjs.c:40464
    if (asc.exception)
    8003aefe:	47e6                	lw	a5,88(sp)
    8003af00:	e7ad                	bnez	a5,8003af6a <js_array_sort+0xfa>
    8003af02:	8bca                	mv	s7,s2
quickjs-nuttx/quickjs.c:40424
    size_t array_size = 0, pos = 0, n = 0;
    8003af04:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:40470
            JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, array[n].str));
    8003af06:	5c65                	li	s8,-7
quickjs-nuttx/quickjs.c:40468
    while (n < pos) {
    8003af08:	0ad41263          	bne	s0,a3,8003afac <js_array_sort+0x13c>
quickjs-nuttx/quickjs.c:40481
    js_free(ctx, array);
    8003af0c:	85ca                	mv	a1,s2
    8003af0e:	854e                	mv	a0,s3
    8003af10:	8e6d00ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:40482
    for (i = n; undefined_count-- > 0; i++) {
    8003af14:	9b22                	add	s6,s6,s0
quickjs-nuttx/quickjs.c:40483
        if (JS_SetPropertyInt64(ctx, obj, i, JS_UNDEFINED) < 0)
    8003af16:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:40482 (discriminator 1)
    for (i = n; undefined_count-- > 0; i++) {
    8003af18:	408b07b3          	sub	a5,s6,s0
    8003af1c:	0ef04563          	bgtz	a5,8003b006 <js_array_sort+0x196>
quickjs-nuttx/quickjs.c:40486 (discriminator 1)
    for (; i < len; i++) {
    8003af20:	77a2                	ld	a5,40(sp)
    8003af22:	10f44063          	blt	s0,a5,8003b022 <js_array_sort+0x1b2>
quickjs-nuttx/quickjs.c:40490
    return obj;
    8003af26:	77c2                	ld	a5,48(sp)
    8003af28:	e4d2                	sd	s4,72(sp)
    8003af2a:	e0be                	sd	a5,64(sp)
quickjs-nuttx/quickjs.c:40502
}
    8003af2c:	60ae                	ld	ra,200(sp)
    8003af2e:	640e                	ld	s0,192(sp)
    8003af30:	6506                	ld	a0,64(sp)
    8003af32:	65a6                	ld	a1,72(sp)
    8003af34:	74ea                	ld	s1,184(sp)
    8003af36:	794a                	ld	s2,176(sp)
    8003af38:	79aa                	ld	s3,168(sp)
    8003af3a:	7a0a                	ld	s4,160(sp)
    8003af3c:	6aea                	ld	s5,152(sp)
    8003af3e:	6b4a                	ld	s6,144(sp)
    8003af40:	6baa                	ld	s7,136(sp)
    8003af42:	6c0a                	ld	s8,128(sp)
    8003af44:	7ce6                	ld	s9,120(sp)
    8003af46:	6169                	addi	sp,sp,208
    8003af48:	8082                	ret
quickjs-nuttx/quickjs.c:40439
        if (pos >= array_size) {
    8003af4a:	02946663          	bltu	s0,s1,8003af76 <js_array_sort+0x106>
quickjs-nuttx/quickjs.c:40442
            new_size = (array_size + (array_size >> 1) + 31) & ~15;
    8003af4e:	0014db93          	srli	s7,s1,0x1
    8003af52:	04fd                	addi	s1,s1,31
    8003af54:	94de                	add	s1,s1,s7
    8003af56:	ff04fb93          	andi	s7,s1,-16
quickjs-nuttx/quickjs.c:40443
            new_array = js_realloc2(ctx, array, new_size * sizeof(*array), &slack);
    8003af5a:	0094                	addi	a3,sp,64
    8003af5c:	005b9613          	slli	a2,s7,0x5
    8003af60:	85ca                	mv	a1,s2
    8003af62:	854e                	mv	a0,s3
    8003af64:	face10ef          	jal	ra,8001c710 <js_realloc2>
quickjs-nuttx/quickjs.c:40444
            if (new_array == NULL)
    8003af68:	e119                	bnez	a0,8003af6e <js_array_sort+0xfe>
quickjs-nuttx/quickjs.c:40424
    size_t array_size = 0, pos = 0, n = 0;
    8003af6a:	4481                	li	s1,0
    8003af6c:	a841                	j	8003affc <js_array_sort+0x18c>
quickjs-nuttx/quickjs.c:40446
            new_size += slack / sizeof(*new_array);
    8003af6e:	6486                	ld	s1,64(sp)
    8003af70:	892a                	mv	s2,a0
    8003af72:	8095                	srli	s1,s1,0x5
    8003af74:	94de                	add	s1,s1,s7
quickjs-nuttx/quickjs.c:40450
        present = JS_TryGetPropertyInt64(ctx, obj, i, &array[pos].val);
    8003af76:	00541b93          	slli	s7,s0,0x5
    8003af7a:	75c2                	ld	a1,48(sp)
    8003af7c:	9bca                	add	s7,s7,s2
    8003af7e:	875e                	mv	a4,s7
    8003af80:	86e6                	mv	a3,s9
    8003af82:	8652                	mv	a2,s4
    8003af84:	854e                	mv	a0,s3
    8003af86:	fc52                	sd	s4,56(sp)
    8003af88:	868ff0ef          	jal	ra,80039ff0 <JS_TryGetPropertyInt64>
quickjs-nuttx/quickjs.c:40451
        if (present < 0)
    8003af8c:	fc054fe3          	bltz	a0,8003af6a <js_array_sort+0xfa>
quickjs-nuttx/quickjs.c:40453
        if (present == 0)
    8003af90:	c511                	beqz	a0,8003af9c <js_array_sort+0x12c>
quickjs-nuttx/quickjs.c:40455
        if (JS_IsUndefined(array[pos].val)) {
    8003af92:	008ba783          	lw	a5,8(s7)
    8003af96:	01879563          	bne	a5,s8,8003afa0 <js_array_sort+0x130>
quickjs-nuttx/quickjs.c:40456
            undefined_count++;
    8003af9a:	0b05                	addi	s6,s6,1
quickjs-nuttx/quickjs.c:40438 (discriminator 2)
    for (i = 0; i < len; i++) {
    8003af9c:	0c85                	addi	s9,s9,1
    8003af9e:	b791                	j	8003aee2 <js_array_sort+0x72>
quickjs-nuttx/quickjs.c:40459
        array[pos].str = NULL;
    8003afa0:	000bb823          	sd	zero,16(s7)
quickjs-nuttx/quickjs.c:40460
        array[pos].pos = i;
    8003afa4:	019bbc23          	sd	s9,24(s7)
quickjs-nuttx/quickjs.c:40461
        pos++;
    8003afa8:	0405                	addi	s0,s0,1
    8003afaa:	bfcd                	j	8003af9c <js_array_sort+0x12c>
quickjs-nuttx/quickjs.c:40469
        if (array[n].str)
    8003afac:	010bb583          	ld	a1,16(s7)
    8003afb0:	c989                	beqz	a1,8003afc2 <js_array_sort+0x152>
quickjs-nuttx/quickjs.c:40470
            JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, array[n].str));
    8003afb2:	5665                	li	a2,-7
    8003afb4:	854e                	mv	a0,s3
    8003afb6:	e436                	sd	a3,8(sp)
    8003afb8:	e0ae                	sd	a1,64(sp)
    8003afba:	e4e2                	sd	s8,72(sp)
    8003afbc:	fe2d00ef          	jal	ra,8000b79e <JS_FreeValue>
    8003afc0:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:40471
        if (array[n].pos == n) {
    8003afc2:	018bb783          	ld	a5,24(s7)
    8003afc6:	00168493          	addi	s1,a3,1
    8003afca:	00d79d63          	bne	a5,a3,8003afe4 <js_array_sort+0x174>
quickjs-nuttx/quickjs.c:40472
            JS_FreeValue(ctx, array[n].val);
    8003afce:	000bb583          	ld	a1,0(s7)
    8003afd2:	008bb603          	ld	a2,8(s7)
    8003afd6:	854e                	mv	a0,s3
    8003afd8:	fc6d00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40479
        n++;
    8003afdc:	86a6                	mv	a3,s1
    8003afde:	020b8b93          	addi	s7,s7,32
    8003afe2:	b71d                	j	8003af08 <js_array_sort+0x98>
quickjs-nuttx/quickjs.c:40474
            if (JS_SetPropertyInt64(ctx, obj, n, array[n].val) < 0) {
    8003afe4:	000bb703          	ld	a4,0(s7)
    8003afe8:	008bb783          	ld	a5,8(s7)
    8003afec:	75c2                	ld	a1,48(sp)
    8003afee:	8652                	mv	a2,s4
    8003aff0:	854e                	mv	a0,s3
    8003aff2:	fc52                	sd	s4,56(sp)
    8003aff4:	e81fc0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    8003aff8:	fe0552e3          	bgez	a0,8003afdc <js_array_sort+0x16c>
    8003affc:	00549a13          	slli	s4,s1,0x5
