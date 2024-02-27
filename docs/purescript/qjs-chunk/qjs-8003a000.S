    80039000:	e53ff0ef          	jal	ra,80038e52 <js_typed_array_constructor_ta>
    80039004:	e82a                	sd	a0,16(sp)
    80039006:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:54419
    if (JS_IsException(arr))
    80039008:	0005871b          	sext.w	a4,a1
    8003900c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:54417
    arr = js_typed_array_constructor_ta(ctx, JS_UNDEFINED, this_val,
    8003900e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:54419
    if (JS_IsException(arr))
    80039010:	fcf703e3          	beq	a4,a5,80038fd6 <js_typed_array_toSorted+0x1c>
quickjs-nuttx/quickjs.c:54421
    ret = js_typed_array_sort(ctx, arr, argc, argv);
    80039014:	874a                	mv	a4,s2
    80039016:	86a6                	mv	a3,s1
    80039018:	85aa                	mv	a1,a0
    8003901a:	8522                	mv	a0,s0
    8003901c:	c9be10ef          	jal	ra,8001acb6 <js_typed_array_sort>
    80039020:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:54422
    JS_FreeValue(ctx, arr);
    80039022:	6662                	ld	a2,24(sp)
    80039024:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:54421
    ret = js_typed_array_sort(ctx, arr, argc, argv);
    80039026:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:54422
    JS_FreeValue(ctx, arr);
    80039028:	8522                	mv	a0,s0
    8003902a:	f74d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54423
    return ret;
    8003902e:	7782                	ld	a5,32(sp)
    80039030:	e0be                	sd	a5,64(sp)
    80039032:	77a2                	ld	a5,40(sp)
    80039034:	b75d                	j	80038fda <js_typed_array_toSorted+0x20>

0000000080039036 <js_typed_array_toReversed>:
js_typed_array_toReversed():
quickjs-nuttx/quickjs.c:53989
{
    80039036:	7159                	addi	sp,sp,-112
    80039038:	eca6                	sd	s1,88(sp)
    8003903a:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:53993
    p = get_typed_array(ctx, this_val, /*is_dataview*/0);
    8003903c:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:53989
{
    8003903e:	f0a2                	sd	s0,96(sp)
    80039040:	e8ca                	sd	s2,80(sp)
    80039042:	f486                	sd	ra,104(sp)
    80039044:	842a                	mv	s0,a0
    80039046:	e02e                	sd	a1,0(sp)
    80039048:	e432                	sd	a2,8(sp)
    8003904a:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:53993
    p = get_typed_array(ctx, this_val, /*is_dataview*/0);
    8003904c:	bcae00ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:53994
    if (!p)
    80039050:	ed01                	bnez	a0,80039068 <js_typed_array_toReversed+0x32>
quickjs-nuttx/quickjs.c:53995
        return JS_EXCEPTION;
    80039052:	e082                	sd	zero,64(sp)
    80039054:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:54003
}
    80039056:	70a6                	ld	ra,104(sp)
    80039058:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:54002
    return ret;
    8003905a:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:54003
}
    8003905c:	6506                	ld	a0,64(sp)
    8003905e:	65a6                	ld	a1,72(sp)
    80039060:	64e6                	ld	s1,88(sp)
    80039062:	6946                	ld	s2,80(sp)
    80039064:	6165                	addi	sp,sp,112
    80039066:	8082                	ret
quickjs-nuttx/quickjs.c:53996
    arr = js_typed_array_constructor_ta(ctx, JS_UNDEFINED, this_val,
    80039068:	478d                	li	a5,3
    8003906a:	6722                	ld	a4,8(sp)
    8003906c:	fc3e                	sd	a5,56(sp)
    8003906e:	6682                	ld	a3,0(sp)
    80039070:	00655783          	lhu	a5,6(a0)
    80039074:	460d                	li	a2,3
    80039076:	4581                	li	a1,0
    80039078:	8522                	mv	a0,s0
    8003907a:	f802                	sd	zero,48(sp)
    8003907c:	dd7ff0ef          	jal	ra,80038e52 <js_typed_array_constructor_ta>
    80039080:	e82a                	sd	a0,16(sp)
    80039082:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:53998
    if (JS_IsException(arr))
    80039084:	0005871b          	sext.w	a4,a1
    80039088:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53996
    arr = js_typed_array_constructor_ta(ctx, JS_UNDEFINED, this_val,
    8003908a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:53998
    if (JS_IsException(arr))
    8003908c:	fcf703e3          	beq	a4,a5,80039052 <js_typed_array_toReversed+0x1c>
quickjs-nuttx/quickjs.c:54000
    ret = js_typed_array_reverse(ctx, arr, argc, argv);
    80039090:	874a                	mv	a4,s2
    80039092:	86a6                	mv	a3,s1
    80039094:	85aa                	mv	a1,a0
    80039096:	8522                	mv	a0,s0
    80039098:	c10e00ef          	jal	ra,800194a8 <js_typed_array_reverse>
    8003909c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:54001
    JS_FreeValue(ctx, arr);
    8003909e:	6662                	ld	a2,24(sp)
    800390a0:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:54000
    ret = js_typed_array_reverse(ctx, arr, argc, argv);
    800390a2:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:54001
    JS_FreeValue(ctx, arr);
    800390a4:	8522                	mv	a0,s0
    800390a6:	ef8d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54002
    return ret;
    800390aa:	7782                	ld	a5,32(sp)
    800390ac:	e0be                	sd	a5,64(sp)
    800390ae:	77a2                	ld	a5,40(sp)
    800390b0:	b75d                	j	80039056 <js_typed_array_toReversed+0x20>

00000000800390b2 <js_typed_array_with>:
js_typed_array_with():
quickjs-nuttx/quickjs.c:53174
{
    800390b2:	7119                	addi	sp,sp,-128
quickjs-nuttx/quickjs.c:53179
    p = get_typed_array(ctx, this_val, /*is_dataview*/0);
    800390b4:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:53174
{
    800390b6:	f8a2                	sd	s0,112(sp)
    800390b8:	f4a6                	sd	s1,104(sp)
    800390ba:	fc86                	sd	ra,120(sp)
    800390bc:	f0ca                	sd	s2,96(sp)
    800390be:	842a                	mv	s0,a0
    800390c0:	e02e                	sd	a1,0(sp)
    800390c2:	e432                	sd	a2,8(sp)
    800390c4:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:53179
    p = get_typed_array(ctx, this_val, /*is_dataview*/0);
    800390c6:	b50e00ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:53180
    if (!p)
    800390ca:	e509                	bnez	a0,800390d4 <js_typed_array_with+0x22>
quickjs-nuttx/quickjs.c:53181
        return JS_EXCEPTION;
    800390cc:	e882                	sd	zero,80(sp)
    800390ce:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53206
    return arr;
    800390d0:	ecbe                	sd	a5,88(sp)
    800390d2:	a825                	j	8003910a <js_typed_array_with+0x58>
quickjs-nuttx/quickjs.c:53183
    if (JS_ToInt64Sat(ctx, &idx, argv[0]))
    800390d4:	6090                	ld	a2,0(s1)
    800390d6:	6494                	ld	a3,8(s1)
    800390d8:	892a                	mv	s2,a0
    800390da:	082c                	addi	a1,sp,24
    800390dc:	8522                	mv	a0,s0
    800390de:	afceb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    800390e2:	f56d                	bnez	a0,800390cc <js_typed_array_with+0x1a>
quickjs-nuttx/quickjs.c:53187
    if (idx < 0)
    800390e4:	67e2                	ld	a5,24(sp)
    800390e6:	04096703          	lwu	a4,64(s2)
    800390ea:	0007d463          	bgez	a5,800390f2 <js_typed_array_with+0x40>
quickjs-nuttx/quickjs.c:53188
        idx = len + idx;
    800390ee:	97ba                	add	a5,a5,a4
    800390f0:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:53189
    if (idx < 0 || idx >= len)
    800390f2:	67e2                	ld	a5,24(sp)
    800390f4:	02e7e363          	bltu	a5,a4,8003911a <js_typed_array_with+0x68>
quickjs-nuttx/quickjs.c:53190
        return JS_ThrowRangeError(ctx, "out of bound");
    800390f8:	00032597          	auipc	a1,0x32
    800390fc:	bc858593          	addi	a1,a1,-1080 # 8006acc0 <qjsc_repl+0x5710>
    80039100:	8522                	mv	a0,s0
    80039102:	fcce00ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80039106:	e8aa                	sd	a0,80(sp)
    80039108:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:53207 (discriminator 1)
}
    8003910a:	70e6                	ld	ra,120(sp)
    8003910c:	7446                	ld	s0,112(sp)
    8003910e:	6546                	ld	a0,80(sp)
    80039110:	65e6                	ld	a1,88(sp)
    80039112:	74a6                	ld	s1,104(sp)
    80039114:	7906                	ld	s2,96(sp)
    80039116:	6109                	addi	sp,sp,128
    80039118:	8082                	ret
quickjs-nuttx/quickjs.c:53192
    val = JS_ToPrimitive(ctx, argv[1], HINT_NUMBER);
    8003911a:	688c                	ld	a1,16(s1)
    8003911c:	6c90                	ld	a2,24(s1)
    8003911e:	4685                	li	a3,1
    80039120:	8522                	mv	a0,s0
    80039122:	b5be60ef          	jal	ra,8001fc7c <JS_ToPrimitive>
    80039126:	fc2e                	sd	a1,56(sp)
    80039128:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:53193
    if (JS_IsException(val))
    8003912a:	2581                	sext.w	a1,a1
    8003912c:	4499                	li	s1,6
    8003912e:	f8958fe3          	beq	a1,s1,800390cc <js_typed_array_with+0x1a>
quickjs-nuttx/quickjs.c:53196
    arr = js_typed_array_constructor_ta(ctx, JS_UNDEFINED, this_val,
    80039132:	478d                	li	a5,3
    80039134:	e4be                	sd	a5,72(sp)
    80039136:	6682                	ld	a3,0(sp)
    80039138:	00695783          	lhu	a5,6(s2)
    8003913c:	6722                	ld	a4,8(sp)
    8003913e:	460d                	li	a2,3
    80039140:	4581                	li	a1,0
    80039142:	8522                	mv	a0,s0
    80039144:	e082                	sd	zero,64(sp)
    80039146:	d0dff0ef          	jal	ra,80038e52 <js_typed_array_constructor_ta>
    8003914a:	f02a                	sd	a0,32(sp)
    8003914c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:53198
    if (JS_IsException(arr)) {
    8003914e:	0005891b          	sext.w	s2,a1
quickjs-nuttx/quickjs.c:53196
    arr = js_typed_array_constructor_ta(ctx, JS_UNDEFINED, this_val,
    80039152:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:53198
    if (JS_IsException(arr)) {
    80039154:	00991a63          	bne	s2,s1,80039168 <js_typed_array_with+0xb6>
quickjs-nuttx/quickjs.c:53199
        JS_FreeValue(ctx, val);
    80039158:	75c2                	ld	a1,48(sp)
    8003915a:	7662                	ld	a2,56(sp)
    8003915c:	8522                	mv	a0,s0
    8003915e:	e40d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53200
        return JS_EXCEPTION;
    80039162:	e882                	sd	zero,80(sp)
    80039164:	ecca                	sd	s2,88(sp)
    80039166:	b755                	j	8003910a <js_typed_array_with+0x58>
quickjs-nuttx/quickjs.c:53202
    if (JS_SetPropertyInt64(ctx, arr, idx, val) < 0) {
    80039168:	7742                	ld	a4,48(sp)
    8003916a:	77e2                	ld	a5,56(sp)
    8003916c:	66e2                	ld	a3,24(sp)
    8003916e:	85aa                	mv	a1,a0
    80039170:	8522                	mv	a0,s0
    80039172:	d03fe0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    80039176:	00055a63          	bgez	a0,8003918a <js_typed_array_with+0xd8>
quickjs-nuttx/quickjs.c:53203
        JS_FreeValue(ctx, arr);
    8003917a:	7582                	ld	a1,32(sp)
    8003917c:	7622                	ld	a2,40(sp)
    8003917e:	8522                	mv	a0,s0
    80039180:	e1ed20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53204
        return JS_EXCEPTION;
    80039184:	e882                	sd	zero,80(sp)
    80039186:	eca6                	sd	s1,88(sp)
    80039188:	b749                	j	8003910a <js_typed_array_with+0x58>
quickjs-nuttx/quickjs.c:53206
    return arr;
    8003918a:	7782                	ld	a5,32(sp)
    8003918c:	e8be                	sd	a5,80(sp)
    8003918e:	77a2                	ld	a5,40(sp)
    80039190:	b781                	j	800390d0 <js_typed_array_with+0x1e>

0000000080039192 <remainingElementsCount_add>:
remainingElementsCount_add():
quickjs-nuttx/quickjs.c:48192
{
    80039192:	7159                	addi	sp,sp,-112
    80039194:	eca6                	sd	s1,88(sp)
    80039196:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:48196
    val = JS_GetPropertyUint32(ctx, resolve_element_env, 0);
    80039198:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:48192
{
    8003919a:	f0a2                	sd	s0,96(sp)
    8003919c:	f486                	sd	ra,104(sp)
    8003919e:	842a                	mv	s0,a0
    800391a0:	e02e                	sd	a1,0(sp)
    800391a2:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:48196
    val = JS_GetPropertyUint32(ctx, resolve_element_env, 0);
    800391a4:	f95dd0ef          	jal	ra,80017138 <JS_GetPropertyUint32>
quickjs-nuttx/quickjs.c:48197
    if (JS_IsException(val))
    800391a8:	0005871b          	sext.w	a4,a1
    800391ac:	4799                	li	a5,6
    800391ae:	00f71863          	bne	a4,a5,800391be <remainingElementsCount_add+0x2c>
quickjs-nuttx/quickjs.c:48198
        return -1;
    800391b2:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:48206
}
    800391b4:	70a6                	ld	ra,104(sp)
    800391b6:	7406                	ld	s0,96(sp)
    800391b8:	64e6                	ld	s1,88(sp)
    800391ba:	6165                	addi	sp,sp,112
    800391bc:	8082                	ret
    800391be:	862a                	mv	a2,a0
    800391c0:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:48199
    if (JS_ToInt32Free(ctx, &remainingElementsCount, val))
    800391c2:	8522                	mv	a0,s0
    800391c4:	086c                	addi	a1,sp,28
    800391c6:	8cee90ef          	jal	ra,80022294 <JS_ToInt32Free>
    800391ca:	f565                	bnez	a0,800391b2 <remainingElementsCount_add+0x20>
quickjs-nuttx/quickjs.c:48201
    remainingElementsCount += addend;
    800391cc:	47f2                	lw	a5,28(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800391ce:	e082                	sd	zero,64(sp)
remainingElementsCount_add():
quickjs-nuttx/quickjs.c:48202
    if (JS_SetPropertyUint32(ctx, resolve_element_env, 0,
    800391d0:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:48201
    remainingElementsCount += addend;
    800391d2:	009786bb          	addw	a3,a5,s1
    800391d6:	c0b6                	sw	a3,64(sp)
quickjs-nuttx/quickjs.c:48202
    if (JS_SetPropertyUint32(ctx, resolve_element_env, 0,
    800391d8:	6706                	ld	a4,64(sp)
    800391da:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:48201
    remainingElementsCount += addend;
    800391dc:	ce36                	sw	a3,28(sp)
quickjs-nuttx/quickjs.c:48202
    if (JS_SetPropertyUint32(ctx, resolve_element_env, 0,
    800391de:	4781                	li	a5,0
    800391e0:	4681                	li	a3,0
    800391e2:	8522                	mv	a0,s0
    800391e4:	929de0ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
    800391e8:	fc0545e3          	bltz	a0,800391b2 <remainingElementsCount_add+0x20>
quickjs-nuttx/quickjs.c:48205
    return (remainingElementsCount == 0);
    800391ec:	4572                	lw	a0,28(sp)
    800391ee:	00153513          	seqz	a0,a0
    800391f2:	b7c9                	j	800391b4 <remainingElementsCount_add+0x22>

00000000800391f4 <js_typed_array_set>:
js_typed_array_set():
quickjs-nuttx/quickjs.c:53212
{
    800391f4:	7155                	addi	sp,sp,-208
    800391f6:	e1a2                	sd	s0,192(sp)
    800391f8:	e586                	sd	ra,200(sp)
    800391fa:	fd26                	sd	s1,184(sp)
    800391fc:	f94a                	sd	s2,176(sp)
    800391fe:	f54e                	sd	s3,168(sp)
    80039200:	f152                	sd	s4,160(sp)
    80039202:	ed56                	sd	s5,152(sp)
    80039204:	e95a                	sd	s6,144(sp)
    80039206:	e02e                	sd	a1,0(sp)
    80039208:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:53214
    if (argc > 1) {
    8003920a:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:53212
{
    8003920c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:53214
    if (argc > 1) {
    8003920e:	06d7c663          	blt	a5,a3,8003927a <js_typed_array_set+0x86>
quickjs-nuttx/quickjs.c:53213
    JSValueConst offset = JS_UNDEFINED;
    80039212:	f002                	sd	zero,32(sp)
    80039214:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:53217
    return js_typed_array_set_internal(ctx, this_val, argv[0], offset);
    80039216:	6314                	ld	a3,0(a4)
    80039218:	6718                	ld	a4,8(a4)
    8003921a:	6582                	ld	a1,0(sp)
    8003921c:	6622                	ld	a2,8(sp)
    8003921e:	e4ba                	sd	a4,72(sp)
    80039220:	7702                	ld	a4,32(sp)
    80039222:	e0b6                	sd	a3,64(sp)
js_typed_array_set_internal():
quickjs-nuttx/quickjs.c:53079
    p = get_typed_array(ctx, dst, 0);
    80039224:	8522                	mv	a0,s0
    80039226:	4681                	li	a3,0
    80039228:	f82e                	sd	a1,48(sp)
    8003922a:	fc32                	sd	a2,56(sp)
    8003922c:	f43e                	sd	a5,40(sp)
    8003922e:	e8ba                	sd	a4,80(sp)
    80039230:	ecbe                	sd	a5,88(sp)
    80039232:	9e4e00ef          	jal	ra,80019416 <get_typed_array>
    80039236:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:53080
    if (!p)
    80039238:	18050263          	beqz	a0,800393bc <js_typed_array_set+0x1c8>
quickjs-nuttx/quickjs.c:53082
    if (JS_ToInt64Sat(ctx, &offset, off))
    8003923c:	6646                	ld	a2,80(sp)
    8003923e:	66e6                	ld	a3,88(sp)
    80039240:	082c                	addi	a1,sp,24
    80039242:	8522                	mv	a0,s0
    80039244:	996eb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80039248:	16051a63          	bnez	a0,800393bc <js_typed_array_set+0x1c8>
quickjs-nuttx/quickjs.c:53084
    if (offset < 0)
    8003924c:	67e2                	ld	a5,24(sp)
    8003924e:	1607c463          	bltz	a5,800393b6 <js_typed_array_set+0x1c2>
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80039252:	03093783          	ld	a5,48(s2)
    80039256:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    80039258:	7b9c                	ld	a5,48(a5)
js_typed_array_set_internal():
quickjs-nuttx/quickjs.c:53086
    if (typed_array_is_detached(ctx, p)) {
    8003925a:	0047c783          	lbu	a5,4(a5)
    8003925e:	c395                	beqz	a5,80039282 <js_typed_array_set+0x8e>
quickjs-nuttx/quickjs.c:53077
    JSValue val, src_obj = JS_UNDEFINED;
    80039260:	4a0d                	li	s4,3
    80039262:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:53088
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80039264:	8522                	mv	a0,s0
    80039266:	d1fdf0ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:53142
    JS_FreeValue(ctx, src_obj);
    8003926a:	85d6                	mv	a1,s5
    8003926c:	8652                	mv	a2,s4
    8003926e:	8522                	mv	a0,s0
    80039270:	d2ed20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53143
    return JS_EXCEPTION;
    80039274:	4599                	li	a1,6
    80039276:	e102                	sd	zero,128(sp)
    80039278:	a8ed                	j	80039372 <js_typed_array_set+0x17e>
js_typed_array_set():
quickjs-nuttx/quickjs.c:53215
        offset = argv[1];
    8003927a:	6b1c                	ld	a5,16(a4)
    8003927c:	f03e                	sd	a5,32(sp)
    8003927e:	6f1c                	ld	a5,24(a4)
    80039280:	bf59                	j	80039216 <js_typed_array_set+0x22>
js_typed_array_set_internal():
quickjs-nuttx/quickjs.c:53091
    src_obj = JS_ToObject(ctx, src);
    80039282:	6586                	ld	a1,64(sp)
    80039284:	6626                	ld	a2,72(sp)
    80039286:	8522                	mv	a0,s0
    80039288:	e33f60ef          	jal	ra,800300ba <JS_ToObject>
    8003928c:	f8aa                	sd	a0,112(sp)
    8003928e:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:53092
    if (JS_IsException(src_obj))
    80039290:	0005871b          	sext.w	a4,a1
    80039294:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53091
    src_obj = JS_ToObject(ctx, src);
    80039296:	84aa                	mv	s1,a0
    80039298:	89ae                	mv	s3,a1
    8003929a:	8aaa                	mv	s5,a0
    8003929c:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:53092
    if (JS_IsException(src_obj))
    8003929e:	fcf706e3          	beq	a4,a5,8003926a <js_typed_array_set+0x76>
quickjs-nuttx/quickjs.c:53095
    if (src_p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    800392a2:	00655783          	lhu	a5,6(a0)
    800392a6:	4729                	li	a4,10
    800392a8:	37ad                	addiw	a5,a5,-21
    800392aa:	17c2                	slli	a5,a5,0x30
    800392ac:	93c1                	srli	a5,a5,0x30
    800392ae:	0cf76d63          	bltu	a4,a5,80039388 <js_typed_array_set+0x194>
quickjs-nuttx/quickjs.c:53099
        JSTypedArray *src_ta = src_p->u.typed_array;
    800392b2:	790c                	ld	a1,48(a0)
quickjs-nuttx/quickjs.c:53100
        JSArrayBuffer *src_abuf = src_ta->buffer->u.array_buffer;
    800392b4:	6d9c                	ld	a5,24(a1)
    800392b6:	0307b803          	ld	a6,48(a5)
quickjs-nuttx/quickjs.c:53103
        if (src_abuf->detached)
    800392ba:	00484783          	lbu	a5,4(a6) # 4004 <asinh-0x7fffbffc>
    800392be:	f3dd                	bnez	a5,80039264 <js_typed_array_set+0x70>
quickjs-nuttx/quickjs.c:53097
        JSTypedArray *dest_ta = p->u.typed_array;
    800392c0:	03093683          	ld	a3,48(s2)
quickjs-nuttx/quickjs.c:53107
        if (offset > (int64_t)(p->u.array.count - src_len))
    800392c4:	6562                	ld	a0,24(sp)
quickjs-nuttx/quickjs.c:53098
        JSArrayBuffer *dest_abuf = dest_ta->buffer->u.array_buffer;
    800392c6:	6e9c                	ld	a5,24(a3)
    800392c8:	0307b883          	ld	a7,48(a5)
quickjs-nuttx/quickjs.c:53101
        int shift = typed_array_size_log2(p->class_id);
    800392cc:	00695783          	lhu	a5,6(s2)
    800392d0:	feb7871b          	addiw	a4,a5,-21
    800392d4:	0003c797          	auipc	a5,0x3c
    800392d8:	f0c78793          	addi	a5,a5,-244 # 800751e0 <typed_array_size_log2>
    800392dc:	97ba                	add	a5,a5,a4
    800392de:	0007c603          	lbu	a2,0(a5)
quickjs-nuttx/quickjs.c:53106
        src_len = src_p->u.array.count;
    800392e2:	0404e703          	lwu	a4,64(s1)
quickjs-nuttx/quickjs.c:53107
        if (offset > (int64_t)(p->u.array.count - src_len))
    800392e6:	04096783          	lwu	a5,64(s2)
quickjs-nuttx/quickjs.c:53106
        src_len = src_p->u.array.count;
    800392ea:	e83a                	sd	a4,16(sp)
quickjs-nuttx/quickjs.c:53107
        if (offset > (int64_t)(p->u.array.count - src_len))
    800392ec:	8f99                	sub	a5,a5,a4
    800392ee:	0aa7cc63          	blt	a5,a0,800393a6 <js_typed_array_set+0x1b2>
quickjs-nuttx/quickjs.c:53111
        if (src_p->class_id == p->class_id) {
    800392f2:	0064d303          	lhu	t1,6(s1)
    800392f6:	00695783          	lhu	a5,6(s2)
    800392fa:	04f30463          	beq	t1,a5,80039342 <js_typed_array_set+0x14e>
quickjs-nuttx/quickjs.c:53077
    JSValue val, src_obj = JS_UNDEFINED;
    800392fe:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:53133
        if (JS_IsException(val))
    80039300:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:53131
    for(i = 0; i < src_len; i++) {
    80039302:	6742                	ld	a4,16(sp)
    80039304:	02091793          	slli	a5,s2,0x20
    80039308:	9381                	srli	a5,a5,0x20
    8003930a:	04e7dd63          	bge	a5,a4,80039364 <js_typed_array_set+0x170>
quickjs-nuttx/quickjs.c:53132
        val = JS_GetPropertyUint32(ctx, src_obj, i);
    8003930e:	86ca                	mv	a3,s2
    80039310:	85a6                	mv	a1,s1
    80039312:	864e                	mv	a2,s3
    80039314:	8522                	mv	a0,s0
    80039316:	e23dd0ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    8003931a:	f0aa                	sd	a0,96(sp)
    8003931c:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:53133
        if (JS_IsException(val))
    8003931e:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:53132
        val = JS_GetPropertyUint32(ctx, src_obj, i);
    80039322:	872a                	mv	a4,a0
    80039324:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:53133
        if (JS_IsException(val))
    80039326:	f56682e3          	beq	a3,s6,8003926a <js_typed_array_set+0x76>
quickjs-nuttx/quickjs.c:53135
        if (JS_SetPropertyUint32(ctx, dst, offset + i, val) < 0)
    8003932a:	66e2                	ld	a3,24(sp)
    8003932c:	75c2                	ld	a1,48(sp)
    8003932e:	7662                	ld	a2,56(sp)
    80039330:	012686bb          	addw	a3,a3,s2
    80039334:	8522                	mv	a0,s0
    80039336:	fd6de0ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
    8003933a:	f20548e3          	bltz	a0,8003926a <js_typed_array_set+0x76>
quickjs-nuttx/quickjs.c:53131
    for(i = 0; i < src_len; i++) {
    8003933e:	2905                	addiw	s2,s2,1
    80039340:	b7c9                	j	80039302 <js_typed_array_set+0x10e>
quickjs-nuttx/quickjs.c:53113
            memmove(dest_abuf->data + dest_ta->offset + (offset << shift),
    80039342:	0206e783          	lwu	a5,32(a3)
    80039346:	00c51533          	sll	a0,a0,a2
quickjs-nuttx/quickjs.c:53114
                    src_abuf->data + src_ta->offset, src_len << shift);
    8003934a:	0205e583          	lwu	a1,32(a1)
quickjs-nuttx/quickjs.c:53113
            memmove(dest_abuf->data + dest_ta->offset + (offset << shift),
    8003934e:	953e                	add	a0,a0,a5
quickjs-nuttx/quickjs.c:53114
                    src_abuf->data + src_ta->offset, src_len << shift);
    80039350:	00883803          	ld	a6,8(a6)
quickjs-nuttx/quickjs.c:53113
            memmove(dest_abuf->data + dest_ta->offset + (offset << shift),
    80039354:	0088b783          	ld	a5,8(a7) # 4008 <asinh-0x7fffbff8>
    80039358:	00c71633          	sll	a2,a4,a2
    8003935c:	95c2                	add	a1,a1,a6
    8003935e:	953e                	add	a0,a0,a5
    80039360:	0a12a0ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/quickjs.c:53139
    JS_FreeValue(ctx, src_obj);
    80039364:	85a6                	mv	a1,s1
    80039366:	864e                	mv	a2,s3
    80039368:	8522                	mv	a0,s0
    8003936a:	c34d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53140
    return JS_UNDEFINED;
    8003936e:	458d                	li	a1,3
    80039370:	e102                	sd	zero,128(sp)
js_typed_array_set():
quickjs-nuttx/quickjs.c:53218
}
    80039372:	60ae                	ld	ra,200(sp)
    80039374:	640e                	ld	s0,192(sp)
    80039376:	650a                	ld	a0,128(sp)
    80039378:	74ea                	ld	s1,184(sp)
    8003937a:	794a                	ld	s2,176(sp)
    8003937c:	79aa                	ld	s3,168(sp)
    8003937e:	7a0a                	ld	s4,160(sp)
    80039380:	6aea                	ld	s5,152(sp)
    80039382:	6b4a                	ld	s6,144(sp)
    80039384:	6169                	addi	sp,sp,208
    80039386:	8082                	ret
js_typed_array_set_internal():
quickjs-nuttx/quickjs.c:53123
        if (js_get_length64(ctx, &src_len, src_obj))
    80039388:	862a                	mv	a2,a0
    8003938a:	86ae                	mv	a3,a1
    8003938c:	8522                	mv	a0,s0
    8003938e:	080c                	addi	a1,sp,16
    80039390:	a41eb0ef          	jal	ra,80024dd0 <js_get_length64>
    80039394:	ec051be3          	bnez	a0,8003926a <js_typed_array_set+0x76>
quickjs-nuttx/quickjs.c:53125
        if (offset > (int64_t)(p->u.array.count - src_len)) {
    80039398:	6742                	ld	a4,16(sp)
    8003939a:	04096783          	lwu	a5,64(s2)
    8003939e:	8f99                	sub	a5,a5,a4
    800393a0:	6762                	ld	a4,24(sp)
    800393a2:	f4e7dee3          	bge	a5,a4,800392fe <js_typed_array_set+0x10a>
quickjs-nuttx/quickjs.c:53127
            JS_ThrowRangeError(ctx, "invalid array length");
    800393a6:	8522                	mv	a0,s0
    800393a8:	00031597          	auipc	a1,0x31
    800393ac:	3f058593          	addi	a1,a1,1008 # 8006a798 <qjsc_repl+0x51e8>
    800393b0:	d1ee00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:53128
            goto fail;
    800393b4:	bd5d                	j	8003926a <js_typed_array_set+0x76>
quickjs-nuttx/quickjs.c:53077
    JSValue val, src_obj = JS_UNDEFINED;
    800393b6:	4a0d                	li	s4,3
    800393b8:	4a81                	li	s5,0
    800393ba:	b7f5                	j	800393a6 <js_typed_array_set+0x1b2>
    800393bc:	4a0d                	li	s4,3
    800393be:	4a81                	li	s5,0
    800393c0:	b56d                	j	8003926a <js_typed_array_set+0x76>

00000000800393c2 <build_arg_list>:
build_arg_list():
quickjs-nuttx/quickjs.c:38315
{
    800393c2:	711d                	addi	sp,sp,-96
    800393c4:	ec86                	sd	ra,88(sp)
    800393c6:	e8a2                	sd	s0,80(sp)
    800393c8:	e4a6                	sd	s1,72(sp)
    800393ca:	e0ca                	sd	s2,64(sp)
    800393cc:	fc4e                	sd	s3,56(sp)
    800393ce:	f852                	sd	s4,48(sp)
    800393d0:	e032                	sd	a2,0(sp)
    800393d2:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:38320
    if (JS_VALUE_GET_TAG(array_arg) != JS_TAG_OBJECT) {
    800393d4:	0006879b          	sext.w	a5,a3
    800393d8:	577d                	li	a4,-1
    800393da:	00e78a63          	beq	a5,a4,800393ee <build_arg_list+0x2c>
quickjs-nuttx/quickjs.c:38321
        JS_ThrowTypeError(ctx, "not a object");
    800393de:	00034597          	auipc	a1,0x34
    800393e2:	99a58593          	addi	a1,a1,-1638 # 8006cd78 <qjsc_repl+0x77c8>
    800393e6:	a86df0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:38346
                return NULL;
    800393ea:	4401                	li	s0,0
    800393ec:	a851                	j	80039480 <build_arg_list+0xbe>
    800393ee:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:38324
    if (js_get_length32(ctx, &len, array_arg))
    800393f0:	086c                	addi	a1,sp,28
    800393f2:	892a                	mv	s2,a0
    800393f4:	f73e80ef          	jal	ra,80022366 <js_get_length32>
    800393f8:	f96d                	bnez	a0,800393ea <build_arg_list+0x28>
quickjs-nuttx/quickjs.c:38326
    if (len > JS_MAX_LOCAL_VARS) {
    800393fa:	47f2                	lw	a5,28(sp)
    800393fc:	6741                	lui	a4,0x10
    800393fe:	00e7ea63          	bltu	a5,a4,80039412 <build_arg_list+0x50>
quickjs-nuttx/quickjs.c:38327
        JS_ThrowInternalError(ctx, "too many arguments");
    80039402:	854a                	mv	a0,s2
    80039404:	00032597          	auipc	a1,0x32
    80039408:	f5c58593          	addi	a1,a1,-164 # 8006b360 <qjsc_repl+0x5db0>
    8003940c:	cece00ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:38328
        return NULL;
    80039410:	bfe9                	j	800393ea <build_arg_list+0x28>
quickjs-nuttx/quickjs.c:38331
    tab = js_mallocz(ctx, sizeof(tab[0]) * max_uint32(1, len));
    80039412:	85be                	mv	a1,a5
    80039414:	e391                	bnez	a5,80039418 <build_arg_list+0x56>
    80039416:	4585                	li	a1,1
    80039418:	02059793          	slli	a5,a1,0x20
    8003941c:	01c7d593          	srli	a1,a5,0x1c
    80039420:	854a                	mv	a0,s2
    80039422:	d17e10ef          	jal	ra,8001b138 <js_mallocz>
    80039426:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:38332
    if (!tab)
    80039428:	d169                	beqz	a0,800393ea <build_arg_list+0x28>
quickjs-nuttx/quickjs.c:38334
    p = JS_VALUE_GET_OBJ(array_arg);
    8003942a:	6982                	ld	s3,0(sp)
quickjs-nuttx/quickjs.c:38335
    if ((p->class_id == JS_CLASS_ARRAY || p->class_id == JS_CLASS_ARGUMENTS) &&
    8003942c:	4709                	li	a4,2
    8003942e:	0069d783          	lhu	a5,6(s3)
    80039432:	00e78663          	beq	a5,a4,8003943e <build_arg_list+0x7c>
quickjs-nuttx/quickjs.c:38335 (discriminator 2)
    80039436:	4721                	li	a4,8
    80039438:	4481                	li	s1,0
    8003943a:	00e79c63          	bne	a5,a4,80039452 <build_arg_list+0x90>
quickjs-nuttx/quickjs.c:38335 (discriminator 3)
    8003943e:	0059c783          	lbu	a5,5(s3)
    80039442:	8ba1                	andi	a5,a5,8
    80039444:	c791                	beqz	a5,80039450 <build_arg_list+0x8e>
quickjs-nuttx/quickjs.c:38336
        p->fast_array &&
    80039446:	0409a703          	lw	a4,64(s3)
    8003944a:	47f2                	lw	a5,28(sp)
    8003944c:	04f70363          	beq	a4,a5,80039492 <build_arg_list+0xd0>
    80039450:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:38344 (discriminator 1)
            if (JS_IsException(ret)) {
    80039452:	4999                	li	s3,6
    80039454:	a889                	j	800394a6 <build_arg_list+0xe4>
quickjs-nuttx/quickjs.c:38339 (discriminator 3)
            tab[i] = JS_DupValue(ctx, p->u.array.u.values[i]);
    80039456:	02091793          	slli	a5,s2,0x20
    8003945a:	01c7d493          	srli	s1,a5,0x1c
    8003945e:	0389b783          	ld	a5,56(s3)
quickjs-nuttx/quickjs.c:38338 (discriminator 3)
        for(i = 0; i < len; i++) {
    80039462:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:38339 (discriminator 3)
            tab[i] = JS_DupValue(ctx, p->u.array.u.values[i]);
    80039464:	97a6                	add	a5,a5,s1
    80039466:	6388                	ld	a0,0(a5)
    80039468:	678c                	ld	a1,8(a5)
    8003946a:	94a2                	add	s1,s1,s0
    8003946c:	fafd00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80039470:	e088                	sd	a0,0(s1)
    80039472:	e48c                	sd	a1,8(s1)
quickjs-nuttx/quickjs.c:38338 (discriminator 1)
        for(i = 0; i < len; i++) {
    80039474:	47f2                	lw	a5,28(sp)
    80039476:	fef960e3          	bltu	s2,a5,80039456 <build_arg_list+0x94>
quickjs-nuttx/quickjs.c:38351
    *plen = len;
    8003947a:	47f2                	lw	a5,28(sp)
    8003947c:	00fa2023          	sw	a5,0(s4)
quickjs-nuttx/quickjs.c:38353
}
    80039480:	60e6                	ld	ra,88(sp)
    80039482:	8522                	mv	a0,s0
    80039484:	6446                	ld	s0,80(sp)
    80039486:	64a6                	ld	s1,72(sp)
    80039488:	6906                	ld	s2,64(sp)
    8003948a:	79e2                	ld	s3,56(sp)
    8003948c:	7a42                	ld	s4,48(sp)
    8003948e:	6125                	addi	sp,sp,96
    80039490:	8082                	ret
quickjs-nuttx/quickjs.c:38338
        for(i = 0; i < len; i++) {
    80039492:	4901                	li	s2,0
    80039494:	b7c5                	j	80039474 <build_arg_list+0xb2>
quickjs-nuttx/quickjs.c:38348 (discriminator 2)
            tab[i] = ret;
    80039496:	02049713          	slli	a4,s1,0x20
    8003949a:	01c75793          	srli	a5,a4,0x1c
    8003949e:	97a2                	add	a5,a5,s0
    800394a0:	e388                	sd	a0,0(a5)
    800394a2:	e78c                	sd	a1,8(a5)
quickjs-nuttx/quickjs.c:38342 (discriminator 2)
        for(i = 0; i < len; i++) {
    800394a4:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:38342 (discriminator 1)
    800394a6:	47f2                	lw	a5,28(sp)
    800394a8:	fcf4f9e3          	bgeu	s1,a5,8003947a <build_arg_list+0xb8>
quickjs-nuttx/quickjs.c:38343
            ret = JS_GetPropertyUint32(ctx, array_arg, i);
    800394ac:	6582                	ld	a1,0(sp)
    800394ae:	6622                	ld	a2,8(sp)
    800394b0:	86a6                	mv	a3,s1
    800394b2:	854a                	mv	a0,s2
    800394b4:	c85dd0ef          	jal	ra,80017138 <JS_GetPropertyUint32>
quickjs-nuttx/quickjs.c:38344
            if (JS_IsException(ret)) {
    800394b8:	0005879b          	sext.w	a5,a1
    800394bc:	fd379de3          	bne	a5,s3,80039496 <build_arg_list+0xd4>
quickjs-nuttx/quickjs.c:38345
                free_arg_list(ctx, tab, i);
    800394c0:	8626                	mv	a2,s1
    800394c2:	85a2                	mv	a1,s0
    800394c4:	854a                	mv	a0,s2
    800394c6:	de0d20ef          	jal	ra,8000baa6 <free_arg_list>
    800394ca:	b705                	j	800393ea <build_arg_list+0x28>

00000000800394cc <js_array_iterator_next>:
js_array_iterator_next():
quickjs-nuttx/quickjs.c:40649
{
    800394cc:	7131                	addi	sp,sp,-192
quickjs-nuttx/quickjs.c:40655
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_ARRAY_ITERATOR);
    800394ce:	02c00693          	li	a3,44
quickjs-nuttx/quickjs.c:40649
{
    800394d2:	f526                	sd	s1,168(sp)
    800394d4:	ed4e                	sd	s3,152(sp)
    800394d6:	fd06                	sd	ra,184(sp)
    800394d8:	f922                	sd	s0,176(sp)
    800394da:	f14a                	sd	s2,160(sp)
    800394dc:	84aa                	mv	s1,a0
    800394de:	e02e                	sd	a1,0(sp)
    800394e0:	e432                	sd	a2,8(sp)
    800394e2:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:40655
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_ARRAY_ITERATOR);
    800394e4:	b0adf0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:40656
    if (!it)
    800394e8:	c915                	beqz	a0,8003951c <js_array_iterator_next+0x50>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    800394ea:	6514                	ld	a3,8(a0)
js_array_iterator_next():
quickjs-nuttx/quickjs.c:40658
    if (JS_IsUndefined(it->obj))
    800394ec:	478d                	li	a5,3
    800394ee:	842a                	mv	s0,a0
    800394f0:	0006871b          	sext.w	a4,a3
    800394f4:	04f70a63          	beq	a4,a5,80039548 <js_array_iterator_next+0x7c>
quickjs-nuttx/quickjs.c:40660
    p = JS_VALUE_GET_OBJ(it->obj);
    800394f8:	6110                	ld	a2,0(a0)
quickjs-nuttx/quickjs.c:40661
    if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    800394fa:	4729                	li	a4,10
    800394fc:	00665783          	lhu	a5,6(a2)
    80039500:	37ad                	addiw	a5,a5,-21
    80039502:	17c2                	slli	a5,a5,0x30
    80039504:	93c1                	srli	a5,a5,0x30
    80039506:	04f76763          	bltu	a4,a5,80039554 <js_array_iterator_next+0x88>
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    8003950a:	7a1c                	ld	a5,48(a2)
    8003950c:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    8003950e:	7b9c                	ld	a5,48(a5)
js_array_iterator_next():
quickjs-nuttx/quickjs.c:40663
        if (typed_array_is_detached(ctx, p)) {
    80039510:	0047c783          	lbu	a5,4(a5)
    80039514:	cb91                	beqz	a5,80039528 <js_array_iterator_next+0x5c>
quickjs-nuttx/quickjs.c:40664
            JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80039516:	8526                	mv	a0,s1
    80039518:	a6ddf0ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:40671
            *pdone = FALSE;
    8003951c:	0009a023          	sw	zero,0(s3)
quickjs-nuttx/quickjs.c:40672
            return JS_EXCEPTION;
    80039520:	e882                	sd	zero,80(sp)
    80039522:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40702
            return obj;
    80039524:	ecbe                	sd	a5,88(sp)
    80039526:	a08d                	j	80039588 <js_array_iterator_next+0xbc>
quickjs-nuttx/quickjs.c:40667
        len = p->u.array.count;
    80039528:	423c                	lw	a5,64(a2)
    8003952a:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:40675
    idx = it->idx;
    8003952c:	01442903          	lw	s2,20(s0)
quickjs-nuttx/quickjs.c:40676
    if (idx >= len) {
    80039530:	47f2                	lw	a5,28(sp)
    80039532:	02f96763          	bltu	s2,a5,80039560 <js_array_iterator_next+0x94>
quickjs-nuttx/quickjs.c:40677
        JS_FreeValue(ctx, it->obj);
    80039536:	600c                	ld	a1,0(s0)
    80039538:	6410                	ld	a2,8(s0)
    8003953a:	8526                	mv	a0,s1
    8003953c:	a62d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40678
        it->obj = JS_UNDEFINED;
    80039540:	478d                	li	a5,3
    80039542:	00043023          	sd	zero,0(s0)
    80039546:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:40680
        *pdone = TRUE;
    80039548:	4785                	li	a5,1
    8003954a:	00f9a023          	sw	a5,0(s3)
quickjs-nuttx/quickjs.c:40681
        return JS_UNDEFINED;
    8003954e:	e882                	sd	zero,80(sp)
    80039550:	478d                	li	a5,3
    80039552:	bfc9                	j	80039524 <js_array_iterator_next+0x58>
quickjs-nuttx/quickjs.c:40669
        if (js_get_length32(ctx, &len, it->obj)) {
    80039554:	086c                	addi	a1,sp,28
    80039556:	8526                	mv	a0,s1
    80039558:	e0fe80ef          	jal	ra,80022366 <js_get_length32>
    8003955c:	d961                	beqz	a0,8003952c <js_array_iterator_next+0x60>
quickjs-nuttx/quickjs.c:40670
        fail1:
    8003955e:	bf7d                	j	8003951c <js_array_iterator_next+0x50>
quickjs-nuttx/quickjs.c:40683
    it->idx = idx + 1;
    80039560:	0019079b          	addiw	a5,s2,1
    80039564:	c85c                	sw	a5,20(s0)
quickjs-nuttx/quickjs.c:40684
    *pdone = FALSE;
    80039566:	0009a023          	sw	zero,0(s3)
quickjs-nuttx/quickjs.c:40685
    if (it->kind == JS_ITERATOR_KIND_KEY) {
    8003956a:	481c                	lw	a5,16(s0)
    8003956c:	ef9d                	bnez	a5,800395aa <js_array_iterator_next+0xde>
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    8003956e:	0009079b          	sext.w	a5,s2
    80039572:	02094463          	bltz	s2,8003959a <js_array_iterator_next+0xce>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80039576:	da82                	sw	zero,116(sp)
    80039578:	d8be                	sw	a5,112(sp)
    8003957a:	7746                	ld	a4,112(sp)
    8003957c:	f0ba                	sd	a4,96(sp)
    8003957e:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80039580:	d0be                	sw	a5,96(sp)
    80039582:	3786                	fld	fa5,96(sp)
    80039584:	ecba                	sd	a4,88(sp)
    80039586:	a8be                	fsd	fa5,80(sp)
js_array_iterator_next():
quickjs-nuttx/quickjs.c:40705 (discriminator 1)
}
    80039588:	70ea                	ld	ra,184(sp)
    8003958a:	744a                	ld	s0,176(sp)
    8003958c:	6546                	ld	a0,80(sp)
    8003958e:	65e6                	ld	a1,88(sp)
    80039590:	74aa                	ld	s1,168(sp)
    80039592:	790a                	ld	s2,160(sp)
    80039594:	69ea                	ld	s3,152(sp)
    80039596:	6129                	addi	sp,sp,192
    80039598:	8082                	ret
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    8003959a:	d21907d3          	fcvt.d.wu	fa5,s2
    8003959e:	471d                	li	a4,7
    800395a0:	e20787d3          	fmv.x.d	a5,fa5
js_array_iterator_next():
quickjs-nuttx/quickjs.h:230
    return v;
    800395a4:	b0be                	fsd	fa5,96(sp)
    800395a6:	2781                	sext.w	a5,a5
    800395a8:	bfe1                	j	80039580 <js_array_iterator_next+0xb4>
quickjs-nuttx/quickjs.c:40688
        val = JS_GetPropertyUint32(ctx, it->obj, idx);
    800395aa:	600c                	ld	a1,0(s0)
    800395ac:	6410                	ld	a2,8(s0)
    800395ae:	86ca                	mv	a3,s2
    800395b0:	8526                	mv	a0,s1
    800395b2:	b87dd0ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    800395b6:	f02a                	sd	a0,32(sp)
    800395b8:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:40689
        if (JS_IsException(val))
    800395ba:	0005879b          	sext.w	a5,a1
    800395be:	4719                	li	a4,6
    800395c0:	00e79463          	bne	a5,a4,800395c8 <js_array_iterator_next+0xfc>
quickjs-nuttx/quickjs.c:40690
            return JS_EXCEPTION;
    800395c4:	e882                	sd	zero,80(sp)
    800395c6:	bfb9                	j	80039524 <js_array_iterator_next+0x58>
quickjs-nuttx/quickjs.c:40691
        if (it->kind == JS_ITERATOR_KIND_VALUE) {
    800395c8:	4818                	lw	a4,16(s0)
    800395ca:	4785                	li	a5,1
    800395cc:	00f71563          	bne	a4,a5,800395d6 <js_array_iterator_next+0x10a>
quickjs-nuttx/quickjs.c:40692
            return val;
    800395d0:	e8aa                	sd	a0,80(sp)
    800395d2:	ecae                	sd	a1,88(sp)
    800395d4:	bf55                	j	80039588 <js_array_iterator_next+0xbc>
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    800395d6:	0009079b          	sext.w	a5,s2
    800395da:	04094463          	bltz	s2,80039622 <js_array_iterator_next+0x156>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800395de:	d282                	sw	zero,100(sp)
    800395e0:	d0be                	sw	a5,96(sp)
    800395e2:	7706                	ld	a4,96(sp)
    800395e4:	f482                	sd	zero,104(sp)
    800395e6:	4401                	li	s0,0
    800395e8:	f8ba                	sd	a4,112(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    800395ea:	d8be                	sw	a5,112(sp)
js_array_iterator_next():
quickjs-nuttx/quickjs.c:40698
            args[1] = val;
    800395ec:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:40699
            obj = js_create_array(ctx, 2, args);
    800395ee:	1890                	addi	a2,sp,112
    800395f0:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:40698
            args[1] = val;
    800395f2:	e13e                	sd	a5,128(sp)
    800395f4:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:40699
            obj = js_create_array(ctx, 2, args);
    800395f6:	8526                	mv	a0,s1
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    800395f8:	7946                	ld	s2,112(sp)
js_array_iterator_next():
quickjs-nuttx/quickjs.c:40698
            args[1] = val;
    800395fa:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs.c:40697
            args[0] = num;
    800395fc:	fca2                	sd	s0,120(sp)
quickjs-nuttx/quickjs.c:40699
            obj = js_create_array(ctx, 2, args);
    800395fe:	849f70ef          	jal	ra,80030e46 <js_create_array>
quickjs-nuttx/quickjs.c:40700
            JS_FreeValue(ctx, val);
    80039602:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:40699
            obj = js_create_array(ctx, 2, args);
    80039604:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:40700
            JS_FreeValue(ctx, val);
    80039606:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:40699
            obj = js_create_array(ctx, 2, args);
    80039608:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:40700
            JS_FreeValue(ctx, val);
    8003960a:	8526                	mv	a0,s1
    8003960c:	992d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40701
            JS_FreeValue(ctx, num);
    80039610:	85ca                	mv	a1,s2
    80039612:	8622                	mv	a2,s0
    80039614:	8526                	mv	a0,s1
    80039616:	988d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40702
            return obj;
    8003961a:	77c2                	ld	a5,48(sp)
    8003961c:	e8be                	sd	a5,80(sp)
    8003961e:	77e2                	ld	a5,56(sp)
    80039620:	b711                	j	80039524 <js_array_iterator_next+0x58>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80039622:	d21907d3          	fcvt.d.wu	fa5,s2
    80039626:	441d                	li	s0,7
    80039628:	e20787d3          	fmv.x.d	a5,fa5
js_array_iterator_next():
quickjs-nuttx/quickjs.h:230
    return v;
    8003962c:	b8be                	fsd	fa5,112(sp)
    8003962e:	2781                	sext.w	a5,a5
    80039630:	bf6d                	j	800395ea <js_array_iterator_next+0x11e>

0000000080039632 <js_obj_to_desc>:
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37006
{
    80039632:	7151                	addi	sp,sp,-240
    80039634:	f95a                	sd	s6,176(sp)
    80039636:	f586                	sd	ra,232(sp)
    80039638:	f1a2                	sd	s0,224(sp)
    8003963a:	eda6                	sd	s1,216(sp)
    8003963c:	e9ca                	sd	s2,208(sp)
    8003963e:	e5ce                	sd	s3,200(sp)
    80039640:	e1d2                	sd	s4,192(sp)
    80039642:	fd56                	sd	s5,184(sp)
    80039644:	e032                	sd	a2,0(sp)
    80039646:	e436                	sd	a3,8(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    80039648:	00068b1b          	sext.w	s6,a3
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37010
    if (!JS_IsObject(desc)) {
    8003964c:	577d                	li	a4,-1
    8003964e:	02eb0063          	beq	s6,a4,8003966e <js_obj_to_desc+0x3c>
quickjs-nuttx/quickjs.c:37011
        JS_ThrowTypeErrorNotAnObject(ctx);
    80039652:	dd8df0ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:37012
        return -1;
    80039656:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:37081
}
    80039658:	70ae                	ld	ra,232(sp)
    8003965a:	740e                	ld	s0,224(sp)
    8003965c:	64ee                	ld	s1,216(sp)
    8003965e:	694e                	ld	s2,208(sp)
    80039660:	69ae                	ld	s3,200(sp)
    80039662:	6a0e                	ld	s4,192(sp)
    80039664:	7aea                	ld	s5,184(sp)
    80039666:	855a                	mv	a0,s6
    80039668:	7b4a                	ld	s6,176(sp)
    8003966a:	616d                	addi	sp,sp,240
    8003966c:	8082                	ret
    8003966e:	87b6                	mv	a5,a3
quickjs-nuttx/quickjs.c:37015
    val = JS_UNDEFINED;
    80039670:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:37018
    if (JS_HasProperty(ctx, desc, JS_ATOM_configurable)) {
    80039672:	03e00693          	li	a3,62
    80039676:	85b2                	mv	a1,a2
    80039678:	863e                	mv	a2,a5
    8003967a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:37015
    val = JS_UNDEFINED;
    8003967c:	e802                	sd	zero,16(sp)
quickjs-nuttx/quickjs.c:37016
    getter = JS_UNDEFINED;
    8003967e:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:37017
    setter = JS_UNDEFINED;
    80039680:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:37018
    if (JS_HasProperty(ctx, desc, JS_ATOM_configurable)) {
    80039682:	e75fe0ef          	jal	ra,800384f6 <JS_HasProperty>
    80039686:	842a                	mv	s0,a0
    80039688:	c125                	beqz	a0,800396e8 <js_obj_to_desc+0xb6>
quickjs-nuttx/quickjs.c:37019
        JSValue prop = JS_GetProperty(ctx, desc, JS_ATOM_configurable);
    8003968a:	6702                	ld	a4,0(sp)
    8003968c:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003968e:	4801                	li	a6,0
    80039690:	85ba                	mv	a1,a4
    80039692:	863e                	mv	a2,a5
    80039694:	03e00693          	li	a3,62
    80039698:	8526                	mv	a0,s1
    8003969a:	f13a                	sd	a4,160(sp)
    8003969c:	f53e                	sd	a5,168(sp)
    8003969e:	c0cdd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800396a2:	e92a                	sd	a0,144(sp)
    800396a4:	ed2e                	sd	a1,152(sp)
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37020
        if (JS_IsException(prop))
    800396a6:	0005871b          	sext.w	a4,a1
    800396aa:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800396ac:	862e                	mv	a2,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37020
    800396ae:	02f71563          	bne	a4,a5,800396d8 <js_obj_to_desc+0xa6>
quickjs-nuttx/quickjs.c:37017
    setter = JS_UNDEFINED;
    800396b2:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:37016
    getter = JS_UNDEFINED;
    800396b4:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:37015
    val = JS_UNDEFINED;
    800396b6:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:37077
    JS_FreeValue(ctx, val);
    800396b8:	65c2                	ld	a1,16(sp)
    800396ba:	8652                	mv	a2,s4
    800396bc:	8526                	mv	a0,s1
    800396be:	8e0d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37078
    JS_FreeValue(ctx, getter);
    800396c2:	7582                	ld	a1,32(sp)
    800396c4:	864e                	mv	a2,s3
    800396c6:	8526                	mv	a0,s1
    800396c8:	8d6d20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37079
    JS_FreeValue(ctx, setter);
    800396cc:	75c2                	ld	a1,48(sp)
    800396ce:	864a                	mv	a2,s2
    800396d0:	8526                	mv	a0,s1
    800396d2:	8ccd20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37080
    return -1;
    800396d6:	b749                	j	80039658 <js_obj_to_desc+0x26>
quickjs-nuttx/quickjs.c:37023
        if (JS_ToBoolFree(ctx, prop))
    800396d8:	85aa                	mv	a1,a0
    800396da:	8526                	mv	a0,s1
    800396dc:	c38d20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:37024
            flags |= JS_PROP_CONFIGURABLE;
    800396e0:	00a03433          	snez	s0,a0
    800396e4:	10040413          	addi	s0,s0,256
quickjs-nuttx/quickjs.c:37026
    if (JS_HasProperty(ctx, desc, JS_ATOM_writable)) {
    800396e8:	6582                	ld	a1,0(sp)
    800396ea:	6622                	ld	a2,8(sp)
    800396ec:	03f00693          	li	a3,63
    800396f0:	8526                	mv	a0,s1
    800396f2:	e05fe0ef          	jal	ra,800384f6 <JS_HasProperty>
    800396f6:	cd0d                	beqz	a0,80039730 <js_obj_to_desc+0xfe>
quickjs-nuttx/quickjs.c:37027
        JSValue prop = JS_GetProperty(ctx, desc, JS_ATOM_writable);
    800396f8:	6702                	ld	a4,0(sp)
    800396fa:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800396fc:	4801                	li	a6,0
    800396fe:	85ba                	mv	a1,a4
    80039700:	863e                	mv	a2,a5
    80039702:	03f00693          	li	a3,63
    80039706:	8526                	mv	a0,s1
    80039708:	f13a                	sd	a4,160(sp)
    8003970a:	f53e                	sd	a5,168(sp)
    8003970c:	b9edd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80039710:	e92a                	sd	a0,144(sp)
    80039712:	ed2e                	sd	a1,152(sp)
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37028
        if (JS_IsException(prop))
    80039714:	0005871b          	sext.w	a4,a1
    80039718:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003971a:	862e                	mv	a2,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37028
    8003971c:	f8f70be3          	beq	a4,a5,800396b2 <js_obj_to_desc+0x80>
quickjs-nuttx/quickjs.c:37031
        if (JS_ToBoolFree(ctx, prop))
    80039720:	85aa                	mv	a1,a0
    80039722:	8526                	mv	a0,s1
    80039724:	bf0d20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80039728:	e949                	bnez	a0,800397ba <js_obj_to_desc+0x188>
quickjs-nuttx/quickjs.c:37030
        flags |= JS_PROP_HAS_WRITABLE;
    8003972a:	20046413          	ori	s0,s0,512
quickjs-nuttx/quickjs.c:37032
            flags |= JS_PROP_WRITABLE;
    8003972e:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:37034
    if (JS_HasProperty(ctx, desc, JS_ATOM_enumerable)) {
    80039730:	6582                	ld	a1,0(sp)
    80039732:	6622                	ld	a2,8(sp)
    80039734:	04000693          	li	a3,64
    80039738:	8526                	mv	a0,s1
    8003973a:	dbdfe0ef          	jal	ra,800384f6 <JS_HasProperty>
    8003973e:	cd0d                	beqz	a0,80039778 <js_obj_to_desc+0x146>
quickjs-nuttx/quickjs.c:37035
        JSValue prop = JS_GetProperty(ctx, desc, JS_ATOM_enumerable);
    80039740:	6702                	ld	a4,0(sp)
    80039742:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80039744:	4801                	li	a6,0
    80039746:	85ba                	mv	a1,a4
    80039748:	863e                	mv	a2,a5
    8003974a:	04000693          	li	a3,64
    8003974e:	8526                	mv	a0,s1
    80039750:	f13a                	sd	a4,160(sp)
    80039752:	f53e                	sd	a5,168(sp)
    80039754:	b56dd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80039758:	e92a                	sd	a0,144(sp)
    8003975a:	ed2e                	sd	a1,152(sp)
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37036
        if (JS_IsException(prop))
    8003975c:	0005871b          	sext.w	a4,a1
    80039760:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80039762:	862e                	mv	a2,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37036
    80039764:	f4f707e3          	beq	a4,a5,800396b2 <js_obj_to_desc+0x80>
quickjs-nuttx/quickjs.c:37039
        if (JS_ToBoolFree(ctx, prop))
    80039768:	85aa                	mv	a1,a0
    8003976a:	8526                	mv	a0,s1
    8003976c:	ba8d20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80039770:	e921                	bnez	a0,800397c0 <js_obj_to_desc+0x18e>
quickjs-nuttx/quickjs.c:37038
        flags |= JS_PROP_HAS_ENUMERABLE;
    80039772:	40046413          	ori	s0,s0,1024
quickjs-nuttx/quickjs.c:37040
            flags |= JS_PROP_ENUMERABLE;
    80039776:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:37042
    if (JS_HasProperty(ctx, desc, JS_ATOM_value)) {
    80039778:	6582                	ld	a1,0(sp)
    8003977a:	6622                	ld	a2,8(sp)
    8003977c:	04100693          	li	a3,65
    80039780:	8526                	mv	a0,s1
    80039782:	d75fe0ef          	jal	ra,800384f6 <JS_HasProperty>
    80039786:	c121                	beqz	a0,800397c6 <js_obj_to_desc+0x194>
quickjs-nuttx/quickjs.c:37043
        flags |= JS_PROP_HAS_VALUE;
    80039788:	6702                	ld	a4,0(sp)
    8003978a:	67a2                	ld	a5,8(sp)
    8003978c:	6509                	lui	a0,0x2
    8003978e:	8c49                	or	s0,s0,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80039790:	85ba                	mv	a1,a4
    80039792:	863e                	mv	a2,a5
    80039794:	4801                	li	a6,0
    80039796:	04100693          	li	a3,65
    8003979a:	8526                	mv	a0,s1
    8003979c:	f13a                	sd	a4,160(sp)
    8003979e:	f53e                	sd	a5,168(sp)
    800397a0:	b0add0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800397a4:	e82a                	sd	a0,16(sp)
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37045
        if (JS_IsException(val))
    800397a6:	0005871b          	sext.w	a4,a1
    800397aa:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37043
        flags |= JS_PROP_HAS_VALUE;
    800397ac:	2401                	sext.w	s0,s0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800397ae:	8a2e                	mv	s4,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37045
        if (JS_IsException(val))
    800397b0:	00f71c63          	bne	a4,a5,800397c8 <js_obj_to_desc+0x196>
quickjs-nuttx/quickjs.c:37017
    setter = JS_UNDEFINED;
    800397b4:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:37016
    getter = JS_UNDEFINED;
    800397b6:	498d                	li	s3,3
    800397b8:	b701                	j	800396b8 <js_obj_to_desc+0x86>
quickjs-nuttx/quickjs.c:37032
            flags |= JS_PROP_WRITABLE;
    800397ba:	20246413          	ori	s0,s0,514
    800397be:	bf85                	j	8003972e <js_obj_to_desc+0xfc>
quickjs-nuttx/quickjs.c:37040
            flags |= JS_PROP_ENUMERABLE;
    800397c0:	40446413          	ori	s0,s0,1028
    800397c4:	bf4d                	j	80039776 <js_obj_to_desc+0x144>
quickjs-nuttx/quickjs.c:37015
    val = JS_UNDEFINED;
    800397c6:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:37048
    if (JS_HasProperty(ctx, desc, JS_ATOM_get)) {
    800397c8:	6582                	ld	a1,0(sp)
    800397ca:	6622                	ld	a2,8(sp)
    800397cc:	04200693          	li	a3,66
    800397d0:	8526                	mv	a0,s1
    800397d2:	d25fe0ef          	jal	ra,800384f6 <JS_HasProperty>
    800397d6:	c939                	beqz	a0,8003982c <js_obj_to_desc+0x1fa>
quickjs-nuttx/quickjs.c:37049
        flags |= JS_PROP_HAS_GET;
    800397d8:	6702                	ld	a4,0(sp)
    800397da:	67a2                	ld	a5,8(sp)
    800397dc:	6505                	lui	a0,0x1
    800397de:	80050513          	addi	a0,a0,-2048 # 800 <asinh-0x7ffff800>
    800397e2:	8c49                	or	s0,s0,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800397e4:	85ba                	mv	a1,a4
    800397e6:	863e                	mv	a2,a5
    800397e8:	4801                	li	a6,0
    800397ea:	04200693          	li	a3,66
    800397ee:	8526                	mv	a0,s1
    800397f0:	f13a                	sd	a4,160(sp)
    800397f2:	f53e                	sd	a5,168(sp)
    800397f4:	ab6dd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800397f8:	f02a                	sd	a0,32(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800397fa:	0005879b          	sext.w	a5,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37051
        if (JS_IsException(getter) ||
    800397fe:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:37049
        flags |= JS_PROP_HAS_GET;
    80039800:	2401                	sext.w	s0,s0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80039802:	89ae                	mv	s3,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37051
        if (JS_IsException(getter) ||
    80039804:	00e78b63          	beq	a5,a4,8003981a <js_obj_to_desc+0x1e8>
quickjs-nuttx/quickjs.c:37051 (discriminator 1)
    80039808:	470d                	li	a4,3
    8003980a:	02e78263          	beq	a5,a4,8003982e <js_obj_to_desc+0x1fc>
quickjs-nuttx/quickjs.c:37052
            !(JS_IsUndefined(getter) || JS_IsFunction(ctx, getter))) {
    8003980e:	85aa                	mv	a1,a0
    80039810:	864e                	mv	a2,s3
    80039812:	8526                	mv	a0,s1
    80039814:	c8fd40ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80039818:	e919                	bnez	a0,8003982e <js_obj_to_desc+0x1fc>
quickjs-nuttx/quickjs.c:37053
            JS_ThrowTypeError(ctx, "invalid getter");
    8003981a:	00033597          	auipc	a1,0x33
    8003981e:	56e58593          	addi	a1,a1,1390 # 8006cd88 <qjsc_repl+0x77d8>
    80039822:	8526                	mv	a0,s1
    80039824:	e49de0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:37017
    setter = JS_UNDEFINED;
    80039828:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:37054
            goto fail;
    8003982a:	b579                	j	800396b8 <js_obj_to_desc+0x86>
quickjs-nuttx/quickjs.c:37016
    getter = JS_UNDEFINED;
    8003982c:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:37057
    if (JS_HasProperty(ctx, desc, JS_ATOM_set)) {
    8003982e:	6582                	ld	a1,0(sp)
    80039830:	6622                	ld	a2,8(sp)
    80039832:	04300693          	li	a3,67
    80039836:	8526                	mv	a0,s1
    80039838:	cbffe0ef          	jal	ra,800384f6 <JS_HasProperty>
quickjs-nuttx/quickjs.c:37017
    setter = JS_UNDEFINED;
    8003983c:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:37057
    if (JS_HasProperty(ctx, desc, JS_ATOM_set)) {
    8003983e:	c931                	beqz	a0,80039892 <js_obj_to_desc+0x260>
quickjs-nuttx/quickjs.c:37058
        flags |= JS_PROP_HAS_SET;
    80039840:	6702                	ld	a4,0(sp)
    80039842:	67a2                	ld	a5,8(sp)
    80039844:	6505                	lui	a0,0x1
    80039846:	8c49                	or	s0,s0,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80039848:	85ba                	mv	a1,a4
    8003984a:	863e                	mv	a2,a5
    8003984c:	4801                	li	a6,0
    8003984e:	04300693          	li	a3,67
    80039852:	8526                	mv	a0,s1
    80039854:	e93a                	sd	a4,144(sp)
    80039856:	ed3e                	sd	a5,152(sp)
    80039858:	a52dd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003985c:	f12a                	sd	a0,160(sp)
    8003985e:	f52e                	sd	a1,168(sp)
    80039860:	f82a                	sd	a0,48(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80039862:	0005879b          	sext.w	a5,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37060
        if (JS_IsException(setter) ||
    80039866:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:37058
        flags |= JS_PROP_HAS_SET;
    80039868:	2401                	sext.w	s0,s0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003986a:	892e                	mv	s2,a1
js_obj_to_desc():
quickjs-nuttx/quickjs.c:37060
        if (JS_IsException(setter) ||
    8003986c:	00e78b63          	beq	a5,a4,80039882 <js_obj_to_desc+0x250>
quickjs-nuttx/quickjs.c:37060 (discriminator 1)
    80039870:	470d                	li	a4,3
    80039872:	02e78063          	beq	a5,a4,80039892 <js_obj_to_desc+0x260>
quickjs-nuttx/quickjs.c:37061
            !(JS_IsUndefined(setter) || JS_IsFunction(ctx, setter))) {
    80039876:	85aa                	mv	a1,a0
    80039878:	864a                	mv	a2,s2
    8003987a:	8526                	mv	a0,s1
    8003987c:	c27d40ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80039880:	e909                	bnez	a0,80039892 <js_obj_to_desc+0x260>
quickjs-nuttx/quickjs.c:37062
            JS_ThrowTypeError(ctx, "invalid setter");
    80039882:	00033597          	auipc	a1,0x33
    80039886:	51658593          	addi	a1,a1,1302 # 8006cd98 <qjsc_repl+0x77e8>
quickjs-nuttx/quickjs.c:37068
        JS_ThrowTypeError(ctx, "cannot have setter/getter and value or writable");
    8003988a:	8526                	mv	a0,s1
    8003988c:	de1de0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:37069
        goto fail;
    80039890:	b525                	j	800396b8 <js_obj_to_desc+0x86>
quickjs-nuttx/quickjs.c:37066
    if ((flags & (JS_PROP_HAS_SET | JS_PROP_HAS_GET)) &&
    80039892:	6789                	lui	a5,0x2
    80039894:	80078713          	addi	a4,a5,-2048 # 1800 <asinh-0x7fffe800>
    80039898:	8f61                	and	a4,a4,s0
    8003989a:	2701                	sext.w	a4,a4
    8003989c:	cb11                	beqz	a4,800398b0 <js_obj_to_desc+0x27e>
quickjs-nuttx/quickjs.c:37067 (discriminator 1)
        (flags & (JS_PROP_HAS_VALUE | JS_PROP_HAS_WRITABLE))) {
    8003989e:	20078793          	addi	a5,a5,512
quickjs-nuttx/quickjs.c:37066 (discriminator 1)
    if ((flags & (JS_PROP_HAS_SET | JS_PROP_HAS_GET)) &&
    800398a2:	8fe1                	and	a5,a5,s0
    800398a4:	c791                	beqz	a5,800398b0 <js_obj_to_desc+0x27e>
quickjs-nuttx/quickjs.c:37068
        JS_ThrowTypeError(ctx, "cannot have setter/getter and value or writable");
    800398a6:	00033597          	auipc	a1,0x33
    800398aa:	50258593          	addi	a1,a1,1282 # 8006cda8 <qjsc_repl+0x77f8>
    800398ae:	bff1                	j	8003988a <js_obj_to_desc+0x258>
quickjs-nuttx/quickjs.c:37072
    d->value = val;
    800398b0:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:37071
    d->flags = flags;
    800398b2:	008aa023          	sw	s0,0(s5)
quickjs-nuttx/quickjs.c:37072
    d->value = val;
    800398b6:	014ab823          	sd	s4,16(s5)
    800398ba:	00fab423          	sd	a5,8(s5)
quickjs-nuttx/quickjs.c:37073
    d->getter = getter;
    800398be:	7782                	ld	a5,32(sp)
    800398c0:	033ab023          	sd	s3,32(s5)
quickjs-nuttx/quickjs.c:37074
    d->setter = setter;
    800398c4:	032ab823          	sd	s2,48(s5)
quickjs-nuttx/quickjs.c:37073
    d->getter = getter;
    800398c8:	00fabc23          	sd	a5,24(s5)
quickjs-nuttx/quickjs.c:37074
    d->setter = setter;
    800398cc:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:37075
    return 0;
    800398ce:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:37074
    d->setter = setter;
    800398d0:	02fab423          	sd	a5,40(s5)
quickjs-nuttx/quickjs.c:37075
    return 0;
    800398d4:	b351                	j	80039658 <js_obj_to_desc+0x26>

00000000800398d6 <JS_DefinePropertyDesc>:
JS_DefinePropertyDesc():
quickjs-nuttx/quickjs.c:37086
{
    800398d6:	7135                	addi	sp,sp,-160
    800398d8:	e14a                	sd	s2,128(sp)
    800398da:	f82e                	sd	a1,48(sp)
    800398dc:	fc32                	sd	a2,56(sp)
    800398de:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:37090
    if (js_obj_to_desc(ctx, &d, desc) < 0)
    800398e0:	863a                	mv	a2,a4
    800398e2:	86be                	mv	a3,a5
    800398e4:	00ac                	addi	a1,sp,72
quickjs-nuttx/quickjs.c:37086
{
    800398e6:	e922                	sd	s0,144(sp)
    800398e8:	e526                	sd	s1,136(sp)
    800398ea:	ed06                	sd	ra,152(sp)
    800398ec:	84aa                	mv	s1,a0
    800398ee:	8442                	mv	s0,a6
quickjs-nuttx/quickjs.c:37090
    if (js_obj_to_desc(ctx, &d, desc) < 0)
    800398f0:	d43ff0ef          	jal	ra,80039632 <js_obj_to_desc>
    800398f4:	04054063          	bltz	a0,80039934 <JS_DefinePropertyDesc+0x5e>
quickjs-nuttx/quickjs.c:37093
    ret = JS_DefineProperty(ctx, obj, prop,
    800398f8:	77c6                	ld	a5,112(sp)
    800398fa:	4826                	lw	a6,72(sp)
    800398fc:	75c2                	ld	a1,48(sp)
    800398fe:	e03e                	sd	a5,0(sp)
    80039900:	77e6                	ld	a5,120(sp)
    80039902:	01046433          	or	s0,s0,a6
    80039906:	78a6                	ld	a7,104(sp)
    80039908:	e43e                	sd	a5,8(sp)
    8003990a:	7806                	ld	a6,96(sp)
    8003990c:	6746                	ld	a4,80(sp)
    8003990e:	67e6                	ld	a5,88(sp)
    80039910:	7662                	ld	a2,56(sp)
    80039912:	e822                	sd	s0,16(sp)
    80039914:	86ca                	mv	a3,s2
    80039916:	8526                	mv	a0,s1
    80039918:	a36de0ef          	jal	ra,80017b4e <JS_DefineProperty>
    8003991c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37095
    js_free_desc(ctx, &d);
    8003991e:	00ac                	addi	a1,sp,72
    80039920:	8526                	mv	a0,s1
    80039922:	9c2d20ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:37097
}
    80039926:	60ea                	ld	ra,152(sp)
    80039928:	8522                	mv	a0,s0
    8003992a:	644a                	ld	s0,144(sp)
    8003992c:	64aa                	ld	s1,136(sp)
    8003992e:	690a                	ld	s2,128(sp)
    80039930:	610d                	addi	sp,sp,160
    80039932:	8082                	ret
quickjs-nuttx/quickjs.c:37091
        return -1;
    80039934:	547d                	li	s0,-1
    80039936:	bfc5                	j	80039926 <JS_DefinePropertyDesc+0x50>

0000000080039938 <js_object_defineProperty>:
js_object_defineProperty():
quickjs-nuttx/quickjs.c:37211
{
    80039938:	7175                	addi	sp,sp,-144
    8003993a:	f8ca                	sd	s2,112(sp)
    8003993c:	e506                	sd	ra,136(sp)
    8003993e:	e122                	sd	s0,128(sp)
    80039940:	fca6                	sd	s1,120(sp)
    80039942:	f4ce                	sd	s3,104(sp)
    80039944:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:37216
    obj = argv[0];
    80039946:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:37218
    desc = argv[2];
    80039948:	7314                	ld	a3,32(a4)
quickjs-nuttx/quickjs.c:37217
    prop = argv[1];
    8003994a:	6b0c                	ld	a1,16(a4)
    8003994c:	6f10                	ld	a2,24(a4)
quickjs-nuttx/quickjs.c:37216
    obj = argv[0];
    8003994e:	e83e                	sd	a5,16(sp)
    80039950:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:37218
    desc = argv[2];
    80039952:	7718                	ld	a4,40(a4)
    80039954:	f836                	sd	a3,48(sp)
quickjs-nuttx/quickjs.c:37216
    obj = argv[0];
    80039956:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:37218
    desc = argv[2];
    80039958:	fc3a                	sd	a4,56(sp)
quickjs-nuttx/quickjs.c:37220
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8003995a:	2781                	sext.w	a5,a5
    8003995c:	577d                	li	a4,-1
    8003995e:	00e78a63          	beq	a5,a4,80039972 <js_object_defineProperty+0x3a>
quickjs-nuttx/quickjs.c:37237
}
    80039962:	640a                	ld	s0,128(sp)
    80039964:	60aa                	ld	ra,136(sp)
    80039966:	74e6                	ld	s1,120(sp)
    80039968:	7946                	ld	s2,112(sp)
    8003996a:	79a6                	ld	s3,104(sp)
    8003996c:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:37221
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8003996e:	abcdf06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    80039972:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:37222
    atom = JS_ValueToAtom(ctx, prop);
    80039974:	e9fee0ef          	jal	ra,80028812 <JS_ValueToAtom>
    80039978:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:37223
    if (unlikely(atom == JS_ATOM_NULL))
    8003997c:	ec89                	bnez	s1,80039996 <js_object_defineProperty+0x5e>
quickjs-nuttx/quickjs.c:37224
        return JS_EXCEPTION;
    8003997e:	e082                	sd	zero,64(sp)
    80039980:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37237
}
    80039982:	60aa                	ld	ra,136(sp)
    80039984:	640a                	ld	s0,128(sp)
    80039986:	e4be                	sd	a5,72(sp)
    80039988:	6506                	ld	a0,64(sp)
    8003998a:	65a6                	ld	a1,72(sp)
    8003998c:	74e6                	ld	s1,120(sp)
    8003998e:	7946                	ld	s2,112(sp)
    80039990:	79a6                	ld	s3,104(sp)
    80039992:	6149                	addi	sp,sp,144
    80039994:	8082                	ret
quickjs-nuttx/quickjs.c:37228
    ret = JS_DefinePropertyDesc(ctx, obj, atom, desc, flags);
    80039996:	65c2                	ld	a1,16(sp)
    80039998:	7742                	ld	a4,48(sp)
    8003999a:	77e2                	ld	a5,56(sp)
    8003999c:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:37227
        flags |= JS_PROP_THROW;
    8003999e:	00193813          	seqz	a6,s2
quickjs-nuttx/quickjs.c:37228
    ret = JS_DefinePropertyDesc(ctx, obj, atom, desc, flags);
    800399a2:	083a                	slli	a6,a6,0xe
    800399a4:	86a6                	mv	a3,s1
    800399a6:	854e                	mv	a0,s3
    800399a8:	f2fff0ef          	jal	ra,800398d6 <JS_DefinePropertyDesc>
    800399ac:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37229
    JS_FreeAtom(ctx, atom);
    800399ae:	85a6                	mv	a1,s1
    800399b0:	854e                	mv	a0,s3
    800399b2:	f96d10ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:37230
    if (ret < 0) {
    800399b6:	fc0444e3          	bltz	s0,8003997e <js_object_defineProperty+0x46>
quickjs-nuttx/quickjs.c:37232
    } else if (magic) {
    800399ba:	00090a63          	beqz	s2,800399ce <js_object_defineProperty+0x96>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800399be:	00803433          	snez	s0,s0
    800399c2:	ca82                	sw	zero,84(sp)
    800399c4:	c8a2                	sw	s0,80(sp)
    800399c6:	67c6                	ld	a5,80(sp)
    800399c8:	e0be                	sd	a5,64(sp)
    800399ca:	4785                	li	a5,1
    800399cc:	bf5d                	j	80039982 <js_object_defineProperty+0x4a>
js_object_defineProperty():
quickjs-nuttx/quickjs.c:37237
}
    800399ce:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:37235
        return JS_DupValue(ctx, obj);
    800399d0:	6542                	ld	a0,16(sp)
    800399d2:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:37237
}
    800399d4:	60aa                	ld	ra,136(sp)
    800399d6:	74e6                	ld	s1,120(sp)
    800399d8:	7946                	ld	s2,112(sp)
    800399da:	79a6                	ld	s3,104(sp)
    800399dc:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:37235
        return JS_DupValue(ctx, obj);
    800399de:	a3dd006f          	j	8000a41a <JS_DupValue.constprop.0>

00000000800399e2 <JS_GetPropertyInt64>:
JS_GetPropertyInt64():
quickjs-nuttx/quickjs.c:7996
{
    800399e2:	7159                	addi	sp,sp,-112
quickjs-nuttx/quickjs.c:8000
    if ((uint64_t)idx <= INT32_MAX) {
    800399e4:	800007b7          	lui	a5,0x80000
quickjs-nuttx/quickjs.c:7996
{
    800399e8:	f486                	sd	ra,104(sp)
    800399ea:	f0a2                	sd	s0,96(sp)
    800399ec:	eca6                	sd	s1,88(sp)
    800399ee:	e02e                	sd	a1,0(sp)
    800399f0:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:8000
    if ((uint64_t)idx <= INT32_MAX) {
    800399f2:	fff7c793          	not	a5,a5
    800399f6:	00d7ef63          	bltu	a5,a3,80039a14 <JS_GetPropertyInt64+0x32>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800399fa:	f802                	sd	zero,48(sp)
JS_GetPropertyInt64():
quickjs-nuttx/quickjs.c:8002
        return JS_GetPropertyValue(ctx, obj, JS_NewInt32(ctx, idx));
    800399fc:	d836                	sw	a3,48(sp)
    800399fe:	76c2                	ld	a3,48(sp)
quickjs-nuttx/quickjs.c:8011
}
    80039a00:	7406                	ld	s0,96(sp)
    80039a02:	70a6                	ld	ra,104(sp)
    80039a04:	64e6                	ld	s1,88(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80039a06:	fc02                	sd	zero,56(sp)
    80039a08:	f036                	sd	a3,32(sp)
    80039a0a:	f402                	sd	zero,40(sp)
JS_GetPropertyInt64():
quickjs-nuttx/quickjs.c:8002
        return JS_GetPropertyValue(ctx, obj, JS_NewInt32(ctx, idx));
    80039a0c:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:8011
}
    80039a0e:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:8002
        return JS_GetPropertyValue(ctx, obj, JS_NewInt32(ctx, idx));
    80039a10:	d00dd06f          	j	80016f10 <JS_GetPropertyValue>
quickjs-nuttx/quickjs.c:8004
    prop = JS_NewAtomInt64(ctx, idx);
    80039a14:	85b6                	mv	a1,a3
    80039a16:	84aa                	mv	s1,a0
    80039a18:	fc8e60ef          	jal	ra,800201e0 <JS_NewAtomInt64>
    80039a1c:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:8005
    if (prop == JS_ATOM_NULL)
    80039a20:	e819                	bnez	s0,80039a36 <JS_GetPropertyInt64+0x54>
quickjs-nuttx/quickjs.c:8006
        return JS_EXCEPTION;
    80039a22:	e802                	sd	zero,16(sp)
    80039a24:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:8011
}
    80039a26:	70a6                	ld	ra,104(sp)
    80039a28:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:8010
    return val;
    80039a2a:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:8011
}
    80039a2c:	6542                	ld	a0,16(sp)
    80039a2e:	65e2                	ld	a1,24(sp)
    80039a30:	64e6                	ld	s1,88(sp)
    80039a32:	6165                	addi	sp,sp,112
    80039a34:	8082                	ret
quickjs-nuttx/quickjs.c:8008
    val = JS_GetProperty(ctx, obj, prop);
    80039a36:	67a2                	ld	a5,8(sp)
    80039a38:	6702                	ld	a4,0(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80039a3a:	4801                	li	a6,0
    80039a3c:	863e                	mv	a2,a5
    80039a3e:	86a2                	mv	a3,s0
    80039a40:	85ba                	mv	a1,a4
    80039a42:	8526                	mv	a0,s1
    80039a44:	fc3e                	sd	a5,56(sp)
    80039a46:	f83a                	sd	a4,48(sp)
    80039a48:	862dd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80039a4c:	f02a                	sd	a0,32(sp)
    80039a4e:	f42e                	sd	a1,40(sp)
JS_GetPropertyInt64():
quickjs-nuttx/quickjs.c:8009
    JS_FreeAtom(ctx, prop);
    80039a50:	8526                	mv	a0,s1
    80039a52:	85a2                	mv	a1,s0
    80039a54:	ef4d10ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:8010
    return val;
    80039a58:	7782                	ld	a5,32(sp)
    80039a5a:	e83e                	sd	a5,16(sp)
    80039a5c:	77a2                	ld	a5,40(sp)
    80039a5e:	b7e1                	j	80039a26 <JS_GetPropertyInt64+0x44>

0000000080039a60 <js_array_includes>:
js_array_includes():
quickjs-nuttx/quickjs.c:39498
{
    80039a60:	7131                	addi	sp,sp,-192
    80039a62:	f922                	sd	s0,176(sp)
    80039a64:	f526                	sd	s1,168(sp)
    80039a66:	f14a                	sd	s2,160(sp)
    80039a68:	fd06                	sd	ra,184(sp)
    80039a6a:	842a                	mv	s0,a0
    80039a6c:	e432                	sd	a2,8(sp)
    80039a6e:	8936                	mv	s2,a3
    80039a70:	e02e                	sd	a1,0(sp)
    80039a72:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:39504
    obj = JS_ToObject(ctx, this_val);
    80039a74:	e46f60ef          	jal	ra,800300ba <JS_ToObject>
    80039a78:	862a                	mv	a2,a0
    80039a7a:	86ae                	mv	a3,a1
    80039a7c:	f82a                	sd	a0,48(sp)
    80039a7e:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:39505
    if (js_get_length64(ctx, &len, obj))
    80039a80:	8522                	mv	a0,s0
    80039a82:	082c                	addi	a1,sp,24
    80039a84:	b4ceb0ef          	jal	ra,80024dd0 <js_get_length64>
    80039a88:	ed41                	bnez	a0,80039b20 <js_array_includes+0xc0>
quickjs-nuttx/quickjs.c:39509
    if (len > 0) {
    80039a8a:	6862                	ld	a6,24(sp)
    80039a8c:	03004663          	bgtz	a6,80039ab8 <js_array_includes+0x58>
quickjs-nuttx/quickjs.c:39508
    res = FALSE;
    80039a90:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:39537
    JS_FreeValue(ctx, obj);
    80039a92:	75c2                	ld	a1,48(sp)
    80039a94:	7662                	ld	a2,56(sp)
    80039a96:	8522                	mv	a0,s0
    80039a98:	d07d10ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80039a9c:	cb02                	sw	zero,148(sp)
    80039a9e:	c926                	sw	s1,144(sp)
    80039aa0:	67ca                	ld	a5,144(sp)
    80039aa2:	e13e                	sd	a5,128(sp)
    80039aa4:	4785                	li	a5,1
js_array_includes():
quickjs-nuttx/quickjs.c:39543
}
    80039aa6:	70ea                	ld	ra,184(sp)
    80039aa8:	744a                	ld	s0,176(sp)
quickjs-nuttx/quickjs.c:39542
    return JS_EXCEPTION;
    80039aaa:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs.c:39543
}
    80039aac:	650a                	ld	a0,128(sp)
    80039aae:	65aa                	ld	a1,136(sp)
    80039ab0:	74aa                	ld	s1,168(sp)
    80039ab2:	790a                	ld	s2,160(sp)
    80039ab4:	6129                	addi	sp,sp,192
    80039ab6:	8082                	ret
quickjs-nuttx/quickjs.c:39510
        n = 0;
    80039ab8:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:39511
        if (argc > 1) {
    80039aba:	4785                	li	a5,1
    80039abc:	0527c963          	blt	a5,s2,80039b0e <js_array_includes+0xae>
quickjs-nuttx/quickjs.c:39515
        if (js_get_fast_array(ctx, obj, &arrp, &count)) {
    80039ac0:	7542                	ld	a0,48(sp)
    80039ac2:	75e2                	ld	a1,56(sp)
    80039ac4:	0854                	addi	a3,sp,20
    80039ac6:	1030                	addi	a2,sp,40
    80039ac8:	e96d00ef          	jal	ra,8000a15e <js_get_fast_array.constprop.0>
    80039acc:	e52d                	bnez	a0,80039b36 <js_array_includes+0xd6>
quickjs-nuttx/quickjs.c:39527
            if (JS_IsException(val))
    80039ace:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:39525 (discriminator 1)
        for (; n < len; n++) {
    80039ad0:	7682                	ld	a3,32(sp)
    80039ad2:	67e2                	ld	a5,24(sp)
    80039ad4:	faf6dee3          	bge	a3,a5,80039a90 <js_array_includes+0x30>
quickjs-nuttx/quickjs.c:39526
            val = JS_GetPropertyInt64(ctx, obj, n);
    80039ad8:	75c2                	ld	a1,48(sp)
    80039ada:	7662                	ld	a2,56(sp)
    80039adc:	8522                	mv	a0,s0
    80039ade:	f05ff0ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80039ae2:	e4ae                	sd	a1,72(sp)
    80039ae4:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:39527
            if (JS_IsException(val))
    80039ae6:	2581                	sext.w	a1,a1
    80039ae8:	03258c63          	beq	a1,s2,80039b20 <js_array_includes+0xc0>
quickjs-nuttx/quickjs.c:39529
            if (js_strict_eq2(ctx, JS_DupValue(ctx, argv[0]), val,
    80039aec:	6088                	ld	a0,0(s1)
    80039aee:	648c                	ld	a1,8(s1)
    80039af0:	92bd00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80039af4:	6686                	ld	a3,64(sp)
    80039af6:	6726                	ld	a4,72(sp)
    80039af8:	862e                	mv	a2,a1
    80039afa:	4789                	li	a5,2
    80039afc:	85aa                	mv	a1,a0
    80039afe:	8522                	mv	a0,s0
    80039b00:	cc5d10ef          	jal	ra,8000b7c4 <js_strict_eq2>
    80039b04:	e925                	bnez	a0,80039b74 <js_array_includes+0x114>
quickjs-nuttx/quickjs.c:39525
        for (; n < len; n++) {
    80039b06:	7782                	ld	a5,32(sp)
    80039b08:	0785                	addi	a5,a5,1
    80039b0a:	f03e                	sd	a5,32(sp)
    80039b0c:	b7d1                	j	80039ad0 <js_array_includes+0x70>
quickjs-nuttx/quickjs.c:39512
            if (JS_ToInt64Clamp(ctx, &n, argv[1], 0, len, len))
    80039b0e:	6890                	ld	a2,16(s1)
    80039b10:	6c94                	ld	a3,24(s1)
    80039b12:	87c2                	mv	a5,a6
    80039b14:	4701                	li	a4,0
    80039b16:	100c                	addi	a1,sp,32
    80039b18:	8522                	mv	a0,s0
    80039b1a:	a26eb0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    80039b1e:	d14d                	beqz	a0,80039ac0 <js_array_includes+0x60>
quickjs-nuttx/quickjs.c:39541
    JS_FreeValue(ctx, obj);
    80039b20:	75c2                	ld	a1,48(sp)
    80039b22:	7662                	ld	a2,56(sp)
    80039b24:	8522                	mv	a0,s0
    80039b26:	c79d10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39542
    return JS_EXCEPTION;
    80039b2a:	4799                	li	a5,6
    80039b2c:	e102                	sd	zero,128(sp)
    80039b2e:	bfa5                	j	80039aa6 <js_array_includes+0x46>
quickjs-nuttx/quickjs.c:39516
            for (; n < count; n++) {
    80039b30:	7782                	ld	a5,32(sp)
    80039b32:	0785                	addi	a5,a5,1
    80039b34:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:39516 (discriminator 1)
    80039b36:	01416703          	lwu	a4,20(sp)
    80039b3a:	7782                	ld	a5,32(sp)
    80039b3c:	f8e7d9e3          	bge	a5,a4,80039ace <js_array_includes+0x6e>
quickjs-nuttx/quickjs.c:39517
                if (js_strict_eq2(ctx, JS_DupValue(ctx, argv[0]),
    80039b40:	6088                	ld	a0,0(s1)
    80039b42:	648c                	ld	a1,8(s1)
    80039b44:	8d7d00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80039b48:	7782                	ld	a5,32(sp)
    80039b4a:	e8aa                	sd	a0,80(sp)
    80039b4c:	ecae                	sd	a1,88(sp)
    80039b4e:	00479713          	slli	a4,a5,0x4
    80039b52:	77a2                	ld	a5,40(sp)
    80039b54:	97ba                	add	a5,a5,a4
    80039b56:	6388                	ld	a0,0(a5)
    80039b58:	678c                	ld	a1,8(a5)
    80039b5a:	8c1d00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80039b5e:	872e                	mv	a4,a1
    80039b60:	f4ae                	sd	a1,104(sp)
    80039b62:	6666                	ld	a2,88(sp)
    80039b64:	65c6                	ld	a1,80(sp)
    80039b66:	86aa                	mv	a3,a0
    80039b68:	f0aa                	sd	a0,96(sp)
    80039b6a:	4789                	li	a5,2
    80039b6c:	8522                	mv	a0,s0
    80039b6e:	c57d10ef          	jal	ra,8000b7c4 <js_strict_eq2>
    80039b72:	dd5d                	beqz	a0,80039b30 <js_array_includes+0xd0>
quickjs-nuttx/quickjs.c:39520
                    res = TRUE;
    80039b74:	4485                	li	s1,1
    80039b76:	bf31                	j	80039a92 <js_array_includes+0x32>

0000000080039b78 <js_typed_array_at>:
js_typed_array_at():
quickjs-nuttx/quickjs.c:53148
{
    80039b78:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs.c:53152
    p = get_typed_array(ctx, this_val, 0);
    80039b7a:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:53148
{
    80039b7c:	e0a2                	sd	s0,64(sp)
    80039b7e:	f84a                	sd	s2,48(sp)
    80039b80:	e486                	sd	ra,72(sp)
    80039b82:	fc26                	sd	s1,56(sp)
    80039b84:	842a                	mv	s0,a0
    80039b86:	e02e                	sd	a1,0(sp)
    80039b88:	e432                	sd	a2,8(sp)
    80039b8a:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:53152
    p = get_typed_array(ctx, this_val, 0);
    80039b8c:	88bdf0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:53153
    if (!p)
    80039b90:	ed01                	bnez	a0,80039ba8 <js_typed_array_at+0x30>
quickjs-nuttx/quickjs.c:53158
        return JS_EXCEPTION;
    80039b92:	f002                	sd	zero,32(sp)
    80039b94:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53168
        return JS_UNDEFINED;
    80039b96:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:53170 (discriminator 1)
}
    80039b98:	60a6                	ld	ra,72(sp)
    80039b9a:	6406                	ld	s0,64(sp)
    80039b9c:	7502                	ld	a0,32(sp)
    80039b9e:	75a2                	ld	a1,40(sp)
    80039ba0:	74e2                	ld	s1,56(sp)
    80039ba2:	7942                	ld	s2,48(sp)
    80039ba4:	6161                	addi	sp,sp,80
    80039ba6:	8082                	ret
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80039ba8:	791c                	ld	a5,48(a0)
    80039baa:	84aa                	mv	s1,a0
    80039bac:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    80039bae:	7b9c                	ld	a5,48(a5)
js_typed_array_at():
quickjs-nuttx/quickjs.c:53156
    if (typed_array_is_detached(ctx, p)) {
    80039bb0:	0047c783          	lbu	a5,4(a5) # ffffffff80000004 <_ebss+0xfffffffeffefee9e>
    80039bb4:	c789                	beqz	a5,80039bbe <js_typed_array_at+0x46>
quickjs-nuttx/quickjs.c:53157
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80039bb6:	8522                	mv	a0,s0
    80039bb8:	bccdf0ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
    80039bbc:	bfd9                	j	80039b92 <js_typed_array_at+0x1a>
quickjs-nuttx/quickjs.c:53161
    if (JS_ToInt64Sat(ctx, &idx, argv[0]))
    80039bbe:	00093603          	ld	a2,0(s2)
    80039bc2:	00893683          	ld	a3,8(s2)
    80039bc6:	082c                	addi	a1,sp,24
    80039bc8:	8522                	mv	a0,s0
    80039bca:	811ea0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80039bce:	f171                	bnez	a0,80039b92 <js_typed_array_at+0x1a>
quickjs-nuttx/quickjs.c:53165
    if (idx < 0)
    80039bd0:	67e2                	ld	a5,24(sp)
    80039bd2:	0404e703          	lwu	a4,64(s1)
    80039bd6:	0007d463          	bgez	a5,80039bde <js_typed_array_at+0x66>
quickjs-nuttx/quickjs.c:53166
        idx = len + idx;
    80039bda:	97ba                	add	a5,a5,a4
    80039bdc:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:53167
    if (idx < 0 || idx >= len)
    80039bde:	66e2                	ld	a3,24(sp)
    80039be0:	00e6e563          	bltu	a3,a4,80039bea <js_typed_array_at+0x72>
quickjs-nuttx/quickjs.c:53168
        return JS_UNDEFINED;
    80039be4:	f002                	sd	zero,32(sp)
    80039be6:	478d                	li	a5,3
    80039be8:	b77d                	j	80039b96 <js_typed_array_at+0x1e>
quickjs-nuttx/quickjs.c:53169
    return JS_GetPropertyInt64(ctx, this_val, idx);
    80039bea:	6582                	ld	a1,0(sp)
    80039bec:	6622                	ld	a2,8(sp)
    80039bee:	8522                	mv	a0,s0
    80039bf0:	df3ff0ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80039bf4:	f02a                	sd	a0,32(sp)
    80039bf6:	f42e                	sd	a1,40(sp)
    80039bf8:	b745                	j	80039b98 <js_typed_array_at+0x20>

0000000080039bfa <js_string___GetSubstitution.constprop.0>:
js_string___GetSubstitution():
quickjs-nuttx/quickjs.c:41846
static JSValue js_string___GetSubstitution(JSContext *ctx, JSValueConst this_val,
    80039bfa:	7169                	addi	sp,sp,-304
    80039bfc:	ea4a                	sd	s2,272(sp)
    80039bfe:	f606                	sd	ra,296(sp)
    80039c00:	f222                	sd	s0,288(sp)
    80039c02:	ee26                	sd	s1,280(sp)
    80039c04:	e64e                	sd	s3,264(sp)
    80039c06:	e252                	sd	s4,256(sp)
    80039c08:	fdd6                	sd	s5,248(sp)
    80039c0a:	f9da                	sd	s6,240(sp)
    80039c0c:	f5de                	sd	s7,232(sp)
    80039c0e:	f1e2                	sd	s8,224(sp)
    80039c10:	ede6                	sd	s9,216(sp)
    80039c12:	e9ea                	sd	s10,208(sp)
    80039c14:	e5ee                	sd	s11,200(sp)
quickjs-nuttx/quickjs.c:41860
    captures = argv[3];
    80039c16:	7998                	ld	a4,48(a1)
quickjs-nuttx/quickjs.c:41858
    matched = argv[0];
    80039c18:	619c                	ld	a5,0(a1)
quickjs-nuttx/quickjs.c:41860
    captures = argv[3];
    80039c1a:	0385ba83          	ld	s5,56(a1)
    80039c1e:	e0ba                	sd	a4,64(sp)
quickjs-nuttx/quickjs.c:41861
    namedCaptures = argv[4];
    80039c20:	61b8                	ld	a4,64(a1)
    80039c22:	0485bc03          	ld	s8,72(a1)
quickjs-nuttx/quickjs.c:41858
    matched = argv[0];
    80039c26:	f83e                	sd	a5,48(sp)
    80039c28:	659c                	ld	a5,8(a1)
quickjs-nuttx/quickjs.c:41861
    namedCaptures = argv[4];
    80039c2a:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/quickjs.c:41864
    if (!JS_IsString(rep) || !JS_IsString(str))
    80039c2c:	4db8                	lw	a4,88(a1)
quickjs-nuttx/quickjs.c:41858
    matched = argv[0];
    80039c2e:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:41860
    captures = argv[3];
    80039c30:	e4d6                	sd	s5,72(sp)
quickjs-nuttx/quickjs.c:41861
    namedCaptures = argv[4];
    80039c32:	ece2                	sd	s8,88(sp)
quickjs-nuttx/quickjs.c:41864
    if (!JS_IsString(rep) || !JS_IsString(str))
    80039c34:	56e5                	li	a3,-7
quickjs-nuttx/quickjs.c:41859
    str = argv[1];
    80039c36:	0105bb83          	ld	s7,16(a1)
    80039c3a:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/quickjs.c:41846
static JSValue js_string___GetSubstitution(JSContext *ctx, JSValueConst this_val,
    80039c3c:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:41864
    if (!JS_IsString(rep) || !JS_IsString(str))
    80039c3e:	00d71563          	bne	a4,a3,80039c48 <js_string___GetSubstitution.constprop.0+0x4e>
    80039c42:	2781                	sext.w	a5,a5
    80039c44:	02e78763          	beq	a5,a4,80039c72 <js_string___GetSubstitution.constprop.0+0x78>
quickjs-nuttx/quickjs.c:41952
}
    80039c48:	7412                	ld	s0,288(sp)
    80039c4a:	70b2                	ld	ra,296(sp)
    80039c4c:	64f2                	ld	s1,280(sp)
    80039c4e:	69b2                	ld	s3,264(sp)
    80039c50:	6a12                	ld	s4,256(sp)
    80039c52:	7aee                	ld	s5,248(sp)
    80039c54:	7b4e                	ld	s6,240(sp)
    80039c56:	7bae                	ld	s7,232(sp)
    80039c58:	7c0e                	ld	s8,224(sp)
    80039c5a:	6cee                	ld	s9,216(sp)
    80039c5c:	6d4e                	ld	s10,208(sp)
    80039c5e:	6dae                	ld	s11,200(sp)
quickjs-nuttx/quickjs.c:41865
        return JS_ThrowTypeError(ctx, "not a string");
    80039c60:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:41952
}
    80039c62:	6952                	ld	s2,272(sp)
quickjs-nuttx/quickjs.c:41865
        return JS_ThrowTypeError(ctx, "not a string");
    80039c64:	00030597          	auipc	a1,0x30
    80039c68:	7ec58593          	addi	a1,a1,2028 # 8006a450 <qjsc_repl+0x4ea0>
quickjs-nuttx/quickjs.c:41952
}
    80039c6c:	6155                	addi	sp,sp,304
quickjs-nuttx/quickjs.c:41865
        return JS_ThrowTypeError(ctx, "not a string");
    80039c6e:	9ffde06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:41862
    rep = argv[5];
    80039c72:	69a4                	ld	s1,80(a1)
quickjs-nuttx/quickjs.c:41870
    string_buffer_init(ctx, b, 0);
    80039c74:	89ae                	mv	s3,a1
    80039c76:	4601                	li	a2,0
    80039c78:	110c                	addi	a1,sp,160
    80039c7a:	b02e40ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:41873
    if (!JS_IsUndefined(captures)) {
    80039c7e:	000a879b          	sext.w	a5,s5
quickjs-nuttx/quickjs.c:41872
    captures_len = 0;
    80039c82:	d602                	sw	zero,44(sp)
quickjs-nuttx/quickjs.c:41873
    if (!JS_IsUndefined(captures)) {
    80039c84:	470d                	li	a4,3
    80039c86:	08e79963          	bne	a5,a4,80039d18 <js_string___GetSubstitution.constprop.0+0x11e>
quickjs-nuttx/quickjs.c:41877
    if (js_get_length32(ctx, &matched_len, matched))
    80039c8a:	7642                	ld	a2,48(sp)
    80039c8c:	76e2                	ld	a3,56(sp)
    80039c8e:	102c                	addi	a1,sp,40
    80039c90:	854a                	mv	a0,s2
    80039c92:	ed4e80ef          	jal	ra,80022366 <js_get_length32>
    80039c96:	842a                	mv	s0,a0
    80039c98:	e559                	bnez	a0,80039d26 <js_string___GetSubstitution.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:41879
    if (JS_ToUint32(ctx, &position, argv[2]) < 0)
    80039c9a:	0209b603          	ld	a2,32(s3)
    80039c9e:	0289b683          	ld	a3,40(s3)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    80039ca2:	104c                	addi	a1,sp,36
    80039ca4:	854a                	mv	a0,s2
    80039ca6:	e932                	sd	a2,144(sp)
    80039ca8:	ed36                	sd	a3,152(sp)
    80039caa:	f10e80ef          	jal	ra,800223ba <JS_ToInt32>
js_string___GetSubstitution():
quickjs-nuttx/quickjs.c:41879
    80039cae:	06054c63          	bltz	a0,80039d26 <js_string___GetSubstitution.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:41882
    len = rp->len;
    80039cb2:	0044aa03          	lw	s4,4(s1)
    80039cb6:	80000b37          	lui	s6,0x80000
    80039cba:	fffb4b13          	not	s6,s6
    80039cbe:	014b7a33          	and	s4,s6,s4
quickjs-nuttx/quickjs.c:41900
        } else if (c >= '0' && c <= '9') {
    80039cc2:	4d25                	li	s10,9
quickjs-nuttx/quickjs.c:41926
        } else if (c == '<' && !JS_IsUndefined(namedCaptures)) {
    80039cc4:	000c0d9b          	sext.w	s11,s8
quickjs-nuttx/quickjs.c:41885
        j = string_indexof_char(rp, '$', i);
    80039cc8:	8622                	mv	a2,s0
    80039cca:	02400593          	li	a1,36
    80039cce:	8526                	mv	a0,s1
    80039cd0:	cd4ce0ef          	jal	ra,800081a4 <string_indexof_char>
    80039cd4:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:41888
        string_buffer_concat(b, rp, i, j);
    80039cd6:	0004061b          	sext.w	a2,s0
quickjs-nuttx/quickjs.c:41886
        if (j < 0 || j + 1 >= len)
    80039cda:	18054663          	bltz	a0,80039e66 <js_string___GetSubstitution.constprop.0+0x26c>
    80039cde:	0015079b          	addiw	a5,a0,1
    80039ce2:	e43e                	sd	a5,8(sp)
    80039ce4:	1947f163          	bgeu	a5,s4,80039e66 <js_string___GetSubstitution.constprop.0+0x26c>
quickjs-nuttx/quickjs.c:41888
        string_buffer_concat(b, rp, i, j);
    80039ce8:	00050c9b          	sext.w	s9,a0
    80039cec:	86e6                	mv	a3,s9
    80039cee:	85a6                	mv	a1,s1
    80039cf0:	1108                	addi	a0,sp,160
    80039cf2:	df1e40ef          	jal	ra,8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:41890
        c = string_get(rp, j++);
    80039cf6:	67a2                	ld	a5,8(sp)
    80039cf8:	8526                	mv	a0,s1
    80039cfa:	0029841b          	addiw	s0,s3,2
    80039cfe:	85be                	mv	a1,a5
    80039d00:	f65cd0ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:41891
        if (c == '$') {
    80039d04:	02400793          	li	a5,36
    80039d08:	02f51663          	bne	a0,a5,80039d34 <js_string___GetSubstitution.constprop.0+0x13a>
quickjs-nuttx/quickjs.c:41892
            string_buffer_putc8(b, '$');
    80039d0c:	02400593          	li	a1,36
    80039d10:	1108                	addi	a0,sp,160
    80039d12:	f4fe40ef          	jal	ra,8001ec60 <string_buffer_putc8>
    80039d16:	bf4d                	j	80039cc8 <js_string___GetSubstitution.constprop.0+0xce>
quickjs-nuttx/quickjs.c:41874
        if (js_get_length32(ctx, &captures_len, captures))
    80039d18:	6606                	ld	a2,64(sp)
    80039d1a:	66a6                	ld	a3,72(sp)
    80039d1c:	106c                	addi	a1,sp,44
    80039d1e:	854a                	mv	a0,s2
    80039d20:	e46e80ef          	jal	ra,80022366 <js_get_length32>
    80039d24:	d13d                	beqz	a0,80039c8a <js_string___GetSubstitution.constprop.0+0x90>
quickjs-nuttx/quickjs.c:41950
    string_buffer_free(b);
    80039d26:	1108                	addi	a0,sp,160
    80039d28:	afad10ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:41951
    return JS_EXCEPTION;
    80039d2c:	4799                	li	a5,6
    80039d2e:	e902                	sd	zero,144(sp)
    80039d30:	ed3e                	sd	a5,152(sp)
    80039d32:	a2b1                	j	80039e7e <js_string___GetSubstitution.constprop.0+0x284>
quickjs-nuttx/quickjs.c:41893
        } else if (c == '&') {
    80039d34:	02600793          	li	a5,38
    80039d38:	00f51963          	bne	a0,a5,80039d4a <js_string___GetSubstitution.constprop.0+0x150>
quickjs-nuttx/quickjs.c:41894
            if (string_buffer_concat_value(b, matched))
    80039d3c:	75c2                	ld	a1,48(sp)
    80039d3e:	7662                	ld	a2,56(sp)
    80039d40:	1108                	addi	a0,sp,160
    80039d42:	96be70ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:41920
                    if (string_buffer_concat_value_free(b, s))
    80039d46:	d149                	beqz	a0,80039cc8 <js_string___GetSubstitution.constprop.0+0xce>
    80039d48:	bff9                	j	80039d26 <js_string___GetSubstitution.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:41896
        } else if (c == '`') {
    80039d4a:	06000793          	li	a5,96
    80039d4e:	00f51963          	bne	a0,a5,80039d60 <js_string___GetSubstitution.constprop.0+0x166>
quickjs-nuttx/quickjs.c:41897
            string_buffer_concat(b, sp, 0, position);
    80039d52:	5692                	lw	a3,36(sp)
    80039d54:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:41899
            string_buffer_concat(b, sp, position + matched_len, sp->len);
    80039d56:	85de                	mv	a1,s7
quickjs-nuttx/quickjs.c:41943
            string_buffer_concat(b, rp, j0, j);
    80039d58:	1108                	addi	a0,sp,160
    80039d5a:	d89e40ef          	jal	ra,8001eae2 <string_buffer_concat>
    80039d5e:	b7ad                	j	80039cc8 <js_string___GetSubstitution.constprop.0+0xce>
quickjs-nuttx/quickjs.c:41898
        } else if (c == '\'') {
    80039d60:	02700793          	li	a5,39
    80039d64:	00f51a63          	bne	a0,a5,80039d78 <js_string___GetSubstitution.constprop.0+0x17e>
quickjs-nuttx/quickjs.c:41899
            string_buffer_concat(b, sp, position + matched_len, sp->len);
    80039d68:	004ba683          	lw	a3,4(s7)
    80039d6c:	5612                	lw	a2,36(sp)
    80039d6e:	57a2                	lw	a5,40(sp)
    80039d70:	00db76b3          	and	a3,s6,a3
    80039d74:	9e3d                	addw	a2,a2,a5
    80039d76:	b7c5                	j	80039d56 <js_string___GetSubstitution.constprop.0+0x15c>
quickjs-nuttx/quickjs.c:41900
        } else if (c >= '0' && c <= '9') {
    80039d78:	fd05071b          	addiw	a4,a0,-48
    80039d7c:	ce3a                	sw	a4,28(sp)
    80039d7e:	06ed6c63          	bltu	s10,a4,80039df6 <js_string___GetSubstitution.constprop.0+0x1fc>
quickjs-nuttx/quickjs.c:41901
            k = c - '0';
    80039d82:	86ba                	mv	a3,a4
quickjs-nuttx/quickjs.c:41902
            if (j < len) {
    80039d84:	07447163          	bgeu	s0,s4,80039de6 <js_string___GetSubstitution.constprop.0+0x1ec>
quickjs-nuttx/quickjs.c:41903
                c1 = string_get(rp, j);
    80039d88:	85a2                	mv	a1,s0
    80039d8a:	8526                	mv	a0,s1
    80039d8c:	e83a                	sd	a4,16(sp)
    80039d8e:	e43a                	sd	a4,8(sp)
    80039d90:	ed5cd0ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:41904
                if (c1 >= '0' && c1 <= '9') {
    80039d94:	6722                	ld	a4,8(sp)
    80039d96:	fd05079b          	addiw	a5,a0,-48
    80039d9a:	86ba                	mv	a3,a4
    80039d9c:	04fd6563          	bltu	s10,a5,80039de6 <js_string___GetSubstitution.constprop.0+0x1ec>
quickjs-nuttx/quickjs.c:41908
                    k1 = k * 10 + c1 - '0';
    80039da0:	47a9                	li	a5,10
    80039da2:	02e787bb          	mulw	a5,a5,a4
    80039da6:	fd07879b          	addiw	a5,a5,-48
    80039daa:	9fa9                	addw	a5,a5,a0
quickjs-nuttx/quickjs.c:41909
                    if (k1 >= 1 && k1 < captures_len) {
    80039dac:	cf8d                	beqz	a5,80039de6 <js_string___GetSubstitution.constprop.0+0x1ec>
    80039dae:	5632                	lw	a2,44(sp)
    80039db0:	02c7fb63          	bgeu	a5,a2,80039de6 <js_string___GetSubstitution.constprop.0+0x1ec>
quickjs-nuttx/quickjs.c:41911
                        j++;
    80039db4:	0039841b          	addiw	s0,s3,3
    80039db8:	86be                	mv	a3,a5
quickjs-nuttx/quickjs.c:41916
                s = JS_GetPropertyInt64(ctx, captures, k);
    80039dba:	6586                	ld	a1,64(sp)
    80039dbc:	8656                	mv	a2,s5
    80039dbe:	854a                	mv	a0,s2
    80039dc0:	e4d6                	sd	s5,72(sp)
    80039dc2:	c21ff0ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80039dc6:	e12a                	sd	a0,128(sp)
    80039dc8:	e52e                	sd	a1,136(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80039dca:	0005879b          	sext.w	a5,a1
js_string___GetSubstitution():
quickjs-nuttx/quickjs.c:41917
                if (JS_IsException(s))
    80039dce:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:41916
                s = JS_GetPropertyInt64(ctx, captures, k);
    80039dd0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:41917
                if (JS_IsException(s))
    80039dd2:	f4e78ae3          	beq	a5,a4,80039d26 <js_string___GetSubstitution.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:41919
                if (!JS_IsUndefined(s)) {
    80039dd6:	470d                	li	a4,3
    80039dd8:	eee788e3          	beq	a5,a4,80039cc8 <js_string___GetSubstitution.constprop.0+0xce>
quickjs-nuttx/quickjs.c:41920
                    if (string_buffer_concat_value_free(b, s))
    80039ddc:	85aa                	mv	a1,a0
    80039dde:	1108                	addi	a0,sp,160
    80039de0:	ea3e60ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
    80039de4:	b78d                	j	80039d46 <js_string___GetSubstitution.constprop.0+0x14c>
quickjs-nuttx/quickjs.c:41915
            if (k >= 1 && k < captures_len) {
    80039de6:	c701                	beqz	a4,80039dee <js_string___GetSubstitution.constprop.0+0x1f4>
    80039de8:	57b2                	lw	a5,44(sp)
    80039dea:	fcf768e3          	bltu	a4,a5,80039dba <js_string___GetSubstitution.constprop.0+0x1c0>
quickjs-nuttx/quickjs.c:41943
            string_buffer_concat(b, rp, j0, j);
    80039dee:	86a2                	mv	a3,s0
    80039df0:	8666                	mv	a2,s9
    80039df2:	85a6                	mv	a1,s1
    80039df4:	b795                	j	80039d58 <js_string___GetSubstitution.constprop.0+0x15e>
quickjs-nuttx/quickjs.c:41926
        } else if (c == '<' && !JS_IsUndefined(namedCaptures)) {
    80039df6:	03c00793          	li	a5,60
    80039dfa:	fef51ae3          	bne	a0,a5,80039dee <js_string___GetSubstitution.constprop.0+0x1f4>
    80039dfe:	ece2                	sd	s8,88(sp)
    80039e00:	478d                	li	a5,3
    80039e02:	fefd86e3          	beq	s11,a5,80039dee <js_string___GetSubstitution.constprop.0+0x1f4>
quickjs-nuttx/quickjs.c:41927
            k = string_indexof_char(rp, '>', j);
    80039e06:	8622                	mv	a2,s0
    80039e08:	03e00593          	li	a1,62
    80039e0c:	8526                	mv	a0,s1
    80039e0e:	b96ce0ef          	jal	ra,800081a4 <string_indexof_char>
    80039e12:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:41928
            if (k < 0)
    80039e14:	fc054de3          	bltz	a0,80039dee <js_string___GetSubstitution.constprop.0+0x1f4>
quickjs-nuttx/quickjs.c:41930
            name = js_sub_string(ctx, rp, j, k);
    80039e18:	86aa                	mv	a3,a0
    80039e1a:	8622                	mv	a2,s0
    80039e1c:	85a6                	mv	a1,s1
    80039e1e:	854a                	mv	a0,s2
    80039e20:	aeee60ef          	jal	ra,8002010e <js_sub_string>
    80039e24:	f8aa                	sd	a0,112(sp)
    80039e26:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:41931
            if (JS_IsException(name))
    80039e28:	0005879b          	sext.w	a5,a1
    80039e2c:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:41930
            name = js_sub_string(ctx, rp, j, k);
    80039e2e:	86aa                	mv	a3,a0
    80039e30:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:41931
            if (JS_IsException(name))
    80039e32:	ee878ae3          	beq	a5,s0,80039d26 <js_string___GetSubstitution.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:41933
            capture = JS_GetPropertyValue(ctx, namedCaptures, name);
    80039e36:	6666                	ld	a2,88(sp)
    80039e38:	65c6                	ld	a1,80(sp)
    80039e3a:	854a                	mv	a0,s2
    80039e3c:	8d4dd0ef          	jal	ra,80016f10 <JS_GetPropertyValue>
    80039e40:	f0aa                	sd	a0,96(sp)
    80039e42:	f4ae                	sd	a1,104(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80039e44:	0005879b          	sext.w	a5,a1
js_string___GetSubstitution():
quickjs-nuttx/quickjs.c:41933
    80039e48:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:41934
            if (JS_IsException(capture))
    80039e4a:	ec878ee3          	beq	a5,s0,80039d26 <js_string___GetSubstitution.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:41936
            if (!JS_IsUndefined(capture)) {
    80039e4e:	470d                	li	a4,3
    80039e50:	00e79563          	bne	a5,a4,80039e5a <js_string___GetSubstitution.constprop.0+0x260>
quickjs-nuttx/quickjs.c:41940
            j = k + 1;
    80039e54:	0019841b          	addiw	s0,s3,1
    80039e58:	bd85                	j	80039cc8 <js_string___GetSubstitution.constprop.0+0xce>
quickjs-nuttx/quickjs.c:41937
                if (string_buffer_concat_value_free(b, capture))
    80039e5a:	85aa                	mv	a1,a0
    80039e5c:	1108                	addi	a0,sp,160
    80039e5e:	e25e60ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
    80039e62:	d96d                	beqz	a0,80039e54 <js_string___GetSubstitution.constprop.0+0x25a>
    80039e64:	b5c9                	j	80039d26 <js_string___GetSubstitution.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:41947
    string_buffer_concat(b, rp, i, rp->len);
    80039e66:	40d4                	lw	a3,4(s1)
    80039e68:	85a6                	mv	a1,s1
    80039e6a:	1108                	addi	a0,sp,160
    80039e6c:	1686                	slli	a3,a3,0x21
    80039e6e:	9285                	srli	a3,a3,0x21
    80039e70:	c73e40ef          	jal	ra,8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:41948
    return string_buffer_end(b);
    80039e74:	1108                	addi	a0,sp,160
    80039e76:	e2be50ef          	jal	ra,8001fca0 <string_buffer_end>
    80039e7a:	e92a                	sd	a0,144(sp)
    80039e7c:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:41952
}
    80039e7e:	70b2                	ld	ra,296(sp)
    80039e80:	7412                	ld	s0,288(sp)
    80039e82:	654a                	ld	a0,144(sp)
    80039e84:	65ea                	ld	a1,152(sp)
    80039e86:	64f2                	ld	s1,280(sp)
    80039e88:	6952                	ld	s2,272(sp)
    80039e8a:	69b2                	ld	s3,264(sp)
    80039e8c:	6a12                	ld	s4,256(sp)
    80039e8e:	7aee                	ld	s5,248(sp)
    80039e90:	7b4e                	ld	s6,240(sp)
    80039e92:	7bae                	ld	s7,232(sp)
    80039e94:	7c0e                	ld	s8,224(sp)
    80039e96:	6cee                	ld	s9,216(sp)
    80039e98:	6d4e                	ld	s10,208(sp)
    80039e9a:	6dae                	ld	s11,200(sp)
    80039e9c:	6155                	addi	sp,sp,304
    80039e9e:	8082                	ret

0000000080039ea0 <js_string_raw>:
js_string_raw():
quickjs-nuttx/quickjs.c:41319
{
    80039ea0:	716d                	addi	sp,sp,-272
quickjs-nuttx/quickjs.c:41325
    string_buffer_init(ctx, b, 0);
    80039ea2:	4601                	li	a2,0
    80039ea4:	110c                	addi	a1,sp,160
quickjs-nuttx/quickjs.c:41319
{
    80039ea6:	e606                	sd	ra,264(sp)
    80039ea8:	e222                	sd	s0,256(sp)
    80039eaa:	f9ca                	sd	s2,240(sp)
    80039eac:	f5ce                	sd	s3,232(sp)
    80039eae:	f1d2                	sd	s4,224(sp)
    80039eb0:	89ba                	mv	s3,a4
    80039eb2:	8a36                	mv	s4,a3
    80039eb4:	842a                	mv	s0,a0
    80039eb6:	fda6                	sd	s1,248(sp)
    80039eb8:	edd6                	sd	s5,216(sp)
    80039eba:	e9da                	sd	s6,208(sp)
    80039ebc:	e5de                	sd	s7,200(sp)
quickjs-nuttx/quickjs.c:41325
    string_buffer_init(ctx, b, 0);
    80039ebe:	8bee40ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:41327
    cooked = JS_ToObject(ctx, argv[0]);
    80039ec2:	0009b583          	ld	a1,0(s3)
    80039ec6:	0089b603          	ld	a2,8(s3)
    80039eca:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:41326
    raw = JS_UNDEFINED;
    80039ecc:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:41327
    cooked = JS_ToObject(ctx, argv[0]);
    80039ece:	9ecf60ef          	jal	ra,800300ba <JS_ToObject>
    80039ed2:	f02a                	sd	a0,32(sp)
    80039ed4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41328
    if (JS_IsException(cooked))
    80039ed6:	0005869b          	sext.w	a3,a1
    80039eda:	4919                	li	s2,6
    80039edc:	11268863          	beq	a3,s2,80039fec <js_string_raw+0x14c>
    80039ee0:	87ae                	mv	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80039ee2:	863e                	mv	a2,a5
    80039ee4:	872a                	mv	a4,a0
    80039ee6:	4801                	li	a6,0
    80039ee8:	07100693          	li	a3,113
    80039eec:	e92a                	sd	a0,144(sp)
    80039eee:	ed2e                	sd	a1,152(sp)
    80039ef0:	85aa                	mv	a1,a0
    80039ef2:	8522                	mv	a0,s0
    80039ef4:	bb7dc0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80039ef8:	862e                	mv	a2,a1
    80039efa:	f8aa                	sd	a0,112(sp)
    80039efc:	fcae                	sd	a1,120(sp)
JS_ToObjectFree():
quickjs-nuttx/quickjs.c:36999
    JSValue obj = JS_ToObject(ctx, val);
    80039efe:	85aa                	mv	a1,a0
    80039f00:	8522                	mv	a0,s0
    80039f02:	9b8f60ef          	jal	ra,800300ba <JS_ToObject>
quickjs-nuttx/quickjs.c:37000
    JS_FreeValue(ctx, val);
    80039f06:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:36999
    JSValue obj = JS_ToObject(ctx, val);
    80039f08:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:37000
    JS_FreeValue(ctx, val);
    80039f0a:	75c6                	ld	a1,112(sp)
quickjs-nuttx/quickjs.c:36999
    JSValue obj = JS_ToObject(ctx, val);
    80039f0c:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:37000
    JS_FreeValue(ctx, val);
    80039f0e:	8522                	mv	a0,s0
    80039f10:	88fd10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37001
    return obj;
    80039f14:	660a                	ld	a2,128(sp)
    80039f16:	64aa                	ld	s1,136(sp)
    80039f18:	e932                	sd	a2,144(sp)
    80039f1a:	ed26                	sd	s1,152(sp)
    80039f1c:	e0b2                	sd	a2,64(sp)
js_string_raw():
quickjs-nuttx/quickjs.c:41331
    if (JS_IsException(raw))
    80039f1e:	0004879b          	sext.w	a5,s1
JS_ToObjectFree():
quickjs-nuttx/quickjs.c:37001
    return obj;
    80039f22:	8aa6                	mv	s5,s1
js_string_raw():
quickjs-nuttx/quickjs.c:41331
    if (JS_IsException(raw))
    80039f24:	0b278363          	beq	a5,s2,80039fca <js_string_raw+0x12a>
quickjs-nuttx/quickjs.c:41333
    if (js_get_length64(ctx, &n, raw) < 0)
    80039f28:	86a6                	mv	a3,s1
    80039f2a:	082c                	addi	a1,sp,24
    80039f2c:	8522                	mv	a0,s0
    80039f2e:	ea3ea0ef          	jal	ra,80024dd0 <js_get_length64>
    80039f32:	08054c63          	bltz	a0,80039fca <js_string_raw+0x12a>
quickjs-nuttx/quickjs.c:41336
    for (i = 0; i < n; i++) {
    80039f36:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:41338
        if (JS_IsException(val))
    80039f38:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:41336 (discriminator 1)
    for (i = 0; i < n; i++) {
    80039f3a:	67e2                	ld	a5,24(sp)
    80039f3c:	02f94e63          	blt	s2,a5,80039f78 <js_string_raw+0xd8>
quickjs-nuttx/quickjs.c:41346
    JS_FreeValue(ctx, cooked);
    80039f40:	7582                	ld	a1,32(sp)
    80039f42:	7622                	ld	a2,40(sp)
    80039f44:	8522                	mv	a0,s0
    80039f46:	859d10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41347
    JS_FreeValue(ctx, raw);
    80039f4a:	6586                	ld	a1,64(sp)
    80039f4c:	8626                	mv	a2,s1
    80039f4e:	8522                	mv	a0,s0
    80039f50:	84fd10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41348
    return string_buffer_end(b);
    80039f54:	1108                	addi	a0,sp,160
    80039f56:	d4be50ef          	jal	ra,8001fca0 <string_buffer_end>
    80039f5a:	e12a                	sd	a0,128(sp)
    80039f5c:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:41355
}
    80039f5e:	60b2                	ld	ra,264(sp)
    80039f60:	6412                	ld	s0,256(sp)
    80039f62:	650a                	ld	a0,128(sp)
    80039f64:	65aa                	ld	a1,136(sp)
    80039f66:	74ee                	ld	s1,248(sp)
    80039f68:	794e                	ld	s2,240(sp)
    80039f6a:	79ae                	ld	s3,232(sp)
    80039f6c:	7a0e                	ld	s4,224(sp)
    80039f6e:	6aee                	ld	s5,216(sp)
    80039f70:	6b4e                	ld	s6,208(sp)
    80039f72:	6bae                	ld	s7,200(sp)
    80039f74:	6151                	addi	sp,sp,272
    80039f76:	8082                	ret
quickjs-nuttx/quickjs.c:41337
        val = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, raw, i));
    80039f78:	6586                	ld	a1,64(sp)
    80039f7a:	86ca                	mv	a3,s2
    80039f7c:	8626                	mv	a2,s1
    80039f7e:	8522                	mv	a0,s0
    80039f80:	a63ff0ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80039f84:	862e                	mv	a2,a1
    80039f86:	f8aa                	sd	a0,112(sp)
    80039f88:	fcae                	sd	a1,120(sp)
    80039f8a:	85aa                	mv	a1,a0
    80039f8c:	8522                	mv	a0,s0
    80039f8e:	ff8e60ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:41338
        if (JS_IsException(val))
    80039f92:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:41337
        val = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, raw, i));
    80039f96:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:41338
        if (JS_IsException(val))
    80039f98:	03678963          	beq	a5,s6,80039fca <js_string_raw+0x12a>
quickjs-nuttx/quickjs.c:41340
        string_buffer_concat_value_free(b, val);
    80039f9c:	85aa                	mv	a1,a0
    80039f9e:	1108                	addi	a0,sp,160
    80039fa0:	ce3e60ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
quickjs-nuttx/quickjs.c:41341
        if (i < n - 1 && i + 1 < argc) {
    80039fa4:	67e2                	ld	a5,24(sp)
    80039fa6:	00190b93          	addi	s7,s2,1
    80039faa:	17fd                	addi	a5,a5,-1
    80039fac:	00f94463          	blt	s2,a5,80039fb4 <js_string_raw+0x114>
    80039fb0:	895e                	mv	s2,s7
    80039fb2:	b761                	j	80039f3a <js_string_raw+0x9a>
quickjs-nuttx/quickjs.c:41341 (discriminator 1)
    80039fb4:	ff4bdee3          	bge	s7,s4,80039fb0 <js_string_raw+0x110>
quickjs-nuttx/quickjs.c:41342
            if (string_buffer_concat_value(b, argv[i + 1]))
    80039fb8:	004b9793          	slli	a5,s7,0x4
    80039fbc:	97ce                	add	a5,a5,s3
    80039fbe:	638c                	ld	a1,0(a5)
    80039fc0:	6790                	ld	a2,8(a5)
    80039fc2:	1108                	addi	a0,sp,160
    80039fc4:	ee8e70ef          	jal	ra,800216ac <string_buffer_concat_value>
    80039fc8:	d565                	beqz	a0,80039fb0 <js_string_raw+0x110>
quickjs-nuttx/quickjs.c:41351
    JS_FreeValue(ctx, cooked);
    80039fca:	7582                	ld	a1,32(sp)
    80039fcc:	7622                	ld	a2,40(sp)
    80039fce:	8522                	mv	a0,s0
    80039fd0:	fced10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41352
    JS_FreeValue(ctx, raw);
    80039fd4:	6586                	ld	a1,64(sp)
    80039fd6:	8656                	mv	a2,s5
    80039fd8:	8522                	mv	a0,s0
    80039fda:	fc4d10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41353
    string_buffer_free(b);
    80039fde:	1108                	addi	a0,sp,160
    80039fe0:	842d10ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:41354
    return JS_EXCEPTION;
    80039fe4:	4799                	li	a5,6
    80039fe6:	e102                	sd	zero,128(sp)
    80039fe8:	e53e                	sd	a5,136(sp)
    80039fea:	bf95                	j	80039f5e <js_string_raw+0xbe>
quickjs-nuttx/quickjs.c:41326
    raw = JS_UNDEFINED;
    80039fec:	4a8d                	li	s5,3
    80039fee:	bff1                	j	80039fca <js_string_raw+0x12a>

0000000080039ff0 <JS_TryGetPropertyInt64>:
JS_TryGetPropertyInt64():
quickjs-nuttx/quickjs.c:7965
{
    80039ff0:	7119                	addi	sp,sp,-128
quickjs-nuttx/quickjs.c:7970
    if (likely((uint64_t)idx <= JS_ATOM_MAX_INT)) {
    80039ff2:	800007b7          	lui	a5,0x80000
quickjs-nuttx/quickjs.c:7965
{
    80039ff6:	f0ca                	sd	s2,96(sp)
    80039ff8:	ecce                	sd	s3,88(sp)
    80039ffa:	e8d2                	sd	s4,80(sp)
    80039ffc:	fc86                	sd	ra,120(sp)
    80039ffe:	f8a2                	sd	s0,112(sp)
