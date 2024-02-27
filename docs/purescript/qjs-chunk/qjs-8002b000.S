    8002a002:	8522                	mv	a0,s0
    8002a004:	2df270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30487
                dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002a008:	85a6                	mv	a1,s1
    8002a00a:	854a                	mv	a0,s2
    8002a00c:	8fae10ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a010:	0005059b          	sext.w	a1,a0
    8002a014:	8522                	mv	a0,s0
    8002a016:	8ccdf0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30488
                dbuf_putc(bc, JS_THROW_VAR_RO);
    8002a01a:	4581                	li	a1,0
    8002a01c:	a435                	j	8002a248 <resolve_scope_var+0x3da>
quickjs-nuttx/quickjs.c:30204
        if (vd->var_name == JS_ATOM__with_ && !is_pseudo_var) {
    8002a01e:	03479863          	bne	a5,s4,8002a04e <resolve_scope_var+0x1e0>
quickjs-nuttx/quickjs.c:30204 (discriminator 1)
    8002a022:	020c1663          	bnez	s8,8002a04e <resolve_scope_var+0x1e0>
quickjs-nuttx/quickjs.c:30205
            dbuf_putc(bc, OP_get_loc);
    8002a026:	05800593          	li	a1,88
    8002a02a:	8522                	mv	a0,s0
    8002a02c:	2b7270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30206
            dbuf_put_u16(bc, idx);
    8002a030:	030d1593          	slli	a1,s10,0x30
    8002a034:	91c1                	srli	a1,a1,0x30
    8002a036:	8522                	mv	a0,s0
    8002a038:	f75de0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30207
            var_object_test(ctx, s, var_name, op, bc, &label_done, 1);
    8002a03c:	4805                	li	a6,1
    8002a03e:	107c                	addi	a5,sp,44
    8002a040:	8722                	mv	a4,s0
    8002a042:	86d6                	mv	a3,s5
    8002a044:	8626                	mv	a2,s1
    8002a046:	85ce                	mv	a1,s3
    8002a048:	854a                	mv	a0,s2
    8002a04a:	aeaf30ef          	jal	ra,8001d334 <var_object_test>
quickjs-nuttx/quickjs.c:30209
        idx = vd->scope_next;
    8002a04e:	008dad03          	lw	s10,8(s11)
    8002a052:	bd85                	j	80029ec2 <resolve_scope_var+0x54>
quickjs-nuttx/quickjs.c:30220
            var_idx = resolve_pseudo_var(ctx, s, var_name);
    8002a054:	8626                	mv	a2,s1
    8002a056:	85ce                	mv	a1,s3
    8002a058:	854a                	mv	a0,s2
    8002a05a:	a93ff0ef          	jal	ra,80029aec <resolve_pseudo_var>
    8002a05e:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:30222
        if (var_idx < 0 && var_name == JS_ATOM_arguments &&
    8002a060:	e80540e3          	bltz	a0,80029ee0 <resolve_scope_var+0x72>
quickjs-nuttx/quickjs.c:30233
        if ((op == OP_scope_put_var || op == OP_scope_make_ref) &&
    8002a064:	f45a879b          	addiw	a5,s5,-187
    8002a068:	9bf5                	andi	a5,a5,-3
    8002a06a:	2781                	sext.w	a5,a5
    8002a06c:	7a079b63          	bnez	a5,8002a822 <resolve_scope_var+0x9b4>
quickjs-nuttx/quickjs.c:30234 (discriminator 3)
            !(var_idx & ARGUMENT_VAR_OFFSET) &&
    8002a070:	01da5793          	srli	a5,s4,0x1d
quickjs-nuttx/quickjs.c:30233 (discriminator 3)
        if ((op == OP_scope_put_var || op == OP_scope_make_ref) &&
    8002a074:	8b85                	andi	a5,a5,1
    8002a076:	eb89                	bnez	a5,8002a088 <resolve_scope_var+0x21a>
quickjs-nuttx/quickjs.c:30234
            !(var_idx & ARGUMENT_VAR_OFFSET) &&
    8002a078:	0909b783          	ld	a5,144(s3)
    8002a07c:	004a1713          	slli	a4,s4,0x4
    8002a080:	97ba                	add	a5,a5,a4
    8002a082:	47dc                	lw	a5,12(a5)
    8002a084:	8b85                	andi	a5,a5,1
    8002a086:	ffa5                	bnez	a5,80029ffe <resolve_scope_var+0x190>
quickjs-nuttx/quickjs.c:30246
        switch (op) {
    8002a088:	f47a879b          	addiw	a5,s5,-185
    8002a08c:	0007869b          	sext.w	a3,a5
    8002a090:	471d                	li	a4,7
    8002a092:	1ad76e63          	bltu	a4,a3,8002a24e <resolve_scope_var+0x3e0>
    8002a096:	02079713          	slli	a4,a5,0x20
    8002a09a:	01e75793          	srli	a5,a4,0x1e
    8002a09e:	00041717          	auipc	a4,0x41
    8002a0a2:	31a70713          	addi	a4,a4,794 # 8006b3b8 <qjsc_repl+0x5e08>
    8002a0a6:	97ba                	add	a5,a5,a4
    8002a0a8:	439c                	lw	a5,0(a5)
    8002a0aa:	97ba                	add	a5,a5,a4
    8002a0ac:	8782                	jr	a5
quickjs-nuttx/quickjs.c:30227 (discriminator 2)
        if (var_idx < 0 && s->is_func_expr && var_name == s->func_name) {
    8002a0ae:	0889a783          	lw	a5,136(s3)
    8002a0b2:	e49799e3          	bne	a5,s1,80029f04 <resolve_scope_var+0x96>
quickjs-nuttx/quickjs.c:30229
            var_idx = add_func_var(ctx, s, var_name);
    8002a0b6:	8626                	mv	a2,s1
    8002a0b8:	85ce                	mv	a1,s3
    8002a0ba:	854a                	mv	a0,s2
    8002a0bc:	9ddff0ef          	jal	ra,80029a98 <add_func_var>
    8002a0c0:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:30232
    if (var_idx >= 0) {
    8002a0c2:	e40541e3          	bltz	a0,80029f04 <resolve_scope_var+0x96>
    8002a0c6:	bf79                	j	8002a064 <resolve_scope_var+0x1f6>
quickjs-nuttx/quickjs.c:30248
            if (!(var_idx & ARGUMENT_VAR_OFFSET) &&
    8002a0c8:	20000ab7          	lui	s5,0x20000
    8002a0cc:	015a7ab3          	and	s5,s4,s5
    8002a0d0:	060a9963          	bnez	s5,8002a142 <resolve_scope_var+0x2d4>
quickjs-nuttx/quickjs.c:30249 (discriminator 1)
                s->vars[var_idx].var_kind == JS_VAR_FUNCTION_NAME) {
    8002a0d4:	0909b783          	ld	a5,144(s3)
    8002a0d8:	004a1713          	slli	a4,s4,0x4
    8002a0dc:	97ba                	add	a5,a5,a4
    8002a0de:	47dc                	lw	a5,12(a5)
quickjs-nuttx/quickjs.c:30248 (discriminator 1)
            if (!(var_idx & ARGUMENT_VAR_OFFSET) &&
    8002a0e0:	04000713          	li	a4,64
    8002a0e4:	0f07f793          	andi	a5,a5,240
    8002a0e8:	04e79d63          	bne	a5,a4,8002a142 <resolve_scope_var+0x2d4>
quickjs-nuttx/quickjs.c:30251
                dbuf_putc(bc, OP_object);
    8002a0ec:	45ad                	li	a1,11
    8002a0ee:	8522                	mv	a0,s0
    8002a0f0:	1f3270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30252
                dbuf_putc(bc, OP_get_loc);
    8002a0f4:	05800593          	li	a1,88
quickjs-nuttx/quickjs.c:30496
                    dbuf_putc(bc, OP_get_var_ref);
    8002a0f8:	8522                	mv	a0,s0
    8002a0fa:	1e9270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30497
                    dbuf_put_u16(bc, idx);
    8002a0fe:	030a1593          	slli	a1,s4,0x30
    8002a102:	91c1                	srli	a1,a1,0x30
    8002a104:	8522                	mv	a0,s0
    8002a106:	ea7de0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30498
                    dbuf_putc(bc, OP_define_field);
    8002a10a:	04c00593          	li	a1,76
    8002a10e:	8522                	mv	a0,s0
    8002a110:	1d3270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30499
                    dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002a114:	85a6                	mv	a1,s1
    8002a116:	854a                	mv	a0,s2
    8002a118:	fefe00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a11c:	0005059b          	sext.w	a1,a0
    8002a120:	8522                	mv	a0,s0
    8002a122:	fc1de0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30500
                    dbuf_putc(bc, OP_push_atom_value);
    8002a126:	4591                	li	a1,4
quickjs-nuttx/quickjs.c:30593
        dbuf_putc(bc, OP_delete_var);
    8002a128:	8522                	mv	a0,s0
    8002a12a:	1b9270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30594
        dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002a12e:	85a6                	mv	a1,s1
    8002a130:	854a                	mv	a0,s2
    8002a132:	fd5e00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a136:	0005059b          	sext.w	a1,a0
    8002a13a:	8522                	mv	a0,s0
    8002a13c:	fa7de0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30595
        break;
    8002a140:	a239                	j	8002a24e <resolve_scope_var+0x3e0>
quickjs-nuttx/quickjs.c:30259
            if (label_done == -1 && can_opt_put_ref_value(bc_buf, ls->pos)) {
    8002a142:	5732                	lw	a4,44(sp)
    8002a144:	57fd                	li	a5,-1
    8002a146:	04f71663          	bne	a4,a5,8002a192 <resolve_scope_var+0x324>
quickjs-nuttx/quickjs.c:30259 (discriminator 1)
    8002a14a:	004ca583          	lw	a1,4(s9)
    8002a14e:	855a                	mv	a0,s6
    8002a150:	e9bdd0ef          	jal	ra,80007fea <can_opt_put_global_ref_value>
    8002a154:	cd1d                	beqz	a0,8002a192 <resolve_scope_var+0x324>
quickjs-nuttx/quickjs.c:30261
                if (var_idx & ARGUMENT_VAR_OFFSET) {
    8002a156:	020a8163          	beqz	s5,8002a178 <resolve_scope_var+0x30a>
quickjs-nuttx/quickjs.c:30263
                    var_idx -= ARGUMENT_VAR_OFFSET;
    8002a15a:	e00007b7          	lui	a5,0xe0000
    8002a15e:	01478a3b          	addw	s4,a5,s4
quickjs-nuttx/quickjs.c:30262
                    get_op = OP_get_arg;
    8002a162:	05b00713          	li	a4,91
quickjs-nuttx/quickjs.c:30510
                    pos_next = optimize_scope_make_ref(ctx, s, bc, bc_buf, ls,
    8002a166:	86de                	mv	a3,s7
    8002a168:	87d2                	mv	a5,s4
    8002a16a:	8666                	mv	a2,s9
    8002a16c:	85da                	mv	a1,s6
    8002a16e:	8522                	mv	a0,s0
    8002a170:	da1df0ef          	jal	ra,80009f10 <optimize_scope_make_ref.constprop.0>
    8002a174:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:30504
                    can_opt_put_ref_value(bc_buf, ls->pos)) {
    8002a176:	a8e1                	j	8002a24e <resolve_scope_var+0x3e0>
quickjs-nuttx/quickjs.c:30265
                    if (s->vars[var_idx].is_lexical)
    8002a178:	0909b783          	ld	a5,144(s3)
    8002a17c:	004a1713          	slli	a4,s4,0x4
    8002a180:	97ba                	add	a5,a5,a4
    8002a182:	47dc                	lw	a5,12(a5)
quickjs-nuttx/quickjs.c:30266
                        get_op = OP_get_loc_check;
    8002a184:	06200713          	li	a4,98
quickjs-nuttx/quickjs.c:30265
                    if (s->vars[var_idx].is_lexical)
    8002a188:	8b89                	andi	a5,a5,2
    8002a18a:	fff1                	bnez	a5,8002a166 <resolve_scope_var+0x2f8>
quickjs-nuttx/quickjs.c:30268
                        get_op = OP_get_loc;
    8002a18c:	05800713          	li	a4,88
quickjs-nuttx/quickjs.c:30270
                pos_next = optimize_scope_make_ref(ctx, s, bc, bc_buf, ls,
    8002a190:	bfd9                	j	8002a166 <resolve_scope_var+0x2f8>
quickjs-nuttx/quickjs.c:30253
                dbuf_put_u16(bc, var_idx);
    8002a192:	1a42                	slli	s4,s4,0x30
    8002a194:	030a5a13          	srli	s4,s4,0x30
quickjs-nuttx/quickjs.c:30276
                    dbuf_putc(bc, OP_make_arg_ref);
    8002a198:	07b00593          	li	a1,123
quickjs-nuttx/quickjs.c:30275
                if (var_idx & ARGUMENT_VAR_OFFSET) {
    8002a19c:	000a9463          	bnez	s5,8002a1a4 <resolve_scope_var+0x336>
quickjs-nuttx/quickjs.c:30280
                    dbuf_putc(bc, OP_make_loc_ref);
    8002a1a0:	07a00593          	li	a1,122
    8002a1a4:	8522                	mv	a0,s0
    8002a1a6:	13d270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30281
                    dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002a1aa:	85a6                	mv	a1,s1
    8002a1ac:	854a                	mv	a0,s2
    8002a1ae:	f59e00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a1b2:	0005059b          	sext.w	a1,a0
    8002a1b6:	8522                	mv	a0,s0
    8002a1b8:	f2bde0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30282
                    dbuf_put_u16(bc, var_idx);
    8002a1bc:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:30553
                dbuf_put_u16(bc, idx);
    8002a1be:	8522                	mv	a0,s0
    8002a1c0:	dedde0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30554
                break;
    8002a1c4:	a069                	j	8002a24e <resolve_scope_var+0x3e0>
quickjs-nuttx/quickjs.c:30287
            dbuf_putc(bc, OP_undefined);
    8002a1c6:	4599                	li	a1,6
    8002a1c8:	8522                	mv	a0,s0
    8002a1ca:	119270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30294 (discriminator 2)
            is_put = (op == OP_scope_put_var || op == OP_scope_put_var_init);
    8002a1ce:	f41a8593          	addi	a1,s5,-191 # 1fffff41 <asinh-0x600000bf>
    8002a1d2:	0015b593          	seqz	a1,a1
    8002a1d6:	a031                	j	8002a1e2 <resolve_scope_var+0x374>
quickjs-nuttx/quickjs.c:30294
    8002a1d8:	0bb00793          	li	a5,187
    8002a1dc:	4585                	li	a1,1
    8002a1de:	fefa98e3          	bne	s5,a5,8002a1ce <resolve_scope_var+0x360>
quickjs-nuttx/quickjs.c:30295 (discriminator 6)
            if (var_idx & ARGUMENT_VAR_OFFSET) {
    8002a1e2:	01da5793          	srli	a5,s4,0x1d
quickjs-nuttx/quickjs.c:30297 (discriminator 6)
                dbuf_put_u16(bc, var_idx - ARGUMENT_VAR_OFFSET);
    8002a1e6:	030a1913          	slli	s2,s4,0x30
quickjs-nuttx/quickjs.c:30295 (discriminator 6)
            if (var_idx & ARGUMENT_VAR_OFFSET) {
    8002a1ea:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:30297 (discriminator 6)
                dbuf_put_u16(bc, var_idx - ARGUMENT_VAR_OFFSET);
    8002a1ec:	03095913          	srli	s2,s2,0x30
quickjs-nuttx/quickjs.c:30295 (discriminator 6)
            if (var_idx & ARGUMENT_VAR_OFFSET) {
    8002a1f0:	cb81                	beqz	a5,8002a200 <resolve_scope_var+0x392>
quickjs-nuttx/quickjs.c:30296
                dbuf_putc(bc, OP_get_arg + is_put);
    8002a1f2:	05b58593          	addi	a1,a1,91
quickjs-nuttx/quickjs.c:30322
                        dbuf_putc(bc, OP_get_loc);
    8002a1f6:	8522                	mv	a0,s0
    8002a1f8:	0eb270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30325
                dbuf_put_u16(bc, var_idx);
    8002a1fc:	85ca                	mv	a1,s2
    8002a1fe:	b7c1                	j	8002a1be <resolve_scope_var+0x350>
quickjs-nuttx/quickjs.c:30300
                    if (s->vars[var_idx].is_lexical) {
    8002a200:	0909b783          	ld	a5,144(s3)
    8002a204:	004a1513          	slli	a0,s4,0x4
    8002a208:	97aa                	add	a5,a5,a0
    8002a20a:	47dc                	lw	a5,12(a5)
    8002a20c:	8b89                	andi	a5,a5,2
quickjs-nuttx/quickjs.c:30299
                if (is_put) {
    8002a20e:	c185                	beqz	a1,8002a22e <resolve_scope_var+0x3c0>
quickjs-nuttx/quickjs.c:30300
                    if (s->vars[var_idx].is_lexical) {
    8002a210:	cf81                	beqz	a5,8002a228 <resolve_scope_var+0x3ba>
quickjs-nuttx/quickjs.c:30301
                        if (op == OP_scope_put_var_init) {
    8002a212:	0bf00793          	li	a5,191
quickjs-nuttx/quickjs.c:30308
                            dbuf_putc(bc, OP_put_loc_check);
    8002a216:	06300593          	li	a1,99
quickjs-nuttx/quickjs.c:30301
                        if (op == OP_scope_put_var_init) {
    8002a21a:	fcfa9ee3          	bne	s5,a5,8002a1f6 <resolve_scope_var+0x388>
quickjs-nuttx/quickjs.c:30303
                            if (var_name == JS_ATOM_this)
    8002a21e:	47a1                	li	a5,8
quickjs-nuttx/quickjs.c:30304
                                dbuf_putc(bc, OP_put_loc_check_init);
    8002a220:	06400593          	li	a1,100
quickjs-nuttx/quickjs.c:30303
                            if (var_name == JS_ATOM_this)
    8002a224:	fcf489e3          	beq	s1,a5,8002a1f6 <resolve_scope_var+0x388>
quickjs-nuttx/quickjs.c:30306
                                dbuf_putc(bc, OP_put_loc);
    8002a228:	05900593          	li	a1,89
    8002a22c:	b7e9                	j	8002a1f6 <resolve_scope_var+0x388>
quickjs-nuttx/quickjs.c:30322
                        dbuf_putc(bc, OP_get_loc);
    8002a22e:	05800593          	li	a1,88
quickjs-nuttx/quickjs.c:30314
                    if (s->vars[var_idx].is_lexical) {
    8002a232:	d3f1                	beqz	a5,8002a1f6 <resolve_scope_var+0x388>
quickjs-nuttx/quickjs.c:30315
                        if (op == OP_scope_get_var_checkthis) {
    8002a234:	0c000793          	li	a5,192
quickjs-nuttx/quickjs.c:30317
                            dbuf_putc(bc, OP_get_loc_checkthis);
    8002a238:	06500593          	li	a1,101
quickjs-nuttx/quickjs.c:30315
                        if (op == OP_scope_get_var_checkthis) {
    8002a23c:	fafa8de3          	beq	s5,a5,8002a1f6 <resolve_scope_var+0x388>
quickjs-nuttx/quickjs.c:30319
                            dbuf_putc(bc, OP_get_loc_check);
    8002a240:	06200593          	li	a1,98
    8002a244:	bf4d                	j	8002a1f6 <resolve_scope_var+0x388>
quickjs-nuttx/quickjs.c:30329
            dbuf_putc(bc, OP_push_false);
    8002a246:	45a5                	li	a1,9
    8002a248:	8522                	mv	a0,s0
    8002a24a:	099270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30598
    if (label_done >= 0) {
    8002a24e:	57b2                	lw	a5,44(sp)
    8002a250:	0207c463          	bltz	a5,8002a278 <resolve_scope_var+0x40a>
quickjs-nuttx/quickjs.c:30599
        dbuf_putc(bc, OP_label);
    8002a254:	0b800593          	li	a1,184
    8002a258:	8522                	mv	a0,s0
    8002a25a:	089270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30600
        dbuf_put_u32(bc, label_done);
    8002a25e:	55b2                	lw	a1,44(sp)
    8002a260:	8522                	mv	a0,s0
    8002a262:	e81de0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30601
        s->label_slots[label_done].pos2 = bc->size;
    8002a266:	5732                	lw	a4,44(sp)
    8002a268:	46e1                	li	a3,24
    8002a26a:	1709b783          	ld	a5,368(s3)
    8002a26e:	02d70733          	mul	a4,a4,a3
    8002a272:	97ba                	add	a5,a5,a4
    8002a274:	6418                	ld	a4,8(s0)
    8002a276:	c798                	sw	a4,8(a5)
quickjs-nuttx/quickjs.c:30604
}
    8002a278:	60ea                	ld	ra,152(sp)
    8002a27a:	644a                	ld	s0,144(sp)
    8002a27c:	64aa                	ld	s1,136(sp)
    8002a27e:	690a                	ld	s2,128(sp)
    8002a280:	79e6                	ld	s3,120(sp)
    8002a282:	7a46                	ld	s4,112(sp)
    8002a284:	7aa6                	ld	s5,104(sp)
    8002a286:	7b06                	ld	s6,96(sp)
    8002a288:	6c46                	ld	s8,80(sp)
    8002a28a:	6ca6                	ld	s9,72(sp)
    8002a28c:	6d06                	ld	s10,64(sp)
    8002a28e:	7de2                	ld	s11,56(sp)
    8002a290:	855e                	mv	a0,s7
    8002a292:	6be6                	ld	s7,88(sp)
    8002a294:	610d                	addi	sp,sp,160
    8002a296:	8082                	ret
quickjs-nuttx/quickjs.c:30352
            vd = &fd->vars[idx];
    8002a298:	090d3703          	ld	a4,144(s10)
    8002a29c:	00479e13          	slli	t3,a5,0x4
    8002a2a0:	01c70db3          	add	s11,a4,t3
quickjs-nuttx/quickjs.c:30353
            if (vd->var_name == var_name) {
    8002a2a4:	000da703          	lw	a4,0(s11)
    8002a2a8:	04971d63          	bne	a4,s1,8002a302 <resolve_scope_var+0x494>
quickjs-nuttx/quickjs.c:30354
                if (op == OP_scope_put_var || op == OP_scope_make_ref) {
    8002a2ac:	f45a871b          	addiw	a4,s5,-187
    8002a2b0:	9b75                	andi	a4,a4,-3
    8002a2b2:	2701                	sext.w	a4,a4
    8002a2b4:	e711                	bnez	a4,8002a2c0 <resolve_scope_var+0x452>
quickjs-nuttx/quickjs.c:30355
                    if (vd->is_const) {
    8002a2b6:	00cda703          	lw	a4,12(s11)
    8002a2ba:	8b05                	andi	a4,a4,1
    8002a2bc:	d40711e3          	bnez	a4,80029ffe <resolve_scope_var+0x190>
quickjs-nuttx/quickjs.c:30468
        if (var_idx & ARGUMENT_VAR_OFFSET) {
    8002a2c0:	01d7d713          	srli	a4,a5,0x1d
    8002a2c4:	8b05                	andi	a4,a4,1
    8002a2c6:	2c071c63          	bnez	a4,8002a59e <resolve_scope_var+0x730>
quickjs-nuttx/quickjs.c:30474
            fd->vars[var_idx].is_captured = 1;
    8002a2ca:	090d3683          	ld	a3,144(s10)
    8002a2ce:	00479593          	slli	a1,a5,0x4
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a2d2:	8826                	mv	a6,s1
resolve_scope_var():
quickjs-nuttx/quickjs.c:30474
            fd->vars[var_idx].is_captured = 1;
    8002a2d4:	96ae                	add	a3,a3,a1
    8002a2d6:	46d0                	lw	a2,12(a3)
    8002a2d8:	00466613          	ori	a2,a2,4
    8002a2dc:	c6d0                	sw	a2,12(a3)
quickjs-nuttx/quickjs.c:30478
                                  fd->vars[var_idx].is_const,
    8002a2de:	090d3703          	ld	a4,144(s10)
    8002a2e2:	972e                	add	a4,a4,a1
    8002a2e4:	00c72883          	lw	a7,12(a4)
quickjs-nuttx/quickjs.c:30480
                                  fd->vars[var_idx].var_kind);
    8002a2e8:	0048d69b          	srliw	a3,a7,0x4
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a2ec:	8abd                	andi	a3,a3,15
    8002a2ee:	e436                	sd	a3,8(sp)
resolve_scope_var():
quickjs-nuttx/quickjs.c:30479
                                  fd->vars[var_idx].is_lexical,
    8002a2f0:	4758                	lw	a4,12(a4)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a2f2:	0018f893          	andi	a7,a7,1
resolve_scope_var():
quickjs-nuttx/quickjs.c:30479
                                  fd->vars[var_idx].is_lexical,
    8002a2f6:	0017571b          	srliw	a4,a4,0x1
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a2fa:	8b05                	andi	a4,a4,1
    8002a2fc:	e03a                	sd	a4,0(sp)
    8002a2fe:	4701                	li	a4,0
    8002a300:	a4c1                	j	8002a5c0 <resolve_scope_var+0x752>
resolve_scope_var():
quickjs-nuttx/quickjs.c:30364
            } else if (vd->var_name == JS_ATOM__with_ && !is_pseudo_var) {
    8002a302:	05500693          	li	a3,85
    8002a306:	04d71e63          	bne	a4,a3,8002a362 <resolve_scope_var+0x4f4>
quickjs-nuttx/quickjs.c:30364 (discriminator 1)
    8002a30a:	040c1c63          	bnez	s8,8002a362 <resolve_scope_var+0x4f4>
quickjs-nuttx/quickjs.c:30365
                vd->is_captured = 1;
    8002a30e:	00cda703          	lw	a4,12(s11)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a312:	4881                	li	a7,0
    8002a314:	05500813          	li	a6,85
resolve_scope_var():
quickjs-nuttx/quickjs.c:30365
                vd->is_captured = 1;
    8002a318:	00476713          	ori	a4,a4,4
    8002a31c:	00eda623          	sw	a4,12(s11)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a320:	e402                	sd	zero,8(sp)
    8002a322:	e002                	sd	zero,0(sp)
    8002a324:	4701                	li	a4,0
    8002a326:	4685                	li	a3,1
    8002a328:	866a                	mv	a2,s10
    8002a32a:	85ce                	mv	a1,s3
    8002a32c:	854a                	mv	a0,s2
    8002a32e:	9a1ff0ef          	jal	ra,80029cce <get_closure_var2>
resolve_scope_var():
quickjs-nuttx/quickjs.c:30367
                if (idx >= 0) {
    8002a332:	e82a                	sd	a0,16(sp)
    8002a334:	02054763          	bltz	a0,8002a362 <resolve_scope_var+0x4f4>
quickjs-nuttx/quickjs.c:30368
                    dbuf_putc(bc, OP_get_var_ref);
    8002a338:	05e00593          	li	a1,94
    8002a33c:	8522                	mv	a0,s0
    8002a33e:	7a4270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30369
                    dbuf_put_u16(bc, idx);
    8002a342:	67c2                	ld	a5,16(sp)
    8002a344:	8522                	mv	a0,s0
    8002a346:	03079593          	slli	a1,a5,0x30
    8002a34a:	91c1                	srli	a1,a1,0x30
    8002a34c:	c61de0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30370
                    var_object_test(ctx, s, var_name, op, bc, &label_done, 1);
    8002a350:	4805                	li	a6,1
    8002a352:	107c                	addi	a5,sp,44
    8002a354:	8722                	mv	a4,s0
    8002a356:	86d6                	mv	a3,s5
    8002a358:	8626                	mv	a2,s1
    8002a35a:	85ce                	mv	a1,s3
    8002a35c:	854a                	mv	a0,s2
    8002a35e:	fd7f20ef          	jal	ra,8001d334 <var_object_test>
quickjs-nuttx/quickjs.c:30373
            idx = vd->scope_next;
    8002a362:	008da783          	lw	a5,8(s11)
    8002a366:	b115                	j	80029f8a <resolve_scope_var+0x11c>
quickjs-nuttx/quickjs.c:30385
            var_idx = resolve_pseudo_var(ctx, fd, var_name);
    8002a368:	8626                	mv	a2,s1
    8002a36a:	85ea                	mv	a1,s10
    8002a36c:	854a                	mv	a0,s2
    8002a36e:	e83e                	sd	a5,16(sp)
    8002a370:	f7cff0ef          	jal	ra,80029aec <resolve_pseudo_var>
quickjs-nuttx/quickjs.c:30386
            if (var_idx >= 0)
    8002a374:	67c2                	ld	a5,16(sp)
    8002a376:	c20549e3          	bltz	a0,80029fa8 <resolve_scope_var+0x13a>
    8002a37a:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:30431
    if (var_idx < 0 && fd->is_eval) {
    8002a37c:	b791                	j	8002a2c0 <resolve_scope_var+0x452>
quickjs-nuttx/quickjs.c:30393
        if (fd->is_func_expr && fd->func_name == var_name) {
    8002a37e:	044d2703          	lw	a4,68(s10)
    8002a382:	cb19                	beqz	a4,8002a398 <resolve_scope_var+0x52a>
quickjs-nuttx/quickjs.c:30393 (discriminator 1)
    8002a384:	088d2703          	lw	a4,136(s10)
    8002a388:	00971863          	bne	a4,s1,8002a398 <resolve_scope_var+0x52a>
quickjs-nuttx/quickjs.c:30395
            var_idx = add_func_var(ctx, fd, var_name);
    8002a38c:	8626                	mv	a2,s1
    8002a38e:	85ea                	mv	a1,s10
    8002a390:	854a                	mv	a0,s2
    8002a392:	f06ff0ef          	jal	ra,80029a98 <add_func_var>
    8002a396:	b12d                	j	80029fc0 <resolve_scope_var+0x152>
quickjs-nuttx/quickjs.c:30400
        if (!is_arg_scope && fd->var_object_idx >= 0 && !is_pseudo_var) {
    8002a398:	07478563          	beq	a5,s4,8002a402 <resolve_scope_var+0x594>
quickjs-nuttx/quickjs.c:30400 (discriminator 1)
    8002a39c:	0b4d2783          	lw	a5,180(s10)
    8002a3a0:	0607c163          	bltz	a5,8002a402 <resolve_scope_var+0x594>
quickjs-nuttx/quickjs.c:30400 (discriminator 2)
    8002a3a4:	040c1f63          	bnez	s8,8002a402 <resolve_scope_var+0x594>
quickjs-nuttx/quickjs.c:30401
            vd = &fd->vars[fd->var_object_idx];
    8002a3a8:	00479713          	slli	a4,a5,0x4
    8002a3ac:	090d3783          	ld	a5,144(s10)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a3b0:	4685                	li	a3,1
    8002a3b2:	866a                	mv	a2,s10
resolve_scope_var():
quickjs-nuttx/quickjs.c:30401
            vd = &fd->vars[fd->var_object_idx];
    8002a3b4:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30402
            vd->is_captured = 1;
    8002a3b6:	47d8                	lw	a4,12(a5)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a3b8:	0007a803          	lw	a6,0(a5) # ffffffffe0000000 <_ebss+0xffffffff5fefee9a>
    8002a3bc:	4881                	li	a7,0
resolve_scope_var():
quickjs-nuttx/quickjs.c:30402
            vd->is_captured = 1;
    8002a3be:	00476713          	ori	a4,a4,4
    8002a3c2:	c7d8                	sw	a4,12(a5)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a3c4:	0b4d2783          	lw	a5,180(s10)
    8002a3c8:	4701                	li	a4,0
    8002a3ca:	85ce                	mv	a1,s3
    8002a3cc:	e402                	sd	zero,8(sp)
    8002a3ce:	e002                	sd	zero,0(sp)
    8002a3d0:	854a                	mv	a0,s2
    8002a3d2:	8fdff0ef          	jal	ra,80029cce <get_closure_var2>
    8002a3d6:	e82a                	sd	a0,16(sp)
resolve_scope_var():
quickjs-nuttx/quickjs.c:30406
            dbuf_putc(bc, OP_get_var_ref);
    8002a3d8:	05e00593          	li	a1,94
    8002a3dc:	8522                	mv	a0,s0
    8002a3de:	704270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30407
            dbuf_put_u16(bc, idx);
    8002a3e2:	67c2                	ld	a5,16(sp)
    8002a3e4:	8522                	mv	a0,s0
    8002a3e6:	03079593          	slli	a1,a5,0x30
    8002a3ea:	91c1                	srli	a1,a1,0x30
    8002a3ec:	bc1de0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30408
            var_object_test(ctx, s, var_name, op, bc, &label_done, 0);
    8002a3f0:	4801                	li	a6,0
    8002a3f2:	107c                	addi	a5,sp,44
    8002a3f4:	8722                	mv	a4,s0
    8002a3f6:	86d6                	mv	a3,s5
    8002a3f8:	8626                	mv	a2,s1
    8002a3fa:	85ce                	mv	a1,s3
    8002a3fc:	854a                	mv	a0,s2
    8002a3fe:	f37f20ef          	jal	ra,8001d334 <var_object_test>
quickjs-nuttx/quickjs.c:30412
        if (fd->arg_var_object_idx >= 0 && !is_pseudo_var) {
    8002a402:	0b8d2783          	lw	a5,184(s10)
    8002a406:	0607c163          	bltz	a5,8002a468 <resolve_scope_var+0x5fa>
quickjs-nuttx/quickjs.c:30412 (discriminator 1)
    8002a40a:	040c1f63          	bnez	s8,8002a468 <resolve_scope_var+0x5fa>
quickjs-nuttx/quickjs.c:30413
            vd = &fd->vars[fd->arg_var_object_idx];
    8002a40e:	00479713          	slli	a4,a5,0x4
    8002a412:	090d3783          	ld	a5,144(s10)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a416:	4685                	li	a3,1
    8002a418:	866a                	mv	a2,s10
resolve_scope_var():
quickjs-nuttx/quickjs.c:30413
            vd = &fd->vars[fd->arg_var_object_idx];
    8002a41a:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30414
            vd->is_captured = 1;
    8002a41c:	47d8                	lw	a4,12(a5)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a41e:	0007a803          	lw	a6,0(a5)
    8002a422:	4881                	li	a7,0
resolve_scope_var():
quickjs-nuttx/quickjs.c:30414
            vd->is_captured = 1;
    8002a424:	00476713          	ori	a4,a4,4
    8002a428:	c7d8                	sw	a4,12(a5)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a42a:	0b8d2783          	lw	a5,184(s10)
    8002a42e:	4701                	li	a4,0
    8002a430:	85ce                	mv	a1,s3
    8002a432:	e402                	sd	zero,8(sp)
    8002a434:	e002                	sd	zero,0(sp)
    8002a436:	854a                	mv	a0,s2
    8002a438:	897ff0ef          	jal	ra,80029cce <get_closure_var2>
    8002a43c:	e82a                	sd	a0,16(sp)
resolve_scope_var():
quickjs-nuttx/quickjs.c:30418
            dbuf_putc(bc, OP_get_var_ref);
    8002a43e:	05e00593          	li	a1,94
    8002a442:	8522                	mv	a0,s0
    8002a444:	69e270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30419
            dbuf_put_u16(bc, idx);
    8002a448:	67c2                	ld	a5,16(sp)
    8002a44a:	8522                	mv	a0,s0
    8002a44c:	03079593          	slli	a1,a5,0x30
    8002a450:	91c1                	srli	a1,a1,0x30
    8002a452:	b5bde0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30420
            var_object_test(ctx, s, var_name, op, bc, &label_done, 0);
    8002a456:	4801                	li	a6,0
    8002a458:	107c                	addi	a5,sp,44
    8002a45a:	8722                	mv	a4,s0
    8002a45c:	86d6                	mv	a3,s5
    8002a45e:	8626                	mv	a2,s1
    8002a460:	85ce                	mv	a1,s3
    8002a462:	854a                	mv	a0,s2
    8002a464:	ed1f20ef          	jal	ra,8001d334 <var_object_test>
quickjs-nuttx/quickjs.c:30423
        if (fd->is_eval)
    8002a468:	038d2783          	lw	a5,56(s10)
    8002a46c:	b00783e3          	beqz	a5,80029f72 <resolve_scope_var+0x104>
    8002a470:	8e6a                	mv	t3,s10
    8002a472:	beb9                	j	80029fd0 <resolve_scope_var+0x162>
quickjs-nuttx/quickjs.c:30434
            JSClosureVar *cv = &fd->closure_var[idx1];
    8002a474:	1a0e3783          	ld	a5,416(t3)
    8002a478:	003a1693          	slli	a3,s4,0x3
    8002a47c:	96be                	add	a3,a3,a5
quickjs-nuttx/quickjs.c:30435
            if (var_name == cv->var_name) {
    8002a47e:	0046a803          	lw	a6,4(a3)
    8002a482:	08981163          	bne	a6,s1,8002a504 <resolve_scope_var+0x696>
quickjs-nuttx/quickjs.c:30436
                if (fd != s) {
    8002a486:	03c98c63          	beq	s3,t3,8002a4be <resolve_scope_var+0x650>
quickjs-nuttx/quickjs.c:30440
                                           cv->var_name, cv->is_const,
    8002a48a:	429c                	lw	a5,0(a3)
quickjs-nuttx/quickjs.c:30437
                    idx = get_closure_var2(ctx, s, fd,
    8002a48c:	8826                	mv	a6,s1
    8002a48e:	8672                	mv	a2,t3
quickjs-nuttx/quickjs.c:30440
                                           cv->var_name, cv->is_const,
    8002a490:	0027d89b          	srliw	a7,a5,0x2
quickjs-nuttx/quickjs.c:30439
                                           cv->is_arg, idx1,
    8002a494:	0017d71b          	srliw	a4,a5,0x1
quickjs-nuttx/quickjs.c:30441
                                           cv->is_lexical, cv->var_kind);
    8002a498:	0047d79b          	srliw	a5,a5,0x4
quickjs-nuttx/quickjs.c:30437
                    idx = get_closure_var2(ctx, s, fd,
    8002a49c:	8bbd                	andi	a5,a5,15
    8002a49e:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:30441
                                           cv->is_lexical, cv->var_kind);
    8002a4a0:	429c                	lw	a5,0(a3)
quickjs-nuttx/quickjs.c:30437
                    idx = get_closure_var2(ctx, s, fd,
    8002a4a2:	0018f893          	andi	a7,a7,1
    8002a4a6:	8b05                	andi	a4,a4,1
quickjs-nuttx/quickjs.c:30441
                                           cv->is_lexical, cv->var_kind);
    8002a4a8:	0037d79b          	srliw	a5,a5,0x3
quickjs-nuttx/quickjs.c:30437
                    idx = get_closure_var2(ctx, s, fd,
    8002a4ac:	8b85                	andi	a5,a5,1
    8002a4ae:	e03e                	sd	a5,0(sp)
    8002a4b0:	4681                	li	a3,0
    8002a4b2:	87d2                	mv	a5,s4
    8002a4b4:	85ce                	mv	a1,s3
    8002a4b6:	854a                	mv	a0,s2
    8002a4b8:	817ff0ef          	jal	ra,80029cce <get_closure_var2>
    8002a4bc:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:30484
            if ((op == OP_scope_put_var || op == OP_scope_make_ref) &&
    8002a4be:	f45a879b          	addiw	a5,s5,-187
    8002a4c2:	9bf5                	andi	a5,a5,-3
    8002a4c4:	2781                	sext.w	a5,a5
    8002a4c6:	38079163          	bnez	a5,8002a848 <resolve_scope_var+0x9da>
quickjs-nuttx/quickjs.c:30484 (discriminator 3)
    8002a4ca:	1a09b783          	ld	a5,416(s3)
    8002a4ce:	003a1713          	slli	a4,s4,0x3
    8002a4d2:	97ba                	add	a5,a5,a4
    8002a4d4:	0007c783          	lbu	a5,0(a5)
    8002a4d8:	8b91                	andi	a5,a5,4
    8002a4da:	b20792e3          	bnez	a5,80029ffe <resolve_scope_var+0x190>
quickjs-nuttx/quickjs.c:30491
            switch (op) {
    8002a4de:	f47a879b          	addiw	a5,s5,-185
    8002a4e2:	0007869b          	sext.w	a3,a5
    8002a4e6:	4719                	li	a4,6
    8002a4e8:	d6d763e3          	bltu	a4,a3,8002a24e <resolve_scope_var+0x3e0>
    8002a4ec:	02079713          	slli	a4,a5,0x20
    8002a4f0:	01e75793          	srli	a5,a4,0x1e
    8002a4f4:	00041717          	auipc	a4,0x41
    8002a4f8:	ee470713          	addi	a4,a4,-284 # 8006b3d8 <qjsc_repl+0x5e28>
    8002a4fc:	97ba                	add	a5,a5,a4
    8002a4fe:	439c                	lw	a5,0(a5)
    8002a500:	97ba                	add	a5,a5,a4
    8002a502:	8782                	jr	a5
quickjs-nuttx/quickjs.c:30446
            } else if ((cv->var_name == JS_ATOM__var_ ||
    8002a504:	fad8079b          	addiw	a5,a6,-83
    8002a508:	06fde363          	bltu	s11,a5,8002a56e <resolve_scope_var+0x700>
quickjs-nuttx/quickjs.c:30448
                        cv->var_name == JS_ATOM__with_) && !is_pseudo_var) {
    8002a50c:	060c1163          	bnez	s8,8002a56e <resolve_scope_var+0x700>
quickjs-nuttx/quickjs.c:30449
                int is_with = (cv->var_name == JS_ATOM__with_);
    8002a510:	fab80d13          	addi	s10,a6,-85
    8002a514:	001d3d13          	seqz	s10,s10
quickjs-nuttx/quickjs.c:30450
                if (fd != s) {
    8002a518:	87d2                	mv	a5,s4
    8002a51a:	03c98263          	beq	s3,t3,8002a53e <resolve_scope_var+0x6d0>
quickjs-nuttx/quickjs.c:30453
                                           cv->is_arg, idx1,
    8002a51e:	4298                	lw	a4,0(a3)
quickjs-nuttx/quickjs.c:30451
                    idx = get_closure_var2(ctx, s, fd,
    8002a520:	8672                	mv	a2,t3
    8002a522:	e402                	sd	zero,8(sp)
quickjs-nuttx/quickjs.c:30453
                                           cv->is_arg, idx1,
    8002a524:	0017571b          	srliw	a4,a4,0x1
quickjs-nuttx/quickjs.c:30451
                    idx = get_closure_var2(ctx, s, fd,
    8002a528:	e002                	sd	zero,0(sp)
    8002a52a:	4881                	li	a7,0
    8002a52c:	8b05                	andi	a4,a4,1
    8002a52e:	4681                	li	a3,0
    8002a530:	85ce                	mv	a1,s3
    8002a532:	854a                	mv	a0,s2
    8002a534:	e872                	sd	t3,16(sp)
    8002a536:	f98ff0ef          	jal	ra,80029cce <get_closure_var2>
    8002a53a:	6e42                	ld	t3,16(sp)
    8002a53c:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:30459
                dbuf_putc(bc, OP_get_var_ref);
    8002a53e:	05e00593          	li	a1,94
    8002a542:	8522                	mv	a0,s0
    8002a544:	ec72                	sd	t3,24(sp)
    8002a546:	e83e                	sd	a5,16(sp)
    8002a548:	59a270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30460
                dbuf_put_u16(bc, idx);
    8002a54c:	67c2                	ld	a5,16(sp)
    8002a54e:	8522                	mv	a0,s0
    8002a550:	03079593          	slli	a1,a5,0x30
    8002a554:	91c1                	srli	a1,a1,0x30
    8002a556:	a57de0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30461
                var_object_test(ctx, s, var_name, op, bc, &label_done, is_with);
    8002a55a:	886a                	mv	a6,s10
    8002a55c:	107c                	addi	a5,sp,44
    8002a55e:	8722                	mv	a4,s0
    8002a560:	86d6                	mv	a3,s5
    8002a562:	8626                	mv	a2,s1
    8002a564:	85ce                	mv	a1,s3
    8002a566:	854a                	mv	a0,s2
    8002a568:	dcdf20ef          	jal	ra,8001d334 <var_object_test>
    8002a56c:	6e62                	ld	t3,24(sp)
quickjs-nuttx/quickjs.c:30433 (discriminator 2)
        for (idx1 = 0; idx1 < fd->closure_var_count; idx1++) {
    8002a56e:	2a05                	addiw	s4,s4,1
quickjs-nuttx/quickjs.c:30433 (discriminator 1)
    8002a570:	198e2783          	lw	a5,408(t3)
    8002a574:	f0fa40e3          	blt	s4,a5,8002a474 <resolve_scope_var+0x606>
quickjs-nuttx/quickjs.c:30565
    switch (op) {
    8002a578:	f47a879b          	addiw	a5,s5,-185
    8002a57c:	0007869b          	sext.w	a3,a5
    8002a580:	4719                	li	a4,6
    8002a582:	ccd766e3          	bltu	a4,a3,8002a24e <resolve_scope_var+0x3e0>
    8002a586:	02079713          	slli	a4,a5,0x20
    8002a58a:	01e75793          	srli	a5,a4,0x1e
    8002a58e:	00041717          	auipc	a4,0x41
    8002a592:	e6670713          	addi	a4,a4,-410 # 8006b3f4 <qjsc_repl+0x5e44>
    8002a596:	97ba                	add	a5,a5,a4
    8002a598:	439c                	lw	a5,0(a5)
    8002a59a:	97ba                	add	a5,a5,a4
    8002a59c:	8782                	jr	a5
quickjs-nuttx/quickjs.c:30469
            fd->args[var_idx - ARGUMENT_VAR_OFFSET].is_captured = 1;
    8002a59e:	0a0d3703          	ld	a4,160(s10)
    8002a5a2:	e0000537          	lui	a0,0xe0000
    8002a5a6:	9fa9                	addw	a5,a5,a0
    8002a5a8:	00479693          	slli	a3,a5,0x4
    8002a5ac:	9736                	add	a4,a4,a3
    8002a5ae:	4754                	lw	a3,12(a4)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a5b0:	4881                	li	a7,0
    8002a5b2:	8826                	mv	a6,s1
resolve_scope_var():
quickjs-nuttx/quickjs.c:30469
            fd->args[var_idx - ARGUMENT_VAR_OFFSET].is_captured = 1;
    8002a5b4:	0046e693          	ori	a3,a3,4
    8002a5b8:	c754                	sw	a3,12(a4)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002a5ba:	e402                	sd	zero,8(sp)
    8002a5bc:	e002                	sd	zero,0(sp)
    8002a5be:	4705                	li	a4,1
    8002a5c0:	4685                	li	a3,1
    8002a5c2:	866a                	mv	a2,s10
    8002a5c4:	85ce                	mv	a1,s3
    8002a5c6:	854a                	mv	a0,s2
    8002a5c8:	f06ff0ef          	jal	ra,80029cce <get_closure_var2>
    8002a5cc:	8a2a                	mv	s4,a0
resolve_scope_var():
quickjs-nuttx/quickjs.c:30482
        if (idx >= 0) {
    8002a5ce:	ee0558e3          	bgez	a0,8002a4be <resolve_scope_var+0x650>
    8002a5d2:	b75d                	j	8002a578 <resolve_scope_var+0x70a>
quickjs-nuttx/quickjs.c:30493
                if (s->closure_var[idx].var_kind == JS_VAR_FUNCTION_NAME) {
    8002a5d4:	1a09b783          	ld	a5,416(s3)
    8002a5d8:	003a1713          	slli	a4,s4,0x3
    8002a5dc:	97ba                	add	a5,a5,a4
    8002a5de:	0007ca83          	lbu	s5,0(a5)
    8002a5e2:	04000793          	li	a5,64
    8002a5e6:	0f0af713          	andi	a4,s5,240
    8002a5ea:	00f71963          	bne	a4,a5,8002a5fc <resolve_scope_var+0x78e>
quickjs-nuttx/quickjs.c:30495
                    dbuf_putc(bc, OP_object);
    8002a5ee:	45ad                	li	a1,11
    8002a5f0:	8522                	mv	a0,s0
    8002a5f2:	4f0270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30496
                    dbuf_putc(bc, OP_get_var_ref);
    8002a5f6:	05e00593          	li	a1,94
    8002a5fa:	bcfd                	j	8002a0f8 <resolve_scope_var+0x28a>
quickjs-nuttx/quickjs.c:30503
                if (label_done == -1 &&
    8002a5fc:	5732                	lw	a4,44(sp)
    8002a5fe:	57fd                	li	a5,-1
    8002a600:	02f71163          	bne	a4,a5,8002a622 <resolve_scope_var+0x7b4>
quickjs-nuttx/quickjs.c:30504 (discriminator 1)
                    can_opt_put_ref_value(bc_buf, ls->pos)) {
    8002a604:	004ca583          	lw	a1,4(s9)
    8002a608:	855a                	mv	a0,s6
    8002a60a:	9e1dd0ef          	jal	ra,80007fea <can_opt_put_global_ref_value>
quickjs-nuttx/quickjs.c:30503 (discriminator 1)
                if (label_done == -1 &&
    8002a60e:	c911                	beqz	a0,8002a622 <resolve_scope_var+0x7b4>
quickjs-nuttx/quickjs.c:30506
                    if (s->closure_var[idx].is_lexical)
    8002a610:	008afa93          	andi	s5,s5,8
quickjs-nuttx/quickjs.c:30507
                        get_op = OP_get_var_ref_check;
    8002a614:	06600713          	li	a4,102
quickjs-nuttx/quickjs.c:30506
                    if (s->closure_var[idx].is_lexical)
    8002a618:	b40a97e3          	bnez	s5,8002a166 <resolve_scope_var+0x2f8>
quickjs-nuttx/quickjs.c:30509
                        get_op = OP_get_var_ref;
    8002a61c:	05e00713          	li	a4,94
    8002a620:	b699                	j	8002a166 <resolve_scope_var+0x2f8>
quickjs-nuttx/quickjs.c:30516
                    dbuf_putc(bc, OP_make_var_ref_ref);
    8002a622:	07c00593          	li	a1,124
    8002a626:	8522                	mv	a0,s0
    8002a628:	4ba270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30517
                    dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002a62c:	85a6                	mv	a1,s1
    8002a62e:	854a                	mv	a0,s2
    8002a630:	ad7e00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a634:	0005059b          	sext.w	a1,a0
    8002a638:	8522                	mv	a0,s0
    8002a63a:	aa9de0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30553
                dbuf_put_u16(bc, idx);
    8002a63e:	030a1593          	slli	a1,s4,0x30
    8002a642:	91c1                	srli	a1,a1,0x30
    8002a644:	bead                	j	8002a1be <resolve_scope_var+0x350>
quickjs-nuttx/quickjs.c:30524
                dbuf_putc(bc, OP_undefined);
    8002a646:	4599                	li	a1,6
    8002a648:	8522                	mv	a0,s0
    8002a64a:	498270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30547
                    if (s->closure_var[idx].is_lexical) {
    8002a64e:	1a09b783          	ld	a5,416(s3)
    8002a652:	003a1713          	slli	a4,s4,0x3
quickjs-nuttx/quickjs.c:30548
                        dbuf_putc(bc, OP_get_var_ref_check);
    8002a656:	06600593          	li	a1,102
quickjs-nuttx/quickjs.c:30547
                    if (s->closure_var[idx].is_lexical) {
    8002a65a:	97ba                	add	a5,a5,a4
    8002a65c:	0007c783          	lbu	a5,0(a5)
    8002a660:	8ba1                	andi	a5,a5,8
    8002a662:	e3b1                	bnez	a5,8002a6a6 <resolve_scope_var+0x838>
quickjs-nuttx/quickjs.c:30550
                        dbuf_putc(bc, OP_get_var_ref);
    8002a664:	05e00593          	li	a1,94
    8002a668:	a83d                	j	8002a6a6 <resolve_scope_var+0x838>
quickjs-nuttx/quickjs.c:30530
                is_put = (op == OP_scope_put_var ||
    8002a66a:	0bb00793          	li	a5,187
    8002a66e:	00fa8663          	beq	s5,a5,8002a67a <resolve_scope_var+0x80c>
quickjs-nuttx/quickjs.c:30530 (discriminator 2)
    8002a672:	0bf00793          	li	a5,191
    8002a676:	fcfa9ce3          	bne	s5,a5,8002a64e <resolve_scope_var+0x7e0>
quickjs-nuttx/quickjs.c:30533
                    if (s->closure_var[idx].is_lexical) {
    8002a67a:	1a09b783          	ld	a5,416(s3)
    8002a67e:	003a1713          	slli	a4,s4,0x3
    8002a682:	97ba                	add	a5,a5,a4
    8002a684:	0007c783          	lbu	a5,0(a5)
    8002a688:	8ba1                	andi	a5,a5,8
    8002a68a:	cf81                	beqz	a5,8002a6a2 <resolve_scope_var+0x834>
quickjs-nuttx/quickjs.c:30534
                        if (op == OP_scope_put_var_init) {
    8002a68c:	0bf00793          	li	a5,191
quickjs-nuttx/quickjs.c:30541
                            dbuf_putc(bc, OP_put_var_ref_check);
    8002a690:	06700593          	li	a1,103
quickjs-nuttx/quickjs.c:30534
                        if (op == OP_scope_put_var_init) {
    8002a694:	00fa9963          	bne	s5,a5,8002a6a6 <resolve_scope_var+0x838>
quickjs-nuttx/quickjs.c:30536
                            if (var_name == JS_ATOM_this)
    8002a698:	47a1                	li	a5,8
quickjs-nuttx/quickjs.c:30537
                                dbuf_putc(bc, OP_put_var_ref_check_init);
    8002a69a:	06800593          	li	a1,104
quickjs-nuttx/quickjs.c:30536
                            if (var_name == JS_ATOM_this)
    8002a69e:	00f48463          	beq	s1,a5,8002a6a6 <resolve_scope_var+0x838>
quickjs-nuttx/quickjs.c:30539
                                dbuf_putc(bc, OP_put_var_ref);
    8002a6a2:	05f00593          	li	a1,95
quickjs-nuttx/quickjs.c:30550
                        dbuf_putc(bc, OP_get_var_ref);
    8002a6a6:	8522                	mv	a0,s0
    8002a6a8:	43a270ef          	jal	ra,80051ae2 <dbuf_putc>
    8002a6ac:	bf49                	j	8002a63e <resolve_scope_var+0x7d0>
quickjs-nuttx/quickjs.c:30567
        if (label_done == -1 && can_opt_put_global_ref_value(bc_buf, ls->pos)) {
    8002a6ae:	5732                	lw	a4,44(sp)
    8002a6b0:	57fd                	li	a5,-1
    8002a6b2:	14f71363          	bne	a4,a5,8002a7f8 <resolve_scope_var+0x98a>
quickjs-nuttx/quickjs.c:30567 (discriminator 1)
    8002a6b6:	004ca583          	lw	a1,4(s9)
    8002a6ba:	855a                	mv	a0,s6
    8002a6bc:	92fdd0ef          	jal	ra,80007fea <can_opt_put_global_ref_value>
    8002a6c0:	12050c63          	beqz	a0,8002a7f8 <resolve_scope_var+0x98a>
optimize_scope_make_global_ref():
quickjs-nuttx/quickjs.c:30038
    is_strict = ((s->js_mode & JS_MODE_STRICT) != 0);
    8002a6c4:	0869cc03          	lbu	s8,134(s3)
    8002a6c8:	001c7c13          	andi	s8,s8,1
quickjs-nuttx/quickjs.c:30042
    if (is_strict) {
    8002a6cc:	020c0063          	beqz	s8,8002a6ec <resolve_scope_var+0x87e>
quickjs-nuttx/quickjs.c:30046
        dbuf_putc(bc, OP_check_var);
    8002a6d0:	03600593          	li	a1,54
    8002a6d4:	8522                	mv	a0,s0
    8002a6d6:	40c270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30047
        dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002a6da:	85a6                	mv	a1,s1
    8002a6dc:	854a                	mv	a0,s2
    8002a6de:	a29e00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a6e2:	0005059b          	sext.w	a1,a0
    8002a6e6:	8522                	mv	a0,s0
    8002a6e8:	9fbde0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30051
    if (bc_buf[pos_next] == OP_get_ref_value) {
    8002a6ec:	017b07b3          	add	a5,s6,s7
    8002a6f0:	0007c703          	lbu	a4,0(a5)
    8002a6f4:	03c00793          	li	a5,60
    8002a6f8:	02f71163          	bne	a4,a5,8002a71a <resolve_scope_var+0x8ac>
quickjs-nuttx/quickjs.c:30052
        dbuf_putc(bc, OP_get_var);
    8002a6fc:	03800593          	li	a1,56
    8002a700:	8522                	mv	a0,s0
    8002a702:	3e0270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30053
        dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002a706:	85a6                	mv	a1,s1
    8002a708:	854a                	mv	a0,s2
    8002a70a:	9fde00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a70e:	0005059b          	sext.w	a1,a0
    8002a712:	8522                	mv	a0,s0
    8002a714:	9cfde0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30054
        pos_next++;
    8002a718:	2b85                	addiw	s7,s7,1
quickjs-nuttx/quickjs.c:30059
    label_pos = ls->pos;
    8002a71a:	004caa83          	lw	s5,4(s9)
quickjs-nuttx/quickjs.c:30061
    assert(bc_buf[pos] == OP_label);
    8002a71e:	0b800793          	li	a5,184
quickjs-nuttx/quickjs.c:30060
    pos = label_pos - 5;
    8002a722:	ffba8a1b          	addiw	s4,s5,-5
quickjs-nuttx/quickjs.c:30061
    assert(bc_buf[pos] == OP_label);
    8002a726:	014b0733          	add	a4,s6,s4
    8002a72a:	00074683          	lbu	a3,0(a4)
    8002a72e:	00f68c63          	beq	a3,a5,8002a746 <resolve_scope_var+0x8d8>
    8002a732:	659d                	lui	a1,0x7
    8002a734:	4601                	li	a2,0
    8002a736:	56d58593          	addi	a1,a1,1389 # 756d <asinh-0x7fff8a93>
    8002a73a:	0003f517          	auipc	a0,0x3f
    8002a73e:	e5e50513          	addi	a0,a0,-418 # 80069598 <qjsc_repl+0x3fe8>
    8002a742:	21a360ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:30063
    op = bc_buf[label_pos];
    8002a746:	015b07b3          	add	a5,s6,s5
    8002a74a:	0007c783          	lbu	a5,0(a5)
quickjs-nuttx/quickjs.c:30062
    end_pos = label_pos + 2;
    8002a74e:	002a8c9b          	addiw	s9,s5,2
quickjs-nuttx/quickjs.c:30063
    op = bc_buf[label_pos];
    8002a752:	0007869b          	sext.w	a3,a5
quickjs-nuttx/quickjs.c:30064
    if (is_strict) {
    8002a756:	080c0463          	beqz	s8,8002a7de <resolve_scope_var+0x970>
quickjs-nuttx/quickjs.c:30065
        if (op != OP_nop) {
    8002a75a:	0b500613          	li	a2,181
    8002a75e:	02c68463          	beq	a3,a2,8002a786 <resolve_scope_var+0x918>
quickjs-nuttx/quickjs.c:30066
            switch(op) {
    8002a762:	46e5                	li	a3,25
    8002a764:	00d78c63          	beq	a5,a3,8002a77c <resolve_scope_var+0x90e>
    8002a768:	4675                	li	a2,29
quickjs-nuttx/quickjs.c:30074
                op = OP_swap;
    8002a76a:	46ed                	li	a3,27
quickjs-nuttx/quickjs.c:30066
            switch(op) {
    8002a76c:	00c78963          	beq	a5,a2,8002a77e <resolve_scope_var+0x910>
    8002a770:	4659                	li	a2,22
quickjs-nuttx/quickjs.c:30068
                op = OP_insert2;
    8002a772:	46d5                	li	a3,21
quickjs-nuttx/quickjs.c:30066
            switch(op) {
    8002a774:	00c78563          	beq	a5,a2,8002a77e <resolve_scope_var+0x910>
quickjs-nuttx/quickjs.c:30077
                abort();
    8002a778:	40a380ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:30066
            switch(op) {
    8002a77c:	46e1                	li	a3,24
quickjs-nuttx/quickjs.c:30079
            bc_buf[pos++] = op;
    8002a77e:	ffca8a1b          	addiw	s4,s5,-4
    8002a782:	00d70023          	sb	a3,0(a4)
quickjs-nuttx/quickjs.c:30086
        bc_buf[pos] = OP_put_var_strict;
    8002a786:	014b07b3          	add	a5,s6,s4
    8002a78a:	03b00713          	li	a4,59
quickjs-nuttx/quickjs.c:30089
        bc_buf[pos] = OP_put_var;
    8002a78e:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:30092
    put_u32(bc_buf + pos + 1, JS_DupAtom(ctx, var_name));
    8002a792:	85a6                	mv	a1,s1
    8002a794:	854a                	mv	a0,s2
    8002a796:	971e00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a79a:	001a0c13          	addi	s8,s4,1
    8002a79e:	9c5a                	add	s8,s8,s6
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8002a7a0:	0085579b          	srliw	a5,a0,0x8
    8002a7a4:	00ac0023          	sb	a0,0(s8)
    8002a7a8:	00fc00a3          	sb	a5,1(s8)
    8002a7ac:	0105579b          	srliw	a5,a0,0x10
    8002a7b0:	0185551b          	srliw	a0,a0,0x18
    8002a7b4:	00ac01a3          	sb	a0,3(s8)
    8002a7b8:	00fc0123          	sb	a5,2(s8)
optimize_scope_make_global_ref():
quickjs-nuttx/quickjs.c:30093
    pos += 5;
    8002a7bc:	005a051b          	addiw	a0,s4,5
quickjs-nuttx/quickjs.c:30096
        bc_buf[pos++] = OP_nop;
    8002a7c0:	4601                	li	a2,0
    8002a7c2:	00acc863          	blt	s9,a0,8002a7d2 <resolve_scope_var+0x964>
    8002a7c6:	ffda861b          	addiw	a2,s5,-3
    8002a7ca:	4146063b          	subw	a2,a2,s4
    8002a7ce:	1602                	slli	a2,a2,0x20
    8002a7d0:	9201                	srli	a2,a2,0x20
    8002a7d2:	0b500593          	li	a1,181
    8002a7d6:	955a                	add	a0,a0,s6
    8002a7d8:	46a390ef          	jal	ra,80063c42 <memset>
    8002a7dc:	bc8d                	j	8002a24e <resolve_scope_var+0x3e0>
quickjs-nuttx/quickjs.c:30082
        if (op == OP_insert3)
    8002a7de:	47d9                	li	a5,22
    8002a7e0:	00f69763          	bne	a3,a5,8002a7ee <resolve_scope_var+0x980>
quickjs-nuttx/quickjs.c:30083
            bc_buf[pos++] = OP_dup;
    8002a7e4:	47c5                	li	a5,17
    8002a7e6:	ffca8a1b          	addiw	s4,s5,-4
    8002a7ea:	00f70023          	sb	a5,0(a4)
quickjs-nuttx/quickjs.c:30089
        bc_buf[pos] = OP_put_var;
    8002a7ee:	014b07b3          	add	a5,s6,s4
    8002a7f2:	03900713          	li	a4,57
    8002a7f6:	bf61                	j	8002a78e <resolve_scope_var+0x920>
resolve_scope_var():
quickjs-nuttx/quickjs.c:30571
            dbuf_putc(bc, OP_make_var_ref);
    8002a7f8:	07d00593          	li	a1,125
    8002a7fc:	b235                	j	8002a128 <resolve_scope_var+0x2ba>
quickjs-nuttx/quickjs.c:30578
        dbuf_putc(bc, OP_undefined);
    8002a7fe:	4599                	li	a1,6
    8002a800:	8522                	mv	a0,s0
    8002a802:	2e0270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30579
        dbuf_putc(bc, OP_get_var);
    8002a806:	03800593          	li	a1,56
    8002a80a:	ba39                	j	8002a128 <resolve_scope_var+0x2ba>
quickjs-nuttx/quickjs.c:30585
        dbuf_putc(bc, OP_get_var_undef + (op - OP_scope_get_var_undef));
    8002a80c:	07ea859b          	addiw	a1,s5,126
    8002a810:	0ff5f593          	zext.b	a1,a1
    8002a814:	ba11                	j	8002a128 <resolve_scope_var+0x2ba>
quickjs-nuttx/quickjs.c:30589
        dbuf_putc(bc, OP_put_var_init);
    8002a816:	03a00593          	li	a1,58
    8002a81a:	b239                	j	8002a128 <resolve_scope_var+0x2ba>
quickjs-nuttx/quickjs.c:30593
        dbuf_putc(bc, OP_delete_var);
    8002a81c:	09a00593          	li	a1,154
    8002a820:	b221                	j	8002a128 <resolve_scope_var+0x2ba>
quickjs-nuttx/quickjs.c:30246
        switch (op) {
    8002a822:	f47a879b          	addiw	a5,s5,-185
    8002a826:	0007869b          	sext.w	a3,a5
    8002a82a:	471d                	li	a4,7
    8002a82c:	a2d761e3          	bltu	a4,a3,8002a24e <resolve_scope_var+0x3e0>
    8002a830:	02079713          	slli	a4,a5,0x20
    8002a834:	01e75793          	srli	a5,a4,0x1e
    8002a838:	00041717          	auipc	a4,0x41
    8002a83c:	bd870713          	addi	a4,a4,-1064 # 8006b410 <qjsc_repl+0x5e60>
    8002a840:	97ba                	add	a5,a5,a4
    8002a842:	439c                	lw	a5,0(a5)
    8002a844:	97ba                	add	a5,a5,a4
    8002a846:	8782                	jr	a5
quickjs-nuttx/quickjs.c:30491
            switch (op) {
    8002a848:	f47a879b          	addiw	a5,s5,-185
    8002a84c:	0007869b          	sext.w	a3,a5
    8002a850:	4719                	li	a4,6
    8002a852:	9ed76ee3          	bltu	a4,a3,8002a24e <resolve_scope_var+0x3e0>
    8002a856:	02079713          	slli	a4,a5,0x20
    8002a85a:	01e75793          	srli	a5,a4,0x1e
    8002a85e:	00041717          	auipc	a4,0x41
    8002a862:	bd270713          	addi	a4,a4,-1070 # 8006b430 <qjsc_repl+0x5e80>
    8002a866:	97ba                	add	a5,a5,a4
    8002a868:	439c                	lw	a5,0(a5)
    8002a86a:	97ba                	add	a5,a5,a4
    8002a86c:	8782                	jr	a5

000000008002a86e <resolve_variables>:
resolve_variables():
quickjs-nuttx/quickjs.c:31387
{
    8002a86e:	7111                	addi	sp,sp,-256
    8002a870:	f9a2                	sd	s0,240(sp)
    8002a872:	f5a6                	sd	s1,232(sp)
    8002a874:	edce                	sd	s3,216(sp)
    8002a876:	e9d2                	sd	s4,208(sp)
    8002a878:	e5d6                	sd	s5,200(sp)
    8002a87a:	fd86                	sd	ra,248(sp)
    8002a87c:	f1ca                	sd	s2,224(sp)
    8002a87e:	e1da                	sd	s6,192(sp)
    8002a880:	fd5e                	sd	s7,184(sp)
    8002a882:	f962                	sd	s8,176(sp)
    8002a884:	f566                	sd	s9,168(sp)
    8002a886:	f16a                	sd	s10,160(sp)
    8002a888:	ed6e                	sd	s11,152(sp)
quickjs-nuttx/quickjs.c:31395
    cc.bc_buf = bc_buf = s->byte_code.buf;
    8002a88a:	1305bb83          	ld	s7,304(a1)
quickjs-nuttx/quickjs.c:31396
    cc.bc_len = bc_len = s->byte_code.size;
    8002a88e:	1385ac03          	lw	s8,312(a1)
quickjs-nuttx/quickjs.c:31387
{
    8002a892:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:31397
    js_dbuf_init(ctx, &bc_out);
    8002a894:	108c                	addi	a1,sp,96
quickjs-nuttx/quickjs.c:31387
{
    8002a896:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:31395
    cc.bc_buf = bc_buf = s->byte_code.buf;
    8002a898:	fc5e                	sd	s7,56(sp)
quickjs-nuttx/quickjs.c:31396
    cc.bc_len = bc_len = s->byte_code.size;
    8002a89a:	c0e2                	sw	s8,64(sp)
quickjs-nuttx/quickjs.c:31401
    for(i = 0; i < s->global_var_count; i++) {
    8002a89c:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:31397
    js_dbuf_init(ctx, &bc_out);
    8002a89e:	c70de0ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:31422
            if (cv->var_name == JS_ATOM__var_ ||
    8002a8a2:	4a05                	li	s4,1
quickjs-nuttx/quickjs.c:31409
                if (s->eval_type == JS_EVAL_TYPE_DIRECT &&
    8002a8a4:	4a89                	li	s5,2
quickjs-nuttx/quickjs.c:31401 (discriminator 1)
    for(i = 0; i < s->global_var_count; i++) {
    8002a8a6:	11c42783          	lw	a5,284(s0)
    8002a8aa:	04f9c763          	blt	s3,a5,8002a8f8 <resolve_variables+0x8a>
quickjs-nuttx/quickjs.c:31438
    line_num = 0; /* avoid warning */
    8002a8ae:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:31439
    for (pos = 0; pos < bc_len; pos = pos_next) {
    8002a8b0:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:31439 (discriminator 1)
    8002a8b2:	0f8dc863          	blt	s11,s8,8002a9a2 <resolve_variables+0x134>
quickjs-nuttx/quickjs.c:31727
    dbuf_free(&s->byte_code);
    8002a8b6:	13040513          	addi	a0,s0,304
    8002a8ba:	ec2a                	sd	a0,24(sp)
    8002a8bc:	2ea270ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:31728
    s->byte_code = bc_out;
    8002a8c0:	6562                	ld	a0,24(sp)
    8002a8c2:	03000613          	li	a2,48
    8002a8c6:	108c                	addi	a1,sp,96
    8002a8c8:	4e4390ef          	jal	ra,80063dac <memcpy>
dbuf_error():
quickjs-nuttx/cutils.h:272
    return s->error;
    8002a8cc:	14842503          	lw	a0,328(s0)
resolve_variables():
quickjs-nuttx/quickjs.c:31729
    if (dbuf_error(&s->byte_code)) {
    8002a8d0:	c509                	beqz	a0,8002a8da <resolve_variables+0x6c>
quickjs-nuttx/quickjs.c:31730
        JS_ThrowOutOfMemory(ctx);
    8002a8d2:	8526                	mv	a0,s1
    8002a8d4:	801ef0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:31745
    return -1;
    8002a8d8:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:31746
}
    8002a8da:	70ee                	ld	ra,248(sp)
    8002a8dc:	744e                	ld	s0,240(sp)
    8002a8de:	74ae                	ld	s1,232(sp)
    8002a8e0:	790e                	ld	s2,224(sp)
    8002a8e2:	69ee                	ld	s3,216(sp)
    8002a8e4:	6a4e                	ld	s4,208(sp)
    8002a8e6:	6aae                	ld	s5,200(sp)
    8002a8e8:	6b0e                	ld	s6,192(sp)
    8002a8ea:	7bea                	ld	s7,184(sp)
    8002a8ec:	7c4a                	ld	s8,176(sp)
    8002a8ee:	7caa                	ld	s9,168(sp)
    8002a8f0:	7d0a                	ld	s10,160(sp)
    8002a8f2:	6dea                	ld	s11,152(sp)
    8002a8f4:	6111                	addi	sp,sp,256
    8002a8f6:	8082                	ret
quickjs-nuttx/quickjs.c:31402
        JSGlobalVar *hf = &s->global_vars[i];
    8002a8f8:	12843783          	ld	a5,296(s0)
quickjs-nuttx/quickjs.c:31406
        for(idx = 0; idx < s->closure_var_count; idx++) {
    8002a8fc:	19842603          	lw	a2,408(s0)
quickjs-nuttx/quickjs.c:31402
        JSGlobalVar *hf = &s->global_vars[i];
    8002a900:	00499913          	slli	s2,s3,0x4
    8002a904:	993e                	add	s2,s2,a5
quickjs-nuttx/quickjs.c:31406
        for(idx = 0; idx < s->closure_var_count; idx++) {
    8002a906:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:31406 (discriminator 1)
    8002a908:	0007871b          	sext.w	a4,a5
    8002a90c:	02c74f63          	blt	a4,a2,8002a94a <resolve_variables+0xdc>
quickjs-nuttx/quickjs.c:31427
        dbuf_putc(&bc_out, OP_check_define_var);
    8002a910:	03f00593          	li	a1,63
    8002a914:	1088                	addi	a0,sp,96
    8002a916:	1cc270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31428
        dbuf_put_u32(&bc_out, JS_DupAtom(ctx, hf->var_name));
    8002a91a:	00c92583          	lw	a1,12(s2)
    8002a91e:	8526                	mv	a0,s1
    8002a920:	fe6e00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a924:	0005059b          	sext.w	a1,a0
    8002a928:	1088                	addi	a0,sp,96
    8002a92a:	fb8de0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31430
        if (hf->is_lexical)
    8002a92e:	00494583          	lbu	a1,4(s2)
quickjs-nuttx/quickjs.c:31432
        if (hf->cpool_idx >= 0)
    8002a932:	00092783          	lw	a5,0(s2)
quickjs-nuttx/quickjs.c:31431
            flags |= DEFINE_GLOBAL_LEX_VAR;
    8002a936:	059a                	slli	a1,a1,0x6
    8002a938:	0805f593          	andi	a1,a1,128
quickjs-nuttx/quickjs.c:31432
        if (hf->cpool_idx >= 0)
    8002a93c:	0007c463          	bltz	a5,8002a944 <resolve_variables+0xd6>
quickjs-nuttx/quickjs.c:31433
            flags |= DEFINE_GLOBAL_FUNC_VAR;
    8002a940:	0405e593          	ori	a1,a1,64
quickjs-nuttx/quickjs.c:31434
        dbuf_putc(&bc_out, flags);
    8002a944:	0c15f593          	andi	a1,a1,193
    8002a948:	a091                	j	8002a98c <resolve_variables+0x11e>
quickjs-nuttx/quickjs.c:31407
            JSClosureVar *cv = &s->closure_var[idx];
    8002a94a:	1a043703          	ld	a4,416(s0)
    8002a94e:	00379693          	slli	a3,a5,0x3
quickjs-nuttx/quickjs.c:31408
            if (cv->var_name == hf->var_name) {
    8002a952:	00c92583          	lw	a1,12(s2)
quickjs-nuttx/quickjs.c:31407
            JSClosureVar *cv = &s->closure_var[idx];
    8002a956:	96ba                	add	a3,a3,a4
quickjs-nuttx/quickjs.c:31408
            if (cv->var_name == hf->var_name) {
    8002a958:	42d8                	lw	a4,4(a3)
    8002a95a:	02e59d63          	bne	a1,a4,8002a994 <resolve_variables+0x126>
quickjs-nuttx/quickjs.c:31409
                if (s->eval_type == JS_EVAL_TYPE_DIRECT &&
    8002a95e:	5c5c                	lw	a5,60(s0)
    8002a960:	03579f63          	bne	a5,s5,8002a99e <resolve_variables+0x130>
quickjs-nuttx/quickjs.c:31409 (discriminator 1)
    8002a964:	0006c783          	lbu	a5,0(a3)
    8002a968:	8ba1                	andi	a5,a5,8
    8002a96a:	cb95                	beqz	a5,8002a99e <resolve_variables+0x130>
quickjs-nuttx/quickjs.c:31416
                    dbuf_putc(&bc_out, OP_throw_error);
    8002a96c:	03000593          	li	a1,48
    8002a970:	1088                	addi	a0,sp,96
    8002a972:	170270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31417
                    dbuf_put_u32(&bc_out, JS_DupAtom(ctx, hf->var_name));
    8002a976:	00c92583          	lw	a1,12(s2)
    8002a97a:	8526                	mv	a0,s1
    8002a97c:	f8ae00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002a980:	0005059b          	sext.w	a1,a0
    8002a984:	1088                	addi	a0,sp,96
    8002a986:	f5cde0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31418
                    dbuf_putc(&bc_out, JS_THROW_VAR_REDECL);
    8002a98a:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:31434
        dbuf_putc(&bc_out, flags);
    8002a98c:	1088                	addi	a0,sp,96
    8002a98e:	154270ef          	jal	ra,80051ae2 <dbuf_putc>
    8002a992:	a031                	j	8002a99e <resolve_variables+0x130>
quickjs-nuttx/quickjs.c:31422
            if (cv->var_name == JS_ATOM__var_ ||
    8002a994:	fad7071b          	addiw	a4,a4,-83
    8002a998:	0785                	addi	a5,a5,1
    8002a99a:	f6ea67e3          	bltu	s4,a4,8002a908 <resolve_variables+0x9a>
quickjs-nuttx/quickjs.c:31401 (discriminator 2)
    for(i = 0; i < s->global_var_count; i++) {
    8002a99e:	2985                	addiw	s3,s3,1
    8002a9a0:	b719                	j	8002a8a6 <resolve_variables+0x38>
quickjs-nuttx/quickjs.c:31440
        op = bc_buf[pos];
    8002a9a2:	01bb8d33          	add	s10,s7,s11
    8002a9a6:	000d4a83          	lbu	s5,0(s10)
quickjs-nuttx/quickjs.c:31441
        len = opcode_info[op].size;
    8002a9aa:	0004a717          	auipc	a4,0x4a
    8002a9ae:	40670713          	addi	a4,a4,1030 # 80074db0 <opcode_info>
    8002a9b2:	002a9793          	slli	a5,s5,0x2
    8002a9b6:	97ba                	add	a5,a5,a4
    8002a9b8:	0007c983          	lbu	s3,0(a5)
quickjs-nuttx/quickjs.c:31443
        switch(op) {
    8002a9bc:	0c800793          	li	a5,200
quickjs-nuttx/quickjs.c:31440
        op = bc_buf[pos];
    8002a9c0:	000a8c9b          	sext.w	s9,s5
quickjs-nuttx/quickjs.c:31442
        pos_next = pos + len;
    8002a9c4:	01b9893b          	addw	s2,s3,s11
quickjs-nuttx/quickjs.c:31443
        switch(op) {
    8002a9c8:	0357e463          	bltu	a5,s5,8002a9f0 <resolve_variables+0x182>
    8002a9cc:	0b400793          	li	a5,180
    8002a9d0:	0357e663          	bltu	a5,s5,8002a9fc <resolve_variables+0x18e>
    8002a9d4:	03200793          	li	a5,50
    8002a9d8:	0757e363          	bltu	a5,s5,8002aa3e <resolve_variables+0x1d0>
    8002a9dc:	02200793          	li	a5,34
    8002a9e0:	0357ee63          	bltu	a5,s5,8002aa1c <resolve_variables+0x1ae>
    8002a9e4:	47c5                	li	a5,17
    8002a9e6:	12fa8ee3          	beq	s5,a5,8002b322 <resolve_variables+0xab4>
    8002a9ea:	47d9                	li	a5,22
    8002a9ec:	46fa8663          	beq	s5,a5,8002ae58 <resolve_variables+0x5ea>
quickjs-nuttx/quickjs.c:31721
            dbuf_put(&bc_out, bc_buf + pos, len);
    8002a9f0:	864e                	mv	a2,s3
    8002a9f2:	85ea                	mv	a1,s10
    8002a9f4:	1088                	addi	a0,sp,96
    8002a9f6:	05a270ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:31722
            break;
    8002a9fa:	a0f5                	j	8002aae6 <resolve_variables+0x278>
    8002a9fc:	04aa879b          	addiw	a5,s5,74
    8002aa00:	0ff7f793          	zext.b	a5,a5
    8002aa04:	4749                	li	a4,18
    8002aa06:	0ef76063          	bltu	a4,a5,8002aae6 <resolve_variables+0x278>
    8002aa0a:	00041717          	auipc	a4,0x41
    8002aa0e:	a4e70713          	addi	a4,a4,-1458 # 8006b458 <qjsc_repl+0x5ea8>
    8002aa12:	078a                	slli	a5,a5,0x2
    8002aa14:	97ba                	add	a5,a5,a4
    8002aa16:	439c                	lw	a5,0(a5)
    8002aa18:	97ba                	add	a5,a5,a4
    8002aa1a:	8782                	jr	a5
    8002aa1c:	fdda8a9b          	addiw	s5,s5,-35
    8002aa20:	0ffafa93          	zext.b	s5,s5
    8002aa24:	47bd                	li	a5,15
    8002aa26:	fd57e5e3          	bltu	a5,s5,8002a9f0 <resolve_variables+0x182>
    8002aa2a:	00041717          	auipc	a4,0x41
    8002aa2e:	a7a70713          	addi	a4,a4,-1414 # 8006b4a4 <qjsc_repl+0x5ef4>
    8002aa32:	0a8a                	slli	s5,s5,0x2
    8002aa34:	9aba                	add	s5,s5,a4
    8002aa36:	000aa783          	lw	a5,0(s5)
    8002aa3a:	97ba                	add	a5,a5,a4
    8002aa3c:	8782                	jr	a5
quickjs-nuttx/quickjs.c:31443
        switch(op) {
    8002aa3e:	04d00793          	li	a5,77
    8002aa42:	0afa87e3          	beq	s5,a5,8002b2f0 <resolve_variables+0xa82>
    8002aa46:	f96a8a9b          	addiw	s5,s5,-106
    8002aa4a:	0ffafa93          	zext.b	s5,s5
    8002aa4e:	4795                	li	a5,5
    8002aa50:	fb57e0e3          	bltu	a5,s5,8002a9f0 <resolve_variables+0x182>
    8002aa54:	00041717          	auipc	a4,0x41
    8002aa58:	a9070713          	addi	a4,a4,-1392 # 8006b4e4 <qjsc_repl+0x5f34>
    8002aa5c:	0a8a                	slli	s5,s5,0x2
    8002aa5e:	9aba                	add	s5,s5,a4
    8002aa60:	000aa783          	lw	a5,0(s5)
    8002aa64:	97ba                	add	a5,a5,a4
    8002aa66:	8782                	jr	a5
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002aa68:	002d4783          	lbu	a5,2(s10)
    8002aa6c:	001d4a03          	lbu	s4,1(s10)
    8002aa70:	07a2                	slli	a5,a5,0x8
    8002aa72:	0147e7b3          	or	a5,a5,s4
    8002aa76:	003d4a03          	lbu	s4,3(s10)
    8002aa7a:	0a42                	slli	s4,s4,0x10
    8002aa7c:	00fa67b3          	or	a5,s4,a5
    8002aa80:	004d4a03          	lbu	s4,4(s10)
    8002aa84:	0a62                	slli	s4,s4,0x18
    8002aa86:	00fa6a33          	or	s4,s4,a5
resolve_variables():
quickjs-nuttx/quickjs.c:31446
            s->line_number_size++;
    8002aa8a:	1c042783          	lw	a5,448(s0)
quickjs-nuttx/quickjs.c:31445
            line_num = get_u32(bc_buf + pos + 1);
    8002aa8e:	2a01                	sext.w	s4,s4
quickjs-nuttx/quickjs.c:31446
            s->line_number_size++;
    8002aa90:	2785                	addiw	a5,a5,1
    8002aa92:	1cf42023          	sw	a5,448(s0)
quickjs-nuttx/quickjs.c:31447
            goto no_change;
    8002aa96:	bfa9                	j	8002a9f0 <resolve_variables+0x182>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002aa98:	002d4a83          	lbu	s5,2(s10)
    8002aa9c:	001d4783          	lbu	a5,1(s10)
    8002aaa0:	004d4983          	lbu	s3,4(s10)
    8002aaa4:	0aa2                	slli	s5,s5,0x8
    8002aaa6:	00faeab3          	or	s5,s5,a5
    8002aaaa:	003d4783          	lbu	a5,3(s10)
    8002aaae:	09a2                	slli	s3,s3,0x8
mark_eval_captured_variables():
quickjs-nuttx/quickjs.c:30800
    for (idx = s->scopes[scope_level].first; idx >= 0;) {
    8002aab0:	00f9e9b3          	or	s3,s3,a5
    8002aab4:	787c                	ld	a5,240(s0)
    8002aab6:	098e                	slli	s3,s3,0x3
    8002aab8:	97ce                	add	a5,a5,s3
    8002aaba:	43dc                	lw	a5,4(a5)
    8002aabc:	0207d763          	bgez	a5,8002aaea <resolve_variables+0x27c>
resolve_variables():
quickjs-nuttx/quickjs.c:31454
                dbuf_putc(&bc_out, op);
    8002aac0:	03100593          	li	a1,49
    8002aac4:	1088                	addi	a0,sp,96
    8002aac6:	01c270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31455
                dbuf_put_u16(&bc_out, call_argc);
    8002aaca:	85d6                	mv	a1,s5
    8002aacc:	1088                	addi	a0,sp,96
    8002aace:	cdede0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31463
            dbuf_put_u16(&bc_out, s->scopes[scope].first + 1);
    8002aad2:	787c                	ld	a5,240(s0)
    8002aad4:	1088                	addi	a0,sp,96
    8002aad6:	99be                	add	s3,s3,a5
    8002aad8:	0049a583          	lw	a1,4(s3)
    8002aadc:	2585                	addiw	a1,a1,1
    8002aade:	15c2                	slli	a1,a1,0x30
    8002aae0:	91c1                	srli	a1,a1,0x30
    8002aae2:	ccade0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31688 (discriminator 1)
                        pos_next = pos1;
    8002aae6:	8dca                	mv	s11,s2
    8002aae8:	b3e9                	j	8002a8b2 <resolve_variables+0x44>
mark_eval_captured_variables():
quickjs-nuttx/quickjs.c:30801
        vd = &s->vars[idx];
    8002aaea:	6858                	ld	a4,144(s0)
    8002aaec:	0792                	slli	a5,a5,0x4
    8002aaee:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30802
        vd->is_captured = 1;
    8002aaf0:	47d8                	lw	a4,12(a5)
    8002aaf2:	00476713          	ori	a4,a4,4
    8002aaf6:	c7d8                	sw	a4,12(a5)
quickjs-nuttx/quickjs.c:30803
        idx = vd->scope_next;
    8002aaf8:	479c                	lw	a5,8(a5)
    8002aafa:	b7c9                	j	8002aabc <resolve_variables+0x24e>
get_u16():
quickjs-nuttx/cutils.h:185
    8002aafc:	002d4983          	lbu	s3,2(s10)
    8002ab00:	001d4783          	lbu	a5,1(s10)
    8002ab04:	09a2                	slli	s3,s3,0x8
mark_eval_captured_variables():
quickjs-nuttx/quickjs.c:30800
    for (idx = s->scopes[scope_level].first; idx >= 0;) {
    8002ab06:	00f9e9b3          	or	s3,s3,a5
    8002ab0a:	787c                	ld	a5,240(s0)
    8002ab0c:	098e                	slli	s3,s3,0x3
    8002ab0e:	97ce                	add	a5,a5,s3
    8002ab10:	43dc                	lw	a5,4(a5)
    8002ab12:	0007d863          	bgez	a5,8002ab22 <resolve_variables+0x2b4>
resolve_variables():
quickjs-nuttx/quickjs.c:31462
            dbuf_putc(&bc_out, op);
    8002ab16:	03200593          	li	a1,50
    8002ab1a:	1088                	addi	a0,sp,96
    8002ab1c:	7c7260ef          	jal	ra,80051ae2 <dbuf_putc>
    8002ab20:	bf4d                	j	8002aad2 <resolve_variables+0x264>
mark_eval_captured_variables():
quickjs-nuttx/quickjs.c:30801
        vd = &s->vars[idx];
    8002ab22:	6858                	ld	a4,144(s0)
    8002ab24:	0792                	slli	a5,a5,0x4
    8002ab26:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30802
        vd->is_captured = 1;
    8002ab28:	47d8                	lw	a4,12(a5)
    8002ab2a:	00476713          	ori	a4,a4,4
    8002ab2e:	c7d8                	sw	a4,12(a5)
quickjs-nuttx/quickjs.c:30803
        idx = vd->scope_next;
    8002ab30:	479c                	lw	a5,8(a5)
    8002ab32:	b7c5                	j	8002ab12 <resolve_variables+0x2a4>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002ab34:	002d4603          	lbu	a2,2(s10)
    8002ab38:	001d4983          	lbu	s3,1(s10)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002ab3c:	006d4683          	lbu	a3,6(s10)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002ab40:	0622                	slli	a2,a2,0x8
    8002ab42:	01366633          	or	a2,a2,s3
    8002ab46:	003d4983          	lbu	s3,3(s10)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002ab4a:	06a2                	slli	a3,a3,0x8
resolve_variables():
quickjs-nuttx/quickjs.c:31474
            pos_next = resolve_scope_var(ctx, s, var_name, scope, op, &bc_out,
    8002ab4c:	4881                	li	a7,0
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002ab4e:	09c2                	slli	s3,s3,0x10
    8002ab50:	00c9e633          	or	a2,s3,a2
    8002ab54:	004d4983          	lbu	s3,4(s10)
resolve_variables():
quickjs-nuttx/quickjs.c:31474
    8002ab58:	4801                	li	a6,0
    8002ab5a:	109c                	addi	a5,sp,96
get_u32():
quickjs-nuttx/cutils.h:170
    8002ab5c:	09e2                	slli	s3,s3,0x18
    8002ab5e:	00c9e9b3          	or	s3,s3,a2
    8002ab62:	2981                	sext.w	s3,s3
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002ab64:	005d4603          	lbu	a2,5(s10)
resolve_variables():
quickjs-nuttx/quickjs.c:31474
    8002ab68:	8766                	mv	a4,s9
    8002ab6a:	e04a                	sd	s2,0(sp)
quickjs-nuttx/quickjs.c:31487
                pos_next = resolve_scope_var(ctx, s, var_name, scope, op, &bc_out,
    8002ab6c:	8ed1                	or	a3,a3,a2
    8002ab6e:	85a2                	mv	a1,s0
    8002ab70:	864e                	mv	a2,s3
    8002ab72:	8526                	mv	a0,s1
    8002ab74:	afaff0ef          	jal	ra,80029e6e <resolve_scope_var>
    8002ab78:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:31503
                JS_FreeAtom(ctx, var_name);
    8002ab7a:	85ce                	mv	a1,s3
    8002ab7c:	8526                	mv	a0,s1
    8002ab7e:	dcae00ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:31505
            break;
    8002ab82:	b795                	j	8002aae6 <resolve_variables+0x278>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002ab84:	006d4783          	lbu	a5,6(s10)
    8002ab88:	005d4883          	lbu	a7,5(s10)
    8002ab8c:	002d4603          	lbu	a2,2(s10)
    8002ab90:	07a2                	slli	a5,a5,0x8
    8002ab92:	0117e7b3          	or	a5,a5,a7
    8002ab96:	007d4883          	lbu	a7,7(s10)
    8002ab9a:	001d4983          	lbu	s3,1(s10)
    8002ab9e:	0622                	slli	a2,a2,0x8
    8002aba0:	08c2                	slli	a7,a7,0x10
    8002aba2:	00f8e7b3          	or	a5,a7,a5
    8002aba6:	008d4883          	lbu	a7,8(s10)
    8002abaa:	01366633          	or	a2,a2,s3
    8002abae:	003d4983          	lbu	s3,3(s10)
    8002abb2:	08e2                	slli	a7,a7,0x18
    8002abb4:	00f8e8b3          	or	a7,a7,a5
resolve_variables():
quickjs-nuttx/quickjs.c:31485
                ls = &s->label_slots[label];
    8002abb8:	2881                	sext.w	a7,a7
    8002abba:	47e1                	li	a5,24
    8002abbc:	02f888b3          	mul	a7,a7,a5
    8002abc0:	17043783          	ld	a5,368(s0)
get_u32():
quickjs-nuttx/cutils.h:170
    8002abc4:	09c2                	slli	s3,s3,0x10
    8002abc6:	00c9e633          	or	a2,s3,a2
    8002abca:	004d4983          	lbu	s3,4(s10)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002abce:	00ad4683          	lbu	a3,10(s10)
resolve_variables():
quickjs-nuttx/quickjs.c:31487
                pos_next = resolve_scope_var(ctx, s, var_name, scope, op, &bc_out,
    8002abd2:	885e                	mv	a6,s7
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002abd4:	09e2                	slli	s3,s3,0x18
    8002abd6:	00c9e9b3          	or	s3,s3,a2
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002abda:	009d4603          	lbu	a2,9(s10)
resolve_variables():
quickjs-nuttx/quickjs.c:31485
                ls = &s->label_slots[label];
    8002abde:	98be                	add	a7,a7,a5
quickjs-nuttx/quickjs.c:31486
                ls->ref_count--;  /* always remove label reference */
    8002abe0:	0008a783          	lw	a5,0(a7)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002abe4:	2981                	sext.w	s3,s3
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002abe6:	06a2                	slli	a3,a3,0x8
resolve_variables():
quickjs-nuttx/quickjs.c:31486
    8002abe8:	37fd                	addiw	a5,a5,-1
    8002abea:	00f8a023          	sw	a5,0(a7)
quickjs-nuttx/quickjs.c:31487
                pos_next = resolve_scope_var(ctx, s, var_name, scope, op, &bc_out,
    8002abee:	e04a                	sd	s2,0(sp)
    8002abf0:	109c                	addi	a5,sp,96
    8002abf2:	0bd00713          	li	a4,189
    8002abf6:	bf9d                	j	8002ab6c <resolve_variables+0x2fe>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002abf8:	002d4783          	lbu	a5,2(s10)
    8002abfc:	001d4983          	lbu	s3,1(s10)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002ac00:	006d4b03          	lbu	s6,6(s10)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002ac04:	07a2                	slli	a5,a5,0x8
    8002ac06:	0137e7b3          	or	a5,a5,s3
    8002ac0a:	003d4983          	lbu	s3,3(s10)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002ac0e:	0b22                	slli	s6,s6,0x8
resolve_scope_private_field():
quickjs-nuttx/quickjs.c:30701
    idx = resolve_scope_private_field1(ctx, &is_ref, &var_kind, s,
    8002ac10:	1810                	addi	a2,sp,48
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002ac12:	09c2                	slli	s3,s3,0x10
    8002ac14:	00f9e7b3          	or	a5,s3,a5
    8002ac18:	004d4983          	lbu	s3,4(s10)
resolve_scope_private_field():
quickjs-nuttx/quickjs.c:30701
    8002ac1c:	86a2                	mv	a3,s0
    8002ac1e:	184c                	addi	a1,sp,52
get_u32():
quickjs-nuttx/cutils.h:170
    8002ac20:	09e2                	slli	s3,s3,0x18
    8002ac22:	00f9e9b3          	or	s3,s3,a5
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002ac26:	005d4783          	lbu	a5,5(s10)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002ac2a:	2981                	sext.w	s3,s3
resolve_scope_private_field():
quickjs-nuttx/quickjs.c:30701
    8002ac2c:	874e                	mv	a4,s3
resolve_variables():
quickjs-nuttx/quickjs.c:31499
                scope = get_u16(bc_buf + pos + 5);
    8002ac2e:	00fb6b33          	or	s6,s6,a5
resolve_scope_private_field():
quickjs-nuttx/quickjs.c:30701
    idx = resolve_scope_private_field1(ctx, &is_ref, &var_kind, s,
    8002ac32:	87da                	mv	a5,s6
    8002ac34:	8526                	mv	a0,s1
    8002ac36:	946ff0ef          	jal	ra,80029d7c <resolve_scope_private_field1>
    8002ac3a:	862a                	mv	a2,a0
quickjs-nuttx/quickjs.c:30703
    if (idx < 0)
    8002ac3c:	040542e3          	bltz	a0,8002b480 <resolve_variables+0xc12>
quickjs-nuttx/quickjs.c:30705
    assert(var_kind != JS_VAR_NORMAL);
    8002ac40:	5742                	lw	a4,48(sp)
    8002ac42:	eb19                	bnez	a4,8002ac58 <resolve_variables+0x3ea>
    8002ac44:	659d                	lui	a1,0x7
    8002ac46:	4601                	li	a2,0
    8002ac48:	7f158593          	addi	a1,a1,2033 # 77f1 <asinh-0x7fff880f>
quickjs-nuttx/quickjs.c:30766
                assert(var_kind == JS_VAR_PRIVATE_SETTER);
    8002ac4c:	0003f517          	auipc	a0,0x3f
    8002ac50:	94c50513          	addi	a0,a0,-1716 # 80069598 <qjsc_repl+0x3fe8>
    8002ac54:	509350ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:30706
    switch (op) {
    8002ac58:	0c300793          	li	a5,195
    8002ac5c:	0afa8863          	beq	s5,a5,8002ad0c <resolve_variables+0x49e>
    8002ac60:	0c400793          	li	a5,196
    8002ac64:	16fa8e63          	beq	s5,a5,8002ade0 <resolve_variables+0x572>
quickjs-nuttx/quickjs.c:30709
        switch(var_kind) {
    8002ac68:	376d                	addiw	a4,a4,-5
    8002ac6a:	0007069b          	sext.w	a3,a4
    8002ac6e:	4791                	li	a5,4
    8002ac70:	0ad7e663          	bltu	a5,a3,8002ad1c <resolve_variables+0x4ae>
    8002ac74:	02071793          	slli	a5,a4,0x20
    8002ac78:	01e7d713          	srli	a4,a5,0x1e
    8002ac7c:	00041697          	auipc	a3,0x41
    8002ac80:	88068693          	addi	a3,a3,-1920 # 8006b4fc <qjsc_repl+0x5f4c>
    8002ac84:	9736                	add	a4,a4,a3
    8002ac86:	431c                	lw	a5,0(a4)
    8002ac88:	97b6                	add	a5,a5,a3
    8002ac8a:	8782                	jr	a5
quickjs-nuttx/quickjs.c:30711
            if (op == OP_scope_get_private_field2)
    8002ac8c:	0c200793          	li	a5,194
    8002ac90:	00fc9863          	bne	s9,a5,8002aca0 <resolve_variables+0x432>
    8002ac94:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:30712
                dbuf_putc(bc, OP_dup);
    8002ac96:	45c5                	li	a1,17
    8002ac98:	1088                	addi	a0,sp,96
    8002ac9a:	649260ef          	jal	ra,80051ae2 <dbuf_putc>
    8002ac9e:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:30713
            get_loc_or_ref(bc, is_ref, idx);
    8002aca0:	55d2                	lw	a1,52(sp)
    8002aca2:	1088                	addi	a0,sp,96
    8002aca4:	b28de0ef          	jal	ra,80008fcc <get_loc_or_ref>
quickjs-nuttx/quickjs.c:30714
            dbuf_putc(bc, OP_get_private_field);
    8002aca8:	04400593          	li	a1,68
quickjs-nuttx/quickjs.c:30786
        dbuf_putc(bc, OP_private_in);
    8002acac:	1088                	addi	a0,sp,96
    8002acae:	635260ef          	jal	ra,80051ae2 <dbuf_putc>
resolve_variables():
quickjs-nuttx/quickjs.c:31501
                if (ret < 0)
    8002acb2:	b5e1                	j	8002ab7a <resolve_variables+0x30c>
resolve_scope_private_field():
quickjs-nuttx/quickjs.c:30717
            get_loc_or_ref(bc, is_ref, idx);
    8002acb4:	55d2                	lw	a1,52(sp)
    8002acb6:	1088                	addi	a0,sp,96
    8002acb8:	b14de0ef          	jal	ra,80008fcc <get_loc_or_ref>
quickjs-nuttx/quickjs.c:30718
            dbuf_putc(bc, OP_check_brand);
    8002acbc:	02c00593          	li	a1,44
    8002acc0:	1088                	addi	a0,sp,96
    8002acc2:	621260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30719
            if (op != OP_scope_get_private_field2)
    8002acc6:	0c200793          	li	a5,194
quickjs-nuttx/quickjs.c:30720
                dbuf_putc(bc, OP_nip);
    8002acca:	45bd                	li	a1,15
quickjs-nuttx/quickjs.c:30719
            if (op != OP_scope_get_private_field2)
    8002accc:	eafc87e3          	beq	s9,a5,8002ab7a <resolve_variables+0x30c>
    8002acd0:	bff1                	j	8002acac <resolve_variables+0x43e>
quickjs-nuttx/quickjs.c:30724
            if (op == OP_scope_get_private_field2)
    8002acd2:	0c200793          	li	a5,194
    8002acd6:	00fc9863          	bne	s9,a5,8002ace6 <resolve_variables+0x478>
    8002acda:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:30725
                dbuf_putc(bc, OP_dup);
    8002acdc:	45c5                	li	a1,17
    8002acde:	1088                	addi	a0,sp,96
    8002ace0:	603260ef          	jal	ra,80051ae2 <dbuf_putc>
    8002ace4:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:30726
            get_loc_or_ref(bc, is_ref, idx);
    8002ace6:	55d2                	lw	a1,52(sp)
    8002ace8:	1088                	addi	a0,sp,96
    8002acea:	ae2de0ef          	jal	ra,80008fcc <get_loc_or_ref>
quickjs-nuttx/quickjs.c:30727
            dbuf_putc(bc, OP_check_brand);
    8002acee:	02c00593          	li	a1,44
    8002acf2:	1088                	addi	a0,sp,96
    8002acf4:	5ef260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30728
            dbuf_putc(bc, OP_call_method);
    8002acf8:	02400593          	li	a1,36
    8002acfc:	1088                	addi	a0,sp,96
    8002acfe:	5e5260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30729
            dbuf_put_u16(bc, 0);
    8002ad02:	4581                	li	a1,0
    8002ad04:	1088                	addi	a0,sp,96
    8002ad06:	aa6de0ef          	jal	ra,80008fac <dbuf_put_u16>
resolve_variables():
quickjs-nuttx/quickjs.c:31501
                if (ret < 0)
    8002ad0a:	bd85                	j	8002ab7a <resolve_variables+0x30c>
resolve_scope_private_field():
quickjs-nuttx/quickjs.c:30742
        switch(var_kind) {
    8002ad0c:	479d                	li	a5,7
    8002ad0e:	00e7c963          	blt	a5,a4,8002ad20 <resolve_variables+0x4b2>
    8002ad12:	4795                	li	a5,5
    8002ad14:	06e7c663          	blt	a5,a4,8002ad80 <resolve_variables+0x512>
    8002ad18:	04f70d63          	beq	a4,a5,8002ad72 <resolve_variables+0x504>
quickjs-nuttx/quickjs.c:30738
            abort();
    8002ad1c:	667370ef          	jal	ra,80062b82 <abort>
    8002ad20:	3761                	addiw	a4,a4,-8
    8002ad22:	4785                	li	a5,1
    8002ad24:	fee7ece3          	bltu	a5,a4,8002ad1c <resolve_variables+0x4ae>
get_private_setter_name():
quickjs-nuttx/quickjs.c:22779
    return js_atom_concat_str(ctx, name, "<set>");
    8002ad28:	00040617          	auipc	a2,0x40
    8002ad2c:	72860613          	addi	a2,a2,1832 # 8006b450 <qjsc_repl+0x5ea0>
    8002ad30:	85ce                	mv	a1,s3
    8002ad32:	8526                	mv	a0,s1
    8002ad34:	eaffc0ef          	jal	ra,80027be2 <js_atom_concat_str>
    8002ad38:	00050a9b          	sext.w	s5,a0
resolve_scope_private_field():
quickjs-nuttx/quickjs.c:30758
                if (setter_name == JS_ATOM_NULL)
    8002ad3c:	740a8263          	beqz	s5,8002b480 <resolve_variables+0xc12>
quickjs-nuttx/quickjs.c:30760
                idx = resolve_scope_private_field1(ctx, &is_ref,
    8002ad40:	1810                	addi	a2,sp,48
    8002ad42:	87da                	mv	a5,s6
    8002ad44:	8756                	mv	a4,s5
    8002ad46:	86a2                	mv	a3,s0
    8002ad48:	184c                	addi	a1,sp,52
    8002ad4a:	8526                	mv	a0,s1
    8002ad4c:	830ff0ef          	jal	ra,80029d7c <resolve_scope_private_field1>
    8002ad50:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:30763
                JS_FreeAtom(ctx, setter_name);
    8002ad52:	85d6                	mv	a1,s5
    8002ad54:	8526                	mv	a0,s1
    8002ad56:	bf2e00ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:30764
                if (idx < 0)
    8002ad5a:	6662                	ld	a2,24(sp)
    8002ad5c:	72064263          	bltz	a2,8002b480 <resolve_variables+0xc12>
quickjs-nuttx/quickjs.c:30766
                assert(var_kind == JS_VAR_PRIVATE_SETTER);
    8002ad60:	5742                	lw	a4,48(sp)
    8002ad62:	47a1                	li	a5,8
    8002ad64:	02f70e63          	beq	a4,a5,8002ada0 <resolve_variables+0x532>
    8002ad68:	65a1                	lui	a1,0x8
    8002ad6a:	4601                	li	a2,0
    8002ad6c:	82e58593          	addi	a1,a1,-2002 # 782e <asinh-0x7fff87d2>
    8002ad70:	bdf1                	j	8002ac4c <resolve_variables+0x3de>
quickjs-nuttx/quickjs.c:30744
            get_loc_or_ref(bc, is_ref, idx);
    8002ad72:	55d2                	lw	a1,52(sp)
    8002ad74:	1088                	addi	a0,sp,96
    8002ad76:	a56de0ef          	jal	ra,80008fcc <get_loc_or_ref>
quickjs-nuttx/quickjs.c:30745
            dbuf_putc(bc, OP_put_private_field);
    8002ad7a:	04500593          	li	a1,69
    8002ad7e:	b73d                	j	8002acac <resolve_variables+0x43e>
quickjs-nuttx/quickjs.c:30750
            dbuf_putc(bc, OP_throw_error);
    8002ad80:	03000593          	li	a1,48
    8002ad84:	1088                	addi	a0,sp,96
    8002ad86:	55d260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30751
            dbuf_put_u32(bc, JS_DupAtom(ctx, var_name));
    8002ad8a:	85ce                	mv	a1,s3
    8002ad8c:	8526                	mv	a0,s1
    8002ad8e:	b78e00ef          	jal	ra,8000b106 <JS_DupAtom>
    8002ad92:	0005059b          	sext.w	a1,a0
    8002ad96:	1088                	addi	a0,sp,96
    8002ad98:	b4ade0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:30752
            dbuf_putc(bc, JS_THROW_VAR_RO);
    8002ad9c:	4581                	li	a1,0
    8002ad9e:	b739                	j	8002acac <resolve_variables+0x43e>
quickjs-nuttx/quickjs.c:30767
                get_loc_or_ref(bc, is_ref, idx);
    8002ada0:	55d2                	lw	a1,52(sp)
    8002ada2:	1088                	addi	a0,sp,96
    8002ada4:	a28de0ef          	jal	ra,80008fcc <get_loc_or_ref>
quickjs-nuttx/quickjs.c:30768
                dbuf_putc(bc, OP_swap);
    8002ada8:	45ed                	li	a1,27
    8002adaa:	1088                	addi	a0,sp,96
    8002adac:	537260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30770
                dbuf_putc(bc, OP_rot3r);
    8002adb0:	45f9                	li	a1,30
    8002adb2:	1088                	addi	a0,sp,96
    8002adb4:	52f260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30772
                dbuf_putc(bc, OP_check_brand);
    8002adb8:	02c00593          	li	a1,44
    8002adbc:	1088                	addi	a0,sp,96
    8002adbe:	525260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30773
                dbuf_putc(bc, OP_rot3l);
    8002adc2:	45f5                	li	a1,29
    8002adc4:	1088                	addi	a0,sp,96
    8002adc6:	51d260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30775
                dbuf_putc(bc, OP_call_method);
    8002adca:	02400593          	li	a1,36
    8002adce:	1088                	addi	a0,sp,96
    8002add0:	513260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30776
                dbuf_put_u16(bc, 1);
    8002add4:	4585                	li	a1,1
    8002add6:	1088                	addi	a0,sp,96
    8002add8:	9d4de0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30777
                dbuf_putc(bc, OP_drop);
    8002addc:	45b9                	li	a1,14
    8002adde:	b5f9                	j	8002acac <resolve_variables+0x43e>
quickjs-nuttx/quickjs.c:30785
        get_loc_or_ref(bc, is_ref, idx);
    8002ade0:	55d2                	lw	a1,52(sp)
    8002ade2:	1088                	addi	a0,sp,96
    8002ade4:	9e8de0ef          	jal	ra,80008fcc <get_loc_or_ref>
quickjs-nuttx/quickjs.c:30786
        dbuf_putc(bc, OP_private_in);
    8002ade8:	0b200593          	li	a1,178
    8002adec:	b5c1                	j	8002acac <resolve_variables+0x43e>
resolve_variables():
quickjs-nuttx/quickjs.c:31507
            s->jump_size++;
    8002adee:	1b042783          	lw	a5,432(s0)
    8002adf2:	2785                	addiw	a5,a5,1
    8002adf4:	1af42823          	sw	a5,432(s0)
get_u32():
quickjs-nuttx/cutils.h:170
    8002adf8:	002d4703          	lbu	a4,2(s10)
    8002adfc:	001d4783          	lbu	a5,1(s10)
    8002ae00:	0722                	slli	a4,a4,0x8
    8002ae02:	8f5d                	or	a4,a4,a5
    8002ae04:	003d4783          	lbu	a5,3(s10)
    8002ae08:	07c2                	slli	a5,a5,0x10
    8002ae0a:	8f5d                	or	a4,a4,a5
    8002ae0c:	004d4783          	lbu	a5,4(s10)
    8002ae10:	07e2                	slli	a5,a5,0x18
    8002ae12:	8fd9                	or	a5,a5,a4
resolve_variables():
quickjs-nuttx/quickjs.c:31513
                label = get_u32(bc_buf + pos + 1);
    8002ae14:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:31514
                assert(label >= 0 && label < s->label_count);
    8002ae16:	0007c663          	bltz	a5,8002ae22 <resolve_variables+0x5b4>
quickjs-nuttx/quickjs.c:31514 (discriminator 2)
    8002ae1a:	17c42703          	lw	a4,380(s0)
    8002ae1e:	00e7c763          	blt	a5,a4,8002ae2c <resolve_variables+0x5be>
quickjs-nuttx/quickjs.c:31514 (discriminator 3)
    8002ae22:	65a1                	lui	a1,0x8
    8002ae24:	4601                	li	a2,0
    8002ae26:	b1a58593          	addi	a1,a1,-1254 # 7b1a <asinh-0x7fff84e6>
    8002ae2a:	b50d                	j	8002ac4c <resolve_variables+0x3de>
quickjs-nuttx/quickjs.c:31515 (discriminator 4)
                ls = &s->label_slots[label];
    8002ae2c:	4761                	li	a4,24
    8002ae2e:	02e787b3          	mul	a5,a5,a4
    8002ae32:	17043a83          	ld	s5,368(s0)
quickjs-nuttx/quickjs.c:31516 (discriminator 4)
                if (code_match(&cc, ls->pos, OP_ret, -1)) {
    8002ae36:	56fd                	li	a3,-1
    8002ae38:	06f00613          	li	a2,111
    8002ae3c:	1828                	addi	a0,sp,56
quickjs-nuttx/quickjs.c:31515 (discriminator 4)
                ls = &s->label_slots[label];
    8002ae3e:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:31516 (discriminator 4)
                if (code_match(&cc, ls->pos, OP_ret, -1)) {
    8002ae40:	004aa583          	lw	a1,4(s5)
    8002ae44:	edddd0ef          	jal	ra,80008d20 <code_match>
    8002ae48:	ba0504e3          	beqz	a0,8002a9f0 <resolve_variables+0x182>
quickjs-nuttx/quickjs.c:31517
                    ls->ref_count--;
    8002ae4c:	000aa783          	lw	a5,0(s5)
    8002ae50:	37fd                	addiw	a5,a5,-1
    8002ae52:	00faa023          	sw	a5,0(s5)
quickjs-nuttx/quickjs.c:31518
                    break;
    8002ae56:	b941                	j	8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31548
                if (code_match(&cc, pos_next, M2(OP_put_array_el, OP_put_ref_value), OP_drop, -1)) {
    8002ae58:	6611                	lui	a2,0x4
    8002ae5a:	577d                	li	a4,-1
    8002ae5c:	46b9                	li	a3,14
    8002ae5e:	d4960613          	addi	a2,a2,-695 # 3d49 <asinh-0x7fffc2b7>
    8002ae62:	85ca                	mv	a1,s2
    8002ae64:	1828                	addi	a0,sp,56
    8002ae66:	ebbdd0ef          	jal	ra,80008d20 <code_match>
    8002ae6a:	b80503e3          	beqz	a0,8002a9f0 <resolve_variables+0x182>
quickjs-nuttx/quickjs.c:31549
                    dbuf_putc(&bc_out, cc.op);
    8002ae6e:	04c14583          	lbu	a1,76(sp)
    8002ae72:	1088                	addi	a0,sp,96
    8002ae74:	46f260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31551
                    if (cc.line_num != -1 && cc.line_num != line_num) {
    8002ae78:	49a6                	lw	s3,72(sp)
    8002ae7a:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:31550
                    pos_next = cc.pos;
    8002ae7c:	4916                	lw	s2,68(sp)
quickjs-nuttx/quickjs.c:31551
                    if (cc.line_num != -1 && cc.line_num != line_num) {
    8002ae7e:	c6f984e3          	beq	s3,a5,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31551 (discriminator 1)
    8002ae82:	03498063          	beq	s3,s4,8002aea2 <resolve_variables+0x634>
quickjs-nuttx/quickjs.c:31580
                    s->line_number_size++;
    8002ae86:	1c042783          	lw	a5,448(s0)
quickjs-nuttx/quickjs.c:31581
                    dbuf_putc(&bc_out, OP_line_num);
    8002ae8a:	0c800593          	li	a1,200
    8002ae8e:	1088                	addi	a0,sp,96
quickjs-nuttx/quickjs.c:31580
                    s->line_number_size++;
    8002ae90:	2785                	addiw	a5,a5,1
    8002ae92:	1cf42023          	sw	a5,448(s0)
quickjs-nuttx/quickjs.c:31581
                    dbuf_putc(&bc_out, OP_line_num);
    8002ae96:	44d260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31582
                    dbuf_put_u32(&bc_out, line_num);
    8002ae9a:	85ce                	mv	a1,s3
    8002ae9c:	1088                	addi	a0,sp,96
    8002ae9e:	a44de0ef          	jal	ra,800090e2 <dbuf_put_u32>
    8002aea2:	8a4e                	mv	s4,s3
    8002aea4:	b189                	j	8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31563
            s->jump_size++;
    8002aea6:	1b042783          	lw	a5,432(s0)
    8002aeaa:	2785                	addiw	a5,a5,1
    8002aeac:	1af42823          	sw	a5,432(s0)
quickjs-nuttx/quickjs.c:31574
                int line = -1;
    8002aeb0:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:31575
                dbuf_put(&bc_out, bc_buf + pos, len);
    8002aeb2:	864e                	mv	a2,s3
    8002aeb4:	85ea                	mv	a1,s10
    8002aeb6:	1088                	addi	a0,sp,96
quickjs-nuttx/quickjs.c:31574
                int line = -1;
    8002aeb8:	da3e                	sw	a5,52(sp)
quickjs-nuttx/quickjs.c:31575
                dbuf_put(&bc_out, bc_buf + pos, len);
    8002aeba:	397260ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:31576
                pos = skip_dead_code(s, bc_buf, bc_len, pos + len, &line);
    8002aebe:	86ca                	mv	a3,s2
    8002aec0:	1858                	addi	a4,sp,52
    8002aec2:	8662                	mv	a2,s8
    8002aec4:	85de                	mv	a1,s7
    8002aec6:	8522                	mv	a0,s0
    8002aec8:	db6e00ef          	jal	ra,8000b47e <skip_dead_code>
    8002aecc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:31578
                if (pos < bc_len && line >= 0 && line_num != line) {
    8002aece:	c1855ce3          	bge	a0,s8,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31578 (discriminator 1)
    8002aed2:	59d2                	lw	s3,52(sp)
    8002aed4:	c009c9e3          	bltz	s3,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31578 (discriminator 2)
    8002aed8:	c14987e3          	beq	s3,s4,8002aae6 <resolve_variables+0x278>
    8002aedc:	b76d                	j	8002ae86 <resolve_variables+0x618>
get_u32():
quickjs-nuttx/cutils.h:170
    8002aede:	002d4703          	lbu	a4,2(s10)
    8002aee2:	001d4783          	lbu	a5,1(s10)
    8002aee6:	0722                	slli	a4,a4,0x8
    8002aee8:	8f5d                	or	a4,a4,a5
    8002aeea:	003d4783          	lbu	a5,3(s10)
    8002aeee:	07c2                	slli	a5,a5,0x10
    8002aef0:	8f5d                	or	a4,a4,a5
    8002aef2:	004d4783          	lbu	a5,4(s10)
    8002aef6:	07e2                	slli	a5,a5,0x18
    8002aef8:	8fd9                	or	a5,a5,a4
resolve_variables():
quickjs-nuttx/quickjs.c:31593
                label = get_u32(bc_buf + pos + 1);
    8002aefa:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:31594
                assert(label >= 0 && label < s->label_count);
    8002aefc:	0007c663          	bltz	a5,8002af08 <resolve_variables+0x69a>
quickjs-nuttx/quickjs.c:31594 (discriminator 2)
    8002af00:	17c42703          	lw	a4,380(s0)
    8002af04:	00e7c763          	blt	a5,a4,8002af12 <resolve_variables+0x6a4>
quickjs-nuttx/quickjs.c:31594 (discriminator 3)
    8002af08:	65a1                	lui	a1,0x8
    8002af0a:	4601                	li	a2,0
    8002af0c:	b6a58593          	addi	a1,a1,-1174 # 7b6a <asinh-0x7fff8496>
    8002af10:	bb35                	j	8002ac4c <resolve_variables+0x3de>
quickjs-nuttx/quickjs.c:31596 (discriminator 4)
                ls->pos2 = bc_out.size + opcode_info[op].size;
    8002af12:	46e1                	li	a3,24
    8002af14:	02d787b3          	mul	a5,a5,a3
    8002af18:	17043703          	ld	a4,368(s0)
    8002af1c:	97ba                	add	a5,a5,a4
    8002af1e:	7726                	ld	a4,104(sp)
    8002af20:	0137073b          	addw	a4,a4,s3
    8002af24:	c798                	sw	a4,8(a5)
quickjs-nuttx/quickjs.c:31598 (discriminator 4)
            goto no_change;
    8002af26:	b4e9                	j	8002a9f0 <resolve_variables+0x182>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002af28:	002d4783          	lbu	a5,2(s10)
    8002af2c:	001d4703          	lbu	a4,1(s10)
    8002af30:	07a2                	slli	a5,a5,0x8
    8002af32:	00e7e6b3          	or	a3,a5,a4
resolve_variables():
quickjs-nuttx/quickjs.c:31604
                if (scope == s->body_scope) {
    8002af36:	11842783          	lw	a5,280(s0)
get_u16():
quickjs-nuttx/cutils.h:185
    8002af3a:	f036                	sd	a3,32(sp)
resolve_variables():
quickjs-nuttx/quickjs.c:31602
                int scope_idx, scope = get_u16(bc_buf + pos + 1);
    8002af3c:	ec36                	sd	a3,24(sp)
quickjs-nuttx/quickjs.c:31604
                if (scope == s->body_scope) {
    8002af3e:	0ed79863          	bne	a5,a3,8002b02e <resolve_variables+0x7c0>
instantiate_hoisted_definitions():
quickjs-nuttx/quickjs.c:31182
    for(i = 0; i < s->arg_count; i++) {
    8002af42:	4981                	li	s3,0
    8002af44:	a081                	j	8002af84 <resolve_variables+0x716>
quickjs-nuttx/quickjs.c:31183
        JSVarDef *vd = &s->args[i];
    8002af46:	705c                	ld	a5,160(s0)
    8002af48:	00499a93          	slli	s5,s3,0x4
    8002af4c:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:31184
        if (vd->func_pool_idx >= 0) {
    8002af4e:	00caa783          	lw	a5,12(s5)
    8002af52:	0207c863          	bltz	a5,8002af82 <resolve_variables+0x714>
quickjs-nuttx/quickjs.c:31185
            dbuf_putc(bc, OP_fclosure);
    8002af56:	458d                	li	a1,3
    8002af58:	1088                	addi	a0,sp,96
    8002af5a:	389260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31186
            dbuf_put_u32(bc, vd->func_pool_idx);
    8002af5e:	00caa583          	lw	a1,12(s5)
    8002af62:	1088                	addi	a0,sp,96
    8002af64:	4085d59b          	sraiw	a1,a1,0x8
    8002af68:	97ade0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31187
            dbuf_putc(bc, OP_put_arg);
    8002af6c:	05c00593          	li	a1,92
    8002af70:	1088                	addi	a0,sp,96
    8002af72:	371260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31188
            dbuf_put_u16(bc, i);
    8002af76:	03099593          	slli	a1,s3,0x30
    8002af7a:	91c1                	srli	a1,a1,0x30
    8002af7c:	1088                	addi	a0,sp,96
    8002af7e:	82ede0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31182
    for(i = 0; i < s->arg_count; i++) {
    8002af82:	2985                	addiw	s3,s3,1
    8002af84:	0ac42783          	lw	a5,172(s0)
    8002af88:	faf9cfe3          	blt	s3,a5,8002af46 <resolve_variables+0x6d8>
quickjs-nuttx/quickjs.c:31191
    for(i = 0; i < s->var_count; i++) {
    8002af8c:	4981                	li	s3,0
    8002af8e:	09c42783          	lw	a5,156(s0)
    8002af92:	10f9c763          	blt	s3,a5,8002b0a0 <resolve_variables+0x832>
quickjs-nuttx/quickjs.c:31204
    if (s->module) {
    8002af96:	21843783          	ld	a5,536(s0)
quickjs-nuttx/quickjs.c:31179
    int i, idx, label_next = -1;
    8002af9a:	5afd                	li	s5,-1
quickjs-nuttx/quickjs.c:31204
    if (s->module) {
    8002af9c:	cf95                	beqz	a5,8002afd8 <resolve_variables+0x76a>
quickjs-nuttx/quickjs.c:31205
        label_next = new_label_fd(s, -1);
    8002af9e:	55fd                	li	a1,-1
    8002afa0:	8522                	mv	a0,s0
    8002afa2:	f71f10ef          	jal	ra,8001cf12 <new_label_fd>
    8002afa6:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:31208
        dbuf_putc(bc, OP_push_this);
    8002afa8:	45a1                	li	a1,8
    8002afaa:	1088                	addi	a0,sp,96
    8002afac:	337260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31209
        dbuf_putc(bc, OP_if_false);
    8002afb0:	06a00593          	li	a1,106
    8002afb4:	1088                	addi	a0,sp,96
    8002afb6:	32d260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31210
        dbuf_put_u32(bc, label_next);
    8002afba:	000a859b          	sext.w	a1,s5
    8002afbe:	1088                	addi	a0,sp,96
    8002afc0:	922de0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31211
        update_label(s, label_next, 1);
    8002afc4:	4605                	li	a2,1
    8002afc6:	85d6                	mv	a1,s5
    8002afc8:	8522                	mv	a0,s0
    8002afca:	f86de0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:31212
        s->jump_size++;
    8002afce:	1b042783          	lw	a5,432(s0)
    8002afd2:	2785                	addiw	a5,a5,1
    8002afd4:	1af42823          	sw	a5,432(s0)
quickjs-nuttx/quickjs.c:31217
    for(i = 0; i < s->global_var_count; i++) {
    8002afd8:	4c81                	li	s9,0
    8002afda:	11c42783          	lw	a5,284(s0)
    8002afde:	10fcc463          	blt	s9,a5,8002b0e6 <resolve_variables+0x878>
quickjs-nuttx/quickjs.c:31297
    if (s->module) {
    8002afe2:	21843783          	ld	a5,536(s0)
    8002afe6:	cb8d                	beqz	a5,8002b018 <resolve_variables+0x7aa>
quickjs-nuttx/quickjs.c:31298
        dbuf_putc(bc, OP_return_undef);
    8002afe8:	02900593          	li	a1,41
    8002afec:	1088                	addi	a0,sp,96
    8002afee:	2f5260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31300
        dbuf_putc(bc, OP_label);
    8002aff2:	0b800593          	li	a1,184
    8002aff6:	1088                	addi	a0,sp,96
    8002aff8:	2eb260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31301
        dbuf_put_u32(bc, label_next);
    8002affc:	000a859b          	sext.w	a1,s5
