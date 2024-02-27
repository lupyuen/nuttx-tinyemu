    80034000:	b6d1                	j	80033bc4 <js_parse_function_decl2.constprop.0+0x62>
quickjs-nuttx/quickjs.c:33771
    } else if (func_type != JS_PARSE_FUNC_CLASS_STATIC_INIT) {
    80034002:	479d                	li	a5,7
    80034004:	eef908e3          	beq	s2,a5,80033ef4 <js_parse_function_decl2.constprop.0+0x392>
quickjs-nuttx/quickjs.c:33772
        if (s->token.val == '(') {
    80034008:	4c18                	lw	a4,24(s0)
    8003400a:	02800793          	li	a5,40
    8003400e:	02f71d63          	bne	a4,a5,80034048 <js_parse_function_decl2.constprop.0+0x4e6>
quickjs-nuttx/quickjs.c:33776
            js_parse_skip_parens_token(s, &skip_bits, FALSE);
    80034012:	4601                	li	a2,0
    80034014:	100c                	addi	a1,sp,32
    80034016:	8522                	mv	a0,s0
    80034018:	954fb0ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
quickjs-nuttx/quickjs.c:33777
            if (skip_bits & SKIP_HAS_ASSIGNMENT)
    8003401c:	5782                	lw	a5,32(sp)
    8003401e:	8b91                	andi	a5,a5,4
    80034020:	c399                	beqz	a5,80034026 <js_parse_function_decl2.constprop.0+0x4c4>
quickjs-nuttx/quickjs.c:33778
                fd->has_parameter_expressions = TRUE;
    80034022:	4785                	li	a5,1
    80034024:	c8fc                	sw	a5,84(s1)
quickjs-nuttx/quickjs.c:33779
            if (next_token(s))
    80034026:	8522                	mv	a0,s0
    80034028:	d5efa0ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:33782
            if (js_parse_expect(s, '('))
    8003402c:	e40514e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33786
        if (fd->has_parameter_expressions) {
    80034030:	48fc                	lw	a5,84(s1)
    80034032:	cb89                	beqz	a5,80034044 <js_parse_function_decl2.constprop.0+0x4e2>
quickjs-nuttx/quickjs.c:33787
            fd->scope_level = -1; /* force no parent scope */
    80034034:	57fd                	li	a5,-1
    80034036:	0ef4a023          	sw	a5,224(s1)
quickjs-nuttx/quickjs.c:33788
            if (push_scope(s) < 0)
    8003403a:	8522                	mv	a0,s0
    8003403c:	f8ce90ef          	jal	ra,8001d7c8 <push_scope>
    80034040:	b80541e3          	bltz	a0,80033bc2 <js_parse_function_decl2.constprop.0+0x60>
quickjs-nuttx/quickjs.c:33858
                    has_opt_arg = TRUE;
    80034044:	4c01                	li	s8,0
    80034046:	a435                	j	80034272 <js_parse_function_decl2.constprop.0+0x710>
quickjs-nuttx/quickjs.c:33782
            if (js_parse_expect(s, '('))
    80034048:	02800593          	li	a1,40
    8003404c:	8522                	mv	a0,s0
    8003404e:	f65fa0ef          	jal	ra,8002efb2 <js_parse_expect>
    80034052:	bfe9                	j	8003402c <js_parse_function_decl2.constprop.0+0x4ca>
quickjs-nuttx/quickjs.c:33810
                    idx = add_arg(ctx, fd, JS_ATOM_NULL);
    80034054:	4601                	li	a2,0
    80034056:	85a6                	mv	a1,s1
    80034058:	854e                	mv	a0,s3
    8003405a:	b2df50ef          	jal	ra,80029b86 <add_arg>
    8003405e:	8caa                	mv	s9,a0
quickjs-nuttx/quickjs.c:33811
                    emit_op(s, OP_get_arg);
    80034060:	05b00593          	li	a1,91
    80034064:	8522                	mv	a0,s0
    80034066:	890d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33812
                    emit_u16(s, idx);
    8003406a:	030c9593          	slli	a1,s9,0x30
    8003406e:	91c1                	srli	a1,a1,0x30
    80034070:	a4a1                	j	800342b8 <js_parse_function_decl2.constprop.0+0x756>
quickjs-nuttx/quickjs.c:33821
            } else if (s->token.val == TOK_IDENT) {
    80034072:	f8300713          	li	a4,-125
    80034076:	1ce79d63          	bne	a5,a4,80034250 <js_parse_function_decl2.constprop.0+0x6ee>
quickjs-nuttx/quickjs.c:33822
                if (s->token.u.ident.is_reserved) {
    8003407a:	581c                	lw	a5,48(s0)
    8003407c:	de0799e3          	bnez	a5,80033e6e <js_parse_function_decl2.constprop.0+0x30c>
quickjs-nuttx/quickjs.c:33826
                name = s->token.u.ident.atom;
    80034080:	02842c83          	lw	s9,40(s0)
quickjs-nuttx/quickjs.c:33827
                if (name == JS_ATOM_yield && fd->func_kind == JS_FUNC_GENERATOR) {
    80034084:	02d00793          	li	a5,45
    80034088:	00fc9763          	bne	s9,a5,80034096 <js_parse_function_decl2.constprop.0+0x534>
    8003408c:	0844c783          	lbu	a5,132(s1)
    80034090:	4705                	li	a4,1
    80034092:	dce78ee3          	beq	a5,a4,80033e6e <js_parse_function_decl2.constprop.0+0x30c>
quickjs-nuttx/quickjs.c:33831
                if (fd->has_parameter_expressions) {
    80034096:	48fc                	lw	a5,84(s1)
    80034098:	e7c9                	bnez	a5,80034122 <js_parse_function_decl2.constprop.0+0x5c0>
quickjs-nuttx/quickjs.c:33836
                idx = add_arg(ctx, fd, name);
    8003409a:	8666                	mv	a2,s9
    8003409c:	85a6                	mv	a1,s1
    8003409e:	854e                	mv	a0,s3
    800340a0:	ae7f50ef          	jal	ra,80029b86 <add_arg>
    800340a4:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:33837
                if (idx < 0)
    800340a6:	dc0547e3          	bltz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33839
                if (next_token(s))
    800340aa:	8522                	mv	a0,s0
    800340ac:	cdafa0ef          	jal	ra,8002e586 <next_token>
    800340b0:	dc0512e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33841
                if (rest) {
    800340b4:	080d8063          	beqz	s11,80034134 <js_parse_function_decl2.constprop.0+0x5d2>
quickjs-nuttx/quickjs.c:33842
                    emit_op(s, OP_rest);
    800340b8:	45b5                	li	a1,13
    800340ba:	8522                	mv	a0,s0
    800340bc:	83ad50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33843
                    emit_u16(s, idx);
    800340c0:	00015c03          	lhu	s8,0(sp)
    800340c4:	8522                	mv	a0,s0
    800340c6:	85e2                	mv	a1,s8
    800340c8:	efdd40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33844
                    if (fd->has_parameter_expressions) {
    800340cc:	48fc                	lw	a5,84(s1)
    800340ce:	c39d                	beqz	a5,800340f4 <js_parse_function_decl2.constprop.0+0x592>
quickjs-nuttx/quickjs.c:33845
                        emit_op(s, OP_dup);
    800340d0:	45c5                	li	a1,17
    800340d2:	8522                	mv	a0,s0
    800340d4:	822d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33846
                        emit_op(s, OP_scope_put_var_init);
    800340d8:	0bf00593          	li	a1,191
    800340dc:	8522                	mv	a0,s0
    800340de:	818d50ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33847
                        emit_atom(s, name);
    800340e2:	85e6                	mv	a1,s9
    800340e4:	8522                	mv	a0,s0
    800340e6:	844d70ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:33848
                        emit_u16(s, fd->scope_level);
    800340ea:	0e04d583          	lhu	a1,224(s1)
    800340ee:	8522                	mv	a0,s0
    800340f0:	ed5d40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33850
                    emit_op(s, OP_put_arg);
    800340f4:	05c00593          	li	a1,92
    800340f8:	8522                	mv	a0,s0
    800340fa:	ffdd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33851
                    emit_u16(s, idx);
    800340fe:	85e2                	mv	a1,s8
    80034100:	8522                	mv	a0,s0
    80034102:	ec3d40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33853
                    has_opt_arg = TRUE;
    80034106:	8c6e                	mv	s8,s11
quickjs-nuttx/quickjs.c:33852
                    fd->has_simple_parameter_list = FALSE;
    80034108:	0404a823          	sw	zero,80(s1)
quickjs-nuttx/quickjs.c:33898
            if (rest && s->token.val != ')') {
    8003410c:	4c1c                	lw	a5,24(s0)
    8003410e:	02900713          	li	a4,41
    80034112:	0ce78c63          	beq	a5,a4,800341ea <js_parse_function_decl2.constprop.0+0x688>
quickjs-nuttx/quickjs.c:33899
                js_parse_expect(s, ')');
    80034116:	02900593          	li	a1,41
    8003411a:	8522                	mv	a0,s0
    8003411c:	e97fa0ef          	jal	ra,8002efb2 <js_parse_expect>
quickjs-nuttx/quickjs.c:33900
                goto fail;
    80034120:	bb91                	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33832
                    if (define_var(s, fd, name, JS_VAR_DEF_LET) < 0)
    80034122:	4685                	li	a3,1
    80034124:	8666                	mv	a2,s9
    80034126:	85a6                	mv	a1,s1
    80034128:	8522                	mv	a0,s0
    8003412a:	f74fb0ef          	jal	ra,8002f89e <define_var>
    8003412e:	f60556e3          	bgez	a0,8003409a <js_parse_function_decl2.constprop.0+0x538>
    80034132:	b389                	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33854
                } else if (s->token.val == '=') {
    80034134:	4c1c                	lw	a5,24(s0)
    80034136:	03d00713          	li	a4,61
    8003413a:	0ce79963          	bne	a5,a4,8003420c <js_parse_function_decl2.constprop.0+0x6aa>
quickjs-nuttx/quickjs.c:33857
                    fd->has_simple_parameter_list = FALSE;
    8003413e:	0404a823          	sw	zero,80(s1)
quickjs-nuttx/quickjs.c:33860
                    if (next_token(s))
    80034142:	8522                	mv	a0,s0
    80034144:	c42fa0ef          	jal	ra,8002e586 <next_token>
    80034148:	d20516e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33863
                    label = new_label(s);
    8003414c:	8522                	mv	a0,s0
    8003414e:	e1fe80ef          	jal	ra,8001cf6c <new_label>
    80034152:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:33864
                    emit_op(s, OP_get_arg);
    80034154:	05b00593          	li	a1,91
    80034158:	8522                	mv	a0,s0
    8003415a:	f9dd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33865
                    emit_u16(s, idx);
    8003415e:	00015d83          	lhu	s11,0(sp)
    80034162:	8522                	mv	a0,s0
    80034164:	85ee                	mv	a1,s11
    80034166:	e5fd40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33866
                    emit_op(s, OP_dup);
    8003416a:	45c5                	li	a1,17
    8003416c:	8522                	mv	a0,s0
    8003416e:	f89d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33867
                    emit_op(s, OP_undefined);
    80034172:	4599                	li	a1,6
    80034174:	8522                	mv	a0,s0
    80034176:	f81d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33868
                    emit_op(s, OP_strict_eq);
    8003417a:	0ac00593          	li	a1,172
    8003417e:	8522                	mv	a0,s0
    80034180:	f77d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33869
                    emit_goto(s, OP_if_false, label);
    80034184:	8662                	mv	a2,s8
    80034186:	06a00593          	li	a1,106
    8003418a:	8522                	mv	a0,s0
    8003418c:	de9e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:33870
                    emit_op(s, OP_drop);
    80034190:	8522                	mv	a0,s0
    80034192:	45b9                	li	a1,14
    80034194:	f63d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33871
                    if (js_parse_assign_expr(s))
    80034198:	8522                	mv	a0,s0
    8003419a:	63d000ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003419e:	cc051be3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33873
                    set_object_name(s, name);
    800341a2:	85e6                	mv	a1,s9
    800341a4:	8522                	mv	a0,s0
    800341a6:	9ccd70ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:33874
                    emit_op(s, OP_dup);
    800341aa:	45c5                	li	a1,17
    800341ac:	8522                	mv	a0,s0
    800341ae:	f49d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33875
                    emit_op(s, OP_put_arg);
    800341b2:	05c00593          	li	a1,92
    800341b6:	8522                	mv	a0,s0
    800341b8:	f3fd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33876
                    emit_u16(s, idx);
    800341bc:	85ee                	mv	a1,s11
    800341be:	8522                	mv	a0,s0
    800341c0:	e05d40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33877
                    emit_label(s, label);
    800341c4:	85e2                	mv	a1,s8
    800341c6:	8522                	mv	a0,s0
    800341c8:	8ccd50ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:33878
                    emit_op(s, OP_scope_put_var_init);
    800341cc:	0bf00593          	li	a1,191
    800341d0:	8522                	mv	a0,s0
    800341d2:	f25d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33879
                    emit_atom(s, name);
    800341d6:	85e6                	mv	a1,s9
    800341d8:	8522                	mv	a0,s0
    800341da:	f51d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:33880
                    emit_u16(s, fd->scope_level);
    800341de:	0e04d583          	lhu	a1,224(s1)
    800341e2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:33858
                    has_opt_arg = TRUE;
    800341e4:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:33880
                    emit_u16(s, fd->scope_level);
    800341e6:	ddfd40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33902
            if (s->token.val == ')')
    800341ea:	4c1c                	lw	a5,24(s0)
    800341ec:	02900713          	li	a4,41
    800341f0:	06e79a63          	bne	a5,a4,80034264 <js_parse_function_decl2.constprop.0+0x702>
quickjs-nuttx/quickjs.c:33907
        if ((func_type == JS_PARSE_FUNC_GETTER && fd->arg_count != 0) ||
    800341f4:	4791                	li	a5,4
    800341f6:	10f91063          	bne	s2,a5,800342f6 <js_parse_function_decl2.constprop.0+0x794>
    800341fa:	0ac4a783          	lw	a5,172(s1)
    800341fe:	cc0780e3          	beqz	a5,80033ebe <js_parse_function_decl2.constprop.0+0x35c>
quickjs-nuttx/quickjs.c:33909
            js_parse_error(s, "invalid number of arguments for getter or setter");
    80034202:	00038597          	auipc	a1,0x38
    80034206:	55e58593          	addi	a1,a1,1374 # 8006c760 <qjsc_repl+0x71b0>
    8003420a:	a0b9                	j	80034258 <js_parse_function_decl2.constprop.0+0x6f6>
quickjs-nuttx/quickjs.c:33882
                    if (!has_opt_arg) {
    8003420c:	000c1763          	bnez	s8,8003421a <js_parse_function_decl2.constprop.0+0x6b8>
quickjs-nuttx/quickjs.c:33883
                        fd->defined_arg_count++;
    80034210:	0b04a783          	lw	a5,176(s1)
    80034214:	2785                	addiw	a5,a5,1
    80034216:	0af4a823          	sw	a5,176(s1)
quickjs-nuttx/quickjs.c:33885
                    if (fd->has_parameter_expressions) {
    8003421a:	48fc                	lw	a5,84(s1)
    8003421c:	d7f9                	beqz	a5,800341ea <js_parse_function_decl2.constprop.0+0x688>
quickjs-nuttx/quickjs.c:33887
                        emit_op(s, OP_get_arg);
    8003421e:	8522                	mv	a0,s0
    80034220:	05b00593          	li	a1,91
    80034224:	ed3d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33888
                        emit_u16(s, idx);
    80034228:	00015583          	lhu	a1,0(sp)
    8003422c:	8522                	mv	a0,s0
    8003422e:	d97d40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33889
                        emit_op(s, OP_scope_put_var_init);
    80034232:	8522                	mv	a0,s0
    80034234:	0bf00593          	li	a1,191
    80034238:	ebfd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33890
                        emit_atom(s, name);
    8003423c:	85e6                	mv	a1,s9
    8003423e:	8522                	mv	a0,s0
    80034240:	eebd60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:33891
                        emit_u16(s, fd->scope_level);
    80034244:	0e04d583          	lhu	a1,224(s1)
    80034248:	8522                	mv	a0,s0
    8003424a:	d7bd40ef          	jal	ra,80008fc4 <emit_u16>
    8003424e:	bf71                	j	800341ea <js_parse_function_decl2.constprop.0+0x688>
quickjs-nuttx/quickjs.c:33895
                js_parse_error(s, "missing formal parameter");
    80034250:	00038597          	auipc	a1,0x38
    80034254:	4f058593          	addi	a1,a1,1264 # 8006c740 <qjsc_repl+0x7190>
quickjs-nuttx/quickjs.c:33909
            js_parse_error(s, "invalid number of arguments for getter or setter");
    80034258:	8522                	mv	a0,s0
    8003425a:	a19f90ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:33910
            goto fail;
    8003425e:	b919                	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33818
                    has_opt_arg = TRUE;
    80034260:	4c05                	li	s8,1
    80034262:	a079                	j	800342f0 <js_parse_function_decl2.constprop.0+0x78e>
quickjs-nuttx/quickjs.c:33904
            if (js_parse_expect(s, ','))
    80034264:	02c00593          	li	a1,44
    80034268:	8522                	mv	a0,s0
    8003426a:	d49fa0ef          	jal	ra,8002efb2 <js_parse_expect>
    8003426e:	c00513e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33792
        while (s->token.val != ')') {
    80034272:	4c1c                	lw	a5,24(s0)
    80034274:	02900713          	li	a4,41
    80034278:	f6e78ee3          	beq	a5,a4,800341f4 <js_parse_function_decl2.constprop.0+0x692>
quickjs-nuttx/quickjs.c:33797
            if (s->token.val == TOK_ELLIPSIS) {
    8003427c:	fa700713          	li	a4,-89
quickjs-nuttx/quickjs.c:33794
            BOOL rest = FALSE;
    80034280:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:33797
            if (s->token.val == TOK_ELLIPSIS) {
    80034282:	00e79a63          	bne	a5,a4,80034296 <js_parse_function_decl2.constprop.0+0x734>
quickjs-nuttx/quickjs.c:33798
                fd->has_simple_parameter_list = FALSE;
    80034286:	0404a823          	sw	zero,80(s1)
quickjs-nuttx/quickjs.c:33800
                if (next_token(s))
    8003428a:	8522                	mv	a0,s0
    8003428c:	afafa0ef          	jal	ra,8002e586 <next_token>
    80034290:	be0512e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33799
                rest = TRUE;
    80034294:	4d85                	li	s11,1
quickjs-nuttx/quickjs.c:33803
            if (s->token.val == '[' || s->token.val == '{') {
    80034296:	4c1c                	lw	a5,24(s0)
    80034298:	05b00693          	li	a3,91
    8003429c:	fdf7f713          	andi	a4,a5,-33
    800342a0:	dcd719e3          	bne	a4,a3,80034072 <js_parse_function_decl2.constprop.0+0x510>
quickjs-nuttx/quickjs.c:33804
                fd->has_simple_parameter_list = FALSE;
    800342a4:	0404a823          	sw	zero,80(s1)
quickjs-nuttx/quickjs.c:33805
                if (rest) {
    800342a8:	da0d86e3          	beqz	s11,80034054 <js_parse_function_decl2.constprop.0+0x4f2>
quickjs-nuttx/quickjs.c:33806
                    emit_op(s, OP_rest);
    800342ac:	45b5                	li	a1,13
    800342ae:	8522                	mv	a0,s0
    800342b0:	e47d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33807
                    emit_u16(s, fd->arg_count);
    800342b4:	0ac4d583          	lhu	a1,172(s1)
quickjs-nuttx/quickjs.c:33812
                    emit_u16(s, idx);
    800342b8:	8522                	mv	a0,s0
    800342ba:	d0bd40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33814
                has_initializer = js_parse_destructuring_element(s, fd->has_parameter_expressions ? TOK_LET : TOK_VAR, 1, TRUE, -1, TRUE);
    800342be:	48fc                	lw	a5,84(s1)
    800342c0:	fd300593          	li	a1,-45
    800342c4:	e399                	bnez	a5,800342ca <js_parse_function_decl2.constprop.0+0x768>
    800342c6:	fb300593          	li	a1,-77
    800342ca:	4785                	li	a5,1
    800342cc:	577d                	li	a4,-1
    800342ce:	4685                	li	a3,1
    800342d0:	4605                	li	a2,1
    800342d2:	8522                	mv	a0,s0
    800342d4:	fddfe0ef          	jal	ra,800332b0 <js_parse_destructuring_element>
quickjs-nuttx/quickjs.c:33815
                if (has_initializer < 0)
    800342d8:	b8054ee3          	bltz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33817
                if (has_initializer)
    800342dc:	01856c33          	or	s8,a0,s8
    800342e0:	2c01                	sext.w	s8,s8
    800342e2:	f60c1fe3          	bnez	s8,80034260 <js_parse_function_decl2.constprop.0+0x6fe>
quickjs-nuttx/quickjs.c:33820
                    fd->defined_arg_count++;
    800342e6:	0b04a783          	lw	a5,176(s1)
    800342ea:	2785                	addiw	a5,a5,1
    800342ec:	0af4a823          	sw	a5,176(s1)
quickjs-nuttx/quickjs.c:33898
            if (rest && s->token.val != ')') {
    800342f0:	e00d9ee3          	bnez	s11,8003410c <js_parse_function_decl2.constprop.0+0x5aa>
    800342f4:	bddd                	j	800341ea <js_parse_function_decl2.constprop.0+0x688>
quickjs-nuttx/quickjs.c:33907
        if ((func_type == JS_PARSE_FUNC_GETTER && fd->arg_count != 0) ||
    800342f6:	4795                	li	a5,5
    800342f8:	bcf913e3          	bne	s2,a5,80033ebe <js_parse_function_decl2.constprop.0+0x35c>
quickjs-nuttx/quickjs.c:33908
            (func_type == JS_PARSE_FUNC_SETTER && fd->arg_count != 1)) {
    800342fc:	0ac4a703          	lw	a4,172(s1)
    80034300:	4785                	li	a5,1
    80034302:	baf70ee3          	beq	a4,a5,80033ebe <js_parse_function_decl2.constprop.0+0x35c>
    80034306:	bdf5                	j	80034202 <js_parse_function_decl2.constprop.0+0x6a0>
quickjs-nuttx/quickjs.c:33923
            JSVarDef *vd = &fd->vars[idx];
    80034308:	0904bc03          	ld	s8,144(s1)
    8003430c:	0c92                	slli	s9,s9,0x4
quickjs-nuttx/quickjs.c:33924
            if (vd->scope_level != fd->scope_level)
    8003430e:	0e04a783          	lw	a5,224(s1)
quickjs-nuttx/quickjs.c:33923
            JSVarDef *vd = &fd->vars[idx];
    80034312:	9c66                	add	s8,s8,s9
quickjs-nuttx/quickjs.c:33924
            if (vd->scope_level != fd->scope_level)
    80034314:	004c2703          	lw	a4,4(s8) # ffffffff80000004 <_ebss+0xfffffffeffefee9e>
    80034318:	baf71ee3          	bne	a4,a5,80033ed4 <js_parse_function_decl2.constprop.0+0x372>
quickjs-nuttx/quickjs.c:33926
            if (find_var(ctx, fd, vd->var_name) < 0) {
    8003431c:	000c2603          	lw	a2,0(s8)
    80034320:	85a6                	mv	a1,s1
    80034322:	854e                	mv	a0,s3
    80034324:	e032                	sd	a2,0(sp)
    80034326:	ba8d60ef          	jal	ra,8000a6ce <find_var>
    8003432a:	6602                	ld	a2,0(sp)
    8003432c:	04055863          	bgez	a0,8003437c <js_parse_function_decl2.constprop.0+0x81a>
quickjs-nuttx/quickjs.c:33927
                if (add_var(ctx, fd, vd->var_name) < 0)
    80034330:	85a6                	mv	a1,s1
    80034332:	854e                	mv	a0,s3
    80034334:	df0f50ef          	jal	ra,80029924 <add_var>
    80034338:	b2054ee3          	bltz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33929
                vd = &fd->vars[idx]; /* fd->vars may have been reallocated */
    8003433c:	0904bc03          	ld	s8,144(s1)
quickjs-nuttx/quickjs.c:33930
                emit_op(s, OP_scope_get_var);
    80034340:	0ba00593          	li	a1,186
    80034344:	8522                	mv	a0,s0
    80034346:	db1d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33929
                vd = &fd->vars[idx]; /* fd->vars may have been reallocated */
    8003434a:	9c66                	add	s8,s8,s9
quickjs-nuttx/quickjs.c:33931
                emit_atom(s, vd->var_name);
    8003434c:	000c2583          	lw	a1,0(s8)
    80034350:	8522                	mv	a0,s0
    80034352:	dd9d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:33932
                emit_u16(s, fd->scope_level);
    80034356:	0e04d583          	lhu	a1,224(s1)
    8003435a:	8522                	mv	a0,s0
    8003435c:	c69d40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33933
                emit_op(s, OP_scope_put_var);
    80034360:	0bb00593          	li	a1,187
    80034364:	8522                	mv	a0,s0
    80034366:	d91d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:33934
                emit_atom(s, vd->var_name);
    8003436a:	000c2583          	lw	a1,0(s8)
    8003436e:	8522                	mv	a0,s0
    80034370:	dbbd60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:33935
                emit_u16(s, 0);
    80034374:	4581                	li	a1,0
    80034376:	8522                	mv	a0,s0
    80034378:	c4dd40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:33937
            idx = vd->scope_next;
    8003437c:	008c2c83          	lw	s9,8(s8)
    80034380:	be81                	j	80033ed0 <js_parse_function_decl2.constprop.0+0x36e>
quickjs-nuttx/quickjs.c:33992
    if (func_type != JS_PARSE_FUNC_CLASS_STATIC_INIT) {
    80034382:	479d                	li	a5,7
    80034384:	1ef91163          	bne	s2,a5,80034566 <js_parse_function_decl2.constprop.0+0xa04>
js_parse_directives():
quickjs-nuttx/quickjs.c:33413
    if (s->token.val != TOK_STRING)
    80034388:	4c18                	lw	a4,24(s0)
    8003438a:	f8100793          	li	a5,-127
    8003438e:	00f71763          	bne	a4,a5,8003439c <js_parse_function_decl2.constprop.0+0x83a>
    80034392:	8522                	mv	a0,s0
    80034394:	a35fa0ef          	jal	ra,8002edc8 <js_parse_directives.part.0>
js_parse_function_decl2():
quickjs-nuttx/quickjs.c:33997
    if (js_parse_directives(s))
    80034398:	ac051ee3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34001
    if (js_parse_function_check_names(s, fd, func_name))
    8003439c:	8652                	mv	a2,s4
    8003439e:	85a6                	mv	a1,s1
    800343a0:	8522                	mv	a0,s0
    800343a2:	bf8fb0ef          	jal	ra,8002f79a <js_parse_function_check_names>
quickjs-nuttx/quickjs.c:34004
    while (s->token.val != '}') {
    800343a6:	07d00a13          	li	s4,125
quickjs-nuttx/quickjs.c:34001
    if (js_parse_function_check_names(s, fd, func_name))
    800343aa:	ac0515e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34004
    while (s->token.val != '}') {
    800343ae:	4c1c                	lw	a5,24(s0)
    800343b0:	03479563          	bne	a5,s4,800343da <js_parse_function_decl2.constprop.0+0x878>
quickjs-nuttx/quickjs.c:34008
    if (!(fd->js_mode & JS_MODE_STRIP)) {
    800343b4:	0864c783          	lbu	a5,134(s1)
    800343b8:	8b89                	andi	a5,a5,2
    800343ba:	c78d                	beqz	a5,800343e4 <js_parse_function_decl2.constprop.0+0x882>
quickjs-nuttx/quickjs.c:34016
    if (next_token(s)) {
    800343bc:	8522                	mv	a0,s0
    800343be:	9c8fa0ef          	jal	ra,8002e586 <next_token>
    800343c2:	aa0519e3          	bnez	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34022
    if (js_is_live_code(s)) {
    800343c6:	8522                	mv	a0,s0
    800343c8:	b79d30ef          	jal	ra,80007f40 <js_is_live_code>
    800343cc:	ba050fe3          	beqz	a0,80033f8a <js_parse_function_decl2.constprop.0+0x428>
quickjs-nuttx/quickjs.c:34023
        emit_return(s, FALSE);
    800343d0:	4581                	li	a1,0
    800343d2:	8522                	mv	a0,s0
    800343d4:	c87e80ef          	jal	ra,8001d05a <emit_return>
    800343d8:	be4d                	j	80033f8a <js_parse_function_decl2.constprop.0+0x428>
quickjs-nuttx/quickjs.c:34005
        if (js_parse_source_element(s))
    800343da:	8522                	mv	a0,s0
    800343dc:	303020ef          	jal	ra,80036ede <js_parse_source_element>
    800343e0:	d579                	beqz	a0,800343ae <js_parse_function_decl2.constprop.0+0x84c>
    800343e2:	bc49                	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34010
        fd->source_len = s->buf_ptr - ptr;
    800343e4:	6c30                	ld	a2,88(s0)
quickjs-nuttx/quickjs.c:34011
        fd->source = js_strndup(ctx, (const char *)ptr, fd->source_len);
    800343e6:	85ea                	mv	a1,s10
    800343e8:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:34010
        fd->source_len = s->buf_ptr - ptr;
    800343ea:	41a6063b          	subw	a2,a2,s10
    800343ee:	20c4a823          	sw	a2,528(s1)
quickjs-nuttx/quickjs.c:34011
        fd->source = js_strndup(ctx, (const char *)ptr, fd->source_len);
    800343f2:	d39e50ef          	jal	ra,8001a12a <js_strndup>
    800343f6:	20a4b423          	sd	a0,520(s1)
quickjs-nuttx/quickjs.c:34012
        if (!fd->source)
    800343fa:	f169                	bnez	a0,800343bc <js_parse_function_decl2.constprop.0+0x85a>
    800343fc:	bca5                	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34056
        } else if (func_type == JS_PARSE_FUNC_VAR) {
    800343fe:	0cf91863          	bne	s2,a5,800344ce <js_parse_function_decl2.constprop.0+0x96c>
quickjs-nuttx/quickjs.c:34057
            emit_op(s, OP_fclosure);
    80034402:	458d                	li	a1,3
    80034404:	8522                	mv	a0,s0
    80034406:	cf1d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34058
            emit_u32(s, idx);
    8003440a:	000a859b          	sext.w	a1,s5
    8003440e:	8522                	mv	a0,s0
    80034410:	e7dd40ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:34059
            if (create_func_var) {
    80034414:	040b8963          	beqz	s7,80034466 <js_parse_function_decl2.constprop.0+0x904>
quickjs-nuttx/quickjs.c:34060
                if (s->cur_func->is_global_var) {
    80034418:	742c                	ld	a1,104(s0)
quickjs-nuttx/quickjs.c:34064
                    hf = add_global_var(ctx, s->cur_func, func_name);
    8003441a:	8652                	mv	a2,s4
quickjs-nuttx/quickjs.c:34060
                if (s->cur_func->is_global_var) {
    8003441c:	41bc                	lw	a5,64(a1)
    8003441e:	cbad                	beqz	a5,80034490 <js_parse_function_decl2.constprop.0+0x92e>
quickjs-nuttx/quickjs.c:34064
                    hf = add_global_var(ctx, s->cur_func, func_name);
    80034420:	854e                	mv	a0,s3
    80034422:	8c4e90ef          	jal	ra,8001d4e6 <add_global_var>
quickjs-nuttx/quickjs.c:34065
                    if (!hf)
    80034426:	a40507e3          	beqz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34070
                    hf->scope_level = 0; 
    8003442a:	00052423          	sw	zero,8(a0)
quickjs-nuttx/quickjs.c:34071
                    hf->force_init = ((s->cur_func->js_mode & JS_MODE_STRICT) != 0);
    8003442e:	743c                	ld	a5,104(s0)
    80034430:	0867c783          	lbu	a5,134(a5)
    80034434:	0017f713          	andi	a4,a5,1
    80034438:	00454783          	lbu	a5,4(a0)
    8003443c:	9bf9                	andi	a5,a5,-2
    8003443e:	8fd9                	or	a5,a5,a4
    80034440:	00f50223          	sb	a5,4(a0)
quickjs-nuttx/quickjs.c:34086
                    emit_op(s, OP_dup);
    80034444:	45c5                	li	a1,17
    80034446:	8522                	mv	a0,s0
    80034448:	cafd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34087
                    emit_op(s, OP_scope_put_var);
    8003444c:	0bb00593          	li	a1,187
    80034450:	8522                	mv	a0,s0
    80034452:	ca5d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34088
                    emit_atom(s, func_name);
    80034456:	85d2                	mv	a1,s4
    80034458:	8522                	mv	a0,s0
    8003445a:	cd1d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:34089
                    emit_u16(s, 0);
    8003445e:	4581                	li	a1,0
    80034460:	8522                	mv	a0,s0
    80034462:	b63d40ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:34092
            if (lexical_func_idx >= 0) {
    80034466:	57fd                	li	a5,-1
    80034468:	04fb0263          	beq	s6,a5,800344ac <js_parse_function_decl2.constprop.0+0x94a>
quickjs-nuttx/quickjs.c:34094
                s->cur_func->vars[lexical_func_idx].func_pool_idx = idx;
    8003446c:	743c                	ld	a5,104(s0)
    8003446e:	0b12                	slli	s6,s6,0x4
    80034470:	008a9a9b          	slliw	s5,s5,0x8
    80034474:	6bdc                	ld	a5,144(a5)
quickjs-nuttx/quickjs.c:34095
                emit_op(s, OP_drop);
    80034476:	45b9                	li	a1,14
    80034478:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:34094
                s->cur_func->vars[lexical_func_idx].func_pool_idx = idx;
    8003447a:	9b3e                	add	s6,s6,a5
    8003447c:	00cb4783          	lbu	a5,12(s6)
    80034480:	0157eab3          	or	s5,a5,s5
    80034484:	015b2623          	sw	s5,12(s6)
quickjs-nuttx/quickjs.c:34095
                emit_op(s, OP_drop);
    80034488:	c6fd40ef          	jal	ra,800090f6 <emit_op>
    8003448c:	f38ff06f          	j	80033bc4 <js_parse_function_decl2.constprop.0+0x62>
quickjs-nuttx/quickjs.c:34079
                    func_idx = find_var(ctx, s->cur_func, func_name);
    80034490:	854e                	mv	a0,s3
    80034492:	e02e                	sd	a1,0(sp)
    80034494:	a3ad60ef          	jal	ra,8000a6ce <find_var>
quickjs-nuttx/quickjs.c:34080
                    if (func_idx < 0) {
    80034498:	6582                	ld	a1,0(sp)
    8003449a:	fa0555e3          	bgez	a0,80034444 <js_parse_function_decl2.constprop.0+0x8e2>
quickjs-nuttx/quickjs.c:34081
                        func_idx = add_var(ctx, s->cur_func, func_name);
    8003449e:	8652                	mv	a2,s4
    800344a0:	854e                	mv	a0,s3
    800344a2:	c82f50ef          	jal	ra,80029924 <add_var>
quickjs-nuttx/quickjs.c:34082
                        if (func_idx < 0)
    800344a6:	f8055fe3          	bgez	a0,80034444 <js_parse_function_decl2.constprop.0+0x8e2>
    800344aa:	b2e9                	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34099
                emit_op(s, OP_scope_put_var_init);
    800344ac:	8522                	mv	a0,s0
    800344ae:	0bf00593          	li	a1,191
    800344b2:	c45d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34100
                emit_atom(s, func_name);
    800344b6:	85d2                	mv	a1,s4
    800344b8:	8522                	mv	a0,s0
    800344ba:	c71d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:34101
                emit_u16(s, s->cur_func->scope_level);
    800344be:	743c                	ld	a5,104(s0)
    800344c0:	8522                	mv	a0,s0
    800344c2:	0e07d583          	lhu	a1,224(a5)
    800344c6:	affd40ef          	jal	ra,80008fc4 <emit_u16>
    800344ca:	efaff06f          	j	80033bc4 <js_parse_function_decl2.constprop.0+0x62>
quickjs-nuttx/quickjs.c:34104
            if (!s->cur_func->is_global_var) {
    800344ce:	742c                	ld	a1,104(s0)
    800344d0:	41bc                	lw	a5,64(a1)
    800344d2:	ef9d                	bnez	a5,80034510 <js_parse_function_decl2.constprop.0+0x9ae>
quickjs-nuttx/quickjs.c:34105
                int var_idx = define_var(s, s->cur_func, func_name, JS_VAR_DEF_VAR);
    800344d4:	4699                	li	a3,6
    800344d6:	8652                	mv	a2,s4
    800344d8:	8522                	mv	a0,s0
    800344da:	bc4fb0ef          	jal	ra,8002f89e <define_var>
quickjs-nuttx/quickjs.c:34107
                if (var_idx < 0)
    800344de:	98054be3          	bltz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34110
                if (var_idx & ARGUMENT_VAR_OFFSET) {
    800344e2:	01d55793          	srli	a5,a0,0x1d
    800344e6:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:34111
                    s->cur_func->args[var_idx - ARGUMENT_VAR_OFFSET].func_pool_idx = idx;
    800344e8:	7438                	ld	a4,104(s0)
    800344ea:	008a9a9b          	slliw	s5,s5,0x8
quickjs-nuttx/quickjs.c:34110
                if (var_idx & ARGUMENT_VAR_OFFSET) {
    800344ee:	cf99                	beqz	a5,8003450c <js_parse_function_decl2.constprop.0+0x9aa>
quickjs-nuttx/quickjs.c:34111
                    s->cur_func->args[var_idx - ARGUMENT_VAR_OFFSET].func_pool_idx = idx;
    800344f0:	e00007b7          	lui	a5,0xe0000
    800344f4:	9d3d                	addw	a0,a0,a5
    800344f6:	735c                	ld	a5,160(a4)
quickjs-nuttx/quickjs.c:34113
                    s->cur_func->vars[var_idx].func_pool_idx = idx;
    800344f8:	0512                	slli	a0,a0,0x4
    800344fa:	953e                	add	a0,a0,a5
    800344fc:	00c54783          	lbu	a5,12(a0)
    80034500:	0157eab3          	or	s5,a5,s5
    80034504:	01552623          	sw	s5,12(a0)
    80034508:	ebcff06f          	j	80033bc4 <js_parse_function_decl2.constprop.0+0x62>
    8003450c:	6b5c                	ld	a5,144(a4)
    8003450e:	b7ed                	j	800344f8 <js_parse_function_decl2.constprop.0+0x996>
quickjs-nuttx/quickjs.c:34118
                if (func_name == JS_ATOM_NULL)
    80034510:	000a1463          	bnez	s4,80034518 <js_parse_function_decl2.constprop.0+0x9b6>
quickjs-nuttx/quickjs.c:34119
                    func_var_name = JS_ATOM__default_; /* export default */
    80034514:	07d00a13          	li	s4,125
quickjs-nuttx/quickjs.c:34123
                hf = add_global_var(ctx, s->cur_func, func_var_name);
    80034518:	8652                	mv	a2,s4
    8003451a:	854e                	mv	a0,s3
    8003451c:	fcbe80ef          	jal	ra,8001d4e6 <add_global_var>
quickjs-nuttx/quickjs.c:34124
                if (!hf)
    80034520:	94050ae3          	beqz	a0,80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:34127
                if (export_flag != JS_PARSE_EXPORT_NONE) {
    80034524:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:34126
                hf->cpool_idx = idx;
    80034526:	01552023          	sw	s5,0(a0)
quickjs-nuttx/quickjs.c:34127
                if (export_flag != JS_PARSE_EXPORT_NONE) {
    8003452a:	e8078d63          	beqz	a5,80033bc4 <js_parse_function_decl2.constprop.0+0x62>
quickjs-nuttx/quickjs.c:34128
                    if (!add_export_entry(s, s->cur_func->module, func_var_name,
    8003452e:	743c                	ld	a5,104(s0)
    80034530:	66c2                	ld	a3,16(sp)
    80034532:	8752                	mv	a4,s4
    80034534:	2187b603          	ld	a2,536(a5) # ffffffffe0000218 <_ebss+0xffffffff5feff0b2>
    80034538:	4785                	li	a5,1
    8003453a:	00f68363          	beq	a3,a5,80034540 <js_parse_function_decl2.constprop.0+0x9de>
    8003453e:	4759                	li	a4,22
add_export_entry():
quickjs-nuttx/quickjs.c:27283
    return add_export_entry2(s->ctx, s, m, local_name, export_name,
    80034540:	6008                	ld	a0,0(s0)
    80034542:	4781                	li	a5,0
    80034544:	86d2                	mv	a3,s4
    80034546:	85a2                	mv	a1,s0
    80034548:	f7ef90ef          	jal	ra,8002dcc6 <add_export_entry2>
js_parse_function_decl2():
quickjs-nuttx/quickjs.c:34128
                    if (!add_export_entry(s, s->cur_func->module, func_var_name,
    8003454c:	e6051c63          	bnez	a0,80033bc4 <js_parse_function_decl2.constprop.0+0x62>
    80034550:	925ff06f          	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>
quickjs-nuttx/quickjs.c:33595
    BOOL create_func_var = FALSE;
    80034554:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:33689
            lexical_func_idx = define_var(s, fd, func_name,
    80034556:	4691                	li	a3,4
quickjs-nuttx/quickjs.c:33671
        if (fd->is_eval &&
    80034558:	800b15e3          	bnez	s6,80033d62 <js_parse_function_decl2.constprop.0+0x200>
    8003455c:	845ff06f          	j	80033da0 <js_parse_function_decl2.constprop.0+0x23e>
quickjs-nuttx/quickjs.c:33992
    if (func_type != JS_PARSE_FUNC_CLASS_STATIC_INIT) {
    80034560:	479d                	li	a5,7
    80034562:	e2f90de3          	beq	s2,a5,8003439c <js_parse_function_decl2.constprop.0+0x83a>
quickjs-nuttx/quickjs.c:33993
        if (js_parse_expect(s, '{'))
    80034566:	07b00593          	li	a1,123
    8003456a:	8522                	mv	a0,s0
    8003456c:	a47fa0ef          	jal	ra,8002efb2 <js_parse_expect>
    80034570:	e0050ce3          	beqz	a0,80034388 <js_parse_function_decl2.constprop.0+0x826>
    80034574:	901ff06f          	j	80033e74 <js_parse_function_decl2.constprop.0+0x312>

0000000080034578 <js_parse_function_decl.constprop.0>:
js_parse_function_decl():
quickjs-nuttx/quickjs.c:34151
    return js_parse_function_decl2(s, func_type, func_kind, func_name, ptr,
    80034578:	4881                	li	a7,0
    8003457a:	4801                	li	a6,0
    8003457c:	4681                	li	a3,0
    8003457e:	de4ff06f          	j	80033b62 <js_parse_function_decl2.constprop.0>

0000000080034582 <js_parse_assign_expr2>:
js_parse_assign_expr2():
quickjs-nuttx/quickjs.c:25481
{
    80034582:	7159                	addi	sp,sp,-112
    80034584:	f0a2                	sd	s0,96(sp)
    80034586:	e4ce                	sd	s3,72(sp)
    80034588:	f486                	sd	ra,104(sp)
    8003458a:	eca6                	sd	s1,88(sp)
    8003458c:	e8ca                	sd	s2,80(sp)
    8003458e:	e0d2                	sd	s4,64(sp)
    80034590:	fc56                	sd	s5,56(sp)
quickjs-nuttx/quickjs.c:25486
    if (s->token.val == TOK_YIELD) {
    80034592:	4d1c                	lw	a5,24(a0)
    80034594:	fd900713          	li	a4,-39
quickjs-nuttx/quickjs.c:25481
{
    80034598:	842a                	mv	s0,a0
    8003459a:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:25486
    if (s->token.val == TOK_YIELD) {
    8003459c:	3ae79063          	bne	a5,a4,8003493c <js_parse_assign_expr2+0x3ba>
quickjs-nuttx/quickjs.c:25489
        if (!(s->cur_func->func_kind & JS_FUNC_GENERATOR))
    800345a0:	7538                	ld	a4,104(a0)
quickjs-nuttx/quickjs.c:25490
            return js_parse_error(s, "unexpected 'yield' keyword");
    800345a2:	00038597          	auipc	a1,0x38
    800345a6:	1f658593          	addi	a1,a1,502 # 8006c798 <qjsc_repl+0x71e8>
quickjs-nuttx/quickjs.c:25489
        if (!(s->cur_func->func_kind & JS_FUNC_GENERATOR))
    800345aa:	08474783          	lbu	a5,132(a4)
    800345ae:	8b85                	andi	a5,a5,1
    800345b0:	c799                	beqz	a5,800345be <js_parse_assign_expr2+0x3c>
quickjs-nuttx/quickjs.c:25491
        if (!s->cur_func->in_function_body)
    800345b2:	5f7c                	lw	a5,124(a4)
    800345b4:	ef99                	bnez	a5,800345d2 <js_parse_assign_expr2+0x50>
quickjs-nuttx/quickjs.c:25492
            return js_parse_error(s, "yield in default expression");
    800345b6:	00038597          	auipc	a1,0x38
    800345ba:	20258593          	addi	a1,a1,514 # 8006c7b8 <qjsc_repl+0x7208>
quickjs-nuttx/quickjs.c:25761
}
    800345be:	7406                	ld	s0,96(sp)
    800345c0:	70a6                	ld	ra,104(sp)
    800345c2:	64e6                	ld	s1,88(sp)
    800345c4:	6946                	ld	s2,80(sp)
    800345c6:	69a6                	ld	s3,72(sp)
    800345c8:	6a06                	ld	s4,64(sp)
    800345ca:	7ae2                	ld	s5,56(sp)
    800345cc:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:25492
            return js_parse_error(s, "yield in default expression");
    800345ce:	ea4f906f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:25493
        if (next_token(s))
    800345d2:	fb5f90ef          	jal	ra,8002e586 <next_token>
    800345d6:	c119                	beqz	a0,800345dc <js_parse_assign_expr2+0x5a>
quickjs-nuttx/quickjs.c:25709 (discriminator 1)
            return -1;
    800345d8:	54fd                	li	s1,-1
    800345da:	ae11                	j	800348ee <js_parse_assign_expr2+0x36c>
quickjs-nuttx/quickjs.c:25497
        if (s->token.val != ';' && s->token.val != ')' &&
    800345dc:	4c18                	lw	a4,24(s0)
    800345de:	03b00793          	li	a5,59
    800345e2:	00e7fe63          	bgeu	a5,a4,800345fe <js_parse_assign_expr2+0x7c>
    800345e6:	fdf77793          	andi	a5,a4,-33
    800345ea:	05d00693          	li	a3,93
    800345ee:	00d79f63          	bne	a5,a3,8003460c <js_parse_assign_expr2+0x8a>
quickjs-nuttx/quickjs.c:25508
            emit_op(s, OP_undefined);
    800345f2:	4599                	li	a1,6
    800345f4:	8522                	mv	a0,s0
    800345f6:	b01d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25487
        BOOL is_star = FALSE, is_async;
    800345fa:	4481                	li	s1,0
    800345fc:	a805                	j	8003462c <js_parse_assign_expr2+0xaa>
quickjs-nuttx/quickjs.c:25497 (discriminator 1)
        if (s->token.val != ';' && s->token.val != ')' &&
    800345fe:	600097b7          	lui	a5,0x60009
    80034602:	07f6                	slli	a5,a5,0x1d
    80034604:	00e7d7b3          	srl	a5,a5,a4
    80034608:	8b85                	andi	a5,a5,1
    8003460a:	f7e5                	bnez	a5,800345f2 <js_parse_assign_expr2+0x70>
quickjs-nuttx/quickjs.c:25499
            s->token.val != ',' && s->token.val != ':' && !s->got_lf) {
    8003460c:	4424                	lw	s1,72(s0)
    8003460e:	f0f5                	bnez	s1,800345f2 <js_parse_assign_expr2+0x70>
quickjs-nuttx/quickjs.c:25500
            if (s->token.val == '*') {
    80034610:	02a00793          	li	a5,42
    80034614:	00f71763          	bne	a4,a5,80034622 <js_parse_assign_expr2+0xa0>
quickjs-nuttx/quickjs.c:25502
                if (next_token(s))
    80034618:	8522                	mv	a0,s0
    8003461a:	f6df90ef          	jal	ra,8002e586 <next_token>
    8003461e:	fd4d                	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25501
                is_star = TRUE;
    80034620:	4485                	li	s1,1
quickjs-nuttx/quickjs.c:25505
            if (js_parse_assign_expr2(s, parse_flags))
    80034622:	85ce                	mv	a1,s3
    80034624:	8522                	mv	a0,s0
    80034626:	f5dff0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    8003462a:	f55d                	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25510
        is_async = (s->cur_func->func_kind == JS_FUNC_ASYNC_GENERATOR);
    8003462c:	743c                	ld	a5,104(s0)
    8003462e:	0847c903          	lbu	s2,132(a5) # 60009084 <asinh-0x1fff6f7c>
quickjs-nuttx/quickjs.c:25512
        if (is_star) {
    80034632:	2c048863          	beqz	s1,80034902 <js_parse_assign_expr2+0x380>
quickjs-nuttx/quickjs.c:25517
            label_loop = new_label(s);
    80034636:	8522                	mv	a0,s0
    80034638:	935e80ef          	jal	ra,8001cf6c <new_label>
    8003463c:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:25518
            label_yield = new_label(s);
    8003463e:	8522                	mv	a0,s0
    80034640:	92de80ef          	jal	ra,8001cf6c <new_label>
quickjs-nuttx/quickjs.c:25520
            emit_op(s, is_async ? OP_for_await_of_start : OP_for_of_start);
    80034644:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:25518
            label_yield = new_label(s);
    80034646:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:25520
            emit_op(s, is_async ? OP_for_await_of_start : OP_for_of_start);
    80034648:	08000593          	li	a1,128
    8003464c:	00f90463          	beq	s2,a5,80034654 <js_parse_assign_expr2+0xd2>
    80034650:	07f00593          	li	a1,127
quickjs-nuttx/quickjs.c:25520 (discriminator 4)
    80034654:	8522                	mv	a0,s0
    80034656:	aa1d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25524 (discriminator 4)
            emit_op(s, OP_drop);
    8003465a:	45b9                	li	a1,14
    8003465c:	8522                	mv	a0,s0
    8003465e:	a99d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25525 (discriminator 4)
            emit_op(s, OP_undefined);
    80034662:	4599                	li	a1,6
    80034664:	8522                	mv	a0,s0
    80034666:	a91d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25527 (discriminator 4)
            emit_op(s, OP_undefined); /* initial value */
    8003466a:	4599                	li	a1,6
    8003466c:	8522                	mv	a0,s0
    8003466e:	a89d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25529 (discriminator 4)
            emit_label(s, label_loop);
    80034672:	85d2                	mv	a1,s4
    80034674:	8522                	mv	a0,s0
    80034676:	c1fd40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25530 (discriminator 4)
            emit_op(s, OP_iterator_next);
    8003467a:	08600593          	li	a1,134
    8003467e:	8522                	mv	a0,s0
    80034680:	a77d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25531 (discriminator 4)
            if (is_async)
    80034684:	478d                	li	a5,3
    80034686:	00f91763          	bne	s2,a5,80034694 <js_parse_assign_expr2+0x112>
quickjs-nuttx/quickjs.c:25532
                emit_op(s, OP_await);
    8003468a:	08c00593          	li	a1,140
    8003468e:	8522                	mv	a0,s0
    80034690:	a67d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25533
            emit_op(s, OP_iterator_check_object);
    80034694:	08300593          	li	a1,131
    80034698:	8522                	mv	a0,s0
    8003469a:	a5dd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25534
            emit_op(s, OP_get_field2);
    8003469e:	04200593          	li	a1,66
    800346a2:	8522                	mv	a0,s0
    800346a4:	a53d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25535
            emit_atom(s, JS_ATOM_done);
    800346a8:	06a00593          	li	a1,106
    800346ac:	8522                	mv	a0,s0
    800346ae:	a7dd60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25536
            label_next = emit_goto(s, OP_if_true, -1); /* end of loop */
    800346b2:	567d                	li	a2,-1
    800346b4:	06b00593          	li	a1,107
    800346b8:	8522                	mv	a0,s0
    800346ba:	8bbe80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25537
            emit_label(s, label_yield);
    800346be:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:25536
            label_next = emit_goto(s, OP_if_true, -1); /* end of loop */
    800346c0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:25537
            emit_label(s, label_yield);
    800346c2:	8522                	mv	a0,s0
    800346c4:	bd1d40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25538
            if (is_async) {
    800346c8:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:25545
                emit_op(s, OP_yield_star);
    800346ca:	08a00593          	li	a1,138
quickjs-nuttx/quickjs.c:25538
            if (is_async) {
    800346ce:	00f91e63          	bne	s2,a5,800346ea <js_parse_assign_expr2+0x168>
quickjs-nuttx/quickjs.c:25540
                emit_op(s, OP_get_field);
    800346d2:	04100593          	li	a1,65
    800346d6:	8522                	mv	a0,s0
    800346d8:	a1fd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25541
                emit_atom(s, JS_ATOM_value);
    800346dc:	04100593          	li	a1,65
    800346e0:	8522                	mv	a0,s0
    800346e2:	a49d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25542
                emit_op(s, OP_async_yield_star);
    800346e6:	08b00593          	li	a1,139
quickjs-nuttx/quickjs.c:25545
                emit_op(s, OP_yield_star);
    800346ea:	8522                	mv	a0,s0
    800346ec:	a0bd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25547
            emit_op(s, OP_dup);
    800346f0:	45c5                	li	a1,17
    800346f2:	8522                	mv	a0,s0
    800346f4:	a03d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25548
            label_return = emit_goto(s, OP_if_true, -1);
    800346f8:	567d                	li	a2,-1
    800346fa:	06b00593          	li	a1,107
    800346fe:	8522                	mv	a0,s0
    80034700:	875e80ef          	jal	ra,8001cf74 <emit_goto>
    80034704:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:25549
            emit_op(s, OP_drop);
    80034706:	45b9                	li	a1,14
    80034708:	8522                	mv	a0,s0
    8003470a:	9edd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25550
            emit_goto(s, OP_goto, label_loop);
    8003470e:	8652                	mv	a2,s4
    80034710:	06c00593          	li	a1,108
    80034714:	8522                	mv	a0,s0
    80034716:	85fe80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25552
            emit_label(s, label_return);
    8003471a:	85d6                	mv	a1,s5
    8003471c:	8522                	mv	a0,s0
    8003471e:	b77d40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25553
            emit_op(s, OP_push_i32);
    80034722:	4585                	li	a1,1
    80034724:	8522                	mv	a0,s0
    80034726:	9d1d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25554
            emit_u32(s, 2);
    8003472a:	4589                	li	a1,2
    8003472c:	8522                	mv	a0,s0
    8003472e:	b5fd40ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:25555
            emit_op(s, OP_strict_eq);
    80034732:	0ac00593          	li	a1,172
    80034736:	8522                	mv	a0,s0
    80034738:	9bfd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25556
            label_throw = emit_goto(s, OP_if_true, -1);
    8003473c:	567d                	li	a2,-1
    8003473e:	06b00593          	li	a1,107
    80034742:	8522                	mv	a0,s0
    80034744:	831e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25559
            if (is_async)
    80034748:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:25556
            label_throw = emit_goto(s, OP_if_true, -1);
    8003474a:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:25559
            if (is_async)
    8003474c:	00f91763          	bne	s2,a5,8003475a <js_parse_assign_expr2+0x1d8>
quickjs-nuttx/quickjs.c:25560
                emit_op(s, OP_await);
    80034750:	08c00593          	li	a1,140
    80034754:	8522                	mv	a0,s0
    80034756:	9a1d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25561
            emit_op(s, OP_iterator_call);
    8003475a:	08700593          	li	a1,135
    8003475e:	8522                	mv	a0,s0
    80034760:	997d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25562
            emit_u8(s, 0);
    80034764:	4581                	li	a1,0
    80034766:	8522                	mv	a0,s0
    80034768:	d9cd40ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:25563
            label_return1 = emit_goto(s, OP_if_true, -1);
    8003476c:	567d                	li	a2,-1
    8003476e:	06b00593          	li	a1,107
    80034772:	8522                	mv	a0,s0
    80034774:	801e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25564
            if (is_async)
    80034778:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:25563
            label_return1 = emit_goto(s, OP_if_true, -1);
    8003477a:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:25564
            if (is_async)
    8003477c:	00f91763          	bne	s2,a5,8003478a <js_parse_assign_expr2+0x208>
quickjs-nuttx/quickjs.c:25565
                emit_op(s, OP_await);
    80034780:	08c00593          	li	a1,140
    80034784:	8522                	mv	a0,s0
    80034786:	971d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25566
            emit_op(s, OP_iterator_check_object);
    8003478a:	08300593          	li	a1,131
    8003478e:	8522                	mv	a0,s0
    80034790:	967d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25567
            emit_op(s, OP_get_field2);
    80034794:	04200593          	li	a1,66
    80034798:	8522                	mv	a0,s0
    8003479a:	95dd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25568
            emit_atom(s, JS_ATOM_done);
    8003479e:	06a00593          	li	a1,106
    800347a2:	8522                	mv	a0,s0
    800347a4:	987d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25569
            emit_goto(s, OP_if_false, label_yield);
    800347a8:	8626                	mv	a2,s1
    800347aa:	06a00593          	li	a1,106
    800347ae:	8522                	mv	a0,s0
    800347b0:	fc4e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25571
            emit_op(s, OP_get_field);
    800347b4:	04100593          	li	a1,65
    800347b8:	8522                	mv	a0,s0
    800347ba:	93dd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25572
            emit_atom(s, JS_ATOM_value);
    800347be:	04100593          	li	a1,65
    800347c2:	8522                	mv	a0,s0
    800347c4:	967d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25574
            emit_label(s, label_return1);
    800347c8:	85d6                	mv	a1,s5
    800347ca:	8522                	mv	a0,s0
    800347cc:	ac9d40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25575
            emit_op(s, OP_nip);
    800347d0:	45bd                	li	a1,15
    800347d2:	8522                	mv	a0,s0
    800347d4:	923d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25576
            emit_op(s, OP_nip);
    800347d8:	45bd                	li	a1,15
    800347da:	8522                	mv	a0,s0
    800347dc:	91bd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25577
            emit_op(s, OP_nip);
    800347e0:	45bd                	li	a1,15
    800347e2:	8522                	mv	a0,s0
    800347e4:	913d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25578
            emit_return(s, TRUE);
    800347e8:	4585                	li	a1,1
    800347ea:	8522                	mv	a0,s0
    800347ec:	86fe80ef          	jal	ra,8001d05a <emit_return>
quickjs-nuttx/quickjs.c:25581
            emit_label(s, label_throw);
    800347f0:	85d2                	mv	a1,s4
    800347f2:	8522                	mv	a0,s0
    800347f4:	aa1d40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25582
            emit_op(s, OP_iterator_call);
    800347f8:	08700593          	li	a1,135
    800347fc:	8522                	mv	a0,s0
    800347fe:	8f9d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25583
            emit_u8(s, 1);
    80034802:	4585                	li	a1,1
    80034804:	8522                	mv	a0,s0
    80034806:	cfed40ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:25584
            label_throw1 = emit_goto(s, OP_if_true, -1);
    8003480a:	567d                	li	a2,-1
    8003480c:	06b00593          	li	a1,107
    80034810:	8522                	mv	a0,s0
    80034812:	f62e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25585
            if (is_async)
    80034816:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:25584
            label_throw1 = emit_goto(s, OP_if_true, -1);
    80034818:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:25585
            if (is_async)
    8003481a:	00f91763          	bne	s2,a5,80034828 <js_parse_assign_expr2+0x2a6>
quickjs-nuttx/quickjs.c:25586
                emit_op(s, OP_await);
    8003481e:	08c00593          	li	a1,140
    80034822:	8522                	mv	a0,s0
    80034824:	8d3d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25587
            emit_op(s, OP_iterator_check_object);
    80034828:	08300593          	li	a1,131
    8003482c:	8522                	mv	a0,s0
    8003482e:	8c9d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25588
            emit_op(s, OP_get_field2);
    80034832:	04200593          	li	a1,66
    80034836:	8522                	mv	a0,s0
    80034838:	8bfd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25589
            emit_atom(s, JS_ATOM_done);
    8003483c:	06a00593          	li	a1,106
    80034840:	8522                	mv	a0,s0
    80034842:	8e9d60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25590
            emit_goto(s, OP_if_false, label_yield);
    80034846:	8626                	mv	a2,s1
    80034848:	06a00593          	li	a1,106
    8003484c:	8522                	mv	a0,s0
    8003484e:	f26e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25591
            emit_goto(s, OP_goto, label_next);
    80034852:	864e                	mv	a2,s3
    80034854:	06c00593          	li	a1,108
    80034858:	8522                	mv	a0,s0
    8003485a:	f1ae80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25593
            emit_label(s, label_throw1);
    8003485e:	85d2                	mv	a1,s4
    80034860:	8522                	mv	a0,s0
    80034862:	a33d40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25594
            emit_op(s, OP_iterator_call);
    80034866:	08700593          	li	a1,135
    8003486a:	8522                	mv	a0,s0
    8003486c:	88bd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25595
            emit_u8(s, 2);
    80034870:	4589                	li	a1,2
    80034872:	8522                	mv	a0,s0
    80034874:	c90d40ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:25596
            label_throw2 = emit_goto(s, OP_if_true, -1);
    80034878:	567d                	li	a2,-1
    8003487a:	06b00593          	li	a1,107
    8003487e:	8522                	mv	a0,s0
    80034880:	ef4e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25597
            if (is_async)
    80034884:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:25596
            label_throw2 = emit_goto(s, OP_if_true, -1);
    80034886:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:25597
            if (is_async)
    80034888:	00f91763          	bne	s2,a5,80034896 <js_parse_assign_expr2+0x314>
quickjs-nuttx/quickjs.c:25598
                emit_op(s, OP_await);
    8003488c:	08c00593          	li	a1,140
    80034890:	8522                	mv	a0,s0
    80034892:	865d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25599
            emit_label(s, label_throw2);
    80034896:	85a6                	mv	a1,s1
    80034898:	8522                	mv	a0,s0
    8003489a:	9fbd40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25601
            emit_op(s, OP_throw_error);
    8003489e:	03000593          	li	a1,48
    800348a2:	8522                	mv	a0,s0
    800348a4:	853d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25602
            emit_atom(s, JS_ATOM_NULL);
    800348a8:	4581                	li	a1,0
    800348aa:	8522                	mv	a0,s0
    800348ac:	87fd60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25603
            emit_u8(s, JS_THROW_ERROR_ITERATOR_THROW);
    800348b0:	4591                	li	a1,4
    800348b2:	8522                	mv	a0,s0
    800348b4:	c50d40ef          	jal	ra,80008d04 <emit_u8>
quickjs-nuttx/quickjs.c:25605
            emit_label(s, label_next);
    800348b8:	85ce                	mv	a1,s3
    800348ba:	8522                	mv	a0,s0
    800348bc:	9d9d40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25606
            emit_op(s, OP_get_field);
    800348c0:	04100593          	li	a1,65
    800348c4:	8522                	mv	a0,s0
    800348c6:	831d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25607
            emit_atom(s, JS_ATOM_value);
    800348ca:	04100593          	li	a1,65
    800348ce:	8522                	mv	a0,s0
    800348d0:	85bd60ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:25608
            emit_op(s, OP_nip); /* keep the value associated with
    800348d4:	45bd                	li	a1,15
    800348d6:	8522                	mv	a0,s0
    800348d8:	81fd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25610
            emit_op(s, OP_nip);
    800348dc:	45bd                	li	a1,15
    800348de:	8522                	mv	a0,s0
    800348e0:	817d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25611
            emit_op(s, OP_nip);
    800348e4:	45bd                	li	a1,15
    800348e6:	8522                	mv	a0,s0
    800348e8:	80fd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25622
        return 0;
    800348ec:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:25761
}
    800348ee:	70a6                	ld	ra,104(sp)
    800348f0:	7406                	ld	s0,96(sp)
    800348f2:	6946                	ld	s2,80(sp)
    800348f4:	69a6                	ld	s3,72(sp)
    800348f6:	6a06                	ld	s4,64(sp)
    800348f8:	7ae2                	ld	s5,56(sp)
    800348fa:	8526                	mv	a0,s1
    800348fc:	64e6                	ld	s1,88(sp)
    800348fe:	6165                	addi	sp,sp,112
    80034900:	8082                	ret
quickjs-nuttx/quickjs.c:25615
            if (is_async)
    80034902:	478d                	li	a5,3
    80034904:	00f91763          	bne	s2,a5,80034912 <js_parse_assign_expr2+0x390>
quickjs-nuttx/quickjs.c:25616
                emit_op(s, OP_await);
    80034908:	08c00593          	li	a1,140
    8003490c:	8522                	mv	a0,s0
    8003490e:	fe8d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25617
            emit_op(s, OP_yield);
    80034912:	08900593          	li	a1,137
    80034916:	8522                	mv	a0,s0
    80034918:	fded40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25618
            label_next = emit_goto(s, OP_if_false, -1);
    8003491c:	06a00593          	li	a1,106
    80034920:	567d                	li	a2,-1
    80034922:	8522                	mv	a0,s0
    80034924:	e50e80ef          	jal	ra,8001cf74 <emit_goto>
    80034928:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:25619
            emit_return(s, TRUE);
    8003492a:	4585                	li	a1,1
    8003492c:	8522                	mv	a0,s0
    8003492e:	f2ce80ef          	jal	ra,8001d05a <emit_return>
quickjs-nuttx/quickjs.c:25758
        emit_label(s, label2);
    80034932:	85ca                	mv	a1,s2
    80034934:	8522                	mv	a0,s0
    80034936:	95fd40ef          	jal	ra,80009294 <emit_label>
    8003493a:	bf55                	j	800348ee <js_parse_assign_expr2+0x36c>
quickjs-nuttx/quickjs.c:25623
    } else if (s->token.val == '(' && 
    8003493c:	02800713          	li	a4,40
    80034940:	02e79a63          	bne	a5,a4,80034974 <js_parse_assign_expr2+0x3f2>
quickjs-nuttx/quickjs.c:25624 (discriminator 1)
               js_parse_skip_parens_token(s, NULL, TRUE) == TOK_ARROW) {
    80034944:	4605                	li	a2,1
    80034946:	4581                	li	a1,0
    80034948:	825fa0ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
quickjs-nuttx/quickjs.c:25623 (discriminator 1)
    } else if (s->token.val == '(' && 
    8003494c:	fa600793          	li	a5,-90
    80034950:	02f51263          	bne	a0,a5,80034974 <js_parse_assign_expr2+0x3f2>
quickjs-nuttx/quickjs.c:25657
        return js_parse_function_decl(s, JS_PARSE_FUNC_ARROW,
    80034954:	4c5c                	lw	a5,28(s0)
    80034956:	7018                	ld	a4,32(s0)
    80034958:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:25761
}
    8003495a:	7406                	ld	s0,96(sp)
    8003495c:	70a6                	ld	ra,104(sp)
    8003495e:	64e6                	ld	s1,88(sp)
    80034960:	6946                	ld	s2,80(sp)
    80034962:	69a6                	ld	s3,72(sp)
    80034964:	6a06                	ld	s4,64(sp)
    80034966:	7ae2                	ld	s5,56(sp)
quickjs-nuttx/quickjs.c:25657
        return js_parse_function_decl(s, JS_PARSE_FUNC_ARROW,
    80034968:	4681                	li	a3,0
    8003496a:	4601                	li	a2,0
    8003496c:	458d                	li	a1,3
quickjs-nuttx/quickjs.c:25761
}
    8003496e:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:25657
        return js_parse_function_decl(s, JS_PARSE_FUNC_ARROW,
    80034970:	c09ff06f          	j	80034578 <js_parse_function_decl.constprop.0>
quickjs-nuttx/quickjs.c:25628
    } else if (token_is_pseudo_keyword(s, JS_ATOM_async)) {
    80034974:	08600593          	li	a1,134
    80034978:	8522                	mv	a0,s0
    8003497a:	cf4d30ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    8003497e:	1c050c63          	beqz	a0,80034b56 <js_parse_assign_expr2+0x5d4>
quickjs-nuttx/quickjs.c:25634
        tok = peek_token(s, TRUE);
    80034982:	4585                	li	a1,1
    80034984:	8522                	mv	a0,s0
    80034986:	ae6d50ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:25635
        if (tok == TOK_FUNCTION || tok == '\n')
    8003498a:	fc700793          	li	a5,-57
    8003498e:	04f50363          	beq	a0,a5,800349d4 <js_parse_assign_expr2+0x452>
quickjs-nuttx/quickjs.c:25635 (discriminator 1)
    80034992:	47a9                	li	a5,10
    80034994:	04f50063          	beq	a0,a5,800349d4 <js_parse_assign_expr2+0x452>
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    80034998:	441c                	lw	a5,8(s0)
js_parse_assign_expr2():
quickjs-nuttx/quickjs.c:25638
        source_ptr = s->token.ptr;
    8003499a:	7004                	ld	s1,32(s0)
quickjs-nuttx/quickjs.c:25639
        source_line_num = s->token.line_num;
    8003499c:	01c42903          	lw	s2,28(s0)
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    800349a0:	cc3e                	sw	a5,24(sp)
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    800349a2:	443c                	lw	a5,72(s0)
js_parse_assign_expr2():
quickjs-nuttx/quickjs.c:25641
        if (next_token(s))
    800349a4:	8522                	mv	a0,s0
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    800349a6:	ce4a                	sw	s2,28(sp)
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    800349a8:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    800349aa:	d03e                	sw	a5,32(sp)
js_parse_assign_expr2():
quickjs-nuttx/quickjs.c:25641
        if (next_token(s))
    800349ac:	bdbf90ef          	jal	ra,8002e586 <next_token>
    800349b0:	c20514e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25643
        if ((s->token.val == '(' &&
    800349b4:	4c18                	lw	a4,24(s0)
    800349b6:	02800793          	li	a5,40
    800349ba:	14f70f63          	beq	a4,a5,80034b18 <js_parse_assign_expr2+0x596>
quickjs-nuttx/quickjs.c:25644
             js_parse_skip_parens_token(s, NULL, TRUE) == TOK_ARROW) ||
    800349be:	4c18                	lw	a4,24(s0)
    800349c0:	f8300793          	li	a5,-125
    800349c4:	16f70d63          	beq	a4,a5,80034b3e <js_parse_assign_expr2+0x5bc>
quickjs-nuttx/quickjs.c:25652
            if (js_parse_seek_token(s, &pos))
    800349c8:	082c                	addi	a1,sp,24
    800349ca:	8522                	mv	a0,s0
    800349cc:	be8fa0ef          	jal	ra,8002edb4 <js_parse_seek_token>
    800349d0:	c00514e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25662
    if (s->token.val == TOK_IDENT) {
    800349d4:	4c18                	lw	a4,24(s0)
    800349d6:	f8300793          	li	a5,-125
quickjs-nuttx/quickjs.c:25483
    JSAtom name0 = JS_ATOM_NULL;
    800349da:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:25662
    if (s->token.val == TOK_IDENT) {
    800349dc:	00f71463          	bne	a4,a5,800349e4 <js_parse_assign_expr2+0x462>
quickjs-nuttx/quickjs.c:25664
        name0 = s->token.u.ident.atom;
    800349e0:	02842a03          	lw	s4,40(s0)
js_parse_coalesce_expr():
quickjs-nuttx/quickjs.c:25425
    if (js_parse_logical_and_or(s, TOK_LOR, parse_flags))
    800349e4:	864e                	mv	a2,s3
    800349e6:	fa300593          	li	a1,-93
    800349ea:	8522                	mv	a0,s0
    800349ec:	feafe0ef          	jal	ra,800331d6 <js_parse_logical_and_or>
    800349f0:	84aa                	mv	s1,a0
    800349f2:	be0513e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25427
    if (s->token.val == TOK_DOUBLE_QUESTION_MARK) {
    800349f6:	4c18                	lw	a4,24(s0)
    800349f8:	fa800793          	li	a5,-88
    800349fc:	04f71e63          	bne	a4,a5,80034a58 <js_parse_assign_expr2+0x4d6>
quickjs-nuttx/quickjs.c:25428
        label1 = new_label(s);
    80034a00:	8522                	mv	a0,s0
    80034a02:	d6ae80ef          	jal	ra,8001cf6c <new_label>
    80034a06:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:25440
            if (s->token.val != TOK_DOUBLE_QUESTION_MARK)
    80034a08:	fa800a93          	li	s5,-88
quickjs-nuttx/quickjs.c:25430
            if (next_token(s))
    80034a0c:	8522                	mv	a0,s0
    80034a0e:	b79f90ef          	jal	ra,8002e586 <next_token>
    80034a12:	bc0513e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25433
            emit_op(s, OP_dup);
    80034a16:	45c5                	li	a1,17
    80034a18:	8522                	mv	a0,s0
    80034a1a:	edcd40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25434
            emit_op(s, OP_is_undefined_or_null);
    80034a1e:	0b100593          	li	a1,177
    80034a22:	8522                	mv	a0,s0
    80034a24:	ed2d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25435
            emit_goto(s, OP_if_false, label1);
    80034a28:	864a                	mv	a2,s2
    80034a2a:	06a00593          	li	a1,106
    80034a2e:	8522                	mv	a0,s0
    80034a30:	d44e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25436
            emit_op(s, OP_drop);
    80034a34:	45b9                	li	a1,14
    80034a36:	8522                	mv	a0,s0
    80034a38:	ebed40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25438
            if (js_parse_expr_binary(s, 8, parse_flags))
    80034a3c:	864e                	mv	a2,s3
    80034a3e:	45a1                	li	a1,8
    80034a40:	8522                	mv	a0,s0
    80034a42:	d54fe0ef          	jal	ra,80032f96 <js_parse_expr_binary>
    80034a46:	b80519e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25440
            if (s->token.val != TOK_DOUBLE_QUESTION_MARK)
    80034a4a:	4c1c                	lw	a5,24(s0)
    80034a4c:	fd5780e3          	beq	a5,s5,80034a0c <js_parse_assign_expr2+0x48a>
quickjs-nuttx/quickjs.c:25443
        emit_label(s, label1);
    80034a50:	85ca                	mv	a1,s2
    80034a52:	8522                	mv	a0,s0
    80034a54:	841d40ef          	jal	ra,80009294 <emit_label>
js_parse_cond_expr():
quickjs-nuttx/quickjs.c:25455
    if (s->token.val == '?') {
    80034a58:	4c18                	lw	a4,24(s0)
    80034a5a:	03f00793          	li	a5,63
    80034a5e:	04f71f63          	bne	a4,a5,80034abc <js_parse_assign_expr2+0x53a>
quickjs-nuttx/quickjs.c:25456
        if (next_token(s))
    80034a62:	8522                	mv	a0,s0
    80034a64:	b23f90ef          	jal	ra,8002e586 <next_token>
    80034a68:	b60518e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25458
        label1 = emit_goto(s, OP_if_false, -1);
    80034a6c:	567d                	li	a2,-1
    80034a6e:	06a00593          	li	a1,106
    80034a72:	8522                	mv	a0,s0
    80034a74:	d00e80ef          	jal	ra,8001cf74 <emit_goto>
    80034a78:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:25460
        if (js_parse_assign_expr(s))
    80034a7a:	8522                	mv	a0,s0
    80034a7c:	55a000ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    80034a80:	b4051ce3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25462
        if (js_parse_expect(s, ':'))
    80034a84:	03a00593          	li	a1,58
    80034a88:	8522                	mv	a0,s0
    80034a8a:	d28fa0ef          	jal	ra,8002efb2 <js_parse_expect>
    80034a8e:	b40515e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25465
        label2 = emit_goto(s, OP_goto, -1);
    80034a92:	567d                	li	a2,-1
    80034a94:	06c00593          	li	a1,108
    80034a98:	8522                	mv	a0,s0
    80034a9a:	cdae80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25467
        emit_label(s, label1);
    80034a9e:	85d6                	mv	a1,s5
quickjs-nuttx/quickjs.c:25465
        label2 = emit_goto(s, OP_goto, -1);
    80034aa0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:25467
        emit_label(s, label1);
    80034aa2:	8522                	mv	a0,s0
    80034aa4:	ff0d40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25469
        if (js_parse_assign_expr2(s, parse_flags & PF_IN_ACCEPTED))
    80034aa8:	85ce                	mv	a1,s3
    80034aaa:	8522                	mv	a0,s0
    80034aac:	ad7ff0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    80034ab0:	b20514e3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25472
        emit_label(s, label2);
    80034ab4:	85ca                	mv	a1,s2
    80034ab6:	8522                	mv	a0,s0
    80034ab8:	fdcd40ef          	jal	ra,80009294 <emit_label>
js_parse_assign_expr2():
quickjs-nuttx/quickjs.c:25669
    op = s->token.val;
    80034abc:	01842903          	lw	s2,24(s0)
quickjs-nuttx/quickjs.c:25670
    if (op == '=' || (op >= TOK_MUL_ASSIGN && op <= TOK_POW_ASSIGN)) {
    80034ac0:	03d00793          	li	a5,61
    80034ac4:	00f90963          	beq	s2,a5,80034ad6 <js_parse_assign_expr2+0x554>
quickjs-nuttx/quickjs.c:25670 (discriminator 1)
    80034ac8:	07b9071b          	addiw	a4,s2,123
    80034acc:	46b1                	li	a3,12
    80034ace:	0009079b          	sext.w	a5,s2
    80034ad2:	10e6e063          	bltu	a3,a4,80034bd2 <js_parse_assign_expr2+0x650>
quickjs-nuttx/quickjs.c:25672
        if (next_token(s))
    80034ad6:	8522                	mv	a0,s0
    80034ad8:	aaff90ef          	jal	ra,8002e586 <next_token>
    80034adc:	ae051ee3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25674
        if (get_lvalue(s, &opcode, &scope, &name, &label, NULL, (op != '='), op) < 0)
    80034ae0:	fc390813          	addi	a6,s2,-61
    80034ae4:	88ca                	mv	a7,s2
    80034ae6:	01003833          	snez	a6,a6
    80034aea:	4781                	li	a5,0
    80034aec:	0838                	addi	a4,sp,24
    80034aee:	0814                	addi	a3,sp,16
    80034af0:	0070                	addi	a2,sp,12
    80034af2:	002c                	addi	a1,sp,8
    80034af4:	8522                	mv	a0,s0
    80034af6:	03d00a93          	li	s5,61
    80034afa:	94ffa0ef          	jal	ra,8002f448 <get_lvalue>
    80034afe:	ac054de3          	bltz	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25677
        if (js_parse_assign_expr2(s, parse_flags)) {
    80034b02:	85ce                	mv	a1,s3
    80034b04:	8522                	mv	a0,s0
    80034b06:	a7dff0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    80034b0a:	84aa                	mv	s1,a0
    80034b0c:	c13d                	beqz	a0,80034b72 <js_parse_assign_expr2+0x5f0>
quickjs-nuttx/quickjs.c:25722
            JS_FreeAtom(s->ctx, name);
    80034b0e:	45c2                	lw	a1,16(sp)
    80034b10:	6008                	ld	a0,0(s0)
    80034b12:	e36d60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:25723
            return -1;
    80034b16:	b4c9                	j	800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25644 (discriminator 1)
             js_parse_skip_parens_token(s, NULL, TRUE) == TOK_ARROW) ||
    80034b18:	4605                	li	a2,1
    80034b1a:	4581                	li	a1,0
    80034b1c:	8522                	mv	a0,s0
    80034b1e:	e4efa0ef          	jal	ra,8002f16c <js_parse_skip_parens_token>
quickjs-nuttx/quickjs.c:25643 (discriminator 1)
        if ((s->token.val == '(' &&
    80034b22:	fa600793          	li	a5,-90
    80034b26:	e8f51ce3          	bne	a0,a5,800349be <js_parse_assign_expr2+0x43c>
quickjs-nuttx/quickjs.c:25647
            return js_parse_function_decl(s, JS_PARSE_FUNC_ARROW,
    80034b2a:	8726                	mv	a4,s1
    80034b2c:	87ca                	mv	a5,s2
    80034b2e:	4681                	li	a3,0
    80034b30:	4609                	li	a2,2
    80034b32:	458d                	li	a1,3
    80034b34:	8522                	mv	a0,s0
    80034b36:	a43ff0ef          	jal	ra,80034578 <js_parse_function_decl.constprop.0>
    80034b3a:	84aa                	mv	s1,a0
    80034b3c:	bb4d                	j	800348ee <js_parse_assign_expr2+0x36c>
quickjs-nuttx/quickjs.c:25645
            (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved &&
    80034b3e:	581c                	lw	a5,48(s0)
    80034b40:	e80794e3          	bnez	a5,800349c8 <js_parse_assign_expr2+0x446>
quickjs-nuttx/quickjs.c:25646 (discriminator 1)
             peek_token(s, TRUE) == TOK_ARROW)) {
    80034b44:	4585                	li	a1,1
    80034b46:	8522                	mv	a0,s0
    80034b48:	924d50ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:25645 (discriminator 1)
            (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved &&
    80034b4c:	fa600793          	li	a5,-90
    80034b50:	e6f51ce3          	bne	a0,a5,800349c8 <js_parse_assign_expr2+0x446>
    80034b54:	bfd9                	j	80034b2a <js_parse_assign_expr2+0x5a8>
quickjs-nuttx/quickjs.c:25655
    } else if (s->token.val == TOK_IDENT &&
    80034b56:	4c18                	lw	a4,24(s0)
    80034b58:	f8300793          	li	a5,-125
    80034b5c:	e6f71ce3          	bne	a4,a5,800349d4 <js_parse_assign_expr2+0x452>
quickjs-nuttx/quickjs.c:25656 (discriminator 1)
               peek_token(s, TRUE) == TOK_ARROW) {
    80034b60:	4585                	li	a1,1
    80034b62:	8522                	mv	a0,s0
    80034b64:	908d50ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:25655 (discriminator 1)
    } else if (s->token.val == TOK_IDENT &&
    80034b68:	fa600793          	li	a5,-90
    80034b6c:	e6f514e3          	bne	a0,a5,800349d4 <js_parse_assign_expr2+0x452>
    80034b70:	b3d5                	j	80034954 <js_parse_assign_expr2+0x3d2>
quickjs-nuttx/quickjs.c:25682
        if (op == '=') {
    80034b72:	03591863          	bne	s2,s5,80034ba2 <js_parse_assign_expr2+0x620>
quickjs-nuttx/quickjs.c:25683
            if (opcode == OP_get_ref_value && name == name0) {
    80034b76:	4722                	lw	a4,8(sp)
    80034b78:	03c00793          	li	a5,60
    80034b7c:	00f71963          	bne	a4,a5,80034b8e <js_parse_assign_expr2+0x60c>
quickjs-nuttx/quickjs.c:25683 (discriminator 1)
    80034b80:	47c2                	lw	a5,16(sp)
    80034b82:	01479663          	bne	a5,s4,80034b8e <js_parse_assign_expr2+0x60c>
quickjs-nuttx/quickjs.c:25684
                set_object_name(s, name);
    80034b86:	85d2                	mv	a1,s4
    80034b88:	8522                	mv	a0,s0
    80034b8a:	fe8d60ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:25704 (discriminator 2)
        put_lvalue(s, opcode, scope, name, label, PUT_LVALUE_KEEP_TOP, FALSE);
    80034b8e:	4762                	lw	a4,24(sp)
    80034b90:	46c2                	lw	a3,16(sp)
    80034b92:	4632                	lw	a2,12(sp)
    80034b94:	45a2                	lw	a1,8(sp)
    80034b96:	4801                	li	a6,0
    80034b98:	4789                	li	a5,2
    80034b9a:	8522                	mv	a0,s0
    80034b9c:	dfed60ef          	jal	ra,8000b19a <put_lvalue>
quickjs-nuttx/quickjs.c:25670 (discriminator 2)
    if (op == '=' || (op >= TOK_MUL_ASSIGN && op <= TOK_POW_ASSIGN)) {
    80034ba0:	b3b9                	j	800348ee <js_parse_assign_expr2+0x36c>
quickjs-nuttx/quickjs.c:25697
            if (s->cur_func->js_mode & JS_MODE_MATH) {
    80034ba2:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:25695
            op = assign_opcodes[op - TOK_MUL_ASSIGN];
    80034ba4:	07b9091b          	addiw	s2,s2,123
    80034ba8:	0003a897          	auipc	a7,0x3a
    80034bac:	17088893          	addi	a7,a7,368 # 8006ed18 <assign_opcodes.2>
quickjs-nuttx/quickjs.c:25697
            if (s->cur_func->js_mode & JS_MODE_MATH) {
    80034bb0:	0867c783          	lbu	a5,134(a5)
quickjs-nuttx/quickjs.c:25695
            op = assign_opcodes[op - TOK_MUL_ASSIGN];
    80034bb4:	9946                	add	s2,s2,a7
    80034bb6:	00094583          	lbu	a1,0(s2)
quickjs-nuttx/quickjs.c:25697
            if (s->cur_func->js_mode & JS_MODE_MATH) {
    80034bba:	8b91                	andi	a5,a5,4
    80034bbc:	c799                	beqz	a5,80034bca <js_parse_assign_expr2+0x648>
quickjs-nuttx/quickjs.c:25698
                if (op == OP_mod)
    80034bbe:	09d00793          	li	a5,157
    80034bc2:	00f59463          	bne	a1,a5,80034bca <js_parse_assign_expr2+0x648>
quickjs-nuttx/quickjs.c:25699
                    op = OP_math_mod;
    80034bc6:	0b400593          	li	a1,180
quickjs-nuttx/quickjs.c:25702
            emit_op(s, op);
    80034bca:	8522                	mv	a0,s0
    80034bcc:	d2ad40ef          	jal	ra,800090f6 <emit_op>
    80034bd0:	bf7d                	j	80034b8e <js_parse_assign_expr2+0x60c>
quickjs-nuttx/quickjs.c:25705
    } else if (op >= TOK_LAND_ASSIGN && op <= TOK_DOUBLE_QUESTION_MARK_ASSIGN) {
    80034bd2:	06e7879b          	addiw	a5,a5,110
    80034bd6:	4709                	li	a4,2
    80034bd8:	d0f76be3          	bltu	a4,a5,800348ee <js_parse_assign_expr2+0x36c>
quickjs-nuttx/quickjs.c:25708
        if (next_token(s))
    80034bdc:	8522                	mv	a0,s0
    80034bde:	9a9f90ef          	jal	ra,8002e586 <next_token>
    80034be2:	9e051be3          	bnez	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25710
        if (get_lvalue(s, &opcode, &scope, &name, &label,
    80034be6:	88ca                	mv	a7,s2
    80034be8:	4805                	li	a6,1
    80034bea:	083c                	addi	a5,sp,24
    80034bec:	0858                	addi	a4,sp,20
    80034bee:	0814                	addi	a3,sp,16
    80034bf0:	0070                	addi	a2,sp,12
    80034bf2:	002c                	addi	a1,sp,8
    80034bf4:	8522                	mv	a0,s0
    80034bf6:	853fa0ef          	jal	ra,8002f448 <get_lvalue>
    80034bfa:	9c054fe3          	bltz	a0,800345d8 <js_parse_assign_expr2+0x56>
quickjs-nuttx/quickjs.c:25714
        emit_op(s, OP_dup);
    80034bfe:	45c5                	li	a1,17
    80034c00:	8522                	mv	a0,s0
    80034c02:	cf4d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25715
        if (op == TOK_DOUBLE_QUESTION_MARK_ASSIGN)
    80034c06:	f9400793          	li	a5,-108
    80034c0a:	00f91a63          	bne	s2,a5,80034c1e <js_parse_assign_expr2+0x69c>
quickjs-nuttx/quickjs.c:25716
            emit_op(s, OP_is_undefined_or_null);
    80034c0e:	0b100593          	li	a1,177
    80034c12:	8522                	mv	a0,s0
    80034c14:	ce2d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25717
        label1 = emit_goto(s, op == TOK_LOR_ASSIGN ? OP_if_true : OP_if_false,
    80034c18:	06a00593          	li	a1,106
    80034c1c:	a039                	j	80034c2a <js_parse_assign_expr2+0x6a8>
    80034c1e:	f9300793          	li	a5,-109
    80034c22:	06b00593          	li	a1,107
    80034c26:	fef919e3          	bne	s2,a5,80034c18 <js_parse_assign_expr2+0x696>
quickjs-nuttx/quickjs.c:25717 (discriminator 4)
    80034c2a:	567d                	li	a2,-1
    80034c2c:	8522                	mv	a0,s0
    80034c2e:	b46e80ef          	jal	ra,8001cf74 <emit_goto>
quickjs-nuttx/quickjs.c:25719 (discriminator 4)
        emit_op(s, OP_drop);
    80034c32:	45b9                	li	a1,14
quickjs-nuttx/quickjs.c:25717 (discriminator 4)
        label1 = emit_goto(s, op == TOK_LOR_ASSIGN ? OP_if_true : OP_if_false,
    80034c34:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:25719 (discriminator 4)
        emit_op(s, OP_drop);
    80034c36:	8522                	mv	a0,s0
    80034c38:	cbed40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25721 (discriminator 4)
        if (js_parse_assign_expr2(s, parse_flags)) {
    80034c3c:	85ce                	mv	a1,s3
    80034c3e:	8522                	mv	a0,s0
    80034c40:	943ff0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    80034c44:	ec0515e3          	bnez	a0,80034b0e <js_parse_assign_expr2+0x58c>
quickjs-nuttx/quickjs.c:25726
        if (opcode == OP_get_ref_value && name == name0) {
    80034c48:	4722                	lw	a4,8(sp)
    80034c4a:	03c00793          	li	a5,60
    80034c4e:	00f71963          	bne	a4,a5,80034c60 <js_parse_assign_expr2+0x6de>
quickjs-nuttx/quickjs.c:25726 (discriminator 1)
    80034c52:	47c2                	lw	a5,16(sp)
    80034c54:	01479663          	bne	a5,s4,80034c60 <js_parse_assign_expr2+0x6de>
quickjs-nuttx/quickjs.c:25727
            set_object_name(s, name);
    80034c58:	85d2                	mv	a1,s4
    80034c5a:	8522                	mv	a0,s0
    80034c5c:	f16d60ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:25730
        switch(depth_lvalue) {
    80034c60:	47e2                	lw	a5,24(sp)
    80034c62:	4709                	li	a4,2
    80034c64:	00e78c63          	beq	a5,a4,80034c7c <js_parse_assign_expr2+0x6fa>
    80034c68:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:25738
            emit_op(s, OP_insert4);
    80034c6a:	45dd                	li	a1,23
quickjs-nuttx/quickjs.c:25730
        switch(depth_lvalue) {
    80034c6c:	00e78963          	beq	a5,a4,80034c7e <js_parse_assign_expr2+0x6fc>
    80034c70:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:25732
            emit_op(s, OP_insert2);
    80034c72:	45d5                	li	a1,21
quickjs-nuttx/quickjs.c:25730
        switch(depth_lvalue) {
    80034c74:	00e78563          	beq	a5,a4,80034c7e <js_parse_assign_expr2+0x6fc>
quickjs-nuttx/quickjs.c:25741
            abort();
    80034c78:	70b2d0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:25735
            emit_op(s, OP_insert3);
    80034c7c:	45d9                	li	a1,22
quickjs-nuttx/quickjs.c:25738
            emit_op(s, OP_insert4);
    80034c7e:	8522                	mv	a0,s0
    80034c80:	c76d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25746
        put_lvalue(s, opcode, scope, name, label, PUT_LVALUE_NOKEEP_DEPTH,
    80034c84:	4752                	lw	a4,20(sp)
    80034c86:	46c2                	lw	a3,16(sp)
    80034c88:	4632                	lw	a2,12(sp)
    80034c8a:	45a2                	lw	a1,8(sp)
    80034c8c:	4801                	li	a6,0
    80034c8e:	4785                	li	a5,1
    80034c90:	8522                	mv	a0,s0
    80034c92:	d08d60ef          	jal	ra,8000b19a <put_lvalue>
quickjs-nuttx/quickjs.c:25748
        label2 = emit_goto(s, OP_goto, -1);
    80034c96:	06c00593          	li	a1,108
    80034c9a:	567d                	li	a2,-1
    80034c9c:	8522                	mv	a0,s0
    80034c9e:	ad6e80ef          	jal	ra,8001cf74 <emit_goto>
    80034ca2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:25750
        emit_label(s, label1);
    80034ca4:	85a6                	mv	a1,s1
    80034ca6:	8522                	mv	a0,s0
    80034ca8:	decd40ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:25753
        while (depth_lvalue != 0) {
    80034cac:	44e2                	lw	s1,24(sp)
    80034cae:	c80482e3          	beqz	s1,80034932 <js_parse_assign_expr2+0x3b0>
quickjs-nuttx/quickjs.c:25754
            emit_op(s, OP_nip);
    80034cb2:	45bd                	li	a1,15
    80034cb4:	8522                	mv	a0,s0
    80034cb6:	c40d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25755
            depth_lvalue--;
    80034cba:	47e2                	lw	a5,24(sp)
    80034cbc:	37fd                	addiw	a5,a5,-1
    80034cbe:	cc3e                	sw	a5,24(sp)
    80034cc0:	b7f5                	j	80034cac <js_parse_assign_expr2+0x72a>

0000000080034cc2 <js_parse_expr2>:
js_parse_expr2():
quickjs-nuttx/quickjs.c:25770
{
    80034cc2:	7179                	addi	sp,sp,-48
    80034cc4:	f022                	sd	s0,32(sp)
    80034cc6:	ec26                	sd	s1,24(sp)
    80034cc8:	e84a                	sd	s2,16(sp)
    80034cca:	e44e                	sd	s3,8(sp)
    80034ccc:	e052                	sd	s4,0(sp)
    80034cce:	f406                	sd	ra,40(sp)
    80034cd0:	842a                	mv	s0,a0
    80034cd2:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:25771
    BOOL comma = FALSE;
    80034cd4:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:25781
            s->cur_func->last_opcode_pos = -1;
    80034cd6:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:25783
        if (s->token.val != ',')
    80034cd8:	02c00a13          	li	s4,44
quickjs-nuttx/quickjs.c:25773
        if (js_parse_assign_expr2(s, parse_flags))
    80034cdc:	85a6                	mv	a1,s1
    80034cde:	8522                	mv	a0,s0
    80034ce0:	8a3ff0ef          	jal	ra,80034582 <js_parse_assign_expr2>
    80034ce4:	e11d                	bnez	a0,80034d0a <js_parse_expr2+0x48>
quickjs-nuttx/quickjs.c:25775
        if (comma) {
    80034ce6:	00090563          	beqz	s2,80034cf0 <js_parse_expr2+0x2e>
quickjs-nuttx/quickjs.c:25781
            s->cur_func->last_opcode_pos = -1;
    80034cea:	743c                	ld	a5,104(s0)
    80034cec:	1737a023          	sw	s3,352(a5)
quickjs-nuttx/quickjs.c:25783
        if (s->token.val != ',')
    80034cf0:	4c1c                	lw	a5,24(s0)
    80034cf2:	01479d63          	bne	a5,s4,80034d0c <js_parse_expr2+0x4a>
quickjs-nuttx/quickjs.c:25786
        if (next_token(s))
    80034cf6:	8522                	mv	a0,s0
    80034cf8:	88ff90ef          	jal	ra,8002e586 <next_token>
    80034cfc:	e519                	bnez	a0,80034d0a <js_parse_expr2+0x48>
quickjs-nuttx/quickjs.c:25788
        emit_op(s, OP_drop);
    80034cfe:	45b9                	li	a1,14
    80034d00:	8522                	mv	a0,s0
    80034d02:	bf4d40ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:25785
        comma = TRUE;
    80034d06:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:25773
        if (js_parse_assign_expr2(s, parse_flags))
    80034d08:	bfd1                	j	80034cdc <js_parse_expr2+0x1a>
quickjs-nuttx/quickjs.c:25774
            return -1;
    80034d0a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:25791
}
    80034d0c:	70a2                	ld	ra,40(sp)
    80034d0e:	7402                	ld	s0,32(sp)
    80034d10:	64e2                	ld	s1,24(sp)
    80034d12:	6942                	ld	s2,16(sp)
    80034d14:	69a2                	ld	s3,8(sp)
    80034d16:	6a02                	ld	s4,0(sp)
    80034d18:	6145                	addi	sp,sp,48
    80034d1a:	8082                	ret

0000000080034d1c <js_parse_expr>:
js_parse_expr():
quickjs-nuttx/quickjs.c:25795
    return js_parse_expr2(s, PF_IN_ACCEPTED);
    80034d1c:	4585                	li	a1,1
    80034d1e:	fa5ff06f          	j	80034cc2 <js_parse_expr2>

0000000080034d22 <js_parse_property_name>:
js_parse_property_name():
quickjs-nuttx/quickjs.c:22224
{
    80034d22:	715d                	addi	sp,sp,-80
    80034d24:	e0a2                	sd	s0,64(sp)
    80034d26:	f84a                	sd	s2,48(sp)
    80034d28:	f052                	sd	s4,32(sp)
    80034d2a:	ec56                	sd	s5,24(sp)
    80034d2c:	e85a                	sd	s6,16(sp)
    80034d2e:	e486                	sd	ra,72(sp)
    80034d30:	fc26                	sd	s1,56(sp)
    80034d32:	f44e                	sd	s3,40(sp)
    80034d34:	842a                	mv	s0,a0
    80034d36:	8aae                	mv	s5,a1
    80034d38:	8b32                	mv	s6,a2
    80034d3a:	8a36                	mv	s4,a3
    80034d3c:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:22231
    if (allow_method) {
    80034d3e:	ee3d                	bnez	a2,80034dbc <js_parse_property_name+0x9a>
quickjs-nuttx/quickjs.c:22230
    prop_type = PROP_TYPE_IDENT;
    80034d40:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:22270
    if (token_is_ident(s->token.val)) {
    80034d42:	4c04                	lw	s1,24(s0)
    80034d44:	8526                	mv	a0,s1
    80034d46:	a7ad30ef          	jal	ra,80007fc0 <token_is_ident>
    80034d4a:	14050d63          	beqz	a0,80034ea4 <js_parse_property_name+0x182>
quickjs-nuttx/quickjs.c:22273
            (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved);
    80034d4e:	f8300793          	li	a5,-125
    80034d52:	4901                	li	s2,0
    80034d54:	00f49563          	bne	s1,a5,80034d5e <js_parse_property_name+0x3c>
quickjs-nuttx/quickjs.c:22273 (discriminator 1)
    80034d58:	5808                	lw	a0,48(s0)
    80034d5a:	00153913          	seqz	s2,a0
quickjs-nuttx/quickjs.c:22275
        name = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    80034d5e:	540c                	lw	a1,40(s0)
    80034d60:	6008                	ld	a0,0(s0)
    80034d62:	ba4d60ef          	jal	ra,8000b106 <JS_DupAtom>
    80034d66:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:22276
        if (next_token(s))
    80034d6a:	8522                	mv	a0,s0
    80034d6c:	81bf90ef          	jal	ra,8002e586 <next_token>
    80034d70:	1a051363          	bnez	a0,80034f16 <js_parse_property_name+0x1f4>
quickjs-nuttx/quickjs.c:22279
        if (is_non_reserved_ident &&
    80034d74:	1c090d63          	beqz	s2,80034f4e <js_parse_property_name+0x22c>
quickjs-nuttx/quickjs.c:22225 (discriminator 1)
    int is_private = 0;
    80034d78:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:22279 (discriminator 1)
        if (is_non_reserved_ident &&
    80034d7a:	1c099a63          	bnez	s3,80034f4e <js_parse_property_name+0x22c>
quickjs-nuttx/quickjs.c:22280
            prop_type == PROP_TYPE_IDENT && allow_var) {
    80034d7e:	000a0e63          	beqz	s4,80034d9a <js_parse_property_name+0x78>
quickjs-nuttx/quickjs.c:22281
            if (!(s->token.val == ':' ||
    80034d82:	4c1c                	lw	a5,24(s0)
    80034d84:	03a00713          	li	a4,58
    80034d88:	20e78963          	beq	a5,a4,80034f9a <js_parse_property_name+0x278>
quickjs-nuttx/quickjs.c:22281 (discriminator 1)
    80034d8c:	02800713          	li	a4,40
    80034d90:	00e79563          	bne	a5,a4,80034d9a <js_parse_property_name+0x78>
quickjs-nuttx/quickjs.c:22282
                  (s->token.val == '(' && allow_method))) {
    80034d94:	4a05                	li	s4,1
    80034d96:	416a0a3b          	subw	s4,s4,s6
quickjs-nuttx/quickjs.c:22326
        is_private = PROP_TYPE_PRIVATE;
    80034d9a:	89d2                	mv	s3,s4
    80034d9c:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:22338
    return prop_type | is_private;
    80034d9e:	01396533          	or	a0,s2,s3
quickjs-nuttx/quickjs.c:22337
    *pname = name;
    80034da2:	009aa023          	sw	s1,0(s5)
quickjs-nuttx/quickjs.c:22338
    return prop_type | is_private;
    80034da6:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:22344
}
    80034da8:	60a6                	ld	ra,72(sp)
    80034daa:	6406                	ld	s0,64(sp)
    80034dac:	74e2                	ld	s1,56(sp)
    80034dae:	7942                	ld	s2,48(sp)
    80034db0:	79a2                	ld	s3,40(sp)
    80034db2:	7a02                	ld	s4,32(sp)
    80034db4:	6ae2                	ld	s5,24(sp)
    80034db6:	6b42                	ld	s6,16(sp)
    80034db8:	6161                	addi	sp,sp,80
    80034dba:	8082                	ret
quickjs-nuttx/quickjs.c:22232
        if (token_is_pseudo_keyword(s, JS_ATOM_get)
    80034dbc:	04200593          	li	a1,66
    80034dc0:	8aed30ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    80034dc4:	e519                	bnez	a0,80034dd2 <js_parse_property_name+0xb0>
quickjs-nuttx/quickjs.c:22233
        ||  token_is_pseudo_keyword(s, JS_ATOM_set)) {
    80034dc6:	04300593          	li	a1,67
    80034dca:	8522                	mv	a0,s0
    80034dcc:	8a2d30ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    80034dd0:	c529                	beqz	a0,80034e1a <js_parse_property_name+0xf8>
quickjs-nuttx/quickjs.c:22235
            name = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    80034dd2:	540c                	lw	a1,40(s0)
    80034dd4:	6008                	ld	a0,0(s0)
    80034dd6:	b30d60ef          	jal	ra,8000b106 <JS_DupAtom>
    80034dda:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:22236
            if (next_token(s))
    80034dde:	8522                	mv	a0,s0
    80034de0:	fa6f90ef          	jal	ra,8002e586 <next_token>
    80034de4:	12051963          	bnez	a0,80034f16 <js_parse_property_name+0x1f4>
quickjs-nuttx/quickjs.c:22238
            if (s->token.val == ':' || s->token.val == ',' ||
    80034de8:	4c1c                	lw	a5,24(s0)
    80034dea:	03a00713          	li	a4,58
    80034dee:	f8e788e3          	beq	a5,a4,80034d7e <js_parse_property_name+0x5c>
quickjs-nuttx/quickjs.c:22238 (discriminator 2)
    80034df2:	07d00713          	li	a4,125
    80034df6:	f8e784e3          	beq	a5,a4,80034d7e <js_parse_property_name+0x5c>
quickjs-nuttx/quickjs.c:22239
                s->token.val == '}' || s->token.val == '(') {
    80034dfa:	9bed                	andi	a5,a5,-5
    80034dfc:	02800713          	li	a4,40
    80034e00:	f6e78fe3          	beq	a5,a4,80034d7e <js_parse_property_name+0x5c>
quickjs-nuttx/quickjs.c:22243
            prop_type = PROP_TYPE_GET + (name == JS_ATOM_set);
    80034e04:	04300793          	li	a5,67
    80034e08:	498d                	li	s3,3
    80034e0a:	00f48363          	beq	s1,a5,80034e10 <js_parse_property_name+0xee>
    80034e0e:	4989                	li	s3,2
quickjs-nuttx/quickjs.c:22244 (discriminator 4)
            JS_FreeAtom(s->ctx, name);
    80034e10:	6008                	ld	a0,0(s0)
    80034e12:	85a6                	mv	a1,s1
    80034e14:	b34d60ef          	jal	ra,8000b148 <JS_FreeAtom>
    80034e18:	b72d                	j	80034d42 <js_parse_property_name+0x20>
quickjs-nuttx/quickjs.c:22245
        } else if (s->token.val == '*') {
    80034e1a:	4c18                	lw	a4,24(s0)
    80034e1c:	02a00793          	li	a5,42
    80034e20:	00f71c63          	bne	a4,a5,80034e38 <js_parse_property_name+0x116>
quickjs-nuttx/quickjs.c:22246
            if (next_token(s))
    80034e24:	8522                	mv	a0,s0
    80034e26:	f60f90ef          	jal	ra,8002e586 <next_token>
quickjs-nuttx/quickjs.c:22248
            prop_type = PROP_TYPE_STAR;
    80034e2a:	4991                	li	s3,4
quickjs-nuttx/quickjs.c:22246
            if (next_token(s))
    80034e2c:	f0050be3          	beqz	a0,80034d42 <js_parse_property_name+0x20>
quickjs-nuttx/quickjs.c:22342
    *pname = JS_ATOM_NULL;
    80034e30:	000aa023          	sw	zero,0(s5)
quickjs-nuttx/quickjs.c:22343
    return -1;
    80034e34:	557d                	li	a0,-1
    80034e36:	bf8d                	j	80034da8 <js_parse_property_name+0x86>
quickjs-nuttx/quickjs.c:22249
        } else if (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80034e38:	08600593          	li	a1,134
    80034e3c:	8522                	mv	a0,s0
    80034e3e:	830d30ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    80034e42:	ee050fe3          	beqz	a0,80034d40 <js_parse_property_name+0x1e>
quickjs-nuttx/quickjs.c:22250 (discriminator 1)
                   peek_token(s, TRUE) != '\n') {
    80034e46:	4585                	li	a1,1
    80034e48:	8522                	mv	a0,s0
    80034e4a:	e23d40ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:22249 (discriminator 1)
        } else if (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80034e4e:	47a9                	li	a5,10
    80034e50:	eef508e3          	beq	a0,a5,80034d40 <js_parse_property_name+0x1e>
quickjs-nuttx/quickjs.c:22251
            name = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    80034e54:	540c                	lw	a1,40(s0)
    80034e56:	6008                	ld	a0,0(s0)
    80034e58:	aaed60ef          	jal	ra,8000b106 <JS_DupAtom>
    80034e5c:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:22252
            if (next_token(s))
    80034e60:	8522                	mv	a0,s0
    80034e62:	f24f90ef          	jal	ra,8002e586 <next_token>
    80034e66:	e945                	bnez	a0,80034f16 <js_parse_property_name+0x1f4>
quickjs-nuttx/quickjs.c:22254
            if (s->token.val == ':' || s->token.val == ',' ||
    80034e68:	4c1c                	lw	a5,24(s0)
    80034e6a:	03a00713          	li	a4,58
    80034e6e:	f0e788e3          	beq	a5,a4,80034d7e <js_parse_property_name+0x5c>
quickjs-nuttx/quickjs.c:22254 (discriminator 2)
    80034e72:	07d00713          	li	a4,125
    80034e76:	f0e784e3          	beq	a5,a4,80034d7e <js_parse_property_name+0x5c>
quickjs-nuttx/quickjs.c:22255
                s->token.val == '}' || s->token.val == '(') {
    80034e7a:	9bed                	andi	a5,a5,-5
    80034e7c:	02800713          	li	a4,40
    80034e80:	eee78fe3          	beq	a5,a4,80034d7e <js_parse_property_name+0x5c>
quickjs-nuttx/quickjs.c:22259
            JS_FreeAtom(s->ctx, name);
    80034e84:	6008                	ld	a0,0(s0)
    80034e86:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:22265
                prop_type = PROP_TYPE_ASYNC;
    80034e88:	4995                	li	s3,5
quickjs-nuttx/quickjs.c:22259
            JS_FreeAtom(s->ctx, name);
    80034e8a:	abed60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:22260
            if (s->token.val == '*') {
    80034e8e:	4c18                	lw	a4,24(s0)
    80034e90:	02a00793          	li	a5,42
    80034e94:	eaf717e3          	bne	a4,a5,80034d42 <js_parse_property_name+0x20>
quickjs-nuttx/quickjs.c:22261
                if (next_token(s))
    80034e98:	8522                	mv	a0,s0
    80034e9a:	eecf90ef          	jal	ra,8002e586 <next_token>
    80034e9e:	f949                	bnez	a0,80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22263
                prop_type = PROP_TYPE_ASYNC_STAR;
    80034ea0:	4999                	li	s3,6
    80034ea2:	b545                	j	80034d42 <js_parse_property_name+0x20>
quickjs-nuttx/quickjs.c:22286
    } else if (s->token.val == TOK_STRING) {
    80034ea4:	f8100793          	li	a5,-127
    80034ea8:	00f49a63          	bne	s1,a5,80034ebc <js_parse_property_name+0x19a>
quickjs-nuttx/quickjs.c:22287
        name = JS_ValueToAtom(s->ctx, s->token.u.str.str);
    80034eac:	740c                	ld	a1,40(s0)
    80034eae:	7810                	ld	a2,48(s0)
    80034eb0:	6008                	ld	a0,0(s0)
quickjs-nuttx/quickjs.c:22308
            name = JS_ValueToAtom(s->ctx, val);
    80034eb2:	961f30ef          	jal	ra,80028812 <JS_ValueToAtom>
    80034eb6:	0005049b          	sext.w	s1,a0
    80034eba:	a881                	j	80034f0a <js_parse_property_name+0x1e8>
quickjs-nuttx/quickjs.c:22292
    } else if (s->token.val == TOK_NUMBER) {
    80034ebc:	f8000793          	li	a5,-128
    80034ec0:	06f49063          	bne	s1,a5,80034f20 <js_parse_property_name+0x1fe>
quickjs-nuttx/quickjs.c:22294
        val = s->token.u.num.val;
    80034ec4:	7810                	ld	a2,48(s0)
    80034ec6:	740c                	ld	a1,40(s0)
quickjs-nuttx/quickjs.c:22296
        if (JS_VALUE_GET_TAG(val) == JS_TAG_BIG_FLOAT) {
    80034ec8:	57dd                	li	a5,-9
quickjs-nuttx/quickjs.c:22294
        val = s->token.u.num.val;
    80034eca:	e432                	sd	a2,8(sp)
    80034ecc:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:22296
        if (JS_VALUE_GET_TAG(val) == JS_TAG_BIG_FLOAT) {
    80034ece:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.c:22275
        name = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    80034ed2:	6008                	ld	a0,0(s0)
quickjs-nuttx/quickjs.c:22296
        if (JS_VALUE_GET_TAG(val) == JS_TAG_BIG_FLOAT) {
    80034ed4:	fcf71fe3          	bne	a4,a5,80034eb2 <js_parse_property_name+0x190>
quickjs-nuttx/quickjs.c:22298
            val = s->ctx->rt->bigfloat_ops.
    80034ed8:	6d1c                	ld	a5,24(a0)
    80034eda:	7c10                	ld	a2,56(s0)
    80034edc:	05a1                	addi	a1,a1,8
    80034ede:	2687b783          	ld	a5,616(a5)
    80034ee2:	9782                	jalr	a5
    80034ee4:	e02a                	sd	a0,0(sp)
    80034ee6:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:22301
            if (JS_IsException(val))
    80034ee8:	0005871b          	sext.w	a4,a1
    80034eec:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:22298
            val = s->ctx->rt->bigfloat_ops.
    80034eee:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:22301
            if (JS_IsException(val))
    80034ef0:	f4f700e3          	beq	a4,a5,80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22303
            name = JS_ValueToAtom(s->ctx, val);
    80034ef4:	85aa                	mv	a1,a0
    80034ef6:	6008                	ld	a0,0(s0)
    80034ef8:	91bf30ef          	jal	ra,80028812 <JS_ValueToAtom>
    80034efc:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:22304
            JS_FreeValue(s->ctx, val);
    80034f00:	6582                	ld	a1,0(sp)
    80034f02:	6622                	ld	a2,8(sp)
    80034f04:	6008                	ld	a0,0(s0)
    80034f06:	899d60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:22310
        if (name == JS_ATOM_NULL)
    80034f0a:	d09d                	beqz	s1,80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22312
        if (next_token(s))
    80034f0c:	8522                	mv	a0,s0
    80034f0e:	e78f90ef          	jal	ra,8002e586 <next_token>
    80034f12:	892a                	mv	s2,a0
    80034f14:	cd0d                	beqz	a0,80034f4e <js_parse_property_name+0x22c>
quickjs-nuttx/quickjs.c:22340
    JS_FreeAtom(s->ctx, name);
    80034f16:	6008                	ld	a0,0(s0)
    80034f18:	85a6                	mv	a1,s1
    80034f1a:	a2ed60ef          	jal	ra,8000b148 <JS_FreeAtom>
    80034f1e:	bf09                	j	80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22314
    } else if (s->token.val == '[') {
    80034f20:	05b00793          	li	a5,91
    80034f24:	04f49963          	bne	s1,a5,80034f76 <js_parse_property_name+0x254>
quickjs-nuttx/quickjs.c:22315
        if (next_token(s))
    80034f28:	8522                	mv	a0,s0
    80034f2a:	e5cf90ef          	jal	ra,8002e586 <next_token>
    80034f2e:	f00511e3          	bnez	a0,80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22317
        if (js_parse_expr(s))
    80034f32:	8522                	mv	a0,s0
    80034f34:	de9ff0ef          	jal	ra,80034d1c <js_parse_expr>
    80034f38:	ee051ce3          	bnez	a0,80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22319
        if (js_parse_expect(s, ']'))
    80034f3c:	05d00593          	li	a1,93
    80034f40:	8522                	mv	a0,s0
    80034f42:	870fa0ef          	jal	ra,8002efb2 <js_parse_expect>
    80034f46:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:22321
        name = JS_ATOM_NULL;
    80034f48:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:22319
        if (js_parse_expect(s, ']'))
    80034f4a:	ee0513e3          	bnez	a0,80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22330
    if (prop_type != PROP_TYPE_IDENT && prop_type != PROP_TYPE_VAR &&
    80034f4e:	4785                	li	a5,1
    80034f50:	e537d7e3          	bge	a5,s3,80034d9e <js_parse_property_name+0x7c>
quickjs-nuttx/quickjs.c:22330 (discriminator 1)
    80034f54:	4c18                	lw	a4,24(s0)
    80034f56:	02800793          	li	a5,40
    80034f5a:	e4f702e3          	beq	a4,a5,80034d9e <js_parse_property_name+0x7c>
quickjs-nuttx/quickjs.c:22332
        JS_FreeAtom(s->ctx, name);
    80034f5e:	6008                	ld	a0,0(s0)
    80034f60:	85a6                	mv	a1,s1
    80034f62:	9e6d60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:22334
        js_parse_error(s, "invalid property name");
    80034f66:	00038597          	auipc	a1,0x38
    80034f6a:	87258593          	addi	a1,a1,-1934 # 8006c7d8 <qjsc_repl+0x7228>
    80034f6e:	8522                	mv	a0,s0
    80034f70:	d03f80ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:22335
        goto fail;
    80034f74:	bd75                	j	80034e30 <js_parse_property_name+0x10e>
quickjs-nuttx/quickjs.c:22322
    } else if (s->token.val == TOK_PRIVATE_NAME && allow_private) {
    80034f76:	fab00793          	li	a5,-85
    80034f7a:	fef496e3          	bne	s1,a5,80034f66 <js_parse_property_name+0x244>
quickjs-nuttx/quickjs.c:22322 (discriminator 1)
    80034f7e:	fe0904e3          	beqz	s2,80034f66 <js_parse_property_name+0x244>
quickjs-nuttx/quickjs.c:22323
        name = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    80034f82:	540c                	lw	a1,40(s0)
    80034f84:	6008                	ld	a0,0(s0)
    80034f86:	980d60ef          	jal	ra,8000b106 <JS_DupAtom>
    80034f8a:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:22324
        if (next_token(s))
    80034f8e:	8522                	mv	a0,s0
    80034f90:	df6f90ef          	jal	ra,8002e586 <next_token>
    80034f94:	f149                	bnez	a0,80034f16 <js_parse_property_name+0x1f4>
quickjs-nuttx/quickjs.c:22326
        is_private = PROP_TYPE_PRIVATE;
    80034f96:	4941                	li	s2,16
    80034f98:	bf5d                	j	80034f4e <js_parse_property_name+0x22c>
    80034f9a:	4a01                	li	s4,0
    80034f9c:	bbfd                	j	80034d9a <js_parse_property_name+0x78>

0000000080034f9e <js_parse_expr_paren>:
js_parse_expr_paren():
quickjs-nuttx/quickjs.c:23735
{
    80034f9e:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:23736
    if (js_parse_expect(s, '('))
    80034fa0:	02800593          	li	a1,40
quickjs-nuttx/quickjs.c:23735
{
    80034fa4:	e022                	sd	s0,0(sp)
    80034fa6:	e406                	sd	ra,8(sp)
    80034fa8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:23736
    if (js_parse_expect(s, '('))
    80034faa:	808fa0ef          	jal	ra,8002efb2 <js_parse_expect>
    80034fae:	c511                	beqz	a0,80034fba <js_parse_expr_paren+0x1c>
quickjs-nuttx/quickjs.c:23737
        return -1;
    80034fb0:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:23743
}
    80034fb2:	60a2                	ld	ra,8(sp)
    80034fb4:	6402                	ld	s0,0(sp)
    80034fb6:	0141                	addi	sp,sp,16
    80034fb8:	8082                	ret
quickjs-nuttx/quickjs.c:23738
    if (js_parse_expr(s))
    80034fba:	8522                	mv	a0,s0
    80034fbc:	d61ff0ef          	jal	ra,80034d1c <js_parse_expr>
    80034fc0:	f965                	bnez	a0,80034fb0 <js_parse_expr_paren+0x12>
quickjs-nuttx/quickjs.c:23740
    if (js_parse_expect(s, ')'))
    80034fc2:	02900593          	li	a1,41
    80034fc6:	8522                	mv	a0,s0
    80034fc8:	febf90ef          	jal	ra,8002efb2 <js_parse_expect>
    80034fcc:	00a03533          	snez	a0,a0
    80034fd0:	40a00533          	neg	a0,a0
    80034fd4:	bff9                	j	80034fb2 <js_parse_expr_paren+0x14>

0000000080034fd6 <js_parse_assign_expr>:
js_parse_assign_expr():
quickjs-nuttx/quickjs.c:25765
    return js_parse_assign_expr2(s, PF_IN_ACCEPTED);
    80034fd6:	4585                	li	a1,1
    80034fd8:	daaff06f          	j	80034582 <js_parse_assign_expr2>

0000000080034fdc <js_parse_var>:
js_parse_var():
quickjs-nuttx/quickjs.c:25995
{
    80034fdc:	7175                	addi	sp,sp,-144
    80034fde:	f4ce                	sd	s3,104(sp)
quickjs-nuttx/quickjs.c:26044
                    emit_op(s, (tok == TOK_CONST || tok == TOK_LET) ?
    80034fe0:	0356099b          	addiw	s3,a2,53
    80034fe4:	ff79f993          	andi	s3,s3,-9
quickjs-nuttx/quickjs.c:25995
{
    80034fe8:	e122                	sd	s0,128(sp)
    80034fea:	f8ca                	sd	s2,112(sp)
    80034fec:	ecd6                	sd	s5,88(sp)
    80034fee:	e4de                	sd	s7,72(sp)
    80034ff0:	e506                	sd	ra,136(sp)
    80034ff2:	fca6                	sd	s1,120(sp)
    80034ff4:	f0d2                	sd	s4,96(sp)
    80034ff6:	e8da                	sd	s6,80(sp)
    80034ff8:	e0e2                	sd	s8,64(sp)
    80034ffa:	fc66                	sd	s9,56(sp)
    80034ffc:	f86a                	sd	s10,48(sp)
    80034ffe:	f46e                	sd	s11,40(sp)
quickjs-nuttx/quickjs.c:26044
                    emit_op(s, (tok == TOK_CONST || tok == TOK_LET) ?
