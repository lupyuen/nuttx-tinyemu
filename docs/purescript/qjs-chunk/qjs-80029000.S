    80028000:	67a2                	ld	a5,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80028002:	4801                	li	a6,0
    80028004:	85ba                	mv	a1,a4
    80028006:	863e                	mv	a2,a5
    80028008:	03c00693          	li	a3,60
    8002800c:	8522                	mv	a0,s0
    8002800e:	e0ba                	sd	a4,64(sp)
    80028010:	e4be                	sd	a5,72(sp)
    80028012:	a99ee0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80028016:	e8aa                	sd	a0,80(sp)
    80028018:	ecae                	sd	a1,88(sp)
    8002801a:	f02a                	sd	a0,32(sp)
    8002801c:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8002801e:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80028022:	872e                	mv	a4,a1
js_function_constructor():
quickjs-nuttx/quickjs.c:38255
        if (JS_IsException(proto))
    80028024:	07278463          	beq	a5,s2,8002808c <js_function_constructor+0x1de>
quickjs-nuttx/quickjs.c:38257
        if (!JS_IsObject(proto)) {
    80028028:	56fd                	li	a3,-1
    8002802a:	04d78163          	beq	a5,a3,8002806c <js_function_constructor+0x1be>
quickjs-nuttx/quickjs.c:38259
            JS_FreeValue(ctx, proto);
    8002802e:	85aa                	mv	a1,a0
    80028030:	863a                	mv	a2,a4
    80028032:	8522                	mv	a0,s0
    80028034:	f6ae30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38260
            realm = JS_GetFunctionRealm(ctx, new_target);
    80028038:	6582                	ld	a1,0(sp)
    8002803a:	6622                	ld	a2,8(sp)
    8002803c:	8522                	mv	a0,s0
    8002803e:	eeef10ef          	jal	ra,8001972c <JS_GetFunctionRealm>
quickjs-nuttx/quickjs.c:38261
            if (!realm)
    80028042:	c529                	beqz	a0,8002808c <js_function_constructor+0x1de>
quickjs-nuttx/quickjs.c:38263
            proto = JS_DupValue(ctx, realm->class_proto[func_kind_to_class_id[func_kind]]);
    80028044:	020a1793          	slli	a5,s4,0x20
    80028048:	01f7da13          	srli	s4,a5,0x1f
    8002804c:	0006c797          	auipc	a5,0x6c
    80028050:	19478793          	addi	a5,a5,404 # 800941e0 <func_kind_to_class_id>
    80028054:	9a3e                	add	s4,s4,a5
    80028056:	000a5703          	lhu	a4,0(s4)
    8002805a:	613c                	ld	a5,64(a0)
    8002805c:	0712                	slli	a4,a4,0x4
    8002805e:	97ba                	add	a5,a5,a4
    80028060:	6388                	ld	a0,0(a5)
    80028062:	678c                	ld	a1,8(a5)
    80028064:	bb6e20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80028068:	f02a                	sd	a0,32(sp)
    8002806a:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:38265
        ret = JS_SetPrototypeInternal(ctx, obj, proto, TRUE);
    8002806c:	75c2                	ld	a1,48(sp)
    8002806e:	7662                	ld	a2,56(sp)
    80028070:	7682                	ld	a3,32(sp)
    80028072:	4785                	li	a5,1
    80028074:	8522                	mv	a0,s0
    80028076:	f43a                	sd	a4,40(sp)
    80028078:	cf0f20ef          	jal	ra,8001a568 <JS_SetPrototypeInternal>
quickjs-nuttx/quickjs.c:38266
        JS_FreeValue(ctx, proto);
    8002807c:	7582                	ld	a1,32(sp)
    8002807e:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:38265
        ret = JS_SetPrototypeInternal(ctx, obj, proto, TRUE);
    80028080:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:38266
        JS_FreeValue(ctx, proto);
    80028082:	8522                	mv	a0,s0
    80028084:	f1ae30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38267
        if (ret < 0)
    80028088:	f4095ce3          	bgez	s2,80027fe0 <js_function_constructor+0x132>
quickjs-nuttx/quickjs.c:38275
    JS_FreeValue(ctx, obj);
    8002808c:	75c2                	ld	a1,48(sp)
    8002808e:	8626                	mv	a2,s1
    80028090:	8522                	mv	a0,s0
    80028092:	f0ce30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38276
    return JS_EXCEPTION;
    80028096:	4799                	li	a5,6
    80028098:	e082                	sd	zero,64(sp)
    8002809a:	b7b1                	j	80027fe6 <js_function_constructor+0x138>

000000008002809c <js_global_eval>:
js_global_eval():
quickjs-nuttx/quickjs.c:36922
    return JS_EvalObject(ctx, ctx->global_obj, argv[0], JS_EVAL_TYPE_INDIRECT, -1);
    8002809c:	6314                	ld	a3,0(a4)
    8002809e:	16853583          	ld	a1,360(a0)
    800280a2:	6718                	ld	a4,8(a4)
    800280a4:	17053603          	ld	a2,368(a0)
quickjs-nuttx/quickjs.c:36921
{
    800280a8:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:36922
    return JS_EvalObject(ctx, ctx->global_obj, argv[0], JS_EVAL_TYPE_INDIRECT, -1);
    800280aa:	587d                	li	a6,-1
    800280ac:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:36923
}
    800280ae:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:36922
    return JS_EvalObject(ctx, ctx->global_obj, argv[0], JS_EVAL_TYPE_INDIRECT, -1);
    800280b0:	d57ff06f          	j	80027e06 <JS_EvalObject>

00000000800280b4 <JS_AtomIsNumericIndex1>:
JS_AtomIsNumericIndex1():
quickjs-nuttx/quickjs.c:3159
{
    800280b4:	7171                	addi	sp,sp,-176
    800280b6:	f506                	sd	ra,168(sp)
    800280b8:	f122                	sd	s0,160(sp)
    800280ba:	ed26                	sd	s1,152(sp)
    800280bc:	e94a                	sd	s2,144(sp)
    800280be:	e54e                	sd	s3,136(sp)
    800280c0:	e152                	sd	s4,128(sp)
    800280c2:	fcd6                	sd	s5,120(sp)
    800280c4:	b4a2                	fsd	fs0,104(sp)
quickjs-nuttx/quickjs.c:3166
    if (__JS_AtomIsTaggedInt(atom))
    800280c6:	0205d563          	bgez	a1,800280f0 <JS_AtomIsNumericIndex1+0x3c>
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    800280ca:	1586                	slli	a1,a1,0x21
    800280cc:	9185                	srli	a1,a1,0x21
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800280ce:	da02                	sw	zero,52(sp)
    800280d0:	d82e                	sw	a1,48(sp)
    800280d2:	77c2                	ld	a5,48(sp)
    800280d4:	f402                	sd	zero,40(sp)
    800280d6:	f03e                	sd	a5,32(sp)
JS_AtomIsNumericIndex1():
quickjs-nuttx/quickjs.c:3237 (discriminator 6)
}
    800280d8:	70aa                	ld	ra,168(sp)
    800280da:	740a                	ld	s0,160(sp)
    800280dc:	7502                	ld	a0,32(sp)
    800280de:	75a2                	ld	a1,40(sp)
    800280e0:	64ea                	ld	s1,152(sp)
    800280e2:	694a                	ld	s2,144(sp)
    800280e4:	69aa                	ld	s3,136(sp)
    800280e6:	6a0a                	ld	s4,128(sp)
    800280e8:	7ae6                	ld	s5,120(sp)
    800280ea:	3426                	fld	fs0,104(sp)
    800280ec:	614d                	addi	sp,sp,176
    800280ee:	8082                	ret
quickjs-nuttx/quickjs.c:3160
    JSRuntime *rt = ctx->rt;
    800280f0:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:3168
    assert(atom < rt->atom_size);
    800280f2:	84aa                	mv	s1,a0
    800280f4:	4bb8                	lw	a4,80(a5)
    800280f6:	00e5ec63          	bltu	a1,a4,8002810e <JS_AtomIsNumericIndex1+0x5a>
quickjs-nuttx/quickjs.c:3168 (discriminator 1)
    800280fa:	6585                	lui	a1,0x1
    800280fc:	4601                	li	a2,0
    800280fe:	c6058593          	addi	a1,a1,-928 # c60 <asinh-0x7ffff3a0>
    80028102:	00041517          	auipc	a0,0x41
    80028106:	49650513          	addi	a0,a0,1174 # 80069598 <qjsc_repl+0x3fe8>
    8002810a:	053380ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:3169 (discriminator 2)
    p1 = rt->atom_array[atom];
    8002810e:	73bc                	ld	a5,96(a5)
    80028110:	02059713          	slli	a4,a1,0x20
    80028114:	01d75593          	srli	a1,a4,0x1d
    80028118:	95be                	add	a1,a1,a5
    8002811a:	6180                	ld	s0,0(a1)
quickjs-nuttx/quickjs.c:3170 (discriminator 2)
    if (p1->atom_type != JS_ATOM_TYPE_STRING)
    8002811c:	c0000737          	lui	a4,0xc0000
    80028120:	441c                	lw	a5,8(s0)
    80028122:	8ff9                	and	a5,a5,a4
    80028124:	2781                	sext.w	a5,a5
    80028126:	40000737          	lui	a4,0x40000
    8002812a:	00e78563          	beq	a5,a4,80028134 <JS_AtomIsNumericIndex1+0x80>
quickjs-nuttx/quickjs.c:3235
        return JS_UNDEFINED;
    8002812e:	f002                	sd	zero,32(sp)
    80028130:	478d                	li	a5,3
    80028132:	a0e5                	j	8002821a <JS_AtomIsNumericIndex1+0x166>
quickjs-nuttx/quickjs.c:3173
    len = p->len;
    80028134:	4058                	lw	a4,4(s0)
quickjs-nuttx/quickjs.c:3175
        const uint16_t *r = p->u.str16, *r_end = p->u.str16 + len;
    80028136:	01040513          	addi	a0,s0,16
quickjs-nuttx/quickjs.c:3173
    len = p->len;
    8002813a:	02171793          	slli	a5,a4,0x21
quickjs-nuttx/quickjs.c:3174
    if (p->is_wide_char) {
    8002813e:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:3173
    len = p->len;
    80028140:	0217d693          	srli	a3,a5,0x21
quickjs-nuttx/quickjs.c:3174
    if (p->is_wide_char) {
    80028144:	0a075063          	bgez	a4,800281e4 <JS_AtomIsNumericIndex1+0x130>
quickjs-nuttx/quickjs.c:3175
        const uint16_t *r = p->u.str16, *r_end = p->u.str16 + len;
    80028148:	00169793          	slli	a5,a3,0x1
    8002814c:	97aa                	add	a5,a5,a0
quickjs-nuttx/quickjs.c:3176
        if (r >= r_end)
    8002814e:	fef570e3          	bgeu	a0,a5,8002812e <JS_AtomIsNumericIndex1+0x7a>
quickjs-nuttx/quickjs.c:3178
        c = *r;
    80028152:	01045703          	lhu	a4,16(s0)
quickjs-nuttx/quickjs.c:3179
        if (c == '-') {
    80028156:	02d00613          	li	a2,45
    8002815a:	00c71d63          	bne	a4,a2,80028174 <JS_AtomIsNumericIndex1+0xc0>
quickjs-nuttx/quickjs.c:3183
            c = *r;
    8002815e:	01245703          	lhu	a4,18(s0)
quickjs-nuttx/quickjs.c:3185
            if (c == '0' && len == 2)
    80028162:	03000613          	li	a2,48
quickjs-nuttx/quickjs.c:3182
            r++;
    80028166:	01240513          	addi	a0,s0,18
quickjs-nuttx/quickjs.c:3185
            if (c == '0' && len == 2)
    8002816a:	00c71563          	bne	a4,a2,80028174 <JS_AtomIsNumericIndex1+0xc0>
quickjs-nuttx/quickjs.c:3185 (discriminator 1)
    8002816e:	4609                	li	a2,2
    80028170:	08c68f63          	beq	a3,a2,8002820e <JS_AtomIsNumericIndex1+0x15a>
quickjs-nuttx/quickjs.c:3189
        if (!is_num(c)) {
    80028174:	fd07069b          	addiw	a3,a4,-48
    80028178:	4625                	li	a2,9
    8002817a:	02d67d63          	bgeu	a2,a3,800281b4 <JS_AtomIsNumericIndex1+0x100>
quickjs-nuttx/quickjs.c:3191
            const uint16_t nfinity16[7] = { 'n', 'f', 'i', 'n', 'i', 't', 'y' };
    8002817e:	0006c697          	auipc	a3,0x6c
    80028182:	aca6b683          	ld	a3,-1334(a3) # 80093c48 <_erodata+0xd6>
    80028186:	e8b6                	sd	a3,80(sp)
    80028188:	007406b7          	lui	a3,0x740
    8002818c:	06968693          	addi	a3,a3,105 # 740069 <asinh-0x7f8bff97>
    80028190:	ccb6                	sw	a3,88(sp)
    80028192:	07900693          	li	a3,121
    80028196:	04d11e23          	sh	a3,92(sp)
quickjs-nuttx/quickjs.c:3192
            if (!(c =='I' && (r_end - r) == 8 &&
    8002819a:	04900693          	li	a3,73
    8002819e:	f8d718e3          	bne	a4,a3,8002812e <JS_AtomIsNumericIndex1+0x7a>
quickjs-nuttx/quickjs.c:3192 (discriminator 1)
    800281a2:	17c1                	addi	a5,a5,-16
    800281a4:	f8a795e3          	bne	a5,a0,8002812e <JS_AtomIsNumericIndex1+0x7a>
quickjs-nuttx/quickjs.c:3193 (discriminator 2)
                  !memcmp(r + 1, nfinity16, sizeof(nfinity16))))
    800281a8:	4639                	li	a2,14
    800281aa:	088c                	addi	a1,sp,80
    800281ac:	0509                	addi	a0,a0,2
quickjs-nuttx/quickjs.c:3214 (discriminator 2)
                  !memcmp(r + 1, "nfinity", 7)))
    800281ae:	2273b0ef          	jal	ra,80063bd4 <memcmp>
quickjs-nuttx/quickjs.c:3213 (discriminator 2)
            if (!(c =='I' && (r_end - r) == 8 &&
    800281b2:	fd35                	bnez	a0,8002812e <JS_AtomIsNumericIndex1+0x7a>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    800281b4:	401c                	lw	a5,0(s0)
JS_ToNumber():
quickjs-nuttx/quickjs.c:10603
    return JS_ToNumberFree(ctx, JS_DupValue(ctx, val));
    800281b6:	85a2                	mv	a1,s0
    800281b8:	5665                	li	a2,-7
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    800281ba:	2785                	addiw	a5,a5,1
    800281bc:	c01c                	sw	a5,0(s0)
JS_ToNumber():
quickjs-nuttx/quickjs.c:10603
    800281be:	8526                	mv	a0,s1
    800281c0:	57e5                	li	a5,-7
    800281c2:	ecbe                	sd	a5,88(sp)
    800281c4:	e8a2                	sd	s0,80(sp)
    800281c6:	8c4fa0ef          	jal	ra,8002228a <JS_ToNumberFree>
    800281ca:	e02a                	sd	a0,0(sp)
    800281cc:	e42e                	sd	a1,8(sp)
JS_AtomIsNumericIndex1():
quickjs-nuttx/quickjs.c:3222
    if (JS_IsException(num))
    800281ce:	0005879b          	sext.w	a5,a1
    800281d2:	4a99                	li	s5,6
JS_ToNumber():
quickjs-nuttx/quickjs.c:10603
    return JS_ToNumberFree(ctx, JS_DupValue(ctx, val));
    800281d4:	f2050453          	fmv.d.x	fs0,a0
    800281d8:	892e                	mv	s2,a1
JS_AtomIsNumericIndex1():
quickjs-nuttx/quickjs.c:3222
    if (JS_IsException(num))
    800281da:	07579563          	bne	a5,s5,80028244 <JS_AtomIsNumericIndex1+0x190>
quickjs-nuttx/quickjs.c:3232
        return num;
    800281de:	b022                	fsd	fs0,32(sp)
    800281e0:	f44a                	sd	s2,40(sp)
    800281e2:	bddd                	j	800280d8 <JS_AtomIsNumericIndex1+0x24>
quickjs-nuttx/quickjs.c:3197
        const uint8_t *r = p->u.str8, *r_end = p->u.str8 + len;
    800281e4:	00d507b3          	add	a5,a0,a3
quickjs-nuttx/quickjs.c:3198
        if (r >= r_end)
    800281e8:	f4f573e3          	bgeu	a0,a5,8002812e <JS_AtomIsNumericIndex1+0x7a>
quickjs-nuttx/quickjs.c:3200
        c = *r;
    800281ec:	01044703          	lbu	a4,16(s0)
quickjs-nuttx/quickjs.c:3201
        if (c == '-') {
    800281f0:	02d00613          	li	a2,45
    800281f4:	02c71563          	bne	a4,a2,8002821e <JS_AtomIsNumericIndex1+0x16a>
quickjs-nuttx/quickjs.c:3205
            c = *r;
    800281f8:	01144703          	lbu	a4,17(s0)
quickjs-nuttx/quickjs.c:3207
            if (c == '0' && len == 2) {
    800281fc:	03000613          	li	a2,48
quickjs-nuttx/quickjs.c:3204
            r++;
    80028200:	01140513          	addi	a0,s0,17
quickjs-nuttx/quickjs.c:3207
            if (c == '0' && len == 2) {
    80028204:	00c71d63          	bne	a4,a2,8002821e <JS_AtomIsNumericIndex1+0x16a>
quickjs-nuttx/quickjs.c:3207 (discriminator 1)
    80028208:	4609                	li	a2,2
    8002820a:	00c69a63          	bne	a3,a2,8002821e <JS_AtomIsNumericIndex1+0x16a>
quickjs-nuttx/quickjs.h:230
    return v;
    8002820e:	0006c797          	auipc	a5,0x6c
    80028212:	9d27b787          	fld	fa5,-1582(a5) # 80093be0 <_erodata+0x6e>
    80028216:	b03e                	fsd	fa5,32(sp)
    80028218:	479d                	li	a5,7
quickjs-nuttx/quickjs.c:3235
        return JS_UNDEFINED;
    8002821a:	f43e                	sd	a5,40(sp)
    8002821c:	bd75                	j	800280d8 <JS_AtomIsNumericIndex1+0x24>
quickjs-nuttx/quickjs.c:3212
        if (!is_num(c)) {
    8002821e:	fd07069b          	addiw	a3,a4,-48
    80028222:	4625                	li	a2,9
    80028224:	f8d678e3          	bgeu	a2,a3,800281b4 <JS_AtomIsNumericIndex1+0x100>
quickjs-nuttx/quickjs.c:3213
            if (!(c =='I' && (r_end - r) == 8 &&
    80028228:	04900693          	li	a3,73
    8002822c:	f0d711e3          	bne	a4,a3,8002812e <JS_AtomIsNumericIndex1+0x7a>
quickjs-nuttx/quickjs.c:3213 (discriminator 1)
    80028230:	17e1                	addi	a5,a5,-8
    80028232:	eea79ee3          	bne	a5,a0,8002812e <JS_AtomIsNumericIndex1+0x7a>
quickjs-nuttx/quickjs.c:3214 (discriminator 2)
                  !memcmp(r + 1, "nfinity", 7)))
    80028236:	461d                	li	a2,7
    80028238:	00043597          	auipc	a1,0x43
    8002823c:	fc058593          	addi	a1,a1,-64 # 8006b1f8 <qjsc_repl+0x5c48>
    80028240:	0505                	addi	a0,a0,1
    80028242:	b7b5                	j	800281ae <JS_AtomIsNumericIndex1+0xfa>
quickjs-nuttx/quickjs.c:3224
    str = JS_ToString(ctx, num);
    80028244:	85aa                	mv	a1,a0
    80028246:	864a                	mv	a2,s2
    80028248:	8526                	mv	a0,s1
    8002824a:	d32f80ef          	jal	ra,8002077c <JS_ToString>
quickjs-nuttx/quickjs.c:3225
    if (JS_IsException(str)) {
    8002824e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:3224
    str = JS_ToString(ctx, num);
    80028252:	8a2a                	mv	s4,a0
    80028254:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:3225
    if (JS_IsException(str)) {
    80028256:	01579a63          	bne	a5,s5,8002826a <JS_AtomIsNumericIndex1+0x1b6>
quickjs-nuttx/quickjs.c:3226
        JS_FreeValue(ctx, num);
    8002825a:	6582                	ld	a1,0(sp)
    8002825c:	6622                	ld	a2,8(sp)
    8002825e:	8526                	mv	a0,s1
    80028260:	d3ee30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3227
        return str;
    80028264:	f052                	sd	s4,32(sp)
    80028266:	f44e                	sd	s3,40(sp)
    80028268:	bd85                	j	800280d8 <JS_AtomIsNumericIndex1+0x24>
quickjs-nuttx/quickjs.c:3229
    ret = js_string_compare(ctx, p, JS_VALUE_GET_STRING(str));
    8002826a:	85aa                	mv	a1,a0
    8002826c:	8522                	mv	a0,s0
    8002826e:	ed6e20ef          	jal	ra,8000a944 <js_string_compare.constprop.0>
    80028272:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3230
    JS_FreeValue(ctx, str);
    80028274:	85d2                	mv	a1,s4
    80028276:	864e                	mv	a2,s3
    80028278:	8526                	mv	a0,s1
    8002827a:	d24e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3231
    if (ret == 0) {
    8002827e:	d025                	beqz	s0,800281de <JS_AtomIsNumericIndex1+0x12a>
quickjs-nuttx/quickjs.c:3234
        JS_FreeValue(ctx, num);
    80028280:	6582                	ld	a1,0(sp)
    80028282:	6622                	ld	a2,8(sp)
    80028284:	8526                	mv	a0,s1
    80028286:	d18e30ef          	jal	ra,8000b79e <JS_FreeValue>
    8002828a:	b555                	j	8002812e <JS_AtomIsNumericIndex1+0x7a>

000000008002828c <JS_AtomIsNumericIndex>:
JS_AtomIsNumericIndex():
quickjs-nuttx/quickjs.c:3241
{
    8002828c:	1101                	addi	sp,sp,-32
    8002828e:	e822                	sd	s0,16(sp)
    80028290:	ec06                	sd	ra,24(sp)
    80028292:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3243
    num = JS_AtomIsNumericIndex1(ctx, atom);
    80028294:	e21ff0ef          	jal	ra,800280b4 <JS_AtomIsNumericIndex1>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80028298:	0005871b          	sext.w	a4,a1
JS_AtomIsNumericIndex():
quickjs-nuttx/quickjs.c:3244
    if (likely(JS_IsUndefined(num)))
    8002829c:	468d                	li	a3,3
    8002829e:	02d70163          	beq	a4,a3,800282c0 <JS_AtomIsNumericIndex+0x34>
quickjs-nuttx/quickjs.c:3246
    if (JS_IsException(num))
    800282a2:	4699                	li	a3,6
    800282a4:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:3247
        return -1;
    800282a6:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:3246
    if (JS_IsException(num))
    800282a8:	00d70863          	beq	a4,a3,800282b8 <JS_AtomIsNumericIndex+0x2c>
    800282ac:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:3248
    JS_FreeValue(ctx, num);
    800282ae:	8522                	mv	a0,s0
    800282b0:	85be                	mv	a1,a5
    800282b2:	cece30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:3249
    return TRUE;
    800282b6:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:3250
}
    800282b8:	60e2                	ld	ra,24(sp)
    800282ba:	6442                	ld	s0,16(sp)
    800282bc:	6105                	addi	sp,sp,32
    800282be:	8082                	ret
quickjs-nuttx/quickjs.c:3245
        return FALSE;
    800282c0:	4501                	li	a0,0
    800282c2:	bfdd                	j	800282b8 <JS_AtomIsNumericIndex+0x2c>

00000000800282c4 <JS_CreateProperty>:
JS_CreateProperty():
quickjs-nuttx/quickjs.c:8845
{
    800282c4:	7115                	addi	sp,sp,-224
    800282c6:	e1a2                	sd	s0,192(sp)
    800282c8:	fd26                	sd	s1,184(sp)
    800282ca:	f94a                	sd	s2,176(sp)
    800282cc:	f54e                	sd	s3,168(sp)
    800282ce:	e586                	sd	ra,200(sp)
    800282d0:	f152                	sd	s4,160(sp)
quickjs-nuttx/quickjs.c:8850
    if (p->is_exotic) {
    800282d2:	0055c303          	lbu	t1,5(a1)
quickjs-nuttx/quickjs.c:8845
{
    800282d6:	f442                	sd	a6,40(sp)
    800282d8:	f836                	sd	a3,48(sp)
    800282da:	fc3a                	sd	a4,56(sp)
    800282dc:	f03e                	sd	a5,32(sp)
    800282de:	edc6                	sd	a7,216(sp)
quickjs-nuttx/quickjs.c:8850
    if (p->is_exotic) {
    800282e0:	00437813          	andi	a6,t1,4
quickjs-nuttx/quickjs.c:8845
{
    800282e4:	542e                	lw	s0,232(sp)
    800282e6:	892a                	mv	s2,a0
    800282e8:	84ae                	mv	s1,a1
    800282ea:	89b2                	mv	s3,a2
quickjs-nuttx/quickjs.c:8850
    if (p->is_exotic) {
    800282ec:	0c080363          	beqz	a6,800283b2 <JS_CreateProperty+0xee>
quickjs-nuttx/quickjs.c:8851
        if (p->class_id == JS_CLASS_ARRAY) {
    800282f0:	0065d803          	lhu	a6,6(a1)
    800282f4:	4e09                	li	t3,2
    800282f6:	17c81f63          	bne	a6,t3,80028474 <JS_CreateProperty+0x1b0>
quickjs-nuttx/quickjs.c:8854
            if (p->fast_array) {
    800282fa:	00837793          	andi	a5,t1,8
    800282fe:	12078c63          	beqz	a5,80028436 <JS_CreateProperty+0x172>
quickjs-nuttx/quickjs.c:8855
                if (__JS_AtomIsTaggedInt(prop)) {
    80028302:	0a065463          	bgez	a2,800283aa <JS_CreateProperty+0xe6>
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    80028306:	02161793          	slli	a5,a2,0x21
JS_CreateProperty():
quickjs-nuttx/quickjs.c:8857
                    if (idx == p->u.array.count) {
    8002830a:	41b0                	lw	a2,64(a1)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    8002830c:	9385                	srli	a5,a5,0x21
JS_CreateProperty():
quickjs-nuttx/quickjs.c:8856
                    idx = __JS_AtomToUInt32(prop);
    8002830e:	c6be                	sw	a5,76(sp)
quickjs-nuttx/quickjs.c:8857
                    if (idx == p->u.array.count) {
    80028310:	04f60863          	beq	a2,a5,80028360 <JS_CreateProperty+0x9c>
quickjs-nuttx/quickjs.c:8873
                    if (convert_fast_array_to_array(ctx, p))
    80028314:	85a6                	mv	a1,s1
    80028316:	854a                	mv	a0,s2
    80028318:	f55f30ef          	jal	ra,8001c26c <convert_fast_array_to_array>
    8002831c:	16051d63          	bnez	a0,80028496 <JS_CreateProperty+0x1d2>
quickjs-nuttx/quickjs.c:8882
                plen = &p->prop[0];
    80028320:	0204ba03          	ld	s4,32(s1)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    80028324:	188c                	addi	a1,sp,112
    80028326:	854a                	mv	a0,s2
    80028328:	008a3683          	ld	a3,8(s4)
    8002832c:	000a3603          	ld	a2,0(s4)
    80028330:	ed36                	sd	a3,152(sp)
    80028332:	e932                	sd	a2,144(sp)
    80028334:	886fa0ef          	jal	ra,800223ba <JS_ToInt32>
JS_CreateProperty():
quickjs-nuttx/quickjs.c:8884
                if ((idx + 1) > len) {
    80028338:	4736                	lw	a4,76(sp)
    8002833a:	56c6                	lw	a3,112(sp)
    8002833c:	0017079b          	addiw	a5,a4,1
    80028340:	06f6f963          	bgeu	a3,a5,800283b2 <JS_CreateProperty+0xee>
quickjs-nuttx/quickjs.c:8886
                    if (unlikely(!(pslen->flags & JS_PROP_WRITABLE)))
    80028344:	6c94                	ld	a3,24(s1)
    80028346:	42b4                	lw	a3,64(a3)
    80028348:	01a6d69b          	srliw	a3,a3,0x1a
    8002834c:	8a89                	andi	a3,a3,2
    8002834e:	0e069a63          	bnez	a3,80028442 <JS_CreateProperty+0x17e>
quickjs-nuttx/quickjs.c:8887
                        return JS_ThrowTypeErrorReadOnly(ctx, flags, JS_ATOM_length);
    80028352:	03000613          	li	a2,48
    80028356:	85a2                	mv	a1,s0
    80028358:	854a                	mv	a0,s2
    8002835a:	c24f00ef          	jal	ra,8001877e <JS_ThrowTypeErrorReadOnly>
    8002835e:	a825                	j	80028396 <JS_CreateProperty+0xd2>
quickjs-nuttx/quickjs.c:8858
                        if (!p->extensible)
    80028360:	00137313          	andi	t1,t1,1
    80028364:	18030763          	beqz	t1,800284f2 <JS_CreateProperty+0x22e>
quickjs-nuttx/quickjs.c:8860
                        if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET))
    80028368:	6789                	lui	a5,0x2
    8002836a:	80078793          	addi	a5,a5,-2048 # 1800 <asinh-0x7fffe800>
    8002836e:	8fe1                	and	a5,a5,s0
    80028370:	f3d5                	bnez	a5,80028314 <JS_CreateProperty+0x50>
get_prop_flags():
quickjs-nuttx/quickjs.c:8837
    mask = (flags >> JS_PROP_HAS_SHIFT) & JS_PROP_C_W_E;
    80028372:	4084579b          	sraiw	a5,s0,0x8
JS_CreateProperty():
quickjs-nuttx/quickjs.c:8863
                        if (prop_flags != JS_PROP_C_W_E)
    80028376:	8fe1                	and	a5,a5,s0
    80028378:	8b9d                	andi	a5,a5,7
    8002837a:	461d                	li	a2,7
    8002837c:	f8c79ce3          	bne	a5,a2,80028314 <JS_CreateProperty+0x50>
quickjs-nuttx/quickjs.c:8865
                        return add_fast_array_element(ctx, p,
    80028380:	8536                	mv	a0,a3
    80028382:	85ba                	mv	a1,a4
    80028384:	896e20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80028388:	862a                	mv	a2,a0
    8002838a:	86ae                	mv	a3,a1
    8002838c:	8722                	mv	a4,s0
    8002838e:	85a6                	mv	a1,s1
    80028390:	854a                	mv	a0,s2
    80028392:	c8cf40ef          	jal	ra,8001c81e <add_fast_array_element>
quickjs-nuttx/quickjs.c:8906
                    return em->define_own_property(ctx, JS_MKPTR(JS_TAG_OBJECT, p),
    80028396:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:8951 (discriminator 4)
}
    80028398:	60ae                	ld	ra,200(sp)
    8002839a:	640e                	ld	s0,192(sp)
    8002839c:	794a                	ld	s2,176(sp)
    8002839e:	79aa                	ld	s3,168(sp)
    800283a0:	7a0a                	ld	s4,160(sp)
    800283a2:	8526                	mv	a0,s1
    800283a4:	74ea                	ld	s1,184(sp)
    800283a6:	612d                	addi	sp,sp,224
    800283a8:	8082                	ret
quickjs-nuttx/quickjs.c:8870
                } else if (JS_AtomIsArrayIndex(ctx, &idx, prop)) {
    800283aa:	00ec                	addi	a1,sp,76
    800283ac:	e02e00ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
    800283b0:	f135                	bnez	a0,80028314 <JS_CreateProperty+0x50>
quickjs-nuttx/quickjs.c:8918
    if (!p->extensible) {
    800283b2:	0054c783          	lbu	a5,5(s1)
    800283b6:	8b85                	andi	a5,a5,1
    800283b8:	12078d63          	beqz	a5,800284f2 <JS_CreateProperty+0x22e>
quickjs-nuttx/quickjs.c:8923
    if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    800283bc:	6a09                	lui	s4,0x2
    800283be:	800a0a13          	addi	s4,s4,-2048 # 1800 <asinh-0x7fffe800>
    800283c2:	01447a33          	and	s4,s0,s4
quickjs-nuttx/quickjs.c:8927
        prop_flags = flags & JS_PROP_C_W_E;
    800283c6:	00747693          	andi	a3,s0,7
quickjs-nuttx/quickjs.c:8923
    if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    800283ca:	000a0663          	beqz	s4,800283d6 <JS_CreateProperty+0x112>
quickjs-nuttx/quickjs.c:8924
        prop_flags = (flags & (JS_PROP_CONFIGURABLE | JS_PROP_ENUMERABLE)) |
    800283ce:	00547693          	andi	a3,s0,5
    800283d2:	0106e693          	ori	a3,a3,16
quickjs-nuttx/quickjs.c:8929
    pr = add_property(ctx, p, prop, prop_flags);
    800283d6:	864e                	mv	a2,s3
    800283d8:	85a6                	mv	a1,s1
    800283da:	854a                	mv	a0,s2
    800283dc:	c46f30ef          	jal	ra,8001b822 <add_property>
    800283e0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:8930
    if (unlikely(!pr))
    800283e2:	c955                	beqz	a0,80028496 <JS_CreateProperty+0x1d2>
quickjs-nuttx/quickjs.c:8932
    if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    800283e4:	120a0663          	beqz	s4,80028510 <JS_CreateProperty+0x24c>
quickjs-nuttx/quickjs.c:8934
        if ((flags & JS_PROP_HAS_GET) && JS_IsFunction(ctx, getter)) {
    800283e8:	00b45793          	srli	a5,s0,0xb
quickjs-nuttx/quickjs.c:8933
        pr->u.getset.getter = NULL;
    800283ec:	00053023          	sd	zero,0(a0)
quickjs-nuttx/quickjs.c:8934
        if ((flags & JS_PROP_HAS_GET) && JS_IsFunction(ctx, getter)) {
    800283f0:	8b85                	andi	a5,a5,1
    800283f2:	cf99                	beqz	a5,80028410 <JS_CreateProperty+0x14c>
quickjs-nuttx/quickjs.c:8934 (discriminator 1)
    800283f4:	7582                	ld	a1,32(sp)
    800283f6:	7622                	ld	a2,40(sp)
    800283f8:	854a                	mv	a0,s2
    800283fa:	8a8e60ef          	jal	ra,8000e4a2 <JS_IsFunction>
    800283fe:	c909                	beqz	a0,80028410 <JS_CreateProperty+0x14c>
quickjs-nuttx/quickjs.c:8936
                JS_VALUE_GET_OBJ(JS_DupValue(ctx, getter));
    80028400:	7502                	ld	a0,32(sp)
    80028402:	75a2                	ld	a1,40(sp)
    80028404:	816e20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80028408:	f8aa                	sd	a0,112(sp)
    8002840a:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:8935
            pr->u.getset.getter =
    8002840c:	00a9b023          	sd	a0,0(s3)
quickjs-nuttx/quickjs.c:8939
        if ((flags & JS_PROP_HAS_SET) && JS_IsFunction(ctx, setter)) {
    80028410:	8031                	srli	s0,s0,0xc
quickjs-nuttx/quickjs.c:8938
        pr->u.getset.setter = NULL;
    80028412:	0009b423          	sd	zero,8(s3)
quickjs-nuttx/quickjs.c:8939
        if ((flags & JS_PROP_HAS_SET) && JS_IsFunction(ctx, setter)) {
    80028416:	8805                	andi	s0,s0,1
quickjs-nuttx/quickjs.c:8950
    return TRUE;
    80028418:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:8939
        if ((flags & JS_PROP_HAS_SET) && JS_IsFunction(ctx, setter)) {
    8002841a:	dc3d                	beqz	s0,80028398 <JS_CreateProperty+0xd4>
quickjs-nuttx/quickjs.c:8939 (discriminator 1)
    8002841c:	65ee                	ld	a1,216(sp)
    8002841e:	760e                	ld	a2,224(sp)
    80028420:	854a                	mv	a0,s2
    80028422:	880e60ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80028426:	d92d                	beqz	a0,80028398 <JS_CreateProperty+0xd4>
quickjs-nuttx/quickjs.c:8941
                JS_VALUE_GET_OBJ(JS_DupValue(ctx, setter));
    80028428:	656e                	ld	a0,216(sp)
    8002842a:	758e                	ld	a1,224(sp)
    8002842c:	fefe10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:8940
            pr->u.getset.setter =
    80028430:	00a9b423          	sd	a0,8(s3)
    80028434:	b795                	j	80028398 <JS_CreateProperty+0xd4>
quickjs-nuttx/quickjs.c:8877
            } else if (JS_AtomIsArrayIndex(ctx, &idx, prop)) {
    80028436:	00ec                	addi	a1,sp,76
    80028438:	d76e00ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
    8002843c:	ee0512e3          	bnez	a0,80028320 <JS_CreateProperty+0x5c>
    80028440:	bf8d                	j	800283b2 <JS_CreateProperty+0xee>
quickjs-nuttx/quickjs.c:8890
                    len = idx + 1;
    80028442:	d8be                	sw	a5,112(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80028444:	0207c063          	bltz	a5,80028464 <JS_CreateProperty+0x1a0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80028448:	cb02                	sw	zero,148(sp)
    8002844a:	c93e                	sw	a5,144(sp)
    8002844c:	674a                	ld	a4,144(sp)
    8002844e:	ed02                	sd	zero,152(sp)
    80028450:	e502                	sd	zero,136(sp)
    80028452:	e13a                	sd	a4,128(sp)
    80028454:	4681                	li	a3,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80028456:	c13e                	sw	a5,128(sp)
JS_CreateProperty():
quickjs-nuttx/quickjs.c:8891
                    set_value(ctx, &plen->u.value, JS_NewUint32(ctx, len));
    80028458:	660a                	ld	a2,128(sp)
    8002845a:	85d2                	mv	a1,s4
    8002845c:	854a                	mv	a0,s2
    8002845e:	fe0e30ef          	jal	ra,8000bc3e <set_value>
    80028462:	bf81                	j	800283b2 <JS_CreateProperty+0xee>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80028464:	d21787d3          	fcvt.d.wu	fa5,a5
    80028468:	469d                	li	a3,7
    8002846a:	e20787d3          	fmv.x.d	a5,fa5
JS_CreateProperty():
quickjs-nuttx/quickjs.h:230
    return v;
    8002846e:	a13e                	fsd	fa5,128(sp)
    80028470:	2781                	sext.w	a5,a5
    80028472:	b7d5                	j	80028456 <JS_CreateProperty+0x192>
quickjs-nuttx/quickjs.c:8894
        } else if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    80028474:	feb8071b          	addiw	a4,a6,-21
    80028478:	1742                	slli	a4,a4,0x30
    8002847a:	9341                	srli	a4,a4,0x30
    8002847c:	4629                	li	a2,10
    8002847e:	00e66e63          	bltu	a2,a4,8002849a <JS_CreateProperty+0x1d6>
quickjs-nuttx/quickjs.c:8896
            ret = JS_AtomIsNumericIndex(ctx, prop);
    80028482:	85ce                	mv	a1,s3
    80028484:	e09ff0ef          	jal	ra,8002828c <JS_AtomIsNumericIndex>
quickjs-nuttx/quickjs.c:8897
            if (ret != 0) {
    80028488:	d50d                	beqz	a0,800283b2 <JS_CreateProperty+0xee>
quickjs-nuttx/quickjs.c:8900
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "cannot create numeric index in typed array");
    8002848a:	00043617          	auipc	a2,0x43
    8002848e:	d7660613          	addi	a2,a2,-650 # 8006b200 <qjsc_repl+0x5c50>
quickjs-nuttx/quickjs.c:8898
                if (ret < 0)
    80028492:	06055463          	bgez	a0,800284fa <JS_CreateProperty+0x236>
quickjs-nuttx/quickjs.c:8911
                    return -1;
    80028496:	54fd                	li	s1,-1
    80028498:	b701                	j	80028398 <JS_CreateProperty+0xd4>
quickjs-nuttx/quickjs.c:8902
        } else if (!(flags & JS_PROP_NO_EXOTIC)) {
    8002849a:	01145713          	srli	a4,s0,0x11
    8002849e:	8b05                	andi	a4,a4,1
    800284a0:	f00719e3          	bnez	a4,800283b2 <JS_CreateProperty+0xee>
quickjs-nuttx/quickjs.c:8903
            const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    800284a4:	02800613          	li	a2,40
    800284a8:	02c80833          	mul	a6,a6,a2
    800284ac:	6d18                	ld	a4,24(a0)
    800284ae:	7b38                	ld	a4,112(a4)
    800284b0:	983a                	add	a6,a6,a4
    800284b2:	02083703          	ld	a4,32(a6)
quickjs-nuttx/quickjs.c:8904
            if (em) {
    800284b6:	ee070ee3          	beqz	a4,800283b2 <JS_CreateProperty+0xee>
quickjs-nuttx/quickjs.c:8905
                if (em->define_own_property) {
    800284ba:	01873303          	ld	t1,24(a4) # 40000018 <asinh-0x3fffffe8>
quickjs-nuttx/quickjs.c:8906
                    return em->define_own_property(ctx, JS_MKPTR(JS_TAG_OBJECT, p),
    800284be:	e92e                	sd	a1,144(sp)
quickjs-nuttx/quickjs.c:8905
                if (em->define_own_property) {
    800284c0:	02030063          	beqz	t1,800284e0 <JS_CreateProperty+0x21c>
quickjs-nuttx/quickjs.c:8906
                    return em->define_own_property(ctx, JS_MKPTR(JS_TAG_OBJECT, p),
    800284c4:	577d                	li	a4,-1
    800284c6:	ed3a                	sd	a4,152(sp)
    800284c8:	770e                	ld	a4,224(sp)
    800284ca:	e046                	sd	a7,0(sp)
    800284cc:	883e                	mv	a6,a5
    800284ce:	78a2                	ld	a7,40(sp)
    800284d0:	77e2                	ld	a5,56(sp)
    800284d2:	e43a                	sd	a4,8(sp)
    800284d4:	e822                	sd	s0,16(sp)
    800284d6:	8736                	mv	a4,a3
    800284d8:	567d                	li	a2,-1
    800284da:	86ce                	mv	a3,s3
    800284dc:	9302                	jalr	t1
    800284de:	bd65                	j	80028396 <JS_CreateProperty+0xd2>
quickjs-nuttx/quickjs.c:8909
                ret = JS_IsExtensible(ctx, JS_MKPTR(JS_TAG_OBJECT, p));
    800284e0:	57fd                	li	a5,-1
    800284e2:	567d                	li	a2,-1
    800284e4:	ed3e                	sd	a5,152(sp)
    800284e6:	ce8f10ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:8910
                if (ret < 0)
    800284ea:	fa0546e3          	bltz	a0,80028496 <JS_CreateProperty+0x1d2>
quickjs-nuttx/quickjs.c:8912
                if (!ret)
    800284ee:	ec0512e3          	bnez	a0,800283b2 <JS_CreateProperty+0xee>
quickjs-nuttx/quickjs.c:8920
        return JS_ThrowTypeErrorOrFalse(ctx, flags, "object is not extensible");
    800284f2:	00042617          	auipc	a2,0x42
    800284f6:	ba660613          	addi	a2,a2,-1114 # 8006a098 <qjsc_repl+0x4ae8>
    800284fa:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:8951
}
    800284fc:	640e                	ld	s0,192(sp)
    800284fe:	60ae                	ld	ra,200(sp)
    80028500:	74ea                	ld	s1,184(sp)
    80028502:	79aa                	ld	s3,168(sp)
    80028504:	7a0a                	ld	s4,160(sp)
quickjs-nuttx/quickjs.c:8920
        return JS_ThrowTypeErrorOrFalse(ctx, flags, "object is not extensible");
    80028506:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:8951
}
    80028508:	794a                	ld	s2,176(sp)
    8002850a:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:8920
        return JS_ThrowTypeErrorOrFalse(ctx, flags, "object is not extensible");
    8002850c:	e33ef06f          	j	8001833e <JS_ThrowTypeErrorOrFalse>
quickjs-nuttx/quickjs.c:8944
        if (flags & JS_PROP_HAS_VALUE) {
    80028510:	8035                	srli	s0,s0,0xd
    80028512:	8805                	andi	s0,s0,1
    80028514:	c819                	beqz	s0,8002852a <JS_CreateProperty+0x266>
quickjs-nuttx/quickjs.c:8945
            pr->u.value = JS_DupValue(ctx, val);
    80028516:	7542                	ld	a0,48(sp)
    80028518:	75e2                	ld	a1,56(sp)
    8002851a:	f01e10ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8002851e:	00a9b023          	sd	a0,0(s3)
    80028522:	00b9b423          	sd	a1,8(s3)
quickjs-nuttx/quickjs.c:8950
    return TRUE;
    80028526:	4485                	li	s1,1
    80028528:	bd85                	j	80028398 <JS_CreateProperty+0xd4>
quickjs-nuttx/quickjs.c:8947
            pr->u.value = JS_UNDEFINED;
    8002852a:	478d                	li	a5,3
    8002852c:	00053023          	sd	zero,0(a0)
    80028530:	e51c                	sd	a5,8(a0)
    80028532:	bfd5                	j	80028526 <JS_CreateProperty+0x262>

0000000080028534 <js_string_includes>:
js_string_includes():
quickjs-nuttx/quickjs.c:41705
{
    80028534:	7131                	addi	sp,sp,-192
    80028536:	f526                	sd	s1,168(sp)
    80028538:	f14a                	sd	s2,160(sp)
    8002853a:	ed4e                	sd	s3,152(sp)
    8002853c:	e952                	sd	s4,144(sp)
    8002853e:	e15a                	sd	s6,128(sp)
    80028540:	f8e2                	sd	s8,112(sp)
    80028542:	8a3e                	mv	s4,a5
    80028544:	fd06                	sd	ra,184(sp)
    80028546:	f922                	sd	s0,176(sp)
    80028548:	e556                	sd	s5,136(sp)
    8002854a:	fcde                	sd	s7,120(sp)
    8002854c:	f4e6                	sd	s9,104(sp)
    8002854e:	f0ea                	sd	s10,96(sp)
    80028550:	84aa                	mv	s1,a0
    80028552:	e02e                	sd	a1,0(sp)
    80028554:	e432                	sd	a2,8(sp)
    80028556:	8b36                	mv	s6,a3
    80028558:	8c3a                	mv	s8,a4
quickjs-nuttx/quickjs.c:41711
    str = JS_ToStringCheckObject(ctx, this_val);
    8002855a:	927f80ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8002855e:	f02a                	sd	a0,32(sp)
    80028560:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41712
    if (JS_IsException(str))
    80028562:	0005879b          	sext.w	a5,a1
    80028566:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:41711
    str = JS_ToStringCheckObject(ctx, this_val);
    80028568:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:41712
    if (JS_IsException(str))
    8002856a:	03279463          	bne	a5,s2,80028592 <js_string_includes+0x5e>
quickjs-nuttx/quickjs.c:41713
        return str;
    8002856e:	e0aa                	sd	a0,64(sp)
    80028570:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:41765
}
    80028572:	70ea                	ld	ra,184(sp)
    80028574:	744a                	ld	s0,176(sp)
    80028576:	6506                	ld	a0,64(sp)
    80028578:	65a6                	ld	a1,72(sp)
    8002857a:	74aa                	ld	s1,168(sp)
    8002857c:	790a                	ld	s2,160(sp)
    8002857e:	69ea                	ld	s3,152(sp)
    80028580:	6a4a                	ld	s4,144(sp)
    80028582:	6aaa                	ld	s5,136(sp)
    80028584:	6b0a                	ld	s6,128(sp)
    80028586:	7be6                	ld	s7,120(sp)
    80028588:	7c46                	ld	s8,112(sp)
    8002858a:	7ca6                	ld	s9,104(sp)
    8002858c:	7d06                	ld	s10,96(sp)
    8002858e:	6129                	addi	sp,sp,192
    80028590:	8082                	ret
quickjs-nuttx/quickjs.c:41714
    ret = js_is_regexp(ctx, argv[0]);
    80028592:	000c3583          	ld	a1,0(s8)
    80028596:	008c3603          	ld	a2,8(s8)
    8002859a:	8526                	mv	a0,s1
    8002859c:	8f5ee0ef          	jal	ra,80016e90 <js_is_regexp>
    800285a0:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:41715
    if (ret) {
    800285a2:	cd09                	beqz	a0,800285bc <js_string_includes+0x88>
quickjs-nuttx/quickjs.c:41716
        if (ret > 0)
    800285a4:	00a05963          	blez	a0,800285b6 <js_string_includes+0x82>
quickjs-nuttx/quickjs.c:41717
            JS_ThrowTypeError(ctx, "regex not supported");
    800285a8:	00043597          	auipc	a1,0x43
    800285ac:	c8858593          	addi	a1,a1,-888 # 8006b230 <qjsc_repl+0x5c80>
    800285b0:	8526                	mv	a0,s1
    800285b2:	8baf00ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:41706
    JSValue str, v = JS_UNDEFINED;
    800285b6:	440d                	li	s0,3
    800285b8:	4d01                	li	s10,0
    800285ba:	a04d                	j	8002865c <js_string_includes+0x128>
quickjs-nuttx/quickjs.c:41720
    v = JS_ToString(ctx, argv[0]);
    800285bc:	000c3583          	ld	a1,0(s8)
    800285c0:	008c3603          	ld	a2,8(s8)
    800285c4:	8526                	mv	a0,s1
    800285c6:	9b6f80ef          	jal	ra,8002077c <JS_ToString>
    800285ca:	f82a                	sd	a0,48(sp)
    800285cc:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:41721
    if (JS_IsException(v))
    800285ce:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:41720
    v = JS_ToString(ctx, argv[0]);
    800285d2:	8caa                	mv	s9,a0
    800285d4:	842e                	mv	s0,a1
    800285d6:	8d2a                	mv	s10,a0
quickjs-nuttx/quickjs.c:41721
    if (JS_IsException(v))
    800285d8:	09278263          	beq	a5,s2,8002865c <js_string_includes+0x128>
quickjs-nuttx/quickjs.c:41725
    len = p->len;
    800285dc:	0049a903          	lw	s2,4(s3)
quickjs-nuttx/quickjs.c:41726
    v_len = p1->len;
    800285e0:	00452b83          	lw	s7,4(a0)
quickjs-nuttx/quickjs.c:41725
    len = p->len;
    800285e4:	80000637          	lui	a2,0x80000
    800285e8:	fff64613          	not	a2,a2
quickjs-nuttx/quickjs.c:41727
    pos = (magic == 2) ? len : 0;
    800285ec:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:41725
    len = p->len;
    800285ee:	01267933          	and	s2,a2,s2
quickjs-nuttx/quickjs.c:41726
    v_len = p1->len;
    800285f2:	01767bb3          	and	s7,a2,s7
quickjs-nuttx/quickjs.c:41727
    pos = (magic == 2) ? len : 0;
    800285f6:	4781                	li	a5,0
    800285f8:	00ea1363          	bne	s4,a4,800285fe <js_string_includes+0xca>
    800285fc:	87ca                	mv	a5,s2
quickjs-nuttx/quickjs.c:41727 (discriminator 4)
    800285fe:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:41728 (discriminator 4)
    if (argc > 1 && !JS_IsUndefined(argv[1])) {
    80028600:	4785                	li	a5,1
    80028602:	0367cc63          	blt	a5,s6,8002863a <js_string_includes+0x106>
quickjs-nuttx/quickjs.c:41735
        start = pos;
    80028606:	4472                	lw	s0,28(sp)
quickjs-nuttx/quickjs.c:41732
    len -= v_len;
    80028608:	4179093b          	subw	s2,s2,s7
quickjs-nuttx/quickjs.c:41734
    if (magic == 0) {
    8002860c:	060a0563          	beqz	s4,80028676 <js_string_includes+0x142>
quickjs-nuttx/quickjs.c:41738
        if (magic == 1) {
    80028610:	4785                	li	a5,1
    80028612:	08fa1563          	bne	s4,a5,8002869c <js_string_includes+0x168>
quickjs-nuttx/quickjs.c:41739
            if (pos > len)
    80028616:	06894263          	blt	s2,s0,8002867a <js_string_includes+0x146>
quickjs-nuttx/quickjs.c:41744
        start = stop = pos;
    8002861a:	4472                	lw	s0,28(sp)
quickjs-nuttx/quickjs.c:41746
    if (start >= 0 && start <= stop) {
    8002861c:	8922                	mv	s2,s0
    8002861e:	04044e63          	bltz	s0,8002867a <js_string_includes+0x146>
quickjs-nuttx/quickjs.c:41748
            if (!string_cmp(p, p1, i, 0, v_len)) {
    80028622:	875e                	mv	a4,s7
    80028624:	4681                	li	a3,0
    80028626:	8622                	mv	a2,s0
    80028628:	85e6                	mv	a1,s9
    8002862a:	854e                	mv	a0,s3
    8002862c:	b15df0ef          	jal	ra,80008140 <string_cmp>
    80028630:	cd2d                	beqz	a0,800286aa <js_string_includes+0x176>
quickjs-nuttx/quickjs.c:41752
            if (i == stop)
    80028632:	05240463          	beq	s0,s2,8002867a <js_string_includes+0x146>
quickjs-nuttx/quickjs.c:41747
        for (i = start;; i++) {
    80028636:	2405                	addiw	s0,s0,1
quickjs-nuttx/quickjs.c:41748
            if (!string_cmp(p, p1, i, 0, v_len)) {
    80028638:	b7ed                	j	80028622 <js_string_includes+0xee>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8002863a:	018c3683          	ld	a3,24(s8)
js_string_includes():
quickjs-nuttx/quickjs.c:41728 (discriminator 1)
    if (argc > 1 && !JS_IsUndefined(argv[1])) {
    8002863e:	478d                	li	a5,3
    80028640:	0006871b          	sext.w	a4,a3
    80028644:	fcf701e3          	beq	a4,a5,80028606 <js_string_includes+0xd2>
quickjs-nuttx/quickjs.c:41729
        if (JS_ToInt32Clamp(ctx, &pos, argv[1], 0, len, 0))
    80028648:	010c3603          	ld	a2,16(s8)
    8002864c:	4801                	li	a6,0
    8002864e:	87ca                	mv	a5,s2
    80028650:	4701                	li	a4,0
    80028652:	086c                	addi	a1,sp,28
    80028654:	8526                	mv	a0,s1
    80028656:	d90fb0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    8002865a:	d555                	beqz	a0,80028606 <js_string_includes+0xd2>
quickjs-nuttx/quickjs.c:41762
    JS_FreeValue(ctx, str);
    8002865c:	7582                	ld	a1,32(sp)
    8002865e:	7622                	ld	a2,40(sp)
    80028660:	8526                	mv	a0,s1
    80028662:	93ce30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41763
    JS_FreeValue(ctx, v);
    80028666:	85ea                	mv	a1,s10
    80028668:	8622                	mv	a2,s0
    8002866a:	8526                	mv	a0,s1
    8002866c:	932e30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41764
    return JS_EXCEPTION;
    80028670:	4799                	li	a5,6
    80028672:	e082                	sd	zero,64(sp)
    80028674:	a015                	j	80028698 <js_string_includes+0x164>
quickjs-nuttx/quickjs.c:41746
    if (start >= 0 && start <= stop) {
    80028676:	02045763          	bgez	s0,800286a4 <js_string_includes+0x170>
quickjs-nuttx/quickjs.c:41757
    JS_FreeValue(ctx, str);
    8002867a:	7582                	ld	a1,32(sp)
    8002867c:	7622                	ld	a2,40(sp)
    8002867e:	8526                	mv	a0,s1
    80028680:	91ee30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41758
    JS_FreeValue(ctx, v);
    80028684:	75c2                	ld	a1,48(sp)
    80028686:	7662                	ld	a2,56(sp)
    80028688:	8526                	mv	a0,s1
    8002868a:	914e30ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8002868e:	ca82                	sw	zero,84(sp)
    80028690:	c8d6                	sw	s5,80(sp)
    80028692:	67c6                	ld	a5,80(sp)
    80028694:	e0be                	sd	a5,64(sp)
    80028696:	4785                	li	a5,1
js_string_includes():
quickjs-nuttx/quickjs.c:41764
    return JS_EXCEPTION;
    80028698:	e4be                	sd	a5,72(sp)
    8002869a:	bde1                	j	80028572 <js_string_includes+0x3e>
quickjs-nuttx/quickjs.c:41742
            pos -= v_len;
    8002869c:	4174043b          	subw	s0,s0,s7
    800286a0:	ce22                	sw	s0,28(sp)
    800286a2:	bfa5                	j	8002861a <js_string_includes+0xe6>
quickjs-nuttx/quickjs.c:41746 (discriminator 1)
    if (start >= 0 && start <= stop) {
    800286a4:	fc894be3          	blt	s2,s0,8002867a <js_string_includes+0x146>
    800286a8:	bfad                	j	80028622 <js_string_includes+0xee>
quickjs-nuttx/quickjs.c:41749
                ret = 1;
    800286aa:	4a85                	li	s5,1
    800286ac:	b7f9                	j	8002867a <js_string_includes+0x146>

00000000800286ae <js_string_indexOf>:
js_string_indexOf():
quickjs-nuttx/quickjs.c:41637
{
    800286ae:	7171                	addi	sp,sp,-176
    800286b0:	f122                	sd	s0,160(sp)
    800286b2:	ed26                	sd	s1,152(sp)
    800286b4:	e94a                	sd	s2,144(sp)
    800286b6:	e54e                	sd	s3,136(sp)
    800286b8:	f8da                	sd	s6,112(sp)
    800286ba:	f4de                	sd	s7,104(sp)
    800286bc:	f506                	sd	ra,168(sp)
    800286be:	8bbe                	mv	s7,a5
    800286c0:	e152                	sd	s4,128(sp)
    800286c2:	fcd6                	sd	s5,120(sp)
    800286c4:	84aa                	mv	s1,a0
    800286c6:	e02e                	sd	a1,0(sp)
    800286c8:	e432                	sd	a2,8(sp)
    800286ca:	8b36                	mv	s6,a3
    800286cc:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:41643
    str = JS_ToStringCheckObject(ctx, this_val);
    800286ce:	fb2f80ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    800286d2:	f02a                	sd	a0,32(sp)
    800286d4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41644
    if (JS_IsException(str))
    800286d6:	0005879b          	sext.w	a5,a1
    800286da:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:41643
    str = JS_ToStringCheckObject(ctx, this_val);
    800286dc:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:41644
    if (JS_IsException(str))
    800286de:	03279163          	bne	a5,s2,80028700 <js_string_indexOf+0x52>
quickjs-nuttx/quickjs.c:41645
        return str;
    800286e2:	e0aa                	sd	a0,64(sp)
    800286e4:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:41698
}
    800286e6:	70aa                	ld	ra,168(sp)
    800286e8:	740a                	ld	s0,160(sp)
    800286ea:	6506                	ld	a0,64(sp)
    800286ec:	65a6                	ld	a1,72(sp)
    800286ee:	64ea                	ld	s1,152(sp)
    800286f0:	694a                	ld	s2,144(sp)
    800286f2:	69aa                	ld	s3,136(sp)
    800286f4:	6a0a                	ld	s4,128(sp)
    800286f6:	7ae6                	ld	s5,120(sp)
    800286f8:	7b46                	ld	s6,112(sp)
    800286fa:	7ba6                	ld	s7,104(sp)
    800286fc:	614d                	addi	sp,sp,176
    800286fe:	8082                	ret
quickjs-nuttx/quickjs.c:41646
    v = JS_ToString(ctx, argv[0]);
    80028700:	600c                	ld	a1,0(s0)
    80028702:	6410                	ld	a2,8(s0)
    80028704:	8526                	mv	a0,s1
    80028706:	876f80ef          	jal	ra,8002077c <JS_ToString>
    8002870a:	fc2e                	sd	a1,56(sp)
    8002870c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:41647
    if (JS_IsException(v))
    8002870e:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:41646
    v = JS_ToString(ctx, argv[0]);
    80028710:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:41647
    if (JS_IsException(v))
    80028712:	0b258c63          	beq	a1,s2,800287ca <js_string_indexOf+0x11c>
quickjs-nuttx/quickjs.c:41651
    len = p->len;
    80028716:	0049aa03          	lw	s4,4(s3)
quickjs-nuttx/quickjs.c:41652
    v_len = p1->len;
    8002871a:	004aa783          	lw	a5,4(s5)
quickjs-nuttx/quickjs.c:41651
    len = p->len;
    8002871e:	80000937          	lui	s2,0x80000
    80028722:	fff94913          	not	s2,s2
    80028726:	01497a33          	and	s4,s2,s4
quickjs-nuttx/quickjs.c:41652
    v_len = p1->len;
    8002872a:	00f97933          	and	s2,s2,a5
quickjs-nuttx/quickjs.c:41653
    if (lastIndexOf) {
    8002872e:	060b8b63          	beqz	s7,800287a4 <js_string_indexOf+0xf6>
quickjs-nuttx/quickjs.c:41654
        pos = len - v_len;
    80028732:	412a07bb          	subw	a5,s4,s2
    80028736:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:41655
        if (argc > 1) {
    80028738:	4785                	li	a5,1
    8002873a:	0367d363          	bge	a5,s6,80028760 <js_string_indexOf+0xb2>
quickjs-nuttx/quickjs.c:41657
            if (JS_ToFloat64(ctx, &d, argv[1]))
    8002873e:	6810                	ld	a2,16(s0)
    80028740:	6c14                	ld	a3,24(s0)
    80028742:	088c                	addi	a1,sp,80
    80028744:	8526                	mv	a0,s1
    80028746:	ff7f90ef          	jal	ra,8002273c <JS_ToFloat64>
    8002874a:	e141                	bnez	a0,800287ca <js_string_indexOf+0x11c>
quickjs-nuttx/quickjs.c:41659
            if (!isnan(d)) {
    8002874c:	27c6                	fld	fa5,80(sp)
    8002874e:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80028752:	c799                	beqz	a5,80028760 <js_string_indexOf+0xb2>
quickjs-nuttx/quickjs.c:41660
                if (d <= 0)
    80028754:	f2000753          	fmv.d.x	fa4,zero
    80028758:	a2e787d3          	fle.d	a5,fa5,fa4
    8002875c:	cb95                	beqz	a5,80028790 <js_string_indexOf+0xe2>
quickjs-nuttx/quickjs.c:41661
                    pos = 0;
    8002875e:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs.c:41666
        start = pos;
    80028760:	4472                	lw	s0,28(sp)
quickjs-nuttx/quickjs.c:41668
        inc = -1;
    80028762:	5b7d                	li	s6,-1
quickjs-nuttx/quickjs.c:41667
        stop = 0;
    80028764:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:41680
    if (len >= v_len && inc * (stop - start) >= 0) {
    80028766:	092a4063          	blt	s4,s2,800287e6 <js_string_indexOf+0x138>
quickjs-nuttx/quickjs.c:41680 (discriminator 1)
    8002876a:	408b87bb          	subw	a5,s7,s0
    8002876e:	036787bb          	mulw	a5,a5,s6
    80028772:	0607ca63          	bltz	a5,800287e6 <js_string_indexOf+0x138>
quickjs-nuttx/quickjs.c:41682
            if (!string_cmp(p, p1, i, 0, v_len)) {
    80028776:	874a                	mv	a4,s2
    80028778:	4681                	li	a3,0
    8002877a:	8622                	mv	a2,s0
    8002877c:	85d6                	mv	a1,s5
    8002877e:	854e                	mv	a0,s3
    80028780:	9c1df0ef          	jal	ra,80008140 <string_cmp>
    80028784:	c135                	beqz	a0,800287e8 <js_string_indexOf+0x13a>
quickjs-nuttx/quickjs.c:41686
            if (i == stop)
    80028786:	07740063          	beq	s0,s7,800287e6 <js_string_indexOf+0x138>
quickjs-nuttx/quickjs.c:41681
        for (i = start;; i += inc) {
    8002878a:	0164043b          	addw	s0,s0,s6
quickjs-nuttx/quickjs.c:41682
            if (!string_cmp(p, p1, i, 0, v_len)) {
    8002878e:	b7e5                	j	80028776 <js_string_indexOf+0xc8>
quickjs-nuttx/quickjs.c:41662
                else if (d < pos)
    80028790:	47f2                	lw	a5,28(sp)
    80028792:	d2078753          	fcvt.d.w	fa4,a5
    80028796:	a2e797d3          	flt.d	a5,fa5,fa4
    8002879a:	d3f9                	beqz	a5,80028760 <js_string_indexOf+0xb2>
quickjs-nuttx/quickjs.c:41663
                    pos = d;
    8002879c:	c20797d3          	fcvt.w.d	a5,fa5,rtz
    800287a0:	ce3e                	sw	a5,28(sp)
    800287a2:	bf7d                	j	80028760 <js_string_indexOf+0xb2>
quickjs-nuttx/quickjs.c:41670
        pos = 0;
    800287a4:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs.c:41671
        if (argc > 1) {
    800287a6:	4785                	li	a5,1
    800287a8:	0167c763          	blt	a5,s6,800287b6 <js_string_indexOf+0x108>
quickjs-nuttx/quickjs.c:41675
        start = pos;
    800287ac:	4472                	lw	s0,28(sp)
quickjs-nuttx/quickjs.c:41676
        stop = len - v_len;
    800287ae:	412a0bbb          	subw	s7,s4,s2
quickjs-nuttx/quickjs.c:41677
        inc = 1;
    800287b2:	4b05                	li	s6,1
    800287b4:	bf4d                	j	80028766 <js_string_indexOf+0xb8>
quickjs-nuttx/quickjs.c:41672
            if (JS_ToInt32Clamp(ctx, &pos, argv[1], 0, len, 0))
    800287b6:	6810                	ld	a2,16(s0)
    800287b8:	6c14                	ld	a3,24(s0)
    800287ba:	4801                	li	a6,0
    800287bc:	87d2                	mv	a5,s4
    800287be:	4701                	li	a4,0
    800287c0:	086c                	addi	a1,sp,28
    800287c2:	8526                	mv	a0,s1
    800287c4:	c22fb0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    800287c8:	d175                	beqz	a0,800287ac <js_string_indexOf+0xfe>
quickjs-nuttx/quickjs.c:41695
    JS_FreeValue(ctx, str);
    800287ca:	7582                	ld	a1,32(sp)
    800287cc:	7622                	ld	a2,40(sp)
    800287ce:	8526                	mv	a0,s1
    800287d0:	fcfe20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41696
    JS_FreeValue(ctx, v);
    800287d4:	75c2                	ld	a1,48(sp)
    800287d6:	7662                	ld	a2,56(sp)
    800287d8:	8526                	mv	a0,s1
    800287da:	fc5e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41697
    return JS_EXCEPTION;
    800287de:	4799                	li	a5,6
    800287e0:	e082                	sd	zero,64(sp)
    800287e2:	e4be                	sd	a5,72(sp)
    800287e4:	b709                	j	800286e6 <js_string_indexOf+0x38>
quickjs-nuttx/quickjs.c:41679
    ret = -1;
    800287e6:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:41690
    JS_FreeValue(ctx, str);
    800287e8:	7582                	ld	a1,32(sp)
    800287ea:	7622                	ld	a2,40(sp)
    800287ec:	8526                	mv	a0,s1
    800287ee:	fb1e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41691
    JS_FreeValue(ctx, v);
    800287f2:	75c2                	ld	a1,48(sp)
    800287f4:	7662                	ld	a2,56(sp)
    800287f6:	8526                	mv	a0,s1
    800287f8:	fa7e20ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800287fc:	ca82                	sw	zero,84(sp)
    800287fe:	c8a2                	sw	s0,80(sp)
    80028800:	67c6                	ld	a5,80(sp)
    80028802:	e482                	sd	zero,72(sp)
    80028804:	e0be                	sd	a5,64(sp)
    80028806:	b5c5                	j	800286e6 <js_string_indexOf+0x38>

0000000080028808 <JS_ToPropertyKey>:
JS_ToPropertyKey():
quickjs-nuttx/quickjs.c:11663
{
    80028808:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:11664
    return JS_ToStringInternal(ctx, val, TRUE);
    8002880a:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:11665
}
    8002880c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:11664
    return JS_ToStringInternal(ctx, val, TRUE);
    8002880e:	e0df706f          	j	8002061a <JS_ToStringInternal>

0000000080028812 <JS_ValueToAtom>:
JS_ValueToAtom():
quickjs-nuttx/quickjs.c:7864
{
    80028812:	7179                	addi	sp,sp,-48
    80028814:	f022                	sd	s0,32(sp)
    80028816:	e432                	sd	a2,8(sp)
    80028818:	f406                	sd	ra,40(sp)
    8002881a:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:7867
    tag = JS_VALUE_GET_TAG(val);
    8002881c:	2601                	sext.w	a2,a2
quickjs-nuttx/quickjs.c:7864
{
    8002881e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:7868
    if (tag == JS_TAG_INT &&
    80028820:	ea19                	bnez	a2,80028836 <JS_ValueToAtom+0x24>
quickjs-nuttx/quickjs.c:7869 (discriminator 1)
        (uint32_t)JS_VALUE_GET_INT(val) <= JS_ATOM_MAX_INT) {
    80028822:	4502                	lw	a0,0(sp)
quickjs-nuttx/quickjs.c:7868 (discriminator 1)
    if (tag == JS_TAG_INT &&
    80028824:	02054763          	bltz	a0,80028852 <JS_ValueToAtom+0x40>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    80028828:	800007b7          	lui	a5,0x80000
    8002882c:	8d5d                	or	a0,a0,a5
JS_ValueToAtom():
quickjs-nuttx/quickjs.c:7887
}
    8002882e:	70a2                	ld	ra,40(sp)
    80028830:	7402                	ld	s0,32(sp)
    80028832:	6145                	addi	sp,sp,48
    80028834:	8082                	ret
quickjs-nuttx/quickjs.c:7872
    } else if (tag == JS_TAG_SYMBOL) {
    80028836:	57e1                	li	a5,-8
    80028838:	00f61d63          	bne	a2,a5,80028852 <JS_ValueToAtom+0x40>
quickjs-nuttx/quickjs.c:7874
        atom = JS_DupAtom(ctx, js_get_atom_index(ctx->rt, p));
    8002883c:	6d08                	ld	a0,24(a0)
    8002883e:	e51e00ef          	jal	ra,8000968e <js_get_atom_index>
    80028842:	0005059b          	sext.w	a1,a0
    80028846:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:7887
}
    80028848:	7402                	ld	s0,32(sp)
    8002884a:	70a2                	ld	ra,40(sp)
    8002884c:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:7874
        atom = JS_DupAtom(ctx, js_get_atom_index(ctx->rt, p));
    8002884e:	8b9e206f          	j	8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:7877
        str = JS_ToPropertyKey(ctx, val);
    80028852:	6582                	ld	a1,0(sp)
    80028854:	6622                	ld	a2,8(sp)
    80028856:	8522                	mv	a0,s0
    80028858:	fb1ff0ef          	jal	ra,80028808 <JS_ToPropertyKey>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8002885c:	2581                	sext.w	a1,a1
JS_ValueToAtom():
quickjs-nuttx/quickjs.c:7878
        if (JS_IsException(str))
    8002885e:	4799                	li	a5,6
    80028860:	02f58363          	beq	a1,a5,80028886 <JS_ValueToAtom+0x74>
quickjs-nuttx/quickjs.c:7880
        if (JS_VALUE_GET_TAG(str) == JS_TAG_SYMBOL) {
    80028864:	57e1                	li	a5,-8
    80028866:	00f59963          	bne	a1,a5,80028878 <JS_ValueToAtom+0x66>
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    8002886a:	85aa                	mv	a1,a0
    8002886c:	6c08                	ld	a0,24(s0)
JS_ValueToAtom():
quickjs-nuttx/quickjs.c:7887
}
    8002886e:	7402                	ld	s0,32(sp)
    80028870:	70a2                	ld	ra,40(sp)
    80028872:	6145                	addi	sp,sp,48
js_symbol_to_atom():
quickjs-nuttx/quickjs.c:7859
    return js_get_atom_index(ctx->rt, p);
    80028874:	e1be006f          	j	8000968e <js_get_atom_index>
JS_ValueToAtom():
quickjs-nuttx/quickjs.c:7883
            atom = JS_NewAtomStr(ctx, JS_VALUE_GET_STRING(str));
    80028878:	85aa                	mv	a1,a0
    8002887a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:7887
}
    8002887c:	7402                	ld	s0,32(sp)
    8002887e:	70a2                	ld	ra,40(sp)
    80028880:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:7883
            atom = JS_NewAtomStr(ctx, JS_VALUE_GET_STRING(str));
    80028882:	f32e206f          	j	8000afb4 <JS_NewAtomStr>
quickjs-nuttx/quickjs.c:7879
            return JS_ATOM_NULL;
    80028886:	4501                	li	a0,0
    80028888:	b75d                	j	8002882e <JS_ValueToAtom+0x1c>

000000008002888a <js_date_Symbol_toPrimitive>:
js_date_Symbol_toPrimitive():
quickjs-nuttx/quickjs.c:50031
{
    8002888a:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs.c:50033
    JSValueConst obj = this_val;
    8002888c:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:50031
{
    8002888e:	e486                	sd	ra,72(sp)
    80028890:	e0a2                	sd	s0,64(sp)
    80028892:	fc26                	sd	s1,56(sp)
quickjs-nuttx/quickjs.c:50033
    JSValueConst obj = this_val;
    80028894:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:50037
    if (!JS_IsObject(obj))
    80028896:	2601                	sext.w	a2,a2
    80028898:	57fd                	li	a5,-1
    8002889a:	00f60863          	beq	a2,a5,800288aa <js_date_Symbol_toPrimitive+0x20>
quickjs-nuttx/quickjs.c:50061
}
    8002889e:	6406                	ld	s0,64(sp)
    800288a0:	60a6                	ld	ra,72(sp)
    800288a2:	74e2                	ld	s1,56(sp)
    800288a4:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:50038
        return JS_ThrowTypeErrorNotAnObject(ctx);
    800288a6:	b84f006f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
JS_IsString():
quickjs-nuttx/quickjs.h:620
    return JS_VALUE_GET_TAG(v) == JS_TAG_STRING;
    800288aa:	6710                	ld	a2,8(a4)
js_date_Symbol_toPrimitive():
quickjs-nuttx/quickjs.c:50040
    if (JS_IsString(argv[0])) {
    800288ac:	57e5                	li	a5,-7
    800288ae:	84aa                	mv	s1,a0
    800288b0:	0006069b          	sext.w	a3,a2
    800288b4:	02f69a63          	bne	a3,a5,800288e8 <js_date_Symbol_toPrimitive+0x5e>
quickjs-nuttx/quickjs.c:50041
        hint = JS_ValueToAtom(ctx, argv[0]);
    800288b8:	630c                	ld	a1,0(a4)
    800288ba:	f59ff0ef          	jal	ra,80028812 <JS_ValueToAtom>
    800288be:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:50042
        if (hint == JS_ATOM_NULL)
    800288c2:	c025                	beqz	s0,80028922 <js_date_Symbol_toPrimitive+0x98>
quickjs-nuttx/quickjs.c:50044
        JS_FreeAtom(ctx, hint);
    800288c4:	85a2                	mv	a1,s0
    800288c6:	8526                	mv	a0,s1
    800288c8:	881e20ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:50046
    switch (hint) {
    800288cc:	04900793          	li	a5,73
    800288d0:	02f40d63          	beq	s0,a5,8002890a <js_date_Symbol_toPrimitive+0x80>
    800288d4:	0287e563          	bltu	a5,s0,800288fe <js_date_Symbol_toPrimitive+0x74>
    800288d8:	47d9                	li	a5,22
    800288da:	02f40863          	beq	s0,a5,8002890a <js_date_Symbol_toPrimitive+0x80>
    800288de:	04700793          	li	a5,71
quickjs-nuttx/quickjs.c:50051
        hint_num = HINT_NUMBER;
    800288e2:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:50046
    switch (hint) {
    800288e4:	02f40463          	beq	s0,a5,8002890c <js_date_Symbol_toPrimitive+0x82>
quickjs-nuttx/quickjs.c:50061
}
    800288e8:	6406                	ld	s0,64(sp)
    800288ea:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs.c:50058
        return JS_ThrowTypeError(ctx, "invalid hint");
    800288ec:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:50061
}
    800288ee:	74e2                	ld	s1,56(sp)
quickjs-nuttx/quickjs.c:50058
        return JS_ThrowTypeError(ctx, "invalid hint");
    800288f0:	00043597          	auipc	a1,0x43
    800288f4:	95858593          	addi	a1,a1,-1704 # 8006b248 <qjsc_repl+0x5c98>
quickjs-nuttx/quickjs.c:50061
}
    800288f8:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:50058
        return JS_ThrowTypeError(ctx, "invalid hint");
    800288fa:	d73ef06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:50046
    switch (hint) {
    800288fe:	04c00793          	li	a5,76
    80028902:	fef413e3          	bne	s0,a5,800288e8 <js_date_Symbol_toPrimitive+0x5e>
quickjs-nuttx/quickjs.c:50051
        hint_num = HINT_NUMBER;
    80028906:	4685                	li	a3,1
    80028908:	a011                	j	8002890c <js_date_Symbol_toPrimitive+0x82>
quickjs-nuttx/quickjs.c:50046
    switch (hint) {
    8002890a:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:50061
}
    8002890c:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:50060
    return JS_ToPrimitive(ctx, obj, hint_num | HINT_FORCE_ORDINARY);
    8002890e:	65c2                	ld	a1,16(sp)
    80028910:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:50061
}
    80028912:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs.c:50060
    return JS_ToPrimitive(ctx, obj, hint_num | HINT_FORCE_ORDINARY);
    80028914:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:50061
}
    80028916:	74e2                	ld	s1,56(sp)
quickjs-nuttx/quickjs.c:50060
    return JS_ToPrimitive(ctx, obj, hint_num | HINT_FORCE_ORDINARY);
    80028918:	0106e693          	ori	a3,a3,16
quickjs-nuttx/quickjs.c:50061
}
    8002891c:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:50060
    return JS_ToPrimitive(ctx, obj, hint_num | HINT_FORCE_ORDINARY);
    8002891e:	b5ef706f          	j	8001fc7c <JS_ToPrimitive>
quickjs-nuttx/quickjs.c:50061 (discriminator 1)
}
    80028922:	60a6                	ld	ra,72(sp)
    80028924:	6406                	ld	s0,64(sp)
    80028926:	74e2                	ld	s1,56(sp)
    80028928:	4501                	li	a0,0
    8002892a:	4599                	li	a1,6
    8002892c:	6161                	addi	sp,sp,80
    8002892e:	8082                	ret

0000000080028930 <js_regexp_get_source>:
js_regexp_get_source():
quickjs-nuttx/quickjs.c:43568
{
    80028930:	7171                	addi	sp,sp,-176
    80028932:	e94a                	sd	s2,144(sp)
    80028934:	f506                	sd	ra,168(sp)
    80028936:	f122                	sd	s0,160(sp)
    80028938:	ed26                	sd	s1,152(sp)
    8002893a:	e54e                	sd	s3,136(sp)
    8002893c:	e152                	sd	s4,128(sp)
    8002893e:	fcd6                	sd	s5,120(sp)
    80028940:	f8da                	sd	s6,112(sp)
    80028942:	f4de                	sd	s7,104(sp)
    80028944:	f0e2                	sd	s8,96(sp)
    80028946:	ece6                	sd	s9,88(sp)
    80028948:	e8ea                	sd	s10,80(sp)
    8002894a:	e4ee                	sd	s11,72(sp)
    8002894c:	e02e                	sd	a1,0(sp)
    8002894e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:43574
    if (JS_VALUE_GET_TAG(this_val) != JS_TAG_OBJECT)
    80028950:	0006091b          	sext.w	s2,a2
    80028954:	57fd                	li	a5,-1
    80028956:	02f90263          	beq	s2,a5,8002897a <js_regexp_get_source+0x4a>
quickjs-nuttx/quickjs.c:43631
}
    8002895a:	740a                	ld	s0,160(sp)
    8002895c:	70aa                	ld	ra,168(sp)
    8002895e:	64ea                	ld	s1,152(sp)
    80028960:	694a                	ld	s2,144(sp)
    80028962:	69aa                	ld	s3,136(sp)
    80028964:	6a0a                	ld	s4,128(sp)
    80028966:	7ae6                	ld	s5,120(sp)
    80028968:	7b46                	ld	s6,112(sp)
    8002896a:	7ba6                	ld	s7,104(sp)
    8002896c:	7c06                	ld	s8,96(sp)
    8002896e:	6ce6                	ld	s9,88(sp)
    80028970:	6d46                	ld	s10,80(sp)
    80028972:	6da6                	ld	s11,72(sp)
    80028974:	614d                	addi	sp,sp,176
quickjs-nuttx/quickjs.c:43575
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80028976:	ab4f006f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:43577
    if (js_same_value(ctx, this_val, ctx->class_proto[JS_CLASS_REGEXP]))
    8002897a:	613c                	ld	a5,64(a0)
    8002897c:	842a                	mv	s0,a0
    8002897e:	1207b683          	ld	a3,288(a5) # ffffffff80000120 <_ebss+0xfffffffeffefefba>
    80028982:	1287b703          	ld	a4,296(a5)
    80028986:	fede20ef          	jal	ra,8000b972 <js_same_value>
    8002898a:	e551                	bnez	a0,80028a16 <js_regexp_get_source+0xe6>
quickjs-nuttx/quickjs.c:43580
    re = js_get_regexp(ctx, this_val, TRUE);
    8002898c:	6782                	ld	a5,0(sp)
js_get_regexp():
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    8002898e:	4749                	li	a4,18
    80028990:	0067d683          	lhu	a3,6(a5)
    80028994:	04e69963          	bne	a3,a4,800289e6 <js_regexp_get_source+0xb6>
js_regexp_get_source():
quickjs-nuttx/quickjs.c:43584
    p = re->pattern;
    80028998:	0307ba03          	ld	s4,48(a5)
quickjs-nuttx/quickjs.c:43586
    if (p->len == 0) {
    8002899c:	800009b7          	lui	s3,0x80000
    800289a0:	fff9c993          	not	s3,s3
    800289a4:	004a2683          	lw	a3,4(s4)
    800289a8:	0136f633          	and	a2,a3,s3
    800289ac:	2601                	sext.w	a2,a2
    800289ae:	c625                	beqz	a2,80028a16 <js_regexp_get_source+0xe6>
quickjs-nuttx/quickjs.c:43590
    string_buffer_init2(ctx, b, p->len, p->is_wide_char);
    800289b0:	01f6d69b          	srliw	a3,a3,0x1f
    800289b4:	100c                	addi	a1,sp,32
    800289b6:	8522                	mv	a0,s0
    800289b8:	d8cf50ef          	jal	ra,8001df44 <string_buffer_init2>
quickjs-nuttx/quickjs.c:43594
    for (i = 0, n = p->len; i < n;) {
    800289bc:	004a2783          	lw	a5,4(s4)
quickjs-nuttx/quickjs.c:43593
    bra = 0;
    800289c0:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:43594
    for (i = 0, n = p->len; i < n;) {
    800289c2:	4d01                	li	s10,0
    800289c4:	00f9f9b3          	and	s3,s3,a5
quickjs-nuttx/quickjs.c:43596
        switch (c = string_get(p, i++)) {
    800289c8:	05b00a93          	li	s5,91
quickjs-nuttx/quickjs.c:43606
                if (i < n && string_get(p, i) == ']')
    800289cc:	05d00b13          	li	s6,93
quickjs-nuttx/quickjs.c:43596
        switch (c = string_get(p, i++)) {
    800289d0:	05c00b93          	li	s7,92
    800289d4:	4c35                	li	s8,13
quickjs-nuttx/quickjs.c:43594 (discriminator 1)
    for (i = 0, n = p->len; i < n;) {
    800289d6:	073d4563          	blt	s10,s3,80028a40 <js_regexp_get_source+0x110>
quickjs-nuttx/quickjs.c:43630
    return string_buffer_end(b);
    800289da:	1008                	addi	a0,sp,32
    800289dc:	ac4f70ef          	jal	ra,8001fca0 <string_buffer_end>
    800289e0:	e82a                	sd	a0,16(sp)
    800289e2:	ec2e                	sd	a1,24(sp)
    800289e4:	a801                	j	800289f4 <js_regexp_get_source+0xc4>
js_get_regexp():
quickjs-nuttx/quickjs.c:43404
        JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_REGEXP);
    800289e6:	45c9                	li	a1,18
    800289e8:	8522                	mv	a0,s0
    800289ea:	dddef0ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
js_regexp_get_source():
quickjs-nuttx/quickjs.c:43582
        return JS_EXCEPTION;
    800289ee:	4799                	li	a5,6
    800289f0:	e802                	sd	zero,16(sp)
    800289f2:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:43631 (discriminator 1)
}
    800289f4:	70aa                	ld	ra,168(sp)
    800289f6:	740a                	ld	s0,160(sp)
    800289f8:	6542                	ld	a0,16(sp)
    800289fa:	65e2                	ld	a1,24(sp)
    800289fc:	64ea                	ld	s1,152(sp)
    800289fe:	694a                	ld	s2,144(sp)
    80028a00:	69aa                	ld	s3,136(sp)
    80028a02:	6a0a                	ld	s4,128(sp)
    80028a04:	7ae6                	ld	s5,120(sp)
    80028a06:	7b46                	ld	s6,112(sp)
    80028a08:	7ba6                	ld	s7,104(sp)
    80028a0a:	7c06                	ld	s8,96(sp)
    80028a0c:	6ce6                	ld	s9,88(sp)
    80028a0e:	6d46                	ld	s10,80(sp)
    80028a10:	6da6                	ld	s11,72(sp)
    80028a12:	614d                	addi	sp,sp,176
    80028a14:	8082                	ret
quickjs-nuttx/quickjs.c:43588
        return JS_NewString(ctx, "(?:)");
    80028a16:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:43631
}
    80028a18:	740a                	ld	s0,160(sp)
    80028a1a:	70aa                	ld	ra,168(sp)
    80028a1c:	64ea                	ld	s1,152(sp)
    80028a1e:	694a                	ld	s2,144(sp)
    80028a20:	69aa                	ld	s3,136(sp)
    80028a22:	6a0a                	ld	s4,128(sp)
    80028a24:	7ae6                	ld	s5,120(sp)
    80028a26:	7b46                	ld	s6,112(sp)
    80028a28:	7ba6                	ld	s7,104(sp)
    80028a2a:	7c06                	ld	s8,96(sp)
    80028a2c:	6ce6                	ld	s9,88(sp)
    80028a2e:	6d46                	ld	s10,80(sp)
    80028a30:	6da6                	ld	s11,72(sp)
quickjs-nuttx/quickjs.c:43588
        return JS_NewString(ctx, "(?:)");
    80028a32:	00043597          	auipc	a1,0x43
    80028a36:	82658593          	addi	a1,a1,-2010 # 8006b258 <qjsc_repl+0x5ca8>
quickjs-nuttx/quickjs.c:43631
}
    80028a3a:	614d                	addi	sp,sp,176
quickjs-nuttx/quickjs.c:43588
        return JS_NewString(ctx, "(?:)");
    80028a3c:	f7df606f          	j	8001f9b8 <JS_NewString>
quickjs-nuttx/quickjs.c:43596
        switch (c = string_get(p, i++)) {
    80028a40:	85ea                	mv	a1,s10
    80028a42:	8552                	mv	a0,s4
    80028a44:	a20df0ef          	jal	ra,80007c64 <string_get>
    80028a48:	001d0d9b          	addiw	s11,s10,1
    80028a4c:	84aa                	mv	s1,a0
    80028a4e:	05550f63          	beq	a0,s5,80028aac <js_regexp_get_source+0x17c>
    80028a52:	00aacf63          	blt	s5,a0,80028a70 <js_regexp_get_source+0x140>
    80028a56:	09850363          	beq	a0,s8,80028adc <js_regexp_get_source+0x1ac>
    80028a5a:	02f00793          	li	a5,47
    80028a5e:	06f50763          	beq	a0,a5,80028acc <js_regexp_get_source+0x19c>
    80028a62:	47a9                	li	a5,10
quickjs-nuttx/quickjs.c:43613
            c2 = 'n';
    80028a64:	06e00413          	li	s0,110
quickjs-nuttx/quickjs.c:43596
        switch (c = string_get(p, i++)) {
    80028a68:	06f50763          	beq	a0,a5,80028ad6 <js_regexp_get_source+0x1a6>
quickjs-nuttx/quickjs.c:43595
        c2 = -1;
    80028a6c:	844a                	mv	s0,s2
    80028a6e:	a00d                	j	80028a90 <js_regexp_get_source+0x160>
quickjs-nuttx/quickjs.c:43596
        switch (c = string_get(p, i++)) {
    80028a70:	01750663          	beq	a0,s7,80028a7c <js_regexp_get_source+0x14c>
    80028a74:	ff651ce3          	bne	a0,s6,80028a6c <js_regexp_get_source+0x13c>
quickjs-nuttx/quickjs.c:43602
            bra = 0;
    80028a78:	4c81                	li	s9,0
    80028a7a:	bfcd                	j	80028a6c <js_regexp_get_source+0x13c>
quickjs-nuttx/quickjs.c:43595
        c2 = -1;
    80028a7c:	844a                	mv	s0,s2
quickjs-nuttx/quickjs.c:43598
            if (i < n)
    80028a7e:	013dd963          	bge	s11,s3,80028a90 <js_regexp_get_source+0x160>
quickjs-nuttx/quickjs.c:43599
                c2 = string_get(p, i++);
    80028a82:	85ee                	mv	a1,s11
    80028a84:	8552                	mv	a0,s4
    80028a86:	2d09                	addiw	s10,s10,2
    80028a88:	9dcdf0ef          	jal	ra,80007c64 <string_get>
    80028a8c:	842a                	mv	s0,a0
    80028a8e:	8dea                	mv	s11,s10
quickjs-nuttx/quickjs.c:43626
        string_buffer_putc16(b, c);
    80028a90:	0004859b          	sext.w	a1,s1
    80028a94:	1008                	addi	a0,sp,32
    80028a96:	a9cf60ef          	jal	ra,8001ed32 <string_buffer_putc16>
quickjs-nuttx/quickjs.c:43627
        if (c2 >= 0)
    80028a9a:	00044763          	bltz	s0,80028aa8 <js_regexp_get_source+0x178>
quickjs-nuttx/quickjs.c:43628
            string_buffer_putc16(b, c2);
    80028a9e:	0004059b          	sext.w	a1,s0
    80028aa2:	1008                	addi	a0,sp,32
    80028aa4:	a8ef60ef          	jal	ra,8001ed32 <string_buffer_putc16>
quickjs-nuttx/quickjs.c:43621 (discriminator 1)
                c = '\\';
    80028aa8:	8d6e                	mv	s10,s11
    80028aaa:	b735                	j	800289d6 <js_regexp_get_source+0xa6>
quickjs-nuttx/quickjs.c:43595
        c2 = -1;
    80028aac:	844a                	mv	s0,s2
quickjs-nuttx/quickjs.c:43605
            if (!bra) {
    80028aae:	fe0c91e3          	bnez	s9,80028a90 <js_regexp_get_source+0x160>
quickjs-nuttx/quickjs.c:43608
                bra = 1;
    80028ab2:	4c85                	li	s9,1
quickjs-nuttx/quickjs.c:43606
                if (i < n && string_get(p, i) == ']')
    80028ab4:	fd3ddee3          	bge	s11,s3,80028a90 <js_regexp_get_source+0x160>
quickjs-nuttx/quickjs.c:43606 (discriminator 1)
    80028ab8:	85ee                	mv	a1,s11
    80028aba:	8552                	mv	a0,s4
    80028abc:	9a8df0ef          	jal	ra,80007c64 <string_get>
    80028ac0:	842a                	mv	s0,a0
    80028ac2:	03651063          	bne	a0,s6,80028ae2 <js_regexp_get_source+0x1b2>
quickjs-nuttx/quickjs.c:43607
                    c2 = string_get(p, i++);
    80028ac6:	002d0d9b          	addiw	s11,s10,2
    80028aca:	b7d9                	j	80028a90 <js_regexp_get_source+0x160>
quickjs-nuttx/quickjs.c:43595
        c2 = -1;
    80028acc:	844a                	mv	s0,s2
quickjs-nuttx/quickjs.c:43620
            if (!bra) {
    80028ace:	fc0c91e3          	bnez	s9,80028a90 <js_regexp_get_source+0x160>
quickjs-nuttx/quickjs.c:43622
                c2 = '/';
    80028ad2:	02f00413          	li	s0,47
quickjs-nuttx/quickjs.c:43612
            c = '\\';
    80028ad6:	05c00493          	li	s1,92
    80028ada:	bf5d                	j	80028a90 <js_regexp_get_source+0x160>
quickjs-nuttx/quickjs.c:43617
            c2 = 'r';
    80028adc:	07200413          	li	s0,114
    80028ae0:	bfdd                	j	80028ad6 <js_regexp_get_source+0x1a6>
quickjs-nuttx/quickjs.c:43595
        c2 = -1;
    80028ae2:	844a                	mv	s0,s2
quickjs-nuttx/quickjs.c:43608
                bra = 1;
    80028ae4:	4c85                	li	s9,1
    80028ae6:	b76d                	j	80028a90 <js_regexp_get_source+0x160>

0000000080028ae8 <js_ftoa>:
js_ftoa():
quickjs-nuttx/quickjs.c:11223
{
    80028ae8:	7115                	addi	sp,sp,-224
    80028aea:	e5a6                	sd	s1,200(sp)
    80028aec:	e1ca                	sd	s2,192(sp)
    80028aee:	fd4e                	sd	s3,184(sp)
    80028af0:	f556                	sd	s5,168(sp)
    80028af2:	f15a                	sd	s6,160(sp)
    80028af4:	ed5e                	sd	s7,152(sp)
    80028af6:	ec32                	sd	a2,24(sp)
    80028af8:	8936                	mv	s2,a3
    80028afa:	ed86                	sd	ra,216(sp)
    80028afc:	e9a2                	sd	s0,208(sp)
    80028afe:	f952                	sd	s4,176(sp)
    80028b00:	84aa                	mv	s1,a0
    80028b02:	e82e                	sd	a1,16(sp)
    80028b04:	8b3a                	mv	s6,a4
    80028b06:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:11229
    val = JS_ToNumeric(ctx, val1);
    80028b08:	bf6fc0ef          	jal	ra,80024efe <JS_ToNumeric>
    80028b0c:	f02a                	sd	a0,32(sp)
    80028b0e:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80028b10:	00058b9b          	sext.w	s7,a1
js_ftoa():
quickjs-nuttx/quickjs.c:11230
    if (JS_IsException(val))
    80028b14:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:11229
    val = JS_ToNumeric(ctx, val1);
    80028b16:	862a                	mv	a2,a0
    80028b18:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:11230
    if (JS_IsException(val))
    80028b1a:	035b9163          	bne	s7,s5,80028b3c <js_ftoa+0x54>
quickjs-nuttx/quickjs.c:11231
        return val;
    80028b1e:	f4aa                	sd	a0,104(sp)
    80028b20:	f8ae                	sd	a1,112(sp)
quickjs-nuttx/quickjs.c:11277 (discriminator 1)
}
    80028b22:	60ee                	ld	ra,216(sp)
    80028b24:	644e                	ld	s0,208(sp)
    80028b26:	7526                	ld	a0,104(sp)
    80028b28:	75c6                	ld	a1,112(sp)
    80028b2a:	64ae                	ld	s1,200(sp)
    80028b2c:	690e                	ld	s2,192(sp)
    80028b2e:	79ea                	ld	s3,184(sp)
    80028b30:	7a4a                	ld	s4,176(sp)
    80028b32:	7aaa                	ld	s5,168(sp)
    80028b34:	7b0a                	ld	s6,160(sp)
    80028b36:	6bea                	ld	s7,152(sp)
    80028b38:	612d                	addi	sp,sp,224
    80028b3a:	8082                	ret
quickjs-nuttx/quickjs.c:11232
    a = JS_ToBigFloat(ctx, &a_s, val);
    80028b3c:	04010a13          	addi	s4,sp,64
    80028b40:	85d2                	mv	a1,s4
    80028b42:	8526                	mv	a0,s1
    80028b44:	925e10ef          	jal	ra,8000a468 <JS_ToBigFloat>
    80028b48:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:11233
    if (!a) {
    80028b4a:	e909                	bnez	a0,80028b5c <js_ftoa+0x74>
quickjs-nuttx/quickjs.c:11234
        JS_FreeValue(ctx, val);
    80028b4c:	7582                	ld	a1,32(sp)
    80028b4e:	7622                	ld	a2,40(sp)
    80028b50:	8526                	mv	a0,s1
    80028b52:	c4de20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11235
        return JS_EXCEPTION;
    80028b56:	f482                	sd	zero,104(sp)
    80028b58:	f8d6                	sd	s5,112(sp)
    80028b5a:	b7e1                	j	80028b22 <js_ftoa+0x3a>
quickjs-nuttx/quickjs.c:11238
    if (a->expn == BF_EXP_ZERO)
    80028b5c:	6918                	ld	a4,16(a0)
    80028b5e:	57fd                	li	a5,-1
    80028b60:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/quickjs.c:11237
    saved_sign = a->sign;
    80028b62:	00852a83          	lw	s5,8(a0)
quickjs-nuttx/quickjs.c:11238
    if (a->expn == BF_EXP_ZERO)
    80028b66:	00f71463          	bne	a4,a5,80028b6e <js_ftoa+0x86>
quickjs-nuttx/quickjs.c:11239
        a->sign = 0;
    80028b6a:	00052423          	sw	zero,8(a0)
quickjs-nuttx/quickjs.c:11240
    flags |= BF_FTOA_JS_QUIRKS;
    80028b6e:	004007b7          	lui	a5,0x400
    80028b72:	00f9e733          	or	a4,s3,a5
quickjs-nuttx/quickjs.c:11241
    if ((flags & BF_FTOA_FORMAT_MASK) == BF_FTOA_FORMAT_FREE_MIN) {
    80028b76:	000307b7          	lui	a5,0x30
    80028b7a:	00f9f9b3          	and	s3,s3,a5
    80028b7e:	0af99063          	bne	s3,a5,80028c1e <js_ftoa+0x136>
quickjs-nuttx/quickjs.c:11245
        if ((radix & (radix - 1)) != 0) {
    80028b82:	fff9079b          	addiw	a5,s2,-1
    80028b86:	00f977b3          	and	a5,s2,a5
    80028b8a:	2781                	sext.w	a5,a5
    80028b8c:	c3c1                	beqz	a5,80028c0c <js_ftoa+0x124>
quickjs-nuttx/quickjs.c:11249
            if (JS_VALUE_GET_TAG(val) == JS_TAG_BIG_FLOAT) {
    80028b8e:	57dd                	li	a5,-9
    80028b90:	06fb9963          	bne	s7,a5,80028c02 <js_ftoa+0x11a>
quickjs-nuttx/quickjs.c:11251
                flags1 = ctx->fp_env.flags &
    80028b94:	1a04a983          	lw	s3,416(s1)
quickjs-nuttx/quickjs.c:11250
                prec = ctx->fp_env.prec;
    80028b98:	1984ab03          	lw	s6,408(s1)
quickjs-nuttx/quickjs.c:11251
                flags1 = ctx->fp_env.flags &
    80028b9c:	7e89f993          	andi	s3,s3,2024
quickjs-nuttx/quickjs.c:11257
            bf_init(ctx->bf_ctx, r);
    80028ba0:	1904b503          	ld	a0,400(s1)
    80028ba4:	10ac                	addi	a1,sp,104
    80028ba6:	e43a                	sd	a4,8(sp)
    80028ba8:	7c72e0ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:11258
            bf_set(r, a);
    80028bac:	85a2                	mv	a1,s0
    80028bae:	10a8                	addi	a0,sp,104
    80028bb0:	4722f0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:11259
            bf_round(r, prec, flags1 | BF_RNDN);
    80028bb4:	2981                	sext.w	s3,s3
    80028bb6:	864e                	mv	a2,s3
    80028bb8:	85da                	mv	a1,s6
    80028bba:	10a8                	addi	a0,sp,104
    80028bbc:	7362f0ef          	jal	ra,800582f2 <bf_round>
quickjs-nuttx/quickjs.c:11260
            str = bf_ftoa(NULL, r, radix, prec, flags1 | flags);
    80028bc0:	6722                	ld	a4,8(sp)
    80028bc2:	864a                	mv	a2,s2
    80028bc4:	86da                	mv	a3,s6
    80028bc6:	00e9e733          	or	a4,s3,a4
    80028bca:	10ac                	addi	a1,sp,104
    80028bcc:	4501                	li	a0,0
    80028bce:	75c350ef          	jal	ra,8005e32a <bf_ftoa>
    80028bd2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:11261
            bf_delete(r);
    80028bd4:	10a8                	addi	a0,sp,104
    80028bd6:	881e10ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:11268
    a->sign = saved_sign;
    80028bda:	01542423          	sw	s5,8(s0)
quickjs-nuttx/quickjs.c:11269
    if (a == &a_s)
    80028bde:	01441563          	bne	s0,s4,80028be8 <js_ftoa+0x100>
quickjs-nuttx/quickjs.c:11270
        bf_delete(a);
    80028be2:	8522                	mv	a0,s0
    80028be4:	873e10ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:11271
    JS_FreeValue(ctx, val);
    80028be8:	7582                	ld	a1,32(sp)
    80028bea:	7622                	ld	a2,40(sp)
    80028bec:	8526                	mv	a0,s1
    80028bee:	bb1e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11272
    if (!str)
    80028bf2:	02091863          	bnez	s2,80028c22 <js_ftoa+0x13a>
quickjs-nuttx/quickjs.c:11273
        return JS_ThrowOutOfMemory(ctx);
    80028bf6:	8526                	mv	a0,s1
    80028bf8:	cdcf10ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
    80028bfc:	f4aa                	sd	a0,104(sp)
    80028bfe:	f8ae                	sd	a1,112(sp)
    80028c00:	b70d                	j	80028b22 <js_ftoa+0x3a>
quickjs-nuttx/quickjs.c:11255
                flags1 = bf_set_exp_bits(11) | BF_FLAG_SUBNORMAL;
    80028c02:	64800993          	li	s3,1608
quickjs-nuttx/quickjs.c:11254
                prec = 53;
    80028c06:	03500b13          	li	s6,53
    80028c0a:	bf59                	j	80028ba0 <js_ftoa+0xb8>
quickjs-nuttx/quickjs.c:11263
            str = bf_ftoa(NULL, a, radix, BF_PREC_INF, flags);
    80028c0c:	56fd                	li	a3,-1
    80028c0e:	8289                	srli	a3,a3,0x2
quickjs-nuttx/quickjs.c:11266
        str = bf_ftoa(NULL, a, radix, prec, flags);
    80028c10:	864a                	mv	a2,s2
    80028c12:	85a2                	mv	a1,s0
    80028c14:	4501                	li	a0,0
    80028c16:	714350ef          	jal	ra,8005e32a <bf_ftoa>
    80028c1a:	892a                	mv	s2,a0
    80028c1c:	bf7d                	j	80028bda <js_ftoa+0xf2>
    80028c1e:	86da                	mv	a3,s6
    80028c20:	bfc5                	j	80028c10 <js_ftoa+0x128>
quickjs-nuttx/quickjs.c:11274
    ret = JS_NewString(ctx, str);
    80028c22:	85ca                	mv	a1,s2
    80028c24:	8526                	mv	a0,s1
    80028c26:	d93f60ef          	jal	ra,8001f9b8 <JS_NewString>
    80028c2a:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:11275
    bf_free(ctx->bf_ctx, str);
    80028c2c:	1904b503          	ld	a0,400(s1)
quickjs-nuttx/quickjs.c:11274
    ret = JS_NewString(ctx, str);
    80028c30:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:11275
    bf_free(ctx->bf_ctx, str);
    80028c32:	85ca                	mv	a1,s2
    80028c34:	a8fe10ef          	jal	ra,8000a6c2 <bf_free>
quickjs-nuttx/quickjs.c:11276
    return ret;
    80028c38:	77c2                	ld	a5,48(sp)
    80028c3a:	f4be                	sd	a5,104(sp)
    80028c3c:	77e2                	ld	a5,56(sp)
    80028c3e:	f8be                	sd	a5,112(sp)
    80028c40:	b5cd                	j	80028b22 <js_ftoa+0x3a>

0000000080028c42 <js_bigfloat_toExponential>:
js_bigfloat_toExponential():
quickjs-nuttx/quickjs.c:51007
{
    80028c42:	7119                	addi	sp,sp,-128
    80028c44:	f8a2                	sd	s0,112(sp)
    80028c46:	f4a6                	sd	s1,104(sp)
    80028c48:	f0ca                	sd	s2,96(sp)
    80028c4a:	ecce                	sd	s3,88(sp)
    80028c4c:	e8d2                	sd	s4,80(sp)
    80028c4e:	fc86                	sd	ra,120(sp)
    80028c50:	842a                	mv	s0,a0
    80028c52:	e02e                	sd	a1,0(sp)
    80028c54:	e432                	sd	a2,8(sp)
    80028c56:	89b6                	mv	s3,a3
    80028c58:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:51012
    val = js_thisBigFloatValue(ctx, this_val);
    80028c5a:	d92f00ef          	jal	ra,800191ec <js_thisBigFloatValue>
    80028c5e:	f02a                	sd	a0,32(sp)
    80028c60:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:51013
    if (JS_IsException(val))
    80028c62:	00058a1b          	sext.w	s4,a1
    80028c66:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51012
    val = js_thisBigFloatValue(ctx, this_val);
    80028c68:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:51013
    if (JS_IsException(val))
    80028c6a:	00fa1e63          	bne	s4,a5,80028c86 <js_bigfloat_toExponential+0x44>
quickjs-nuttx/quickjs.c:51014
        return val;
    80028c6e:	e0aa                	sd	a0,64(sp)
    80028c70:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:51047
}
    80028c72:	70e6                	ld	ra,120(sp)
    80028c74:	7446                	ld	s0,112(sp)
    80028c76:	6506                	ld	a0,64(sp)
    80028c78:	65a6                	ld	a1,72(sp)
    80028c7a:	74a6                	ld	s1,104(sp)
    80028c7c:	7906                	ld	s2,96(sp)
    80028c7e:	69e6                	ld	s3,88(sp)
    80028c80:	6a46                	ld	s4,80(sp)
    80028c82:	6109                	addi	sp,sp,128
    80028c84:	8082                	ret
quickjs-nuttx/quickjs.c:51015
    if (JS_ToInt64Sat(ctx, &f, argv[0]))
    80028c86:	6090                	ld	a2,0(s1)
    80028c88:	6494                	ld	a3,8(s1)
    80028c8a:	082c                	addi	a1,sp,24
    80028c8c:	8522                	mv	a0,s0
    80028c8e:	f4cfb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80028c92:	e52d                	bnez	a0,80028cfc <js_bigfloat_toExponential+0xba>
js_bigfloat_is_finite():
quickjs-nuttx/quickjs.c:50991
    switch(tag) {
    80028c94:	57dd                	li	a5,-9
    80028c96:	00fa1963          	bne	s4,a5,80028ca8 <js_bigfloat_toExponential+0x66>
js_bigfloat_toExponential():
quickjs-nuttx/quickjs.c:51017
    if (!js_bigfloat_is_finite(ctx, val)) {
    80028c9a:	01893683          	ld	a3,24(s2) # ffffffff80000018 <_ebss+0xfffffffeffefeeb2>
    80028c9e:	57ed                	li	a5,-5
    80028ca0:	0017d713          	srli	a4,a5,0x1
    80028ca4:	02d75363          	bge	a4,a3,80028cca <js_bigfloat_toExponential+0x88>
quickjs-nuttx/quickjs.c:51018
        ret = JS_ToString(ctx, val);
    80028ca8:	7582                	ld	a1,32(sp)
    80028caa:	7622                	ld	a2,40(sp)
    80028cac:	8522                	mv	a0,s0
    80028cae:	acff70ef          	jal	ra,8002077c <JS_ToString>
quickjs-nuttx/quickjs.c:51039
        ret = js_ftoa(ctx, val, radix, f + 1,
    80028cb2:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:51042
    JS_FreeValue(ctx, val);
    80028cb4:	7622                	ld	a2,40(sp)
    80028cb6:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:51039
        ret = js_ftoa(ctx, val, radix, f + 1,
    80028cb8:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:51042
    JS_FreeValue(ctx, val);
    80028cba:	8522                	mv	a0,s0
    80028cbc:	ae3e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51043
    return ret;
    80028cc0:	77c2                	ld	a5,48(sp)
    80028cc2:	e0be                	sd	a5,64(sp)
    80028cc4:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:51046
    return JS_EXCEPTION;
    80028cc6:	e4be                	sd	a5,72(sp)
    80028cc8:	b76d                	j	80028c72 <js_bigfloat_toExponential+0x30>
quickjs-nuttx/quickjs.c:51019
    } else if (JS_IsUndefined(argv[0])) {
    80028cca:	4494                	lw	a3,8(s1)
    80028ccc:	470d                	li	a4,3
    80028cce:	00e69c63          	bne	a3,a4,80028ce6 <js_bigfloat_toExponential+0xa4>
quickjs-nuttx/quickjs.c:51020
        ret = js_ftoa(ctx, val, 10, 0,
    80028cd2:	001307b7          	lui	a5,0x130
    80028cd6:	4701                	li	a4,0
    80028cd8:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:51039
        ret = js_ftoa(ctx, val, radix, f + 1,
    80028cda:	7582                	ld	a1,32(sp)
    80028cdc:	7622                	ld	a2,40(sp)
    80028cde:	8522                	mv	a0,s0
    80028ce0:	e09ff0ef          	jal	ra,80028ae8 <js_ftoa>
    80028ce4:	b7f9                	j	80028cb2 <js_bigfloat_toExponential+0x70>
quickjs-nuttx/quickjs.c:51023
        if (f < 0 || f > BF_PREC_MAX) {
    80028ce6:	6762                	ld	a4,24(sp)
    80028ce8:	8389                	srli	a5,a5,0x2
    80028cea:	02e7f163          	bgeu	a5,a4,80028d0c <js_bigfloat_toExponential+0xca>
quickjs-nuttx/quickjs.c:51024
            JS_ThrowRangeError(ctx, "invalid number of digits");
    80028cee:	00042597          	auipc	a1,0x42
    80028cf2:	ee258593          	addi	a1,a1,-286 # 8006abd0 <qjsc_repl+0x5620>
    80028cf6:	8522                	mv	a0,s0
    80028cf8:	bd7f00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:51045
    JS_FreeValue(ctx, val);
    80028cfc:	7582                	ld	a1,32(sp)
    80028cfe:	7622                	ld	a2,40(sp)
    80028d00:	8522                	mv	a0,s0
    80028d02:	a9de20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51046
    return JS_EXCEPTION;
    80028d06:	4799                	li	a5,6
    80028d08:	e082                	sd	zero,64(sp)
    80028d0a:	bf75                	j	80028cc6 <js_bigfloat_toExponential+0x84>
quickjs-nuttx/quickjs.c:51029
        if (argc > 1) {
    80028d0c:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:51027
        rnd_mode = BF_RNDNA;
    80028d0e:	4911                	li	s2,4
quickjs-nuttx/quickjs.c:51029
        if (argc > 1) {
    80028d10:	0337dd63          	bge	a5,s3,80028d4a <js_bigfloat_toExponential+0x108>
quickjs-nuttx/quickjs.c:51030
            rnd_mode = bigfloat_get_rnd_mode(ctx, argv[1]);
    80028d14:	688c                	ld	a1,16(s1)
    80028d16:	6c90                	ld	a2,24(s1)
    80028d18:	8522                	mv	a0,s0
    80028d1a:	a07fa0ef          	jal	ra,80023720 <bigfloat_get_rnd_mode>
    80028d1e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:51031
            if (rnd_mode < 0)
    80028d20:	fc054ee3          	bltz	a0,80028cfc <js_bigfloat_toExponential+0xba>
quickjs-nuttx/quickjs.c:51034
        if (argc > 2) {
    80028d24:	4789                	li	a5,2
    80028d26:	02f98263          	beq	s3,a5,80028d4a <js_bigfloat_toExponential+0x108>
quickjs-nuttx/quickjs.c:51035
            radix = js_get_radix(ctx, argv[2]);
    80028d2a:	708c                	ld	a1,32(s1)
    80028d2c:	7490                	ld	a2,40(s1)
    80028d2e:	8522                	mv	a0,s0
    80028d30:	923fa0ef          	jal	ra,80023652 <js_get_radix>
    80028d34:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:51036
            if (radix < 0)
    80028d36:	fc0543e3          	bltz	a0,80028cfc <js_bigfloat_toExponential+0xba>
quickjs-nuttx/quickjs.c:51039
        ret = js_ftoa(ctx, val, radix, f + 1,
    80028d3a:	6762                	ld	a4,24(sp)
quickjs-nuttx/quickjs.c:51040
                      rnd_mode | BF_FTOA_FORMAT_FIXED | BF_FTOA_FORCE_EXP);
    80028d3c:	001007b7          	lui	a5,0x100
    80028d40:	00f967b3          	or	a5,s2,a5
quickjs-nuttx/quickjs.c:51039
        ret = js_ftoa(ctx, val, radix, f + 1,
    80028d44:	2781                	sext.w	a5,a5
    80028d46:	0705                	addi	a4,a4,1
    80028d48:	bf49                	j	80028cda <js_bigfloat_toExponential+0x98>
quickjs-nuttx/quickjs.c:51028
        radix = 10;
    80028d4a:	46a9                	li	a3,10
    80028d4c:	b7fd                	j	80028d3a <js_bigfloat_toExponential+0xf8>

0000000080028d4e <js_bigfloat_toFixed>:
js_bigfloat_toFixed():
quickjs-nuttx/quickjs.c:50950
{
    80028d4e:	7119                	addi	sp,sp,-128
    80028d50:	f8a2                	sd	s0,112(sp)
    80028d52:	f4a6                	sd	s1,104(sp)
    80028d54:	ecce                	sd	s3,88(sp)
    80028d56:	84ba                	mv	s1,a4
    80028d58:	fc86                	sd	ra,120(sp)
    80028d5a:	f0ca                	sd	s2,96(sp)
    80028d5c:	842a                	mv	s0,a0
    80028d5e:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:50955
    val = js_thisBigFloatValue(ctx, this_val);
    80028d60:	c8cf00ef          	jal	ra,800191ec <js_thisBigFloatValue>
    80028d64:	f02a                	sd	a0,32(sp)
    80028d66:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:50956
    if (JS_IsException(val))
    80028d68:	0005871b          	sext.w	a4,a1
    80028d6c:	4799                	li	a5,6
    80028d6e:	00f71d63          	bne	a4,a5,80028d88 <js_bigfloat_toFixed+0x3a>
quickjs-nuttx/quickjs.c:50957
        return val;
    80028d72:	e0aa                	sd	a0,64(sp)
    80028d74:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:50983
}
    80028d76:	70e6                	ld	ra,120(sp)
    80028d78:	7446                	ld	s0,112(sp)
    80028d7a:	6506                	ld	a0,64(sp)
    80028d7c:	65a6                	ld	a1,72(sp)
    80028d7e:	74a6                	ld	s1,104(sp)
    80028d80:	7906                	ld	s2,96(sp)
    80028d82:	69e6                	ld	s3,88(sp)
    80028d84:	6109                	addi	sp,sp,128
    80028d86:	8082                	ret
quickjs-nuttx/quickjs.c:50958
    if (JS_ToInt64Sat(ctx, &f, argv[0]))
    80028d88:	6090                	ld	a2,0(s1)
    80028d8a:	6494                	ld	a3,8(s1)
    80028d8c:	082c                	addi	a1,sp,24
    80028d8e:	8522                	mv	a0,s0
    80028d90:	e4afb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80028d94:	ed09                	bnez	a0,80028dae <js_bigfloat_toFixed+0x60>
quickjs-nuttx/quickjs.c:50960
    if (f < 0 || f > BF_PREC_MAX) {
    80028d96:	6762                	ld	a4,24(sp)
    80028d98:	57ed                	li	a5,-5
    80028d9a:	8389                	srli	a5,a5,0x2
    80028d9c:	02e7f163          	bgeu	a5,a4,80028dbe <js_bigfloat_toFixed+0x70>
quickjs-nuttx/quickjs.c:50961
        JS_ThrowRangeError(ctx, "invalid number of digits");
    80028da0:	00042597          	auipc	a1,0x42
    80028da4:	e3058593          	addi	a1,a1,-464 # 8006abd0 <qjsc_repl+0x5620>
    80028da8:	8522                	mv	a0,s0
    80028daa:	b25f00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:50981
    JS_FreeValue(ctx, val);
    80028dae:	7582                	ld	a1,32(sp)
    80028db0:	7622                	ld	a2,40(sp)
    80028db2:	8522                	mv	a0,s0
    80028db4:	9ebe20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50982
    return JS_EXCEPTION;
    80028db8:	4799                	li	a5,6
    80028dba:	e082                	sd	zero,64(sp)
    80028dbc:	a8a1                	j	80028e14 <js_bigfloat_toFixed+0xc6>
quickjs-nuttx/quickjs.c:50967
    if (argc > 1) {
    80028dbe:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:50964
    rnd_mode = BF_RNDNA;
    80028dc0:	4911                	li	s2,4
quickjs-nuttx/quickjs.c:50967
    if (argc > 1) {
    80028dc2:	0537db63          	bge	a5,s3,80028e18 <js_bigfloat_toFixed+0xca>
quickjs-nuttx/quickjs.c:50968
        rnd_mode = bigfloat_get_rnd_mode(ctx, argv[1]);
    80028dc6:	688c                	ld	a1,16(s1)
    80028dc8:	6c90                	ld	a2,24(s1)
    80028dca:	8522                	mv	a0,s0
    80028dcc:	955fa0ef          	jal	ra,80023720 <bigfloat_get_rnd_mode>
    80028dd0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:50969
        if (rnd_mode < 0)
    80028dd2:	fc054ee3          	bltz	a0,80028dae <js_bigfloat_toFixed+0x60>
quickjs-nuttx/quickjs.c:50972
    if (argc > 2) {
    80028dd6:	4789                	li	a5,2
    80028dd8:	04f98063          	beq	s3,a5,80028e18 <js_bigfloat_toFixed+0xca>
quickjs-nuttx/quickjs.c:50973
        radix = js_get_radix(ctx, argv[2]);
    80028ddc:	708c                	ld	a1,32(s1)
    80028dde:	7490                	ld	a2,40(s1)
    80028de0:	8522                	mv	a0,s0
    80028de2:	871fa0ef          	jal	ra,80023652 <js_get_radix>
    80028de6:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:50974
        if (radix < 0)
    80028de8:	fc0543e3          	bltz	a0,80028dae <js_bigfloat_toFixed+0x60>
quickjs-nuttx/quickjs.c:50977
    ret = js_ftoa(ctx, val, radix, f, rnd_mode | BF_FTOA_FORMAT_FRAC);
    80028dec:	6762                	ld	a4,24(sp)
    80028dee:	7622                	ld	a2,40(sp)
    80028df0:	7582                	ld	a1,32(sp)
    80028df2:	67c1                	lui	a5,0x10
    80028df4:	00f967b3          	or	a5,s2,a5
    80028df8:	2781                	sext.w	a5,a5
    80028dfa:	8522                	mv	a0,s0
    80028dfc:	cedff0ef          	jal	ra,80028ae8 <js_ftoa>
    80028e00:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:50978
    JS_FreeValue(ctx, val);
    80028e02:	7622                	ld	a2,40(sp)
    80028e04:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:50977
    ret = js_ftoa(ctx, val, radix, f, rnd_mode | BF_FTOA_FORMAT_FRAC);
    80028e06:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:50978
    JS_FreeValue(ctx, val);
    80028e08:	8522                	mv	a0,s0
    80028e0a:	995e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50979
    return ret;
    80028e0e:	77c2                	ld	a5,48(sp)
    80028e10:	e0be                	sd	a5,64(sp)
    80028e12:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:50982
    return JS_EXCEPTION;
    80028e14:	e4be                	sd	a5,72(sp)
    80028e16:	b785                	j	80028d76 <js_bigfloat_toFixed+0x28>
quickjs-nuttx/quickjs.c:50965
    radix = 10;
    80028e18:	46a9                	li	a3,10
    80028e1a:	bfc9                	j	80028dec <js_bigfloat_toFixed+0x9e>

0000000080028e1c <js_bigfloat_toPrecision>:
js_bigfloat_toPrecision():
quickjs-nuttx/quickjs.c:51051
{
    80028e1c:	7119                	addi	sp,sp,-128
    80028e1e:	f8a2                	sd	s0,112(sp)
    80028e20:	f4a6                	sd	s1,104(sp)
    80028e22:	f0ca                	sd	s2,96(sp)
    80028e24:	ecce                	sd	s3,88(sp)
    80028e26:	e8d2                	sd	s4,80(sp)
    80028e28:	fc86                	sd	ra,120(sp)
    80028e2a:	842a                	mv	s0,a0
    80028e2c:	e02e                	sd	a1,0(sp)
    80028e2e:	e432                	sd	a2,8(sp)
    80028e30:	8a36                	mv	s4,a3
    80028e32:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:51056
    val = js_thisBigFloatValue(ctx, this_val);
    80028e34:	bb8f00ef          	jal	ra,800191ec <js_thisBigFloatValue>
    80028e38:	f02a                	sd	a0,32(sp)
    80028e3a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:51057
    if (JS_IsException(val))
    80028e3c:	0005891b          	sext.w	s2,a1
    80028e40:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:51056
    val = js_thisBigFloatValue(ctx, this_val);
    80028e42:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:51057
    if (JS_IsException(val))
    80028e44:	00f91e63          	bne	s2,a5,80028e60 <js_bigfloat_toPrecision+0x44>
quickjs-nuttx/quickjs.c:51058
        return val;
    80028e48:	e0aa                	sd	a0,64(sp)
    80028e4a:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:51090
}
    80028e4c:	70e6                	ld	ra,120(sp)
    80028e4e:	7446                	ld	s0,112(sp)
    80028e50:	6506                	ld	a0,64(sp)
    80028e52:	65a6                	ld	a1,72(sp)
    80028e54:	74a6                	ld	s1,104(sp)
    80028e56:	7906                	ld	s2,96(sp)
    80028e58:	69e6                	ld	s3,88(sp)
    80028e5a:	6a46                	ld	s4,80(sp)
    80028e5c:	6109                	addi	sp,sp,128
    80028e5e:	8082                	ret
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80028e60:	6494                	ld	a3,8(s1)
js_bigfloat_toPrecision():
quickjs-nuttx/quickjs.c:51059
    if (JS_IsUndefined(argv[0]))
    80028e62:	478d                	li	a5,3
    80028e64:	0006871b          	sext.w	a4,a3
    80028e68:	02f71363          	bne	a4,a5,80028e8e <js_bigfloat_toPrecision+0x72>
quickjs-nuttx/quickjs.c:51065
        ret = JS_ToString(ctx, this_val);
    80028e6c:	6582                	ld	a1,0(sp)
    80028e6e:	6622                	ld	a2,8(sp)
    80028e70:	8522                	mv	a0,s0
    80028e72:	90bf70ef          	jal	ra,8002077c <JS_ToString>
quickjs-nuttx/quickjs.c:51083
        ret = js_ftoa(ctx, val, radix, p, rnd_mode | BF_FTOA_FORMAT_FIXED);
    80028e76:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:51085
    JS_FreeValue(ctx, val);
    80028e78:	7622                	ld	a2,40(sp)
    80028e7a:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:51083
        ret = js_ftoa(ctx, val, radix, p, rnd_mode | BF_FTOA_FORMAT_FIXED);
    80028e7c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:51085
    JS_FreeValue(ctx, val);
    80028e7e:	8522                	mv	a0,s0
    80028e80:	91fe20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51086
    return ret;
    80028e84:	77c2                	ld	a5,48(sp)
    80028e86:	e0be                	sd	a5,64(sp)
    80028e88:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:51089
    return JS_EXCEPTION;
    80028e8a:	e4be                	sd	a5,72(sp)
    80028e8c:	b7c1                	j	80028e4c <js_bigfloat_toPrecision+0x30>
quickjs-nuttx/quickjs.c:51061
    if (JS_ToInt64Sat(ctx, &p, argv[0]))
    80028e8e:	6090                	ld	a2,0(s1)
    80028e90:	082c                	addi	a1,sp,24
    80028e92:	8522                	mv	a0,s0
    80028e94:	d46fb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    80028e98:	e51d                	bnez	a0,80028ec6 <js_bigfloat_toPrecision+0xaa>
js_bigfloat_is_finite():
quickjs-nuttx/quickjs.c:50991
    switch(tag) {
    80028e9a:	57dd                	li	a5,-9
    80028e9c:	fcf918e3          	bne	s2,a5,80028e6c <js_bigfloat_toPrecision+0x50>
js_bigfloat_toPrecision():
quickjs-nuttx/quickjs.c:51063
    if (!js_bigfloat_is_finite(ctx, val)) {
    80028ea0:	0189b703          	ld	a4,24(s3) # ffffffff80000018 <_ebss+0xfffffffeffefeeb2>
    80028ea4:	57ed                	li	a5,-5
    80028ea6:	8385                	srli	a5,a5,0x1
    80028ea8:	fce7c2e3          	blt	a5,a4,80028e6c <js_bigfloat_toPrecision+0x50>
quickjs-nuttx/quickjs.c:51067
        if (p < 1 || p > BF_PREC_MAX) {
    80028eac:	67e2                	ld	a5,24(sp)
    80028eae:	00295913          	srli	s2,s2,0x2
    80028eb2:	17fd                	addi	a5,a5,-1
    80028eb4:	02f97163          	bgeu	s2,a5,80028ed6 <js_bigfloat_toPrecision+0xba>
quickjs-nuttx/quickjs.c:51068
            JS_ThrowRangeError(ctx, "invalid number of digits");
    80028eb8:	00042597          	auipc	a1,0x42
    80028ebc:	d1858593          	addi	a1,a1,-744 # 8006abd0 <qjsc_repl+0x5620>
    80028ec0:	8522                	mv	a0,s0
    80028ec2:	a0df00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:51088
    JS_FreeValue(ctx, val);
    80028ec6:	7582                	ld	a1,32(sp)
    80028ec8:	7622                	ld	a2,40(sp)
    80028eca:	8522                	mv	a0,s0
    80028ecc:	8d3e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:51089
    return JS_EXCEPTION;
    80028ed0:	4799                	li	a5,6
    80028ed2:	e082                	sd	zero,64(sp)
    80028ed4:	bf5d                	j	80028e8a <js_bigfloat_toPrecision+0x6e>
quickjs-nuttx/quickjs.c:51073
        if (argc > 1) {
    80028ed6:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:51071
        rnd_mode = BF_RNDNA;
    80028ed8:	4911                	li	s2,4
quickjs-nuttx/quickjs.c:51073
        if (argc > 1) {
    80028eda:	0347de63          	bge	a5,s4,80028f16 <js_bigfloat_toPrecision+0xfa>
quickjs-nuttx/quickjs.c:51074
            rnd_mode = bigfloat_get_rnd_mode(ctx, argv[1]);
    80028ede:	688c                	ld	a1,16(s1)
    80028ee0:	6c90                	ld	a2,24(s1)
    80028ee2:	8522                	mv	a0,s0
    80028ee4:	83dfa0ef          	jal	ra,80023720 <bigfloat_get_rnd_mode>
    80028ee8:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:51075
            if (rnd_mode < 0)
    80028eea:	fc054ee3          	bltz	a0,80028ec6 <js_bigfloat_toPrecision+0xaa>
quickjs-nuttx/quickjs.c:51078
        if (argc > 2) {
    80028eee:	4789                	li	a5,2
    80028ef0:	02fa0363          	beq	s4,a5,80028f16 <js_bigfloat_toPrecision+0xfa>
quickjs-nuttx/quickjs.c:51079
            radix = js_get_radix(ctx, argv[2]);
    80028ef4:	708c                	ld	a1,32(s1)
    80028ef6:	7490                	ld	a2,40(s1)
    80028ef8:	8522                	mv	a0,s0
    80028efa:	f58fa0ef          	jal	ra,80023652 <js_get_radix>
    80028efe:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:51080
            if (radix < 0)
    80028f00:	fc0543e3          	bltz	a0,80028ec6 <js_bigfloat_toPrecision+0xaa>
quickjs-nuttx/quickjs.c:51083
        ret = js_ftoa(ctx, val, radix, p, rnd_mode | BF_FTOA_FORMAT_FIXED);
    80028f04:	6762                	ld	a4,24(sp)
    80028f06:	7582                	ld	a1,32(sp)
    80028f08:	7622                	ld	a2,40(sp)
    80028f0a:	0009079b          	sext.w	a5,s2
    80028f0e:	8522                	mv	a0,s0
    80028f10:	bd9ff0ef          	jal	ra,80028ae8 <js_ftoa>
    80028f14:	b78d                	j	80028e76 <js_bigfloat_toPrecision+0x5a>
quickjs-nuttx/quickjs.c:51072
        radix = 10;
    80028f16:	46a9                	li	a3,10
    80028f18:	b7f5                	j	80028f04 <js_bigfloat_toPrecision+0xe8>

0000000080028f1a <js_bigfloat_toString>:
js_bigfloat_toString():
quickjs-nuttx/quickjs.c:50907
{
    80028f1a:	7159                	addi	sp,sp,-112
    80028f1c:	f0a2                	sd	s0,96(sp)
    80028f1e:	eca6                	sd	s1,88(sp)
    80028f20:	e8ca                	sd	s2,80(sp)
    80028f22:	e4ce                	sd	s3,72(sp)
    80028f24:	f486                	sd	ra,104(sp)
    80028f26:	842a                	mv	s0,a0
    80028f28:	8936                	mv	s2,a3
    80028f2a:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:50912
    val = js_thisBigFloatValue(ctx, this_val);
    80028f2c:	ac0f00ef          	jal	ra,800191ec <js_thisBigFloatValue>
    80028f30:	e82a                	sd	a0,16(sp)
    80028f32:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:50913
    if (JS_IsException(val))
    80028f34:	0005879b          	sext.w	a5,a1
    80028f38:	4999                	li	s3,6
    80028f3a:	01379d63          	bne	a5,s3,80028f54 <js_bigfloat_toString+0x3a>
quickjs-nuttx/quickjs.c:50914
        return val;
    80028f3e:	f82a                	sd	a0,48(sp)
    80028f40:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:50928
}
    80028f42:	70a6                	ld	ra,104(sp)
    80028f44:	7406                	ld	s0,96(sp)
    80028f46:	7542                	ld	a0,48(sp)
    80028f48:	75e2                	ld	a1,56(sp)
    80028f4a:	64e6                	ld	s1,88(sp)
    80028f4c:	6946                	ld	s2,80(sp)
    80028f4e:	69a6                	ld	s3,72(sp)
    80028f50:	6165                	addi	sp,sp,112
    80028f52:	8082                	ret
quickjs-nuttx/quickjs.c:50915
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80028f54:	02090863          	beqz	s2,80028f84 <js_bigfloat_toString+0x6a>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    80028f58:	6490                	ld	a2,8(s1)
js_bigfloat_toString():
quickjs-nuttx/quickjs.c:50915 (discriminator 1)
    80028f5a:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:50916 (discriminator 1)
        base = 10;
    80028f5c:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:50915 (discriminator 1)
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80028f5e:	0006071b          	sext.w	a4,a2
    80028f62:	02f70263          	beq	a4,a5,80028f86 <js_bigfloat_toString+0x6c>
quickjs-nuttx/quickjs.c:50918
        base = js_get_radix(ctx, argv[0]);
    80028f66:	608c                	ld	a1,0(s1)
    80028f68:	8522                	mv	a0,s0
    80028f6a:	ee8fa0ef          	jal	ra,80023652 <js_get_radix>
    80028f6e:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:50919
        if (base < 0)
    80028f70:	00055b63          	bgez	a0,80028f86 <js_bigfloat_toString+0x6c>
quickjs-nuttx/quickjs.c:50926
    JS_FreeValue(ctx, val);
    80028f74:	65c2                	ld	a1,16(sp)
    80028f76:	6662                	ld	a2,24(sp)
    80028f78:	8522                	mv	a0,s0
    80028f7a:	825e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50927
    return JS_EXCEPTION;
    80028f7e:	f802                	sd	zero,48(sp)
    80028f80:	fc4e                	sd	s3,56(sp)
    80028f82:	b7c1                	j	80028f42 <js_bigfloat_toString+0x28>
quickjs-nuttx/quickjs.c:50916
        base = 10;
    80028f84:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:50922
    ret = js_ftoa(ctx, val, base, 0, BF_RNDN | BF_FTOA_FORMAT_FREE_MIN);
    80028f86:	6662                	ld	a2,24(sp)
    80028f88:	65c2                	ld	a1,16(sp)
    80028f8a:	000307b7          	lui	a5,0x30
    80028f8e:	4701                	li	a4,0
    80028f90:	8522                	mv	a0,s0
    80028f92:	b57ff0ef          	jal	ra,80028ae8 <js_ftoa>
    80028f96:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:50923
    JS_FreeValue(ctx, val);
    80028f98:	6662                	ld	a2,24(sp)
    80028f9a:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:50922
    ret = js_ftoa(ctx, val, base, 0, BF_RNDN | BF_FTOA_FORMAT_FREE_MIN);
    80028f9c:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:50923
    JS_FreeValue(ctx, val);
    80028f9e:	8522                	mv	a0,s0
    80028fa0:	ffee20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50924
    return ret;
    80028fa4:	7782                	ld	a5,32(sp)
    80028fa6:	f83e                	sd	a5,48(sp)
    80028fa8:	77a2                	ld	a5,40(sp)
    80028faa:	fc3e                	sd	a5,56(sp)
    80028fac:	bf59                	j	80028f42 <js_bigfloat_toString+0x28>

0000000080028fae <js_bigfloat_to_string>:
js_bigfloat_to_string():
quickjs-nuttx/quickjs.c:11280
{
    80028fae:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:11281
    return js_ftoa(ctx, val, 10, 0, BF_RNDN | BF_FTOA_FORMAT_FREE_MIN);
    80028fb0:	000307b7          	lui	a5,0x30
    80028fb4:	4701                	li	a4,0
    80028fb6:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:11282
}
    80028fb8:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:11281
    return js_ftoa(ctx, val, 10, 0, BF_RNDN | BF_FTOA_FORMAT_FREE_MIN);
    80028fba:	b2fff06f          	j	80028ae8 <js_ftoa>

0000000080028fbe <js_bigdecimal_to_string1>:
js_bigdecimal_to_string1():
quickjs-nuttx/quickjs.c:11286
{
    80028fbe:	711d                	addi	sp,sp,-96
    80028fc0:	e432                	sd	a2,8(sp)
    80028fc2:	87b6                	mv	a5,a3
    80028fc4:	ec86                	sd	ra,88(sp)
    80028fc6:	e8a2                	sd	s0,80(sp)
    80028fc8:	e4a6                	sd	s1,72(sp)
    80028fca:	e0ca                	sd	s2,64(sp)
    80028fcc:	fc4e                	sd	s3,56(sp)
    80028fce:	e02e                	sd	a1,0(sp)
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12374
    switch(tag) {
    80028fd0:	2601                	sext.w	a2,a2
    80028fd2:	56d5                	li	a3,-11
    80028fd4:	04d61263          	bne	a2,a3,80029018 <js_bigdecimal_to_string1+0x5a>
    80028fd8:	842e                	mv	s0,a1
js_bigdecimal_to_string1():
quickjs-nuttx/quickjs.c:11296
    if (a->expn == BF_EXP_ZERO)
    80028fda:	6c10                	ld	a2,24(s0)
    80028fdc:	56fd                	li	a3,-1
    80028fde:	16fe                	slli	a3,a3,0x3f
quickjs-nuttx/quickjs.c:11295
    saved_sign = a->sign;
    80028fe0:	01042983          	lw	s3,16(s0)
    80028fe4:	84aa                	mv	s1,a0
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12377
        r = &p->num;
    80028fe6:	05a1                	addi	a1,a1,8
js_bigdecimal_to_string1():
quickjs-nuttx/quickjs.c:11296
    if (a->expn == BF_EXP_ZERO)
    80028fe8:	00d61463          	bne	a2,a3,80028ff0 <js_bigdecimal_to_string1+0x32>
quickjs-nuttx/quickjs.c:11297
        a->sign = 0;
    80028fec:	00042823          	sw	zero,16(s0)
quickjs-nuttx/quickjs.c:11298
    str = bfdec_ftoa(NULL, a, prec, flags | BF_FTOA_JS_QUIRKS);
    80028ff0:	004006b7          	lui	a3,0x400
    80028ff4:	8ed9                	or	a3,a3,a4
    80028ff6:	863e                	mv	a2,a5
    80028ff8:	4501                	li	a0,0
    80028ffa:	336350ef          	jal	ra,8005e330 <bfdec_ftoa>
quickjs-nuttx/quickjs.c:11299
    a->sign = saved_sign;
    80028ffe:	01342823          	sw	s3,16(s0)
quickjs-nuttx/quickjs.c:11298
    str = bfdec_ftoa(NULL, a, prec, flags | BF_FTOA_JS_QUIRKS);
