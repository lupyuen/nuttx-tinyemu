    80024000:	f002                	sd	zero,32(sp)
    80024002:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:53474 (discriminator 1)
}
    80024004:	60e6                	ld	ra,88(sp)
    80024006:	6446                	ld	s0,80(sp)
    80024008:	7502                	ld	a0,32(sp)
    8002400a:	75a2                	ld	a1,40(sp)
    8002400c:	64a6                	ld	s1,72(sp)
    8002400e:	6906                	ld	s2,64(sp)
    80024010:	79e2                	ld	s3,56(sp)
    80024012:	6125                	addi	sp,sp,96
    80024014:	8082                	ret
quickjs-nuttx/quickjs.c:53451
    if (JS_ToInt32Clamp(ctx, &to, argv[0], 0, len, len))
    80024016:	6090                	ld	a2,0(s1)
    80024018:	6494                	ld	a3,8(s1)
    8002401a:	842a                	mv	s0,a0
    8002401c:	882a                	mv	a6,a0
    8002401e:	87aa                	mv	a5,a0
    80024020:	4701                	li	a4,0
    80024022:	084c                	addi	a1,sp,20
    80024024:	854a                	mv	a0,s2
    80024026:	bc1ff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    8002402a:	f971                	bnez	a0,80023ffe <js_typed_array_copyWithin+0x1e>
quickjs-nuttx/quickjs.c:53454
    if (JS_ToInt32Clamp(ctx, &from, argv[1], 0, len, len))
    8002402c:	6890                	ld	a2,16(s1)
    8002402e:	6c94                	ld	a3,24(s1)
    80024030:	8822                	mv	a6,s0
    80024032:	87a2                	mv	a5,s0
    80024034:	4701                	li	a4,0
    80024036:	082c                	addi	a1,sp,24
    80024038:	854a                	mv	a0,s2
    8002403a:	badff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    8002403e:	f161                	bnez	a0,80023ffe <js_typed_array_copyWithin+0x1e>
quickjs-nuttx/quickjs.c:53457
    final = len;
    80024040:	ce22                	sw	s0,28(sp)
quickjs-nuttx/quickjs.c:53458
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    80024042:	4789                	li	a5,2
    80024044:	0337d163          	bge	a5,s3,80024066 <js_typed_array_copyWithin+0x86>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80024048:	7494                	ld	a3,40(s1)
js_typed_array_copyWithin():
quickjs-nuttx/quickjs.c:53458 (discriminator 1)
    8002404a:	478d                	li	a5,3
    8002404c:	0006871b          	sext.w	a4,a3
    80024050:	00f70b63          	beq	a4,a5,80024066 <js_typed_array_copyWithin+0x86>
quickjs-nuttx/quickjs.c:53459
        if (JS_ToInt32Clamp(ctx, &final, argv[2], 0, len, len))
    80024054:	7090                	ld	a2,32(s1)
    80024056:	8822                	mv	a6,s0
    80024058:	87a2                	mv	a5,s0
    8002405a:	4701                	li	a4,0
    8002405c:	086c                	addi	a1,sp,28
    8002405e:	854a                	mv	a0,s2
    80024060:	b87ff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80024064:	fd49                	bnez	a0,80023ffe <js_typed_array_copyWithin+0x1e>
quickjs-nuttx/quickjs.c:53463
    count = min_int(final - from, len - to);
    80024066:	4672                	lw	a2,28(sp)
    80024068:	45e2                	lw	a1,24(sp)
    8002406a:	47d2                	lw	a5,20(sp)
quickjs-nuttx/cutils.h:79
    8002406c:	40b606bb          	subw	a3,a2,a1
quickjs-nuttx/quickjs.c:53463
    80024070:	40f4073b          	subw	a4,s0,a5
    80024074:	8636                	mv	a2,a3
    80024076:	00d75463          	bge	a4,a3,8002407e <js_typed_array_copyWithin+0x9e>
    8002407a:	0007061b          	sext.w	a2,a4
quickjs-nuttx/quickjs.c:53464
    if (count > 0) {
    8002407e:	04c05563          	blez	a2,800240c8 <js_typed_array_copyWithin+0xe8>
quickjs-nuttx/quickjs.c:53465
        p = JS_VALUE_GET_OBJ(this_val);
    80024082:	6682                	ld	a3,0(sp)
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80024084:	7a98                	ld	a4,48(a3)
    80024086:	6f18                	ld	a4,24(a4)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    80024088:	7b18                	ld	a4,48(a4)
js_typed_array_copyWithin():
quickjs-nuttx/quickjs.c:53466
        if (typed_array_is_detached(ctx, p))
    8002408a:	00474703          	lbu	a4,4(a4)
    8002408e:	c719                	beqz	a4,8002409c <js_typed_array_copyWithin+0xbc>
quickjs-nuttx/quickjs.c:53467
            return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80024090:	854a                	mv	a0,s2
    80024092:	ef3f40ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:53473
    return JS_DupValue(ctx, this_val);
    80024096:	f02a                	sd	a0,32(sp)
    80024098:	f42e                	sd	a1,40(sp)
    8002409a:	b7ad                	j	80024004 <js_typed_array_copyWithin+0x24>
quickjs-nuttx/quickjs.c:53468
        shift = typed_array_size_log2(p->class_id);
    8002409c:	0066d703          	lhu	a4,6(a3)
    800240a0:	feb7051b          	addiw	a0,a4,-21
    800240a4:	00051717          	auipc	a4,0x51
    800240a8:	13c70713          	addi	a4,a4,316 # 800751e0 <typed_array_size_log2>
    800240ac:	972a                	add	a4,a4,a0
    800240ae:	00074703          	lbu	a4,0(a4)
quickjs-nuttx/quickjs.c:53469
        memmove(p->u.array.u.uint8_ptr + (to << shift),
    800240b2:	7e88                	ld	a0,56(a3)
quickjs-nuttx/quickjs.c:53470
                p->u.array.u.uint8_ptr + (from << shift),
    800240b4:	00e595bb          	sllw	a1,a1,a4
quickjs-nuttx/quickjs.c:53469
        memmove(p->u.array.u.uint8_ptr + (to << shift),
    800240b8:	00e797bb          	sllw	a5,a5,a4
    800240bc:	95aa                	add	a1,a1,a0
    800240be:	00e6163b          	sllw	a2,a2,a4
    800240c2:	953e                	add	a0,a0,a5
    800240c4:	33d3f0ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/quickjs.c:53473
    return JS_DupValue(ctx, this_val);
    800240c8:	6502                	ld	a0,0(sp)
    800240ca:	65a2                	ld	a1,8(sp)
    800240cc:	b4ee60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800240d0:	b7d9                	j	80024096 <js_typed_array_copyWithin+0xb6>

00000000800240d2 <js_string_slice>:
js_string_slice():
quickjs-nuttx/quickjs.c:42221
{
    800240d2:	7119                	addi	sp,sp,-128
    800240d4:	f8a2                	sd	s0,112(sp)
    800240d6:	f4a6                	sd	s1,104(sp)
    800240d8:	f0ca                	sd	s2,96(sp)
    800240da:	fc86                	sd	ra,120(sp)
    800240dc:	893a                	mv	s2,a4
    800240de:	842a                	mv	s0,a0
    800240e0:	e82e                	sd	a1,16(sp)
    800240e2:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:42226
    str = JS_ToStringCheckObject(ctx, this_val);
    800240e4:	d9dfc0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    800240e8:	f82a                	sd	a0,48(sp)
    800240ea:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42227
    if (JS_IsException(str))
    800240ec:	0005871b          	sext.w	a4,a1
    800240f0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42226
    str = JS_ToStringCheckObject(ctx, this_val);
    800240f2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:42227
    if (JS_IsException(str))
    800240f4:	00f71c63          	bne	a4,a5,8002410c <js_string_slice+0x3a>
quickjs-nuttx/quickjs.c:42228
        return str;
    800240f8:	e8aa                	sd	a0,80(sp)
    800240fa:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:42245 (discriminator 1)
}
    800240fc:	70e6                	ld	ra,120(sp)
    800240fe:	7446                	ld	s0,112(sp)
    80024100:	6546                	ld	a0,80(sp)
    80024102:	65e6                	ld	a1,88(sp)
    80024104:	74a6                	ld	s1,104(sp)
    80024106:	7906                	ld	s2,96(sp)
    80024108:	6109                	addi	sp,sp,128
    8002410a:	8082                	ret
quickjs-nuttx/quickjs.c:42230
    len = p->len;
    8002410c:	00452803          	lw	a6,4(a0)
quickjs-nuttx/quickjs.c:42231
    if (JS_ToInt32Clamp(ctx, &start, argv[0], 0, len, len)) {
    80024110:	00093603          	ld	a2,0(s2)
    80024114:	00893683          	ld	a3,8(s2)
quickjs-nuttx/quickjs.c:42230
    len = p->len;
    80024118:	1806                	slli	a6,a6,0x21
    8002411a:	02185813          	srli	a6,a6,0x21
quickjs-nuttx/quickjs.c:42231
    if (JS_ToInt32Clamp(ctx, &start, argv[0], 0, len, len)) {
    8002411e:	87c2                	mv	a5,a6
    80024120:	4701                	li	a4,0
    80024122:	102c                	addi	a1,sp,40
    80024124:	8522                	mv	a0,s0
    80024126:	e442                	sd	a6,8(sp)
    80024128:	abfff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    8002412c:	6822                	ld	a6,8(sp)
    8002412e:	c911                	beqz	a0,80024142 <js_string_slice+0x70>
quickjs-nuttx/quickjs.c:42232
        JS_FreeValue(ctx, str);
    80024130:	75c2                	ld	a1,48(sp)
    80024132:	7662                	ld	a2,56(sp)
    80024134:	8522                	mv	a0,s0
    80024136:	e68e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42233
        return JS_EXCEPTION;
    8002413a:	4799                	li	a5,6
    8002413c:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:42244
    return ret;
    8002413e:	ecbe                	sd	a5,88(sp)
    80024140:	bf75                	j	800240fc <js_string_slice+0x2a>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    80024142:	01893683          	ld	a3,24(s2)
js_string_slice():
quickjs-nuttx/quickjs.c:42235
    end = len;
    80024146:	d642                	sw	a6,44(sp)
quickjs-nuttx/quickjs.c:42236
    if (!JS_IsUndefined(argv[1])) {
    80024148:	478d                	li	a5,3
    8002414a:	0006871b          	sext.w	a4,a3
    8002414e:	00f70b63          	beq	a4,a5,80024164 <js_string_slice+0x92>
quickjs-nuttx/quickjs.c:42237
        if (JS_ToInt32Clamp(ctx, &end, argv[1], 0, len, len)) {
    80024152:	01093603          	ld	a2,16(s2)
    80024156:	87c2                	mv	a5,a6
    80024158:	4701                	li	a4,0
    8002415a:	106c                	addi	a1,sp,44
    8002415c:	8522                	mv	a0,s0
    8002415e:	a89ff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80024162:	f579                	bnez	a0,80024130 <js_string_slice+0x5e>
quickjs-nuttx/quickjs.c:42242
    ret = js_sub_string(ctx, p, start, max_int(end, start));
    80024164:	56b2                	lw	a3,44(sp)
    80024166:	5622                	lw	a2,40(sp)
    80024168:	0006879b          	sext.w	a5,a3
    8002416c:	00c7d363          	bge	a5,a2,80024172 <js_string_slice+0xa0>
    80024170:	86b2                	mv	a3,a2
    80024172:	2681                	sext.w	a3,a3
    80024174:	85a6                	mv	a1,s1
    80024176:	8522                	mv	a0,s0
    80024178:	f97fb0ef          	jal	ra,8002010e <js_sub_string>
    8002417c:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:42243
    JS_FreeValue(ctx, str);
    8002417e:	7662                	ld	a2,56(sp)
    80024180:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:42242
    ret = js_sub_string(ctx, p, start, max_int(end, start));
    80024182:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:42243
    JS_FreeValue(ctx, str);
    80024184:	8522                	mv	a0,s0
    80024186:	e18e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42244
    return ret;
    8002418a:	6786                	ld	a5,64(sp)
    8002418c:	e8be                	sd	a5,80(sp)
    8002418e:	67a6                	ld	a5,72(sp)
    80024190:	b77d                	j	8002413e <js_string_slice+0x6c>

0000000080024192 <js_string_substr>:
js_string_substr():
quickjs-nuttx/quickjs.c:42193
{
    80024192:	7119                	addi	sp,sp,-128
    80024194:	f4a6                	sd	s1,104(sp)
    80024196:	f0ca                	sd	s2,96(sp)
    80024198:	ecce                	sd	s3,88(sp)
    8002419a:	fc86                	sd	ra,120(sp)
    8002419c:	89ba                	mv	s3,a4
    8002419e:	f8a2                	sd	s0,112(sp)
    800241a0:	84aa                	mv	s1,a0
    800241a2:	e02e                	sd	a1,0(sp)
    800241a4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:42198
    str = JS_ToStringCheckObject(ctx, this_val);
    800241a6:	cdbfc0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    800241aa:	f02a                	sd	a0,32(sp)
    800241ac:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:42199
    if (JS_IsException(str))
    800241ae:	0005871b          	sext.w	a4,a1
    800241b2:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42198
    str = JS_ToStringCheckObject(ctx, this_val);
    800241b4:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:42199
    if (JS_IsException(str))
    800241b6:	00f71d63          	bne	a4,a5,800241d0 <js_string_substr+0x3e>
quickjs-nuttx/quickjs.c:42200
        return str;
    800241ba:	e0aa                	sd	a0,64(sp)
    800241bc:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:42217 (discriminator 1)
}
    800241be:	70e6                	ld	ra,120(sp)
    800241c0:	7446                	ld	s0,112(sp)
    800241c2:	6506                	ld	a0,64(sp)
    800241c4:	65a6                	ld	a1,72(sp)
    800241c6:	74a6                	ld	s1,104(sp)
    800241c8:	7906                	ld	s2,96(sp)
    800241ca:	69e6                	ld	s3,88(sp)
    800241cc:	6109                	addi	sp,sp,128
    800241ce:	8082                	ret
quickjs-nuttx/quickjs.c:42202
    len = p->len;
    800241d0:	4140                	lw	s0,4(a0)
quickjs-nuttx/quickjs.c:42203
    if (JS_ToInt32Clamp(ctx, &a, argv[0], 0, len, len)) {
    800241d2:	0009b603          	ld	a2,0(s3)
    800241d6:	0089b683          	ld	a3,8(s3)
quickjs-nuttx/quickjs.c:42202
    len = p->len;
    800241da:	1406                	slli	s0,s0,0x21
    800241dc:	9005                	srli	s0,s0,0x21
quickjs-nuttx/quickjs.c:42203
    if (JS_ToInt32Clamp(ctx, &a, argv[0], 0, len, len)) {
    800241de:	8822                	mv	a6,s0
    800241e0:	87a2                	mv	a5,s0
    800241e2:	4701                	li	a4,0
    800241e4:	082c                	addi	a1,sp,24
    800241e6:	8526                	mv	a0,s1
    800241e8:	9ffff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    800241ec:	c911                	beqz	a0,80024200 <js_string_substr+0x6e>
quickjs-nuttx/quickjs.c:42204
        JS_FreeValue(ctx, str);
    800241ee:	7582                	ld	a1,32(sp)
    800241f0:	7622                	ld	a2,40(sp)
    800241f2:	8526                	mv	a0,s1
    800241f4:	daae70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42205
        return JS_EXCEPTION;
    800241f8:	4799                	li	a5,6
    800241fa:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:42216
    return ret;
    800241fc:	e4be                	sd	a5,72(sp)
    800241fe:	b7c1                	j	800241be <js_string_substr+0x2c>
quickjs-nuttx/quickjs.c:42207
    n = len - a;
    80024200:	47e2                	lw	a5,24(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    80024202:	0189b683          	ld	a3,24(s3)
js_string_substr():
quickjs-nuttx/quickjs.c:42208
    if (!JS_IsUndefined(argv[1])) {
    80024206:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:42207
    n = len - a;
    80024208:	40f407bb          	subw	a5,s0,a5
    8002420c:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:42208
    if (!JS_IsUndefined(argv[1])) {
    8002420e:	0006861b          	sext.w	a2,a3
    80024212:	00e60b63          	beq	a2,a4,80024228 <js_string_substr+0x96>
quickjs-nuttx/quickjs.c:42209
        if (JS_ToInt32Clamp(ctx, &n, argv[1], 0, len - a, 0)) {
    80024216:	0109b603          	ld	a2,16(s3)
    8002421a:	4801                	li	a6,0
    8002421c:	4701                	li	a4,0
    8002421e:	086c                	addi	a1,sp,28
    80024220:	8526                	mv	a0,s1
    80024222:	9c5ff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80024226:	f561                	bnez	a0,800241ee <js_string_substr+0x5c>
quickjs-nuttx/quickjs.c:42214
    ret = js_sub_string(ctx, p, a, a + n);
    80024228:	4662                	lw	a2,24(sp)
    8002422a:	46f2                	lw	a3,28(sp)
    8002422c:	85ca                	mv	a1,s2
    8002422e:	8526                	mv	a0,s1
    80024230:	9eb1                	addw	a3,a3,a2
    80024232:	eddfb0ef          	jal	ra,8002010e <js_sub_string>
    80024236:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42215
    JS_FreeValue(ctx, str);
    80024238:	7622                	ld	a2,40(sp)
    8002423a:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:42214
    ret = js_sub_string(ctx, p, a, a + n);
    8002423c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:42215
    JS_FreeValue(ctx, str);
    8002423e:	8526                	mv	a0,s1
    80024240:	d5ee70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42216
    return ret;
    80024244:	77c2                	ld	a5,48(sp)
    80024246:	e0be                	sd	a5,64(sp)
    80024248:	77e2                	ld	a5,56(sp)
    8002424a:	bf4d                	j	800241fc <js_string_substr+0x6a>

000000008002424c <js_string_substring>:
js_string_substring():
quickjs-nuttx/quickjs.c:42159
{
    8002424c:	7119                	addi	sp,sp,-128
    8002424e:	f8a2                	sd	s0,112(sp)
    80024250:	f4a6                	sd	s1,104(sp)
    80024252:	ecce                	sd	s3,88(sp)
    80024254:	fc86                	sd	ra,120(sp)
    80024256:	89ba                	mv	s3,a4
    80024258:	f0ca                	sd	s2,96(sp)
    8002425a:	842a                	mv	s0,a0
    8002425c:	e02e                	sd	a1,0(sp)
    8002425e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:42164
    str = JS_ToStringCheckObject(ctx, this_val);
    80024260:	c21fc0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    80024264:	f02a                	sd	a0,32(sp)
    80024266:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:42165
    if (JS_IsException(str))
    80024268:	0005871b          	sext.w	a4,a1
    8002426c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42164
    str = JS_ToStringCheckObject(ctx, this_val);
    8002426e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:42165
    if (JS_IsException(str))
    80024270:	00f71d63          	bne	a4,a5,8002428a <js_string_substring+0x3e>
quickjs-nuttx/quickjs.c:42166
        return str;
    80024274:	e0aa                	sd	a0,64(sp)
    80024276:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:42189 (discriminator 1)
}
    80024278:	70e6                	ld	ra,120(sp)
    8002427a:	7446                	ld	s0,112(sp)
    8002427c:	6506                	ld	a0,64(sp)
    8002427e:	65a6                	ld	a1,72(sp)
    80024280:	74a6                	ld	s1,104(sp)
    80024282:	7906                	ld	s2,96(sp)
    80024284:	69e6                	ld	s3,88(sp)
    80024286:	6109                	addi	sp,sp,128
    80024288:	8082                	ret
quickjs-nuttx/quickjs.c:42168
    if (JS_ToInt32Clamp(ctx, &a, argv[0], 0, p->len, 0)) {
    8002428a:	415c                	lw	a5,4(a0)
    8002428c:	80000937          	lui	s2,0x80000
    80024290:	0009b603          	ld	a2,0(s3)
    80024294:	0089b683          	ld	a3,8(s3)
    80024298:	fff94913          	not	s2,s2
    8002429c:	4801                	li	a6,0
    8002429e:	00f977b3          	and	a5,s2,a5
    800242a2:	4701                	li	a4,0
    800242a4:	082c                	addi	a1,sp,24
    800242a6:	8522                	mv	a0,s0
    800242a8:	93fff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    800242ac:	c911                	beqz	a0,800242c0 <js_string_substring+0x74>
quickjs-nuttx/quickjs.c:42169
        JS_FreeValue(ctx, str);
    800242ae:	7582                	ld	a1,32(sp)
    800242b0:	7622                	ld	a2,40(sp)
    800242b2:	8522                	mv	a0,s0
    800242b4:	ceae70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42170
        return JS_EXCEPTION;
    800242b8:	4799                	li	a5,6
    800242ba:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:42188
    return ret;
    800242bc:	e4be                	sd	a5,72(sp)
    800242be:	bf6d                	j	80024278 <js_string_substring+0x2c>
quickjs-nuttx/quickjs.c:42172
    b = p->len;
    800242c0:	40dc                	lw	a5,4(s1)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    800242c2:	0189b683          	ld	a3,24(s3)
js_string_substring():
quickjs-nuttx/quickjs.c:42173
    if (!JS_IsUndefined(argv[1])) {
    800242c6:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:42172
    b = p->len;
    800242c8:	00f977b3          	and	a5,s2,a5
    800242cc:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:42173
    if (!JS_IsUndefined(argv[1])) {
    800242ce:	0006861b          	sext.w	a2,a3
    800242d2:	00e60b63          	beq	a2,a4,800242e8 <js_string_substring+0x9c>
quickjs-nuttx/quickjs.c:42174
        if (JS_ToInt32Clamp(ctx, &b, argv[1], 0, p->len, 0)) {
    800242d6:	0109b603          	ld	a2,16(s3)
    800242da:	4801                	li	a6,0
    800242dc:	4701                	li	a4,0
    800242de:	086c                	addi	a1,sp,28
    800242e0:	8522                	mv	a0,s0
    800242e2:	905ff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    800242e6:	f561                	bnez	a0,800242ae <js_string_substring+0x62>
quickjs-nuttx/quickjs.c:42179
    if (a < b) {
    800242e8:	4662                	lw	a2,24(sp)
    800242ea:	46f2                	lw	a3,28(sp)
    800242ec:	87b2                	mv	a5,a2
    800242ee:	00d64463          	blt	a2,a3,800242f6 <js_string_substring+0xaa>
    800242f2:	8636                	mv	a2,a3
    800242f4:	86be                	mv	a3,a5
quickjs-nuttx/quickjs.c:42186
    ret = js_sub_string(ctx, p, start, end);
    800242f6:	85a6                	mv	a1,s1
    800242f8:	8522                	mv	a0,s0
    800242fa:	e15fb0ef          	jal	ra,8002010e <js_sub_string>
    800242fe:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:42187
    JS_FreeValue(ctx, str);
    80024300:	7622                	ld	a2,40(sp)
    80024302:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:42186
    ret = js_sub_string(ctx, p, start, end);
    80024304:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:42187
    JS_FreeValue(ctx, str);
    80024306:	8522                	mv	a0,s0
    80024308:	c96e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42188
    return ret;
    8002430c:	77c2                	ld	a5,48(sp)
    8002430e:	e0be                	sd	a5,64(sp)
    80024310:	77e2                	ld	a5,56(sp)
    80024312:	b76d                	j	800242bc <js_string_substring+0x70>

0000000080024314 <JS_ToInt64SatFree>:
JS_ToInt64SatFree():
quickjs-nuttx/quickjs.c:10751
{
    80024314:	715d                	addi	sp,sp,-80
    80024316:	e0a2                	sd	s0,64(sp)
    80024318:	fc26                	sd	s1,56(sp)
    8002431a:	f84a                	sd	s2,48(sp)
    8002431c:	f44e                	sd	s3,40(sp)
    8002431e:	f052                	sd	s4,32(sp)
    80024320:	ec56                	sd	s5,24(sp)
    80024322:	e85a                	sd	s6,16(sp)
    80024324:	e486                	sd	ra,72(sp)
    80024326:	892a                	mv	s2,a0
    80024328:	842e                	mv	s0,a1
    8002432a:	e032                	sd	a2,0(sp)
    8002432c:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:10756
    switch(tag) {
    8002432e:	4a1d                	li	s4,7
    80024330:	5add                	li	s5,-9
    80024332:	4b0d                	li	s6,3
    80024334:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:10755
    tag = JS_VALUE_GET_NORM_TAG(val);
    80024336:	0004879b          	sext.w	a5,s1
quickjs-nuttx/quickjs.c:10756
    switch(tag) {
    8002433a:	05478863          	beq	a5,s4,8002438a <JS_ToInt64SatFree+0x76>
    8002433e:	02fa6563          	bltu	s4,a5,80024368 <JS_ToInt64SatFree+0x54>
    80024342:	04fb7163          	bgeu	s6,a5,80024384 <JS_ToInt64SatFree+0x70>
    80024346:	01378d63          	beq	a5,s3,80024360 <JS_ToInt64SatFree+0x4c>
quickjs-nuttx/quickjs.c:10791
        val = JS_ToNumberFree(ctx, val);
    8002434a:	6582                	ld	a1,0(sp)
    8002434c:	8626                	mv	a2,s1
    8002434e:	854a                	mv	a0,s2
    80024350:	f3bfd0ef          	jal	ra,8002228a <JS_ToNumberFree>
    80024354:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:10792
        if (JS_IsException(val)) {
    80024356:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:10791
        val = JS_ToNumberFree(ctx, val);
    8002435a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:10792
        if (JS_IsException(val)) {
    8002435c:	fd379de3          	bne	a5,s3,80024336 <JS_ToInt64SatFree+0x22>
quickjs-nuttx/quickjs.c:10793
            *pres = 0;
    80024360:	00043023          	sd	zero,0(s0)
quickjs-nuttx/quickjs.c:10794
            return -1;
    80024364:	557d                	li	a0,-1
    80024366:	a80d                	j	80024398 <JS_ToInt64SatFree+0x84>
quickjs-nuttx/quickjs.c:10756
    switch(tag) {
    80024368:	ff5791e3          	bne	a5,s5,8002434a <JS_ToInt64SatFree+0x36>
quickjs-nuttx/quickjs.c:10785
            bf_get_int64(pres, &p->num, 0);
    8002436c:	6582                	ld	a1,0(sp)
    8002436e:	4601                	li	a2,0
    80024370:	8522                	mv	a0,s0
    80024372:	05a1                	addi	a1,a1,8
    80024374:	4fb340ef          	jal	ra,8005906e <bf_get_int64>
quickjs-nuttx/quickjs.c:10786
            JS_FreeValue(ctx, val);
    80024378:	6582                	ld	a1,0(sp)
    8002437a:	8626                	mv	a2,s1
    8002437c:	854a                	mv	a0,s2
    8002437e:	c20e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10788
        return 0;
    80024382:	a811                	j	80024396 <JS_ToInt64SatFree+0x82>
quickjs-nuttx/quickjs.c:10761
        *pres = JS_VALUE_GET_INT(val);
    80024384:	4782                	lw	a5,0(sp)
quickjs-nuttx/quickjs.c:10777
                    *pres = (int64_t)d;
    80024386:	e01c                	sd	a5,0(s0)
    80024388:	a039                	j	80024396 <JS_ToInt64SatFree+0x82>
quickjs-nuttx/quickjs.c:10768
            double d = JS_VALUE_GET_FLOAT64(val);
    8002438a:	2782                	fld	fa5,0(sp)
quickjs-nuttx/quickjs.c:10769
            if (isnan(d)) {
    8002438c:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80024390:	ef91                	bnez	a5,800243ac <JS_ToInt64SatFree+0x98>
quickjs-nuttx/quickjs.c:10770
                *pres = 0;
    80024392:	00043023          	sd	zero,0(s0)
quickjs-nuttx/quickjs.c:10780
        return 0;
    80024396:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:10798
}
    80024398:	60a6                	ld	ra,72(sp)
    8002439a:	6406                	ld	s0,64(sp)
    8002439c:	74e2                	ld	s1,56(sp)
    8002439e:	7942                	ld	s2,48(sp)
    800243a0:	79a2                	ld	s3,40(sp)
    800243a2:	7a02                	ld	s4,32(sp)
    800243a4:	6ae2                	ld	s5,24(sp)
    800243a6:	6b42                	ld	s6,16(sp)
    800243a8:	6161                	addi	sp,sp,80
    800243aa:	8082                	ret
quickjs-nuttx/quickjs.c:10772
                if (d < INT64_MIN)
    800243ac:	00070797          	auipc	a5,0x70
    800243b0:	88c7b707          	fld	fa4,-1908(a5) # 80093c38 <_erodata+0xc6>
    800243b4:	a2e797d3          	flt.d	a5,fa5,fa4
    800243b8:	c781                	beqz	a5,800243c0 <JS_ToInt64SatFree+0xac>
quickjs-nuttx/quickjs.c:10773
                    *pres = INT64_MIN;
    800243ba:	57fd                	li	a5,-1
    800243bc:	17fe                	slli	a5,a5,0x3f
    800243be:	b7e1                	j	80024386 <JS_ToInt64SatFree+0x72>
quickjs-nuttx/quickjs.c:10774
                else if (d >= 0x1p63) /* must use INT64_MAX + 1 because INT64_MAX cannot be exactly represented as a double */
    800243c0:	00070797          	auipc	a5,0x70
    800243c4:	8807b707          	fld	fa4,-1920(a5) # 80093c40 <_erodata+0xce>
    800243c8:	a2f707d3          	fle.d	a5,fa4,fa5
    800243cc:	c781                	beqz	a5,800243d4 <JS_ToInt64SatFree+0xc0>
quickjs-nuttx/quickjs.c:10775
                    *pres = INT64_MAX;
    800243ce:	57fd                	li	a5,-1
    800243d0:	8385                	srli	a5,a5,0x1
    800243d2:	bf55                	j	80024386 <JS_ToInt64SatFree+0x72>
quickjs-nuttx/quickjs.c:10777
                    *pres = (int64_t)d;
    800243d4:	c22797d3          	fcvt.l.d	a5,fa5,rtz
    800243d8:	b77d                	j	80024386 <JS_ToInt64SatFree+0x72>

00000000800243da <JS_ToInt64Sat>:
JS_ToInt64Sat():
quickjs-nuttx/quickjs.c:10801
{
    800243da:	7139                	addi	sp,sp,-64
    800243dc:	f822                	sd	s0,48(sp)
    800243de:	f426                	sd	s1,40(sp)
    800243e0:	842a                	mv	s0,a0
    800243e2:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:10802
    return JS_ToInt64SatFree(ctx, pres, JS_DupValue(ctx, val));
    800243e4:	8532                	mv	a0,a2
    800243e6:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:10801
{
    800243e8:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:10802
    return JS_ToInt64SatFree(ctx, pres, JS_DupValue(ctx, val));
    800243ea:	830e60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800243ee:	862a                	mv	a2,a0
    800243f0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:10803
}
    800243f2:	7442                	ld	s0,48(sp)
    800243f4:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:10802
    return JS_ToInt64SatFree(ctx, pres, JS_DupValue(ctx, val));
    800243f6:	86ae                	mv	a3,a1
    800243f8:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:10803
}
    800243fa:	74a2                	ld	s1,40(sp)
    800243fc:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:10802
    return JS_ToInt64SatFree(ctx, pres, JS_DupValue(ctx, val));
    800243fe:	f17ff06f          	j	80024314 <JS_ToInt64SatFree>

0000000080024402 <JS_ToIndex>:
JS_ToIndex():
quickjs-nuttx/quickjs.c:11113
{
    80024402:	7139                	addi	sp,sp,-64
    80024404:	f822                	sd	s0,48(sp)
    80024406:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:11115
    if (JS_ToInt64Sat(ctx, &v, val))
    80024408:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:11113
{
    8002440a:	f426                	sd	s1,40(sp)
    8002440c:	fc06                	sd	ra,56(sp)
    8002440e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:11115
    if (JS_ToInt64Sat(ctx, &v, val))
    80024410:	fcbff0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80024414:	ed19                	bnez	a0,80024432 <JS_ToIndex+0x30>
quickjs-nuttx/quickjs.c:11117
    if (v < 0 || v > MAX_SAFE_INTEGER) {
    80024416:	6762                	ld	a4,24(sp)
    80024418:	57fd                	li	a5,-1
    8002441a:	83ad                	srli	a5,a5,0xb
    8002441c:	00e7fd63          	bgeu	a5,a4,80024436 <JS_ToIndex+0x34>
quickjs-nuttx/quickjs.c:11118
        JS_ThrowRangeError(ctx, "invalid array index");
    80024420:	00046597          	auipc	a1,0x46
    80024424:	7f858593          	addi	a1,a1,2040 # 8006ac18 <qjsc_repl+0x5668>
    80024428:	8526                	mv	a0,s1
    8002442a:	ca4f50ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:11119
        *plen = 0;
    8002442e:	00043023          	sd	zero,0(s0)
quickjs-nuttx/quickjs.c:11116
        return -1;
    80024432:	557d                	li	a0,-1
    80024434:	a011                	j	80024438 <JS_ToIndex+0x36>
quickjs-nuttx/quickjs.c:11122
    *plen = v;
    80024436:	e018                	sd	a4,0(s0)
quickjs-nuttx/quickjs.c:11124
}
    80024438:	70e2                	ld	ra,56(sp)
    8002443a:	7442                	ld	s0,48(sp)
    8002443c:	74a2                	ld	s1,40(sp)
    8002443e:	6121                	addi	sp,sp,64
    80024440:	8082                	ret

0000000080024442 <js_atomics_get_ptr>:
js_atomics_get_ptr():
quickjs-nuttx/quickjs.c:55051
{
    80024442:	7159                	addi	sp,sp,-112
    80024444:	eca6                	sd	s1,88(sp)
    80024446:	e8ca                	sd	s2,80(sp)
    80024448:	e4ce                	sd	s3,72(sp)
    8002444a:	ec3e                	sd	a5,24(sp)
    8002444c:	89b2                	mv	s3,a2
    8002444e:	f486                	sd	ra,104(sp)
    80024450:	f0a2                	sd	s0,96(sp)
    80024452:	e0d2                	sd	s4,64(sp)
    80024454:	fc56                	sd	s5,56(sp)
    80024456:	e83a                	sd	a4,16(sp)
    80024458:	e042                	sd	a6,0(sp)
    8002445a:	e446                	sd	a7,8(sp)
quickjs-nuttx/quickjs.c:55060
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8002445c:	2781                	sext.w	a5,a5
    8002445e:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:55051
{
    80024460:	8936                	mv	s2,a3
    80024462:	84aa                	mv	s1,a0
    80024464:	56c6                	lw	a3,112(sp)
quickjs-nuttx/quickjs.c:55060
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    80024466:	04c79363          	bne	a5,a2,800244ac <js_atomics_get_ptr+0x6a>
quickjs-nuttx/quickjs.c:55064
        err = (p->class_id != JS_CLASS_INT32_ARRAY &&
    8002446a:	00675783          	lhu	a5,6(a4)
    8002446e:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:55062
    p = JS_VALUE_GET_OBJ(obj);
    80024470:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:55063
    if (is_waitable)
    80024472:	c69d                	beqz	a3,800244a0 <js_atomics_get_ptr+0x5e>
quickjs-nuttx/quickjs.c:55064
        err = (p->class_id != JS_CLASS_INT32_ARRAY &&
    80024474:	3799                	addiw	a5,a5,-26
    80024476:	9bf5                	andi	a5,a5,-3
    80024478:	0107979b          	slliw	a5,a5,0x10
    8002447c:	0107d79b          	srliw	a5,a5,0x10
    80024480:	e795                	bnez	a5,800244ac <js_atomics_get_ptr+0x6a>
quickjs-nuttx/quickjs.c:55075
    abuf = ta->buffer->u.array_buffer;
    80024482:	781c                	ld	a5,48(s0)
    80024484:	6f9c                	ld	a5,24(a5)
    80024486:	0307ba83          	ld	s5,48(a5)
quickjs-nuttx/quickjs.c:55076
    if (!abuf->shared) {
    8002448a:	005ac783          	lbu	a5,5(s5)
    8002448e:	eba1                	bnez	a5,800244de <js_atomics_get_ptr+0x9c>
quickjs-nuttx/quickjs.c:55077
        if (is_waitable == 2) {
    80024490:	4789                	li	a5,2
    80024492:	02f69f63          	bne	a3,a5,800244d0 <js_atomics_get_ptr+0x8e>
quickjs-nuttx/quickjs.c:55078
            JS_ThrowTypeError(ctx, "not a SharedArrayBuffer TypedArray");
    80024496:	00046597          	auipc	a1,0x46
    8002449a:	7ba58593          	addi	a1,a1,1978 # 8006ac50 <qjsc_repl+0x56a0>
    8002449e:	a819                	j	800244b4 <js_atomics_get_ptr+0x72>
quickjs-nuttx/quickjs.c:55067
        err = !(p->class_id >= JS_CLASS_INT8_ARRAY &&
    800244a0:	37a9                	addiw	a5,a5,-22
quickjs-nuttx/quickjs.c:55069
    if (err) {
    800244a2:	17c2                	slli	a5,a5,0x30
    800244a4:	93c1                	srli	a5,a5,0x30
    800244a6:	471d                	li	a4,7
    800244a8:	fcf77de3          	bgeu	a4,a5,80024482 <js_atomics_get_ptr+0x40>
quickjs-nuttx/quickjs.c:55071
        JS_ThrowTypeError(ctx, "integer TypedArray expected");
    800244ac:	00046597          	auipc	a1,0x46
    800244b0:	78458593          	addi	a1,a1,1924 # 8006ac30 <qjsc_repl+0x5680>
quickjs-nuttx/quickjs.c:55078
            JS_ThrowTypeError(ctx, "not a SharedArrayBuffer TypedArray");
    800244b4:	8526                	mv	a0,s1
    800244b6:	9b6f40ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:55079
            return NULL;
    800244ba:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:55103
}
    800244bc:	70a6                	ld	ra,104(sp)
    800244be:	7406                	ld	s0,96(sp)
    800244c0:	64e6                	ld	s1,88(sp)
    800244c2:	6946                	ld	s2,80(sp)
    800244c4:	69a6                	ld	s3,72(sp)
    800244c6:	6a06                	ld	s4,64(sp)
    800244c8:	7ae2                	ld	s5,56(sp)
    800244ca:	853e                	mv	a0,a5
    800244cc:	6165                	addi	sp,sp,112
    800244ce:	8082                	ret
quickjs-nuttx/quickjs.c:55081
        if (abuf->detached) {
    800244d0:	004ac783          	lbu	a5,4(s5)
    800244d4:	c789                	beqz	a5,800244de <js_atomics_get_ptr+0x9c>
quickjs-nuttx/quickjs.c:55082
            JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800244d6:	8526                	mv	a0,s1
    800244d8:	aadf40ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:55083
            return NULL;
    800244dc:	bff9                	j	800244ba <js_atomics_get_ptr+0x78>
quickjs-nuttx/quickjs.c:55086
    if (JS_ToIndex(ctx, &idx, idx_val)) {
    800244de:	6602                	ld	a2,0(sp)
    800244e0:	66a2                	ld	a3,8(sp)
    800244e2:	102c                	addi	a1,sp,40
    800244e4:	8526                	mv	a0,s1
    800244e6:	f1dff0ef          	jal	ra,80024402 <JS_ToIndex>
quickjs-nuttx/quickjs.c:55087
        return NULL;
    800244ea:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:55086
    if (JS_ToIndex(ctx, &idx, idx_val)) {
    800244ec:	f961                	bnez	a0,800244bc <js_atomics_get_ptr+0x7a>
quickjs-nuttx/quickjs.c:55090
    if (idx >= p->u.array.count) {
    800244ee:	77a2                	ld	a5,40(sp)
    800244f0:	04046703          	lwu	a4,64(s0)
    800244f4:	00e7ea63          	bltu	a5,a4,80024508 <js_atomics_get_ptr+0xc6>
quickjs-nuttx/quickjs.c:55091
        JS_ThrowRangeError(ctx, "out-of-bound access");
    800244f8:	8526                	mv	a0,s1
    800244fa:	00046597          	auipc	a1,0x46
    800244fe:	77e58593          	addi	a1,a1,1918 # 8006ac78 <qjsc_repl+0x56c8>
    80024502:	bccf50ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:55092
        return NULL;
    80024506:	bf55                	j	800244ba <js_atomics_get_ptr+0x78>
quickjs-nuttx/quickjs.c:55094
    size_log2 = typed_array_size_log2(p->class_id);
    80024508:	00645703          	lhu	a4,6(s0)
    8002450c:	feb7069b          	addiw	a3,a4,-21
    80024510:	00051717          	auipc	a4,0x51
    80024514:	cd070713          	addi	a4,a4,-816 # 800751e0 <typed_array_size_log2>
    80024518:	9736                	add	a4,a4,a3
    8002451a:	00074703          	lbu	a4,0(a4)
quickjs-nuttx/quickjs.c:55095
    ptr = p->u.array.u.uint8_ptr + ((uintptr_t)idx << size_log2);
    8002451e:	00e79533          	sll	a0,a5,a4
    80024522:	7c1c                	ld	a5,56(s0)
    80024524:	97aa                	add	a5,a5,a0
quickjs-nuttx/quickjs.c:55096
    if (pabuf)
    80024526:	000a0463          	beqz	s4,8002452e <js_atomics_get_ptr+0xec>
quickjs-nuttx/quickjs.c:55097
        *pabuf = abuf;
    8002452a:	015a3023          	sd	s5,0(s4)
quickjs-nuttx/quickjs.c:55098
    if (psize_log2)
    8002452e:	00098463          	beqz	s3,80024536 <js_atomics_get_ptr+0xf4>
quickjs-nuttx/quickjs.c:55099
        *psize_log2 = size_log2;
    80024532:	00e9a023          	sw	a4,0(s3)
quickjs-nuttx/quickjs.c:55100
    if (pclass_id)
    80024536:	f80903e3          	beqz	s2,800244bc <js_atomics_get_ptr+0x7a>
quickjs-nuttx/quickjs.c:55101
        *pclass_id = p->class_id;
    8002453a:	00645703          	lhu	a4,6(s0)
    8002453e:	00e92023          	sw	a4,0(s2) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    80024542:	bfad                	j	800244bc <js_atomics_get_ptr+0x7a>

0000000080024544 <js_atomics_notify>:
js_atomics_notify():
quickjs-nuttx/quickjs.c:55412
}

static JSValue js_atomics_notify(JSContext *ctx,
                                 JSValueConst this_obj,
                                 int argc, JSValueConst *argv)
{
    80024544:	7135                	addi	sp,sp,-160
quickjs-nuttx/quickjs.c:55419
    int32_t count, n;
    void *ptr;
    JSAtomicsWaiter *waiter;
    JSArrayBuffer *abuf;

    ptr = js_atomics_get_ptr(ctx, &abuf, NULL, NULL, argv[0], argv[1], 1);
    80024546:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:55412
{
    80024548:	e922                	sd	s0,144(sp)
    8002454a:	e526                	sd	s1,136(sp)
    8002454c:	ed06                	sd	ra,152(sp)
    8002454e:	e14a                	sd	s2,128(sp)
    80024550:	fcce                	sd	s3,120(sp)
    80024552:	f8d2                	sd	s4,112(sp)
    80024554:	f4d6                	sd	s5,104(sp)
quickjs-nuttx/quickjs.c:55419
    ptr = js_atomics_get_ptr(ctx, &abuf, NULL, NULL, argv[0], argv[1], 1);
    80024556:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:55412
{
    80024558:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:55419
    ptr = js_atomics_get_ptr(ctx, &abuf, NULL, NULL, argv[0], argv[1], 1);
    8002455a:	01073803          	ld	a6,16(a4)
    8002455e:	01873883          	ld	a7,24(a4)
    80024562:	641c                	ld	a5,8(s0)
    80024564:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:55412
{
    80024566:	e82e                	sd	a1,16(sp)
    80024568:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:55419
    ptr = js_atomics_get_ptr(ctx, &abuf, NULL, NULL, argv[0], argv[1], 1);
    8002456a:	4681                	li	a3,0
    8002456c:	4601                	li	a2,0
    8002456e:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs.c:55412
{
    80024570:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:55419
    ptr = js_atomics_get_ptr(ctx, &abuf, NULL, NULL, argv[0], argv[1], 1);
    80024572:	ed1ff0ef          	jal	ra,80024442 <js_atomics_get_ptr>
quickjs-nuttx/quickjs.c:55420
    if (!ptr)
    80024576:	ed19                	bnez	a0,80024594 <js_atomics_notify+0x50>
quickjs-nuttx/quickjs.c:55421
        return JS_EXCEPTION;
    80024578:	4799                	li	a5,6
    8002457a:	e082                	sd	zero,64(sp)
    8002457c:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:55454 (discriminator 1)
            pthread_cond_signal(&waiter->cond);
        }
        pthread_mutex_unlock(&js_atomics_mutex);
    }
    return JS_NewInt32(ctx, n);
}
    8002457e:	60ea                	ld	ra,152(sp)
    80024580:	644a                	ld	s0,144(sp)
    80024582:	6506                	ld	a0,64(sp)
    80024584:	65a6                	ld	a1,72(sp)
    80024586:	64aa                	ld	s1,136(sp)
    80024588:	690a                	ld	s2,128(sp)
    8002458a:	79e6                	ld	s3,120(sp)
    8002458c:	7a46                	ld	s4,112(sp)
    8002458e:	7aa6                	ld	s5,104(sp)
    80024590:	610d                	addi	sp,sp,160
    80024592:	8082                	ret
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    80024594:	7414                	ld	a3,40(s0)
js_atomics_notify():
quickjs-nuttx/quickjs.c:55423
    if (JS_IsUndefined(argv[2])) {
    80024596:	478d                	li	a5,3
    80024598:	8a2a                	mv	s4,a0
    8002459a:	0006871b          	sext.w	a4,a3
    8002459e:	02f71163          	bne	a4,a5,800245c0 <js_atomics_notify+0x7c>
quickjs-nuttx/quickjs.c:55424
        count = INT32_MAX;
    800245a2:	800007b7          	lui	a5,0x80000
    800245a6:	fff7c793          	not	a5,a5
    800245aa:	d23e                	sw	a5,36(sp)
quickjs-nuttx/quickjs.c:55429
    if (abuf->detached)
    800245ac:	77a2                	ld	a5,40(sp)
    800245ae:	0047c703          	lbu	a4,4(a5) # ffffffff80000004 <_ebss+0xfffffffeffefee9e>
    800245b2:	c705                	beqz	a4,800245da <js_atomics_notify+0x96>
quickjs-nuttx/quickjs.c:55430
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800245b4:	8526                	mv	a0,s1
    800245b6:	9cff40ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
    800245ba:	e0aa                	sd	a0,64(sp)
    800245bc:	e4ae                	sd	a1,72(sp)
    800245be:	b7c1                	j	8002457e <js_atomics_notify+0x3a>
quickjs-nuttx/quickjs.c:55426
        if (JS_ToInt32Clamp(ctx, &count, argv[2], 0, INT32_MAX, 0))
    800245c0:	7010                	ld	a2,32(s0)
    800245c2:	800007b7          	lui	a5,0x80000
    800245c6:	4801                	li	a6,0
    800245c8:	fff7c793          	not	a5,a5
    800245cc:	4701                	li	a4,0
    800245ce:	104c                	addi	a1,sp,36
    800245d0:	8526                	mv	a0,s1
    800245d2:	e14ff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    800245d6:	d979                	beqz	a0,800245ac <js_atomics_notify+0x68>
    800245d8:	b745                	j	80024578 <js_atomics_notify+0x34>
quickjs-nuttx/quickjs.c:55433
    if (abuf->shared && count > 0) {
    800245da:	0057c783          	lbu	a5,5(a5) # ffffffff80000005 <_ebss+0xfffffffeffefee9f>
quickjs-nuttx/quickjs.c:55432
    n = 0;
    800245de:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:55433
    if (abuf->shared && count > 0) {
    800245e0:	c3a9                	beqz	a5,80024622 <js_atomics_notify+0xde>
quickjs-nuttx/quickjs.c:55433 (discriminator 1)
    800245e2:	5792                	lw	a5,36(sp)
    800245e4:	02f05f63          	blez	a5,80024622 <js_atomics_notify+0xde>
quickjs-nuttx/quickjs.c:55434
        pthread_mutex_lock(&js_atomics_mutex);
    800245e8:	000dd517          	auipc	a0,0xdd
    800245ec:	a1850513          	addi	a0,a0,-1512 # 80101000 <js_atomics_mutex>
    800245f0:	1333c0ef          	jal	ra,80060f22 <pthread_mutex_lock>
quickjs-nuttx/quickjs.c:55436
        list_for_each_safe(el, el1, &js_atomics_waiter_list) {
    800245f4:	000dd797          	auipc	a5,0xdd
    800245f8:	a3478793          	addi	a5,a5,-1484 # 80101028 <js_atomics_waiter_list>
    800245fc:	6780                	ld	s0,8(a5)
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    800245fe:	03010913          	addi	s2,sp,48
quickjs-nuttx/list.h:44
    head->next = head;
    80024602:	fc4a                	sd	s2,56(sp)
js_atomics_notify():
quickjs-nuttx/quickjs.c:55436
    80024604:	00843a83          	ld	s5,8(s0)
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    80024608:	f84a                	sd	s2,48(sp)
js_atomics_notify():
quickjs-nuttx/quickjs.c:55436
    8002460a:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:55436 (discriminator 1)
    8002460c:	03341163          	bne	s0,s3,8002462e <js_atomics_notify+0xea>
quickjs-nuttx/quickjs.c:55447
        list_for_each(el, &waiter_list) {
    80024610:	7462                	ld	s0,56(sp)
quickjs-nuttx/quickjs.c:55447 (discriminator 1)
    80024612:	05241463          	bne	s0,s2,8002465a <js_atomics_notify+0x116>
quickjs-nuttx/quickjs.c:55451
        pthread_mutex_unlock(&js_atomics_mutex);
    80024616:	000dd517          	auipc	a0,0xdd
    8002461a:	9ea50513          	addi	a0,a0,-1558 # 80101000 <js_atomics_mutex>
    8002461e:	2b4400ef          	jal	ra,800648d2 <pthread_mutex_unlock>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80024622:	ca82                	sw	zero,84(sp)
    80024624:	c8a6                	sw	s1,80(sp)
    80024626:	67c6                	ld	a5,80(sp)
    80024628:	e482                	sd	zero,72(sp)
    8002462a:	e0be                	sd	a5,64(sp)
    8002462c:	bf89                	j	8002457e <js_atomics_notify+0x3a>
js_atomics_notify():
quickjs-nuttx/quickjs.c:55438
            if (waiter->ptr == ptr) {
    8002462e:	7c1c                	ld	a5,56(s0)
    80024630:	03479163          	bne	a5,s4,80024652 <js_atomics_notify+0x10e>
quickjs-nuttx/quickjs.c:55439
                list_del(&waiter->link);
    80024634:	8522                	mv	a0,s0
    80024636:	d0ee30ef          	jal	ra,80007b44 <list_del>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8002463a:	77c2                	ld	a5,48(sp)
js_atomics_notify():
quickjs-nuttx/quickjs.c:55440
                waiter->linked = FALSE;
    8002463c:	00042823          	sw	zero,16(s0)
quickjs-nuttx/quickjs.c:55442
                n++;
    80024640:	2485                	addiw	s1,s1,1
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80024642:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80024644:	e01c                	sd	a5,0(s0)
js_atomics_notify():
quickjs-nuttx/quickjs.c:55443
                if (n >= count)
    80024646:	5792                	lw	a5,36(sp)
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    80024648:	01243423          	sd	s2,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8002464c:	f822                	sd	s0,48(sp)
js_atomics_notify():
quickjs-nuttx/quickjs.c:55443
    8002464e:	fcf4d1e3          	bge	s1,a5,80024610 <js_atomics_notify+0xcc>
quickjs-nuttx/quickjs.c:55436 (discriminator 2)
        list_for_each_safe(el, el1, &js_atomics_waiter_list) {
    80024652:	8456                	mv	s0,s5
    80024654:	008aba83          	ld	s5,8(s5)
    80024658:	bf55                	j	8002460c <js_atomics_notify+0xc8>
quickjs-nuttx/quickjs.c:55449 (discriminator 3)
            pthread_cond_signal(&waiter->cond);
    8002465a:	01840513          	addi	a0,s0,24
    8002465e:	218400ef          	jal	ra,80064876 <pthread_cond_signal>
quickjs-nuttx/quickjs.c:55447 (discriminator 3)
        list_for_each(el, &waiter_list) {
    80024662:	6400                	ld	s0,8(s0)
    80024664:	b77d                	j	80024612 <js_atomics_notify+0xce>

0000000080024666 <js_dataview_constructor>:
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54759
{
    80024666:	7135                	addi	sp,sp,-160
    80024668:	e922                	sd	s0,144(sp)
    8002466a:	e526                	sd	s1,136(sp)
    8002466c:	f8d2                	sd	s4,112(sp)
    8002466e:	ed06                	sd	ra,152(sp)
    80024670:	e14a                	sd	s2,128(sp)
    80024672:	fcce                	sd	s3,120(sp)
    80024674:	f4d6                	sd	s5,104(sp)
    80024676:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:54768
    buffer = argv[0];
    80024678:	641c                	ld	a5,8(s0)
    8002467a:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:54759
{
    8002467c:	8a36                	mv	s4,a3
quickjs-nuttx/quickjs.c:54768
    buffer = argv[0];
    8002467e:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:54759
{
    80024680:	e02e                	sd	a1,0(sp)
    80024682:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:54768
    buffer = argv[0];
    80024684:	f03a                	sd	a4,32(sp)
js_get_array_buffer():
quickjs-nuttx/quickjs.c:52799
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    80024686:	2781                	sext.w	a5,a5
    80024688:	56fd                	li	a3,-1
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54759
{
    8002468a:	84aa                	mv	s1,a0
js_get_array_buffer():
quickjs-nuttx/quickjs.c:52799
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8002468c:	00d79a63          	bne	a5,a3,800246a0 <js_dataview_constructor+0x3a>
quickjs-nuttx/quickjs.c:52802
    if (p->class_id != JS_CLASS_ARRAY_BUFFER &&
    80024690:	00675783          	lhu	a5,6(a4)
    80024694:	4685                	li	a3,1
    80024696:	37b5                	addiw	a5,a5,-19
    80024698:	17c2                	slli	a5,a5,0x30
    8002469a:	93c1                	srli	a5,a5,0x30
    8002469c:	00f6fa63          	bgeu	a3,a5,800246b0 <js_dataview_constructor+0x4a>
quickjs-nuttx/quickjs.c:52805
        JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_ARRAY_BUFFER);
    800246a0:	45cd                	li	a1,19
    800246a2:	8526                	mv	a0,s1
    800246a4:	922f40ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54803
        return JS_EXCEPTION;
    800246a8:	4799                	li	a5,6
    800246aa:	e082                	sd	zero,64(sp)
    800246ac:	e4be                	sd	a5,72(sp)
    800246ae:	a035                	j	800246da <js_dataview_constructor+0x74>
js_get_array_buffer():
quickjs-nuttx/quickjs.c:52808
    return p->u.array_buffer;
    800246b0:	03073903          	ld	s2,48(a4)
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54770
    if (!abuf)
    800246b4:	fe090ae3          	beqz	s2,800246a8 <js_dataview_constructor+0x42>
quickjs-nuttx/quickjs.c:54772
    offset = 0;
    800246b8:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs.c:54773
    if (argc > 1) {
    800246ba:	0146d863          	bge	a3,s4,800246ca <js_dataview_constructor+0x64>
quickjs-nuttx/quickjs.c:54774
        if (JS_ToIndex(ctx, &offset, argv[1]))
    800246be:	6810                	ld	a2,16(s0)
    800246c0:	6c14                	ld	a3,24(s0)
    800246c2:	082c                	addi	a1,sp,24
    800246c4:	d3fff0ef          	jal	ra,80024402 <JS_ToIndex>
    800246c8:	f165                	bnez	a0,800246a8 <js_dataview_constructor+0x42>
quickjs-nuttx/quickjs.c:54777
    if (abuf->detached)
    800246ca:	00494783          	lbu	a5,4(s2)
    800246ce:	c38d                	beqz	a5,800246f0 <js_dataview_constructor+0x8a>
quickjs-nuttx/quickjs.c:54778
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800246d0:	8526                	mv	a0,s1
    800246d2:	8b3f40ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:54787
            return JS_ThrowRangeError(ctx, "invalid byteLength");
    800246d6:	e0aa                	sd	a0,64(sp)
    800246d8:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:54813 (discriminator 4)
}
    800246da:	60ea                	ld	ra,152(sp)
    800246dc:	644a                	ld	s0,144(sp)
    800246de:	6506                	ld	a0,64(sp)
    800246e0:	65a6                	ld	a1,72(sp)
    800246e2:	64aa                	ld	s1,136(sp)
    800246e4:	690a                	ld	s2,128(sp)
    800246e6:	79e6                	ld	s3,120(sp)
    800246e8:	7a46                	ld	s4,112(sp)
    800246ea:	7aa6                	ld	s5,104(sp)
    800246ec:	610d                	addi	sp,sp,160
    800246ee:	8082                	ret
quickjs-nuttx/quickjs.c:54779
    if (offset > abuf->byte_length)
    800246f0:	00092983          	lw	s3,0(s2)
    800246f4:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:54780
        return JS_ThrowRangeError(ctx, "invalid byteOffset");
    800246f6:	00046597          	auipc	a1,0x46
    800246fa:	59a58593          	addi	a1,a1,1434 # 8006ac90 <qjsc_repl+0x56e0>
quickjs-nuttx/quickjs.c:54779
    if (offset > abuf->byte_length)
    800246fe:	04f9e163          	bltu	s3,a5,80024740 <js_dataview_constructor+0xda>
quickjs-nuttx/quickjs.c:54781
    len = abuf->byte_length - offset;
    80024702:	40f989bb          	subw	s3,s3,a5
quickjs-nuttx/quickjs.c:54782
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    80024706:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:54781
    len = abuf->byte_length - offset;
    80024708:	00098a9b          	sext.w	s5,s3
quickjs-nuttx/quickjs.c:54782
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    8002470c:	0347de63          	bge	a5,s4,80024748 <js_dataview_constructor+0xe2>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80024710:	7414                	ld	a3,40(s0)
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54782 (discriminator 1)
    80024712:	478d                	li	a5,3
    80024714:	0006871b          	sext.w	a4,a3
    80024718:	02f70863          	beq	a4,a5,80024748 <js_dataview_constructor+0xe2>
quickjs-nuttx/quickjs.c:54784
        if (JS_ToIndex(ctx, &l, argv[2]))
    8002471c:	7010                	ld	a2,32(s0)
    8002471e:	088c                	addi	a1,sp,80
    80024720:	8526                	mv	a0,s1
    80024722:	ce1ff0ef          	jal	ra,80024402 <JS_ToIndex>
    80024726:	f149                	bnez	a0,800246a8 <js_dataview_constructor+0x42>
quickjs-nuttx/quickjs.c:54786
        if (l > len)
    80024728:	67c6                	ld	a5,80(sp)
    8002472a:	1982                	slli	s3,s3,0x20
    8002472c:	0209d993          	srli	s3,s3,0x20
quickjs-nuttx/quickjs.c:54788
        len = l;
    80024730:	00078a9b          	sext.w	s5,a5
quickjs-nuttx/quickjs.c:54786
        if (l > len)
    80024734:	00f9fa63          	bgeu	s3,a5,80024748 <js_dataview_constructor+0xe2>
quickjs-nuttx/quickjs.c:54787
            return JS_ThrowRangeError(ctx, "invalid byteLength");
    80024738:	00046597          	auipc	a1,0x46
    8002473c:	57058593          	addi	a1,a1,1392 # 8006aca8 <qjsc_repl+0x56f8>
    80024740:	8526                	mv	a0,s1
    80024742:	98cf50ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80024746:	bf41                	j	800246d6 <js_dataview_constructor+0x70>
quickjs-nuttx/quickjs.c:54791
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_DATAVIEW);
    80024748:	6582                	ld	a1,0(sp)
    8002474a:	6622                	ld	a2,8(sp)
    8002474c:	02000693          	li	a3,32
    80024750:	8526                	mv	a0,s1
    80024752:	d2af70ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80024756:	f82a                	sd	a0,48(sp)
    80024758:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:54792
    if (JS_IsException(obj))
    8002475a:	0005871b          	sext.w	a4,a1
    8002475e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:54791
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_DATAVIEW);
    80024760:	89aa                	mv	s3,a0
    80024762:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:54792
    if (JS_IsException(obj))
    80024764:	f4f702e3          	beq	a4,a5,800246a8 <js_dataview_constructor+0x42>
quickjs-nuttx/quickjs.c:54794
    if (abuf->detached) {
    80024768:	00494783          	lbu	a5,4(s2)
    8002476c:	cb91                	beqz	a5,80024780 <js_dataview_constructor+0x11a>
quickjs-nuttx/quickjs.c:54796
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    8002476e:	8526                	mv	a0,s1
    80024770:	815f40ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:54802
        JS_FreeValue(ctx, obj);
    80024774:	75c2                	ld	a1,48(sp)
    80024776:	7662                	ld	a2,56(sp)
    80024778:	8526                	mv	a0,s1
    8002477a:	824e70ef          	jal	ra,8000b79e <JS_FreeValue>
    8002477e:	b72d                	j	800246a8 <js_dataview_constructor+0x42>
quickjs-nuttx/quickjs.c:54799
    ta = js_malloc(ctx, sizeof(*ta));
    80024780:	02800593          	li	a1,40
    80024784:	8526                	mv	a0,s1
    80024786:	97ff50ef          	jal	ra,8001a104 <js_malloc>
    8002478a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:54800
    if (!ta) {
    8002478c:	d565                	beqz	a0,80024774 <js_dataview_constructor+0x10e>
quickjs-nuttx/quickjs.c:54806
    ta->obj = p;
    8002478e:	01353823          	sd	s3,16(a0)
quickjs-nuttx/quickjs.c:54807
    ta->buffer = JS_VALUE_GET_OBJ(JS_DupValue(ctx, buffer));
    80024792:	75a2                	ld	a1,40(sp)
    80024794:	7502                	ld	a0,32(sp)
    80024796:	c85e50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:54808
    ta->offset = offset;
    8002479a:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:54807
    ta->buffer = JS_VALUE_GET_OBJ(JS_DupValue(ctx, buffer));
    8002479c:	e8aa                	sd	a0,80(sp)
    8002479e:	ecae                	sd	a1,88(sp)
    800247a0:	ec08                	sd	a0,24(s0)
quickjs-nuttx/quickjs.c:54808
    ta->offset = offset;
    800247a2:	d01c                	sw	a5,32(s0)
quickjs-nuttx/quickjs.c:54809
    ta->length = len;
    800247a4:	03542223          	sw	s5,36(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    800247a8:	01093783          	ld	a5,16(s2)
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54812
    return obj;
    800247ac:	e0ce                	sd	s3,64(sp)
    800247ae:	e4d2                	sd	s4,72(sp)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    800247b0:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    800247b2:	e01c                	sd	a5,0(s0)
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54810
    list_add_tail(&ta->link, &abuf->array_list);
    800247b4:	01090793          	addi	a5,s2,16
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    800247b8:	e41c                	sd	a5,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    800247ba:	00893823          	sd	s0,16(s2)
js_dataview_constructor():
quickjs-nuttx/quickjs.c:54811
    p->u.typed_array = ta;
    800247be:	0289b823          	sd	s0,48(s3)
quickjs-nuttx/quickjs.c:54812
    return obj;
    800247c2:	bf21                	j	800246da <js_dataview_constructor+0x74>

00000000800247c4 <js_shared_array_buffer_constructor>:
js_shared_array_buffer_constructor():
quickjs-nuttx/quickjs.c:52687
{
    800247c4:	7139                	addi	sp,sp,-64
    800247c6:	f822                	sd	s0,48(sp)
    800247c8:	fc06                	sd	ra,56(sp)
    800247ca:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52689
    if (JS_ToIndex(ctx, &len, argv[0]))
    800247cc:	6714                	ld	a3,8(a4)
    800247ce:	6310                	ld	a2,0(a4)
quickjs-nuttx/quickjs.c:52687
{
    800247d0:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:52689
    if (JS_ToIndex(ctx, &len, argv[0]))
    800247d2:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:52687
{
    800247d4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:52689
    if (JS_ToIndex(ctx, &len, argv[0]))
    800247d6:	c2dff0ef          	jal	ra,80024402 <JS_ToIndex>
    800247da:	c911                	beqz	a0,800247ee <js_shared_array_buffer_constructor+0x2a>
quickjs-nuttx/quickjs.c:52690
        return JS_EXCEPTION;
    800247dc:	4799                	li	a5,6
    800247de:	f002                	sd	zero,32(sp)
    800247e0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:52693 (discriminator 1)
}
    800247e2:	70e2                	ld	ra,56(sp)
    800247e4:	7442                	ld	s0,48(sp)
    800247e6:	7502                	ld	a0,32(sp)
    800247e8:	75a2                	ld	a1,40(sp)
    800247ea:	6121                	addi	sp,sp,64
    800247ec:	8082                	ret
quickjs-nuttx/quickjs.c:52691
    return js_array_buffer_constructor2(ctx, new_target, len,
    800247ee:	66e2                	ld	a3,24(sp)
    800247f0:	6582                	ld	a1,0(sp)
    800247f2:	6622                	ld	a2,8(sp)
    800247f4:	4751                	li	a4,20
    800247f6:	8522                	mv	a0,s0
    800247f8:	e7ef70ef          	jal	ra,8001be76 <js_array_buffer_constructor2>
    800247fc:	f02a                	sd	a0,32(sp)
    800247fe:	f42e                	sd	a1,40(sp)
    80024800:	b7cd                	j	800247e2 <js_shared_array_buffer_constructor+0x1e>

0000000080024802 <js_array_buffer_constructor>:
js_array_buffer_constructor():
quickjs-nuttx/quickjs.c:52677
{
    80024802:	711d                	addi	sp,sp,-96
    80024804:	e8a2                	sd	s0,80(sp)
    80024806:	ec86                	sd	ra,88(sp)
    80024808:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52679
    if (JS_ToIndex(ctx, &len, argv[0]))
    8002480a:	6714                	ld	a3,8(a4)
    8002480c:	6310                	ld	a2,0(a4)
quickjs-nuttx/quickjs.c:52677
{
    8002480e:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:52679
    if (JS_ToIndex(ctx, &len, argv[0]))
    80024810:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:52677
{
    80024812:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:52679
    if (JS_ToIndex(ctx, &len, argv[0]))
    80024814:	befff0ef          	jal	ra,80024402 <JS_ToIndex>
    80024818:	c911                	beqz	a0,8002482c <js_array_buffer_constructor+0x2a>
quickjs-nuttx/quickjs.c:52680
        return JS_EXCEPTION;
    8002481a:	4799                	li	a5,6
    8002481c:	f002                	sd	zero,32(sp)
    8002481e:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:52682 (discriminator 1)
}
    80024820:	60e6                	ld	ra,88(sp)
    80024822:	6446                	ld	s0,80(sp)
    80024824:	7502                	ld	a0,32(sp)
    80024826:	75a2                	ld	a1,40(sp)
    80024828:	6125                	addi	sp,sp,96
    8002482a:	8082                	ret
js_array_buffer_constructor1():
quickjs-nuttx/quickjs.c:52651
    return js_array_buffer_constructor2(ctx, new_target, len,
    8002482c:	66e2                	ld	a3,24(sp)
    8002482e:	6582                	ld	a1,0(sp)
    80024830:	6622                	ld	a2,8(sp)
    80024832:	474d                	li	a4,19
    80024834:	8522                	mv	a0,s0
    80024836:	e40f70ef          	jal	ra,8001be76 <js_array_buffer_constructor2>
    8002483a:	f02a                	sd	a0,32(sp)
    8002483c:	f42e                	sd	a1,40(sp)
js_array_buffer_constructor():
quickjs-nuttx/quickjs.c:52681
    return js_array_buffer_constructor1(ctx, new_target, len);
    8002483e:	b7cd                	j	80024820 <js_array_buffer_constructor+0x1e>

0000000080024840 <js_dataview_getValue>:
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54818
{
    80024840:	7155                	addi	sp,sp,-208
    80024842:	f152                	sd	s4,160(sp)
    80024844:	8a36                	mv	s4,a3
quickjs-nuttx/quickjs.c:54826
    ta = JS_GetOpaque2(ctx, this_obj, JS_CLASS_DATAVIEW);
    80024846:	02000693          	li	a3,32
quickjs-nuttx/quickjs.c:54818
{
    8002484a:	e1a2                	sd	s0,192(sp)
    8002484c:	fd26                	sd	s1,184(sp)
    8002484e:	f54e                	sd	s3,168(sp)
    80024850:	e586                	sd	ra,200(sp)
    80024852:	f94a                	sd	s2,176(sp)
    80024854:	ed56                	sd	s5,152(sp)
    80024856:	84aa                	mv	s1,a0
    80024858:	e02e                	sd	a1,0(sp)
    8002485a:	e432                	sd	a2,8(sp)
    8002485c:	89ba                	mv	s3,a4
    8002485e:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:54826
    ta = JS_GetOpaque2(ctx, this_obj, JS_CLASS_DATAVIEW);
    80024860:	f8ff30ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:54827
    if (!ta)
    80024864:	e509                	bnez	a0,8002486e <js_dataview_getValue+0x2e>
quickjs-nuttx/quickjs.c:54828
        return JS_EXCEPTION;
    80024866:	f002                	sd	zero,32(sp)
    80024868:	4799                	li	a5,6
    8002486a:	f43e                	sd	a5,40(sp)
    8002486c:	a865                	j	80024924 <js_dataview_getValue+0xe4>
quickjs-nuttx/quickjs.c:54830
    if (JS_ToIndex(ctx, &pos, argv[0]))
    8002486e:	0009b603          	ld	a2,0(s3)
    80024872:	0089b683          	ld	a3,8(s3)
quickjs-nuttx/quickjs.c:54829
    size = 1 << typed_array_size_log2(class_id);
    80024876:	feb4071b          	addiw	a4,s0,-21
    8002487a:	00051797          	auipc	a5,0x51
    8002487e:	96678793          	addi	a5,a5,-1690 # 800751e0 <typed_array_size_log2>
    80024882:	97ba                	add	a5,a5,a4
    80024884:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:54830
    if (JS_ToIndex(ctx, &pos, argv[0]))
    80024886:	082c                	addi	a1,sp,24
    80024888:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:54829
    size = 1 << typed_array_size_log2(class_id);
    8002488a:	0007ca83          	lbu	s5,0(a5)
quickjs-nuttx/quickjs.c:54830
    if (JS_ToIndex(ctx, &pos, argv[0]))
    8002488e:	b75ff0ef          	jal	ra,80024402 <JS_ToIndex>
    80024892:	862a                	mv	a2,a0
    80024894:	f969                	bnez	a0,80024866 <js_dataview_getValue+0x26>
quickjs-nuttx/quickjs.c:54833
    if (argc > 1)
    80024896:	4785                	li	a5,1
    80024898:	0147da63          	bge	a5,s4,800248ac <js_dataview_getValue+0x6c>
quickjs-nuttx/quickjs.c:54834
        is_swap = JS_ToBool(ctx, argv[1]);
    8002489c:	0189b603          	ld	a2,24(s3)
    800248a0:	0109b583          	ld	a1,16(s3)
    800248a4:	8526                	mv	a0,s1
    800248a6:	d40ea0ef          	jal	ra,8000ede6 <JS_ToBool>
    800248aa:	862a                	mv	a2,a0
quickjs-nuttx/quickjs.c:54838
    abuf = ta->buffer->u.array_buffer;
    800248ac:	01893783          	ld	a5,24(s2)
    800248b0:	7b94                	ld	a3,48(a5)
quickjs-nuttx/quickjs.c:54839
    if (abuf->detached)
    800248b2:	0046c783          	lbu	a5,4(a3)
    800248b6:	c799                	beqz	a5,800248c4 <js_dataview_getValue+0x84>
quickjs-nuttx/quickjs.c:54840
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800248b8:	8526                	mv	a0,s1
    800248ba:	ecaf40ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:54885
            return JS_NewBigUint64(ctx, v);
    800248be:	f02a                	sd	a0,32(sp)
    800248c0:	f42e                	sd	a1,40(sp)
    800248c2:	a08d                	j	80024924 <js_dataview_getValue+0xe4>
quickjs-nuttx/quickjs.c:54841
    if ((pos + size) > ta->length)
    800248c4:	65e2                	ld	a1,24(sp)
    800248c6:	4785                	li	a5,1
    800248c8:	02496703          	lwu	a4,36(s2)
    800248cc:	015797bb          	sllw	a5,a5,s5
    800248d0:	97ae                	add	a5,a5,a1
    800248d2:	00f77a63          	bgeu	a4,a5,800248e6 <js_dataview_getValue+0xa6>
quickjs-nuttx/quickjs.c:54842
        return JS_ThrowRangeError(ctx, "out of bound");
    800248d6:	8526                	mv	a0,s1
    800248d8:	00046597          	auipc	a1,0x46
    800248dc:	3e858593          	addi	a1,a1,1000 # 8006acc0 <qjsc_repl+0x5710>
    800248e0:	feff40ef          	jal	ra,800198ce <JS_ThrowRangeError>
    800248e4:	bfe9                	j	800248be <js_dataview_getValue+0x7e>
quickjs-nuttx/quickjs.c:54843
    ptr = abuf->data + ta->offset + pos;
    800248e6:	02096703          	lwu	a4,32(s2)
    800248ea:	3429                	addiw	s0,s0,-22
    800248ec:	00b707b3          	add	a5,a4,a1
    800248f0:	6698                	ld	a4,8(a3)
    800248f2:	0004069b          	sext.w	a3,s0
    800248f6:	973e                	add	a4,a4,a5
quickjs-nuttx/quickjs.c:54845
    switch(class_id) {
    800248f8:	47a5                	li	a5,9
    800248fa:	24d7e863          	bltu	a5,a3,80024b4a <js_dataview_getValue+0x30a>
    800248fe:	02041793          	slli	a5,s0,0x20
    80024902:	01e7d413          	srli	s0,a5,0x1e
    80024906:	00046697          	auipc	a3,0x46
    8002490a:	3ca68693          	addi	a3,a3,970 # 8006acd0 <qjsc_repl+0x5720>
    8002490e:	9436                	add	s0,s0,a3
    80024910:	401c                	lw	a5,0(s0)
    80024912:	97b6                	add	a5,a5,a3
    80024914:	8782                	jr	a5
quickjs-nuttx/quickjs.c:54847
        return JS_NewInt32(ctx, *(int8_t *)ptr);
    80024916:	00070783          	lb	a5,0(a4)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8002491a:	da02                	sw	zero,52(sp)
    8002491c:	d83e                	sw	a5,48(sp)
    8002491e:	77c2                	ld	a5,48(sp)
    80024920:	f03e                	sd	a5,32(sp)
    80024922:	f402                	sd	zero,40(sp)
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54914 (discriminator 1)
}
    80024924:	60ae                	ld	ra,200(sp)
    80024926:	640e                	ld	s0,192(sp)
    80024928:	7502                	ld	a0,32(sp)
    8002492a:	75a2                	ld	a1,40(sp)
    8002492c:	74ea                	ld	s1,184(sp)
    8002492e:	794a                	ld	s2,176(sp)
    80024930:	79aa                	ld	s3,168(sp)
    80024932:	7a0a                	ld	s4,160(sp)
    80024934:	6aea                	ld	s5,152(sp)
    80024936:	6169                	addi	sp,sp,208
    80024938:	8082                	ret
quickjs-nuttx/quickjs.c:54849
        return JS_NewInt32(ctx, *(uint8_t *)ptr);
    8002493a:	00074783          	lbu	a5,0(a4)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8002493e:	c282                	sw	zero,68(sp)
    80024940:	c0be                	sw	a5,64(sp)
    80024942:	6786                	ld	a5,64(sp)
    80024944:	bff1                	j	80024920 <js_dataview_getValue+0xe0>
js_dataview_getValue():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    80024946:	00174783          	lbu	a5,1(a4)
    8002494a:	00074683          	lbu	a3,0(a4)
quickjs-nuttx/quickjs.c:54852
        if (is_swap)
    8002494e:	4705                	li	a4,1
    80024950:	07a2                	slli	a5,a5,0x8
    80024952:	8fd5                	or	a5,a5,a3
    80024954:	00e60963          	beq	a2,a4,80024966 <js_dataview_getValue+0x126>
    80024958:	0087971b          	slliw	a4,a5,0x8
    8002495c:	0087d79b          	srliw	a5,a5,0x8
    80024960:	8fd9                	or	a5,a5,a4
    80024962:	17c2                	slli	a5,a5,0x30
    80024964:	93c1                	srli	a5,a5,0x30
quickjs-nuttx/quickjs.c:54854
        return JS_NewInt32(ctx, (int16_t)v);
    80024966:	0107979b          	slliw	a5,a5,0x10
    8002496a:	4107d79b          	sraiw	a5,a5,0x10
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8002496e:	ca82                	sw	zero,84(sp)
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54854
    80024970:	c8be                	sw	a5,80(sp)
    80024972:	67c6                	ld	a5,80(sp)
    80024974:	b775                	j	80024920 <js_dataview_getValue+0xe0>
quickjs-nuttx/cutils.h:185
    80024976:	00174783          	lbu	a5,1(a4)
    8002497a:	00074683          	lbu	a3,0(a4)
quickjs-nuttx/quickjs.c:54857
        if (is_swap)
    8002497e:	4705                	li	a4,1
    80024980:	07a2                	slli	a5,a5,0x8
    80024982:	8fd5                	or	a5,a5,a3
    80024984:	00e60963          	beq	a2,a4,80024996 <js_dataview_getValue+0x156>
    80024988:	0087971b          	slliw	a4,a5,0x8
    8002498c:	0087d79b          	srliw	a5,a5,0x8
    80024990:	8fd9                	or	a5,a5,a4
    80024992:	17c2                	slli	a5,a5,0x30
    80024994:	93c1                	srli	a5,a5,0x30
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80024996:	d282                	sw	zero,100(sp)
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54859
        return JS_NewInt32(ctx, v);
    80024998:	d0be                	sw	a5,96(sp)
    8002499a:	7786                	ld	a5,96(sp)
    8002499c:	b751                	j	80024920 <js_dataview_getValue+0xe0>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002499e:	00174783          	lbu	a5,1(a4)
    800249a2:	00074503          	lbu	a0,0(a4)
    800249a6:	07a2                	slli	a5,a5,0x8
    800249a8:	8fc9                	or	a5,a5,a0
    800249aa:	00274503          	lbu	a0,2(a4)
    800249ae:	0542                	slli	a0,a0,0x10
    800249b0:	8fc9                	or	a5,a5,a0
    800249b2:	00374503          	lbu	a0,3(a4)
    800249b6:	0562                	slli	a0,a0,0x18
    800249b8:	8d5d                	or	a0,a0,a5
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54862
        if (is_swap)
    800249ba:	4785                	li	a5,1
get_u32():
quickjs-nuttx/cutils.h:170
    800249bc:	2501                	sext.w	a0,a0
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54862
    800249be:	00f60563          	beq	a2,a5,800249c8 <js_dataview_getValue+0x188>
quickjs-nuttx/quickjs.c:54863
            v = bswap32(v);
    800249c2:	904e30ef          	jal	ra,80007ac6 <bswap32>
    800249c6:	2501                	sext.w	a0,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800249c8:	da82                	sw	zero,116(sp)
    800249ca:	d8aa                	sw	a0,112(sp)
    800249cc:	77c6                	ld	a5,112(sp)
    800249ce:	bf89                	j	80024920 <js_dataview_getValue+0xe0>
get_u32():
quickjs-nuttx/cutils.h:170
    800249d0:	00174783          	lbu	a5,1(a4)
    800249d4:	00074503          	lbu	a0,0(a4)
    800249d8:	07a2                	slli	a5,a5,0x8
    800249da:	8fc9                	or	a5,a5,a0
    800249dc:	00274503          	lbu	a0,2(a4)
    800249e0:	0542                	slli	a0,a0,0x10
    800249e2:	8fc9                	or	a5,a5,a0
    800249e4:	00374503          	lbu	a0,3(a4)
    800249e8:	0562                	slli	a0,a0,0x18
    800249ea:	8d5d                	or	a0,a0,a5
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54867
        if (is_swap)
    800249ec:	4785                	li	a5,1
get_u32():
quickjs-nuttx/cutils.h:170
    800249ee:	2501                	sext.w	a0,a0
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54867
    800249f0:	00f60563          	beq	a2,a5,800249fa <js_dataview_getValue+0x1ba>
quickjs-nuttx/quickjs.c:54868
            v = bswap32(v);
    800249f4:	8d2e30ef          	jal	ra,80007ac6 <bswap32>
    800249f8:	2501                	sext.w	a0,a0
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    800249fa:	0005079b          	sext.w	a5,a0
    800249fe:	00054c63          	bltz	a0,80024a16 <js_dataview_getValue+0x1d6>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80024a02:	c302                	sw	zero,132(sp)
    80024a04:	c13e                	sw	a5,128(sp)
    80024a06:	670a                	ld	a4,128(sp)
    80024a08:	f8ba                	sd	a4,112(sp)
    80024a0a:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80024a0c:	d8be                	sw	a5,112(sp)
    80024a0e:	37c6                	fld	fa5,112(sp)
    80024a10:	f43a                	sd	a4,40(sp)
    80024a12:	b03e                	fsd	fa5,32(sp)
    80024a14:	bf01                	j	80024924 <js_dataview_getValue+0xe4>
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80024a16:	d21507d3          	fcvt.d.wu	fa5,a0
    80024a1a:	471d                	li	a4,7
    80024a1c:	e20787d3          	fmv.x.d	a5,fa5
js_dataview_getValue():
quickjs-nuttx/quickjs.h:230
    return v;
    80024a20:	b8be                	fsd	fa5,112(sp)
    80024a22:	2781                	sext.w	a5,a5
    80024a24:	b7e5                	j	80024a0c <js_dataview_getValue+0x1cc>
get_u64():
quickjs-nuttx/cutils.h:155
    return ((const struct packed_u64 *)tab)->v;
    80024a26:	00174503          	lbu	a0,1(a4)
    80024a2a:	00074583          	lbu	a1,0(a4)
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54874
            if (is_swap)
    80024a2e:	4785                	li	a5,1
get_u64():
quickjs-nuttx/cutils.h:155
    80024a30:	0522                	slli	a0,a0,0x8
    80024a32:	8dc9                	or	a1,a1,a0
    80024a34:	00274503          	lbu	a0,2(a4)
    80024a38:	0542                	slli	a0,a0,0x10
    80024a3a:	8d4d                	or	a0,a0,a1
    80024a3c:	00374583          	lbu	a1,3(a4)
    80024a40:	05e2                	slli	a1,a1,0x18
    80024a42:	8d4d                	or	a0,a0,a1
    80024a44:	00474583          	lbu	a1,4(a4)
    80024a48:	1582                	slli	a1,a1,0x20
    80024a4a:	8dc9                	or	a1,a1,a0
    80024a4c:	00574503          	lbu	a0,5(a4)
    80024a50:	1522                	slli	a0,a0,0x28
    80024a52:	8dc9                	or	a1,a1,a0
    80024a54:	00674503          	lbu	a0,6(a4)
    80024a58:	1542                	slli	a0,a0,0x30
    80024a5a:	8d4d                	or	a0,a0,a1
    80024a5c:	00774583          	lbu	a1,7(a4)
    80024a60:	15e2                	slli	a1,a1,0x38
    80024a62:	8d4d                	or	a0,a0,a1
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54874
    80024a64:	00f60463          	beq	a2,a5,80024a6c <js_dataview_getValue+0x22c>
quickjs-nuttx/quickjs.c:54875
                v = bswap64(v);
    80024a68:	886e30ef          	jal	ra,80007aee <bswap64>
quickjs-nuttx/quickjs.c:54876
            return JS_NewBigInt64(ctx, v);
    80024a6c:	85aa                	mv	a1,a0
    80024a6e:	8526                	mv	a0,s1
    80024a70:	e3af90ef          	jal	ra,8001e0aa <JS_NewBigInt64>
    80024a74:	b5a9                	j	800248be <js_dataview_getValue+0x7e>
get_u64():
quickjs-nuttx/cutils.h:155
    80024a76:	00174503          	lbu	a0,1(a4)
    80024a7a:	00074583          	lbu	a1,0(a4)
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54883
            if (is_swap)
    80024a7e:	4785                	li	a5,1
get_u64():
quickjs-nuttx/cutils.h:155
    80024a80:	0522                	slli	a0,a0,0x8
    80024a82:	8dc9                	or	a1,a1,a0
    80024a84:	00274503          	lbu	a0,2(a4)
    80024a88:	0542                	slli	a0,a0,0x10
    80024a8a:	8d4d                	or	a0,a0,a1
    80024a8c:	00374583          	lbu	a1,3(a4)
    80024a90:	05e2                	slli	a1,a1,0x18
    80024a92:	8d4d                	or	a0,a0,a1
    80024a94:	00474583          	lbu	a1,4(a4)
    80024a98:	1582                	slli	a1,a1,0x20
    80024a9a:	8dc9                	or	a1,a1,a0
    80024a9c:	00574503          	lbu	a0,5(a4)
    80024aa0:	1522                	slli	a0,a0,0x28
    80024aa2:	8dc9                	or	a1,a1,a0
    80024aa4:	00674503          	lbu	a0,6(a4)
    80024aa8:	1542                	slli	a0,a0,0x30
    80024aaa:	8d4d                	or	a0,a0,a1
    80024aac:	00774583          	lbu	a1,7(a4)
    80024ab0:	15e2                	slli	a1,a1,0x38
    80024ab2:	8d4d                	or	a0,a0,a1
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54883
    80024ab4:	00f60463          	beq	a2,a5,80024abc <js_dataview_getValue+0x27c>
quickjs-nuttx/quickjs.c:54884
                v = bswap64(v);
    80024ab8:	836e30ef          	jal	ra,80007aee <bswap64>
quickjs-nuttx/quickjs.c:54885
            return JS_NewBigUint64(ctx, v);
    80024abc:	85aa                	mv	a1,a0
    80024abe:	8526                	mv	a0,s1
    80024ac0:	e50f90ef          	jal	ra,8001e110 <JS_NewBigUint64>
    80024ac4:	bbed                	j	800248be <js_dataview_getValue+0x7e>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80024ac6:	00174783          	lbu	a5,1(a4)
    80024aca:	00074503          	lbu	a0,0(a4)
    80024ace:	07a2                	slli	a5,a5,0x8
    80024ad0:	8fc9                	or	a5,a5,a0
    80024ad2:	00274503          	lbu	a0,2(a4)
    80024ad6:	0542                	slli	a0,a0,0x10
    80024ad8:	8d5d                	or	a0,a0,a5
    80024ada:	00374783          	lbu	a5,3(a4)
    80024ade:	07e2                	slli	a5,a5,0x18
    80024ae0:	8fc9                	or	a5,a5,a0
    80024ae2:	0007851b          	sext.w	a0,a5
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54895
            if (is_swap)
    80024ae6:	4785                	li	a5,1
    80024ae8:	00f60563          	beq	a2,a5,80024af2 <js_dataview_getValue+0x2b2>
quickjs-nuttx/quickjs.c:54896
                v = bswap32(v);
    80024aec:	fdbe20ef          	jal	ra,80007ac6 <bswap32>
    80024af0:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:54898
            return __JS_NewFloat64(ctx, u.f);
    80024af2:	f00507d3          	fmv.w.x	fa5,a0
    80024af6:	420787d3          	fcvt.d.s	fa5,fa5
    80024afa:	b03e                	fsd	fa5,32(sp)
    80024afc:	479d                	li	a5,7
    80024afe:	b3b5                	j	8002486a <js_dataview_getValue+0x2a>
get_u64():
quickjs-nuttx/cutils.h:155
    return ((const struct packed_u64 *)tab)->v;
    80024b00:	00174783          	lbu	a5,1(a4)
    80024b04:	00074503          	lbu	a0,0(a4)
    80024b08:	07a2                	slli	a5,a5,0x8
    80024b0a:	8fc9                	or	a5,a5,a0
    80024b0c:	00274503          	lbu	a0,2(a4)
    80024b10:	0542                	slli	a0,a0,0x10
    80024b12:	8fc9                	or	a5,a5,a0
    80024b14:	00374503          	lbu	a0,3(a4)
    80024b18:	0562                	slli	a0,a0,0x18
    80024b1a:	8d5d                	or	a0,a0,a5
    80024b1c:	00474783          	lbu	a5,4(a4)
    80024b20:	1782                	slli	a5,a5,0x20
    80024b22:	8d5d                	or	a0,a0,a5
    80024b24:	00574783          	lbu	a5,5(a4)
    80024b28:	17a2                	slli	a5,a5,0x28
    80024b2a:	8fc9                	or	a5,a5,a0
    80024b2c:	00674503          	lbu	a0,6(a4)
    80024b30:	1542                	slli	a0,a0,0x30
    80024b32:	8fc9                	or	a5,a5,a0
    80024b34:	00774503          	lbu	a0,7(a4)
    80024b38:	1562                	slli	a0,a0,0x38
    80024b3a:	8d5d                	or	a0,a0,a5
js_dataview_getValue():
quickjs-nuttx/quickjs.c:54907
            if (is_swap)
    80024b3c:	4785                	li	a5,1
    80024b3e:	00f60463          	beq	a2,a5,80024b46 <js_dataview_getValue+0x306>
quickjs-nuttx/quickjs.c:54908
                u.i = bswap64(u.i);
    80024b42:	fade20ef          	jal	ra,80007aee <bswap64>
quickjs-nuttx/quickjs.h:230
    80024b46:	f02a                	sd	a0,32(sp)
    80024b48:	bf55                	j	80024afc <js_dataview_getValue+0x2bc>
quickjs-nuttx/quickjs.c:54912
        abort();
    80024b4a:	0383e0ef          	jal	ra,80062b82 <abort>

0000000080024b4e <js_float_env_constructor>:
js_float_env_constructor():
quickjs-nuttx/quickjs.c:51565
{
    80024b4e:	7159                	addi	sp,sp,-112
    80024b50:	f0a2                	sd	s0,96(sp)
    80024b52:	e4ce                	sd	s3,72(sp)
    80024b54:	e0d2                	sd	s4,64(sp)
    80024b56:	f486                	sd	ra,104(sp)
    80024b58:	eca6                	sd	s1,88(sp)
    80024b5a:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs.c:51571
    prec = ctx->fp_env.prec;
    80024b5c:	19853783          	ld	a5,408(a0)
quickjs-nuttx/quickjs.c:51565
{
    80024b60:	89b6                	mv	s3,a3
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80024b62:	6714                	ld	a3,8(a4)
js_float_env_constructor():
quickjs-nuttx/quickjs.c:51571
    prec = ctx->fp_env.prec;
    80024b64:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:51573
    if (!JS_IsUndefined(argv[0])) {
    80024b66:	4a0d                	li	s4,3
    80024b68:	0006879b          	sext.w	a5,a3
quickjs-nuttx/quickjs.c:51565
{
    80024b6c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:51573
    if (!JS_IsUndefined(argv[0])) {
    80024b6e:	07478e63          	beq	a5,s4,80024bea <js_float_env_constructor+0x9c>
quickjs-nuttx/quickjs.c:51574
        if (JS_ToInt64Sat(ctx, &prec, argv[0]))
    80024b72:	6310                	ld	a2,0(a4)
    80024b74:	082c                	addi	a1,sp,24
    80024b76:	893a                	mv	s2,a4
    80024b78:	863ff0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80024b7c:	84aa                	mv	s1,a0
    80024b7e:	cd11                	beqz	a0,80024b9a <js_float_env_constructor+0x4c>
quickjs-nuttx/quickjs.c:51575
            return JS_EXCEPTION;
    80024b80:	4799                	li	a5,6
    80024b82:	f802                	sd	zero,48(sp)
    80024b84:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:51599 (discriminator 1)
}
    80024b86:	70a6                	ld	ra,104(sp)
    80024b88:	7406                	ld	s0,96(sp)
    80024b8a:	7542                	ld	a0,48(sp)
    80024b8c:	75e2                	ld	a1,56(sp)
    80024b8e:	64e6                	ld	s1,88(sp)
    80024b90:	6946                	ld	s2,80(sp)
    80024b92:	69a6                	ld	s3,72(sp)
    80024b94:	6a06                	ld	s4,64(sp)
    80024b96:	6165                	addi	sp,sp,112
    80024b98:	8082                	ret
quickjs-nuttx/quickjs.c:51576
        if (prec < BF_PREC_MIN || prec > BF_PREC_MAX)
    80024b9a:	6762                	ld	a4,24(sp)
    80024b9c:	57cd                	li	a5,-13
    80024b9e:	8389                	srli	a5,a5,0x2
    80024ba0:	1779                	addi	a4,a4,-2
quickjs-nuttx/quickjs.c:51577
            return JS_ThrowRangeError(ctx, "invalid precision");
    80024ba2:	00046597          	auipc	a1,0x46
    80024ba6:	15658593          	addi	a1,a1,342 # 8006acf8 <qjsc_repl+0x5748>
quickjs-nuttx/quickjs.c:51576
        if (prec < BF_PREC_MIN || prec > BF_PREC_MAX)
    80024baa:	02e7ea63          	bltu	a5,a4,80024bde <js_float_env_constructor+0x90>
quickjs-nuttx/quickjs.c:51579
        if (argc > 1 && !JS_IsUndefined(argv[1])) {
    80024bae:	4785                	li	a5,1
    80024bb0:	0337df63          	bge	a5,s3,80024bee <js_float_env_constructor+0xa0>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    80024bb4:	01893683          	ld	a3,24(s2)
js_float_env_constructor():
quickjs-nuttx/quickjs.c:51579 (discriminator 1)
    80024bb8:	0006879b          	sext.w	a5,a3
    80024bbc:	03478963          	beq	a5,s4,80024bee <js_float_env_constructor+0xa0>
quickjs-nuttx/quickjs.c:51580
            if (JS_ToInt32Sat(ctx, &rndmode, argv[1]))
    80024bc0:	01093603          	ld	a2,16(s2)
    80024bc4:	084c                	addi	a1,sp,20
    80024bc6:	8522                	mv	a0,s0
    80024bc8:	a63fe0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80024bcc:	f955                	bnez	a0,80024b80 <js_float_env_constructor+0x32>
quickjs-nuttx/quickjs.c:51582
            if (rndmode < BF_RNDN || rndmode > BF_RNDF)
    80024bce:	44d2                	lw	s1,20(sp)
    80024bd0:	4799                	li	a5,6
    80024bd2:	0097fe63          	bgeu	a5,s1,80024bee <js_float_env_constructor+0xa0>
quickjs-nuttx/quickjs.c:51583
                return JS_ThrowRangeError(ctx, "invalid rounding mode");
    80024bd6:	00046597          	auipc	a1,0x46
    80024bda:	fe258593          	addi	a1,a1,-30 # 8006abb8 <qjsc_repl+0x5608>
    80024bde:	8522                	mv	a0,s0
    80024be0:	ceff40ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80024be4:	f82a                	sd	a0,48(sp)
    80024be6:	fc2e                	sd	a1,56(sp)
    80024be8:	bf79                	j	80024b86 <js_float_env_constructor+0x38>
quickjs-nuttx/quickjs.c:51572
    flags = ctx->fp_env.flags;
    80024bea:	1a052483          	lw	s1,416(a0)
quickjs-nuttx/quickjs.c:51588
    obj = JS_NewObjectClass(ctx, JS_CLASS_FLOAT_ENV);
    80024bee:	02300593          	li	a1,35
    80024bf2:	8522                	mv	a0,s0
    80024bf4:	b18f70ef          	jal	ra,8001bf0c <JS_NewObjectClass>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80024bf8:	00058a1b          	sext.w	s4,a1
js_float_env_constructor():
quickjs-nuttx/quickjs.c:51589
    if (JS_IsException(obj))
    80024bfc:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51588
    obj = JS_NewObjectClass(ctx, JS_CLASS_FLOAT_ENV);
    80024bfe:	89aa                	mv	s3,a0
    80024c00:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:51589
    if (JS_IsException(obj))
    80024c02:	f6fa0fe3          	beq	s4,a5,80024b80 <js_float_env_constructor+0x32>
quickjs-nuttx/quickjs.c:51591
    fe = js_malloc(ctx, sizeof(*fe));
    80024c06:	45c1                	li	a1,16
    80024c08:	8522                	mv	a0,s0
    80024c0a:	cfaf50ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:51592
    if (!fe)
    80024c0e:	d92d                	beqz	a0,80024b80 <js_float_env_constructor+0x32>
quickjs-nuttx/quickjs.c:51594
    fe->prec = prec;
    80024c10:	6762                	ld	a4,24(sp)
quickjs-nuttx/quickjs.c:51595
    fe->flags = flags;
    80024c12:	c504                	sw	s1,8(a0)
quickjs-nuttx/quickjs.c:51596
    fe->status = 0;
    80024c14:	00052623          	sw	zero,12(a0)
quickjs-nuttx/quickjs.c:51594
    fe->prec = prec;
    80024c18:	e118                	sd	a4,0(a0)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80024c1a:	577d                	li	a4,-1
    80024c1c:	00ea1463          	bne	s4,a4,80024c24 <js_float_env_constructor+0xd6>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    80024c20:	02a9b823          	sd	a0,48(s3)
js_float_env_constructor():
quickjs-nuttx/quickjs.c:51598
    return obj;
    80024c24:	f84e                	sd	s3,48(sp)
    80024c26:	fc4a                	sd	s2,56(sp)
    80024c28:	bfb9                	j	80024b86 <js_float_env_constructor+0x38>

0000000080024c2a <js_float_env_proto_set_status>:
js_float_env_proto_set_status():
quickjs-nuttx/quickjs.c:51682
{
    80024c2a:	711d                	addi	sp,sp,-96
    80024c2c:	e036                	sd	a3,0(sp)
quickjs-nuttx/quickjs.c:51687
    fe = JS_GetOpaque2(ctx, this_val, JS_CLASS_FLOAT_ENV);
    80024c2e:	02300693          	li	a3,35
quickjs-nuttx/quickjs.c:51682
{
    80024c32:	e4a6                	sd	s1,72(sp)
    80024c34:	e0ca                	sd	s2,64(sp)
    80024c36:	ec86                	sd	ra,88(sp)
    80024c38:	e8a2                	sd	s0,80(sp)
    80024c3a:	892a                	mv	s2,a0
    80024c3c:	e82e                	sd	a1,16(sp)
    80024c3e:	ec32                	sd	a2,24(sp)
    80024c40:	e43a                	sd	a4,8(sp)
    80024c42:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:51687
    fe = JS_GetOpaque2(ctx, this_val, JS_CLASS_FLOAT_ENV);
    80024c44:	babf30ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:51688
    if (!fe)
    80024c48:	e509                	bnez	a0,80024c52 <js_float_env_proto_set_status+0x28>
quickjs-nuttx/quickjs.c:51689
        return JS_EXCEPTION;
    80024c4a:	f802                	sd	zero,48(sp)
    80024c4c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51721
    return JS_UNDEFINED;
    80024c4e:	fc3e                	sd	a5,56(sp)
    80024c50:	a861                	j	80024ce8 <js_float_env_proto_set_status+0xbe>
quickjs-nuttx/quickjs.c:51690
    switch(magic) {
    80024c52:	57f9                	li	a5,-2
    80024c54:	842a                	mv	s0,a0
    80024c56:	06f48263          	beq	s1,a5,80024cba <js_float_env_proto_set_status+0x90>
    80024c5a:	57fd                	li	a5,-1
    80024c5c:	02f4d763          	bge	s1,a5,80024c8a <js_float_env_proto_set_status+0x60>
    80024c60:	57f1                	li	a5,-4
    80024c62:	0cf48363          	beq	s1,a5,80024d28 <js_float_env_proto_set_status+0xfe>
    80024c66:	57f5                	li	a5,-3
    80024c68:	0af48363          	beq	s1,a5,80024d0e <js_float_env_proto_set_status+0xe4>
quickjs-nuttx/quickjs.c:51717
        b = JS_ToBool(ctx, val);
    80024c6c:	6582                	ld	a1,0(sp)
    80024c6e:	6622                	ld	a2,8(sp)
    80024c70:	854a                	mv	a0,s2
    80024c72:	974ea0ef          	jal	ra,8000ede6 <JS_ToBool>
quickjs-nuttx/quickjs.c:51718
        fe->status = (fe->status & ~magic) & ((-b) & magic);
    80024c76:	445c                	lw	a5,12(s0)
    80024c78:	fff4c713          	not	a4,s1
    80024c7c:	40a0053b          	negw	a0,a0
    80024c80:	8f7d                	and	a4,a4,a5
    80024c82:	8ce9                	and	s1,s1,a0
    80024c84:	8cf9                	and	s1,s1,a4
    80024c86:	c444                	sw	s1,12(s0)
quickjs-nuttx/quickjs.c:51719
        break;
    80024c88:	a035                	j	80024cb4 <js_float_env_proto_set_status+0x8a>
quickjs-nuttx/quickjs.c:51690
    switch(magic) {
    80024c8a:	fef491e3          	bne	s1,a5,80024c6c <js_float_env_proto_set_status+0x42>
quickjs-nuttx/quickjs.c:51692
        if (JS_ToInt64Sat(ctx, &prec, val))
    80024c8e:	6602                	ld	a2,0(sp)
    80024c90:	66a2                	ld	a3,8(sp)
    80024c92:	102c                	addi	a1,sp,40
    80024c94:	854a                	mv	a0,s2
    80024c96:	f44ff0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80024c9a:	f945                	bnez	a0,80024c4a <js_float_env_proto_set_status+0x20>
quickjs-nuttx/quickjs.c:51694
        if (prec < BF_PREC_MIN || prec > BF_PREC_MAX)
    80024c9c:	7722                	ld	a4,40(sp)
    80024c9e:	57cd                	li	a5,-13
    80024ca0:	8389                	srli	a5,a5,0x2
    80024ca2:	ffe70693          	addi	a3,a4,-2
quickjs-nuttx/quickjs.c:51695
            return JS_ThrowRangeError(ctx, "invalid precision");
    80024ca6:	00046597          	auipc	a1,0x46
    80024caa:	05258593          	addi	a1,a1,82 # 8006acf8 <qjsc_repl+0x5748>
quickjs-nuttx/quickjs.c:51694
        if (prec < BF_PREC_MIN || prec > BF_PREC_MAX)
    80024cae:	02d7e863          	bltu	a5,a3,80024cde <js_float_env_proto_set_status+0xb4>
quickjs-nuttx/quickjs.c:51696
        fe->prec = prec;
    80024cb2:	e018                	sd	a4,0(s0)
quickjs-nuttx/quickjs.c:51721
    return JS_UNDEFINED;
    80024cb4:	f802                	sd	zero,48(sp)
    80024cb6:	478d                	li	a5,3
    80024cb8:	bf59                	j	80024c4e <js_float_env_proto_set_status+0x24>
quickjs-nuttx/quickjs.c:51699
        if (JS_ToInt32Sat(ctx, &b, val))
    80024cba:	6602                	ld	a2,0(sp)
    80024cbc:	66a2                	ld	a3,8(sp)
    80024cbe:	104c                	addi	a1,sp,36
    80024cc0:	854a                	mv	a0,s2
    80024cc2:	969fe0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80024cc6:	f151                	bnez	a0,80024c4a <js_float_env_proto_set_status+0x20>
quickjs-nuttx/quickjs.c:51701
        if (b < BF_EXP_BITS_MIN || b > BF_EXP_BITS_MAX)
    80024cc8:	5692                	lw	a3,36(sp)
    80024cca:	03a00793          	li	a5,58
    80024cce:	ffd6871b          	addiw	a4,a3,-3
    80024cd2:	02e7f363          	bgeu	a5,a4,80024cf8 <js_float_env_proto_set_status+0xce>
quickjs-nuttx/quickjs.c:51702
            return JS_ThrowRangeError(ctx, "invalid number of exponent bits");
    80024cd6:	00046597          	auipc	a1,0x46
    80024cda:	03a58593          	addi	a1,a1,58 # 8006ad10 <qjsc_repl+0x5760>
    80024cde:	854a                	mv	a0,s2
    80024ce0:	beff40ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80024ce4:	f82a                	sd	a0,48(sp)
    80024ce6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:51722 (discriminator 1)
}
    80024ce8:	60e6                	ld	ra,88(sp)
    80024cea:	6446                	ld	s0,80(sp)
    80024cec:	7542                	ld	a0,48(sp)
    80024cee:	75e2                	ld	a1,56(sp)
    80024cf0:	64a6                	ld	s1,72(sp)
    80024cf2:	6906                	ld	s2,64(sp)
    80024cf4:	6125                	addi	sp,sp,96
    80024cf6:	8082                	ret
quickjs-nuttx/quickjs.c:51703
        fe->flags = (fe->flags & ~(BF_EXP_BITS_MASK << BF_EXP_BITS_SHIFT)) |
    80024cf8:	441c                	lw	a5,8(s0)
bf_set_exp_bits():
quickjs-nuttx/libbf.h:164
    return ((BF_EXP_BITS_MAX - n) & BF_EXP_BITS_MASK) << BF_EXP_BITS_SHIFT;
    80024cfa:	03d00713          	li	a4,61
    80024cfe:	9f15                	subw	a4,a4,a3
js_float_env_proto_set_status():
quickjs-nuttx/quickjs.c:51703
    80024d00:	81f7f793          	andi	a5,a5,-2017
bf_set_exp_bits():
quickjs-nuttx/libbf.h:164
    80024d04:	0057171b          	slliw	a4,a4,0x5
js_float_env_proto_set_status():
quickjs-nuttx/quickjs.c:51703
    80024d08:	8fd9                	or	a5,a5,a4
quickjs-nuttx/quickjs.c:51714
        fe->flags = (fe->flags & ~BF_FLAG_SUBNORMAL) | (b ? BF_FLAG_SUBNORMAL: 0);
    80024d0a:	c41c                	sw	a5,8(s0)
quickjs-nuttx/quickjs.c:51715
        break;
    80024d0c:	b765                	j	80024cb4 <js_float_env_proto_set_status+0x8a>
quickjs-nuttx/quickjs.c:51707
        b = bigfloat_get_rnd_mode(ctx, val);
    80024d0e:	6582                	ld	a1,0(sp)
    80024d10:	6622                	ld	a2,8(sp)
    80024d12:	854a                	mv	a0,s2
    80024d14:	a0dfe0ef          	jal	ra,80023720 <bigfloat_get_rnd_mode>
    80024d18:	d22a                	sw	a0,36(sp)
quickjs-nuttx/quickjs.c:51708
        if (b < 0)
    80024d1a:	f20548e3          	bltz	a0,80024c4a <js_float_env_proto_set_status+0x20>
quickjs-nuttx/quickjs.c:51710
        fe->flags = (fe->flags & ~BF_RND_MASK) | b;
    80024d1e:	441c                	lw	a5,8(s0)
    80024d20:	9be1                	andi	a5,a5,-8
    80024d22:	8d5d                	or	a0,a0,a5
    80024d24:	c408                	sw	a0,8(s0)
quickjs-nuttx/quickjs.c:51711
        break;
    80024d26:	b779                	j	80024cb4 <js_float_env_proto_set_status+0x8a>
quickjs-nuttx/quickjs.c:51713
        b = JS_ToBool(ctx, val);
    80024d28:	6582                	ld	a1,0(sp)
    80024d2a:	6622                	ld	a2,8(sp)
    80024d2c:	854a                	mv	a0,s2
    80024d2e:	8b8ea0ef          	jal	ra,8000ede6 <JS_ToBool>
quickjs-nuttx/quickjs.c:51714
        fe->flags = (fe->flags & ~BF_FLAG_SUBNORMAL) | (b ? BF_FLAG_SUBNORMAL: 0);
    80024d32:	441c                	lw	a5,8(s0)
    80024d34:	00a03533          	snez	a0,a0
    80024d38:	050e                	slli	a0,a0,0x3
    80024d3a:	9bdd                	andi	a5,a5,-9
    80024d3c:	8fc9                	or	a5,a5,a0
    80024d3e:	b7f1                	j	80024d0a <js_float_env_proto_set_status+0xe0>

0000000080024d40 <JS_ToInt64Clamp>:
JS_ToInt64Clamp():
quickjs-nuttx/quickjs.c:10807
{
    80024d40:	715d                	addi	sp,sp,-80
    80024d42:	e0a2                	sd	s0,64(sp)
    80024d44:	f052                	sd	s4,32(sp)
    80024d46:	842e                	mv	s0,a1
    80024d48:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:10808
    int res = JS_ToInt64SatFree(ctx, pres, JS_DupValue(ctx, val));
    80024d4a:	85b6                	mv	a1,a3
    80024d4c:	8532                	mv	a0,a2
quickjs-nuttx/quickjs.c:10807
{
    80024d4e:	fc26                	sd	s1,56(sp)
    80024d50:	f84a                	sd	s2,48(sp)
    80024d52:	f44e                	sd	s3,40(sp)
    80024d54:	e486                	sd	ra,72(sp)
    80024d56:	89ba                	mv	s3,a4
    80024d58:	893e                	mv	s2,a5
    80024d5a:	84c2                	mv	s1,a6
quickjs-nuttx/quickjs.c:10808
    int res = JS_ToInt64SatFree(ctx, pres, JS_DupValue(ctx, val));
    80024d5c:	ebee50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80024d60:	862a                	mv	a2,a0
    80024d62:	86ae                	mv	a3,a1
    80024d64:	8552                	mv	a0,s4
    80024d66:	85a2                	mv	a1,s0
    80024d68:	dacff0ef          	jal	ra,80024314 <JS_ToInt64SatFree>
quickjs-nuttx/quickjs.c:10809
    if (res == 0) {
    80024d6c:	ed01                	bnez	a0,80024d84 <JS_ToInt64Clamp+0x44>
quickjs-nuttx/quickjs.c:10810
        if (*pres < 0)
    80024d6e:	00043803          	ld	a6,0(s0)
    80024d72:	00085463          	bgez	a6,80024d7a <JS_ToInt64Clamp+0x3a>
quickjs-nuttx/quickjs.c:10811
            *pres += neg_offset;
    80024d76:	94c2                	add	s1,s1,a6
    80024d78:	e004                	sd	s1,0(s0)
quickjs-nuttx/quickjs.c:10812
        if (*pres < min)
    80024d7a:	601c                	ld	a5,0(s0)
    80024d7c:	0137dc63          	bge	a5,s3,80024d94 <JS_ToInt64Clamp+0x54>
quickjs-nuttx/quickjs.c:10813
            *pres = min;
    80024d80:	01343023          	sd	s3,0(s0)
quickjs-nuttx/quickjs.c:10818
}
    80024d84:	60a6                	ld	ra,72(sp)
    80024d86:	6406                	ld	s0,64(sp)
    80024d88:	74e2                	ld	s1,56(sp)
    80024d8a:	7942                	ld	s2,48(sp)
    80024d8c:	79a2                	ld	s3,40(sp)
    80024d8e:	7a02                	ld	s4,32(sp)
    80024d90:	6161                	addi	sp,sp,80
    80024d92:	8082                	ret
quickjs-nuttx/quickjs.c:10814
        else if (*pres > max)
    80024d94:	fef958e3          	bge	s2,a5,80024d84 <JS_ToInt64Clamp+0x44>
quickjs-nuttx/quickjs.c:10815
            *pres = max;
    80024d98:	01243023          	sd	s2,0(s0)
    80024d9c:	b7e5                	j	80024d84 <JS_ToInt64Clamp+0x44>

0000000080024d9e <JS_ToLengthFree>:
JS_ToLengthFree():
quickjs-nuttx/quickjs.c:11131
    int res = JS_ToInt64Clamp(ctx, plen, val, 0, MAX_SAFE_INTEGER, 0);
    80024d9e:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:11130
{
    80024da0:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:11131
    int res = JS_ToInt64Clamp(ctx, plen, val, 0, MAX_SAFE_INTEGER, 0);
    80024da2:	4801                	li	a6,0
    80024da4:	83ad                	srli	a5,a5,0xb
    80024da6:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:11130
{
    80024da8:	f406                	sd	ra,40(sp)
    80024daa:	f022                	sd	s0,32(sp)
    80024dac:	ec26                	sd	s1,24(sp)
    80024dae:	e032                	sd	a2,0(sp)
    80024db0:	84aa                	mv	s1,a0
    80024db2:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:11131
    int res = JS_ToInt64Clamp(ctx, plen, val, 0, MAX_SAFE_INTEGER, 0);
    80024db4:	f8dff0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
quickjs-nuttx/quickjs.c:11132
    JS_FreeValue(ctx, val);
    80024db8:	6582                	ld	a1,0(sp)
    80024dba:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:11131
    int res = JS_ToInt64Clamp(ctx, plen, val, 0, MAX_SAFE_INTEGER, 0);
    80024dbc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:11132
    JS_FreeValue(ctx, val);
    80024dbe:	8526                	mv	a0,s1
    80024dc0:	9dfe60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11134
}
    80024dc4:	70a2                	ld	ra,40(sp)
    80024dc6:	8522                	mv	a0,s0
    80024dc8:	7402                	ld	s0,32(sp)
    80024dca:	64e2                	ld	s1,24(sp)
    80024dcc:	6145                	addi	sp,sp,48
    80024dce:	8082                	ret

0000000080024dd0 <js_get_length64>:
js_get_length64():
quickjs-nuttx/quickjs.c:38293
{
    80024dd0:	711d                	addi	sp,sp,-96
    80024dd2:	87b6                	mv	a5,a3
    80024dd4:	8732                	mv	a4,a2
    80024dd6:	e8a2                	sd	s0,80(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80024dd8:	4801                	li	a6,0
js_get_length64():
quickjs-nuttx/quickjs.c:38293
    80024dda:	842e                	mv	s0,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80024ddc:	03000693          	li	a3,48
    80024de0:	85b2                	mv	a1,a2
    80024de2:	863e                	mv	a2,a5
js_get_length64():
quickjs-nuttx/quickjs.c:38293
    80024de4:	e4a6                	sd	s1,72(sp)
    80024de6:	ec86                	sd	ra,88(sp)
    80024de8:	84aa                	mv	s1,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80024dea:	cc1f10ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
js_get_length64():
quickjs-nuttx/quickjs.c:38296
    if (JS_IsException(len_val)) {
    80024dee:	0005871b          	sext.w	a4,a1
    80024df2:	4799                	li	a5,6
    80024df4:	00f70c63          	beq	a4,a5,80024e0c <js_get_length64+0x3c>
    80024df8:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:38300
    return JS_ToLengthFree(ctx, pres, len_val);
    80024dfa:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:38301
}
    80024dfc:	6446                	ld	s0,80(sp)
    80024dfe:	60e6                	ld	ra,88(sp)
    80024e00:	862a                	mv	a2,a0
quickjs-nuttx/quickjs.c:38300
    return JS_ToLengthFree(ctx, pres, len_val);
    80024e02:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:38301
}
    80024e04:	64a6                	ld	s1,72(sp)
    80024e06:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:38300
    return JS_ToLengthFree(ctx, pres, len_val);
    80024e08:	f97ff06f          	j	80024d9e <JS_ToLengthFree>
quickjs-nuttx/quickjs.c:38301
}
    80024e0c:	60e6                	ld	ra,88(sp)
quickjs-nuttx/quickjs.c:38297
        *pres = 0;
    80024e0e:	00043023          	sd	zero,0(s0)
quickjs-nuttx/quickjs.c:38301
}
    80024e12:	6446                	ld	s0,80(sp)
    80024e14:	64a6                	ld	s1,72(sp)
    80024e16:	557d                	li	a0,-1
    80024e18:	6125                	addi	sp,sp,96
    80024e1a:	8082                	ret

0000000080024e1c <JS_ToInt64>:
JS_ToInt64():
quickjs-nuttx/quickjs.c:10883
{
    80024e1c:	7119                	addi	sp,sp,-128
    80024e1e:	f4a6                	sd	s1,104(sp)
    80024e20:	f0ca                	sd	s2,96(sp)
    80024e22:	84ae                	mv	s1,a1
    80024e24:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:10884
    return JS_ToInt64Free(ctx, pres, JS_DupValue(ctx, val));
    80024e26:	85b6                	mv	a1,a3
    80024e28:	8532                	mv	a0,a2
quickjs-nuttx/quickjs.c:10883
{
    80024e2a:	f8a2                	sd	s0,112(sp)
    80024e2c:	ecce                	sd	s3,88(sp)
    80024e2e:	e8d2                	sd	s4,80(sp)
    80024e30:	e4d6                	sd	s5,72(sp)
    80024e32:	e0da                	sd	s6,64(sp)
    80024e34:	fc86                	sd	ra,120(sp)
quickjs-nuttx/quickjs.c:10884
    return JS_ToInt64Free(ctx, pres, JS_DupValue(ctx, val));
    80024e36:	de4e50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80024e3a:	f82a                	sd	a0,48(sp)
    80024e3c:	842e                	mv	s0,a1
JS_ToInt64Free():
quickjs-nuttx/quickjs.c:10829
    switch(tag) {
    80024e3e:	499d                	li	s3,7
    80024e40:	5add                	li	s5,-9
    80024e42:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:10872
        if (JS_IsException(val)) {
    80024e44:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:10828
    tag = JS_VALUE_GET_NORM_TAG(val);
    80024e46:	0004079b          	sext.w	a5,s0
quickjs-nuttx/quickjs.c:10829
    switch(tag) {
    80024e4a:	05378f63          	beq	a5,s3,80024ea8 <JS_ToInt64+0x8c>
    80024e4e:	02f9ec63          	bltu	s3,a5,80024e86 <JS_ToInt64+0x6a>
    80024e52:	04fb7863          	bgeu	s6,a5,80024ea2 <JS_ToInt64+0x86>
quickjs-nuttx/quickjs.c:10871
        val = JS_ToNumberFree(ctx, val);
    80024e56:	75c2                	ld	a1,48(sp)
    80024e58:	8622                	mv	a2,s0
    80024e5a:	854a                	mv	a0,s2
    80024e5c:	c2efd0ef          	jal	ra,8002228a <JS_ToNumberFree>
    80024e60:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:10872
        if (JS_IsException(val)) {
    80024e62:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:10871
        val = JS_ToNumberFree(ctx, val);
    80024e66:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10872
        if (JS_IsException(val)) {
    80024e68:	fd479fe3          	bne	a5,s4,80024e46 <JS_ToInt64+0x2a>
quickjs-nuttx/quickjs.c:10873
            *pres = 0;
    80024e6c:	0004b023          	sd	zero,0(s1)
quickjs-nuttx/quickjs.c:10874
            return -1;
    80024e70:	557d                	li	a0,-1
JS_ToInt64():
quickjs-nuttx/quickjs.c:10885
}
    80024e72:	70e6                	ld	ra,120(sp)
    80024e74:	7446                	ld	s0,112(sp)
    80024e76:	74a6                	ld	s1,104(sp)
    80024e78:	7906                	ld	s2,96(sp)
    80024e7a:	69e6                	ld	s3,88(sp)
    80024e7c:	6a46                	ld	s4,80(sp)
    80024e7e:	6aa6                	ld	s5,72(sp)
    80024e80:	6b06                	ld	s6,64(sp)
    80024e82:	6109                	addi	sp,sp,128
    80024e84:	8082                	ret
JS_ToInt64Free():
quickjs-nuttx/quickjs.c:10829
    switch(tag) {
    80024e86:	fd5798e3          	bne	a5,s5,80024e56 <JS_ToInt64+0x3a>
quickjs-nuttx/quickjs.c:10865
            bf_get_int64(&ret, &p->num, BF_GET_INT_MOD);
    80024e8a:	75c2                	ld	a1,48(sp)
    80024e8c:	4605                	li	a2,1
    80024e8e:	0828                	addi	a0,sp,24
    80024e90:	05a1                	addi	a1,a1,8
    80024e92:	1dc340ef          	jal	ra,8005906e <bf_get_int64>
quickjs-nuttx/quickjs.c:10866
            JS_FreeValue(ctx, val);
    80024e96:	75c2                	ld	a1,48(sp)
    80024e98:	8622                	mv	a2,s0
    80024e9a:	854a                	mv	a0,s2
    80024e9c:	903e60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10868
        break;
    80024ea0:	a0b1                	j	80024eec <JS_ToInt64+0xd0>
quickjs-nuttx/quickjs.c:10834
        ret = JS_VALUE_GET_INT(val);
    80024ea2:	57c2                	lw	a5,48(sp)
quickjs-nuttx/quickjs.c:10852
                ret = v << ((e - 1023) - 52);
    80024ea4:	ec3e                	sd	a5,24(sp)
    80024ea6:	a099                	j	80024eec <JS_ToInt64+0xd0>
quickjs-nuttx/quickjs.c:10841
            d = JS_VALUE_GET_FLOAT64(val);
    80024ea8:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:10845
            if (likely(e <= (1023 + 62))) {
    80024eaa:	43d00693          	li	a3,1085
quickjs-nuttx/quickjs.c:10844
            e = (u.u64 >> 52) & 0x7ff;
    80024eae:	0347d713          	srli	a4,a5,0x34
    80024eb2:	7ff77713          	andi	a4,a4,2047
quickjs-nuttx/quickjs.c:10842
            u.d = d;
    80024eb6:	863e                	mv	a2,a5
quickjs-nuttx/quickjs.c:10845
            if (likely(e <= (1023 + 62))) {
    80024eb8:	00e6c763          	blt	a3,a4,80024ec6 <JS_ToInt64+0xaa>
quickjs-nuttx/quickjs.c:10847
                ret = (int64_t)d;
    80024ebc:	f20787d3          	fmv.d.x	fa5,a5
    80024ec0:	c22797d3          	fcvt.l.d	a5,fa5,rtz
    80024ec4:	b7c5                	j	80024ea4 <JS_ToInt64+0x88>
quickjs-nuttx/quickjs.c:10848
            } else if (e <= (1023 + 62 + 53)) {
    80024ec6:	47200693          	li	a3,1138
    80024eca:	02e6c063          	blt	a3,a4,80024eea <JS_ToInt64+0xce>
quickjs-nuttx/quickjs.c:10851
                v = (u.u64 & (((uint64_t)1 << 52) - 1)) | ((uint64_t)1 << 52);
    80024ece:	07b2                	slli	a5,a5,0xc
    80024ed0:	4685                	li	a3,1
    80024ed2:	83b1                	srli	a5,a5,0xc
    80024ed4:	16d2                	slli	a3,a3,0x34
    80024ed6:	8fd5                	or	a5,a5,a3
quickjs-nuttx/quickjs.c:10852
                ret = v << ((e - 1023) - 52);
    80024ed8:	bcd7071b          	addiw	a4,a4,-1075
    80024edc:	00e797b3          	sll	a5,a5,a4
quickjs-nuttx/quickjs.c:10854
                if (u.u64 >> 63)
    80024ee0:	fc0652e3          	bgez	a2,80024ea4 <JS_ToInt64+0x88>
quickjs-nuttx/quickjs.c:10855
                    ret = -ret;
    80024ee4:	40f007b3          	neg	a5,a5
    80024ee8:	bf75                	j	80024ea4 <JS_ToInt64+0x88>
quickjs-nuttx/quickjs.c:10857
                ret = 0; /* also handles NaN and +inf */
    80024eea:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs.c:10878
    *pres = ret;
    80024eec:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:10879
    return 0;
    80024eee:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:10878
    *pres = ret;
    80024ef0:	e09c                	sd	a5,0(s1)
quickjs-nuttx/quickjs.c:10879
    return 0;
    80024ef2:	b741                	j	80024e72 <JS_ToInt64+0x56>

0000000080024ef4 <JS_ToNumericFree>:
JS_ToNumericFree():
quickjs-nuttx/quickjs.c:10532
{
    80024ef4:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:10533
    return JS_ToNumberHintFree(ctx, val, TON_FLAG_NUMERIC);
    80024ef6:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:10534
}
    80024ef8:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:10533
    return JS_ToNumberHintFree(ctx, val, TON_FLAG_NUMERIC);
    80024efa:	980fd06f          	j	8002207a <JS_ToNumberHintFree>

0000000080024efe <JS_ToNumeric>:
JS_ToNumeric():
quickjs-nuttx/quickjs.c:10537
{
    80024efe:	7139                	addi	sp,sp,-64
    80024f00:	f822                	sd	s0,48(sp)
    80024f02:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:10538
    return JS_ToNumericFree(ctx, JS_DupValue(ctx, val));
    80024f04:	852e                	mv	a0,a1
    80024f06:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:10537
{
    80024f08:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:10538
    return JS_ToNumericFree(ctx, JS_DupValue(ctx, val));
    80024f0a:	d10e50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80024f0e:	862e                	mv	a2,a1
    80024f10:	85aa                	mv	a1,a0
    80024f12:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:10539
}
    80024f14:	7442                	ld	s0,48(sp)
    80024f16:	70e2                	ld	ra,56(sp)
    80024f18:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:10538
    return JS_ToNumericFree(ctx, JS_DupValue(ctx, val));
    80024f1a:	fdbff06f          	j	80024ef4 <JS_ToNumericFree>

0000000080024f1e <js_bigfloat_fop2>:
js_bigfloat_fop2():
quickjs-nuttx/quickjs.c:51449
{
    80024f1e:	7151                	addi	sp,sp,-240
    80024f20:	f1a2                	sd	s0,224(sp)
    80024f22:	eda6                	sd	s1,216(sp)
    80024f24:	e5ce                	sd	s3,200(sp)
    80024f26:	e1d2                	sd	s4,192(sp)
    80024f28:	fd56                	sd	s5,184(sp)
    80024f2a:	f586                	sd	ra,232(sp)
    80024f2c:	e9ca                	sd	s2,208(sp)
    80024f2e:	f95a                	sd	s6,176(sp)
    80024f30:	f55e                	sd	s7,168(sp)
    80024f32:	f162                	sd	s8,160(sp)
    80024f34:	e02e                	sd	a1,0(sp)
    80024f36:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:51454
    op1 = JS_ToNumeric(ctx, argv[0]);
    80024f38:	630c                	ld	a1,0(a4)
    80024f3a:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:51449
{
    80024f3c:	8a3e                	mv	s4,a5
    80024f3e:	89aa                	mv	s3,a0
    80024f40:	8ab6                	mv	s5,a3
    80024f42:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:51454
    op1 = JS_ToNumeric(ctx, argv[0]);
    80024f44:	fbbff0ef          	jal	ra,80024efe <JS_ToNumeric>
    80024f48:	e82a                	sd	a0,16(sp)
    80024f4a:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:51455
    if (JS_IsException(op1))
    80024f4c:	0005879b          	sext.w	a5,a1
    80024f50:	4499                	li	s1,6
    80024f52:	02979263          	bne	a5,s1,80024f76 <js_bigfloat_fop2+0x58>
quickjs-nuttx/quickjs.c:51456
        return op1;
    80024f56:	e0aa                	sd	a0,64(sp)
    80024f58:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:51523 (discriminator 1)
}
    80024f5a:	70ae                	ld	ra,232(sp)
    80024f5c:	740e                	ld	s0,224(sp)
    80024f5e:	6506                	ld	a0,64(sp)
    80024f60:	65a6                	ld	a1,72(sp)
    80024f62:	64ee                	ld	s1,216(sp)
    80024f64:	694e                	ld	s2,208(sp)
    80024f66:	69ae                	ld	s3,200(sp)
    80024f68:	6a0e                	ld	s4,192(sp)
    80024f6a:	7aea                	ld	s5,184(sp)
    80024f6c:	7b4a                	ld	s6,176(sp)
    80024f6e:	7baa                	ld	s7,168(sp)
    80024f70:	7c0a                	ld	s8,160(sp)
    80024f72:	616d                	addi	sp,sp,240
    80024f74:	8082                	ret
quickjs-nuttx/quickjs.c:51457
    op2 = JS_ToNumeric(ctx, argv[1]);
    80024f76:	680c                	ld	a1,16(s0)
    80024f78:	6c10                	ld	a2,24(s0)
    80024f7a:	854e                	mv	a0,s3
    80024f7c:	f83ff0ef          	jal	ra,80024efe <JS_ToNumeric>
    80024f80:	f42e                	sd	a1,40(sp)
    80024f82:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:51458
    if (JS_IsException(op2)) {
    80024f84:	2581                	sext.w	a1,a1
    80024f86:	00959c63          	bne	a1,s1,80024f9e <js_bigfloat_fop2+0x80>
quickjs-nuttx/quickjs.c:51459
        JS_FreeValue(ctx, op1);
    80024f8a:	65c2                	ld	a1,16(sp)
    80024f8c:	6662                	ld	a2,24(sp)
    80024f8e:	854e                	mv	a0,s3
    80024f90:	80fe60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51460
        return op2;
    80024f94:	7782                	ld	a5,32(sp)
    80024f96:	e0be                	sd	a5,64(sp)
    80024f98:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:51485
        return JS_EXCEPTION;
    80024f9a:	e4be                	sd	a5,72(sp)
    80024f9c:	bf7d                	j	80024f5a <js_bigfloat_fop2+0x3c>
quickjs-nuttx/quickjs.c:51462
    a = JS_ToBigFloat(ctx, &a_s, op1);
    80024f9e:	6642                	ld	a2,16(sp)
    80024fa0:	66e2                	ld	a3,24(sp)
    80024fa2:	05010c13          	addi	s8,sp,80
    80024fa6:	85e2                	mv	a1,s8
    80024fa8:	854e                	mv	a0,s3
    80024faa:	cbee50ef          	jal	ra,8000a468 <JS_ToBigFloat>
    80024fae:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:51463
    if (!a)
    80024fb0:	c159                	beqz	a0,80025036 <js_bigfloat_fop2+0x118>
quickjs-nuttx/quickjs.c:51465
    b = JS_ToBigFloat(ctx, &b_s, op2);
    80024fb2:	7602                	ld	a2,32(sp)
    80024fb4:	76a2                	ld	a3,40(sp)
    80024fb6:	07810b93          	addi	s7,sp,120
    80024fba:	85de                	mv	a1,s7
    80024fbc:	854e                	mv	a0,s3
    80024fbe:	caae50ef          	jal	ra,8000a468 <JS_ToBigFloat>
    80024fc2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:51466
    if (!b)
    80024fc4:	c525                	beqz	a0,8002502c <js_bigfloat_fop2+0x10e>
quickjs-nuttx/quickjs.c:51469
    if (argc > 2) {
    80024fc6:	4789                	li	a5,2
    80024fc8:	0557c463          	blt	a5,s5,80025010 <js_bigfloat_fop2+0xf2>
quickjs-nuttx/quickjs.c:51468
    fe = &ctx->fp_env;
    80024fcc:	19898413          	addi	s0,s3,408
quickjs-nuttx/quickjs.c:51474
    res = JS_NewBigFloat(ctx);
    80024fd0:	854e                	mv	a0,s3
    80024fd2:	9aef50ef          	jal	ra,8001a180 <JS_NewBigFloat>
    80024fd6:	f82a                	sd	a0,48(sp)
    80024fd8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:51475
    if (JS_IsException(res)) {
    80024fda:	0005871b          	sext.w	a4,a1
    80024fde:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51474
    res = JS_NewBigFloat(ctx);
    80024fe0:	8b2a                	mv	s6,a0
    80024fe2:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:51475
    if (JS_IsException(res)) {
    80024fe4:	02f70f63          	beq	a4,a5,80025022 <js_bigfloat_fop2+0x104>
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    80024fe8:	ff6a079b          	addiw	a5,s4,-10
    80024fec:	0007869b          	sext.w	a3,a5
    80024ff0:	4735                	li	a4,13
    80024ff2:	0521                	addi	a0,a0,8
js_bigfloat_fop2():
quickjs-nuttx/quickjs.c:51488
    switch (magic) {
    80024ff4:	0ed76e63          	bltu	a4,a3,800250f0 <js_bigfloat_fop2+0x1d2>
    80024ff8:	02079713          	slli	a4,a5,0x20
    80024ffc:	01e75793          	srli	a5,a4,0x1e
