    80036000:	02800713          	li	a4,40
    80036004:	0ae79963          	bne	a5,a4,800360b6 <js_parse_statement_or_decl+0x4a0>
quickjs-nuttx/quickjs.c:26601
                js_parse_skip_parens_token(s, &bits, FALSE);
    80036008:	4601                	li	a2,0
    8003600a:	182c                	addi	a1,sp,56
    8003600c:	8522                	mv	a0,s0
    8003600e:	95ef90ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
quickjs-nuttx/quickjs.c:26612
            if (js_parse_expect(s, '('))
    80036012:	02800593          	li	a1,40
    80036016:	8522                	mv	a0,s0
    80036018:	f9bf80ef          	jal	ra,8002efb2 <js_parse_expect>
    8003601c:	ca051fe3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26615
            if (!(bits & SKIP_HAS_SEMI)) {
    80036020:	5962                	lw	s2,56(sp)
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26148
    JSFunctionDef *fd = s->cur_func;
    80036022:	06843d03          	ld	s10,104(s0)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26615
            if (!(bits & SKIP_HAS_SEMI)) {
    80036026:	00197913          	andi	s2,s2,1
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26159
    block_scope_level = fd->scope_level;
    8003602a:	0e0d2c03          	lw	s8,224(s10)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26615
            if (!(bits & SKIP_HAS_SEMI)) {
    8003602e:	4a091063          	bnez	s2,800364ce <js_parse_statement_or_decl+0x8b8>
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26160
    label_cont = new_label(s);
    80036032:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26147
    JSContext *ctx = s->ctx;
    80036034:	00043d83          	ld	s11,0(s0)
quickjs-nuttx/quickjs.c:26160
    label_cont = new_label(s);
    80036038:	f35e60ef          	jal	ra,8001cf6c <new_label>
    8003603c:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:26161
    label_body = new_label(s);
    8003603e:	8522                	mv	a0,s0
    80036040:	f2de60ef          	jal	ra,8001cf6c <new_label>
    80036044:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:26162
    label_break = new_label(s);
    80036046:	8522                	mv	a0,s0
    80036048:	f25e60ef          	jal	ra,8001cf6c <new_label>
    8003604c:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:26163
    label_next = new_label(s);
    8003604e:	8522                	mv	a0,s0
    80036050:	f1de60ef          	jal	ra,8001cf6c <new_label>
    80036054:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/quickjs.c:26168
    push_scope(s);
    80036056:	8522                	mv	a0,s0
    80036058:	f70e70ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:26172
    push_break_entry(s->cur_func, &break_entry,
    8003605c:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26176
    label_expr = emit_goto(s, OP_goto, -1);
    8003605e:	567d                	li	a2,-1
    80036060:	06c00593          	li	a1,108
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80036064:	1807b703          	ld	a4,384(a5)
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26176
    label_expr = emit_goto(s, OP_goto, -1);
    80036068:	8522                	mv	a0,s0
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    8003606a:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    8003606c:	0898                	addi	a4,sp,80
    8003606e:	18e7b023          	sd	a4,384(a5)
quickjs-nuttx/quickjs.c:25806
    be->label_break = label_break;
    80036072:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80036074:	577d                	li	a4,-1
    80036076:	d4ba                	sw	a4,104(sp)
quickjs-nuttx/quickjs.c:25806
    be->label_break = label_break;
    80036078:	cebe                	sw	a5,92(sp)
quickjs-nuttx/quickjs.c:25808
    be->drop_count = drop_count;
    8003607a:	4785                	li	a5,1
    8003607c:	d2be                	sw	a5,100(sp)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    8003607e:	cca6                	sw	s1,88(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036080:	d0d6                	sw	s5,96(sp)
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    80036082:	d882                	sw	zero,112(sp)
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26174
    break_entry.scope_level = block_scope_level;
    80036084:	d6e2                	sw	s8,108(sp)
quickjs-nuttx/quickjs.c:26176
    label_expr = emit_goto(s, OP_goto, -1);
    80036086:	eefe60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26178
    pos_next = s->cur_func->byte_code.size;
    8003608a:	7438                	ld	a4,104(s0)
quickjs-nuttx/quickjs.c:26179
    emit_label(s, label_next);
    8003608c:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:26176
    label_expr = emit_goto(s, OP_goto, -1);
    8003608e:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:26179
    emit_label(s, label_next);
    80036090:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26178
    pos_next = s->cur_func->byte_code.size;
    80036092:	13873c83          	ld	s9,312(a4)
quickjs-nuttx/quickjs.c:26179
    emit_label(s, label_next);
    80036096:	9fed30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26182
    switch (is_let(s, DECL_MASK_OTHER)) {
    8003609a:	4591                	li	a1,4
    8003609c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26181
    tok = s->token.val;
    8003609e:	01842a03          	lw	s4,24(s0)
quickjs-nuttx/quickjs.c:26182
    switch (is_let(s, DECL_MASK_OTHER)) {
    800360a2:	e79f80ef          	jal	ra,8002ef1a <is_let>
    800360a6:	8b2a                	mv	s6,a0
    800360a8:	c121                	beqz	a0,800360e8 <js_parse_statement_or_decl+0x4d2>
    800360aa:	4785                	li	a5,1
    800360ac:	c2f517e3          	bne	a0,a5,80035cda <js_parse_statement_or_decl+0xc4>
    800360b0:	fd300a13          	li	s4,-45
    800360b4:	a0b1                	j	80036100 <js_parse_statement_or_decl+0x4ea>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26602
            } else if (s->token.val == TOK_AWAIT) {
    800360b6:	fda00713          	li	a4,-38
    800360ba:	f4e79ce3          	bne	a5,a4,80036012 <js_parse_statement_or_decl+0x3fc>
quickjs-nuttx/quickjs.c:26603
                if (!(s->cur_func->func_kind & JS_FUNC_ASYNC)) {
    800360be:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26604
                    js_parse_error(s, "for await is only valid in asynchronous functions");
    800360c0:	00037597          	auipc	a1,0x37
    800360c4:	93858593          	addi	a1,a1,-1736 # 8006c9f8 <qjsc_repl+0x7448>
quickjs-nuttx/quickjs.c:26603
                if (!(s->cur_func->func_kind & JS_FUNC_ASYNC)) {
    800360c8:	0847c783          	lbu	a5,132(a5)
    800360cc:	8b89                	andi	a5,a5,2
    800360ce:	c20784e3          	beqz	a5,80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26608
                if (next_token(s))
    800360d2:	8522                	mv	a0,s0
    800360d4:	cb2f80ef          	jal	ra,8002e586 <next_token>
    800360d8:	c00511e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26610
                s->cur_func->has_await = TRUE;
    800360dc:	743c                	ld	a5,104(s0)
    800360de:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:26607
                is_async = TRUE;
    800360e0:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:26610
                s->cur_func->has_await = TRUE;
    800360e2:	22e7a023          	sw	a4,544(a5)
    800360e6:	b735                	j	80036012 <js_parse_statement_or_decl+0x3fc>
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26191
    if (tok == TOK_VAR || tok == TOK_LET || tok == TOK_CONST) {
    800360e8:	fb300793          	li	a5,-77
    800360ec:	00fa0a63          	beq	s4,a5,80036100 <js_parse_statement_or_decl+0x4ea>
    800360f0:	fd300793          	li	a5,-45
    800360f4:	00fa0663          	beq	s4,a5,80036100 <js_parse_statement_or_decl+0x4ea>
    800360f8:	fcb00793          	li	a5,-53
    800360fc:	0cfa1f63          	bne	s4,a5,800361da <js_parse_statement_or_decl+0x5c4>
quickjs-nuttx/quickjs.c:26192
        if (next_token(s))
    80036100:	8522                	mv	a0,s0
    80036102:	c84f80ef          	jal	ra,8002e586 <next_token>
    80036106:	bc051ae3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26195
        if (!(s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved)) {
    8003610a:	4c1c                	lw	a5,24(s0)
    8003610c:	f8300713          	li	a4,-125
    80036110:	02e79263          	bne	a5,a4,80036134 <js_parse_statement_or_decl+0x51e>
    80036114:	581c                	lw	a5,48(s0)
    80036116:	efa5                	bnez	a5,8003618e <js_parse_statement_or_decl+0x578>
quickjs-nuttx/quickjs.c:26205
            var_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80036118:	540c                	lw	a1,40(s0)
    8003611a:	856e                	mv	a0,s11
    8003611c:	febd40ef          	jal	ra,8000b106 <JS_DupAtom>
    80036120:	de2a                	sw	a0,60(sp)
quickjs-nuttx/quickjs.c:26206
            if (next_token(s)) {
    80036122:	8522                	mv	a0,s0
    80036124:	c62f80ef          	jal	ra,8002e586 <next_token>
    80036128:	55f2                	lw	a1,60(sp)
    8003612a:	c935                	beqz	a0,8003619e <js_parse_statement_or_decl+0x588>
quickjs-nuttx/quickjs.c:26211
                JS_FreeAtom(s->ctx, var_name);
    8003612c:	6008                	ld	a0,0(s0)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26913
                            JS_FreeAtom(ctx, name);
    8003612e:	81ad50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:26914
                            goto fail;
    80036132:	b665                	j	80035cda <js_parse_statement_or_decl+0xc4>
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26196
            if (s->token.val == '[' || s->token.val == '{') {
    80036134:	fdf7f793          	andi	a5,a5,-33
    80036138:	05b00713          	li	a4,91
    8003613c:	04e79963          	bne	a5,a4,8003618e <js_parse_statement_or_decl+0x578>
quickjs-nuttx/quickjs.c:26197
                if (js_parse_destructuring_element(s, tok, 0, TRUE, -1, FALSE) < 0)
    80036140:	4781                	li	a5,0
    80036142:	577d                	li	a4,-1
    80036144:	4685                	li	a3,1
    80036146:	4601                	li	a2,0
    80036148:	85d2                	mv	a1,s4
    8003614a:	8522                	mv	a0,s0
    8003614c:	964fd0ef          	jal	ra,800332b0 <js_parse_destructuring_element>
    80036150:	b80545e3          	bltz	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26203
            var_name = JS_ATOM_NULL;
    80036154:	de02                	sw	zero,60(sp)
quickjs-nuttx/quickjs.c:26199
                has_destructuring = TRUE;
    80036156:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:26240
    emit_goto(s, OP_goto, label_body);
    80036158:	6622                	ld	a2,8(sp)
    8003615a:	06c00593          	li	a1,108
    8003615e:	8522                	mv	a0,s0
    80036160:	e15e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26242
    pos_expr = s->cur_func->byte_code.size;
    80036164:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26243
    emit_label(s, label_expr);
    80036166:	75a2                	ld	a1,40(sp)
    80036168:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26242
    pos_expr = s->cur_func->byte_code.size;
    8003616a:	1387b783          	ld	a5,312(a5)
    8003616e:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:26243
    emit_label(s, label_expr);
    80036170:	924d30ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26244
    if (s->token.val == '=') {
    80036174:	4c18                	lw	a4,24(s0)
    80036176:	03d00793          	li	a5,61
    8003617a:	12f71963          	bne	a4,a5,800362ac <js_parse_statement_or_decl+0x696>
quickjs-nuttx/quickjs.c:26250
        if (next_token(s) || js_parse_assign_expr2(s, 0)) {
    8003617e:	8522                	mv	a0,s0
    80036180:	c06f80ef          	jal	ra,8002e586 <next_token>
    80036184:	0e050d63          	beqz	a0,8003627e <js_parse_statement_or_decl+0x668>
quickjs-nuttx/quickjs.c:26251
            JS_FreeAtom(ctx, var_name);
    80036188:	55f2                	lw	a1,60(sp)
    8003618a:	856e                	mv	a0,s11
    8003618c:	b74d                	j	8003612e <js_parse_statement_or_decl+0x518>
quickjs-nuttx/quickjs.c:26201
                return js_parse_error(s, "variable name expected");
    8003618e:	00036597          	auipc	a1,0x36
    80036192:	6b258593          	addi	a1,a1,1714 # 8006c840 <qjsc_repl+0x7290>
quickjs-nuttx/quickjs.c:26269
            return js_parse_error(s, "'for await' loop should be used with 'of'");
    80036196:	8522                	mv	a0,s0
    80036198:	adbf70ef          	jal	ra,8002dc72 <js_parse_error>
    8003619c:	bee5                	j	80035d94 <js_parse_statement_or_decl+0x17e>
quickjs-nuttx/quickjs.c:26210
            if (js_define_var(s, var_name, tok)) {
    8003619e:	8652                	mv	a2,s4
    800361a0:	8522                	mv	a0,s0
    800361a2:	98bf90ef          	jal	ra,8002fb2c <js_define_var>
    800361a6:	8b2a                	mv	s6,a0
    800361a8:	c119                	beqz	a0,800361ae <js_parse_statement_or_decl+0x598>
quickjs-nuttx/quickjs.c:26211
                JS_FreeAtom(s->ctx, var_name);
    800361aa:	55f2                	lw	a1,60(sp)
    800361ac:	b741                	j	8003612c <js_parse_statement_or_decl+0x516>
quickjs-nuttx/quickjs.c:26214
            emit_op(s, (tok == TOK_CONST || tok == TOK_LET) ?
    800361ae:	035a079b          	addiw	a5,s4,53
    800361b2:	9bdd                	andi	a5,a5,-9
    800361b4:	2781                	sext.w	a5,a5
    800361b6:	0bb00593          	li	a1,187
    800361ba:	e399                	bnez	a5,800361c0 <js_parse_statement_or_decl+0x5aa>
    800361bc:	0bf00593          	li	a1,191
    800361c0:	8522                	mv	a0,s0
    800361c2:	f35d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26216
            emit_atom(s, var_name);
    800361c6:	55f2                	lw	a1,60(sp)
    800361c8:	8522                	mv	a0,s0
    800361ca:	f61d40ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:26217
            emit_u16(s, fd->scope_level);
    800361ce:	0e0d5583          	lhu	a1,224(s10)
    800361d2:	8522                	mv	a0,s0
    800361d4:	df1d20ef          	jal	ra,80008fc4 <emit_u16>
    800361d8:	b741                	j	80036158 <js_parse_statement_or_decl+0x542>
quickjs-nuttx/quickjs.c:26219
    } else if (!is_async && token_is_pseudo_keyword(s, JS_ATOM_async) &&
    800361da:	02099463          	bnez	s3,80036202 <js_parse_statement_or_decl+0x5ec>
    800361de:	08600593          	li	a1,134
    800361e2:	8522                	mv	a0,s0
    800361e4:	c8bd10ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    800361e8:	cd09                	beqz	a0,80036202 <js_parse_statement_or_decl+0x5ec>
quickjs-nuttx/quickjs.c:26220
               peek_token(s, FALSE) == TOK_OF) {
    800361ea:	4581                	li	a1,0
    800361ec:	8522                	mv	a0,s0
    800361ee:	a7fd30ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:26219
    } else if (!is_async && token_is_pseudo_keyword(s, JS_ATOM_async) &&
    800361f2:	fdb00793          	li	a5,-37
quickjs-nuttx/quickjs.c:26221
        return js_parse_error(s, "'for of' expression cannot start with 'async'");
    800361f6:	00037597          	auipc	a1,0x37
    800361fa:	83a58593          	addi	a1,a1,-1990 # 8006ca30 <qjsc_repl+0x7480>
quickjs-nuttx/quickjs.c:26219
    } else if (!is_async && token_is_pseudo_keyword(s, JS_ATOM_async) &&
    800361fe:	f8f50ce3          	beq	a0,a5,80036196 <js_parse_statement_or_decl+0x580>
quickjs-nuttx/quickjs.c:26224
        if ((s->token.val == '[' || s->token.val == '{')
    80036202:	4c1c                	lw	a5,24(s0)
    80036204:	05b00713          	li	a4,91
    80036208:	fdf7f793          	andi	a5,a5,-33
    8003620c:	02e79c63          	bne	a5,a4,80036244 <js_parse_statement_or_decl+0x62e>
quickjs-nuttx/quickjs.c:26225
        &&  ((tok1 = js_parse_skip_parens_token(s, &skip_bits, FALSE)) == TOK_IN || tok1 == TOK_OF)) {
    80036210:	4601                	li	a2,0
    80036212:	00ac                	addi	a1,sp,72
    80036214:	8522                	mv	a0,s0
    80036216:	f57f80ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
    8003621a:	fb900793          	li	a5,-71
    8003621e:	00f50663          	beq	a0,a5,8003622a <js_parse_statement_or_decl+0x614>
    80036222:	fdb00793          	li	a5,-37
    80036226:	00f51f63          	bne	a0,a5,80036244 <js_parse_statement_or_decl+0x62e>
quickjs-nuttx/quickjs.c:26226
            if (js_parse_destructuring_element(s, 0, 0, TRUE, skip_bits & SKIP_HAS_ELLIPSIS, TRUE) < 0)
    8003622a:	4726                	lw	a4,72(sp)
    8003622c:	4785                	li	a5,1
    8003622e:	4685                	li	a3,1
    80036230:	8b09                	andi	a4,a4,2
    80036232:	4601                	li	a2,0
    80036234:	4581                	li	a1,0
    80036236:	8522                	mv	a0,s0
    80036238:	878fd0ef          	jal	ra,800332b0 <js_parse_destructuring_element>
    8003623c:	a8054fe3          	bltz	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26238
        var_name = JS_ATOM_NULL;
    80036240:	de02                	sw	zero,60(sp)
    80036242:	bf19                	j	80036158 <js_parse_statement_or_decl+0x542>
js_parse_left_hand_side_expr():
quickjs-nuttx/quickjs.c:22694
    return js_parse_postfix_expr(s, PF_POSTFIX_CALL);
    80036244:	4589                	li	a1,2
    80036246:	8522                	mv	a0,s0
    80036248:	887fb0ef          	jal	ra,80031ace <js_parse_postfix_expr>
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26230
            if (js_parse_left_hand_side_expr(s))
    8003624c:	a80517e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26232
            if (get_lvalue(s, &opcode, &scope, &var_name, &lvalue_label,
    80036250:	fbd00893          	li	a7,-67
    80036254:	4801                	li	a6,0
    80036256:	4781                	li	a5,0
    80036258:	00f8                	addi	a4,sp,76
    8003625a:	1874                	addi	a3,sp,60
    8003625c:	00d0                	addi	a2,sp,68
    8003625e:	008c                	addi	a1,sp,64
    80036260:	8522                	mv	a0,s0
    80036262:	9e6f90ef          	jal	ra,8002f448 <get_lvalue>
    80036266:	a6051ae3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26235
            put_lvalue(s, opcode, scope, var_name, lvalue_label,
    8003626a:	4736                	lw	a4,76(sp)
    8003626c:	56f2                	lw	a3,60(sp)
    8003626e:	4616                	lw	a2,68(sp)
    80036270:	4586                	lw	a1,64(sp)
    80036272:	4801                	li	a6,0
    80036274:	4791                	li	a5,4
    80036276:	8522                	mv	a0,s0
    80036278:	f23d40ef          	jal	ra,8000b19a <put_lvalue>
    8003627c:	b7d1                	j	80036240 <js_parse_statement_or_decl+0x62a>
quickjs-nuttx/quickjs.c:26250
        if (next_token(s) || js_parse_assign_expr2(s, 0)) {
    8003627e:	4581                	li	a1,0
    80036280:	8522                	mv	a0,s0
    80036282:	b00fe0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    80036286:	f00511e3          	bnez	a0,80036188 <js_parse_statement_or_decl+0x572>
quickjs-nuttx/quickjs.c:26254
        if (var_name != JS_ATOM_NULL) {
    8003628a:	57f2                	lw	a5,60(sp)
quickjs-nuttx/quickjs.c:26246
        has_initializer = TRUE;
    8003628c:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:26254
        if (var_name != JS_ATOM_NULL) {
    8003628e:	cf99                	beqz	a5,800362ac <js_parse_statement_or_decl+0x696>
quickjs-nuttx/quickjs.c:26255
            emit_op(s, OP_scope_put_var);
    80036290:	0bb00593          	li	a1,187
    80036294:	8522                	mv	a0,s0
    80036296:	e61d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26256
            emit_atom(s, var_name);
    8003629a:	55f2                	lw	a1,60(sp)
    8003629c:	8522                	mv	a0,s0
    8003629e:	e8dd40ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:26257
            emit_u16(s, fd->scope_level);
    800362a2:	0e0d5583          	lhu	a1,224(s10)
    800362a6:	8522                	mv	a0,s0
    800362a8:	d1dd20ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:26260
    JS_FreeAtom(ctx, var_name);
    800362ac:	55f2                	lw	a1,60(sp)
    800362ae:	856e                	mv	a0,s11
    800362b0:	e99d40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:26262
    if (token_is_pseudo_keyword(s, JS_ATOM_of)) {
    800362b4:	04400593          	li	a1,68
    800362b8:	8522                	mv	a0,s0
    800362ba:	bb5d10ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    800362be:	c129                	beqz	a0,80036300 <js_parse_statement_or_decl+0x6ea>
quickjs-nuttx/quickjs.c:26263
        break_entry.has_iterator = is_for_of = TRUE;
    800362c0:	4785                	li	a5,1
    800362c2:	d8be                	sw	a5,112(sp)
quickjs-nuttx/quickjs.c:26264
        break_entry.drop_count += 2;
    800362c4:	5796                	lw	a5,100(sp)
    800362c6:	2789                	addiw	a5,a5,2
    800362c8:	d2be                	sw	a5,100(sp)
quickjs-nuttx/quickjs.c:26265
        if (has_initializer)
    800362ca:	06091963          	bnez	s2,8003633c <js_parse_statement_or_decl+0x726>
quickjs-nuttx/quickjs.c:26263
        break_entry.has_iterator = is_for_of = TRUE;
    800362ce:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:26280
    if (next_token(s))
    800362d0:	8522                	mv	a0,s0
    800362d2:	ab4f80ef          	jal	ra,8002e586 <next_token>
    800362d6:	a00512e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26283
        if (js_parse_assign_expr(s))
    800362da:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26282
    if (is_for_of) {
    800362dc:	08090163          	beqz	s2,8003635e <js_parse_statement_or_decl+0x748>
quickjs-nuttx/quickjs.c:26283
        if (js_parse_assign_expr(s))
    800362e0:	cf7fe0ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    800362e4:	9e051be3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26291
    close_scopes(s, s->cur_func->scope_level, block_scope_level);
    800362e8:	743c                	ld	a5,104(s0)
    800362ea:	8662                	mv	a2,s8
    800362ec:	8522                	mv	a0,s0
    800362ee:	0e07a583          	lw	a1,224(a5)
    800362f2:	f59d20ef          	jal	ra,8000924a <close_scopes>
quickjs-nuttx/quickjs.c:26292
    if (is_for_of) {
    800362f6:	06091763          	bnez	s2,80036364 <js_parse_statement_or_decl+0x74e>
quickjs-nuttx/quickjs.c:26299
        emit_op(s, OP_for_in_start);
    800362fa:	07e00593          	li	a1,126
    800362fe:	a88d                	j	80036370 <js_parse_statement_or_decl+0x75a>
quickjs-nuttx/quickjs.c:26267
    } else if (s->token.val == TOK_IN) {
    80036300:	4c18                	lw	a4,24(s0)
    80036302:	fb900793          	li	a5,-71
    80036306:	04f71763          	bne	a4,a5,80036354 <js_parse_statement_or_decl+0x73e>
quickjs-nuttx/quickjs.c:26268
        if (is_async)
    8003630a:	00098763          	beqz	s3,80036318 <js_parse_statement_or_decl+0x702>
quickjs-nuttx/quickjs.c:26269
            return js_parse_error(s, "'for await' loop should be used with 'of'");
    8003630e:	00036597          	auipc	a1,0x36
    80036312:	75258593          	addi	a1,a1,1874 # 8006ca60 <qjsc_repl+0x74b0>
    80036316:	b541                	j	80036196 <js_parse_statement_or_decl+0x580>
quickjs-nuttx/quickjs.c:26270
        if (has_initializer &&
    80036318:	fa090ce3          	beqz	s2,800362d0 <js_parse_statement_or_decl+0x6ba>
    8003631c:	fb300793          	li	a5,-77
    80036320:	00fa1963          	bne	s4,a5,80036332 <js_parse_statement_or_decl+0x71c>
quickjs-nuttx/quickjs.c:26271
            (tok != TOK_VAR || (fd->js_mode & JS_MODE_STRICT) ||
    80036324:	086d4783          	lbu	a5,134(s10)
    80036328:	8b85                	andi	a5,a5,1
    8003632a:	e781                	bnez	a5,80036332 <js_parse_statement_or_decl+0x71c>
quickjs-nuttx/quickjs.c:26158
    is_for_of = FALSE;
    8003632c:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:26271
            (tok != TOK_VAR || (fd->js_mode & JS_MODE_STRICT) ||
    8003632e:	fa0b01e3          	beqz	s6,800362d0 <js_parse_statement_or_decl+0x6ba>
quickjs-nuttx/quickjs.c:26274
            return js_parse_error(s, "a declaration in the head of a for-%s loop can't have an initializer",
    80036332:	00038617          	auipc	a2,0x38
    80036336:	cbe60613          	addi	a2,a2,-834 # 8006dff0 <qjsc_repl+0x8a40>
    8003633a:	a029                	j	80036344 <js_parse_statement_or_decl+0x72e>
    8003633c:	00036617          	auipc	a2,0x36
    80036340:	5ec60613          	addi	a2,a2,1516 # 8006c928 <qjsc_repl+0x7378>
    80036344:	00036597          	auipc	a1,0x36
    80036348:	74c58593          	addi	a1,a1,1868 # 8006ca90 <qjsc_repl+0x74e0>
    8003634c:	8522                	mv	a0,s0
    8003634e:	925f70ef          	jal	ra,8002dc72 <js_parse_error>
    80036352:	b489                	j	80035d94 <js_parse_statement_or_decl+0x17e>
quickjs-nuttx/quickjs.c:26278
        return js_parse_error(s, "expected 'of' or 'in' in for control expression");
    80036354:	00036597          	auipc	a1,0x36
    80036358:	78458593          	addi	a1,a1,1924 # 8006cad8 <qjsc_repl+0x7528>
    8003635c:	bd2d                	j	80036196 <js_parse_statement_or_decl+0x580>
quickjs-nuttx/quickjs.c:26286
        if (js_parse_expr(s))
    8003635e:	9bffe0ef          	jal	ra,80034d1c <js_parse_expr>
    80036362:	b749                	j	800362e4 <js_parse_statement_or_decl+0x6ce>
quickjs-nuttx/quickjs.c:26294
            emit_op(s, OP_for_await_of_start);
    80036364:	08000593          	li	a1,128
quickjs-nuttx/quickjs.c:26293
        if (is_async)
    80036368:	00099463          	bnez	s3,80036370 <js_parse_statement_or_decl+0x75a>
quickjs-nuttx/quickjs.c:26296
            emit_op(s, OP_for_of_start);
    8003636c:	07f00593          	li	a1,127
quickjs-nuttx/quickjs.c:26299
        emit_op(s, OP_for_in_start);
    80036370:	8522                	mv	a0,s0
    80036372:	d85d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26302
    emit_goto(s, OP_goto, label_cont);
    80036376:	06c00593          	li	a1,108
    8003637a:	8656                	mv	a2,s5
    8003637c:	8522                	mv	a0,s0
    8003637e:	bf7e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26304
    if (js_parse_expect(s, ')'))
    80036382:	02900593          	li	a1,41
    80036386:	8522                	mv	a0,s0
    80036388:	c2bf80ef          	jal	ra,8002efb2 <js_parse_expect>
    8003638c:	940517e3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26309
        DynBuf *bc = &s->cur_func->byte_code;
    80036390:	06843d03          	ld	s10,104(s0)
quickjs-nuttx/quickjs.c:26313
        dbuf_realloc(bc, bc->size + chunk_size);
    80036394:	7702                	ld	a4,32(sp)
quickjs-nuttx/quickjs.c:26242
    pos_expr = s->cur_func->byte_code.size;
    80036396:	5d82                	lw	s11,32(sp)
quickjs-nuttx/quickjs.c:26311
        int offset = bc->size - pos_next;
    80036398:	138d3583          	ld	a1,312(s10)
quickjs-nuttx/quickjs.c:26313
        dbuf_realloc(bc, bc->size + chunk_size);
    8003639c:	41970b3b          	subw	s6,a4,s9
quickjs-nuttx/quickjs.c:26309
        DynBuf *bc = &s->cur_func->byte_code;
    800363a0:	130d0793          	addi	a5,s10,304
quickjs-nuttx/quickjs.c:26311
        int offset = bc->size - pos_next;
    800363a4:	4195883b          	subw	a6,a1,s9
quickjs-nuttx/quickjs.c:26313
        dbuf_realloc(bc, bc->size + chunk_size);
    800363a8:	853e                	mv	a0,a5
    800363aa:	95da                	add	a1,a1,s6
quickjs-nuttx/quickjs.c:26311
        int offset = bc->size - pos_next;
    800363ac:	f442                	sd	a6,40(sp)
quickjs-nuttx/quickjs.c:26313
        dbuf_realloc(bc, bc->size + chunk_size);
    800363ae:	f03e                	sd	a5,32(sp)
    800363b0:	5fe1b0ef          	jal	ra,800519ae <dbuf_realloc>
quickjs-nuttx/quickjs.c:26314
        dbuf_put(bc, bc->buf + pos_next, chunk_size);
    800363b4:	7782                	ld	a5,32(sp)
    800363b6:	130d3583          	ld	a1,304(s10)
quickjs-nuttx/quickjs.c:26178
    pos_next = s->cur_func->byte_code.size;
    800363ba:	000c8a1b          	sext.w	s4,s9
quickjs-nuttx/quickjs.c:26314
        dbuf_put(bc, bc->buf + pos_next, chunk_size);
    800363be:	853e                	mv	a0,a5
    800363c0:	865a                	mv	a2,s6
    800363c2:	95d2                	add	a1,a1,s4
    800363c4:	68c1b0ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:26315
        memset(bc->buf + pos_next, OP_nop, chunk_size);
    800363c8:	130d3503          	ld	a0,304(s10)
    800363cc:	865a                	mv	a2,s6
    800363ce:	0b500593          	li	a1,181
    800363d2:	9552                	add	a0,a0,s4
    800363d4:	06f2d0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:26317
        s->cur_func->last_opcode_pos = bc->size - 5;
    800363d8:	138d3783          	ld	a5,312(s10)
    800363dc:	7438                	ld	a4,104(s0)
quickjs-nuttx/quickjs.c:26319
        for (i = label_cont; i < s->cur_func->label_count; i++) {
    800363de:	7822                	ld	a6,40(sp)
quickjs-nuttx/quickjs.c:26317
        s->cur_func->last_opcode_pos = bc->size - 5;
    800363e0:	37ed                	addiw	a5,a5,-5
    800363e2:	16f72023          	sw	a5,352(a4)
quickjs-nuttx/quickjs.c:26320
            LabelSlot *ls = &s->cur_func->label_slots[i];
    800363e6:	4661                	li	a2,24
quickjs-nuttx/quickjs.c:26319
        for (i = label_cont; i < s->cur_func->label_count; i++) {
    800363e8:	8756                	mv	a4,s5
    800363ea:	743c                	ld	a5,104(s0)
    800363ec:	17c7a683          	lw	a3,380(a5)
    800363f0:	06d74763          	blt	a4,a3,8003645e <js_parse_statement_or_decl+0x848>
quickjs-nuttx/quickjs.c:26326
    emit_label(s, label_body);
    800363f4:	65a2                	ld	a1,8(sp)
    800363f6:	8522                	mv	a0,s0
    800363f8:	e9dd20ef          	jal	ra,80009294 <emit_label>
js_parse_statement():
quickjs-nuttx/quickjs.c:25970
    return js_parse_statement_or_decl(s, 0);
    800363fc:	4581                	li	a1,0
    800363fe:	8522                	mv	a0,s0
    80036400:	817ff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26327
    if (js_parse_statement(s))
    80036404:	8c051be3          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26330
    close_scopes(s, s->cur_func->scope_level, block_scope_level);
    80036408:	743c                	ld	a5,104(s0)
    8003640a:	8522                	mv	a0,s0
    8003640c:	8662                	mv	a2,s8
    8003640e:	0e07a583          	lw	a1,224(a5)
    80036412:	e39d20ef          	jal	ra,8000924a <close_scopes>
quickjs-nuttx/quickjs.c:26332
    emit_label(s, label_cont);
    80036416:	85d6                	mv	a1,s5
    80036418:	8522                	mv	a0,s0
    8003641a:	e7bd20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26333
    if (is_for_of) {
    8003641e:	0a090563          	beqz	s2,800364c8 <js_parse_statement_or_decl+0x8b2>
quickjs-nuttx/quickjs.c:26334
        if (is_async) {
    80036422:	04098d63          	beqz	s3,8003647c <js_parse_statement_or_decl+0x866>
quickjs-nuttx/quickjs.c:26337
            emit_op(s, OP_dup3);
    80036426:	45d1                	li	a1,20
    80036428:	8522                	mv	a0,s0
    8003642a:	ccdd20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26338
            emit_op(s, OP_drop);
    8003642e:	45b9                	li	a1,14
    80036430:	8522                	mv	a0,s0
    80036432:	cc5d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26339
            emit_op(s, OP_call_method);
    80036436:	02400593          	li	a1,36
    8003643a:	8522                	mv	a0,s0
    8003643c:	cbbd20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26340
            emit_u16(s, 0);
    80036440:	4581                	li	a1,0
    80036442:	8522                	mv	a0,s0
    80036444:	b81d20ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:26342
            emit_op(s, OP_await);
    80036448:	08c00593          	li	a1,140
    8003644c:	8522                	mv	a0,s0
    8003644e:	ca9d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26344
            emit_op(s, OP_iterator_get_value_done);
    80036452:	08400593          	li	a1,132
quickjs-nuttx/quickjs.c:26350
        emit_op(s, OP_for_in_next);
    80036456:	8522                	mv	a0,s0
    80036458:	c9fd20ef          	jal	ra,800090f6 <emit_op>
    8003645c:	a80d                	j	8003648e <js_parse_statement_or_decl+0x878>
quickjs-nuttx/quickjs.c:26320
            LabelSlot *ls = &s->cur_func->label_slots[i];
    8003645e:	02c706b3          	mul	a3,a4,a2
    80036462:	1707b783          	ld	a5,368(a5)
    80036466:	96be                	add	a3,a3,a5
quickjs-nuttx/quickjs.c:26321
            if (ls->pos >= pos_next && ls->pos < pos_expr)
    80036468:	42dc                	lw	a5,4(a3)
    8003646a:	0147c763          	blt	a5,s4,80036478 <js_parse_statement_or_decl+0x862>
    8003646e:	01b7d563          	bge	a5,s11,80036478 <js_parse_statement_or_decl+0x862>
quickjs-nuttx/quickjs.c:26322
                ls->pos += offset;
    80036472:	00f807bb          	addw	a5,a6,a5
    80036476:	c2dc                	sw	a5,4(a3)
quickjs-nuttx/quickjs.c:26319
        for (i = label_cont; i < s->cur_func->label_count; i++) {
    80036478:	2705                	addiw	a4,a4,1
    8003647a:	bf85                	j	800363ea <js_parse_statement_or_decl+0x7d4>
quickjs-nuttx/quickjs.c:26346
            emit_op(s, OP_for_of_next);
    8003647c:	08200593          	li	a1,130
    80036480:	8522                	mv	a0,s0
    80036482:	c75d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26347
            emit_u8(s, 0);
    80036486:	4581                	li	a1,0
    80036488:	8522                	mv	a0,s0
    8003648a:	87bd20ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:26353
    emit_goto(s, OP_if_false, label_next);
    8003648e:	6662                	ld	a2,24(sp)
    80036490:	06a00593          	li	a1,106
    80036494:	8522                	mv	a0,s0
    80036496:	adfe60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26355
    emit_op(s, OP_drop);
    8003649a:	45b9                	li	a1,14
    8003649c:	8522                	mv	a0,s0
    8003649e:	c59d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26357
    emit_label(s, label_break);
    800364a2:	65c2                	ld	a1,16(sp)
    800364a4:	8522                	mv	a0,s0
    800364a6:	defd20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26360
        emit_op(s, OP_iterator_close);
    800364aa:	08500593          	li	a1,133
quickjs-nuttx/quickjs.c:26358
    if (is_for_of) {
    800364ae:	00091363          	bnez	s2,800364b4 <js_parse_statement_or_decl+0x89e>
quickjs-nuttx/quickjs.c:26362
        emit_op(s, OP_drop);
    800364b2:	45b9                	li	a1,14
    800364b4:	8522                	mv	a0,s0
    800364b6:	c41d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26364
    pop_break_entry(s->cur_func);
    800364ba:	743c                	ld	a5,104(s0)
pop_break_entry():
quickjs-nuttx/quickjs.c:25818
    fd->top_break = be->prev;
    800364bc:	1807b703          	ld	a4,384(a5)
    800364c0:	6318                	ld	a4,0(a4)
    800364c2:	18e7b023          	sd	a4,384(a5)
js_parse_for_in_of():
quickjs-nuttx/quickjs.c:26365
    pop_scope(s);
    800364c6:	b2e5                	j	80035eae <js_parse_statement_or_decl+0x298>
quickjs-nuttx/quickjs.c:26350
        emit_op(s, OP_for_in_next);
    800364c8:	08100593          	li	a1,129
    800364cc:	b769                	j	80036456 <js_parse_statement_or_decl+0x840>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26625
            push_scope(s);
    800364ce:	8522                	mv	a0,s0
    800364d0:	af8e70ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:26627
            tok = s->token.val;
    800364d4:	01842903          	lw	s2,24(s0)
quickjs-nuttx/quickjs.c:26628
            if (tok != ';') {
    800364d8:	03b00793          	li	a5,59
    800364dc:	04f90163          	beq	s2,a5,8003651e <js_parse_statement_or_decl+0x908>
quickjs-nuttx/quickjs.c:26629
                switch (is_let(s, DECL_MASK_OTHER)) {
    800364e0:	4591                	li	a1,4
    800364e2:	8522                	mv	a0,s0
    800364e4:	a37f80ef          	jal	ra,8002ef1a <is_let>
    800364e8:	16050563          	beqz	a0,80036652 <js_parse_statement_or_decl+0xa3c>
    800364ec:	4785                	li	a5,1
    800364ee:	fef51663          	bne	a0,a5,80035cda <js_parse_statement_or_decl+0xc4>
    800364f2:	fd300913          	li	s2,-45
quickjs-nuttx/quickjs.c:26639
                    if (next_token(s))
    800364f6:	8522                	mv	a0,s0
    800364f8:	88ef80ef          	jal	ra,8002e586 <next_token>
    800364fc:	fc051f63          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26641
                    if (js_parse_var(s, FALSE, tok, FALSE))
    80036500:	4681                	li	a3,0
    80036502:	864a                	mv	a2,s2
    80036504:	4581                	li	a1,0
    80036506:	8522                	mv	a0,s0
    80036508:	ad5fe0ef          	jal	ra,80034fdc <js_parse_var>
    8003650c:	fc051763          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26650
                close_scopes(s, s->cur_func->scope_level, block_scope_level);
    80036510:	743c                	ld	a5,104(s0)
    80036512:	8662                	mv	a2,s8
    80036514:	8522                	mv	a0,s0
    80036516:	0e07a583          	lw	a1,224(a5)
    8003651a:	d31d20ef          	jal	ra,8000924a <close_scopes>
quickjs-nuttx/quickjs.c:26652
            if (js_parse_expect(s, ';'))
    8003651e:	03b00593          	li	a1,59
    80036522:	8522                	mv	a0,s0
    80036524:	a8ff80ef          	jal	ra,8002efb2 <js_parse_expect>
    80036528:	fa051963          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26655
            label_test = new_label(s);
    8003652c:	8522                	mv	a0,s0
    8003652e:	a3fe60ef          	jal	ra,8001cf6c <new_label>
    80036532:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:26656
            label_cont = new_label(s);
    80036534:	8522                	mv	a0,s0
    80036536:	a37e60ef          	jal	ra,8001cf6c <new_label>
    8003653a:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:26657
            label_body = new_label(s);
    8003653c:	8522                	mv	a0,s0
    8003653e:	a2fe60ef          	jal	ra,8001cf6c <new_label>
    80036542:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:26658
            label_break = new_label(s);
    80036544:	8522                	mv	a0,s0
    80036546:	a27e60ef          	jal	ra,8001cf6c <new_label>
quickjs-nuttx/quickjs.c:26660
            push_break_entry(s->cur_func, &break_entry,
    8003654a:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26658
            label_break = new_label(s);
    8003654c:	8caa                	mv	s9,a0
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    8003654e:	1807b703          	ld	a4,384(a5)
    80036552:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80036554:	0898                	addi	a4,sp,80
    80036556:	18e7b023          	sd	a4,384(a5)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    8003655a:	577d                	li	a4,-1
    8003655c:	d4ba                	sw	a4,104(sp)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    8003655e:	cca6                	sw	s1,88(sp)
quickjs-nuttx/quickjs.c:25806
    be->label_break = label_break;
    80036560:	ceaa                	sw	a0,92(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036562:	d0ce                	sw	s3,96(sp)
quickjs-nuttx/quickjs.c:25808
    be->drop_count = drop_count;
    80036564:	d282                	sw	zero,100(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036566:	0e07a783          	lw	a5,224(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26664
            if (s->token.val == ';') {
    8003656a:	4c18                	lw	a4,24(s0)
push_break_entry():
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    8003656c:	d882                	sw	zero,112(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    8003656e:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26664
            if (s->token.val == ';') {
    80036570:	03b00793          	li	a5,59
    80036574:	10f70663          	beq	a4,a5,80036680 <js_parse_statement_or_decl+0xa6a>
quickjs-nuttx/quickjs.c:26668
                emit_label(s, label_test);
    80036578:	85ca                	mv	a1,s2
    8003657a:	8522                	mv	a0,s0
    8003657c:	d19d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26669
                if (js_parse_expr(s))
    80036580:	8522                	mv	a0,s0
    80036582:	f9afe0ef          	jal	ra,80034d1c <js_parse_expr>
    80036586:	f4051a63          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26671
                emit_goto(s, OP_if_false, label_break);
    8003658a:	8666                	mv	a2,s9
    8003658c:	06a00593          	li	a1,106
    80036590:	8522                	mv	a0,s0
    80036592:	9e3e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26673
            if (js_parse_expect(s, ';'))
    80036596:	03b00593          	li	a1,59
    8003659a:	8522                	mv	a0,s0
    8003659c:	a17f80ef          	jal	ra,8002efb2 <js_parse_expect>
    800365a0:	8a2a                	mv	s4,a0
    800365a2:	f2051c63          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26676
            if (s->token.val == ')') {
    800365a6:	4c18                	lw	a4,24(s0)
    800365a8:	02900793          	li	a5,41
    800365ac:	0cf71c63          	bne	a4,a5,80036684 <js_parse_statement_or_decl+0xa6e>
quickjs-nuttx/quickjs.c:26678
                break_entry.label_cont = label_cont = label_test;
    800365b0:	d0ca                	sw	s2,96(sp)
quickjs-nuttx/quickjs.c:26679
                pos_cont = 0; /* avoid warning */
    800365b2:	89ca                	mv	s3,s2
quickjs-nuttx/quickjs.c:26692
            if (js_parse_expect(s, ')'))
    800365b4:	02900593          	li	a1,41
    800365b8:	8522                	mv	a0,s0
    800365ba:	9f9f80ef          	jal	ra,8002efb2 <js_parse_expect>
    800365be:	f0051e63          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26695
            pos_body = s->cur_func->byte_code.size;
    800365c2:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26696
            emit_label(s, label_body);
    800365c4:	85d6                	mv	a1,s5
    800365c6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26695
            pos_body = s->cur_func->byte_code.size;
    800365c8:	1387bb03          	ld	s6,312(a5)
quickjs-nuttx/quickjs.c:26696
            emit_label(s, label_body);
    800365cc:	cc9d20ef          	jal	ra,80009294 <emit_label>
js_parse_statement():
quickjs-nuttx/quickjs.c:25970
    return js_parse_statement_or_decl(s, 0);
    800365d0:	4581                	li	a1,0
    800365d2:	8522                	mv	a0,s0
    800365d4:	e42ff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26697
            if (js_parse_statement(s))
    800365d8:	f0051163          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26702
            close_scopes(s, s->cur_func->scope_level, block_scope_level);
    800365dc:	743c                	ld	a5,104(s0)
    800365de:	8662                	mv	a2,s8
    800365e0:	8522                	mv	a0,s0
    800365e2:	0e07a583          	lw	a1,224(a5)
    800365e6:	c65d20ef          	jal	ra,8000924a <close_scopes>
quickjs-nuttx/quickjs.c:26704
            if (OPTIMIZE && label_test != label_body && label_cont != label_test) {
    800365ea:	0f590b63          	beq	s2,s5,800366e0 <js_parse_statement_or_decl+0xaca>
quickjs-nuttx/quickjs.c:26704 (discriminator 1)
    800365ee:	0f298963          	beq	s3,s2,800366e0 <js_parse_statement_or_decl+0xaca>
quickjs-nuttx/quickjs.c:26706
                DynBuf *bc = &s->cur_func->byte_code;
    800365f2:	06843a83          	ld	s5,104(s0)
quickjs-nuttx/quickjs.c:26695
            pos_body = s->cur_func->byte_code.size;
    800365f6:	000b0d1b          	sext.w	s10,s6
quickjs-nuttx/quickjs.c:26710
                dbuf_realloc(bc, bc->size + chunk_size);
    800365fa:	414b0b3b          	subw	s6,s6,s4
quickjs-nuttx/quickjs.c:26708
                int offset = bc->size - pos_cont;
    800365fe:	138ab583          	ld	a1,312(s5)
quickjs-nuttx/quickjs.c:26706
                DynBuf *bc = &s->cur_func->byte_code;
    80036602:	130a8c13          	addi	s8,s5,304
quickjs-nuttx/quickjs.c:26710
                dbuf_realloc(bc, bc->size + chunk_size);
    80036606:	8562                	mv	a0,s8
quickjs-nuttx/quickjs.c:26708
                int offset = bc->size - pos_cont;
    80036608:	41458dbb          	subw	s11,a1,s4
quickjs-nuttx/quickjs.c:26710
                dbuf_realloc(bc, bc->size + chunk_size);
    8003660c:	95da                	add	a1,a1,s6
    8003660e:	3a01b0ef          	jal	ra,800519ae <dbuf_realloc>
quickjs-nuttx/quickjs.c:26711
                dbuf_put(bc, bc->buf + pos_cont, chunk_size);
    80036612:	130ab583          	ld	a1,304(s5)
    80036616:	865a                	mv	a2,s6
    80036618:	8562                	mv	a0,s8
    8003661a:	95d2                	add	a1,a1,s4
    8003661c:	4341b0ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:26712
                memset(bc->buf + pos_cont, OP_nop, chunk_size);
    80036620:	130ab503          	ld	a0,304(s5)
    80036624:	865a                	mv	a2,s6
    80036626:	0b500593          	li	a1,181
    8003662a:	9552                	add	a0,a0,s4
    8003662c:	6162d0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:26714
                s->cur_func->last_opcode_pos = bc->size - 5;
    80036630:	138ab783          	ld	a5,312(s5)
    80036634:	7438                	ld	a4,104(s0)
quickjs-nuttx/quickjs.c:26717
                    LabelSlot *ls = &s->cur_func->label_slots[i];
    80036636:	46e1                	li	a3,24
quickjs-nuttx/quickjs.c:26714
                s->cur_func->last_opcode_pos = bc->size - 5;
    80036638:	37ed                	addiw	a5,a5,-5
    8003663a:	16f72023          	sw	a5,352(a4)
quickjs-nuttx/quickjs.c:26716 (discriminator 1)
                for (i = label_cont; i < s->cur_func->label_count; i++) {
    8003663e:	743c                	ld	a5,104(s0)
    80036640:	17c7a703          	lw	a4,380(a5)
    80036644:	06e9cf63          	blt	s3,a4,800366c2 <js_parse_statement_or_decl+0xaac>
quickjs-nuttx/quickjs.c:26725 (discriminator 3)
            emit_label(s, label_break);
    80036648:	85e6                	mv	a1,s9
    8003664a:	8522                	mv	a0,s0
    8003664c:	c49d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26727 (discriminator 3)
            pop_break_entry(s->cur_func);
    80036650:	b5ad                	j	800364ba <js_parse_statement_or_decl+0x8a4>
quickjs-nuttx/quickjs.c:26638
                if (tok == TOK_VAR || tok == TOK_LET || tok == TOK_CONST) {
    80036652:	fb300793          	li	a5,-77
    80036656:	eaf900e3          	beq	s2,a5,800364f6 <js_parse_statement_or_decl+0x8e0>
quickjs-nuttx/quickjs.c:26638 (discriminator 1)
    8003665a:	fd300793          	li	a5,-45
    8003665e:	e8f90ce3          	beq	s2,a5,800364f6 <js_parse_statement_or_decl+0x8e0>
quickjs-nuttx/quickjs.c:26638 (discriminator 2)
    80036662:	fcb00793          	li	a5,-53
    80036666:	e8f908e3          	beq	s2,a5,800364f6 <js_parse_statement_or_decl+0x8e0>
quickjs-nuttx/quickjs.c:26644
                    if (js_parse_expr2(s, FALSE))
    8003666a:	4581                	li	a1,0
    8003666c:	8522                	mv	a0,s0
    8003666e:	e54fe0ef          	jal	ra,80034cc2 <js_parse_expr2>
    80036672:	e6051463          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26646
                    emit_op(s, OP_drop);
    80036676:	45b9                	li	a1,14
    80036678:	8522                	mv	a0,s0
    8003667a:	a7dd20ef          	jal	ra,800090f6 <emit_op>
    8003667e:	bd49                	j	80036510 <js_parse_statement_or_decl+0x8fa>
quickjs-nuttx/quickjs.c:26657
            label_body = new_label(s);
    80036680:	8956                	mv	s2,s5
    80036682:	bf11                	j	80036596 <js_parse_statement_or_decl+0x980>
quickjs-nuttx/quickjs.c:26682
                emit_goto(s, OP_goto, label_body);
    80036684:	8656                	mv	a2,s5
    80036686:	06c00593          	li	a1,108
    8003668a:	8522                	mv	a0,s0
    8003668c:	8e9e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26684
                pos_cont = s->cur_func->byte_code.size;
    80036690:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26685
                emit_label(s, label_cont);
    80036692:	85ce                	mv	a1,s3
    80036694:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26684
                pos_cont = s->cur_func->byte_code.size;
    80036696:	1387aa03          	lw	s4,312(a5)
quickjs-nuttx/quickjs.c:26685
                emit_label(s, label_cont);
    8003669a:	bfbd20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26686
                if (js_parse_expr(s))
    8003669e:	8522                	mv	a0,s0
    800366a0:	e7cfe0ef          	jal	ra,80034d1c <js_parse_expr>
    800366a4:	e2051b63          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26688
                emit_op(s, OP_drop);
    800366a8:	45b9                	li	a1,14
    800366aa:	8522                	mv	a0,s0
    800366ac:	a4bd20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26689
                if (label_test != label_body)
    800366b0:	f15902e3          	beq	s2,s5,800365b4 <js_parse_statement_or_decl+0x99e>
quickjs-nuttx/quickjs.c:26690
                    emit_goto(s, OP_goto, label_test);
    800366b4:	864a                	mv	a2,s2
    800366b6:	06c00593          	li	a1,108
    800366ba:	8522                	mv	a0,s0
    800366bc:	8b9e60ef          	jal	ra,8001cf74 <emit_goto>
    800366c0:	bdd5                	j	800365b4 <js_parse_statement_or_decl+0x99e>
quickjs-nuttx/quickjs.c:26717
                    LabelSlot *ls = &s->cur_func->label_slots[i];
    800366c2:	02d98733          	mul	a4,s3,a3
    800366c6:	1707b783          	ld	a5,368(a5)
    800366ca:	973e                	add	a4,a4,a5
quickjs-nuttx/quickjs.c:26718
                    if (ls->pos >= pos_cont && ls->pos < pos_body)
    800366cc:	435c                	lw	a5,4(a4)
    800366ce:	0147c763          	blt	a5,s4,800366dc <js_parse_statement_or_decl+0xac6>
quickjs-nuttx/quickjs.c:26718 (discriminator 1)
    800366d2:	01a7d563          	bge	a5,s10,800366dc <js_parse_statement_or_decl+0xac6>
quickjs-nuttx/quickjs.c:26719
                        ls->pos += offset;
    800366d6:	01b787bb          	addw	a5,a5,s11
    800366da:	c35c                	sw	a5,4(a4)
quickjs-nuttx/quickjs.c:26716 (discriminator 2)
                for (i = label_cont; i < s->cur_func->label_count; i++) {
    800366dc:	2985                	addiw	s3,s3,1
    800366de:	b785                	j	8003663e <js_parse_statement_or_decl+0xa28>
quickjs-nuttx/quickjs.c:26722
                emit_goto(s, OP_goto, label_cont);
    800366e0:	864e                	mv	a2,s3
    800366e2:	06c00593          	li	a1,108
    800366e6:	8522                	mv	a0,s0
    800366e8:	88de60ef          	jal	ra,8001cf74 <emit_goto>
    800366ec:	bfb1                	j	80036648 <js_parse_statement_or_decl+0xa32>
quickjs-nuttx/quickjs.c:26737
            if (next_token(s))
    800366ee:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26734
            int is_cont = s->token.val - TOK_BREAK;
    800366f0:	0429899b          	addiw	s3,s3,66
quickjs-nuttx/quickjs.c:26737
            if (next_token(s))
    800366f4:	e93f70ef          	jal	ra,8002e586 <next_token>
    800366f8:	de051163          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26739
            if (!s->got_lf && s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved)
    800366fc:	04842a03          	lw	s4,72(s0)
    80036700:	040a1663          	bnez	s4,8003674c <js_parse_statement_or_decl+0xb36>
quickjs-nuttx/quickjs.c:26739 (discriminator 1)
    80036704:	4c18                	lw	a4,24(s0)
    80036706:	f8300793          	li	a5,-125
    8003670a:	00f71663          	bne	a4,a5,80036716 <js_parse_statement_or_decl+0xb00>
quickjs-nuttx/quickjs.c:26739 (discriminator 2)
    8003670e:	581c                	lw	a5,48(s0)
    80036710:	e399                	bnez	a5,80036716 <js_parse_statement_or_decl+0xb00>
quickjs-nuttx/quickjs.c:26740
                label = s->token.u.ident.atom;
    80036712:	02842a03          	lw	s4,40(s0)
emit_break():
quickjs-nuttx/quickjs.c:25826
    scope_level = s->cur_func->scope_level;
    80036716:	743c                	ld	a5,104(s0)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26743
            if (emit_break(s, label, is_cont))
    80036718:	000a0a9b          	sext.w	s5,s4
emit_break():
quickjs-nuttx/quickjs.c:25838
        if (!is_cont &&
    8003671c:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:25826
    scope_level = s->cur_func->scope_level;
    8003671e:	0e07ac83          	lw	s9,224(a5)
quickjs-nuttx/quickjs.c:25827
    top = s->cur_func->top_break;
    80036722:	1807b903          	ld	s2,384(a5)
quickjs-nuttx/quickjs.c:25828
    while (top != NULL) {
    80036726:	02091563          	bnez	s2,80036750 <js_parse_statement_or_decl+0xb3a>
quickjs-nuttx/quickjs.c:25859
    if (name == JS_ATOM_NULL) {
    8003672a:	0c0a9063          	bnez	s5,800367ea <js_parse_statement_or_decl+0xbd4>
quickjs-nuttx/quickjs.c:25861
            return js_parse_error(s, "continue must be inside loop");
    8003672e:	00036597          	auipc	a1,0x36
    80036732:	3da58593          	addi	a1,a1,986 # 8006cb08 <qjsc_repl+0x7558>
quickjs-nuttx/quickjs.c:25860
        if (is_cont)
    80036736:	00099663          	bnez	s3,80036742 <js_parse_statement_or_decl+0xb2c>
quickjs-nuttx/quickjs.c:25863
            return js_parse_error(s, "break must be inside loop or switch");
    8003673a:	00036597          	auipc	a1,0x36
    8003673e:	3ee58593          	addi	a1,a1,1006 # 8006cb28 <qjsc_repl+0x7578>
    80036742:	8522                	mv	a0,s0
    80036744:	d2ef70ef          	jal	ra,8002dc72 <js_parse_error>
    80036748:	6f40006f          	j	80036e3c <js_parse_statement_or_decl+0x1226>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26742
                label = JS_ATOM_NULL;
    8003674c:	4a01                	li	s4,0
    8003674e:	b7e1                	j	80036716 <js_parse_statement_or_decl+0xb00>
emit_break():
quickjs-nuttx/quickjs.c:25829
        close_scopes(s, scope_level, top->scope_level);
    80036750:	01c92603          	lw	a2,28(s2)
    80036754:	85e6                	mv	a1,s9
    80036756:	8522                	mv	a0,s0
    80036758:	af3d20ef          	jal	ra,8000924a <close_scopes>
quickjs-nuttx/quickjs.c:25830
        scope_level = top->scope_level;
    8003675c:	01c92c83          	lw	s9,28(s2)
quickjs-nuttx/quickjs.c:25831
        if (is_cont &&
    80036760:	02098863          	beqz	s3,80036790 <js_parse_statement_or_decl+0xb7a>
quickjs-nuttx/quickjs.c:25832
            top->label_cont != -1 &&
    80036764:	01092603          	lw	a2,16(s2)
quickjs-nuttx/quickjs.c:25838
        if (!is_cont &&
    80036768:	03860763          	beq	a2,s8,80036796 <js_parse_statement_or_decl+0xb80>
quickjs-nuttx/quickjs.c:25839
            top->label_break != -1 &&
    8003676c:	000a8663          	beqz	s5,80036778 <js_parse_statement_or_decl+0xb62>
quickjs-nuttx/quickjs.c:25840
            (name == JS_ATOM_NULL || top->label_name == name)) {
    80036770:	00892783          	lw	a5,8(s2)
    80036774:	03579163          	bne	a5,s5,80036796 <js_parse_statement_or_decl+0xb80>
quickjs-nuttx/quickjs.c:25841
            emit_goto(s, OP_goto, top->label_break);
    80036778:	06c00593          	li	a1,108
    8003677c:	8522                	mv	a0,s0
    8003677e:	ff6e60ef          	jal	ra,8001cf74 <emit_goto>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26745
            if (label != JS_ATOM_NULL) {
    80036782:	e60a0563          	beqz	s4,80035dec <js_parse_statement_or_decl+0x1d6>
quickjs-nuttx/quickjs.c:27090
        if (next_token(s))
    80036786:	8522                	mv	a0,s0
    80036788:	dfff70ef          	jal	ra,8002e586 <next_token>
    8003678c:	6b00006f          	j	80036e3c <js_parse_statement_or_decl+0x1226>
emit_break():
quickjs-nuttx/quickjs.c:25839
            top->label_break != -1 &&
    80036790:	00c92603          	lw	a2,12(s2)
    80036794:	bfd1                	j	80036768 <js_parse_statement_or_decl+0xb52>
quickjs-nuttx/quickjs.c:25845
        if (top->has_iterator) {
    80036796:	02092b03          	lw	s6,32(s2)
    8003679a:	000b0863          	beqz	s6,800367aa <js_parse_statement_or_decl+0xb94>
quickjs-nuttx/quickjs.c:25846
            emit_op(s, OP_iterator_close);
    8003679e:	08500593          	li	a1,133
    800367a2:	8522                	mv	a0,s0
    800367a4:	953d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25847
            i += 3;
    800367a8:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:25849
        for(; i < top->drop_count; i++)
    800367aa:	01492783          	lw	a5,20(s2)
    800367ae:	02fb4863          	blt	s6,a5,800367de <js_parse_statement_or_decl+0xbc8>
quickjs-nuttx/quickjs.c:25851
        if (top->label_finally != -1) {
    800367b2:	01892783          	lw	a5,24(s2)
    800367b6:	03878163          	beq	a5,s8,800367d8 <js_parse_statement_or_decl+0xbc2>
quickjs-nuttx/quickjs.c:25853
            emit_op(s, OP_undefined);
    800367ba:	4599                	li	a1,6
    800367bc:	8522                	mv	a0,s0
    800367be:	939d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25854
            emit_goto(s, OP_gosub, top->label_finally);
    800367c2:	01892603          	lw	a2,24(s2)
    800367c6:	06e00593          	li	a1,110
    800367ca:	8522                	mv	a0,s0
    800367cc:	fa8e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25855
            emit_op(s, OP_drop);
    800367d0:	45b9                	li	a1,14
    800367d2:	8522                	mv	a0,s0
    800367d4:	923d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25857
        top = top->prev;
    800367d8:	00093903          	ld	s2,0(s2)
    800367dc:	b7a9                	j	80036726 <js_parse_statement_or_decl+0xb10>
quickjs-nuttx/quickjs.c:25850
            emit_op(s, OP_drop);
    800367de:	45b9                	li	a1,14
    800367e0:	8522                	mv	a0,s0
    800367e2:	915d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25849
        for(; i < top->drop_count; i++)
    800367e6:	2b05                	addiw	s6,s6,1
    800367e8:	b7c9                	j	800367aa <js_parse_statement_or_decl+0xb94>
quickjs-nuttx/quickjs.c:25865
        return js_parse_error(s, "break/continue label not found");
    800367ea:	00036597          	auipc	a1,0x36
    800367ee:	36658593          	addi	a1,a1,870 # 8006cb50 <qjsc_repl+0x75a0>
    800367f2:	8522                	mv	a0,s0
    800367f4:	c7ef70ef          	jal	ra,8002dc72 <js_parse_error>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26743
            if (emit_break(s, label, is_cont))
    800367f8:	d549                	beqz	a0,80036782 <js_parse_statement_or_decl+0xb6c>
    800367fa:	ce0ff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26759
            if (next_token(s))
    800367fe:	8522                	mv	a0,s0
    80036800:	d87f70ef          	jal	ra,8002e586 <next_token>
    80036804:	cc051b63          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26762
            set_eval_ret_undefined(s);
    80036808:	8522                	mv	a0,s0
    8003680a:	d18d30ef          	jal	ra,80009d22 <set_eval_ret_undefined>
quickjs-nuttx/quickjs.c:26763
            if (js_parse_expr_paren(s))
    8003680e:	8522                	mv	a0,s0
    80036810:	f8efe0ef          	jal	ra,80034f9e <js_parse_expr_paren>
    80036814:	cc051363          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26766
            push_scope(s);
    80036818:	8522                	mv	a0,s0
    8003681a:	fafe60ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:26767
            label_break = new_label(s);
    8003681e:	8522                	mv	a0,s0
    80036820:	f4ce60ef          	jal	ra,8001cf6c <new_label>
quickjs-nuttx/quickjs.c:26768
            push_break_entry(s->cur_func, &break_entry,
    80036824:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26767
            label_break = new_label(s);
    80036826:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:26771
            if (js_parse_expect(s, '{'))
    80036828:	07b00593          	li	a1,123
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    8003682c:	1807b703          	ld	a4,384(a5)
    80036830:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80036832:	0898                	addi	a4,sp,80
    80036834:	18e7b023          	sd	a4,384(a5)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036838:	577d                	li	a4,-1
    8003683a:	01f75693          	srli	a3,a4,0x1f
quickjs-nuttx/quickjs.c:25806
    be->label_break = label_break;
    8003683e:	ceaa                	sw	a0,92(sp)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036840:	cca6                	sw	s1,88(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036842:	f0b6                	sd	a3,96(sp)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80036844:	d4ba                	sw	a4,104(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036846:	0e07a783          	lw	a5,224(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26771
            if (js_parse_expect(s, '{'))
    8003684a:	8522                	mv	a0,s0
push_break_entry():
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    8003684c:	d882                	sw	zero,112(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    8003684e:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26771
            if (js_parse_expect(s, '{'))
    80036850:	f62f80ef          	jal	ra,8002efb2 <js_parse_expect>
    80036854:	c8051363          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26774
            default_label_pos = -1;
    80036858:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:26775
            label_case = -1;
    8003685a:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:26776
            while (s->token.val != '}') {
    8003685c:	07d00c13          	li	s8,125
quickjs-nuttx/quickjs.c:26777
                if (s->token.val == TOK_CASE) {
    80036860:	fc100b13          	li	s6,-63
quickjs-nuttx/quickjs.c:26803
                } else if (s->token.val == TOK_DEFAULT) {
    80036864:	fc200c93          	li	s9,-62
quickjs-nuttx/quickjs.c:26776
            while (s->token.val != '}') {
    80036868:	4c1c                	lw	a5,24(s0)
    8003686a:	05879c63          	bne	a5,s8,800368c2 <js_parse_statement_or_decl+0xcac>
quickjs-nuttx/quickjs.c:26834
            if (js_parse_expect(s, '}'))
    8003686e:	07d00593          	li	a1,125
    80036872:	8522                	mv	a0,s0
    80036874:	f3ef80ef          	jal	ra,8002efb2 <js_parse_expect>
    80036878:	c6051163          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26836
            if (default_label_pos >= 0) {
    8003687c:	1409c163          	bltz	s3,800369be <js_parse_statement_or_decl+0xda8>
quickjs-nuttx/quickjs.c:26838
                put_u32(s->cur_func->byte_code.buf + default_label_pos,
    80036880:	743c                	ld	a5,104(s0)
put_u32():
quickjs-nuttx/cutils.h:180
    80036882:	0089571b          	srliw	a4,s2,0x8
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26840
                s->cur_func->label_slots[label_case].pos = default_label_pos + 4;
    80036886:	4561                	li	a0,24
put_u32():
quickjs-nuttx/cutils.h:180
    80036888:	1307b783          	ld	a5,304(a5)
    8003688c:	97ce                	add	a5,a5,s3
    8003688e:	00e780a3          	sb	a4,1(a5)
    80036892:	0109571b          	srliw	a4,s2,0x10
    80036896:	01278023          	sb	s2,0(a5)
    8003689a:	00e78123          	sb	a4,2(a5)
    8003689e:	0189571b          	srliw	a4,s2,0x18
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26840
    800368a2:	02a90933          	mul	s2,s2,a0
put_u32():
quickjs-nuttx/cutils.h:180
    800368a6:	00e781a3          	sb	a4,3(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26840
    800368aa:	743c                	ld	a5,104(s0)
    800368ac:	2991                	addiw	s3,s3,4
    800368ae:	1707b783          	ld	a5,368(a5)
    800368b2:	993e                	add	s2,s2,a5
    800368b4:	01392223          	sw	s3,4(s2)
quickjs-nuttx/quickjs.c:26844
            emit_label(s, label_break);
    800368b8:	85d6                	mv	a1,s5
    800368ba:	8522                	mv	a0,s0
    800368bc:	9d9d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26845
            emit_op(s, OP_drop); /* drop the switch expression */
    800368c0:	becd                	j	800364b2 <js_parse_statement_or_decl+0x89c>
quickjs-nuttx/quickjs.c:26777
                if (s->token.val == TOK_CASE) {
    800368c2:	09679163          	bne	a5,s6,80036944 <js_parse_statement_or_decl+0xd2e>
quickjs-nuttx/quickjs.c:26778
                    label1 = -1;
    800368c6:	5a7d                	li	s4,-1
quickjs-nuttx/quickjs.c:26779
                    if (label_case >= 0) {
    800368c8:	00094963          	bltz	s2,800368da <js_parse_statement_or_decl+0xcc4>
quickjs-nuttx/quickjs.c:26781
                        label1 = emit_goto(s, OP_goto, -1);
    800368cc:	567d                	li	a2,-1
    800368ce:	06c00593          	li	a1,108
    800368d2:	8522                	mv	a0,s0
    800368d4:	ea0e60ef          	jal	ra,8001cf74 <emit_goto>
    800368d8:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:26783
                    emit_label(s, label_case);
    800368da:	85ca                	mv	a1,s2
    800368dc:	8522                	mv	a0,s0
    800368de:	9b7d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26787
                        if (next_token(s))
    800368e2:	8522                	mv	a0,s0
    800368e4:	ca3f70ef          	jal	ra,8002e586 <next_token>
    800368e8:	be051963          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26789
                        emit_op(s, OP_dup);
    800368ec:	8522                	mv	a0,s0
    800368ee:	45c5                	li	a1,17
    800368f0:	807d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26790
                        if (js_parse_expr(s))
    800368f4:	8522                	mv	a0,s0
    800368f6:	c26fe0ef          	jal	ra,80034d1c <js_parse_expr>
    800368fa:	be051063          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26792
                        if (js_parse_expect(s, ':'))
    800368fe:	03a00593          	li	a1,58
    80036902:	8522                	mv	a0,s0
    80036904:	eaef80ef          	jal	ra,8002efb2 <js_parse_expect>
    80036908:	bc051963          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26794
                        emit_op(s, OP_strict_eq);
    8003690c:	0ac00593          	li	a1,172
    80036910:	8522                	mv	a0,s0
    80036912:	fe4d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26795
                        if (s->token.val == TOK_CASE) {
    80036916:	4c1c                	lw	a5,24(s0)
    80036918:	01679a63          	bne	a5,s6,8003692c <js_parse_statement_or_decl+0xd16>
quickjs-nuttx/quickjs.c:26796
                            label1 = emit_goto(s, OP_if_true, label1);
    8003691c:	8652                	mv	a2,s4
    8003691e:	06b00593          	li	a1,107
    80036922:	8522                	mv	a0,s0
    80036924:	e50e60ef          	jal	ra,8001cf74 <emit_goto>
    80036928:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:26787
                        if (next_token(s))
    8003692a:	bf65                	j	800368e2 <js_parse_statement_or_decl+0xccc>
quickjs-nuttx/quickjs.c:26798
                            label_case = emit_goto(s, OP_if_false, -1);
    8003692c:	567d                	li	a2,-1
    8003692e:	06a00593          	li	a1,106
    80036932:	8522                	mv	a0,s0
    80036934:	e40e60ef          	jal	ra,8001cf74 <emit_goto>
    80036938:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:26799
                            emit_label(s, label1);
    8003693a:	85d2                	mv	a1,s4
    8003693c:	8522                	mv	a0,s0
    8003693e:	957d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26800
                            break;
    80036942:	b71d                	j	80036868 <js_parse_statement_or_decl+0xc52>
quickjs-nuttx/quickjs.c:26803
                } else if (s->token.val == TOK_DEFAULT) {
    80036944:	05979d63          	bne	a5,s9,8003699e <js_parse_statement_or_decl+0xd88>
quickjs-nuttx/quickjs.c:26804
                    if (next_token(s))
    80036948:	8522                	mv	a0,s0
    8003694a:	c3df70ef          	jal	ra,8002e586 <next_token>
    8003694e:	b8051663          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26806
                    if (js_parse_expect(s, ':'))
    80036952:	03a00593          	li	a1,58
    80036956:	8522                	mv	a0,s0
    80036958:	e5af80ef          	jal	ra,8002efb2 <js_parse_expect>
    8003695c:	b6051f63          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26808
                    if (default_label_pos >= 0) {
    80036960:	0009c863          	bltz	s3,80036970 <js_parse_statement_or_decl+0xd5a>
quickjs-nuttx/quickjs.c:26809
                        js_parse_error(s, "duplicate default");
    80036964:	00036597          	auipc	a1,0x36
    80036968:	20c58593          	addi	a1,a1,524 # 8006cb70 <qjsc_repl+0x75c0>
    8003696c:	b8aff06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26812
                    if (label_case < 0) {
    80036970:	00095963          	bgez	s2,80036982 <js_parse_statement_or_decl+0xd6c>
quickjs-nuttx/quickjs.c:26814
                        label_case = emit_goto(s, OP_goto, -1);
    80036974:	567d                	li	a2,-1
    80036976:	06c00593          	li	a1,108
    8003697a:	8522                	mv	a0,s0
    8003697c:	df8e60ef          	jal	ra,8001cf74 <emit_goto>
    80036980:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:26821
                    emit_op(s, OP_label);
    80036982:	0b800593          	li	a1,184
    80036986:	8522                	mv	a0,s0
    80036988:	f6ed20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26822
                    emit_u32(s, 0);
    8003698c:	4581                	li	a1,0
    8003698e:	8522                	mv	a0,s0
    80036990:	8fdd20ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:26823
                    default_label_pos = s->cur_func->byte_code.size - 4;
    80036994:	743c                	ld	a5,104(s0)
    80036996:	1387b983          	ld	s3,312(a5)
    8003699a:	39f1                	addiw	s3,s3,-4
    8003699c:	b5f1                	j	80036868 <js_parse_statement_or_decl+0xc52>
quickjs-nuttx/quickjs.c:26825
                    if (label_case < 0) {
    8003699e:	00095863          	bgez	s2,800369ae <js_parse_statement_or_decl+0xd98>
quickjs-nuttx/quickjs.c:26827
                        js_parse_error(s, "invalid switch statement");
    800369a2:	00036597          	auipc	a1,0x36
    800369a6:	1e658593          	addi	a1,a1,486 # 8006cb88 <qjsc_repl+0x75d8>
    800369aa:	b4cff06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26830
                    if (js_parse_statement_or_decl(s, DECL_MASK_ALL))
    800369ae:	459d                	li	a1,7
    800369b0:	8522                	mv	a0,s0
    800369b2:	a64ff0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
    800369b6:	ea0509e3          	beqz	a0,80036868 <js_parse_statement_or_decl+0xc52>
    800369ba:	b20ff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26842
                emit_label(s, label_case);
    800369be:	85ca                	mv	a1,s2
    800369c0:	8522                	mv	a0,s0
    800369c2:	8d3d20ef          	jal	ra,80009294 <emit_label>
    800369c6:	bdcd                	j	800368b8 <js_parse_statement_or_decl+0xca2>
quickjs-nuttx/quickjs.c:26857
            set_eval_ret_undefined(s);
    800369c8:	8522                	mv	a0,s0
    800369ca:	b58d30ef          	jal	ra,80009d22 <set_eval_ret_undefined>
quickjs-nuttx/quickjs.c:26858
            if (next_token(s))
    800369ce:	8522                	mv	a0,s0
    800369d0:	bb7f70ef          	jal	ra,8002e586 <next_token>
    800369d4:	b0051363          	bnez	a0,80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26860
            label_catch = new_label(s);
    800369d8:	8522                	mv	a0,s0
    800369da:	d92e60ef          	jal	ra,8001cf6c <new_label>
    800369de:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:26861
            label_catch2 = new_label(s);
    800369e0:	8522                	mv	a0,s0
    800369e2:	d8ae60ef          	jal	ra,8001cf6c <new_label>
    800369e6:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:26862
            label_finally = new_label(s);
    800369e8:	8522                	mv	a0,s0
    800369ea:	d82e60ef          	jal	ra,8001cf6c <new_label>
    800369ee:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:26863
            label_end = new_label(s);
    800369f0:	8522                	mv	a0,s0
    800369f2:	d7ae60ef          	jal	ra,8001cf6c <new_label>
    800369f6:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:26865
            emit_goto(s, OP_catch, label_catch);
    800369f8:	8652                	mv	a2,s4
    800369fa:	06d00593          	li	a1,109
    800369fe:	8522                	mv	a0,s0
    80036a00:	d74e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26867
            push_break_entry(s->cur_func, &block_env,
    80036a04:	7438                	ld	a4,104(s0)
push_break_entry():
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80036a06:	05010b13          	addi	s6,sp,80
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26871
            if (js_parse_block(s))
    80036a0a:	8522                	mv	a0,s0
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80036a0c:	18073783          	ld	a5,384(a4)
    80036a10:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036a12:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80036a14:	19673023          	sd	s6,384(a4)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036a18:	02079693          	slli	a3,a5,0x20
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036a1c:	83fd                	srli	a5,a5,0x1f
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036a1e:	ecb6                	sd	a3,88(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036a20:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036a22:	0e072783          	lw	a5,224(a4)
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    80036a26:	d882                	sw	zero,112(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26869
            block_env.label_finally = label_finally;
    80036a28:	d4ca                	sw	s2,104(sp)
push_break_entry():
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036a2a:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26871
            if (js_parse_block(s))
    80036a2c:	2eb000ef          	jal	ra,80037516 <js_parse_block>
    80036a30:	c119                	beqz	a0,80036a36 <js_parse_statement_or_decl+0xe20>
    80036a32:	aa8ff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26874
            pop_break_entry(s->cur_func);
    80036a36:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26876
            if (js_is_live_code(s)) {
    80036a38:	8522                	mv	a0,s0
pop_break_entry():
quickjs-nuttx/quickjs.c:25818
    fd->top_break = be->prev;
    80036a3a:	1807b703          	ld	a4,384(a5)
    80036a3e:	6318                	ld	a4,0(a4)
    80036a40:	18e7b023          	sd	a4,384(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26876
            if (js_is_live_code(s)) {
    80036a44:	cfcd10ef          	jal	ra,80007f40 <js_is_live_code>
    80036a48:	c90d                	beqz	a0,80036a7a <js_parse_statement_or_decl+0xe64>
quickjs-nuttx/quickjs.c:26878
                emit_op(s, OP_drop);
    80036a4a:	45b9                	li	a1,14
    80036a4c:	8522                	mv	a0,s0
    80036a4e:	ea8d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26880
                emit_op(s, OP_undefined);
    80036a52:	4599                	li	a1,6
    80036a54:	8522                	mv	a0,s0
    80036a56:	ea0d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26881
                emit_goto(s, OP_gosub, label_finally);
    80036a5a:	864a                	mv	a2,s2
    80036a5c:	06e00593          	li	a1,110
    80036a60:	8522                	mv	a0,s0
    80036a62:	d12e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26882
                emit_op(s, OP_drop);
    80036a66:	45b9                	li	a1,14
    80036a68:	8522                	mv	a0,s0
    80036a6a:	e8cd20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26884
                emit_goto(s, OP_goto, label_end);
    80036a6e:	864e                	mv	a2,s3
    80036a70:	06c00593          	li	a1,108
    80036a74:	8522                	mv	a0,s0
    80036a76:	cfee60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26887
            if (s->token.val == TOK_CATCH) {
    80036a7a:	4c1c                	lw	a5,24(s0)
    80036a7c:	fc500713          	li	a4,-59
    80036a80:	28e79363          	bne	a5,a4,80036d06 <js_parse_statement_or_decl+0x10f0>
quickjs-nuttx/quickjs.c:26888
                if (next_token(s))
    80036a84:	8522                	mv	a0,s0
    80036a86:	b01f70ef          	jal	ra,8002e586 <next_token>
    80036a8a:	c119                	beqz	a0,80036a90 <js_parse_statement_or_decl+0xe7a>
    80036a8c:	a4eff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26891
                push_scope(s);  /* catch variable */
    80036a90:	8522                	mv	a0,s0
    80036a92:	d37e60ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:26892
                emit_label(s, label_catch);
    80036a96:	85d2                	mv	a1,s4
    80036a98:	8522                	mv	a0,s0
    80036a9a:	ffad20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26894
                if (s->token.val == '{') {
    80036a9e:	4c18                	lw	a4,24(s0)
    80036aa0:	07b00793          	li	a5,123
    80036aa4:	1af71a63          	bne	a4,a5,80036c58 <js_parse_statement_or_decl+0x1042>
quickjs-nuttx/quickjs.c:26896
                    emit_op(s, OP_drop);    /* pop the exception object */
    80036aa8:	45b9                	li	a1,14
    80036aaa:	8522                	mv	a0,s0
    80036aac:	e4ad20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26925
                emit_goto(s, OP_catch, label_catch2);
    80036ab0:	8656                	mv	a2,s5
    80036ab2:	06d00593          	li	a1,109
    80036ab6:	8522                	mv	a0,s0
    80036ab8:	cbce60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26927
                push_scope(s);  /* catch block */
    80036abc:	8522                	mv	a0,s0
    80036abe:	d0be60ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:26928
                push_break_entry(s->cur_func, &block_env, JS_ATOM_NULL,
    80036ac2:	7438                	ld	a4,104(s0)
quickjs-nuttx/quickjs.c:26932
                if (js_parse_block(s))
    80036ac4:	8522                	mv	a0,s0
push_break_entry():
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80036ac6:	18073783          	ld	a5,384(a4)
    80036aca:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036acc:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80036ace:	19673023          	sd	s6,384(a4)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036ad2:	02079693          	slli	a3,a5,0x20
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036ad6:	83fd                	srli	a5,a5,0x1f
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036ad8:	ecb6                	sd	a3,88(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036ada:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036adc:	0e072783          	lw	a5,224(a4)
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    80036ae0:	d882                	sw	zero,112(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26930
                block_env.label_finally = label_finally;
    80036ae2:	d4ca                	sw	s2,104(sp)
push_break_entry():
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036ae4:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26932
                if (js_parse_block(s))
    80036ae6:	231000ef          	jal	ra,80037516 <js_parse_block>
    80036aea:	c119                	beqz	a0,80036af0 <js_parse_statement_or_decl+0xeda>
    80036aec:	9eeff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26935
                pop_break_entry(s->cur_func);
    80036af0:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:26936
                pop_scope(s);  /* catch block */
    80036af2:	8522                	mv	a0,s0
pop_break_entry():
quickjs-nuttx/quickjs.c:25818
    fd->top_break = be->prev;
    80036af4:	1807b703          	ld	a4,384(a5)
    80036af8:	6318                	ld	a4,0(a4)
    80036afa:	18e7b023          	sd	a4,384(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26936
                pop_scope(s);  /* catch block */
    80036afe:	ef4d20ef          	jal	ra,800091f2 <pop_scope>
quickjs-nuttx/quickjs.c:26937
                pop_scope(s);  /* catch variable */
    80036b02:	8522                	mv	a0,s0
    80036b04:	eeed20ef          	jal	ra,800091f2 <pop_scope>
quickjs-nuttx/quickjs.c:26939
                if (js_is_live_code(s)) {
    80036b08:	8522                	mv	a0,s0
    80036b0a:	c36d10ef          	jal	ra,80007f40 <js_is_live_code>
    80036b0e:	c90d                	beqz	a0,80036b40 <js_parse_statement_or_decl+0xf2a>
quickjs-nuttx/quickjs.c:26941
                    emit_op(s, OP_drop);
    80036b10:	45b9                	li	a1,14
    80036b12:	8522                	mv	a0,s0
    80036b14:	de2d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26944
                    emit_op(s, OP_undefined);
    80036b18:	4599                	li	a1,6
    80036b1a:	8522                	mv	a0,s0
    80036b1c:	ddad20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26945
                    emit_goto(s, OP_gosub, label_finally);
    80036b20:	864a                	mv	a2,s2
    80036b22:	06e00593          	li	a1,110
    80036b26:	8522                	mv	a0,s0
    80036b28:	c4ce60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26946
                    emit_op(s, OP_drop);
    80036b2c:	45b9                	li	a1,14
    80036b2e:	8522                	mv	a0,s0
    80036b30:	dc6d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26947
                    emit_goto(s, OP_goto, label_end);
    80036b34:	864e                	mv	a2,s3
    80036b36:	06c00593          	li	a1,108
    80036b3a:	8522                	mv	a0,s0
    80036b3c:	c38e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26951
                emit_label(s, label_catch2);
    80036b40:	85d6                	mv	a1,s5
quickjs-nuttx/quickjs.c:26959
                emit_label(s, label_catch);
    80036b42:	8522                	mv	a0,s0
    80036b44:	f50d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26961
                emit_goto(s, OP_gosub, label_finally);
    80036b48:	864a                	mv	a2,s2
    80036b4a:	06e00593          	li	a1,110
    80036b4e:	8522                	mv	a0,s0
    80036b50:	c24e60ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:26962
                emit_op(s, OP_throw);
    80036b54:	02f00593          	li	a1,47
    80036b58:	8522                	mv	a0,s0
    80036b5a:	d9cd20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26967
            emit_label(s, label_finally);
    80036b5e:	85ca                	mv	a1,s2
    80036b60:	8522                	mv	a0,s0
    80036b62:	f32d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:26968
            if (s->token.val == TOK_FINALLY) {
    80036b66:	4c18                	lw	a4,24(s0)
    80036b68:	fc600793          	li	a5,-58
    80036b6c:	0cf71b63          	bne	a4,a5,80036c42 <js_parse_statement_or_decl+0x102c>
quickjs-nuttx/quickjs.c:26971
                if (next_token(s))
    80036b70:	8522                	mv	a0,s0
    80036b72:	a15f70ef          	jal	ra,8002e586 <next_token>
    80036b76:	892a                	mv	s2,a0
    80036b78:	c119                	beqz	a0,80036b7e <js_parse_statement_or_decl+0xf68>
    80036b7a:	960ff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26974
                push_break_entry(s->cur_func, &block_env, JS_ATOM_NULL,
    80036b7e:	7438                	ld	a4,104(s0)
push_break_entry():
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036b80:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:25803
    be->prev = fd->top_break;
    80036b82:	18073783          	ld	a5,384(a4)
    80036b86:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:25804
    fd->top_break = be;
    80036b88:	19673023          	sd	s6,384(a4)
quickjs-nuttx/quickjs.c:25805
    be->label_name = label_name;
    80036b8c:	02069793          	slli	a5,a3,0x20
    80036b90:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:25807
    be->label_cont = label_cont;
    80036b92:	478d                	li	a5,3
    80036b94:	1782                	slli	a5,a5,0x20
    80036b96:	17fd                	addi	a5,a5,-1
    80036b98:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:25809
    be->label_finally = -1;
    80036b9a:	d4b6                	sw	a3,104(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036b9c:	0e072783          	lw	a5,224(a4)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26977
                if (s->cur_func->eval_ret_idx >= 0) {
    80036ba0:	742c                	ld	a1,104(s0)
push_break_entry():
quickjs-nuttx/quickjs.c:25811
    be->has_iterator = FALSE;
    80036ba2:	d882                	sw	zero,112(sp)
quickjs-nuttx/quickjs.c:25810
    be->scope_level = fd->scope_level;
    80036ba4:	d6be                	sw	a5,108(sp)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:26977
                if (s->cur_func->eval_ret_idx >= 0) {
    80036ba6:	0c85a783          	lw	a5,200(a1)
    80036baa:	0407c563          	bltz	a5,80036bf4 <js_parse_statement_or_decl+0xfde>
quickjs-nuttx/quickjs.c:26981
                        add_var(s->ctx, s->cur_func, JS_ATOM__ret_);
    80036bae:	6008                	ld	a0,0(s0)
    80036bb0:	05200613          	li	a2,82
    80036bb4:	d71f20ef          	jal	ra,80029924 <add_var>
    80036bb8:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:26982
                    if (saved_eval_ret_idx < 0)
    80036bba:	00055463          	bgez	a0,80036bc2 <js_parse_statement_or_decl+0xfac>
    80036bbe:	91cff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26984
                    emit_op(s, OP_get_loc);
    80036bc2:	05800593          	li	a1,88
    80036bc6:	8522                	mv	a0,s0
    80036bc8:	d2ed20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26985
                    emit_u16(s, s->cur_func->eval_ret_idx);
    80036bcc:	743c                	ld	a5,104(s0)
    80036bce:	8522                	mv	a0,s0
    80036bd0:	0c87d583          	lhu	a1,200(a5)
    80036bd4:	bf0d20ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:26986
                    emit_op(s, OP_put_loc);
    80036bd8:	05900593          	li	a1,89
    80036bdc:	8522                	mv	a0,s0
    80036bde:	d18d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26987
                    emit_u16(s, saved_eval_ret_idx);
    80036be2:	03091593          	slli	a1,s2,0x30
    80036be6:	8522                	mv	a0,s0
    80036be8:	91c1                	srli	a1,a1,0x30
    80036bea:	bdad20ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:26988
                    set_eval_ret_undefined(s);
    80036bee:	8522                	mv	a0,s0
    80036bf0:	932d30ef          	jal	ra,80009d22 <set_eval_ret_undefined>
quickjs-nuttx/quickjs.c:26991
                if (js_parse_block(s))
    80036bf4:	8522                	mv	a0,s0
    80036bf6:	121000ef          	jal	ra,80037516 <js_parse_block>
    80036bfa:	c119                	beqz	a0,80036c00 <js_parse_statement_or_decl+0xfea>
    80036bfc:	8deff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26994
                if (s->cur_func->eval_ret_idx >= 0) {
    80036c00:	743c                	ld	a5,104(s0)
    80036c02:	0c87a783          	lw	a5,200(a5)
    80036c06:	0207c863          	bltz	a5,80036c36 <js_parse_statement_or_decl+0x1020>
quickjs-nuttx/quickjs.c:26995
                    emit_op(s, OP_get_loc);
    80036c0a:	05800593          	li	a1,88
    80036c0e:	8522                	mv	a0,s0
    80036c10:	ce6d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26996
                    emit_u16(s, saved_eval_ret_idx);
    80036c14:	03091593          	slli	a1,s2,0x30
    80036c18:	91c1                	srli	a1,a1,0x30
    80036c1a:	8522                	mv	a0,s0
    80036c1c:	ba8d20ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:26997
                    emit_op(s, OP_put_loc);
    80036c20:	05900593          	li	a1,89
    80036c24:	8522                	mv	a0,s0
    80036c26:	cd0d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26998
                    emit_u16(s, s->cur_func->eval_ret_idx);
    80036c2a:	743c                	ld	a5,104(s0)
    80036c2c:	8522                	mv	a0,s0
    80036c2e:	0c87d583          	lhu	a1,200(a5)
    80036c32:	b92d20ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:27000
                pop_break_entry(s->cur_func);
    80036c36:	743c                	ld	a5,104(s0)
pop_break_entry():
quickjs-nuttx/quickjs.c:25818
    fd->top_break = be->prev;
    80036c38:	1807b703          	ld	a4,384(a5)
    80036c3c:	6318                	ld	a4,0(a4)
    80036c3e:	18e7b023          	sd	a4,384(a5)
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:27002
            emit_op(s, OP_ret);
    80036c42:	8522                	mv	a0,s0
    80036c44:	06f00593          	li	a1,111
    80036c48:	caed20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:27003
            emit_label(s, label_end);
    80036c4c:	85ce                	mv	a1,s3
    80036c4e:	8522                	mv	a0,s0
    80036c50:	e44d20ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:27005
        break;
    80036c54:	aeeff06f          	j	80035f42 <js_parse_statement_or_decl+0x32c>
quickjs-nuttx/quickjs.c:26898
                    if (js_parse_expect(s, '('))
    80036c58:	02800593          	li	a1,40
    80036c5c:	8522                	mv	a0,s0
    80036c5e:	b54f80ef          	jal	ra,8002efb2 <js_parse_expect>
    80036c62:	c119                	beqz	a0,80036c68 <js_parse_statement_or_decl+0x1052>
    80036c64:	876ff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26900
                    if (!(s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved)) {
    80036c68:	4c1c                	lw	a5,24(s0)
    80036c6a:	f8300713          	li	a4,-125
    80036c6e:	02e79263          	bne	a5,a4,80036c92 <js_parse_statement_or_decl+0x107c>
quickjs-nuttx/quickjs.c:26900 (discriminator 1)
    80036c72:	581c                	lw	a5,48(s0)
    80036c74:	ebb9                	bnez	a5,80036cca <js_parse_statement_or_decl+0x10b4>
quickjs-nuttx/quickjs.c:26910
                        name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80036c76:	540c                	lw	a1,40(s0)
    80036c78:	855e                	mv	a0,s7
    80036c7a:	c8cd40ef          	jal	ra,8000b106 <JS_DupAtom>
    80036c7e:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:26911
                        if (next_token(s)
    80036c82:	8522                	mv	a0,s0
    80036c84:	903f70ef          	jal	ra,8002e586 <next_token>
    80036c88:	c539                	beqz	a0,80036cd6 <js_parse_statement_or_decl+0x10c0>
quickjs-nuttx/quickjs.c:26913
                            JS_FreeAtom(ctx, name);
    80036c8a:	85d2                	mv	a1,s4
    80036c8c:	855e                	mv	a0,s7
    80036c8e:	ca0ff06f          	j	8003612e <js_parse_statement_or_decl+0x518>
quickjs-nuttx/quickjs.c:26901
                        if (s->token.val == '[' || s->token.val == '{') {
    80036c92:	fdf7f793          	andi	a5,a5,-33
    80036c96:	05b00713          	li	a4,91
    80036c9a:	02e79863          	bne	a5,a4,80036cca <js_parse_statement_or_decl+0x10b4>
quickjs-nuttx/quickjs.c:26903
                            if (js_parse_destructuring_element(s, TOK_LET, 0, TRUE, -1, TRUE) < 0)
    80036c9e:	4785                	li	a5,1
    80036ca0:	577d                	li	a4,-1
    80036ca2:	4685                	li	a3,1
    80036ca4:	4601                	li	a2,0
    80036ca6:	fd300593          	li	a1,-45
    80036caa:	8522                	mv	a0,s0
    80036cac:	e04fc0ef          	jal	ra,800332b0 <js_parse_destructuring_element>
    80036cb0:	00055463          	bgez	a0,80036cb8 <js_parse_statement_or_decl+0x10a2>
    80036cb4:	826ff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26921
                    if (js_parse_expect(s, ')'))
    80036cb8:	02900593          	li	a1,41
    80036cbc:	8522                	mv	a0,s0
    80036cbe:	af4f80ef          	jal	ra,8002efb2 <js_parse_expect>
    80036cc2:	de0507e3          	beqz	a0,80036ab0 <js_parse_statement_or_decl+0xe9a>
    80036cc6:	814ff06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26906
                            js_parse_error(s, "identifier expected");
    80036cca:	00036597          	auipc	a1,0x36
    80036cce:	ede58593          	addi	a1,a1,-290 # 8006cba8 <qjsc_repl+0x75f8>
    80036cd2:	824ff06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26912
                        ||  js_define_var(s, name, TOK_CATCH) < 0) {
    80036cd6:	fc500613          	li	a2,-59
    80036cda:	85d2                	mv	a1,s4
    80036cdc:	8522                	mv	a0,s0
    80036cde:	e4ff80ef          	jal	ra,8002fb2c <js_define_var>
    80036ce2:	fa0544e3          	bltz	a0,80036c8a <js_parse_statement_or_decl+0x1074>
quickjs-nuttx/quickjs.c:26917
                        emit_op(s, OP_scope_put_var);
    80036ce6:	8522                	mv	a0,s0
    80036ce8:	0bb00593          	li	a1,187
    80036cec:	c0ad20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26918
                        emit_u32(s, name);
    80036cf0:	85d2                	mv	a1,s4
    80036cf2:	8522                	mv	a0,s0
    80036cf4:	d98d20ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:26919
                        emit_u16(s, s->cur_func->scope_level);
    80036cf8:	743c                	ld	a5,104(s0)
    80036cfa:	8522                	mv	a0,s0
    80036cfc:	0e07d583          	lhu	a1,224(a5)
    80036d00:	ac4d20ef          	jal	ra,80008fc4 <emit_u16>
    80036d04:	bf55                	j	80036cb8 <js_parse_statement_or_decl+0x10a2>
quickjs-nuttx/quickjs.c:26956
            } else if (s->token.val == TOK_FINALLY) {
    80036d06:	fc600713          	li	a4,-58
    80036d0a:	00e79463          	bne	a5,a4,80036d12 <js_parse_statement_or_decl+0x10fc>
quickjs-nuttx/quickjs.c:26959
                emit_label(s, label_catch);
    80036d0e:	85d2                	mv	a1,s4
    80036d10:	bd0d                	j	80036b42 <js_parse_statement_or_decl+0xf2c>
quickjs-nuttx/quickjs.c:26964
                js_parse_error(s, "expecting catch or finally");
    80036d12:	00036597          	auipc	a1,0x36
    80036d16:	eae58593          	addi	a1,a1,-338 # 8006cbc0 <qjsc_repl+0x7610>
    80036d1a:	fddfe06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:27008
        if (next_token(s))
    80036d1e:	8522                	mv	a0,s0
    80036d20:	867f70ef          	jal	ra,8002e586 <next_token>
    80036d24:	870ff06f          	j	80035d94 <js_parse_statement_or_decl+0x17e>
quickjs-nuttx/quickjs.c:27012
        if (s->cur_func->js_mode & JS_MODE_STRICT) {
    80036d28:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:27013
            js_parse_error(s, "invalid keyword: with");
    80036d2a:	00036597          	auipc	a1,0x36
    80036d2e:	eb658593          	addi	a1,a1,-330 # 8006cbe0 <qjsc_repl+0x7630>
quickjs-nuttx/quickjs.c:27012
        if (s->cur_func->js_mode & JS_MODE_STRICT) {
    80036d32:	0867c783          	lbu	a5,134(a5)
    80036d36:	8b85                	andi	a5,a5,1
    80036d38:	c399                	beqz	a5,80036d3e <js_parse_statement_or_decl+0x1128>
    80036d3a:	fbdfe06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:27018
            if (next_token(s))
    80036d3e:	8522                	mv	a0,s0
    80036d40:	847f70ef          	jal	ra,8002e586 <next_token>
    80036d44:	c119                	beqz	a0,80036d4a <js_parse_statement_or_decl+0x1134>
    80036d46:	f95fe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27021
            if (js_parse_expr_paren(s))
    80036d4a:	8522                	mv	a0,s0
    80036d4c:	a52fe0ef          	jal	ra,80034f9e <js_parse_expr_paren>
    80036d50:	c119                	beqz	a0,80036d56 <js_parse_statement_or_decl+0x1140>
    80036d52:	f89fe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27024
            push_scope(s);
    80036d56:	8522                	mv	a0,s0
    80036d58:	a71e60ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:27025
            with_idx = define_var(s, s->cur_func, JS_ATOM__with_,
    80036d5c:	742c                	ld	a1,104(s0)
    80036d5e:	4681                	li	a3,0
    80036d60:	05500613          	li	a2,85
    80036d64:	8522                	mv	a0,s0
    80036d66:	b39f80ef          	jal	ra,8002f89e <define_var>
    80036d6a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:27027
            if (with_idx < 0)
    80036d6c:	00055463          	bgez	a0,80036d74 <js_parse_statement_or_decl+0x115e>
    80036d70:	f6bfe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27029
            emit_op(s, OP_to_object);
    80036d74:	07100593          	li	a1,113
    80036d78:	8522                	mv	a0,s0
    80036d7a:	b7cd20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:27030
            emit_op(s, OP_put_loc);
    80036d7e:	05900593          	li	a1,89
    80036d82:	8522                	mv	a0,s0
    80036d84:	b72d20ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:27031
            emit_u16(s, with_idx);
    80036d88:	03091593          	slli	a1,s2,0x30
    80036d8c:	91c1                	srli	a1,a1,0x30
    80036d8e:	8522                	mv	a0,s0
    80036d90:	a34d20ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:27033
            set_eval_ret_undefined(s);
    80036d94:	8522                	mv	a0,s0
    80036d96:	f8dd20ef          	jal	ra,80009d22 <set_eval_ret_undefined>
js_parse_statement():
quickjs-nuttx/quickjs.c:25970
    return js_parse_statement_or_decl(s, 0);
    80036d9a:	4581                	li	a1,0
    80036d9c:	8522                	mv	a0,s0
    80036d9e:	e79fe0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:27034
            if (js_parse_statement(s))
    80036da2:	e119                	bnez	a0,80036da8 <js_parse_statement_or_decl+0x1192>
    80036da4:	90aff06f          	j	80035eae <js_parse_statement_or_decl+0x298>
    80036da8:	f33fe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27043
        if (!(decl_mask & DECL_MASK_FUNC))
    80036dac:	00197793          	andi	a5,s2,1
    80036db0:	e799                	bnez	a5,80036dbe <js_parse_statement_or_decl+0x11a8>
quickjs-nuttx/quickjs.c:27067
                js_parse_error(s, "function declarations can't appear in single-statement context");
    80036db2:	00036597          	auipc	a1,0x36
    80036db6:	e4658593          	addi	a1,a1,-442 # 8006cbf8 <qjsc_repl+0x7648>
    80036dba:	f3dfe06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:27045
        if (!(decl_mask & DECL_MASK_OTHER) && peek_token(s, FALSE) == '*')
    80036dbe:	00497913          	andi	s2,s2,4
    80036dc2:	00091a63          	bnez	s2,80036dd6 <js_parse_statement_or_decl+0x11c0>
quickjs-nuttx/quickjs.c:27045 (discriminator 1)
    80036dc6:	4581                	li	a1,0
    80036dc8:	8522                	mv	a0,s0
    80036dca:	ea3d20ef          	jal	ra,80009c6c <peek_token>
    80036dce:	02a00793          	li	a5,42
    80036dd2:	fef500e3          	beq	a0,a5,80036db2 <js_parse_statement_or_decl+0x119c>
quickjs-nuttx/quickjs.c:27071
            if (js_parse_function_decl(s, JS_PARSE_FUNC_VAR,
    80036dd6:	4c5c                	lw	a5,28(s0)
    80036dd8:	7018                	ld	a4,32(s0)
    80036dda:	4681                	li	a3,0
    80036ddc:	4601                	li	a2,0
    80036dde:	4585                	li	a1,1
    80036de0:	8522                	mv	a0,s0
    80036de2:	f96fd0ef          	jal	ra,80034578 <js_parse_function_decl.constprop.0>
    80036de6:	faffe06f          	j	80035d94 <js_parse_statement_or_decl+0x17e>
quickjs-nuttx/quickjs.c:27049
        if (s->token.u.ident.is_reserved) {
    80036dea:	581c                	lw	a5,48(s0)
    80036dec:	c791                	beqz	a5,80036df8 <js_parse_statement_or_decl+0x11e2>
quickjs-nuttx/quickjs.c:27050
            js_parse_error_reserved_identifier(s);
    80036dee:	8522                	mv	a0,s0
    80036df0:	981f80ef          	jal	ra,8002f770 <js_parse_error_reserved_identifier>
quickjs-nuttx/quickjs.c:27051
            goto fail;
    80036df4:	ee7fe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27054
        switch (is_let(s, decl_mask)) {
    80036df8:	85ca                	mv	a1,s2
    80036dfa:	8522                	mv	a0,s0
    80036dfc:	91ef80ef          	jal	ra,8002ef1a <is_let>
    80036e00:	c139                	beqz	a0,80036e46 <js_parse_statement_or_decl+0x1230>
    80036e02:	4785                	li	a5,1
    80036e04:	00f50463          	beq	a0,a5,80036e0c <js_parse_statement_or_decl+0x11f6>
    80036e08:	ed3fe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
    80036e0c:	fd300993          	li	s3,-45
quickjs-nuttx/quickjs.c:26470
        if (!(decl_mask & DECL_MASK_OTHER)) {
    80036e10:	00497913          	andi	s2,s2,4
quickjs-nuttx/quickjs.c:26471
            js_parse_error(s, "lexical declarations can't appear in single-statement context");
    80036e14:	00036597          	auipc	a1,0x36
    80036e18:	ba458593          	addi	a1,a1,-1116 # 8006c9b8 <qjsc_repl+0x7408>
quickjs-nuttx/quickjs.c:26470
        if (!(decl_mask & DECL_MASK_OTHER)) {
    80036e1c:	00091463          	bnez	s2,80036e24 <js_parse_statement_or_decl+0x120e>
    80036e20:	ed7fe06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:26476
        if (next_token(s))
    80036e24:	8522                	mv	a0,s0
    80036e26:	f60f70ef          	jal	ra,8002e586 <next_token>
    80036e2a:	c119                	beqz	a0,80036e30 <js_parse_statement_or_decl+0x121a>
    80036e2c:	eaffe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:26478
        if (js_parse_var(s, TRUE, tok, FALSE))
    80036e30:	4681                	li	a3,0
    80036e32:	864e                	mv	a2,s3
    80036e34:	4585                	li	a1,1
    80036e36:	8522                	mv	a0,s0
    80036e38:	9a4fe0ef          	jal	ra,80034fdc <js_parse_var>
quickjs-nuttx/quickjs.c:26743
            if (emit_break(s, label, is_cont))
    80036e3c:	e119                	bnez	a0,80036e42 <js_parse_statement_or_decl+0x122c>
    80036e3e:	faffe06f          	j	80035dec <js_parse_statement_or_decl+0x1d6>
    80036e42:	e99fe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27063
        if (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80036e46:	08600593          	li	a1,134
    80036e4a:	8522                	mv	a0,s0
    80036e4c:	822d10ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    80036e50:	e119                	bnez	a0,80036e56 <js_parse_statement_or_decl+0x1240>
    80036e52:	ed3fe06f          	j	80035d24 <js_parse_statement_or_decl+0x10e>
quickjs-nuttx/quickjs.c:27064 (discriminator 1)
            peek_token(s, TRUE) == TOK_FUNCTION) {
    80036e56:	4585                	li	a1,1
    80036e58:	8522                	mv	a0,s0
    80036e5a:	e13d20ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:27063 (discriminator 1)
        if (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80036e5e:	fc700793          	li	a5,-57
    80036e62:	00f50463          	beq	a0,a5,80036e6a <js_parse_statement_or_decl+0x1254>
    80036e66:	ebffe06f          	j	80035d24 <js_parse_statement_or_decl+0x10e>
quickjs-nuttx/quickjs.c:27065
            if (!(decl_mask & DECL_MASK_OTHER)) {
    80036e6a:	00497913          	andi	s2,s2,4
    80036e6e:	f60914e3          	bnez	s2,80036dd6 <js_parse_statement_or_decl+0x11c0>
quickjs-nuttx/quickjs.c:27066
            func_decl_error:
    80036e72:	b781                	j	80036db2 <js_parse_statement_or_decl+0x119c>
quickjs-nuttx/quickjs.c:27080
        if (!(decl_mask & DECL_MASK_OTHER)) {
    80036e74:	00497913          	andi	s2,s2,4
    80036e78:	00091863          	bnez	s2,80036e88 <js_parse_statement_or_decl+0x1272>
quickjs-nuttx/quickjs.c:27081
            js_parse_error(s, "class declarations can't appear in single-statement context");
    80036e7c:	00036597          	auipc	a1,0x36
    80036e80:	dbc58593          	addi	a1,a1,-580 # 8006cc38 <qjsc_repl+0x7688>
    80036e84:	e73fe06f          	j	80035cf6 <js_parse_statement_or_decl+0xe0>
quickjs-nuttx/quickjs.c:27084
        if (js_parse_class(s, FALSE, JS_PARSE_EXPORT_NONE))
    80036e88:	4601                	li	a2,0
    80036e8a:	4581                	li	a1,0
    80036e8c:	8522                	mv	a0,s0
    80036e8e:	b80fe0ef          	jal	ra,8003520e <js_parse_class>
quickjs-nuttx/quickjs.c:27085
            return -1;
    80036e92:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:27084
        if (js_parse_class(s, FALSE, JS_PARSE_EXPORT_NONE))
    80036e94:	e119                	bnez	a0,80036e9a <js_parse_statement_or_decl+0x1284>
    80036e96:	8acff06f          	j	80035f42 <js_parse_statement_or_decl+0x32c>
quickjs-nuttx/quickjs.c:27124
}
    80036e9a:	70ee                	ld	ra,248(sp)
    80036e9c:	744e                	ld	s0,240(sp)
    80036e9e:	74ae                	ld	s1,232(sp)
    80036ea0:	790e                	ld	s2,224(sp)
    80036ea2:	69ee                	ld	s3,216(sp)
    80036ea4:	6a4e                	ld	s4,208(sp)
    80036ea6:	6aae                	ld	s5,200(sp)
    80036ea8:	6b0e                	ld	s6,192(sp)
    80036eaa:	7bea                	ld	s7,184(sp)
    80036eac:	7c4a                	ld	s8,176(sp)
    80036eae:	7caa                	ld	s9,168(sp)
    80036eb0:	7d0a                	ld	s10,160(sp)
    80036eb2:	6dea                	ld	s11,152(sp)
    80036eb4:	853e                	mv	a0,a5
    80036eb6:	6111                	addi	sp,sp,256
    80036eb8:	8082                	ret
js_unsupported_keyword():
quickjs-nuttx/quickjs.c:23748
    return js_parse_error(s, "unsupported keyword: %s",
    80036eba:	5410                	lw	a2,40(s0)
    80036ebc:	6008                	ld	a0,0(s0)
    80036ebe:	088c                	addi	a1,sp,80
    80036ec0:	d56d30ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    80036ec4:	862a                	mv	a2,a0
    80036ec6:	00036597          	auipc	a1,0x36
    80036eca:	db258593          	addi	a1,a1,-590 # 8006cc78 <qjsc_repl+0x76c8>
    80036ece:	8522                	mv	a0,s0
    80036ed0:	da3f60ef          	jal	ra,8002dc72 <js_parse_error>
js_parse_statement_or_decl():
quickjs-nuttx/quickjs.c:27100
        goto fail;
    80036ed4:	e07fe06f          	j	80035cda <js_parse_statement_or_decl+0xc4>
quickjs-nuttx/quickjs.c:27112
            emit_op(s, OP_drop); /* drop the result */
    80036ed8:	45b9                	li	a1,14
    80036eda:	f45fe06f          	j	80035e1e <js_parse_statement_or_decl+0x208>

0000000080036ede <js_parse_source_element>:
js_parse_source_element():
quickjs-nuttx/quickjs.c:29280
{
    80036ede:	715d                	addi	sp,sp,-80
    80036ee0:	e0a2                	sd	s0,64(sp)
    80036ee2:	f84a                	sd	s2,48(sp)
    80036ee4:	e486                	sd	ra,72(sp)
    80036ee6:	fc26                	sd	s1,56(sp)
    80036ee8:	f44e                	sd	s3,40(sp)
    80036eea:	f052                	sd	s4,32(sp)
    80036eec:	ec56                	sd	s5,24(sp)
    80036eee:	e85a                	sd	s6,16(sp)
    80036ef0:	e45e                	sd	s7,8(sp)
    80036ef2:	e062                	sd	s8,0(sp)
quickjs-nuttx/quickjs.c:29284
    if (s->token.val == TOK_FUNCTION ||
    80036ef4:	4d1c                	lw	a5,24(a0)
    80036ef6:	fc700913          	li	s2,-57
quickjs-nuttx/quickjs.c:29280
{
    80036efa:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:29284
    if (s->token.val == TOK_FUNCTION ||
    80036efc:	01279f63          	bne	a5,s2,80036f1a <js_parse_source_element+0x3c>
quickjs-nuttx/quickjs.c:29287
        if (js_parse_function_decl(s, JS_PARSE_FUNC_STATEMENT,
    80036f00:	4c5c                	lw	a5,28(s0)
    80036f02:	7018                	ld	a4,32(s0)
    80036f04:	4681                	li	a3,0
    80036f06:	4601                	li	a2,0
    80036f08:	4581                	li	a1,0
    80036f0a:	8522                	mv	a0,s0
    80036f0c:	e6cfd0ef          	jal	ra,80034578 <js_parse_function_decl.constprop.0>
quickjs-nuttx/quickjs.c:29301
        if (js_parse_statement_or_decl(s, DECL_MASK_ALL))
    80036f10:	00a03533          	snez	a0,a0
    80036f14:	40a00533          	neg	a0,a0
    80036f18:	a83d                	j	80036f56 <js_parse_source_element+0x78>
quickjs-nuttx/quickjs.c:29285 (discriminator 1)
        (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80036f1a:	08600593          	li	a1,134
quickjs-nuttx/quickjs.c:29281 (discriminator 1)
    JSFunctionDef *fd = s->cur_func;
    80036f1e:	7524                	ld	s1,104(a0)
quickjs-nuttx/quickjs.c:29285 (discriminator 1)
        (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80036f20:	f4fd00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:29284 (discriminator 1)
    if (s->token.val == TOK_FUNCTION ||
    80036f24:	c519                	beqz	a0,80036f32 <js_parse_source_element+0x54>
quickjs-nuttx/quickjs.c:29286
         peek_token(s, TRUE) == TOK_FUNCTION)) {
    80036f26:	4585                	li	a1,1
    80036f28:	8522                	mv	a0,s0
    80036f2a:	d43d20ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:29285
        (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80036f2e:	fd2509e3          	beq	a0,s2,80036f00 <js_parse_source_element+0x22>
quickjs-nuttx/quickjs.c:29291
    } else if (s->token.val == TOK_EXPORT && fd->module) {
    80036f32:	4c1c                	lw	a5,24(s0)
    80036f34:	fcd00713          	li	a4,-51
    80036f38:	38e79263          	bne	a5,a4,800372bc <js_parse_source_element+0x3de>
quickjs-nuttx/quickjs.c:29291 (discriminator 1)
    80036f3c:	2184b783          	ld	a5,536(s1)
    80036f40:	5c078663          	beqz	a5,8003750c <js_parse_source_element+0x62e>
js_parse_export():
quickjs-nuttx/quickjs.c:28964
    JSModuleDef *m = s->cur_func->module;
    80036f44:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:28970
    if (next_token(s))
    80036f46:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:28963
    JSContext *ctx = s->ctx;
    80036f48:	6004                	ld	s1,0(s0)
quickjs-nuttx/quickjs.c:28964
    JSModuleDef *m = s->cur_func->module;
    80036f4a:	2187b903          	ld	s2,536(a5)
quickjs-nuttx/quickjs.c:28970
    if (next_token(s))
    80036f4e:	e38f70ef          	jal	ra,8002e586 <next_token>
    80036f52:	cd11                	beqz	a0,80036f6e <js_parse_source_element+0x90>
js_parse_source_element():
quickjs-nuttx/quickjs.c:29299
            return -1;
    80036f54:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:29305
}
    80036f56:	60a6                	ld	ra,72(sp)
    80036f58:	6406                	ld	s0,64(sp)
    80036f5a:	74e2                	ld	s1,56(sp)
    80036f5c:	7942                	ld	s2,48(sp)
    80036f5e:	79a2                	ld	s3,40(sp)
    80036f60:	7a02                	ld	s4,32(sp)
    80036f62:	6ae2                	ld	s5,24(sp)
    80036f64:	6b42                	ld	s6,16(sp)
    80036f66:	6ba2                	ld	s7,8(sp)
    80036f68:	6c02                	ld	s8,0(sp)
    80036f6a:	6161                	addi	sp,sp,80
    80036f6c:	8082                	ret
js_parse_export():
quickjs-nuttx/quickjs.c:28973
    tok = s->token.val;
    80036f6e:	01842983          	lw	s3,24(s0)
quickjs-nuttx/quickjs.c:28974
    if (tok == TOK_CLASS) {
    80036f72:	fca00793          	li	a5,-54
quickjs-nuttx/quickjs.c:28975
        return js_parse_class(s, FALSE, JS_PARSE_EXPORT_NAMED);
    80036f76:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:28974
    if (tok == TOK_CLASS) {
    80036f78:	2af98763          	beq	s3,a5,80037226 <js_parse_source_element+0x348>
quickjs-nuttx/quickjs.c:28976
    } else if (tok == TOK_FUNCTION ||
    80036f7c:	fc700a13          	li	s4,-57
    80036f80:	01499d63          	bne	s3,s4,80036f9a <js_parse_source_element+0xbc>
quickjs-nuttx/quickjs.c:28979
        return js_parse_function_decl2(s, JS_PARSE_FUNC_STATEMENT,
    80036f84:	4881                	li	a7,0
    80036f86:	4805                	li	a6,1
quickjs-nuttx/quickjs.c:29089
            return js_parse_function_decl2(s, JS_PARSE_FUNC_STATEMENT,
    80036f88:	4c5c                	lw	a5,28(s0)
    80036f8a:	7018                	ld	a4,32(s0)
    80036f8c:	4681                	li	a3,0
    80036f8e:	4601                	li	a2,0
    80036f90:	4581                	li	a1,0
    80036f92:	8522                	mv	a0,s0
    80036f94:	bcffc0ef          	jal	ra,80033b62 <js_parse_function_decl2.constprop.0>
    80036f98:	bfa5                	j	80036f10 <js_parse_source_element+0x32>
quickjs-nuttx/quickjs.c:28977
               (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80036f9a:	08600593          	li	a1,134
    80036f9e:	8522                	mv	a0,s0
    80036fa0:	ecfd00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:28976
    } else if (tok == TOK_FUNCTION ||
    80036fa4:	c519                	beqz	a0,80036fb2 <js_parse_source_element+0xd4>
quickjs-nuttx/quickjs.c:28978
                peek_token(s, TRUE) == TOK_FUNCTION)) {
    80036fa6:	4585                	li	a1,1
    80036fa8:	8522                	mv	a0,s0
    80036faa:	cc3d20ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:28977
               (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80036fae:	fd450be3          	beq	a0,s4,80036f84 <js_parse_source_element+0xa6>
quickjs-nuttx/quickjs.c:28985
    if (next_token(s))
    80036fb2:	8522                	mv	a0,s0
    80036fb4:	dd2f70ef          	jal	ra,8002e586 <next_token>
    80036fb8:	fd51                	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:28988
    switch(tok) {
    80036fba:	fd300793          	li	a5,-45
    80036fbe:	2ef98863          	beq	s3,a5,800372ae <js_parse_source_element+0x3d0>
    80036fc2:	fd400793          	li	a5,-44
    80036fc6:	02f9d663          	bge	s3,a5,80036ff2 <js_parse_source_element+0x114>
    80036fca:	fc200793          	li	a5,-62
    80036fce:	24f98663          	beq	s3,a5,8003721a <js_parse_source_element+0x33c>
    80036fd2:	fcb00793          	li	a5,-53
    80036fd6:	2cf98c63          	beq	s3,a5,800372ae <js_parse_source_element+0x3d0>
    80036fda:	fb300793          	li	a5,-77
    80036fde:	2cf98863          	beq	s3,a5,800372ae <js_parse_source_element+0x3d0>
quickjs-nuttx/quickjs.c:29118
        return js_parse_error(s, "invalid export syntax");
    80036fe2:	00036597          	auipc	a1,0x36
    80036fe6:	d3e58593          	addi	a1,a1,-706 # 8006cd20 <qjsc_repl+0x7770>
js_parse_import():
quickjs-nuttx/quickjs.c:29208
                return js_parse_error(s, "expecting 'as'");
    80036fea:	8522                	mv	a0,s0
    80036fec:	c87f60ef          	jal	ra,8002dc72 <js_parse_error>
    80036ff0:	b705                	j	80036f10 <js_parse_source_element+0x32>
js_parse_export():
quickjs-nuttx/quickjs.c:28988
    switch(tok) {
    80036ff2:	02a00793          	li	a5,42
    80036ff6:	14f98463          	beq	s3,a5,8003713e <js_parse_source_element+0x260>
    80036ffa:	07b00793          	li	a5,123
    80036ffe:	fef992e3          	bne	s3,a5,80036fe2 <js_parse_source_element+0x104>
quickjs-nuttx/quickjs.c:28990
        first_export = m->export_entries_count;
