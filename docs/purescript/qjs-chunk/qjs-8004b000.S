    8004a000:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:28507
}
    8004a002:	6546                	ld	a0,80(sp)
    8004a004:	65e6                	ld	a1,88(sp)
    8004a006:	74e6                	ld	s1,120(sp)
    8004a008:	7946                	ld	s2,112(sp)
    8004a00a:	79a6                	ld	s3,104(sp)
    8004a00c:	6149                	addi	sp,sp,144
    8004a00e:	8082                	ret

000000008004a010 <__JS_EvalInternal>:
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34263
{
    8004a010:	712d                	addi	sp,sp,-288
    8004a012:	e24a                	sd	s2,256(sp)
    8004a014:	e02e                	sd	a1,0(sp)
    8004a016:	892a                	mv	s2,a0
    8004a018:	e432                	sd	a2,8(sp)
js_parse_init():
quickjs-nuttx/quickjs.c:34212
    memset(s, 0, sizeof(*s));
    8004a01a:	4581                	li	a1,0
    8004a01c:	07800613          	li	a2,120
    8004a020:	00a8                	addi	a0,sp,72
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34263
{
    8004a022:	ee06                	sd	ra,280(sp)
    8004a024:	ea22                	sd	s0,272(sp)
    8004a026:	e626                	sd	s1,264(sp)
    8004a028:	8436                	mv	s0,a3
    8004a02a:	84ba                	mv	s1,a4
    8004a02c:	f9d2                	sd	s4,240(sp)
    8004a02e:	edde                	sd	s7,216(sp)
    8004a030:	8a42                	mv	s4,a6
    8004a032:	e5e6                	sd	s9,200(sp)
    8004a034:	e1ea                	sd	s10,192(sp)
    8004a036:	8cbe                	mv	s9,a5
    8004a038:	8bc6                	mv	s7,a7
    8004a03a:	fdce                	sd	s3,248(sp)
    8004a03c:	f5d6                	sd	s5,232(sp)
    8004a03e:	f1da                	sd	s6,224(sp)
    8004a040:	e9e2                	sd	s8,208(sp)
js_parse_init():
quickjs-nuttx/quickjs.c:34212
    memset(s, 0, sizeof(*s));
    8004a042:	401190ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:34215
    s->line_num = 1;
    8004a046:	4605                	li	a2,1
    8004a048:	c6b2                	sw	a2,76(sp)
quickjs-nuttx/quickjs.c:34218
    s->token.val = ' ';
    8004a04a:	1602                	slli	a2,a2,0x20
quickjs-nuttx/quickjs.c:34217
    s->buf_end = s->buf_ptr + input_len;
    8004a04c:	009405b3          	add	a1,s0,s1
quickjs-nuttx/quickjs.c:34218
    s->token.val = ' ';
    8004a050:	02060613          	addi	a2,a2,32
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34274
    skip_shebang(&s->buf_ptr, s->buf_end);
    8004a054:	0928                	addi	a0,sp,152
js_parse_init():
quickjs-nuttx/quickjs.c:34213
    s->ctx = ctx;
    8004a056:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/quickjs.c:34214
    s->filename = filename;
    8004a058:	e8e6                	sd	s9,80(sp)
quickjs-nuttx/quickjs.c:34216
    s->buf_ptr = (const uint8_t *)input;
    8004a05a:	ed22                	sd	s0,152(sp)
quickjs-nuttx/quickjs.c:34217
    s->buf_end = s->buf_ptr + input_len;
    8004a05c:	f12e                	sd	a1,160(sp)
quickjs-nuttx/quickjs.c:34218
    s->token.val = ' ';
    8004a05e:	ecb2                	sd	a2,88(sp)
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34274
    skip_shebang(&s->buf_ptr, s->buf_end);
    8004a060:	b23be0ef          	jal	ra,80008b82 <skip_shebang>
quickjs-nuttx/quickjs.c:34276
    eval_type = flags & JS_EVAL_TYPE_MASK;
    8004a064:	003a7d13          	andi	s10,s4,3
quickjs-nuttx/quickjs.c:34278
    if (eval_type == JS_EVAL_TYPE_DIRECT) {
    8004a068:	4789                	li	a5,2
    8004a06a:	12fd1763          	bne	s10,a5,8004a198 <__JS_EvalInternal+0x188>
quickjs-nuttx/quickjs.c:34280
        sf = ctx->rt->current_stack_frame;
    8004a06e:	01893783          	ld	a5,24(s2)
    8004a072:	0f87ba83          	ld	s5,248(a5)
quickjs-nuttx/quickjs.c:34281
        assert(sf != NULL);
    8004a076:	000a9c63          	bnez	s5,8004a08e <__JS_EvalInternal+0x7e>
quickjs-nuttx/quickjs.c:34281 (discriminator 1)
    8004a07a:	65a1                	lui	a1,0x8
    8004a07c:	4601                	li	a2,0
    8004a07e:	5e958593          	addi	a1,a1,1513 # 85e9 <asinh-0x7fff7a17>
quickjs-nuttx/quickjs.c:34282 (discriminator 1)
        assert(JS_VALUE_GET_TAG(sf->cur_func) == JS_TAG_OBJECT);
    8004a082:	0001f517          	auipc	a0,0x1f
    8004a086:	51650513          	addi	a0,a0,1302 # 80069598 <qjsc_repl+0x3fe8>
    8004a08a:	0d3160ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:34282 (discriminator 2)
    8004a08e:	010aa703          	lw	a4,16(s5)
    8004a092:	57fd                	li	a5,-1
    8004a094:	00f70763          	beq	a4,a5,8004a0a2 <__JS_EvalInternal+0x92>
quickjs-nuttx/quickjs.c:34282 (discriminator 1)
    8004a098:	65a1                	lui	a1,0x8
    8004a09a:	4601                	li	a2,0
    8004a09c:	5ea58593          	addi	a1,a1,1514 # 85ea <asinh-0x7fff7a16>
    8004a0a0:	b7cd                	j	8004a082 <__JS_EvalInternal+0x72>
quickjs-nuttx/quickjs.c:34283 (discriminator 2)
        p = JS_VALUE_GET_OBJ(sf->cur_func);
    8004a0a2:	008ab403          	ld	s0,8(s5)
quickjs-nuttx/quickjs.c:34284 (discriminator 2)
        assert(js_class_has_bytecode(p->class_id));
    8004a0a6:	00645503          	lhu	a0,6(s0)
    8004a0aa:	b66bf0ef          	jal	ra,80009410 <js_class_has_bytecode>
    8004a0ae:	e511                	bnez	a0,8004a0ba <__JS_EvalInternal+0xaa>
quickjs-nuttx/quickjs.c:34284 (discriminator 1)
    8004a0b0:	65a1                	lui	a1,0x8
    8004a0b2:	4601                	li	a2,0
    8004a0b4:	5ec58593          	addi	a1,a1,1516 # 85ec <asinh-0x7fff7a14>
    8004a0b8:	b7e9                	j	8004a082 <__JS_EvalInternal+0x72>
quickjs-nuttx/quickjs.c:34285 (discriminator 2)
        b = p->u.func.function_bytecode;
    8004a0ba:	7804                	ld	s1,48(s0)
quickjs-nuttx/quickjs.c:34286 (discriminator 2)
        var_refs = p->u.func.var_refs;
    8004a0bc:	03843b03          	ld	s6,56(s0)
quickjs-nuttx/quickjs.c:34277 (discriminator 2)
    m = NULL;
    8004a0c0:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:34287 (discriminator 2)
        js_mode = b->js_mode;
    8004a0c2:	0184cc03          	lbu	s8,24(s1)
quickjs-nuttx/quickjs.c:34307
    fd = js_new_function_def(ctx, NULL, TRUE, FALSE, filename, 1);
    8004a0c6:	4785                	li	a5,1
    8004a0c8:	8766                	mv	a4,s9
    8004a0ca:	4681                	li	a3,0
    8004a0cc:	4605                	li	a2,1
    8004a0ce:	4581                	li	a1,0
    8004a0d0:	854a                	mv	a0,s2
    8004a0d2:	e42d50ef          	jal	ra,8001f714 <js_new_function_def>
    8004a0d6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:34308
    if (!fd)
    8004a0d8:	16050763          	beqz	a0,8004a246 <__JS_EvalInternal+0x236>
quickjs-nuttx/quickjs.c:34312
    fd->has_this_binding = (eval_type != JS_EVAL_TYPE_DIRECT);
    8004a0dc:	ffed0793          	addi	a5,s10,-2
quickjs-nuttx/quickjs.c:34310
    s->cur_func = fd;
    8004a0e0:	f52a                	sd	a0,168(sp)
quickjs-nuttx/quickjs.c:34312
    fd->has_this_binding = (eval_type != JS_EVAL_TYPE_DIRECT);
    8004a0e2:	00f037b3          	snez	a5,a5
    8004a0e6:	d17c                	sw	a5,100(a0)
quickjs-nuttx/quickjs.c:34313
    fd->backtrace_barrier = ((flags & JS_EVAL_FLAG_BACKTRACE_BARRIER) != 0);
    8004a0e8:	406a579b          	sraiw	a5,s4,0x6
    8004a0ec:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:34311
    fd->eval_type = eval_type;
    8004a0ee:	03a52e23          	sw	s10,60(a0)
quickjs-nuttx/quickjs.c:34312
    fd->has_this_binding = (eval_type != JS_EVAL_TYPE_DIRECT);
    8004a0f2:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:34313
    fd->backtrace_barrier = ((flags & JS_EVAL_FLAG_BACKTRACE_BARRIER) != 0);
    8004a0f4:	08f52023          	sw	a5,128(a0)
quickjs-nuttx/quickjs.c:34314
    if (eval_type == JS_EVAL_TYPE_DIRECT) {
    8004a0f8:	10ed1263          	bne	s10,a4,8004a1fc <__JS_EvalInternal+0x1ec>
quickjs-nuttx/quickjs.c:34315
        fd->new_target_allowed = b->new_target_allowed;
    8004a0fc:	6c9c                	ld	a5,24(s1)
    8004a0fe:	83b9                	srli	a5,a5,0xe
    8004a100:	8b85                	andi	a5,a5,1
    8004a102:	d53c                	sw	a5,104(a0)
quickjs-nuttx/quickjs.c:34316
        fd->super_call_allowed = b->super_call_allowed;
    8004a104:	6c9c                	ld	a5,24(s1)
    8004a106:	83bd                	srli	a5,a5,0xf
    8004a108:	8b85                	andi	a5,a5,1
    8004a10a:	d57c                	sw	a5,108(a0)
quickjs-nuttx/quickjs.c:34317
        fd->super_allowed = b->super_allowed;
    8004a10c:	01a4d783          	lhu	a5,26(s1)
    8004a110:	8b85                	andi	a5,a5,1
    8004a112:	d93c                	sw	a5,112(a0)
quickjs-nuttx/quickjs.c:34318
        fd->arguments_allowed = b->arguments_allowed;
    8004a114:	6c9c                	ld	a5,24(s1)
    8004a116:	83c5                	srli	a5,a5,0x11
    8004a118:	8b85                	andi	a5,a5,1
    8004a11a:	d97c                	sw	a5,116(a0)
quickjs-nuttx/quickjs.c:34326
    fd->func_name = JS_DupAtom(ctx, JS_ATOM__eval_);
    8004a11c:	05100793          	li	a5,81
quickjs-nuttx/quickjs.c:34325
    fd->js_mode = js_mode;
    8004a120:	09840323          	sb	s8,134(s0)
quickjs-nuttx/quickjs.c:34326
    fd->func_name = JS_DupAtom(ctx, JS_ATOM__eval_);
    8004a124:	08f42423          	sw	a5,136(s0)
quickjs-nuttx/quickjs.c:34327
    if (b) {
    8004a128:	e0e5                	bnez	s1,8004a208 <__JS_EvalInternal+0x1f8>
quickjs-nuttx/quickjs.c:34331
    fd->module = m;
    8004a12a:	21343c23          	sd	s3,536(s0)
quickjs-nuttx/quickjs.c:34332
    if (m != NULL || (flags & JS_EVAL_FLAG_ASYNC)) {
    8004a12e:	00099563          	bnez	s3,8004a138 <__JS_EvalInternal+0x128>
quickjs-nuttx/quickjs.c:34332 (discriminator 1)
    8004a132:	080a7793          	andi	a5,s4,128
    8004a136:	c791                	beqz	a5,8004a142 <__JS_EvalInternal+0x132>
quickjs-nuttx/quickjs.c:34333
        fd->in_function_body = TRUE;
    8004a138:	4785                	li	a5,1
    8004a13a:	dc7c                	sw	a5,124(s0)
quickjs-nuttx/quickjs.c:34334
        fd->func_kind = JS_FUNC_ASYNC;
    8004a13c:	4789                	li	a5,2
    8004a13e:	08f40223          	sb	a5,132(s0)
quickjs-nuttx/quickjs.c:34336
    s->is_module = (m != NULL);
    8004a142:	013037b3          	snez	a5,s3
    8004a146:	d93e                	sw	a5,176(sp)
quickjs-nuttx/quickjs.c:34339
    push_scope(s); /* body scope */
    8004a148:	0088                	addi	a0,sp,64
quickjs-nuttx/quickjs.c:34337
    s->allow_html_comments = !s->is_module;
    8004a14a:	0019b793          	seqz	a5,s3
    8004a14e:	db3e                	sw	a5,180(sp)
quickjs-nuttx/quickjs.c:34339
    push_scope(s); /* body scope */
    8004a150:	e78d30ef          	jal	ra,8001d7c8 <push_scope>
quickjs-nuttx/quickjs.c:34340
    fd->body_scope = fd->scope_level;
    8004a154:	0e042783          	lw	a5,224(s0)
js_parse_program():
quickjs-nuttx/quickjs.c:34161
    if (next_token(s))
    8004a158:	0088                	addi	a0,sp,64
quickjs-nuttx/quickjs.c:34158
    JSFunctionDef *fd = s->cur_func;
    8004a15a:	74aa                	ld	s1,168(sp)
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34340
    fd->body_scope = fd->scope_level;
    8004a15c:	10f42c23          	sw	a5,280(s0)
js_parse_program():
quickjs-nuttx/quickjs.c:34161
    if (next_token(s))
    8004a160:	c26e40ef          	jal	ra,8002e586 <next_token>
    8004a164:	e969                	bnez	a0,8004a236 <__JS_EvalInternal+0x226>
js_parse_directives():
quickjs-nuttx/quickjs.c:33413
    if (s->token.val != TOK_STRING)
    8004a166:	4766                	lw	a4,88(sp)
    8004a168:	f8100793          	li	a5,-127
    8004a16c:	36f70363          	beq	a4,a5,8004a4d2 <__JS_EvalInternal+0x4c2>
js_parse_program():
quickjs-nuttx/quickjs.c:34168
        (fd->eval_type == JS_EVAL_TYPE_MODULE) ||
    8004a170:	5cd8                	lw	a4,60(s1)
    8004a172:	4785                	li	a5,1
    8004a174:	36e7e563          	bltu	a5,a4,8004a4de <__JS_EvalInternal+0x4ce>
quickjs-nuttx/quickjs.c:34167
    fd->is_global_var = (fd->eval_type == JS_EVAL_TYPE_GLOBAL) ||
    8004a178:	c0bc                	sw	a5,64(s1)
quickjs-nuttx/quickjs.c:34171
    if (!s->is_module) {
    8004a17a:	57ca                	lw	a5,176(sp)
    8004a17c:	eb99                	bnez	a5,8004a192 <__JS_EvalInternal+0x182>
quickjs-nuttx/quickjs.c:34173
        fd->eval_ret_idx = idx = add_var(s->ctx, fd, JS_ATOM__ret_);
    8004a17e:	6506                	ld	a0,64(sp)
    8004a180:	05200613          	li	a2,82
    8004a184:	85a6                	mv	a1,s1
    8004a186:	f9edf0ef          	jal	ra,80029924 <add_var>
    8004a18a:	0ca4a423          	sw	a0,200(s1)
quickjs-nuttx/quickjs.c:34174
        if (idx < 0)
    8004a18e:	0a054463          	bltz	a0,8004a236 <__JS_EvalInternal+0x226>
quickjs-nuttx/quickjs.c:34178
    while (s->token.val != TOK_EOF) {
    8004a192:	fac00b93          	li	s7,-84
    8004a196:	aeb9                	j	8004a4f4 <__JS_EvalInternal+0x4e4>
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34293
        if (flags & JS_EVAL_FLAG_STRICT)
    8004a198:	403a5c1b          	sraiw	s8,s4,0x3
quickjs-nuttx/quickjs.c:34295
        if (flags & JS_EVAL_FLAG_STRIP)
    8004a19c:	010a7793          	andi	a5,s4,16
quickjs-nuttx/quickjs.c:34294
            js_mode |= JS_MODE_STRICT;
    8004a1a0:	001c7c13          	andi	s8,s8,1
quickjs-nuttx/quickjs.c:34295
        if (flags & JS_EVAL_FLAG_STRIP)
    8004a1a4:	c399                	beqz	a5,8004a1aa <__JS_EvalInternal+0x19a>
quickjs-nuttx/quickjs.c:34296
            js_mode |= JS_MODE_STRIP;
    8004a1a6:	002c6c13          	ori	s8,s8,2
quickjs-nuttx/quickjs.c:34297
        if (eval_type == JS_EVAL_TYPE_MODULE) {
    8004a1aa:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:34277
    m = NULL;
    8004a1ac:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:34297
        if (eval_type == JS_EVAL_TYPE_MODULE) {
    8004a1ae:	04fd1363          	bne	s10,a5,8004a1f4 <__JS_EvalInternal+0x1e4>
quickjs-nuttx/quickjs.c:34298
            JSAtom module_name = JS_NewAtom(ctx, filename);
    8004a1b2:	85e6                	mv	a1,s9
    8004a1b4:	854a                	mv	a0,s2
    8004a1b6:	e05d40ef          	jal	ra,8001efba <JS_NewAtom>
    8004a1ba:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:34299
            if (module_name == JS_ATOM_NULL)
    8004a1be:	e585                	bnez	a1,8004a1e6 <__JS_EvalInternal+0x1d6>
quickjs-nuttx/quickjs.c:34300
                return JS_EXCEPTION;
    8004a1c0:	4799                	li	a5,6
    8004a1c2:	f802                	sd	zero,48(sp)
    8004a1c4:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:34375 (discriminator 1)
}
    8004a1c6:	60f2                	ld	ra,280(sp)
    8004a1c8:	6452                	ld	s0,272(sp)
    8004a1ca:	7542                	ld	a0,48(sp)
    8004a1cc:	75e2                	ld	a1,56(sp)
    8004a1ce:	64b2                	ld	s1,264(sp)
    8004a1d0:	6912                	ld	s2,256(sp)
    8004a1d2:	79ee                	ld	s3,248(sp)
    8004a1d4:	7a4e                	ld	s4,240(sp)
    8004a1d6:	7aae                	ld	s5,232(sp)
    8004a1d8:	7b0e                	ld	s6,224(sp)
    8004a1da:	6bee                	ld	s7,216(sp)
    8004a1dc:	6c4e                	ld	s8,208(sp)
    8004a1de:	6cae                	ld	s9,200(sp)
    8004a1e0:	6d0e                	ld	s10,192(sp)
    8004a1e2:	6115                	addi	sp,sp,288
    8004a1e4:	8082                	ret
quickjs-nuttx/quickjs.c:34301
            m = js_new_module_def(ctx, module_name);
    8004a1e6:	854a                	mv	a0,s2
    8004a1e8:	b1ed10ef          	jal	ra,8001b506 <js_new_module_def>
    8004a1ec:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:34304
            js_mode |= JS_MODE_STRICT;
    8004a1ee:	001c6c13          	ori	s8,s8,1
quickjs-nuttx/quickjs.c:34302
            if (!m)
    8004a1f2:	d579                	beqz	a0,8004a1c0 <__JS_EvalInternal+0x1b0>
quickjs-nuttx/quickjs.c:34290
        b = NULL;
    8004a1f4:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:34291
        var_refs = NULL;
    8004a1f6:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:34289
        sf = NULL;
    8004a1f8:	4a81                	li	s5,0
    8004a1fa:	b5f1                	j	8004a0c6 <__JS_EvalInternal+0xb6>
quickjs-nuttx/quickjs.c:34322
        fd->super_allowed = FALSE;
    8004a1fc:	4785                	li	a5,1
    8004a1fe:	1782                	slli	a5,a5,0x20
quickjs-nuttx/quickjs.c:34320
        fd->new_target_allowed = FALSE;
    8004a200:	06053423          	sd	zero,104(a0)
quickjs-nuttx/quickjs.c:34322
        fd->super_allowed = FALSE;
    8004a204:	f93c                	sd	a5,112(a0)
    8004a206:	bf19                	j	8004a11c <__JS_EvalInternal+0x10c>
add_closure_variables():
quickjs-nuttx/quickjs.c:30973
    count = b->arg_count + b->var_count + b->closure_var_count;
    8004a208:	0424d703          	lhu	a4,66(s1)
    8004a20c:	0404d783          	lhu	a5,64(s1)
    8004a210:	9fb9                	addw	a5,a5,a4
    8004a212:	4cf8                	lw	a4,92(s1)
quickjs-nuttx/quickjs.c:30974
    s->closure_var = NULL;
    8004a214:	1a043023          	sd	zero,416(s0)
quickjs-nuttx/quickjs.c:30975
    s->closure_var_count = 0;
    8004a218:	18042c23          	sw	zero,408(s0)
quickjs-nuttx/quickjs.c:30973
    count = b->arg_count + b->var_count + b->closure_var_count;
    8004a21c:	00e785bb          	addw	a1,a5,a4
quickjs-nuttx/quickjs.c:30976
    s->closure_var_size = count;
    8004a220:	18b42e23          	sw	a1,412(s0)
quickjs-nuttx/quickjs.c:30977
    if (count == 0)
    8004a224:	f00583e3          	beqz	a1,8004a12a <__JS_EvalInternal+0x11a>
quickjs-nuttx/quickjs.c:30979
    s->closure_var = js_malloc(ctx, sizeof(s->closure_var[0]) * count);
    8004a228:	058e                	slli	a1,a1,0x3
    8004a22a:	854a                	mv	a0,s2
    8004a22c:	ed9cf0ef          	jal	ra,8001a104 <js_malloc>
    8004a230:	1aa43023          	sd	a0,416(s0)
quickjs-nuttx/quickjs.c:30980
    if (!s->closure_var)
    8004a234:	e155                	bnez	a0,8004a2d8 <__JS_EvalInternal+0x2c8>
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34345
        free_token(s, &s->token);
    8004a236:	08ac                	addi	a1,sp,88
    8004a238:	0088                	addi	a0,sp,64
    8004a23a:	95fc20ef          	jal	ra,8000cb98 <free_token>
quickjs-nuttx/quickjs.c:34346
        js_free_function_def(ctx, fd);
    8004a23e:	85a2                	mv	a1,s0
    8004a240:	854a                	mv	a0,s2
    8004a242:	9dfc20ef          	jal	ra,8000cc20 <js_free_function_def>
quickjs-nuttx/quickjs.c:34372
    if (m)
    8004a246:	f6098de3          	beqz	s3,8004a1c0 <__JS_EvalInternal+0x1b0>
    8004a24a:	ae2d                	j	8004a584 <__JS_EvalInternal+0x574>
add_closure_variables():
quickjs-nuttx/quickjs.c:30984
        vd = &b->vardefs[b->arg_count + i];
    8004a24c:	0404dc83          	lhu	s9,64(s1)
    8004a250:	017c8cbb          	addw	s9,s9,s7
    8004a254:	004c9793          	slli	a5,s9,0x4
    8004a258:	0304bc83          	ld	s9,48(s1)
    8004a25c:	9cbe                	add	s9,s9,a5
quickjs-nuttx/quickjs.c:30985
        if (vd->scope_level > 0) {
    8004a25e:	004ca783          	lw	a5,4(s9)
    8004a262:	06f05963          	blez	a5,8004a2d4 <__JS_EvalInternal+0x2c4>
quickjs-nuttx/quickjs.c:30986
            JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a266:	19842783          	lw	a5,408(s0)
    8004a26a:	1a043c03          	ld	s8,416(s0)
set_closure_from_var():
quickjs-nuttx/quickjs.c:30961
    cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a26e:	854a                	mv	a0,s2
add_closure_variables():
quickjs-nuttx/quickjs.c:30986
            JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a270:	0017871b          	addiw	a4,a5,1
    8004a274:	078e                	slli	a5,a5,0x3
    8004a276:	18e42c23          	sw	a4,408(s0)
    8004a27a:	9c3e                	add	s8,s8,a5
set_closure_from_var():
quickjs-nuttx/quickjs.c:30955
    cv->is_local = TRUE;
    8004a27c:	000c4683          	lbu	a3,0(s8) # 4000 <asinh-0x7fffc000>
    8004a280:	9af1                	andi	a3,a3,-4
    8004a282:	0016e693          	ori	a3,a3,1
    8004a286:	00dc0023          	sb	a3,0(s8)
quickjs-nuttx/quickjs.c:30957
    cv->is_const = vd->is_const;
    8004a28a:	00cca703          	lw	a4,12(s9)
    8004a28e:	8b05                	andi	a4,a4,1
    8004a290:	0027179b          	slliw	a5,a4,0x2
    8004a294:	ffb6f713          	andi	a4,a3,-5
    8004a298:	8f5d                	or	a4,a4,a5
    8004a29a:	00ec0023          	sb	a4,0(s8)
quickjs-nuttx/quickjs.c:30958
    cv->is_lexical = vd->is_lexical;
    8004a29e:	00cca783          	lw	a5,12(s9)
    8004a2a2:	0027979b          	slliw	a5,a5,0x2
    8004a2a6:	0087f693          	andi	a3,a5,8
    8004a2aa:	ff777793          	andi	a5,a4,-9
    8004a2ae:	8fd5                	or	a5,a5,a3
    8004a2b0:	00fc0023          	sb	a5,0(s8)
quickjs-nuttx/quickjs.c:30959
    cv->var_kind = vd->var_kind;
    8004a2b4:	00cca703          	lw	a4,12(s9)
    8004a2b8:	8bbd                	andi	a5,a5,15
quickjs-nuttx/quickjs.c:30960
    cv->var_idx = var_idx;
    8004a2ba:	017c1123          	sh	s7,2(s8)
quickjs-nuttx/quickjs.c:30959
    cv->var_kind = vd->var_kind;
    8004a2be:	0f077713          	andi	a4,a4,240
    8004a2c2:	8fd9                	or	a5,a5,a4
    8004a2c4:	00fc0023          	sb	a5,0(s8)
quickjs-nuttx/quickjs.c:30961
    cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a2c8:	000ca583          	lw	a1,0(s9)
    8004a2cc:	e3bc00ef          	jal	ra,8000b106 <JS_DupAtom>
    8004a2d0:	00ac2223          	sw	a0,4(s8)
add_closure_variables():
quickjs-nuttx/quickjs.c:30989
        i = vd->scope_next;
    8004a2d4:	008cab83          	lw	s7,8(s9)
quickjs-nuttx/quickjs.c:30983
    for (i = scope_idx; i >= 0;) {
    8004a2d8:	f60bdae3          	bgez	s7,8004a24c <__JS_EvalInternal+0x23c>
quickjs-nuttx/quickjs.c:30992
    if (!is_arg_scope) {
    8004a2dc:	57f9                	li	a5,-2
    8004a2de:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:30997
            cv->is_local = TRUE;
    8004a2e0:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:30992
    if (!is_arg_scope) {
    8004a2e2:	0cfb9963          	bne	s7,a5,8004a3b4 <__JS_EvalInternal+0x3a4>
quickjs-nuttx/quickjs.c:31015
        for(i = 0; i < b->var_count; i++) {
    8004a2e6:	4c81                	li	s9,0
    8004a2e8:	0424d783          	lhu	a5,66(s1)
    8004a2ec:	0efcd163          	bge	s9,a5,8004a3ce <__JS_EvalInternal+0x3be>
quickjs-nuttx/quickjs.c:31016
            vd = &b->vardefs[b->arg_count + i];
    8004a2f0:	0404dc03          	lhu	s8,64(s1)
    8004a2f4:	019c0c3b          	addw	s8,s8,s9
    8004a2f8:	004c1793          	slli	a5,s8,0x4
    8004a2fc:	0304bc03          	ld	s8,48(s1)
    8004a300:	9c3e                	add	s8,s8,a5
quickjs-nuttx/quickjs.c:31017
            if (vd->scope_level == 0 && is_var_in_arg_scope(vd)) {
    8004a302:	004c2783          	lw	a5,4(s8)
    8004a306:	efa5                	bnez	a5,8004a37e <__JS_EvalInternal+0x36e>
    8004a308:	8562                	mv	a0,s8
    8004a30a:	abebf0ef          	jal	ra,800095c8 <is_var_in_arg_scope>
    8004a30e:	c925                	beqz	a0,8004a37e <__JS_EvalInternal+0x36e>
quickjs-nuttx/quickjs.c:31018
                JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a310:	19842783          	lw	a5,408(s0)
    8004a314:	1a043b83          	ld	s7,416(s0)
set_closure_from_var():
quickjs-nuttx/quickjs.c:30961
    cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a318:	854a                	mv	a0,s2
add_closure_variables():
quickjs-nuttx/quickjs.c:31018
                JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a31a:	0017871b          	addiw	a4,a5,1
    8004a31e:	078e                	slli	a5,a5,0x3
    8004a320:	18e42c23          	sw	a4,408(s0)
    8004a324:	9bbe                	add	s7,s7,a5
set_closure_from_var():
quickjs-nuttx/quickjs.c:30955
    cv->is_local = TRUE;
    8004a326:	000bc683          	lbu	a3,0(s7) # 4000 <asinh-0x7fffc000>
    8004a32a:	9af1                	andi	a3,a3,-4
    8004a32c:	0016e693          	ori	a3,a3,1
    8004a330:	00db8023          	sb	a3,0(s7)
quickjs-nuttx/quickjs.c:30957
    cv->is_const = vd->is_const;
    8004a334:	00cc2703          	lw	a4,12(s8)
    8004a338:	8b05                	andi	a4,a4,1
    8004a33a:	0027179b          	slliw	a5,a4,0x2
    8004a33e:	ffb6f713          	andi	a4,a3,-5
    8004a342:	8f5d                	or	a4,a4,a5
    8004a344:	00eb8023          	sb	a4,0(s7)
quickjs-nuttx/quickjs.c:30958
    cv->is_lexical = vd->is_lexical;
    8004a348:	00cc2783          	lw	a5,12(s8)
    8004a34c:	0027979b          	slliw	a5,a5,0x2
    8004a350:	0087f693          	andi	a3,a5,8
    8004a354:	ff777793          	andi	a5,a4,-9
    8004a358:	8fd5                	or	a5,a5,a3
    8004a35a:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:30959
    cv->var_kind = vd->var_kind;
    8004a35e:	00cc2703          	lw	a4,12(s8)
    8004a362:	8bbd                	andi	a5,a5,15
quickjs-nuttx/quickjs.c:30960
    cv->var_idx = var_idx;
    8004a364:	019b9123          	sh	s9,2(s7)
quickjs-nuttx/quickjs.c:30959
    cv->var_kind = vd->var_kind;
    8004a368:	0f077713          	andi	a4,a4,240
    8004a36c:	8fd9                	or	a5,a5,a4
    8004a36e:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:30961
    cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a372:	000c2583          	lw	a1,0(s8)
    8004a376:	d91c00ef          	jal	ra,8000b106 <JS_DupAtom>
    8004a37a:	00aba223          	sw	a0,4(s7)
add_closure_variables():
quickjs-nuttx/quickjs.c:31015
        for(i = 0; i < b->var_count; i++) {
    8004a37e:	2c85                	addiw	s9,s9,1
    8004a380:	b7a5                	j	8004a2e8 <__JS_EvalInternal+0x2d8>
quickjs-nuttx/quickjs.c:30995
            JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a382:	19842783          	lw	a5,408(s0)
    8004a386:	1a043b83          	ld	s7,416(s0)
quickjs-nuttx/quickjs.c:31003
            cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a38a:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:30995
            JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a38c:	0017871b          	addiw	a4,a5,1
    8004a390:	18e42c23          	sw	a4,408(s0)
    8004a394:	078e                	slli	a5,a5,0x3
    8004a396:	9bbe                	add	s7,s7,a5
quickjs-nuttx/quickjs.c:30996
            vd = &b->vardefs[i];
    8004a398:	789c                	ld	a5,48(s1)
    8004a39a:	004c1713          	slli	a4,s8,0x4
quickjs-nuttx/quickjs.c:31002
            cv->var_idx = i;
    8004a39e:	018b9123          	sh	s8,2(s7)
quickjs-nuttx/quickjs.c:30996
            vd = &b->vardefs[i];
    8004a3a2:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30997
            cv->is_local = TRUE;
    8004a3a4:	019b8023          	sb	s9,0(s7)
quickjs-nuttx/quickjs.c:31003
            cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a3a8:	438c                	lw	a1,0(a5)
    8004a3aa:	0c05                	addi	s8,s8,1
    8004a3ac:	d5bc00ef          	jal	ra,8000b106 <JS_DupAtom>
    8004a3b0:	00aba223          	sw	a0,4(s7)
quickjs-nuttx/quickjs.c:30994
        for(i = 0; i < b->arg_count; i++) {
    8004a3b4:	0404d703          	lhu	a4,64(s1)
    8004a3b8:	000c079b          	sext.w	a5,s8
    8004a3bc:	fce7c3e3          	blt	a5,a4,8004a382 <__JS_EvalInternal+0x372>
quickjs-nuttx/quickjs.c:31006
        for(i = 0; i < b->var_count; i++) {
    8004a3c0:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:31008
            if (vd->scope_level == 0 && vd->var_name != JS_ATOM__ret_) {
    8004a3c2:	05200c93          	li	s9,82
quickjs-nuttx/quickjs.c:31006
        for(i = 0; i < b->var_count; i++) {
    8004a3c6:	0424d783          	lhu	a5,66(s1)
    8004a3ca:	00fc4463          	blt	s8,a5,8004a3d2 <__JS_EvalInternal+0x3c2>
quickjs-nuttx/quickjs.c:31015
        for(i = 0; i < b->var_count; i++) {
    8004a3ce:	4c01                	li	s8,0
    8004a3d0:	a8ed                	j	8004a4ca <__JS_EvalInternal+0x4ba>
quickjs-nuttx/quickjs.c:31007
            vd = &b->vardefs[b->arg_count + i];
    8004a3d2:	0404d603          	lhu	a2,64(s1)
    8004a3d6:	0186063b          	addw	a2,a2,s8
    8004a3da:	00461793          	slli	a5,a2,0x4
    8004a3de:	7890                	ld	a2,48(s1)
    8004a3e0:	963e                	add	a2,a2,a5
quickjs-nuttx/quickjs.c:31008
            if (vd->scope_level == 0 && vd->var_name != JS_ATOM__ret_) {
    8004a3e2:	425c                	lw	a5,4(a2)
    8004a3e4:	e7bd                	bnez	a5,8004a452 <__JS_EvalInternal+0x442>
    8004a3e6:	421c                	lw	a5,0(a2)
    8004a3e8:	07978563          	beq	a5,s9,8004a452 <__JS_EvalInternal+0x442>
quickjs-nuttx/quickjs.c:31009
                JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a3ec:	19842783          	lw	a5,408(s0)
    8004a3f0:	1a043b83          	ld	s7,416(s0)
set_closure_from_var():
quickjs-nuttx/quickjs.c:30961
    cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a3f4:	854a                	mv	a0,s2
add_closure_variables():
quickjs-nuttx/quickjs.c:31009
                JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a3f6:	0017871b          	addiw	a4,a5,1
    8004a3fa:	078e                	slli	a5,a5,0x3
    8004a3fc:	18e42c23          	sw	a4,408(s0)
    8004a400:	9bbe                	add	s7,s7,a5
set_closure_from_var():
quickjs-nuttx/quickjs.c:30955
    cv->is_local = TRUE;
    8004a402:	000bc683          	lbu	a3,0(s7)
    8004a406:	9af1                	andi	a3,a3,-4
    8004a408:	0016e693          	ori	a3,a3,1
    8004a40c:	00db8023          	sb	a3,0(s7)
quickjs-nuttx/quickjs.c:30957
    cv->is_const = vd->is_const;
    8004a410:	4658                	lw	a4,12(a2)
    8004a412:	8b05                	andi	a4,a4,1
    8004a414:	0027179b          	slliw	a5,a4,0x2
    8004a418:	ffb6f713          	andi	a4,a3,-5
    8004a41c:	8f5d                	or	a4,a4,a5
    8004a41e:	00eb8023          	sb	a4,0(s7)
quickjs-nuttx/quickjs.c:30958
    cv->is_lexical = vd->is_lexical;
    8004a422:	465c                	lw	a5,12(a2)
    8004a424:	0027979b          	slliw	a5,a5,0x2
    8004a428:	0087f693          	andi	a3,a5,8
    8004a42c:	ff777793          	andi	a5,a4,-9
    8004a430:	8fd5                	or	a5,a5,a3
    8004a432:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:30959
    cv->var_kind = vd->var_kind;
    8004a436:	4658                	lw	a4,12(a2)
    8004a438:	8bbd                	andi	a5,a5,15
quickjs-nuttx/quickjs.c:30960
    cv->var_idx = var_idx;
    8004a43a:	018b9123          	sh	s8,2(s7)
quickjs-nuttx/quickjs.c:30959
    cv->var_kind = vd->var_kind;
    8004a43e:	0f077713          	andi	a4,a4,240
    8004a442:	8fd9                	or	a5,a5,a4
    8004a444:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:30961
    cv->var_name = JS_DupAtom(ctx, vd->var_name);
    8004a448:	420c                	lw	a1,0(a2)
    8004a44a:	cbdc00ef          	jal	ra,8000b106 <JS_DupAtom>
    8004a44e:	00aba223          	sw	a0,4(s7)
add_closure_variables():
quickjs-nuttx/quickjs.c:31006
        for(i = 0; i < b->var_count; i++) {
    8004a452:	2c05                	addiw	s8,s8,1
    8004a454:	bf8d                	j	8004a3c6 <__JS_EvalInternal+0x3b6>
quickjs-nuttx/quickjs.c:31024
        JSClosureVar *cv0 = &b->closure_var[i];
    8004a456:	7c90                	ld	a2,56(s1)
    8004a458:	003c1793          	slli	a5,s8,0x3
quickjs-nuttx/quickjs.c:31025
        JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a45c:	1a043b83          	ld	s7,416(s0)
quickjs-nuttx/quickjs.c:31024
        JSClosureVar *cv0 = &b->closure_var[i];
    8004a460:	963e                	add	a2,a2,a5
quickjs-nuttx/quickjs.c:31025
        JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a462:	19842783          	lw	a5,408(s0)
quickjs-nuttx/quickjs.c:31032
        cv->var_name = JS_DupAtom(ctx, cv0->var_name);
    8004a466:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:31025
        JSClosureVar *cv = &s->closure_var[s->closure_var_count++];
    8004a468:	0017871b          	addiw	a4,a5,1
    8004a46c:	078e                	slli	a5,a5,0x3
    8004a46e:	18e42c23          	sw	a4,408(s0)
    8004a472:	9bbe                	add	s7,s7,a5
quickjs-nuttx/quickjs.c:31026
        cv->is_local = FALSE;
    8004a474:	000bc783          	lbu	a5,0(s7)
    8004a478:	ffe7f713          	andi	a4,a5,-2
    8004a47c:	00eb8023          	sb	a4,0(s7)
quickjs-nuttx/quickjs.c:31027
        cv->is_arg = cv0->is_arg;
    8004a480:	4214                	lw	a3,0(a2)
    8004a482:	9bf1                	andi	a5,a5,-4
    8004a484:	8a89                	andi	a3,a3,2
    8004a486:	8edd                	or	a3,a3,a5
    8004a488:	00db8023          	sb	a3,0(s7)
quickjs-nuttx/quickjs.c:31028
        cv->is_const = cv0->is_const;
    8004a48c:	4218                	lw	a4,0(a2)
    8004a48e:	00477793          	andi	a5,a4,4
    8004a492:	ffb6f713          	andi	a4,a3,-5
    8004a496:	8f5d                	or	a4,a4,a5
    8004a498:	00eb8023          	sb	a4,0(s7)
quickjs-nuttx/quickjs.c:31029
        cv->is_lexical = cv0->is_lexical;
    8004a49c:	421c                	lw	a5,0(a2)
    8004a49e:	0087f693          	andi	a3,a5,8
    8004a4a2:	ff777793          	andi	a5,a4,-9
    8004a4a6:	8fd5                	or	a5,a5,a3
    8004a4a8:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:31030
        cv->var_kind = cv0->var_kind;
    8004a4ac:	4218                	lw	a4,0(a2)
    8004a4ae:	8bbd                	andi	a5,a5,15
quickjs-nuttx/quickjs.c:31031
        cv->var_idx = i;
    8004a4b0:	018b9123          	sh	s8,2(s7)
quickjs-nuttx/quickjs.c:31030
        cv->var_kind = cv0->var_kind;
    8004a4b4:	0f077713          	andi	a4,a4,240
    8004a4b8:	8fd9                	or	a5,a5,a4
    8004a4ba:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:31032
        cv->var_name = JS_DupAtom(ctx, cv0->var_name);
    8004a4be:	424c                	lw	a1,4(a2)
quickjs-nuttx/quickjs.c:31023
    for(i = 0; i < b->closure_var_count; i++) {
    8004a4c0:	2c05                	addiw	s8,s8,1
quickjs-nuttx/quickjs.c:31032
        cv->var_name = JS_DupAtom(ctx, cv0->var_name);
    8004a4c2:	c45c00ef          	jal	ra,8000b106 <JS_DupAtom>
    8004a4c6:	00aba223          	sw	a0,4(s7)
quickjs-nuttx/quickjs.c:31023
    for(i = 0; i < b->closure_var_count; i++) {
    8004a4ca:	4cfc                	lw	a5,92(s1)
    8004a4cc:	f8fc45e3          	blt	s8,a5,8004a456 <__JS_EvalInternal+0x446>
    8004a4d0:	b9a9                	j	8004a12a <__JS_EvalInternal+0x11a>
js_parse_directives():
quickjs-nuttx/quickjs.c:31023
    8004a4d2:	0088                	addi	a0,sp,64
    8004a4d4:	8f5e40ef          	jal	ra,8002edc8 <js_parse_directives.part.0>
js_parse_program():
quickjs-nuttx/quickjs.c:34164
    if (js_parse_directives(s))
    8004a4d8:	c8050ce3          	beqz	a0,8004a170 <__JS_EvalInternal+0x160>
    8004a4dc:	bba9                	j	8004a236 <__JS_EvalInternal+0x226>
quickjs-nuttx/quickjs.c:34168
        (fd->eval_type == JS_EVAL_TYPE_MODULE) ||
    8004a4de:	0864c783          	lbu	a5,134(s1)
    8004a4e2:	8b85                	andi	a5,a5,1
    8004a4e4:	0017c793          	xori	a5,a5,1
    8004a4e8:	b941                	j	8004a178 <__JS_EvalInternal+0x168>
quickjs-nuttx/quickjs.c:34179
        if (js_parse_source_element(s))
    8004a4ea:	0088                	addi	a0,sp,64
    8004a4ec:	9f3ec0ef          	jal	ra,80036ede <js_parse_source_element>
    8004a4f0:	d40513e3          	bnez	a0,8004a236 <__JS_EvalInternal+0x226>
quickjs-nuttx/quickjs.c:34178
    while (s->token.val != TOK_EOF) {
    8004a4f4:	47e6                	lw	a5,88(sp)
    8004a4f6:	ff779ae3          	bne	a5,s7,8004a4ea <__JS_EvalInternal+0x4da>
quickjs-nuttx/quickjs.c:34183
    if (!s->is_module) {
    8004a4fa:	57ca                	lw	a5,176(sp)
quickjs-nuttx/quickjs.c:34202
        emit_return(s, FALSE);
    8004a4fc:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:34183
    if (!s->is_module) {
    8004a4fe:	e3b9                	bnez	a5,8004a544 <__JS_EvalInternal+0x534>
quickjs-nuttx/quickjs.c:34185
        if (fd->func_kind == JS_FUNC_ASYNC) {
    8004a500:	0844c703          	lbu	a4,132(s1)
    8004a504:	4789                	li	a5,2
    8004a506:	08f71463          	bne	a4,a5,8004a58e <__JS_EvalInternal+0x57e>
quickjs-nuttx/quickjs.c:34188
            emit_op(s, OP_object);
    8004a50a:	45ad                	li	a1,11
    8004a50c:	0088                	addi	a0,sp,64
    8004a50e:	be9be0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34189
            emit_op(s, OP_dup);
    8004a512:	45c5                	li	a1,17
    8004a514:	0088                	addi	a0,sp,64
    8004a516:	be1be0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34191
            emit_op(s, OP_get_loc);
    8004a51a:	05800593          	li	a1,88
    8004a51e:	0088                	addi	a0,sp,64
    8004a520:	bd7be0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34192
            emit_u16(s, fd->eval_ret_idx);
    8004a524:	0c84d583          	lhu	a1,200(s1)
    8004a528:	0088                	addi	a0,sp,64
    8004a52a:	a9bbe0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:34194
            emit_op(s, OP_put_field);
    8004a52e:	04300593          	li	a1,67
    8004a532:	0088                	addi	a0,sp,64
    8004a534:	bc3be0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34195
            emit_atom(s, JS_ATOM_value);
    8004a538:	04100593          	li	a1,65
    8004a53c:	0088                	addi	a0,sp,64
    8004a53e:	bedc00ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:34200
        emit_return(s, TRUE);
    8004a542:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:34202
        emit_return(s, FALSE);
    8004a544:	0088                	addi	a0,sp,64
    8004a546:	b15d20ef          	jal	ra,8001d05a <emit_return>
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34350
    if (m != NULL)
    8004a54a:	00098663          	beqz	s3,8004a556 <__JS_EvalInternal+0x546>
quickjs-nuttx/quickjs.c:34351
        m->has_tla = fd->has_await;
    8004a54e:	22042783          	lw	a5,544(s0)
    8004a552:	08f98023          	sb	a5,128(s3)
quickjs-nuttx/quickjs.c:34354
    fun_obj = js_create_function(ctx, fd);
    8004a556:	85a2                	mv	a1,s0
    8004a558:	854a                	mv	a0,s2
    8004a55a:	bcae10ef          	jal	ra,8002b924 <js_create_function>
    8004a55e:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:34355
    if (JS_IsException(fun_obj))
    8004a560:	0005871b          	sext.w	a4,a1
    8004a564:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:34354
    fun_obj = js_create_function(ctx, fd);
    8004a566:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:34355
    if (JS_IsException(fun_obj))
    8004a568:	ccf70fe3          	beq	a4,a5,8004a246 <__JS_EvalInternal+0x236>
quickjs-nuttx/quickjs.c:34358
    if (m) {
    8004a56c:	04098263          	beqz	s3,8004a5b0 <__JS_EvalInternal+0x5a0>
quickjs-nuttx/quickjs.c:34359
        m->func_obj = fun_obj;
    8004a570:	06a9b423          	sd	a0,104(s3)
    8004a574:	06b9b823          	sd	a1,112(s3)
quickjs-nuttx/quickjs.c:34360
        if (js_resolve_module(ctx, m) < 0)
    8004a578:	854a                	mv	a0,s2
    8004a57a:	85ce                	mv	a1,s3
    8004a57c:	cf6db0ef          	jal	ra,80025a72 <js_resolve_module>
    8004a580:	02055263          	bgez	a0,8004a5a4 <__JS_EvalInternal+0x594>
quickjs-nuttx/quickjs.c:34373
        js_free_module_def(ctx, m);
    8004a584:	85ce                	mv	a1,s3
    8004a586:	854a                	mv	a0,s2
    8004a588:	f5dc10ef          	jal	ra,8000c4e4 <js_free_module_def>
    8004a58c:	b915                	j	8004a1c0 <__JS_EvalInternal+0x1b0>
js_parse_program():
quickjs-nuttx/quickjs.c:34197
            emit_op(s, OP_get_loc);
    8004a58e:	0088                	addi	a0,sp,64
    8004a590:	05800593          	li	a1,88
    8004a594:	b63be0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:34198
            emit_u16(s, fd->eval_ret_idx);
    8004a598:	0c84d583          	lhu	a1,200(s1)
    8004a59c:	0088                	addi	a0,sp,64
    8004a59e:	a27be0ef          	jal	ra,80008fc4 <emit_u16>
    8004a5a2:	b745                	j	8004a542 <__JS_EvalInternal+0x532>
__JS_EvalInternal():
quickjs-nuttx/quickjs.c:34362
        fun_obj = JS_NewModuleValue(ctx, m);
    8004a5a4:	85ce                	mv	a1,s3
    8004a5a6:	854a                	mv	a0,s2
    8004a5a8:	fa7bf0ef          	jal	ra,8000a54e <JS_NewModuleValue>
    8004a5ac:	e82a                	sd	a0,16(sp)
    8004a5ae:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:34364
    if (flags & JS_EVAL_FLAG_COMPILE_ONLY) {
    8004a5b0:	020a7a13          	andi	s4,s4,32
    8004a5b4:	000a0863          	beqz	s4,8004a5c4 <__JS_EvalInternal+0x5b4>
quickjs-nuttx/quickjs.c:34365
        ret_val = fun_obj;
    8004a5b8:	67c2                	ld	a5,16(sp)
    8004a5ba:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:34369
    return ret_val;
    8004a5bc:	7782                	ld	a5,32(sp)
    8004a5be:	fc32                	sd	a2,56(sp)
    8004a5c0:	f83e                	sd	a5,48(sp)
    8004a5c2:	b111                	j	8004a1c6 <__JS_EvalInternal+0x1b6>
quickjs-nuttx/quickjs.c:34367
        ret_val = JS_EvalFunctionInternal(ctx, fun_obj, this_obj, var_refs, sf);
    8004a5c4:	6682                	ld	a3,0(sp)
    8004a5c6:	6722                	ld	a4,8(sp)
    8004a5c8:	65c2                	ld	a1,16(sp)
    8004a5ca:	8856                	mv	a6,s5
    8004a5cc:	87da                	mv	a5,s6
    8004a5ce:	854a                	mv	a0,s2
    8004a5d0:	dd0ff0ef          	jal	ra,80049ba0 <JS_EvalFunctionInternal>
    8004a5d4:	f02a                	sd	a0,32(sp)
    8004a5d6:	862e                	mv	a2,a1
    8004a5d8:	b7d5                	j	8004a5bc <__JS_EvalInternal+0x5ac>

000000008004a5da <JS_LoadModule>:
JS_LoadModule():
quickjs-nuttx/quickjs.c:28460
{
    8004a5da:	7159                	addi	sp,sp,-112
    8004a5dc:	eca6                	sd	s1,88(sp)
    8004a5de:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:28463
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    8004a5e0:	180c                	addi	a1,sp,48
quickjs-nuttx/quickjs.c:28460
{
    8004a5e2:	f0a2                	sd	s0,96(sp)
    8004a5e4:	e432                	sd	a2,8(sp)
    8004a5e6:	f486                	sd	ra,104(sp)
    8004a5e8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:28463
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    8004a5ea:	979c40ef          	jal	ra,8000ef62 <JS_NewPromiseCapability>
    8004a5ee:	e82a                	sd	a0,16(sp)
    8004a5f0:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:28464
    if (JS_IsException(promise))
    8004a5f2:	0005879b          	sext.w	a5,a1
    8004a5f6:	4719                	li	a4,6
    8004a5f8:	6622                	ld	a2,8(sp)
    8004a5fa:	00e79b63          	bne	a5,a4,8004a610 <JS_LoadModule+0x36>
quickjs-nuttx/quickjs.c:28465
        return JS_EXCEPTION;
    8004a5fe:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:28471
}
    8004a600:	70a6                	ld	ra,104(sp)
    8004a602:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:28470
    return promise;
    8004a604:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:28471
}
    8004a606:	7502                	ld	a0,32(sp)
    8004a608:	75a2                	ld	a1,40(sp)
    8004a60a:	64e6                	ld	s1,88(sp)
    8004a60c:	6165                	addi	sp,sp,112
    8004a60e:	8082                	ret
quickjs-nuttx/quickjs.c:28466
    JS_LoadModuleInternal(ctx, basename, filename,
    8004a610:	1814                	addi	a3,sp,48
    8004a612:	85a6                	mv	a1,s1
    8004a614:	8522                	mv	a0,s0
    8004a616:	82dff0ef          	jal	ra,80049e42 <JS_LoadModuleInternal>
quickjs-nuttx/quickjs.c:28468
    JS_FreeValue(ctx, resolving_funcs[0]);
    8004a61a:	75c2                	ld	a1,48(sp)
    8004a61c:	7662                	ld	a2,56(sp)
    8004a61e:	8522                	mv	a0,s0
    8004a620:	97ec10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28469
    JS_FreeValue(ctx, resolving_funcs[1]);
    8004a624:	6586                	ld	a1,64(sp)
    8004a626:	6626                	ld	a2,72(sp)
    8004a628:	8522                	mv	a0,s0
    8004a62a:	974c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28470
    return promise;
    8004a62e:	67c2                	ld	a5,16(sp)
    8004a630:	f03e                	sd	a5,32(sp)
    8004a632:	67e2                	ld	a5,24(sp)
    8004a634:	b7f1                	j	8004a600 <JS_LoadModule+0x26>

000000008004a636 <js_async_generator_next>:
js_async_generator_next():
quickjs-nuttx/quickjs.c:19563
{
    8004a636:	7131                	addi	sp,sp,-192
    8004a638:	86b2                	mv	a3,a2
    8004a63a:	f526                	sd	s1,168(sp)
    8004a63c:	e02e                	sd	a1,0(sp)
    8004a63e:	84aa                	mv	s1,a0
    8004a640:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:19564
    JSAsyncGeneratorData *s = JS_GetOpaque(this_val, JS_CLASS_ASYNC_GENERATOR);
    8004a642:	852e                	mv	a0,a1
    8004a644:	03900613          	li	a2,57
    8004a648:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:19563
{
    8004a64a:	fd06                	sd	ra,184(sp)
    8004a64c:	f14a                	sd	s2,160(sp)
    8004a64e:	ed4e                	sd	s3,152(sp)
    8004a650:	e952                	sd	s4,144(sp)
    8004a652:	e556                	sd	s5,136(sp)
    8004a654:	89ba                	mv	s3,a4
    8004a656:	8a3e                	mv	s4,a5
    8004a658:	f922                	sd	s0,176(sp)
quickjs-nuttx/quickjs.c:19564
    JSAsyncGeneratorData *s = JS_GetOpaque(this_val, JS_CLASS_ASYNC_GENERATOR);
    8004a65a:	83ac40ef          	jal	ra,8000e694 <JS_GetOpaque>
    8004a65e:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:19568
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    8004a660:	108c                	addi	a1,sp,96
    8004a662:	8526                	mv	a0,s1
    8004a664:	8ffc40ef          	jal	ra,8000ef62 <JS_NewPromiseCapability>
    8004a668:	ec2e                	sd	a1,24(sp)
    8004a66a:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:19569
    if (JS_IsException(promise))
    8004a66c:	2581                	sext.w	a1,a1
    8004a66e:	4a99                	li	s5,6
    8004a670:	01559f63          	bne	a1,s5,8004a68e <js_async_generator_next+0x58>
quickjs-nuttx/quickjs.c:19570
        return JS_EXCEPTION;
    8004a674:	e882                	sd	zero,80(sp)
    8004a676:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:19601 (discriminator 1)
}
    8004a678:	70ea                	ld	ra,184(sp)
    8004a67a:	744a                	ld	s0,176(sp)
    8004a67c:	6546                	ld	a0,80(sp)
    8004a67e:	65e6                	ld	a1,88(sp)
    8004a680:	74aa                	ld	s1,168(sp)
    8004a682:	790a                	ld	s2,160(sp)
    8004a684:	69ea                	ld	s3,152(sp)
    8004a686:	6a4a                	ld	s4,144(sp)
    8004a688:	6aaa                	ld	s5,136(sp)
    8004a68a:	6129                	addi	sp,sp,192
    8004a68c:	8082                	ret
quickjs-nuttx/quickjs.c:19571
    if (!s) {
    8004a68e:	06091363          	bnez	s2,8004a6f4 <js_async_generator_next+0xbe>
quickjs-nuttx/quickjs.c:19573
        JS_ThrowTypeError(ctx, "not an AsyncGenerator object");
    8004a692:	00023597          	auipc	a1,0x23
    8004a696:	10e58593          	addi	a1,a1,270 # 8006d7a0 <qjsc_repl+0x81f0>
    8004a69a:	8526                	mv	a0,s1
    8004a69c:	fd1cd0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:19574
        err = JS_GetException(ctx);
    8004a6a0:	8526                	mv	a0,s1
    8004a6a2:	dedc30ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:19575
        res2 = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    8004a6a6:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:19574
        err = JS_GetException(ctx);
    8004a6a8:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:19575
        res2 = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    8004a6aa:	75c6                	ld	a1,112(sp)
    8004a6ac:	02010813          	addi	a6,sp,32
    8004a6b0:	4785                	li	a5,1
    8004a6b2:	4681                	li	a3,0
    8004a6b4:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:19574
        err = JS_GetException(ctx);
    8004a6b6:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:19575
        res2 = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    8004a6b8:	8526                	mv	a0,s1
    8004a6ba:	f4af80ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:19577
        JS_FreeValue(ctx, err);
    8004a6be:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:19575
        res2 = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    8004a6c0:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:19577
        JS_FreeValue(ctx, err);
    8004a6c2:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:19575
        res2 = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    8004a6c4:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:19577
        JS_FreeValue(ctx, err);
    8004a6c6:	8526                	mv	a0,s1
    8004a6c8:	8d6c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19578
        JS_FreeValue(ctx, res2);
    8004a6cc:	75c2                	ld	a1,48(sp)
    8004a6ce:	7662                	ld	a2,56(sp)
    8004a6d0:	8526                	mv	a0,s1
    8004a6d2:	8ccc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19579
        JS_FreeValue(ctx, resolving_funcs[0]);
    8004a6d6:	7586                	ld	a1,96(sp)
    8004a6d8:	7626                	ld	a2,104(sp)
    8004a6da:	8526                	mv	a0,s1
    8004a6dc:	8c2c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19580
        JS_FreeValue(ctx, resolving_funcs[1]);
    8004a6e0:	75c6                	ld	a1,112(sp)
    8004a6e2:	7666                	ld	a2,120(sp)
    8004a6e4:	8526                	mv	a0,s1
    8004a6e6:	8b8c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19595
    return promise;
    8004a6ea:	67c2                	ld	a5,16(sp)
    8004a6ec:	e8be                	sd	a5,80(sp)
    8004a6ee:	67e2                	ld	a5,24(sp)
    8004a6f0:	ecbe                	sd	a5,88(sp)
    8004a6f2:	b759                	j	8004a678 <js_async_generator_next+0x42>
quickjs-nuttx/quickjs.c:19583
    req = js_mallocz(ctx, sizeof(*req));
    8004a6f4:	05800593          	li	a1,88
    8004a6f8:	8526                	mv	a0,s1
    8004a6fa:	a3fd00ef          	jal	ra,8001b138 <js_mallocz>
    8004a6fe:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19584
    if (!req)
    8004a700:	e11d                	bnez	a0,8004a726 <js_async_generator_next+0xf0>
quickjs-nuttx/quickjs.c:19597
    JS_FreeValue(ctx, resolving_funcs[0]);
    8004a702:	7586                	ld	a1,96(sp)
    8004a704:	7626                	ld	a2,104(sp)
    8004a706:	8526                	mv	a0,s1
    8004a708:	896c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19598
    JS_FreeValue(ctx, resolving_funcs[1]);
    8004a70c:	75c6                	ld	a1,112(sp)
    8004a70e:	7666                	ld	a2,120(sp)
    8004a710:	8526                	mv	a0,s1
    8004a712:	88cc10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19599
    JS_FreeValue(ctx, promise);
    8004a716:	65c2                	ld	a1,16(sp)
    8004a718:	6662                	ld	a2,24(sp)
    8004a71a:	8526                	mv	a0,s1
    8004a71c:	882c10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19600
    return JS_EXCEPTION;
    8004a720:	e882                	sd	zero,80(sp)
    8004a722:	ecd6                	sd	s5,88(sp)
    8004a724:	bf91                	j	8004a678 <js_async_generator_next+0x42>
quickjs-nuttx/quickjs.c:19586
    req->completion_type = magic;
    8004a726:	01452823          	sw	s4,16(a0)
quickjs-nuttx/quickjs.c:19587
    req->result = JS_DupValue(ctx, argv[0]);
    8004a72a:	0009b503          	ld	a0,0(s3)
    8004a72e:	0089b583          	ld	a1,8(s3)
    8004a732:	ce9bf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004a736:	ec08                	sd	a0,24(s0)
    8004a738:	f00c                	sd	a1,32(s0)
quickjs-nuttx/quickjs.c:19588
    req->promise = JS_DupValue(ctx, promise);
    8004a73a:	6542                	ld	a0,16(sp)
    8004a73c:	65e2                	ld	a1,24(sp)
    8004a73e:	cddbf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:19589
    req->resolving_funcs[0] = resolving_funcs[0];
    8004a742:	7786                	ld	a5,96(sp)
quickjs-nuttx/quickjs.c:19588
    req->promise = JS_DupValue(ctx, promise);
    8004a744:	f408                	sd	a0,40(s0)
    8004a746:	f80c                	sd	a1,48(s0)
quickjs-nuttx/quickjs.c:19589
    req->resolving_funcs[0] = resolving_funcs[0];
    8004a748:	fc1c                	sd	a5,56(s0)
    8004a74a:	77a6                	ld	a5,104(sp)
    8004a74c:	e03c                	sd	a5,64(s0)
quickjs-nuttx/quickjs.c:19590
    req->resolving_funcs[1] = resolving_funcs[1];
    8004a74e:	77c6                	ld	a5,112(sp)
    8004a750:	e43c                	sd	a5,72(s0)
    8004a752:	77e6                	ld	a5,120(sp)
    8004a754:	e83c                	sd	a5,80(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8004a756:	01893783          	ld	a5,24(s2)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8004a75a:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8004a75c:	e01c                	sd	a5,0(s0)
js_async_generator_next():
quickjs-nuttx/quickjs.c:19591
    list_add_tail(&req->link, &s->queue);
    8004a75e:	01890793          	addi	a5,s2,24
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8004a762:	e41c                	sd	a5,8(s0)
js_async_generator_next():
quickjs-nuttx/quickjs.c:19592
    if (s->state != JS_ASYNC_GENERATOR_STATE_EXECUTING) {
    8004a764:	00892703          	lw	a4,8(s2)
__list_add():
quickjs-nuttx/list.h:54
    next->prev = el;
    8004a768:	00893c23          	sd	s0,24(s2)
js_async_generator_next():
quickjs-nuttx/quickjs.c:19592
    8004a76c:	478d                	li	a5,3
    8004a76e:	f6f70ee3          	beq	a4,a5,8004a6ea <js_async_generator_next+0xb4>
quickjs-nuttx/quickjs.c:19593
        js_async_generator_resume_next(ctx, s);
    8004a772:	85ca                	mv	a1,s2
    8004a774:	8526                	mv	a0,s1
    8004a776:	a89fe0ef          	jal	ra,800491fe <js_async_generator_resume_next>
    8004a77a:	bf85                	j	8004a6ea <js_async_generator_next+0xb4>

000000008004a77c <js_async_from_sync_iterator_next>:
js_async_from_sync_iterator_next():
quickjs-nuttx/quickjs.c:48776
{
    8004a77c:	716d                	addi	sp,sp,-272
    8004a77e:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:48782
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    8004a780:	110c                	addi	a1,sp,160
quickjs-nuttx/quickjs.c:48776
{
    8004a782:	e222                	sd	s0,256(sp)
    8004a784:	f9ca                	sd	s2,240(sp)
    8004a786:	f5ce                	sd	s3,232(sp)
    8004a788:	f1d2                	sd	s4,224(sp)
    8004a78a:	e606                	sd	ra,264(sp)
    8004a78c:	8a3e                	mv	s4,a5
    8004a78e:	fda6                	sd	s1,248(sp)
    8004a790:	842a                	mv	s0,a0
    8004a792:	e432                	sd	a2,8(sp)
    8004a794:	89b6                	mv	s3,a3
    8004a796:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:48782
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    8004a798:	fcac40ef          	jal	ra,8000ef62 <JS_NewPromiseCapability>
    8004a79c:	f42e                	sd	a1,40(sp)
    8004a79e:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:48783
    if (JS_IsException(promise))
    8004a7a0:	2581                	sext.w	a1,a1
    8004a7a2:	4799                	li	a5,6
    8004a7a4:	00f59e63          	bne	a1,a5,8004a7c0 <js_async_from_sync_iterator_next+0x44>
quickjs-nuttx/quickjs.c:48784
        return JS_EXCEPTION;
    8004a7a8:	f882                	sd	zero,112(sp)
    8004a7aa:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:48876 (discriminator 4)
}
    8004a7ac:	60b2                	ld	ra,264(sp)
    8004a7ae:	6412                	ld	s0,256(sp)
    8004a7b0:	7546                	ld	a0,112(sp)
    8004a7b2:	75e6                	ld	a1,120(sp)
    8004a7b4:	74ee                	ld	s1,248(sp)
    8004a7b6:	794e                	ld	s2,240(sp)
    8004a7b8:	79ae                	ld	s3,232(sp)
    8004a7ba:	7a0e                	ld	s4,224(sp)
    8004a7bc:	6151                	addi	sp,sp,272
    8004a7be:	8082                	ret
quickjs-nuttx/quickjs.c:48785
    s = JS_GetOpaque(this_val, JS_CLASS_ASYNC_FROM_SYNC_ITERATOR);
    8004a7c0:	6502                	ld	a0,0(sp)
    8004a7c2:	65a2                	ld	a1,8(sp)
    8004a7c4:	03700613          	li	a2,55
    8004a7c8:	ecdc30ef          	jal	ra,8000e694 <JS_GetOpaque>
    8004a7cc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:48786
    if (!s) {
    8004a7ce:	ed01                	bnez	a0,8004a7e6 <js_async_from_sync_iterator_next+0x6a>
quickjs-nuttx/quickjs.c:48787
        JS_ThrowTypeError(ctx, "not an Async-from-Sync Iterator");
    8004a7d0:	00023597          	auipc	a1,0x23
    8004a7d4:	ff058593          	addi	a1,a1,-16 # 8006d7c0 <qjsc_repl+0x8210>
    8004a7d8:	8522                	mv	a0,s0
    8004a7da:	e93cd0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:48826
        err = JS_GetException(ctx);
    8004a7de:	8522                	mv	a0,s0
    8004a7e0:	cafc30ef          	jal	ra,8000e48e <JS_GetException>
    8004a7e4:	aaa1                	j	8004a93c <js_async_from_sync_iterator_next+0x1c0>
quickjs-nuttx/quickjs.c:48791
    if (magic == GEN_MAGIC_NEXT) {
    8004a7e6:	080a1a63          	bnez	s4,8004a87a <js_async_from_sync_iterator_next+0xfe>
quickjs-nuttx/quickjs.c:48792
        method = JS_DupValue(ctx, s->next_method);
    8004a7ea:	6908                	ld	a0,16(a0)
    8004a7ec:	6c8c                	ld	a1,24(s1)
    8004a7ee:	c2dbf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004a7f2:	e0aa                	sd	a0,64(sp)
    8004a7f4:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:48810
    value = JS_IteratorNext2(ctx, s->sync_iter, method,
    8004a7f6:	6490                	ld	a2,8(s1)
    8004a7f8:	6686                	ld	a3,64(sp)
    8004a7fa:	608c                	ld	a1,0(s1)
    8004a7fc:	013027b3          	sgtz	a5,s3
    8004a800:	01c10893          	addi	a7,sp,28
    8004a804:	884a                	mv	a6,s2
    8004a806:	8522                	mv	a0,s0
    8004a808:	e4ba                	sd	a4,72(sp)
    8004a80a:	f6ef90ef          	jal	ra,80043f78 <JS_IteratorNext2>
quickjs-nuttx/quickjs.c:48812
    JS_FreeValue(ctx, method);
    8004a80e:	6626                	ld	a2,72(sp)
quickjs-nuttx/quickjs.c:48810
    value = JS_IteratorNext2(ctx, s->sync_iter, method,
    8004a810:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:48812
    JS_FreeValue(ctx, method);
    8004a812:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:48810
    value = JS_IteratorNext2(ctx, s->sync_iter, method,
    8004a814:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:48812
    JS_FreeValue(ctx, method);
    8004a816:	8522                	mv	a0,s0
    8004a818:	f87c00ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004a81c:	7662                	ld	a2,56(sp)
js_async_from_sync_iterator_next():
quickjs-nuttx/quickjs.c:48813
    if (JS_IsException(value))
    8004a81e:	4499                	li	s1,6
    8004a820:	0006079b          	sext.w	a5,a2
    8004a824:	fa978de3          	beq	a5,s1,8004a7de <js_async_from_sync_iterator_next+0x62>
quickjs-nuttx/quickjs.c:48815
    if (done == 2) {
    8004a828:	4772                	lw	a4,28(sp)
    8004a82a:	4789                	li	a5,2
    8004a82c:	02f71363          	bne	a4,a5,8004a852 <js_async_from_sync_iterator_next+0xd6>
quickjs-nuttx/quickjs.c:48816
        JSValue obj = value;
    8004a830:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:48817
        value = JS_IteratorGetCompleteValue(ctx, obj, &done);
    8004a832:	0874                	addi	a3,sp,28
    8004a834:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48816
        JSValue obj = value;
    8004a836:	e5b2                	sd	a2,200(sp)
    8004a838:	e1ae                	sd	a1,192(sp)
quickjs-nuttx/quickjs.c:48817
        value = JS_IteratorGetCompleteValue(ctx, obj, &done);
    8004a83a:	dd4cc0ef          	jal	ra,80016e0e <JS_IteratorGetCompleteValue>
    8004a83e:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:48818
        JS_FreeValue(ctx, obj);
    8004a840:	662e                	ld	a2,200(sp)
    8004a842:	658e                	ld	a1,192(sp)
quickjs-nuttx/quickjs.c:48817
        value = JS_IteratorGetCompleteValue(ctx, obj, &done);
    8004a844:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:48818
        JS_FreeValue(ctx, obj);
    8004a846:	8522                	mv	a0,s0
    8004a848:	f57c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48819
        if (JS_IsException(value))
    8004a84c:	57e2                	lw	a5,56(sp)
    8004a84e:	f89788e3          	beq	a5,s1,8004a7de <js_async_from_sync_iterator_next+0x62>
quickjs-nuttx/quickjs.c:48841
        value_wrapper_promise = js_promise_resolve(ctx, ctx->promise_ctor,
    8004a852:	644c                	ld	a1,136(s0)
    8004a854:	6850                	ld	a2,144(s0)
    8004a856:	4781                	li	a5,0
    8004a858:	1818                	addi	a4,sp,48
    8004a85a:	4685                	li	a3,1
    8004a85c:	8522                	mv	a0,s0
    8004a85e:	d1ffa0ef          	jal	ra,8004557c <js_promise_resolve>
    8004a862:	ecae                	sd	a1,88(sp)
    8004a864:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:48843
        if (JS_IsException(value_wrapper_promise)) {
    8004a866:	2581                	sext.w	a1,a1
    8004a868:	4919                	li	s2,6
    8004a86a:	0d259d63          	bne	a1,s2,8004a944 <js_async_from_sync_iterator_next+0x1c8>
quickjs-nuttx/quickjs.c:48844
            JS_FreeValue(ctx, value);
    8004a86e:	75c2                	ld	a1,48(sp)
    8004a870:	7662                	ld	a2,56(sp)
    8004a872:	8522                	mv	a0,s0
    8004a874:	f2bc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48845
            goto reject;
    8004a878:	b79d                	j	8004a7de <js_async_from_sync_iterator_next+0x62>
quickjs-nuttx/quickjs.c:48794
        method = JS_GetProperty(ctx, s->sync_iter,
    8004a87a:	4785                	li	a5,1
    8004a87c:	4699                	li	a3,6
    8004a87e:	00fa0363          	beq	s4,a5,8004a884 <js_async_from_sync_iterator_next+0x108>
    8004a882:	46dd                	li	a3,23
    8004a884:	6098                	ld	a4,0(s1)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 4)
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8004a886:	4801                	li	a6,0
    8004a888:	8522                	mv	a0,s0
    8004a88a:	e1ba                	sd	a4,192(sp)
    8004a88c:	649c                	ld	a5,8(s1)
    8004a88e:	85ba                	mv	a1,a4
    8004a890:	863e                	mv	a2,a5
    8004a892:	e5be                	sd	a5,200(sp)
    8004a894:	a16cc0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8004a898:	f0aa                	sd	a0,96(sp)
    8004a89a:	f4ae                	sd	a1,104(sp)
    8004a89c:	e0aa                	sd	a0,64(sp)
    8004a89e:	e4ae                	sd	a1,72(sp)
js_async_from_sync_iterator_next():
quickjs-nuttx/quickjs.c:48797 (discriminator 4)
        if (JS_IsException(method))
    8004a8a0:	0005869b          	sext.w	a3,a1
    8004a8a4:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 4)
    8004a8a6:	872e                	mv	a4,a1
js_async_from_sync_iterator_next():
quickjs-nuttx/quickjs.c:48797 (discriminator 4)
    8004a8a8:	f2f68be3          	beq	a3,a5,8004a7de <js_async_from_sync_iterator_next+0x62>
quickjs-nuttx/quickjs.c:48799 (discriminator 1)
        if (JS_IsUndefined(method) || JS_IsNull(method)) {
    8004a8ac:	ffe5861b          	addiw	a2,a1,-2
    8004a8b0:	4785                	li	a5,1
    8004a8b2:	f4c7e2e3          	bltu	a5,a2,8004a7f6 <js_async_from_sync_iterator_next+0x7a>
quickjs-nuttx/quickjs.c:48801
                err = js_create_iterator_result(ctx, JS_DupValue(ctx, argv[0]), TRUE);
    8004a8b6:	00093503          	ld	a0,0(s2)
    8004a8ba:	00893583          	ld	a1,8(s2)
quickjs-nuttx/quickjs.c:48800
            if (magic == GEN_MAGIC_RETURN) {
    8004a8be:	06fa1d63          	bne	s4,a5,8004a938 <js_async_from_sync_iterator_next+0x1bc>
quickjs-nuttx/quickjs.c:48801
                err = js_create_iterator_result(ctx, JS_DupValue(ctx, argv[0]), TRUE);
    8004a8c2:	b59bf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004a8c6:	862e                	mv	a2,a1
    8004a8c8:	e1aa                	sd	a0,192(sp)
    8004a8ca:	e5ae                	sd	a1,200(sp)
    8004a8cc:	4685                	li	a3,1
    8004a8ce:	85aa                	mv	a1,a0
    8004a8d0:	8522                	mv	a0,s0
    8004a8d2:	ccbe50ef          	jal	ra,8003059c <js_create_iterator_result>
    8004a8d6:	e8aa                	sd	a0,80(sp)
    8004a8d8:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:48802
                is_reject = 0;
    8004a8da:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:48829
        res2 = JS_Call(ctx, resolving_funcs[is_reject], JS_UNDEFINED,
    8004a8dc:	470d                	li	a4,3
    8004a8de:	ed3a                	sd	a4,152(sp)
    8004a8e0:	0792                	slli	a5,a5,0x4
    8004a8e2:	1198                	addi	a4,sp,224
    8004a8e4:	00f70633          	add	a2,a4,a5
    8004a8e8:	fc063583          	ld	a1,-64(a2)
    8004a8ec:	fc863603          	ld	a2,-56(a2)
    8004a8f0:	05010813          	addi	a6,sp,80
    8004a8f4:	4785                	li	a5,1
    8004a8f6:	4681                	li	a3,0
    8004a8f8:	470d                	li	a4,3
    8004a8fa:	8522                	mv	a0,s0
    8004a8fc:	e902                	sd	zero,144(sp)
    8004a8fe:	d06f80ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:48831
        JS_FreeValue(ctx, err);
    8004a902:	6666                	ld	a2,88(sp)
quickjs-nuttx/quickjs.c:48829
        res2 = JS_Call(ctx, resolving_funcs[is_reject], JS_UNDEFINED,
    8004a904:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:48831
        JS_FreeValue(ctx, err);
    8004a906:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:48829
        res2 = JS_Call(ctx, resolving_funcs[is_reject], JS_UNDEFINED,
    8004a908:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:48831
        JS_FreeValue(ctx, err);
    8004a90a:	8522                	mv	a0,s0
    8004a90c:	e93c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48832
        JS_FreeValue(ctx, res2);
    8004a910:	658a                	ld	a1,128(sp)
    8004a912:	662a                	ld	a2,136(sp)
    8004a914:	8522                	mv	a0,s0
    8004a916:	e89c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48833
        JS_FreeValue(ctx, resolving_funcs[0]);
    8004a91a:	758a                	ld	a1,160(sp)
    8004a91c:	762a                	ld	a2,168(sp)
    8004a91e:	8522                	mv	a0,s0
    8004a920:	e7fc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48834
        JS_FreeValue(ctx, resolving_funcs[1]);
    8004a924:	75ca                	ld	a1,176(sp)
    8004a926:	766a                	ld	a2,184(sp)
    8004a928:	8522                	mv	a0,s0
    8004a92a:	e75c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48869
    return promise;
    8004a92e:	7782                	ld	a5,32(sp)
    8004a930:	f8be                	sd	a5,112(sp)
    8004a932:	77a2                	ld	a5,40(sp)
    8004a934:	fcbe                	sd	a5,120(sp)
    8004a936:	bd9d                	j	8004a7ac <js_async_from_sync_iterator_next+0x30>
quickjs-nuttx/quickjs.c:48804
                err = JS_DupValue(ctx, argv[0]);
    8004a938:	ae3bf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:48826
        err = JS_GetException(ctx);
    8004a93c:	e8aa                	sd	a0,80(sp)
    8004a93e:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:48827
        is_reject = 1;
    8004a940:	4785                	li	a5,1
    8004a942:	bf69                	j	8004a8dc <js_async_from_sync_iterator_next+0x160>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8004a944:	47f2                	lw	a5,28(sp)
    8004a946:	c302                	sw	zero,132(sp)
js_async_from_sync_iterator_unwrap_func_create():
quickjs-nuttx/quickjs.c:48708
    return JS_NewCFunctionData(ctx, js_async_from_sync_iterator_unwrap,
    8004a948:	4681                	li	a3,0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8004a94a:	00f037b3          	snez	a5,a5
    8004a94e:	c13e                	sw	a5,128(sp)
    8004a950:	670a                	ld	a4,128(sp)
    8004a952:	4785                	li	a5,1
    8004a954:	e53e                	sd	a5,136(sp)
    8004a956:	e1ba                	sd	a4,192(sp)
    8004a958:	e5be                	sd	a5,200(sp)
js_async_from_sync_iterator_unwrap_func_create():
quickjs-nuttx/quickjs.c:48707
    func_data[0] = (JSValueConst)JS_NewBool(ctx, done);
    8004a95a:	f8ba                	sd	a4,112(sp)
    8004a95c:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:48708
    return JS_NewCFunctionData(ctx, js_async_from_sync_iterator_unwrap,
    8004a95e:	4705                	li	a4,1
    8004a960:	189c                	addi	a5,sp,112
    8004a962:	4605                	li	a2,1
    8004a964:	fffe6597          	auipc	a1,0xfffe6
    8004a968:	cc458593          	addi	a1,a1,-828 # 80030628 <js_async_from_sync_iterator_unwrap>
    8004a96c:	8522                	mv	a0,s0
    8004a96e:	9a4e60ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    8004a972:	e92a                	sd	a0,144(sp)
    8004a974:	ed2e                	sd	a1,152(sp)
    8004a976:	f8aa                	sd	a0,112(sp)
    8004a978:	fcae                	sd	a1,120(sp)
js_async_from_sync_iterator_next():
quickjs-nuttx/quickjs.c:48849
            js_async_from_sync_iterator_unwrap_func_create(ctx, done);
    8004a97a:	e1aa                	sd	a0,192(sp)
    8004a97c:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:48850
        if (JS_IsException(resolve_reject[0])) {
    8004a97e:	0005849b          	sext.w	s1,a1
    8004a982:	03249e63          	bne	s1,s2,8004a9be <js_async_from_sync_iterator_next+0x242>
quickjs-nuttx/quickjs.c:48851
            JS_FreeValue(ctx, value_wrapper_promise);
    8004a986:	65c6                	ld	a1,80(sp)
    8004a988:	6666                	ld	a2,88(sp)
    8004a98a:	8522                	mv	a0,s0
    8004a98c:	e13c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48871
    JS_FreeValue(ctx, value);
    8004a990:	75c2                	ld	a1,48(sp)
    8004a992:	7662                	ld	a2,56(sp)
    8004a994:	8522                	mv	a0,s0
    8004a996:	e09c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48872
    JS_FreeValue(ctx, resolving_funcs[0]);
    8004a99a:	758a                	ld	a1,160(sp)
    8004a99c:	762a                	ld	a2,168(sp)
    8004a99e:	8522                	mv	a0,s0
    8004a9a0:	dffc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48873
    JS_FreeValue(ctx, resolving_funcs[1]);
    8004a9a4:	75ca                	ld	a1,176(sp)
    8004a9a6:	766a                	ld	a2,184(sp)
    8004a9a8:	8522                	mv	a0,s0
    8004a9aa:	df5c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48874
    JS_FreeValue(ctx, promise);
    8004a9ae:	7582                	ld	a1,32(sp)
    8004a9b0:	7622                	ld	a2,40(sp)
    8004a9b2:	8522                	mv	a0,s0
    8004a9b4:	debc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48875
    return JS_EXCEPTION;
    8004a9b8:	f882                	sd	zero,112(sp)
    8004a9ba:	fca6                	sd	s1,120(sp)
    8004a9bc:	bbc5                	j	8004a7ac <js_async_from_sync_iterator_next+0x30>
quickjs-nuttx/quickjs.c:48854
        JS_FreeValue(ctx, value);
    8004a9be:	75c2                	ld	a1,48(sp)
    8004a9c0:	7662                	ld	a2,56(sp)
    8004a9c2:	8522                	mv	a0,s0
    8004a9c4:	ddbc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48857
        res = perform_promise_then(ctx, value_wrapper_promise,
    8004a9c8:	65c6                	ld	a1,80(sp)
    8004a9ca:	6666                	ld	a2,88(sp)
quickjs-nuttx/quickjs.c:48855
        resolve_reject[1] = JS_UNDEFINED;
    8004a9cc:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48857
        res = perform_promise_then(ctx, value_wrapper_promise,
    8004a9ce:	1118                	addi	a4,sp,160
    8004a9d0:	0194                	addi	a3,sp,192
    8004a9d2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48855
        resolve_reject[1] = JS_UNDEFINED;
    8004a9d4:	edbe                	sd	a5,216(sp)
    8004a9d6:	e982                	sd	zero,208(sp)
quickjs-nuttx/quickjs.c:48857
        res = perform_promise_then(ctx, value_wrapper_promise,
    8004a9d8:	987d00ef          	jal	ra,8001b35e <perform_promise_then>
quickjs-nuttx/quickjs.c:48860
        JS_FreeValue(ctx, resolve_reject[0]);
    8004a9dc:	658e                	ld	a1,192(sp)
    8004a9de:	662e                	ld	a2,200(sp)
quickjs-nuttx/quickjs.c:48857
        res = perform_promise_then(ctx, value_wrapper_promise,
    8004a9e0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:48860
        JS_FreeValue(ctx, resolve_reject[0]);
    8004a9e2:	8522                	mv	a0,s0
    8004a9e4:	dbbc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48861
        JS_FreeValue(ctx, value_wrapper_promise);
    8004a9e8:	65c6                	ld	a1,80(sp)
    8004a9ea:	6666                	ld	a2,88(sp)
    8004a9ec:	8522                	mv	a0,s0
    8004a9ee:	db1c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48862
        JS_FreeValue(ctx, resolving_funcs[0]);
    8004a9f2:	758a                	ld	a1,160(sp)
    8004a9f4:	762a                	ld	a2,168(sp)
    8004a9f6:	8522                	mv	a0,s0
    8004a9f8:	da7c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48863
        JS_FreeValue(ctx, resolving_funcs[1]);
    8004a9fc:	75ca                	ld	a1,176(sp)
    8004a9fe:	766a                	ld	a2,184(sp)
    8004aa00:	8522                	mv	a0,s0
    8004aa02:	d9dc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48864
        if (res) {
    8004aa06:	f20484e3          	beqz	s1,8004a92e <js_async_from_sync_iterator_next+0x1b2>
quickjs-nuttx/quickjs.c:48865
            JS_FreeValue(ctx, promise);
    8004aa0a:	7582                	ld	a1,32(sp)
    8004aa0c:	7622                	ld	a2,40(sp)
    8004aa0e:	8522                	mv	a0,s0
    8004aa10:	d8fc00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48866
            return JS_EXCEPTION;
    8004aa14:	f882                	sd	zero,112(sp)
    8004aa16:	fcca                	sd	s2,120(sp)
    8004aa18:	bb51                	j	8004a7ac <js_async_from_sync_iterator_next+0x30>

000000008004aa1a <JS_AddIntrinsicPromise>:
JS_AddIntrinsicPromise():
quickjs-nuttx/quickjs.c:48912
{
    8004aa1a:	7179                	addi	sp,sp,-48
    8004aa1c:	f022                	sd	s0,32(sp)
    8004aa1e:	f406                	sd	ra,40(sp)
    8004aa20:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:48913
    JSRuntime *rt = ctx->rt;
    8004aa22:	6d04                	ld	s1,24(a0)
quickjs-nuttx/quickjs.c:48912
{
    8004aa24:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48916
    if (!JS_IsRegisteredClass(rt, JS_CLASS_PROMISE)) {
    8004aa26:	03100593          	li	a1,49
    8004aa2a:	8526                	mv	a0,s1
    8004aa2c:	cd7c00ef          	jal	ra,8000b702 <JS_IsRegisteredClass>
    8004aa30:	e13d                	bnez	a0,8004aa96 <JS_AddIntrinsicPromise+0x7c>
quickjs-nuttx/quickjs.c:48917
        init_class_range(rt, js_async_class_def, JS_CLASS_PROMISE,
    8004aa32:	46a5                	li	a3,9
    8004aa34:	03100613          	li	a2,49
    8004aa38:	00025597          	auipc	a1,0x25
    8004aa3c:	27058593          	addi	a1,a1,624 # 8006fca8 <js_async_class_def>
    8004aa40:	8526                	mv	a0,s1
    8004aa42:	e5dbd0ef          	jal	ra,8000889e <init_class_range>
quickjs-nuttx/quickjs.c:48919
        rt->class_array[JS_CLASS_PROMISE_RESOLVE_FUNCTION].call = js_promise_resolve_function_call;
    8004aa46:	78bc                	ld	a5,112(s1)
    8004aa48:	fffd0697          	auipc	a3,0xfffd0
    8004aa4c:	03068693          	addi	a3,a3,48 # 8001aa78 <js_promise_resolve_function_call>
    8004aa50:	7ed7b423          	sd	a3,2024(a5)
quickjs-nuttx/quickjs.c:48920
        rt->class_array[JS_CLASS_PROMISE_REJECT_FUNCTION].call = js_promise_resolve_function_call;
    8004aa54:	78b8                	ld	a4,112(s1)
    8004aa56:	6785                	lui	a5,0x1
    8004aa58:	973e                	add	a4,a4,a5
    8004aa5a:	80d73823          	sd	a3,-2032(a4)
quickjs-nuttx/quickjs.c:48921
        rt->class_array[JS_CLASS_ASYNC_FUNCTION].call = js_async_function_call;
    8004aa5e:	78b8                	ld	a4,112(s1)
    8004aa60:	fffff697          	auipc	a3,0xfffff
    8004aa64:	bc468693          	addi	a3,a3,-1084 # 80049624 <js_async_function_call>
    8004aa68:	973e                	add	a4,a4,a5
    8004aa6a:	82d73c23          	sd	a3,-1992(a4)
quickjs-nuttx/quickjs.c:48922
        rt->class_array[JS_CLASS_ASYNC_FUNCTION_RESOLVE].call = js_async_function_resolve_call;
    8004aa6e:	78b8                	ld	a4,112(s1)
    8004aa70:	ffffb697          	auipc	a3,0xffffb
    8004aa74:	db668693          	addi	a3,a3,-586 # 80045826 <js_async_function_resolve_call>
    8004aa78:	973e                	add	a4,a4,a5
    8004aa7a:	86d73023          	sd	a3,-1952(a4)
quickjs-nuttx/quickjs.c:48923
        rt->class_array[JS_CLASS_ASYNC_FUNCTION_REJECT].call = js_async_function_resolve_call;
    8004aa7e:	78b8                	ld	a4,112(s1)
    8004aa80:	973e                	add	a4,a4,a5
    8004aa82:	88d73423          	sd	a3,-1912(a4)
quickjs-nuttx/quickjs.c:48924
        rt->class_array[JS_CLASS_ASYNC_GENERATOR_FUNCTION].call = js_async_generator_function_call;
    8004aa86:	78b8                	ld	a4,112(s1)
    8004aa88:	97ba                	add	a5,a5,a4
    8004aa8a:	ffff7717          	auipc	a4,0xffff7
    8004aa8e:	e6670713          	addi	a4,a4,-410 # 800418f0 <js_async_generator_function_call>
    8004aa92:	8ce7bc23          	sd	a4,-1832(a5) # 8d8 <asinh-0x7ffff728>
quickjs-nuttx/quickjs.c:48928
    ctx->class_proto[JS_CLASS_PROMISE] = JS_NewObject(ctx);
    8004aa96:	8522                	mv	a0,s0
    8004aa98:	d8cd10ef          	jal	ra,8001c024 <JS_NewObject>
    8004aa9c:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:48929
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_PROMISE],
    8004aa9e:	4711                	li	a4,4
    8004aaa0:	00028697          	auipc	a3,0x28
    8004aaa4:	7d868693          	addi	a3,a3,2008 # 80073278 <js_promise_proto_funcs>
quickjs-nuttx/quickjs.c:48928
    ctx->class_proto[JS_CLASS_PROMISE] = JS_NewObject(ctx);
    8004aaa8:	30a7b823          	sd	a0,784(a5)
    8004aaac:	30b7bc23          	sd	a1,792(a5)
quickjs-nuttx/quickjs.c:48929
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_PROMISE],
    8004aab0:	603c                	ld	a5,64(s0)
    8004aab2:	8522                	mv	a0,s0
    8004aab4:	3107b583          	ld	a1,784(a5)
    8004aab8:	3187b603          	ld	a2,792(a5)
    8004aabc:	c60f40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:48932
    obj1 = JS_NewCFunction2(ctx, js_promise_constructor, "Promise", 1,
    8004aac0:	4781                	li	a5,0
    8004aac2:	4709                	li	a4,2
    8004aac4:	4685                	li	a3,1
    8004aac6:	00023617          	auipc	a2,0x23
    8004aaca:	d1a60613          	addi	a2,a2,-742 # 8006d7e0 <qjsc_repl+0x8230>
    8004aace:	8522                	mv	a0,s0
    8004aad0:	ffff9597          	auipc	a1,0xffff9
    8004aad4:	00e58593          	addi	a1,a1,14 # 80043ade <js_promise_constructor>
    8004aad8:	82ae60ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8004aadc:	e02a                	sd	a0,0(sp)
    8004aade:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:48934
    ctx->promise_ctor = JS_DupValue(ctx, obj1);
    8004aae0:	93bbf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:48935
    JS_SetPropertyFunctionList(ctx, obj1,
    8004aae4:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:48934
    ctx->promise_ctor = JS_DupValue(ctx, obj1);
    8004aae6:	e84c                	sd	a1,144(s0)
quickjs-nuttx/quickjs.c:48935
    JS_SetPropertyFunctionList(ctx, obj1,
    8004aae8:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:48934
    ctx->promise_ctor = JS_DupValue(ctx, obj1);
    8004aaea:	e448                	sd	a0,136(s0)
quickjs-nuttx/quickjs.c:48935
    JS_SetPropertyFunctionList(ctx, obj1,
    8004aaec:	4721                	li	a4,8
    8004aaee:	8522                	mv	a0,s0
    8004aaf0:	00028697          	auipc	a3,0x28
    8004aaf4:	68868693          	addi	a3,a3,1672 # 80073178 <js_promise_funcs>
    8004aaf8:	c24f40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:48938
    JS_NewGlobalCConstructor2(ctx, obj1, "Promise",
    8004aafc:	603c                	ld	a5,64(s0)
    8004aafe:	6582                	ld	a1,0(sp)
    8004ab00:	6622                	ld	a2,8(sp)
    8004ab02:	3107b703          	ld	a4,784(a5)
    8004ab06:	3187b783          	ld	a5,792(a5)
    8004ab0a:	00023697          	auipc	a3,0x23
    8004ab0e:	cd668693          	addi	a3,a3,-810 # 8006d7e0 <qjsc_repl+0x8230>
    8004ab12:	8522                	mv	a0,s0
    8004ab14:	831e60ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
quickjs-nuttx/quickjs.c:48942
    ctx->class_proto[JS_CLASS_ASYNC_FUNCTION] = JS_NewObjectProto(ctx, ctx->function_proto);
    8004ab18:	6830                	ld	a2,80(s0)
    8004ab1a:	642c                	ld	a1,72(s0)
    8004ab1c:	8522                	mv	a0,s0
    8004ab1e:	cacd10ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004ab22:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:48943
    obj1 = JS_NewCFunction3(ctx, (JSCFunction *)js_function_constructor,
    8004ab24:	4715                	li	a4,5
    8004ab26:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:48942
    ctx->class_proto[JS_CLASS_ASYNC_FUNCTION] = JS_NewObjectProto(ctx, ctx->function_proto);
    8004ab28:	34a7b023          	sd	a0,832(a5)
    8004ab2c:	34b7b423          	sd	a1,840(a5)
quickjs-nuttx/quickjs.c:48943
    obj1 = JS_NewCFunction3(ctx, (JSCFunction *)js_function_constructor,
    8004ab30:	06043883          	ld	a7,96(s0)
    8004ab34:	05843803          	ld	a6,88(s0)
    8004ab38:	4789                	li	a5,2
    8004ab3a:	00023617          	auipc	a2,0x23
    8004ab3e:	cae60613          	addi	a2,a2,-850 # 8006d7e8 <qjsc_repl+0x8238>
    8004ab42:	8522                	mv	a0,s0
    8004ab44:	fffdd597          	auipc	a1,0xfffdd
    8004ab48:	36a58593          	addi	a1,a1,874 # 80027eae <js_function_constructor>
    8004ab4c:	ef5e50ef          	jal	ra,80030a40 <JS_NewCFunction3>
quickjs-nuttx/quickjs.c:48947
    JS_SetPropertyFunctionList(ctx,
    8004ab50:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:48943
    obj1 = JS_NewCFunction3(ctx, (JSCFunction *)js_function_constructor,
    8004ab52:	e42e                	sd	a1,8(sp)
    8004ab54:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:48947
    JS_SetPropertyFunctionList(ctx,
    8004ab56:	3407b583          	ld	a1,832(a5)
    8004ab5a:	3487b603          	ld	a2,840(a5)
    8004ab5e:	8522                	mv	a0,s0
    8004ab60:	4705                	li	a4,1
    8004ab62:	00025697          	auipc	a3,0x25
    8004ab66:	27e68693          	addi	a3,a3,638 # 8006fde0 <js_async_function_proto_funcs>
    8004ab6a:	bb2f40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:48951
    JS_SetConstructor2(ctx, obj1, ctx->class_proto[JS_CLASS_ASYNC_FUNCTION],
    8004ab6e:	6038                	ld	a4,64(s0)
    8004ab70:	6582                	ld	a1,0(sp)
    8004ab72:	6622                	ld	a2,8(sp)
    8004ab74:	34073683          	ld	a3,832(a4)
    8004ab78:	34873703          	ld	a4,840(a4)
    8004ab7c:	4805                	li	a6,1
    8004ab7e:	4781                	li	a5,0
    8004ab80:	8522                	mv	a0,s0
    8004ab82:	f5ce60ef          	jal	ra,800312de <JS_SetConstructor2>
quickjs-nuttx/quickjs.c:48953
    JS_FreeValue(ctx, obj1);
    8004ab86:	6622                	ld	a2,8(sp)
    8004ab88:	6582                	ld	a1,0(sp)
    8004ab8a:	8522                	mv	a0,s0
    8004ab8c:	c13c00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48956
    ctx->async_iterator_proto = JS_NewObject(ctx);
    8004ab90:	8522                	mv	a0,s0
    8004ab92:	c92d10ef          	jal	ra,8001c024 <JS_NewObject>
    8004ab96:	862e                	mv	a2,a1
    8004ab98:	12a43423          	sd	a0,296(s0)
    8004ab9c:	12b43823          	sd	a1,304(s0)
quickjs-nuttx/quickjs.c:48957
    JS_SetPropertyFunctionList(ctx, ctx->async_iterator_proto,
    8004aba0:	4705                	li	a4,1
    8004aba2:	00025697          	auipc	a3,0x25
    8004aba6:	2fe68693          	addi	a3,a3,766 # 8006fea0 <js_async_iterator_proto_funcs>
    8004abaa:	85aa                	mv	a1,a0
    8004abac:	8522                	mv	a0,s0
    8004abae:	b6ef40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:48963
        JS_NewObjectProto(ctx, ctx->async_iterator_proto);
    8004abb2:	13043603          	ld	a2,304(s0)
    8004abb6:	12843583          	ld	a1,296(s0)
    8004abba:	8522                	mv	a0,s0
    8004abbc:	c0ed10ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004abc0:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:48964
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ASYNC_FROM_SYNC_ITERATOR],
    8004abc2:	470d                	li	a4,3
    8004abc4:	00025697          	auipc	a3,0x25
    8004abc8:	1bc68693          	addi	a3,a3,444 # 8006fd80 <js_async_from_sync_iterator_proto_funcs>
quickjs-nuttx/quickjs.c:48963
        JS_NewObjectProto(ctx, ctx->async_iterator_proto);
    8004abcc:	36a7b823          	sd	a0,880(a5)
    8004abd0:	36b7bc23          	sd	a1,888(a5)
quickjs-nuttx/quickjs.c:48964
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ASYNC_FROM_SYNC_ITERATOR],
    8004abd4:	603c                	ld	a5,64(s0)
    8004abd6:	8522                	mv	a0,s0
    8004abd8:	3707b583          	ld	a1,880(a5)
    8004abdc:	3787b603          	ld	a2,888(a5)
    8004abe0:	b3cf40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:48970
        JS_NewObjectProto(ctx, ctx->async_iterator_proto);
    8004abe4:	13043603          	ld	a2,304(s0)
    8004abe8:	12843583          	ld	a1,296(s0)
    8004abec:	8522                	mv	a0,s0
    8004abee:	bdcd10ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004abf2:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:48971
    JS_SetPropertyFunctionList(ctx,
    8004abf4:	4711                	li	a4,4
    8004abf6:	00025697          	auipc	a3,0x25
    8004abfa:	22a68693          	addi	a3,a3,554 # 8006fe20 <js_async_generator_proto_funcs>
quickjs-nuttx/quickjs.c:48970
        JS_NewObjectProto(ctx, ctx->async_iterator_proto);
    8004abfe:	38a7b823          	sd	a0,912(a5)
    8004ac02:	38b7bc23          	sd	a1,920(a5)
quickjs-nuttx/quickjs.c:48971
    JS_SetPropertyFunctionList(ctx,
    8004ac06:	603c                	ld	a5,64(s0)
    8004ac08:	8522                	mv	a0,s0
    8004ac0a:	3907b583          	ld	a1,912(a5)
    8004ac0e:	3987b603          	ld	a2,920(a5)
    8004ac12:	b0af40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:48978
        JS_NewObjectProto(ctx, ctx->function_proto);
    8004ac16:	6830                	ld	a2,80(s0)
    8004ac18:	642c                	ld	a1,72(s0)
    8004ac1a:	8522                	mv	a0,s0
    8004ac1c:	baed10ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004ac20:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:48979
    obj1 = JS_NewCFunction3(ctx, (JSCFunction *)js_function_constructor,
    8004ac22:	4715                	li	a4,5
    8004ac24:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:48978
        JS_NewObjectProto(ctx, ctx->function_proto);
    8004ac26:	38a7b023          	sd	a0,896(a5)
    8004ac2a:	38b7b423          	sd	a1,904(a5)
quickjs-nuttx/quickjs.c:48979
    obj1 = JS_NewCFunction3(ctx, (JSCFunction *)js_function_constructor,
    8004ac2e:	06043883          	ld	a7,96(s0)
    8004ac32:	05843803          	ld	a6,88(s0)
    8004ac36:	478d                	li	a5,3
    8004ac38:	00023617          	auipc	a2,0x23
    8004ac3c:	bc060613          	addi	a2,a2,-1088 # 8006d7f8 <qjsc_repl+0x8248>
    8004ac40:	8522                	mv	a0,s0
    8004ac42:	fffdd597          	auipc	a1,0xfffdd
    8004ac46:	26c58593          	addi	a1,a1,620 # 80027eae <js_function_constructor>
    8004ac4a:	df7e50ef          	jal	ra,80030a40 <JS_NewCFunction3>
quickjs-nuttx/quickjs.c:48984
    JS_SetPropertyFunctionList(ctx,
    8004ac4e:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:48979
    obj1 = JS_NewCFunction3(ctx, (JSCFunction *)js_function_constructor,
    8004ac50:	e42e                	sd	a1,8(sp)
    8004ac52:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:48984
    JS_SetPropertyFunctionList(ctx,
    8004ac54:	3807b583          	ld	a1,896(a5)
    8004ac58:	3887b603          	ld	a2,904(a5)
    8004ac5c:	8522                	mv	a0,s0
    8004ac5e:	4705                	li	a4,1
    8004ac60:	00025697          	auipc	a3,0x25
    8004ac64:	1a068693          	addi	a3,a3,416 # 8006fe00 <js_async_generator_function_proto_funcs>
    8004ac68:	ab4f40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:48988
    JS_SetConstructor2(ctx, ctx->class_proto[JS_CLASS_ASYNC_GENERATOR_FUNCTION],
    8004ac6c:	6030                	ld	a2,64(s0)
    8004ac6e:	8522                	mv	a0,s0
    8004ac70:	4805                	li	a6,1
    8004ac72:	39063683          	ld	a3,912(a2)
    8004ac76:	39863703          	ld	a4,920(a2)
    8004ac7a:	38063583          	ld	a1,896(a2)
    8004ac7e:	38863603          	ld	a2,904(a2)
    8004ac82:	4785                	li	a5,1
    8004ac84:	e5ae60ef          	jal	ra,800312de <JS_SetConstructor2>
quickjs-nuttx/quickjs.c:48991
    JS_SetConstructor2(ctx, obj1, ctx->class_proto[JS_CLASS_ASYNC_GENERATOR_FUNCTION],
    8004ac88:	6038                	ld	a4,64(s0)
    8004ac8a:	6582                	ld	a1,0(sp)
    8004ac8c:	6622                	ld	a2,8(sp)
    8004ac8e:	38073683          	ld	a3,896(a4)
    8004ac92:	38873703          	ld	a4,904(a4)
    8004ac96:	8522                	mv	a0,s0
    8004ac98:	4805                	li	a6,1
    8004ac9a:	4781                	li	a5,0
    8004ac9c:	e42e60ef          	jal	ra,800312de <JS_SetConstructor2>
quickjs-nuttx/quickjs.c:48993
    JS_FreeValue(ctx, obj1);
    8004aca0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48994
}
    8004aca2:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:48993
    JS_FreeValue(ctx, obj1);
    8004aca4:	6582                	ld	a1,0(sp)
    8004aca6:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:48994
}
    8004aca8:	70a2                	ld	ra,40(sp)
    8004acaa:	64e2                	ld	s1,24(sp)
    8004acac:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:48993
    JS_FreeValue(ctx, obj1);
    8004acae:	af1c006f          	j	8000b79e <JS_FreeValue>

000000008004acb2 <JS_AddIntrinsicDate>:
JS_AddIntrinsicDate():
quickjs-nuttx/quickjs.c:50213
{
    8004acb2:	1101                	addi	sp,sp,-32
    8004acb4:	ec06                	sd	ra,24(sp)
    8004acb6:	e822                	sd	s0,16(sp)
    8004acb8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:50217
    ctx->class_proto[JS_CLASS_DATE] = JS_NewObject(ctx);
    8004acba:	b6ad10ef          	jal	ra,8001c024 <JS_NewObject>
    8004acbe:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:50218
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_DATE], js_date_proto_funcs,
    8004acc0:	02f00713          	li	a4,47
    8004acc4:	00027697          	auipc	a3,0x27
    8004acc8:	83c68693          	addi	a3,a3,-1988 # 80071500 <js_date_proto_funcs>
quickjs-nuttx/quickjs.c:50217
    ctx->class_proto[JS_CLASS_DATE] = JS_NewObject(ctx);
    8004accc:	f3c8                	sd	a0,160(a5)
    8004acce:	f7cc                	sd	a1,168(a5)
quickjs-nuttx/quickjs.c:50218
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_DATE], js_date_proto_funcs,
    8004acd0:	603c                	ld	a5,64(s0)
    8004acd2:	8522                	mv	a0,s0
    8004acd4:	73cc                	ld	a1,160(a5)
    8004acd6:	77d0                	ld	a2,168(a5)
    8004acd8:	a44f40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:50220
    obj = JS_NewGlobalCConstructor(ctx, "Date", js_date_constructor, 7,
    8004acdc:	603c                	ld	a5,64(s0)
    8004acde:	469d                	li	a3,7
    8004ace0:	fffdf617          	auipc	a2,0xfffdf
    8004ace4:	a0060613          	addi	a2,a2,-1536 # 800296e0 <js_date_constructor>
    8004ace8:	73d8                	ld	a4,160(a5)
    8004acea:	77dc                	ld	a5,168(a5)
    8004acec:	8522                	mv	a0,s0
    8004acee:	00020597          	auipc	a1,0x20
    8004acf2:	59258593          	addi	a1,a1,1426 # 8006b280 <qjsc_repl+0x5cd0>
    8004acf6:	e9ce60ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004acfa:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50222
    JS_SetPropertyFunctionList(ctx, obj, js_date_funcs, countof(js_date_funcs));
    8004acfc:	85aa                	mv	a1,a0
    8004acfe:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50223
}
    8004ad00:	6442                	ld	s0,16(sp)
    8004ad02:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:50222
    JS_SetPropertyFunctionList(ctx, obj, js_date_funcs, countof(js_date_funcs));
    8004ad04:	470d                	li	a4,3
    8004ad06:	00026697          	auipc	a3,0x26
    8004ad0a:	79a68693          	addi	a3,a3,1946 # 800714a0 <js_date_funcs>
quickjs-nuttx/quickjs.c:50223
}
    8004ad0e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50222
    JS_SetPropertyFunctionList(ctx, obj, js_date_funcs, countof(js_date_funcs));
    8004ad10:	a0cf406f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008004ad14 <JS_AddIntrinsicEval>:
JS_AddIntrinsicEval():
quickjs-nuttx/quickjs.c:50229
    ctx->eval_internal = __JS_EvalInternal;
    8004ad14:	fffff797          	auipc	a5,0xfffff
    8004ad18:	2fc78793          	addi	a5,a5,764 # 8004a010 <__JS_EvalInternal>
    8004ad1c:	1cf53423          	sd	a5,456(a0)
quickjs-nuttx/quickjs.c:50230
}
    8004ad20:	8082                	ret

000000008004ad22 <JS_AddIntrinsicOperators>:
JS_AddIntrinsicOperators():
quickjs-nuttx/quickjs.c:50512
{
    8004ad22:	7179                	addi	sp,sp,-48
    8004ad24:	f406                	sd	ra,40(sp)
    8004ad26:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:50515
    ctx->allow_operator_overloading = TRUE;
    8004ad28:	4785                	li	a5,1
    8004ad2a:	1af504a3          	sb	a5,425(a0)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    return JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_generic, 0);
    8004ad2e:	4701                	li	a4,0
    8004ad30:	4781                	li	a5,0
    8004ad32:	4685                	li	a3,1
    8004ad34:	00022617          	auipc	a2,0x22
    8004ad38:	01460613          	addi	a2,a2,20 # 8006cd48 <qjsc_repl+0x7798>
    8004ad3c:	fffed597          	auipc	a1,0xfffed
    8004ad40:	83458593          	addi	a1,a1,-1996 # 80037570 <js_global_operators>
JS_AddIntrinsicOperators():
quickjs-nuttx/quickjs.c:50512
{
    8004ad44:	842a                	mv	s0,a0
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004ad46:	dbde50ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8004ad4a:	862e                	mv	a2,a1
    8004ad4c:	e82a                	sd	a0,16(sp)
    8004ad4e:	ec2e                	sd	a1,24(sp)
    8004ad50:	e02a                	sd	a0,0(sp)
    8004ad52:	e42e                	sd	a1,8(sp)
JS_AddIntrinsicOperators():
quickjs-nuttx/quickjs.c:50517
    JS_SetPropertyFunctionList(ctx, obj,
    8004ad54:	4709                	li	a4,2
    8004ad56:	85aa                	mv	a1,a0
    8004ad58:	00028697          	auipc	a3,0x28
    8004ad5c:	39068693          	addi	a3,a3,912 # 800730e8 <js_operators_funcs>
    8004ad60:	8522                	mv	a0,s0
    8004ad62:	9baf40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:50520
    JS_DefinePropertyValue(ctx, ctx->global_obj, JS_ATOM_Operators,
    8004ad66:	6702                	ld	a4,0(sp)
    8004ad68:	67a2                	ld	a5,8(sp)
    8004ad6a:	16843583          	ld	a1,360(s0)
    8004ad6e:	17043603          	ld	a2,368(s0)
    8004ad72:	480d                	li	a6,3
    8004ad74:	0b900693          	li	a3,185
    8004ad78:	8522                	mv	a0,s0
    8004ad7a:	cb2cd0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:50524
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_BOOLEAN]);
    8004ad7e:	603c                	ld	a5,64(s0)
    8004ad80:	8522                	mv	a0,s0
    8004ad82:	73ac                	ld	a1,96(a5)
    8004ad84:	77b0                	ld	a2,104(a5)
    8004ad86:	ac5ec0ef          	jal	ra,8003784a <js_operators_set_default.isra.0>
quickjs-nuttx/quickjs.c:50525
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_NUMBER]);
    8004ad8a:	603c                	ld	a5,64(s0)
    8004ad8c:	8522                	mv	a0,s0
    8004ad8e:	63ac                	ld	a1,64(a5)
    8004ad90:	67b0                	ld	a2,72(a5)
    8004ad92:	ab9ec0ef          	jal	ra,8003784a <js_operators_set_default.isra.0>
quickjs-nuttx/quickjs.c:50526
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_STRING]);
    8004ad96:	603c                	ld	a5,64(s0)
    8004ad98:	8522                	mv	a0,s0
    8004ad9a:	6bac                	ld	a1,80(a5)
    8004ad9c:	6fb0                	ld	a2,88(a5)
    8004ad9e:	aadec0ef          	jal	ra,8003784a <js_operators_set_default.isra.0>
quickjs-nuttx/quickjs.c:50527
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_BIG_INT]);
    8004ada2:	603c                	ld	a5,64(s0)
    8004ada4:	8522                	mv	a0,s0
    8004ada6:	2107b583          	ld	a1,528(a5)
    8004adaa:	2187b603          	ld	a2,536(a5)
    8004adae:	a9dec0ef          	jal	ra,8003784a <js_operators_set_default.isra.0>
quickjs-nuttx/quickjs.c:50528
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_BIG_FLOAT]);
    8004adb2:	603c                	ld	a5,64(s0)
    8004adb4:	8522                	mv	a0,s0
    8004adb6:	2207b583          	ld	a1,544(a5)
    8004adba:	2287b603          	ld	a2,552(a5)
    8004adbe:	a8dec0ef          	jal	ra,8003784a <js_operators_set_default.isra.0>
quickjs-nuttx/quickjs.c:50529
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_BIG_DECIMAL]);
    8004adc2:	603c                	ld	a5,64(s0)
    8004adc4:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50530
}
    8004adc6:	7402                	ld	s0,32(sp)
    8004adc8:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:50529
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_BIG_DECIMAL]);
    8004adca:	2407b583          	ld	a1,576(a5)
    8004adce:	2487b603          	ld	a2,584(a5)
quickjs-nuttx/quickjs.c:50530
}
    8004add2:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:50529
    js_operators_set_default(ctx, ctx->class_proto[JS_CLASS_BIG_DECIMAL]);
    8004add4:	a77ec06f          	j	8003784a <js_operators_set_default.isra.0>

000000008004add8 <JS_AddIntrinsicBigInt>:
JS_AddIntrinsicBigInt():
quickjs-nuttx/quickjs.c:50866
{
    8004add8:	1101                	addi	sp,sp,-32
    8004adda:	ec06                	sd	ra,24(sp)
    8004addc:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:50867
    JSRuntime *rt = ctx->rt;
    8004adde:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:50870
    rt->bigint_ops.to_string = js_bigint_to_string;
    8004ade0:	fffde717          	auipc	a4,0xfffde
    8004ade4:	5ea70713          	addi	a4,a4,1514 # 800293ca <js_bigint_to_string>
quickjs-nuttx/quickjs.c:50866
{
    8004ade8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:50870
    rt->bigint_ops.to_string = js_bigint_to_string;
    8004adea:	20e7b423          	sd	a4,520(a5)
quickjs-nuttx/quickjs.c:50871
    rt->bigint_ops.from_string = js_string_to_bigint;
    8004adee:	fffd3717          	auipc	a4,0xfffd3
    8004adf2:	3d270713          	addi	a4,a4,978 # 8001e1c0 <js_string_to_bigint>
    8004adf6:	20e7b823          	sd	a4,528(a5)
quickjs-nuttx/quickjs.c:50872
    rt->bigint_ops.unary_arith = js_unary_arith_bigint;
    8004adfa:	fffdc717          	auipc	a4,0xfffdc
    8004adfe:	10270713          	addi	a4,a4,258 # 80026efc <js_unary_arith_bigint>
    8004ae02:	20e7bc23          	sd	a4,536(a5)
quickjs-nuttx/quickjs.c:50873
    rt->bigint_ops.binary_arith = js_binary_arith_bigint;
    8004ae06:	ffff6717          	auipc	a4,0xffff6
    8004ae0a:	03470713          	addi	a4,a4,52 # 80040e3a <js_binary_arith_bigint>
    8004ae0e:	22e7b023          	sd	a4,544(a5)
quickjs-nuttx/quickjs.c:50874
    rt->bigint_ops.compare = js_compare_bigfloat;
    8004ae12:	fffc2717          	auipc	a4,0xfffc2
    8004ae16:	05e70713          	addi	a4,a4,94 # 8000ce70 <js_compare_bigfloat>
    8004ae1a:	22e7b423          	sd	a4,552(a5)
quickjs-nuttx/quickjs.c:50876
    ctx->class_proto[JS_CLASS_BIG_INT] = JS_NewObject(ctx);
    8004ae1e:	a06d10ef          	jal	ra,8001c024 <JS_NewObject>
    8004ae22:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:50877
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_BIG_INT],
    8004ae24:	470d                	li	a4,3
    8004ae26:	00026697          	auipc	a3,0x26
    8004ae2a:	2da68693          	addi	a3,a3,730 # 80071100 <js_bigint_proto_funcs>
quickjs-nuttx/quickjs.c:50876
    ctx->class_proto[JS_CLASS_BIG_INT] = JS_NewObject(ctx);
    8004ae2e:	20a7b823          	sd	a0,528(a5)
    8004ae32:	20b7bc23          	sd	a1,536(a5)
quickjs-nuttx/quickjs.c:50877
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_BIG_INT],
    8004ae36:	603c                	ld	a5,64(s0)
    8004ae38:	8522                	mv	a0,s0
    8004ae3a:	2107b583          	ld	a1,528(a5)
    8004ae3e:	2187b603          	ld	a2,536(a5)
    8004ae42:	8daf40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:50880
    obj1 = JS_NewGlobalCConstructor(ctx, "BigInt", js_bigint_constructor, 1,
    8004ae46:	603c                	ld	a5,64(s0)
    8004ae48:	4685                	li	a3,1
    8004ae4a:	fffdc617          	auipc	a2,0xfffdc
    8004ae4e:	55460613          	addi	a2,a2,1364 # 8002739e <js_bigint_constructor>
    8004ae52:	2107b703          	ld	a4,528(a5)
    8004ae56:	2187b783          	ld	a5,536(a5)
    8004ae5a:	8522                	mv	a0,s0
    8004ae5c:	00023597          	auipc	a1,0x23
    8004ae60:	9b458593          	addi	a1,a1,-1612 # 8006d810 <qjsc_repl+0x8260>
    8004ae64:	d2ee60ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004ae68:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50882
    JS_SetPropertyFunctionList(ctx, obj1, js_bigint_funcs,
    8004ae6a:	85aa                	mv	a1,a0
    8004ae6c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:50884
}
    8004ae6e:	6442                	ld	s0,16(sp)
    8004ae70:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:50882
    JS_SetPropertyFunctionList(ctx, obj1, js_bigint_funcs,
    8004ae72:	4739                	li	a4,14
    8004ae74:	00026697          	auipc	a3,0x26
    8004ae78:	0cc68693          	addi	a3,a3,204 # 80070f40 <js_bigint_funcs>
quickjs-nuttx/quickjs.c:50884
}
    8004ae7c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50882
    JS_SetPropertyFunctionList(ctx, obj1, js_bigint_funcs,
    8004ae7e:	89ef406f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008004ae82 <JS_AddIntrinsicBigFloat>:
JS_AddIntrinsicBigFloat():
quickjs-nuttx/quickjs.c:51775
{
    8004ae82:	1101                	addi	sp,sp,-32
    8004ae84:	ec06                	sd	ra,24(sp)
    8004ae86:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:51776
    JSRuntime *rt = ctx->rt;
    8004ae88:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:51779
    rt->bigfloat_ops.to_string = js_bigfloat_to_string;
    8004ae8a:	fffde717          	auipc	a4,0xfffde
    8004ae8e:	12470713          	addi	a4,a4,292 # 80028fae <js_bigfloat_to_string>
quickjs-nuttx/quickjs.c:51775
{
    8004ae92:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:51779
    rt->bigfloat_ops.to_string = js_bigfloat_to_string;
    8004ae94:	24e7b023          	sd	a4,576(a5)
quickjs-nuttx/quickjs.c:51780
    rt->bigfloat_ops.from_string = js_string_to_bigfloat;
    8004ae98:	fffd3717          	auipc	a4,0xfffd3
    8004ae9c:	41070713          	addi	a4,a4,1040 # 8001e2a8 <js_string_to_bigfloat>
    8004aea0:	24e7b423          	sd	a4,584(a5)
quickjs-nuttx/quickjs.c:51781
    rt->bigfloat_ops.unary_arith = js_unary_arith_bigfloat;
    8004aea4:	fffd3717          	auipc	a4,0xfffd3
    8004aea8:	71a70713          	addi	a4,a4,1818 # 8001e5be <js_unary_arith_bigfloat>
    8004aeac:	24e7b823          	sd	a4,592(a5)
quickjs-nuttx/quickjs.c:51782
    rt->bigfloat_ops.binary_arith = js_binary_arith_bigfloat;
    8004aeb0:	fffd3717          	auipc	a4,0xfffd3
    8004aeb4:	55870713          	addi	a4,a4,1368 # 8001e408 <js_binary_arith_bigfloat>
    8004aeb8:	24e7bc23          	sd	a4,600(a5)
quickjs-nuttx/quickjs.c:51783
    rt->bigfloat_ops.compare = js_compare_bigfloat;
    8004aebc:	fffc2717          	auipc	a4,0xfffc2
    8004aec0:	fb470713          	addi	a4,a4,-76 # 8000ce70 <js_compare_bigfloat>
    8004aec4:	26e7b023          	sd	a4,608(a5)
quickjs-nuttx/quickjs.c:51784
    rt->bigfloat_ops.mul_pow10_to_float64 = js_mul_pow10_to_float64;
    8004aec8:	fffd3717          	auipc	a4,0xfffd3
    8004aecc:	37a70713          	addi	a4,a4,890 # 8001e242 <js_mul_pow10_to_float64>
    8004aed0:	26e7b423          	sd	a4,616(a5)
quickjs-nuttx/quickjs.c:51785
    rt->bigfloat_ops.mul_pow10 = js_mul_pow10;
    8004aed4:	fffdb717          	auipc	a4,0xfffdb
    8004aed8:	28a70713          	addi	a4,a4,650 # 8002615e <js_mul_pow10>
    8004aedc:	26e7b823          	sd	a4,624(a5)
quickjs-nuttx/quickjs.c:51787
    ctx->class_proto[JS_CLASS_BIG_FLOAT] = JS_NewObject(ctx);
    8004aee0:	944d10ef          	jal	ra,8001c024 <JS_NewObject>
    8004aee4:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:51788
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_BIG_FLOAT],
    8004aee6:	4715                	li	a4,5
    8004aee8:	00026697          	auipc	a3,0x26
    8004aeec:	fb868693          	addi	a3,a3,-72 # 80070ea0 <js_bigfloat_proto_funcs>
quickjs-nuttx/quickjs.c:51787
    ctx->class_proto[JS_CLASS_BIG_FLOAT] = JS_NewObject(ctx);
    8004aef0:	22a7b023          	sd	a0,544(a5)
    8004aef4:	22b7b423          	sd	a1,552(a5)
quickjs-nuttx/quickjs.c:51788
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_BIG_FLOAT],
    8004aef8:	603c                	ld	a5,64(s0)
    8004aefa:	8522                	mv	a0,s0
    8004aefc:	2207b583          	ld	a1,544(a5)
    8004af00:	2287b603          	ld	a2,552(a5)
    8004af04:	818f40ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:51791
    obj1 = JS_NewGlobalCConstructor(ctx, "BigFloat", js_bigfloat_constructor, 1,
    8004af08:	603c                	ld	a5,64(s0)
    8004af0a:	4685                	li	a3,1
    8004af0c:	fffdd617          	auipc	a2,0xfffdd
    8004af10:	cb460613          	addi	a2,a2,-844 # 80027bc0 <js_bigfloat_constructor>
    8004af14:	2207b703          	ld	a4,544(a5)
    8004af18:	2287b783          	ld	a5,552(a5)
    8004af1c:	8522                	mv	a0,s0
    8004af1e:	00023597          	auipc	a1,0x23
    8004af22:	8fa58593          	addi	a1,a1,-1798 # 8006d818 <qjsc_repl+0x8268>
    8004af26:	c6ce60ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004af2a:	862e                	mv	a2,a1
    8004af2c:	e02a                	sd	a0,0(sp)
    8004af2e:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:51793
    JS_SetPropertyFunctionList(ctx, obj1, js_bigfloat_funcs,
    8004af30:	02000713          	li	a4,32
    8004af34:	00026697          	auipc	a3,0x26
    8004af38:	b6c68693          	addi	a3,a3,-1172 # 80070aa0 <js_bigfloat_funcs>
    8004af3c:	85aa                	mv	a1,a0
    8004af3e:	8522                	mv	a0,s0
    8004af40:	fddf30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:51796
    ctx->class_proto[JS_CLASS_FLOAT_ENV] = JS_NewObject(ctx);
    8004af44:	8522                	mv	a0,s0
    8004af46:	8ded10ef          	jal	ra,8001c024 <JS_NewObject>
    8004af4a:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:51797
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_FLOAT_ENV],
    8004af4c:	4729                	li	a4,10
    8004af4e:	00027697          	auipc	a3,0x27
    8004af52:	db268693          	addi	a3,a3,-590 # 80071d00 <js_float_env_proto_funcs>
quickjs-nuttx/quickjs.c:51796
    ctx->class_proto[JS_CLASS_FLOAT_ENV] = JS_NewObject(ctx);
    8004af56:	22a7b823          	sd	a0,560(a5)
    8004af5a:	22b7bc23          	sd	a1,568(a5)
quickjs-nuttx/quickjs.c:51797
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_FLOAT_ENV],
    8004af5e:	603c                	ld	a5,64(s0)
    8004af60:	8522                	mv	a0,s0
    8004af62:	2307b583          	ld	a1,560(a5)
    8004af66:	2387b603          	ld	a2,568(a5)
    8004af6a:	fb3f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:51800
    obj1 = JS_NewGlobalCConstructorOnly(ctx, "BigFloatEnv",
    8004af6e:	603c                	ld	a5,64(s0)
    8004af70:	fffda617          	auipc	a2,0xfffda
    8004af74:	bde60613          	addi	a2,a2,-1058 # 80024b4e <js_float_env_constructor>
    8004af78:	8522                	mv	a0,s0
    8004af7a:	2307b683          	ld	a3,560(a5)
    8004af7e:	2387b703          	ld	a4,568(a5)
    8004af82:	00023597          	auipc	a1,0x23
    8004af86:	8a658593          	addi	a1,a1,-1882 # 8006d828 <qjsc_repl+0x8278>
    8004af8a:	c46e60ef          	jal	ra,800313d0 <JS_NewGlobalCConstructorOnly.constprop.0>
    8004af8e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:51803
    JS_SetPropertyFunctionList(ctx, obj1, js_float_env_funcs,
    8004af90:	85aa                	mv	a1,a0
    8004af92:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:51805
}
    8004af94:	6442                	ld	s0,16(sp)
    8004af96:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:51803
    JS_SetPropertyFunctionList(ctx, obj1, js_float_env_funcs,
    8004af98:	4739                	li	a4,14
    8004af9a:	00027697          	auipc	a3,0x27
    8004af9e:	ba668693          	addi	a3,a3,-1114 # 80071b40 <js_float_env_funcs>
quickjs-nuttx/quickjs.c:51805
}
    8004afa2:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:51803
    JS_SetPropertyFunctionList(ctx, obj1, js_float_env_funcs,
    8004afa4:	f79f306f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008004afa8 <JS_AddIntrinsicBigDecimal>:
JS_AddIntrinsicBigDecimal():
quickjs-nuttx/quickjs.c:52265
{
    8004afa8:	1101                	addi	sp,sp,-32
    8004afaa:	ec06                	sd	ra,24(sp)
    8004afac:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:52266
    JSRuntime *rt = ctx->rt;
    8004afae:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/quickjs.c:52269
    rt->bigdecimal_ops.to_string = js_bigdecimal_to_string;
    8004afb0:	fffde717          	auipc	a4,0xfffde
    8004afb4:	2e470713          	addi	a4,a4,740 # 80029294 <js_bigdecimal_to_string>
quickjs-nuttx/quickjs.c:52265
{
    8004afb8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:52269
    rt->bigdecimal_ops.to_string = js_bigdecimal_to_string;
    8004afba:	26e7bc23          	sd	a4,632(a5)
quickjs-nuttx/quickjs.c:52270
    rt->bigdecimal_ops.from_string = js_string_to_bigdecimal;
    8004afbe:	fffd3717          	auipc	a4,0xfffd3
    8004afc2:	39470713          	addi	a4,a4,916 # 8001e352 <js_string_to_bigdecimal>
    8004afc6:	28e7b023          	sd	a4,640(a5)
quickjs-nuttx/quickjs.c:52271
    rt->bigdecimal_ops.unary_arith = js_unary_arith_bigdecimal;
    8004afca:	fffd4717          	auipc	a4,0xfffd4
    8004afce:	8ce70713          	addi	a4,a4,-1842 # 8001e898 <js_unary_arith_bigdecimal>
    8004afd2:	28e7b423          	sd	a4,648(a5)
quickjs-nuttx/quickjs.c:52272
    rt->bigdecimal_ops.binary_arith = js_binary_arith_bigdecimal;
    8004afd6:	fffd3717          	auipc	a4,0xfffd3
    8004afda:	71270713          	addi	a4,a4,1810 # 8001e6e8 <js_binary_arith_bigdecimal>
    8004afde:	28e7b823          	sd	a4,656(a5)
quickjs-nuttx/quickjs.c:52273
    rt->bigdecimal_ops.compare = js_compare_bigdecimal;
    8004afe2:	fffdd717          	auipc	a4,0xfffdd
    8004afe6:	80e70713          	addi	a4,a4,-2034 # 800277f0 <js_compare_bigdecimal>
    8004afea:	28e7bc23          	sd	a4,664(a5)
quickjs-nuttx/quickjs.c:52275
    ctx->class_proto[JS_CLASS_BIG_DECIMAL] = JS_NewObject(ctx);
    8004afee:	836d10ef          	jal	ra,8001c024 <JS_NewObject>
    8004aff2:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:52276
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_BIG_DECIMAL],
    8004aff4:	4715                	li	a4,5
    8004aff6:	00026697          	auipc	a3,0x26
    8004affa:	a0a68693          	addi	a3,a3,-1526 # 80070a00 <js_bigdecimal_proto_funcs>
quickjs-nuttx/quickjs.c:52275
    ctx->class_proto[JS_CLASS_BIG_DECIMAL] = JS_NewObject(ctx);
    8004affe:	24a7b023          	sd	a0,576(a5)
