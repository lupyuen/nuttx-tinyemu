    80032000:	01376463          	bltu	a4,s3,80032008 <js_parse_postfix_expr+0x53a>
quickjs-nuttx/quickjs.c:22637
                op_flags = OP_DEFINE_METHOD_GETTER +
    80032004:	fff48a9b          	addiw	s5,s1,-1
quickjs-nuttx/quickjs.c:22642
            emit_u8(s, op_flags | OP_DEFINE_METHOD_ENUMERABLE);
    80032008:	004ae593          	ori	a1,s5,4
    8003200c:	0ff5f593          	zext.b	a1,a1
    80032010:	8522                	mv	a0,s0
    80032012:	cf3d60ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:22665
        JS_FreeAtom(s->ctx, name);
    80032016:	5582                	lw	a1,32(sp)
    80032018:	6008                	ld	a0,0(s0)
    8003201a:	92ed90ef          	jal	ra,8000b148 <JS_FreeAtom>
    8003201e:	bf3d                	j	80031f5c <js_parse_postfix_expr+0x48e>
quickjs-nuttx/quickjs.c:22621
                    func_kind = JS_FUNC_GENERATOR;
    80032020:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:22620
                if (prop_type == PROP_TYPE_STAR)
    80032022:	01950963          	beq	a0,s9,80032034 <js_parse_postfix_expr+0x566>
quickjs-nuttx/quickjs.c:22623
                    func_kind = JS_FUNC_ASYNC;
    80032026:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:22622
                else if (prop_type == PROP_TYPE_ASYNC)
    80032028:	01b50663          	beq	a0,s11,80032034 <js_parse_postfix_expr+0x566>
quickjs-nuttx/quickjs.c:22625
                    func_kind = JS_FUNC_ASYNC_GENERATOR;
    8003202c:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:22624
                else if (prop_type == PROP_TYPE_ASYNC_STAR)
    8003202e:	01a50363          	beq	a0,s10,80032034 <js_parse_postfix_expr+0x566>
quickjs-nuttx/quickjs.c:22615
            func_kind = JS_FUNC_NORMAL;
    80032032:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:22619
                func_type = JS_PARSE_FUNC_METHOD;
    80032034:	4599                	li	a1,6
    80032036:	b775                	j	80031fe2 <js_parse_postfix_expr+0x514>
quickjs-nuttx/quickjs.c:22633
                emit_op(s, OP_define_method);
    80032038:	8522                	mv	a0,s0
    8003203a:	05400593          	li	a1,84
    8003203e:	8b8d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22634
                emit_atom(s, name);
    80032042:	5582                	lw	a1,32(sp)
    80032044:	8522                	mv	a0,s0
    80032046:	8e4d90ef          	jal	ra,8000b12a <emit_atom>
    8003204a:	bf55                	j	80031ffe <js_parse_postfix_expr+0x530>
quickjs-nuttx/quickjs.c:22644
            if (js_parse_expect(s, ':'))
    8003204c:	03a00593          	li	a1,58
    80032050:	8522                	mv	a0,s0
    80032052:	f61fc0ef          	jal	ra,8002efb2 <js_parse_expect>
    80032056:	ed1d                	bnez	a0,80032094 <js_parse_postfix_expr+0x5c6>
quickjs-nuttx/quickjs.c:22646
            if (js_parse_assign_expr(s))
    80032058:	8522                	mv	a0,s0
    8003205a:	77d020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003205e:	e91d                	bnez	a0,80032094 <js_parse_postfix_expr+0x5c6>
quickjs-nuttx/quickjs.c:22648
            if (name == JS_ATOM_NULL) {
    80032060:	5582                	lw	a1,32(sp)
    80032062:	ed91                	bnez	a1,8003207e <js_parse_postfix_expr+0x5b0>
quickjs-nuttx/quickjs.c:22649
                set_object_name_computed(s);
    80032064:	8522                	mv	a0,s0
    80032066:	8e4d70ef          	jal	ra,8000914a <set_object_name_computed>
quickjs-nuttx/quickjs.c:22650
                emit_op(s, OP_define_array_el);
    8003206a:	8522                	mv	a0,s0
    8003206c:	05100593          	li	a1,81
    80032070:	886d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22651
                emit_op(s, OP_drop);
    80032074:	45b9                	li	a1,14
    80032076:	8522                	mv	a0,s0
    80032078:	87ed70ef          	jal	ra,800090f6 <emit_op>
    8003207c:	bf69                	j	80032016 <js_parse_postfix_expr+0x548>
quickjs-nuttx/quickjs.c:22652
            } else if (name == JS_ATOM___proto__) {
    8003207e:	03859763          	bne	a1,s8,800320ac <js_parse_postfix_expr+0x5de>
quickjs-nuttx/quickjs.c:22653
                if (has_proto) {
    80032082:	00090e63          	beqz	s2,8003209e <js_parse_postfix_expr+0x5d0>
quickjs-nuttx/quickjs.c:22654
                    js_parse_error(s, "duplicate __proto__ property name");
    80032086:	0003a597          	auipc	a1,0x3a
    8003208a:	1da58593          	addi	a1,a1,474 # 8006c260 <qjsc_repl+0x6cb0>
    8003208e:	8522                	mv	a0,s0
    80032090:	be3fb0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:22677
    JS_FreeAtom(s->ctx, name);
    80032094:	5582                	lw	a1,32(sp)
    80032096:	6008                	ld	a0,0(s0)
    80032098:	8b0d90ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:22678
    return -1;
    8003209c:	b1b1                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:22657
                emit_op(s, OP_set_proto);
    8003209e:	04f00593          	li	a1,79
    800320a2:	8522                	mv	a0,s0
    800320a4:	852d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22658
                has_proto = TRUE;
    800320a8:	4905                	li	s2,1
    800320aa:	b7b5                	j	80032016 <js_parse_postfix_expr+0x548>
quickjs-nuttx/quickjs.c:22660
                set_object_name(s, name);
    800320ac:	8522                	mv	a0,s0
    800320ae:	ac4d90ef          	jal	ra,8000b372 <set_object_name>
    800320b2:	b721                	j	80031fba <js_parse_postfix_expr+0x4ec>
quickjs-nuttx/quickjs.c:22670
        if (next_token(s))
    800320b4:	8522                	mv	a0,s0
    800320b6:	cd0fc0ef          	jal	ra,8002e586 <next_token>
    800320ba:	e4050be3          	beqz	a0,80031f10 <js_parse_postfix_expr+0x442>
    800320be:	bfd9                	j	80032094 <js_parse_postfix_expr+0x5c6>
js_parse_array_literal():
quickjs-nuttx/quickjs.c:23353
    if (next_token(s))
    800320c0:	8522                	mv	a0,s0
    800320c2:	cc4fc0ef          	jal	ra,8002e586 <next_token>
    800320c6:	84aa                	mv	s1,a0
    800320c8:	c20510e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23356
    idx = 0;
    800320cc:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:23357
    while (s->token.val != ']' && idx < 32) {
    800320ce:	05d00993          	li	s3,93
    800320d2:	02000b13          	li	s6,32
quickjs-nuttx/quickjs.c:23358
        if (s->token.val == ',' || s->token.val == TOK_ELLIPSIS)
    800320d6:	02c00a93          	li	s5,44
    800320da:	fa700b93          	li	s7,-89
quickjs-nuttx/quickjs.c:23357
    while (s->token.val != ']' && idx < 32) {
    800320de:	4c1c                	lw	a5,24(s0)
    800320e0:	01378463          	beq	a5,s3,800320e8 <js_parse_postfix_expr+0x61a>
    800320e4:	05691d63          	bne	s2,s6,8003213e <js_parse_postfix_expr+0x670>
quickjs-nuttx/quickjs.c:23371
    emit_op(s, OP_array_from);
    800320e8:	02600593          	li	a1,38
    800320ec:	8522                	mv	a0,s0
    800320ee:	808d70ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23372
    emit_u16(s, idx);
    800320f2:	03091593          	slli	a1,s2,0x30
    800320f6:	91c1                	srli	a1,a1,0x30
    800320f8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23376
    while (s->token.val != ']' && idx < 0x7fffffff) {
    800320fa:	800009b7          	lui	s3,0x80000
quickjs-nuttx/quickjs.c:23372
    emit_u16(s, idx);
    800320fe:	ec7d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23376
    while (s->token.val != ']' && idx < 0x7fffffff) {
    80032102:	05d00b13          	li	s6,93
    80032106:	fff9c993          	not	s3,s3
quickjs-nuttx/quickjs.c:23377
        if (s->token.val == TOK_ELLIPSIS)
    8003210a:	fa700b93          	li	s7,-89
quickjs-nuttx/quickjs.c:23380
        if (s->token.val != ',') {
    8003210e:	02c00a93          	li	s5,44
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    80032112:	80000c37          	lui	s8,0x80000
js_parse_array_literal():
quickjs-nuttx/quickjs.c:23376
    while (s->token.val != ']' && idx < 0x7fffffff) {
    80032116:	4c1c                	lw	a5,24(s0)
    80032118:	15678ce3          	beq	a5,s6,80032a70 <js_parse_postfix_expr+0xfa2>
    8003211c:	05391b63          	bne	s2,s3,80032172 <js_parse_postfix_expr+0x6a4>
quickjs-nuttx/quickjs.c:23408
    emit_op(s, OP_push_i32);
    80032120:	4585                	li	a1,1
    80032122:	8522                	mv	a0,s0
    80032124:	fd3d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23409
    emit_u32(s, idx);
    80032128:	85ca                	mv	a1,s2
    8003212a:	8522                	mv	a0,s0
    8003212c:	960d70ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23412
    while (s->token.val != ']') {
    80032130:	05d00a93          	li	s5,93
quickjs-nuttx/quickjs.c:23413
        if (s->token.val == TOK_ELLIPSIS) {
    80032134:	fa700993          	li	s3,-89
quickjs-nuttx/quickjs.c:23447
            if (s->token.val != ',') {
    80032138:	02c00913          	li	s2,44
quickjs-nuttx/quickjs.c:23412
    while (s->token.val != ']') {
    8003213c:	a05d                	j	800321e2 <js_parse_postfix_expr+0x714>
quickjs-nuttx/quickjs.c:23358
        if (s->token.val == ',' || s->token.val == TOK_ELLIPSIS)
    8003213e:	fb5785e3          	beq	a5,s5,800320e8 <js_parse_postfix_expr+0x61a>
    80032142:	fb7783e3          	beq	a5,s7,800320e8 <js_parse_postfix_expr+0x61a>
quickjs-nuttx/quickjs.c:23360
        if (js_parse_assign_expr(s))
    80032146:	8522                	mv	a0,s0
    80032148:	68f020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003214c:	b8051ee3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23364
        if (s->token.val == ',') {
    80032150:	4c1c                	lw	a5,24(s0)
quickjs-nuttx/quickjs.c:23362
        idx++;
    80032152:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:23364
        if (s->token.val == ',') {
    80032154:	01579763          	bne	a5,s5,80032162 <js_parse_postfix_expr+0x694>
quickjs-nuttx/quickjs.c:23365
            if (next_token(s))
    80032158:	8522                	mv	a0,s0
    8003215a:	c2cfc0ef          	jal	ra,8002e586 <next_token>
    8003215e:	d141                	beqz	a0,800320de <js_parse_postfix_expr+0x610>
    80032160:	b661                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23368
        if (s->token.val != ']')
    80032162:	f7378ee3          	beq	a5,s3,800320de <js_parse_postfix_expr+0x610>
quickjs-nuttx/quickjs.c:23471
    return js_parse_expect(s, ']');
    80032166:	05d00593          	li	a1,93
    8003216a:	8522                	mv	a0,s0
    8003216c:	e47fc0ef          	jal	ra,8002efb2 <js_parse_expect>
    80032170:	b675                	j	80031d1c <js_parse_postfix_expr+0x24e>
quickjs-nuttx/quickjs.c:23377
        if (s->token.val == TOK_ELLIPSIS)
    80032172:	fb7787e3          	beq	a5,s7,80032120 <js_parse_postfix_expr+0x652>
quickjs-nuttx/quickjs.c:23379
        need_length = TRUE;
    80032176:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:23380
        if (s->token.val != ',') {
    80032178:	03578363          	beq	a5,s5,8003219e <js_parse_postfix_expr+0x6d0>
quickjs-nuttx/quickjs.c:23381
            if (js_parse_assign_expr(s))
    8003217c:	8522                	mv	a0,s0
    8003217e:	659020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    80032182:	84aa                	mv	s1,a0
    80032184:	b60512e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23383
            emit_op(s, OP_define_field);
    80032188:	04c00593          	li	a1,76
    8003218c:	8522                	mv	a0,s0
    8003218e:	f69d60ef          	jal	ra,800090f6 <emit_op>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    80032192:	018965b3          	or	a1,s2,s8
js_parse_array_literal():
quickjs-nuttx/quickjs.c:23384
            emit_u32(s, __JS_AtomFromUInt32(idx));
    80032196:	2581                	sext.w	a1,a1
    80032198:	8522                	mv	a0,s0
    8003219a:	8f2d70ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23389
        if (s->token.val == ',') {
    8003219e:	4c1c                	lw	a5,24(s0)
quickjs-nuttx/quickjs.c:23387
        idx++;
    800321a0:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:23389
        if (s->token.val == ',') {
    800321a2:	f7579ae3          	bne	a5,s5,80032116 <js_parse_postfix_expr+0x648>
quickjs-nuttx/quickjs.c:23390
            if (next_token(s))
    800321a6:	8522                	mv	a0,s0
    800321a8:	bdefc0ef          	jal	ra,8002e586 <next_token>
    800321ac:	d52d                	beqz	a0,80032116 <js_parse_postfix_expr+0x648>
    800321ae:	be2d                	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23413
        if (s->token.val == TOK_ELLIPSIS) {
    800321b0:	05379363          	bne	a5,s3,800321f6 <js_parse_postfix_expr+0x728>
quickjs-nuttx/quickjs.c:23414
            if (next_token(s))
    800321b4:	8522                	mv	a0,s0
    800321b6:	bd0fc0ef          	jal	ra,8002e586 <next_token>
    800321ba:	b20517e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23416
            if (js_parse_assign_expr(s))
    800321be:	8522                	mv	a0,s0
    800321c0:	617020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    800321c4:	b20512e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23419
            emit_op(s, OP_append);
    800321c8:	05200593          	li	a1,82
quickjs-nuttx/quickjs.c:23454
            emit_op(s, OP_inc);
    800321cc:	8522                	mv	a0,s0
    800321ce:	f29d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23456
        if (s->token.val != ',')
    800321d2:	4c1c                	lw	a5,24(s0)
    800321d4:	01279a63          	bne	a5,s2,800321e8 <js_parse_postfix_expr+0x71a>
quickjs-nuttx/quickjs.c:23458
        if (next_token(s))
    800321d8:	8522                	mv	a0,s0
    800321da:	bacfc0ef          	jal	ra,8002e586 <next_token>
    800321de:	b00515e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23412
    while (s->token.val != ']') {
    800321e2:	4c1c                	lw	a5,24(s0)
    800321e4:	fd5796e3          	bne	a5,s5,800321b0 <js_parse_postfix_expr+0x6e2>
quickjs-nuttx/quickjs.c:23461
    if (need_length) {
    800321e8:	c88d                	beqz	s1,8003221a <js_parse_postfix_expr+0x74c>
quickjs-nuttx/quickjs.c:23464
        emit_op(s, OP_dup1);    /* array length - array array length */
    800321ea:	45c9                	li	a1,18
    800321ec:	8522                	mv	a0,s0
    800321ee:	f09d60ef          	jal	ra,800090f6 <emit_op>
    800321f2:	09b0006f          	j	80032a8c <js_parse_postfix_expr+0xfbe>
quickjs-nuttx/quickjs.c:23447
            if (s->token.val != ',') {
    800321f6:	03278063          	beq	a5,s2,80032216 <js_parse_postfix_expr+0x748>
quickjs-nuttx/quickjs.c:23448
                if (js_parse_assign_expr(s))
    800321fa:	8522                	mv	a0,s0
    800321fc:	5db020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    80032200:	84aa                	mv	s1,a0
    80032202:	ae0513e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:23451
                emit_op(s, OP_define_array_el);
    80032206:	05100593          	li	a1,81
    8003220a:	8522                	mv	a0,s0
    8003220c:	eebd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23454
            emit_op(s, OP_inc);
    80032210:	09000593          	li	a1,144
    80032214:	bf65                	j	800321cc <js_parse_postfix_expr+0x6fe>
quickjs-nuttx/quickjs.c:23446
            need_length = TRUE;
    80032216:	4485                	li	s1,1
    80032218:	bfe5                	j	80032210 <js_parse_postfix_expr+0x742>
quickjs-nuttx/quickjs.c:23468
        emit_op(s, OP_drop);    /* array length - array */
    8003221a:	45b9                	li	a1,14
    8003221c:	8522                	mv	a0,s0
    8003221e:	ed9d60ef          	jal	ra,800090f6 <emit_op>
    80032222:	b791                	j	80032166 <js_parse_postfix_expr+0x698>
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24499
        if (next_token(s))
    80032224:	b62fc0ef          	jal	ra,8002e586 <next_token>
    80032228:	ac0510e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24501
        if (s->token.val == '.') {
    8003222c:	4c18                	lw	a4,24(s0)
    8003222e:	02e00793          	li	a5,46
    80032232:	06f71663          	bne	a4,a5,8003229e <js_parse_postfix_expr+0x7d0>
quickjs-nuttx/quickjs.c:24502
            if (next_token(s))
    80032236:	8522                	mv	a0,s0
    80032238:	b4efc0ef          	jal	ra,8002e586 <next_token>
    8003223c:	aa0516e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24504
            if (!token_is_pseudo_keyword(s, JS_ATOM_target))
    80032240:	05700593          	li	a1,87
    80032244:	8522                	mv	a0,s0
    80032246:	c29d50ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    8003224a:	e515                	bnez	a0,80032276 <js_parse_postfix_expr+0x7a8>
quickjs-nuttx/quickjs.c:24505
                return js_parse_error(s, "expecting target");
    8003224c:	0003a597          	auipc	a1,0x3a
    80032250:	03c58593          	addi	a1,a1,60 # 8006c288 <qjsc_repl+0x6cd8>
    80032254:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24967
}
    80032256:	644a                	ld	s0,144(sp)
    80032258:	60ea                	ld	ra,152(sp)
    8003225a:	64aa                	ld	s1,136(sp)
    8003225c:	690a                	ld	s2,128(sp)
    8003225e:	79e6                	ld	s3,120(sp)
    80032260:	7a46                	ld	s4,112(sp)
    80032262:	7aa6                	ld	s5,104(sp)
    80032264:	7b06                	ld	s6,96(sp)
    80032266:	6be6                	ld	s7,88(sp)
    80032268:	6c46                	ld	s8,80(sp)
    8003226a:	6ca6                	ld	s9,72(sp)
    8003226c:	6d06                	ld	s10,64(sp)
    8003226e:	7de2                	ld	s11,56(sp)
    80032270:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:24505
                return js_parse_error(s, "expecting target");
    80032272:	a01fb06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:24506
            if (!s->cur_func->new_target_allowed)
    80032276:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:24507
                return js_parse_error(s, "new.target only allowed within functions");
    80032278:	0003a597          	auipc	a1,0x3a
    8003227c:	02858593          	addi	a1,a1,40 # 8006c2a0 <qjsc_repl+0x6cf0>
quickjs-nuttx/quickjs.c:24506
            if (!s->cur_func->new_target_allowed)
    80032280:	57bc                	lw	a5,104(a5)
    80032282:	dbe9                	beqz	a5,80032254 <js_parse_postfix_expr+0x786>
quickjs-nuttx/quickjs.c:24508
            if (next_token(s))
    80032284:	8522                	mv	a0,s0
    80032286:	b00fc0ef          	jal	ra,8002e586 <next_token>
    8003228a:	a4051fe3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24510
            emit_op(s, OP_scope_get_var);
    8003228e:	0ba00593          	li	a1,186
    80032292:	8522                	mv	a0,s0
    80032294:	e63d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24511
            emit_atom(s, JS_ATOM_new_target);
    80032298:	07200593          	li	a1,114
    8003229c:	b68d                	j	80031dfe <js_parse_postfix_expr+0x330>
quickjs-nuttx/quickjs.c:24514
            if (js_parse_postfix_expr(s, 0))
    8003229e:	4581                	li	a1,0
    800322a0:	8522                	mv	a0,s0
    800322a2:	82dff0ef          	jal	ra,80031ace <js_parse_postfix_expr>
    800322a6:	a40511e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24517
            if (s->token.val != '(') {
    800322aa:	4c18                	lw	a4,24(s0)
    800322ac:	02800793          	li	a5,40
    800322b0:	14f70263          	beq	a4,a5,800323f4 <js_parse_postfix_expr+0x926>
quickjs-nuttx/quickjs.c:24519
                emit_op(s, OP_dup);
    800322b4:	45c5                	li	a1,17
    800322b6:	8522                	mv	a0,s0
    800322b8:	e3fd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24520
                emit_op(s, OP_call_constructor);
    800322bc:	02100593          	li	a1,33
    800322c0:	8522                	mv	a0,s0
    800322c2:	e35d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24521
                emit_u16(s, 0);
    800322c6:	4581                	li	a1,0
    800322c8:	8522                	mv	a0,s0
    800322ca:	cfbd60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24516
            accept_lparen = TRUE;
    800322ce:	4a05                	li	s4,1
    800322d0:	be19                	j	80031de6 <js_parse_postfix_expr+0x318>
quickjs-nuttx/quickjs.c:24528
        if (next_token(s))
    800322d2:	ab4fc0ef          	jal	ra,8002e586 <next_token>
    800322d6:	a00519e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24530
        if (s->token.val == '(') {
    800322da:	4c1c                	lw	a5,24(s0)
    800322dc:	02800713          	li	a4,40
    800322e0:	00e79c63          	bne	a5,a4,800322f8 <js_parse_postfix_expr+0x82a>
quickjs-nuttx/quickjs.c:24531
            if (!s->cur_func->super_call_allowed)
    800322e4:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:24533
            call_type = FUNC_CALL_SUPER_CTOR;
    800322e6:	4909                	li	s2,2
quickjs-nuttx/quickjs.c:24532
                return js_parse_error(s, "super() is only valid in a derived class constructor");
    800322e8:	0003a597          	auipc	a1,0x3a
    800322ec:	fe858593          	addi	a1,a1,-24 # 8006c2d0 <qjsc_repl+0x6d20>
quickjs-nuttx/quickjs.c:24531
            if (!s->cur_func->super_call_allowed)
    800322f0:	57fc                	lw	a5,108(a5)
    800322f2:	92079de3          	bnez	a5,80031c2c <js_parse_postfix_expr+0x15e>
    800322f6:	bfb9                	j	80032254 <js_parse_postfix_expr+0x786>
quickjs-nuttx/quickjs.c:24534
        } else if (s->token.val == '.' || s->token.val == '[') {
    800322f8:	02e00713          	li	a4,46
    800322fc:	00e78663          	beq	a5,a4,80032308 <js_parse_postfix_expr+0x83a>
quickjs-nuttx/quickjs.c:24534 (discriminator 1)
    80032300:	05b00713          	li	a4,91
    80032304:	04e79763          	bne	a5,a4,80032352 <js_parse_postfix_expr+0x884>
quickjs-nuttx/quickjs.c:24535
            if (!s->cur_func->super_allowed)
    80032308:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:24536
                return js_parse_error(s, "'super' is only valid in a method");
    8003230a:	0003a597          	auipc	a1,0x3a
    8003230e:	ffe58593          	addi	a1,a1,-2 # 8006c308 <qjsc_repl+0x6d58>
quickjs-nuttx/quickjs.c:24535
            if (!s->cur_func->super_allowed)
    80032312:	5bbc                	lw	a5,112(a5)
    80032314:	d3a1                	beqz	a5,80032254 <js_parse_postfix_expr+0x786>
quickjs-nuttx/quickjs.c:24537
            emit_op(s, OP_scope_get_var);
    80032316:	0ba00593          	li	a1,186
    8003231a:	8522                	mv	a0,s0
    8003231c:	ddbd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24538
            emit_atom(s, JS_ATOM_this);
    80032320:	45a1                	li	a1,8
    80032322:	8522                	mv	a0,s0
    80032324:	e07d80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24539
            emit_u16(s, 0);
    80032328:	4581                	li	a1,0
    8003232a:	8522                	mv	a0,s0
    8003232c:	c99d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24540
            emit_op(s, OP_scope_get_var);
    80032330:	0ba00593          	li	a1,186
    80032334:	8522                	mv	a0,s0
    80032336:	dc1d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24541
            emit_atom(s, JS_ATOM_home_object);
    8003233a:	07400593          	li	a1,116
    8003233e:	8522                	mv	a0,s0
    80032340:	debd80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24542
            emit_u16(s, 0);
    80032344:	4581                	li	a1,0
    80032346:	8522                	mv	a0,s0
    80032348:	c7dd60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24543
            emit_op(s, OP_get_super);
    8003234c:	03400593          	li	a1,52
    80032350:	bc41                	j	80031de0 <js_parse_postfix_expr+0x312>
quickjs-nuttx/quickjs.c:24545
            return js_parse_error(s, "invalid use of 'super'");
    80032352:	0003a597          	auipc	a1,0x3a
    80032356:	fde58593          	addi	a1,a1,-34 # 8006c330 <qjsc_repl+0x6d80>
    8003235a:	bded                	j	80032254 <js_parse_postfix_expr+0x786>
    8003235c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:24549
        if (next_token(s))
    8003235e:	a28fc0ef          	jal	ra,8002e586 <next_token>
    80032362:	980513e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24551
        if (s->token.val == '.') {
    80032366:	4c18                	lw	a4,24(s0)
    80032368:	02e00793          	li	a5,46
    8003236c:	04f71763          	bne	a4,a5,800323ba <js_parse_postfix_expr+0x8ec>
quickjs-nuttx/quickjs.c:24552
            if (next_token(s))
    80032370:	8522                	mv	a0,s0
    80032372:	a14fc0ef          	jal	ra,8002e586 <next_token>
    80032376:	960519e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24554
            if (!token_is_pseudo_keyword(s, JS_ATOM_meta))
    8003237a:	07c00593          	li	a1,124
    8003237e:	8522                	mv	a0,s0
    80032380:	aefd50ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:24555
                return js_parse_error(s, "meta expected");
    80032384:	0003a597          	auipc	a1,0x3a
    80032388:	fc458593          	addi	a1,a1,-60 # 8006c348 <qjsc_repl+0x6d98>
quickjs-nuttx/quickjs.c:24554
            if (!token_is_pseudo_keyword(s, JS_ATOM_meta))
    8003238c:	ec0504e3          	beqz	a0,80032254 <js_parse_postfix_expr+0x786>
quickjs-nuttx/quickjs.c:24556
            if (!s->is_module)
    80032390:	583c                	lw	a5,112(s0)
quickjs-nuttx/quickjs.c:24557
                return js_parse_error(s, "import.meta only valid in module code");
    80032392:	0003a597          	auipc	a1,0x3a
    80032396:	fc658593          	addi	a1,a1,-58 # 8006c358 <qjsc_repl+0x6da8>
quickjs-nuttx/quickjs.c:24556
            if (!s->is_module)
    8003239a:	ea078de3          	beqz	a5,80032254 <js_parse_postfix_expr+0x786>
quickjs-nuttx/quickjs.c:24558
            if (next_token(s))
    8003239e:	8522                	mv	a0,s0
    800323a0:	9e6fc0ef          	jal	ra,8002e586 <next_token>
    800323a4:	940512e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24560
            emit_op(s, OP_special_object);
    800323a8:	8522                	mv	a0,s0
    800323aa:	45b1                	li	a1,12
    800323ac:	d4bd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24561
            emit_u8(s, OP_SPECIAL_OBJECT_IMPORT_META);
    800323b0:	4599                	li	a1,6
    800323b2:	8522                	mv	a0,s0
    800323b4:	951d60ef          	jal	ra,80008d04 <emit_u8>
    800323b8:	b43d                	j	80031de6 <js_parse_postfix_expr+0x318>
quickjs-nuttx/quickjs.c:24563
            if (js_parse_expect(s, '('))
    800323ba:	02800593          	li	a1,40
    800323be:	8522                	mv	a0,s0
    800323c0:	bf3fc0ef          	jal	ra,8002efb2 <js_parse_expect>
    800323c4:	920512e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24566
                return js_parse_error(s, "invalid use of 'import()'");
    800323c8:	0003a597          	auipc	a1,0x3a
    800323cc:	fb858593          	addi	a1,a1,-72 # 8006c380 <qjsc_repl+0x6dd0>
quickjs-nuttx/quickjs.c:24565
            if (!accept_lparen)
    800323d0:	e80482e3          	beqz	s1,80032254 <js_parse_postfix_expr+0x786>
quickjs-nuttx/quickjs.c:24567
            if (js_parse_assign_expr(s))
    800323d4:	8522                	mv	a0,s0
    800323d6:	401020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    800323da:	900517e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24569
            if (js_parse_expect(s, ')'))
    800323de:	02900593          	li	a1,41
    800323e2:	8522                	mv	a0,s0
    800323e4:	bcffc0ef          	jal	ra,8002efb2 <js_parse_expect>
quickjs-nuttx/quickjs.c:24571
            emit_op(s, OP_import);
    800323e8:	03500593          	li	a1,53
quickjs-nuttx/quickjs.c:24569
            if (js_parse_expect(s, ')'))
    800323ec:	9e050ae3          	beqz	a0,80031de0 <js_parse_postfix_expr+0x312>
    800323f0:	8f9ff06f          	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24516
            accept_lparen = TRUE;
    800323f4:	4a05                	li	s4,1
quickjs-nuttx/quickjs.c:24523
                call_type = FUNC_CALL_NEW;
    800323f6:	4905                	li	s2,1
    800323f8:	835ff06f          	j	80031c2c <js_parse_postfix_expr+0x15e>
quickjs-nuttx/quickjs.c:24591
            } else if (s->token.val == '[') {
    800323fc:	05b00713          	li	a4,91
    80032400:	84e79ee3          	bne	a5,a4,80031c5c <js_parse_postfix_expr+0x18e>
quickjs-nuttx/quickjs.c:24588
            has_optional_chain = TRUE;
    80032404:	4a85                	li	s5,1
    80032406:	ab71                	j	800329a2 <js_parse_postfix_expr+0xed4>
quickjs-nuttx/quickjs.c:24596
        } else if (s->token.val == TOK_TEMPLATE &&
    80032408:	f8200713          	li	a4,-126
    8003240c:	02e79163          	bne	a5,a4,8003242e <js_parse_postfix_expr+0x960>
quickjs-nuttx/quickjs.c:24596 (discriminator 1)
    80032410:	5e091263          	bnez	s2,800329f4 <js_parse_postfix_expr+0xf26>
quickjs-nuttx/quickjs.c:24598
            if (optional_chaining_label >= 0) {
    80032414:	47f2                	lw	a5,28(sp)
    80032416:	0a07ca63          	bltz	a5,800324ca <js_parse_postfix_expr+0x9fc>
quickjs-nuttx/quickjs.c:24599
                return js_parse_error(s, "template literal cannot appear in an optional chain");
    8003241a:	0003a597          	auipc	a1,0x3a
    8003241e:	fae58593          	addi	a1,a1,-82 # 8006c3c8 <qjsc_repl+0x6e18>
quickjs-nuttx/quickjs.c:24905
                    return js_parse_error(s, "expecting field name");
    80032422:	8522                	mv	a0,s0
    80032424:	84ffb0ef          	jal	ra,8002dc72 <js_parse_error>
    80032428:	84aa                	mv	s1,a0
    8003242a:	8c1ff06f          	j	80031cea <js_parse_postfix_expr+0x21c>
quickjs-nuttx/quickjs.c:24603
        } else if (s->token.val == '(' && accept_lparen) {
    8003242e:	02800713          	li	a4,40
    80032432:	4ae79263          	bne	a5,a4,800328d6 <js_parse_postfix_expr+0xe08>
quickjs-nuttx/quickjs.c:24603 (discriminator 1)
    80032436:	5a0a0f63          	beqz	s4,800329f4 <js_parse_postfix_expr+0xf26>
quickjs-nuttx/quickjs.c:24582
        BOOL has_optional_chain = FALSE;
    8003243a:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:24608
            if (next_token(s))
    8003243c:	8522                	mv	a0,s0
    8003243e:	948fc0ef          	jal	ra,8002e586 <next_token>
    80032442:	84aa                	mv	s1,a0
    80032444:	8a0512e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24611
            if (call_type == FUNC_CALL_NORMAL) {
    80032448:	22091263          	bnez	s2,8003266c <js_parse_postfix_expr+0xb9e>
quickjs-nuttx/quickjs.c:24613
                switch(opcode = get_prev_opcode(fd)) {
    8003244c:	854e                	mv	a0,s3
    8003244e:	adbd50ef          	jal	ra,80007f28 <get_prev_opcode>
    80032452:	0ba00793          	li	a5,186
    80032456:	84aa                	mv	s1,a0
    80032458:	18f50b63          	beq	a0,a5,800325ee <js_parse_postfix_expr+0xb20>
    8003245c:	06a7ca63          	blt	a5,a0,800324d0 <js_parse_postfix_expr+0xa02>
    80032460:	04700713          	li	a4,71
    80032464:	10e50963          	beq	a0,a4,80032576 <js_parse_postfix_expr+0xaa8>
    80032468:	04a00793          	li	a5,74
    8003246c:	1ef50863          	beq	a0,a5,8003265c <js_parse_postfix_expr+0xb8e>
    80032470:	04100793          	li	a5,65
    80032474:	08f50263          	beq	a0,a5,800324f8 <js_parse_postfix_expr+0xa2a>
    80032478:	4605                	li	a2,1
    8003247a:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:24704
                if (has_optional_chain) {
    8003247c:	000a8663          	beqz	s5,80032488 <js_parse_postfix_expr+0x9ba>
quickjs-nuttx/quickjs.c:24705
                    optional_chain_test(s, &optional_chaining_label,
    80032480:	086c                	addi	a1,sp,28
    80032482:	8522                	mv	a0,s0
    80032484:	d8fea0ef          	jal	ra,8001d212 <optional_chain_test>
quickjs-nuttx/quickjs.c:24712
            if (call_type == FUNC_CALL_TEMPLATE) {
    80032488:	478d                	li	a5,3
    8003248a:	1ef91163          	bne	s2,a5,8003266c <js_parse_postfix_expr+0xb9e>
quickjs-nuttx/quickjs.c:24713
                if (js_parse_template(s, 1, &arg_count))
    8003248e:	1010                	addi	a2,sp,32
    80032490:	4585                	li	a1,1
    80032492:	8522                	mv	a0,s0
    80032494:	bd8ff0ef          	jal	ra,8003186c <js_parse_template>
    80032498:	840518e3          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24851
                switch(opcode) {
    8003249c:	04100793          	li	a5,65
    800324a0:	40f48b63          	beq	s1,a5,800328b6 <js_parse_postfix_expr+0xde8>
    800324a4:	6097c063          	blt	a5,s1,80032aa4 <js_parse_postfix_expr+0xfd6>
    800324a8:	03100793          	li	a5,49
    800324ac:	42f49263          	bne	s1,a5,800328d0 <js_parse_postfix_expr+0xe02>
quickjs-nuttx/quickjs.c:24860
                    emit_op(s, OP_eval);
    800324b0:	8522                	mv	a0,s0
    800324b2:	03100593          	li	a1,49
    800324b6:	c41d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24861
                    emit_u16(s, arg_count);
    800324ba:	02015583          	lhu	a1,32(sp)
    800324be:	8522                	mv	a0,s0
    800324c0:	b05d60ef          	jal	ra,80008fc4 <emit_u16>
    800324c4:	a669                	j	8003284e <js_parse_postfix_expr+0xd80>
quickjs-nuttx/quickjs.c:24588
            has_optional_chain = TRUE;
    800324c6:	8ad2                	mv	s5,s4
    800324c8:	bf95                	j	8003243c <js_parse_postfix_expr+0x96e>
quickjs-nuttx/quickjs.c:24582
        BOOL has_optional_chain = FALSE;
    800324ca:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:24601
            call_type = FUNC_CALL_TEMPLATE;
    800324cc:	490d                	li	s2,3
    800324ce:	bfbd                	j	8003244c <js_parse_postfix_expr+0x97e>
quickjs-nuttx/quickjs.c:24613
                switch(opcode = get_prev_opcode(fd)) {
    800324d0:	0c500793          	li	a5,197
    800324d4:	02f50d63          	beq	a0,a5,8003250e <js_parse_postfix_expr+0xa40>
    800324d8:	0c600793          	li	a5,198
    800324dc:	0af50563          	beq	a0,a5,80032586 <js_parse_postfix_expr+0xab8>
    800324e0:	0c100793          	li	a5,193
    800324e4:	f8f51ae3          	bne	a0,a5,80032478 <js_parse_postfix_expr+0x9aa>
quickjs-nuttx/quickjs.c:24640
                    fd->byte_code.buf[fd->last_opcode_pos] = OP_scope_get_private_field2;
    800324e8:	1609a703          	lw	a4,352(s3) # ffffffff80000160 <_ebss+0xfffffffeffefeffa>
    800324ec:	1309b783          	ld	a5,304(s3)
    800324f0:	97ba                	add	a5,a5,a4
    800324f2:	fc200713          	li	a4,-62
    800324f6:	a801                	j	80032506 <js_parse_postfix_expr+0xa38>
quickjs-nuttx/quickjs.c:24616
                    fd->byte_code.buf[fd->last_opcode_pos] = OP_get_field2;
    800324f8:	1609a703          	lw	a4,352(s3)
    800324fc:	1309b783          	ld	a5,304(s3)
    80032500:	97ba                	add	a5,a5,a4
    80032502:	04200713          	li	a4,66
quickjs-nuttx/quickjs.c:24640
                    fd->byte_code.buf[fd->last_opcode_pos] = OP_scope_get_private_field2;
    80032506:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:24641
                    drop_count = 2;
    8003250a:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:24642
                    break;
    8003250c:	bf85                	j	8003247c <js_parse_postfix_expr+0x9ae>
quickjs-nuttx/quickjs.c:24623
                                                  fd->last_opcode_pos + 1 + 4 + 1);
    8003250e:	1609a703          	lw	a4,352(s3)
quickjs-nuttx/quickjs.c:24622
                        opt_chain_label = get_u32(fd->byte_code.buf +
    80032512:	1309b783          	ld	a5,304(s3)
quickjs-nuttx/quickjs.c:24627
                        next_label = emit_goto(s, OP_goto, -1);
    80032516:	567d                	li	a2,-1
    80032518:	06c00593          	li	a1,108
get_u32():
quickjs-nuttx/cutils.h:170
    8003251c:	97ba                	add	a5,a5,a4
    8003251e:	0077c703          	lbu	a4,7(a5)
    80032522:	0067c483          	lbu	s1,6(a5)
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24627
    80032526:	8522                	mv	a0,s0
get_u32():
quickjs-nuttx/cutils.h:170
    80032528:	0722                	slli	a4,a4,0x8
    8003252a:	8f45                	or	a4,a4,s1
    8003252c:	0087c483          	lbu	s1,8(a5)
    80032530:	04c2                	slli	s1,s1,0x10
    80032532:	8f45                	or	a4,a4,s1
    80032534:	0097c483          	lbu	s1,9(a5)
    80032538:	04e2                	slli	s1,s1,0x18
    8003253a:	8cd9                	or	s1,s1,a4
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24625
                        fd->byte_code.buf[fd->last_opcode_pos] = OP_get_field2;
    8003253c:	04200713          	li	a4,66
    80032540:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:24626
                        fd->byte_code.size = fd->last_opcode_pos + 1 + 4;
    80032544:	1609a783          	lw	a5,352(s3)
quickjs-nuttx/quickjs.c:24622
                        opt_chain_label = get_u32(fd->byte_code.buf +
    80032548:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:24626
                        fd->byte_code.size = fd->last_opcode_pos + 1 + 4;
    8003254a:	2795                	addiw	a5,a5,5
    8003254c:	12f9bc23          	sd	a5,312(s3)
quickjs-nuttx/quickjs.c:24627
                        next_label = emit_goto(s, OP_goto, -1);
    80032550:	a25ea0ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:24628
                        emit_label(s, opt_chain_label);
    80032554:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:24627
                        next_label = emit_goto(s, OP_goto, -1);
    80032556:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:24628
                        emit_label(s, opt_chain_label);
    80032558:	8522                	mv	a0,s0
    8003255a:	d3bd60ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24632
                        emit_op(s, OP_undefined);
    8003255e:	4599                	li	a1,6
    80032560:	8522                	mv	a0,s0
    80032562:	b95d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24633
                        emit_label(s, next_label);
    80032566:	85e2                	mv	a1,s8
    80032568:	8522                	mv	a0,s0
    8003256a:	d2bd60ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24634
                        drop_count = 2;
    8003256e:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:24635
                        opcode = OP_get_field;
    80032570:	04100493          	li	s1,65
quickjs-nuttx/quickjs.c:24637
                    break;
    80032574:	b721                	j	8003247c <js_parse_postfix_expr+0x9ae>
quickjs-nuttx/quickjs.c:24645
                    fd->byte_code.buf[fd->last_opcode_pos] = OP_get_array_el2;
    80032576:	1609a703          	lw	a4,352(s3)
    8003257a:	1309b783          	ld	a5,304(s3)
    8003257e:	97ba                	add	a5,a5,a4
    80032580:	04800713          	li	a4,72
    80032584:	b749                	j	80032506 <js_parse_postfix_expr+0xa38>
quickjs-nuttx/quickjs.c:24652
                                                  fd->last_opcode_pos + 1 + 1);
    80032586:	1609a703          	lw	a4,352(s3)
quickjs-nuttx/quickjs.c:24651
                        opt_chain_label = get_u32(fd->byte_code.buf +
    8003258a:	1309b783          	ld	a5,304(s3)
quickjs-nuttx/quickjs.c:24656
                        next_label = emit_goto(s, OP_goto, -1);
    8003258e:	567d                	li	a2,-1
    80032590:	06c00593          	li	a1,108
get_u32():
quickjs-nuttx/cutils.h:170
    80032594:	97ba                	add	a5,a5,a4
    80032596:	0037c703          	lbu	a4,3(a5)
    8003259a:	0027c483          	lbu	s1,2(a5)
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24656
    8003259e:	8522                	mv	a0,s0
get_u32():
quickjs-nuttx/cutils.h:170
    800325a0:	0722                	slli	a4,a4,0x8
    800325a2:	8f45                	or	a4,a4,s1
    800325a4:	0047c483          	lbu	s1,4(a5)
    800325a8:	04c2                	slli	s1,s1,0x10
    800325aa:	8f45                	or	a4,a4,s1
    800325ac:	0057c483          	lbu	s1,5(a5)
    800325b0:	04e2                	slli	s1,s1,0x18
    800325b2:	8cd9                	or	s1,s1,a4
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24654
                        fd->byte_code.buf[fd->last_opcode_pos] = OP_get_array_el2;
    800325b4:	04800713          	li	a4,72
    800325b8:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:24655
                        fd->byte_code.size = fd->last_opcode_pos + 1;
    800325bc:	1609a783          	lw	a5,352(s3)
quickjs-nuttx/quickjs.c:24651
                        opt_chain_label = get_u32(fd->byte_code.buf +
    800325c0:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:24655
                        fd->byte_code.size = fd->last_opcode_pos + 1;
    800325c2:	2785                	addiw	a5,a5,1
    800325c4:	12f9bc23          	sd	a5,312(s3)
quickjs-nuttx/quickjs.c:24656
                        next_label = emit_goto(s, OP_goto, -1);
    800325c8:	9adea0ef          	jal	ra,8001cf74 <emit_goto>
    800325cc:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:24657
                        emit_label(s, opt_chain_label);
    800325ce:	85a6                	mv	a1,s1
    800325d0:	8522                	mv	a0,s0
    800325d2:	cc3d60ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24661
                        emit_op(s, OP_undefined);
    800325d6:	4599                	li	a1,6
    800325d8:	8522                	mv	a0,s0
    800325da:	b1dd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24662
                        emit_label(s, next_label);
    800325de:	85e2                	mv	a1,s8
    800325e0:	8522                	mv	a0,s0
    800325e2:	cb3d60ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:24697
                    drop_count = 2;
    800325e6:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:24696
                    opcode = OP_get_array_el;
    800325e8:	04700493          	li	s1,71
quickjs-nuttx/quickjs.c:24698
                    break;
    800325ec:	bd41                	j	8003247c <js_parse_postfix_expr+0x9ae>
quickjs-nuttx/quickjs.c:24671
                        name = get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    800325ee:	1309b703          	ld	a4,304(s3)
    800325f2:	1609a783          	lw	a5,352(s3)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    800325f6:	97ba                	add	a5,a5,a4
    800325f8:	0067c703          	lbu	a4,6(a5)
    800325fc:	0057c683          	lbu	a3,5(a5)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80032600:	0027c603          	lbu	a2,2(a5)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    80032604:	0722                	slli	a4,a4,0x8
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24672
                        scope = get_u16(fd->byte_code.buf + fd->last_opcode_pos + 5);
    80032606:	8f55                	or	a4,a4,a3
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80032608:	0017c683          	lbu	a3,1(a5)
    8003260c:	0622                	slli	a2,a2,0x8
    8003260e:	8e55                	or	a2,a2,a3
    80032610:	0037c683          	lbu	a3,3(a5)
    80032614:	06c2                	slli	a3,a3,0x10
    80032616:	8e55                	or	a2,a2,a3
    80032618:	0047c683          	lbu	a3,4(a5)
    8003261c:	06e2                	slli	a3,a3,0x18
    8003261e:	8ed1                	or	a3,a3,a2
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24673
                        if (name == JS_ATOM_eval && call_type == FUNC_CALL_NORMAL && !has_optional_chain) {
    80032620:	2681                	sext.w	a3,a3
    80032622:	03b00613          	li	a2,59
    80032626:	00c69763          	bne	a3,a2,80032634 <js_parse_postfix_expr+0xb66>
    8003262a:	012ae6b3          	or	a3,s5,s2
    8003262e:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:24673 (discriminator 1)
    80032630:	0c068c63          	beqz	a3,80032708 <js_parse_postfix_expr+0xc3a>
    80032634:	86ce                	mv	a3,s3
has_with_scope():
quickjs-nuttx/quickjs.c:23479
        int scope_idx = s->scopes[scope_level].first;
    80032636:	7af0                	ld	a2,240(a3)
    80032638:	070e                	slli	a4,a4,0x3
    8003263a:	9732                	add	a4,a4,a2
    8003263c:	4358                	lw	a4,4(a4)
quickjs-nuttx/quickjs.c:23480
        while (scope_idx >= 0) {
    8003263e:	00075763          	bgez	a4,8003264c <js_parse_postfix_expr+0xb7e>
quickjs-nuttx/quickjs.c:23488
        scope_level = s->parent_scope_level;
    80032642:	4ad8                	lw	a4,20(a3)
quickjs-nuttx/quickjs.c:23489
        s = s->parent;
    80032644:	6694                	ld	a3,8(a3)
quickjs-nuttx/quickjs.c:23478
    while (s) {
    80032646:	fae5                	bnez	a3,80032636 <js_parse_postfix_expr+0xb68>
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24690
                        drop_count = 1;
    80032648:	4605                	li	a2,1
    8003264a:	bd0d                	j	8003247c <js_parse_postfix_expr+0x9ae>
has_with_scope():
quickjs-nuttx/quickjs.c:23481
            JSVarDef *vd = &s->vars[scope_idx];
    8003264c:	6ad0                	ld	a2,144(a3)
    8003264e:	0712                	slli	a4,a4,0x4
    80032650:	9732                	add	a4,a4,a2
quickjs-nuttx/quickjs.c:23483
            if (vd->var_name == JS_ATOM__with_)
    80032652:	4310                	lw	a2,0(a4)
    80032654:	41760663          	beq	a2,s7,80032a60 <js_parse_postfix_expr+0xf92>
quickjs-nuttx/quickjs.c:23485
            scope_idx = vd->scope_next;
    80032658:	4718                	lw	a4,8(a4)
    8003265a:	b7d5                	j	8003263e <js_parse_postfix_expr+0xb70>
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24694
                    fd->byte_code.buf[fd->last_opcode_pos] = OP_get_array_el;
    8003265c:	1609a683          	lw	a3,352(s3)
    80032660:	1309b783          	ld	a5,304(s3)
    80032664:	97b6                	add	a5,a5,a3
    80032666:	00e78023          	sb	a4,0(a5)
    8003266a:	bfb5                	j	800325e6 <js_parse_postfix_expr+0xb18>
quickjs-nuttx/quickjs.c:24716
            } else if (call_type == FUNC_CALL_SUPER_CTOR) {
    8003266c:	4789                	li	a5,2
    8003266e:	08f91563          	bne	s2,a5,800326f8 <js_parse_postfix_expr+0xc2a>
quickjs-nuttx/quickjs.c:24717
                emit_op(s, OP_scope_get_var);
    80032672:	0ba00593          	li	a1,186
    80032676:	8522                	mv	a0,s0
    80032678:	a7fd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24718
                emit_atom(s, JS_ATOM_this_active_func);
    8003267c:	07300593          	li	a1,115
    80032680:	8522                	mv	a0,s0
    80032682:	aa9d80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24719
                emit_u16(s, 0);
    80032686:	4581                	li	a1,0
    80032688:	8522                	mv	a0,s0
    8003268a:	93bd60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24721
                emit_op(s, OP_get_super);
    8003268e:	03400593          	li	a1,52
    80032692:	8522                	mv	a0,s0
    80032694:	a63d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24723
                emit_op(s, OP_scope_get_var);
    80032698:	0ba00593          	li	a1,186
    8003269c:	8522                	mv	a0,s0
    8003269e:	a59d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24724
                emit_atom(s, JS_ATOM_new_target);
    800326a2:	07200593          	li	a1,114
    800326a6:	8522                	mv	a0,s0
    800326a8:	a83d80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24725
                emit_u16(s, 0);
    800326ac:	4581                	li	a1,0
    800326ae:	8522                	mv	a0,s0
    800326b0:	915d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24731
            arg_count = 0;
    800326b4:	d002                	sw	zero,32(sp)
quickjs-nuttx/quickjs.c:24732
            while (s->token.val != ')') {
    800326b6:	02900a93          	li	s5,41
quickjs-nuttx/quickjs.c:24736
                if (s->token.val == TOK_ELLIPSIS)
    800326ba:	fa700c13          	li	s8,-89
quickjs-nuttx/quickjs.c:24732
            while (s->token.val != ')') {
    800326be:	4c1c                	lw	a5,24(s0)
    800326c0:	05579a63          	bne	a5,s5,80032714 <js_parse_postfix_expr+0xc46>
quickjs-nuttx/quickjs.c:24848
                if (next_token(s))
    800326c4:	8522                	mv	a0,s0
    800326c6:	ec1fb0ef          	jal	ra,8002e586 <next_token>
    800326ca:	e0051f63          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24851
                switch(opcode) {
    800326ce:	04100793          	li	a5,65
    800326d2:	1ef48263          	beq	s1,a5,800328b6 <js_parse_postfix_expr+0xde8>
    800326d6:	1c97c463          	blt	a5,s1,8003289e <js_parse_postfix_expr+0xdd0>
    800326da:	03100793          	li	a5,49
    800326de:	dcf489e3          	beq	s1,a5,800324b0 <js_parse_postfix_expr+0x9e2>
quickjs-nuttx/quickjs.c:24866
                    if (call_type == FUNC_CALL_SUPER_CTOR) {
    800326e2:	4789                	li	a5,2
    800326e4:	1ef91163          	bne	s2,a5,800328c6 <js_parse_postfix_expr+0xdf8>
quickjs-nuttx/quickjs.c:24867
                        emit_op(s, OP_call_constructor);
    800326e8:	02100593          	li	a1,33
    800326ec:	8522                	mv	a0,s0
    800326ee:	a09d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24868
                        emit_u16(s, arg_count);
    800326f2:	02015583          	lhu	a1,32(sp)
    800326f6:	a0d5                	j	800327da <js_parse_postfix_expr+0xd0c>
quickjs-nuttx/quickjs.c:24726
            } else if (call_type == FUNC_CALL_NEW) {
    800326f8:	4785                	li	a5,1
    800326fa:	00f91b63          	bne	s2,a5,80032710 <js_parse_postfix_expr+0xc42>
quickjs-nuttx/quickjs.c:24727
                emit_op(s, OP_dup); /* new.target = function */
    800326fe:	45c5                	li	a1,17
    80032700:	8522                	mv	a0,s0
    80032702:	9f5d60ef          	jal	ra,800090f6 <emit_op>
    80032706:	b77d                	j	800326b4 <js_parse_postfix_expr+0xbe6>
    80032708:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:24675
                            opcode = OP_eval;
    8003270a:	03100493          	li	s1,49
    8003270e:	b75d                	j	800326b4 <js_parse_postfix_expr+0xbe6>
    80032710:	4901                	li	s2,0
    80032712:	b74d                	j	800326b4 <js_parse_postfix_expr+0xbe6>
quickjs-nuttx/quickjs.c:24733
                if (arg_count >= 65535) {
    80032714:	5702                	lw	a4,32(sp)
    80032716:	00eb5763          	bge	s6,a4,80032724 <js_parse_postfix_expr+0xc56>
quickjs-nuttx/quickjs.c:24734
                    return js_parse_error(s, "Too many call arguments");
    8003271a:	0003a597          	auipc	a1,0x3a
    8003271e:	ce658593          	addi	a1,a1,-794 # 8006c400 <qjsc_repl+0x6e50>
    80032722:	b301                	j	80032422 <js_parse_postfix_expr+0x954>
quickjs-nuttx/quickjs.c:24736
                if (s->token.val == TOK_ELLIPSIS)
    80032724:	39878d63          	beq	a5,s8,80032abe <js_parse_postfix_expr+0xff0>
quickjs-nuttx/quickjs.c:24738
                if (js_parse_assign_expr(s))
    80032728:	8522                	mv	a0,s0
    8003272a:	0ad020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003272e:	da051d63          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24740
                arg_count++;
    80032732:	5782                	lw	a5,32(sp)
    80032734:	2785                	addiw	a5,a5,1
    80032736:	d03e                	sw	a5,32(sp)
quickjs-nuttx/quickjs.c:24741
                if (s->token.val == ')')
    80032738:	4c1c                	lw	a5,24(s0)
    8003273a:	f95785e3          	beq	a5,s5,800326c4 <js_parse_postfix_expr+0xbf6>
quickjs-nuttx/quickjs.c:24744
                if (js_parse_expect(s, ','))
    8003273e:	02c00593          	li	a1,44
    80032742:	8522                	mv	a0,s0
    80032744:	86ffc0ef          	jal	ra,8002efb2 <js_parse_expect>
    80032748:	d93d                	beqz	a0,800326be <js_parse_postfix_expr+0xbf0>
    8003274a:	d9eff06f          	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24789
                        if (js_parse_assign_expr(s))
    8003274e:	089020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    80032752:	d8051b63          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24792
                        emit_op(s, OP_define_array_el);
    80032756:	05100593          	li	a1,81
    8003275a:	8522                	mv	a0,s0
    8003275c:	99bd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24793
                        emit_op(s, OP_inc);
    80032760:	09000593          	li	a1,144
    80032764:	a80d                	j	80032796 <js_parse_postfix_expr+0xcc8>
quickjs-nuttx/quickjs.c:24798
                    if (js_parse_expect(s, ','))
    80032766:	02c00593          	li	a1,44
    8003276a:	8522                	mv	a0,s0
    8003276c:	847fc0ef          	jal	ra,8002efb2 <js_parse_expect>
    80032770:	d6051c63          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24754
                while (s->token.val != ')') {
    80032774:	4c1c                	lw	a5,24(s0)
    80032776:	03578663          	beq	a5,s5,800327a2 <js_parse_postfix_expr+0xcd4>
quickjs-nuttx/quickjs.c:24756
                        if (next_token(s))
    8003277a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24755
                    if (s->token.val == TOK_ELLIPSIS) {
    8003277c:	fd8799e3          	bne	a5,s8,8003274e <js_parse_postfix_expr+0xc80>
quickjs-nuttx/quickjs.c:24756
                        if (next_token(s))
    80032780:	e07fb0ef          	jal	ra,8002e586 <next_token>
    80032784:	d6051263          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24758
                        if (js_parse_assign_expr(s))
    80032788:	8522                	mv	a0,s0
    8003278a:	04d020ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003278e:	d4051d63          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24762
                        emit_op(s, OP_append);
    80032792:	05200593          	li	a1,82
quickjs-nuttx/quickjs.c:24793
                        emit_op(s, OP_inc);
    80032796:	8522                	mv	a0,s0
    80032798:	95fd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24795
                    if (s->token.val == ')')
    8003279c:	4c1c                	lw	a5,24(s0)
    8003279e:	fd5794e3          	bne	a5,s5,80032766 <js_parse_postfix_expr+0xc98>
quickjs-nuttx/quickjs.c:24801
                if (next_token(s))
    800327a2:	8522                	mv	a0,s0
    800327a4:	de3fb0ef          	jal	ra,8002e586 <next_token>
    800327a8:	d4051063          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24804
                emit_op(s, OP_drop);
    800327ac:	45b9                	li	a1,14
    800327ae:	8522                	mv	a0,s0
    800327b0:	947d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24807
                switch(opcode) {
    800327b4:	04100793          	li	a5,65
    800327b8:	06f48563          	beq	s1,a5,80032822 <js_parse_postfix_expr+0xd54>
    800327bc:	0497c763          	blt	a5,s1,8003280a <js_parse_postfix_expr+0xd3c>
    800327c0:	03100793          	li	a5,49
    800327c4:	08f48063          	beq	s1,a5,80032844 <js_parse_postfix_expr+0xd76>
quickjs-nuttx/quickjs.c:24823
                    if (call_type == FUNC_CALL_SUPER_CTOR) {
    800327c8:	4789                	li	a5,2
    800327ca:	08f91d63          	bne	s2,a5,80032864 <js_parse_postfix_expr+0xd96>
quickjs-nuttx/quickjs.c:24824
                        emit_op(s, OP_apply);
    800327ce:	02700593          	li	a1,39
    800327d2:	8522                	mv	a0,s0
    800327d4:	923d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24825
                        emit_u16(s, 1);
    800327d8:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:24868
                        emit_u16(s, arg_count);
    800327da:	8522                	mv	a0,s0
    800327dc:	fe8d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24871
                        emit_op(s, OP_dup);
    800327e0:	8522                	mv	a0,s0
    800327e2:	45c5                	li	a1,17
    800327e4:	913d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24872
                        emit_op(s, OP_scope_put_var_init);
    800327e8:	8522                	mv	a0,s0
    800327ea:	0bf00593          	li	a1,191
    800327ee:	909d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24873
                        emit_atom(s, JS_ATOM_this);
    800327f2:	8522                	mv	a0,s0
    800327f4:	45a1                	li	a1,8
    800327f6:	935d80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24874
                        emit_u16(s, 0);
    800327fa:	8522                	mv	a0,s0
    800327fc:	4581                	li	a1,0
    800327fe:	fc6d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24876
                        emit_class_field_init(s);
    80032802:	8522                	mv	a0,s0
    80032804:	fccea0ef          	jal	ra,8001cfd0 <emit_class_field_init>
    80032808:	a899                	j	8003285e <js_parse_postfix_expr+0xd90>
quickjs-nuttx/quickjs.c:24807
                switch(opcode) {
    8003280a:	0be00793          	li	a5,190
    8003280e:	00f48a63          	beq	s1,a5,80032822 <js_parse_postfix_expr+0xd54>
    80032812:	0c100793          	li	a5,193
    80032816:	00f48663          	beq	s1,a5,80032822 <js_parse_postfix_expr+0xd54>
    8003281a:	04700793          	li	a5,71
    8003281e:	faf495e3          	bne	s1,a5,800327c8 <js_parse_postfix_expr+0xcfa>
quickjs-nuttx/quickjs.c:24813
                    emit_op(s, OP_perm3);
    80032822:	45e1                	li	a1,24
    80032824:	8522                	mv	a0,s0
    80032826:	8d1d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24814
                    emit_op(s, OP_apply);
    8003282a:	02700593          	li	a1,39
    8003282e:	8522                	mv	a0,s0
    80032830:	8c7d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24815
                    emit_u16(s, call_type == FUNC_CALL_NEW);
    80032834:	fff90593          	addi	a1,s2,-1
    80032838:	0015b593          	seqz	a1,a1
quickjs-nuttx/quickjs.c:24882
                        emit_u16(s, arg_count);
    8003283c:	8522                	mv	a0,s0
    8003283e:	f86d60ef          	jal	ra,80008fc4 <emit_u16>
    80032842:	a831                	j	8003285e <js_parse_postfix_expr+0xd90>
quickjs-nuttx/quickjs.c:24818
                    emit_op(s, OP_apply_eval);
    80032844:	03200593          	li	a1,50
    80032848:	8522                	mv	a0,s0
    8003284a:	8add60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24862
                    emit_u16(s, fd->scope_level);
    8003284e:	0e09d583          	lhu	a1,224(s3)
    80032852:	8522                	mv	a0,s0
    80032854:	f70d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24863
                    fd->has_eval_call = TRUE;
    80032858:	4785                	li	a5,1
    8003285a:	04f9ae23          	sw	a5,92(s3)
quickjs-nuttx/quickjs.c:24887 (discriminator 7)
            call_type = FUNC_CALL_NORMAL;
    8003285e:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:24603 (discriminator 7)
        } else if (s->token.val == '(' && accept_lparen) {
    80032860:	bd8ff06f          	j	80031c38 <js_parse_postfix_expr+0x16a>
quickjs-nuttx/quickjs.c:24833
                    } else if (call_type == FUNC_CALL_NEW) {
    80032864:	4785                	li	a5,1
    80032866:	00f91d63          	bne	s2,a5,80032880 <js_parse_postfix_expr+0xdb2>
quickjs-nuttx/quickjs.c:24835
                        emit_op(s, OP_perm3);
    8003286a:	45e1                	li	a1,24
    8003286c:	8522                	mv	a0,s0
    8003286e:	889d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24836
                        emit_op(s, OP_apply);
    80032872:	02700593          	li	a1,39
    80032876:	8522                	mv	a0,s0
    80032878:	87fd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24837
                        emit_u16(s, 1);
    8003287c:	4585                	li	a1,1
    8003287e:	bf7d                	j	8003283c <js_parse_postfix_expr+0xd6e>
quickjs-nuttx/quickjs.c:24840
                        emit_op(s, OP_undefined);
    80032880:	4599                	li	a1,6
    80032882:	8522                	mv	a0,s0
    80032884:	873d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24841
                        emit_op(s, OP_swap);
    80032888:	45ed                	li	a1,27
    8003288a:	8522                	mv	a0,s0
    8003288c:	86bd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24842
                        emit_op(s, OP_apply);
    80032890:	02700593          	li	a1,39
    80032894:	8522                	mv	a0,s0
    80032896:	861d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24843
                        emit_u16(s, 0);
    8003289a:	4581                	li	a1,0
    8003289c:	b745                	j	8003283c <js_parse_postfix_expr+0xd6e>
quickjs-nuttx/quickjs.c:24851
                switch(opcode) {
    8003289e:	0be00793          	li	a5,190
    800328a2:	00f48a63          	beq	s1,a5,800328b6 <js_parse_postfix_expr+0xde8>
    800328a6:	0c100793          	li	a5,193
    800328aa:	00f48663          	beq	s1,a5,800328b6 <js_parse_postfix_expr+0xde8>
    800328ae:	04700793          	li	a5,71
    800328b2:	e2f498e3          	bne	s1,a5,800326e2 <js_parse_postfix_expr+0xc14>
quickjs-nuttx/quickjs.c:24856
                    emit_op(s, OP_call_method);
    800328b6:	02400593          	li	a1,36
quickjs-nuttx/quickjs.c:24881
                        emit_op(s, OP_call);
    800328ba:	8522                	mv	a0,s0
    800328bc:	83bd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24882
                        emit_u16(s, arg_count);
    800328c0:	02015583          	lhu	a1,32(sp)
    800328c4:	bfa5                	j	8003283c <js_parse_postfix_expr+0xd6e>
quickjs-nuttx/quickjs.c:24877
                    } else if (call_type == FUNC_CALL_NEW) {
    800328c6:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:24878
                        emit_op(s, OP_call_constructor);
    800328c8:	02100593          	li	a1,33
quickjs-nuttx/quickjs.c:24877
                    } else if (call_type == FUNC_CALL_NEW) {
    800328cc:	fef907e3          	beq	s2,a5,800328ba <js_parse_postfix_expr+0xdec>
quickjs-nuttx/quickjs.c:24881
                        emit_op(s, OP_call);
    800328d0:	02200593          	li	a1,34
    800328d4:	b7dd                	j	800328ba <js_parse_postfix_expr+0xdec>
quickjs-nuttx/quickjs.c:24888
        } else if (s->token.val == '.') {
    800328d6:	02e00713          	li	a4,46
    800328da:	0ae79f63          	bne	a5,a4,80032998 <js_parse_postfix_expr+0xeca>
quickjs-nuttx/quickjs.c:24889
            if (next_token(s))
    800328de:	8522                	mv	a0,s0
    800328e0:	ca7fb0ef          	jal	ra,8002e586 <next_token>
    800328e4:	84aa                	mv	s1,a0
    800328e6:	b6050c63          	beqz	a0,80031c5e <js_parse_postfix_expr+0x190>
    800328ea:	bfeff06f          	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24897
                if (has_optional_chain) {
    800328ee:	c491                	beqz	s1,800328fa <js_parse_postfix_expr+0xe2c>
quickjs-nuttx/quickjs.c:24898
                    optional_chain_test(s, &optional_chaining_label, 1);
    800328f0:	4605                	li	a2,1
    800328f2:	086c                	addi	a1,sp,28
    800328f4:	8522                	mv	a0,s0
    800328f6:	91dea0ef          	jal	ra,8001d212 <optional_chain_test>
quickjs-nuttx/quickjs.c:24900
                emit_op(s, OP_scope_get_private_field);
    800328fa:	0c100593          	li	a1,193
    800328fe:	8522                	mv	a0,s0
    80032900:	ff6d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24901
                emit_atom(s, s->token.u.ident.atom);
    80032904:	540c                	lw	a1,40(s0)
    80032906:	8522                	mv	a0,s0
    80032908:	823d80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:24902
                emit_u16(s, s->cur_func->scope_level);
    8003290c:	743c                	ld	a5,104(s0)
    8003290e:	8522                	mv	a0,s0
    80032910:	0e07d583          	lhu	a1,224(a5)
    80032914:	eb0d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24924
            if (next_token(s))
    80032918:	8522                	mv	a0,s0
    8003291a:	c6dfb0ef          	jal	ra,8002e586 <next_token>
    8003291e:	b0050d63          	beqz	a0,80031c38 <js_parse_postfix_expr+0x16a>
    80032922:	bc6ff06f          	j	80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24904
                if (!token_is_ident(s->token.val)) {
    80032926:	e9ad50ef          	jal	ra,80007fc0 <token_is_ident>
    8003292a:	e511                	bnez	a0,80032936 <js_parse_postfix_expr+0xe68>
quickjs-nuttx/quickjs.c:24905
                    return js_parse_error(s, "expecting field name");
    8003292c:	0003a597          	auipc	a1,0x3a
    80032930:	b1c58593          	addi	a1,a1,-1252 # 8006c448 <qjsc_repl+0x6e98>
    80032934:	b4fd                	j	80032422 <js_parse_postfix_expr+0x954>
quickjs-nuttx/quickjs.c:24907
                if (get_prev_opcode(fd) == OP_get_super) {
    80032936:	854e                	mv	a0,s3
    80032938:	df0d50ef          	jal	ra,80007f28 <get_prev_opcode>
    8003293c:	03400793          	li	a5,52
    80032940:	02f51c63          	bne	a0,a5,80032978 <js_parse_postfix_expr+0xeaa>
quickjs-nuttx/quickjs.c:24910
                    val = JS_AtomToValue(s->ctx, s->token.u.ident.atom);
    80032944:	540c                	lw	a1,40(s0)
    80032946:	6008                	ld	a0,0(s0)
    80032948:	980ed0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    8003294c:	862e                	mv	a2,a1
    8003294e:	f02a                	sd	a0,32(sp)
    80032950:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:24911
                    ret = emit_push_const(s, val, 1);
    80032952:	4685                	li	a3,1
    80032954:	85aa                	mv	a1,a0
    80032956:	8522                	mv	a0,s0
    80032958:	ac1ea0ef          	jal	ra,8001d418 <emit_push_const>
    8003295c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:24912
                    JS_FreeValue(s->ctx, val);
    8003295e:	7582                	ld	a1,32(sp)
    80032960:	7622                	ld	a2,40(sp)
    80032962:	6008                	ld	a0,0(s0)
    80032964:	e3bd80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:24913
                    if (ret)
    80032968:	b8049063          	bnez	s1,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24915
                    emit_op(s, OP_get_super_value);
    8003296c:	04a00593          	li	a1,74
    80032970:	8522                	mv	a0,s0
    80032972:	f84d60ef          	jal	ra,800090f6 <emit_op>
    80032976:	b74d                	j	80032918 <js_parse_postfix_expr+0xe4a>
quickjs-nuttx/quickjs.c:24917
                    if (has_optional_chain) {
    80032978:	c491                	beqz	s1,80032984 <js_parse_postfix_expr+0xeb6>
quickjs-nuttx/quickjs.c:24918
                        optional_chain_test(s, &optional_chaining_label, 1);
    8003297a:	4605                	li	a2,1
    8003297c:	086c                	addi	a1,sp,28
    8003297e:	8522                	mv	a0,s0
    80032980:	893ea0ef          	jal	ra,8001d212 <optional_chain_test>
quickjs-nuttx/quickjs.c:24920
                    emit_op(s, OP_get_field);
    80032984:	8522                	mv	a0,s0
    80032986:	04100593          	li	a1,65
    8003298a:	f6cd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24921
                    emit_atom(s, s->token.u.ident.atom);
    8003298e:	540c                	lw	a1,40(s0)
    80032990:	8522                	mv	a0,s0
    80032992:	f98d80ef          	jal	ra,8000b12a <emit_atom>
    80032996:	b749                	j	80032918 <js_parse_postfix_expr+0xe4a>
quickjs-nuttx/quickjs.c:24926
        } else if (s->token.val == '[') {
    80032998:	05b00713          	li	a4,91
    8003299c:	04e79c63          	bne	a5,a4,800329f4 <js_parse_postfix_expr+0xf26>
quickjs-nuttx/quickjs.c:24582
        BOOL has_optional_chain = FALSE;
    800329a0:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:24930
            prev_op = get_prev_opcode(fd);
    800329a2:	854e                	mv	a0,s3
    800329a4:	d84d50ef          	jal	ra,80007f28 <get_prev_opcode>
    800329a8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:24931
            if (has_optional_chain) {
    800329aa:	000a8763          	beqz	s5,800329b8 <js_parse_postfix_expr+0xeea>
quickjs-nuttx/quickjs.c:24932
                optional_chain_test(s, &optional_chaining_label, 1);
    800329ae:	4605                	li	a2,1
    800329b0:	086c                	addi	a1,sp,28
    800329b2:	8522                	mv	a0,s0
    800329b4:	85fea0ef          	jal	ra,8001d212 <optional_chain_test>
quickjs-nuttx/quickjs.c:24934
            if (next_token(s))
    800329b8:	8522                	mv	a0,s0
    800329ba:	bcdfb0ef          	jal	ra,8002e586 <next_token>
    800329be:	b2051563          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24936
            if (js_parse_expr(s))
    800329c2:	8522                	mv	a0,s0
    800329c4:	358020ef          	jal	ra,80034d1c <js_parse_expr>
    800329c8:	b2051063          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24938
            if (js_parse_expect(s, ']'))
    800329cc:	05d00593          	li	a1,93
    800329d0:	8522                	mv	a0,s0
    800329d2:	de0fc0ef          	jal	ra,8002efb2 <js_parse_expect>
    800329d6:	b0051963          	bnez	a0,80031ce8 <js_parse_postfix_expr+0x21a>
quickjs-nuttx/quickjs.c:24940
            if (prev_op == OP_get_super) {
    800329da:	03400793          	li	a5,52
quickjs-nuttx/quickjs.c:24941
                emit_op(s, OP_get_super_value);
    800329de:	04a00593          	li	a1,74
quickjs-nuttx/quickjs.c:24940
            if (prev_op == OP_get_super) {
    800329e2:	00f48463          	beq	s1,a5,800329ea <js_parse_postfix_expr+0xf1c>
quickjs-nuttx/quickjs.c:24943
                emit_op(s, OP_get_array_el);
    800329e6:	04700593          	li	a1,71
    800329ea:	8522                	mv	a0,s0
    800329ec:	f0ad60ef          	jal	ra,800090f6 <emit_op>
    800329f0:	a48ff06f          	j	80031c38 <js_parse_postfix_expr+0x16a>
quickjs-nuttx/quickjs.c:24949
    if (optional_chaining_label >= 0) {
    800329f4:	4972                	lw	s2,28(sp)
quickjs-nuttx/quickjs.c:24966
    return 0;
    800329f6:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:24949
    if (optional_chaining_label >= 0) {
    800329f8:	ae094963          	bltz	s2,80031cea <js_parse_postfix_expr+0x21c>
emit_label_raw():
quickjs-nuttx/quickjs.c:21526
    emit_u8(s, OP_label);
    800329fc:	0b800593          	li	a1,184
    80032a00:	8522                	mv	a0,s0
    80032a02:	b02d60ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:21527
    emit_u32(s, label);
    80032a06:	85ca                	mv	a1,s2
    80032a08:	8522                	mv	a0,s0
    80032a0a:	883d60ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:21528
    s->cur_func->label_slots[label].pos = s->cur_func->byte_code.size;
    80032a0e:	46e1                	li	a3,24
    80032a10:	02d90933          	mul	s2,s2,a3
    80032a14:	7438                	ld	a4,104(s0)
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24955
        opcode = get_prev_opcode(fd);
    80032a16:	854e                	mv	a0,s3
emit_label_raw():
quickjs-nuttx/quickjs.c:21528
    s->cur_func->label_slots[label].pos = s->cur_func->byte_code.size;
    80032a18:	17073783          	ld	a5,368(a4)
    80032a1c:	993e                	add	s2,s2,a5
    80032a1e:	13873783          	ld	a5,312(a4)
    80032a22:	00f92223          	sw	a5,4(s2)
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24955
        opcode = get_prev_opcode(fd);
    80032a26:	d02d50ef          	jal	ra,80007f28 <get_prev_opcode>
quickjs-nuttx/quickjs.c:24956
        if (opcode == OP_get_field || opcode == OP_get_array_el) {
    80032a2a:	04100793          	li	a5,65
    80032a2e:	00f50d63          	beq	a0,a5,80032a48 <js_parse_postfix_expr+0xf7a>
quickjs-nuttx/quickjs.c:24956 (discriminator 1)
    80032a32:	04700793          	li	a5,71
quickjs-nuttx/quickjs.c:24960 (discriminator 1)
                opcode = OP_get_array_el_opt_chain;
    80032a36:	0c600713          	li	a4,198
quickjs-nuttx/quickjs.c:24956 (discriminator 1)
        if (opcode == OP_get_field || opcode == OP_get_array_el) {
    80032a3a:	00f50963          	beq	a0,a5,80032a4c <js_parse_postfix_expr+0xf7e>
quickjs-nuttx/quickjs.c:24963
            fd->last_opcode_pos = -1;
    80032a3e:	57fd                	li	a5,-1
    80032a40:	16f9a023          	sw	a5,352(s3)
    80032a44:	aa6ff06f          	j	80031cea <js_parse_postfix_expr+0x21c>
quickjs-nuttx/quickjs.c:24958
                opcode = OP_get_field_opt_chain;
    80032a48:	0c500713          	li	a4,197
quickjs-nuttx/quickjs.c:24961
            fd->byte_code.buf[fd->last_opcode_pos] = opcode;
    80032a4c:	1609a683          	lw	a3,352(s3)
    80032a50:	1309b783          	ld	a5,304(s3)
quickjs-nuttx/quickjs.c:24966
    return 0;
    80032a54:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:24961
            fd->byte_code.buf[fd->last_opcode_pos] = opcode;
    80032a56:	97b6                	add	a5,a5,a3
    80032a58:	00e78023          	sb	a4,0(a5)
    80032a5c:	a8eff06f          	j	80031cea <js_parse_postfix_expr+0x21c>
quickjs-nuttx/quickjs.c:24687
                                fd->byte_code.buf[fd->last_opcode_pos] = opcode;
    80032a60:	fbe00713          	li	a4,-66
    80032a64:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:24690
                        drop_count = 1;
    80032a68:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:24686
                                opcode = OP_scope_get_ref;
    80032a6a:	0be00493          	li	s1,190
    80032a6e:	b439                	j	8003247c <js_parse_postfix_expr+0x9ae>
js_parse_array_literal():
quickjs-nuttx/quickjs.c:23395
        if (need_length) {
    80032a70:	ee048b63          	beqz	s1,80032166 <js_parse_postfix_expr+0x698>
quickjs-nuttx/quickjs.c:23398
            emit_op(s, OP_dup);
    80032a74:	45c5                	li	a1,17
    80032a76:	8522                	mv	a0,s0
    80032a78:	e7ed60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23399
            emit_op(s, OP_push_i32);
    80032a7c:	4585                	li	a1,1
    80032a7e:	8522                	mv	a0,s0
    80032a80:	e76d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23400
            emit_u32(s, idx);
    80032a84:	85ca                	mv	a1,s2
    80032a86:	8522                	mv	a0,s0
    80032a88:	805d60ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23465
        emit_op(s, OP_put_field);
    80032a8c:	8522                	mv	a0,s0
    80032a8e:	04300593          	li	a1,67
    80032a92:	e64d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23466
        emit_atom(s, JS_ATOM_length);
    80032a96:	03000593          	li	a1,48
    80032a9a:	8522                	mv	a0,s0
    80032a9c:	e8ed80ef          	jal	ra,8000b12a <emit_atom>
    80032aa0:	ec6ff06f          	j	80032166 <js_parse_postfix_expr+0x698>
js_parse_postfix_expr():
quickjs-nuttx/quickjs.c:24851
                switch(opcode) {
    80032aa4:	0be00793          	li	a5,190
    80032aa8:	e0f487e3          	beq	s1,a5,800328b6 <js_parse_postfix_expr+0xde8>
    80032aac:	0c100793          	li	a5,193
    80032ab0:	e0f483e3          	beq	s1,a5,800328b6 <js_parse_postfix_expr+0xde8>
    80032ab4:	04700793          	li	a5,71
    80032ab8:	e0f49ce3          	bne	s1,a5,800328d0 <js_parse_postfix_expr+0xe02>
    80032abc:	bbed                	j	800328b6 <js_parse_postfix_expr+0xde8>
quickjs-nuttx/quickjs.c:24748
                emit_op(s, OP_array_from);
    80032abe:	02600593          	li	a1,38
    80032ac2:	8522                	mv	a0,s0
    80032ac4:	e32d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24749
                emit_u16(s, arg_count);
    80032ac8:	02015583          	lhu	a1,32(sp)
    80032acc:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24754
                while (s->token.val != ')') {
    80032ace:	02900a93          	li	s5,41
quickjs-nuttx/quickjs.c:24749
                emit_u16(s, arg_count);
    80032ad2:	cf2d60ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:24750
                emit_op(s, OP_push_i32);
    80032ad6:	4585                	li	a1,1
    80032ad8:	8522                	mv	a0,s0
    80032ada:	e1cd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:24751
                emit_u32(s, arg_count);
    80032ade:	5582                	lw	a1,32(sp)
    80032ae0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:24755
                    if (s->token.val == TOK_ELLIPSIS) {
    80032ae2:	fa700c13          	li	s8,-89
quickjs-nuttx/quickjs.c:24751
                emit_u32(s, arg_count);
    80032ae6:	fa6d60ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:24754
                while (s->token.val != ')') {
    80032aea:	b169                	j	80032774 <js_parse_postfix_expr+0xca6>

0000000080032aec <js_parse_unary>:
js_parse_unary():
quickjs-nuttx/quickjs.c:25063
{
    80032aec:	715d                	addi	sp,sp,-80
    80032aee:	e0a2                	sd	s0,64(sp)
    80032af0:	e486                	sd	ra,72(sp)
    80032af2:	fc26                	sd	s1,56(sp)
    80032af4:	f84a                	sd	s2,48(sp)
    80032af6:	f44e                	sd	s3,40(sp)
    80032af8:	f052                	sd	s4,32(sp)
quickjs-nuttx/quickjs.c:25066
    switch(s->token.val) {
    80032afa:	01852903          	lw	s2,24(a0)
    80032afe:	fb700793          	li	a5,-73
quickjs-nuttx/quickjs.c:25063
{
    80032b02:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:25066
    switch(s->token.val) {
    80032b04:	1af90463          	beq	s2,a5,80032cac <js_parse_unary+0x1c0>
    80032b08:	fb800793          	li	a5,-72
    80032b0c:	84ae                	mv	s1,a1
    80032b0e:	06f95f63          	bge	s2,a5,80032b8c <js_parse_unary+0xa0>
    80032b12:	fb500793          	li	a5,-75
    80032b16:	1cf90b63          	beq	s2,a5,80032cec <js_parse_unary+0x200>
    80032b1a:	fb600793          	li	a5,-74
    80032b1e:	08f90d63          	beq	s2,a5,80032bb8 <js_parse_unary+0xcc>
    80032b22:	06b9079b          	addiw	a5,s2,107
    80032b26:	4705                	li	a4,1
    80032b28:	10f77563          	bgeu	a4,a5,80032c32 <js_parse_unary+0x146>
quickjs-nuttx/quickjs.c:25152
        if (js_parse_postfix_expr(s, PF_POSTFIX_CALL))
    80032b2c:	4589                	li	a1,2
    80032b2e:	8522                	mv	a0,s0
    80032b30:	f9ffe0ef          	jal	ra,80031ace <js_parse_postfix_expr>
    80032b34:	e551                	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25154
        if (!s->got_lf &&
    80032b36:	443c                	lw	a5,72(s0)
    80032b38:	14079063          	bnez	a5,80032c78 <js_parse_unary+0x18c>
quickjs-nuttx/quickjs.c:25155 (discriminator 1)
            (s->token.val == TOK_DEC || s->token.val == TOK_INC)) {
    80032b3c:	01842903          	lw	s2,24(s0)
quickjs-nuttx/quickjs.c:25154 (discriminator 1)
        if (!s->got_lf &&
    80032b40:	4785                	li	a5,1
    80032b42:	06b9071b          	addiw	a4,s2,107
    80032b46:	12e7e963          	bltu	a5,a4,80032c78 <js_parse_unary+0x18c>
quickjs-nuttx/quickjs.c:25159
            if (get_lvalue(s, &opcode, &scope, &name, &label, NULL, TRUE, op))
    80032b4a:	88ca                	mv	a7,s2
    80032b4c:	4805                	li	a6,1
    80032b4e:	4781                	li	a5,0
    80032b50:	0078                	addi	a4,sp,12
    80032b52:	0814                	addi	a3,sp,16
    80032b54:	0030                	addi	a2,sp,8
    80032b56:	004c                	addi	a1,sp,4
    80032b58:	8522                	mv	a0,s0
    80032b5a:	8effc0ef          	jal	ra,8002f448 <get_lvalue>
    80032b5e:	e12d                	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25161
            emit_op(s, OP_post_dec + op - TOK_DEC);
    80032b60:	ffc9059b          	addiw	a1,s2,-4
    80032b64:	0ff5f593          	zext.b	a1,a1
    80032b68:	8522                	mv	a0,s0
    80032b6a:	d8cd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25162
            put_lvalue(s, opcode, scope, name, label, PUT_LVALUE_KEEP_SECOND,
    80032b6e:	4732                	lw	a4,12(sp)
    80032b70:	46c2                	lw	a3,16(sp)
    80032b72:	4622                	lw	a2,8(sp)
    80032b74:	4592                	lw	a1,4(sp)
    80032b76:	8522                	mv	a0,s0
    80032b78:	4801                	li	a6,0
    80032b7a:	478d                	li	a5,3
    80032b7c:	e1ed80ef          	jal	ra,8000b19a <put_lvalue>
quickjs-nuttx/quickjs.c:25164
            if (next_token(s))
    80032b80:	8522                	mv	a0,s0
    80032b82:	a05fb0ef          	jal	ra,8002e586 <next_token>
    80032b86:	0e050963          	beqz	a0,80032c78 <js_parse_unary+0x18c>
    80032b8a:	a81d                	j	80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25066
    switch(s->token.val) {
    80032b8c:	fda00793          	li	a5,-38
    80032b90:	38f90863          	beq	s2,a5,80032f20 <js_parse_unary+0x434>
    80032b94:	f8f94ce3          	blt	s2,a5,80032b2c <js_parse_unary+0x40>
    80032b98:	02d00793          	li	a5,45
    80032b9c:	0327c463          	blt	a5,s2,80032bc4 <js_parse_unary+0xd8>
    80032ba0:	02000793          	li	a5,32
    80032ba4:	f927d4e3          	bge	a5,s2,80032b2c <js_parse_unary+0x40>
    80032ba8:	4785                	li	a5,1
    80032baa:	01401737          	lui	a4,0x1401
    80032bae:	012797b3          	sll	a5,a5,s2
    80032bb2:	0756                	slli	a4,a4,0x15
    80032bb4:	8ff9                	and	a5,a5,a4
    80032bb6:	dbbd                	beqz	a5,80032b2c <js_parse_unary+0x40>
quickjs-nuttx/quickjs.c:25073
        if (next_token(s))
    80032bb8:	8522                	mv	a0,s0
    80032bba:	9cdfb0ef          	jal	ra,8002e586 <next_token>
    80032bbe:	c901                	beqz	a0,80032bce <js_parse_unary+0xe2>
quickjs-nuttx/quickjs.c:25178
                    return -1;
    80032bc0:	54fd                	li	s1,-1
    80032bc2:	acbd                	j	80032e40 <js_parse_unary+0x354>
quickjs-nuttx/quickjs.c:25066
    switch(s->token.val) {
    80032bc4:	07e00793          	li	a5,126
    80032bc8:	fef908e3          	beq	s2,a5,80032bb8 <js_parse_unary+0xcc>
    80032bcc:	b785                	j	80032b2c <js_parse_unary+0x40>
quickjs-nuttx/quickjs.c:25075
        if (js_parse_unary(s, PF_POW_FORBIDDEN))
    80032bce:	45a1                	li	a1,8
    80032bd0:	8522                	mv	a0,s0
    80032bd2:	f1bff0ef          	jal	ra,80032aec <js_parse_unary>
    80032bd6:	84aa                	mv	s1,a0
    80032bd8:	f565                	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25077
        switch(op) {
    80032bda:	02b00793          	li	a5,43
    80032bde:	04f90163          	beq	s2,a5,80032c20 <js_parse_unary+0x134>
    80032be2:	0127ce63          	blt	a5,s2,80032bfe <js_parse_unary+0x112>
    80032be6:	fb600793          	li	a5,-74
    80032bea:	02f90e63          	beq	s2,a5,80032c26 <js_parse_unary+0x13a>
    80032bee:	02100793          	li	a5,33
quickjs-nuttx/quickjs.c:25085
            emit_op(s, OP_lnot);
    80032bf2:	09700593          	li	a1,151
    80032bf6:	00f90e63          	beq	s2,a5,80032c12 <js_parse_unary+0x126>
quickjs-nuttx/quickjs.c:25095
            abort();
    80032bfa:	7892f0ef          	jal	ra,80062b82 <abort>
    80032bfe:	02d00793          	li	a5,45
    80032c02:	00f90c63          	beq	s2,a5,80032c1a <js_parse_unary+0x12e>
    80032c06:	07e00793          	li	a5,126
quickjs-nuttx/quickjs.c:25088
            emit_op(s, OP_not);
    80032c0a:	09600593          	li	a1,150
    80032c0e:	fef916e3          	bne	s2,a5,80032bfa <js_parse_unary+0x10e>
js_parse_delete():
quickjs-nuttx/quickjs.c:25014
        emit_op(s, OP_delete);
    80032c12:	8522                	mv	a0,s0
    80032c14:	ce2d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25015
        break;
    80032c18:	a425                	j	80032e40 <js_parse_unary+0x354>
js_parse_unary():
quickjs-nuttx/quickjs.c:25079
            emit_op(s, OP_neg);
    80032c1a:	08d00593          	li	a1,141
    80032c1e:	bfd5                	j	80032c12 <js_parse_unary+0x126>
quickjs-nuttx/quickjs.c:25082
            emit_op(s, OP_plus);
    80032c20:	08e00593          	li	a1,142
    80032c24:	b7fd                	j	80032c12 <js_parse_unary+0x126>
quickjs-nuttx/quickjs.c:25091
            emit_op(s, OP_drop);
    80032c26:	45b9                	li	a1,14
    80032c28:	8522                	mv	a0,s0
    80032c2a:	cccd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25092
            emit_op(s, OP_undefined);
    80032c2e:	4599                	li	a1,6
    80032c30:	b7cd                	j	80032c12 <js_parse_unary+0x126>
quickjs-nuttx/quickjs.c:25105
            if (next_token(s))
    80032c32:	955fb0ef          	jal	ra,8002e586 <next_token>
    80032c36:	f549                	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25107
            if (js_parse_unary(s, 0))
    80032c38:	4581                	li	a1,0
    80032c3a:	8522                	mv	a0,s0
    80032c3c:	eb1ff0ef          	jal	ra,80032aec <js_parse_unary>
    80032c40:	f141                	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25109
            if (get_lvalue(s, &opcode, &scope, &name, &label, NULL, TRUE, op))
    80032c42:	88ca                	mv	a7,s2
    80032c44:	4805                	li	a6,1
    80032c46:	4781                	li	a5,0
    80032c48:	0078                	addi	a4,sp,12
    80032c4a:	0814                	addi	a3,sp,16
    80032c4c:	0030                	addi	a2,sp,8
    80032c4e:	004c                	addi	a1,sp,4
    80032c50:	8522                	mv	a0,s0
    80032c52:	ff6fc0ef          	jal	ra,8002f448 <get_lvalue>
    80032c56:	f52d                	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25111
            emit_op(s, OP_dec + op - TOK_DEC);
    80032c58:	ffa9059b          	addiw	a1,s2,-6
    80032c5c:	0ff5f593          	zext.b	a1,a1
    80032c60:	8522                	mv	a0,s0
    80032c62:	c94d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25112
            put_lvalue(s, opcode, scope, name, label, PUT_LVALUE_KEEP_TOP,
    80032c66:	4732                	lw	a4,12(sp)
    80032c68:	46c2                	lw	a3,16(sp)
    80032c6a:	4622                	lw	a2,8(sp)
    80032c6c:	4592                	lw	a1,4(sp)
    80032c6e:	4801                	li	a6,0
    80032c70:	4789                	li	a5,2
    80032c72:	8522                	mv	a0,s0
    80032c74:	d26d80ef          	jal	ra,8000b19a <put_lvalue>
quickjs-nuttx/quickjs.c:25169
    if (parse_flags & (PF_POW_ALLOWED | PF_POW_FORBIDDEN)) {
    80032c78:	1c048463          	beqz	s1,80032e40 <js_parse_unary+0x354>
quickjs-nuttx/quickjs.c:25171
        if (s->token.val == TOK_POW || s->token.val == TOK_MATH_POW) {
    80032c7c:	4c1c                	lw	a5,24(s0)
    80032c7e:	4705                	li	a4,1
    80032c80:	05c7879b          	addiw	a5,a5,92
    80032c84:	30f76763          	bltu	a4,a5,80032f92 <js_parse_unary+0x4a6>
quickjs-nuttx/quickjs.c:25175
            if (!(s->cur_func->js_mode & JS_MODE_MATH)) {
    80032c88:	743c                	ld	a5,104(s0)
    80032c8a:	0867c783          	lbu	a5,134(a5)
    80032c8e:	8b91                	andi	a5,a5,4
    80032c90:	2e079263          	bnez	a5,80032f74 <js_parse_unary+0x488>
quickjs-nuttx/quickjs.c:25176
                if (parse_flags & PF_POW_FORBIDDEN) {
    80032c94:	0084f513          	andi	a0,s1,8
    80032c98:	2c050e63          	beqz	a0,80032f74 <js_parse_unary+0x488>
quickjs-nuttx/quickjs.c:25177
                    JS_ThrowSyntaxError(s->ctx, "unparenthesized unary expression can't appear on the left-hand side of '**'");
    80032c9c:	6008                	ld	a0,0(s0)
    80032c9e:	0003a597          	auipc	a1,0x3a
    80032ca2:	8aa58593          	addi	a1,a1,-1878 # 8006c548 <qjsc_repl+0x6f98>
    80032ca6:	edce50ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
    80032caa:	bf19                	j	80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25119
            if (next_token(s))
    80032cac:	8dbfb0ef          	jal	ra,8002e586 <next_token>
    80032cb0:	f00518e3          	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25121
            if (js_parse_unary(s, PF_POW_FORBIDDEN))
    80032cb4:	45a1                	li	a1,8
    80032cb6:	8522                	mv	a0,s0
    80032cb8:	e35ff0ef          	jal	ra,80032aec <js_parse_unary>
    80032cbc:	84aa                	mv	s1,a0
    80032cbe:	f00511e3          	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25125
            fd = s->cur_func;
    80032cc2:	06843903          	ld	s2,104(s0)
quickjs-nuttx/quickjs.c:25126
            if (get_prev_opcode(fd) == OP_scope_get_var) {
    80032cc6:	854a                	mv	a0,s2
    80032cc8:	a60d50ef          	jal	ra,80007f28 <get_prev_opcode>
    80032ccc:	0ba00793          	li	a5,186
    80032cd0:	00f51b63          	bne	a0,a5,80032ce6 <js_parse_unary+0x1fa>
quickjs-nuttx/quickjs.c:25127
                fd->byte_code.buf[fd->last_opcode_pos] = OP_scope_get_var_undef;
    80032cd4:	16092703          	lw	a4,352(s2)
    80032cd8:	13093783          	ld	a5,304(s2)
    80032cdc:	97ba                	add	a5,a5,a4
    80032cde:	fb900713          	li	a4,-71
    80032ce2:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:25129
            emit_op(s, OP_typeof);
    80032ce6:	09800593          	li	a1,152
    80032cea:	b725                	j	80032c12 <js_parse_unary+0x126>
js_parse_delete():
quickjs-nuttx/quickjs.c:24971
    JSFunctionDef *fd = s->cur_func;
    80032cec:	06853903          	ld	s2,104(a0)
quickjs-nuttx/quickjs.c:24975
    if (next_token(s))
    80032cf0:	897fb0ef          	jal	ra,8002e586 <next_token>
    80032cf4:	ec0516e3          	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:24977
    if (js_parse_unary(s, PF_POW_FORBIDDEN))
    80032cf8:	45a1                	li	a1,8
    80032cfa:	8522                	mv	a0,s0
    80032cfc:	df1ff0ef          	jal	ra,80032aec <js_parse_unary>
    80032d00:	84aa                	mv	s1,a0
    80032d02:	ea051fe3          	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:24979
    switch(opcode = get_prev_opcode(fd)) {
    80032d06:	854a                	mv	a0,s2
    80032d08:	a20d50ef          	jal	ra,80007f28 <get_prev_opcode>
    80032d0c:	0ba00793          	li	a5,186
    80032d10:	18f50a63          	beq	a0,a5,80032ea4 <js_parse_unary+0x3b8>
    80032d14:	02a7c563          	blt	a5,a0,80032d3e <js_parse_unary+0x252>
    80032d18:	04700793          	li	a5,71
    80032d1c:	12f50b63          	beq	a0,a5,80032e52 <js_parse_unary+0x366>
    80032d20:	04a00793          	li	a5,74
    80032d24:	1cf50963          	beq	a0,a5,80032ef6 <js_parse_unary+0x40a>
    80032d28:	04100793          	li	a5,65
quickjs-nuttx/quickjs.c:24989
                opt_chain_label = -1;
    80032d2c:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:24979
    switch(opcode = get_prev_opcode(fd)) {
    80032d2e:	06f50763          	beq	a0,a5,80032d9c <js_parse_unary+0x2b0>
quickjs-nuttx/quickjs.c:25054
        emit_op(s, OP_drop);
    80032d32:	45b9                	li	a1,14
    80032d34:	8522                	mv	a0,s0
    80032d36:	bc0d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25055
        emit_op(s, OP_push_true);
    80032d3a:	45a9                	li	a1,10
    80032d3c:	bdd9                	j	80032c12 <js_parse_unary+0x126>
quickjs-nuttx/quickjs.c:24979
    switch(opcode = get_prev_opcode(fd)) {
    80032d3e:	0c500793          	li	a5,197
    80032d42:	02f50663          	beq	a0,a5,80032d6e <js_parse_unary+0x282>
    80032d46:	0c600793          	li	a5,198
    80032d4a:	10f50e63          	beq	a0,a5,80032e66 <js_parse_unary+0x37a>
    80032d4e:	0c100793          	li	a5,193
quickjs-nuttx/quickjs.c:25044
        return js_parse_error(s, "cannot delete a private class field");
    80032d52:	00039597          	auipc	a1,0x39
    80032d56:	78e58593          	addi	a1,a1,1934 # 8006c4e0 <qjsc_repl+0x6f30>
quickjs-nuttx/quickjs.c:24979
    switch(opcode = get_prev_opcode(fd)) {
    80032d5a:	fcf51ce3          	bne	a0,a5,80032d32 <js_parse_unary+0x246>
quickjs-nuttx/quickjs.c:25044
        return js_parse_error(s, "cannot delete a private class field");
    80032d5e:	8522                	mv	a0,s0
    80032d60:	f13fa0ef          	jal	ra,8002dc72 <js_parse_error>
js_parse_unary():
quickjs-nuttx/quickjs.c:25134
        if (js_parse_delete(s))
    80032d64:	00a03533          	snez	a0,a0
    80032d68:	40a004b3          	neg	s1,a0
    80032d6c:	a8d1                	j	80032e40 <js_parse_unary+0x354>
js_parse_delete():
quickjs-nuttx/quickjs.c:24987
                                          fd->last_opcode_pos + 1 + 4 + 1);
    80032d6e:	16092703          	lw	a4,352(s2)
get_u32():
quickjs-nuttx/cutils.h:170
    80032d72:	13093783          	ld	a5,304(s2)
    80032d76:	97ba                	add	a5,a5,a4
    80032d78:	0077c703          	lbu	a4,7(a5)
    80032d7c:	0067c983          	lbu	s3,6(a5)
    80032d80:	0722                	slli	a4,a4,0x8
    80032d82:	01376733          	or	a4,a4,s3
    80032d86:	0087c983          	lbu	s3,8(a5)
    80032d8a:	09c2                	slli	s3,s3,0x10
    80032d8c:	00e9e733          	or	a4,s3,a4
    80032d90:	0097c983          	lbu	s3,9(a5)
    80032d94:	09e2                	slli	s3,s3,0x18
    80032d96:	00e9e9b3          	or	s3,s3,a4
js_parse_delete():
quickjs-nuttx/quickjs.c:24986
                opt_chain_label = get_u32(fd->byte_code.buf +
    80032d9a:	2981                	sext.w	s3,s3
quickjs-nuttx/quickjs.c:24991
            name = get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    80032d9c:	16092683          	lw	a3,352(s2)
get_u32():
quickjs-nuttx/cutils.h:170
    80032da0:	13093783          	ld	a5,304(s2)
    80032da4:	97b6                	add	a5,a5,a3
    80032da6:	0027c703          	lbu	a4,2(a5)
    80032daa:	0017ca03          	lbu	s4,1(a5)
    80032dae:	0722                	slli	a4,a4,0x8
    80032db0:	01476733          	or	a4,a4,s4
    80032db4:	0037ca03          	lbu	s4,3(a5)
    80032db8:	0a42                	slli	s4,s4,0x10
    80032dba:	00ea6733          	or	a4,s4,a4
    80032dbe:	0047ca03          	lbu	s4,4(a5)
js_parse_delete():
quickjs-nuttx/quickjs.c:24992
            fd->byte_code.size = fd->last_opcode_pos;
    80032dc2:	12d93c23          	sd	a3,312(s2)
quickjs-nuttx/quickjs.c:24993
            val = JS_AtomToValue(s->ctx, name);
    80032dc6:	6008                	ld	a0,0(s0)
get_u32():
quickjs-nuttx/cutils.h:170
    80032dc8:	0a62                	slli	s4,s4,0x18
    80032dca:	00ea6a33          	or	s4,s4,a4
    80032dce:	2a01                	sext.w	s4,s4
js_parse_delete():
quickjs-nuttx/quickjs.c:24993
    80032dd0:	85d2                	mv	a1,s4
    80032dd2:	cf7ec0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80032dd6:	862e                	mv	a2,a1
    80032dd8:	e82a                	sd	a0,16(sp)
    80032dda:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:24994
            ret = emit_push_const(s, val, 1);
    80032ddc:	4685                	li	a3,1
    80032dde:	85aa                	mv	a1,a0
    80032de0:	8522                	mv	a0,s0
    80032de2:	e36ea0ef          	jal	ra,8001d418 <emit_push_const>
quickjs-nuttx/quickjs.c:24995
            JS_FreeValue(s->ctx, val);
    80032de6:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:24994
            ret = emit_push_const(s, val, 1);
    80032de8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:24995
            JS_FreeValue(s->ctx, val);
    80032dea:	6662                	ld	a2,24(sp)
    80032dec:	6008                	ld	a0,0(s0)
    80032dee:	9b1d80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:24996
            JS_FreeAtom(s->ctx, name);
    80032df2:	6008                	ld	a0,0(s0)
    80032df4:	85d2                	mv	a1,s4
    80032df6:	b52d80ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:24997
            if (ret)
    80032dfa:	dc0493e3          	bnez	s1,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:24999
            emit_op(s, OP_delete);
    80032dfe:	09900593          	li	a1,153
    80032e02:	8522                	mv	a0,s0
    80032e04:	af2d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25000
            if (opt_chain_label >= 0) {
    80032e08:	0209c963          	bltz	s3,80032e3a <js_parse_unary+0x34e>
quickjs-nuttx/quickjs.c:25001
                next_label = emit_goto(s, OP_goto, -1);
    80032e0c:	567d                	li	a2,-1
    80032e0e:	06c00593          	li	a1,108
    80032e12:	8522                	mv	a0,s0
    80032e14:	960ea0ef          	jal	ra,8001cf74 <emit_goto>
    80032e18:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:25002
                emit_label(s, opt_chain_label);
    80032e1a:	85ce                	mv	a1,s3
    80032e1c:	8522                	mv	a0,s0
    80032e1e:	c76d60ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25004
                emit_op(s, OP_drop);
    80032e22:	45b9                	li	a1,14
    80032e24:	8522                	mv	a0,s0
    80032e26:	ad0d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25005
                emit_op(s, OP_push_true);
    80032e2a:	45a9                	li	a1,10
    80032e2c:	8522                	mv	a0,s0
    80032e2e:	ac8d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25006
                emit_label(s, next_label);
    80032e32:	85d2                	mv	a1,s4
    80032e34:	8522                	mv	a0,s0
    80032e36:	c5ed60ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25008
            fd->last_opcode_pos = -1;
    80032e3a:	57fd                	li	a5,-1
    80032e3c:	16f92023          	sw	a5,352(s2)
js_parse_unary():
quickjs-nuttx/quickjs.c:25207
}
    80032e40:	60a6                	ld	ra,72(sp)
    80032e42:	6406                	ld	s0,64(sp)
    80032e44:	7942                	ld	s2,48(sp)
    80032e46:	79a2                	ld	s3,40(sp)
    80032e48:	7a02                	ld	s4,32(sp)
    80032e4a:	8526                	mv	a0,s1
    80032e4c:	74e2                	ld	s1,56(sp)
    80032e4e:	6161                	addi	sp,sp,80
    80032e50:	8082                	ret
js_parse_delete():
quickjs-nuttx/quickjs.c:25012
        fd->byte_code.size = fd->last_opcode_pos;
    80032e52:	16092783          	lw	a5,352(s2)
quickjs-nuttx/quickjs.c:25014
        emit_op(s, OP_delete);
    80032e56:	09900593          	li	a1,153
quickjs-nuttx/quickjs.c:25012
        fd->byte_code.size = fd->last_opcode_pos;
    80032e5a:	12f93c23          	sd	a5,312(s2)
quickjs-nuttx/quickjs.c:25013
        fd->last_opcode_pos = -1;
    80032e5e:	57fd                	li	a5,-1
    80032e60:	16f92023          	sw	a5,352(s2)
quickjs-nuttx/quickjs.c:25014
        emit_op(s, OP_delete);
    80032e64:	b37d                	j	80032c12 <js_parse_unary+0x126>
quickjs-nuttx/quickjs.c:25020
                                      fd->last_opcode_pos + 1 + 1);
    80032e66:	16092683          	lw	a3,352(s2)
get_u32():
quickjs-nuttx/cutils.h:170
    80032e6a:	13093783          	ld	a5,304(s2)
js_parse_delete():
quickjs-nuttx/quickjs.c:25022
            emit_op(s, OP_delete);
    80032e6e:	09900593          	li	a1,153
    80032e72:	8522                	mv	a0,s0
get_u32():
quickjs-nuttx/cutils.h:170
    80032e74:	97b6                	add	a5,a5,a3
    80032e76:	0037c703          	lbu	a4,3(a5)
    80032e7a:	0027c983          	lbu	s3,2(a5)
    80032e7e:	0722                	slli	a4,a4,0x8
    80032e80:	01376733          	or	a4,a4,s3
    80032e84:	0047c983          	lbu	s3,4(a5)
    80032e88:	09c2                	slli	s3,s3,0x10
    80032e8a:	00e9e733          	or	a4,s3,a4
    80032e8e:	0057c983          	lbu	s3,5(a5)
js_parse_delete():
quickjs-nuttx/quickjs.c:25021
            fd->byte_code.size = fd->last_opcode_pos;
    80032e92:	12d93c23          	sd	a3,312(s2)
get_u32():
quickjs-nuttx/cutils.h:170
    80032e96:	09e2                	slli	s3,s3,0x18
    80032e98:	00e9e9b3          	or	s3,s3,a4
js_parse_delete():
quickjs-nuttx/quickjs.c:25019
            opt_chain_label = get_u32(fd->byte_code.buf +
    80032e9c:	2981                	sext.w	s3,s3
quickjs-nuttx/quickjs.c:25022
            emit_op(s, OP_delete);
    80032e9e:	a58d60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25023
            next_label = emit_goto(s, OP_goto, -1);
    80032ea2:	b7ad                	j	80032e0c <js_parse_unary+0x320>
quickjs-nuttx/quickjs.c:25034
        name = get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    80032ea4:	16092783          	lw	a5,352(s2)
    80032ea8:	13093703          	ld	a4,304(s2)
get_u32():
quickjs-nuttx/cutils.h:170
    80032eac:	973e                	add	a4,a4,a5
    80032eae:	00274683          	lbu	a3,2(a4) # 1401002 <asinh-0x7ebfeffe>
    80032eb2:	00174783          	lbu	a5,1(a4)
    80032eb6:	06a2                	slli	a3,a3,0x8
    80032eb8:	8edd                	or	a3,a3,a5
    80032eba:	00374783          	lbu	a5,3(a4)
    80032ebe:	07c2                	slli	a5,a5,0x10
    80032ec0:	8edd                	or	a3,a3,a5
    80032ec2:	00474783          	lbu	a5,4(a4)
    80032ec6:	07e2                	slli	a5,a5,0x18
    80032ec8:	8fd5                	or	a5,a5,a3
    80032eca:	2781                	sext.w	a5,a5
js_parse_delete():
quickjs-nuttx/quickjs.c:25035
        if (name == JS_ATOM_this || name == JS_ATOM_new_target)
    80032ecc:	46a1                	li	a3,8
    80032ece:	e6d782e3          	beq	a5,a3,80032d32 <js_parse_unary+0x246>
    80032ed2:	07200693          	li	a3,114
    80032ed6:	e4d78ee3          	beq	a5,a3,80032d32 <js_parse_unary+0x246>
quickjs-nuttx/quickjs.c:25037
        if (fd->js_mode & JS_MODE_STRICT) {
    80032eda:	08694783          	lbu	a5,134(s2)
quickjs-nuttx/quickjs.c:25038
            return js_parse_error(s, "cannot delete a direct reference in strict mode");
    80032ede:	00039597          	auipc	a1,0x39
    80032ee2:	5d258593          	addi	a1,a1,1490 # 8006c4b0 <qjsc_repl+0x6f00>
quickjs-nuttx/quickjs.c:25037
        if (fd->js_mode & JS_MODE_STRICT) {
    80032ee6:	8b85                	andi	a5,a5,1
    80032ee8:	e6079be3          	bnez	a5,80032d5e <js_parse_unary+0x272>
quickjs-nuttx/quickjs.c:25040
            fd->byte_code.buf[fd->last_opcode_pos] = OP_scope_delete_var;
    80032eec:	fbc00793          	li	a5,-68
    80032ef0:	00f70023          	sb	a5,0(a4)
quickjs-nuttx/quickjs.c:25042
        break;
    80032ef4:	b7b1                	j	80032e40 <js_parse_unary+0x354>
quickjs-nuttx/quickjs.c:25046
        fd->byte_code.size = fd->last_opcode_pos;
    80032ef6:	16092783          	lw	a5,352(s2)
quickjs-nuttx/quickjs.c:25048
        emit_op(s, OP_throw_error);
    80032efa:	8522                	mv	a0,s0
    80032efc:	03000593          	li	a1,48
quickjs-nuttx/quickjs.c:25046
        fd->byte_code.size = fd->last_opcode_pos;
    80032f00:	12f93c23          	sd	a5,312(s2)
quickjs-nuttx/quickjs.c:25047
        fd->last_opcode_pos = -1;
    80032f04:	57fd                	li	a5,-1
    80032f06:	16f92023          	sw	a5,352(s2)
quickjs-nuttx/quickjs.c:25048
        emit_op(s, OP_throw_error);
    80032f0a:	9ecd60ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25049
        emit_atom(s, JS_ATOM_NULL);
    80032f0e:	8522                	mv	a0,s0
    80032f10:	4581                	li	a1,0
    80032f12:	a18d80ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25050
        emit_u8(s, JS_THROW_ERROR_DELETE_SUPER);
    80032f16:	458d                	li	a1,3
    80032f18:	8522                	mv	a0,s0
    80032f1a:	debd50ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:25051
        break;
    80032f1e:	b70d                	j	80032e40 <js_parse_unary+0x354>
js_parse_unary():
quickjs-nuttx/quickjs.c:25139
        if (!(s->cur_func->func_kind & JS_FUNC_ASYNC))
    80032f20:	7538                	ld	a4,104(a0)
quickjs-nuttx/quickjs.c:25140
            return js_parse_error(s, "unexpected 'await' keyword");
    80032f22:	00039597          	auipc	a1,0x39
    80032f26:	5e658593          	addi	a1,a1,1510 # 8006c508 <qjsc_repl+0x6f58>
quickjs-nuttx/quickjs.c:25139
        if (!(s->cur_func->func_kind & JS_FUNC_ASYNC))
    80032f2a:	08474783          	lbu	a5,132(a4)
    80032f2e:	8b89                	andi	a5,a5,2
    80032f30:	c799                	beqz	a5,80032f3e <js_parse_unary+0x452>
quickjs-nuttx/quickjs.c:25141
        if (!s->cur_func->in_function_body)
    80032f32:	5f7c                	lw	a5,124(a4)
    80032f34:	ef91                	bnez	a5,80032f50 <js_parse_unary+0x464>
quickjs-nuttx/quickjs.c:25142
            return js_parse_error(s, "await in default expression");
    80032f36:	00039597          	auipc	a1,0x39
    80032f3a:	5f258593          	addi	a1,a1,1522 # 8006c528 <qjsc_repl+0x6f78>
quickjs-nuttx/quickjs.c:25207
}
    80032f3e:	6406                	ld	s0,64(sp)
    80032f40:	60a6                	ld	ra,72(sp)
    80032f42:	74e2                	ld	s1,56(sp)
    80032f44:	7942                	ld	s2,48(sp)
    80032f46:	79a2                	ld	s3,40(sp)
    80032f48:	7a02                	ld	s4,32(sp)
    80032f4a:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:25142
            return js_parse_error(s, "await in default expression");
    80032f4c:	d27fa06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:25143
        if (next_token(s))
    80032f50:	e36fb0ef          	jal	ra,8002e586 <next_token>
    80032f54:	c60516e3          	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25145
        if (js_parse_unary(s, PF_POW_FORBIDDEN))
    80032f58:	45a1                	li	a1,8
    80032f5a:	8522                	mv	a0,s0
    80032f5c:	b91ff0ef          	jal	ra,80032aec <js_parse_unary>
    80032f60:	84aa                	mv	s1,a0
    80032f62:	c4051fe3          	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25147
        s->cur_func->has_await = TRUE;
    80032f66:	743c                	ld	a5,104(s0)
    80032f68:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:25148
        emit_op(s, OP_await);
    80032f6a:	08c00593          	li	a1,140
quickjs-nuttx/quickjs.c:25147
        s->cur_func->has_await = TRUE;
    80032f6e:	22e7a023          	sw	a4,544(a5)
quickjs-nuttx/quickjs.c:25148
        emit_op(s, OP_await);
    80032f72:	b145                	j	80032c12 <js_parse_unary+0x126>
quickjs-nuttx/quickjs.c:25181
            if (next_token(s))
    80032f74:	8522                	mv	a0,s0
    80032f76:	e10fb0ef          	jal	ra,8002e586 <next_token>
    80032f7a:	c40513e3          	bnez	a0,80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25183
            if (js_parse_unary(s, PF_POW_ALLOWED))
    80032f7e:	4591                	li	a1,4
    80032f80:	8522                	mv	a0,s0
    80032f82:	b6bff0ef          	jal	ra,80032aec <js_parse_unary>
    80032f86:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:25185
            emit_op(s, OP_pow);
    80032f88:	0a000593          	li	a1,160
quickjs-nuttx/quickjs.c:25183
            if (js_parse_unary(s, PF_POW_ALLOWED))
    80032f8c:	c80503e3          	beqz	a0,80032c12 <js_parse_unary+0x126>
    80032f90:	b905                	j	80032bc0 <js_parse_unary+0xd4>
quickjs-nuttx/quickjs.c:25206
    return 0;
    80032f92:	4481                	li	s1,0
    80032f94:	b575                	j	80032e40 <js_parse_unary+0x354>

0000000080032f96 <js_parse_expr_binary>:
js_parse_expr_binary():
quickjs-nuttx/quickjs.c:25215
    if (level == 0) {
    80032f96:	e581                	bnez	a1,80032f9e <js_parse_expr_binary+0x8>
quickjs-nuttx/quickjs.c:25216
        return js_parse_unary(s, PF_POW_ALLOWED);
    80032f98:	4591                	li	a1,4
    80032f9a:	b53ff06f          	j	80032aec <js_parse_unary>
quickjs-nuttx/quickjs.c:25212
{
    80032f9e:	711d                	addi	sp,sp,-96
    80032fa0:	e8a2                	sd	s0,80(sp)
    80032fa2:	e4a6                	sd	s1,72(sp)
    80032fa4:	fc4e                	sd	s3,56(sp)
    80032fa6:	ec86                	sd	ra,88(sp)
    80032fa8:	e0ca                	sd	s2,64(sp)
    80032faa:	f852                	sd	s4,48(sp)
    80032fac:	f456                	sd	s5,40(sp)
    80032fae:	f05a                	sd	s6,32(sp)
    80032fb0:	ec5e                	sd	s7,24(sp)
    80032fb2:	e862                	sd	s8,16(sp)
    80032fb4:	e466                	sd	s9,8(sp)
    80032fb6:	e06a                	sd	s10,0(sp)
quickjs-nuttx/quickjs.c:25217
    } else if (s->token.val == TOK_PRIVATE_NAME &&
    80032fb8:	4d18                	lw	a4,24(a0)
    80032fba:	fab00793          	li	a5,-85
    80032fbe:	842a                	mv	s0,a0
    80032fc0:	84ae                	mv	s1,a1
    80032fc2:	89b2                	mv	s3,a2
    80032fc4:	08f71e63          	bne	a4,a5,80033060 <js_parse_expr_binary+0xca>
quickjs-nuttx/quickjs.c:25217 (discriminator 1)
    80032fc8:	ce41                	beqz	a2,80033060 <js_parse_expr_binary+0xca>
quickjs-nuttx/quickjs.c:25218
               (parse_flags & PF_IN_ACCEPTED) && level == 4 &&
    80032fca:	4791                	li	a5,4
    80032fcc:	08f59a63          	bne	a1,a5,80033060 <js_parse_expr_binary+0xca>
quickjs-nuttx/quickjs.c:25219 (discriminator 1)
               peek_token(s, FALSE) == TOK_IN) {
    80032fd0:	4581                	li	a1,0
    80032fd2:	c9bd60ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:25218 (discriminator 1)
               (parse_flags & PF_IN_ACCEPTED) && level == 4 &&
    80032fd6:	fb900793          	li	a5,-71
quickjs-nuttx/quickjs.c:25219 (discriminator 1)
               peek_token(s, FALSE) == TOK_IN) {
    80032fda:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:25218 (discriminator 1)
               (parse_flags & PF_IN_ACCEPTED) && level == 4 &&
    80032fdc:	08f51263          	bne	a0,a5,80033060 <js_parse_expr_binary+0xca>
quickjs-nuttx/quickjs.c:25222
        atom = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    80032fe0:	540c                	lw	a1,40(s0)
    80032fe2:	6008                	ld	a0,0(s0)
    80032fe4:	922d80ef          	jal	ra,8000b106 <JS_DupAtom>
    80032fe8:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:25223
        if (next_token(s))
    80032fec:	8522                	mv	a0,s0
    80032fee:	d98fb0ef          	jal	ra,8002e586 <next_token>
    80032ff2:	c519                	beqz	a0,80033000 <js_parse_expr_binary+0x6a>
quickjs-nuttx/quickjs.c:25231
            JS_FreeAtom(s->ctx, atom);
    80032ff4:	6008                	ld	a0,0(s0)
    80032ff6:	85a6                	mv	a1,s1
    80032ff8:	950d80ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:25241
            return -1;
    80032ffc:	5d7d                	li	s10,-1
    80032ffe:	a091                	j	80033042 <js_parse_expr_binary+0xac>
quickjs-nuttx/quickjs.c:25225
        if (s->token.val != TOK_IN)
