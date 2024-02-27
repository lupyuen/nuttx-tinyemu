    80020000:	c80d                	beqz	s0,80020032 <js_string_get_own_property+0x64>
quickjs-nuttx/quickjs.c:41144
                    if (p1->is_wide_char)
    80020002:	1702                	slli	a4,a4,0x20
    80020004:	2601                	sext.w	a2,a2
    80020006:	9301                	srli	a4,a4,0x20
    80020008:	02065a63          	bgez	a2,8002003c <js_string_get_own_property+0x6e>
quickjs-nuttx/quickjs.c:41145
                        ch = p1->u.str16[idx];
    8002000c:	0721                	addi	a4,a4,8
    8002000e:	0706                	slli	a4,a4,0x1
    80020010:	9736                	add	a4,a4,a3
    80020012:	00075583          	lhu	a1,0(a4) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:41148
                    desc->flags = JS_PROP_ENUMERABLE;
    80020016:	4791                	li	a5,4
    80020018:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:41149
                    desc->value = js_new_string_char(ctx, ch);
    8002001a:	f81ff0ef          	jal	ra,8001ff9a <js_new_string_char>
quickjs-nuttx/quickjs.c:41150
                    desc->getter = JS_UNDEFINED;
    8002001e:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:41149
                    desc->value = js_new_string_char(ctx, ch);
    80020020:	e80c                	sd	a1,16(s0)
    80020022:	e408                	sd	a0,8(s0)
quickjs-nuttx/quickjs.c:41150
                    desc->getter = JS_UNDEFINED;
    80020024:	00043c23          	sd	zero,24(s0)
    80020028:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:41151
                    desc->setter = JS_UNDEFINED;
    8002002a:	02043423          	sd	zero,40(s0)
    8002002e:	f81c                	sd	a5,48(s0)
quickjs-nuttx/quickjs.c:41153
                return TRUE;
    80020030:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:41158
}
    80020032:	60e2                	ld	ra,24(sp)
    80020034:	6442                	ld	s0,16(sp)
    80020036:	852e                	mv	a0,a1
    80020038:	6105                	addi	sp,sp,32
    8002003a:	8082                	ret
quickjs-nuttx/quickjs.c:41147
                        ch = p1->u.str8[idx];
    8002003c:	9736                	add	a4,a4,a3
    8002003e:	01074583          	lbu	a1,16(a4)
    80020042:	bfd1                	j	80020016 <js_string_get_own_property+0x48>
quickjs-nuttx/quickjs.c:41157
    return FALSE;
    80020044:	4581                	li	a1,0
    80020046:	b7f5                	j	80020032 <js_string_get_own_property+0x64>

0000000080020048 <js_string_iterator_next>:
js_string_iterator_next():
quickjs-nuttx/quickjs.c:42733
{
    80020048:	7159                	addi	sp,sp,-112
quickjs-nuttx/quickjs.c:42738
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_STRING_ITERATOR);
    8002004a:	02d00693          	li	a3,45
quickjs-nuttx/quickjs.c:42733
{
    8002004e:	eca6                	sd	s1,88(sp)
    80020050:	e0d2                	sd	s4,64(sp)
    80020052:	f486                	sd	ra,104(sp)
    80020054:	f0a2                	sd	s0,96(sp)
    80020056:	e8ca                	sd	s2,80(sp)
    80020058:	e4ce                	sd	s3,72(sp)
    8002005a:	fc56                	sd	s5,56(sp)
    8002005c:	84aa                	mv	s1,a0
    8002005e:	e02e                	sd	a1,0(sp)
    80020060:	e432                	sd	a2,8(sp)
    80020062:	8a3e                	mv	s4,a5
quickjs-nuttx/quickjs.c:42738
    it = JS_GetOpaque2(ctx, this_val, JS_CLASS_STRING_ITERATOR);
    80020064:	f8af80ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:42739
    if (!it) {
    80020068:	e10d                	bnez	a0,8002008a <js_string_iterator_next+0x42>
quickjs-nuttx/quickjs.c:42740
        *pdone = FALSE;
    8002006a:	000a2023          	sw	zero,0(s4) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:42741
        return JS_EXCEPTION;
    8002006e:	f002                	sd	zero,32(sp)
    80020070:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42752
        return JS_UNDEFINED;
    80020072:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:42764 (discriminator 1)
}
    80020074:	70a6                	ld	ra,104(sp)
    80020076:	7406                	ld	s0,96(sp)
    80020078:	7502                	ld	a0,32(sp)
    8002007a:	75a2                	ld	a1,40(sp)
    8002007c:	64e6                	ld	s1,88(sp)
    8002007e:	6946                	ld	s2,80(sp)
    80020080:	69a6                	ld	s3,72(sp)
    80020082:	6a06                	ld	s4,64(sp)
    80020084:	7ae2                	ld	s5,56(sp)
    80020086:	6165                	addi	sp,sp,112
    80020088:	8082                	ret
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8002008a:	6510                	ld	a2,8(a0)
js_string_iterator_next():
quickjs-nuttx/quickjs.c:42743
    if (JS_IsUndefined(it->obj))
    8002008c:	4a8d                	li	s5,3
    8002008e:	842a                	mv	s0,a0
    80020090:	0006079b          	sext.w	a5,a2
    80020094:	03578563          	beq	a5,s5,800200be <js_string_iterator_next+0x76>
quickjs-nuttx/quickjs.c:42745
    p = JS_VALUE_GET_STRING(it->obj);
    80020098:	00053983          	ld	s3,0(a0)
quickjs-nuttx/quickjs.c:42746
    idx = it->idx;
    8002009c:	01452903          	lw	s2,20(a0)
quickjs-nuttx/quickjs.c:42747
    if (idx >= p->len) {
    800200a0:	0049a783          	lw	a5,4(s3)
quickjs-nuttx/quickjs.c:42746
    idx = it->idx;
    800200a4:	ce4a                	sw	s2,28(sp)
quickjs-nuttx/quickjs.c:42747
    if (idx >= p->len) {
    800200a6:	1786                	slli	a5,a5,0x21
    800200a8:	9385                	srli	a5,a5,0x21
    800200aa:	02f96063          	bltu	s2,a5,800200ca <js_string_iterator_next+0x82>
quickjs-nuttx/quickjs.c:42748
        JS_FreeValue(ctx, it->obj);
    800200ae:	610c                	ld	a1,0(a0)
    800200b0:	8526                	mv	a0,s1
    800200b2:	eeceb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42749
        it->obj = JS_UNDEFINED;
    800200b6:	00043023          	sd	zero,0(s0)
    800200ba:	01543423          	sd	s5,8(s0)
quickjs-nuttx/quickjs.c:42751
        *pdone = TRUE;
    800200be:	4785                	li	a5,1
    800200c0:	00fa2023          	sw	a5,0(s4)
quickjs-nuttx/quickjs.c:42752
        return JS_UNDEFINED;
    800200c4:	f002                	sd	zero,32(sp)
    800200c6:	478d                	li	a5,3
    800200c8:	b76d                	j	80020072 <js_string_iterator_next+0x2a>
quickjs-nuttx/quickjs.c:42756
    c = string_getc(p, (int *)&idx);
    800200ca:	086c                	addi	a1,sp,28
    800200cc:	854e                	mv	a0,s3
    800200ce:	bb1e70ef          	jal	ra,80007c7e <string_getc>
quickjs-nuttx/quickjs.c:42757
    it->idx = idx;
    800200d2:	47f2                	lw	a5,28(sp)
quickjs-nuttx/quickjs.c:42759
    if (c <= 0xffff) {
    800200d4:	0005071b          	sext.w	a4,a0
quickjs-nuttx/quickjs.c:42757
    it->idx = idx;
    800200d8:	c85c                	sw	a5,20(s0)
quickjs-nuttx/quickjs.c:42758
    *pdone = FALSE;
    800200da:	000a2023          	sw	zero,0(s4)
quickjs-nuttx/quickjs.c:42759
    if (c <= 0xffff) {
    800200de:	67c1                	lui	a5,0x10
    800200e0:	00f77b63          	bgeu	a4,a5,800200f6 <js_string_iterator_next+0xae>
quickjs-nuttx/quickjs.c:42760
        return js_new_string_char(ctx, c);
    800200e4:	03051593          	slli	a1,a0,0x30
    800200e8:	91c1                	srli	a1,a1,0x30
    800200ea:	8526                	mv	a0,s1
    800200ec:	eafff0ef          	jal	ra,8001ff9a <js_new_string_char>
quickjs-nuttx/quickjs.c:42762
        return js_new_string16(ctx, p->u.str16 + start, 2);
    800200f0:	f02a                	sd	a0,32(sp)
    800200f2:	f42e                	sd	a1,40(sp)
    800200f4:	b741                	j	80020074 <js_string_iterator_next+0x2c>
    800200f6:	02091793          	slli	a5,s2,0x20
    800200fa:	01098593          	addi	a1,s3,16
    800200fe:	01f7d913          	srli	s2,a5,0x1f
    80020102:	4609                	li	a2,2
    80020104:	95ca                	add	a1,a1,s2
    80020106:	8526                	mv	a0,s1
    80020108:	e7bfd0ef          	jal	ra,8001df82 <js_new_string16>
    8002010c:	b7d5                	j	800200f0 <js_string_iterator_next+0xa8>

000000008002010e <js_sub_string>:
js_sub_string():
quickjs-nuttx/quickjs.c:3512
{
    8002010e:	7179                	addi	sp,sp,-48
    80020110:	f022                	sd	s0,32(sp)
    80020112:	ec26                	sd	s1,24(sp)
    80020114:	e84a                	sd	s2,16(sp)
    80020116:	f406                	sd	ra,40(sp)
    80020118:	41dc                	lw	a5,4(a1)
    8002011a:	842e                	mv	s0,a1
    8002011c:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:3513
    int len = end - start;
    8002011e:	40c684bb          	subw	s1,a3,a2
quickjs-nuttx/quickjs.c:3514
    if (start == 0 && end == p->len) {
    80020122:	ee01                	bnez	a2,8002013a <js_sub_string+0x2c>
quickjs-nuttx/quickjs.c:3514 (discriminator 1)
    80020124:	02179713          	slli	a4,a5,0x21
    80020128:	9305                	srli	a4,a4,0x21
    8002012a:	00971863          	bne	a4,s1,8002013a <js_sub_string+0x2c>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8002012e:	419c                	lw	a5,0(a1)
    80020130:	e02e                	sd	a1,0(sp)
    80020132:	2785                	addiw	a5,a5,1
    80020134:	c19c                	sw	a5,0(a1)
js_sub_string():
quickjs-nuttx/quickjs.c:3534
        return JS_MKPTR(JS_TAG_STRING, str);
    80020136:	57e5                	li	a5,-7
    80020138:	a899                	j	8002018e <js_sub_string+0x80>
quickjs-nuttx/quickjs.c:3517
    if (p->is_wide_char && len > 0) {
    8002013a:	2781                	sext.w	a5,a5
    8002013c:	0807d763          	bgez	a5,800201ca <js_sub_string+0xbc>
quickjs-nuttx/quickjs.c:3517 (discriminator 1)
    80020140:	08905563          	blez	s1,800201ca <js_sub_string+0xbc>
    80020144:	00191893          	slli	a7,s2,0x1
    80020148:	01140833          	add	a6,s0,a7
quickjs-nuttx/quickjs.c:3517
    8002014c:	874a                	mv	a4,s2
quickjs-nuttx/quickjs.c:3520
        uint16_t c = 0;
    8002014e:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:3521 (discriminator 1)
        for (i = start; i < end; i++) {
    80020150:	0809                	addi	a6,a6,2
    80020152:	02d74163          	blt	a4,a3,80020174 <js_sub_string+0x66>
quickjs-nuttx/quickjs.c:3524
        if (c > 0xFF)
    80020156:	0ff00713          	li	a4,255
    8002015a:	02f77263          	bgeu	a4,a5,8002017e <js_sub_string+0x70>
quickjs-nuttx/quickjs.c:3525
            return js_new_string16(ctx, p->u.str16 + start, len);
    8002015e:	01040593          	addi	a1,s0,16
quickjs-nuttx/quickjs.c:3538
}
    80020162:	7402                	ld	s0,32(sp)
    80020164:	70a2                	ld	ra,40(sp)
    80020166:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:3525
            return js_new_string16(ctx, p->u.str16 + start, len);
    80020168:	8626                	mv	a2,s1
quickjs-nuttx/quickjs.c:3538
}
    8002016a:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:3525
            return js_new_string16(ctx, p->u.str16 + start, len);
    8002016c:	95c6                	add	a1,a1,a7
quickjs-nuttx/quickjs.c:3538
}
    8002016e:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:3525
            return js_new_string16(ctx, p->u.str16 + start, len);
    80020170:	e13fd06f          	j	8001df82 <js_new_string16>
quickjs-nuttx/quickjs.c:3522 (discriminator 3)
            c |= p->u.str16[i];
    80020174:	00e85603          	lhu	a2,14(a6) # 8000e <asinh-0x7ff7fff2>
quickjs-nuttx/quickjs.c:3521 (discriminator 3)
        for (i = start; i < end; i++) {
    80020178:	2705                	addiw	a4,a4,1
quickjs-nuttx/quickjs.c:3522 (discriminator 3)
            c |= p->u.str16[i];
    8002017a:	8fd1                	or	a5,a5,a2
quickjs-nuttx/quickjs.c:3521 (discriminator 3)
        for (i = start; i < end; i++) {
    8002017c:	bfd1                	j	80020150 <js_sub_string+0x42>
quickjs-nuttx/quickjs.c:3527
        str = js_alloc_string(ctx, len, 0);
    8002017e:	4601                	li	a2,0
    80020180:	85a6                	mv	a1,s1
    80020182:	d9dfd0ef          	jal	ra,8001df1e <js_alloc_string>
quickjs-nuttx/quickjs.c:3528
        if (!str)
    80020186:	4701                	li	a4,0
    80020188:	ed01                	bnez	a0,800201a0 <js_sub_string+0x92>
quickjs-nuttx/quickjs.c:3529
            return JS_EXCEPTION;
    8002018a:	e002                	sd	zero,0(sp)
    8002018c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3538
}
    8002018e:	70a2                	ld	ra,40(sp)
    80020190:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:3534
        return JS_MKPTR(JS_TAG_STRING, str);
    80020192:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:3538
}
    80020194:	6502                	ld	a0,0(sp)
    80020196:	65a2                	ld	a1,8(sp)
    80020198:	64e2                	ld	s1,24(sp)
    8002019a:	6942                	ld	s2,16(sp)
    8002019c:	6145                	addi	sp,sp,48
    8002019e:	8082                	ret
quickjs-nuttx/quickjs.c:3531 (discriminator 3)
            str->u.str8[i] = p->u.str16[start + i];
    800201a0:	012707bb          	addw	a5,a4,s2
    800201a4:	07a1                	addi	a5,a5,8
    800201a6:	0786                	slli	a5,a5,0x1
    800201a8:	97a2                	add	a5,a5,s0
    800201aa:	0007d783          	lhu	a5,0(a5) # 10000 <asinh-0x7fff0000>
    800201ae:	00e506b3          	add	a3,a0,a4
quickjs-nuttx/quickjs.c:3530 (discriminator 3)
        for (i = 0; i < len; i++) {
    800201b2:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:3531 (discriminator 3)
            str->u.str8[i] = p->u.str16[start + i];
    800201b4:	00f68823          	sb	a5,16(a3) # ffffffff80000010 <_ebss+0xfffffffeffefeeaa>
quickjs-nuttx/quickjs.c:3530 (discriminator 3)
        for (i = 0; i < len; i++) {
    800201b8:	0007079b          	sext.w	a5,a4
    800201bc:	fe97c2e3          	blt	a5,s1,800201a0 <js_sub_string+0x92>
quickjs-nuttx/quickjs.c:3533
        str->u.str8[len] = '\0';
    800201c0:	94aa                	add	s1,s1,a0
    800201c2:	00048823          	sb	zero,16(s1)
quickjs-nuttx/quickjs.c:3534
        return JS_MKPTR(JS_TAG_STRING, str);
    800201c6:	e02a                	sd	a0,0(sp)
    800201c8:	b7bd                	j	80020136 <js_sub_string+0x28>
quickjs-nuttx/quickjs.c:3536
        return js_new_string8(ctx, p->u.str8 + start, len);
    800201ca:	0441                	addi	s0,s0,16
    800201cc:	012405b3          	add	a1,s0,s2
quickjs-nuttx/quickjs.c:3538
}
    800201d0:	7402                	ld	s0,32(sp)
    800201d2:	70a2                	ld	ra,40(sp)
    800201d4:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:3536
        return js_new_string8(ctx, p->u.str8 + start, len);
    800201d6:	8626                	mv	a2,s1
quickjs-nuttx/quickjs.c:3538
}
    800201d8:	64e2                	ld	s1,24(sp)
    800201da:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:3536
        return js_new_string8(ctx, p->u.str8 + start, len);
    800201dc:	d6dff06f          	j	8001ff48 <js_new_string8>

00000000800201e0 <JS_NewAtomInt64>:
JS_NewAtomInt64():
quickjs-nuttx/quickjs.c:2997
    if ((uint64_t)n <= JS_ATOM_MAX_INT) {
    800201e0:	800007b7          	lui	a5,0x80000
    800201e4:	fff7c793          	not	a5,a5
quickjs-nuttx/quickjs.c:2996
{
    800201e8:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:2997
    if ((uint64_t)n <= JS_ATOM_MAX_INT) {
    800201ea:	00b7e763          	bltu	a5,a1,800201f8 <JS_NewAtomInt64+0x18>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    800201ee:	80000537          	lui	a0,0x80000
    800201f2:	8d4d                	or	a0,a0,a1
    800201f4:	2501                	sext.w	a0,a0
JS_NewAtomInt64():
quickjs-nuttx/quickjs.c:3009
}
    800201f6:	8082                	ret
quickjs-nuttx/quickjs.c:2996
{
    800201f8:	7139                	addi	sp,sp,-64
    800201fa:	f822                	sd	s0,48(sp)
quickjs-nuttx/quickjs.c:3002
        snprintf(buf, sizeof(buf), "%" PRId64 , n);
    800201fc:	0004a617          	auipc	a2,0x4a
    80020200:	74c60613          	addi	a2,a2,1868 # 8006a948 <qjsc_repl+0x5398>
    80020204:	842a                	mv	s0,a0
    80020206:	45e1                	li	a1,24
    80020208:	0828                	addi	a0,sp,24
quickjs-nuttx/quickjs.c:2996
{
    8002020a:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:3002
        snprintf(buf, sizeof(buf), "%" PRId64 , n);
    8002020c:	034410ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:3003
        val = JS_NewString(ctx, buf);
    80020210:	082c                	addi	a1,sp,24
    80020212:	8522                	mv	a0,s0
    80020214:	fa4ff0ef          	jal	ra,8001f9b8 <JS_NewString>
quickjs-nuttx/quickjs.c:3004
        if (JS_IsException(val))
    80020218:	2581                	sext.w	a1,a1
    8002021a:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:3003
        val = JS_NewString(ctx, buf);
    8002021c:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:3005
            return JS_ATOM_NULL;
    8002021e:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:3004
        if (JS_IsException(val))
    80020220:	00e58863          	beq	a1,a4,80020230 <JS_NewAtomInt64+0x50>
quickjs-nuttx/quickjs.c:3006
        return __JS_NewAtom(ctx->rt, JS_VALUE_GET_STRING(val),
    80020224:	6c08                	ld	a0,24(s0)
    80020226:	4605                	li	a2,1
    80020228:	85be                	mv	a1,a5
    8002022a:	a55ea0ef          	jal	ra,8000ac7e <__JS_NewAtom>
    8002022e:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:3009 (discriminator 1)
}
    80020230:	70e2                	ld	ra,56(sp)
    80020232:	7442                	ld	s0,48(sp)
    80020234:	6121                	addi	sp,sp,64
    80020236:	8082                	ret

0000000080020238 <js_dtoa>:
js_dtoa1():
quickjs-nuttx/quickjs.c:11488
    if (!isfinite(d)) {
    80020238:	00074797          	auipc	a5,0x74
    8002023c:	9487b787          	fld	fa5,-1720(a5) # 80093b80 <_erodata+0xe>
    80020240:	12f7f7d3          	fmul.d	fa5,fa5,fa5
js_dtoa():
quickjs-nuttx/quickjs.c:11575
{
    80020244:	7101                	addi	sp,sp,-512
    80020246:	efce                	sd	s3,472(sp)
    80020248:	b722                	fsd	fs0,424(sp)
    8002024a:	ff86                	sd	ra,504(sp)
    8002024c:	fba2                	sd	s0,496(sp)
    8002024e:	f7a6                	sd	s1,488(sp)
js_dtoa1():
quickjs-nuttx/quickjs.c:11488
    if (!isfinite(d)) {
    80020250:	a2f52753          	feq.d	a4,fa0,fa5
js_dtoa():
quickjs-nuttx/quickjs.c:11575
{
    80020254:	f3ca                	sd	s2,480(sp)
    80020256:	ebd2                	sd	s4,464(sp)
    80020258:	e7d6                	sd	s5,456(sp)
    8002025a:	e3da                	sd	s6,448(sp)
    8002025c:	ff5e                	sd	s7,440(sp)
    8002025e:	22a50453          	fmv.d	fs0,fa0
js_dtoa1():
quickjs-nuttx/quickjs.c:11488
    if (!isfinite(d)) {
    80020262:	a2a527d3          	feq.d	a5,fa0,fa0
js_dtoa():
quickjs-nuttx/quickjs.c:11575
{
    80020266:	89aa                	mv	s3,a0
js_dtoa1():
quickjs-nuttx/quickjs.c:11488
    if (!isfinite(d)) {
    80020268:	e349                	bnez	a4,800202ea <js_dtoa+0xb2>
    8002026a:	22f797d3          	fneg.d	fa5,fa5
    8002026e:	a2f52753          	feq.d	a4,fa0,fa5
    80020272:	ef25                	bnez	a4,800202ea <js_dtoa+0xb2>
    80020274:	cfa5                	beqz	a5,800202ec <js_dtoa+0xb4>
    80020276:	8432                	mv	s0,a2
    80020278:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:11497
    } else if (flags == JS_DTOA_VAR_FORMAT) {
    8002027a:	e6f9                	bnez	a3,80020348 <js_dtoa+0x110>
quickjs-nuttx/quickjs.c:11500
        i64 = (int64_t)d;
    8002027c:	c2251753          	fcvt.l.d	a4,fa0,rtz
quickjs-nuttx/quickjs.c:11501
        if (d != i64 || i64 > MAX_SAFE_INTEGER || i64 < -MAX_SAFE_INTEGER)
    80020280:	d22777d3          	fcvt.d.l	fa5,a4
    80020284:	a2f527d3          	feq.d	a5,fa0,fa5
    80020288:	14078563          	beqz	a5,800203d2 <js_dtoa+0x19a>
    8002028c:	57fd                	li	a5,-1
    8002028e:	83ad                	srli	a5,a5,0xb
    80020290:	bff00693          	li	a3,-1025
    80020294:	97ba                	add	a5,a5,a4
    80020296:	82a9                	srli	a3,a3,0xa
    80020298:	12f6ed63          	bltu	a3,a5,800203d2 <js_dtoa+0x19a>
quickjs-nuttx/quickjs.c:11504
        ptr = i64toa(buf1 + sizeof(buf1), i64, radix);
    8002029c:	2581                	sext.w	a1,a1
i64toa():
quickjs-nuttx/quickjs.c:11322
    if (n < 0) {
    8002029e:	00075563          	bgez	a4,800202a8 <js_dtoa+0x70>
quickjs-nuttx/quickjs.c:11324
        n = -n;
    800202a2:	40e00733          	neg	a4,a4
quickjs-nuttx/quickjs.c:11323
        is_neg = 1;
    800202a6:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:11328
        digit = (uint64_t)n % base;
    800202a8:	02059793          	slli	a5,a1,0x20
quickjs-nuttx/quickjs.c:11326
    *--q = '\0';
    800202ac:	160102a3          	sb	zero,357(sp)
    800202b0:	16510613          	addi	a2,sp,357
quickjs-nuttx/quickjs.c:11328
        digit = (uint64_t)n % base;
    800202b4:	9381                	srli	a5,a5,0x20
quickjs-nuttx/quickjs.c:11330
        if (digit < 10)
    800202b6:	4825                	li	a6,9
quickjs-nuttx/quickjs.c:11328
        digit = (uint64_t)n % base;
    800202b8:	02f776b3          	remu	a3,a4,a5
    800202bc:	853a                	mv	a0,a4
    800202be:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:11329
        n = (uint64_t)n / base;
    800202c0:	02f75733          	divu	a4,a4,a5
quickjs-nuttx/quickjs.c:11330
        if (digit < 10)
    800202c4:	06d84f63          	blt	a6,a3,80020342 <js_dtoa+0x10a>
quickjs-nuttx/quickjs.c:11331
            digit += '0';
    800202c8:	0306869b          	addiw	a3,a3,48
quickjs-nuttx/quickjs.c:11334
        *--q = digit;
    800202cc:	fed60fa3          	sb	a3,-1(a2)
    800202d0:	fff60593          	addi	a1,a2,-1
quickjs-nuttx/quickjs.c:11335
    } while (n != 0);
    800202d4:	06f57563          	bgeu	a0,a5,8002033e <js_dtoa+0x106>
quickjs-nuttx/quickjs.c:11336
    if (is_neg)
    800202d8:	00090e63          	beqz	s2,800202f4 <js_dtoa+0xbc>
quickjs-nuttx/quickjs.c:11337
        *--q = '-';
    800202dc:	02d00793          	li	a5,45
    800202e0:	fef58fa3          	sb	a5,-1(a1)
    800202e4:	ffe60593          	addi	a1,a2,-2
    800202e8:	a031                	j	800202f4 <js_dtoa+0xbc>
js_dtoa1():
quickjs-nuttx/quickjs.c:11489
        if (isnan(d)) {
    800202ea:	e799                	bnez	a5,800202f8 <js_dtoa+0xc0>
quickjs-nuttx/quickjs.c:11490
            strcpy(buf, "NaN");
    800202ec:	0004a597          	auipc	a1,0x4a
    800202f0:	66458593          	addi	a1,a1,1636 # 8006a950 <qjsc_repl+0x53a0>
quickjs-nuttx/quickjs.c:11505
        strcpy(buf, ptr);
    800202f4:	1108                	addi	a0,sp,160
    800202f6:	a00d                	j	80020318 <js_dtoa+0xe0>
quickjs-nuttx/quickjs.c:11493
            if (d < 0)
    800202f8:	f20007d3          	fmv.d.x	fa5,zero
quickjs-nuttx/quickjs.c:11492
            q = buf;
    800202fc:	1108                	addi	a0,sp,160
quickjs-nuttx/quickjs.c:11493
            if (d < 0)
    800202fe:	a2f417d3          	flt.d	a5,fs0,fa5
    80020302:	c799                	beqz	a5,80020310 <js_dtoa+0xd8>
quickjs-nuttx/quickjs.c:11494
                *q++ = '-';
    80020304:	02d00793          	li	a5,45
    80020308:	0af10023          	sb	a5,160(sp)
    8002030c:	0a110513          	addi	a0,sp,161
quickjs-nuttx/quickjs.c:11495
            strcpy(q, "Infinity");
    80020310:	0004a597          	auipc	a1,0x4a
    80020314:	4a058593          	addi	a1,a1,1184 # 8006a7b0 <qjsc_repl+0x5200>
    80020318:	221430ef          	jal	ra,80063d38 <strcpy>
js_dtoa():
quickjs-nuttx/quickjs.c:11578
    return JS_NewString(ctx, buf);
    8002031c:	110c                	addi	a1,sp,160
    8002031e:	854e                	mv	a0,s3
    80020320:	e98ff0ef          	jal	ra,8001f9b8 <JS_NewString>
quickjs-nuttx/quickjs.c:11579
}
    80020324:	70fe                	ld	ra,504(sp)
    80020326:	745e                	ld	s0,496(sp)
    80020328:	74be                	ld	s1,488(sp)
    8002032a:	791e                	ld	s2,480(sp)
    8002032c:	69fe                	ld	s3,472(sp)
    8002032e:	6a5e                	ld	s4,464(sp)
    80020330:	6abe                	ld	s5,456(sp)
    80020332:	6b1e                	ld	s6,448(sp)
    80020334:	7bfa                	ld	s7,440(sp)
    80020336:	343a                	fld	fs0,424(sp)
    80020338:	20010113          	addi	sp,sp,512
    8002033c:	8082                	ret
i64toa():
quickjs-nuttx/quickjs.c:11579
    8002033e:	862e                	mv	a2,a1
    80020340:	bfa5                	j	800202b8 <js_dtoa+0x80>
quickjs-nuttx/quickjs.c:11333
            digit += 'a' - 10;
    80020342:	0576869b          	addiw	a3,a3,87
    80020346:	b759                	j	800202cc <js_dtoa+0x94>
js_dtoa1():
quickjs-nuttx/quickjs.c:11507
        if (d == 0.0)
    80020348:	f20007d3          	fmv.d.x	fa5,zero
    8002034c:	a2f527d3          	feq.d	a5,fa0,fa5
    80020350:	c399                	beqz	a5,80020356 <js_dtoa+0x11e>
quickjs-nuttx/quickjs.c:11508
            d = 0.0; /* convert -0 to 0 */
    80020352:	22f78453          	fmv.d	fs0,fa5
quickjs-nuttx/quickjs.c:11509
        if (flags == JS_DTOA_FRAC_FORMAT) {
    80020356:	4789                	li	a5,2
    80020358:	06f91d63          	bne	s2,a5,800203d2 <js_dtoa+0x19a>
js_fcvt():
quickjs-nuttx/quickjs.c:11452
        n1 = js_fcvt1(buf1, sizeof(buf1), d, n_digits + 1, FE_TONEAREST);
    8002035c:	22840553          	fmv.d	fa0,fs0
    80020360:	0014059b          	addiw	a1,s0,1
    80020364:	4601                	li	a2,0
    80020366:	1108                	addi	a0,sp,160
    80020368:	e42e                	sd	a1,8(sp)
    8002036a:	e61e90ef          	jal	ra,8000a1ca <js_fcvt1.constprop.0>
quickjs-nuttx/quickjs.c:11455
        if (buf1[n1 - 1] == '5') {
    8002036e:	131c                	addi	a5,sp,416
    80020370:	357d                	addiw	a0,a0,-1
    80020372:	953e                	add	a0,a0,a5
    80020374:	f0054703          	lbu	a4,-256(a0) # ffffffff7fffff00 <_ebss+0xfffffffeffefed9a>
    80020378:	03500793          	li	a5,53
    8002037c:	65a2                	ld	a1,8(sp)
    8002037e:	00f70b63          	beq	a4,a5,80020394 <js_dtoa+0x15c>
quickjs-nuttx/quickjs.c:11453
        rounding_mode = FE_TONEAREST;
    80020382:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:11468
    js_fcvt1(buf, buf_size, d, n_digits, rounding_mode);
    80020384:	22840553          	fmv.d	fa0,fs0
    80020388:	864a                	mv	a2,s2
    8002038a:	85a2                	mv	a1,s0
    8002038c:	1108                	addi	a0,sp,160
    8002038e:	e3de90ef          	jal	ra,8000a1ca <js_fcvt1.constprop.0>
quickjs-nuttx/quickjs.c:11469
}
    80020392:	b769                	j	8002031c <js_dtoa+0xe4>
quickjs-nuttx/quickjs.c:11456
            n1 = js_fcvt1(buf1, sizeof(buf1), d, n_digits + 1, FE_DOWNWARD);
    80020394:	22840553          	fmv.d	fa0,fs0
    80020398:	4609                	li	a2,2
    8002039a:	1108                	addi	a0,sp,160
    8002039c:	e42e                	sd	a1,8(sp)
    8002039e:	e2de90ef          	jal	ra,8000a1ca <js_fcvt1.constprop.0>
quickjs-nuttx/quickjs.c:11457
            n2 = js_fcvt1(buf2, sizeof(buf2), d, n_digits + 1, FE_UPWARD);
    800203a2:	65a2                	ld	a1,8(sp)
    800203a4:	22840553          	fmv.d	fa0,fs0
quickjs-nuttx/quickjs.c:11456
            n1 = js_fcvt1(buf1, sizeof(buf1), d, n_digits + 1, FE_DOWNWARD);
    800203a8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:11457
            n2 = js_fcvt1(buf2, sizeof(buf2), d, n_digits + 1, FE_UPWARD);
    800203aa:	460d                	li	a2,3
    800203ac:	1208                	addi	a0,sp,288
    800203ae:	e1de90ef          	jal	ra,8000a1ca <js_fcvt1.constprop.0>
quickjs-nuttx/quickjs.c:11458
            if (n1 == n2 && memcmp(buf1, buf2, n1) == 0) {
    800203b2:	fca498e3          	bne	s1,a0,80020382 <js_dtoa+0x14a>
    800203b6:	8626                	mv	a2,s1
    800203b8:	120c                	addi	a1,sp,288
    800203ba:	1108                	addi	a0,sp,160
    800203bc:	019430ef          	jal	ra,80063bd4 <memcmp>
    800203c0:	f169                	bnez	a0,80020382 <js_dtoa+0x14a>
quickjs-nuttx/quickjs.c:11460
                if (buf1[0] == '-')
    800203c2:	0a014703          	lbu	a4,160(sp)
    800203c6:	02d00793          	li	a5,45
    800203ca:	faf70de3          	beq	a4,a5,80020384 <js_dtoa+0x14c>
quickjs-nuttx/quickjs.c:11463
                    rounding_mode = FE_UPWARD;
    800203ce:	490d                	li	s2,3
    800203d0:	bf55                	j	80020384 <js_dtoa+0x14c>
js_dtoa1():
quickjs-nuttx/quickjs.c:11517
            if (is_fixed) {
    800203d2:	00397793          	andi	a5,s2,3
    800203d6:	4705                	li	a4,1
    800203d8:	1ce78f63          	beq	a5,a4,800205b6 <js_dtoa+0x37e>
    800203dc:	4445                	li	s0,17
    800203de:	4a85                	li	s5,1
js_ecvt():
quickjs-nuttx/quickjs.c:11382
                while (n_digits >= 2 && buf[n_digits - 1] == '0')
    800203e0:	4b05                	li	s6,1
    800203e2:	03000b93          	li	s7,48
quickjs-nuttx/quickjs.c:11378
            js_ecvt1(d, n_digits, decpt, sign, buf, FE_TONEAREST,
    800203e6:	22840553          	fmv.d	fa0,fs0
quickjs-nuttx/quickjs.c:11377
            n_digits = (n_digits_min + n_digits_max) / 2;
    800203ea:	015404bb          	addw	s1,s0,s5
    800203ee:	0014da1b          	srliw	s4,s1,0x1
    800203f2:	0014d49b          	srliw	s1,s1,0x1
quickjs-nuttx/quickjs.c:11378
            js_ecvt1(d, n_digits, decpt, sign, buf, FE_TONEAREST,
    800203f6:	101c                	addi	a5,sp,32
    800203f8:	4701                	li	a4,0
    800203fa:	1214                	addi	a3,sp,288
    800203fc:	0830                	addi	a2,sp,24
    800203fe:	086c                	addi	a1,sp,28
    80020400:	8526                	mv	a0,s1
    80020402:	e2fe90ef          	jal	ra,8000a230 <js_ecvt1.constprop.0>
quickjs-nuttx/quickjs.c:11380
            if (strtod(buf_tmp, NULL) == d) {
    80020406:	4581                	li	a1,0
    80020408:	1008                	addi	a0,sp,32
    8002040a:	2f6430ef          	jal	ra,80063700 <strtod>
    8002040e:	a2a427d3          	feq.d	a5,fs0,fa0
    80020412:	cfd1                	beqz	a5,800204ae <js_dtoa+0x276>
    80020414:	fffa079b          	addiw	a5,s4,-1
    80020418:	1218                	addi	a4,sp,288
    8002041a:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:11382
                while (n_digits >= 2 && buf[n_digits - 1] == '0')
    8002041c:	009b5963          	bge	s6,s1,8002042e <js_dtoa+0x1f6>
    80020420:	0007c703          	lbu	a4,0(a5)
    80020424:	17fd                	addi	a5,a5,-1
    80020426:	fff4869b          	addiw	a3,s1,-1
    8002042a:	09770063          	beq	a4,s7,800204aa <js_dtoa+0x272>
quickjs-nuttx/quickjs.c:11384
                n_digits_max = n_digits;
    8002042e:	0004841b          	sext.w	s0,s1
quickjs-nuttx/quickjs.c:11376
        while (n_digits_min < n_digits_max) {
    80020432:	fa8aeae3          	bltu	s5,s0,800203e6 <js_dtoa+0x1ae>
quickjs-nuttx/quickjs.c:11389
        n_digits = n_digits_max;
    80020436:	2401                	sext.w	s0,s0
js_dtoa1():
quickjs-nuttx/quickjs.c:11520
                n_max = 21;
    80020438:	4a55                	li	s4,21
js_ecvt():
quickjs-nuttx/quickjs.c:11390
        rounding_mode = FE_TONEAREST;
    8002043a:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:11420
    js_ecvt1(d, n_digits, decpt, sign, buf, rounding_mode,
    8002043c:	22840553          	fmv.d	fa0,fs0
    80020440:	101c                	addi	a5,sp,32
    80020442:	1214                	addi	a3,sp,288
    80020444:	0830                	addi	a2,sp,24
    80020446:	086c                	addi	a1,sp,28
    80020448:	8522                	mv	a0,s0
    8002044a:	de7e90ef          	jal	ra,8000a230 <js_ecvt1.constprop.0>
js_dtoa1():
quickjs-nuttx/quickjs.c:11526
            if (sign)
    8002044e:	4762                	lw	a4,24(sp)
quickjs-nuttx/quickjs.c:11524
            n = decpt; /* d=10^(n-k)*(buf1) i.e. d= < x.yyyy 10^(n-1) */
    80020450:	44f2                	lw	s1,28(sp)
quickjs-nuttx/quickjs.c:11525
            q = buf;
    80020452:	111c                	addi	a5,sp,160
quickjs-nuttx/quickjs.c:11526
            if (sign)
    80020454:	c719                	beqz	a4,80020462 <js_dtoa+0x22a>
quickjs-nuttx/quickjs.c:11527
                *q++ = '-';
    80020456:	02d00793          	li	a5,45
    8002045a:	0af10023          	sb	a5,160(sp)
    8002045e:	0a110793          	addi	a5,sp,161
quickjs-nuttx/quickjs.c:11528
            if (flags & JS_DTOA_FORCE_EXP)
    80020462:	00497913          	andi	s2,s2,4
    80020466:	0e091763          	bnez	s2,80020554 <js_dtoa+0x31c>
quickjs-nuttx/quickjs.c:11530
            if (n >= 1 && n <= n_max) {
    8002046a:	0a905263          	blez	s1,8002050e <js_dtoa+0x2d6>
    8002046e:	0e9a4363          	blt	s4,s1,80020554 <js_dtoa+0x31c>
quickjs-nuttx/quickjs.c:11531
                if (k <= n) {
    80020472:	0484ca63          	blt	s1,s0,800204c6 <js_dtoa+0x28e>
quickjs-nuttx/quickjs.c:11532
                    memcpy(q, buf1, k);
    80020476:	8622                	mv	a2,s0
    80020478:	853e                	mv	a0,a5
    8002047a:	120c                	addi	a1,sp,288
    8002047c:	131430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:11535
                        *q++ = '0';
    80020480:	4084873b          	subw	a4,s1,s0
quickjs-nuttx/quickjs.c:11533
                    q += k;
    80020484:	008507b3          	add	a5,a0,s0
quickjs-nuttx/quickjs.c:11535
                        *q++ = '0';
    80020488:	863a                	mv	a2,a4
    8002048a:	00075363          	bgez	a4,80020490 <js_dtoa+0x258>
    8002048e:	4601                	li	a2,0
    80020490:	0006041b          	sext.w	s0,a2
    80020494:	853e                	mv	a0,a5
    80020496:	8622                	mv	a2,s0
    80020498:	03000593          	li	a1,48
    8002049c:	7a6430ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:11536
                    *q = '\0';
    800204a0:	008507b3          	add	a5,a0,s0
quickjs-nuttx/quickjs.c:11544
                    *q = '\0';
    800204a4:	00078023          	sb	zero,0(a5)
    800204a8:	bd95                	j	8002031c <js_dtoa+0xe4>
js_ecvt():
quickjs-nuttx/quickjs.c:11383
                    n_digits--;
    800204aa:	84b6                	mv	s1,a3
    800204ac:	bf85                	j	8002041c <js_dtoa+0x1e4>
quickjs-nuttx/quickjs.c:11386
                n_digits_min = n_digits + 1;
    800204ae:	001a0a9b          	addiw	s5,s4,1
    800204b2:	b741                	j	80020432 <js_dtoa+0x1fa>
quickjs-nuttx/quickjs.c:11409
                if (memcmp(buf1, buf2, n_digits + 1) == 0 && decpt1 == decpt2) {
    800204b4:	4742                	lw	a4,16(sp)
    800204b6:	47e2                	lw	a5,24(sp)
    800204b8:	14f71e63          	bne	a4,a5,80020614 <js_dtoa+0x3dc>
quickjs-nuttx/quickjs.c:11411
                    if (sign1)
    800204bc:	4752                	lw	a4,20(sp)
quickjs-nuttx/quickjs.c:11414
                        rounding_mode = FE_UPWARD;
    800204be:	00173713          	seqz	a4,a4
    800204c2:	0709                	addi	a4,a4,2
    800204c4:	aa89                	j	80020616 <js_dtoa+0x3de>
js_dtoa1():
quickjs-nuttx/quickjs.c:11539
                    memcpy(q, buf1, n);
    800204c6:	853e                	mv	a0,a5
    800204c8:	8626                	mv	a2,s1
    800204ca:	120c                	addi	a1,sp,288
    800204cc:	0e1430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:11541
                    *q++ = '.';
    800204d0:	02e00713          	li	a4,46
quickjs-nuttx/quickjs.c:11540
                    q += n;
    800204d4:	009507b3          	add	a5,a0,s1
quickjs-nuttx/quickjs.c:11541
                    *q++ = '.';
    800204d8:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:11542
                    for(i = 0; i < (k - n); i++)
    800204dc:	9c05                	subw	s0,s0,s1
    800204de:	4701                	li	a4,0
    800204e0:	0007069b          	sext.w	a3,a4
    800204e4:	0086c963          	blt	a3,s0,800204f6 <js_dtoa+0x2be>
quickjs-nuttx/quickjs.c:11544
                    *q = '\0';
    800204e8:	8722                	mv	a4,s0
    800204ea:	00045363          	bgez	s0,800204f0 <js_dtoa+0x2b8>
    800204ee:	4701                	li	a4,0
    800204f0:	2705                	addiw	a4,a4,1
    800204f2:	97ba                	add	a5,a5,a4
    800204f4:	bf45                	j	800204a4 <js_dtoa+0x26c>
quickjs-nuttx/quickjs.c:11543
                        *q++ = buf1[n + i];
    800204f6:	009706bb          	addw	a3,a4,s1
    800204fa:	130c                	addi	a1,sp,416
    800204fc:	96ae                	add	a3,a3,a1
    800204fe:	f806c683          	lbu	a3,-128(a3)
    80020502:	00e78633          	add	a2,a5,a4
    80020506:	0705                	addi	a4,a4,1
    80020508:	00d600a3          	sb	a3,1(a2)
quickjs-nuttx/quickjs.c:11542
                    for(i = 0; i < (k - n); i++)
    8002050c:	bfd1                	j	800204e0 <js_dtoa+0x2a8>
quickjs-nuttx/quickjs.c:11546
            } else if (n >= -5 && n <= 0) {
    8002050e:	0054871b          	addiw	a4,s1,5
    80020512:	4695                	li	a3,5
    80020514:	04e6e063          	bltu	a3,a4,80020554 <js_dtoa+0x31c>
quickjs-nuttx/quickjs.c:11547
                *q++ = '0';
    80020518:	03000713          	li	a4,48
    8002051c:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:11548
                *q++ = '.';
    80020520:	02e00693          	li	a3,46
    80020524:	00278713          	addi	a4,a5,2
quickjs-nuttx/quickjs.c:11550
                    *q++ = '0';
    80020528:	409004bb          	negw	s1,s1
quickjs-nuttx/quickjs.c:11548
                *q++ = '.';
    8002052c:	00d780a3          	sb	a3,1(a5)
quickjs-nuttx/quickjs.c:11550
                    *q++ = '0';
    80020530:	8626                	mv	a2,s1
    80020532:	03000593          	li	a1,48
    80020536:	853a                	mv	a0,a4
    80020538:	70a430ef          	jal	ra,80063c42 <memset>
    8002053c:	00950733          	add	a4,a0,s1
quickjs-nuttx/quickjs.c:11551
                memcpy(q, buf1, k);
    80020540:	853a                	mv	a0,a4
    80020542:	8622                	mv	a2,s0
    80020544:	120c                	addi	a1,sp,288
    80020546:	067430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:11553
                *q = '\0';
    8002054a:	00850733          	add	a4,a0,s0
    8002054e:	00070023          	sb	zero,0(a4)
    80020552:	b3e9                	j	8002031c <js_dtoa+0xe4>
quickjs-nuttx/quickjs.c:11557
                *q++ = buf1[0];
    80020554:	12014703          	lbu	a4,288(sp)
quickjs-nuttx/quickjs.c:11558
                if (k > 1) {
    80020558:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:11557
                *q++ = buf1[0];
    8002055a:	00e78023          	sb	a4,0(a5)
    8002055e:	00178713          	addi	a4,a5,1
quickjs-nuttx/quickjs.c:11558
                if (k > 1) {
    80020562:	0286d363          	bge	a3,s0,80020588 <js_dtoa+0x350>
quickjs-nuttx/quickjs.c:11561
                        *q++ = buf1[i];
    80020566:	347d                	addiw	s0,s0,-1
    80020568:	1402                	slli	s0,s0,0x20
quickjs-nuttx/quickjs.c:11559
                    *q++ = '.';
    8002056a:	00278713          	addi	a4,a5,2
    8002056e:	02e00693          	li	a3,46
quickjs-nuttx/quickjs.c:11561
                        *q++ = buf1[i];
    80020572:	9001                	srli	s0,s0,0x20
    80020574:	853a                	mv	a0,a4
quickjs-nuttx/quickjs.c:11559
                    *q++ = '.';
    80020576:	00d780a3          	sb	a3,1(a5)
quickjs-nuttx/quickjs.c:11561
                        *q++ = buf1[i];
    8002057a:	8622                	mv	a2,s0
    8002057c:	12110593          	addi	a1,sp,289
    80020580:	02d430ef          	jal	ra,80063dac <memcpy>
    80020584:	00850733          	add	a4,a0,s0
quickjs-nuttx/quickjs.c:11563
                *q++ = 'e';
    80020588:	06500793          	li	a5,101
    8002058c:	00f70023          	sb	a5,0(a4)
quickjs-nuttx/quickjs.c:11564
                p = n - 1;
    80020590:	fff4861b          	addiw	a2,s1,-1
quickjs-nuttx/quickjs.c:11563
                *q++ = 'e';
    80020594:	00170513          	addi	a0,a4,1
quickjs-nuttx/quickjs.c:11565
                if (p >= 0)
    80020598:	00064863          	bltz	a2,800205a8 <js_dtoa+0x370>
quickjs-nuttx/quickjs.c:11566
                    *q++ = '+';
    8002059c:	02b00793          	li	a5,43
    800205a0:	00270513          	addi	a0,a4,2
    800205a4:	00f700a3          	sb	a5,1(a4)
quickjs-nuttx/quickjs.c:11567
                sprintf(q, "%d", p);
    800205a8:	0004a597          	auipc	a1,0x4a
    800205ac:	3b058593          	addi	a1,a1,944 # 8006a958 <qjsc_repl+0x53a8>
    800205b0:	459400ef          	jal	ra,80061208 <sprintf>
    800205b4:	b3a5                	j	8002031c <js_dtoa+0xe4>
js_ecvt():
quickjs-nuttx/quickjs.c:11401
            js_ecvt1(d, n_digits + 1, &decpt1, &sign1, buf1, FE_TONEAREST,
    800205b6:	22840553          	fmv.d	fa0,fs0
    800205ba:	0014049b          	addiw	s1,s0,1
    800205be:	101c                	addi	a5,sp,32
    800205c0:	4701                	li	a4,0
    800205c2:	1114                	addi	a3,sp,160
    800205c4:	0850                	addi	a2,sp,20
    800205c6:	080c                	addi	a1,sp,16
    800205c8:	8526                	mv	a0,s1
    800205ca:	c67e90ef          	jal	ra,8000a230 <js_ecvt1.constprop.0>
quickjs-nuttx/quickjs.c:11404
            if (buf1[n_digits] == '5') {
    800205ce:	131c                	addi	a5,sp,416
    800205d0:	97a2                	add	a5,a5,s0
    800205d2:	f007c703          	lbu	a4,-256(a5)
    800205d6:	03500793          	li	a5,53
    800205da:	02f71d63          	bne	a4,a5,80020614 <js_dtoa+0x3dc>
quickjs-nuttx/quickjs.c:11405
                js_ecvt1(d, n_digits + 1, &decpt1, &sign1, buf1, FE_DOWNWARD,
    800205de:	22840553          	fmv.d	fa0,fs0
    800205e2:	101c                	addi	a5,sp,32
    800205e4:	4709                	li	a4,2
    800205e6:	1114                	addi	a3,sp,160
    800205e8:	0850                	addi	a2,sp,20
    800205ea:	080c                	addi	a1,sp,16
    800205ec:	8526                	mv	a0,s1
    800205ee:	c43e90ef          	jal	ra,8000a230 <js_ecvt1.constprop.0>
quickjs-nuttx/quickjs.c:11407
                js_ecvt1(d, n_digits + 1, &decpt2, &sign2, buf2, FE_UPWARD,
    800205f2:	22840553          	fmv.d	fa0,fs0
    800205f6:	0870                	addi	a2,sp,28
    800205f8:	082c                	addi	a1,sp,24
    800205fa:	8526                	mv	a0,s1
    800205fc:	101c                	addi	a5,sp,32
    800205fe:	470d                	li	a4,3
    80020600:	1214                	addi	a3,sp,288
    80020602:	c2fe90ef          	jal	ra,8000a230 <js_ecvt1.constprop.0>
quickjs-nuttx/quickjs.c:11409
                if (memcmp(buf1, buf2, n_digits + 1) == 0 && decpt1 == decpt2) {
    80020606:	8626                	mv	a2,s1
    80020608:	120c                	addi	a1,sp,288
    8002060a:	1108                	addi	a0,sp,160
    8002060c:	5c8430ef          	jal	ra,80063bd4 <memcmp>
    80020610:	ea0502e3          	beqz	a0,800204b4 <js_dtoa+0x27c>
quickjs-nuttx/quickjs.c:11392
        rounding_mode = FE_TONEAREST;
    80020614:	4701                	li	a4,0
js_dtoa1():
quickjs-nuttx/quickjs.c:11518
                n_max = n_digits;
    80020616:	8a22                	mv	s4,s0
    80020618:	b515                	j	8002043c <js_dtoa+0x204>

000000008002061a <JS_ToStringInternal>:
JS_ToStringInternal():
quickjs-nuttx/quickjs.c:11582
{
    8002061a:	7159                	addi	sp,sp,-112
    8002061c:	f0a2                	sd	s0,96(sp)
    8002061e:	e432                	sd	a2,8(sp)
    80020620:	f486                	sd	ra,104(sp)
    80020622:	eca6                	sd	s1,88(sp)
    80020624:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:11587
    tag = JS_VALUE_GET_NORM_TAG(val);
    80020626:	2601                	sext.w	a2,a2
quickjs-nuttx/quickjs.c:11588
    switch(tag) {
    80020628:	479d                	li	a5,7
quickjs-nuttx/quickjs.c:11582
{
    8002062a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:11588
    switch(tag) {
    8002062c:	04c7e863          	bltu	a5,a2,8002067c <JS_ToStringInternal+0x62>
    80020630:	0004a717          	auipc	a4,0x4a
    80020634:	38070713          	addi	a4,a4,896 # 8006a9b0 <qjsc_repl+0x5400>
    80020638:	060a                	slli	a2,a2,0x2
    8002063a:	963a                	add	a2,a2,a4
    8002063c:	421c                	lw	a5,0(a2)
    8002063e:	97ba                	add	a5,a5,a4
    80020640:	8782                	jr	a5
    80020642:	262d                	addiw	a2,a2,11
    80020644:	0006071b          	sext.w	a4,a2
    80020648:	47a9                	li	a5,10
    8002064a:	02e7ec63          	bltu	a5,a4,80020682 <JS_ToStringInternal+0x68>
    8002064e:	02061793          	slli	a5,a2,0x20
    80020652:	01e7d613          	srli	a2,a5,0x1e
    80020656:	0004a717          	auipc	a4,0x4a
    8002065a:	37a70713          	addi	a4,a4,890 # 8006a9d0 <qjsc_repl+0x5420>
    8002065e:	963a                	add	a2,a2,a4
    80020660:	421c                	lw	a5,0(a2)
    80020662:	84b6                	mv	s1,a3
    80020664:	97ba                	add	a5,a5,a4
    80020666:	8782                	jr	a5
    80020668:	0004a597          	auipc	a1,0x4a
    8002066c:	31058593          	addi	a1,a1,784 # 8006a978 <qjsc_repl+0x53c8>
quickjs-nuttx/quickjs.c:11638
        return JS_NewString(ctx, str);
    80020670:	8522                	mv	a0,s0
    80020672:	b46ff0ef          	jal	ra,8001f9b8 <JS_NewString>
    80020676:	f02a                	sd	a0,32(sp)
    80020678:	f42e                	sd	a1,40(sp)
    8002067a:	a88d                	j	800206ec <JS_ToStringInternal+0xd2>
quickjs-nuttx/quickjs.c:11588
    switch(tag) {
    8002067c:	57d1                	li	a5,-12
    8002067e:	fcc7e2e3          	bltu	a5,a2,80020642 <JS_ToStringInternal+0x28>
quickjs-nuttx/quickjs.c:11636
        str = "[unsupported type]";
    80020682:	0004a597          	auipc	a1,0x4a
    80020686:	2de58593          	addi	a1,a1,734 # 8006a960 <qjsc_repl+0x53b0>
    8002068a:	b7dd                	j	80020670 <JS_ToStringInternal+0x56>
quickjs-nuttx/quickjs.c:11592
        snprintf(buf, sizeof(buf), "%d", JS_VALUE_GET_INT(val));
    8002068c:	4682                	lw	a3,0(sp)
    8002068e:	02000593          	li	a1,32
    80020692:	0004a617          	auipc	a2,0x4a
    80020696:	2c660613          	addi	a2,a2,710 # 8006a958 <qjsc_repl+0x53a8>
    8002069a:	1808                	addi	a0,sp,48
    8002069c:	3a5400ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:11593
        str = buf;
    800206a0:	180c                	addi	a1,sp,48
quickjs-nuttx/quickjs.c:11594
        goto new_string;
    800206a2:	b7f9                	j	80020670 <JS_ToStringInternal+0x56>
quickjs-nuttx/quickjs.c:11596
        return JS_AtomToString(ctx, JS_VALUE_GET_BOOL(val) ?
    800206a4:	4582                	lw	a1,0(sp)
    800206a6:	00b035b3          	snez	a1,a1
    800206aa:	0589                	addi	a1,a1,2
quickjs-nuttx/quickjs.c:11599
        return JS_AtomToString(ctx, JS_ATOM_null);
    800206ac:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:11640
}
    800206ae:	7406                	ld	s0,96(sp)
    800206b0:	70a6                	ld	ra,104(sp)
    800206b2:	64e6                	ld	s1,88(sp)
    800206b4:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:11599
        return JS_AtomToString(ctx, JS_ATOM_null);
    800206b6:	c1cff06f          	j	8001fad2 <JS_AtomToString>
    800206ba:	4585                	li	a1,1
    800206bc:	bfc5                	j	800206ac <JS_ToStringInternal+0x92>
quickjs-nuttx/quickjs.c:11601
        return JS_AtomToString(ctx, JS_ATOM_undefined);
    800206be:	04600593          	li	a1,70
    800206c2:	b7ed                	j	800206ac <JS_ToStringInternal+0x92>
quickjs-nuttx/quickjs.c:11603
        return JS_EXCEPTION;
    800206c4:	f002                	sd	zero,32(sp)
    800206c6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:11612
            return ret;
    800206c8:	f43e                	sd	a5,40(sp)
    800206ca:	a00d                	j	800206ec <JS_ToStringInternal+0xd2>
quickjs-nuttx/quickjs.c:11607
            val1 = JS_ToPrimitive(ctx, val, HINT_STRING);
    800206cc:	6622                	ld	a2,8(sp)
    800206ce:	6582                	ld	a1,0(sp)
    800206d0:	4681                	li	a3,0
    800206d2:	8522                	mv	a0,s0
    800206d4:	da8ff0ef          	jal	ra,8001fc7c <JS_ToPrimitive>
    800206d8:	e82a                	sd	a0,16(sp)
    800206da:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:11608
            if (JS_IsException(val1))
    800206dc:	0005871b          	sext.w	a4,a1
    800206e0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:11607
            val1 = JS_ToPrimitive(ctx, val, HINT_STRING);
    800206e2:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:11608
            if (JS_IsException(val1))
    800206e4:	00f71b63          	bne	a4,a5,800206fa <JS_ToStringInternal+0xe0>
quickjs-nuttx/quickjs.c:11609
                return val1;
    800206e8:	f02a                	sd	a0,32(sp)
    800206ea:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:11640 (discriminator 1)
}
    800206ec:	70a6                	ld	ra,104(sp)
    800206ee:	7406                	ld	s0,96(sp)
    800206f0:	7502                	ld	a0,32(sp)
    800206f2:	75a2                	ld	a1,40(sp)
    800206f4:	64e6                	ld	s1,88(sp)
    800206f6:	6165                	addi	sp,sp,112
    800206f8:	8082                	ret
quickjs-nuttx/quickjs.c:11610
            ret = JS_ToStringInternal(ctx, val1, is_ToPropertyKey);
    800206fa:	86a6                	mv	a3,s1
    800206fc:	85aa                	mv	a1,a0
    800206fe:	8522                	mv	a0,s0
    80020700:	f1bff0ef          	jal	ra,8002061a <JS_ToStringInternal>
    80020704:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:11611
            JS_FreeValue(ctx, val1);
    80020706:	6662                	ld	a2,24(sp)
    80020708:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:11610
            ret = JS_ToStringInternal(ctx, val1, is_ToPropertyKey);
    8002070a:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:11611
            JS_FreeValue(ctx, val1);
    8002070c:	8522                	mv	a0,s0
    8002070e:	890eb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11612
            return ret;
    80020712:	77c2                	ld	a5,48(sp)
    80020714:	f03e                	sd	a5,32(sp)
    80020716:	77e2                	ld	a5,56(sp)
    80020718:	bf45                	j	800206c8 <JS_ToStringInternal+0xae>
quickjs-nuttx/quickjs.c:11619
        if (is_ToPropertyKey) {
    8002071a:	ca89                	beqz	a3,8002072c <JS_ToStringInternal+0x112>
quickjs-nuttx/quickjs.c:11640
}
    8002071c:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:11620
            return JS_DupValue(ctx, val);
    8002071e:	6502                	ld	a0,0(sp)
    80020720:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:11640
}
    80020722:	70a6                	ld	ra,104(sp)
    80020724:	64e6                	ld	s1,88(sp)
    80020726:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:11620
            return JS_DupValue(ctx, val);
    80020728:	cf3e906f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:11622
            return JS_ThrowTypeError(ctx, "cannot convert symbol to string");
    8002072c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:11640
}
    8002072e:	7406                	ld	s0,96(sp)
    80020730:	70a6                	ld	ra,104(sp)
    80020732:	64e6                	ld	s1,88(sp)
quickjs-nuttx/quickjs.c:11622
            return JS_ThrowTypeError(ctx, "cannot convert symbol to string");
    80020734:	0004a597          	auipc	a1,0x4a
    80020738:	25c58593          	addi	a1,a1,604 # 8006a990 <qjsc_repl+0x53e0>
quickjs-nuttx/quickjs.c:11640
}
    8002073c:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:11622
            return JS_ThrowTypeError(ctx, "cannot convert symbol to string");
    8002073e:	f2ff706f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:11640
}
    80020742:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:11625
        return js_dtoa(ctx, JS_VALUE_GET_FLOAT64(val), 10, 0,
    80020744:	2502                	fld	fa0,0(sp)
quickjs-nuttx/quickjs.c:11640
}
    80020746:	70a6                	ld	ra,104(sp)
    80020748:	64e6                	ld	s1,88(sp)
quickjs-nuttx/quickjs.c:11625
        return js_dtoa(ctx, JS_VALUE_GET_FLOAT64(val), 10, 0,
    8002074a:	4681                	li	a3,0
    8002074c:	4601                	li	a2,0
    8002074e:	45a9                	li	a1,10
quickjs-nuttx/quickjs.c:11640
}
    80020750:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:11625
        return js_dtoa(ctx, JS_VALUE_GET_FLOAT64(val), 10, 0,
    80020752:	ae7ff06f          	j	80020238 <js_dtoa>
quickjs-nuttx/quickjs.c:11628
        return ctx->rt->bigint_ops.to_string(ctx, val);
    80020756:	6c1c                	ld	a5,24(s0)
    80020758:	2087b783          	ld	a5,520(a5)
quickjs-nuttx/quickjs.c:11633
        return ctx->rt->bigdecimal_ops.to_string(ctx, val);
    8002075c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:11640
}
    8002075e:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:11633
        return ctx->rt->bigdecimal_ops.to_string(ctx, val);
    80020760:	6582                	ld	a1,0(sp)
    80020762:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:11640
}
    80020764:	70a6                	ld	ra,104(sp)
    80020766:	64e6                	ld	s1,88(sp)
    80020768:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:11633
        return ctx->rt->bigdecimal_ops.to_string(ctx, val);
    8002076a:	8782                	jr	a5
quickjs-nuttx/quickjs.c:11631
        return ctx->rt->bigfloat_ops.to_string(ctx, val);
    8002076c:	6c1c                	ld	a5,24(s0)
    8002076e:	2407b783          	ld	a5,576(a5)
    80020772:	b7ed                	j	8002075c <JS_ToStringInternal+0x142>
quickjs-nuttx/quickjs.c:11633
        return ctx->rt->bigdecimal_ops.to_string(ctx, val);
    80020774:	6c1c                	ld	a5,24(s0)
    80020776:	2787b783          	ld	a5,632(a5)
    8002077a:	b7cd                	j	8002075c <JS_ToStringInternal+0x142>

000000008002077c <JS_ToString>:
JS_ToString():
quickjs-nuttx/quickjs.c:11643
{
    8002077c:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:11644
    return JS_ToStringInternal(ctx, val, FALSE);
    8002077e:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:11645
}
    80020780:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:11644
    return JS_ToStringInternal(ctx, val, FALSE);
    80020782:	e99ff06f          	j	8002061a <JS_ToStringInternal>

0000000080020786 <JS_ToStringFree>:
JS_ToStringFree():
quickjs-nuttx/quickjs.c:11648
{
    80020786:	7139                	addi	sp,sp,-64
    80020788:	fc06                	sd	ra,56(sp)
    8002078a:	f822                	sd	s0,48(sp)
    8002078c:	e432                	sd	a2,8(sp)
    8002078e:	842a                	mv	s0,a0
    80020790:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:11650
    ret = JS_ToString(ctx, val);
    80020792:	febff0ef          	jal	ra,8002077c <JS_ToString>
    80020796:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:11651
    JS_FreeValue(ctx, val);
    80020798:	6622                	ld	a2,8(sp)
    8002079a:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:11650
    ret = JS_ToString(ctx, val);
    8002079c:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:11651
    JS_FreeValue(ctx, val);
    8002079e:	8522                	mv	a0,s0
    800207a0:	fffea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11653
}
    800207a4:	70e2                	ld	ra,56(sp)
    800207a6:	7442                	ld	s0,48(sp)
    800207a8:	6542                	ld	a0,16(sp)
    800207aa:	65e2                	ld	a1,24(sp)
    800207ac:	6121                	addi	sp,sp,64
    800207ae:	8082                	ret

00000000800207b0 <JS_ConcatString3>:
JS_ConcatString3():
quickjs-nuttx/quickjs.c:3943
{
    800207b0:	7175                	addi	sp,sp,-144
    800207b2:	e122                	sd	s0,128(sp)
    800207b4:	fca6                	sd	s1,120(sp)
    800207b6:	f8ca                	sd	s2,112(sp)
    800207b8:	f4ce                	sd	s3,104(sp)
    800207ba:	ecd6                	sd	s5,88(sp)
    800207bc:	89ba                	mv	s3,a4
    800207be:	e506                	sd	ra,136(sp)
    800207c0:	f0d2                	sd	s4,96(sp)
    800207c2:	e8da                	sd	s6,80(sp)
    800207c4:	e4de                	sd	s7,72(sp)
    800207c6:	e032                	sd	a2,0(sp)
    800207c8:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:3948
    if (unlikely(JS_VALUE_GET_TAG(str2) != JS_TAG_STRING)) {
    800207ca:	0006871b          	sext.w	a4,a3
    800207ce:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:3943
{
    800207d0:	892a                	mv	s2,a0
    800207d2:	8aae                	mv	s5,a1
    800207d4:	8432                	mv	s0,a2
    800207d6:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:3948
    if (unlikely(JS_VALUE_GET_TAG(str2) != JS_TAG_STRING)) {
    800207d8:	00f70f63          	beq	a4,a5,800207f6 <JS_ConcatString3+0x46>
quickjs-nuttx/quickjs.c:3949
        str2 = JS_ToStringFree(ctx, str2);
    800207dc:	85b2                	mv	a1,a2
    800207de:	8636                	mv	a2,a3
    800207e0:	fa7ff0ef          	jal	ra,80020786 <JS_ToStringFree>
    800207e4:	e02a                	sd	a0,0(sp)
    800207e6:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:3950
        if (JS_IsException(str2))
    800207e8:	0005871b          	sext.w	a4,a1
    800207ec:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3949
        str2 = JS_ToStringFree(ctx, str2);
    800207ee:	842a                	mv	s0,a0
    800207f0:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:3950
        if (JS_IsException(str2))
    800207f2:	08f70763          	beq	a4,a5,80020880 <JS_ConcatString3+0xd0>
quickjs-nuttx/quickjs.c:3954
    len1 = strlen(str1);
    800207f6:	8556                	mv	a0,s5
    800207f8:	58a430ef          	jal	ra,80063d82 <strlen>
    800207fc:	00050b1b          	sext.w	s6,a0
quickjs-nuttx/quickjs.c:3955
    len3 = strlen(str3);
    80020800:	854e                	mv	a0,s3
    80020802:	580430ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/quickjs.c:3957
    if (string_buffer_init2(ctx, b, len1 + p->len + len3, p->is_wide_char))
    80020806:	4054                	lw	a3,4(s0)
    80020808:	80000a37          	lui	s4,0x80000
    8002080c:	fffa4a13          	not	s4,s4
    80020810:	0146f633          	and	a2,a3,s4
quickjs-nuttx/quickjs.c:3955
    len3 = strlen(str3);
    80020814:	00050b9b          	sext.w	s7,a0
quickjs-nuttx/quickjs.c:3957
    if (string_buffer_init2(ctx, b, len1 + p->len + len3, p->is_wide_char))
    80020818:	0165053b          	addw	a0,a0,s6
    8002081c:	9e29                	addw	a2,a2,a0
    8002081e:	01f6d69b          	srliw	a3,a3,0x1f
    80020822:	100c                	addi	a1,sp,32
    80020824:	854a                	mv	a0,s2
    80020826:	f1efd0ef          	jal	ra,8001df44 <string_buffer_init2>
    8002082a:	e939                	bnez	a0,80020880 <JS_ConcatString3+0xd0>
quickjs-nuttx/quickjs.c:3960
    string_buffer_write8(b, (const uint8_t *)str1, len1);
    8002082c:	865a                	mv	a2,s6
    8002082e:	85d6                	mv	a1,s5
    80020830:	1008                	addi	a0,sp,32
    80020832:	a2efe0ef          	jal	ra,8001ea60 <string_buffer_write8>
quickjs-nuttx/quickjs.c:3961
    string_buffer_concat(b, p, 0, p->len);
    80020836:	4054                	lw	a3,4(s0)
    80020838:	4601                	li	a2,0
    8002083a:	85a2                	mv	a1,s0
    8002083c:	0146f6b3          	and	a3,a3,s4
    80020840:	2681                	sext.w	a3,a3
    80020842:	1008                	addi	a0,sp,32
    80020844:	a9efe0ef          	jal	ra,8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:3962
    string_buffer_write8(b, (const uint8_t *)str3, len3);
    80020848:	865e                	mv	a2,s7
    8002084a:	85ce                	mv	a1,s3
    8002084c:	1008                	addi	a0,sp,32
    8002084e:	a12fe0ef          	jal	ra,8001ea60 <string_buffer_write8>
quickjs-nuttx/quickjs.c:3964
    JS_FreeValue(ctx, str2);
    80020852:	85a2                	mv	a1,s0
    80020854:	8626                	mv	a2,s1
    80020856:	854a                	mv	a0,s2
    80020858:	f47ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3965
    return string_buffer_end(b);
    8002085c:	1008                	addi	a0,sp,32
    8002085e:	c42ff0ef          	jal	ra,8001fca0 <string_buffer_end>
    80020862:	e82a                	sd	a0,16(sp)
    80020864:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:3970
}
    80020866:	60aa                	ld	ra,136(sp)
    80020868:	640a                	ld	s0,128(sp)
    8002086a:	6542                	ld	a0,16(sp)
    8002086c:	65e2                	ld	a1,24(sp)
    8002086e:	74e6                	ld	s1,120(sp)
    80020870:	7946                	ld	s2,112(sp)
    80020872:	79a6                	ld	s3,104(sp)
    80020874:	7a06                	ld	s4,96(sp)
    80020876:	6ae6                	ld	s5,88(sp)
    80020878:	6b46                	ld	s6,80(sp)
    8002087a:	6ba6                	ld	s7,72(sp)
    8002087c:	6149                	addi	sp,sp,144
    8002087e:	8082                	ret
quickjs-nuttx/quickjs.c:3968
    JS_FreeValue(ctx, str2);
    80020880:	85a2                	mv	a1,s0
    80020882:	8626                	mv	a2,s1
    80020884:	854a                	mv	a0,s2
    80020886:	f19ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3969
    return JS_EXCEPTION;
    8002088a:	4799                	li	a5,6
    8002088c:	e802                	sd	zero,16(sp)
    8002088e:	ec3e                	sd	a5,24(sp)
    80020890:	bfd9                	j	80020866 <JS_ConcatString3+0xb6>

0000000080020892 <js_get_function_name>:
js_get_function_name():
quickjs-nuttx/quickjs.c:4995
{
    80020892:	7139                	addi	sp,sp,-64
    80020894:	f822                	sd	s0,48(sp)
    80020896:	f426                	sd	s1,40(sp)
    80020898:	fc06                	sd	ra,56(sp)
    8002089a:	84aa                	mv	s1,a0
    8002089c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:4998
    name_str = JS_AtomToString(ctx, name);
    8002089e:	a34ff0ef          	jal	ra,8001fad2 <JS_AtomToString>
    800208a2:	e02a                	sd	a0,0(sp)
    800208a4:	e42e                	sd	a1,8(sp)
JS_AtomSymbolHasDescription():
quickjs-nuttx/quickjs.c:3271
    if (__JS_AtomIsTaggedInt(v))
    800208a6:	04044a63          	bltz	s0,800208fa <js_get_function_name+0x68>
quickjs-nuttx/quickjs.c:3273
    p = rt->atom_array[v];
    800208aa:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:3276
             p->atom_type == JS_ATOM_TYPE_GLOBAL_SYMBOL) &&
    800208ac:	c00006b7          	lui	a3,0xc0000
quickjs-nuttx/quickjs.c:3273
    p = rt->atom_array[v];
    800208b0:	73ac                	ld	a1,96(a5)
    800208b2:	02041793          	slli	a5,s0,0x20
    800208b6:	01d7d413          	srli	s0,a5,0x1d
    800208ba:	942e                	add	s0,s0,a1
    800208bc:	6018                	ld	a4,0(s0)
quickjs-nuttx/quickjs.c:3274
    return (((p->atom_type == JS_ATOM_TYPE_SYMBOL &&
    800208be:	471c                	lw	a5,8(a4)
quickjs-nuttx/quickjs.c:3276
             p->atom_type == JS_ATOM_TYPE_GLOBAL_SYMBOL) &&
    800208c0:	00d78763          	beq	a5,a3,800208ce <js_get_function_name+0x3c>
quickjs-nuttx/quickjs.c:3275
              p->hash == JS_ATOM_HASH_SYMBOL) ||
    800208c4:	8ff5                	and	a5,a5,a3
    800208c6:	800006b7          	lui	a3,0x80000
    800208ca:	02d79863          	bne	a5,a3,800208fa <js_get_function_name+0x68>
quickjs-nuttx/quickjs.c:3276
             p->atom_type == JS_ATOM_TYPE_GLOBAL_SYMBOL) &&
    800208ce:	4358                	lw	a4,4(a4)
    800208d0:	800007b7          	lui	a5,0x80000
    800208d4:	02f70363          	beq	a4,a5,800208fa <js_get_function_name+0x68>
js_get_function_name():
quickjs-nuttx/quickjs.c:5003
}
    800208d8:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:5000
        name_str = JS_ConcatString3(ctx, "[", name_str, "]");
    800208da:	6602                	ld	a2,0(sp)
    800208dc:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:5003
}
    800208de:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:5000
        name_str = JS_ConcatString3(ctx, "[", name_str, "]");
    800208e0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5003
}
    800208e2:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:5000
        name_str = JS_ConcatString3(ctx, "[", name_str, "]");
    800208e4:	0004e717          	auipc	a4,0x4e
    800208e8:	e6c70713          	addi	a4,a4,-404 # 8006e750 <qjsc_repl+0x91a0>
    800208ec:	0004a597          	auipc	a1,0x4a
    800208f0:	11458593          	addi	a1,a1,276 # 8006aa00 <qjsc_repl+0x5450>
quickjs-nuttx/quickjs.c:5003
}
    800208f4:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:5000
        name_str = JS_ConcatString3(ctx, "[", name_str, "]");
    800208f6:	ebbff06f          	j	800207b0 <JS_ConcatString3>
quickjs-nuttx/quickjs.c:5003
}
    800208fa:	70e2                	ld	ra,56(sp)
    800208fc:	7442                	ld	s0,48(sp)
    800208fe:	6502                	ld	a0,0(sp)
    80020900:	65a2                	ld	a1,8(sp)
    80020902:	74a2                	ld	s1,40(sp)
    80020904:	6121                	addi	sp,sp,64
    80020906:	8082                	ret

0000000080020908 <JS_ConcatString>:
JS_ConcatString():
quickjs-nuttx/quickjs.c:4196
{
    80020908:	7135                	addi	sp,sp,-160
    8002090a:	e526                	sd	s1,136(sp)
    8002090c:	fcce                	sd	s3,120(sp)
    8002090e:	f4d6                	sd	s5,104(sp)
    80020910:	e43a                	sd	a4,8(sp)
    80020912:	89ba                	mv	s3,a4
    80020914:	ed06                	sd	ra,152(sp)
    80020916:	e922                	sd	s0,144(sp)
    80020918:	e14a                	sd	s2,128(sp)
    8002091a:	f8d2                	sd	s4,112(sp)
    8002091c:	f0da                	sd	s6,96(sp)
    8002091e:	ecde                	sd	s7,88(sp)
    80020920:	e8e2                	sd	s8,80(sp)
    80020922:	e4e6                	sd	s9,72(sp)
    80020924:	e82e                	sd	a1,16(sp)
    80020926:	ec32                	sd	a2,24(sp)
    80020928:	e036                	sd	a3,0(sp)
quickjs-nuttx/quickjs.c:4200
    if (unlikely(JS_VALUE_GET_TAG(op1) != JS_TAG_STRING)) {
    8002092a:	0006071b          	sext.w	a4,a2
    8002092e:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:4196
{
    80020930:	8aaa                	mv	s5,a0
    80020932:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:4200
    if (unlikely(JS_VALUE_GET_TAG(op1) != JS_TAG_STRING)) {
    80020934:	04f70363          	beq	a4,a5,8002097a <JS_ConcatString+0x72>
quickjs-nuttx/quickjs.c:4201
        op1 = JS_ToStringFree(ctx, op1);
    80020938:	e4fff0ef          	jal	ra,80020786 <JS_ToStringFree>
    8002093c:	e82a                	sd	a0,16(sp)
    8002093e:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:4202
        if (JS_IsException(op1)) {
    80020940:	00058a1b          	sext.w	s4,a1
    80020944:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:4201
        op1 = JS_ToStringFree(ctx, op1);
    80020946:	842a                	mv	s0,a0
    80020948:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:4202
        if (JS_IsException(op1)) {
    8002094a:	02fa1a63          	bne	s4,a5,8002097e <JS_ConcatString+0x76>
quickjs-nuttx/quickjs.c:4203
            JS_FreeValue(ctx, op2);
    8002094e:	6582                	ld	a1,0(sp)
    80020950:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:4210
            JS_FreeValue(ctx, op1);
    80020952:	8556                	mv	a0,s5
    80020954:	e4bea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4211
            return JS_EXCEPTION;
    80020958:	f002                	sd	zero,32(sp)
    8002095a:	f452                	sd	s4,40(sp)
quickjs-nuttx/quickjs.c:4240 (discriminator 1)
}
    8002095c:	60ea                	ld	ra,152(sp)
    8002095e:	644a                	ld	s0,144(sp)
    80020960:	7502                	ld	a0,32(sp)
    80020962:	75a2                	ld	a1,40(sp)
    80020964:	64aa                	ld	s1,136(sp)
    80020966:	690a                	ld	s2,128(sp)
    80020968:	79e6                	ld	s3,120(sp)
    8002096a:	7a46                	ld	s4,112(sp)
    8002096c:	7aa6                	ld	s5,104(sp)
    8002096e:	7b06                	ld	s6,96(sp)
    80020970:	6be6                	ld	s7,88(sp)
    80020972:	6c46                	ld	s8,80(sp)
    80020974:	6ca6                	ld	s9,72(sp)
    80020976:	610d                	addi	sp,sp,160
    80020978:	8082                	ret
    8002097a:	842e                	mv	s0,a1
    8002097c:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:4207
    if (unlikely(JS_VALUE_GET_TAG(op2) != JS_TAG_STRING)) {
    8002097e:	0009879b          	sext.w	a5,s3
    80020982:	5765                	li	a4,-7
    80020984:	02e78363          	beq	a5,a4,800209aa <JS_ConcatString+0xa2>
quickjs-nuttx/quickjs.c:4208
        op2 = JS_ToStringFree(ctx, op2);
    80020988:	6582                	ld	a1,0(sp)
    8002098a:	6622                	ld	a2,8(sp)
    8002098c:	8556                	mv	a0,s5
    8002098e:	df9ff0ef          	jal	ra,80020786 <JS_ToStringFree>
    80020992:	e02a                	sd	a0,0(sp)
    80020994:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:4209
        if (JS_IsException(op2)) {
    80020996:	00058a1b          	sext.w	s4,a1
    8002099a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:4208
        op2 = JS_ToStringFree(ctx, op2);
    8002099c:	84aa                	mv	s1,a0
    8002099e:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:4209
        if (JS_IsException(op2)) {
    800209a0:	00fa1563          	bne	s4,a5,800209aa <JS_ConcatString+0xa2>
quickjs-nuttx/quickjs.c:4210
            JS_FreeValue(ctx, op1);
    800209a4:	85a2                	mv	a1,s0
    800209a6:	864a                	mv	a2,s2
    800209a8:	b76d                	j	80020952 <JS_ConcatString+0x4a>
quickjs-nuttx/quickjs.c:4218
    if (p2->len == 0) {
    800209aa:	40dc                	lw	a5,4(s1)
    800209ac:	80000a37          	lui	s4,0x80000
    800209b0:	fffa4a13          	not	s4,s4
    800209b4:	0147f733          	and	a4,a5,s4
    800209b8:	c351                	beqz	a4,80020a3c <JS_ConcatString+0x134>
quickjs-nuttx/quickjs.c:4221
    if (p1->header.ref_count == 1 && p1->is_wide_char == p2->is_wide_char
    800209ba:	4014                	lw	a3,0(s0)
    800209bc:	4705                	li	a4,1
    800209be:	0ce69263          	bne	a3,a4,80020a82 <JS_ConcatString+0x17a>
quickjs-nuttx/quickjs.c:4221 (discriminator 1)
    800209c2:	4058                	lw	a4,4(s0)
    800209c4:	8fb9                	xor	a5,a5,a4
    800209c6:	0a07ce63          	bltz	a5,80020a82 <JS_ConcatString+0x17a>
quickjs-nuttx/quickjs.c:4222
    &&  js_malloc_usable_size(ctx, p1) >= sizeof(*p1) + ((p1->len + p2->len) << p2->is_wide_char) + 1 - p1->is_wide_char) {
    800209ca:	85a2                	mv	a1,s0
    800209cc:	8556                	mv	a0,s5
    800209ce:	e70ea0ef          	jal	ra,8000b03e <js_malloc_usable_size>
    800209d2:	4054                	lw	a3,4(s0)
    800209d4:	40cc                	lw	a1,4(s1)
    800209d6:	0146f8b3          	and	a7,a3,s4
    800209da:	0145f7b3          	and	a5,a1,s4
    800209de:	0007861b          	sext.w	a2,a5
    800209e2:	01f5d59b          	srliw	a1,a1,0x1f
    800209e6:	011787bb          	addw	a5,a5,a7
    800209ea:	00b797bb          	sllw	a5,a5,a1
    800209ee:	01f6d59b          	srliw	a1,a3,0x1f
    800209f2:	8f8d                	sub	a5,a5,a1
    800209f4:	07c5                	addi	a5,a5,17
    800209f6:	0008871b          	sext.w	a4,a7
    800209fa:	08f56463          	bltu	a0,a5,80020a82 <JS_ConcatString+0x17a>
quickjs-nuttx/quickjs.c:4225
            memcpy(p1->u.str16 + p1->len, p2->u.str16, p2->len << 1);
    800209fe:	02071793          	slli	a5,a4,0x20
quickjs-nuttx/quickjs.c:4224
        if (p1->is_wide_char) {
    80020a02:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:4225
            memcpy(p1->u.str16 + p1->len, p2->u.str16, p2->len << 1);
    80020a04:	9381                	srli	a5,a5,0x20
    80020a06:	01040513          	addi	a0,s0,16
    80020a0a:	01048593          	addi	a1,s1,16
quickjs-nuttx/quickjs.c:4224
        if (p1->is_wide_char) {
    80020a0e:	0206df63          	bgez	a3,80020a4c <JS_ConcatString+0x144>
quickjs-nuttx/quickjs.c:4225
            memcpy(p1->u.str16 + p1->len, p2->u.str16, p2->len << 1);
    80020a12:	0786                	slli	a5,a5,0x1
    80020a14:	953e                	add	a0,a0,a5
    80020a16:	0016161b          	slliw	a2,a2,0x1
    80020a1a:	392430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:4226
            p1->len += p2->len;
    80020a1e:	405c                	lw	a5,4(s0)
    80020a20:	40d4                	lw	a3,4(s1)
    80020a22:	0147f733          	and	a4,a5,s4
    80020a26:	0146f6b3          	and	a3,a3,s4
    80020a2a:	9f35                	addw	a4,a4,a3
    80020a2c:	01477a33          	and	s4,a4,s4
    80020a30:	80000737          	lui	a4,0x80000
    80020a34:	8ff9                	and	a5,a5,a4
    80020a36:	0147e7b3          	or	a5,a5,s4
    80020a3a:	c05c                	sw	a5,4(s0)
quickjs-nuttx/quickjs.c:4233
        JS_FreeValue(ctx, op2);
    80020a3c:	85a6                	mv	a1,s1
    80020a3e:	864e                	mv	a2,s3
    80020a40:	8556                	mv	a0,s5
    80020a42:	d5dea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4234
        return op1;
    80020a46:	f022                	sd	s0,32(sp)
    80020a48:	f44a                	sd	s2,40(sp)
    80020a4a:	bf09                	j	8002095c <JS_ConcatString+0x54>
quickjs-nuttx/quickjs.c:4228
            memcpy(p1->u.str8 + p1->len, p2->u.str8, p2->len);
    80020a4c:	1602                	slli	a2,a2,0x20
    80020a4e:	9201                	srli	a2,a2,0x20
    80020a50:	953e                	add	a0,a0,a5
    80020a52:	35a430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:4229
            p1->len += p2->len;
    80020a56:	405c                	lw	a5,4(s0)
    80020a58:	40d4                	lw	a3,4(s1)
    80020a5a:	80000637          	lui	a2,0x80000
    80020a5e:	0147f733          	and	a4,a5,s4
    80020a62:	0146f6b3          	and	a3,a3,s4
    80020a66:	9f35                	addw	a4,a4,a3
    80020a68:	0007069b          	sext.w	a3,a4
    80020a6c:	8ff1                	and	a5,a5,a2
    80020a6e:	00ea7733          	and	a4,s4,a4
    80020a72:	8fd9                	or	a5,a5,a4
quickjs-nuttx/quickjs.c:4230
            p1->u.str8[p1->len] = '\0';
    80020a74:	0146fa33          	and	s4,a3,s4
quickjs-nuttx/quickjs.c:4229
            p1->len += p2->len;
    80020a78:	c05c                	sw	a5,4(s0)
quickjs-nuttx/quickjs.c:4230
            p1->u.str8[p1->len] = '\0';
    80020a7a:	9a22                	add	s4,s4,s0
    80020a7c:	000a0823          	sb	zero,16(s4) # ffffffff80000010 <_ebss+0xfffffffeffefeeaa>
    80020a80:	bf75                	j	80020a3c <JS_ConcatString+0x134>
JS_ConcatString1():
quickjs-nuttx/quickjs.c:4175
    len = p1->len + p2->len;
    80020a82:	4050                	lw	a2,4(s0)
    80020a84:	0044ac03          	lw	s8,4(s1)
    80020a88:	80000b37          	lui	s6,0x80000
    80020a8c:	fffb4b13          	not	s6,s6
    80020a90:	016c77b3          	and	a5,s8,s6
    80020a94:	01667bb3          	and	s7,a2,s6
    80020a98:	00fb8bbb          	addw	s7,s7,a5
    80020a9c:	000b859b          	sext.w	a1,s7
quickjs-nuttx/quickjs.c:4176
    if (len > JS_STRING_LEN_MAX)
    80020aa0:	400007b7          	lui	a5,0x40000
    80020aa4:	02f5e863          	bltu	a1,a5,80020ad4 <JS_ConcatString+0x1cc>
quickjs-nuttx/quickjs.c:4177
        return JS_ThrowInternalError(ctx, "string too long");
    80020aa8:	0004a597          	auipc	a1,0x4a
    80020aac:	de858593          	addi	a1,a1,-536 # 8006a890 <qjsc_repl+0x52e0>
    80020ab0:	8556                	mv	a0,s5
    80020ab2:	e47f80ef          	jal	ra,800198f8 <JS_ThrowInternalError>
    80020ab6:	8a2a                	mv	s4,a0
    80020ab8:	8cae                	mv	s9,a1
JS_ConcatString():
quickjs-nuttx/quickjs.c:4237
    JS_FreeValue(ctx, op1);
    80020aba:	85a2                	mv	a1,s0
    80020abc:	864a                	mv	a2,s2
    80020abe:	8556                	mv	a0,s5
    80020ac0:	cdfea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4238
    JS_FreeValue(ctx, op2);
    80020ac4:	85a6                	mv	a1,s1
    80020ac6:	864e                	mv	a2,s3
    80020ac8:	8556                	mv	a0,s5
    80020aca:	cd5ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4239
    return ret;
    80020ace:	f052                	sd	s4,32(sp)
    80020ad0:	f466                	sd	s9,40(sp)
    80020ad2:	b569                	j	8002095c <JS_ConcatString+0x54>
JS_ConcatString1():
quickjs-nuttx/quickjs.c:4178
    is_wide_char = p1->is_wide_char | p2->is_wide_char;
    80020ad4:	00cc6c33          	or	s8,s8,a2
    80020ad8:	01fc5c1b          	srliw	s8,s8,0x1f
quickjs-nuttx/quickjs.c:4179
    p = js_alloc_string(ctx, len, is_wide_char);
    80020adc:	8662                	mv	a2,s8
    80020ade:	8556                	mv	a0,s5
    80020ae0:	c3efd0ef          	jal	ra,8001df1e <js_alloc_string>
    80020ae4:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:4181
        return JS_EXCEPTION;
    80020ae6:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:4180
    if (!p)
    80020ae8:	d969                	beqz	a0,80020aba <JS_ConcatString+0x1b2>
quickjs-nuttx/quickjs.c:4183
        memcpy(p->u.str8, p1->u.str8, p1->len);
    80020aea:	4050                	lw	a2,4(s0)
    80020aec:	01050c93          	addi	s9,a0,16
    80020af0:	00cb7633          	and	a2,s6,a2
quickjs-nuttx/quickjs.c:4182
    if (!is_wide_char) {
    80020af4:	040c1063          	bnez	s8,80020b34 <JS_ConcatString+0x22c>
quickjs-nuttx/quickjs.c:4183
        memcpy(p->u.str8, p1->u.str8, p1->len);
    80020af8:	1602                	slli	a2,a2,0x20
    80020afa:	9201                	srli	a2,a2,0x20
    80020afc:	01040593          	addi	a1,s0,16
    80020b00:	8566                	mv	a0,s9
    80020b02:	2aa430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:4184
        memcpy(p->u.str8 + p1->len, p2->u.str8, p2->len);
    80020b06:	4048                	lw	a0,4(s0)
    80020b08:	40d0                	lw	a2,4(s1)
quickjs-nuttx/quickjs.c:4185
        p->u.str8[len] = '\0';
    80020b0a:	1b82                	slli	s7,s7,0x20
quickjs-nuttx/quickjs.c:4184
        memcpy(p->u.str8 + p1->len, p2->u.str8, p2->len);
    80020b0c:	01657533          	and	a0,a0,s6
    80020b10:	1502                	slli	a0,a0,0x20
    80020b12:	01667633          	and	a2,a2,s6
    80020b16:	9101                	srli	a0,a0,0x20
    80020b18:	1602                	slli	a2,a2,0x20
quickjs-nuttx/quickjs.c:4185
        p->u.str8[len] = '\0';
    80020b1a:	020bdb93          	srli	s7,s7,0x20
quickjs-nuttx/quickjs.c:4184
        memcpy(p->u.str8 + p1->len, p2->u.str8, p2->len);
    80020b1e:	9201                	srli	a2,a2,0x20
    80020b20:	01048593          	addi	a1,s1,16
    80020b24:	9566                	add	a0,a0,s9
quickjs-nuttx/quickjs.c:4185
        p->u.str8[len] = '\0';
    80020b26:	9bd2                	add	s7,s7,s4
quickjs-nuttx/quickjs.c:4184
        memcpy(p->u.str8 + p1->len, p2->u.str8, p2->len);
    80020b28:	284430ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:4185
        p->u.str8[len] = '\0';
    80020b2c:	000b8823          	sb	zero,16(s7)
quickjs-nuttx/quickjs.c:4190
    return JS_MKPTR(JS_TAG_STRING, p);
    80020b30:	5ce5                	li	s9,-7
    80020b32:	b761                	j	80020aba <JS_ConcatString+0x1b2>
quickjs-nuttx/quickjs.c:4187
        copy_str16(p->u.str16, p1, 0, p1->len);
    80020b34:	85a2                	mv	a1,s0
    80020b36:	8566                	mv	a0,s9
    80020b38:	e5ce90ef          	jal	ra,8000a194 <copy_str16.constprop.0>
quickjs-nuttx/quickjs.c:4188
        copy_str16(p->u.str16 + p1->len, p2, 0, p2->len);
    80020b3c:	4048                	lw	a0,4(s0)
    80020b3e:	40d0                	lw	a2,4(s1)
    80020b40:	85a6                	mv	a1,s1
    80020b42:	01657533          	and	a0,a0,s6
    80020b46:	02051793          	slli	a5,a0,0x20
    80020b4a:	01f7d513          	srli	a0,a5,0x1f
    80020b4e:	00cb7633          	and	a2,s6,a2
    80020b52:	9566                	add	a0,a0,s9
    80020b54:	e40e90ef          	jal	ra,8000a194 <copy_str16.constprop.0>
    80020b58:	bfe1                	j	80020b30 <JS_ConcatString+0x228>

0000000080020b5a <js_error_toString>:
js_error_toString():
quickjs-nuttx/quickjs.c:38660
{
    80020b5a:	7175                	addi	sp,sp,-144
    80020b5c:	e506                	sd	ra,136(sp)
    80020b5e:	e122                	sd	s0,128(sp)
    80020b60:	fca6                	sd	s1,120(sp)
    80020b62:	f8ca                	sd	s2,112(sp)
    80020b64:	f4ce                	sd	s3,104(sp)
    80020b66:	e02e                	sd	a1,0(sp)
    80020b68:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:38663
    if (!JS_IsObject(this_val))
    80020b6a:	0006069b          	sext.w	a3,a2
    80020b6e:	577d                	li	a4,-1
    80020b70:	00e68a63          	beq	a3,a4,80020b84 <js_error_toString+0x2a>
quickjs-nuttx/quickjs.c:38685
}
    80020b74:	640a                	ld	s0,128(sp)
    80020b76:	60aa                	ld	ra,136(sp)
    80020b78:	74e6                	ld	s1,120(sp)
    80020b7a:	7946                	ld	s2,112(sp)
    80020b7c:	79a6                	ld	s3,104(sp)
    80020b7e:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:38664
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80020b80:	8aaf806f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    80020b84:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:38665
    name = JS_GetProperty(ctx, this_val, JS_ATOM_name);
    80020b86:	872e                	mv	a4,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80020b88:	4801                	li	a6,0
    80020b8a:	03700693          	li	a3,55
    80020b8e:	ecb2                	sd	a2,88(sp)
    80020b90:	84aa                	mv	s1,a0
    80020b92:	e8ae                	sd	a1,80(sp)
    80020b94:	f17f50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
js_error_toString():
quickjs-nuttx/quickjs.c:38666
    if (JS_IsUndefined(name))
    80020b98:	0005871b          	sext.w	a4,a1
    80020b9c:	478d                	li	a5,3
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80020b9e:	862e                	mv	a2,a1
js_error_toString():
quickjs-nuttx/quickjs.c:38666
    80020ba0:	02f71963          	bne	a4,a5,80020bd2 <js_error_toString+0x78>
quickjs-nuttx/quickjs.c:38667
        name = JS_AtomToString(ctx, JS_ATOM_Error);
    80020ba4:	09900593          	li	a1,153
    80020ba8:	8526                	mv	a0,s1
    80020baa:	f29fe0ef          	jal	ra,8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:38669
        name = JS_ToStringFree(ctx, name);
    80020bae:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:38670
    if (JS_IsException(name))
    80020bb0:	0005879b          	sext.w	a5,a1
    80020bb4:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:38669
        name = JS_ToStringFree(ctx, name);
    80020bb6:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:38670
    if (JS_IsException(name))
    80020bb8:	02e79263          	bne	a5,a4,80020bdc <js_error_toString+0x82>
quickjs-nuttx/quickjs.c:38671
        return JS_EXCEPTION;
    80020bbc:	e082                	sd	zero,64(sp)
    80020bbe:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:38685 (discriminator 1)
}
    80020bc0:	60aa                	ld	ra,136(sp)
    80020bc2:	640a                	ld	s0,128(sp)
    80020bc4:	6506                	ld	a0,64(sp)
    80020bc6:	65a6                	ld	a1,72(sp)
    80020bc8:	74e6                	ld	s1,120(sp)
    80020bca:	7946                	ld	s2,112(sp)
    80020bcc:	79a6                	ld	s3,104(sp)
    80020bce:	6149                	addi	sp,sp,144
    80020bd0:	8082                	ret
quickjs-nuttx/quickjs.c:38669
        name = JS_ToStringFree(ctx, name);
    80020bd2:	85aa                	mv	a1,a0
    80020bd4:	8526                	mv	a0,s1
    80020bd6:	bb1ff0ef          	jal	ra,80020786 <JS_ToStringFree>
    80020bda:	bfd1                	j	80020bae <js_error_toString+0x54>
quickjs-nuttx/quickjs.c:38673
    msg = JS_GetProperty(ctx, this_val, JS_ATOM_message);
    80020bdc:	6702                	ld	a4,0(sp)
    80020bde:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80020be0:	4801                	li	a6,0
    80020be2:	85ba                	mv	a1,a4
    80020be4:	863e                	mv	a2,a5
    80020be6:	03300693          	li	a3,51
    80020bea:	8526                	mv	a0,s1
    80020bec:	e0ba                	sd	a4,64(sp)
    80020bee:	e4be                	sd	a5,72(sp)
    80020bf0:	ebbf50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80020bf4:	e8aa                	sd	a0,80(sp)
    80020bf6:	ecae                	sd	a1,88(sp)
js_error_toString():
quickjs-nuttx/quickjs.c:38674
    if (JS_IsUndefined(msg))
    80020bf8:	0005871b          	sext.w	a4,a1
    80020bfc:	478d                	li	a5,3
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80020bfe:	862e                	mv	a2,a1
js_error_toString():
quickjs-nuttx/quickjs.c:38674
    80020c00:	02f71663          	bne	a4,a5,80020c2c <js_error_toString+0xd2>
quickjs-nuttx/quickjs.c:38675
        msg = JS_AtomToString(ctx, JS_ATOM_empty_string);
    80020c04:	02f00593          	li	a1,47
    80020c08:	8526                	mv	a0,s1
    80020c0a:	ec9fe0ef          	jal	ra,8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:38677
        msg = JS_ToStringFree(ctx, msg);
    80020c0e:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:38678
    if (JS_IsException(msg)) {
    80020c10:	0005899b          	sext.w	s3,a1
    80020c14:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38677
        msg = JS_ToStringFree(ctx, msg);
    80020c16:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:38678
    if (JS_IsException(msg)) {
    80020c18:	00f99f63          	bne	s3,a5,80020c36 <js_error_toString+0xdc>
quickjs-nuttx/quickjs.c:38679
        JS_FreeValue(ctx, name);
    80020c1c:	65c2                	ld	a1,16(sp)
    80020c1e:	8622                	mv	a2,s0
    80020c20:	8526                	mv	a0,s1
    80020c22:	b7dea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38680
        return JS_EXCEPTION;
    80020c26:	e082                	sd	zero,64(sp)
    80020c28:	e4ce                	sd	s3,72(sp)
    80020c2a:	bf59                	j	80020bc0 <js_error_toString+0x66>
quickjs-nuttx/quickjs.c:38677
        msg = JS_ToStringFree(ctx, msg);
    80020c2c:	85aa                	mv	a1,a0
    80020c2e:	8526                	mv	a0,s1
    80020c30:	b57ff0ef          	jal	ra,80020786 <JS_ToStringFree>
    80020c34:	bfe9                	j	80020c0e <js_error_toString+0xb4>
quickjs-nuttx/quickjs.c:38682
    if (!JS_IsEmptyString(name) && !JS_IsEmptyString(msg))
    80020c36:	6542                	ld	a0,16(sp)
    80020c38:	85a2                	mv	a1,s0
    80020c3a:	80ce70ef          	jal	ra,80007c46 <JS_IsEmptyString>
    80020c3e:	e50d                	bnez	a0,80020c68 <js_error_toString+0x10e>
quickjs-nuttx/quickjs.c:38682 (discriminator 1)
    80020c40:	7502                	ld	a0,32(sp)
    80020c42:	85ca                	mv	a1,s2
    80020c44:	802e70ef          	jal	ra,80007c46 <JS_IsEmptyString>
    80020c48:	e105                	bnez	a0,80020c68 <js_error_toString+0x10e>
quickjs-nuttx/quickjs.c:38683
        name = JS_ConcatString3(ctx, "", name, ": ");
    80020c4a:	6642                	ld	a2,16(sp)
    80020c4c:	86a2                	mv	a3,s0
    80020c4e:	0004a717          	auipc	a4,0x4a
    80020c52:	dba70713          	addi	a4,a4,-582 # 8006aa08 <qjsc_repl+0x5458>
    80020c56:	00049597          	auipc	a1,0x49
    80020c5a:	f3258593          	addi	a1,a1,-206 # 80069b88 <qjsc_repl+0x45d8>
    80020c5e:	8526                	mv	a0,s1
    80020c60:	b51ff0ef          	jal	ra,800207b0 <JS_ConcatString3>
    80020c64:	e82a                	sd	a0,16(sp)
    80020c66:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:38684
    return JS_ConcatString(ctx, name, msg);
    80020c68:	8622                	mv	a2,s0
quickjs-nuttx/quickjs.c:38685
}
    80020c6a:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:38684
    return JS_ConcatString(ctx, name, msg);
    80020c6c:	7682                	ld	a3,32(sp)
    80020c6e:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:38685
}
    80020c70:	60aa                	ld	ra,136(sp)
    80020c72:	79a6                	ld	s3,104(sp)
quickjs-nuttx/quickjs.c:38684
    return JS_ConcatString(ctx, name, msg);
    80020c74:	874a                	mv	a4,s2
    80020c76:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:38685
}
    80020c78:	7946                	ld	s2,112(sp)
    80020c7a:	74e6                	ld	s1,120(sp)
    80020c7c:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:38684
    return JS_ConcatString(ctx, name, msg);
    80020c7e:	c8bff06f          	j	80020908 <JS_ConcatString>

0000000080020c82 <string_buffer_concat_value_free>:
string_buffer_concat_value_free():
quickjs-nuttx/quickjs.c:3814
{
    80020c82:	7139                	addi	sp,sp,-64
    80020c84:	f04a                	sd	s2,32(sp)
    80020c86:	fc06                	sd	ra,56(sp)
    80020c88:	f822                	sd	s0,48(sp)
    80020c8a:	f426                	sd	s1,40(sp)
    80020c8c:	ec4e                	sd	s3,24(sp)
quickjs-nuttx/quickjs.c:3818
    if (s->error_status) {
    80020c8e:	4d5c                	lw	a5,28(a0)
quickjs-nuttx/quickjs.c:3814
{
    80020c90:	e02e                	sd	a1,0(sp)
    80020c92:	e432                	sd	a2,8(sp)
    80020c94:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:3818
    if (s->error_status) {
    80020c96:	cf89                	beqz	a5,80020cb0 <string_buffer_concat_value_free+0x2e>
quickjs-nuttx/quickjs.c:3820
        JS_FreeValue(s->ctx, v);
    80020c98:	6108                	ld	a0,0(a0)
quickjs-nuttx/quickjs.c:3821
        return -1;
    80020c9a:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:3820
        JS_FreeValue(s->ctx, v);
    80020c9c:	b03ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3832
}
    80020ca0:	70e2                	ld	ra,56(sp)
    80020ca2:	7442                	ld	s0,48(sp)
    80020ca4:	74a2                	ld	s1,40(sp)
    80020ca6:	7902                	ld	s2,32(sp)
    80020ca8:	854e                	mv	a0,s3
    80020caa:	69e2                	ld	s3,24(sp)
    80020cac:	6121                	addi	sp,sp,64
    80020cae:	8082                	ret
quickjs-nuttx/quickjs.c:3823
    if (unlikely(JS_VALUE_GET_TAG(v) != JS_TAG_STRING)) {
    80020cb0:	0006079b          	sext.w	a5,a2
    80020cb4:	5765                	li	a4,-7
    80020cb6:	84ae                	mv	s1,a1
    80020cb8:	8432                	mv	s0,a2
    80020cba:	02e78763          	beq	a5,a4,80020ce8 <string_buffer_concat_value_free+0x66>
quickjs-nuttx/quickjs.c:3824
        v = JS_ToStringFree(s->ctx, v);
    80020cbe:	6108                	ld	a0,0(a0)
    80020cc0:	ac7ff0ef          	jal	ra,80020786 <JS_ToStringFree>
    80020cc4:	e02a                	sd	a0,0(sp)
    80020cc6:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:3825
        if (JS_IsException(v))
    80020cc8:	0005871b          	sext.w	a4,a1
    80020ccc:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:3824
        v = JS_ToStringFree(s->ctx, v);
    80020cce:	84aa                	mv	s1,a0
    80020cd0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:3825
        if (JS_IsException(v))
    80020cd2:	00f71b63          	bne	a4,a5,80020ce8 <string_buffer_concat_value_free+0x66>
quickjs-nuttx/quickjs.c:3832
}
    80020cd6:	7442                	ld	s0,48(sp)
    80020cd8:	70e2                	ld	ra,56(sp)
    80020cda:	74a2                	ld	s1,40(sp)
    80020cdc:	69e2                	ld	s3,24(sp)
quickjs-nuttx/quickjs.c:3826
            return string_buffer_set_error(s);
    80020cde:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:3832
}
    80020ce0:	7902                	ld	s2,32(sp)
    80020ce2:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:3826
            return string_buffer_set_error(s);
    80020ce4:	b18ea06f          	j	8000affc <string_buffer_set_error>
quickjs-nuttx/quickjs.c:3829
    res = string_buffer_concat(s, p, 0, p->len);
    80020ce8:	40d4                	lw	a3,4(s1)
    80020cea:	85a6                	mv	a1,s1
    80020cec:	4601                	li	a2,0
    80020cee:	1686                	slli	a3,a3,0x21
    80020cf0:	9285                	srli	a3,a3,0x21
    80020cf2:	854a                	mv	a0,s2
    80020cf4:	deffd0ef          	jal	ra,8001eae2 <string_buffer_concat>
    80020cf8:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:3830
    JS_FreeValue(s->ctx, v);
    80020cfa:	00093503          	ld	a0,0(s2)
    80020cfe:	85a6                	mv	a1,s1
    80020d00:	8622                	mv	a2,s0
    80020d02:	a9dea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3831
    return res;
    80020d06:	bf69                	j	80020ca0 <string_buffer_concat_value_free+0x1e>

0000000080020d08 <js_regexp_toString>:
js_regexp_toString():
quickjs-nuttx/quickjs.c:43704
{
    80020d08:	7175                	addi	sp,sp,-144
    80020d0a:	e432                	sd	a2,8(sp)
    80020d0c:	e506                	sd	ra,136(sp)
    80020d0e:	e122                	sd	s0,128(sp)
    80020d10:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:43708
    if (!JS_IsObject(this_val))
    80020d12:	2601                	sext.w	a2,a2
    80020d14:	57fd                	li	a5,-1
    80020d16:	00f60763          	beq	a2,a5,80020d24 <js_regexp_toString+0x1c>
quickjs-nuttx/quickjs.c:43725
}
    80020d1a:	640a                	ld	s0,128(sp)
    80020d1c:	60aa                	ld	ra,136(sp)
    80020d1e:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:43709
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80020d20:	f0bf706f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:43711
    string_buffer_init(ctx, b, 0);
    80020d24:	4601                	li	a2,0
    80020d26:	108c                	addi	a1,sp,96
    80020d28:	842a                	mv	s0,a0
    80020d2a:	a52fd0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:43712
    string_buffer_putc8(b, '/');
    80020d2e:	02f00593          	li	a1,47
    80020d32:	1088                	addi	a0,sp,96
    80020d34:	f2dfd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:43713
    pattern = JS_GetProperty(ctx, this_val, JS_ATOM_source);
    80020d38:	6702                	ld	a4,0(sp)
    80020d3a:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80020d3c:	4801                	li	a6,0
    80020d3e:	06d00693          	li	a3,109
    80020d42:	863e                	mv	a2,a5
    80020d44:	85ba                	mv	a1,a4
    80020d46:	8522                	mv	a0,s0
    80020d48:	e8ba                	sd	a4,80(sp)
    80020d4a:	ecbe                	sd	a5,88(sp)
    80020d4c:	d5ff50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80020d50:	862e                	mv	a2,a1
js_regexp_toString():
quickjs-nuttx/quickjs.c:43714
    if (string_buffer_concat_value_free(b, pattern))
    80020d52:	85aa                	mv	a1,a0
    80020d54:	1088                	addi	a0,sp,96
    80020d56:	f2dff0ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
    80020d5a:	e529                	bnez	a0,80020da4 <js_regexp_toString+0x9c>
quickjs-nuttx/quickjs.c:43716
    string_buffer_putc8(b, '/');
    80020d5c:	02f00593          	li	a1,47
    80020d60:	1088                	addi	a0,sp,96
    80020d62:	efffd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:43717
    flags = JS_GetProperty(ctx, this_val, JS_ATOM_flags);
    80020d66:	6702                	ld	a4,0(sp)
    80020d68:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80020d6a:	4801                	li	a6,0
    80020d6c:	06e00693          	li	a3,110
    80020d70:	863e                	mv	a2,a5
    80020d72:	85ba                	mv	a1,a4
    80020d74:	8522                	mv	a0,s0
    80020d76:	e0ba                	sd	a4,64(sp)
    80020d78:	e4be                	sd	a5,72(sp)
    80020d7a:	d31f50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80020d7e:	862e                	mv	a2,a1
    80020d80:	e8aa                	sd	a0,80(sp)
    80020d82:	ecae                	sd	a1,88(sp)
js_regexp_toString():
quickjs-nuttx/quickjs.c:43718
    if (string_buffer_concat_value_free(b, flags))
    80020d84:	85aa                	mv	a1,a0
    80020d86:	1088                	addi	a0,sp,96
    80020d88:	efbff0ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
    80020d8c:	ed01                	bnez	a0,80020da4 <js_regexp_toString+0x9c>
quickjs-nuttx/quickjs.c:43720
    return string_buffer_end(b);
    80020d8e:	1088                	addi	a0,sp,96
    80020d90:	f11fe0ef          	jal	ra,8001fca0 <string_buffer_end>
    80020d94:	e0aa                	sd	a0,64(sp)
    80020d96:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:43725
}
    80020d98:	60aa                	ld	ra,136(sp)
    80020d9a:	640a                	ld	s0,128(sp)
    80020d9c:	6506                	ld	a0,64(sp)
    80020d9e:	65a6                	ld	a1,72(sp)
    80020da0:	6149                	addi	sp,sp,144
    80020da2:	8082                	ret
quickjs-nuttx/quickjs.c:43723
    string_buffer_free(b);
    80020da4:	1088                	addi	a0,sp,96
    80020da6:	a7cea0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:43724
    return JS_EXCEPTION;
    80020daa:	4799                	li	a5,6
    80020dac:	e082                	sd	zero,64(sp)
    80020dae:	e4be                	sd	a5,72(sp)
    80020db0:	b7e5                	j	80020d98 <js_regexp_toString+0x90>

0000000080020db2 <js_bigdecimal_toString>:
js_bigdecimal_toString():
quickjs-nuttx/quickjs.c:51942
{
    80020db2:	7139                	addi	sp,sp,-64
    80020db4:	f822                	sd	s0,48(sp)
    80020db6:	fc06                	sd	ra,56(sp)
    80020db8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:51945
    val = js_thisBigDecimalValue(ctx, this_val);
    80020dba:	c84f80ef          	jal	ra,8001923e <js_thisBigDecimalValue>
quickjs-nuttx/quickjs.c:51946
    if (JS_IsException(val))
    80020dbe:	0005869b          	sext.w	a3,a1
    80020dc2:	4719                	li	a4,6
    80020dc4:	00e68a63          	beq	a3,a4,80020dd8 <js_bigdecimal_toString+0x26>
    80020dc8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:51948
    return JS_ToStringFree(ctx, val);
    80020dca:	85aa                	mv	a1,a0
    80020dcc:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:51949
}
    80020dce:	7442                	ld	s0,48(sp)
    80020dd0:	70e2                	ld	ra,56(sp)
    80020dd2:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:51948
    return JS_ToStringFree(ctx, val);
    80020dd4:	9b3ff06f          	j	80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:51949
}
    80020dd8:	70e2                	ld	ra,56(sp)
    80020dda:	7442                	ld	s0,48(sp)
    80020ddc:	6121                	addi	sp,sp,64
    80020dde:	8082                	ret

0000000080020de0 <check_regexp_g_flag>:
check_regexp_g_flag():
quickjs-nuttx/quickjs.c:41768
{
    80020de0:	7159                	addi	sp,sp,-112
    80020de2:	f0a2                	sd	s0,96(sp)
    80020de4:	f486                	sd	ra,104(sp)
    80020de6:	eca6                	sd	s1,88(sp)
    80020de8:	e8ca                	sd	s2,80(sp)
    80020dea:	e4ce                	sd	s3,72(sp)
    80020dec:	842a                	mv	s0,a0
    80020dee:	e02e                	sd	a1,0(sp)
    80020df0:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:41772
    ret = js_is_regexp(ctx, regexp);
    80020df2:	89ef60ef          	jal	ra,80016e90 <js_is_regexp>
quickjs-nuttx/quickjs.c:41773
    if (ret < 0)
    80020df6:	00055463          	bgez	a0,80020dfe <check_regexp_g_flag+0x1e>
quickjs-nuttx/quickjs.c:41790
            return -1;
    80020dfa:	557d                	li	a0,-1
    80020dfc:	a019                	j	80020e02 <check_regexp_g_flag+0x22>
quickjs-nuttx/quickjs.c:41775
    if (ret) {
    80020dfe:	e909                	bnez	a0,80020e10 <check_regexp_g_flag+0x30>
quickjs-nuttx/quickjs.c:41793
    return 0;
    80020e00:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:41794
}
    80020e02:	70a6                	ld	ra,104(sp)
    80020e04:	7406                	ld	s0,96(sp)
    80020e06:	64e6                	ld	s1,88(sp)
    80020e08:	6946                	ld	s2,80(sp)
    80020e0a:	69a6                	ld	s3,72(sp)
    80020e0c:	6165                	addi	sp,sp,112
    80020e0e:	8082                	ret
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80020e10:	67a2                	ld	a5,8(sp)
    80020e12:	6702                	ld	a4,0(sp)
    80020e14:	4801                	li	a6,0
    80020e16:	863e                	mv	a2,a5
    80020e18:	06e00693          	li	a3,110
    80020e1c:	85ba                	mv	a1,a4
    80020e1e:	8522                	mv	a0,s0
    80020e20:	c8bf50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
check_regexp_g_flag():
quickjs-nuttx/quickjs.c:41777
        if (JS_IsException(flags))
    80020e24:	0005879b          	sext.w	a5,a1
    80020e28:	4919                	li	s2,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80020e2a:	862e                	mv	a2,a1
check_regexp_g_flag():
quickjs-nuttx/quickjs.c:41777
    80020e2c:	fd2787e3          	beq	a5,s2,80020dfa <check_regexp_g_flag+0x1a>
quickjs-nuttx/quickjs.c:41779 (discriminator 1)
        if (JS_IsUndefined(flags) || JS_IsNull(flags)) {
    80020e30:	ffe5879b          	addiw	a5,a1,-2
    80020e34:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:41780 (discriminator 1)
            JS_ThrowTypeError(ctx, "cannot convert to object");
    80020e36:	0004a597          	auipc	a1,0x4a
    80020e3a:	bda58593          	addi	a1,a1,-1062 # 8006aa10 <qjsc_repl+0x5460>
quickjs-nuttx/quickjs.c:41779 (discriminator 1)
        if (JS_IsUndefined(flags) || JS_IsNull(flags)) {
    80020e3e:	02f77d63          	bgeu	a4,a5,80020e78 <check_regexp_g_flag+0x98>
quickjs-nuttx/quickjs.c:41783
        flags = JS_ToStringFree(ctx, flags);
    80020e42:	85aa                	mv	a1,a0
    80020e44:	8522                	mv	a0,s0
    80020e46:	941ff0ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:41784
        if (JS_IsException(flags))
    80020e4a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:41783
        flags = JS_ToStringFree(ctx, flags);
    80020e4e:	89aa                	mv	s3,a0
    80020e50:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:41784
        if (JS_IsException(flags))
    80020e52:	fb2784e3          	beq	a5,s2,80020dfa <check_regexp_g_flag+0x1a>
quickjs-nuttx/quickjs.c:41786
        ret = string_indexof_char(JS_VALUE_GET_STRING(flags), 'g', 0);
    80020e56:	4601                	li	a2,0
    80020e58:	06700593          	li	a1,103
    80020e5c:	b48e70ef          	jal	ra,800081a4 <string_indexof_char>
    80020e60:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:41787
        JS_FreeValue(ctx, flags);
    80020e62:	85ce                	mv	a1,s3
    80020e64:	8626                	mv	a2,s1
    80020e66:	8522                	mv	a0,s0
    80020e68:	937ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41788
        if (ret < 0) {
    80020e6c:	f8095ae3          	bgez	s2,80020e00 <check_regexp_g_flag+0x20>
quickjs-nuttx/quickjs.c:41789
            JS_ThrowTypeError(ctx, "regexp must have the 'g' flag");
    80020e70:	0004a597          	auipc	a1,0x4a
    80020e74:	bc058593          	addi	a1,a1,-1088 # 8006aa30 <qjsc_repl+0x5480>
    80020e78:	8522                	mv	a0,s0
    80020e7a:	ff2f70ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80020e7e:	bfb5                	j	80020dfa <check_regexp_g_flag+0x1a>

0000000080020e80 <JS_ToStringCheckObject>:
JS_ToStringCheckObject():
quickjs-nuttx/quickjs.c:11670
    if (tag == JS_TAG_NULL || tag == JS_TAG_UNDEFINED)
    80020e80:	ffe6079b          	addiw	a5,a2,-2
    80020e84:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:11668
{
    80020e86:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:11670
    if (tag == JS_TAG_NULL || tag == JS_TAG_UNDEFINED)
    80020e88:	00f76963          	bltu	a4,a5,80020e9a <JS_ToStringCheckObject+0x1a>
quickjs-nuttx/quickjs.c:11671
        return JS_ThrowTypeError(ctx, "null or undefined are forbidden");
    80020e8c:	0004a597          	auipc	a1,0x4a
    80020e90:	bc458593          	addi	a1,a1,-1084 # 8006aa50 <qjsc_repl+0x54a0>
quickjs-nuttx/quickjs.c:11673
}
    80020e94:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:11671
        return JS_ThrowTypeError(ctx, "null or undefined are forbidden");
    80020e96:	fd6f706f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:11673
}
    80020e9a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:11672
    return JS_ToString(ctx, val);
    80020e9c:	8e1ff06f          	j	8002077c <JS_ToString>

0000000080020ea0 <JS_ToQuotedString>:
JS_ToQuotedString():
quickjs-nuttx/quickjs.c:11676
{
    80020ea0:	7131                	addi	sp,sp,-192
    80020ea2:	f922                	sd	s0,176(sp)
    80020ea4:	f526                	sd	s1,168(sp)
    80020ea6:	fd06                	sd	ra,184(sp)
    80020ea8:	f14a                	sd	s2,160(sp)
    80020eaa:	ed4e                	sd	s3,152(sp)
    80020eac:	e952                	sd	s4,144(sp)
    80020eae:	e556                	sd	s5,136(sp)
    80020eb0:	e15a                	sd	s6,128(sp)
    80020eb2:	fcde                	sd	s7,120(sp)
    80020eb4:	84aa                	mv	s1,a0
    80020eb6:	e02e                	sd	a1,0(sp)
    80020eb8:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:11684
    val = JS_ToStringCheckObject(ctx, val1);
    80020eba:	fc7ff0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    80020ebe:	f02a                	sd	a0,32(sp)
    80020ec0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:11685
    if (JS_IsException(val))
    80020ec2:	0005871b          	sext.w	a4,a1
    80020ec6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:11684
    val = JS_ToStringCheckObject(ctx, val1);
    80020ec8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:11685
    if (JS_IsException(val))
    80020eca:	02f71163          	bne	a4,a5,80020eec <JS_ToQuotedString+0x4c>
quickjs-nuttx/quickjs.c:11686
        return val;
    80020ece:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:11735
    return string_buffer_end(b);
    80020ed0:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:11740
}
    80020ed2:	70ea                	ld	ra,184(sp)
    80020ed4:	744a                	ld	s0,176(sp)
    80020ed6:	6506                	ld	a0,64(sp)
    80020ed8:	65a6                	ld	a1,72(sp)
    80020eda:	74aa                	ld	s1,168(sp)
    80020edc:	790a                	ld	s2,160(sp)
    80020ede:	69ea                	ld	s3,152(sp)
    80020ee0:	6a4a                	ld	s4,144(sp)
    80020ee2:	6aaa                	ld	s5,136(sp)
    80020ee4:	6b0a                	ld	s6,128(sp)
    80020ee6:	7be6                	ld	s7,120(sp)
    80020ee8:	6129                	addi	sp,sp,192
    80020eea:	8082                	ret
quickjs-nuttx/quickjs.c:11689
    if (string_buffer_init(ctx, b, p->len + 2))
    80020eec:	4150                	lw	a2,4(a0)
    80020eee:	80000937          	lui	s2,0x80000
    80020ef2:	fff94913          	not	s2,s2
    80020ef6:	01267633          	and	a2,a2,s2
    80020efa:	2609                	addiw	a2,a2,2
    80020efc:	088c                	addi	a1,sp,80
    80020efe:	8526                	mv	a0,s1
    80020f00:	87cfd0ef          	jal	ra,8001df7c <string_buffer_init>
    80020f04:	ed51                	bnez	a0,80020fa0 <JS_ToQuotedString+0x100>
quickjs-nuttx/quickjs.c:11692
    if (string_buffer_putc8(b, '\"'))
    80020f06:	02200593          	li	a1,34
    80020f0a:	0888                	addi	a0,sp,80
    80020f0c:	d55fd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
    80020f10:	e941                	bnez	a0,80020fa0 <JS_ToQuotedString+0x100>
quickjs-nuttx/quickjs.c:11721
            if (c < 32 || (c >= 0xd800 && c < 0xe000)) {
    80020f12:	79cd                	lui	s3,0xffff3
quickjs-nuttx/quickjs.c:11694
    for(i = 0; i < p->len; ) {
    80020f14:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs.c:11696
        switch(c) {
    80020f16:	4ab5                	li	s5,13
quickjs-nuttx/quickjs.c:11721
            if (c < 32 || (c >= 0xd800 && c < 0xe000)) {
    80020f18:	4b7d                	li	s6,31
    80020f1a:	8009899b          	addiw	s3,s3,-2048
    80020f1e:	0004aa17          	auipc	s4,0x4a
    80020f22:	b5aa0a13          	addi	s4,s4,-1190 # 8006aa78 <qjsc_repl+0x54c8>
quickjs-nuttx/quickjs.c:11694 (discriminator 1)
    for(i = 0; i < p->len; ) {
    80020f26:	405c                	lw	a5,4(s0)
    80020f28:	4772                	lw	a4,28(sp)
    80020f2a:	00f977b3          	and	a5,s2,a5
    80020f2e:	02f74263          	blt	a4,a5,80020f52 <JS_ToQuotedString+0xb2>
quickjs-nuttx/quickjs.c:11732
    if (string_buffer_putc8(b, '\"'))
    80020f32:	02200593          	li	a1,34
    80020f36:	0888                	addi	a0,sp,80
    80020f38:	d29fd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
    80020f3c:	e135                	bnez	a0,80020fa0 <JS_ToQuotedString+0x100>
quickjs-nuttx/quickjs.c:11734
    JS_FreeValue(ctx, val);
    80020f3e:	7582                	ld	a1,32(sp)
    80020f40:	7622                	ld	a2,40(sp)
    80020f42:	8526                	mv	a0,s1
    80020f44:	85bea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11735
    return string_buffer_end(b);
    80020f48:	0888                	addi	a0,sp,80
    80020f4a:	d57fe0ef          	jal	ra,8001fca0 <string_buffer_end>
    80020f4e:	e0aa                	sd	a0,64(sp)
    80020f50:	b741                	j	80020ed0 <JS_ToQuotedString+0x30>
quickjs-nuttx/quickjs.c:11695
        c = string_getc(p, &i);
    80020f52:	086c                	addi	a1,sp,28
    80020f54:	8522                	mv	a0,s0
    80020f56:	d29e60ef          	jal	ra,80007c7e <string_getc>
    80020f5a:	0005069b          	sext.w	a3,a0
quickjs-nuttx/quickjs.c:11696
        switch(c) {
    80020f5e:	04aacd63          	blt	s5,a0,80020fb8 <JS_ToQuotedString+0x118>
    80020f62:	479d                	li	a5,7
    80020f64:	06a7d263          	bge	a5,a0,80020fc8 <JS_ToQuotedString+0x128>
    80020f68:	ff85079b          	addiw	a5,a0,-8
    80020f6c:	0007861b          	sext.w	a2,a5
    80020f70:	4715                	li	a4,5
    80020f72:	04c76b63          	bltu	a4,a2,80020fc8 <JS_ToQuotedString+0x128>
    80020f76:	02079713          	slli	a4,a5,0x20
    80020f7a:	01e75793          	srli	a5,a4,0x1e
    80020f7e:	97d2                	add	a5,a5,s4
    80020f80:	439c                	lw	a5,0(a5)
    80020f82:	97d2                	add	a5,a5,s4
    80020f84:	8782                	jr	a5
quickjs-nuttx/quickjs.c:11701
            c = 'r';
    80020f86:	07200b93          	li	s7,114
quickjs-nuttx/quickjs.c:11715
            if (string_buffer_putc8(b, '\\'))
    80020f8a:	05c00593          	li	a1,92
    80020f8e:	0888                	addi	a0,sp,80
    80020f90:	cd1fd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
    80020f94:	e511                	bnez	a0,80020fa0 <JS_ToQuotedString+0x100>
quickjs-nuttx/quickjs.c:11717
            if (string_buffer_putc8(b, c))
    80020f96:	85de                	mv	a1,s7
    80020f98:	0888                	addi	a0,sp,80
    80020f9a:	cc7fd0ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:11726
                if (string_buffer_putc(b, c))
    80020f9e:	d541                	beqz	a0,80020f26 <JS_ToQuotedString+0x86>
quickjs-nuttx/quickjs.c:11737
    JS_FreeValue(ctx, val);
    80020fa0:	7582                	ld	a1,32(sp)
    80020fa2:	7622                	ld	a2,40(sp)
    80020fa4:	8526                	mv	a0,s1
    80020fa6:	ff8ea0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11738
    string_buffer_free(b);
    80020faa:	0888                	addi	a0,sp,80
    80020fac:	876ea0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:11739
    return JS_EXCEPTION;
    80020fb0:	4799                	li	a5,6
    80020fb2:	e082                	sd	zero,64(sp)
    80020fb4:	e4be                	sd	a5,72(sp)
    80020fb6:	bf31                	j	80020ed2 <JS_ToQuotedString+0x32>
quickjs-nuttx/quickjs.c:11696
        switch(c) {
    80020fb8:	02200793          	li	a5,34
    80020fbc:	04f50763          	beq	a0,a5,8002100a <JS_ToQuotedString+0x16a>
    80020fc0:	05c00b93          	li	s7,92
    80020fc4:	fd7503e3          	beq	a0,s7,80020f8a <JS_ToQuotedString+0xea>
quickjs-nuttx/quickjs.c:11721
            if (c < 32 || (c >= 0xd800 && c < 0xe000)) {
    80020fc8:	00db7863          	bgeu	s6,a3,80020fd8 <JS_ToQuotedString+0x138>
quickjs-nuttx/quickjs.c:11721 (discriminator 1)
    80020fcc:	00d987bb          	addw	a5,s3,a3
    80020fd0:	7ff00713          	li	a4,2047
    80020fd4:	02f76e63          	bltu	a4,a5,80021010 <JS_ToQuotedString+0x170>
quickjs-nuttx/quickjs.c:11722
                snprintf(buf, sizeof(buf), "\\u%04x", c);
    80020fd8:	0004a617          	auipc	a2,0x4a
    80020fdc:	a9860613          	addi	a2,a2,-1384 # 8006aa70 <qjsc_repl+0x54c0>
    80020fe0:	45c1                	li	a1,16
    80020fe2:	1808                	addi	a0,sp,48
    80020fe4:	25c400ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:11723
                if (string_buffer_puts8(b, buf))
    80020fe8:	180c                	addi	a1,sp,48
    80020fea:	0888                	addi	a0,sp,80
    80020fec:	bdbfd0ef          	jal	ra,8001ebc6 <string_buffer_puts8>
    80020ff0:	b77d                	j	80020f9e <JS_ToQuotedString+0xfe>
quickjs-nuttx/quickjs.c:11704
            c = 'n';
    80020ff2:	06e00b93          	li	s7,110
quickjs-nuttx/quickjs.c:11705
            goto quote;
    80020ff6:	bf51                	j	80020f8a <JS_ToQuotedString+0xea>
quickjs-nuttx/quickjs.c:11707
            c = 'b';
    80020ff8:	06200b93          	li	s7,98
quickjs-nuttx/quickjs.c:11708
            goto quote;
    80020ffc:	b779                	j	80020f8a <JS_ToQuotedString+0xea>
quickjs-nuttx/quickjs.c:11710
            c = 'f';
    80020ffe:	06600b93          	li	s7,102
quickjs-nuttx/quickjs.c:11711
            goto quote;
