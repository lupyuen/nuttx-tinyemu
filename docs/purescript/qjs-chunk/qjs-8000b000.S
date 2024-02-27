    8000a000:	00451793          	slli	a5,a0,0x4
    8000a004:	97ba                	add	a5,a5,a4
    8000a006:	43d8                	lw	a4,4(a5)
    8000a008:	00c71763          	bne	a4,a2,8000a016 <find_private_class_field.constprop.0+0x2c>
quickjs-nuttx/quickjs.c:22741
        if (fd->vars[idx].var_name == name)
    8000a00c:	4398                	lw	a4,0(a5)
    8000a00e:	00b70563          	beq	a4,a1,8000a018 <find_private_class_field.constprop.0+0x2e>
quickjs-nuttx/quickjs.c:22743
        idx = fd->vars[idx].scope_next;
    8000a012:	4788                	lw	a0,8(a5)
    8000a014:	b7d5                	j	80009ff8 <find_private_class_field.constprop.0+0xe>
quickjs-nuttx/quickjs.c:22745
    return -1;
    8000a016:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:22746
}
    8000a018:	8082                	ret

000000008000a01a <find_lexical_decl.constprop.0>:
find_lexical_decl():
quickjs-nuttx/quickjs.c:21689
            (vd->is_lexical || (vd->var_kind == JS_VAR_CATCH &&
    8000a01a:	03000813          	li	a6,48
quickjs-nuttx/quickjs.c:21686
    while (scope_idx >= 0) {
    8000a01e:	02065763          	bgez	a2,8000a04c <find_lexical_decl.constprop.0+0x32>
quickjs-nuttx/quickjs.c:21695
    if (fd->is_eval && fd->eval_type == JS_EVAL_TYPE_GLOBAL) {
    8000a022:	5d1c                	lw	a5,56(a0)
quickjs-nuttx/quickjs.c:21699
    return -1;
    8000a024:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:21695
    if (fd->is_eval && fd->eval_type == JS_EVAL_TYPE_GLOBAL) {
    8000a026:	c7b1                	beqz	a5,8000a072 <find_lexical_decl.constprop.0+0x58>
    8000a028:	5d5c                	lw	a5,60(a0)
    8000a02a:	e7a1                	bnez	a5,8000a072 <find_lexical_decl.constprop.0+0x58>
quickjs-nuttx/quickjs.c:21683
static int find_lexical_decl(JSContext *ctx, JSFunctionDef *fd, JSAtom name,
    8000a02c:	1141                	addi	sp,sp,-16
    8000a02e:	e406                	sd	ra,8(sp)
find_lexical_global_var():
quickjs-nuttx/quickjs.c:21676
    JSGlobalVar *hf = find_global_var(fd, name);
    8000a030:	f69fd0ef          	jal	ra,80007f98 <find_global_var>
find_lexical_decl():
quickjs-nuttx/quickjs.c:21699
    return -1;
    8000a034:	567d                	li	a2,-1
find_lexical_global_var():
quickjs-nuttx/quickjs.c:21677
    if (hf && hf->is_lexical)
    8000a036:	c519                	beqz	a0,8000a044 <find_lexical_decl.constprop.0+0x2a>
    8000a038:	00454783          	lbu	a5,4(a0)
    8000a03c:	8b89                	andi	a5,a5,2
    8000a03e:	c399                	beqz	a5,8000a044 <find_lexical_decl.constprop.0+0x2a>
find_lexical_decl():
quickjs-nuttx/quickjs.c:21697
            return GLOBAL_VAR_OFFSET;
    8000a040:	40000637          	lui	a2,0x40000
quickjs-nuttx/quickjs.c:21700
}
    8000a044:	60a2                	ld	ra,8(sp)
    8000a046:	8532                	mv	a0,a2
    8000a048:	0141                	addi	sp,sp,16
    8000a04a:	8082                	ret
quickjs-nuttx/quickjs.c:21687
        JSVarDef *vd = &fd->vars[scope_idx];
    8000a04c:	6958                	ld	a4,144(a0)
    8000a04e:	00461793          	slli	a5,a2,0x4
    8000a052:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:21688
        if (vd->var_name == name &&
    8000a054:	4398                	lw	a4,0(a5)
    8000a056:	00b71c63          	bne	a4,a1,8000a06e <find_lexical_decl.constprop.0+0x54>
quickjs-nuttx/quickjs.c:21689
            (vd->is_lexical || (vd->var_kind == JS_VAR_CATCH &&
    8000a05a:	47d8                	lw	a4,12(a5)
quickjs-nuttx/quickjs.c:21688
        if (vd->var_name == name &&
    8000a05c:	00277893          	andi	a7,a4,2
    8000a060:	00089963          	bnez	a7,8000a072 <find_lexical_decl.constprop.0+0x58>
quickjs-nuttx/quickjs.c:21689
            (vd->is_lexical || (vd->var_kind == JS_VAR_CATCH &&
    8000a064:	0f077713          	andi	a4,a4,240
    8000a068:	01071363          	bne	a4,a6,8000a06e <find_lexical_decl.constprop.0+0x54>
    8000a06c:	e299                	bnez	a3,8000a072 <find_lexical_decl.constprop.0+0x58>
quickjs-nuttx/quickjs.c:21692
        scope_idx = vd->scope_next;
    8000a06e:	4790                	lw	a2,8(a5)
    8000a070:	b77d                	j	8000a01e <find_lexical_decl.constprop.0+0x4>
quickjs-nuttx/quickjs.c:21700
}
    8000a072:	8532                	mv	a0,a2
    8000a074:	8082                	ret

000000008000a076 <__JS_FindAtom.constprop.0>:
__JS_FindAtom():
quickjs-nuttx/quickjs.c:2865
static JSAtom __JS_FindAtom(JSRuntime *rt, const char *str, size_t len,
    8000a076:	711d                	addi	sp,sp,-96
    8000a078:	fc4e                	sd	s3,56(sp)
    8000a07a:	f852                	sd	s4,48(sp)
    8000a07c:	f456                	sd	s5,40(sp)
    8000a07e:	ec86                	sd	ra,88(sp)
    8000a080:	e8a2                	sd	s0,80(sp)
    8000a082:	e4a6                	sd	s1,72(sp)
    8000a084:	e0ca                	sd	s2,64(sp)
    8000a086:	f05a                	sd	s6,32(sp)
    8000a088:	ec5e                	sd	s7,24(sp)
    8000a08a:	e862                	sd	s8,16(sp)
    8000a08c:	e466                	sd	s9,8(sp)
    8000a08e:	89aa                	mv	s3,a0
    8000a090:	8aae                	mv	s5,a1
    8000a092:	8a32                	mv	s4,a2
hash_string8():
quickjs-nuttx/quickjs.c:2471
    for(i = 0; i < len; i++)
    8000a094:	4701                	li	a4,0
    8000a096:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:2472
        h = h * 263 + str[i];
    8000a098:	10700693          	li	a3,263
quickjs-nuttx/quickjs.c:2471
    for(i = 0; i < len; i++)
    8000a09c:	0aea1663          	bne	s4,a4,8000a148 <__JS_FindAtom.constprop.0+0xd2>
__JS_FindAtom():
quickjs-nuttx/quickjs.c:2872
    h &= JS_ATOM_HASH_MASK;
    8000a0a0:	40000b37          	lui	s6,0x40000
    8000a0a4:	1b7d                	addi	s6,s6,-1
    8000a0a6:	0167f933          	and	s2,a5,s6
quickjs-nuttx/quickjs.c:2873
    h1 = h & (rt->atom_hash_size - 1);
    8000a0aa:	0489a783          	lw	a5,72(s3)
quickjs-nuttx/quickjs.c:2874
    i = rt->atom_hash[h1];
    8000a0ae:	0589b703          	ld	a4,88(s3)
quickjs-nuttx/quickjs.c:2879
            p->len == len &&
    8000a0b2:	80000bb7          	lui	s7,0x80000
quickjs-nuttx/quickjs.c:2873
    h1 = h & (rt->atom_hash_size - 1);
    8000a0b6:	37fd                	addiw	a5,a5,-1
    8000a0b8:	00f977b3          	and	a5,s2,a5
quickjs-nuttx/quickjs.c:2874
    i = rt->atom_hash[h1];
    8000a0bc:	02079693          	slli	a3,a5,0x20
    8000a0c0:	01e6d793          	srli	a5,a3,0x1e
    8000a0c4:	97ba                	add	a5,a5,a4
    8000a0c6:	4384                	lw	s1,0(a5)
quickjs-nuttx/quickjs.c:2877
        if (p->hash == h &&
    8000a0c8:	40000c37          	lui	s8,0x40000
quickjs-nuttx/quickjs.c:2878
            p->atom_type == JS_ATOM_TYPE_STRING &&
    8000a0cc:	c0000cb7          	lui	s9,0xc0000
quickjs-nuttx/quickjs.c:2879
            p->len == len &&
    8000a0d0:	fffbcb93          	not	s7,s7
quickjs-nuttx/quickjs.c:2875
    while (i != 0) {
    8000a0d4:	cca1                	beqz	s1,8000a12c <__JS_FindAtom.constprop.0+0xb6>
quickjs-nuttx/quickjs.c:2876
        p = rt->atom_array[i];
    8000a0d6:	0609b783          	ld	a5,96(s3)
    8000a0da:	02049693          	slli	a3,s1,0x20
    8000a0de:	01d6d713          	srli	a4,a3,0x1d
    8000a0e2:	97ba                	add	a5,a5,a4
    8000a0e4:	6380                	ld	s0,0(a5)
quickjs-nuttx/quickjs.c:2877
        if (p->hash == h &&
    8000a0e6:	441c                	lw	a5,8(s0)
    8000a0e8:	00fb7733          	and	a4,s6,a5
    8000a0ec:	2701                	sext.w	a4,a4
    8000a0ee:	06e91663          	bne	s2,a4,8000a15a <__JS_FindAtom.constprop.0+0xe4>
quickjs-nuttx/quickjs.c:2878
            p->atom_type == JS_ATOM_TYPE_STRING &&
    8000a0f2:	0197f7b3          	and	a5,a5,s9
quickjs-nuttx/quickjs.c:2877
        if (p->hash == h &&
    8000a0f6:	2781                	sext.w	a5,a5
    8000a0f8:	07879163          	bne	a5,s8,8000a15a <__JS_FindAtom.constprop.0+0xe4>
quickjs-nuttx/quickjs.c:2879
            p->len == len &&
    8000a0fc:	405c                	lw	a5,4(s0)
    8000a0fe:	0177f733          	and	a4,a5,s7
    8000a102:	1702                	slli	a4,a4,0x20
    8000a104:	9301                	srli	a4,a4,0x20
quickjs-nuttx/quickjs.c:2878
            p->atom_type == JS_ATOM_TYPE_STRING &&
    8000a106:	04ea1a63          	bne	s4,a4,8000a15a <__JS_FindAtom.constprop.0+0xe4>
quickjs-nuttx/quickjs.c:2879
            p->len == len &&
    8000a10a:	2781                	sext.w	a5,a5
    8000a10c:	0407c763          	bltz	a5,8000a15a <__JS_FindAtom.constprop.0+0xe4>
quickjs-nuttx/quickjs.c:2881
            memcmp(p->u.str8, str, len) == 0) {
    8000a110:	8652                	mv	a2,s4
    8000a112:	85d6                	mv	a1,s5
    8000a114:	01040513          	addi	a0,s0,16
    8000a118:	2bd590ef          	jal	ra,80063bd4 <memcmp>
quickjs-nuttx/quickjs.c:2880
            p->is_wide_char == 0 &&
    8000a11c:	ed1d                	bnez	a0,8000a15a <__JS_FindAtom.constprop.0+0xe4>
quickjs-nuttx/quickjs.c:2882
            if (!__JS_AtomIsConst(i))
    8000a11e:	0e200793          	li	a5,226
    8000a122:	0097d563          	bge	a5,s1,8000a12c <__JS_FindAtom.constprop.0+0xb6>
quickjs-nuttx/quickjs.c:2883
                p->header.ref_count++;
    8000a126:	401c                	lw	a5,0(s0)
    8000a128:	2785                	addiw	a5,a5,1
    8000a12a:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:2889
}
    8000a12c:	60e6                	ld	ra,88(sp)
    8000a12e:	6446                	ld	s0,80(sp)
    8000a130:	6906                	ld	s2,64(sp)
    8000a132:	79e2                	ld	s3,56(sp)
    8000a134:	7a42                	ld	s4,48(sp)
    8000a136:	7aa2                	ld	s5,40(sp)
    8000a138:	7b02                	ld	s6,32(sp)
    8000a13a:	6be2                	ld	s7,24(sp)
    8000a13c:	6c42                	ld	s8,16(sp)
    8000a13e:	6ca2                	ld	s9,8(sp)
    8000a140:	8526                	mv	a0,s1
    8000a142:	64a6                	ld	s1,72(sp)
    8000a144:	6125                	addi	sp,sp,96
    8000a146:	8082                	ret
hash_string8():
quickjs-nuttx/quickjs.c:2472
        h = h * 263 + str[i];
    8000a148:	02f687bb          	mulw	a5,a3,a5
    8000a14c:	00ea8633          	add	a2,s5,a4
    8000a150:	00064603          	lbu	a2,0(a2) # 40000000 <asinh-0x40000000>
quickjs-nuttx/quickjs.c:2471
    for(i = 0; i < len; i++)
    8000a154:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:2472
        h = h * 263 + str[i];
    8000a156:	9fb1                	addw	a5,a5,a2
quickjs-nuttx/quickjs.c:2471
    for(i = 0; i < len; i++)
    8000a158:	b791                	j	8000a09c <__JS_FindAtom.constprop.0+0x26>
__JS_FindAtom():
quickjs-nuttx/quickjs.c:2886
        i = p->hash_next;
    8000a15a:	4444                	lw	s1,12(s0)
    8000a15c:	bfa5                	j	8000a0d4 <__JS_FindAtom.constprop.0+0x5e>

000000008000a15e <js_get_fast_array.constprop.0>:
js_get_fast_array():
quickjs-nuttx/quickjs.c:15361
static BOOL js_get_fast_array(JSContext *ctx, JSValueConst obj,
    8000a15e:	1141                	addi	sp,sp,-16
    8000a160:	e42e                	sd	a1,8(sp)
    8000a162:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:15365
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8000a164:	2581                	sext.w	a1,a1
    8000a166:	57fd                	li	a5,-1
    8000a168:	02f59463          	bne	a1,a5,8000a190 <js_get_fast_array.constprop.0+0x32>
quickjs-nuttx/quickjs.c:15367
        if (p->class_id == JS_CLASS_ARRAY && p->fast_array) {
    8000a16c:	610c                	ld	a1,0(a0)
    8000a16e:	5705                	li	a4,-31
    8000a170:	172e                	slli	a4,a4,0x2b
    8000a172:	8df9                	and	a1,a1,a4
    8000a174:	04100713          	li	a4,65
    8000a178:	172e                	slli	a4,a4,0x2b
quickjs-nuttx/quickjs.c:15366
        JSObject *p = JS_VALUE_GET_OBJ(obj);
    8000a17a:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:15373
    return FALSE;
    8000a17c:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:15367
        if (p->class_id == JS_CLASS_ARRAY && p->fast_array) {
    8000a17e:	00e59763          	bne	a1,a4,8000a18c <js_get_fast_array.constprop.0+0x2e>
quickjs-nuttx/quickjs.c:15368
            *countp = p->u.array.count;
    8000a182:	43b8                	lw	a4,64(a5)
quickjs-nuttx/quickjs.c:15370
            return TRUE;
    8000a184:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:15368
            *countp = p->u.array.count;
    8000a186:	c298                	sw	a4,0(a3)
quickjs-nuttx/quickjs.c:15369
            *arrpp = p->u.array.u.values;
    8000a188:	7f9c                	ld	a5,56(a5)
    8000a18a:	e21c                	sd	a5,0(a2)
quickjs-nuttx/quickjs.c:15374
}
    8000a18c:	0141                	addi	sp,sp,16
    8000a18e:	8082                	ret
quickjs-nuttx/quickjs.c:15373
    return FALSE;
    8000a190:	4501                	li	a0,0
    8000a192:	bfed                	j	8000a18c <js_get_fast_array.constprop.0+0x2e>

000000008000a194 <copy_str16.constprop.0>:
copy_str16():
quickjs-nuttx/quickjs.c:4155
static void copy_str16(uint16_t *dst, const JSString *p, int offset, int len)
    8000a194:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:4157
    if (p->is_wide_char) {
    8000a196:	00472803          	lw	a6,4(a4)
quickjs-nuttx/quickjs.c:4155
static void copy_str16(uint16_t *dst, const JSString *p, int offset, int len)
    8000a19a:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:4158
        memcpy(dst, p->u.str16 + offset, len * 2);
    8000a19c:	05c1                	addi	a1,a1,16
    8000a19e:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:4157
    if (p->is_wide_char) {
    8000a1a0:	02085063          	bgez	a6,8000a1c0 <copy_str16.constprop.0+0x2c>
quickjs-nuttx/quickjs.c:4158
        memcpy(dst, p->u.str16 + offset, len * 2);
    8000a1a4:	0016161b          	slliw	a2,a2,0x1
    8000a1a8:	4055906f          	j	80063dac <memcpy>
quickjs-nuttx/quickjs.c:4164
            dst[i] = src1[i];
    8000a1ac:	00f70533          	add	a0,a4,a5
    8000a1b0:	01054503          	lbu	a0,16(a0)
    8000a1b4:	00179593          	slli	a1,a5,0x1
    8000a1b8:	95b6                	add	a1,a1,a3
    8000a1ba:	00a59023          	sh	a0,0(a1)
quickjs-nuttx/quickjs.c:4163
        for(i = 0; i < len; i++)
    8000a1be:	0785                	addi	a5,a5,1
    8000a1c0:	0007859b          	sext.w	a1,a5
    8000a1c4:	fec5c4e3          	blt	a1,a2,8000a1ac <copy_str16.constprop.0+0x18>
quickjs-nuttx/quickjs.c:4166
}
    8000a1c8:	8082                	ret

000000008000a1ca <js_fcvt1.constprop.0>:
js_fcvt1():
quickjs-nuttx/quickjs.c:11425
static int js_fcvt1(char *buf, int buf_size, double d, int n_digits,
    8000a1ca:	7179                	addi	sp,sp,-48
    8000a1cc:	f022                	sd	s0,32(sp)
    8000a1ce:	ec26                	sd	s1,24(sp)
    8000a1d0:	f406                	sd	ra,40(sp)
    8000a1d2:	e2050753          	fmv.x.d	a4,fa0
    8000a1d6:	84aa                	mv	s1,a0
    8000a1d8:	86ae                	mv	a3,a1
    8000a1da:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:11429
    if (rounding_mode != FE_TONEAREST)
    8000a1dc:	ca01                	beqz	a2,8000a1ec <js_fcvt1.constprop.0+0x22>
quickjs-nuttx/quickjs.c:11430
        fesetround(rounding_mode);
    8000a1de:	8532                	mv	a0,a2
    8000a1e0:	e42e                	sd	a1,8(sp)
    8000a1e2:	a02a                	fsd	fa0,0(sp)
    8000a1e4:	201550ef          	jal	ra,8005fbe4 <fesetround>
    8000a1e8:	66a2                	ld	a3,8(sp)
    8000a1ea:	6702                	ld	a4,0(sp)
quickjs-nuttx/quickjs.c:11431
    n = snprintf(buf, buf_size, "%.*f", n_digits, d);
    8000a1ec:	8526                	mv	a0,s1
    8000a1ee:	0005f617          	auipc	a2,0x5f
    8000a1f2:	4da60613          	addi	a2,a2,1242 # 800696c8 <qjsc_repl+0x4118>
    8000a1f6:	08000593          	li	a1,128
    8000a1fa:	046570ef          	jal	ra,80061240 <snprintf>
    8000a1fe:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:11432
    if (rounding_mode != FE_TONEAREST)
    8000a200:	c401                	beqz	s0,8000a208 <js_fcvt1.constprop.0+0x3e>
quickjs-nuttx/quickjs.c:11433
        fesetround(FE_TONEAREST);
    8000a202:	4501                	li	a0,0
    8000a204:	1e1550ef          	jal	ra,8005fbe4 <fesetround>
quickjs-nuttx/quickjs.c:11434
    assert(n < buf_size);
    8000a208:	07f00793          	li	a5,127
    8000a20c:	0097dc63          	bge	a5,s1,8000a224 <js_fcvt1.constprop.0+0x5a>
    8000a210:	658d                	lui	a1,0x3
    8000a212:	4601                	li	a2,0
    8000a214:	caa58593          	addi	a1,a1,-854 # 2caa <asinh-0x7fffd356>
    8000a218:	0005f517          	auipc	a0,0x5f
    8000a21c:	38050513          	addi	a0,a0,896 # 80069598 <qjsc_repl+0x3fe8>
    8000a220:	73c560ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:11436
}
    8000a224:	70a2                	ld	ra,40(sp)
    8000a226:	7402                	ld	s0,32(sp)
    8000a228:	8526                	mv	a0,s1
    8000a22a:	64e2                	ld	s1,24(sp)
    8000a22c:	6145                	addi	sp,sp,48
    8000a22e:	8082                	ret

000000008000a230 <js_ecvt1.constprop.0>:
js_ecvt1():
quickjs-nuttx/quickjs.c:11342
static void js_ecvt1(double d, int n_digits, int *decpt, int *sign, char *buf,
    8000a230:	715d                	addi	sp,sp,-80
    8000a232:	e0a2                	sd	s0,64(sp)
    8000a234:	fc26                	sd	s1,56(sp)
    8000a236:	f84a                	sd	s2,48(sp)
    8000a238:	f44e                	sd	s3,40(sp)
    8000a23a:	f052                	sd	s4,32(sp)
    8000a23c:	ec56                	sd	s5,24(sp)
    8000a23e:	a422                	fsd	fs0,8(sp)
    8000a240:	e486                	sd	ra,72(sp)
    8000a242:	e85a                	sd	s6,16(sp)
    8000a244:	22a50453          	fmv.d	fs0,fa0
    8000a248:	842a                	mv	s0,a0
    8000a24a:	89ae                	mv	s3,a1
    8000a24c:	8ab2                	mv	s5,a2
    8000a24e:	8936                	mv	s2,a3
    8000a250:	8a3a                	mv	s4,a4
    8000a252:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:11345
    if (rounding_mode != FE_TONEAREST)
    8000a254:	c701                	beqz	a4,8000a25c <js_ecvt1.constprop.0+0x2c>
quickjs-nuttx/quickjs.c:11346
        fesetround(rounding_mode);
    8000a256:	853a                	mv	a0,a4
    8000a258:	18d550ef          	jal	ra,8005fbe4 <fesetround>
quickjs-nuttx/quickjs.c:11347
    snprintf(buf1, buf1_size, "%+.*e", n_digits - 1, d);
    8000a25c:	e2040753          	fmv.x.d	a4,fs0
    8000a260:	fff40b1b          	addiw	s6,s0,-1
    8000a264:	86da                	mv	a3,s6
    8000a266:	0005f617          	auipc	a2,0x5f
    8000a26a:	46a60613          	addi	a2,a2,1130 # 800696d0 <qjsc_repl+0x4120>
    8000a26e:	08000593          	li	a1,128
    8000a272:	8526                	mv	a0,s1
    8000a274:	7cd560ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:11348
    if (rounding_mode != FE_TONEAREST)
    8000a278:	000a0563          	beqz	s4,8000a282 <js_ecvt1.constprop.0+0x52>
quickjs-nuttx/quickjs.c:11349
        fesetround(FE_TONEAREST);
    8000a27c:	4501                	li	a0,0
    8000a27e:	167550ef          	jal	ra,8005fbe4 <fesetround>
quickjs-nuttx/quickjs.c:11350
    *sign = (buf1[0] == '-');
    8000a282:	0004c783          	lbu	a5,0(s1)
    8000a286:	fd378793          	addi	a5,a5,-45
    8000a28a:	0017b793          	seqz	a5,a5
    8000a28e:	00faa023          	sw	a5,0(s5)
quickjs-nuttx/quickjs.c:11352
    buf[0] = buf1[1];
    8000a292:	0014c783          	lbu	a5,1(s1)
    8000a296:	00f90023          	sb	a5,0(s2)
quickjs-nuttx/quickjs.c:11353
    if (n_digits > 1)
    8000a29a:	4785                	li	a5,1
    8000a29c:	0087d963          	bge	a5,s0,8000a2ae <js_ecvt1.constprop.0+0x7e>
quickjs-nuttx/quickjs.c:11354
        memcpy(buf + 1, buf1 + 3, n_digits - 1);
    8000a2a0:	865a                	mv	a2,s6
    8000a2a2:	00348593          	addi	a1,s1,3
    8000a2a6:	00190513          	addi	a0,s2,1
    8000a2aa:	303590ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:11357
    *decpt = atoi(buf1 + n_digits + 2 + (n_digits > 1)) + 1;
    8000a2ae:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:11355
    buf[n_digits] = '\0';
    8000a2b0:	9922                	add	s2,s2,s0
quickjs-nuttx/quickjs.c:11357
    *decpt = atoi(buf1 + n_digits + 2 + (n_digits > 1)) + 1;
    8000a2b2:	00852533          	slt	a0,a0,s0
    8000a2b6:	0409                	addi	s0,s0,2
    8000a2b8:	9522                	add	a0,a0,s0
quickjs-nuttx/quickjs.c:11355
    buf[n_digits] = '\0';
    8000a2ba:	00090023          	sb	zero,0(s2)
quickjs-nuttx/quickjs.c:11357
    *decpt = atoi(buf1 + n_digits + 2 + (n_digits > 1)) + 1;
    8000a2be:	9526                	add	a0,a0,s1
    8000a2c0:	0cd580ef          	jal	ra,80062b8c <atoi>
quickjs-nuttx/quickjs.c:11358
}
    8000a2c4:	60a6                	ld	ra,72(sp)
    8000a2c6:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:11357
    *decpt = atoi(buf1 + n_digits + 2 + (n_digits > 1)) + 1;
    8000a2c8:	2505                	addiw	a0,a0,1
    8000a2ca:	00a9a023          	sw	a0,0(s3)
quickjs-nuttx/quickjs.c:11358
}
    8000a2ce:	74e2                	ld	s1,56(sp)
    8000a2d0:	7942                	ld	s2,48(sp)
    8000a2d2:	79a2                	ld	s3,40(sp)
    8000a2d4:	7a02                	ld	s4,32(sp)
    8000a2d6:	6ae2                	ld	s5,24(sp)
    8000a2d8:	6b42                	ld	s6,16(sp)
    8000a2da:	2422                	fld	fs0,8(sp)
    8000a2dc:	6161                	addi	sp,sp,80
    8000a2de:	8082                	ret

000000008000a2e0 <JS_AtomGetStrRT.constprop.0>:
JS_AtomGetStrRT():
quickjs-nuttx/quickjs.c:3039
static const char *JS_AtomGetStrRT(JSRuntime *rt, char *buf, int buf_size,
    8000a2e0:	7139                	addi	sp,sp,-64
    8000a2e2:	f822                	sd	s0,48(sp)
    8000a2e4:	fc06                	sd	ra,56(sp)
    8000a2e6:	f426                	sd	s1,40(sp)
    8000a2e8:	f04a                	sd	s2,32(sp)
    8000a2ea:	ec4e                	sd	s3,24(sp)
    8000a2ec:	e852                	sd	s4,16(sp)
    8000a2ee:	e456                	sd	s5,8(sp)
    8000a2f0:	e05a                	sd	s6,0(sp)
    8000a2f2:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:3042
    if (__JS_AtomIsTaggedInt(atom)) {
    8000a2f4:	02065963          	bgez	a2,8000a326 <JS_AtomGetStrRT.constprop.0+0x46>
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    8000a2f8:	1606                	slli	a2,a2,0x21
JS_AtomGetStrRT():
quickjs-nuttx/quickjs.c:3043
        snprintf(buf, buf_size, "%u", __JS_AtomToUInt32(atom));
    8000a2fa:	02165693          	srli	a3,a2,0x21
    8000a2fe:	04000593          	li	a1,64
    8000a302:	0005f617          	auipc	a2,0x5f
    8000a306:	3d660613          	addi	a2,a2,982 # 800696d8 <qjsc_repl+0x4128>
    8000a30a:	8522                	mv	a0,s0
    8000a30c:	735560ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:3086
}
    8000a310:	70e2                	ld	ra,56(sp)
    8000a312:	8522                	mv	a0,s0
    8000a314:	7442                	ld	s0,48(sp)
    8000a316:	74a2                	ld	s1,40(sp)
    8000a318:	7902                	ld	s2,32(sp)
    8000a31a:	69e2                	ld	s3,24(sp)
    8000a31c:	6a42                	ld	s4,16(sp)
    8000a31e:	6aa2                	ld	s5,8(sp)
    8000a320:	6b02                	ld	s6,0(sp)
    8000a322:	6121                	addi	sp,sp,64
    8000a324:	8082                	ret
quickjs-nuttx/quickjs.c:3046
        assert(atom < rt->atom_size);
    8000a326:	493c                	lw	a5,80(a0)
    8000a328:	00f66c63          	bltu	a2,a5,8000a340 <JS_AtomGetStrRT.constprop.0+0x60>
    8000a32c:	6585                	lui	a1,0x1
    8000a32e:	4601                	li	a2,0
    8000a330:	be658593          	addi	a1,a1,-1050 # be6 <asinh-0x7ffff41a>
quickjs-nuttx/quickjs.c:3056
            assert(!atom_is_free(p));
    8000a334:	0005f517          	auipc	a0,0x5f
    8000a338:	26450513          	addi	a0,a0,612 # 80069598 <qjsc_repl+0x3fe8>
    8000a33c:	620560ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:3047
        if (atom == JS_ATOM_NULL) {
    8000a340:	ea09                	bnez	a2,8000a352 <JS_AtomGetStrRT.constprop.0+0x72>
quickjs-nuttx/quickjs.c:3048
            snprintf(buf, buf_size, "<null>");
    8000a342:	0005f597          	auipc	a1,0x5f
    8000a346:	39e58593          	addi	a1,a1,926 # 800696e0 <qjsc_repl+0x4130>
    8000a34a:	8522                	mv	a0,s0
    8000a34c:	1ed590ef          	jal	ra,80063d38 <strcpy>
    8000a350:	b7c1                	j	8000a310 <JS_AtomGetStrRT.constprop.0+0x30>
quickjs-nuttx/quickjs.c:3055
            p = rt->atom_array[atom];
    8000a352:	7134                	ld	a3,96(a0)
    8000a354:	02061793          	slli	a5,a2,0x20
    8000a358:	01d7d613          	srli	a2,a5,0x1d
    8000a35c:	9636                	add	a2,a2,a3
    8000a35e:	00063903          	ld	s2,0(a2)
quickjs-nuttx/quickjs.c:3056
            assert(!atom_is_free(p));
    8000a362:	00197793          	andi	a5,s2,1
    8000a366:	c791                	beqz	a5,8000a372 <JS_AtomGetStrRT.constprop.0+0x92>
    8000a368:	6585                	lui	a1,0x1
    8000a36a:	4601                	li	a2,0
    8000a36c:	bf058593          	addi	a1,a1,-1040 # bf0 <asinh-0x7ffff410>
    8000a370:	b7d1                	j	8000a334 <JS_AtomGetStrRT.constprop.0+0x54>
quickjs-nuttx/quickjs.c:3058
            if (str) {
    8000a372:	0a090063          	beqz	s2,8000a412 <JS_AtomGetStrRT.constprop.0+0x132>
quickjs-nuttx/quickjs.c:3059
                if (!str->is_wide_char) {
    8000a376:	00492783          	lw	a5,4(s2)
    8000a37a:	0007871b          	sext.w	a4,a5
    8000a37e:	06074f63          	bltz	a4,8000a3fc <JS_AtomGetStrRT.constprop.0+0x11c>
quickjs-nuttx/quickjs.c:3062
                    for(i = 0; i < str->len; i++) {
    8000a382:	1786                	slli	a5,a5,0x21
    8000a384:	9385                	srli	a5,a5,0x21
    8000a386:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:3061
                    c = 0;
    8000a388:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:3062
                    for(i = 0; i < str->len; i++) {
    8000a38a:	0007061b          	sext.w	a2,a4
    8000a38e:	00f64963          	blt	a2,a5,8000a3a0 <JS_AtomGetStrRT.constprop.0+0xc0>
quickjs-nuttx/quickjs.c:3065
                    if (c < 0x80)
    8000a392:	07f00793          	li	a5,127
    8000a396:	06d7c363          	blt	a5,a3,8000a3fc <JS_AtomGetStrRT.constprop.0+0x11c>
quickjs-nuttx/quickjs.c:3066
                        return (const char *)str->u.str8;
    8000a39a:	01090413          	addi	s0,s2,16
    8000a39e:	bf8d                	j	8000a310 <JS_AtomGetStrRT.constprop.0+0x30>
quickjs-nuttx/quickjs.c:3063
                        c |= str->u.str8[i];
    8000a3a0:	00e90633          	add	a2,s2,a4
    8000a3a4:	01064603          	lbu	a2,16(a2)
    8000a3a8:	0705                	addi	a4,a4,1
    8000a3aa:	8ed1                	or	a3,a3,a2
quickjs-nuttx/quickjs.c:3062
                    for(i = 0; i < str->len; i++) {
    8000a3ac:	bff9                	j	8000a38a <JS_AtomGetStrRT.constprop.0+0xaa>
quickjs-nuttx/quickjs.c:3069
                    if (str->is_wide_char)
    8000a3ae:	2781                	sext.w	a5,a5
    8000a3b0:	0207dc63          	bgez	a5,8000a3e8 <JS_AtomGetStrRT.constprop.0+0x108>
quickjs-nuttx/quickjs.c:3070
                        c = str->u.str16[i];
    8000a3b4:	00898793          	addi	a5,s3,8
    8000a3b8:	0786                	slli	a5,a5,0x1
    8000a3ba:	97ca                	add	a5,a5,s2
    8000a3bc:	0007d583          	lhu	a1,0(a5)
quickjs-nuttx/quickjs.c:3073
                    if ((q - buf) >= buf_size - UTF8_CHAR_LEN_MAX)
    8000a3c0:	408487b3          	sub	a5,s1,s0
    8000a3c4:	00facf63          	blt	s5,a5,8000a3e2 <JS_AtomGetStrRT.constprop.0+0x102>
quickjs-nuttx/quickjs.c:3075
                    if (c < 128) {
    8000a3c8:	02bb4563          	blt	s6,a1,8000a3f2 <JS_AtomGetStrRT.constprop.0+0x112>
quickjs-nuttx/quickjs.c:3076
                        *q++ = c;
    8000a3cc:	00b48023          	sb	a1,0(s1)
    8000a3d0:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs.c:3068
                for(i = 0; i < str->len; i++) {
    8000a3d2:	2985                	addiw	s3,s3,1
    8000a3d4:	00492783          	lw	a5,4(s2)
    8000a3d8:	0147f733          	and	a4,a5,s4
    8000a3dc:	2701                	sext.w	a4,a4
    8000a3de:	fce9c8e3          	blt	s3,a4,8000a3ae <JS_AtomGetStrRT.constprop.0+0xce>
quickjs-nuttx/quickjs.c:3082
            *q = '\0';
    8000a3e2:	00048023          	sb	zero,0(s1)
    8000a3e6:	b72d                	j	8000a310 <JS_AtomGetStrRT.constprop.0+0x30>
quickjs-nuttx/quickjs.c:3072
                        c = str->u.str8[i];
    8000a3e8:	013907b3          	add	a5,s2,s3
    8000a3ec:	0107c583          	lbu	a1,16(a5)
    8000a3f0:	bfc1                	j	8000a3c0 <JS_AtomGetStrRT.constprop.0+0xe0>
quickjs-nuttx/quickjs.c:3078
                        q += unicode_to_utf8((uint8_t *)q, c);
    8000a3f2:	8526                	mv	a0,s1
    8000a3f4:	7d8470ef          	jal	ra,80051bcc <unicode_to_utf8>
    8000a3f8:	94aa                	add	s1,s1,a0
    8000a3fa:	bfe1                	j	8000a3d2 <JS_AtomGetStrRT.constprop.0+0xf2>
quickjs-nuttx/quickjs.c:3068
                for(i = 0; i < str->len; i++) {
    8000a3fc:	80000a37          	lui	s4,0x80000
    8000a400:	84a2                	mv	s1,s0
    8000a402:	4981                	li	s3,0
    8000a404:	fffa4a13          	not	s4,s4
quickjs-nuttx/quickjs.c:3073
                    if ((q - buf) >= buf_size - UTF8_CHAR_LEN_MAX)
    8000a408:	03900a93          	li	s5,57
quickjs-nuttx/quickjs.c:3075
                    if (c < 128) {
    8000a40c:	07f00b13          	li	s6,127
    8000a410:	b7d1                	j	8000a3d4 <JS_AtomGetStrRT.constprop.0+0xf4>
    8000a412:	84ae                	mv	s1,a1
    8000a414:	b7f9                	j	8000a3e2 <JS_AtomGetStrRT.constprop.0+0x102>

000000008000a416 <JS_AtomGetStr.constprop.0>:
JS_AtomGetStr():
quickjs-nuttx/quickjs.c:3090
    return JS_AtomGetStrRT(ctx->rt, buf, buf_size, atom);
    8000a416:	6d08                	ld	a0,24(a0)
    8000a418:	b5e1                	j	8000a2e0 <JS_AtomGetStrRT.constprop.0>

000000008000a41a <JS_DupValue.constprop.0>:
JS_DupValue():
quickjs-nuttx/quickjs.h:666
            __JS_FreeValueRT(rt, v);
        }
    }
}

static inline JSValue JS_DupValue(JSContext *ctx, JSValueConst v)
    8000a41a:	1101                	addi	sp,sp,-32
    8000a41c:	e02a                	sd	a0,0(sp)
    8000a41e:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.h:668
{
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    8000a420:	0005871b          	sext.w	a4,a1
    8000a424:	57d1                	li	a5,-12
    8000a426:	00e7f563          	bgeu	a5,a4,8000a430 <JS_DupValue.constprop.0+0x16>
quickjs-nuttx/quickjs.h:670
        JSRefCountHeader *p = (JSRefCountHeader *)JS_VALUE_GET_PTR(v);
        p->ref_count++;
    8000a42a:	411c                	lw	a5,0(a0)
    8000a42c:	2785                	addiw	a5,a5,1
    8000a42e:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.h:673
    }
    return (JSValue)v;
}
    8000a430:	6105                	addi	sp,sp,32
    8000a432:	8082                	ret

000000008000a434 <js_promise_finally_value_thunk>:
js_promise_finally_value_thunk():
quickjs-nuttx/quickjs.c:48594
    return JS_DupValue(ctx, func_data[0]);
    8000a434:	00083503          	ld	a0,0(a6)
    8000a438:	00883583          	ld	a1,8(a6)
quickjs-nuttx/quickjs.c:48593
{
    8000a43c:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:48595
}
    8000a43e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:48594
    return JS_DupValue(ctx, func_data[0]);
    8000a440:	bfe9                	j	8000a41a <JS_DupValue.constprop.0>

000000008000a442 <js_iterator_proto_iterator>:
js_iterator_proto_iterator():
quickjs-nuttx/quickjs.c:40709
{
    8000a442:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:40710
    return JS_DupValue(ctx, this_val);
    8000a444:	852e                	mv	a0,a1
    8000a446:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:40711
}
    8000a448:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:40710
    return JS_DupValue(ctx, this_val);
    8000a44a:	bfc1                	j	8000a41a <JS_DupValue.constprop.0>

000000008000a44c <js_get_this>:
js_get_this():
quickjs-nuttx/quickjs.c:38964
{
    8000a44c:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:38965
    return JS_DupValue(ctx, this_val);
    8000a44e:	852e                	mv	a0,a1
    8000a450:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:38966
}
    8000a452:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:38965
    return JS_DupValue(ctx, this_val);
    8000a454:	b7d9                	j	8000a41a <JS_DupValue.constprop.0>

000000008000a456 <bf_delete>:
bf_delete():
quickjs-nuttx/libbf.h:222
    bf_context_t *s = r->ctx;
    8000a456:	611c                	ld	a5,0(a0)
quickjs-nuttx/libbf.h:224
    if (s && r->tab) {
    8000a458:	c799                	beqz	a5,8000a466 <bf_delete+0x10>
quickjs-nuttx/libbf.h:224 (discriminator 1)
    8000a45a:	710c                	ld	a1,32(a0)
    8000a45c:	c589                	beqz	a1,8000a466 <bf_delete+0x10>
bf_realloc():
quickjs-nuttx/libbf.h:202
    return s->realloc_func(s->realloc_opaque, ptr, size);
    8000a45e:	6798                	ld	a4,8(a5)
    8000a460:	6388                	ld	a0,0(a5)
    8000a462:	4601                	li	a2,0
    8000a464:	8702                	jr	a4
bf_delete():
quickjs-nuttx/libbf.h:227
}
    8000a466:	8082                	ret

000000008000a468 <JS_ToBigFloat>:
JS_ToBigFloat():
quickjs-nuttx/quickjs.c:12324
{
    8000a468:	1101                	addi	sp,sp,-32
    8000a46a:	e822                	sd	s0,16(sp)
    8000a46c:	ec06                	sd	ra,24(sp)
    8000a46e:	e032                	sd	a2,0(sp)
quickjs-nuttx/quickjs.c:12329
    tag = JS_VALUE_GET_NORM_TAG(val);
    8000a470:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:12330
    switch(tag) {
    8000a472:	479d                	li	a5,7
quickjs-nuttx/quickjs.c:12324
{
    8000a474:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:12330
    switch(tag) {
    8000a476:	04f68963          	beq	a3,a5,8000a4c8 <JS_ToBigFloat+0x60>
    8000a47a:	00d7ee63          	bltu	a5,a3,8000a496 <JS_ToBigFloat+0x2e>
    8000a47e:	4789                	li	a5,2
    8000a480:	02d7f263          	bgeu	a5,a3,8000a4a4 <JS_ToBigFloat+0x3c>
quickjs-nuttx/quickjs.c:12358
        bf_init(ctx->bf_ctx, r);
    8000a484:	19053503          	ld	a0,400(a0)
    8000a488:	85a2                	mv	a1,s0
    8000a48a:	6e44d0ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12359
        bf_set_nan(r);
    8000a48e:	8522                	mv	a0,s0
    8000a490:	72e4d0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/quickjs.c:12360
        break;
    8000a494:	a02d                	j	8000a4be <JS_ToBigFloat+0x56>
quickjs-nuttx/quickjs.c:12330
    switch(tag) {
    8000a496:	26a9                	addiw	a3,a3,10
    8000a498:	4785                	li	a5,1
    8000a49a:	fed7e5e3          	bltu	a5,a3,8000a484 <JS_ToBigFloat+0x1c>
quickjs-nuttx/quickjs.c:12353
        r = &p->num;
    8000a49e:	00860413          	addi	s0,a2,8
quickjs-nuttx/quickjs.c:12354
        break;
    8000a4a2:	a831                	j	8000a4be <JS_ToBigFloat+0x56>
quickjs-nuttx/quickjs.c:12335
        bf_init(ctx->bf_ctx, r);
    8000a4a4:	19053503          	ld	a0,400(a0)
    8000a4a8:	6c64d0ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12336
        if (bf_set_si(r, JS_VALUE_GET_INT(val)))
    8000a4ac:	4582                	lw	a1,0(sp)
    8000a4ae:	8522                	mv	a0,s0
    8000a4b0:	78c4d0ef          	jal	ra,80057c3c <bf_set_si>
    8000a4b4:	c509                	beqz	a0,8000a4be <JS_ToBigFloat+0x56>
quickjs-nuttx/quickjs.c:12344
            bf_delete(r);
    8000a4b6:	8522                	mv	a0,s0
    8000a4b8:	f9fff0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:12345
            return NULL;
    8000a4bc:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:12363
}
    8000a4be:	60e2                	ld	ra,24(sp)
    8000a4c0:	8522                	mv	a0,s0
    8000a4c2:	6442                	ld	s0,16(sp)
    8000a4c4:	6105                	addi	sp,sp,32
    8000a4c6:	8082                	ret
quickjs-nuttx/quickjs.c:12341
        bf_init(ctx->bf_ctx, r);
    8000a4c8:	19053503          	ld	a0,400(a0)
    8000a4cc:	6a24d0ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:12342
        if (bf_set_float64(r, JS_VALUE_GET_FLOAT64(val))) {
    8000a4d0:	2502                	fld	fa0,0(sp)
    8000a4d2:	8522                	mv	a0,s0
    8000a4d4:	2374e0ef          	jal	ra,80058f0a <bf_set_float64>
    8000a4d8:	bff1                	j	8000a4b4 <JS_ToBigFloat+0x4c>

000000008000a4da <js_object_has_name.constprop.0.isra.0>:
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    8000a4da:	6d18                	ld	a4,24(a0)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8000a4dc:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8000a4de:	040005b7          	lui	a1,0x4000
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8000a4e2:	531c                	lw	a5,32(a4)
js_object_has_name():
quickjs-nuttx/quickjs.c:9412
static BOOL js_object_has_name(JSContext *ctx, JSValueConst obj)
    8000a4e4:	862a                	mv	a2,a0
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8000a4e6:	15fd                	addi	a1,a1,-1
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8000a4e8:	0377f793          	andi	a5,a5,55
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8000a4ec:	0785                	addi	a5,a5,1
    8000a4ee:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    8000a4f2:	03700513          	li	a0,55
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8000a4f6:	04070693          	addi	a3,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8000a4fa:	97ba                	add	a5,a5,a4
    8000a4fc:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    8000a500:	e399                	bnez	a5,8000a506 <js_object_has_name.constprop.0.isra.0+0x2c>
js_object_has_name():
quickjs-nuttx/quickjs.c:9421
        return FALSE;
    8000a502:	4501                	li	a0,0
    8000a504:	8082                	ret
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    8000a506:	00379713          	slli	a4,a5,0x3
    8000a50a:	1761                	addi	a4,a4,-8
    8000a50c:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    8000a50e:	00472803          	lw	a6,4(a4)
    8000a512:	4318                	lw	a4,0(a4)
    8000a514:	00a81963          	bne	a6,a0,8000a526 <js_object_has_name.constprop.0.isra.0+0x4c>
js_object_has_name():
quickjs-nuttx/quickjs.c:9422
    if ((prs->flags & JS_PROP_TMASK) != JS_PROP_NORMAL)
    8000a518:	01a7571b          	srliw	a4,a4,0x1a
    8000a51c:	03077713          	andi	a4,a4,48
quickjs-nuttx/quickjs.c:9423
        return TRUE;
    8000a520:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:9422
    if ((prs->flags & JS_PROP_TMASK) != JS_PROP_NORMAL)
    8000a522:	c719                	beqz	a4,8000a530 <js_object_has_name.constprop.0.isra.0+0x56>
    8000a524:	8082                	ret
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8000a526:	00e5f7b3          	and	a5,a1,a4
    8000a52a:	1782                	slli	a5,a5,0x20
    8000a52c:	9381                	srli	a5,a5,0x20
    8000a52e:	bfc9                	j	8000a500 <js_object_has_name.constprop.0.isra.0+0x26>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    8000a530:	7218                	ld	a4,32(a2)
    8000a532:	0792                	slli	a5,a5,0x4
    8000a534:	17c1                	addi	a5,a5,-16
    8000a536:	97ba                	add	a5,a5,a4
js_object_has_name():
quickjs-nuttx/quickjs.c:9425
    if (JS_VALUE_GET_TAG(val) != JS_TAG_STRING)
    8000a538:	4794                	lw	a3,8(a5)
    8000a53a:	5765                	li	a4,-7
quickjs-nuttx/quickjs.c:9423
        return TRUE;
    8000a53c:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:9425
    if (JS_VALUE_GET_TAG(val) != JS_TAG_STRING)
    8000a53e:	00e69763          	bne	a3,a4,8000a54c <js_object_has_name.constprop.0.isra.0+0x72>
quickjs-nuttx/quickjs.c:9428
    return (p->len != 0);
    8000a542:	639c                	ld	a5,0(a5)
    8000a544:	43c8                	lw	a0,4(a5)
    8000a546:	1506                	slli	a0,a0,0x21
    8000a548:	00a03533          	snez	a0,a0
quickjs-nuttx/quickjs.c:9429
}
    8000a54c:	8082                	ret

000000008000a54e <JS_NewModuleValue>:
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8000a54e:	419c                	lw	a5,0(a1)
JS_NewModuleValue():
quickjs-nuttx/quickjs.c:28368
{
    8000a550:	1141                	addi	sp,sp,-16
    8000a552:	852e                	mv	a0,a1
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8000a554:	2785                	addiw	a5,a5,1
    8000a556:	c19c                	sw	a5,0(a1)
JS_NewModuleValue():
quickjs-nuttx/quickjs.c:28370
}
    8000a558:	55f5                	li	a1,-3
    8000a55a:	0141                	addi	sp,sp,16
    8000a55c:	8082                	ret

000000008000a55e <js_typed_array_mark>:
js_typed_array_mark():
quickjs-nuttx/quickjs.c:54750

static void js_typed_array_mark(JSRuntime *rt, JSValueConst val,
                                JS_MarkFunc *mark_func)
{
    JSObject *p = JS_VALUE_GET_OBJ(val);
    JSTypedArray *ta = p->u.typed_array;
    8000a55e:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:54748
{
    8000a560:	1141                	addi	sp,sp,-16
    8000a562:	e02e                	sd	a1,0(sp)
    8000a564:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:54751
    if (ta) {
    8000a566:	c781                	beqz	a5,8000a56e <js_typed_array_mark+0x10>
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000a568:	6f8c                	ld	a1,24(a5)
js_typed_array_mark():
quickjs-nuttx/quickjs.c:54754
        JS_MarkValue(rt, JS_MKPTR(JS_TAG_OBJECT, ta->buffer), mark_func);
    }
}
    8000a56a:	0141                	addi	sp,sp,16
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000a56c:	8682                	jr	a3
js_typed_array_mark():
quickjs-nuttx/quickjs.c:54754
}
    8000a56e:	0141                	addi	sp,sp,16
    8000a570:	8082                	ret

000000008000a572 <js_bytecode_function_mark>:
js_bytecode_function_mark():
quickjs-nuttx/quickjs.c:5338
{
    8000a572:	7139                	addi	sp,sp,-64
    8000a574:	f822                	sd	s0,48(sp)
    8000a576:	f426                	sd	s1,40(sp)
    8000a578:	fc06                	sd	ra,56(sp)
    8000a57a:	f04a                	sd	s2,32(sp)
    8000a57c:	ec4e                	sd	s3,24(sp)
    8000a57e:	e852                	sd	s4,16(sp)
quickjs-nuttx/quickjs.c:5340
    JSVarRef **var_refs = p->u.func.var_refs;
    8000a580:	0385ba03          	ld	s4,56(a1) # 4000038 <asinh-0x7bffffc8>
quickjs-nuttx/quickjs.c:5341
    JSFunctionBytecode *b = p->u.func.function_bytecode;
    8000a584:	0305b983          	ld	s3,48(a1)
quickjs-nuttx/quickjs.c:5338
{
    8000a588:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:5344
    if (p->u.func.home_object) {
    8000a58a:	61ac                	ld	a1,64(a1)
quickjs-nuttx/quickjs.c:5338
{
    8000a58c:	e432                	sd	a2,8(sp)
    8000a58e:	84aa                	mv	s1,a0
    8000a590:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:5344
    if (p->u.func.home_object) {
    8000a592:	c191                	beqz	a1,8000a596 <js_bytecode_function_mark+0x24>
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000a594:	9682                	jalr	a3
js_bytecode_function_mark():
quickjs-nuttx/quickjs.c:5348
    if (b) {
    8000a596:	02098d63          	beqz	s3,8000a5d0 <js_bytecode_function_mark+0x5e>
quickjs-nuttx/quickjs.c:5350
            for(i = 0; i < b->closure_var_count; i++) {
    8000a59a:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:5349
        if (var_refs) {
    8000a59c:	020a1563          	bnez	s4,8000a5c6 <js_bytecode_function_mark+0x54>
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000a5a0:	87a2                	mv	a5,s0
js_bytecode_function_mark():
quickjs-nuttx/quickjs.c:5361
}
    8000a5a2:	7442                	ld	s0,48(sp)
    8000a5a4:	70e2                	ld	ra,56(sp)
    8000a5a6:	7902                	ld	s2,32(sp)
    8000a5a8:	6a42                	ld	s4,16(sp)
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000a5aa:	85ce                	mv	a1,s3
    8000a5ac:	8526                	mv	a0,s1
js_bytecode_function_mark():
quickjs-nuttx/quickjs.c:5361
}
    8000a5ae:	69e2                	ld	s3,24(sp)
    8000a5b0:	74a2                	ld	s1,40(sp)
    8000a5b2:	6121                	addi	sp,sp,64
JS_MarkValue():
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000a5b4:	8782                	jr	a5
js_bytecode_function_mark():
quickjs-nuttx/quickjs.c:5351
                JSVarRef *var_ref = var_refs[i];
    8000a5b6:	00391793          	slli	a5,s2,0x3
    8000a5ba:	97d2                	add	a5,a5,s4
    8000a5bc:	638c                	ld	a1,0(a5)
quickjs-nuttx/quickjs.c:5352
                if (var_ref) {
    8000a5be:	c199                	beqz	a1,8000a5c4 <js_bytecode_function_mark+0x52>
quickjs-nuttx/quickjs.c:5353
                    mark_func(rt, &var_ref->header);
    8000a5c0:	8526                	mv	a0,s1
    8000a5c2:	9402                	jalr	s0
quickjs-nuttx/quickjs.c:5350 (discriminator 2)
            for(i = 0; i < b->closure_var_count; i++) {
    8000a5c4:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:5350 (discriminator 1)
    8000a5c6:	05c9a783          	lw	a5,92(s3)
    8000a5ca:	fef946e3          	blt	s2,a5,8000a5b6 <js_bytecode_function_mark+0x44>
    8000a5ce:	bfc9                	j	8000a5a0 <js_bytecode_function_mark+0x2e>
quickjs-nuttx/quickjs.c:5361
}
    8000a5d0:	70e2                	ld	ra,56(sp)
    8000a5d2:	7442                	ld	s0,48(sp)
    8000a5d4:	74a2                	ld	s1,40(sp)
    8000a5d6:	7902                	ld	s2,32(sp)
    8000a5d8:	69e2                	ld	s3,24(sp)
    8000a5da:	6a42                	ld	s4,16(sp)
    8000a5dc:	6121                	addi	sp,sp,64
    8000a5de:	8082                	ret

000000008000a5e0 <hash_string>:
hash_string():
quickjs-nuttx/quickjs.c:2487
{
    8000a5e0:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:2489
        h = hash_string16(str->u.str16, str->len, h);
    8000a5e2:	43d4                	lw	a3,4(a5)
quickjs-nuttx/quickjs.c:2487
{
    8000a5e4:	852e                	mv	a0,a1
hash_string8():
quickjs-nuttx/quickjs.c:2472
        h = h * 263 + str[i];
    8000a5e6:	10700813          	li	a6,263
hash_string():
quickjs-nuttx/quickjs.c:2489
        h = hash_string16(str->u.str16, str->len, h);
    8000a5ea:	02169713          	slli	a4,a3,0x21
quickjs-nuttx/quickjs.c:2488
    if (str->is_wide_char)
    8000a5ee:	0006861b          	sext.w	a2,a3
quickjs-nuttx/quickjs.c:2489
        h = hash_string16(str->u.str16, str->len, h);
    8000a5f2:	9305                	srli	a4,a4,0x21
hash_string8():
quickjs-nuttx/quickjs.c:2471
    for(i = 0; i < len; i++)
    8000a5f4:	4681                	li	a3,0
hash_string():
quickjs-nuttx/quickjs.c:2488
    if (str->is_wide_char)
    8000a5f6:	02065863          	bgez	a2,8000a626 <hash_string+0x46>
    8000a5fa:	07c1                	addi	a5,a5,16
hash_string16():
quickjs-nuttx/quickjs.c:2482
        h = h * 263 + str[i];
    8000a5fc:	10700613          	li	a2,263
quickjs-nuttx/quickjs.c:2481
    for(i = 0; i < len; i++)
    8000a600:	00e6e363          	bltu	a3,a4,8000a606 <hash_string+0x26>
    8000a604:	8082                	ret
quickjs-nuttx/quickjs.c:2482
        h = h * 263 + str[i];
    8000a606:	02a6053b          	mulw	a0,a2,a0
    8000a60a:	0007d583          	lhu	a1,0(a5)
quickjs-nuttx/quickjs.c:2481
    for(i = 0; i < len; i++)
    8000a60e:	0685                	addi	a3,a3,1
    8000a610:	0789                	addi	a5,a5,2
quickjs-nuttx/quickjs.c:2482
        h = h * 263 + str[i];
    8000a612:	9d2d                	addw	a0,a0,a1
quickjs-nuttx/quickjs.c:2481
    for(i = 0; i < len; i++)
    8000a614:	b7f5                	j	8000a600 <hash_string+0x20>
hash_string8():
quickjs-nuttx/quickjs.c:2472
        h = h * 263 + str[i];
    8000a616:	02a805bb          	mulw	a1,a6,a0
    8000a61a:	00d78633          	add	a2,a5,a3
    8000a61e:	01064503          	lbu	a0,16(a2)
quickjs-nuttx/quickjs.c:2471
    for(i = 0; i < len; i++)
    8000a622:	0685                	addi	a3,a3,1
quickjs-nuttx/quickjs.c:2472
        h = h * 263 + str[i];
    8000a624:	9d2d                	addw	a0,a0,a1
quickjs-nuttx/quickjs.c:2471
    for(i = 0; i < len; i++)
    8000a626:	fee6e8e3          	bltu	a3,a4,8000a616 <hash_string+0x36>
hash_string():
quickjs-nuttx/quickjs.c:2493
}
    8000a62a:	8082                	ret

000000008000a62c <map_hash_key.constprop.0>:
map_hash_key():
quickjs-nuttx/quickjs.c:46918
static uint32_t map_hash_key(JSContext *ctx, JSValueConst key)
    8000a62c:	1101                	addi	sp,sp,-32
    8000a62e:	e822                	sd	s0,16(sp)
    8000a630:	ec06                	sd	ra,24(sp)
    8000a632:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:46920
    uint32_t tag = JS_VALUE_GET_NORM_TAG(key);
    8000a634:	0005841b          	sext.w	s0,a1
quickjs-nuttx/quickjs.c:46925
    switch(tag) {
    8000a638:	479d                	li	a5,7
    8000a63a:	06f40363          	beq	s0,a5,8000a6a0 <map_hash_key.constprop.0+0x74>
    8000a63e:	0087ec63          	bltu	a5,s0,8000a656 <map_hash_key.constprop.0+0x2a>
    8000a642:	c029                	beqz	s0,8000a684 <map_hash_key.constprop.0+0x58>
    8000a644:	4785                	li	a5,1
    8000a646:	02f40863          	beq	s0,a5,8000a676 <map_hash_key.constprop.0+0x4a>
    8000a64a:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:46954
}
    8000a64c:	60e2                	ld	ra,24(sp)
    8000a64e:	8d21                	xor	a0,a0,s0
    8000a650:	6442                	ld	s0,16(sp)
    8000a652:	6105                	addi	sp,sp,32
    8000a654:	8082                	ret
quickjs-nuttx/quickjs.c:46925
    switch(tag) {
    8000a656:	57e5                	li	a5,-7
    8000a658:	02f40163          	beq	s0,a5,8000a67a <map_hash_key.constprop.0+0x4e>
    8000a65c:	57fd                	li	a5,-1
    8000a65e:	00f40563          	beq	s0,a5,8000a668 <map_hash_key.constprop.0+0x3c>
    8000a662:	57e1                	li	a5,-8
    8000a664:	fef413e3          	bne	s0,a5,8000a64a <map_hash_key.constprop.0+0x1e>
quickjs-nuttx/quickjs.c:46934
        h = (uintptr_t)JS_VALUE_GET_PTR(key) * 3163;
    8000a668:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:46946
        h = (u.u32[0] ^ u.u32[1]) * 3163;
    8000a66a:	6505                	lui	a0,0x1
    8000a66c:	c5b5051b          	addiw	a0,a0,-933
    8000a670:	02f5053b          	mulw	a0,a0,a5
quickjs-nuttx/quickjs.c:46947
        break;
    8000a674:	bfe1                	j	8000a64c <map_hash_key.constprop.0+0x20>
quickjs-nuttx/quickjs.c:46927
        h = JS_VALUE_GET_INT(key);
    8000a676:	4502                	lw	a0,0(sp)
quickjs-nuttx/quickjs.c:46928
        break;
    8000a678:	bfd1                	j	8000a64c <map_hash_key.constprop.0+0x20>
quickjs-nuttx/quickjs.c:46930
        h = hash_string(JS_VALUE_GET_STRING(key), 0);
    8000a67a:	4581                	li	a1,0
    8000a67c:	f65ff0ef          	jal	ra,8000a5e0 <hash_string>
    8000a680:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:46931
        break;
    8000a682:	b7e9                	j	8000a64c <map_hash_key.constprop.0+0x20>
quickjs-nuttx/quickjs.c:46937
        d = JS_VALUE_GET_INT(key) * 3163;
    8000a684:	4782                	lw	a5,0(sp)
    8000a686:	6705                	lui	a4,0x1
    8000a688:	c5b7071b          	addiw	a4,a4,-933
    8000a68c:	02e787bb          	mulw	a5,a5,a4
    8000a690:	d20787d3          	fcvt.d.w	fa5,a5
quickjs-nuttx/quickjs.c:46943
            d = JS_FLOAT64_NAN;
    8000a694:	e2078553          	fmv.x.d	a0,fa5
quickjs-nuttx/quickjs.c:46946
        h = (u.u32[0] ^ u.u32[1]) * 3163;
    8000a698:	02055793          	srli	a5,a0,0x20
    8000a69c:	8fa9                	xor	a5,a5,a0
    8000a69e:	b7f1                	j	8000a66a <map_hash_key.constprop.0+0x3e>
quickjs-nuttx/quickjs.c:46940
        d = JS_VALUE_GET_FLOAT64(key);
    8000a6a0:	6502                	ld	a0,0(sp)
quickjs-nuttx/quickjs.c:46942
        if (isnan(d))
    8000a6a2:	f20507d3          	fmv.d.x	fa5,a0
    8000a6a6:	a2f7a7d3          	feq.d	a5,fa5,fa5
    8000a6aa:	f7fd                	bnez	a5,8000a698 <map_hash_key.constprop.0+0x6c>
quickjs-nuttx/quickjs.c:46943
            d = JS_FLOAT64_NAN;
    8000a6ac:	00089797          	auipc	a5,0x89
    8000a6b0:	4d47b787          	fld	fa5,1236(a5) # 80093b80 <_erodata+0xe>
    8000a6b4:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    8000a6b8:	f2000753          	fmv.d.x	fa4,zero
    8000a6bc:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    8000a6c0:	bfd1                	j	8000a694 <map_hash_key.constprop.0+0x68>

000000008000a6c2 <bf_free>:
bf_free():
quickjs-nuttx/libbf.h:214
    if (ptr)
    8000a6c2:	c589                	beqz	a1,8000a6cc <bf_free+0xa>
bf_realloc():
quickjs-nuttx/libbf.h:202
    return s->realloc_func(s->realloc_opaque, ptr, size);
    8000a6c4:	651c                	ld	a5,8(a0)
    8000a6c6:	6108                	ld	a0,0(a0)
    8000a6c8:	4601                	li	a2,0
    8000a6ca:	8782                	jr	a5
bf_free():
quickjs-nuttx/libbf.h:216
}
    8000a6cc:	8082                	ret

000000008000a6ce <find_var>:
find_var():
quickjs-nuttx/quickjs.c:21610
    for(i = fd->var_count; i-- > 0;) {
    8000a6ce:	09c5a783          	lw	a5,156(a1)
quickjs-nuttx/quickjs.c:21610 (discriminator 1)
    8000a6d2:	fff7851b          	addiw	a0,a5,-1
    8000a6d6:	00f04a63          	bgtz	a5,8000a6ea <find_var+0x1c>
find_arg():
quickjs-nuttx/quickjs.c:21600
    for(i = fd->arg_count; i-- > 0;) {
    8000a6da:	0ac5a503          	lw	a0,172(a1)
    8000a6de:	87aa                	mv	a5,a0
    8000a6e0:	357d                	addiw	a0,a0,-1
    8000a6e2:	00f04f63          	bgtz	a5,8000a700 <find_var+0x32>
quickjs-nuttx/quickjs.c:21604
    return -1;
    8000a6e6:	557d                	li	a0,-1
find_var():
quickjs-nuttx/quickjs.c:21615
}
    8000a6e8:	8082                	ret
quickjs-nuttx/quickjs.c:21611
        if (fd->vars[i].var_name == name && fd->vars[i].scope_level == 0)
    8000a6ea:	69d8                	ld	a4,144(a1)
    8000a6ec:	00451793          	slli	a5,a0,0x4
    8000a6f0:	97ba                	add	a5,a5,a4
    8000a6f2:	4398                	lw	a4,0(a5)
    8000a6f4:	00c71463          	bne	a4,a2,8000a6fc <find_var+0x2e>
quickjs-nuttx/quickjs.c:21611 (discriminator 1)
    8000a6f8:	43dc                	lw	a5,4(a5)
    8000a6fa:	d7fd                	beqz	a5,8000a6e8 <find_var+0x1a>
quickjs-nuttx/quickjs.c:21608 (discriminator 1)
{
    8000a6fc:	87aa                	mv	a5,a0
    8000a6fe:	bfd1                	j	8000a6d2 <find_var+0x4>
find_arg():
quickjs-nuttx/quickjs.c:21601
        if (fd->args[i].var_name == name)
    8000a700:	71dc                	ld	a5,160(a1)
    8000a702:	00451713          	slli	a4,a0,0x4
    8000a706:	97ba                	add	a5,a5,a4
    8000a708:	439c                	lw	a5,0(a5)
    8000a70a:	fcc79ae3          	bne	a5,a2,8000a6de <find_var+0x10>
quickjs-nuttx/quickjs.c:21602
            return i | ARGUMENT_VAR_OFFSET;
    8000a70e:	200007b7          	lui	a5,0x20000
    8000a712:	8d5d                	or	a0,a0,a5
    8000a714:	8082                	ret

000000008000a716 <days_from_year>:
days_from_year():
quickjs-nuttx/quickjs.c:49333
        floor_div(y - 1901, 100) + floor_div(y - 1601, 400);
    8000a716:	9bf50793          	addi	a5,a0,-1601 # 9bf <asinh-0x7ffff641>
floor_div():
quickjs-nuttx/quickjs.c:49300
    int64_t m = a % b;
    8000a71a:	19000813          	li	a6,400
    8000a71e:	0307e833          	rem	a6,a5,a6
days_from_year():
quickjs-nuttx/quickjs.c:49332
    return 365 * (y - 1970) + floor_div(y - 1969, 4) -
    8000a722:	84f50693          	addi	a3,a0,-1969
floor_div():
quickjs-nuttx/quickjs.c:49300
    int64_t m = a % b;
    8000a726:	4611                	li	a2,4
days_from_year():
quickjs-nuttx/quickjs.c:49333
        floor_div(y - 1901, 100) + floor_div(y - 1601, 400);
    8000a728:	89350713          	addi	a4,a0,-1901
floor_div():
quickjs-nuttx/quickjs.c:49300
    int64_t m = a % b;
    8000a72c:	06400593          	li	a1,100
quickjs-nuttx/quickjs.c:49301
    return (a - (m + (m < 0) * b)) / b;
    8000a730:	4881                	li	a7,0
quickjs-nuttx/quickjs.c:49300
    int64_t m = a % b;
    8000a732:	02c6e633          	rem	a2,a3,a2
quickjs-nuttx/quickjs.c:49301
    return (a - (m + (m < 0) * b)) / b;
    8000a736:	410787b3          	sub	a5,a5,a6
quickjs-nuttx/quickjs.c:49300
    int64_t m = a % b;
    8000a73a:	02b765b3          	rem	a1,a4,a1
quickjs-nuttx/quickjs.c:49301
    return (a - (m + (m < 0) * b)) / b;
    8000a73e:	00085463          	bgez	a6,8000a746 <days_from_year+0x30>
    8000a742:	19000893          	li	a7,400
    8000a746:	19000813          	li	a6,400
    8000a74a:	411787b3          	sub	a5,a5,a7
    8000a74e:	8e91                	sub	a3,a3,a2
    8000a750:	0307c7b3          	div	a5,a5,a6
days_from_year():
quickjs-nuttx/quickjs.c:49332
    return 365 * (y - 1970) + floor_div(y - 1969, 4) -
    8000a754:	16d00813          	li	a6,365
    8000a758:	03050533          	mul	a0,a0,a6
quickjs-nuttx/quickjs.c:49333
        floor_div(y - 1901, 100) + floor_div(y - 1601, 400);
    8000a75c:	fff50837          	lui	a6,0xfff50
    8000a760:	73680813          	addi	a6,a6,1846 # fffffffffff50736 <_ebss+0xffffffff7fe4f5d0>
    8000a764:	9542                	add	a0,a0,a6
    8000a766:	97aa                	add	a5,a5,a0
floor_div():
quickjs-nuttx/quickjs.c:49301
    return (a - (m + (m < 0) * b)) / b;
    8000a768:	43d65513          	srai	a0,a2,0x3d
    8000a76c:	8911                	andi	a0,a0,4
    8000a76e:	40a68533          	sub	a0,a3,a0
    8000a772:	4691                	li	a3,4
    8000a774:	02d54533          	div	a0,a0,a3
days_from_year():
quickjs-nuttx/quickjs.c:49333
        floor_div(y - 1901, 100) + floor_div(y - 1601, 400);
    8000a778:	97aa                	add	a5,a5,a0
floor_div():
quickjs-nuttx/quickjs.c:49301
    return (a - (m + (m < 0) * b)) / b;
    8000a77a:	40b70533          	sub	a0,a4,a1
    8000a77e:	4701                	li	a4,0
    8000a780:	0005d463          	bgez	a1,8000a788 <days_from_year+0x72>
    8000a784:	06400713          	li	a4,100
    8000a788:	8d19                	sub	a0,a0,a4
    8000a78a:	06400713          	li	a4,100
    8000a78e:	02e54533          	div	a0,a0,a4
days_from_year():
quickjs-nuttx/quickjs.c:49334
}
    8000a792:	40a78533          	sub	a0,a5,a0
    8000a796:	8082                	ret

000000008000a798 <set_date_fields>:
set_date_fields():
quickjs-nuttx/quickjs.c:49429
static double set_date_fields(double fields[], int is_local) {
    8000a798:	711d                	addi	sp,sp,-96
    8000a79a:	e8a2                	sd	s0,80(sp)
    8000a79c:	e0ca                	sd	s2,64(sp)
    8000a79e:	fc4e                	sd	s3,56(sp)
    8000a7a0:	ec86                	sd	ra,88(sp)
    8000a7a2:	e4a6                	sd	s1,72(sp)
    8000a7a4:	f852                	sd	s4,48(sp)
    8000a7a6:	f456                	sd	s5,40(sp)
    8000a7a8:	f05a                	sd	s6,32(sp)
    8000a7aa:	ac22                	fsd	fs0,24(sp)
quickjs-nuttx/quickjs.c:49434
    m1 = fields[1];
    8000a7ac:	2500                	fld	fs0,8(a0)
quickjs-nuttx/quickjs.c:49435
    m = fmod(m1, 12);
    8000a7ae:	00089797          	auipc	a5,0x89
    8000a7b2:	40a7b587          	fld	fa1,1034(a5) # 80093bb8 <_erodata+0x46>
quickjs-nuttx/quickjs.c:49429
static double set_date_fields(double fields[], int is_local) {
    8000a7b6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49435
    m = fmod(m1, 12);
    8000a7b8:	22840553          	fmv.d	fa0,fs0
quickjs-nuttx/quickjs.c:49429
static double set_date_fields(double fields[], int is_local) {
    8000a7bc:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:49435
    m = fmod(m1, 12);
    8000a7be:	81df60ef          	jal	ra,80000fda <fmod>
    8000a7c2:	c20517d3          	fcvt.w.d	a5,fa0,rtz
quickjs-nuttx/quickjs.c:49436
    if (m < 0)
    8000a7c6:	00089717          	auipc	a4,0x89
    8000a7ca:	3f270713          	addi	a4,a4,1010 # 80093bb8 <_erodata+0x46>
    8000a7ce:	230c                	fld	fa1,0(a4)
quickjs-nuttx/quickjs.c:49435
    m = fmod(m1, 12);
    8000a7d0:	0007899b          	sext.w	s3,a5
quickjs-nuttx/quickjs.c:49436
    if (m < 0)
    8000a7d4:	0009d463          	bgez	s3,8000a7dc <set_date_fields+0x44>
quickjs-nuttx/quickjs.c:49437
        m += 12;
    8000a7d8:	00c7899b          	addiw	s3,a5,12
quickjs-nuttx/quickjs.c:49438
    y = (int64_t)(fields[0] + floor(m1 / 12));
    8000a7dc:	1ab47553          	fdiv.d	fa0,fs0,fa1
    8000a7e0:	0006aa17          	auipc	s4,0x6a
    8000a7e4:	4e8a0a13          	addi	s4,s4,1256 # 80074cc8 <month_days>
quickjs-nuttx/quickjs.c:49441
    for(i = 0; i < m; i++) {
    8000a7e8:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:49443
        if (i == 1)
    8000a7ea:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:49438
    y = (int64_t)(fields[0] + floor(m1 / 12));
    8000a7ec:	94cf60ef          	jal	ra,80000938 <floor>
    8000a7f0:	201c                	fld	fa5,0(s0)
    8000a7f2:	02f57553          	fadd.d	fa0,fa0,fa5
    8000a7f6:	c2251ad3          	fcvt.l.d	s5,fa0,rtz
quickjs-nuttx/quickjs.c:49439
    days = days_from_year(y);
    8000a7fa:	8556                	mv	a0,s5
    8000a7fc:	f1bff0ef          	jal	ra,8000a716 <days_from_year>
    8000a800:	d2257453          	fcvt.d.l	fs0,a0
quickjs-nuttx/quickjs.c:49441 (discriminator 1)
    for(i = 0; i < m; i++) {
    8000a804:	0934c663          	blt	s1,s3,8000a890 <set_date_fields+0xf8>
quickjs-nuttx/quickjs.c:49447
    days += fields[2] - 1;
    8000a808:	281c                	fld	fa5,16(s0)
    8000a80a:	00089797          	auipc	a5,0x89
    8000a80e:	3867b507          	fld	fa0,902(a5) # 80093b90 <_erodata+0x1e>
quickjs-nuttx/quickjs.c:49448
    h = fields[3] * 3600000 + fields[4] * 60000 + 
    8000a812:	00089797          	auipc	a5,0x89
    8000a816:	3ae7b707          	fld	fa4,942(a5) # 80093bc0 <_erodata+0x4e>
quickjs-nuttx/quickjs.c:49447
    days += fields[2] - 1;
    8000a81a:	0aa7f553          	fsub.d	fa0,fa5,fa0
quickjs-nuttx/quickjs.c:49448
    h = fields[3] * 3600000 + fields[4] * 60000 + 
    8000a81e:	301c                	fld	fa5,32(s0)
    8000a820:	00089797          	auipc	a5,0x89
    8000a824:	3a87b687          	fld	fa3,936(a5) # 80093bc8 <_erodata+0x56>
    8000a828:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    8000a82c:	2c18                	fld	fa4,24(s0)
quickjs-nuttx/quickjs.c:49447
    days += fields[2] - 1;
    8000a82e:	02857553          	fadd.d	fa0,fa0,fs0
quickjs-nuttx/quickjs.c:49448
    h = fields[3] * 3600000 + fields[4] * 60000 + 
    8000a832:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
    8000a836:	341c                	fld	fa5,40(s0)
    8000a838:	00089797          	auipc	a5,0x89
    8000a83c:	3407b687          	fld	fa3,832(a5) # 80093b78 <_erodata+0x6>
    8000a840:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
    8000a844:	3818                	fld	fa4,48(s0)
    8000a846:	02e7f7d3          	fadd.d	fa5,fa5,fa4
quickjs-nuttx/quickjs.c:49450
    d = days * 86400000 + h;
    8000a84a:	00089797          	auipc	a5,0x89
    8000a84e:	3867b707          	fld	fa4,902(a5) # 80093bd0 <_erodata+0x5e>
    8000a852:	7ae57543          	fmadd.d	fa0,fa0,fa4,fa5
quickjs-nuttx/quickjs.c:49451
    if (is_local)
    8000a856:	02090163          	beqz	s2,8000a878 <set_date_fields+0xe0>
quickjs-nuttx/quickjs.c:49452
        d += getTimezoneOffset(d) * 60000;
    8000a85a:	c2251553          	fcvt.l.d	a0,fa0,rtz
    8000a85e:	a42a                	fsd	fa0,8(sp)
    8000a860:	b11fe0ef          	jal	ra,80009370 <getTimezoneOffset>
    8000a864:	67bd                	lui	a5,0xf
    8000a866:	a607879b          	addiw	a5,a5,-1440
    8000a86a:	02a787bb          	mulw	a5,a5,a0
    8000a86e:	2522                	fld	fa0,8(sp)
    8000a870:	d20787d3          	fcvt.d.w	fa5,a5
    8000a874:	02f57553          	fadd.d	fa0,fa0,fa5
quickjs-nuttx/quickjs.c:49454
}
    8000a878:	6446                	ld	s0,80(sp)
    8000a87a:	60e6                	ld	ra,88(sp)
    8000a87c:	64a6                	ld	s1,72(sp)
    8000a87e:	6906                	ld	s2,64(sp)
    8000a880:	79e2                	ld	s3,56(sp)
    8000a882:	7a42                	ld	s4,48(sp)
    8000a884:	7aa2                	ld	s5,40(sp)
    8000a886:	7b02                	ld	s6,32(sp)
    8000a888:	2462                	fld	fs0,24(sp)
    8000a88a:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:49453
    return time_clip(d);
    8000a88c:	830ff06f          	j	800098bc <time_clip>
quickjs-nuttx/quickjs.c:49442
        md = month_days[i];
    8000a890:	000a2503          	lw	a0,0(s4)
quickjs-nuttx/quickjs.c:49443
        if (i == 1)
    8000a894:	01649763          	bne	s1,s6,8000a8a2 <set_date_fields+0x10a>
quickjs-nuttx/quickjs.c:49444
            md += days_in_year(y) - 365;
    8000a898:	8556                	mv	a0,s5
    8000a89a:	b41fd0ef          	jal	ra,800083da <days_in_year>
    8000a89e:	eaf5051b          	addiw	a0,a0,-337
quickjs-nuttx/quickjs.c:49445 (discriminator 2)
        days += md;
    8000a8a2:	d20507d3          	fcvt.d.w	fa5,a0
quickjs-nuttx/quickjs.c:49441 (discriminator 2)
    for(i = 0; i < m; i++) {
    8000a8a6:	2485                	addiw	s1,s1,1
    8000a8a8:	0a11                	addi	s4,s4,4
quickjs-nuttx/quickjs.c:49445 (discriminator 2)
        days += md;
    8000a8aa:	02f47453          	fadd.d	fs0,fs0,fa5
quickjs-nuttx/quickjs.c:49441 (discriminator 2)
    for(i = 0; i < m; i++) {
    8000a8ae:	bf99                	j	8000a804 <set_date_fields+0x6c>

000000008000a8b0 <js_string_memcmp>:
js_string_memcmp():
quickjs-nuttx/quickjs.c:4120
{
    8000a8b0:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:4123
    if (likely(!p1->is_wide_char)) {
    8000a8b2:	00472883          	lw	a7,4(a4)
quickjs-nuttx/quickjs.c:4124
        if (likely(!p2->is_wide_char))
    8000a8b6:	41dc                	lw	a5,4(a1)
quickjs-nuttx/quickjs.c:4120
{
    8000a8b8:	86ae                	mv	a3,a1
    8000a8ba:	8832                	mv	a6,a2
quickjs-nuttx/quickjs.c:4125
            res = memcmp(p1->u.str8, p2->u.str8, len);
    8000a8bc:	0541                	addi	a0,a0,16
    8000a8be:	05c1                	addi	a1,a1,16
quickjs-nuttx/quickjs.c:4123
    if (likely(!p1->is_wide_char)) {
    8000a8c0:	0208c963          	bltz	a7,8000a8f2 <js_string_memcmp+0x42>
quickjs-nuttx/quickjs.c:4124
        if (likely(!p2->is_wide_char))
    8000a8c4:	4681                	li	a3,0
    8000a8c6:	0007ce63          	bltz	a5,8000a8e2 <js_string_memcmp+0x32>
quickjs-nuttx/quickjs.c:4125
            res = memcmp(p1->u.str8, p2->u.str8, len);
    8000a8ca:	30a5906f          	j	80063bd4 <memcmp>
memcmp16_8():
quickjs-nuttx/quickjs.c:4101
        c = src1[i] - src2[i];
    8000a8ce:	00d70633          	add	a2,a4,a3
    8000a8d2:	0005d783          	lhu	a5,0(a1)
    8000a8d6:	01064503          	lbu	a0,16(a2)
quickjs-nuttx/quickjs.c:4102
        if (c != 0)
    8000a8da:	0685                	addi	a3,a3,1
    8000a8dc:	0589                	addi	a1,a1,2
quickjs-nuttx/quickjs.c:4101
        c = src1[i] - src2[i];
    8000a8de:	9f89                	subw	a5,a5,a0
quickjs-nuttx/quickjs.c:4102
        if (c != 0)
    8000a8e0:	e791                	bnez	a5,8000a8ec <js_string_memcmp+0x3c>
quickjs-nuttx/quickjs.c:4100
    for(i = 0; i < len; i++) {
    8000a8e2:	0006879b          	sext.w	a5,a3
    8000a8e6:	ff07c4e3          	blt	a5,a6,8000a8ce <js_string_memcmp+0x1e>
quickjs-nuttx/quickjs.c:4105
    return 0;
    8000a8ea:	4781                	li	a5,0
js_string_memcmp():
quickjs-nuttx/quickjs.c:4127
            res = -memcmp16_8(p2->u.str16, p1->u.str8, len);
    8000a8ec:	40f0053b          	negw	a0,a5
    8000a8f0:	8082                	ret
quickjs-nuttx/quickjs.c:4129
        if (!p2->is_wide_char)
    8000a8f2:	0407c663          	bltz	a5,8000a93e <js_string_memcmp+0x8e>
    8000a8f6:	872a                	mv	a4,a0
    8000a8f8:	4601                	li	a2,0
memcmp16_8():
quickjs-nuttx/quickjs.c:4100
    for(i = 0; i < len; i++) {
    8000a8fa:	0006079b          	sext.w	a5,a2
    8000a8fe:	0107c463          	blt	a5,a6,8000a906 <js_string_memcmp+0x56>
quickjs-nuttx/quickjs.c:4105
    return 0;
    8000a902:	4501                	li	a0,0
    8000a904:	a821                	j	8000a91c <js_string_memcmp+0x6c>
quickjs-nuttx/quickjs.c:4101
        c = src1[i] - src2[i];
    8000a906:	00c685b3          	add	a1,a3,a2
    8000a90a:	00075783          	lhu	a5,0(a4)
    8000a90e:	0105c503          	lbu	a0,16(a1)
quickjs-nuttx/quickjs.c:4102
        if (c != 0)
    8000a912:	0605                	addi	a2,a2,1
    8000a914:	0709                	addi	a4,a4,2
quickjs-nuttx/quickjs.c:4101
        c = src1[i] - src2[i];
    8000a916:	40a7853b          	subw	a0,a5,a0
quickjs-nuttx/quickjs.c:4102
        if (c != 0)
    8000a91a:	d165                	beqz	a0,8000a8fa <js_string_memcmp+0x4a>
js_string_memcmp():
quickjs-nuttx/quickjs.c:4135
}
    8000a91c:	8082                	ret
memcmp16():
quickjs-nuttx/quickjs.c:4112
        c = src1[i] - src2[i];
    8000a91e:	00c707b3          	add	a5,a4,a2
    8000a922:	00c68533          	add	a0,a3,a2
    8000a926:	0007d783          	lhu	a5,0(a5) # f000 <asinh-0x7fff1000>
    8000a92a:	00055503          	lhu	a0,0(a0)
quickjs-nuttx/quickjs.c:4113
        if (c != 0)
    8000a92e:	0609                	addi	a2,a2,2
quickjs-nuttx/quickjs.c:4112
        c = src1[i] - src2[i];
    8000a930:	40a7853b          	subw	a0,a5,a0
quickjs-nuttx/quickjs.c:4113
        if (c != 0)
    8000a934:	f565                	bnez	a0,8000a91c <js_string_memcmp+0x6c>
quickjs-nuttx/quickjs.c:4111
    for(i = 0; i < len; i++) {
    8000a936:	2585                	addiw	a1,a1,1
    8000a938:	feb813e3          	bne	a6,a1,8000a91e <js_string_memcmp+0x6e>
    8000a93c:	b7d9                	j	8000a902 <js_string_memcmp+0x52>
js_string_memcmp():
quickjs-nuttx/quickjs.c:4111
    8000a93e:	4641                	li	a2,16
memcmp16():
quickjs-nuttx/quickjs.c:4111
    8000a940:	4581                	li	a1,0
    8000a942:	bfdd                	j	8000a938 <js_string_memcmp+0x88>

000000008000a944 <js_string_compare.constprop.0>:
js_string_compare():
quickjs-nuttx/quickjs.c:4138
static int js_string_compare(JSContext *ctx,
    8000a944:	7179                	addi	sp,sp,-48
    8000a946:	ec26                	sd	s1,24(sp)
    8000a948:	e84a                	sd	s2,16(sp)
    8000a94a:	e44e                	sd	s3,8(sp)
    8000a94c:	f406                	sd	ra,40(sp)
    8000a94e:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:4142
    len = min_int(p1->len, p2->len);
    8000a950:	4140                	lw	s0,4(a0)
    8000a952:	0045a983          	lw	s3,4(a1)
    8000a956:	800007b7          	lui	a5,0x80000
    8000a95a:	fff7c793          	not	a5,a5
    8000a95e:	00f474b3          	and	s1,s0,a5
    8000a962:	00f9f7b3          	and	a5,s3,a5
    8000a966:	0007891b          	sext.w	s2,a5
    8000a96a:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:4143
    res = js_string_memcmp(p1, p2, len);
    8000a96c:	0009061b          	sext.w	a2,s2
    8000a970:	00994463          	blt	s2,s1,8000a978 <js_string_compare.constprop.0+0x34>
    8000a974:	0004861b          	sext.w	a2,s1
    8000a978:	f39ff0ef          	jal	ra,8000a8b0 <js_string_memcmp>
quickjs-nuttx/quickjs.c:4144
    if (res == 0) {
    8000a97c:	e909                	bnez	a0,8000a98e <js_string_compare.constprop.0+0x4a>
quickjs-nuttx/quickjs.c:4145
        if (p1->len == p2->len)
    8000a97e:	01344433          	xor	s0,s0,s3
    8000a982:	1406                	slli	s0,s0,0x21
    8000a984:	c409                	beqz	s0,8000a98e <js_string_compare.constprop.0+0x4a>
quickjs-nuttx/quickjs.c:4148
            res = -1;
    8000a986:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:4147
        else if (p1->len < p2->len)
    8000a988:	0124e363          	bltu	s1,s2,8000a98e <js_string_compare.constprop.0+0x4a>
quickjs-nuttx/quickjs.c:4150
            res = 1;
    8000a98c:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:4153
}
    8000a98e:	70a2                	ld	ra,40(sp)
    8000a990:	7402                	ld	s0,32(sp)
    8000a992:	64e2                	ld	s1,24(sp)
    8000a994:	6942                	ld	s2,16(sp)
    8000a996:	69a2                	ld	s3,8(sp)
    8000a998:	6145                	addi	sp,sp,48
    8000a99a:	8082                	ret

000000008000a99c <js_malloc_rt>:
js_malloc_rt():
quickjs-nuttx/quickjs.c:1313
    return rt->mf.js_malloc(&rt->malloc_state, size);
    8000a99c:	611c                	ld	a5,0(a0)
    8000a99e:	02050513          	addi	a0,a0,32
    8000a9a2:	8782                	jr	a5

000000008000a9a4 <js_alloc_string_rt>:
js_alloc_string_rt():
quickjs-nuttx/quickjs.c:1886
{
    8000a9a4:	1101                	addi	sp,sp,-32
    8000a9a6:	e822                	sd	s0,16(sp)
    8000a9a8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:1888
    str = js_malloc_rt(rt, sizeof(JSString) + (max_len << is_wide_char) + 1 - is_wide_char);
    8000a9aa:	00c595bb          	sllw	a1,a1,a2
    8000a9ae:	8d91                	sub	a1,a1,a2
    8000a9b0:	05c5                	addi	a1,a1,17
quickjs-nuttx/quickjs.c:1886
{
    8000a9b2:	e426                	sd	s1,8(sp)
    8000a9b4:	ec06                	sd	ra,24(sp)
    8000a9b6:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:1888
    str = js_malloc_rt(rt, sizeof(JSString) + (max_len << is_wide_char) + 1 - is_wide_char);
    8000a9b8:	fe5ff0ef          	jal	ra,8000a99c <js_malloc_rt>
quickjs-nuttx/quickjs.c:1889
    if (unlikely(!str))
    8000a9bc:	cd09                	beqz	a0,8000a9d6 <js_alloc_string_rt+0x32>
quickjs-nuttx/quickjs.c:1893
    str->len = max_len;
    8000a9be:	1406                	slli	s0,s0,0x21
    8000a9c0:	01f4949b          	slliw	s1,s1,0x1f
    8000a9c4:	9005                	srli	s0,s0,0x21
quickjs-nuttx/quickjs.c:1891
    str->header.ref_count = 1;
    8000a9c6:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:1893
    str->len = max_len;
    8000a9c8:	8c45                	or	s0,s0,s1
quickjs-nuttx/quickjs.c:1891
    str->header.ref_count = 1;
    8000a9ca:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:1893
    str->len = max_len;
    8000a9cc:	c140                	sw	s0,4(a0)
quickjs-nuttx/quickjs.c:1895
    str->hash = 0;          /* optional but costless */
    8000a9ce:	00052423          	sw	zero,8(a0)
quickjs-nuttx/quickjs.c:1896
    str->hash_next = 0;     /* optional */
    8000a9d2:	00052623          	sw	zero,12(a0)
quickjs-nuttx/quickjs.c:1901
}
    8000a9d6:	60e2                	ld	ra,24(sp)
    8000a9d8:	6442                	ld	s0,16(sp)
    8000a9da:	64a2                	ld	s1,8(sp)
    8000a9dc:	6105                	addi	sp,sp,32
    8000a9de:	8082                	ret

000000008000a9e0 <js_free_rt>:
js_free_rt():
quickjs-nuttx/quickjs.c:1318
    rt->mf.js_free(&rt->malloc_state, ptr);
    8000a9e0:	651c                	ld	a5,8(a0)
    8000a9e2:	02050513          	addi	a0,a0,32
    8000a9e6:	8782                	jr	a5

000000008000a9e8 <JS_FreeAtomStruct>:
JS_FreeAtomStruct():
quickjs-nuttx/quickjs.c:2892
{
    8000a9e8:	1141                	addi	sp,sp,-16
    8000a9ea:	e022                	sd	s0,0(sp)
    8000a9ec:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:2900
    if (p->atom_type != JS_ATOM_TYPE_SYMBOL) {
    8000a9ee:	459c                	lw	a5,8(a1)
    8000a9f0:	c0000737          	lui	a4,0xc0000
    8000a9f4:	c00006b7          	lui	a3,0xc0000
    8000a9f8:	8f7d                	and	a4,a4,a5
    8000a9fa:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:2892
{
    8000a9fc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:2900
    if (p->atom_type != JS_ATOM_TYPE_SYMBOL) {
    8000a9fe:	02d71e63          	bne	a4,a3,8000aa3a <JS_FreeAtomStruct+0x52>
quickjs-nuttx/quickjs.c:2899
    uint32_t i = p->hash_next;  /* atom_index */
    8000aa02:	45d8                	lw	a4,12(a1)
quickjs-nuttx/quickjs.c:2923
    rt->atom_array[i] = atom_set_free(rt->atom_free_index);
    8000aa04:	7034                	ld	a3,96(s0)
    8000aa06:	02071613          	slli	a2,a4,0x20
    8000aa0a:	01d65793          	srli	a5,a2,0x1d
    8000aa0e:	96be                	add	a3,a3,a5
atom_set_free():
quickjs-nuttx/quickjs.c:1881
    return (JSAtomStruct *)(((uintptr_t)v << 1) | 1);
    8000aa10:	06846783          	lwu	a5,104(s0)
JS_FreeAtomStruct():
quickjs-nuttx/quickjs.c:2929
    js_free_rt(rt, p);
    8000aa14:	8522                	mv	a0,s0
atom_set_free():
quickjs-nuttx/quickjs.c:1881
    return (JSAtomStruct *)(((uintptr_t)v << 1) | 1);
    8000aa16:	0786                	slli	a5,a5,0x1
    8000aa18:	0017e793          	ori	a5,a5,1
JS_FreeAtomStruct():
quickjs-nuttx/quickjs.c:2923
    rt->atom_array[i] = atom_set_free(rt->atom_free_index);
    8000aa1c:	e29c                	sd	a5,0(a3)
quickjs-nuttx/quickjs.c:2924
    rt->atom_free_index = i;
    8000aa1e:	d438                	sw	a4,104(s0)
quickjs-nuttx/quickjs.c:2929
    js_free_rt(rt, p);
    8000aa20:	fc1ff0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2930
    rt->atom_count--;
    8000aa24:	447c                	lw	a5,76(s0)
    8000aa26:	fff7871b          	addiw	a4,a5,-1
    8000aa2a:	c478                	sw	a4,76(s0)
quickjs-nuttx/quickjs.c:2931
    assert(rt->atom_count >= 0);
    8000aa2c:	06075463          	bgez	a4,8000aa94 <JS_FreeAtomStruct+0xac>
quickjs-nuttx/quickjs.c:2931 (discriminator 1)
    8000aa30:	6585                	lui	a1,0x1
    8000aa32:	4601                	li	a2,0
    8000aa34:	b7358593          	addi	a1,a1,-1165 # b73 <asinh-0x7ffff48d>
    8000aa38:	a825                	j	8000aa70 <JS_FreeAtomStruct+0x88>
quickjs-nuttx/quickjs.c:2904
        h0 = p->hash & (rt->atom_hash_size - 1);
    8000aa3a:	4538                	lw	a4,72(a0)
    8000aa3c:	178a                	slli	a5,a5,0x22
    8000aa3e:	9389                	srli	a5,a5,0x22
    8000aa40:	377d                	addiw	a4,a4,-1
quickjs-nuttx/quickjs.c:2905
        i = rt->atom_hash[h0];
    8000aa42:	8ff9                	and	a5,a5,a4
    8000aa44:	6d38                	ld	a4,88(a0)
    8000aa46:	078a                	slli	a5,a5,0x2
quickjs-nuttx/quickjs.c:2906
        p1 = rt->atom_array[i];
    8000aa48:	7130                	ld	a2,96(a0)
quickjs-nuttx/quickjs.c:2905
        i = rt->atom_hash[h0];
    8000aa4a:	97ba                	add	a5,a5,a4
    8000aa4c:	4398                	lw	a4,0(a5)
quickjs-nuttx/quickjs.c:2906
        p1 = rt->atom_array[i];
    8000aa4e:	02071513          	slli	a0,a4,0x20
    8000aa52:	01d55693          	srli	a3,a0,0x1d
    8000aa56:	96b2                	add	a3,a3,a2
    8000aa58:	6294                	ld	a3,0(a3)
quickjs-nuttx/quickjs.c:2907
        if (p1 == p) {
    8000aa5a:	00d59663          	bne	a1,a3,8000aa66 <JS_FreeAtomStruct+0x7e>
quickjs-nuttx/quickjs.c:2908
            rt->atom_hash[h0] = p1->hash_next;
    8000aa5e:	45d4                	lw	a3,12(a1)
    8000aa60:	c394                	sw	a3,0(a5)
    8000aa62:	b74d                	j	8000aa04 <JS_FreeAtomStruct+0x1c>
    8000aa64:	86be                	mv	a3,a5
quickjs-nuttx/quickjs.c:2911
                assert(i != 0);
    8000aa66:	eb19                	bnez	a4,8000aa7c <JS_FreeAtomStruct+0x94>
quickjs-nuttx/quickjs.c:2911 (discriminator 1)
    8000aa68:	6585                	lui	a1,0x1
    8000aa6a:	4601                	li	a2,0
    8000aa6c:	b5f58593          	addi	a1,a1,-1185 # b5f <asinh-0x7ffff4a1>
quickjs-nuttx/quickjs.c:2931 (discriminator 1)
    assert(rt->atom_count >= 0);
    8000aa70:	0005f517          	auipc	a0,0x5f
    8000aa74:	b2850513          	addi	a0,a0,-1240 # 80069598 <qjsc_repl+0x3fe8>
    8000aa78:	6e5550ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:2913 (discriminator 2)
                i = p1->hash_next;
    8000aa7c:	46d8                	lw	a4,12(a3)
quickjs-nuttx/quickjs.c:2914 (discriminator 2)
                p1 = rt->atom_array[i];
    8000aa7e:	02071513          	slli	a0,a4,0x20
    8000aa82:	01d55793          	srli	a5,a0,0x1d
    8000aa86:	97b2                	add	a5,a5,a2
    8000aa88:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:2915 (discriminator 2)
                if (p1 == p) {
    8000aa8a:	fcf59de3          	bne	a1,a5,8000aa64 <JS_FreeAtomStruct+0x7c>
quickjs-nuttx/quickjs.c:2916
                    p0->hash_next = p1->hash_next;
    8000aa8e:	45dc                	lw	a5,12(a1)
    8000aa90:	c6dc                	sw	a5,12(a3)
quickjs-nuttx/quickjs.c:2917
                    break;
    8000aa92:	bf8d                	j	8000aa04 <JS_FreeAtomStruct+0x1c>
quickjs-nuttx/quickjs.c:2932
}
    8000aa94:	60a2                	ld	ra,8(sp)
    8000aa96:	6402                	ld	s0,0(sp)
    8000aa98:	0141                	addi	sp,sp,16
    8000aa9a:	8082                	ret

000000008000aa9c <__JS_FreeAtom>:
__JS_FreeAtom():
quickjs-nuttx/quickjs.c:2938
    p = rt->atom_array[i];
    8000aa9c:	713c                	ld	a5,96(a0)
    8000aa9e:	02059713          	slli	a4,a1,0x20
    8000aaa2:	01d75593          	srli	a1,a4,0x1d
    8000aaa6:	97ae                	add	a5,a5,a1
    8000aaa8:	638c                	ld	a1,0(a5)
quickjs-nuttx/quickjs.c:2939
    if (--p->header.ref_count > 0)
    8000aaaa:	419c                	lw	a5,0(a1)
    8000aaac:	fff7871b          	addiw	a4,a5,-1
    8000aab0:	c198                	sw	a4,0(a1)
    8000aab2:	00e04363          	bgtz	a4,8000aab8 <__JS_FreeAtom+0x1c>
quickjs-nuttx/quickjs.c:2941
    JS_FreeAtomStruct(rt, p);
    8000aab6:	bf0d                	j	8000a9e8 <JS_FreeAtomStruct>
quickjs-nuttx/quickjs.c:2942
}
    8000aab8:	8082                	ret

000000008000aaba <js_free_string>:
js_free_string():
quickjs-nuttx/quickjs.c:1917
    if (--str->header.ref_count <= 0) {
    8000aaba:	4198                	lw	a4,0(a1)
    8000aabc:	fff7069b          	addiw	a3,a4,-1
    8000aac0:	c194                	sw	a3,0(a1)
    8000aac2:	00d04c63          	bgtz	a3,8000aada <js_free_string+0x20>
quickjs-nuttx/quickjs.c:1918
        if (str->atom_type) {
    8000aac6:	459c                	lw	a5,8(a1)
    8000aac8:	c0000737          	lui	a4,0xc0000
    8000aacc:	8ff9                	and	a5,a5,a4
    8000aace:	2781                	sext.w	a5,a5
    8000aad0:	c399                	beqz	a5,8000aad6 <js_free_string+0x1c>
quickjs-nuttx/quickjs.c:1919
            JS_FreeAtomStruct(rt, str);
    8000aad2:	f17ff06f          	j	8000a9e8 <JS_FreeAtomStruct>
quickjs-nuttx/quickjs.c:1924
            js_free_rt(rt, str);
    8000aad6:	f0bff06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:1927
}
    8000aada:	8082                	ret

000000008000aadc <map_decref_record>:
map_decref_record():
quickjs-nuttx/quickjs.c:47081
    if (--mr->ref_count == 0) {
    8000aadc:	419c                	lw	a5,0(a1)
    8000aade:	fff7871b          	addiw	a4,a5,-1
    8000aae2:	c198                	sw	a4,0(a1)
    8000aae4:	ef0d                	bnez	a4,8000ab1e <map_decref_record+0x42>
quickjs-nuttx/quickjs.c:47080
{
    8000aae6:	1101                	addi	sp,sp,-32
    8000aae8:	ec06                	sd	ra,24(sp)
    8000aaea:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:47083
        assert(mr->empty);
    8000aaec:	41dc                	lw	a5,4(a1)
    8000aaee:	eb99                	bnez	a5,8000ab04 <map_decref_record+0x28>
    8000aaf0:	65ad                	lui	a1,0xb
    8000aaf2:	4601                	li	a2,0
    8000aaf4:	7eb58593          	addi	a1,a1,2027 # b7eb <asinh-0x7fff4815>
    8000aaf8:	0005f517          	auipc	a0,0x5f
    8000aafc:	aa050513          	addi	a0,a0,-1376 # 80069598 <qjsc_repl+0x3fe8>
    8000ab00:	65d550ef          	jal	ra,8006095c <__assert>
    8000ab04:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:47084 (discriminator 2)
        list_del(&mr->link);
    8000ab06:	01858513          	addi	a0,a1,24
    8000ab0a:	e42e                	sd	a1,8(sp)
    8000ab0c:	838fd0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:47085 (discriminator 2)
        js_free_rt(rt, mr);
    8000ab10:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:47087 (discriminator 2)
}
    8000ab12:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:47085 (discriminator 2)
        js_free_rt(rt, mr);
    8000ab14:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:47087 (discriminator 2)
}
    8000ab16:	60e2                	ld	ra,24(sp)
    8000ab18:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:47085 (discriminator 2)
        js_free_rt(rt, mr);
    8000ab1a:	ec7ff06f          	j	8000a9e0 <js_free_rt>
    8000ab1e:	8082                	ret

000000008000ab20 <js_array_buffer_finalizer>:
js_array_buffer_finalizer():
quickjs-nuttx/quickjs.c:52697
{
    8000ab20:	7179                	addi	sp,sp,-48
    8000ab22:	f406                	sd	ra,40(sp)
    8000ab24:	f022                	sd	s0,32(sp)
    8000ab26:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:52699
    JSArrayBuffer *abuf = p->u.array_buffer;
    8000ab28:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:52697
{
    8000ab2a:	e02e                	sd	a1,0(sp)
    8000ab2c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52702
    if (abuf) {
    8000ab2e:	c03d                	beqz	s0,8000ab94 <js_array_buffer_finalizer+0x74>
quickjs-nuttx/quickjs.c:52706
        list_for_each_safe(el, el1, &abuf->array_list) {
    8000ab30:	6c1c                	ld	a5,24(s0)
    8000ab32:	84aa                	mv	s1,a0
    8000ab34:	01040693          	addi	a3,s0,16
    8000ab38:	6798                	ld	a4,8(a5)
quickjs-nuttx/quickjs.c:52715
            if (p1->class_id != JS_CLASS_DATAVIEW) {
    8000ab3a:	02000613          	li	a2,32
quickjs-nuttx/quickjs.c:52706 (discriminator 1)
        list_for_each_safe(el, el1, &abuf->array_list) {
    8000ab3e:	02d79463          	bne	a5,a3,8000ab66 <js_array_buffer_finalizer+0x46>
quickjs-nuttx/quickjs.c:52720
        if (abuf->shared && rt->sab_funcs.sab_free) {
    8000ab42:	00544783          	lbu	a5,5(s0)
    8000ab46:	c3a1                	beqz	a5,8000ab86 <js_array_buffer_finalizer+0x66>
quickjs-nuttx/quickjs.c:52720 (discriminator 1)
    8000ab48:	1604b783          	ld	a5,352(s1)
    8000ab4c:	cf8d                	beqz	a5,8000ab86 <js_array_buffer_finalizer+0x66>
quickjs-nuttx/quickjs.c:52721
            rt->sab_funcs.sab_free(rt->sab_funcs.sab_opaque, abuf->data);
    8000ab4e:	640c                	ld	a1,8(s0)
    8000ab50:	1704b503          	ld	a0,368(s1)
    8000ab54:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:52726
        js_free_rt(rt, abuf);
    8000ab56:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:52728
}
    8000ab58:	7402                	ld	s0,32(sp)
    8000ab5a:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:52726
        js_free_rt(rt, abuf);
    8000ab5c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:52728
}
    8000ab5e:	64e2                	ld	s1,24(sp)
    8000ab60:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:52726
        js_free_rt(rt, abuf);
    8000ab62:	e7fff06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:52711
            ta->link.prev = NULL;
    8000ab66:	0007b023          	sd	zero,0(a5) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:52712
            ta->link.next = NULL;
    8000ab6a:	0007b423          	sd	zero,8(a5)
quickjs-nuttx/quickjs.c:52713
            p1 = ta->obj;
    8000ab6e:	6b9c                	ld	a5,16(a5)
quickjs-nuttx/quickjs.c:52715
            if (p1->class_id != JS_CLASS_DATAVIEW) {
    8000ab70:	0067d583          	lhu	a1,6(a5)
    8000ab74:	00c58663          	beq	a1,a2,8000ab80 <js_array_buffer_finalizer+0x60>
quickjs-nuttx/quickjs.c:52716
                p1->u.array.count = 0;
    8000ab78:	0407a023          	sw	zero,64(a5)
quickjs-nuttx/quickjs.c:52717
                p1->u.array.u.ptr = NULL;
    8000ab7c:	0207bc23          	sd	zero,56(a5)
quickjs-nuttx/quickjs.c:52706 (discriminator 2)
        list_for_each_safe(el, el1, &abuf->array_list) {
    8000ab80:	87ba                	mv	a5,a4
    8000ab82:	6718                	ld	a4,8(a4)
    8000ab84:	bf6d                	j	8000ab3e <js_array_buffer_finalizer+0x1e>
quickjs-nuttx/quickjs.c:52723
            if (abuf->free_func)
    8000ab86:	741c                	ld	a5,40(s0)
    8000ab88:	d7f9                	beqz	a5,8000ab56 <js_array_buffer_finalizer+0x36>
quickjs-nuttx/quickjs.c:52724
                abuf->free_func(rt, abuf->opaque, abuf->data);
    8000ab8a:	6410                	ld	a2,8(s0)
    8000ab8c:	700c                	ld	a1,32(s0)
    8000ab8e:	8526                	mv	a0,s1
    8000ab90:	9782                	jalr	a5
    8000ab92:	b7d1                	j	8000ab56 <js_array_buffer_finalizer+0x36>
quickjs-nuttx/quickjs.c:52728
}
    8000ab94:	70a2                	ld	ra,40(sp)
    8000ab96:	7402                	ld	s0,32(sp)
    8000ab98:	64e2                	ld	s1,24(sp)
    8000ab9a:	6145                	addi	sp,sp,48
    8000ab9c:	8082                	ret

000000008000ab9e <js_array_buffer_free>:
js_array_buffer_free():
quickjs-nuttx/quickjs.c:52635
    js_free_rt(rt, ptr);
    8000ab9e:	85b2                	mv	a1,a2
    8000aba0:	e41ff06f          	j	8000a9e0 <js_free_rt>

000000008000aba4 <js_malloc_usable_size_rt>:
js_malloc_usable_size_rt():
quickjs-nuttx/quickjs.c:1328
    return rt->mf.js_malloc_usable_size(ptr);
    8000aba4:	6d1c                	ld	a5,24(a0)
    8000aba6:	852e                	mv	a0,a1
    8000aba8:	8782                	jr	a5

000000008000abaa <js_mallocz_rt>:
js_mallocz_rt():
quickjs-nuttx/quickjs.c:1332
{
    8000abaa:	1101                	addi	sp,sp,-32
    8000abac:	ec06                	sd	ra,24(sp)
    8000abae:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:1334
    ptr = js_malloc_rt(rt, size);
    8000abb0:	dedff0ef          	jal	ra,8000a99c <js_malloc_rt>
quickjs-nuttx/quickjs.c:1335
    if (!ptr)
    8000abb4:	c519                	beqz	a0,8000abc2 <js_mallocz_rt+0x18>
quickjs-nuttx/quickjs.c:1337
    return memset(ptr, 0, size);
    8000abb6:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:1338
}
    8000abb8:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:1337
    return memset(ptr, 0, size);
    8000abba:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:1338
}
    8000abbc:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:1337
    return memset(ptr, 0, size);
    8000abbe:	0845906f          	j	80063c42 <memset>
quickjs-nuttx/quickjs.c:1338
}
    8000abc2:	60e2                	ld	ra,24(sp)
    8000abc4:	6105                	addi	sp,sp,32
    8000abc6:	8082                	ret

000000008000abc8 <JS_ResizeAtomHash>:
JS_ResizeAtomHash():
quickjs-nuttx/quickjs.c:2563
{
    8000abc8:	7179                	addi	sp,sp,-48
    8000abca:	e052                	sd	s4,0(sp)
quickjs-nuttx/quickjs.c:2567
    assert((new_hash_size & (new_hash_size - 1)) == 0); /* power of two */
    8000abcc:	fff58a1b          	addiw	s4,a1,-1
quickjs-nuttx/quickjs.c:2563
{
    8000abd0:	e44e                	sd	s3,8(sp)
    8000abd2:	f406                	sd	ra,40(sp)
    8000abd4:	f022                	sd	s0,32(sp)
    8000abd6:	ec26                	sd	s1,24(sp)
    8000abd8:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:2567
    assert((new_hash_size & (new_hash_size - 1)) == 0); /* power of two */
    8000abda:	00ba79b3          	and	s3,s4,a1
    8000abde:	00098c63          	beqz	s3,8000abf6 <JS_ResizeAtomHash+0x2e>
quickjs-nuttx/quickjs.c:2567 (discriminator 1)
    8000abe2:	6585                	lui	a1,0x1
    8000abe4:	4601                	li	a2,0
    8000abe6:	a0758593          	addi	a1,a1,-1529 # a07 <asinh-0x7ffff5f9>
    8000abea:	0005f517          	auipc	a0,0x5f
    8000abee:	9ae50513          	addi	a0,a0,-1618 # 80069598 <qjsc_repl+0x3fe8>
    8000abf2:	56b550ef          	jal	ra,8006095c <__assert>
    8000abf6:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:2569 (discriminator 2)
    new_hash = js_mallocz_rt(rt, sizeof(rt->atom_hash[0]) * new_hash_size);
    8000abf8:	058a                	slli	a1,a1,0x2
    8000abfa:	842a                	mv	s0,a0
    8000abfc:	fafff0ef          	jal	ra,8000abaa <js_mallocz_rt>
    8000ac00:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:2570 (discriminator 2)
    if (!new_hash)
    8000ac02:	cd25                	beqz	a0,8000ac7a <JS_ResizeAtomHash+0xb2>
quickjs-nuttx/quickjs.c:2578
            j = p->hash & new_hash_mask;
    8000ac04:	40000637          	lui	a2,0x40000
quickjs-nuttx/quickjs.c:2572
    for(i = 0; i < rt->atom_hash_size; i++) {
    8000ac08:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:2578
            j = p->hash & new_hash_mask;
    8000ac0a:	167d                	addi	a2,a2,-1
quickjs-nuttx/quickjs.c:2572 (discriminator 1)
    for(i = 0; i < rt->atom_hash_size; i++) {
    8000ac0c:	443c                	lw	a5,72(s0)
quickjs-nuttx/quickjs.c:2573 (discriminator 1)
        h = rt->atom_hash[i];
    8000ac0e:	6c2c                	ld	a1,88(s0)
quickjs-nuttx/quickjs.c:2572 (discriminator 1)
    for(i = 0; i < rt->atom_hash_size; i++) {
    8000ac10:	02f76463          	bltu	a4,a5,8000ac38 <JS_ResizeAtomHash+0x70>
quickjs-nuttx/quickjs.c:2584
    js_free_rt(rt, rt->atom_hash);
    8000ac14:	8522                	mv	a0,s0
    8000ac16:	dcbff0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2586
    rt->atom_hash_size = new_hash_size;
    8000ac1a:	c424                	sw	s1,72(s0)
quickjs-nuttx/quickjs.c:2587
    rt->atom_count_resize = JS_ATOM_COUNT_RESIZE(new_hash_size);
    8000ac1c:	0014949b          	slliw	s1,s1,0x1
quickjs-nuttx/quickjs.c:2585
    rt->atom_hash = new_hash;
    8000ac20:	05243c23          	sd	s2,88(s0)
quickjs-nuttx/quickjs.c:2587
    rt->atom_count_resize = JS_ATOM_COUNT_RESIZE(new_hash_size);
    8000ac24:	c864                	sw	s1,84(s0)
quickjs-nuttx/quickjs.c:2590
}
    8000ac26:	70a2                	ld	ra,40(sp)
    8000ac28:	7402                	ld	s0,32(sp)
    8000ac2a:	64e2                	ld	s1,24(sp)
    8000ac2c:	6942                	ld	s2,16(sp)
    8000ac2e:	6a02                	ld	s4,0(sp)
    8000ac30:	854e                	mv	a0,s3
    8000ac32:	69a2                	ld	s3,8(sp)
    8000ac34:	6145                	addi	sp,sp,48
    8000ac36:	8082                	ret
quickjs-nuttx/quickjs.c:2573
        h = rt->atom_hash[i];
    8000ac38:	02071693          	slli	a3,a4,0x20
    8000ac3c:	01e6d793          	srli	a5,a3,0x1e
    8000ac40:	95be                	add	a1,a1,a5
    8000ac42:	4194                	lw	a3,0(a1)
quickjs-nuttx/quickjs.c:2574
        while (h != 0) {
    8000ac44:	e299                	bnez	a3,8000ac4a <JS_ResizeAtomHash+0x82>
quickjs-nuttx/quickjs.c:2572 (discriminator 2)
    for(i = 0; i < rt->atom_hash_size; i++) {
    8000ac46:	2705                	addiw	a4,a4,1
    8000ac48:	b7d1                	j	8000ac0c <JS_ResizeAtomHash+0x44>
quickjs-nuttx/quickjs.c:2575
            p = rt->atom_array[h];
    8000ac4a:	703c                	ld	a5,96(s0)
    8000ac4c:	02069513          	slli	a0,a3,0x20
    8000ac50:	01d55593          	srli	a1,a0,0x1d
    8000ac54:	97ae                	add	a5,a5,a1
    8000ac56:	638c                	ld	a1,0(a5)
quickjs-nuttx/quickjs.c:2578
            j = p->hash & new_hash_mask;
    8000ac58:	459c                	lw	a5,8(a1)
quickjs-nuttx/quickjs.c:2576
            hash_next1 = p->hash_next;
    8000ac5a:	45c8                	lw	a0,12(a1)
quickjs-nuttx/quickjs.c:2578
            j = p->hash & new_hash_mask;
    8000ac5c:	8ff1                	and	a5,a5,a2
    8000ac5e:	0147f7b3          	and	a5,a5,s4
quickjs-nuttx/quickjs.c:2579
            p->hash_next = new_hash[j];
    8000ac62:	02079813          	slli	a6,a5,0x20
    8000ac66:	01e85793          	srli	a5,a6,0x1e
    8000ac6a:	97ca                	add	a5,a5,s2
    8000ac6c:	0007a803          	lw	a6,0(a5)
    8000ac70:	0105a623          	sw	a6,12(a1)
quickjs-nuttx/quickjs.c:2580
            new_hash[j] = h;
    8000ac74:	c394                	sw	a3,0(a5)
quickjs-nuttx/quickjs.c:2581
            h = hash_next1;
    8000ac76:	86aa                	mv	a3,a0
    8000ac78:	b7f1                	j	8000ac44 <JS_ResizeAtomHash+0x7c>
quickjs-nuttx/quickjs.c:2571
        return -1;
    8000ac7a:	59fd                	li	s3,-1
    8000ac7c:	b76d                	j	8000ac26 <JS_ResizeAtomHash+0x5e>

000000008000ac7e <__JS_NewAtom>:
__JS_NewAtom():
quickjs-nuttx/quickjs.c:2698
{
    8000ac7e:	711d                	addi	sp,sp,-96
    8000ac80:	e8a2                	sd	s0,80(sp)
    8000ac82:	e4a6                	sd	s1,72(sp)
    8000ac84:	fc4e                	sd	s3,56(sp)
    8000ac86:	ec86                	sd	ra,88(sp)
    8000ac88:	e0ca                	sd	s2,64(sp)
    8000ac8a:	f852                	sd	s4,48(sp)
    8000ac8c:	f456                	sd	s5,40(sp)
    8000ac8e:	f05a                	sd	s6,32(sp)
    8000ac90:	ec5e                	sd	s7,24(sp)
    8000ac92:	e862                	sd	s8,16(sp)
    8000ac94:	e466                	sd	s9,8(sp)
    8000ac96:	e06a                	sd	s10,0(sp)
quickjs-nuttx/quickjs.c:2706
    if (atom_type < JS_ATOM_TYPE_SYMBOL) {
    8000ac98:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:2698
{
    8000ac9a:	842a                	mv	s0,a0
    8000ac9c:	84ae                	mv	s1,a1
    8000ac9e:	89b2                	mv	s3,a2
quickjs-nuttx/quickjs.c:2706
    if (atom_type < JS_ATOM_TYPE_SYMBOL) {
    8000aca0:	10c7c263          	blt	a5,a2,8000ada4 <__JS_NewAtom+0x126>
quickjs-nuttx/quickjs.c:2708
        if (str->atom_type == atom_type) {
    8000aca4:	459c                	lw	a5,8(a1)
    8000aca6:	01e7d79b          	srliw	a5,a5,0x1e
    8000acaa:	02c79c63          	bne	a5,a2,8000ace2 <__JS_NewAtom+0x64>
quickjs-nuttx/quickjs.c:2710
            i = js_get_atom_index(rt, str);
    8000acae:	9e1fe0ef          	jal	ra,8000968e <js_get_atom_index>
    8000acb2:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:2712
            if (__JS_AtomIsConst(i))
    8000acb6:	0e200793          	li	a5,226
    8000acba:	0147c563          	blt	a5,s4,8000acc4 <__JS_NewAtom+0x46>
quickjs-nuttx/quickjs.c:2713
                str->header.ref_count--;
    8000acbe:	409c                	lw	a5,0(s1)
    8000acc0:	37fd                	addiw	a5,a5,-1
    8000acc2:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:2850
}
    8000acc4:	60e6                	ld	ra,88(sp)
    8000acc6:	6446                	ld	s0,80(sp)
    8000acc8:	64a6                	ld	s1,72(sp)
    8000acca:	6906                	ld	s2,64(sp)
    8000accc:	79e2                	ld	s3,56(sp)
    8000acce:	7aa2                	ld	s5,40(sp)
    8000acd0:	7b02                	ld	s6,32(sp)
    8000acd2:	6be2                	ld	s7,24(sp)
    8000acd4:	6c42                	ld	s8,16(sp)
    8000acd6:	6ca2                	ld	s9,8(sp)
    8000acd8:	6d02                	ld	s10,0(sp)
    8000acda:	8552                	mv	a0,s4
    8000acdc:	7a42                	ld	s4,48(sp)
    8000acde:	6125                	addi	sp,sp,96
    8000ace0:	8082                	ret
quickjs-nuttx/quickjs.c:2717
        len = str->len;
    8000ace2:	0045a903          	lw	s2,4(a1)
quickjs-nuttx/quickjs.c:2718
        h = hash_string(str, atom_type);
    8000ace6:	8526                	mv	a0,s1
    8000ace8:	85b2                	mv	a1,a2
    8000acea:	8f7ff0ef          	jal	ra,8000a5e0 <hash_string>
quickjs-nuttx/quickjs.c:2720
        h1 = h & (rt->atom_hash_size - 1);
    8000acee:	443c                	lw	a5,72(s0)
quickjs-nuttx/quickjs.c:2719
        h &= JS_ATOM_HASH_MASK;
    8000acf0:	40000d37          	lui	s10,0x40000
quickjs-nuttx/quickjs.c:2718
        h = hash_string(str, atom_type);
    8000acf4:	00050a9b          	sext.w	s5,a0
quickjs-nuttx/quickjs.c:2719
        h &= JS_ATOM_HASH_MASK;
    8000acf8:	1d7d                	addi	s10,s10,-1
    8000acfa:	01aafab3          	and	s5,s5,s10
quickjs-nuttx/quickjs.c:2720
        h1 = h & (rt->atom_hash_size - 1);
    8000acfe:	37fd                	addiw	a5,a5,-1
    8000ad00:	00faf7b3          	and	a5,s5,a5
quickjs-nuttx/quickjs.c:2721
        i = rt->atom_hash[h1];
    8000ad04:	6c38                	ld	a4,88(s0)
    8000ad06:	02079693          	slli	a3,a5,0x20
quickjs-nuttx/quickjs.c:2720
        h1 = h & (rt->atom_hash_size - 1);
    8000ad0a:	00078b1b          	sext.w	s6,a5
quickjs-nuttx/quickjs.c:2721
        i = rt->atom_hash[h1];
    8000ad0e:	01e6d793          	srli	a5,a3,0x1e
quickjs-nuttx/quickjs.c:2717
        len = str->len;
    8000ad12:	80000cb7          	lui	s9,0x80000
quickjs-nuttx/quickjs.c:2721
        i = rt->atom_hash[h1];
    8000ad16:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:2717
        len = str->len;
    8000ad18:	fffccc93          	not	s9,s9
quickjs-nuttx/quickjs.c:2721
        i = rt->atom_hash[h1];
    8000ad1c:	0007aa03          	lw	s4,0(a5)
quickjs-nuttx/quickjs.c:2717
        len = str->len;
    8000ad20:	012cfbb3          	and	s7,s9,s2
    8000ad24:	895e                	mv	s2,s7
quickjs-nuttx/quickjs.c:2722
        while (i != 0) {
    8000ad26:	000a1f63          	bnez	s4,8000ad44 <__JS_NewAtom+0xc6>
quickjs-nuttx/quickjs.c:2744
    if (rt->atom_free_index == 0) {
    8000ad2a:	543c                	lw	a5,104(s0)
    8000ad2c:	c3d9                	beqz	a5,8000adb2 <__JS_NewAtom+0x134>
quickjs-nuttx/quickjs.c:2791
    if (str) {
    8000ad2e:	12049163          	bnez	s1,8000ae50 <__JS_NewAtom+0x1d2>
quickjs-nuttx/quickjs.c:2812
        p = js_malloc_rt(rt, sizeof(JSAtomStruct)); /* empty wide string */
    8000ad32:	45c1                	li	a1,16
    8000ad34:	8522                	mv	a0,s0
    8000ad36:	c67ff0ef          	jal	ra,8000a99c <js_malloc_rt>
    8000ad3a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:2813
        if (!p)
    8000ad3c:	20051963          	bnez	a0,8000af4e <__JS_NewAtom+0x2d0>
quickjs-nuttx/quickjs.c:2814
            return JS_ATOM_NULL;
    8000ad40:	4a01                	li	s4,0
    8000ad42:	b749                	j	8000acc4 <__JS_NewAtom+0x46>
quickjs-nuttx/quickjs.c:2723
            p = rt->atom_array[i];
    8000ad44:	703c                	ld	a5,96(s0)
    8000ad46:	020a1693          	slli	a3,s4,0x20
    8000ad4a:	01d6d713          	srli	a4,a3,0x1d
    8000ad4e:	97ba                	add	a5,a5,a4
    8000ad50:	0007bc03          	ld	s8,0(a5)
quickjs-nuttx/quickjs.c:2724
            if (p->hash == h &&
    8000ad54:	008c2783          	lw	a5,8(s8) # 40000008 <asinh-0x3ffffff8>
    8000ad58:	00fd7733          	and	a4,s10,a5
    8000ad5c:	2701                	sext.w	a4,a4
    8000ad5e:	05571063          	bne	a4,s5,8000ad9e <__JS_NewAtom+0x120>
quickjs-nuttx/quickjs.c:2724 (discriminator 1)
    8000ad62:	01e7d79b          	srliw	a5,a5,0x1e
    8000ad66:	03379c63          	bne	a5,s3,8000ad9e <__JS_NewAtom+0x120>
quickjs-nuttx/quickjs.c:2726
                p->len == len &&
    8000ad6a:	004c2783          	lw	a5,4(s8)
quickjs-nuttx/quickjs.c:2725
                p->atom_type == atom_type &&
    8000ad6e:	00fcf7b3          	and	a5,s9,a5
    8000ad72:	02fb9663          	bne	s7,a5,8000ad9e <__JS_NewAtom+0x120>
quickjs-nuttx/quickjs.c:2727
                js_string_memcmp(p, str, len) == 0) {
    8000ad76:	864a                	mv	a2,s2
    8000ad78:	85a6                	mv	a1,s1
    8000ad7a:	8562                	mv	a0,s8
    8000ad7c:	b35ff0ef          	jal	ra,8000a8b0 <js_string_memcmp>
quickjs-nuttx/quickjs.c:2726
                p->len == len &&
    8000ad80:	ed19                	bnez	a0,8000ad9e <__JS_NewAtom+0x120>
quickjs-nuttx/quickjs.c:2728
                if (!__JS_AtomIsConst(i))
    8000ad82:	0e200793          	li	a5,226
    8000ad86:	0147d763          	bge	a5,s4,8000ad94 <__JS_NewAtom+0x116>
quickjs-nuttx/quickjs.c:2729
                    p->header.ref_count++;
    8000ad8a:	000c2783          	lw	a5,0(s8)
    8000ad8e:	2785                	addiw	a5,a5,1
    8000ad90:	00fc2023          	sw	a5,0(s8)
quickjs-nuttx/quickjs.c:2848
        js_free_string(rt, str);
    8000ad94:	85a6                	mv	a1,s1
    8000ad96:	8522                	mv	a0,s0
    8000ad98:	d23ff0ef          	jal	ra,8000aaba <js_free_string>
    8000ad9c:	b725                	j	8000acc4 <__JS_NewAtom+0x46>
quickjs-nuttx/quickjs.c:2732
            i = p->hash_next;
    8000ad9e:	00cc2a03          	lw	s4,12(s8)
    8000ada2:	b751                	j	8000ad26 <__JS_NewAtom+0xa8>
quickjs-nuttx/quickjs.c:2736
        if (atom_type == JS_ATOM_TYPE_SYMBOL) {
    8000ada4:	ffd60993          	addi	s3,a2,-3 # 3ffffffd <asinh-0x40000003>
quickjs-nuttx/quickjs.c:2719
        h &= JS_ATOM_HASH_MASK;
    8000ada8:	01303ab3          	snez	s5,s3
quickjs-nuttx/quickjs.c:2735
        h1 = 0; /* avoid warning */
    8000adac:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:2740
            atom_type = JS_ATOM_TYPE_SYMBOL;
    8000adae:	498d                	li	s3,3
    8000adb0:	bfad                	j	8000ad2a <__JS_NewAtom+0xac>
quickjs-nuttx/quickjs.c:2753
        new_size = max_int(211, rt->atom_size * 3 / 2);
    8000adb2:	4838                	lw	a4,80(s0)
    8000adb4:	478d                	li	a5,3
max_int():
quickjs-nuttx/cutils.h:72
        return a;
    8000adb6:	0d300b93          	li	s7,211
__JS_NewAtom():
quickjs-nuttx/quickjs.c:2753
    8000adba:	02e786bb          	mulw	a3,a5,a4
max_int():
quickjs-nuttx/cutils.h:71
    if (a > b)
    8000adbe:	1a500713          	li	a4,421
    8000adc2:	00d75463          	bge	a4,a3,8000adca <__JS_NewAtom+0x14c>
__JS_NewAtom():
quickjs-nuttx/quickjs.c:2753
    8000adc6:	4016db9b          	sraiw	s7,a3,0x1
quickjs-nuttx/quickjs.c:2757
        new_array = js_realloc_rt(rt, rt->atom_array, sizeof(*new_array) * new_size);
    8000adca:	702c                	ld	a1,96(s0)
    8000adcc:	003b9613          	slli	a2,s7,0x3
    8000add0:	8522                	mv	a0,s0
    8000add2:	d89fc0ef          	jal	ra,80007b5a <js_realloc_rt>
quickjs-nuttx/quickjs.c:2753
        new_size = max_int(211, rt->atom_size * 3 / 2);
    8000add6:	000b891b          	sext.w	s2,s7
quickjs-nuttx/quickjs.c:2757
        new_array = js_realloc_rt(rt, rt->atom_array, sizeof(*new_array) * new_size);
    8000adda:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:2758
        if (!new_array)
    8000addc:	cd01                	beqz	a0,8000adf4 <__JS_NewAtom+0x176>
quickjs-nuttx/quickjs.c:2761
        start = rt->atom_size;
    8000adde:	483c                	lw	a5,80(s0)
quickjs-nuttx/quickjs.c:2762
        if (start == 0) {
    8000ade0:	eb8d                	bnez	a5,8000ae12 <__JS_NewAtom+0x194>
quickjs-nuttx/quickjs.c:2764
            p = js_mallocz_rt(rt, sizeof(JSAtomStruct));
    8000ade2:	45c1                	li	a1,16
    8000ade4:	8522                	mv	a0,s0
    8000ade6:	dc5ff0ef          	jal	ra,8000abaa <js_mallocz_rt>
quickjs-nuttx/quickjs.c:2765
            if (!p) {
    8000adea:	e519                	bnez	a0,8000adf8 <__JS_NewAtom+0x17a>
quickjs-nuttx/quickjs.c:2766
                js_free_rt(rt, new_array);
    8000adec:	85d2                	mv	a1,s4
    8000adee:	8522                	mv	a0,s0
    8000adf0:	bf1ff0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2847
    if (str)
    8000adf4:	d4b1                	beqz	s1,8000ad40 <__JS_NewAtom+0xc2>
    8000adf6:	a209                	j	8000aef8 <__JS_NewAtom+0x27a>
quickjs-nuttx/quickjs.c:2769
            p->header.ref_count = 1;  /* not refcounted */
    8000adf8:	4785                	li	a5,1
    8000adfa:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:2770
            p->atom_type = JS_ATOM_TYPE_SYMBOL;
    8000adfc:	451c                	lw	a5,8(a0)
    8000adfe:	c0000737          	lui	a4,0xc0000
    8000ae02:	8fd9                	or	a5,a5,a4
    8000ae04:	c51c                	sw	a5,8(a0)
quickjs-nuttx/quickjs.c:2774
            new_array[0] = p;
    8000ae06:	00aa3023          	sd	a0,0(s4)
quickjs-nuttx/quickjs.c:2775
            rt->atom_count++;
    8000ae0a:	447c                	lw	a5,76(s0)
    8000ae0c:	2785                	addiw	a5,a5,1
    8000ae0e:	c47c                	sw	a5,76(s0)
quickjs-nuttx/quickjs.c:2776
            start = 1;
    8000ae10:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:2778
        rt->atom_size = new_size;
    8000ae12:	02079713          	slli	a4,a5,0x20
    8000ae16:	05742823          	sw	s7,80(s0)
quickjs-nuttx/quickjs.c:2779
        rt->atom_array = new_array;
    8000ae1a:	07443023          	sd	s4,96(s0)
quickjs-nuttx/quickjs.c:2780
        rt->atom_free_index = start;
    8000ae1e:	d43c                	sw	a5,104(s0)
quickjs-nuttx/quickjs.c:2781
        for(i = start; i < new_size; i++) {
    8000ae20:	01d75693          	srli	a3,a4,0x1d
quickjs-nuttx/quickjs.c:2783
            if (i == (new_size - 1))
    8000ae24:	fff9059b          	addiw	a1,s2,-1
quickjs-nuttx/quickjs.c:2781 (discriminator 1)
        for(i = start; i < new_size; i++) {
    8000ae28:	f127f3e3          	bgeu	a5,s2,8000ad2e <__JS_NewAtom+0xb0>
quickjs-nuttx/quickjs.c:2786
                next = i + 1;
    8000ae2c:	0017861b          	addiw	a2,a5,1
quickjs-nuttx/quickjs.c:2784
                next = 0;
    8000ae30:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:2783
            if (i == (new_size - 1))
    8000ae32:	00f58363          	beq	a1,a5,8000ae38 <__JS_NewAtom+0x1ba>
quickjs-nuttx/quickjs.c:2786
                next = i + 1;
    8000ae36:	8732                	mv	a4,a2
quickjs-nuttx/quickjs.c:2787 (discriminator 2)
            rt->atom_array[i] = atom_set_free(next);
    8000ae38:	703c                	ld	a5,96(s0)
atom_set_free():
quickjs-nuttx/quickjs.c:1881 (discriminator 2)
    return (JSAtomStruct *)(((uintptr_t)v << 1) | 1);
    8000ae3a:	02071513          	slli	a0,a4,0x20
    8000ae3e:	01f55713          	srli	a4,a0,0x1f
__JS_NewAtom():
quickjs-nuttx/quickjs.c:2787 (discriminator 2)
            rt->atom_array[i] = atom_set_free(next);
    8000ae42:	97b6                	add	a5,a5,a3
atom_set_free():
quickjs-nuttx/quickjs.c:1881 (discriminator 2)
    return (JSAtomStruct *)(((uintptr_t)v << 1) | 1);
    8000ae44:	00176713          	ori	a4,a4,1
__JS_NewAtom():
quickjs-nuttx/quickjs.c:2787 (discriminator 2)
            rt->atom_array[i] = atom_set_free(next);
    8000ae48:	e398                	sd	a4,0(a5)
quickjs-nuttx/quickjs.c:2781 (discriminator 2)
        for(i = start; i < new_size; i++) {
    8000ae4a:	06a1                	addi	a3,a3,8
    8000ae4c:	87b2                	mv	a5,a2
    8000ae4e:	bfe9                	j	8000ae28 <__JS_NewAtom+0x1aa>
quickjs-nuttx/quickjs.c:2792
        if (str->atom_type == 0) {
    8000ae50:	449c                	lw	a5,8(s1)
    8000ae52:	c0000737          	lui	a4,0xc0000
    8000ae56:	8f7d                	and	a4,a4,a5
    8000ae58:	2701                	sext.w	a4,a4
    8000ae5a:	ef2d                	bnez	a4,8000aed4 <__JS_NewAtom+0x256>
quickjs-nuttx/quickjs.c:2794
            p->atom_type = atom_type;
    8000ae5c:	02279713          	slli	a4,a5,0x22
    8000ae60:	01e9969b          	slliw	a3,s3,0x1e
    8000ae64:	9309                	srli	a4,a4,0x22
    8000ae66:	87b6                	mv	a5,a3
    8000ae68:	8fd9                	or	a5,a5,a4
    8000ae6a:	c49c                	sw	a5,8(s1)
    8000ae6c:	8926                	mv	s2,s1
quickjs-nuttx/quickjs.c:2824
    i = rt->atom_free_index;
    8000ae6e:	06842a03          	lw	s4,104(s0)
quickjs-nuttx/quickjs.c:2828
    p->hash = h;
    8000ae72:	01e9951b          	slliw	a0,s3,0x1e
    8000ae76:	00aaeab3          	or	s5,s5,a0
quickjs-nuttx/quickjs.c:2825
    rt->atom_free_index = atom_get_free(rt->atom_array[i]);
    8000ae7a:	020a1793          	slli	a5,s4,0x20
    8000ae7e:	01d7d713          	srli	a4,a5,0x1d
    8000ae82:	703c                	ld	a5,96(s0)
    8000ae84:	97ba                	add	a5,a5,a4
atom_get_free():
quickjs-nuttx/quickjs.c:1871
    return (uintptr_t)p >> 1;
    8000ae86:	6398                	ld	a4,0(a5)
    8000ae88:	8305                	srli	a4,a4,0x1
__JS_NewAtom():
quickjs-nuttx/quickjs.c:2825
    rt->atom_free_index = atom_get_free(rt->atom_array[i]);
    8000ae8a:	d438                	sw	a4,104(s0)
quickjs-nuttx/quickjs.c:2826
    rt->atom_array[i] = p;
    8000ae8c:	0127b023          	sd	s2,0(a5)
quickjs-nuttx/quickjs.c:2829
    p->hash_next = i;   /* atom_index */
    8000ae90:	01492623          	sw	s4,12(s2)
quickjs-nuttx/quickjs.c:2828
    p->hash = h;
    8000ae94:	01592423          	sw	s5,8(s2)
quickjs-nuttx/quickjs.c:2832
    rt->atom_count++;
    8000ae98:	447c                	lw	a5,76(s0)
    8000ae9a:	2785                	addiw	a5,a5,1
    8000ae9c:	c47c                	sw	a5,76(s0)
quickjs-nuttx/quickjs.c:2834
    if (atom_type != JS_ATOM_TYPE_SYMBOL) {
    8000ae9e:	478d                	li	a5,3
    8000aea0:	e2f982e3          	beq	s3,a5,8000acc4 <__JS_NewAtom+0x46>
quickjs-nuttx/quickjs.c:2835
        p->hash_next = rt->atom_hash[h1];
    8000aea4:	020b1793          	slli	a5,s6,0x20
    8000aea8:	01e7db13          	srli	s6,a5,0x1e
    8000aeac:	6c3c                	ld	a5,88(s0)
    8000aeae:	97da                	add	a5,a5,s6
    8000aeb0:	439c                	lw	a5,0(a5)
    8000aeb2:	00f92623          	sw	a5,12(s2)
quickjs-nuttx/quickjs.c:2836
        rt->atom_hash[h1] = i;
    8000aeb6:	6c3c                	ld	a5,88(s0)
    8000aeb8:	9b3e                	add	s6,s6,a5
    8000aeba:	014b2023          	sw	s4,0(s6) # 40000000 <asinh-0x40000000>
quickjs-nuttx/quickjs.c:2837
        if (unlikely(rt->atom_count >= rt->atom_count_resize))
    8000aebe:	4478                	lw	a4,76(s0)
    8000aec0:	487c                	lw	a5,84(s0)
    8000aec2:	e0f741e3          	blt	a4,a5,8000acc4 <__JS_NewAtom+0x46>
quickjs-nuttx/quickjs.c:2838
            JS_ResizeAtomHash(rt, rt->atom_hash_size * 2);
    8000aec6:	442c                	lw	a1,72(s0)
    8000aec8:	8522                	mv	a0,s0
    8000aeca:	0015959b          	slliw	a1,a1,0x1
    8000aece:	cfbff0ef          	jal	ra,8000abc8 <JS_ResizeAtomHash>
    8000aed2:	bbcd                	j	8000acc4 <__JS_NewAtom+0x46>
quickjs-nuttx/quickjs.c:2797
                             (str->len << str->is_wide_char) +
    8000aed4:	40d8                	lw	a4,4(s1)
    8000aed6:	80000637          	lui	a2,0x80000
    8000aeda:	fff64a13          	not	s4,a2
    8000aede:	01f7579b          	srliw	a5,a4,0x1f
    8000aee2:	014775b3          	and	a1,a4,s4
    8000aee6:	00f595bb          	sllw	a1,a1,a5
quickjs-nuttx/quickjs.c:2796
            p = js_malloc_rt(rt, sizeof(JSString) +
    8000aeea:	8d9d                	sub	a1,a1,a5
    8000aeec:	05c5                	addi	a1,a1,17
    8000aeee:	8522                	mv	a0,s0
    8000aef0:	aadff0ef          	jal	ra,8000a99c <js_malloc_rt>
    8000aef4:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:2799
            if (unlikely(!p))
    8000aef6:	e119                	bnez	a0,8000aefc <__JS_NewAtom+0x27e>
quickjs-nuttx/quickjs.c:2845
    i = JS_ATOM_NULL;
    8000aef8:	4a01                	li	s4,0
    8000aefa:	bd69                	j	8000ad94 <__JS_NewAtom+0x116>
quickjs-nuttx/quickjs.c:2801
            p->header.ref_count = 1;
    8000aefc:	4785                	li	a5,1
    8000aefe:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:2802
            p->is_wide_char = str->is_wide_char;
    8000af00:	40dc                	lw	a5,4(s1)
quickjs-nuttx/quickjs.c:2803
            p->len = str->len;
    8000af02:	800006b7          	lui	a3,0x80000
quickjs-nuttx/quickjs.c:2807
            memcpy(p->u.str8, str->u.str8, (str->len << str->is_wide_char) +
    8000af06:	01048593          	addi	a1,s1,16
quickjs-nuttx/quickjs.c:2802
            p->is_wide_char = str->is_wide_char;
    8000af0a:	01f7d79b          	srliw	a5,a5,0x1f
    8000af0e:	01f7971b          	slliw	a4,a5,0x1f
    8000af12:	415c                	lw	a5,4(a0)
    8000af14:	0147f7b3          	and	a5,a5,s4
    8000af18:	8fd9                	or	a5,a5,a4
    8000af1a:	c15c                	sw	a5,4(a0)
quickjs-nuttx/quickjs.c:2803
            p->len = str->len;
    8000af1c:	40d8                	lw	a4,4(s1)
    8000af1e:	8ff5                	and	a5,a5,a3
    8000af20:	00ea7733          	and	a4,s4,a4
    8000af24:	8fd9                	or	a5,a5,a4
    8000af26:	c15c                	sw	a5,4(a0)
quickjs-nuttx/quickjs.c:2807
            memcpy(p->u.str8, str->u.str8, (str->len << str->is_wide_char) +
    8000af28:	40dc                	lw	a5,4(s1)
    8000af2a:	0541                	addi	a0,a0,16
    8000af2c:	01f7d69b          	srliw	a3,a5,0x1f
    8000af30:	0147f633          	and	a2,a5,s4
    8000af34:	01f7d71b          	srliw	a4,a5,0x1f
    8000af38:	00d6163b          	sllw	a2,a2,a3
quickjs-nuttx/quickjs.c:2808
                   1 - str->is_wide_char);
    8000af3c:	9e19                	subw	a2,a2,a4
quickjs-nuttx/quickjs.c:2807
            memcpy(p->u.str8, str->u.str8, (str->len << str->is_wide_char) +
    8000af3e:	2605                	addiw	a2,a2,1
    8000af40:	66d580ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:2809
            js_free_string(rt, str);
    8000af44:	85a6                	mv	a1,s1
    8000af46:	8522                	mv	a0,s0
    8000af48:	b73ff0ef          	jal	ra,8000aaba <js_free_string>
    8000af4c:	b70d                	j	8000ae6e <__JS_NewAtom+0x1f0>
quickjs-nuttx/quickjs.c:2815
        p->header.ref_count = 1;
    8000af4e:	4785                	li	a5,1
    8000af50:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:2817
        p->len = 0;
    8000af52:	800007b7          	lui	a5,0x80000
    8000af56:	c15c                	sw	a5,4(a0)
    8000af58:	bf19                	j	8000ae6e <__JS_NewAtom+0x1f0>

000000008000af5a <__JS_NewAtomInit>:
__JS_NewAtomInit():
quickjs-nuttx/quickjs.c:2855
{
    8000af5a:	7179                	addi	sp,sp,-48
    8000af5c:	f022                	sd	s0,32(sp)
    8000af5e:	8432                	mv	s0,a2
    8000af60:	e052                	sd	s4,0(sp)
quickjs-nuttx/quickjs.c:2857
    p = js_alloc_string_rt(rt, len, 0);
    8000af62:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:2855
{
    8000af64:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:2857
    p = js_alloc_string_rt(rt, len, 0);
    8000af66:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:2855
{
    8000af68:	e84a                	sd	s2,16(sp)
    8000af6a:	e44e                	sd	s3,8(sp)
    8000af6c:	f406                	sd	ra,40(sp)
    8000af6e:	ec26                	sd	s1,24(sp)
    8000af70:	892a                	mv	s2,a0
    8000af72:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:2857
    p = js_alloc_string_rt(rt, len, 0);
    8000af74:	a31ff0ef          	jal	ra,8000a9a4 <js_alloc_string_rt>
quickjs-nuttx/quickjs.c:2858
    if (!p)
    8000af78:	c515                	beqz	a0,8000afa4 <__JS_NewAtomInit+0x4a>
    8000af7a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:2860
    memcpy(p->u.str8, str, len);
    8000af7c:	8622                	mv	a2,s0
    8000af7e:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:2861
    p->u.str8[len] = '\0';
    8000af80:	9426                	add	s0,s0,s1
quickjs-nuttx/quickjs.c:2860
    memcpy(p->u.str8, str, len);
    8000af82:	0541                	addi	a0,a0,16
    8000af84:	629580ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:2861
    p->u.str8[len] = '\0';
    8000af88:	00040823          	sb	zero,16(s0)
quickjs-nuttx/quickjs.c:2863
}
    8000af8c:	7402                	ld	s0,32(sp)
    8000af8e:	70a2                	ld	ra,40(sp)
    8000af90:	6a02                	ld	s4,0(sp)
quickjs-nuttx/quickjs.c:2862
    return __JS_NewAtom(rt, p, atom_type);
    8000af92:	864e                	mv	a2,s3
    8000af94:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:2863
}
    8000af96:	69a2                	ld	s3,8(sp)
    8000af98:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:2862
    return __JS_NewAtom(rt, p, atom_type);
    8000af9a:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:2863
}
    8000af9c:	6942                	ld	s2,16(sp)
    8000af9e:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:2862
    return __JS_NewAtom(rt, p, atom_type);
    8000afa0:	cdfff06f          	j	8000ac7e <__JS_NewAtom>
quickjs-nuttx/quickjs.c:2863
}
    8000afa4:	70a2                	ld	ra,40(sp)
    8000afa6:	7402                	ld	s0,32(sp)
    8000afa8:	64e2                	ld	s1,24(sp)
    8000afaa:	6942                	ld	s2,16(sp)
    8000afac:	69a2                	ld	s3,8(sp)
    8000afae:	6a02                	ld	s4,0(sp)
    8000afb0:	6145                	addi	sp,sp,48
    8000afb2:	8082                	ret

000000008000afb4 <JS_NewAtomStr>:
JS_NewAtomStr():
quickjs-nuttx/quickjs.c:2946
{
    8000afb4:	7179                	addi	sp,sp,-48
    8000afb6:	f022                	sd	s0,32(sp)
    8000afb8:	f406                	sd	ra,40(sp)
    8000afba:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:2947
    JSRuntime *rt = ctx->rt;
    8000afbc:	6d04                	ld	s1,24(a0)
quickjs-nuttx/quickjs.c:2949
    if (is_num_string(&n, p)) {
    8000afbe:	0068                	addi	a0,sp,12
quickjs-nuttx/quickjs.c:2946
{
    8000afc0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:2949
    if (is_num_string(&n, p)) {
    8000afc2:	be7fc0ef          	jal	ra,80007ba8 <is_num_string>
    8000afc6:	c115                	beqz	a0,8000afea <JS_NewAtomStr+0x36>
quickjs-nuttx/quickjs.c:2950
        if (n <= JS_ATOM_MAX_INT) {
    8000afc8:	47b2                	lw	a5,12(sp)
    8000afca:	0207c063          	bltz	a5,8000afea <JS_NewAtomStr+0x36>
quickjs-nuttx/quickjs.c:2951
            js_free_string(rt, p);
    8000afce:	8526                	mv	a0,s1
    8000afd0:	85a2                	mv	a1,s0
    8000afd2:	ae9ff0ef          	jal	ra,8000aaba <js_free_string>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8000afd6:	4532                	lw	a0,12(sp)
    8000afd8:	800007b7          	lui	a5,0x80000
    8000afdc:	8d5d                	or	a0,a0,a5
JS_NewAtomStr():
quickjs-nuttx/quickjs.c:2957
}
    8000afde:	70a2                	ld	ra,40(sp)
    8000afe0:	7402                	ld	s0,32(sp)
    8000afe2:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:2956
    return __JS_NewAtom(rt, p, JS_ATOM_TYPE_STRING);
    8000afe4:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:2957
}
    8000afe6:	6145                	addi	sp,sp,48
    8000afe8:	8082                	ret
quickjs-nuttx/quickjs.c:2956
    return __JS_NewAtom(rt, p, JS_ATOM_TYPE_STRING);
    8000afea:	4605                	li	a2,1
    8000afec:	85a2                	mv	a1,s0
    8000afee:	8526                	mv	a0,s1
    8000aff0:	c8fff0ef          	jal	ra,8000ac7e <__JS_NewAtom>
    8000aff4:	b7ed                	j	8000afde <JS_NewAtomStr+0x2a>

000000008000aff6 <js_free>:
js_free():
quickjs-nuttx/quickjs.c:1373
    js_free_rt(ctx->rt, ptr);
    8000aff6:	6d08                	ld	a0,24(a0)
    8000aff8:	9e9ff06f          	j	8000a9e0 <js_free_rt>

000000008000affc <string_buffer_set_error>:
string_buffer_set_error():
quickjs-nuttx/quickjs.c:3585
{
    8000affc:	1141                	addi	sp,sp,-16
    8000affe:	e022                	sd	s0,0(sp)
