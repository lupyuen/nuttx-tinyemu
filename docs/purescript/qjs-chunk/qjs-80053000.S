    80052000:	77a2                	ld	a5,40(sp)
    80052002:	66a2                	ld	a3,8(sp)
quickjs-nuttx/cutils.c:584
            span = plt - ptr;
    80052004:	412b0733          	sub	a4,s6,s2
quickjs-nuttx/cutils.c:585
            span2 = pi - plt;
    80052008:	416d8633          	sub	a2,s11,s6
quickjs-nuttx/cutils.c:586
            lt = i - lt;
    8005200c:	40d78d33          	sub	s10,a5,a3
quickjs-nuttx/cutils.c:587
            if (span > span2)
    80052010:	00c77363          	bgeu	a4,a2,80052016 <rqsort+0x2c6>
    80052014:	863a                	mv	a2,a4
quickjs-nuttx/cutils.c:589
            swap_block(ptr, pi - span, span);
    80052016:	77c2                	ld	a5,48(sp)
    80052018:	40cd85b3          	sub	a1,s11,a2
    8005201c:	854a                	mv	a0,s2
    8005201e:	9782                	jalr	a5
quickjs-nuttx/cutils.c:594
            span2 = pgt - pi;
    80052020:	41bb8733          	sub	a4,s7,s11
quickjs-nuttx/cutils.c:595
            pgt = top - span2;
    80052024:	417c0633          	sub	a2,s8,s7
    80052028:	40ec0b33          	sub	s6,s8,a4
quickjs-nuttx/cutils.c:597
            if (span > span2)
    8005202c:	00c77363          	bgeu	a4,a2,80052032 <rqsort+0x2e2>
    80052030:	863a                	mv	a2,a4
quickjs-nuttx/cutils.c:599
            swap_block(pi, top - span, span);
    80052032:	77c2                	ld	a5,48(sp)
    80052034:	40cc05b3          	sub	a1,s8,a2
    80052038:	856e                	mv	a0,s11
    8005203a:	9782                	jalr	a5
quickjs-nuttx/cutils.c:608
            if (lt > nmemb - gt) {
    8005203c:	77a2                	ld	a5,40(sp)
quickjs-nuttx/cutils.c:612
                sp++;
    8005203e:	09e1                	addi	s3,s3,24
quickjs-nuttx/cutils.c:608
            if (lt > nmemb - gt) {
    80052040:	8c9d                	sub	s1,s1,a5
    80052042:	f9a4e3e3          	bltu	s1,s10,80051fc8 <rqsort+0x278>
quickjs-nuttx/cutils.c:618
                sp->depth = depth;
    80052046:	5792                	lw	a5,36(sp)
quickjs-nuttx/cutils.c:616
                sp->base = pgt;
    80052048:	ff69b423          	sd	s6,-24(s3)
quickjs-nuttx/cutils.c:617
                sp->count = nmemb - gt;
    8005204c:	fe99b823          	sd	s1,-16(s3)
quickjs-nuttx/cutils.c:618
                sp->depth = depth;
    80052050:	fef9ac23          	sw	a5,-8(s3)
    80052054:	8b4a                	mv	s6,s2
    80052056:	84ea                	mv	s1,s10
    80052058:	bfbd                	j	80051fd6 <rqsort+0x286>
    8005205a:	8082                	ret

000000008005205c <list_del>:
list_del():
quickjs-nuttx/list.h:72
    prev = el->prev;
    8005205c:	6118                	ld	a4,0(a0)
quickjs-nuttx/list.h:73
    next = el->next;
    8005205e:	651c                	ld	a5,8(a0)
quickjs-nuttx/list.h:74
    prev->next = next;
    80052060:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:75
    next->prev = prev;
    80052062:	e398                	sd	a4,0(a5)
quickjs-nuttx/list.h:76
    el->prev = NULL; /* fail safe */
    80052064:	00053023          	sd	zero,0(a0)
quickjs-nuttx/list.h:77
    el->next = NULL; /* fail safe */
    80052068:	00053423          	sd	zero,8(a0)
quickjs-nuttx/list.h:78
}
    8005206c:	8082                	ret

000000008005206e <interrupt_handler>:
interrupt_handler():
quickjs-nuttx/quickjs-libc.c:727
    return JS_UNDEFINED;
}

static int interrupt_handler(JSRuntime *rt, void *opaque)
{
    return (os_pending_signals >> SIGINT) & 1;
    8005206e:	000af517          	auipc	a0,0xaf
    80052072:	0da53503          	ld	a0,218(a0) # 80101148 <os_pending_signals>
    80052076:	8109                	srli	a0,a0,0x2
quickjs-nuttx/quickjs-libc.c:728
}
    80052078:	8905                	andi	a0,a0,1
    8005207a:	8082                	ret

000000008005207c <os_signal_handler>:
os_signal_handler():
quickjs-nuttx/quickjs-libc.c:1944
    js_free_rt(rt, sh);
}

static void os_signal_handler(int sig_num)
{
    os_pending_signals |= ((uint64_t)1 << sig_num);
    8005207c:	000af717          	auipc	a4,0xaf
    80052080:	0cc70713          	addi	a4,a4,204 # 80101148 <os_pending_signals>
    80052084:	4785                	li	a5,1
    80052086:	00a797b3          	sll	a5,a5,a0
    8005208a:	6308                	ld	a0,0(a4)
    8005208c:	8fc9                	or	a5,a5,a0
    8005208e:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs-libc.c:1945
}
    80052090:	8082                	ret

0000000080052092 <js_sab_alloc>:
js_sab_alloc():
quickjs-nuttx/quickjs-libc.c:3224
    return atomic_fetch_add((_Atomic(uint32_t) *)ptr, v) + v;
}

/* shared array buffer allocator */
static void *js_sab_alloc(void *opaque, size_t size)
{
    80052092:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs-libc.c:3226
    JSSABHeader *sab;
    sab = malloc(sizeof(JSSABHeader) + size);
    80052094:	00858513          	addi	a0,a1,8
quickjs-nuttx/quickjs-libc.c:3224
{
    80052098:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs-libc.c:3226
    sab = malloc(sizeof(JSSABHeader) + size);
    8005209a:	4290d0ef          	jal	ra,8005fcc2 <malloc>
quickjs-nuttx/quickjs-libc.c:3227
    if (!sab)
    8005209e:	c501                	beqz	a0,800520a6 <js_sab_alloc+0x14>
quickjs-nuttx/quickjs-libc.c:3229
        return NULL;
    sab->ref_count = 1;
    800520a0:	4785                	li	a5,1
    800520a2:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs-libc.c:3230
    return sab->buf;
    800520a4:	0521                	addi	a0,a0,8
quickjs-nuttx/quickjs-libc.c:3231
}
    800520a6:	60a2                	ld	ra,8(sp)
    800520a8:	0141                	addi	sp,sp,16
    800520aa:	8082                	ret

00000000800520ac <JS_FreeValue>:
JS_FreeValue():
quickjs-nuttx/quickjs.h:647
{
    800520ac:	1141                	addi	sp,sp,-16
    800520ae:	e02e                	sd	a1,0(sp)
    800520b0:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.h:648
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    800520b2:	0006079b          	sext.w	a5,a2
    800520b6:	5751                	li	a4,-12
    800520b8:	00f77b63          	bgeu	a4,a5,800520ce <JS_FreeValue+0x22>
quickjs-nuttx/quickjs.h:650
        if (--p->ref_count <= 0) {
    800520bc:	4198                	lw	a4,0(a1)
    800520be:	fff7069b          	addiw	a3,a4,-1
    800520c2:	c194                	sw	a3,0(a1)
    800520c4:	00d04563          	bgtz	a3,800520ce <JS_FreeValue+0x22>
quickjs-nuttx/quickjs.h:654
}
    800520c8:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.h:651
            __JS_FreeValue(ctx, v);
    800520ca:	ecab906f          	j	8000b794 <__JS_FreeValue>
quickjs-nuttx/quickjs.h:654
}
    800520ce:	0141                	addi	sp,sp,16
    800520d0:	8082                	ret

00000000800520d2 <js_std_dbuf_init>:
js_std_dbuf_init():
quickjs-nuttx/quickjs-libc.c:137
{
    800520d2:	1141                	addi	sp,sp,-16
    800520d4:	e022                	sd	s0,0(sp)
    800520d6:	e406                	sd	ra,8(sp)
    800520d8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs-libc.c:138
    dbuf_init2(s, JS_GetRuntime(ctx), (DynBufReallocFunc *)js_realloc_rt);
    800520da:	802b90ef          	jal	ra,8000b0dc <JS_GetRuntime>
    800520de:	85aa                	mv	a1,a0
    800520e0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:139
}
    800520e2:	6402                	ld	s0,0(sp)
    800520e4:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs-libc.c:138
    dbuf_init2(s, JS_GetRuntime(ctx), (DynBufReallocFunc *)js_realloc_rt);
    800520e6:	fffb6617          	auipc	a2,0xfffb6
    800520ea:	a7460613          	addi	a2,a2,-1420 # 80007b5a <js_realloc_rt>
quickjs-nuttx/quickjs-libc.c:139
}
    800520ee:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs-libc.c:138
    dbuf_init2(s, JS_GetRuntime(ctx), (DynBufReallocFunc *)js_realloc_rt);
    800520f0:	881ff06f          	j	80051970 <dbuf_init2>

00000000800520f4 <JS_ToCString>:
JS_ToCString():
quickjs-nuttx/quickjs.h:709
{
    800520f4:	1141                	addi	sp,sp,-16
    800520f6:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.h:710
    return JS_ToCStringLen2(ctx, NULL, val1, 0);
    800520f8:	862e                	mv	a2,a1
    800520fa:	4701                	li	a4,0
    800520fc:	4581                	li	a1,0
quickjs-nuttx/quickjs.h:711
}
    800520fe:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.h:710
    return JS_ToCStringLen2(ctx, NULL, val1, 0);
    80052100:	d7dcf06f          	j	80021e7c <JS_ToCStringLen2>

0000000080052104 <js_printf_internal>:
js_printf_internal():
quickjs-nuttx/quickjs-libc.c:148
{
    80052104:	7129                	addi	sp,sp,-320
    80052106:	f626                	sd	s1,296(sp)
quickjs-nuttx/quickjs-libc.c:166
    js_std_dbuf_init(ctx, &dbuf);
    80052108:	1104                	addi	s1,sp,160
quickjs-nuttx/quickjs-libc.c:148
{
    8005210a:	ee4e                	sd	s3,280(sp)
    8005210c:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs-libc.c:166
    js_std_dbuf_init(ctx, &dbuf);
    8005210e:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs-libc.c:148
{
    80052110:	fa22                	sd	s0,304(sp)
    80052112:	f24a                	sd	s2,288(sp)
    80052114:	fe06                	sd	ra,312(sp)
    80052116:	ea52                	sd	s4,272(sp)
    80052118:	e656                	sd	s5,264(sp)
    8005211a:	e25a                	sd	s6,256(sp)
    8005211c:	fdde                	sd	s7,248(sp)
    8005211e:	f9e2                	sd	s8,240(sp)
    80052120:	f5e6                	sd	s9,232(sp)
    80052122:	f1ea                	sd	s10,224(sp)
    80052124:	edee                	sd	s11,216(sp)
    80052126:	842a                	mv	s0,a0
    80052128:	8932                	mv	s2,a2
    8005212a:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs-libc.c:166
    js_std_dbuf_init(ctx, &dbuf);
    8005212c:	fa7ff0ef          	jal	ra,800520d2 <js_std_dbuf_init>
quickjs-nuttx/quickjs-libc.c:168
    if (argc > 0) {
    80052130:	07305663          	blez	s3,8005219c <js_printf_internal+0x98>
quickjs-nuttx/quickjs-libc.c:169
        fmt_str = JS_ToCStringLen(ctx, &fmt_len, argv[0]);
    80052134:	00093603          	ld	a2,0(s2)
    80052138:	00893683          	ld	a3,8(s2)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    8005213c:	4701                	li	a4,0
    8005213e:	182c                	addi	a1,sp,56
    80052140:	8522                	mv	a0,s0
    80052142:	e132                	sd	a2,128(sp)
    80052144:	e536                	sd	a3,136(sp)
    80052146:	d37cf0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    8005214a:	8a2a                	mv	s4,a0
js_printf_internal():
quickjs-nuttx/quickjs-libc.c:170
        if (!fmt_str)
    8005214c:	28050763          	beqz	a0,800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:175
        fmt_end = fmt + fmt_len;
    80052150:	7b62                	ld	s6,56(sp)
quickjs-nuttx/quickjs-libc.c:188
                if (c == '0' || c == '#' || c == '+' || c == '-' || c == ' ' ||
    80052152:	12889d37          	lui	s10,0x12889
    80052156:	014d1793          	slli	a5,s10,0x14
quickjs-nuttx/quickjs-libc.c:262
                    int32_arg = 0xFFFD;
    8005215a:	6dc1                	lui	s11,0x10
quickjs-nuttx/quickjs-libc.c:175
        fmt_end = fmt + fmt_len;
    8005215c:	9b2a                	add	s6,s6,a0
quickjs-nuttx/quickjs-libc.c:176
        while (fmt < fmt_end) {
    8005215e:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs-libc.c:173
        i = 1;
    80052160:	4c05                	li	s8,1
quickjs-nuttx/quickjs-libc.c:188
                if (c == '0' || c == '#' || c == '+' || c == '-' || c == ' ' ||
    80052162:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:208
                    if (q >= fmtbuf + sizeof(fmtbuf) - 1)
    80052164:	09f10c93          	addi	s9,sp,159
quickjs-nuttx/quickjs-libc.c:262
                    int32_arg = 0xFFFD;
    80052168:	1df5                	addi	s11,s11,-3
quickjs-nuttx/quickjs-libc.c:176
        while (fmt < fmt_end) {
    8005216a:	036af563          	bgeu	s5,s6,80052194 <js_printf_internal+0x90>
quickjs-nuttx/quickjs-libc.c:177
            for (p = fmt; fmt < fmt_end && *fmt != '%'; fmt++)
    8005216e:	f856                	sd	s5,48(sp)
    80052170:	8d56                	mv	s10,s5
    80052172:	02500693          	li	a3,37
quickjs-nuttx/quickjs-libc.c:177 (discriminator 3)
    80052176:	000d4603          	lbu	a2,0(s10) # 12889000 <asinh-0x6d777000>
    8005217a:	00d60563          	beq	a2,a3,80052184 <js_printf_internal+0x80>
quickjs-nuttx/quickjs-libc.c:177
    8005217e:	0d05                	addi	s10,s10,1
    80052180:	ffab1be3          	bne	s6,s10,80052176 <js_printf_internal+0x72>
quickjs-nuttx/quickjs-libc.c:179
            dbuf_put(&dbuf, p, fmt - p);
    80052184:	415d0633          	sub	a2,s10,s5
    80052188:	85d6                	mv	a1,s5
    8005218a:	8526                	mv	a0,s1
    8005218c:	8c5ff0ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs-libc.c:180
            if (fmt >= fmt_end)
    80052190:	036d6163          	bltu	s10,s6,800521b2 <js_printf_internal+0xae>
quickjs-nuttx/quickjs-libc.c:342
        JS_FreeCString(ctx, fmt_str);
    80052194:	85d2                	mv	a1,s4
    80052196:	8522                	mv	a0,s0
    80052198:	9a7ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:344
    if (dbuf.error) {
    8005219c:	57ea                	lw	a5,184(sp)
    8005219e:	30078463          	beqz	a5,800524a6 <js_printf_internal+0x3a2>
quickjs-nuttx/quickjs-libc.c:345
        res = JS_ThrowOutOfMemory(ctx);
    800521a2:	8522                	mv	a0,s0
    800521a4:	f31c70ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs-libc.c:351
            res = JS_NewStringLen(ctx, (char *)dbuf.buf, dbuf.size);
    800521a8:	e8aa                	sd	a0,80(sp)
    800521aa:	0005041b          	sext.w	s0,a0
    800521ae:	892e                	mv	s2,a1
    800521b0:	ae11                	j	800524c4 <js_printf_internal+0x3c0>
quickjs-nuttx/quickjs-libc.c:183
            *q++ = *fmt++;  /* copy '%' */
    800521b2:	000d4683          	lbu	a3,0(s10)
    800521b6:	001d0b93          	addi	s7,s10,1
quickjs-nuttx/quickjs-libc.c:188
                if (c == '0' || c == '#' || c == '+' || c == '-' || c == ' ' ||
    800521ba:	03000513          	li	a0,48
quickjs-nuttx/quickjs-libc.c:183
            *q++ = *fmt++;  /* copy '%' */
    800521be:	08d10023          	sb	a3,128(sp)
    800521c2:	01fd0693          	addi	a3,s10,31
    800521c6:	08110d13          	addi	s10,sp,129
quickjs-nuttx/quickjs-libc.c:187
                c = *fmt;
    800521ca:	000bc603          	lbu	a2,0(s7) # 1000 <asinh-0x7ffff000>
quickjs-nuttx/quickjs-libc.c:188
                if (c == '0' || c == '#' || c == '+' || c == '-' || c == ' ' ||
    800521ce:	0ac56d63          	bltu	a0,a2,80052288 <js_printf_internal+0x184>
quickjs-nuttx/quickjs-libc.c:188 (discriminator 4)
    800521d2:	67e2                	ld	a5,24(sp)
    800521d4:	00c7d5b3          	srl	a1,a5,a2
    800521d8:	8985                	andi	a1,a1,1
    800521da:	c981                	beqz	a1,800521ea <js_printf_internal+0xe6>
quickjs-nuttx/quickjs-libc.c:190
                    if (q >= fmtbuf + sizeof(fmtbuf) - 1)
    800521dc:	2b768563          	beq	a3,s7,80052486 <js_printf_internal+0x382>
quickjs-nuttx/quickjs-libc.c:192
                    *q++ = c;
    800521e0:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs-libc.c:193
                    fmt++;
    800521e2:	0b85                	addi	s7,s7,1
quickjs-nuttx/quickjs-libc.c:192
                    *q++ = c;
    800521e4:	fecd0fa3          	sb	a2,-1(s10)
quickjs-nuttx/quickjs-libc.c:187
                c = *fmt;
    800521e8:	b7cd                	j	800521ca <js_printf_internal+0xc6>
quickjs-nuttx/quickjs-libc.c:199
            if (*fmt == '*') {
    800521ea:	02a00693          	li	a3,42
    800521ee:	08d61d63          	bne	a2,a3,80052288 <js_printf_internal+0x184>
quickjs-nuttx/quickjs-libc.c:200
                if (i >= argc)
    800521f2:	2b3c5263          	bge	s8,s3,80052496 <js_printf_internal+0x392>
quickjs-nuttx/quickjs-libc.c:202
                if (JS_ToInt32(ctx, &int32_arg, argv[i++]))
    800521f6:	004c1793          	slli	a5,s8,0x4
    800521fa:	97ca                	add	a5,a5,s2
    800521fc:	6390                	ld	a2,0(a5)
    800521fe:	6794                	ld	a3,8(a5)
    80052200:	104c                	addi	a1,sp,36
    80052202:	8522                	mv	a0,s0
    80052204:	001c0a9b          	addiw	s5,s8,1
    80052208:	9b2d00ef          	jal	ra,800223ba <JS_ToInt32>
    8005220c:	1c051763          	bnez	a0,800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:204
                q += snprintf(q, fmtbuf + sizeof(fmtbuf) - q, "%d", int32_arg);
    80052210:	5692                	lw	a3,36(sp)
    80052212:	41a485b3          	sub	a1,s1,s10
    80052216:	856a                	mv	a0,s10
    80052218:	00018617          	auipc	a2,0x18
    8005221c:	74060613          	addi	a2,a2,1856 # 8006a958 <qjsc_repl+0x53a8>
    80052220:	0200f0ef          	jal	ra,80061240 <snprintf>
    80052224:	9d2a                	add	s10,s10,a0
quickjs-nuttx/quickjs-libc.c:205
                fmt++;
    80052226:	0b85                	addi	s7,s7,1
quickjs-nuttx/quickjs-libc.c:202
                if (JS_ToInt32(ctx, &int32_arg, argv[i++]))
    80052228:	8c56                	mv	s8,s5
quickjs-nuttx/quickjs-libc.c:213
            if (*fmt == '.') {
    8005222a:	000bc683          	lbu	a3,0(s7)
    8005222e:	02e00613          	li	a2,46
    80052232:	08c69b63          	bne	a3,a2,800522c8 <js_printf_internal+0x1c4>
quickjs-nuttx/quickjs-libc.c:214
                if (q >= fmtbuf + sizeof(fmtbuf) - 1)
    80052236:	259d7863          	bgeu	s10,s9,80052486 <js_printf_internal+0x382>
quickjs-nuttx/quickjs-libc.c:216
                *q++ = *fmt++;
    8005223a:	00dd0023          	sb	a3,0(s10)
quickjs-nuttx/quickjs-libc.c:217
                if (*fmt == '*') {
    8005223e:	001bc683          	lbu	a3,1(s7)
    80052242:	02a00713          	li	a4,42
quickjs-nuttx/quickjs-libc.c:216
                *q++ = *fmt++;
    80052246:	001d0a93          	addi	s5,s10,1
quickjs-nuttx/quickjs-libc.c:217
                if (*fmt == '*') {
    8005224a:	04e68163          	beq	a3,a4,8005228c <js_printf_internal+0x188>
quickjs-nuttx/quickjs-libc.c:216
                *q++ = *fmt++;
    8005224e:	0b85                	addi	s7,s7,1
    80052250:	8d56                	mv	s10,s5
quickjs-nuttx/quickjs-libc.c:225
                    while (my_isdigit(*fmt)) {
    80052252:	4625                	li	a2,9
    80052254:	000bc683          	lbu	a3,0(s7)
    80052258:	fd06859b          	addiw	a1,a3,-48
    8005225c:	06b66663          	bltu	a2,a1,800522c8 <js_printf_internal+0x1c4>
quickjs-nuttx/quickjs-libc.c:226
                        if (q >= fmtbuf + sizeof(fmtbuf) - 1)
    80052260:	239d7363          	bgeu	s10,s9,80052486 <js_printf_internal+0x382>
quickjs-nuttx/quickjs-libc.c:228
                        *q++ = *fmt++;
    80052264:	0d05                	addi	s10,s10,1
    80052266:	0b85                	addi	s7,s7,1
    80052268:	fedd0fa3          	sb	a3,-1(s10)
    8005226c:	b7e5                	j	80052254 <js_printf_internal+0x150>
quickjs-nuttx/quickjs-libc.c:208
                    if (q >= fmtbuf + sizeof(fmtbuf) - 1)
    8005226e:	219d7c63          	bgeu	s10,s9,80052486 <js_printf_internal+0x382>
quickjs-nuttx/quickjs-libc.c:210
                    *q++ = *fmt++;
    80052272:	0d05                	addi	s10,s10,1
    80052274:	0b85                	addi	s7,s7,1
    80052276:	fedd0fa3          	sb	a3,-1(s10)
quickjs-nuttx/quickjs-libc.c:207
                while (my_isdigit(*fmt)) {
    8005227a:	000bc683          	lbu	a3,0(s7)
    8005227e:	fd06859b          	addiw	a1,a3,-48
    80052282:	feb676e3          	bgeu	a2,a1,8005226e <js_printf_internal+0x16a>
    80052286:	b755                	j	8005222a <js_printf_internal+0x126>
    80052288:	4625                	li	a2,9
    8005228a:	bfc5                	j	8005227a <js_printf_internal+0x176>
quickjs-nuttx/quickjs-libc.c:218
                    if (i >= argc)
    8005228c:	213c5563          	bge	s8,s3,80052496 <js_printf_internal+0x392>
quickjs-nuttx/quickjs-libc.c:220
                    if (JS_ToInt32(ctx, &int32_arg, argv[i++]))
    80052290:	001c079b          	addiw	a5,s8,1
    80052294:	e83e                	sd	a5,16(sp)
    80052296:	004c1793          	slli	a5,s8,0x4
    8005229a:	97ca                	add	a5,a5,s2
    8005229c:	6390                	ld	a2,0(a5)
    8005229e:	6794                	ld	a3,8(a5)
    800522a0:	104c                	addi	a1,sp,36
    800522a2:	8522                	mv	a0,s0
    800522a4:	916d00ef          	jal	ra,800223ba <JS_ToInt32>
    800522a8:	12051963          	bnez	a0,800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:222
                    q += snprintf(q, fmtbuf + sizeof(fmtbuf) - q, "%d", int32_arg);
    800522ac:	5692                	lw	a3,36(sp)
    800522ae:	00018617          	auipc	a2,0x18
    800522b2:	6aa60613          	addi	a2,a2,1706 # 8006a958 <qjsc_repl+0x53a8>
    800522b6:	415485b3          	sub	a1,s1,s5
    800522ba:	8556                	mv	a0,s5
    800522bc:	7850e0ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs-libc.c:220
                    if (JS_ToInt32(ctx, &int32_arg, argv[i++]))
    800522c0:	6c42                	ld	s8,16(sp)
quickjs-nuttx/quickjs-libc.c:222
                    q += snprintf(q, fmtbuf + sizeof(fmtbuf) - q, "%d", int32_arg);
    800522c2:	00aa8d33          	add	s10,s5,a0
quickjs-nuttx/quickjs-libc.c:223
                    fmt++;
    800522c6:	0b89                	addi	s7,s7,2
quickjs-nuttx/quickjs-libc.c:235
            if (*fmt == 'l') {
    800522c8:	000bc603          	lbu	a2,0(s7)
    800522cc:	06c00693          	li	a3,108
quickjs-nuttx/quickjs-libc.c:234
            mod = ' ';
    800522d0:	02000813          	li	a6,32
quickjs-nuttx/quickjs-libc.c:235
            if (*fmt == 'l') {
    800522d4:	00d61563          	bne	a2,a3,800522de <js_printf_internal+0x1da>
quickjs-nuttx/quickjs-libc.c:236
                mod = *fmt++;
    800522d8:	0b85                	addi	s7,s7,1
    800522da:	06c00813          	li	a6,108
quickjs-nuttx/quickjs-libc.c:240
            c = *fmt++;
    800522de:	000bc683          	lbu	a3,0(s7)
    800522e2:	001b8a93          	addi	s5,s7,1
quickjs-nuttx/quickjs-libc.c:241
            if (q >= fmtbuf + sizeof(fmtbuf) - 1)
    800522e6:	1b9d7063          	bgeu	s10,s9,80052486 <js_printf_internal+0x382>
quickjs-nuttx/quickjs-libc.c:243
            *q++ = c;
    800522ea:	00dd0023          	sb	a3,0(s10)
quickjs-nuttx/quickjs-libc.c:244
            *q = '\0';
    800522ee:	000d00a3          	sb	zero,1(s10)
quickjs-nuttx/quickjs-libc.c:246
            switch (c) {
    800522f2:	07800613          	li	a2,120
    800522f6:	18d66863          	bltu	a2,a3,80052486 <js_printf_internal+0x382>
    800522fa:	05700613          	li	a2,87
    800522fe:	04d66963          	bltu	a2,a3,80052350 <js_printf_internal+0x24c>
    80052302:	02500713          	li	a4,37
    80052306:	16e68963          	beq	a3,a4,80052478 <js_printf_internal+0x374>
    8005230a:	02400713          	li	a4,36
    8005230e:	16d77c63          	bgeu	a4,a3,80052486 <js_printf_internal+0x382>
    80052312:	04100713          	li	a4,65
    80052316:	00e68963          	beq	a3,a4,80052328 <js_printf_internal+0x224>
    8005231a:	fbb6869b          	addiw	a3,a3,-69
    8005231e:	0ff6f693          	zext.b	a3,a3
    80052322:	4709                	li	a4,2
    80052324:	16d76163          	bltu	a4,a3,80052486 <js_printf_internal+0x382>
quickjs-nuttx/quickjs-libc.c:321
                if (i >= argc)
    80052328:	173c5763          	bge	s8,s3,80052496 <js_printf_internal+0x392>
quickjs-nuttx/quickjs-libc.c:323
                if (JS_ToFloat64(ctx, &double_arg, argv[i++]))
    8005232c:	004c1793          	slli	a5,s8,0x4
    80052330:	97ca                	add	a5,a5,s2
    80052332:	6390                	ld	a2,0(a5)
    80052334:	6794                	ld	a3,8(a5)
    80052336:	00ac                	addi	a1,sp,72
    80052338:	8522                	mv	a0,s0
    8005233a:	001c0b9b          	addiw	s7,s8,1
    8005233e:	bfed00ef          	jal	ra,8002273c <JS_ToFloat64>
    80052342:	ed41                	bnez	a0,800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:325
                dbuf_printf_fun(&dbuf, fmtbuf, double_arg);
    80052344:	6626                	ld	a2,72(sp)
    80052346:	010c                	addi	a1,sp,128
    80052348:	8526                	mv	a0,s1
    8005234a:	fd0ff0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs-libc.c:326
                break;
    8005234e:	a8b5                	j	800523ca <js_printf_internal+0x2c6>
    80052350:	fa86869b          	addiw	a3,a3,-88
    80052354:	0ff6f693          	zext.b	a3,a3
    80052358:	02000613          	li	a2,32
    8005235c:	12d66563          	bltu	a2,a3,80052486 <js_printf_internal+0x382>
    80052360:	0002d617          	auipc	a2,0x2d
    80052364:	89c60613          	addi	a2,a2,-1892 # 8007ebfc <utf8_min_code+0x74>
    80052368:	068a                	slli	a3,a3,0x2
    8005236a:	96b2                	add	a3,a3,a2
    8005236c:	4294                	lw	a3,0(a3)
    8005236e:	96b2                	add	a3,a3,a2
    80052370:	8682                	jr	a3
quickjs-nuttx/quickjs-libc.c:248
                if (i >= argc)
    80052372:	133c5263          	bge	s8,s3,80052496 <js_printf_internal+0x392>
quickjs-nuttx/quickjs-libc.c:250
                if (JS_IsString(argv[i])) {
    80052376:	004c1713          	slli	a4,s8,0x4
    8005237a:	974a                	add	a4,a4,s2
JS_IsString():
quickjs-nuttx/quickjs.h:620
    return JS_VALUE_GET_TAG(v) == JS_TAG_STRING;
    8005237c:	6714                	ld	a3,8(a4)
js_printf_internal():
quickjs-nuttx/quickjs-libc.c:250
    8005237e:	57e5                	li	a5,-7
quickjs-nuttx/quickjs-libc.c:251
                    string_arg = JS_ToCString(ctx, argv[i++]);
    80052380:	001c0b9b          	addiw	s7,s8,1
quickjs-nuttx/quickjs-libc.c:250
                if (JS_IsString(argv[i])) {
    80052384:	0006861b          	sext.w	a2,a3
    80052388:	04f61363          	bne	a2,a5,800523ce <js_printf_internal+0x2ca>
quickjs-nuttx/quickjs-libc.c:251
                    string_arg = JS_ToCString(ctx, argv[i++]);
    8005238c:	630c                	ld	a1,0(a4)
    8005238e:	8636                	mv	a2,a3
    80052390:	8522                	mv	a0,s0
    80052392:	d63ff0ef          	jal	ra,800520f4 <JS_ToCString>
    80052396:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs-libc.c:252
                    if (!string_arg)
    80052398:	c129                	beqz	a0,800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:254
                    int32_arg = unicode_from_utf8((uint8_t *)string_arg, UTF8_CHAR_LEN_MAX, &p);
    8005239a:	4599                	li	a1,6
    8005239c:	1810                	addi	a2,sp,48
    8005239e:	91dff0ef          	jal	ra,80051cba <unicode_from_utf8>
    800523a2:	d22a                	sw	a0,36(sp)
quickjs-nuttx/quickjs-libc.c:255
                    JS_FreeCString(ctx, string_arg);
    800523a4:	85e2                	mv	a1,s8
    800523a6:	8522                	mv	a0,s0
    800523a8:	f96ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:261
                if ((unsigned)int32_arg > 0x10FFFF)
    800523ac:	5712                	lw	a4,36(sp)
    800523ae:	001107b7          	lui	a5,0x110
    800523b2:	00f76363          	bltu	a4,a5,800523b8 <js_printf_internal+0x2b4>
quickjs-nuttx/quickjs-libc.c:262
                    int32_arg = 0xFFFD;
    800523b6:	d26e                	sw	s11,36(sp)
quickjs-nuttx/quickjs-libc.c:264
                len = unicode_to_utf8(cbuf, int32_arg);
    800523b8:	5592                	lw	a1,36(sp)
    800523ba:	1028                	addi	a0,sp,40
    800523bc:	811ff0ef          	jal	ra,80051bcc <unicode_to_utf8>
    800523c0:	862a                	mv	a2,a0
quickjs-nuttx/quickjs-libc.c:265
                dbuf_put(&dbuf, cbuf, len);
    800523c2:	102c                	addi	a1,sp,40
    800523c4:	8526                	mv	a0,s1
    800523c6:	e8aff0ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs-libc.c:330
                break;
    800523ca:	8c5e                	mv	s8,s7
    800523cc:	bb79                	j	8005216a <js_printf_internal+0x66>
quickjs-nuttx/quickjs-libc.c:257
                    if (JS_ToInt32(ctx, &int32_arg, argv[i++]))
    800523ce:	6310                	ld	a2,0(a4)
    800523d0:	104c                	addi	a1,sp,36
    800523d2:	8522                	mv	a0,s0
    800523d4:	fe7cf0ef          	jal	ra,800223ba <JS_ToInt32>
    800523d8:	d971                	beqz	a0,800523ac <js_printf_internal+0x2a8>
quickjs-nuttx/quickjs-libc.c:358
    dbuf_free(&dbuf);
    800523da:	8526                	mv	a0,s1
    800523dc:	fcaff0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:359
    return JS_EXCEPTION;
    800523e0:	4799                	li	a5,6
    800523e2:	f082                	sd	zero,96(sp)
    800523e4:	f4be                	sd	a5,104(sp)
    800523e6:	a0f5                	j	800524d2 <js_printf_internal+0x3ce>
    800523e8:	e842                	sd	a6,16(sp)
quickjs-nuttx/quickjs-libc.c:274
                if (i >= argc)
    800523ea:	0b3c5663          	bge	s8,s3,80052496 <js_printf_internal+0x392>
quickjs-nuttx/quickjs-libc.c:276
                if (JS_ToInt64Ext(ctx, &int64_arg, argv[i++]))
    800523ee:	004c1793          	slli	a5,s8,0x4
    800523f2:	97ca                	add	a5,a5,s2
    800523f4:	6390                	ld	a2,0(a5)
    800523f6:	6794                	ld	a3,8(a5)
    800523f8:	008c                	addi	a1,sp,64
    800523fa:	8522                	mv	a0,s0
    800523fc:	001c0b9b          	addiw	s7,s8,1
    80052400:	d47d30ef          	jal	ra,80026146 <JS_ToInt64Ext>
    80052404:	f979                	bnez	a0,800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:278
                if (mod == 'l') {
    80052406:	6842                	ld	a6,16(sp)
    80052408:	06c00793          	li	a5,108
    8005240c:	02f81863          	bne	a6,a5,8005243c <js_printf_internal+0x338>
quickjs-nuttx/quickjs-libc.c:290
                    if (q >= fmtbuf + sizeof(fmtbuf) - 2)
    80052410:	09e10693          	addi	a3,sp,158
quickjs-nuttx/quickjs-libc.c:243
            *q++ = c;
    80052414:	001d0793          	addi	a5,s10,1
quickjs-nuttx/quickjs-libc.c:290
                    if (q >= fmtbuf + sizeof(fmtbuf) - 2)
    80052418:	06d7f763          	bgeu	a5,a3,80052486 <js_printf_internal+0x382>
quickjs-nuttx/quickjs-libc.c:292
                    q[1] = q[-1];
    8005241c:	000d4783          	lbu	a5,0(s10)
quickjs-nuttx/quickjs-libc.c:295
                    dbuf_printf_fun(&dbuf, fmtbuf, (long long)int64_arg);
    80052420:	6606                	ld	a2,64(sp)
quickjs-nuttx/quickjs-libc.c:293
                    q[-1] = q[0] = 'l';
    80052422:	010d00a3          	sb	a6,1(s10)
quickjs-nuttx/quickjs-libc.c:292
                    q[1] = q[-1];
    80052426:	00fd0123          	sb	a5,2(s10)
quickjs-nuttx/quickjs-libc.c:293
                    q[-1] = q[0] = 'l';
    8005242a:	010d0023          	sb	a6,0(s10)
quickjs-nuttx/quickjs-libc.c:294
                    q[2] = '\0';
    8005242e:	000d01a3          	sb	zero,3(s10)
quickjs-nuttx/quickjs-libc.c:295
                    dbuf_printf_fun(&dbuf, fmtbuf, (long long)int64_arg);
    80052432:	010c                	addi	a1,sp,128
    80052434:	8526                	mv	a0,s1
    80052436:	ee4ff0ef          	jal	ra,80051b1a <dbuf_printf>
    8005243a:	bf41                	j	800523ca <js_printf_internal+0x2c6>
quickjs-nuttx/quickjs-libc.c:298
                    dbuf_printf_fun(&dbuf, fmtbuf, (int)int64_arg);
    8005243c:	4606                	lw	a2,64(sp)
    8005243e:	010c                	addi	a1,sp,128
    80052440:	8526                	mv	a0,s1
    80052442:	ed8ff0ef          	jal	ra,80051b1a <dbuf_printf>
    80052446:	b751                	j	800523ca <js_printf_internal+0x2c6>
quickjs-nuttx/quickjs-libc.c:303
                if (i >= argc)
    80052448:	053c5763          	bge	s8,s3,80052496 <js_printf_internal+0x392>
quickjs-nuttx/quickjs-libc.c:306
                string_arg = JS_ToCString(ctx, argv[i++]);
    8005244c:	004c1793          	slli	a5,s8,0x4
    80052450:	97ca                	add	a5,a5,s2
    80052452:	638c                	ld	a1,0(a5)
    80052454:	6790                	ld	a2,8(a5)
    80052456:	8522                	mv	a0,s0
    80052458:	001c0b9b          	addiw	s7,s8,1
    8005245c:	c99ff0ef          	jal	ra,800520f4 <JS_ToCString>
    80052460:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs-libc.c:307
                if (!string_arg)
    80052462:	dd25                	beqz	a0,800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:309
                dbuf_printf_fun(&dbuf, fmtbuf, string_arg);
    80052464:	862a                	mv	a2,a0
    80052466:	010c                	addi	a1,sp,128
    80052468:	8526                	mv	a0,s1
    8005246a:	eb0ff0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs-libc.c:310
                JS_FreeCString(ctx, string_arg);
    8005246e:	85e2                	mv	a1,s8
    80052470:	8522                	mv	a0,s0
    80052472:	eccba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:311
                break;
    80052476:	bf91                	j	800523ca <js_printf_internal+0x2c6>
quickjs-nuttx/quickjs-libc.c:329
                dbuf_putc(&dbuf, '%');
    80052478:	02500593          	li	a1,37
    8005247c:	8526                	mv	a0,s1
    8005247e:	e64ff0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs-libc.c:330
                break;
    80052482:	8be2                	mv	s7,s8
    80052484:	b799                	j	800523ca <js_printf_internal+0x2c6>
quickjs-nuttx/quickjs-libc.c:335
                JS_ThrowTypeError(ctx, "invalid conversion specifier in format string");
    80052486:	8522                	mv	a0,s0
    80052488:	0002c597          	auipc	a1,0x2c
    8005248c:	71858593          	addi	a1,a1,1816 # 8007eba0 <utf8_min_code+0x18>
    80052490:	9dcc60ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:336
                goto fail;
    80052494:	b799                	j	800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:338
                JS_ThrowReferenceError(ctx, "missing argument for conversion specifier");
    80052496:	8522                	mv	a0,s0
    80052498:	0002c597          	auipc	a1,0x2c
    8005249c:	73858593          	addi	a1,a1,1848 # 8007ebd0 <utf8_min_code+0x48>
    800524a0:	b82c70ef          	jal	ra,80019822 <JS_ThrowReferenceError>
quickjs-nuttx/quickjs-libc.c:339
                goto fail;
    800524a4:	bf1d                	j	800523da <js_printf_internal+0x2d6>
quickjs-nuttx/quickjs-libc.c:347
        if (fp) {
    800524a6:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs-libc.c:348
            len = fwrite(dbuf.buf, 1, dbuf.size, fp);
    800524a8:	750a                	ld	a0,160(sp)
    800524aa:	762a                	ld	a2,168(sp)
quickjs-nuttx/quickjs-libc.c:347
        if (fp) {
    800524ac:	c7a1                	beqz	a5,800524f4 <js_printf_internal+0x3f0>
quickjs-nuttx/quickjs-libc.c:348
            len = fwrite(dbuf.buf, 1, dbuf.size, fp);
    800524ae:	86be                	mv	a3,a5
    800524b0:	4585                	li	a1,1
    800524b2:	0b2100ef          	jal	ra,80062564 <fwrite>
    800524b6:	0005041b          	sext.w	s0,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800524ba:	da82                	sw	zero,116(sp)
    800524bc:	d8a2                	sw	s0,112(sp)
    800524be:	77c6                	ld	a5,112(sp)
    800524c0:	4901                	li	s2,0
    800524c2:	e8be                	sd	a5,80(sp)
js_printf_internal():
quickjs-nuttx/quickjs-libc.c:354
    dbuf_free(&dbuf);
    800524c4:	8526                	mv	a0,s1
    800524c6:	ee0ff0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:355
    return res;
    800524ca:	c8a2                	sw	s0,80(sp)
    800524cc:	67c6                	ld	a5,80(sp)
    800524ce:	f4ca                	sd	s2,104(sp)
    800524d0:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs-libc.c:360
}
    800524d2:	70f2                	ld	ra,312(sp)
    800524d4:	7452                	ld	s0,304(sp)
    800524d6:	7506                	ld	a0,96(sp)
    800524d8:	75a6                	ld	a1,104(sp)
    800524da:	74b2                	ld	s1,296(sp)
    800524dc:	7912                	ld	s2,288(sp)
    800524de:	69f2                	ld	s3,280(sp)
    800524e0:	6a52                	ld	s4,272(sp)
    800524e2:	6ab2                	ld	s5,264(sp)
    800524e4:	6b12                	ld	s6,256(sp)
    800524e6:	7bee                	ld	s7,248(sp)
    800524e8:	7c4e                	ld	s8,240(sp)
    800524ea:	7cae                	ld	s9,232(sp)
    800524ec:	7d0e                	ld	s10,224(sp)
    800524ee:	6dee                	ld	s11,216(sp)
    800524f0:	6131                	addi	sp,sp,320
    800524f2:	8082                	ret
quickjs-nuttx/quickjs-libc.c:351
            res = JS_NewStringLen(ctx, (char *)dbuf.buf, dbuf.size);
    800524f4:	85aa                	mv	a1,a0
    800524f6:	8522                	mv	a0,s0
    800524f8:	913cc0ef          	jal	ra,8001ee0a <JS_NewStringLen>
    800524fc:	b175                	j	800521a8 <js_printf_internal+0xa4>

00000000800524fe <js_std_sprintf>:
js_std_sprintf():
quickjs-nuttx/quickjs-libc.c:994
{
    800524fe:	1101                	addi	sp,sp,-32
    80052500:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs-libc.c:995
    return js_printf_internal(ctx, argc, argv, NULL);
    80052502:	4681                	li	a3,0
    80052504:	863a                	mv	a2,a4
quickjs-nuttx/quickjs-libc.c:996
}
    80052506:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:995
    return js_printf_internal(ctx, argc, argv, NULL);
    80052508:	bfdff06f          	j	80052104 <js_printf_internal>

000000008005250c <js_std_printf>:
js_std_printf():
quickjs-nuttx/quickjs-libc.c:1000
{
    8005250c:	7139                	addi	sp,sp,-64
    8005250e:	f822                	sd	s0,48(sp)
    80052510:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1001
    return js_printf_internal(ctx, argc, argv, stdout);
    80052512:	4505                	li	a0,1
quickjs-nuttx/quickjs-libc.c:1000
{
    80052514:	fc06                	sd	ra,56(sp)
    80052516:	e436                	sd	a3,8(sp)
    80052518:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs-libc.c:1001
    return js_printf_internal(ctx, argc, argv, stdout);
    8005251a:	646100ef          	jal	ra,80062b60 <lib_get_stream>
    8005251e:	86aa                	mv	a3,a0
    80052520:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:1002
}
    80052522:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs-libc.c:1001
    return js_printf_internal(ctx, argc, argv, stdout);
    80052524:	6602                	ld	a2,0(sp)
    80052526:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:1002
}
    80052528:	70e2                	ld	ra,56(sp)
    8005252a:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs-libc.c:1001
    return js_printf_internal(ctx, argc, argv, stdout);
    8005252c:	bd9ff06f          	j	80052104 <js_printf_internal>

0000000080052530 <js_std_file_get>:
js_std_file_get():
quickjs-nuttx/quickjs-libc.c:1005
{
    80052530:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs-libc.c:1006
    JSSTDFile *s = JS_GetOpaque2(ctx, obj, js_std_file_class_id);
    80052532:	000af697          	auipc	a3,0xaf
    80052536:	c026a683          	lw	a3,-1022(a3) # 80101134 <js_std_file_class_id>
quickjs-nuttx/quickjs-libc.c:1005
{
    8005253a:	f022                	sd	s0,32(sp)
    8005253c:	ec26                	sd	s1,24(sp)
    8005253e:	f406                	sd	ra,40(sp)
    80052540:	84aa                	mv	s1,a0
    80052542:	e02e                	sd	a1,0(sp)
    80052544:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:1006
    JSSTDFile *s = JS_GetOpaque2(ctx, obj, js_std_file_class_id);
    80052546:	aa8c60ef          	jal	ra,800187ee <JS_GetOpaque2>
    8005254a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1007
    if (!s)
    8005254c:	c911                	beqz	a0,80052560 <js_std_file_get+0x30>
quickjs-nuttx/quickjs-libc.c:1009
    if (!s->f) {
    8005254e:	6100                	ld	s0,0(a0)
    80052550:	e801                	bnez	s0,80052560 <js_std_file_get+0x30>
quickjs-nuttx/quickjs-libc.c:1010
        JS_ThrowTypeError(ctx, "invalid file handle");
    80052552:	0002c597          	auipc	a1,0x2c
    80052556:	72e58593          	addi	a1,a1,1838 # 8007ec80 <utf8_min_code+0xf8>
    8005255a:	8526                	mv	a0,s1
    8005255c:	910c60ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:1014
}
    80052560:	70a2                	ld	ra,40(sp)
    80052562:	8522                	mv	a0,s0
    80052564:	7402                	ld	s0,32(sp)
    80052566:	64e2                	ld	s1,24(sp)
    80052568:	6145                	addi	sp,sp,48
    8005256a:	8082                	ret

000000008005256c <js_std_file_seek>:
js_std_file_seek():
quickjs-nuttx/quickjs-libc.c:1098
{
    8005256c:	711d                	addi	sp,sp,-96
    8005256e:	e8a2                	sd	s0,80(sp)
    80052570:	e0ca                	sd	s2,64(sp)
    80052572:	ec86                	sd	ra,88(sp)
    80052574:	e4a6                	sd	s1,72(sp)
    80052576:	892a                	mv	s2,a0
    80052578:	e02e                	sd	a1,0(sp)
    8005257a:	e432                	sd	a2,8(sp)
    8005257c:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:1099
    FILE *f = js_std_file_get(ctx, this_val);
    8005257e:	fb3ff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1102
    if (!f)
    80052582:	ed01                	bnez	a0,8005259a <js_std_file_seek+0x2e>
quickjs-nuttx/quickjs-libc.c:1103
        return JS_EXCEPTION;
    80052584:	4799                	li	a5,6
    80052586:	f002                	sd	zero,32(sp)
    80052588:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1116 (discriminator 1)
}
    8005258a:	60e6                	ld	ra,88(sp)
    8005258c:	6446                	ld	s0,80(sp)
    8005258e:	7502                	ld	a0,32(sp)
    80052590:	75a2                	ld	a1,40(sp)
    80052592:	64a6                	ld	s1,72(sp)
    80052594:	6906                	ld	s2,64(sp)
    80052596:	6125                	addi	sp,sp,96
    80052598:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1104
    if (JS_ToInt64Ext(ctx, &pos, argv[0]))
    8005259a:	6010                	ld	a2,0(s0)
    8005259c:	6414                	ld	a3,8(s0)
    8005259e:	84aa                	mv	s1,a0
    800525a0:	082c                	addi	a1,sp,24
    800525a2:	854a                	mv	a0,s2
    800525a4:	ba3d30ef          	jal	ra,80026146 <JS_ToInt64Ext>
    800525a8:	fd71                	bnez	a0,80052584 <js_std_file_seek+0x18>
quickjs-nuttx/quickjs-libc.c:1106
    if (JS_ToInt32(ctx, &whence, argv[1]))
    800525aa:	6810                	ld	a2,16(s0)
    800525ac:	6c14                	ld	a3,24(s0)
    800525ae:	084c                	addi	a1,sp,20
    800525b0:	854a                	mv	a0,s2
    800525b2:	e09cf0ef          	jal	ra,800223ba <JS_ToInt32>
    800525b6:	f579                	bnez	a0,80052584 <js_std_file_seek+0x18>
quickjs-nuttx/quickjs-libc.c:1111
    ret = fseek(f, pos, whence);
    800525b8:	4652                	lw	a2,20(sp)
    800525ba:	65e2                	ld	a1,24(sp)
    800525bc:	8526                	mv	a0,s1
    800525be:	63b0f0ef          	jal	ra,800623f8 <fseek>
quickjs-nuttx/quickjs-libc.c:1113
    if (ret < 0)
    800525c2:	00055763          	bgez	a0,800525d0 <js_std_file_seek+0x64>
quickjs-nuttx/quickjs-libc.c:1114
        ret = -errno;
    800525c6:	4520e0ef          	jal	ra,80060a18 <__errno>
    800525ca:	4108                	lw	a0,0(a0)
    800525cc:	40a0053b          	negw	a0,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800525d0:	da02                	sw	zero,52(sp)
    800525d2:	d82a                	sw	a0,48(sp)
    800525d4:	77c2                	ld	a5,48(sp)
    800525d6:	f402                	sd	zero,40(sp)
    800525d8:	f03e                	sd	a5,32(sp)
    800525da:	bf45                	j	8005258a <js_std_file_seek+0x1e>

00000000800525dc <js_std_file_printf>:
js_std_file_printf():
quickjs-nuttx/quickjs-libc.c:1061
{
    800525dc:	7139                	addi	sp,sp,-64
    800525de:	f822                	sd	s0,48(sp)
    800525e0:	f426                	sd	s1,40(sp)
    800525e2:	f04a                	sd	s2,32(sp)
    800525e4:	fc06                	sd	ra,56(sp)
    800525e6:	842a                	mv	s0,a0
    800525e8:	84b6                	mv	s1,a3
    800525ea:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:1062
    FILE *f = js_std_file_get(ctx, this_val);
    800525ec:	f45ff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1063
    if (!f)
    800525f0:	cd01                	beqz	a0,80052608 <js_std_file_printf+0x2c>
    800525f2:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs-libc.c:1065
    return js_printf_internal(ctx, argc, argv, f);
    800525f4:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:1066
}
    800525f6:	7442                	ld	s0,48(sp)
    800525f8:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs-libc.c:1065
    return js_printf_internal(ctx, argc, argv, f);
    800525fa:	864a                	mv	a2,s2
    800525fc:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs-libc.c:1066
}
    800525fe:	7902                	ld	s2,32(sp)
    80052600:	74a2                	ld	s1,40(sp)
    80052602:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs-libc.c:1065
    return js_printf_internal(ctx, argc, argv, f);
    80052604:	b01ff06f          	j	80052104 <js_printf_internal>
quickjs-nuttx/quickjs-libc.c:1066 (discriminator 1)
}
    80052608:	70e2                	ld	ra,56(sp)
    8005260a:	7442                	ld	s0,48(sp)
    8005260c:	74a2                	ld	s1,40(sp)
    8005260e:	7902                	ld	s2,32(sp)
    80052610:	4599                	li	a1,6
    80052612:	6121                	addi	sp,sp,64
    80052614:	8082                	ret

0000000080052616 <js_set_error_object>:
js_set_error_object():
quickjs-nuttx/quickjs-libc.c:870
    if (!JS_IsUndefined(obj)) {
    80052616:	0006079b          	sext.w	a5,a2
    8005261a:	470d                	li	a4,3
    8005261c:	00e78e63          	beq	a5,a4,80052638 <js_set_error_object+0x22>
quickjs-nuttx/quickjs-libc.c:869
{
    80052620:	7179                	addi	sp,sp,-48
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80052622:	f002                	sd	zero,32(sp)
    80052624:	d036                	sw	a3,32(sp)
js_set_error_object():
quickjs-nuttx/quickjs-libc.c:871
        JS_SetPropertyStr(ctx, obj, "errno", JS_NewInt32(ctx, err));
    80052626:	7702                	ld	a4,32(sp)
    80052628:	4781                	li	a5,0
    8005262a:	0002c697          	auipc	a3,0x2c
    8005262e:	66e68693          	addi	a3,a3,1646 # 8007ec98 <utf8_min_code+0x110>
quickjs-nuttx/quickjs-libc.c:873
}
    80052632:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs-libc.c:871
        JS_SetPropertyStr(ctx, obj, "errno", JS_NewInt32(ctx, err));
    80052634:	989e506f          	j	80037fbc <JS_SetPropertyStr>
    80052638:	8082                	ret

000000008005263a <js_new_std_file>:
js_new_std_file():
quickjs-nuttx/quickjs-libc.c:850
{
    8005263a:	715d                	addi	sp,sp,-80
    8005263c:	fc26                	sd	s1,56(sp)
    8005263e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs-libc.c:853
    obj = JS_NewObjectClass(ctx, js_std_file_class_id);
    80052640:	000af597          	auipc	a1,0xaf
    80052644:	af45a583          	lw	a1,-1292(a1) # 80101134 <js_std_file_class_id>
quickjs-nuttx/quickjs-libc.c:850
{
    80052648:	e0a2                	sd	s0,64(sp)
    8005264a:	f84a                	sd	s2,48(sp)
    8005264c:	f44e                	sd	s3,40(sp)
    8005264e:	f052                	sd	s4,32(sp)
    80052650:	e486                	sd	ra,72(sp)
    80052652:	842a                	mv	s0,a0
    80052654:	89b2                	mv	s3,a2
    80052656:	8936                	mv	s2,a3
quickjs-nuttx/quickjs-libc.c:853
    obj = JS_NewObjectClass(ctx, js_std_file_class_id);
    80052658:	8b5c90ef          	jal	ra,8001bf0c <JS_NewObjectClass>
    8005265c:	e02a                	sd	a0,0(sp)
    8005265e:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:854
    if (JS_IsException(obj))
    80052660:	0005879b          	sext.w	a5,a1
    80052664:	4a19                	li	s4,6
    80052666:	01479e63          	bne	a5,s4,80052682 <js_new_std_file+0x48>
quickjs-nuttx/quickjs-libc.c:855
        return obj;
    8005266a:	e82a                	sd	a0,16(sp)
    8005266c:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:866 (discriminator 1)
}
    8005266e:	60a6                	ld	ra,72(sp)
    80052670:	6406                	ld	s0,64(sp)
    80052672:	6542                	ld	a0,16(sp)
    80052674:	65e2                	ld	a1,24(sp)
    80052676:	74e2                	ld	s1,56(sp)
    80052678:	7942                	ld	s2,48(sp)
    8005267a:	79a2                	ld	s3,40(sp)
    8005267c:	7a02                	ld	s4,32(sp)
    8005267e:	6161                	addi	sp,sp,80
    80052680:	8082                	ret
quickjs-nuttx/quickjs-libc.c:856
    s = js_mallocz(ctx, sizeof(*s));
    80052682:	45c1                	li	a1,16
    80052684:	8522                	mv	a0,s0
    80052686:	ab3c80ef          	jal	ra,8001b138 <js_mallocz>
    8005268a:	862a                	mv	a2,a0
quickjs-nuttx/quickjs-libc.c:857
    if (!s) {
    8005268c:	e909                	bnez	a0,8005269e <js_new_std_file+0x64>
quickjs-nuttx/quickjs-libc.c:858
        JS_FreeValue(ctx, obj);
    8005268e:	6582                	ld	a1,0(sp)
    80052690:	6622                	ld	a2,8(sp)
    80052692:	8522                	mv	a0,s0
    80052694:	a19ff0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:859
        return JS_EXCEPTION;
    80052698:	e802                	sd	zero,16(sp)
    8005269a:	ec52                	sd	s4,24(sp)
    8005269c:	bfc9                	j	8005266e <js_new_std_file+0x34>
quickjs-nuttx/quickjs-libc.c:861
    s->close_in_finalizer = close_in_finalizer;
    8005269e:	01352423          	sw	s3,8(a0)
quickjs-nuttx/quickjs-libc.c:862
    s->is_popen = is_popen;
    800526a2:	01252623          	sw	s2,12(a0)
quickjs-nuttx/quickjs-libc.c:863
    s->f = f;
    800526a6:	e104                	sd	s1,0(a0)
quickjs-nuttx/quickjs-libc.c:864
    JS_SetOpaque(obj, s);
    800526a8:	65a2                	ld	a1,8(sp)
    800526aa:	6502                	ld	a0,0(sp)
    800526ac:	fd9bb0ef          	jal	ra,8000e684 <JS_SetOpaque>
quickjs-nuttx/quickjs-libc.c:865
    return obj;
    800526b0:	6782                	ld	a5,0(sp)
    800526b2:	e83e                	sd	a5,16(sp)
    800526b4:	67a2                	ld	a5,8(sp)
    800526b6:	ec3e                	sd	a5,24(sp)
    800526b8:	bf5d                	j	8005266e <js_new_std_file+0x34>

00000000800526ba <js_std_tmpfile>:
js_std_tmpfile():
quickjs-nuttx/quickjs-libc.c:982
{
    800526ba:	715d                	addi	sp,sp,-80
    800526bc:	e0a2                	sd	s0,64(sp)
    800526be:	fc26                	sd	s1,56(sp)
    800526c0:	f84a                	sd	s2,48(sp)
    800526c2:	f44e                	sd	s3,40(sp)
    800526c4:	e486                	sd	ra,72(sp)
    800526c6:	84aa                	mv	s1,a0
    800526c8:	e02e                	sd	a1,0(sp)
    800526ca:	e432                	sd	a2,8(sp)
    800526cc:	89b6                	mv	s3,a3
    800526ce:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:984
    f = tmpfile();
    800526d0:	418100ef          	jal	ra,80062ae8 <tmpfile>
    800526d4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:985
    if (argc >= 1)
    800526d6:	01305e63          	blez	s3,800526f2 <js_std_tmpfile+0x38>
quickjs-nuttx/quickjs-libc.c:986
        js_set_error_object(ctx, argv[0], f ? 0 : errno);
    800526da:	4681                	li	a3,0
    800526dc:	e501                	bnez	a0,800526e4 <js_std_tmpfile+0x2a>
quickjs-nuttx/quickjs-libc.c:986 (discriminator 1)
    800526de:	33a0e0ef          	jal	ra,80060a18 <__errno>
    800526e2:	4114                	lw	a3,0(a0)
quickjs-nuttx/quickjs-libc.c:986 (discriminator 4)
    800526e4:	00093583          	ld	a1,0(s2)
    800526e8:	00893603          	ld	a2,8(s2)
    800526ec:	8526                	mv	a0,s1
    800526ee:	f29ff0ef          	jal	ra,80052616 <js_set_error_object>
quickjs-nuttx/quickjs-libc.c:987
    if (!f)
    800526f2:	cc09                	beqz	s0,8005270c <js_std_tmpfile+0x52>
quickjs-nuttx/quickjs-libc.c:989
    return js_new_std_file(ctx, f, TRUE, FALSE);
    800526f4:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs-libc.c:990
}
    800526f6:	6406                	ld	s0,64(sp)
    800526f8:	60a6                	ld	ra,72(sp)
    800526fa:	7942                	ld	s2,48(sp)
    800526fc:	79a2                	ld	s3,40(sp)
quickjs-nuttx/quickjs-libc.c:989
    return js_new_std_file(ctx, f, TRUE, FALSE);
    800526fe:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:990
}
    80052700:	74e2                	ld	s1,56(sp)
quickjs-nuttx/quickjs-libc.c:989
    return js_new_std_file(ctx, f, TRUE, FALSE);
    80052702:	4681                	li	a3,0
    80052704:	4605                	li	a2,1
quickjs-nuttx/quickjs-libc.c:990
}
    80052706:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs-libc.c:989
    return js_new_std_file(ctx, f, TRUE, FALSE);
    80052708:	f33ff06f          	j	8005263a <js_new_std_file>
quickjs-nuttx/quickjs-libc.c:990 (discriminator 1)
}
    8005270c:	60a6                	ld	ra,72(sp)
    8005270e:	6406                	ld	s0,64(sp)
    80052710:	74e2                	ld	s1,56(sp)
    80052712:	7942                	ld	s2,48(sp)
    80052714:	79a2                	ld	s3,40(sp)
    80052716:	4501                	li	a0,0
    80052718:	4589                	li	a1,2
    8005271a:	6161                	addi	sp,sp,80
    8005271c:	8082                	ret

000000008005271e <js_std_open>:
js_std_open():
quickjs-nuttx/quickjs-libc.c:877
{
    8005271e:	711d                	addi	sp,sp,-96
    80052720:	e02e                	sd	a1,0(sp)
    80052722:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:882
    filename = JS_ToCString(ctx, argv[0]);
    80052724:	630c                	ld	a1,0(a4)
    80052726:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:877
{
    80052728:	e8a2                	sd	s0,80(sp)
    8005272a:	e0ca                	sd	s2,64(sp)
    8005272c:	fc4e                	sd	s3,56(sp)
    8005272e:	f456                	sd	s5,40(sp)
    80052730:	ec86                	sd	ra,88(sp)
    80052732:	e4a6                	sd	s1,72(sp)
    80052734:	f852                	sd	s4,48(sp)
    80052736:	842a                	mv	s0,a0
    80052738:	8ab6                	mv	s5,a3
    8005273a:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:882
    filename = JS_ToCString(ctx, argv[0]);
    8005273c:	9b9ff0ef          	jal	ra,800520f4 <JS_ToCString>
    80052740:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:883
    if (!filename)
    80052742:	c161                	beqz	a0,80052802 <js_std_open+0xe4>
quickjs-nuttx/quickjs-libc.c:885
    mode = JS_ToCString(ctx, argv[1]);
    80052744:	01093583          	ld	a1,16(s2)
    80052748:	01893603          	ld	a2,24(s2)
    8005274c:	8522                	mv	a0,s0
    8005274e:	9a7ff0ef          	jal	ra,800520f4 <JS_ToCString>
    80052752:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:886
    if (!mode)
    80052754:	c55d                	beqz	a0,80052802 <js_std_open+0xe4>
quickjs-nuttx/quickjs-libc.c:888
    if (mode[strspn(mode, "rwa+b")] != '\0') {
    80052756:	0002c597          	auipc	a1,0x2c
    8005275a:	54a58593          	addi	a1,a1,1354 # 8007eca0 <utf8_min_code+0x118>
    8005275e:	428110ef          	jal	ra,80063b86 <strspn>
    80052762:	9526                	add	a0,a0,s1
    80052764:	00054783          	lbu	a5,0(a0)
    80052768:	c39d                	beqz	a5,8005278e <js_std_open+0x70>
quickjs-nuttx/quickjs-libc.c:889
        JS_ThrowTypeError(ctx, "invalid file mode");
    8005276a:	0002c597          	auipc	a1,0x2c
    8005276e:	53e58593          	addi	a1,a1,1342 # 8007eca8 <utf8_min_code+0x120>
    80052772:	8522                	mv	a0,s0
    80052774:	ef9c50ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:906
    JS_FreeCString(ctx, filename);
    80052778:	85ce                	mv	a1,s3
    8005277a:	8522                	mv	a0,s0
    8005277c:	bc2ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:907
    JS_FreeCString(ctx, mode);
    80052780:	85a6                	mv	a1,s1
    80052782:	8522                	mv	a0,s0
    80052784:	bbaba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:908
    return JS_EXCEPTION;
    80052788:	4799                	li	a5,6
    8005278a:	e802                	sd	zero,16(sp)
    8005278c:	a089                	j	800527ce <js_std_open+0xb0>
quickjs-nuttx/quickjs-libc.c:893
    f = fopen(filename, mode);
    8005278e:	85a6                	mv	a1,s1
    80052790:	854e                	mv	a0,s3
    80052792:	1650f0ef          	jal	ra,800620f6 <fopen>
    80052796:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs-libc.c:897
        err = 0;
    80052798:	4681                	li	a3,0
quickjs-nuttx/quickjs-libc.c:894
    if (!f)
    8005279a:	e501                	bnez	a0,800527a2 <js_std_open+0x84>
quickjs-nuttx/quickjs-libc.c:895
        err = errno;
    8005279c:	27c0e0ef          	jal	ra,80060a18 <__errno>
    800527a0:	4114                	lw	a3,0(a0)
quickjs-nuttx/quickjs-libc.c:898
    if (argc >= 3)
    800527a2:	4789                	li	a5,2
    800527a4:	0157d963          	bge	a5,s5,800527b6 <js_std_open+0x98>
quickjs-nuttx/quickjs-libc.c:899
        js_set_error_object(ctx, argv[2], err);
    800527a8:	02093583          	ld	a1,32(s2)
    800527ac:	02893603          	ld	a2,40(s2)
    800527b0:	8522                	mv	a0,s0
    800527b2:	e65ff0ef          	jal	ra,80052616 <js_set_error_object>
quickjs-nuttx/quickjs-libc.c:900
    JS_FreeCString(ctx, filename);
    800527b6:	85ce                	mv	a1,s3
    800527b8:	8522                	mv	a0,s0
    800527ba:	b84ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:901
    JS_FreeCString(ctx, mode);
    800527be:	85a6                	mv	a1,s1
    800527c0:	8522                	mv	a0,s0
    800527c2:	b7cba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:902
    if (!f)
    800527c6:	020a1063          	bnez	s4,800527e6 <js_std_open+0xc8>
quickjs-nuttx/quickjs-libc.c:903
        return JS_NULL;
    800527ca:	e802                	sd	zero,16(sp)
    800527cc:	4789                	li	a5,2
quickjs-nuttx/quickjs-libc.c:909
}
    800527ce:	60e6                	ld	ra,88(sp)
    800527d0:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs-libc.c:908
    return JS_EXCEPTION;
    800527d2:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:909
}
    800527d4:	6542                	ld	a0,16(sp)
    800527d6:	65e2                	ld	a1,24(sp)
    800527d8:	64a6                	ld	s1,72(sp)
    800527da:	6906                	ld	s2,64(sp)
    800527dc:	79e2                	ld	s3,56(sp)
    800527de:	7a42                	ld	s4,48(sp)
    800527e0:	7aa2                	ld	s5,40(sp)
    800527e2:	6125                	addi	sp,sp,96
    800527e4:	8082                	ret
quickjs-nuttx/quickjs-libc.c:904
    return js_new_std_file(ctx, f, TRUE, FALSE);
    800527e6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:909
}
    800527e8:	6446                	ld	s0,80(sp)
    800527ea:	60e6                	ld	ra,88(sp)
    800527ec:	64a6                	ld	s1,72(sp)
    800527ee:	6906                	ld	s2,64(sp)
    800527f0:	79e2                	ld	s3,56(sp)
    800527f2:	7aa2                	ld	s5,40(sp)
quickjs-nuttx/quickjs-libc.c:904
    return js_new_std_file(ctx, f, TRUE, FALSE);
    800527f4:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs-libc.c:909
}
    800527f6:	7a42                	ld	s4,48(sp)
quickjs-nuttx/quickjs-libc.c:904
    return js_new_std_file(ctx, f, TRUE, FALSE);
    800527f8:	4681                	li	a3,0
    800527fa:	4605                	li	a2,1
quickjs-nuttx/quickjs-libc.c:909
}
    800527fc:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs-libc.c:904
    return js_new_std_file(ctx, f, TRUE, FALSE);
    800527fe:	e3dff06f          	j	8005263a <js_new_std_file>
quickjs-nuttx/quickjs-libc.c:878
    const char *filename, *mode = NULL;
    80052802:	4481                	li	s1,0
    80052804:	bf95                	j	80052778 <js_std_open+0x5a>

0000000080052806 <js_std_fdopen>:
js_std_fdopen():
quickjs-nuttx/quickjs-libc.c:949
{
    80052806:	7159                	addi	sp,sp,-112
    80052808:	fc56                	sd	s5,56(sp)
    8005280a:	e432                	sd	a2,8(sp)
    8005280c:	8ab6                	mv	s5,a3
quickjs-nuttx/quickjs-libc.c:954
    if (JS_ToInt32(ctx, &fd, argv[0]))
    8005280e:	6310                	ld	a2,0(a4)
    80052810:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:949
{
    80052812:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs-libc.c:954
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80052814:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs-libc.c:949
{
    80052816:	f0a2                	sd	s0,96(sp)
    80052818:	eca6                	sd	s1,88(sp)
    8005281a:	f486                	sd	ra,104(sp)
    8005281c:	e8ca                	sd	s2,80(sp)
    8005281e:	e4ce                	sd	s3,72(sp)
    80052820:	e0d2                	sd	s4,64(sp)
    80052822:	842a                	mv	s0,a0
    80052824:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs-libc.c:954
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80052826:	b95cf0ef          	jal	ra,800223ba <JS_ToInt32>
    8005282a:	c501                	beqz	a0,80052832 <js_std_fdopen+0x2c>
quickjs-nuttx/quickjs-libc.c:977
    return JS_EXCEPTION;
    8005282c:	f002                	sd	zero,32(sp)
    8005282e:	4799                	li	a5,6
    80052830:	a895                	j	800528a4 <js_std_fdopen+0x9e>
quickjs-nuttx/quickjs-libc.c:956
    mode = JS_ToCString(ctx, argv[1]);
    80052832:	688c                	ld	a1,16(s1)
    80052834:	6c90                	ld	a2,24(s1)
    80052836:	8a2a                	mv	s4,a0
    80052838:	8522                	mv	a0,s0
    8005283a:	8bbff0ef          	jal	ra,800520f4 <JS_ToCString>
    8005283e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:957
    if (!mode)
    80052840:	c115                	beqz	a0,80052864 <js_std_fdopen+0x5e>
quickjs-nuttx/quickjs-libc.c:959
    if (mode[strspn(mode, "rwa+")] != '\0') {
    80052842:	0002c597          	auipc	a1,0x2c
    80052846:	47e58593          	addi	a1,a1,1150 # 8007ecc0 <utf8_min_code+0x138>
    8005284a:	33c110ef          	jal	ra,80063b86 <strspn>
    8005284e:	954a                	add	a0,a0,s2
    80052850:	00054783          	lbu	a5,0(a0)
    80052854:	cf89                	beqz	a5,8005286e <js_std_fdopen+0x68>
quickjs-nuttx/quickjs-libc.c:960
        JS_ThrowTypeError(ctx, "invalid file mode");
    80052856:	0002c597          	auipc	a1,0x2c
    8005285a:	45258593          	addi	a1,a1,1106 # 8007eca8 <utf8_min_code+0x120>
    8005285e:	8522                	mv	a0,s0
    80052860:	e0dc50ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:976
    JS_FreeCString(ctx, mode);
    80052864:	85ca                	mv	a1,s2
    80052866:	8522                	mv	a0,s0
    80052868:	ad6ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
    8005286c:	b7c1                	j	8005282c <js_std_fdopen+0x26>
quickjs-nuttx/quickjs-libc.c:964
    f = fdopen(fd, mode);
    8005286e:	4572                	lw	a0,28(sp)
    80052870:	85ca                	mv	a1,s2
    80052872:	7b80f0ef          	jal	ra,8006202a <fdopen>
    80052876:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:965
    if (!f)
    80052878:	e509                	bnez	a0,80052882 <js_std_fdopen+0x7c>
quickjs-nuttx/quickjs-libc.c:966
        err = errno;
    8005287a:	19e0e0ef          	jal	ra,80060a18 <__errno>
    8005287e:	00052a03          	lw	s4,0(a0)
quickjs-nuttx/quickjs-libc.c:969
    if (argc >= 3)
    80052882:	4789                	li	a5,2
    80052884:	0157d863          	bge	a5,s5,80052894 <js_std_fdopen+0x8e>
quickjs-nuttx/quickjs-libc.c:970
        js_set_error_object(ctx, argv[2], err);
    80052888:	708c                	ld	a1,32(s1)
    8005288a:	7490                	ld	a2,40(s1)
    8005288c:	86d2                	mv	a3,s4
    8005288e:	8522                	mv	a0,s0
    80052890:	d87ff0ef          	jal	ra,80052616 <js_set_error_object>
quickjs-nuttx/quickjs-libc.c:971
    JS_FreeCString(ctx, mode);
    80052894:	85ca                	mv	a1,s2
    80052896:	8522                	mv	a0,s0
    80052898:	aa6ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:972
    if (!f)
    8005289c:	00099663          	bnez	s3,800528a8 <js_std_fdopen+0xa2>
quickjs-nuttx/quickjs-libc.c:973
        return JS_NULL;
    800528a0:	f002                	sd	zero,32(sp)
    800528a2:	4789                	li	a5,2
quickjs-nuttx/quickjs-libc.c:977
    return JS_EXCEPTION;
    800528a4:	f43e                	sd	a5,40(sp)
    800528a6:	a809                	j	800528b8 <js_std_fdopen+0xb2>
quickjs-nuttx/quickjs-libc.c:974
    return js_new_std_file(ctx, f, TRUE, FALSE);
    800528a8:	4681                	li	a3,0
    800528aa:	4605                	li	a2,1
    800528ac:	85ce                	mv	a1,s3
    800528ae:	8522                	mv	a0,s0
    800528b0:	d8bff0ef          	jal	ra,8005263a <js_new_std_file>
    800528b4:	f02a                	sd	a0,32(sp)
    800528b6:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:978 (discriminator 1)
}
    800528b8:	70a6                	ld	ra,104(sp)
    800528ba:	7406                	ld	s0,96(sp)
    800528bc:	7502                	ld	a0,32(sp)
    800528be:	75a2                	ld	a1,40(sp)
    800528c0:	64e6                	ld	s1,88(sp)
    800528c2:	6946                	ld	s2,80(sp)
    800528c4:	69a6                	ld	s3,72(sp)
    800528c6:	6a06                	ld	s4,64(sp)
    800528c8:	7ae2                	ld	s5,56(sp)
    800528ca:	6165                	addi	sp,sp,112
    800528cc:	8082                	ret

00000000800528ce <js_std_popen>:
js_std_popen():
quickjs-nuttx/quickjs-libc.c:913
{
    800528ce:	711d                	addi	sp,sp,-96
    800528d0:	e02e                	sd	a1,0(sp)
    800528d2:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:918
    filename = JS_ToCString(ctx, argv[0]);
    800528d4:	630c                	ld	a1,0(a4)
    800528d6:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:913
{
    800528d8:	e8a2                	sd	s0,80(sp)
    800528da:	e0ca                	sd	s2,64(sp)
    800528dc:	fc4e                	sd	s3,56(sp)
    800528de:	f456                	sd	s5,40(sp)
    800528e0:	ec86                	sd	ra,88(sp)
    800528e2:	e4a6                	sd	s1,72(sp)
    800528e4:	f852                	sd	s4,48(sp)
    800528e6:	842a                	mv	s0,a0
    800528e8:	8ab6                	mv	s5,a3
    800528ea:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:918
    filename = JS_ToCString(ctx, argv[0]);
    800528ec:	809ff0ef          	jal	ra,800520f4 <JS_ToCString>
    800528f0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:919
    if (!filename)
    800528f2:	c161                	beqz	a0,800529b2 <js_std_popen+0xe4>
quickjs-nuttx/quickjs-libc.c:921
    mode = JS_ToCString(ctx, argv[1]);
    800528f4:	01093583          	ld	a1,16(s2)
    800528f8:	01893603          	ld	a2,24(s2)
    800528fc:	8522                	mv	a0,s0
    800528fe:	ff6ff0ef          	jal	ra,800520f4 <JS_ToCString>
    80052902:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:922
    if (!mode)
    80052904:	c55d                	beqz	a0,800529b2 <js_std_popen+0xe4>
quickjs-nuttx/quickjs-libc.c:924
    if (mode[strspn(mode, "rw")] != '\0') {
    80052906:	0002c597          	auipc	a1,0x2c
    8005290a:	3c258593          	addi	a1,a1,962 # 8007ecc8 <utf8_min_code+0x140>
    8005290e:	278110ef          	jal	ra,80063b86 <strspn>
    80052912:	9526                	add	a0,a0,s1
    80052914:	00054783          	lbu	a5,0(a0)
    80052918:	c39d                	beqz	a5,8005293e <js_std_popen+0x70>
quickjs-nuttx/quickjs-libc.c:925
        JS_ThrowTypeError(ctx, "invalid file mode");
    8005291a:	0002c597          	auipc	a1,0x2c
    8005291e:	38e58593          	addi	a1,a1,910 # 8007eca8 <utf8_min_code+0x120>
    80052922:	8522                	mv	a0,s0
    80052924:	d49c50ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:942
    JS_FreeCString(ctx, filename);
    80052928:	85ce                	mv	a1,s3
    8005292a:	8522                	mv	a0,s0
    8005292c:	a12ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:943
    JS_FreeCString(ctx, mode);
    80052930:	85a6                	mv	a1,s1
    80052932:	8522                	mv	a0,s0
    80052934:	a0aba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:944
    return JS_EXCEPTION;
    80052938:	4799                	li	a5,6
    8005293a:	e802                	sd	zero,16(sp)
    8005293c:	a089                	j	8005297e <js_std_popen+0xb0>
quickjs-nuttx/quickjs-libc.c:929
    f = popen(filename, mode);
    8005293e:	85a6                	mv	a1,s1
    80052940:	854e                	mv	a0,s3
    80052942:	3260d0ef          	jal	ra,8005fc68 <popen>
    80052946:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs-libc.c:933
        err = 0;
    80052948:	4681                	li	a3,0
quickjs-nuttx/quickjs-libc.c:930
    if (!f)
    8005294a:	e501                	bnez	a0,80052952 <js_std_popen+0x84>
quickjs-nuttx/quickjs-libc.c:931
        err = errno;
    8005294c:	0cc0e0ef          	jal	ra,80060a18 <__errno>
    80052950:	4114                	lw	a3,0(a0)
quickjs-nuttx/quickjs-libc.c:934
    if (argc >= 3)
    80052952:	4789                	li	a5,2
    80052954:	0157d963          	bge	a5,s5,80052966 <js_std_popen+0x98>
quickjs-nuttx/quickjs-libc.c:935
        js_set_error_object(ctx, argv[2], err);
    80052958:	02093583          	ld	a1,32(s2)
    8005295c:	02893603          	ld	a2,40(s2)
    80052960:	8522                	mv	a0,s0
    80052962:	cb5ff0ef          	jal	ra,80052616 <js_set_error_object>
quickjs-nuttx/quickjs-libc.c:936
    JS_FreeCString(ctx, filename);
    80052966:	85ce                	mv	a1,s3
    80052968:	8522                	mv	a0,s0
    8005296a:	9d4ba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:937
    JS_FreeCString(ctx, mode);
    8005296e:	85a6                	mv	a1,s1
    80052970:	8522                	mv	a0,s0
    80052972:	9ccba0ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:938
    if (!f)
    80052976:	020a1063          	bnez	s4,80052996 <js_std_popen+0xc8>
quickjs-nuttx/quickjs-libc.c:939
        return JS_NULL;
    8005297a:	e802                	sd	zero,16(sp)
    8005297c:	4789                	li	a5,2
quickjs-nuttx/quickjs-libc.c:945
}
    8005297e:	60e6                	ld	ra,88(sp)
    80052980:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs-libc.c:944
    return JS_EXCEPTION;
    80052982:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:945
}
    80052984:	6542                	ld	a0,16(sp)
    80052986:	65e2                	ld	a1,24(sp)
    80052988:	64a6                	ld	s1,72(sp)
    8005298a:	6906                	ld	s2,64(sp)
    8005298c:	79e2                	ld	s3,56(sp)
    8005298e:	7a42                	ld	s4,48(sp)
    80052990:	7aa2                	ld	s5,40(sp)
    80052992:	6125                	addi	sp,sp,96
    80052994:	8082                	ret
quickjs-nuttx/quickjs-libc.c:940
    return js_new_std_file(ctx, f, TRUE, TRUE);
    80052996:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:945
}
    80052998:	6446                	ld	s0,80(sp)
    8005299a:	60e6                	ld	ra,88(sp)
    8005299c:	64a6                	ld	s1,72(sp)
    8005299e:	6906                	ld	s2,64(sp)
    800529a0:	79e2                	ld	s3,56(sp)
    800529a2:	7aa2                	ld	s5,40(sp)
quickjs-nuttx/quickjs-libc.c:940
    return js_new_std_file(ctx, f, TRUE, TRUE);
    800529a4:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs-libc.c:945
}
    800529a6:	7a42                	ld	s4,48(sp)
quickjs-nuttx/quickjs-libc.c:940
    return js_new_std_file(ctx, f, TRUE, TRUE);
    800529a8:	4685                	li	a3,1
    800529aa:	4605                	li	a2,1
quickjs-nuttx/quickjs-libc.c:945
}
    800529ac:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs-libc.c:940
    return js_new_std_file(ctx, f, TRUE, TRUE);
    800529ae:	c8dff06f          	j	8005263a <js_new_std_file>
quickjs-nuttx/quickjs-libc.c:914
    const char *filename, *mode = NULL;
    800529b2:	4481                	li	s1,0
    800529b4:	bf95                	j	80052928 <js_std_popen+0x5a>

00000000800529b6 <js_std_strerror>:
js_std_strerror():
quickjs-nuttx/quickjs-libc.c:827
    if (JS_ToInt32(ctx, &err, argv[0]))
    800529b6:	6310                	ld	a2,0(a4)
    800529b8:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:825
{
    800529ba:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs-libc.c:827
    if (JS_ToInt32(ctx, &err, argv[0]))
    800529bc:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs-libc.c:825
{
    800529be:	f822                	sd	s0,48(sp)
    800529c0:	fc06                	sd	ra,56(sp)
    800529c2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:827
    if (JS_ToInt32(ctx, &err, argv[0]))
    800529c4:	9f7cf0ef          	jal	ra,800223ba <JS_ToInt32>
    800529c8:	c911                	beqz	a0,800529dc <js_std_strerror+0x26>
quickjs-nuttx/quickjs-libc.c:828
        return JS_EXCEPTION;
    800529ca:	4799                	li	a5,6
    800529cc:	f002                	sd	zero,32(sp)
    800529ce:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:830 (discriminator 1)
}
    800529d0:	70e2                	ld	ra,56(sp)
    800529d2:	7442                	ld	s0,48(sp)
    800529d4:	7502                	ld	a0,32(sp)
    800529d6:	75a2                	ld	a1,40(sp)
    800529d8:	6121                	addi	sp,sp,64
    800529da:	8082                	ret
quickjs-nuttx/quickjs-libc.c:829
    return JS_NewString(ctx, strerror(err));
    800529dc:	4572                	lw	a0,28(sp)
    800529de:	150110ef          	jal	ra,80063b2e <strerror>
    800529e2:	85aa                	mv	a1,a0
    800529e4:	8522                	mv	a0,s0
    800529e6:	fd3cc0ef          	jal	ra,8001f9b8 <JS_NewString>
    800529ea:	f02a                	sd	a0,32(sp)
    800529ec:	f42e                	sd	a1,40(sp)
    800529ee:	b7cd                	j	800529d0 <js_std_strerror+0x1a>

00000000800529f0 <get_bool_option>:
get_bool_option():
quickjs-nuttx/quickjs-libc.c:733
{
    800529f0:	7139                	addi	sp,sp,-64
    800529f2:	87b6                	mv	a5,a3
    800529f4:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs-libc.c:735
    val = JS_GetPropertyStr(ctx, obj, option);
    800529f6:	86ba                	mv	a3,a4
quickjs-nuttx/quickjs-libc.c:733
{
    800529f8:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs-libc.c:735
    val = JS_GetPropertyStr(ctx, obj, option);
    800529fa:	85b2                	mv	a1,a2
    800529fc:	863e                	mv	a2,a5
quickjs-nuttx/quickjs-libc.c:733
{
    800529fe:	f822                	sd	s0,48(sp)
    80052a00:	fc06                	sd	ra,56(sp)
    80052a02:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:735
    val = JS_GetPropertyStr(ctx, obj, option);
    80052a04:	f7acc0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80052a08:	e82a                	sd	a0,16(sp)
    80052a0a:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80052a0c:	0005879b          	sext.w	a5,a1
get_bool_option():
quickjs-nuttx/quickjs-libc.c:736
    if (JS_IsException(val))
    80052a10:	4719                	li	a4,6
    80052a12:	02e78663          	beq	a5,a4,80052a3e <get_bool_option+0x4e>
quickjs-nuttx/quickjs-libc.c:738
    if (!JS_IsUndefined(val)) {
    80052a16:	470d                	li	a4,3
    80052a18:	00e78863          	beq	a5,a4,80052a28 <get_bool_option+0x38>
    80052a1c:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:739
        *pbool = JS_ToBool(ctx, val);
    80052a1e:	85aa                	mv	a1,a0
    80052a20:	8522                	mv	a0,s0
    80052a22:	bc4bc0ef          	jal	ra,8000ede6 <JS_ToBool>
    80052a26:	c088                	sw	a0,0(s1)
quickjs-nuttx/quickjs-libc.c:741
    JS_FreeValue(ctx, val);
    80052a28:	65c2                	ld	a1,16(sp)
    80052a2a:	6662                	ld	a2,24(sp)
    80052a2c:	8522                	mv	a0,s0
    80052a2e:	e7eff0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:742
    return 0;
    80052a32:	4501                	li	a0,0
quickjs-nuttx/quickjs-libc.c:743
}
    80052a34:	70e2                	ld	ra,56(sp)
    80052a36:	7442                	ld	s0,48(sp)
    80052a38:	74a2                	ld	s1,40(sp)
    80052a3a:	6121                	addi	sp,sp,64
    80052a3c:	8082                	ret
quickjs-nuttx/quickjs-libc.c:737
        return -1;
    80052a3e:	557d                	li	a0,-1
    80052a40:	bfd5                	j	80052a34 <get_bool_option+0x44>

0000000080052a42 <js_std_file_getByte>:
js_std_file_getByte():
quickjs-nuttx/quickjs-libc.c:1262
{
    80052a42:	7139                	addi	sp,sp,-64
    80052a44:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs-libc.c:1263
    FILE *f = js_std_file_get(ctx, this_val);
    80052a46:	aebff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1264
    if (!f)
    80052a4a:	e909                	bnez	a0,80052a5c <js_std_file_getByte+0x1a>
quickjs-nuttx/quickjs-libc.c:1265
        return JS_EXCEPTION;
    80052a4c:	4799                	li	a5,6
    80052a4e:	e802                	sd	zero,16(sp)
    80052a50:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1267 (discriminator 1)
}
    80052a52:	70e2                	ld	ra,56(sp)
    80052a54:	6542                	ld	a0,16(sp)
    80052a56:	65e2                	ld	a1,24(sp)
    80052a58:	6121                	addi	sp,sp,64
    80052a5a:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1266
    return JS_NewInt32(ctx, fgetc(f));
    80052a5c:	2b90f0ef          	jal	ra,80062514 <fgetc>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80052a60:	d02a                	sw	a0,32(sp)
    80052a62:	d202                	sw	zero,36(sp)
    80052a64:	7782                	ld	a5,32(sp)
    80052a66:	ec02                	sd	zero,24(sp)
    80052a68:	e83e                	sd	a5,16(sp)
    80052a6a:	b7e5                	j	80052a52 <js_std_file_getByte+0x10>

0000000080052a6c <js_std_file_getline>:
js_std_file_getline():
quickjs-nuttx/quickjs-libc.c:1184
{
    80052a6c:	7175                	addi	sp,sp,-144
    80052a6e:	e122                	sd	s0,128(sp)
    80052a70:	e506                	sd	ra,136(sp)
    80052a72:	fca6                	sd	s1,120(sp)
    80052a74:	f8ca                	sd	s2,112(sp)
    80052a76:	f4ce                	sd	s3,104(sp)
    80052a78:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1185
    FILE *f = js_std_file_get(ctx, this_val);
    80052a7a:	ab7ff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1190
    if (!f)
    80052a7e:	e509                	bnez	a0,80052a88 <js_std_file_getline+0x1c>
quickjs-nuttx/quickjs-libc.c:1191
        return JS_EXCEPTION;
    80052a80:	f002                	sd	zero,32(sp)
    80052a82:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1214
    return obj;
    80052a84:	f43e                	sd	a5,40(sp)
    80052a86:	a0a9                	j	80052ad0 <js_std_file_getline+0x64>
    80052a88:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:1193
    js_std_dbuf_init(ctx, &dbuf);
    80052a8a:	180c                	addi	a1,sp,48
    80052a8c:	8522                	mv	a0,s0
    80052a8e:	e44ff0ef          	jal	ra,800520d2 <js_std_dbuf_init>
quickjs-nuttx/quickjs-libc.c:1196
        if (c == EOF) {
    80052a92:	597d                	li	s2,-1
quickjs-nuttx/quickjs-libc.c:1205
        if (c == '\n')
    80052a94:	49a9                	li	s3,10
quickjs-nuttx/quickjs-libc.c:1195
        c = fgetc(f);
    80052a96:	8526                	mv	a0,s1
    80052a98:	27d0f0ef          	jal	ra,80062514 <fgetc>
quickjs-nuttx/quickjs-libc.c:1196
        if (c == EOF) {
    80052a9c:	01251a63          	bne	a0,s2,80052ab0 <js_std_file_getline+0x44>
quickjs-nuttx/quickjs-libc.c:1197
            if (dbuf.size == 0) {
    80052aa0:	77e2                	ld	a5,56(sp)
    80052aa2:	e3a1                	bnez	a5,80052ae2 <js_std_file_getline+0x76>
quickjs-nuttx/quickjs-libc.c:1199
                dbuf_free(&dbuf);
    80052aa4:	1808                	addi	a0,sp,48
    80052aa6:	900ff0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1200
                return JS_NULL;
    80052aaa:	4789                	li	a5,2
    80052aac:	f002                	sd	zero,32(sp)
    80052aae:	bfd9                	j	80052a84 <js_std_file_getline+0x18>
quickjs-nuttx/quickjs-libc.c:1205
        if (c == '\n')
    80052ab0:	03350963          	beq	a0,s3,80052ae2 <js_std_file_getline+0x76>
quickjs-nuttx/quickjs-libc.c:1207
        if (dbuf_putc(&dbuf, c)) {
    80052ab4:	0ff57593          	zext.b	a1,a0
    80052ab8:	1808                	addi	a0,sp,48
    80052aba:	828ff0ef          	jal	ra,80051ae2 <dbuf_putc>
    80052abe:	dd61                	beqz	a0,80052a96 <js_std_file_getline+0x2a>
quickjs-nuttx/quickjs-libc.c:1208
            dbuf_free(&dbuf);
    80052ac0:	1808                	addi	a0,sp,48
    80052ac2:	8e4ff0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1209
            return JS_ThrowOutOfMemory(ctx);
    80052ac6:	8522                	mv	a0,s0
    80052ac8:	e0cc70ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
    80052acc:	f02a                	sd	a0,32(sp)
    80052ace:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:1215 (discriminator 1)
}
    80052ad0:	60aa                	ld	ra,136(sp)
    80052ad2:	640a                	ld	s0,128(sp)
    80052ad4:	7502                	ld	a0,32(sp)
    80052ad6:	75a2                	ld	a1,40(sp)
    80052ad8:	74e6                	ld	s1,120(sp)
    80052ada:	7946                	ld	s2,112(sp)
    80052adc:	79a6                	ld	s3,104(sp)
    80052ade:	6149                	addi	sp,sp,144
    80052ae0:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1212
    obj = JS_NewStringLen(ctx, (const char *)dbuf.buf, dbuf.size);
    80052ae2:	7662                	ld	a2,56(sp)
    80052ae4:	75c2                	ld	a1,48(sp)
    80052ae6:	8522                	mv	a0,s0
    80052ae8:	b22cc0ef          	jal	ra,8001ee0a <JS_NewStringLen>
    80052aec:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs-libc.c:1213
    dbuf_free(&dbuf);
    80052aee:	1808                	addi	a0,sp,48
quickjs-nuttx/quickjs-libc.c:1212
    obj = JS_NewStringLen(ctx, (const char *)dbuf.buf, dbuf.size);
    80052af0:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:1213
    dbuf_free(&dbuf);
    80052af2:	8b4ff0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1214
    return obj;
    80052af6:	67c2                	ld	a5,16(sp)
    80052af8:	f03e                	sd	a5,32(sp)
    80052afa:	67e2                	ld	a5,24(sp)
    80052afc:	b761                	j	80052a84 <js_std_file_getline+0x18>

0000000080052afe <js_std_getenviron>:
js_std_getenviron():
quickjs-nuttx/quickjs-libc.c:683
{
    80052afe:	7119                	addi	sp,sp,-128
    80052b00:	f4a6                	sd	s1,104(sp)
    80052b02:	fc86                	sd	ra,120(sp)
    80052b04:	f8a2                	sd	s0,112(sp)
    80052b06:	f0ca                	sd	s2,96(sp)
    80052b08:	ecce                	sd	s3,88(sp)
    80052b0a:	e8d2                	sd	s4,80(sp)
    80052b0c:	e4d6                	sd	s5,72(sp)
    80052b0e:	84aa                	mv	s1,a0
    80052b10:	e02e                	sd	a1,0(sp)
    80052b12:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:692
    obj = JS_NewObject(ctx);
    80052b14:	d10c90ef          	jal	ra,8001c024 <JS_NewObject>
    80052b18:	e82a                	sd	a0,16(sp)
    80052b1a:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:693
    if (JS_IsException(obj))
    80052b1c:	0005879b          	sext.w	a5,a1
    80052b20:	4719                	li	a4,6
    80052b22:	00e79563          	bne	a5,a4,80052b2c <js_std_getenviron+0x2e>
quickjs-nuttx/quickjs-libc.c:694
        return JS_EXCEPTION;
    80052b26:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs-libc.c:715
    return JS_EXCEPTION;
    80052b28:	f43e                	sd	a5,40(sp)
    80052b2a:	a015                	j	80052b4e <js_std_getenviron+0x50>
    80052b2c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs-libc.c:695
    envp = environ;
    80052b2e:	3b3110ef          	jal	ra,800646e0 <get_environ_ptr>
    80052b32:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:696
    for(idx = 0; envp[idx] != NULL; idx++) {
    80052b34:	4a01                	li	s4,0
quickjs-nuttx/quickjs-libc.c:696 (discriminator 1)
    80052b36:	020a1713          	slli	a4,s4,0x20
    80052b3a:	01d75793          	srli	a5,a4,0x1d
    80052b3e:	97ce                	add	a5,a5,s3
    80052b40:	0007b903          	ld	s2,0(a5) # 110000 <asinh-0x7fef0000>
    80052b44:	02091063          	bnez	s2,80052b64 <js_std_getenviron+0x66>
quickjs-nuttx/quickjs-libc.c:712
    return obj;
    80052b48:	67c2                	ld	a5,16(sp)
    80052b4a:	f422                	sd	s0,40(sp)
    80052b4c:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs-libc.c:716 (discriminator 1)
}
    80052b4e:	70e6                	ld	ra,120(sp)
    80052b50:	7446                	ld	s0,112(sp)
    80052b52:	7502                	ld	a0,32(sp)
    80052b54:	75a2                	ld	a1,40(sp)
    80052b56:	74a6                	ld	s1,104(sp)
    80052b58:	7906                	ld	s2,96(sp)
    80052b5a:	69e6                	ld	s3,88(sp)
    80052b5c:	6a46                	ld	s4,80(sp)
    80052b5e:	6aa6                	ld	s5,72(sp)
    80052b60:	6109                	addi	sp,sp,128
    80052b62:	8082                	ret
quickjs-nuttx/quickjs-libc.c:698
        p = strchr(name, '=');
    80052b64:	03d00593          	li	a1,61
    80052b68:	854a                	mv	a0,s2
    80052b6a:	1a4110ef          	jal	ra,80063d0e <strchr>
quickjs-nuttx/quickjs-libc.c:700
        if (!p)
    80052b6e:	e119                	bnez	a0,80052b74 <js_std_getenviron+0x76>
quickjs-nuttx/quickjs-libc.c:696
    for(idx = 0; envp[idx] != NULL; idx++) {
    80052b70:	2a05                	addiw	s4,s4,1
    80052b72:	b7d1                	j	80052b36 <js_std_getenviron+0x38>
quickjs-nuttx/quickjs-libc.c:703
        atom = JS_NewAtomLen(ctx, name, name_len);
    80052b74:	41250633          	sub	a2,a0,s2
    80052b78:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs-libc.c:702
        value = p + 1;
    80052b7a:	00150a93          	addi	s5,a0,1
quickjs-nuttx/quickjs-libc.c:703
        atom = JS_NewAtomLen(ctx, name, name_len);
    80052b7e:	8526                	mv	a0,s1
    80052b80:	be8cc0ef          	jal	ra,8001ef68 <JS_NewAtomLen>
    80052b84:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs-libc.c:704
        if (atom == JS_ATOM_NULL)
    80052b88:	02090963          	beqz	s2,80052bba <js_std_getenviron+0xbc>
quickjs-nuttx/quickjs-libc.c:706
        ret = JS_DefinePropertyValue(ctx, obj, atom, JS_NewString(ctx, value),
    80052b8c:	85d6                	mv	a1,s5
    80052b8e:	8526                	mv	a0,s1
    80052b90:	e29cc0ef          	jal	ra,8001f9b8 <JS_NewString>
    80052b94:	87ae                	mv	a5,a1
    80052b96:	fc2e                	sd	a1,56(sp)
    80052b98:	65c2                	ld	a1,16(sp)
    80052b9a:	872a                	mv	a4,a0
    80052b9c:	f82a                	sd	a0,48(sp)
    80052b9e:	481d                	li	a6,7
    80052ba0:	86ca                	mv	a3,s2
    80052ba2:	8622                	mv	a2,s0
    80052ba4:	8526                	mv	a0,s1
    80052ba6:	ec22                	sd	s0,24(sp)
    80052ba8:	e84c50ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    80052bac:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs-libc.c:708
        JS_FreeAtom(ctx, atom);
    80052bae:	85ca                	mv	a1,s2
    80052bb0:	8526                	mv	a0,s1
    80052bb2:	d96b80ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs-libc.c:709
        if (ret < 0)
    80052bb6:	fa0adde3          	bgez	s5,80052b70 <js_std_getenviron+0x72>
quickjs-nuttx/quickjs-libc.c:714
    JS_FreeValue(ctx, obj);
    80052bba:	65c2                	ld	a1,16(sp)
    80052bbc:	8622                	mv	a2,s0
    80052bbe:	8526                	mv	a0,s1
    80052bc0:	cecff0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:715
    return JS_EXCEPTION;
    80052bc4:	4799                	li	a5,6
    80052bc6:	f002                	sd	zero,32(sp)
    80052bc8:	b785                	j	80052b28 <js_std_getenviron+0x2a>

0000000080052bca <js_std_unsetenv>:
js_std_unsetenv():
quickjs-nuttx/quickjs-libc.c:671
    name = JS_ToCString(ctx, argv[0]);
    80052bca:	630c                	ld	a1,0(a4)
    80052bcc:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:669
{
    80052bce:	7139                	addi	sp,sp,-64
    80052bd0:	f822                	sd	s0,48(sp)
    80052bd2:	fc06                	sd	ra,56(sp)
    80052bd4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:671
    name = JS_ToCString(ctx, argv[0]);
    80052bd6:	d1eff0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:672
    if (!name)
    80052bda:	e911                	bnez	a0,80052bee <js_std_unsetenv+0x24>
quickjs-nuttx/quickjs-libc.c:673
        return JS_EXCEPTION;
    80052bdc:	f002                	sd	zero,32(sp)
    80052bde:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:677
}
    80052be0:	70e2                	ld	ra,56(sp)
    80052be2:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs-libc.c:676
    return JS_UNDEFINED;
    80052be4:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:677
}
    80052be6:	7502                	ld	a0,32(sp)
    80052be8:	75a2                	ld	a1,40(sp)
    80052bea:	6121                	addi	sp,sp,64
    80052bec:	8082                	ret
    80052bee:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs-libc.c:674
    unsetenv(name);
    80052bf0:	5b9110ef          	jal	ra,800649a8 <unsetenv>
quickjs-nuttx/quickjs-libc.c:675
    JS_FreeCString(ctx, name);
    80052bf4:	65a2                	ld	a1,8(sp)
    80052bf6:	8522                	mv	a0,s0
    80052bf8:	f47b90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:676
    return JS_UNDEFINED;
    80052bfc:	478d                	li	a5,3
    80052bfe:	f002                	sd	zero,32(sp)
    80052c00:	b7c5                	j	80052be0 <js_std_unsetenv+0x16>

0000000080052c02 <js_std_setenv>:
js_std_setenv():
quickjs-nuttx/quickjs-libc.c:653
    name = JS_ToCString(ctx, argv[0]);
    80052c02:	630c                	ld	a1,0(a4)
    80052c04:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:651
{
    80052c06:	7139                	addi	sp,sp,-64
    80052c08:	f822                	sd	s0,48(sp)
    80052c0a:	f04a                	sd	s2,32(sp)
    80052c0c:	fc06                	sd	ra,56(sp)
    80052c0e:	f426                	sd	s1,40(sp)
    80052c10:	842a                	mv	s0,a0
    80052c12:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:653
    name = JS_ToCString(ctx, argv[0]);
    80052c14:	ce0ff0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:654
    if (!name)
    80052c18:	ed01                	bnez	a0,80052c30 <js_std_setenv+0x2e>
quickjs-nuttx/quickjs-libc.c:659
        return JS_EXCEPTION;
    80052c1a:	e802                	sd	zero,16(sp)
    80052c1c:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:665
}
    80052c1e:	70e2                	ld	ra,56(sp)
    80052c20:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs-libc.c:664
    return JS_UNDEFINED;
    80052c22:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:665
}
    80052c24:	6542                	ld	a0,16(sp)
    80052c26:	65e2                	ld	a1,24(sp)
    80052c28:	74a2                	ld	s1,40(sp)
    80052c2a:	7902                	ld	s2,32(sp)
    80052c2c:	6121                	addi	sp,sp,64
    80052c2e:	8082                	ret
quickjs-nuttx/quickjs-libc.c:656
    value = JS_ToCString(ctx, argv[1]);
    80052c30:	01093583          	ld	a1,16(s2)
    80052c34:	01893603          	ld	a2,24(s2)
    80052c38:	84aa                	mv	s1,a0
    80052c3a:	8522                	mv	a0,s0
    80052c3c:	cb8ff0ef          	jal	ra,800520f4 <JS_ToCString>
    80052c40:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:657
    if (!value) {
    80052c42:	e511                	bnez	a0,80052c4e <js_std_setenv+0x4c>
quickjs-nuttx/quickjs-libc.c:658
        JS_FreeCString(ctx, name);
    80052c44:	85a6                	mv	a1,s1
    80052c46:	8522                	mv	a0,s0
    80052c48:	ef7b90ef          	jal	ra,8000cb3e <JS_FreeCString>
    80052c4c:	b7f9                	j	80052c1a <js_std_setenv+0x18>
quickjs-nuttx/quickjs-libc.c:661
    setenv(name, value, TRUE);
    80052c4e:	4605                	li	a2,1
    80052c50:	85aa                	mv	a1,a0
    80052c52:	8526                	mv	a0,s1
    80052c54:	501110ef          	jal	ra,80064954 <setenv>
quickjs-nuttx/quickjs-libc.c:662
    JS_FreeCString(ctx, name);
    80052c58:	85a6                	mv	a1,s1
    80052c5a:	8522                	mv	a0,s0
    80052c5c:	ee3b90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:663
    JS_FreeCString(ctx, value);
    80052c60:	85ca                	mv	a1,s2
    80052c62:	8522                	mv	a0,s0
    80052c64:	edbb90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:664
    return JS_UNDEFINED;
    80052c68:	478d                	li	a5,3
    80052c6a:	e802                	sd	zero,16(sp)
    80052c6c:	bf4d                	j	80052c1e <js_std_setenv+0x1c>

0000000080052c6e <js_std_getenv>:
js_std_getenv():
quickjs-nuttx/quickjs-libc.c:616
    name = JS_ToCString(ctx, argv[0]);
    80052c6e:	630c                	ld	a1,0(a4)
    80052c70:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:614
{
    80052c72:	715d                	addi	sp,sp,-80
    80052c74:	e0a2                	sd	s0,64(sp)
    80052c76:	e486                	sd	ra,72(sp)
    80052c78:	fc26                	sd	s1,56(sp)
    80052c7a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:616
    name = JS_ToCString(ctx, argv[0]);
    80052c7c:	c78ff0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:617
    if (!name)
    80052c80:	e919                	bnez	a0,80052c96 <js_std_getenv+0x28>
quickjs-nuttx/quickjs-libc.c:618
        return JS_EXCEPTION;
    80052c82:	f002                	sd	zero,32(sp)
    80052c84:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:625
}
    80052c86:	60a6                	ld	ra,72(sp)
    80052c88:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs-libc.c:622
        return JS_UNDEFINED;
    80052c8a:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:625
}
    80052c8c:	7502                	ld	a0,32(sp)
    80052c8e:	75a2                	ld	a1,40(sp)
    80052c90:	74e2                	ld	s1,56(sp)
    80052c92:	6161                	addi	sp,sp,80
    80052c94:	8082                	ret
    80052c96:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs-libc.c:619
    str = getenv(name);
    80052c98:	255110ef          	jal	ra,800646ec <getenv>
quickjs-nuttx/quickjs-libc.c:620
    JS_FreeCString(ctx, name);
    80052c9c:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:619
    str = getenv(name);
    80052c9e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:620
    JS_FreeCString(ctx, name);
    80052ca0:	8522                	mv	a0,s0
    80052ca2:	e9db90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:621
    if (!str)
    80052ca6:	e481                	bnez	s1,80052cae <js_std_getenv+0x40>
quickjs-nuttx/quickjs-libc.c:622
        return JS_UNDEFINED;
    80052ca8:	f002                	sd	zero,32(sp)
    80052caa:	478d                	li	a5,3
    80052cac:	bfe9                	j	80052c86 <js_std_getenv+0x18>
quickjs-nuttx/quickjs-libc.c:624
        return JS_NewString(ctx, str);
    80052cae:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:625
}
    80052cb0:	6406                	ld	s0,64(sp)
    80052cb2:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs-libc.c:624
        return JS_NewString(ctx, str);
    80052cb4:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs-libc.c:625
}
    80052cb6:	74e2                	ld	s1,56(sp)
    80052cb8:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs-libc.c:624
        return JS_NewString(ctx, str);
    80052cba:	cffcc06f          	j	8001f9b8 <JS_NewString>

0000000080052cbe <js_std_gc>:
js_std_gc():
quickjs-nuttx/quickjs-libc.c:720
{
    80052cbe:	7179                	addi	sp,sp,-48
    80052cc0:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:721
    JS_RunGC(JS_GetRuntime(ctx));
    80052cc2:	c1ab80ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80052cc6:	fd2ba0ef          	jal	ra,8000d498 <JS_RunGC>
quickjs-nuttx/quickjs-libc.c:723
}
    80052cca:	70a2                	ld	ra,40(sp)
    80052ccc:	4501                	li	a0,0
    80052cce:	458d                	li	a1,3
    80052cd0:	6145                	addi	sp,sp,48
    80052cd2:	8082                	ret

0000000080052cd4 <js_std_exit>:
js_std_exit():
quickjs-nuttx/quickjs-libc.c:606
    if (JS_ToInt32(ctx, &status, argv[0]))
    80052cd4:	6310                	ld	a2,0(a4)
    80052cd6:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:604
{
    80052cd8:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs-libc.c:606
    if (JS_ToInt32(ctx, &status, argv[0]))
    80052cda:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs-libc.c:604
{
    80052cdc:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:606
    if (JS_ToInt32(ctx, &status, argv[0]))
    80052cde:	edccf0ef          	jal	ra,800223ba <JS_ToInt32>
    80052ce2:	c119                	beqz	a0,80052ce8 <js_std_exit+0x14>
quickjs-nuttx/quickjs-libc.c:607
        status = -1;
    80052ce4:	57fd                	li	a5,-1
    80052ce6:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs-libc.c:608
    exit(status);
    80052ce8:	4572                	lw	a0,28(sp)
    80052cea:	6b70f0ef          	jal	ra,80062ba0 <exit>

0000000080052cee <js_std_init>:
js_std_init():
quickjs-nuttx/quickjs-libc.c:1540
{
    80052cee:	711d                	addi	sp,sp,-96
    80052cf0:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/quickjs-libc.c:1545
    JS_NewClassID(&js_std_file_class_id);
    80052cf2:	000ae917          	auipc	s2,0xae
    80052cf6:	44290913          	addi	s2,s2,1090 # 80101134 <js_std_file_class_id>
quickjs-nuttx/quickjs-libc.c:1540
{
    80052cfa:	e8a2                	sd	s0,80(sp)
    80052cfc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1545
    JS_NewClassID(&js_std_file_class_id);
    80052cfe:	854a                	mv	a0,s2
quickjs-nuttx/quickjs-libc.c:1540
{
    80052d00:	ec86                	sd	ra,88(sp)
    80052d02:	e4a6                	sd	s1,72(sp)
    80052d04:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs-libc.c:1545
    JS_NewClassID(&js_std_file_class_id);
    80052d06:	9b9b80ef          	jal	ra,8000b6be <JS_NewClassID>
quickjs-nuttx/quickjs-libc.c:1547
    JS_NewClass(JS_GetRuntime(ctx), js_std_file_class_id, &js_std_file_class);
    80052d0a:	8522                	mv	a0,s0
    80052d0c:	bd0b80ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80052d10:	00092583          	lw	a1,0(s2)
    80052d14:	000ae617          	auipc	a2,0xae
    80052d18:	34c60613          	addi	a2,a2,844 # 80101060 <js_std_file_class>
    80052d1c:	a09b80ef          	jal	ra,8000b724 <JS_NewClass>
quickjs-nuttx/quickjs-libc.c:1548
    proto = JS_NewObject(ctx);
    80052d20:	8522                	mv	a0,s0
    80052d22:	b02c90ef          	jal	ra,8001c024 <JS_NewObject>
quickjs-nuttx/quickjs-libc.c:1549
    JS_SetPropertyFunctionList(ctx, proto, js_std_file_proto_funcs,
    80052d26:	4745                	li	a4,17
quickjs-nuttx/quickjs-libc.c:1548
    proto = JS_NewObject(ctx);
    80052d28:	862e                	mv	a2,a1
    80052d2a:	e02a                	sd	a0,0(sp)
    80052d2c:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:1549
    JS_SetPropertyFunctionList(ctx, proto, js_std_file_proto_funcs,
    80052d2e:	0002d697          	auipc	a3,0x2d
    80052d32:	33a68693          	addi	a3,a3,826 # 80080068 <js_std_file_proto_funcs>
    80052d36:	85aa                	mv	a1,a0
    80052d38:	8522                	mv	a0,s0
    80052d3a:	9e2ec0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs-libc.c:1551
    JS_SetClassProto(ctx, js_std_file_class_id, proto);
    80052d3e:	6602                	ld	a2,0(sp)
    80052d40:	66a2                	ld	a3,8(sp)
    80052d42:	00092583          	lw	a1,0(s2)
    80052d46:	8522                	mv	a0,s0
    80052d48:	f0bb80ef          	jal	ra,8000bc52 <JS_SetClassProto>
quickjs-nuttx/quickjs-libc.c:1553
    JS_SetModuleExportList(ctx, m, js_std_funcs,
    80052d4c:	85a6                	mv	a1,s1
    80052d4e:	46dd                	li	a3,23
    80052d50:	0002d617          	auipc	a2,0x2d
    80052d54:	53860613          	addi	a2,a2,1336 # 80080288 <js_std_funcs>
    80052d58:	8522                	mv	a0,s0
    80052d5a:	c76ec0ef          	jal	ra,8003f1d0 <JS_SetModuleExportList>
quickjs-nuttx/quickjs-libc.c:1555
    JS_SetModuleExport(ctx, m, "in", js_new_std_file(ctx, stdin, FALSE, FALSE));
    80052d5e:	4501                	li	a0,0
    80052d60:	6010f0ef          	jal	ra,80062b60 <lib_get_stream>
    80052d64:	85aa                	mv	a1,a0
    80052d66:	4681                	li	a3,0
    80052d68:	4601                	li	a2,0
    80052d6a:	8522                	mv	a0,s0
    80052d6c:	8cfff0ef          	jal	ra,8005263a <js_new_std_file>
    80052d70:	872e                	mv	a4,a1
    80052d72:	86aa                	mv	a3,a0
    80052d74:	85a6                	mv	a1,s1
    80052d76:	0001b617          	auipc	a2,0x1b
    80052d7a:	27a60613          	addi	a2,a2,634 # 8006dff0 <qjsc_repl+0x8a40>
    80052d7e:	8522                	mv	a0,s0
    80052d80:	88dcc0ef          	jal	ra,8001f60c <JS_SetModuleExport>
quickjs-nuttx/quickjs-libc.c:1556
    JS_SetModuleExport(ctx, m, "out", js_new_std_file(ctx, stdout, FALSE, FALSE));
    80052d84:	4505                	li	a0,1
    80052d86:	5db0f0ef          	jal	ra,80062b60 <lib_get_stream>
    80052d8a:	85aa                	mv	a1,a0
    80052d8c:	4681                	li	a3,0
    80052d8e:	4601                	li	a2,0
    80052d90:	8522                	mv	a0,s0
    80052d92:	8a9ff0ef          	jal	ra,8005263a <js_new_std_file>
    80052d96:	872e                	mv	a4,a1
    80052d98:	86aa                	mv	a3,a0
    80052d9a:	85a6                	mv	a1,s1
    80052d9c:	0002c617          	auipc	a2,0x2c
    80052da0:	f3460613          	addi	a2,a2,-204 # 8007ecd0 <utf8_min_code+0x148>
    80052da4:	8522                	mv	a0,s0
    80052da6:	867cc0ef          	jal	ra,8001f60c <JS_SetModuleExport>
quickjs-nuttx/quickjs-libc.c:1557
    JS_SetModuleExport(ctx, m, "err", js_new_std_file(ctx, stderr, FALSE, FALSE));
    80052daa:	4509                	li	a0,2
    80052dac:	5b50f0ef          	jal	ra,80062b60 <lib_get_stream>
    80052db0:	85aa                	mv	a1,a0
    80052db2:	4681                	li	a3,0
    80052db4:	4601                	li	a2,0
    80052db6:	8522                	mv	a0,s0
    80052db8:	883ff0ef          	jal	ra,8005263a <js_new_std_file>
    80052dbc:	86aa                	mv	a3,a0
    80052dbe:	872e                	mv	a4,a1
    80052dc0:	8522                	mv	a0,s0
    80052dc2:	85a6                	mv	a1,s1
    80052dc4:	0002c617          	auipc	a2,0x2c
    80052dc8:	f1460613          	addi	a2,a2,-236 # 8007ecd8 <utf8_min_code+0x150>
    80052dcc:	841cc0ef          	jal	ra,8001f60c <JS_SetModuleExport>
quickjs-nuttx/quickjs-libc.c:1559
}
    80052dd0:	60e6                	ld	ra,88(sp)
    80052dd2:	6446                	ld	s0,80(sp)
    80052dd4:	64a6                	ld	s1,72(sp)
    80052dd6:	6906                	ld	s2,64(sp)
    80052dd8:	4501                	li	a0,0
    80052dda:	6125                	addi	sp,sp,96
    80052ddc:	8082                	ret

0000000080052dde <js_std_file_putByte>:
js_std_file_putByte():
quickjs-nuttx/quickjs-libc.c:1271
{
    80052dde:	711d                	addi	sp,sp,-96
    80052de0:	e4a6                	sd	s1,72(sp)
    80052de2:	e0ca                	sd	s2,64(sp)
    80052de4:	ec86                	sd	ra,88(sp)
    80052de6:	e8a2                	sd	s0,80(sp)
    80052de8:	892a                	mv	s2,a0
    80052dea:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs-libc.c:1272
    FILE *f = js_std_file_get(ctx, this_val);
    80052dec:	f44ff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1274
    if (!f)
    80052df0:	ed01                	bnez	a0,80052e08 <js_std_file_putByte+0x2a>
quickjs-nuttx/quickjs-libc.c:1275
        return JS_EXCEPTION;
    80052df2:	4799                	li	a5,6
    80052df4:	f002                	sd	zero,32(sp)
    80052df6:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1280 (discriminator 1)
}
    80052df8:	60e6                	ld	ra,88(sp)
    80052dfa:	6446                	ld	s0,80(sp)
    80052dfc:	7502                	ld	a0,32(sp)
    80052dfe:	75a2                	ld	a1,40(sp)
    80052e00:	64a6                	ld	s1,72(sp)
    80052e02:	6906                	ld	s2,64(sp)
    80052e04:	6125                	addi	sp,sp,96
    80052e06:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1276
    if (JS_ToInt32(ctx, &c, argv[0]))
    80052e08:	6090                	ld	a2,0(s1)
    80052e0a:	6494                	ld	a3,8(s1)
    80052e0c:	842a                	mv	s0,a0
    80052e0e:	086c                	addi	a1,sp,28
    80052e10:	854a                	mv	a0,s2
    80052e12:	da8cf0ef          	jal	ra,800223ba <JS_ToInt32>
    80052e16:	fd71                	bnez	a0,80052df2 <js_std_file_putByte+0x14>
quickjs-nuttx/quickjs-libc.c:1278
    c = fputc(c, f);
    80052e18:	4572                	lw	a0,28(sp)
    80052e1a:	85a2                	mv	a1,s0
    80052e1c:	3570f0ef          	jal	ra,80062972 <fputc>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80052e20:	d82a                	sw	a0,48(sp)
    80052e22:	da02                	sw	zero,52(sp)
    80052e24:	77c2                	ld	a5,48(sp)
    80052e26:	f402                	sd	zero,40(sp)
    80052e28:	f03e                	sd	a5,32(sp)
    80052e2a:	b7f9                	j	80052df8 <js_std_file_putByte+0x1a>

0000000080052e2c <js_std_file_readAsString>:
js_std_file_readAsString():
quickjs-nuttx/quickjs-libc.c:1220
{
    80052e2c:	7171                	addi	sp,sp,-176
    80052e2e:	f122                	sd	s0,160(sp)
    80052e30:	ed26                	sd	s1,152(sp)
    80052e32:	e54e                	sd	s3,136(sp)
    80052e34:	f506                	sd	ra,168(sp)
    80052e36:	e94a                	sd	s2,144(sp)
    80052e38:	842a                	mv	s0,a0
    80052e3a:	89b6                	mv	s3,a3
    80052e3c:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs-libc.c:1221
    FILE *f = js_std_file_get(ctx, this_val);
    80052e3e:	ef2ff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1229
    if (!f)
    80052e42:	e501                	bnez	a0,80052e4a <js_std_file_readAsString+0x1e>
quickjs-nuttx/quickjs-libc.c:1251
            return JS_EXCEPTION;
    80052e44:	e082                	sd	zero,64(sp)
    80052e46:	4799                	li	a5,6
    80052e48:	a899                	j	80052e9e <js_std_file_readAsString+0x72>
    80052e4a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:1232
    if (argc >= 1)
    80052e4c:	07305363          	blez	s3,80052eb2 <js_std_file_readAsString+0x86>
quickjs-nuttx/quickjs-libc.c:1233
        max_size_val = argv[0];
    80052e50:	609c                	ld	a5,0(s1)
    80052e52:	6494                	ld	a3,8(s1)
    80052e54:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs-libc.c:1237
    if (!JS_IsUndefined(max_size_val)) {
    80052e56:	0006879b          	sext.w	a5,a3
    80052e5a:	470d                	li	a4,3
    80052e5c:	04e78e63          	beq	a5,a4,80052eb8 <js_std_file_readAsString+0x8c>
quickjs-nuttx/quickjs-libc.c:1238
        if (JS_ToIndex(ctx, &max_size64, max_size_val))
    80052e60:	7642                	ld	a2,48(sp)
    80052e62:	082c                	addi	a1,sp,24
    80052e64:	8522                	mv	a0,s0
    80052e66:	d9cd10ef          	jal	ra,80024402 <JS_ToIndex>
    80052e6a:	fd69                	bnez	a0,80052e44 <js_std_file_readAsString+0x18>
quickjs-nuttx/quickjs-libc.c:1240
        if (max_size64 < max_size)
    80052e6c:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs-libc.c:1244
    js_std_dbuf_init(ctx, &dbuf);
    80052e6e:	088c                	addi	a1,sp,80
    80052e70:	8522                	mv	a0,s0
    80052e72:	a60ff0ef          	jal	ra,800520d2 <js_std_dbuf_init>
quickjs-nuttx/quickjs-libc.c:1247
        if (c == EOF)
    80052e76:	59fd                	li	s3,-1
quickjs-nuttx/quickjs-libc.c:1245
    while (max_size != 0) {
    80052e78:	c491                	beqz	s1,80052e84 <js_std_file_readAsString+0x58>
quickjs-nuttx/quickjs-libc.c:1246
        c = fgetc(f);
    80052e7a:	854a                	mv	a0,s2
    80052e7c:	6980f0ef          	jal	ra,80062514 <fgetc>
quickjs-nuttx/quickjs-libc.c:1247
        if (c == EOF)
    80052e80:	03351e63          	bne	a0,s3,80052ebc <js_std_file_readAsString+0x90>
quickjs-nuttx/quickjs-libc.c:1255
    obj = JS_NewStringLen(ctx, (const char *)dbuf.buf, dbuf.size);
    80052e84:	6666                	ld	a2,88(sp)
    80052e86:	65c6                	ld	a1,80(sp)
    80052e88:	8522                	mv	a0,s0
    80052e8a:	f81cb0ef          	jal	ra,8001ee0a <JS_NewStringLen>
    80052e8e:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs-libc.c:1256
    dbuf_free(&dbuf);
    80052e90:	0888                	addi	a0,sp,80
quickjs-nuttx/quickjs-libc.c:1255
    obj = JS_NewStringLen(ctx, (const char *)dbuf.buf, dbuf.size);
    80052e92:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:1256
    dbuf_free(&dbuf);
    80052e94:	d13fe0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1257
    return obj;
    80052e98:	7782                	ld	a5,32(sp)
    80052e9a:	e0be                	sd	a5,64(sp)
    80052e9c:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1258
}
    80052e9e:	70aa                	ld	ra,168(sp)
    80052ea0:	740a                	ld	s0,160(sp)
quickjs-nuttx/quickjs-libc.c:1251
            return JS_EXCEPTION;
    80052ea2:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs-libc.c:1258
}
    80052ea4:	6506                	ld	a0,64(sp)
    80052ea6:	65a6                	ld	a1,72(sp)
    80052ea8:	64ea                	ld	s1,152(sp)
    80052eaa:	694a                	ld	s2,144(sp)
    80052eac:	69aa                	ld	s3,136(sp)
    80052eae:	614d                	addi	sp,sp,176
    80052eb0:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1235
        max_size_val = JS_UNDEFINED;
    80052eb2:	f802                	sd	zero,48(sp)
    80052eb4:	468d                	li	a3,3
    80052eb6:	b745                	j	80052e56 <js_std_file_readAsString+0x2a>
quickjs-nuttx/quickjs-libc.c:1236
    max_size = (size_t)-1;
    80052eb8:	54fd                	li	s1,-1
    80052eba:	bf55                	j	80052e6e <js_std_file_readAsString+0x42>
quickjs-nuttx/quickjs-libc.c:1249
        if (dbuf_putc(&dbuf, c)) {
    80052ebc:	0ff57593          	zext.b	a1,a0
    80052ec0:	0888                	addi	a0,sp,80
    80052ec2:	c21fe0ef          	jal	ra,80051ae2 <dbuf_putc>
    80052ec6:	c509                	beqz	a0,80052ed0 <js_std_file_readAsString+0xa4>
quickjs-nuttx/quickjs-libc.c:1250
            dbuf_free(&dbuf);
    80052ec8:	0888                	addi	a0,sp,80
    80052eca:	cddfe0ef          	jal	ra,80051ba6 <dbuf_free>
    80052ece:	bf9d                	j	80052e44 <js_std_file_readAsString+0x18>
quickjs-nuttx/quickjs-libc.c:1253
        max_size--;
    80052ed0:	14fd                	addi	s1,s1,-1
    80052ed2:	b75d                	j	80052e78 <js_std_file_readAsString+0x4c>

0000000080052ed4 <js_std_file_read_write>:
js_std_file_read_write():
quickjs-nuttx/quickjs-libc.c:1157
{
    80052ed4:	7119                	addi	sp,sp,-128
    80052ed6:	f8a2                	sd	s0,112(sp)
    80052ed8:	f4a6                	sd	s1,104(sp)
    80052eda:	ecce                	sd	s3,88(sp)
    80052edc:	fc86                	sd	ra,120(sp)
    80052ede:	f0ca                	sd	s2,96(sp)
    80052ee0:	84aa                	mv	s1,a0
    80052ee2:	843a                	mv	s0,a4
    80052ee4:	89be                	mv	s3,a5
quickjs-nuttx/quickjs-libc.c:1158
    FILE *f = js_std_file_get(ctx, this_val);
    80052ee6:	e4aff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1163
    if (!f)
    80052eea:	ed09                	bnez	a0,80052f04 <js_std_file_read_write+0x30>
quickjs-nuttx/quickjs-libc.c:1164
        return JS_EXCEPTION;
    80052eec:	4799                	li	a5,6
    80052eee:	f802                	sd	zero,48(sp)
    80052ef0:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:1179 (discriminator 1)
}
    80052ef2:	70e6                	ld	ra,120(sp)
    80052ef4:	7446                	ld	s0,112(sp)
    80052ef6:	7542                	ld	a0,48(sp)
    80052ef8:	75e2                	ld	a1,56(sp)
    80052efa:	74a6                	ld	s1,104(sp)
    80052efc:	7906                	ld	s2,96(sp)
    80052efe:	69e6                	ld	s3,88(sp)
    80052f00:	6109                	addi	sp,sp,128
    80052f02:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1165
    if (JS_ToIndex(ctx, &pos, argv[1]))
    80052f04:	6810                	ld	a2,16(s0)
    80052f06:	6c14                	ld	a3,24(s0)
    80052f08:	892a                	mv	s2,a0
    80052f0a:	082c                	addi	a1,sp,24
    80052f0c:	8526                	mv	a0,s1
    80052f0e:	cf4d10ef          	jal	ra,80024402 <JS_ToIndex>
    80052f12:	fd69                	bnez	a0,80052eec <js_std_file_read_write+0x18>
quickjs-nuttx/quickjs-libc.c:1167
    if (JS_ToIndex(ctx, &len, argv[2]))
    80052f14:	7010                	ld	a2,32(s0)
    80052f16:	7414                	ld	a3,40(s0)
    80052f18:	100c                	addi	a1,sp,32
    80052f1a:	8526                	mv	a0,s1
    80052f1c:	ce6d10ef          	jal	ra,80024402 <JS_ToIndex>
    80052f20:	f571                	bnez	a0,80052eec <js_std_file_read_write+0x18>
quickjs-nuttx/quickjs-libc.c:1169
    buf = JS_GetArrayBuffer(ctx, &size, argv[0]);
    80052f22:	6010                	ld	a2,0(s0)
    80052f24:	6414                	ld	a3,8(s0)
    80052f26:	102c                	addi	a1,sp,40
    80052f28:	8526                	mv	a0,s1
    80052f2a:	af1f90ef          	jal	ra,8004ca1a <JS_GetArrayBuffer>
quickjs-nuttx/quickjs-libc.c:1170
    if (!buf)
    80052f2e:	dd5d                	beqz	a0,80052eec <js_std_file_read_write+0x18>
quickjs-nuttx/quickjs-libc.c:1172
    if (pos + len > size)
    80052f30:	67e2                	ld	a5,24(sp)
    80052f32:	7602                	ld	a2,32(sp)
    80052f34:	7722                	ld	a4,40(sp)
    80052f36:	00c786b3          	add	a3,a5,a2
    80052f3a:	00d77c63          	bgeu	a4,a3,80052f52 <js_std_file_read_write+0x7e>
quickjs-nuttx/quickjs-libc.c:1173
        return JS_ThrowRangeError(ctx, "read/write array buffer overflow");
    80052f3e:	0002c597          	auipc	a1,0x2c
    80052f42:	da258593          	addi	a1,a1,-606 # 8007ece0 <utf8_min_code+0x158>
    80052f46:	8526                	mv	a0,s1
    80052f48:	987c60ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80052f4c:	f82a                	sd	a0,48(sp)
    80052f4e:	fc2e                	sd	a1,56(sp)
    80052f50:	b74d                	j	80052ef2 <js_std_file_read_write+0x1e>
quickjs-nuttx/quickjs-libc.c:1175
        ret = fwrite(buf + pos, 1, len, f);
    80052f52:	953e                	add	a0,a0,a5
    80052f54:	86ca                	mv	a3,s2
    80052f56:	4585                	li	a1,1
quickjs-nuttx/quickjs-libc.c:1174
    if (magic)
    80052f58:	02098063          	beqz	s3,80052f78 <js_std_file_read_write+0xa4>
quickjs-nuttx/quickjs-libc.c:1175
        ret = fwrite(buf + pos, 1, len, f);
    80052f5c:	6080f0ef          	jal	ra,80062564 <fwrite>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80052f60:	0005079b          	sext.w	a5,a0
    80052f64:	00f51d63          	bne	a0,a5,80052f7e <js_std_file_read_write+0xaa>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80052f68:	c282                	sw	zero,68(sp)
    80052f6a:	c0be                	sw	a5,64(sp)
    80052f6c:	6706                	ld	a4,64(sp)
    80052f6e:	f83a                	sd	a4,48(sp)
    80052f70:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80052f72:	d83e                	sw	a5,48(sp)
    80052f74:	fc3a                	sd	a4,56(sp)
    80052f76:	bfb5                	j	80052ef2 <js_std_file_read_write+0x1e>
js_std_file_read_write():
quickjs-nuttx/quickjs-libc.c:1177
        ret = fread(buf + pos, 1, len, f);
    80052f78:	2d60f0ef          	jal	ra,8006224e <fread>
    80052f7c:	b7d5                	j	80052f60 <js_std_file_read_write+0x8c>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80052f7e:	d22577d3          	fcvt.d.l	fa5,a0
    80052f82:	471d                	li	a4,7
    80052f84:	e20787d3          	fmv.x.d	a5,fa5
js_std_file_read_write():
quickjs-nuttx/quickjs.h:230
    return v;
    80052f88:	b83e                	fsd	fa5,48(sp)
    80052f8a:	2781                	sext.w	a5,a5
    80052f8c:	b7dd                	j	80052f72 <js_std_file_read_write+0x9e>

0000000080052f8e <js_std_file_clearerr>:
js_std_file_clearerr():
quickjs-nuttx/quickjs-libc.c:1138
{
    80052f8e:	7179                	addi	sp,sp,-48
    80052f90:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:1139
    FILE *f = js_std_file_get(ctx, this_val);
    80052f92:	d9eff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1140
    if (!f)
    80052f96:	e909                	bnez	a0,80052fa8 <js_std_file_clearerr+0x1a>
quickjs-nuttx/quickjs-libc.c:1141
        return JS_EXCEPTION;
    80052f98:	e802                	sd	zero,16(sp)
    80052f9a:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1144
}
    80052f9c:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:1143
    return JS_UNDEFINED;
    80052f9e:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1144
}
    80052fa0:	6542                	ld	a0,16(sp)
    80052fa2:	65e2                	ld	a1,24(sp)
    80052fa4:	6145                	addi	sp,sp,48
    80052fa6:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1142
    clearerr(f);
    80052fa8:	3210f0ef          	jal	ra,80062ac8 <clearerr>
quickjs-nuttx/quickjs-libc.c:1143
    return JS_UNDEFINED;
    80052fac:	478d                	li	a5,3
    80052fae:	e802                	sd	zero,16(sp)
    80052fb0:	b7f5                	j	80052f9c <js_std_file_clearerr+0xe>

0000000080052fb2 <js_std_file_error>:
js_std_file_error():
quickjs-nuttx/quickjs-libc.c:1129
{
    80052fb2:	7139                	addi	sp,sp,-64
    80052fb4:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs-libc.c:1130
    FILE *f = js_std_file_get(ctx, this_val);
    80052fb6:	d7aff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1131
    if (!f)
    80052fba:	e909                	bnez	a0,80052fcc <js_std_file_error+0x1a>
quickjs-nuttx/quickjs-libc.c:1132
        return JS_EXCEPTION;
    80052fbc:	e802                	sd	zero,16(sp)
    80052fbe:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1134
}
    80052fc0:	70e2                	ld	ra,56(sp)
    80052fc2:	ec3e                	sd	a5,24(sp)
    80052fc4:	6542                	ld	a0,16(sp)
    80052fc6:	65e2                	ld	a1,24(sp)
    80052fc8:	6121                	addi	sp,sp,64
    80052fca:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1133
    return JS_NewBool(ctx, ferror(f));
    80052fcc:	2e50f0ef          	jal	ra,80062ab0 <ferror>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80052fd0:	00a03533          	snez	a0,a0
    80052fd4:	d202                	sw	zero,36(sp)
    80052fd6:	d02a                	sw	a0,32(sp)
    80052fd8:	7782                	ld	a5,32(sp)
    80052fda:	e83e                	sd	a5,16(sp)
    80052fdc:	4785                	li	a5,1
    80052fde:	b7cd                	j	80052fc0 <js_std_file_error+0xe>

0000000080052fe0 <js_std_file_fileno>:
js_std_file_fileno():
quickjs-nuttx/quickjs-libc.c:1148
{
    80052fe0:	7139                	addi	sp,sp,-64
    80052fe2:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs-libc.c:1149
    FILE *f = js_std_file_get(ctx, this_val);
    80052fe4:	d4cff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1150
    if (!f)
    80052fe8:	e909                	bnez	a0,80052ffa <js_std_file_fileno+0x1a>
quickjs-nuttx/quickjs-libc.c:1151
        return JS_EXCEPTION;
    80052fea:	4799                	li	a5,6
    80052fec:	e802                	sd	zero,16(sp)
    80052fee:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1153 (discriminator 1)
}
    80052ff0:	70e2                	ld	ra,56(sp)
    80052ff2:	6542                	ld	a0,16(sp)
    80052ff4:	65e2                	ld	a1,24(sp)
    80052ff6:	6121                	addi	sp,sp,64
    80052ff8:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1152
    return JS_NewInt32(ctx, fileno(f));
    80052ffa:	1c00e0ef          	jal	ra,800611ba <fileno>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80052ffe:	d02a                	sw	a0,32(sp)
