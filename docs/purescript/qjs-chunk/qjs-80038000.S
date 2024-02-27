    80037002:	03092a83          	lw	s5,48(s2)
quickjs-nuttx/quickjs.c:28991
        while (s->token.val != '}') {
    80037006:	07d00b93          	li	s7,125
quickjs-nuttx/quickjs.c:29024
            if (s->token.val != ',')
    8003700a:	02c00c13          	li	s8,44
quickjs-nuttx/quickjs.c:28991
        while (s->token.val != '}') {
    8003700e:	4c08                	lw	a0,24(s0)
    80037010:	0b750763          	beq	a0,s7,800370be <js_parse_source_element+0x1e0>
quickjs-nuttx/quickjs.c:28992
            if (!token_is_ident(s->token.val)) {
    80037014:	fadd00ef          	jal	ra,80007fc0 <token_is_ident>
    80037018:	e909                	bnez	a0,8003702a <js_parse_source_element+0x14c>
quickjs-nuttx/quickjs.c:28993
                js_parse_error(s, "identifier expected");
    8003701a:	00036597          	auipc	a1,0x36
    8003701e:	b8e58593          	addi	a1,a1,-1138 # 8006cba8 <qjsc_repl+0x75f8>
    80037022:	8522                	mv	a0,s0
    80037024:	c4ff60ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:28994
                return -1;
    80037028:	b735                	j	80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:28996
            local_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    8003702a:	540c                	lw	a1,40(s0)
    8003702c:	8526                	mv	a0,s1
    8003702e:	8d8d40ef          	jal	ra,8000b106 <JS_DupAtom>
    80037032:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:28998
            if (next_token(s))
    80037036:	8522                	mv	a0,s0
    80037038:	d4ef70ef          	jal	ra,8002e586 <next_token>
    8003703c:	c919                	beqz	a0,80037052 <js_parse_source_element+0x174>
quickjs-nuttx/quickjs.c:28997
            export_name = JS_ATOM_NULL;
    8003703e:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:29010
                    JS_FreeAtom(ctx, local_name);
    80037040:	85d2                	mv	a1,s4
    80037042:	8526                	mv	a0,s1
    80037044:	904d40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29012
                    JS_FreeAtom(ctx, export_name);
    80037048:	85ce                	mv	a1,s3
    8003704a:	8526                	mv	a0,s1
js_parse_import():
quickjs-nuttx/quickjs.c:29180
            JS_FreeAtom(ctx, module_name);
    8003704c:	8fcd40ef          	jal	ra,8000b148 <JS_FreeAtom>
    80037050:	b711                	j	80036f54 <js_parse_source_element+0x76>
js_parse_export():
quickjs-nuttx/quickjs.c:29000
            if (token_is_pseudo_keyword(s, JS_ATOM_as)) {
    80037052:	07a00593          	li	a1,122
    80037056:	8522                	mv	a0,s0
    80037058:	e17d00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    8003705c:	c955                	beqz	a0,80037110 <js_parse_source_element+0x232>
quickjs-nuttx/quickjs.c:29001
                if (next_token(s))
    8003705e:	8522                	mv	a0,s0
    80037060:	d26f70ef          	jal	ra,8002e586 <next_token>
    80037064:	fd69                	bnez	a0,8003703e <js_parse_source_element+0x160>
quickjs-nuttx/quickjs.c:29003
                if (!token_is_ident(s->token.val)) {
    80037066:	4c08                	lw	a0,24(s0)
    80037068:	f59d00ef          	jal	ra,80007fc0 <token_is_ident>
    8003706c:	e909                	bnez	a0,8003707e <js_parse_source_element+0x1a0>
quickjs-nuttx/quickjs.c:29004
                    js_parse_error(s, "identifier expected");
    8003706e:	00036597          	auipc	a1,0x36
    80037072:	b3a58593          	addi	a1,a1,-1222 # 8006cba8 <qjsc_repl+0x75f8>
    80037076:	8522                	mv	a0,s0
    80037078:	bfbf60ef          	jal	ra,8002dc72 <js_parse_error>
    8003707c:	b7c9                	j	8003703e <js_parse_source_element+0x160>
quickjs-nuttx/quickjs.c:29007
                export_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    8003707e:	540c                	lw	a1,40(s0)
    80037080:	8526                	mv	a0,s1
    80037082:	884d40ef          	jal	ra,8000b106 <JS_DupAtom>
    80037086:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:29008
                if (next_token(s)) {
    8003708a:	8522                	mv	a0,s0
    8003708c:	cfaf70ef          	jal	ra,8002e586 <next_token>
    80037090:	f945                	bnez	a0,80037040 <js_parse_source_element+0x162>
add_export_entry():
quickjs-nuttx/quickjs.c:27283
    return add_export_entry2(s->ctx, s, m, local_name, export_name,
    80037092:	6008                	ld	a0,0(s0)
    80037094:	4781                	li	a5,0
    80037096:	874e                	mv	a4,s3
    80037098:	86d2                	mv	a3,s4
    8003709a:	864a                	mv	a2,s2
    8003709c:	85a2                	mv	a1,s0
    8003709e:	c29f60ef          	jal	ra,8002dcc6 <add_export_entry2>
    800370a2:	8b2a                	mv	s6,a0
js_parse_export():
quickjs-nuttx/quickjs.c:29020
            JS_FreeAtom(ctx, local_name);
    800370a4:	85d2                	mv	a1,s4
    800370a6:	8526                	mv	a0,s1
    800370a8:	8a0d40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29021
            JS_FreeAtom(ctx, export_name);
    800370ac:	85ce                	mv	a1,s3
    800370ae:	8526                	mv	a0,s1
    800370b0:	898d40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29022
            if (!me)
    800370b4:	ea0b00e3          	beqz	s6,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29024
            if (s->token.val != ',')
    800370b8:	4c1c                	lw	a5,24(s0)
    800370ba:	07878263          	beq	a5,s8,8003711e <js_parse_source_element+0x240>
quickjs-nuttx/quickjs.c:29029
        if (js_parse_expect(s, '}'))
    800370be:	07d00593          	li	a1,125
    800370c2:	8522                	mv	a0,s0
    800370c4:	eeff70ef          	jal	ra,8002efb2 <js_parse_expect>
    800370c8:	e80516e3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29031
        if (token_is_pseudo_keyword(s, JS_ATOM_from)) {
    800370cc:	07b00593          	li	a1,123
    800370d0:	8522                	mv	a0,s0
    800370d2:	d9dd00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    800370d6:	c90d                	beqz	a0,80037108 <js_parse_source_element+0x22a>
quickjs-nuttx/quickjs.c:29032
            module_name = js_parse_from_clause(s);
    800370d8:	8522                	mv	a0,s0
    800370da:	b09f80ef          	jal	ra,8002fbe2 <js_parse_from_clause>
    800370de:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:29033
            if (module_name == JS_ATOM_NULL)
    800370e2:	e60989e3          	beqz	s3,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29035
            idx = add_req_module_entry(ctx, m, module_name);
    800370e6:	864e                	mv	a2,s3
    800370e8:	85ca                	mv	a1,s2
    800370ea:	8526                	mv	a0,s1
    800370ec:	c66e60ef          	jal	ra,8001d552 <add_req_module_entry>
    800370f0:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:29036
            JS_FreeAtom(ctx, module_name);
    800370f2:	85ce                	mv	a1,s3
    800370f4:	8526                	mv	a0,s1
    800370f6:	852d40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29041
                me->export_type = JS_EXPORT_TYPE_INDIRECT;
    800370fa:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:29037
            if (idx < 0)
    800370fc:	e40a4ce3          	bltz	s4,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29039
            for(i = first_export; i < m->export_entries_count; i++) {
    80037100:	03092783          	lw	a5,48(s2)
    80037104:	02fac363          	blt	s5,a5,8003712a <js_parse_source_element+0x24c>
js_parse_import():
quickjs-nuttx/quickjs.c:29276
    return js_parse_expect_semi(s);
    80037108:	8522                	mv	a0,s0
    8003710a:	ab8f80ef          	jal	ra,8002f3c2 <js_parse_expect_semi>
    8003710e:	b509                	j	80036f10 <js_parse_source_element+0x32>
js_parse_export():
quickjs-nuttx/quickjs.c:29016
                export_name = JS_DupAtom(ctx, local_name);
    80037110:	85d2                	mv	a1,s4
    80037112:	8526                	mv	a0,s1
    80037114:	ff3d30ef          	jal	ra,8000b106 <JS_DupAtom>
    80037118:	0005099b          	sext.w	s3,a0
    8003711c:	bf9d                	j	80037092 <js_parse_source_element+0x1b4>
quickjs-nuttx/quickjs.c:29026
            if (next_token(s))
    8003711e:	8522                	mv	a0,s0
    80037120:	c66f70ef          	jal	ra,8002e586 <next_token>
    80037124:	ee0505e3          	beqz	a0,8003700e <js_parse_source_element+0x130>
    80037128:	b535                	j	80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29040
                me = &m->export_entries[i];
    8003712a:	02893783          	ld	a5,40(s2)
    8003712e:	005a9693          	slli	a3,s5,0x5
quickjs-nuttx/quickjs.c:29039
            for(i = first_export; i < m->export_entries_count; i++) {
    80037132:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:29040
                me = &m->export_entries[i];
    80037134:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:29041
                me->export_type = JS_EXPORT_TYPE_INDIRECT;
    80037136:	cb98                	sw	a4,16(a5)
quickjs-nuttx/quickjs.c:29042
                me->u.req_module_idx = idx;
    80037138:	0147a023          	sw	s4,0(a5)
quickjs-nuttx/quickjs.c:29039
            for(i = first_export; i < m->export_entries_count; i++) {
    8003713c:	b7d1                	j	80037100 <js_parse_source_element+0x222>
quickjs-nuttx/quickjs.c:29047
        if (token_is_pseudo_keyword(s, JS_ATOM_as)) {
    8003713e:	07a00593          	li	a1,122
    80037142:	8522                	mv	a0,s0
    80037144:	d2bd00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    80037148:	cd25                	beqz	a0,800371c0 <js_parse_source_element+0x2e2>
quickjs-nuttx/quickjs.c:29049
            if (next_token(s))
    8003714a:	8522                	mv	a0,s0
    8003714c:	c3af70ef          	jal	ra,8002e586 <next_token>
    80037150:	e00512e3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29051
            if (!token_is_ident(s->token.val)) {
    80037154:	4c08                	lw	a0,24(s0)
    80037156:	e6bd00ef          	jal	ra,80007fc0 <token_is_ident>
    8003715a:	ec0500e3          	beqz	a0,8003701a <js_parse_source_element+0x13c>
quickjs-nuttx/quickjs.c:29055
            export_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    8003715e:	540c                	lw	a1,40(s0)
    80037160:	8526                	mv	a0,s1
    80037162:	fa5d30ef          	jal	ra,8000b106 <JS_DupAtom>
    80037166:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:29056
            if (next_token(s))
    8003716a:	8522                	mv	a0,s0
    8003716c:	c1af70ef          	jal	ra,8002e586 <next_token>
    80037170:	ec051ce3          	bnez	a0,80037048 <js_parse_source_element+0x16a>
quickjs-nuttx/quickjs.c:29058
            module_name = js_parse_from_clause(s);
    80037174:	8522                	mv	a0,s0
    80037176:	a6df80ef          	jal	ra,8002fbe2 <js_parse_from_clause>
    8003717a:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:29059
            if (module_name == JS_ATOM_NULL)
    8003717e:	ec0a05e3          	beqz	s4,80037048 <js_parse_source_element+0x16a>
quickjs-nuttx/quickjs.c:29061
            idx = add_req_module_entry(ctx, m, module_name);
    80037182:	85ca                	mv	a1,s2
    80037184:	8652                	mv	a2,s4
    80037186:	8526                	mv	a0,s1
    80037188:	bcae60ef          	jal	ra,8001d552 <add_req_module_entry>
    8003718c:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:29062
            JS_FreeAtom(ctx, module_name);
    8003718e:	85d2                	mv	a1,s4
    80037190:	8526                	mv	a0,s1
    80037192:	fb7d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29063
            if (idx < 0)
    80037196:	ea0ac9e3          	bltz	s5,80037048 <js_parse_source_element+0x16a>
add_export_entry():
quickjs-nuttx/quickjs.c:27283
    return add_export_entry2(s->ctx, s, m, local_name, export_name,
    8003719a:	6008                	ld	a0,0(s0)
    8003719c:	864a                	mv	a2,s2
    8003719e:	85a2                	mv	a1,s0
    800371a0:	4785                	li	a5,1
    800371a2:	874e                	mv	a4,s3
    800371a4:	07e00693          	li	a3,126
    800371a8:	b1ff60ef          	jal	ra,8002dcc6 <add_export_entry2>
    800371ac:	892a                	mv	s2,a0
js_parse_export():
quickjs-nuttx/quickjs.c:29067
            JS_FreeAtom(ctx, export_name);
    800371ae:	85ce                	mv	a1,s3
    800371b0:	8526                	mv	a0,s1
    800371b2:	f97d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29068
            if (!me)
    800371b6:	d8090fe3          	beqz	s2,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29070
            me->u.req_module_idx = idx;
    800371ba:	01592023          	sw	s5,0(s2)
    800371be:	b7a9                	j	80037108 <js_parse_source_element+0x22a>
quickjs-nuttx/quickjs.c:29072
            module_name = js_parse_from_clause(s);
    800371c0:	8522                	mv	a0,s0
    800371c2:	a21f80ef          	jal	ra,8002fbe2 <js_parse_from_clause>
    800371c6:	0005099b          	sext.w	s3,a0
quickjs-nuttx/quickjs.c:29073
            if (module_name == JS_ATOM_NULL)
    800371ca:	d80985e3          	beqz	s3,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29075
            idx = add_req_module_entry(ctx, m, module_name);
    800371ce:	85ca                	mv	a1,s2
    800371d0:	864e                	mv	a2,s3
    800371d2:	8526                	mv	a0,s1
    800371d4:	b7ee60ef          	jal	ra,8001d552 <add_req_module_entry>
    800371d8:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:29076
            JS_FreeAtom(ctx, module_name);
    800371da:	85ce                	mv	a1,s3
    800371dc:	8526                	mv	a0,s1
    800371de:	f6bd30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29077
            if (idx < 0)
    800371e2:	d60a49e3          	bltz	s4,80036f54 <js_parse_source_element+0x76>
add_star_export_entry():
quickjs-nuttx/quickjs.c:27292
    if (js_resize_array(ctx, (void **)&m->star_export_entries,
    800371e6:	04092703          	lw	a4,64(s2)
    800371ea:	04490693          	addi	a3,s2,68
    800371ee:	4611                	li	a2,4
    800371f0:	2705                	addiw	a4,a4,1
    800371f2:	03890593          	addi	a1,s2,56
    800371f6:	8526                	mv	a0,s1
    800371f8:	fb4e50ef          	jal	ra,8001c9ac <js_resize_array>
    800371fc:	d4051ce3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:27297
    se = &m->star_export_entries[m->star_export_entries_count++];
    80037200:	04092783          	lw	a5,64(s2)
    80037204:	03893703          	ld	a4,56(s2)
    80037208:	0017869b          	addiw	a3,a5,1
quickjs-nuttx/quickjs.c:27298
    se->req_module_idx = req_module_idx;
    8003720c:	078a                	slli	a5,a5,0x2
quickjs-nuttx/quickjs.c:27297
    se = &m->star_export_entries[m->star_export_entries_count++];
    8003720e:	04d92023          	sw	a3,64(s2)
quickjs-nuttx/quickjs.c:27298
    se->req_module_idx = req_module_idx;
    80037212:	97ba                	add	a5,a5,a4
    80037214:	0147a023          	sw	s4,0(a5)
quickjs-nuttx/quickjs.c:27299
    return 0;
    80037218:	bdc5                	j	80037108 <js_parse_source_element+0x22a>
js_parse_export():
quickjs-nuttx/quickjs.c:29084
        if (s->token.val == TOK_CLASS) {
    8003721a:	4c1c                	lw	a5,24(s0)
    8003721c:	fca00713          	li	a4,-54
    80037220:	00e79863          	bne	a5,a4,80037230 <js_parse_source_element+0x352>
quickjs-nuttx/quickjs.c:29085
            return js_parse_class(s, FALSE, JS_PARSE_EXPORT_DEFAULT);
    80037224:	4609                	li	a2,2
    80037226:	4581                	li	a1,0
    80037228:	8522                	mv	a0,s0
    8003722a:	fe5fd0ef          	jal	ra,8003520e <js_parse_class>
    8003722e:	b1cd                	j	80036f10 <js_parse_source_element+0x32>
quickjs-nuttx/quickjs.c:29086
        } else if (s->token.val == TOK_FUNCTION ||
    80037230:	fc700493          	li	s1,-57
    80037234:	00979563          	bne	a5,s1,8003723e <js_parse_source_element+0x360>
quickjs-nuttx/quickjs.c:29089
            return js_parse_function_decl2(s, JS_PARSE_FUNC_STATEMENT,
    80037238:	4881                	li	a7,0
    8003723a:	4809                	li	a6,2
    8003723c:	b3b1                	j	80036f88 <js_parse_source_element+0xaa>
quickjs-nuttx/quickjs.c:29087
                   (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    8003723e:	08600593          	li	a1,134
    80037242:	8522                	mv	a0,s0
    80037244:	c2bd00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:29086
        } else if (s->token.val == TOK_FUNCTION ||
    80037248:	c519                	beqz	a0,80037256 <js_parse_source_element+0x378>
quickjs-nuttx/quickjs.c:29088
                    peek_token(s, TRUE) == TOK_FUNCTION)) {
    8003724a:	4585                	li	a1,1
    8003724c:	8522                	mv	a0,s0
    8003724e:	a1fd20ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:29087
                   (token_is_pseudo_keyword(s, JS_ATOM_async) &&
    80037252:	fe9503e3          	beq	a0,s1,80037238 <js_parse_source_element+0x35a>
quickjs-nuttx/quickjs.c:29094
            if (js_parse_assign_expr(s))
    80037256:	8522                	mv	a0,s0
    80037258:	d7ffd0ef          	jal	ra,80034fd6 <js_parse_assign_expr>
    8003725c:	ce051ce3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29098
        set_object_name(s, JS_ATOM_default);
    80037260:	45d9                	li	a1,22
    80037262:	8522                	mv	a0,s0
    80037264:	90ed40ef          	jal	ra,8000b372 <set_object_name>
quickjs-nuttx/quickjs.c:29103
        if (define_var(s, s->cur_func, local_name, JS_VAR_DEF_LET) < 0)
    80037268:	742c                	ld	a1,104(s0)
    8003726a:	4685                	li	a3,1
    8003726c:	07d00613          	li	a2,125
    80037270:	8522                	mv	a0,s0
    80037272:	e2cf80ef          	jal	ra,8002f89e <define_var>
    80037276:	cc054fe3          	bltz	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29105
        emit_op(s, OP_scope_put_var_init);
    8003727a:	0bf00593          	li	a1,191
    8003727e:	8522                	mv	a0,s0
    80037280:	e77d10ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:29106
        emit_atom(s, local_name);
    80037284:	07d00593          	li	a1,125
    80037288:	8522                	mv	a0,s0
    8003728a:	ea1d30ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:29107
        emit_u16(s, 0);
    8003728e:	4581                	li	a1,0
    80037290:	8522                	mv	a0,s0
    80037292:	d33d10ef          	jal	ra,80008fc4 <emit_u16>
add_export_entry():
quickjs-nuttx/quickjs.c:27283
    return add_export_entry2(s->ctx, s, m, local_name, export_name,
    80037296:	6008                	ld	a0,0(s0)
    80037298:	4781                	li	a5,0
    8003729a:	4759                	li	a4,22
    8003729c:	07d00693          	li	a3,125
    800372a0:	864a                	mv	a2,s2
    800372a2:	85a2                	mv	a1,s0
    800372a4:	a23f60ef          	jal	ra,8002dcc6 <add_export_entry2>
js_parse_export():
quickjs-nuttx/quickjs.c:29109
        if (!add_export_entry(s, m, local_name, JS_ATOM_default,
    800372a8:	e60510e3          	bnez	a0,80037108 <js_parse_source_element+0x22a>
    800372ac:	b165                	j	80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29116
        return js_parse_var(s, TRUE, tok, TRUE);
    800372ae:	4685                	li	a3,1
    800372b0:	864e                	mv	a2,s3
    800372b2:	4585                	li	a1,1
    800372b4:	8522                	mv	a0,s0
    800372b6:	d27fd0ef          	jal	ra,80034fdc <js_parse_var>
    800372ba:	b999                	j	80036f10 <js_parse_source_element+0x32>
js_parse_source_element():
quickjs-nuttx/quickjs.c:29294
    } else if (s->token.val == TOK_IMPORT && fd->module &&
    800372bc:	fcf00713          	li	a4,-49
    800372c0:	24e79663          	bne	a5,a4,8003750c <js_parse_source_element+0x62e>
quickjs-nuttx/quickjs.c:29294 (discriminator 1)
    800372c4:	2184b783          	ld	a5,536(s1)
    800372c8:	24078263          	beqz	a5,8003750c <js_parse_source_element+0x62e>
quickjs-nuttx/quickjs.c:29295 (discriminator 2)
               ((tok = peek_token(s, FALSE)) != '(' && tok != '.'))  {
    800372cc:	4581                	li	a1,0
    800372ce:	8522                	mv	a0,s0
    800372d0:	99dd20ef          	jal	ra,80009c6c <peek_token>
quickjs-nuttx/quickjs.c:29294 (discriminator 2)
    } else if (s->token.val == TOK_IMPORT && fd->module &&
    800372d4:	02800793          	li	a5,40
    800372d8:	22f50a63          	beq	a0,a5,8003750c <js_parse_source_element+0x62e>
quickjs-nuttx/quickjs.c:29295
               ((tok = peek_token(s, FALSE)) != '(' && tok != '.'))  {
    800372dc:	02e00793          	li	a5,46
    800372e0:	22f50663          	beq	a0,a5,8003750c <js_parse_source_element+0x62e>
js_parse_import():
quickjs-nuttx/quickjs.c:29167
    JSModuleDef *m = s->cur_func->module;
    800372e4:	743c                	ld	a5,104(s0)
quickjs-nuttx/quickjs.c:29171
    if (next_token(s))
    800372e6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:29166
    JSContext *ctx = s->ctx;
    800372e8:	00043903          	ld	s2,0(s0)
quickjs-nuttx/quickjs.c:29167
    JSModuleDef *m = s->cur_func->module;
    800372ec:	2187b983          	ld	s3,536(a5)
quickjs-nuttx/quickjs.c:29171
    if (next_token(s))
    800372f0:	a96f70ef          	jal	ra,8002e586 <next_token>
    800372f4:	c60510e3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29175
    if (s->token.val == TOK_STRING) {
    800372f8:	4c1c                	lw	a5,24(s0)
    800372fa:	f8100713          	li	a4,-127
quickjs-nuttx/quickjs.c:29174
    first_import = m->import_entries_count;
    800372fe:	0509aa03          	lw	s4,80(s3)
quickjs-nuttx/quickjs.c:29175
    if (s->token.val == TOK_STRING) {
    80037302:	02e79363          	bne	a5,a4,80037328 <js_parse_source_element+0x44a>
quickjs-nuttx/quickjs.c:29176
        module_name = JS_ValueToAtom(ctx, s->token.u.str.str);
    80037306:	740c                	ld	a1,40(s0)
    80037308:	7810                	ld	a2,48(s0)
    8003730a:	854a                	mv	a0,s2
    8003730c:	d06f10ef          	jal	ra,80028812 <JS_ValueToAtom>
    80037310:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:29177
        if (module_name == JS_ATOM_NULL)
    80037314:	c40480e3          	beqz	s1,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29179
        if (next_token(s)) {
    80037318:	8522                	mv	a0,s0
    8003731a:	a6cf70ef          	jal	ra,8002e586 <next_token>
    8003731e:	0c050e63          	beqz	a0,800373fa <js_parse_source_element+0x51c>
quickjs-nuttx/quickjs.c:29180
            JS_FreeAtom(ctx, module_name);
    80037322:	85a6                	mv	a1,s1
    80037324:	854a                	mv	a0,s2
    80037326:	b31d                	j	8003704c <js_parse_source_element+0x16e>
quickjs-nuttx/quickjs.c:29184
        if (s->token.val == TOK_IDENT) {
    80037328:	f8300713          	li	a4,-125
    8003732c:	02e78763          	beq	a5,a4,8003735a <js_parse_source_element+0x47c>
quickjs-nuttx/quickjs.c:29203
        if (s->token.val == '*') {
    80037330:	4c1c                	lw	a5,24(s0)
    80037332:	02a00713          	li	a4,42
    80037336:	0ee79c63          	bne	a5,a4,8003742e <js_parse_source_element+0x550>
quickjs-nuttx/quickjs.c:29205
            if (next_token(s))
    8003733a:	8522                	mv	a0,s0
    8003733c:	a4af70ef          	jal	ra,8002e586 <next_token>
    80037340:	c0051ae3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29207
            if (!token_is_pseudo_keyword(s, JS_ATOM_as))
    80037344:	07a00593          	li	a1,122
    80037348:	8522                	mv	a0,s0
    8003734a:	b25d00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    8003734e:	ed29                	bnez	a0,800373a8 <js_parse_source_element+0x4ca>
quickjs-nuttx/quickjs.c:29208
                return js_parse_error(s, "expecting 'as'");
    80037350:	00036597          	auipc	a1,0x36
    80037354:	9e858593          	addi	a1,a1,-1560 # 8006cd38 <qjsc_repl+0x7788>
    80037358:	b949                	j	80036fea <js_parse_source_element+0x10c>
quickjs-nuttx/quickjs.c:29185
            if (s->token.u.ident.is_reserved) {
    8003735a:	581c                	lw	a5,48(s0)
    8003735c:	c789                	beqz	a5,80037366 <js_parse_source_element+0x488>
quickjs-nuttx/quickjs.c:29186
                return js_parse_error_reserved_identifier(s);
    8003735e:	8522                	mv	a0,s0
    80037360:	c10f80ef          	jal	ra,8002f770 <js_parse_error_reserved_identifier>
    80037364:	b675                	j	80036f10 <js_parse_source_element+0x32>
quickjs-nuttx/quickjs.c:29189
            local_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80037366:	540c                	lw	a1,40(s0)
    80037368:	854a                	mv	a0,s2
    8003736a:	d9dd30ef          	jal	ra,8000b106 <JS_DupAtom>
    8003736e:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:29191
            if (next_token(s))
    80037372:	8522                	mv	a0,s0
    80037374:	a12f70ef          	jal	ra,8002e586 <next_token>
    80037378:	14051063          	bnez	a0,800374b8 <js_parse_source_element+0x5da>
quickjs-nuttx/quickjs.c:29193
            if (add_import(s, m, local_name, import_name))
    8003737c:	46d9                	li	a3,22
    8003737e:	8626                	mv	a2,s1
    80037380:	85ce                	mv	a1,s3
    80037382:	8522                	mv	a0,s0
    80037384:	8cbf80ef          	jal	ra,8002fc4e <add_import>
    80037388:	12051863          	bnez	a0,800374b8 <js_parse_source_element+0x5da>
quickjs-nuttx/quickjs.c:29195
            JS_FreeAtom(ctx, local_name);
    8003738c:	85a6                	mv	a1,s1
    8003738e:	854a                	mv	a0,s2
    80037390:	db9d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29197
            if (s->token.val != ',')
    80037394:	4c18                	lw	a4,24(s0)
    80037396:	02c00793          	li	a5,44
    8003739a:	04f71963          	bne	a4,a5,800373ec <js_parse_source_element+0x50e>
quickjs-nuttx/quickjs.c:29199
            if (next_token(s))
    8003739e:	8522                	mv	a0,s0
    800373a0:	9e6f70ef          	jal	ra,8002e586 <next_token>
    800373a4:	d551                	beqz	a0,80037330 <js_parse_source_element+0x452>
    800373a6:	b67d                	j	80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29209
            if (next_token(s))
    800373a8:	8522                	mv	a0,s0
    800373aa:	9dcf70ef          	jal	ra,8002e586 <next_token>
    800373ae:	ba0513e3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29211
            if (!token_is_ident(s->token.val)) {
    800373b2:	4c08                	lw	a0,24(s0)
    800373b4:	c0dd00ef          	jal	ra,80007fc0 <token_is_ident>
    800373b8:	c60501e3          	beqz	a0,8003701a <js_parse_source_element+0x13c>
quickjs-nuttx/quickjs.c:29215
            local_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    800373bc:	540c                	lw	a1,40(s0)
    800373be:	854a                	mv	a0,s2
    800373c0:	d47d30ef          	jal	ra,8000b106 <JS_DupAtom>
    800373c4:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:29217
            if (next_token(s))
    800373c8:	8522                	mv	a0,s0
    800373ca:	9bcf70ef          	jal	ra,8002e586 <next_token>
    800373ce:	0e051763          	bnez	a0,800374bc <js_parse_source_element+0x5de>
quickjs-nuttx/quickjs.c:29219
            if (add_import(s, m, local_name, import_name))
    800373d2:	07e00693          	li	a3,126
    800373d6:	8626                	mv	a2,s1
    800373d8:	85ce                	mv	a1,s3
    800373da:	8522                	mv	a0,s0
    800373dc:	873f80ef          	jal	ra,8002fc4e <add_import>
    800373e0:	0c051e63          	bnez	a0,800374bc <js_parse_source_element+0x5de>
quickjs-nuttx/quickjs.c:29221
            JS_FreeAtom(ctx, local_name);
    800373e4:	85a6                	mv	a1,s1
    800373e6:	854a                	mv	a0,s2
    800373e8:	d61d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29265
        module_name = js_parse_from_clause(s);
    800373ec:	8522                	mv	a0,s0
    800373ee:	ff4f80ef          	jal	ra,8002fbe2 <js_parse_from_clause>
    800373f2:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:29266
        if (module_name == JS_ATOM_NULL)
    800373f6:	b4048fe3          	beqz	s1,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29269
    idx = add_req_module_entry(ctx, m, module_name);
    800373fa:	8626                	mv	a2,s1
    800373fc:	85ce                	mv	a1,s3
    800373fe:	854a                	mv	a0,s2
    80037400:	952e60ef          	jal	ra,8001d552 <add_req_module_entry>
    80037404:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:29270
    JS_FreeAtom(ctx, module_name);
    80037406:	85a6                	mv	a1,s1
    80037408:	854a                	mv	a0,s2
    8003740a:	d3fd30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29274
        m->import_entries[i].req_module_idx = idx;
    8003740e:	4731                	li	a4,12
quickjs-nuttx/quickjs.c:29271
    if (idx < 0)
    80037410:	b40ac2e3          	bltz	s5,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29273
    for(i = first_import; i < m->import_entries_count; i++)
    80037414:	0509a783          	lw	a5,80(s3)
    80037418:	cefa58e3          	bge	s4,a5,80037108 <js_parse_source_element+0x22a>
quickjs-nuttx/quickjs.c:29274
        m->import_entries[i].req_module_idx = idx;
    8003741c:	02ea06b3          	mul	a3,s4,a4
    80037420:	0489b783          	ld	a5,72(s3)
quickjs-nuttx/quickjs.c:29273
    for(i = first_import; i < m->import_entries_count; i++)
    80037424:	2a05                	addiw	s4,s4,1
quickjs-nuttx/quickjs.c:29274
        m->import_entries[i].req_module_idx = idx;
    80037426:	97b6                	add	a5,a5,a3
    80037428:	0157a423          	sw	s5,8(a5)
quickjs-nuttx/quickjs.c:29273
    for(i = first_import; i < m->import_entries_count; i++)
    8003742c:	b7e5                	j	80037414 <js_parse_source_element+0x536>
quickjs-nuttx/quickjs.c:29222
        } else if (s->token.val == '{') {
    8003742e:	07b00713          	li	a4,123
    80037432:	fae79de3          	bne	a5,a4,800373ec <js_parse_source_element+0x50e>
quickjs-nuttx/quickjs.c:29223
            if (next_token(s))
    80037436:	8522                	mv	a0,s0
    80037438:	94ef70ef          	jal	ra,8002e586 <next_token>
    8003743c:	b0051ce3          	bnez	a0,80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29226
            while (s->token.val != '}') {
    80037440:	07d00b13          	li	s6,125
quickjs-nuttx/quickjs.c:29256
                if (s->token.val != ',')
    80037444:	02c00b93          	li	s7,44
quickjs-nuttx/quickjs.c:29226
            while (s->token.val != '}') {
    80037448:	4c08                	lw	a0,24(s0)
    8003744a:	0b650463          	beq	a0,s6,800374f2 <js_parse_source_element+0x614>
quickjs-nuttx/quickjs.c:29227
                if (!token_is_ident(s->token.val)) {
    8003744e:	b73d00ef          	jal	ra,80007fc0 <token_is_ident>
    80037452:	bc0504e3          	beqz	a0,8003701a <js_parse_source_element+0x13c>
quickjs-nuttx/quickjs.c:29231
                import_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80037456:	540c                	lw	a1,40(s0)
    80037458:	854a                	mv	a0,s2
    8003745a:	cadd30ef          	jal	ra,8000b106 <JS_DupAtom>
    8003745e:	00050a9b          	sext.w	s5,a0
quickjs-nuttx/quickjs.c:29233
                if (next_token(s))
    80037462:	8522                	mv	a0,s0
    80037464:	922f70ef          	jal	ra,8002e586 <next_token>
    80037468:	e515                	bnez	a0,80037494 <js_parse_source_element+0x5b6>
quickjs-nuttx/quickjs.c:29235
                if (token_is_pseudo_keyword(s, JS_ATOM_as)) {
    8003746a:	07a00593          	li	a1,122
    8003746e:	8522                	mv	a0,s0
    80037470:	9ffd00ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    80037474:	c539                	beqz	a0,800374c2 <js_parse_source_element+0x5e4>
quickjs-nuttx/quickjs.c:29236
                    if (next_token(s))
    80037476:	8522                	mv	a0,s0
    80037478:	90ef70ef          	jal	ra,8002e586 <next_token>
    8003747c:	ed01                	bnez	a0,80037494 <js_parse_source_element+0x5b6>
quickjs-nuttx/quickjs.c:29238
                    if (!token_is_ident(s->token.val)) {
    8003747e:	4c08                	lw	a0,24(s0)
    80037480:	b41d00ef          	jal	ra,80007fc0 <token_is_ident>
    80037484:	e911                	bnez	a0,80037498 <js_parse_source_element+0x5ba>
quickjs-nuttx/quickjs.c:29239
                        js_parse_error(s, "identifier expected");
    80037486:	00035597          	auipc	a1,0x35
    8003748a:	72258593          	addi	a1,a1,1826 # 8006cba8 <qjsc_repl+0x75f8>
    8003748e:	8522                	mv	a0,s0
    80037490:	fe2f60ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:29232
                local_name = JS_ATOM_NULL;
    80037494:	4481                	li	s1,0
    80037496:	a819                	j	800374ac <js_parse_source_element+0x5ce>
quickjs-nuttx/quickjs.c:29242
                    local_name = JS_DupAtom(ctx, s->token.u.ident.atom);
    80037498:	540c                	lw	a1,40(s0)
    8003749a:	854a                	mv	a0,s2
    8003749c:	c6bd30ef          	jal	ra,8000b106 <JS_DupAtom>
    800374a0:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:29243
                    if (next_token(s)) {
    800374a4:	8522                	mv	a0,s0
    800374a6:	8e0f70ef          	jal	ra,8002e586 <next_token>
    800374aa:	c115                	beqz	a0,800374ce <js_parse_source_element+0x5f0>
quickjs-nuttx/quickjs.c:29245
                        JS_FreeAtom(ctx, local_name);
    800374ac:	85a6                	mv	a1,s1
    800374ae:	854a                	mv	a0,s2
    800374b0:	c99d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29246
                        JS_FreeAtom(ctx, import_name);
    800374b4:	85d6                	mv	a1,s5
    800374b6:	b5bd                	j	80037324 <js_parse_source_element+0x446>
quickjs-nuttx/quickjs.c:29190
            import_name = JS_ATOM_default;
    800374b8:	4ad9                	li	s5,22
    800374ba:	bfcd                	j	800374ac <js_parse_source_element+0x5ce>
quickjs-nuttx/quickjs.c:29216
            import_name = JS_ATOM__star_;
    800374bc:	07e00a93          	li	s5,126
    800374c0:	b7f5                	j	800374ac <js_parse_source_element+0x5ce>
quickjs-nuttx/quickjs.c:29250
                    local_name = JS_DupAtom(ctx, import_name);
    800374c2:	85d6                	mv	a1,s5
    800374c4:	854a                	mv	a0,s2
    800374c6:	c41d30ef          	jal	ra,8000b106 <JS_DupAtom>
    800374ca:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:29252
                if (add_import(s, m, local_name, import_name))
    800374ce:	86d6                	mv	a3,s5
    800374d0:	8626                	mv	a2,s1
    800374d2:	85ce                	mv	a1,s3
    800374d4:	8522                	mv	a0,s0
    800374d6:	f78f80ef          	jal	ra,8002fc4e <add_import>
    800374da:	f969                	bnez	a0,800374ac <js_parse_source_element+0x5ce>
quickjs-nuttx/quickjs.c:29254
                JS_FreeAtom(ctx, local_name);
    800374dc:	85a6                	mv	a1,s1
    800374de:	854a                	mv	a0,s2
    800374e0:	c69d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29255
                JS_FreeAtom(ctx, import_name);
    800374e4:	85d6                	mv	a1,s5
    800374e6:	854a                	mv	a0,s2
    800374e8:	c61d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29256
                if (s->token.val != ',')
    800374ec:	4c1c                	lw	a5,24(s0)
    800374ee:	01778a63          	beq	a5,s7,80037502 <js_parse_source_element+0x624>
quickjs-nuttx/quickjs.c:29261
            if (js_parse_expect(s, '}'))
    800374f2:	07d00593          	li	a1,125
    800374f6:	8522                	mv	a0,s0
    800374f8:	abbf70ef          	jal	ra,8002efb2 <js_parse_expect>
    800374fc:	ee0508e3          	beqz	a0,800373ec <js_parse_source_element+0x50e>
    80037500:	bc91                	j	80036f54 <js_parse_source_element+0x76>
quickjs-nuttx/quickjs.c:29258
                if (next_token(s))
    80037502:	8522                	mv	a0,s0
    80037504:	882f70ef          	jal	ra,8002e586 <next_token>
    80037508:	d121                	beqz	a0,80037448 <js_parse_source_element+0x56a>
    8003750a:	b4a9                	j	80036f54 <js_parse_source_element+0x76>
js_parse_source_element():
quickjs-nuttx/quickjs.c:29301
        if (js_parse_statement_or_decl(s, DECL_MASK_ALL))
    8003750c:	459d                	li	a1,7
    8003750e:	8522                	mv	a0,s0
    80037510:	f06fe0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
    80037514:	baf5                	j	80036f10 <js_parse_source_element+0x32>

0000000080037516 <js_parse_block>:
js_parse_block():
quickjs-nuttx/quickjs.c:25974
{
    80037516:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:25975
    if (js_parse_expect(s, '{'))
    80037518:	07b00593          	li	a1,123
quickjs-nuttx/quickjs.c:25974
{
    8003751c:	e822                	sd	s0,16(sp)
    8003751e:	ec06                	sd	ra,24(sp)
    80037520:	e426                	sd	s1,8(sp)
    80037522:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:25975
    if (js_parse_expect(s, '{'))
    80037524:	a8ff70ef          	jal	ra,8002efb2 <js_parse_expect>
    80037528:	c519                	beqz	a0,80037536 <js_parse_block+0x20>
quickjs-nuttx/quickjs.c:25976
        return -1;
    8003752a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:25990
}
    8003752c:	60e2                	ld	ra,24(sp)
    8003752e:	6442                	ld	s0,16(sp)
    80037530:	64a2                	ld	s1,8(sp)
    80037532:	6105                	addi	sp,sp,32
    80037534:	8082                	ret
quickjs-nuttx/quickjs.c:25977
    if (s->token.val != '}') {
    80037536:	4c18                	lw	a4,24(s0)
    80037538:	07d00793          	li	a5,125
    8003753c:	02f70263          	beq	a4,a5,80037560 <js_parse_block+0x4a>
quickjs-nuttx/quickjs.c:25978
        push_scope(s);
    80037540:	8522                	mv	a0,s0
    80037542:	a86e60ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:25982
            if (s->token.val == '}')
    80037546:	07d00493          	li	s1,125
quickjs-nuttx/quickjs.c:25980
            if (js_parse_statement_or_decl(s, DECL_MASK_ALL))
    8003754a:	459d                	li	a1,7
    8003754c:	8522                	mv	a0,s0
    8003754e:	ec8fe0ef          	jal	ra,80035c16 <js_parse_statement_or_decl>
    80037552:	fd61                	bnez	a0,8003752a <js_parse_block+0x14>
quickjs-nuttx/quickjs.c:25982
            if (s->token.val == '}')
    80037554:	4c1c                	lw	a5,24(s0)
    80037556:	fe979ae3          	bne	a5,s1,8003754a <js_parse_block+0x34>
quickjs-nuttx/quickjs.c:25985
        pop_scope(s);
    8003755a:	8522                	mv	a0,s0
    8003755c:	c97d10ef          	jal	ra,800091f2 <pop_scope>
quickjs-nuttx/quickjs.c:25987
    if (next_token(s))
    80037560:	8522                	mv	a0,s0
    80037562:	824f70ef          	jal	ra,8002e586 <next_token>
    80037566:	00a03533          	snez	a0,a0
    8003756a:	40a00533          	neg	a0,a0
    8003756e:	bf7d                	j	8003752c <js_parse_block+0x16>

0000000080037570 <js_global_operators>:
js_global_operators():
quickjs-nuttx/quickjs.c:50479
{
    80037570:	7119                	addi	sp,sp,-128
    80037572:	f8a2                	sd	s0,112(sp)
    80037574:	f4a6                	sd	s1,104(sp)
    80037576:	f0ca                	sd	s2,96(sp)
    80037578:	fc86                	sd	ra,120(sp)
    8003757a:	842a                	mv	s0,a0
    8003757c:	8936                	mv	s2,a3
    8003757e:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:50482
    func_obj = JS_UNDEFINED;
    80037580:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:50483
    proto = JS_NewObject(ctx);
    80037582:	aa3e40ef          	jal	ra,8001c024 <JS_NewObject>
    80037586:	fc2e                	sd	a1,56(sp)
    80037588:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:50484
    if (JS_IsException(proto))
    8003758a:	2581                	sext.w	a1,a1
    8003758c:	4499                	li	s1,6
    8003758e:	6622                	ld	a2,8(sp)
    80037590:	00959c63          	bne	a1,s1,800375a8 <js_global_operators+0x38>
quickjs-nuttx/quickjs.c:50485
        return JS_EXCEPTION;
    80037594:	e882                	sd	zero,80(sp)
    80037596:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:50503 (discriminator 1)
}
    80037598:	70e6                	ld	ra,120(sp)
    8003759a:	7446                	ld	s0,112(sp)
    8003759c:	6546                	ld	a0,80(sp)
    8003759e:	65e6                	ld	a1,88(sp)
    800375a0:	74a6                	ld	s1,104(sp)
    800375a2:	7906                	ld	s2,96(sp)
    800375a4:	6109                	addi	sp,sp,128
    800375a6:	8082                	ret
quickjs-nuttx/quickjs.c:50486
    opset_obj = js_operators_create_internal(ctx, argc, argv, FALSE);
    800375a8:	4681                	li	a3,0
    800375aa:	85ca                	mv	a1,s2
    800375ac:	8522                	mv	a0,s0
    800375ae:	d49e70ef          	jal	ra,8001f2f6 <js_operators_create_internal>
quickjs-nuttx/quickjs.c:50487
    if (JS_IsException(opset_obj))
    800375b2:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:50486
    opset_obj = js_operators_create_internal(ctx, argc, argv, FALSE);
    800375b6:	872a                	mv	a4,a0
    800375b8:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:50487
    if (JS_IsException(opset_obj))
    800375ba:	06968263          	beq	a3,s1,8003761e <js_global_operators+0xae>
quickjs-nuttx/quickjs.c:50489
    JS_DefinePropertyValue(ctx, proto, JS_ATOM_Symbol_operatorSet,
    800375be:	75c2                	ld	a1,48(sp)
    800375c0:	7662                	ld	a2,56(sp)
    800375c2:	480d                	li	a6,3
    800375c4:	0e200693          	li	a3,226
    800375c8:	8522                	mv	a0,s0
    800375ca:	c63e00ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:50491
    func_obj = JS_NewCFunction2(ctx, js_dummy_operators_ctor, "Operators",
    800375ce:	4781                	li	a5,0
    800375d0:	00035617          	auipc	a2,0x35
    800375d4:	77860613          	addi	a2,a2,1912 # 8006cd48 <qjsc_repl+0x7798>
    800375d8:	4709                	li	a4,2
    800375da:	4681                	li	a3,0
    800375dc:	fffe5597          	auipc	a1,0xfffe5
    800375e0:	8b858593          	addi	a1,a1,-1864 # 8001be94 <js_dummy_operators_ctor>
    800375e4:	8522                	mv	a0,s0
    800375e6:	d1cf90ef          	jal	ra,80030b02 <JS_NewCFunction2>
    800375ea:	f02a                	sd	a0,32(sp)
    800375ec:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:50493
    if (JS_IsException(func_obj))
    800375ee:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:50491
    func_obj = JS_NewCFunction2(ctx, js_dummy_operators_ctor, "Operators",
    800375f2:	862e                	mv	a2,a1
    800375f4:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:50493
    if (JS_IsException(func_obj))
    800375f6:	02978563          	beq	a5,s1,80037620 <js_global_operators+0xb0>
quickjs-nuttx/quickjs.c:50495
    JS_SetConstructor2(ctx, func_obj, proto,
    800375fa:	76c2                	ld	a3,48(sp)
    800375fc:	7762                	ld	a4,56(sp)
    800375fe:	4781                	li	a5,0
    80037600:	85aa                	mv	a1,a0
    80037602:	480d                	li	a6,3
    80037604:	8522                	mv	a0,s0
    80037606:	cd9f90ef          	jal	ra,800312de <JS_SetConstructor2>
quickjs-nuttx/quickjs.c:50497
    JS_FreeValue(ctx, proto);
    8003760a:	75c2                	ld	a1,48(sp)
    8003760c:	7662                	ld	a2,56(sp)
    8003760e:	8522                	mv	a0,s0
    80037610:	98ed40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50498
    return func_obj;
    80037614:	7782                	ld	a5,32(sp)
    80037616:	e8be                	sd	a5,80(sp)
    80037618:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:50502
    return JS_EXCEPTION;
    8003761a:	ecbe                	sd	a5,88(sp)
    8003761c:	bfb5                	j	80037598 <js_global_operators+0x28>
quickjs-nuttx/quickjs.c:50482
    func_obj = JS_UNDEFINED;
    8003761e:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:50500
    JS_FreeValue(ctx, proto);
    80037620:	75c2                	ld	a1,48(sp)
    80037622:	7662                	ld	a2,56(sp)
    80037624:	8522                	mv	a0,s0
    80037626:	978d40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50501
    JS_FreeValue(ctx, func_obj);
    8003762a:	7582                	ld	a1,32(sp)
    8003762c:	864a                	mv	a2,s2
    8003762e:	8522                	mv	a0,s0
    80037630:	96ed40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50502
    return JS_EXCEPTION;
    80037634:	4799                	li	a5,6
    80037636:	e882                	sd	zero,80(sp)
    80037638:	b7cd                	j	8003761a <js_global_operators+0xaa>

000000008003763a <js_string_constructor>:
js_string_constructor():
quickjs-nuttx/quickjs.c:41222
{
    8003763a:	7135                	addi	sp,sp,-160
    8003763c:	e526                	sd	s1,136(sp)
    8003763e:	e14a                	sd	s2,128(sp)
    80037640:	ed06                	sd	ra,152(sp)
    80037642:	e922                	sd	s0,144(sp)
    80037644:	e82e                	sd	a1,16(sp)
    80037646:	ec32                	sd	a2,24(sp)
    80037648:	84aa                	mv	s1,a0
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8003764a:	0006091b          	sext.w	s2,a2
js_string_constructor():
quickjs-nuttx/quickjs.c:41224
    if (argc == 0) {
    8003764e:	eea5                	bnez	a3,800376c6 <js_string_constructor+0x8c>
quickjs-nuttx/quickjs.c:41225
        val = JS_AtomToString(ctx, JS_ATOM_empty_string);
    80037650:	02f00593          	li	a1,47
    80037654:	c7ee80ef          	jal	ra,8001fad2 <JS_AtomToString>
    80037658:	842a                	mv	s0,a0
    8003765a:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:41236
    if (!JS_IsUndefined(new_target)) {
    8003765c:	478d                	li	a5,3
    8003765e:	0af90a63          	beq	s2,a5,80037712 <js_string_constructor+0xd8>
quickjs-nuttx/quickjs.c:41239
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_STRING);
    80037662:	6662                	ld	a2,24(sp)
    80037664:	65c2                	ld	a1,16(sp)
    80037666:	4695                	li	a3,5
    80037668:	8526                	mv	a0,s1
    8003766a:	e43a                	sd	a4,8(sp)
    8003766c:	e10e40ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80037670:	f82a                	sd	a0,48(sp)
    80037672:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:41240
        if (!JS_IsException(obj)) {
    80037674:	0005869b          	sext.w	a3,a1
    80037678:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:41239
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_STRING);
    8003767a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:41240
        if (!JS_IsException(obj)) {
    8003767c:	02f68963          	beq	a3,a5,800376ae <js_string_constructor+0x74>
quickjs-nuttx/quickjs.c:41241
            JS_SetObjectData(ctx, obj, val);
    80037680:	6722                	ld	a4,8(sp)
    80037682:	85aa                	mv	a1,a0
    80037684:	86a2                	mv	a3,s0
    80037686:	8526                	mv	a0,s1
    80037688:	f43a                	sd	a4,40(sp)
    8003768a:	f022                	sd	s0,32(sp)
    8003768c:	914e20ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:41242
            JS_DefinePropertyValue(ctx, obj, JS_ATOM_length, JS_NewInt32(ctx, p1->len), 0);
    80037690:	405c                	lw	a5,4(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80037692:	f882                	sd	zero,112(sp)
js_string_constructor():
quickjs-nuttx/quickjs.c:41242
    80037694:	75c2                	ld	a1,48(sp)
    80037696:	1786                	slli	a5,a5,0x21
    80037698:	9385                	srli	a5,a5,0x21
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003769a:	d8be                	sw	a5,112(sp)
js_string_constructor():
quickjs-nuttx/quickjs.c:41242
    8003769c:	7746                	ld	a4,112(sp)
    8003769e:	7662                	ld	a2,56(sp)
    800376a0:	4801                	li	a6,0
    800376a2:	4781                	li	a5,0
    800376a4:	03000693          	li	a3,48
    800376a8:	8526                	mv	a0,s1
    800376aa:	b83e00ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:41244
        return obj;
    800376ae:	77c2                	ld	a5,48(sp)
    800376b0:	e8be                	sd	a5,80(sp)
    800376b2:	77e2                	ld	a5,56(sp)
    800376b4:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:41248
}
    800376b6:	60ea                	ld	ra,152(sp)
    800376b8:	644a                	ld	s0,144(sp)
    800376ba:	6546                	ld	a0,80(sp)
    800376bc:	65e6                	ld	a1,88(sp)
    800376be:	64aa                	ld	s1,136(sp)
    800376c0:	690a                	ld	s2,128(sp)
    800376c2:	610d                	addi	sp,sp,160
    800376c4:	8082                	ret
quickjs-nuttx/quickjs.c:41227
        if (JS_IsUndefined(new_target) && JS_IsSymbol(argv[0])) {
    800376c6:	478d                	li	a5,3
    800376c8:	04f91863          	bne	s2,a5,80037718 <js_string_constructor+0xde>
quickjs-nuttx/quickjs.c:41227 (discriminator 1)
    800376cc:	4714                	lw	a3,8(a4)
    800376ce:	57e1                	li	a5,-8
    800376d0:	04f69463          	bne	a3,a5,80037718 <js_string_constructor+0xde>
quickjs-nuttx/quickjs.c:41229
            val = JS_ConcatString3(ctx, "Symbol(", JS_AtomToString(ctx, js_get_atom_index(ctx->rt, p)), ")");
    800376d4:	630c                	ld	a1,0(a4)
    800376d6:	6d08                	ld	a0,24(a0)
    800376d8:	fb7d10ef          	jal	ra,8000968e <js_get_atom_index>
    800376dc:	0005059b          	sext.w	a1,a0
    800376e0:	8526                	mv	a0,s1
    800376e2:	bf0e80ef          	jal	ra,8001fad2 <JS_AtomToString>
    800376e6:	862a                	mv	a2,a0
    800376e8:	86ae                	mv	a3,a1
    800376ea:	e0aa                	sd	a0,64(sp)
    800376ec:	e4ae                	sd	a1,72(sp)
    800376ee:	00034717          	auipc	a4,0x34
    800376f2:	12270713          	addi	a4,a4,290 # 8006b810 <qjsc_repl+0x6260>
    800376f6:	00035597          	auipc	a1,0x35
    800376fa:	66258593          	addi	a1,a1,1634 # 8006cd58 <qjsc_repl+0x77a8>
    800376fe:	8526                	mv	a0,s1
    80037700:	8b0e90ef          	jal	ra,800207b0 <JS_ConcatString3>
quickjs-nuttx/quickjs.c:41233
        if (JS_IsException(val))
    80037704:	0005879b          	sext.w	a5,a1
    80037708:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:41231
            val = JS_ToString(ctx, argv[0]);
    8003770a:	842a                	mv	s0,a0
    8003770c:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:41233
        if (JS_IsException(val))
    8003770e:	f4d797e3          	bne	a5,a3,8003765c <js_string_constructor+0x22>
quickjs-nuttx/quickjs.c:41246
        return val;
    80037712:	e8a2                	sd	s0,80(sp)
    80037714:	ecba                	sd	a4,88(sp)
    80037716:	b745                	j	800376b6 <js_string_constructor+0x7c>
quickjs-nuttx/quickjs.c:41231
            val = JS_ToString(ctx, argv[0]);
    80037718:	630c                	ld	a1,0(a4)
    8003771a:	6710                	ld	a2,8(a4)
    8003771c:	8526                	mv	a0,s1
    8003771e:	85ee90ef          	jal	ra,8002077c <JS_ToString>
    80037722:	b7cd                	j	80037704 <js_string_constructor+0xca>

0000000080037724 <js_symbol_toString>:
js_symbol_toString():
quickjs-nuttx/quickjs.c:46697
{
    80037724:	711d                	addi	sp,sp,-96
    80037726:	e8a2                	sd	s0,80(sp)
    80037728:	ec86                	sd	ra,88(sp)
    8003772a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46699
    val = js_thisSymbolValue(ctx, this_val);
    8003772c:	bafe10ef          	jal	ra,800192da <js_thisSymbolValue>
    80037730:	e82a                	sd	a0,16(sp)
    80037732:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:46700
    if (JS_IsException(val))
    80037734:	0005871b          	sext.w	a4,a1
    80037738:	4799                	li	a5,6
    8003773a:	00f71a63          	bne	a4,a5,8003774e <js_symbol_toString+0x2a>
quickjs-nuttx/quickjs.c:46701
        return val;
    8003773e:	e0aa                	sd	a0,64(sp)
    80037740:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:46706
}
    80037742:	60e6                	ld	ra,88(sp)
    80037744:	6446                	ld	s0,80(sp)
    80037746:	6506                	ld	a0,64(sp)
    80037748:	65a6                	ld	a1,72(sp)
    8003774a:	6125                	addi	sp,sp,96
    8003774c:	8082                	ret
quickjs-nuttx/quickjs.c:46703
    ret = js_string_constructor(ctx, JS_UNDEFINED, 1, (JSValueConst *)&val);
    8003774e:	0818                	addi	a4,sp,16
    80037750:	4685                	li	a3,1
    80037752:	460d                	li	a2,3
    80037754:	4581                	li	a1,0
    80037756:	8522                	mv	a0,s0
    80037758:	ee3ff0ef          	jal	ra,8003763a <js_string_constructor>
    8003775c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:46704
    JS_FreeValue(ctx, val);
    8003775e:	6662                	ld	a2,24(sp)
    80037760:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:46703
    ret = js_string_constructor(ctx, JS_UNDEFINED, 1, (JSValueConst *)&val);
    80037762:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:46704
    JS_FreeValue(ctx, val);
    80037764:	8522                	mv	a0,s0
    80037766:	838d40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46705
    return ret;
    8003776a:	7782                	ld	a5,32(sp)
    8003776c:	e0be                	sd	a5,64(sp)
    8003776e:	77a2                	ld	a5,40(sp)
    80037770:	e4be                	sd	a5,72(sp)
    80037772:	bfc1                	j	80037742 <js_symbol_toString+0x1e>

0000000080037774 <JS_DefineObjectName.constprop.0>:
JS_DefineObjectName():
quickjs-nuttx/quickjs.c:9431
static int JS_DefineObjectName(JSContext *ctx, JSValueConst obj,
    80037774:	7139                	addi	sp,sp,-64
    80037776:	f822                	sd	s0,48(sp)
    80037778:	fc06                	sd	ra,56(sp)
    8003777a:	f426                	sd	s1,40(sp)
    8003777c:	f04a                	sd	s2,32(sp)
    8003777e:	e02e                	sd	a1,0(sp)
    80037780:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:9440
    return 0;
    80037782:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:9434
    if (name != JS_ATOM_NULL
    80037784:	ce85                	beqz	a3,800377bc <JS_DefineObjectName.constprop.0+0x48>
quickjs-nuttx/quickjs.c:9435
    &&  JS_IsObject(obj)
    80037786:	2601                	sext.w	a2,a2
    80037788:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:9440
    return 0;
    8003778a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:9435
    &&  JS_IsObject(obj)
    8003778c:	02f61863          	bne	a2,a5,800377bc <JS_DefineObjectName.constprop.0+0x48>
    80037790:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:9436
    &&  !js_object_has_name(ctx, obj)
    80037792:	852e                	mv	a0,a1
    80037794:	8936                	mv	s2,a3
    80037796:	d45d20ef          	jal	ra,8000a4da <js_object_has_name.constprop.0.isra.0>
    8003779a:	e10d                	bnez	a0,800377bc <JS_DefineObjectName.constprop.0+0x48>
quickjs-nuttx/quickjs.c:9437
    &&  JS_DefinePropertyValue(ctx, obj, JS_ATOM_name, JS_AtomToString(ctx, name), flags) < 0) {
    8003779c:	85ca                	mv	a1,s2
    8003779e:	8526                	mv	a0,s1
    800377a0:	b32e80ef          	jal	ra,8001fad2 <JS_AtomToString>
    800377a4:	87ae                	mv	a5,a1
    800377a6:	6622                	ld	a2,8(sp)
    800377a8:	6582                	ld	a1,0(sp)
    800377aa:	872a                	mv	a4,a0
    800377ac:	4805                	li	a6,1
    800377ae:	03700693          	li	a3,55
    800377b2:	8526                	mv	a0,s1
    800377b4:	a79e00ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800377b8:	41f5541b          	sraiw	s0,a0,0x1f
quickjs-nuttx/quickjs.c:9441
}
    800377bc:	70e2                	ld	ra,56(sp)
    800377be:	8522                	mv	a0,s0
    800377c0:	7442                	ld	s0,48(sp)
    800377c2:	74a2                	ld	s1,40(sp)
    800377c4:	7902                	ld	s2,32(sp)
    800377c6:	6121                	addi	sp,sp,64
    800377c8:	8082                	ret

00000000800377ca <JS_DefineObjectNameComputed.constprop.0>:
JS_DefineObjectNameComputed():
quickjs-nuttx/quickjs.c:9443
static int JS_DefineObjectNameComputed(JSContext *ctx, JSValueConst obj,
    800377ca:	715d                	addi	sp,sp,-80
    800377cc:	e0a2                	sd	s0,64(sp)
    800377ce:	e486                	sd	ra,72(sp)
    800377d0:	fc26                	sd	s1,56(sp)
    800377d2:	f84a                	sd	s2,48(sp)
    800377d4:	e82e                	sd	a1,16(sp)
    800377d6:	ec32                	sd	a2,24(sp)
    800377d8:	e036                	sd	a3,0(sp)
    800377da:	e43a                	sd	a4,8(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    800377dc:	0006041b          	sext.w	s0,a2
JS_DefineObjectNameComputed():
quickjs-nuttx/quickjs.c:9446
    if (JS_IsObject(obj) &&
    800377e0:	57fd                	li	a5,-1
    800377e2:	06f41263          	bne	s0,a5,80037846 <JS_DefineObjectNameComputed.constprop.0+0x7c>
    800377e6:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:9447
        !js_object_has_name(ctx, obj)) {
    800377e8:	852e                	mv	a0,a1
    800377ea:	cf1d20ef          	jal	ra,8000a4da <js_object_has_name.constprop.0.isra.0>
quickjs-nuttx/quickjs.c:9446
    if (JS_IsObject(obj) &&
    800377ee:	ed21                	bnez	a0,80037846 <JS_DefineObjectNameComputed.constprop.0+0x7c>
quickjs-nuttx/quickjs.c:9450
        prop = JS_ValueToAtom(ctx, str);
    800377f0:	6582                	ld	a1,0(sp)
    800377f2:	6622                	ld	a2,8(sp)
    800377f4:	8526                	mv	a0,s1
    800377f6:	81cf10ef          	jal	ra,80028812 <JS_ValueToAtom>
    800377fa:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:9451
        if (prop == JS_ATOM_NULL)
    800377fe:	02090d63          	beqz	s2,80037838 <JS_DefineObjectNameComputed.constprop.0+0x6e>
quickjs-nuttx/quickjs.c:9453
        name_str = js_get_function_name(ctx, prop);
    80037802:	85ca                	mv	a1,s2
    80037804:	8526                	mv	a0,s1
    80037806:	88ce90ef          	jal	ra,80020892 <js_get_function_name>
    8003780a:	f02a                	sd	a0,32(sp)
    8003780c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:9454
        JS_FreeAtom(ctx, prop);
    8003780e:	8526                	mv	a0,s1
    80037810:	85ca                	mv	a1,s2
    80037812:	937d30ef          	jal	ra,8000b148 <JS_FreeAtom>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80037816:	77a2                	ld	a5,40(sp)
JS_DefineObjectNameComputed():
quickjs-nuttx/quickjs.c:9455
        if (JS_IsException(name_str))
    80037818:	4719                	li	a4,6
    8003781a:	0007869b          	sext.w	a3,a5
    8003781e:	00e68d63          	beq	a3,a4,80037838 <JS_DefineObjectNameComputed.constprop.0+0x6e>
quickjs-nuttx/quickjs.c:9457
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_name, name_str, flags) < 0)
    80037822:	7702                	ld	a4,32(sp)
    80037824:	65c2                	ld	a1,16(sp)
    80037826:	6662                	ld	a2,24(sp)
    80037828:	4805                	li	a6,1
    8003782a:	03700693          	li	a3,55
    8003782e:	8526                	mv	a0,s1
    80037830:	9fde00ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:9460
    return 0;
    80037834:	43f55413          	srai	s0,a0,0x3f
quickjs-nuttx/quickjs.c:9461
}
    80037838:	60a6                	ld	ra,72(sp)
    8003783a:	8522                	mv	a0,s0
    8003783c:	6406                	ld	s0,64(sp)
    8003783e:	74e2                	ld	s1,56(sp)
    80037840:	7942                	ld	s2,48(sp)
    80037842:	6161                	addi	sp,sp,80
    80037844:	8082                	ret
quickjs-nuttx/quickjs.c:9460
    return 0;
    80037846:	4401                	li	s0,0
    80037848:	bfc5                	j	80037838 <JS_DefineObjectNameComputed.constprop.0+0x6e>

000000008003784a <js_operators_set_default.isra.0>:
js_operators_set_default():
quickjs-nuttx/quickjs.c:50456
static int js_operators_set_default(JSContext *ctx, JSValueConst obj)
    8003784a:	7179                	addi	sp,sp,-48
    8003784c:	e432                	sd	a2,8(sp)
    8003784e:	f406                	sd	ra,40(sp)
    80037850:	f022                	sd	s0,32(sp)
    80037852:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:50460
    if (!JS_IsObject(obj)) /* in case the prototype is not defined */
    80037854:	2601                	sext.w	a2,a2
    80037856:	57fd                	li	a5,-1
    80037858:	02f61a63          	bne	a2,a5,8003788c <js_operators_set_default.isra.0+0x42>
quickjs-nuttx/quickjs.c:50462
    opset_obj = js_operators_create_internal(ctx, 0, NULL, TRUE);
    8003785c:	4685                	li	a3,1
    8003785e:	4601                	li	a2,0
    80037860:	4581                	li	a1,0
    80037862:	842a                	mv	s0,a0
    80037864:	a93e70ef          	jal	ra,8001f2f6 <js_operators_create_internal>
quickjs-nuttx/quickjs.c:50463
    if (JS_IsException(opset_obj))
    80037868:	0005861b          	sext.w	a2,a1
    8003786c:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:50462
    opset_obj = js_operators_create_internal(ctx, 0, NULL, TRUE);
    8003786e:	872a                	mv	a4,a0
    80037870:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:50463
    if (JS_IsException(opset_obj))
    80037872:	00d60d63          	beq	a2,a3,8003788c <js_operators_set_default.isra.0+0x42>
quickjs-nuttx/quickjs.c:50466
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_Symbol_operatorSet,
    80037876:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50469
}
    80037878:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:50466
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_Symbol_operatorSet,
    8003787a:	6582                	ld	a1,0(sp)
    8003787c:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:50469
}
    8003787e:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:50466
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_Symbol_operatorSet,
    80037880:	4801                	li	a6,0
    80037882:	0e200693          	li	a3,226
quickjs-nuttx/quickjs.c:50469
}
    80037886:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:50466
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_Symbol_operatorSet,
    80037888:	9a5e006f          	j	8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:50469
}
    8003788c:	70a2                	ld	ra,40(sp)
    8003788e:	7402                	ld	s0,32(sp)
    80037890:	6145                	addi	sp,sp,48
    80037892:	8082                	ret

0000000080037894 <js_string_define_own_property>:
js_string_define_own_property():
quickjs-nuttx/quickjs.c:41165
{
    80037894:	7159                	addi	sp,sp,-112
    80037896:	eca6                	sd	s1,88(sp)
    80037898:	e8ca                	sd	s2,80(sp)
    8003789a:	f486                	sd	ra,104(sp)
    8003789c:	f0a2                	sd	s0,96(sp)
    8003789e:	e4ce                	sd	s3,72(sp)
    800378a0:	e0d2                	sd	s4,64(sp)
    800378a2:	fc56                	sd	s5,56(sp)
    800378a4:	f85a                	sd	s6,48(sp)
    800378a6:	f02e                	sd	a1,32(sp)
    800378a8:	f432                	sd	a2,40(sp)
    800378aa:	e83a                	sd	a4,16(sp)
    800378ac:	ec3e                	sd	a5,24(sp)
    800378ae:	e042                	sd	a6,0(sp)
    800378b0:	e446                	sd	a7,8(sp)
    800378b2:	448a                	lw	s1,128(sp)
    800378b4:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:41170
    if (__JS_AtomIsTaggedInt(prop)) {
    800378b6:	0806d663          	bgez	a3,80037942 <js_string_define_own_property+0xae>
quickjs-nuttx/quickjs.c:41173
        if (JS_VALUE_GET_TAG(p->u.object_data) != JS_TAG_STRING)
    800378ba:	0385a983          	lw	s3,56(a1)
    800378be:	57e5                	li	a5,-7
    800378c0:	08f99163          	bne	s3,a5,80037942 <js_string_define_own_property+0xae>
quickjs-nuttx/quickjs.c:41175
        p1 = JS_VALUE_GET_STRING(p->u.object_data);
    800378c4:	0305ba83          	ld	s5,48(a1)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    800378c8:	80000437          	lui	s0,0x80000
    800378cc:	fff44413          	not	s0,s0
js_string_define_own_property():
quickjs-nuttx/quickjs.c:41176
        if (idx >= p1->len)
    800378d0:	004aa783          	lw	a5,4(s5)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    800378d4:	0086fb33          	and	s6,a3,s0
js_string_define_own_property():
quickjs-nuttx/quickjs.c:41176
        if (idx >= p1->len)
    800378d8:	8fe1                	and	a5,a5,s0
    800378da:	06fb7463          	bgeu	s6,a5,80037942 <js_string_define_own_property+0xae>
quickjs-nuttx/quickjs.c:41178
        if (!check_define_prop_flags(JS_PROP_ENUMERABLE, flags))
    800378de:	85a6                	mv	a1,s1
    800378e0:	4511                	li	a0,4
    800378e2:	c67d10ef          	jal	ra,80009548 <check_define_prop_flags>
    800378e6:	c915                	beqz	a0,8003791a <js_string_define_own_property+0x86>
quickjs-nuttx/quickjs.c:41181
        if (flags & JS_PROP_HAS_VALUE) {
    800378e8:	00d4d793          	srli	a5,s1,0xd
    800378ec:	8b85                	andi	a5,a5,1
    800378ee:	c3c1                	beqz	a5,8003796e <js_string_define_own_property+0xda>
quickjs-nuttx/quickjs.c:41182
            if (JS_VALUE_GET_TAG(val) != JS_TAG_STRING)
    800378f0:	47e2                	lw	a5,24(sp)
    800378f2:	03379463          	bne	a5,s3,8003791a <js_string_define_own_property+0x86>
quickjs-nuttx/quickjs.c:41184
            p2 = JS_VALUE_GET_STRING(val);
    800378f6:	69c2                	ld	s3,16(sp)
quickjs-nuttx/quickjs.c:41185
            if (p2->len != 1)
    800378f8:	4785                	li	a5,1
    800378fa:	0049aa03          	lw	s4,4(s3)
    800378fe:	008a7433          	and	s0,s4,s0
    80037902:	00f41c63          	bne	s0,a5,8003791a <js_string_define_own_property+0x86>
quickjs-nuttx/quickjs.c:41187
            if (string_get(p1, idx) != string_get(p2, 0)) {
    80037906:	85da                	mv	a1,s6
    80037908:	8556                	mv	a0,s5
    8003790a:	b5ad00ef          	jal	ra,80007c64 <string_get>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    8003790e:	020a5763          	bgez	s4,8003793c <js_string_define_own_property+0xa8>
    80037912:	0109d783          	lhu	a5,16(s3)
js_string_define_own_property():
quickjs-nuttx/quickjs.c:41187
            if (string_get(p1, idx) != string_get(p2, 0)) {
    80037916:	04f50c63          	beq	a0,a5,8003796e <js_string_define_own_property+0xda>
quickjs-nuttx/quickjs.c:41198
}
    8003791a:	7406                	ld	s0,96(sp)
    8003791c:	70a6                	ld	ra,104(sp)
    8003791e:	69a6                	ld	s3,72(sp)
    80037920:	6a06                	ld	s4,64(sp)
    80037922:	7ae2                	ld	s5,56(sp)
    80037924:	7b42                	ld	s6,48(sp)
quickjs-nuttx/quickjs.c:41189
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "property is not configurable");
    80037926:	85a6                	mv	a1,s1
    80037928:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:41198
}
    8003792a:	64e6                	ld	s1,88(sp)
    8003792c:	6946                	ld	s2,80(sp)
quickjs-nuttx/quickjs.c:41189
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "property is not configurable");
    8003792e:	00033617          	auipc	a2,0x33
    80037932:	81a60613          	addi	a2,a2,-2022 # 8006a148 <qjsc_repl+0x4b98>
quickjs-nuttx/quickjs.c:41198
}
    80037936:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:41189
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "property is not configurable");
    80037938:	a07e006f          	j	8001833e <JS_ThrowTypeErrorOrFalse>
string_get():
quickjs-nuttx/quickjs.c:3704
    return p->is_wide_char ? p->u.str16[idx] : p->u.str8[idx];
    8003793c:	0109c783          	lbu	a5,16(s3)
    80037940:	bfd9                	j	80037916 <js_string_define_own_property+0x82>
js_string_define_own_property():
quickjs-nuttx/quickjs.c:41195
        return JS_DefineProperty(ctx, this_obj, prop, val, getter, setter,
    80037942:	000207b7          	lui	a5,0x20
    80037946:	8cdd                	or	s1,s1,a5
quickjs-nuttx/quickjs.c:41198
}
    80037948:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:41195
        return JS_DefineProperty(ctx, this_obj, prop, val, getter, setter,
    8003794a:	e126                	sd	s1,128(sp)
    8003794c:	6802                	ld	a6,0(sp)
    8003794e:	68a2                	ld	a7,8(sp)
    80037950:	6742                	ld	a4,16(sp)
    80037952:	67e2                	ld	a5,24(sp)
    80037954:	7582                	ld	a1,32(sp)
    80037956:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:41198
}
    80037958:	70a6                	ld	ra,104(sp)
    8003795a:	64e6                	ld	s1,88(sp)
    8003795c:	69a6                	ld	s3,72(sp)
    8003795e:	6a06                	ld	s4,64(sp)
    80037960:	7ae2                	ld	s5,56(sp)
    80037962:	7b42                	ld	s6,48(sp)
quickjs-nuttx/quickjs.c:41195
        return JS_DefineProperty(ctx, this_obj, prop, val, getter, setter,
    80037964:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:41198
}
    80037966:	6946                	ld	s2,80(sp)
    80037968:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:41195
        return JS_DefineProperty(ctx, this_obj, prop, val, getter, setter,
    8003796a:	9e4e006f          	j	80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:41198
}
    8003796e:	70a6                	ld	ra,104(sp)
    80037970:	7406                	ld	s0,96(sp)
    80037972:	64e6                	ld	s1,88(sp)
    80037974:	6946                	ld	s2,80(sp)
    80037976:	69a6                	ld	s3,72(sp)
    80037978:	6a06                	ld	s4,64(sp)
    8003797a:	7ae2                	ld	s5,56(sp)
    8003797c:	7b42                	ld	s6,48(sp)
    8003797e:	4505                	li	a0,1
    80037980:	6165                	addi	sp,sp,112
    80037982:	8082                	ret

0000000080037984 <js_arguments_define_own_property>:
js_arguments_define_own_property():
quickjs-nuttx/quickjs.c:14700
{
    80037984:	7119                	addi	sp,sp,-128
    80037986:	f4a6                	sd	s1,104(sp)
    80037988:	f0ca                	sd	s2,96(sp)
    8003798a:	fc86                	sd	ra,120(sp)
    8003798c:	f8a2                	sd	s0,112(sp)
    8003798e:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:14705
    if (p->fast_array && JS_AtomIsArrayIndex(ctx, &idx, prop) &&
    80037990:	0055c783          	lbu	a5,5(a1)
quickjs-nuttx/quickjs.c:14700
{
    80037994:	e0ae                	sd	a1,64(sp)
    80037996:	e4b2                	sd	a2,72(sp)
    80037998:	f83a                	sd	a4,48(sp)
    8003799a:	f042                	sd	a6,32(sp)
    8003799c:	f446                	sd	a7,40(sp)
quickjs-nuttx/quickjs.c:14705
    if (p->fast_array && JS_AtomIsArrayIndex(ctx, &idx, prop) &&
    8003799e:	8ba1                	andi	a5,a5,8
quickjs-nuttx/quickjs.c:14700
{
    800379a0:	84aa                	mv	s1,a0
    800379a2:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:14705
    if (p->fast_array && JS_AtomIsArrayIndex(ctx, &idx, prop) &&
    800379a4:	eb95                	bnez	a5,800379d8 <js_arguments_define_own_property+0x54>
quickjs-nuttx/quickjs.c:14711
    return JS_DefineProperty(ctx, this_obj, prop, val, getter, setter,
    800379a6:	47ca                	lw	a5,144(sp)
    800379a8:	00020737          	lui	a4,0x20
    800379ac:	7802                	ld	a6,32(sp)
    800379ae:	8fd9                	or	a5,a5,a4
    800379b0:	e83e                	sd	a5,16(sp)
    800379b2:	678a                	ld	a5,128(sp)
    800379b4:	78a2                	ld	a7,40(sp)
    800379b6:	7742                	ld	a4,48(sp)
    800379b8:	e03e                	sd	a5,0(sp)
    800379ba:	67aa                	ld	a5,136(sp)
    800379bc:	6586                	ld	a1,64(sp)
    800379be:	6626                	ld	a2,72(sp)
    800379c0:	e43e                	sd	a5,8(sp)
    800379c2:	77e2                	ld	a5,56(sp)
    800379c4:	86ca                	mv	a3,s2
    800379c6:	8526                	mv	a0,s1
    800379c8:	986e00ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:14713
}
    800379cc:	70e6                	ld	ra,120(sp)
    800379ce:	7446                	ld	s0,112(sp)
    800379d0:	74a6                	ld	s1,104(sp)
    800379d2:	7906                	ld	s2,96(sp)
    800379d4:	6109                	addi	sp,sp,128
    800379d6:	8082                	ret
    800379d8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:14705 (discriminator 1)
    if (p->fast_array && JS_AtomIsArrayIndex(ctx, &idx, prop) &&
    800379da:	8636                	mv	a2,a3
    800379dc:	08ec                	addi	a1,sp,92
    800379de:	fd1d00ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
    800379e2:	d171                	beqz	a0,800379a6 <js_arguments_define_own_property+0x22>
quickjs-nuttx/quickjs.c:14705 (discriminator 2)
    800379e4:	4038                	lw	a4,64(s0)
    800379e6:	47f6                	lw	a5,92(sp)
    800379e8:	fae7ffe3          	bgeu	a5,a4,800379a6 <js_arguments_define_own_property+0x22>
quickjs-nuttx/quickjs.c:14707
        if (convert_fast_array_to_array(ctx, p))
    800379ec:	85a2                	mv	a1,s0
    800379ee:	8526                	mv	a0,s1
    800379f0:	87de40ef          	jal	ra,8001c26c <convert_fast_array_to_array>
    800379f4:	d94d                	beqz	a0,800379a6 <js_arguments_define_own_property+0x22>
quickjs-nuttx/quickjs.c:14708
            return -1;
    800379f6:	557d                	li	a0,-1
    800379f8:	bfd1                	j	800379cc <js_arguments_define_own_property+0x48>

00000000800379fa <JS_DefinePropertyGetSet>:
JS_DefinePropertyGetSet():
quickjs-nuttx/quickjs.c:9392
{
    800379fa:	7119                	addi	sp,sp,-128
quickjs-nuttx/quickjs.c:9394
    ret = JS_DefineProperty(ctx, this_obj, prop, JS_UNDEFINED, getter, setter,
    800379fc:	430a                	lw	t1,128(sp)
    800379fe:	6e09                	lui	t3,0x2
    80037a00:	d00e0e13          	addi	t3,t3,-768 # 1d00 <asinh-0x7fffe300>
    80037a04:	01c36333          	or	t1,t1,t3
quickjs-nuttx/quickjs.c:9392
{
    80037a08:	fc86                	sd	ra,120(sp)
    80037a0a:	f8a2                	sd	s0,112(sp)
    80037a0c:	f4a6                	sd	s1,104(sp)
quickjs-nuttx/quickjs.c:9394
    ret = JS_DefineProperty(ctx, this_obj, prop, JS_UNDEFINED, getter, setter,
    80037a0e:	e81a                	sd	t1,16(sp)
quickjs-nuttx/quickjs.c:9392
{
    80037a10:	f83a                	sd	a4,48(sp)
    80037a12:	fc3e                	sd	a5,56(sp)
    80037a14:	f042                	sd	a6,32(sp)
    80037a16:	f446                	sd	a7,40(sp)
quickjs-nuttx/quickjs.c:9394
    ret = JS_DefineProperty(ctx, this_obj, prop, JS_UNDEFINED, getter, setter,
    80037a18:	e042                	sd	a6,0(sp)
    80037a1a:	e446                	sd	a7,8(sp)
    80037a1c:	883a                	mv	a6,a4
    80037a1e:	88be                	mv	a7,a5
    80037a20:	4701                	li	a4,0
    80037a22:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:9392
{
    80037a24:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:9394
    ret = JS_DefineProperty(ctx, this_obj, prop, JS_UNDEFINED, getter, setter,
    80037a26:	928e00ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:9397
    JS_FreeValue(ctx, getter);
    80037a2a:	75c2                	ld	a1,48(sp)
    80037a2c:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:9394
    ret = JS_DefineProperty(ctx, this_obj, prop, JS_UNDEFINED, getter, setter,
    80037a2e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:9397
    JS_FreeValue(ctx, getter);
    80037a30:	8522                	mv	a0,s0
    80037a32:	d6dd30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9398
    JS_FreeValue(ctx, setter);
    80037a36:	7582                	ld	a1,32(sp)
    80037a38:	7622                	ld	a2,40(sp)
    80037a3a:	8522                	mv	a0,s0
    80037a3c:	d63d30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9400
}
    80037a40:	70e6                	ld	ra,120(sp)
    80037a42:	7446                	ld	s0,112(sp)
    80037a44:	8526                	mv	a0,s1
    80037a46:	74a6                	ld	s1,104(sp)
    80037a48:	6109                	addi	sp,sp,128
    80037a4a:	8082                	ret

0000000080037a4c <js_object___defineGetter__>:
js_object___defineGetter__():
quickjs-nuttx/quickjs.c:37254
{
    80037a4c:	7131                	addi	sp,sp,-192
    80037a4e:	f922                	sd	s0,176(sp)
    80037a50:	f14a                	sd	s2,160(sp)
    80037a52:	fd06                	sd	ra,184(sp)
    80037a54:	f526                	sd	s1,168(sp)
    80037a56:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:37260
    prop = argv[0];
    80037a58:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:37254
{
    80037a5a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:37260
    prop = argv[0];
    80037a5c:	e0be                	sd	a5,64(sp)
    80037a5e:	671c                	ld	a5,8(a4)
    80037a60:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:37261
    value = argv[1];
    80037a62:	6b1c                	ld	a5,16(a4)
    80037a64:	e8be                	sd	a5,80(sp)
    80037a66:	6f1c                	ld	a5,24(a4)
    80037a68:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:37263
    obj = JS_ToObject(ctx, this_val);
    80037a6a:	e50f80ef          	jal	ra,800300ba <JS_ToObject>
    80037a6e:	fc2e                	sd	a1,56(sp)
    80037a70:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:37264
    if (JS_IsException(obj))
    80037a72:	2581                	sext.w	a1,a1
    80037a74:	4799                	li	a5,6
    80037a76:	00f59d63          	bne	a1,a5,80037a90 <js_object___defineGetter__+0x44>
quickjs-nuttx/quickjs.c:37269
        return JS_EXCEPTION;
    80037a7a:	e902                	sd	zero,144(sp)
    80037a7c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37296
}
    80037a7e:	70ea                	ld	ra,184(sp)
    80037a80:	744a                	ld	s0,176(sp)
quickjs-nuttx/quickjs.c:37294
        return JS_UNDEFINED;
    80037a82:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:37296
}
    80037a84:	654a                	ld	a0,144(sp)
    80037a86:	65ea                	ld	a1,152(sp)
    80037a88:	74aa                	ld	s1,168(sp)
    80037a8a:	790a                	ld	s2,160(sp)
    80037a8c:	6129                	addi	sp,sp,192
    80037a8e:	8082                	ret
quickjs-nuttx/quickjs.c:37267
    if (check_function(ctx, value)) {
    80037a90:	65c6                	ld	a1,80(sp)
    80037a92:	6666                	ld	a2,88(sp)
    80037a94:	8522                	mv	a0,s0
    80037a96:	c89e00ef          	jal	ra,8001871e <check_function>
    80037a9a:	c519                	beqz	a0,80037aa8 <js_object___defineGetter__+0x5c>
quickjs-nuttx/quickjs.c:37268
        JS_FreeValue(ctx, obj);
    80037a9c:	75c2                	ld	a1,48(sp)
    80037a9e:	7662                	ld	a2,56(sp)
    80037aa0:	8522                	mv	a0,s0
    80037aa2:	cfdd30ef          	jal	ra,8000b79e <JS_FreeValue>
    80037aa6:	bfd1                	j	80037a7a <js_object___defineGetter__+0x2e>
quickjs-nuttx/quickjs.c:37271
    atom = JS_ValueToAtom(ctx, prop);
    80037aa8:	6586                	ld	a1,64(sp)
    80037aaa:	6626                	ld	a2,72(sp)
    80037aac:	8522                	mv	a0,s0
    80037aae:	d65f00ef          	jal	ra,80028812 <JS_ValueToAtom>
    80037ab2:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:37272
    if (unlikely(atom == JS_ATOM_NULL)) {
    80037ab6:	d0fd                	beqz	s1,80037a9c <js_object___defineGetter__+0x50>
quickjs-nuttx/quickjs.c:37279
    if (magic) {
    80037ab8:	6746                	ld	a4,80(sp)
    80037aba:	67e6                	ld	a5,88(sp)
    80037abc:	04090863          	beqz	s2,80037b0c <js_object___defineGetter__+0xc0>
quickjs-nuttx/quickjs.c:37280
        get = JS_UNDEFINED;
    80037ac0:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:37281
        set = value;
    80037ac2:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:37282
        flags |= JS_PROP_HAS_SET;
    80037ac4:	6795                	lui	a5,0x5
quickjs-nuttx/quickjs.c:37280
        get = JS_UNDEFINED;
    80037ac6:	f082                	sd	zero,96(sp)
    80037ac8:	f4b6                	sd	a3,104(sp)
quickjs-nuttx/quickjs.c:37281
        set = value;
    80037aca:	f8ba                	sd	a4,112(sp)
quickjs-nuttx/quickjs.c:37282
        flags |= JS_PROP_HAS_SET;
    80037acc:	50578793          	addi	a5,a5,1285 # 5505 <asinh-0x7fffaafb>
quickjs-nuttx/quickjs.c:37288
    ret = JS_DefineProperty(ctx, obj, atom, JS_UNDEFINED, get, set, flags);
    80037ad0:	e83e                	sd	a5,16(sp)
    80037ad2:	77c6                	ld	a5,112(sp)
    80037ad4:	7806                	ld	a6,96(sp)
    80037ad6:	78a6                	ld	a7,104(sp)
    80037ad8:	e03e                	sd	a5,0(sp)
    80037ada:	77e6                	ld	a5,120(sp)
    80037adc:	75c2                	ld	a1,48(sp)
    80037ade:	7662                	ld	a2,56(sp)
    80037ae0:	e43e                	sd	a5,8(sp)
    80037ae2:	4701                	li	a4,0
    80037ae4:	478d                	li	a5,3
    80037ae6:	86a6                	mv	a3,s1
    80037ae8:	8522                	mv	a0,s0
    80037aea:	864e00ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:37289
    JS_FreeValue(ctx, obj);
    80037aee:	75c2                	ld	a1,48(sp)
    80037af0:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:37288
    ret = JS_DefineProperty(ctx, obj, atom, JS_UNDEFINED, get, set, flags);
    80037af2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:37289
    JS_FreeValue(ctx, obj);
    80037af4:	8522                	mv	a0,s0
    80037af6:	ca9d30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37290
    JS_FreeAtom(ctx, atom);
    80037afa:	85a6                	mv	a1,s1
    80037afc:	8522                	mv	a0,s0
    80037afe:	e4ad30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:37291
    if (ret < 0) {
    80037b02:	f6094ce3          	bltz	s2,80037a7a <js_object___defineGetter__+0x2e>
quickjs-nuttx/quickjs.c:37294
        return JS_UNDEFINED;
    80037b06:	e902                	sd	zero,144(sp)
    80037b08:	478d                	li	a5,3
    80037b0a:	bf95                	j	80037a7e <js_object___defineGetter__+0x32>
quickjs-nuttx/quickjs.c:37284
        get = value;
    80037b0c:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:37285
        set = JS_UNDEFINED;
    80037b0e:	478d                	li	a5,3
    80037b10:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:37286
        flags |= JS_PROP_HAS_GET;
    80037b12:	6795                	lui	a5,0x5
quickjs-nuttx/quickjs.c:37284
        get = value;
    80037b14:	f0ba                	sd	a4,96(sp)
quickjs-nuttx/quickjs.c:37285
        set = JS_UNDEFINED;
    80037b16:	f882                	sd	zero,112(sp)
quickjs-nuttx/quickjs.c:37286
        flags |= JS_PROP_HAS_GET;
    80037b18:	d0578793          	addi	a5,a5,-763 # 4d05 <asinh-0x7fffb2fb>
    80037b1c:	bf55                	j	80037ad0 <js_object___defineGetter__+0x84>

0000000080037b1e <JS_SetGlobalVar>:
JS_SetGlobalVar():
quickjs-nuttx/quickjs.c:9652
{
    80037b1e:	7139                	addi	sp,sp,-64
    80037b20:	f822                	sd	s0,48(sp)
    80037b22:	f04a                	sd	s2,32(sp)
    80037b24:	fc06                	sd	ra,56(sp)
    80037b26:	f426                	sd	s1,40(sp)
    80037b28:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:9659
    p = JS_VALUE_GET_OBJ(ctx->global_var_obj);
    80037b2a:	17853583          	ld	a1,376(a0)
quickjs-nuttx/quickjs.c:9652
{
    80037b2e:	ec36                	sd	a3,24(sp)
    80037b30:	e832                	sd	a2,16(sp)
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80037b32:	6d94                	ld	a3,24(a1)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80037b34:	5671                	li	a2,-4
JS_SetGlobalVar():
quickjs-nuttx/quickjs.c:9652
{
    80037b36:	842a                	mv	s0,a0
find_own_property():
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80037b38:	529c                	lw	a5,32(a3)
    80037b3a:	00f977b3          	and	a5,s2,a5
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80037b3e:	1782                	slli	a5,a5,0x20
    80037b40:	9381                	srli	a5,a5,0x20
    80037b42:	0785                	addi	a5,a5,1
    80037b44:	02c787b3          	mul	a5,a5,a2
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80037b48:	04000637          	lui	a2,0x4000
    80037b4c:	167d                	addi	a2,a2,-1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80037b4e:	97b6                	add	a5,a5,a3
    80037b50:	0007e783          	lwu	a5,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80037b54:	04068693          	addi	a3,a3,64
find_own_property():
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80037b58:	e78d                	bnez	a5,80037b82 <JS_SetGlobalVar+0x64>
JS_SetGlobalVar():
quickjs-nuttx/quickjs.c:9678
    if (is_strict_mode(ctx)) 
    80037b5a:	8522                	mv	a0,s0
    80037b5c:	828d00ef          	jal	ra,80007b84 <is_strict_mode>
quickjs-nuttx/quickjs.c:9679
        flags |= JS_PROP_NO_ADD;
    80037b60:	67e1                	lui	a5,0x18
quickjs-nuttx/quickjs.c:9678
    if (is_strict_mode(ctx)) 
    80037b62:	e111                	bnez	a0,80037b66 <JS_SetGlobalVar+0x48>
quickjs-nuttx/quickjs.c:9677
    flags = JS_PROP_THROW_STRICT;
    80037b64:	67a1                	lui	a5,0x8
quickjs-nuttx/quickjs.c:9680
    return JS_SetPropertyInternal(ctx, ctx->global_obj, prop, val, ctx->global_obj, flags);
    80037b66:	16843803          	ld	a6,360(s0) # ffffffff80000168 <_ebss+0xfffffffeffeff002>
    80037b6a:	17043883          	ld	a7,368(s0)
    80037b6e:	e03e                	sd	a5,0(sp)
    80037b70:	6742                	ld	a4,16(sp)
    80037b72:	67e2                	ld	a5,24(sp)
    80037b74:	86ca                	mv	a3,s2
    80037b76:	85c2                	mv	a1,a6
    80037b78:	8646                	mv	a2,a7
    80037b7a:	8522                	mv	a0,s0
    80037b7c:	fcedf0ef          	jal	ra,8001734a <JS_SetPropertyInternal>
    80037b80:	a889                	j	80037bd2 <JS_SetGlobalVar+0xb4>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80037b82:	00379493          	slli	s1,a5,0x3
    80037b86:	14e1                	addi	s1,s1,-8
    80037b88:	94b6                	add	s1,s1,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80037b8a:	40c8                	lw	a0,4(s1)
    80037b8c:	03251063          	bne	a0,s2,80037bac <JS_SetGlobalVar+0x8e>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80037b90:	718c                	ld	a1,32(a1)
    80037b92:	0792                	slli	a5,a5,0x4
    80037b94:	17c1                	addi	a5,a5,-16
    80037b96:	95be                	add	a1,a1,a5
JS_SetGlobalVar():
quickjs-nuttx/quickjs.c:9663
        if (flag != 1) {
    80037b98:	4785                	li	a5,1
    80037b9a:	00f71e63          	bne	a4,a5,80037bb6 <JS_SetGlobalVar+0x98>
quickjs-nuttx/quickjs.c:9674
        set_value(ctx, &pr->u.value, val);
    80037b9e:	6642                	ld	a2,16(sp)
    80037ba0:	66e2                	ld	a3,24(sp)
    80037ba2:	8522                	mv	a0,s0
    80037ba4:	89ad40ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:9675
        return 0;
    80037ba8:	4501                	li	a0,0
    80037baa:	a025                	j	80037bd2 <JS_SetGlobalVar+0xb4>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80037bac:	409c                	lw	a5,0(s1)
    80037bae:	8ff1                	and	a5,a5,a2
    80037bb0:	1782                	slli	a5,a5,0x20
    80037bb2:	9381                	srli	a5,a5,0x20
    80037bb4:	b755                	j	80037b58 <JS_SetGlobalVar+0x3a>
JS_SetGlobalVar():
quickjs-nuttx/quickjs.c:9664
            if (unlikely(JS_IsUninitialized(pr->u.value))) {
    80037bb6:	4598                	lw	a4,8(a1)
    80037bb8:	4791                	li	a5,4
    80037bba:	02f71263          	bne	a4,a5,80037bde <JS_SetGlobalVar+0xc0>
quickjs-nuttx/quickjs.c:9665
                JS_FreeValue(ctx, val);
    80037bbe:	65c2                	ld	a1,16(sp)
    80037bc0:	6662                	ld	a2,24(sp)
    80037bc2:	8522                	mv	a0,s0
    80037bc4:	bdbd30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9666
                JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    80037bc8:	40cc                	lw	a1,4(s1)
    80037bca:	8522                	mv	a0,s0
    80037bcc:	c81e10ef          	jal	ra,8001984c <JS_ThrowReferenceErrorUninitialized>
quickjs-nuttx/quickjs.c:9671
                return JS_ThrowTypeErrorReadOnly(ctx, JS_PROP_THROW, prop);
    80037bd0:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:9681
}
    80037bd2:	70e2                	ld	ra,56(sp)
    80037bd4:	7442                	ld	s0,48(sp)
    80037bd6:	74a2                	ld	s1,40(sp)
    80037bd8:	7902                	ld	s2,32(sp)
    80037bda:	6121                	addi	sp,sp,64
    80037bdc:	8082                	ret
quickjs-nuttx/quickjs.c:9669
            if (unlikely(!(prs->flags & JS_PROP_WRITABLE))) {
    80037bde:	4098                	lw	a4,0(s1)
    80037be0:	01a7571b          	srliw	a4,a4,0x1a
    80037be4:	8b09                	andi	a4,a4,2
    80037be6:	ff45                	bnez	a4,80037b9e <JS_SetGlobalVar+0x80>
quickjs-nuttx/quickjs.c:9670
                JS_FreeValue(ctx, val);
    80037be8:	65c2                	ld	a1,16(sp)
    80037bea:	6662                	ld	a2,24(sp)
    80037bec:	8522                	mv	a0,s0
    80037bee:	bb1d30ef          	jal	ra,8000b79e <JS_FreeValue>
JS_ThrowTypeErrorReadOnly():
quickjs-nuttx/quickjs.c:6707
        JS_ThrowTypeErrorAtom(ctx, "'%s' is read-only", atom);
    80037bf2:	00032697          	auipc	a3,0x32
    80037bf6:	f9668693          	addi	a3,a3,-106 # 80069b88 <qjsc_repl+0x45d8>
    80037bfa:	00032617          	auipc	a2,0x32
    80037bfe:	0be60613          	addi	a2,a2,190 # 80069cb8 <qjsc_repl+0x4708>
    80037c02:	85ca                	mv	a1,s2
    80037c04:	8522                	mv	a0,s0
    80037c06:	b43e00ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
    80037c0a:	b7d9                	j	80037bd0 <JS_SetGlobalVar+0xb2>

0000000080037c0c <JS_SetProperty>:
JS_SetProperty():
quickjs-nuttx/quickjs.h:744
int JS_SetPropertyInternal(JSContext *ctx, JSValueConst obj,
                           JSAtom prop, JSValue val, JSValueConst this_obj,
                           int flags);
static inline int JS_SetProperty(JSContext *ctx, JSValueConst this_obj,
                                 JSAtom prop, JSValue val)
{
    80037c0c:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.h:745
    return JS_SetPropertyInternal(ctx, this_obj, prop, val, this_obj, JS_PROP_THROW);
    80037c0e:	6811                	lui	a6,0x4
    80037c10:	e042                	sd	a6,0(sp)
    80037c12:	88b2                	mv	a7,a2
    80037c14:	882e                	mv	a6,a1
quickjs-nuttx/quickjs.h:744
{
    80037c16:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.h:745
    return JS_SetPropertyInternal(ctx, this_obj, prop, val, this_obj, JS_PROP_THROW);
    80037c18:	f32df0ef          	jal	ra,8001734a <JS_SetPropertyInternal>
quickjs-nuttx/quickjs.h:746
}
    80037c1c:	70e2                	ld	ra,56(sp)
    80037c1e:	6121                	addi	sp,sp,64
    80037c20:	8082                	ret

0000000080037c22 <js_regexp_compile>:
js_regexp_compile():
quickjs-nuttx/quickjs.c:43504
{
    80037c22:	7155                	addi	sp,sp,-208
    80037c24:	f94a                	sd	s2,176(sp)
    80037c26:	e432                	sd	a2,8(sp)
    80037c28:	e586                	sd	ra,200(sp)
    80037c2a:	e1a2                	sd	s0,192(sp)
    80037c2c:	fd26                	sd	s1,184(sp)
    80037c2e:	f54e                	sd	s3,168(sp)
    80037c30:	f152                	sd	s4,160(sp)
    80037c32:	ed56                	sd	s5,152(sp)
    80037c34:	e02e                	sd	a1,0(sp)
js_get_regexp():
quickjs-nuttx/quickjs.c:43398
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80037c36:	2601                	sext.w	a2,a2
    80037c38:	57fd                	li	a5,-1
js_regexp_compile():
quickjs-nuttx/quickjs.c:43504
{
    80037c3a:	892a                	mv	s2,a0
js_get_regexp():
quickjs-nuttx/quickjs.c:43398
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80037c3c:	04f61a63          	bne	a2,a5,80037c90 <js_regexp_compile+0x6e>
    80037c40:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    80037c42:	0065d583          	lhu	a1,6(a1)
    80037c46:	47c9                	li	a5,18
    80037c48:	04f59463          	bne	a1,a5,80037c90 <js_regexp_compile+0x6e>
js_regexp_compile():
quickjs-nuttx/quickjs.c:43512
    pattern1 = argv[0];
    80037c4c:	671c                	ld	a5,8(a4)
    80037c4e:	6314                	ld	a3,0(a4)
quickjs-nuttx/quickjs.c:43513
    flags1 = argv[1];
    80037c50:	01073803          	ld	a6,16(a4) # 20010 <asinh-0x7ffdfff0>
    80037c54:	6f18                	ld	a4,24(a4)
quickjs-nuttx/quickjs.c:43512
    pattern1 = argv[0];
    80037c56:	ec3e                	sd	a5,24(sp)
    80037c58:	e836                	sd	a3,16(sp)
quickjs-nuttx/quickjs.c:43513
    flags1 = argv[1];
    80037c5a:	f042                	sd	a6,32(sp)
    80037c5c:	f43a                	sd	a4,40(sp)
js_get_regexp():
quickjs-nuttx/quickjs.c:43398
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80037c5e:	2781                	sext.w	a5,a5
    80037c60:	0ac79c63          	bne	a5,a2,80037d18 <js_regexp_compile+0xf6>
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    80037c64:	0066d783          	lhu	a5,6(a3)
    80037c68:	10b79163          	bne	a5,a1,80037d6a <js_regexp_compile+0x148>
js_regexp_compile():
quickjs-nuttx/quickjs.c:43516
        if (!JS_IsUndefined(flags1))
    80037c6c:	2701                	sext.w	a4,a4
    80037c6e:	478d                	li	a5,3
    80037c70:	04f70263          	beq	a4,a5,80037cb4 <js_regexp_compile+0x92>
quickjs-nuttx/quickjs.c:43544
}
    80037c74:	640e                	ld	s0,192(sp)
    80037c76:	60ae                	ld	ra,200(sp)
    80037c78:	74ea                	ld	s1,184(sp)
    80037c7a:	794a                	ld	s2,176(sp)
    80037c7c:	79aa                	ld	s3,168(sp)
    80037c7e:	7a0a                	ld	s4,160(sp)
    80037c80:	6aea                	ld	s5,152(sp)
quickjs-nuttx/quickjs.c:43517
            return JS_ThrowTypeError(ctx, "flags must be undefined");
    80037c82:	00035597          	auipc	a1,0x35
    80037c86:	0de58593          	addi	a1,a1,222 # 8006cd60 <qjsc_repl+0x77b0>
quickjs-nuttx/quickjs.c:43544
}
    80037c8a:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:43517
            return JS_ThrowTypeError(ctx, "flags must be undefined");
    80037c8c:	9e1e006f          	j	8001866c <JS_ThrowTypeError>
js_get_regexp():
quickjs-nuttx/quickjs.c:43404
        JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_REGEXP);
    80037c90:	45c9                	li	a1,18
    80037c92:	854a                	mv	a0,s2
    80037c94:	b33e00ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
js_regexp_compile():
quickjs-nuttx/quickjs.c:43544
}
    80037c98:	60ae                	ld	ra,200(sp)
    80037c9a:	640e                	ld	s0,192(sp)
quickjs-nuttx/quickjs.c:43538
        return JS_EXCEPTION;
    80037c9c:	4799                	li	a5,6
    80037c9e:	f882                	sd	zero,112(sp)
    80037ca0:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:43544
}
    80037ca2:	7546                	ld	a0,112(sp)
    80037ca4:	75e6                	ld	a1,120(sp)
    80037ca6:	74ea                	ld	s1,184(sp)
    80037ca8:	794a                	ld	s2,176(sp)
    80037caa:	79aa                	ld	s3,168(sp)
    80037cac:	7a0a                	ld	s4,160(sp)
    80037cae:	6aea                	ld	s5,152(sp)
    80037cb0:	6169                	addi	sp,sp,208
    80037cb2:	8082                	ret
quickjs-nuttx/quickjs.c:43518
        pattern = JS_DupValue(ctx, JS_MKPTR(JS_TAG_STRING, re1->pattern));
    80037cb4:	7a80                	ld	s0,48(a3)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80037cb6:	401c                	lw	a5,0(s0)
    80037cb8:	2785                	addiw	a5,a5,1
    80037cba:	c01c                	sw	a5,0(s0)
js_regexp_compile():
quickjs-nuttx/quickjs.c:43519
        bc = JS_DupValue(ctx, JS_MKPTR(JS_TAG_STRING, re1->bytecode));
    80037cbc:	7e84                	ld	s1,56(a3)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80037cbe:	409c                	lw	a5,0(s1)
    80037cc0:	2785                	addiw	a5,a5,1
    80037cc2:	c09c                	sw	a5,0(s1)
js_regexp_compile():
quickjs-nuttx/quickjs.c:43532
    JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, re->pattern));
    80037cc4:	030a3583          	ld	a1,48(s4)
    80037cc8:	57e5                	li	a5,-7
    80037cca:	5665                	li	a2,-7
    80037ccc:	854a                	mv	a0,s2
    80037cce:	ecbe                	sd	a5,88(sp)
    80037cd0:	e8ae                	sd	a1,80(sp)
    80037cd2:	acdd30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43533
    JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, re->bytecode));
    80037cd6:	038a3583          	ld	a1,56(s4)
    80037cda:	5665                	li	a2,-7
    80037cdc:	854a                	mv	a0,s2
    80037cde:	ac1d30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43536
    if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    80037ce2:	6582                	ld	a1,0(sp)
    80037ce4:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:43534
    re->pattern = JS_VALUE_GET_STRING(pattern);
    80037ce6:	028a3823          	sd	s0,48(s4)
quickjs-nuttx/quickjs.c:43535
    re->bytecode = JS_VALUE_GET_STRING(bc);
    80037cea:	029a3c23          	sd	s1,56(s4)
quickjs-nuttx/quickjs.c:43536
    if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    80037cee:	4701                	li	a4,0
    80037cf0:	4781                	li	a5,0
    80037cf2:	05600693          	li	a3,86
    80037cf6:	854a                	mv	a0,s2
    80037cf8:	f15ff0ef          	jal	ra,80037c0c <JS_SetProperty>
    80037cfc:	f8054ee3          	bltz	a0,80037c98 <js_regexp_compile+0x76>
quickjs-nuttx/quickjs.c:43544
}
    80037d00:	640e                	ld	s0,192(sp)
quickjs-nuttx/quickjs.c:43539
    return JS_DupValue(ctx, this_val);
    80037d02:	6502                	ld	a0,0(sp)
    80037d04:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:43544
}
    80037d06:	60ae                	ld	ra,200(sp)
    80037d08:	74ea                	ld	s1,184(sp)
    80037d0a:	794a                	ld	s2,176(sp)
    80037d0c:	79aa                	ld	s3,168(sp)
    80037d0e:	7a0a                	ld	s4,160(sp)
    80037d10:	6aea                	ld	s5,152(sp)
    80037d12:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:43539
    return JS_DupValue(ctx, this_val);
    80037d14:	f06d206f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:43522
        if (JS_IsUndefined(pattern1))
    80037d18:	470d                	li	a4,3
    80037d1a:	04e79863          	bne	a5,a4,80037d6a <js_regexp_compile+0x148>
quickjs-nuttx/quickjs.c:43523
            pattern = JS_AtomToString(ctx, JS_ATOM_empty_string);
    80037d1e:	02f00593          	li	a1,47
    80037d22:	db1e70ef          	jal	ra,8001fad2 <JS_AtomToString>
quickjs-nuttx/quickjs.c:43525
            pattern = JS_ToString(ctx, pattern1);
    80037d26:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80037d28:	6626                	ld	a2,72(sp)
js_regexp_compile():
quickjs-nuttx/quickjs.c:43526
        if (JS_IsException(pattern))
    80037d2a:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:43525
            pattern = JS_ToString(ctx, pattern1);
    80037d2c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:43526
        if (JS_IsException(pattern))
    80037d2e:	0006079b          	sext.w	a5,a2
    80037d32:	05578263          	beq	a5,s5,80037d76 <js_regexp_compile+0x154>
quickjs-nuttx/quickjs.c:43528
        bc = js_compile_regexp(ctx, pattern, flags1);
    80037d36:	7682                	ld	a3,32(sp)
    80037d38:	7722                	ld	a4,40(sp)
    80037d3a:	e0aa                	sd	a0,64(sp)
    80037d3c:	85aa                	mv	a1,a0
    80037d3e:	854a                	mv	a0,s2
    80037d40:	fd1ed0ef          	jal	ra,80025d10 <js_compile_regexp>
    80037d44:	f82a                	sd	a0,48(sp)
    80037d46:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:43529
        if (JS_IsException(bc))
    80037d48:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:43528
        bc = js_compile_regexp(ctx, pattern, flags1);
    80037d4c:	84aa                	mv	s1,a0
    80037d4e:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:43529
        if (JS_IsException(bc))
    80037d50:	f7579ae3          	bne	a5,s5,80037cc4 <js_regexp_compile+0xa2>
quickjs-nuttx/quickjs.c:43541 (discriminator 1)
    JS_FreeValue(ctx, pattern);
    80037d54:	6626                	ld	a2,72(sp)
    80037d56:	85a2                	mv	a1,s0
    80037d58:	854a                	mv	a0,s2
    80037d5a:	a45d30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43542 (discriminator 1)
    JS_FreeValue(ctx, bc);
    80037d5e:	85a6                	mv	a1,s1
    80037d60:	864e                	mv	a2,s3
    80037d62:	854a                	mv	a0,s2
    80037d64:	a3bd30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43543 (discriminator 1)
    return JS_EXCEPTION;
    80037d68:	bf05                	j	80037c98 <js_regexp_compile+0x76>
quickjs-nuttx/quickjs.c:43525
            pattern = JS_ToString(ctx, pattern1);
    80037d6a:	65c2                	ld	a1,16(sp)
    80037d6c:	6662                	ld	a2,24(sp)
    80037d6e:	854a                	mv	a0,s2
    80037d70:	a0de80ef          	jal	ra,8002077c <JS_ToString>
    80037d74:	bf4d                	j	80037d26 <js_regexp_compile+0x104>
quickjs-nuttx/quickjs.c:43521
        bc = JS_UNDEFINED;
    80037d76:	498d                	li	s3,3
    80037d78:	4481                	li	s1,0
    80037d7a:	bfe9                	j	80037d54 <js_regexp_compile+0x132>

0000000080037d7c <js_array_constructor>:
js_array_constructor():
quickjs-nuttx/quickjs.c:38785
{
    80037d7c:	7171                	addi	sp,sp,-176
    80037d7e:	e54e                	sd	s3,136(sp)
    80037d80:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:38789
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_ARRAY);
    80037d82:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:38785
{
    80037d84:	f122                	sd	s0,160(sp)
    80037d86:	ed26                	sd	s1,152(sp)
    80037d88:	e94a                	sd	s2,144(sp)
    80037d8a:	f506                	sd	ra,168(sp)
    80037d8c:	893a                	mv	s2,a4
    80037d8e:	e152                	sd	s4,128(sp)
    80037d90:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:38789
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_ARRAY);
    80037d92:	eebe30ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80037d96:	f02a                	sd	a0,32(sp)
    80037d98:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:38790
    if (JS_IsException(obj))
    80037d9a:	0005871b          	sext.w	a4,a1
    80037d9e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38789
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_ARRAY);
    80037da0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:38790
    if (JS_IsException(obj))
    80037da2:	00f71e63          	bne	a4,a5,80037dbe <js_array_constructor+0x42>
quickjs-nuttx/quickjs.c:38791
        return obj;
    80037da6:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:38804
    return obj;
    80037da8:	fc22                	sd	s0,56(sp)
quickjs-nuttx/quickjs.c:38808
}
    80037daa:	70aa                	ld	ra,168(sp)
    80037dac:	740a                	ld	s0,160(sp)
    80037dae:	7542                	ld	a0,48(sp)
    80037db0:	75e2                	ld	a1,56(sp)
    80037db2:	64ea                	ld	s1,152(sp)
    80037db4:	694a                	ld	s2,144(sp)
    80037db6:	69aa                	ld	s3,136(sp)
    80037db8:	6a0a                	ld	s4,128(sp)
    80037dba:	614d                	addi	sp,sp,176
    80037dbc:	8082                	ret
quickjs-nuttx/quickjs.c:38792
    if (argc == 1 && JS_IsNumber(argv[0])) {
    80037dbe:	4785                	li	a5,1
    80037dc0:	4a01                	li	s4,0
    80037dc2:	0af99263          	bne	s3,a5,80037e66 <js_array_constructor+0xea>
JS_IsNumber():
quickjs-nuttx/quickjs.h:571 (discriminator 1)
    int tag = JS_VALUE_GET_TAG(v);
    80037dc6:	00892783          	lw	a5,8(s2)
quickjs-nuttx/quickjs.h:572 (discriminator 1)
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    80037dca:	c781                	beqz	a5,80037dd2 <js_array_constructor+0x56>
quickjs-nuttx/quickjs.h:572
    80037dcc:	471d                	li	a4,7
    80037dce:	08e79c63          	bne	a5,a4,80037e66 <js_array_constructor+0xea>
js_array_constructor():
quickjs-nuttx/quickjs.c:38794
        if (JS_ToArrayLengthFree(ctx, &len, JS_DupValue(ctx, argv[0]), TRUE))
    80037dd2:	00093503          	ld	a0,0(s2)
    80037dd6:	00893583          	ld	a1,8(s2)
    80037dda:	e40d20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80037dde:	862a                	mv	a2,a0
    80037de0:	86ae                	mv	a3,a1
    80037de2:	4705                	li	a4,1
    80037de4:	180c                	addi	a1,sp,48
    80037de6:	8526                	mv	a0,s1
    80037de8:	c72eb0ef          	jal	ra,8002325a <JS_ToArrayLengthFree>
    80037dec:	e51d                	bnez	a0,80037e1a <js_array_constructor+0x9e>
quickjs-nuttx/quickjs.c:38796
        if (JS_SetProperty(ctx, obj, JS_ATOM_length, JS_NewUint32(ctx, len)) < 0)
    80037dee:	57c2                	lw	a5,48(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80037df0:	0007871b          	sext.w	a4,a5
    80037df4:	0207cc63          	bltz	a5,80037e2c <js_array_constructor+0xb0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80037df8:	da82                	sw	zero,116(sp)
    80037dfa:	d8ba                	sw	a4,112(sp)
    80037dfc:	77c6                	ld	a5,112(sp)
    80037dfe:	f482                	sd	zero,104(sp)
    80037e00:	f0be                	sd	a5,96(sp)
    80037e02:	4781                	li	a5,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80037e04:	d0ba                	sw	a4,96(sp)
js_array_constructor():
quickjs-nuttx/quickjs.c:38796
    80037e06:	7706                	ld	a4,96(sp)
    80037e08:	7582                	ld	a1,32(sp)
    80037e0a:	7622                	ld	a2,40(sp)
    80037e0c:	03000693          	li	a3,48
    80037e10:	8526                	mv	a0,s1
    80037e12:	dfbff0ef          	jal	ra,80037c0c <JS_SetProperty>
    80037e16:	04055c63          	bgez	a0,80037e6e <js_array_constructor+0xf2>
quickjs-nuttx/quickjs.c:38806
    JS_FreeValue(ctx, obj);
    80037e1a:	7582                	ld	a1,32(sp)
    80037e1c:	8622                	mv	a2,s0
    80037e1e:	8526                	mv	a0,s1
    80037e20:	97fd30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38807
    return JS_EXCEPTION;
    80037e24:	4799                	li	a5,6
    80037e26:	f802                	sd	zero,48(sp)
    80037e28:	fc3e                	sd	a5,56(sp)
    80037e2a:	b741                	j	80037daa <js_array_constructor+0x2e>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80037e2c:	d21787d3          	fcvt.d.wu	fa5,a5
    80037e30:	479d                	li	a5,7
    80037e32:	e2078753          	fmv.x.d	a4,fa5
js_array_constructor():
quickjs-nuttx/quickjs.h:230
    return v;
    80037e36:	b0be                	fsd	fa5,96(sp)
    80037e38:	2701                	sext.w	a4,a4
    80037e3a:	b7e9                	j	80037e04 <js_array_constructor+0x88>
quickjs-nuttx/quickjs.c:38800
            if (JS_SetPropertyUint32(ctx, obj, i, JS_DupValue(ctx, argv[i])) < 0)
    80037e3c:	004a1793          	slli	a5,s4,0x4
    80037e40:	97ca                	add	a5,a5,s2
    80037e42:	6388                	ld	a0,0(a5)
    80037e44:	678c                	ld	a1,8(a5)
    80037e46:	e436                	sd	a3,8(sp)
    80037e48:	0a05                	addi	s4,s4,1
    80037e4a:	dd0d20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80037e4e:	87ae                	mv	a5,a1
    80037e50:	f4ae                	sd	a1,104(sp)
    80037e52:	66a2                	ld	a3,8(sp)
    80037e54:	7582                	ld	a1,32(sp)
    80037e56:	872a                	mv	a4,a0
    80037e58:	f0aa                	sd	a0,96(sp)
    80037e5a:	8622                	mv	a2,s0
    80037e5c:	8526                	mv	a0,s1
    80037e5e:	cafdf0ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
    80037e62:	fa054ce3          	bltz	a0,80037e1a <js_array_constructor+0x9e>
quickjs-nuttx/quickjs.c:38799 (discriminator 1)
        for(i = 0; i < argc; i++) {
    80037e66:	000a069b          	sext.w	a3,s4
    80037e6a:	fd36c9e3          	blt	a3,s3,80037e3c <js_array_constructor+0xc0>
quickjs-nuttx/quickjs.c:38804
    return obj;
    80037e6e:	7782                	ld	a5,32(sp)
    80037e70:	f83e                	sd	a5,48(sp)
    80037e72:	bf1d                	j	80037da8 <js_array_constructor+0x2c>

0000000080037e74 <JS_SetPropertyInt64>:
JS_SetPropertyInt64():
quickjs-nuttx/quickjs.c:8800
{
    80037e74:	711d                	addi	sp,sp,-96
    80037e76:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:8804
    if ((uint64_t)idx <= INT32_MAX) {
    80037e78:	800007b7          	lui	a5,0x80000
quickjs-nuttx/quickjs.c:8800
{
    80037e7c:	ec86                	sd	ra,88(sp)
    80037e7e:	e8a2                	sd	s0,80(sp)
    80037e80:	e4a6                	sd	s1,72(sp)
    80037e82:	e0ca                	sd	s2,64(sp)
    80037e84:	e82e                	sd	a1,16(sp)
    80037e86:	ec32                	sd	a2,24(sp)
    80037e88:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:8804
    if ((uint64_t)idx <= INT32_MAX) {
    80037e8a:	fff7c793          	not	a5,a5
    80037e8e:	02d7e063          	bltu	a5,a3,80037eae <JS_SetPropertyInt64+0x3a>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80037e92:	f802                	sd	zero,48(sp)
JS_SetPropertyInt64():
quickjs-nuttx/quickjs.c:8806
        return JS_SetPropertyValue(ctx, this_obj, JS_NewInt32(ctx, idx), val,
    80037e94:	d836                	sw	a3,48(sp)
quickjs-nuttx/quickjs.c:8817
}
    80037e96:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:8806
        return JS_SetPropertyValue(ctx, this_obj, JS_NewInt32(ctx, idx), val,
    80037e98:	6822                	ld	a6,8(sp)
    80037e9a:	76c2                	ld	a3,48(sp)
quickjs-nuttx/quickjs.c:8817
}
    80037e9c:	60e6                	ld	ra,88(sp)
    80037e9e:	64a6                	ld	s1,72(sp)
    80037ea0:	6906                	ld	s2,64(sp)
quickjs-nuttx/quickjs.c:8806
        return JS_SetPropertyValue(ctx, this_obj, JS_NewInt32(ctx, idx), val,
    80037ea2:	87ba                	mv	a5,a4
    80037ea4:	6891                	lui	a7,0x4
    80037ea6:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:8817
}
    80037ea8:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:8806
        return JS_SetPropertyValue(ctx, this_obj, JS_NewInt32(ctx, idx), val,
    80037eaa:	a4bdf06f          	j	800178f4 <JS_SetPropertyValue>
quickjs-nuttx/quickjs.c:8809
    prop = JS_NewAtomInt64(ctx, idx);
    80037eae:	85b6                	mv	a1,a3
    80037eb0:	842a                	mv	s0,a0
    80037eb2:	b2ee80ef          	jal	ra,800201e0 <JS_NewAtomInt64>
    80037eb6:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:8810
    if (prop == JS_ATOM_NULL) {
    80037eba:	ec91                	bnez	s1,80037ed6 <JS_SetPropertyInt64+0x62>
quickjs-nuttx/quickjs.c:8811
        JS_FreeValue(ctx, val);
    80037ebc:	6582                	ld	a1,0(sp)
    80037ebe:	6622                	ld	a2,8(sp)
    80037ec0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:8812
        return -1;
    80037ec2:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:8811
        JS_FreeValue(ctx, val);
    80037ec4:	8dbd30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8817
}
    80037ec8:	60e6                	ld	ra,88(sp)
    80037eca:	6446                	ld	s0,80(sp)
    80037ecc:	64a6                	ld	s1,72(sp)
    80037ece:	854a                	mv	a0,s2
    80037ed0:	6906                	ld	s2,64(sp)
    80037ed2:	6125                	addi	sp,sp,96
    80037ed4:	8082                	ret
quickjs-nuttx/quickjs.c:8814
    res = JS_SetProperty(ctx, this_obj, prop, val);
    80037ed6:	65c2                	ld	a1,16(sp)
    80037ed8:	6702                	ld	a4,0(sp)
    80037eda:	67a2                	ld	a5,8(sp)
    80037edc:	6662                	ld	a2,24(sp)
    80037ede:	86a6                	mv	a3,s1
    80037ee0:	8522                	mv	a0,s0
    80037ee2:	d2bff0ef          	jal	ra,80037c0c <JS_SetProperty>
    80037ee6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:8815
    JS_FreeAtom(ctx, prop);
    80037ee8:	85a6                	mv	a1,s1
    80037eea:	8522                	mv	a0,s0
    80037eec:	a5cd30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:8816
    return res;
    80037ef0:	bfe1                	j	80037ec8 <JS_SetPropertyInt64+0x54>

0000000080037ef2 <js_array_fill>:
js_array_fill():
quickjs-nuttx/quickjs.c:39462
{
    80037ef2:	7175                	addi	sp,sp,-144
    80037ef4:	e122                	sd	s0,128(sp)
    80037ef6:	fca6                	sd	s1,120(sp)
    80037ef8:	f8ca                	sd	s2,112(sp)
    80037efa:	e506                	sd	ra,136(sp)
    80037efc:	84aa                	mv	s1,a0
    80037efe:	8936                	mv	s2,a3
    80037f00:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:39466
    obj = JS_ToObject(ctx, this_val);
    80037f02:	9b8f80ef          	jal	ra,800300ba <JS_ToObject>
    80037f06:	862a                	mv	a2,a0
    80037f08:	86ae                	mv	a3,a1
    80037f0a:	e0aa                	sd	a0,64(sp)
    80037f0c:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:39467
    if (js_get_length64(ctx, &len, obj))
    80037f0e:	8526                	mv	a0,s1
    80037f10:	102c                	addi	a1,sp,40
    80037f12:	ebfec0ef          	jal	ra,80024dd0 <js_get_length64>
    80037f16:	e929                	bnez	a0,80037f68 <js_array_fill+0x76>
quickjs-nuttx/quickjs.c:39470
    start = 0;
    80037f18:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:39471
    if (argc > 1 && !JS_IsUndefined(argv[1])) {
    80037f1a:	4785                	li	a5,1
    80037f1c:	0327c763          	blt	a5,s2,80037f4a <js_array_fill+0x58>
quickjs-nuttx/quickjs.c:39476
    end = len;
    80037f20:	7822                	ld	a6,40(sp)
quickjs-nuttx/quickjs.c:39477
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    80037f22:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:39476
    end = len;
    80037f24:	fc42                	sd	a6,56(sp)
quickjs-nuttx/quickjs.c:39477
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    80037f26:	0527c963          	blt	a5,s2,80037f78 <js_array_fill+0x86>
quickjs-nuttx/quickjs.c:39483
    while (start < end) {
    80037f2a:	76c2                	ld	a3,48(sp)
    80037f2c:	77e2                	ld	a5,56(sp)
    80037f2e:	06f6c463          	blt	a3,a5,80037f96 <js_array_fill+0xa4>
quickjs-nuttx/quickjs.c:39489
    return obj;
    80037f32:	6786                	ld	a5,64(sp)
    80037f34:	f0be                	sd	a5,96(sp)
    80037f36:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:39494
}
    80037f38:	60aa                	ld	ra,136(sp)
    80037f3a:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:39493
    return JS_EXCEPTION;
    80037f3c:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:39494
}
    80037f3e:	7506                	ld	a0,96(sp)
    80037f40:	75a6                	ld	a1,104(sp)
    80037f42:	74e6                	ld	s1,120(sp)
    80037f44:	7946                	ld	s2,112(sp)
    80037f46:	6149                	addi	sp,sp,144
    80037f48:	8082                	ret
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80037f4a:	6c14                	ld	a3,24(s0)
js_array_fill():
quickjs-nuttx/quickjs.c:39471 (discriminator 1)
    if (argc > 1 && !JS_IsUndefined(argv[1])) {
    80037f4c:	478d                	li	a5,3
    80037f4e:	0006871b          	sext.w	a4,a3
    80037f52:	fcf707e3          	beq	a4,a5,80037f20 <js_array_fill+0x2e>
quickjs-nuttx/quickjs.c:39472
        if (JS_ToInt64Clamp(ctx, &start, argv[1], 0, len, len))
    80037f56:	7822                	ld	a6,40(sp)
    80037f58:	6810                	ld	a2,16(s0)
    80037f5a:	4701                	li	a4,0
    80037f5c:	87c2                	mv	a5,a6
    80037f5e:	180c                	addi	a1,sp,48
    80037f60:	8526                	mv	a0,s1
    80037f62:	ddfec0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    80037f66:	dd4d                	beqz	a0,80037f20 <js_array_fill+0x2e>
quickjs-nuttx/quickjs.c:39492
    JS_FreeValue(ctx, obj);
    80037f68:	6586                	ld	a1,64(sp)
    80037f6a:	6626                	ld	a2,72(sp)
    80037f6c:	8526                	mv	a0,s1
    80037f6e:	831d30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39493
    return JS_EXCEPTION;
    80037f72:	4799                	li	a5,6
    80037f74:	f082                	sd	zero,96(sp)
    80037f76:	b7c9                	j	80037f38 <js_array_fill+0x46>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    80037f78:	7414                	ld	a3,40(s0)
js_array_fill():
quickjs-nuttx/quickjs.c:39477 (discriminator 1)
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    80037f7a:	478d                	li	a5,3
    80037f7c:	0006871b          	sext.w	a4,a3
    80037f80:	faf705e3          	beq	a4,a5,80037f2a <js_array_fill+0x38>
quickjs-nuttx/quickjs.c:39478
        if (JS_ToInt64Clamp(ctx, &end, argv[2], 0, len, len))
    80037f84:	7010                	ld	a2,32(s0)
    80037f86:	87c2                	mv	a5,a6
    80037f88:	4701                	li	a4,0
    80037f8a:	182c                	addi	a1,sp,56
    80037f8c:	8526                	mv	a0,s1
    80037f8e:	db3ec0ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    80037f92:	dd41                	beqz	a0,80037f2a <js_array_fill+0x38>
    80037f94:	bfd1                	j	80037f68 <js_array_fill+0x76>
quickjs-nuttx/quickjs.c:39484
        if (JS_SetPropertyInt64(ctx, obj, start,
    80037f96:	6008                	ld	a0,0(s0)
    80037f98:	640c                	ld	a1,8(s0)
    80037f9a:	e436                	sd	a3,8(sp)
    80037f9c:	c7ed20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80037fa0:	87ae                	mv	a5,a1
    80037fa2:	66a2                	ld	a3,8(sp)
    80037fa4:	6586                	ld	a1,64(sp)
    80037fa6:	6626                	ld	a2,72(sp)
    80037fa8:	872a                	mv	a4,a0
    80037faa:	8526                	mv	a0,s1
    80037fac:	ec9ff0ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    80037fb0:	fa054ce3          	bltz	a0,80037f68 <js_array_fill+0x76>
quickjs-nuttx/quickjs.c:39487
        start++;
    80037fb4:	77c2                	ld	a5,48(sp)
    80037fb6:	0785                	addi	a5,a5,1
    80037fb8:	f83e                	sd	a5,48(sp)
    80037fba:	bf85                	j	80037f2a <js_array_fill+0x38>

0000000080037fbc <JS_SetPropertyStr>:
JS_SetPropertyStr():
quickjs-nuttx/quickjs.c:8821
{
    80037fbc:	715d                	addi	sp,sp,-80
    80037fbe:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:8824
    atom = JS_NewAtom(ctx, prop);
    80037fc0:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:8821
{
    80037fc2:	e486                	sd	ra,72(sp)
    80037fc4:	e0a2                	sd	s0,64(sp)
    80037fc6:	fc26                	sd	s1,56(sp)
    80037fc8:	f84a                	sd	s2,48(sp)
    80037fca:	842a                	mv	s0,a0
    80037fcc:	f432                	sd	a2,40(sp)
    80037fce:	e83a                	sd	a4,16(sp)
    80037fd0:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:8824
    atom = JS_NewAtom(ctx, prop);
    80037fd2:	fe9e60ef          	jal	ra,8001efba <JS_NewAtom>
quickjs-nuttx/quickjs.c:8825
    ret = JS_SetPropertyInternal(ctx, this_obj, atom, val, this_obj, JS_PROP_THROW);
    80037fd6:	7802                	ld	a6,32(sp)
    80037fd8:	78a2                	ld	a7,40(sp)
    80037fda:	6791                	lui	a5,0x4
    80037fdc:	6742                	ld	a4,16(sp)
    80037fde:	e03e                	sd	a5,0(sp)
    80037fe0:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:8824
    atom = JS_NewAtom(ctx, prop);
    80037fe2:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:8825
    ret = JS_SetPropertyInternal(ctx, this_obj, atom, val, this_obj, JS_PROP_THROW);
    80037fe6:	86a6                	mv	a3,s1
    80037fe8:	85c2                	mv	a1,a6
    80037fea:	8646                	mv	a2,a7
    80037fec:	8522                	mv	a0,s0
    80037fee:	b5cdf0ef          	jal	ra,8001734a <JS_SetPropertyInternal>
    80037ff2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:8826
    JS_FreeAtom(ctx, atom);
    80037ff4:	85a6                	mv	a1,s1
    80037ff6:	8522                	mv	a0,s0
    80037ff8:	950d30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:8828
}
    80037ffc:	60a6                	ld	ra,72(sp)
    80037ffe:	6406                	ld	s0,64(sp)
